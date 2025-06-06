/* pam.c - pam (portable alpha map) utility library
**
** © 2009-2017 by Kornel Lesiński.
** © 1989, 1991 by Jef Poskanzer.
** © 1997, 2000, 2002 by Greg Roelofs; based on an idea by Stefan Schneider.
**
** See COPYRIGHT file for license.
*/

#include <stdlib.h>
#include <string.h>

#include "libimagequant.h"
#include "pam.h"
#include "mempool.h"

LIQ_PRIVATE bool pam_computeacolorhash(struct acolorhash_table *acht, const liq_color *const pixels[], unsigned int cols, unsigned int rows, const unsigned char *importance_map)
{
    const unsigned int ignorebits = acht->ignorebits;
    const unsigned int channel_mask = 255U>>ignorebits<<ignorebits;
    const unsigned int channel_hmask = (255U>>ignorebits) ^ 0xFFU;
    const unsigned int posterize_mask = channel_mask << 24 | channel_mask << 16 | channel_mask << 8 | channel_mask;
    const unsigned int posterize_high_mask = channel_hmask << 24 | channel_hmask << 16 | channel_hmask << 8 | channel_hmask;

    const unsigned int hash_size = acht->hash_size;

    /* Go through the entire image, building a hash table of colors. */
    for(unsigned int row = 0; row < rows; ++row) {

        for(unsigned int col = 0; col < cols; ++col) {
            unsigned int boost;

            // RGBA color is casted to long for easier hasing/comparisons
            union rgba_as_int px = {pixels[row][col]};
            unsigned int hash;
            if (px.rgba.a) {
                // mask posterizes all 4 channels in one go
                px.l = (px.l & posterize_mask) | ((px.l & posterize_high_mask) >> (8-ignorebits));
                // fancier hashing algorithms didn't improve much
                hash = px.l % hash_size;

                if (importance_map) {
                    boost = *importance_map++;
                } else {
                    boost = 255;
                }
            } else {
                // "dirty alpha" has different RGBA values that end up being the same fully transparent color
                px.l=0; hash=0;

                boost = 2000;
                if (importance_map) {
                    importance_map++;
                }
            }

            if (!pam_add_to_hash(acht, hash, boost, px, row, rows)) {
                return false;
            }
        }
    }
    acht->cols = cols;
    acht->rows += rows;
    return true;
}

LIQ_PRIVATE bool pam_add_to_hash(struct acolorhash_table *acht, unsigned int hash, unsigned int boost, union rgba_as_int px, unsigned int row, unsigned int rows)
{
            /* head of the hash function stores first 2 colors inline (achl->used = 1..2),
               to reduce number of allocations of achl->other_items.
             */
            struct acolorhist_arr_head *achl = &acht->buckets[hash];
            if (achl->inline1.color.l == px.l && achl->used) {
                achl->inline1.perceptual_weight += boost;
                return true;
            }
            if (achl->used) {
                if (achl->used > 1) {
                    if (achl->inline2.color.l == px.l) {
                        achl->inline2.perceptual_weight += boost;
                        return true;
                    }
                    // other items are stored as an array (which gets reallocated if needed)
                    struct acolorhist_arr_item *other_items = achl->other_items;
                    unsigned int i = 0;
                    for (; i < achl->used-2; i++) {
                        if (other_items[i].color.l == px.l) {
                            other_items[i].perceptual_weight += boost;
                            return true;
                        }
                    }

                    // the array was allocated with spare items
                    if (i < achl->capacity) {
                        other_items[i] = (struct acolorhist_arr_item){
                            .color = px,
                            .perceptual_weight = boost,
                        };
                        achl->used++;
                        ++acht->colors;
                        return true;
                    }

                    if (++acht->colors > acht->maxcolors) {
                        return false;
                    }

                    struct acolorhist_arr_item *new_items;
                    unsigned int capacity;
                    if (!other_items) { // there was no array previously, alloc "small" array
                        capacity = 8;
                        if (acht->freestackp <= 0) {
                            // estimate how many colors are going to be + headroom
                            const size_t mempool_size = ((acht->rows + rows-row) * 2 * acht->colors / (acht->rows + row + 1) + 1024) * sizeof(struct acolorhist_arr_item);
                            new_items = mempool_alloc(&acht->mempool, sizeof(struct acolorhist_arr_item)*capacity, mempool_size);
                        } else {
                            // freestack stores previously freed (reallocated) arrays that can be reused
                            // (all pesimistically assumed to be capacity = 8)
                            new_items = acht->freestack[--acht->freestackp];
                        }
                    } else {
                        const unsigned int stacksize = sizeof(acht->freestack)/sizeof(acht->freestack[0]);

                        // simply reallocs and copies array to larger capacity
                        capacity = achl->capacity*2 + 16;
                        if (acht->freestackp < stacksize-1) {
                            acht->freestack[acht->freestackp++] = other_items;
                        }
                        const size_t mempool_size = ((acht->rows + rows-row) * 2 * acht->colors / (acht->rows + row + 1) + 32*capacity) * sizeof(struct acolorhist_arr_item);
                        new_items = mempool_alloc(&acht->mempool, sizeof(struct acolorhist_arr_item)*capacity, mempool_size);
                        if (!new_items) return false;
                        memcpy(new_items, other_items, sizeof(other_items[0])*achl->capacity);
                    }

                    achl->other_items = new_items;
                    achl->capacity = capacity;
                    new_items[i] = (struct acolorhist_arr_item){
                        .color = px,
                        .perceptual_weight = boost,
                    };
                    achl->used++;
                } else {
                    // these are elses for first checks whether first and second inline-stored colors are used
                    achl->inline2.color.l = px.l;
                    achl->inline2.perceptual_weight = boost;
                    achl->used = 2;
                    ++acht->colors;
                }
            } else {
                achl->inline1.color.l = px.l;
                achl->inline1.perceptual_weight = boost;
                achl->used = 1;
                ++acht->colors;
            }
    return true;
}

LIQ_PRIVATE struct acolorhash_table *pam_allocacolorhash(unsigned int maxcolors, unsigned int surface, unsigned int ignorebits, void* (*malloc)(size_t), void (*free)(void*))
{
    const size_t estimated_colors = MIN(maxcolors, surface/(ignorebits + (surface > 512*512 ? 6 : 5)));
    const size_t hash_size = estimated_colors < 66000 ? 6673 : (estimated_colors < 200000 ? 12011 : 24019);

    mempoolptr m = NULL;
    const size_t buckets_size = hash_size * sizeof(struct acolorhist_arr_head);
    const size_t mempool_size = sizeof(struct acolorhash_table) + buckets_size + estimated_colors * sizeof(struct acolorhist_arr_item);
    struct acolorhash_table *t = mempool_create(&m, sizeof(*t) + buckets_size, mempool_size, malloc, free);
    if (!t) return NULL;
    *t = (struct acolorhash_table){
        .mempool = m,
        .hash_size = hash_size,
        .maxcolors = maxcolors,
        .ignorebits = ignorebits,
    };
    memset(t->buckets, 0, buckets_size);
    return t;
}

ALWAYS_INLINE static float pam_add_to_hist(struct temp_hist_item achv[], unsigned int *j, const struct acolorhist_arr_item *entry, const float max_perceptual_weight, int counts[])
{
    if (entry->perceptual_weight == 0 && *j > 0) {
        return 0;
    }
    const liq_color px = entry->color.rgba;
    achv[*j].color = px;
    const short cluster = ((px.r>>7)<<3) | ((px.g>>7)<<2) | ((px.b>>7)<<1) | (px.a>>7);
    counts[cluster]++;
    achv[*j].cluster = cluster;
    const float w = MIN(entry->perceptual_weight/170.f, max_perceptual_weight);
    achv[*j].weight = w;
    *j += 1;
    return w;
}

LIQ_PRIVATE histogram *pam_acolorhashtoacolorhist(const struct acolorhash_table *acht, const double gamma, void* (*malloc)(size_t), void (*free)(void*))
{
    histogram *hist = malloc(sizeof(hist[0]));
    if (!hist || !acht) return NULL;
    *hist = (histogram){
        .achv = malloc(MAX(1,acht->colors) * sizeof(hist->achv[0])),
        .size = acht->colors,
        .free = free,
        .ignorebits = acht->ignorebits,
    };
    if (!hist->achv) return NULL;

    /// Clusters form initial boxes for quantization, to ensure extreme colors are better represented
    int counts[LIQ_MAXCLUSTER] = {};
    struct temp_hist_item *temp = malloc(MAX(1, acht->colors) * sizeof(temp[0]));

    /* Limit perceptual weight to 1/10th of the image surface area to prevent
       a single color from dominating all others. */
    float max_perceptual_weight = 0.1f * acht->cols * acht->rows;
    double total_weight = 0;

    unsigned int j=0;
    for(unsigned int i=0; i < acht->hash_size; ++i) {
        const struct acolorhist_arr_head *const achl = &acht->buckets[i];
        if (achl->used) {
            total_weight += pam_add_to_hist(temp, &j, &achl->inline1, max_perceptual_weight, counts);

            if (achl->used > 1) {
                total_weight += pam_add_to_hist(temp, &j, &achl->inline2, max_perceptual_weight, counts);

                for(unsigned int k=0; k < achl->used-2; k++) {
                    total_weight += pam_add_to_hist(temp, &j, &achl->other_items[k], max_perceptual_weight, counts);
                }
            }
        }
    }
    hist->total_perceptual_weight = total_weight;

    int begin = 0;
    for(int i=0; i < LIQ_MAXCLUSTER; i++) {
        hist->boxes[i].begin = begin;
        hist->boxes[i].end = begin;
        begin = begin + counts[i];
    }

    hist->size = j;
    hist->total_perceptual_weight = total_weight;
    for(unsigned int k=0; k < hist->size; k++) {
        hist->achv[k].tmp.likely_colormap_index = 0;
    }
    if (!j) {
        free(temp);
        pam_freeacolorhist(hist);
        return NULL;
    }

    float gamma_lut[256];
    to_f_set_gamma(gamma_lut, gamma);
    for(int i=0; i < hist->size; i++) {
        int j = hist->boxes[temp[i].cluster].end++;
        hist->achv[j].acolor = rgba_to_f(gamma_lut, temp[i].color);
        hist->achv[j].perceptual_weight = temp[i].weight;
        hist->achv[j].adjusted_weight = temp[i].weight;
    }
    free(temp);

    return hist;
}


LIQ_PRIVATE void pam_freeacolorhash(struct acolorhash_table *acht)
{
    if (acht) {
        mempool_destroy(acht->mempool);
    }
}

LIQ_PRIVATE void pam_freeacolorhist(histogram *hist)
{
    hist->free(hist->achv);
    hist->free(hist);
}

LIQ_PRIVATE LIQ_NONNULL colormap *pam_colormap(unsigned int colors, void* (*malloc)(size_t), void (*free)(void*))
{
    assert(colors > 0 && colors < 65536);

    colormap *map;
    const size_t colors_size = colors * sizeof(map->palette[0]);
    map = malloc(sizeof(colormap) + colors_size);
    if (!map) return NULL;
    *map = (colormap){
        .malloc = malloc,
        .free = free,
        .colors = colors,
    };
    memset(map->palette, 0, colors_size);
    return map;
}

LIQ_PRIVATE colormap *pam_duplicate_colormap(colormap *map)
{
    colormap *dupe = pam_colormap(map->colors, map->malloc, map->free);
    for(unsigned int i=0; i < map->colors; i++) {
        dupe->palette[i] = map->palette[i];
    }
    return dupe;
}

LIQ_PRIVATE void pam_freecolormap(colormap *c)
{
    c->free(c);
}

LIQ_PRIVATE void to_f_set_gamma(float gamma_lut[], const double gamma)
{
    for(int i=0; i < 256; i++) {
        gamma_lut[i] = pow((double)i/255.0, internal_gamma/gamma);
    }
}


/* fixed colors are always included in the palette, so it would be wasteful to duplicate them in palette from histogram */
LIQ_PRIVATE LIQ_NONNULL void remove_fixed_colors_from_histogram(histogram *hist, const int fixed_colors_count, const f_pixel fixed_colors[], const float target_mse)
{
    const float max_difference = MAX(target_mse/2.f, 2.f/256.f/256.f);
    if (fixed_colors_count) {
        for(int j=0; j < hist->size; j++) {
            for(unsigned int i=0; i < fixed_colors_count; i++) {
                if (colordifference(hist->achv[j].acolor, fixed_colors[i]) < max_difference) {
                    hist->achv[j] = hist->achv[--hist->size]; // remove color from histogram by overwriting with the last entry
                    j--; break; // continue searching histogram
                }
            }
        }
    }
}

LIQ_PRIVATE LIQ_NONNULL colormap *histogram_to_palette(const histogram *hist, void* (*malloc)(size_t), void (*free)(void*)) {
    if (!hist->size) {
        return NULL;
    }
    colormap *acolormap = pam_colormap(hist->size, malloc, free);
    for(unsigned int i=0; i < hist->size; i++) {
        acolormap->palette[i].acolor = hist->achv[i].acolor;
        acolormap->palette[i].popularity = hist->achv[i].perceptual_weight;
    }
    return acolormap;
}

LIQ_PRIVATE LIQ_NONNULL void hist_reset_colors(const histogram *hist, const unsigned int colors) {
    // likely_colormap_index (used and set in kmeans_do_iteration) can't point to index outside colormap
    if (colors < 256) for(unsigned int j=0; j < hist->size; j++) {
        if (hist->achv[j].tmp.likely_colormap_index >= colors) {
            hist->achv[j].tmp.likely_colormap_index = 0; // actual value doesn't matter, as the guess is out of date anyway
        }
    }
}
