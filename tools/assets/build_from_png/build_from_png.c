// SPDX-FileCopyrightText: © 2024 ZeldaRET
// SPDX-License-Identifier: MIT

// Note: this is statically linked with GPL binaries, making the binary GPL-licensed

#include <assert.h>
#include <dirent.h>
#include <errno.h>
#include <libgen.h>
#include <stdbool.h>
#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <sys/types.h>

#include "../n64texconv/src/libn64texconv/n64texconv.h"

#define NUM_FORMATS 9
static const struct fmt_info {
    const char* name;
    int fmt;
    int siz;
} fmt_map[NUM_FORMATS] = {
    // clang-format off
    { "i4",     G_IM_FMT_I,    G_IM_SIZ_4b,  },
    { "i8",     G_IM_FMT_I,    G_IM_SIZ_8b,  },
    { "ci4",    G_IM_FMT_CI,   G_IM_SIZ_4b,  },
    { "ci8",    G_IM_FMT_CI,   G_IM_SIZ_8b,  },
    { "ia4",    G_IM_FMT_IA,   G_IM_SIZ_4b,  },
    { "ia8",    G_IM_FMT_IA,   G_IM_SIZ_8b,  },
    { "ia16",   G_IM_FMT_IA,   G_IM_SIZ_16b, },
    { "rgba16", G_IM_FMT_RGBA, G_IM_SIZ_16b, },
    { "rgba32", G_IM_FMT_RGBA, G_IM_SIZ_32b, },
    // clang-format on
};

#define strequ(s1, s2) (strcmp(s1, s2) == 0)
#define strstartswith(s, prefix) (strncmp(s, prefix, strlen(prefix)) == 0)
static bool strendswith(const char* s, const char* suffix) {
    size_t len_s = strlen(s);
    size_t len_suffix = strlen(suffix);
    return (len_s >= len_suffix) && (strncmp(s + len_s - len_suffix, suffix, len_suffix) == 0);
}

static bool parse_png_p(char* png_p_buf, const struct fmt_info** fmtp, int* elem_sizep, char** tlut_namep,
                        int* tlut_elem_sizep, bool print_err) {
    // The last 4 (or less) suffixes, without the '.'
    const int max_n_suffixes = 4;
    char* png_p_suffixes[max_n_suffixes];
    int n_suffixes_found = 0;
    size_t i = strlen(png_p_buf);
    while (i != 0) {
        i--;
        if (png_p_buf[i] == '.') {
            png_p_suffixes[n_suffixes_found] = &png_p_buf[i + 1];
            n_suffixes_found++;
            if (n_suffixes_found >= max_n_suffixes) {
                break;
            }
            png_p_buf[i] = '\0';
        }
    }

    if (n_suffixes_found == 0 || !strequ(png_p_suffixes[0], "png")) {
        if (print_err) {
            fprintf(stderr, "png path doesn't end with .png\n");
        }
        return false;
    }
    int i_suffix = 1;
    int i_suffix_elemtype = -1;
    int i_suffix_tlut = -1;
    int i_suffix_fmt = -1;
    if (i_suffix < n_suffixes_found &&
        (strequ(png_p_suffixes[i_suffix], "u32") || strequ(png_p_suffixes[i_suffix], "u64"))) {
        i_suffix_elemtype = i_suffix;
        i_suffix++;
    }
    if (i_suffix < n_suffixes_found && strstartswith(png_p_suffixes[i_suffix], "tlut_")) {
        i_suffix_tlut = i_suffix;
        i_suffix++;
    }
    if (i_suffix >= n_suffixes_found) {
        if (print_err) {
            fprintf(stderr, "png path is missing a .format suffix\n");
        }
        return false;
    }
    i_suffix_fmt = i_suffix;

    if (i_suffix_elemtype < 0) {
        if (print_err) {
            fprintf(stderr, "png path is missing a .u32 or .u64 suffix\n");
        }
        return false;
    } else {
        if (strequ(png_p_suffixes[i_suffix_elemtype], "u64")) {
            *elem_sizep = 8;
        } else if (strequ(png_p_suffixes[i_suffix_elemtype], "u32")) {
            *elem_sizep = 4;
        } else {
            // unreachable
            assert(false);
        }
    }

    const struct fmt_info* fmt = NULL;

    for (size_t i = 0; i < NUM_FORMATS; i++) {
        if (strequ(fmt_map[i].name, png_p_suffixes[i_suffix_fmt])) {
            fmt = &fmt_map[i];
            break;
        }
    }

    if (fmt == NULL) {
        if (print_err) {
            fprintf(stderr, "png path is missing a .format suffix\n");
        }
        return false;
    }

    if (fmt->fmt == G_IM_FMT_CI && i_suffix_tlut >= 0) {
        if (strendswith(png_p_suffixes[i_suffix_tlut], "_u64")) {
            *tlut_elem_sizep = 8;
        } else if (strendswith(png_p_suffixes[i_suffix_tlut], "_u32")) {
            *tlut_elem_sizep = 4;
        } else {
            if (print_err) {
                fprintf(stderr, "png path with ci format has a .tlut_ suffix without a _u32 or _u64 suffix\n");
            }
            return false;
        }
        // extract "ABC" from the "tlut_ABC_uXX" suffix
        if (strlen(png_p_suffixes[i_suffix_tlut]) <= strlen("tlut__uXX")) {
            if (print_err) {
                fprintf(stderr, "png path with ci format has a bad .tlut_ suffix\n");
            }
            return false;
        }
        png_p_suffixes[i_suffix_tlut][strlen(png_p_suffixes[i_suffix_tlut]) - strlen("_uXX")] = '\0';
        *tlut_namep = strdup(png_p_suffixes[i_suffix_tlut] + strlen("tlut_"));
    }

    *fmtp = fmt;

    return true;
}

static void free_dir_list(char** dir_list) {
    for (size_t i = 0; dir_list[i] != NULL; i++) {
        free(dir_list[i]);
    }
    free(dir_list);
}

/**
 * Returns a NULL-terminated array of filenames in `dir_p`,
 * or NULL if an error happens.
 */
static char** new_dir_list(const char* dir_p) {
    DIR* dir = opendir(dir_p);
    if (dir == NULL) {
        perror("opendir");
        return NULL;
    }

    size_t len_dir_list = 0;
    size_t maxlen_dir_list = 16;
    char** dir_list = malloc(sizeof(char* [maxlen_dir_list]));

    while (true) {
        errno = 0;
        struct dirent* dirent = readdir(dir);
        if (dirent == NULL) {
            if (errno != 0) {
                perror("readdir");
                assert(len_dir_list < maxlen_dir_list);
                dir_list[len_dir_list] = NULL;
                free_dir_list(dir_list);
                return NULL;
            }
            break;
        }
        assert(len_dir_list < maxlen_dir_list);
        dir_list[len_dir_list] = strdup(dirent->d_name);
        len_dir_list++;

        if (len_dir_list >= maxlen_dir_list) {
            maxlen_dir_list *= 2;
            dir_list = realloc(dir_list, sizeof(char* [maxlen_dir_list]));
        }
    }

    assert(len_dir_list < maxlen_dir_list);
    dir_list[len_dir_list] = NULL;

    if (closedir(dir) != 0) {
        perror("closedir");
        free_dir_list(dir_list);
        return NULL;
    }
    return dir_list;
}

static char* make_inc_c_p(const char* png_p, const char* out_dir_p) {
    char* png_p_buf = strdup(png_p);
    char* png_stem = basename(png_p_buf);
    assert(strendswith(png_stem, ".png"));              // checked by parse_png_p
    png_stem[strlen(png_stem) - strlen(".png")] = '\0'; // cut off .png suffix
    char* inc_c_p = malloc(strlen(out_dir_p) + strlen("/") + strlen(png_stem) + strlen(".inc.c") + 1);
    sprintf(inc_c_p, "%s/%s.inc.c", out_dir_p, png_stem);
    free(png_p_buf);
    return inc_c_p;
}

static bool handle_non_ci(const char* png_p, const struct fmt_info* fmt, int elem_size, const char* out_dir_p) {
    char* inc_c_p = make_inc_c_p(png_p, out_dir_p);

    struct n64_image* img = n64texconv_image_from_png(png_p, fmt->fmt, fmt->siz, G_IM_FMT_RGBA);
    bool success = n64texconv_image_to_c_file(inc_c_p, img, false, false, elem_size) == 0;
    n64texconv_image_free(img);
    free(inc_c_p);
    return success;
}

static bool handle_ci_single(const char* png_p, const struct fmt_info* fmt, int elem_size, const char* out_dir_p) {
    const int tlut_elem_size = 8;
    char* inc_c_p = make_inc_c_p(png_p, out_dir_p);

    char* png_p_buf = strdup(png_p);
    char* png_stem = basename(png_p_buf);
    // parse_png_p ensured these suffixes
    assert(strlen(png_stem) >= strlen(".ciX.uXX.png"));
    png_stem[strlen(png_stem) - strlen(".ciX.uXX.png")] = '\0';
    char* pal_inc_c_p =
        malloc(strlen(out_dir_p) + strlen("/") + strlen(png_stem) + strlen(".tlut.rgba16.u64.inc.c") + 1);
    sprintf(pal_inc_c_p, "%s/%s.tlut.rgba16.u64.inc.c", out_dir_p, png_stem);
    free(png_p_buf);

    struct n64_image* img = n64texconv_image_from_png(png_p, fmt->fmt, fmt->siz, G_IM_FMT_RGBA);
    bool success = n64texconv_image_to_c_file(inc_c_p, img, false, false, elem_size) == 0;
    if (!success) {
        fprintf(stderr, "Could not write image to %s\n", inc_c_p);
    }
    if (success) {
        success = n64texconv_palette_to_c_file(pal_inc_c_p, img->pal, true, tlut_elem_size) == 0;
        if (!success) {
            fprintf(stderr, "Could not write palette to %s\n", pal_inc_c_p);
        }
    }
    n64texconv_palette_free(img->pal);
    n64texconv_image_free(img);
    free(inc_c_p);
    free(pal_inc_c_p);
    return success;
}

static bool handle_ci_shared_tlut(const char* png_p, const struct fmt_info* fmt, const char* out_dir_p, char** in_dirs,
                                  int num_in_dirs, char* tlut_name, int tlut_elem_size) {
    const size_t len_out_dir_p = strlen(out_dir_p);

    size_t len_pngs_with_tlut = 0;
    size_t maxlen_pngs_with_tlut = 16;
    struct other_png_info {
        char* png_p;
        char* name; // pointer into png_p; don't free
        int elem_size;
        struct n64_image* img;
    }* pngs_with_tlut = malloc(sizeof(struct other_png_info[maxlen_pngs_with_tlut]));

    for (int j = 0; j < num_in_dirs; j++) {
        const char* in_dir_p = in_dirs[j];
        const size_t len_in_dir_p = strlen(in_dir_p);

        char** in_dir_list = new_dir_list(in_dir_p);
        if (in_dir_list == NULL) {
            fprintf(stderr, "Couldn't list files in %s\n", in_dir_p);
            return false;
        }

        for (size_t i = 0; in_dir_list[i] != NULL; i++) {
            char* direntry_name_buf = strdup(in_dir_list[i]);
            const struct fmt_info* direntry_fmt;
            int direntry_elem_size;
            char* direntry_tlut_name = NULL;
            int direntry_tlut_elem_size = -1;
            if (parse_png_p(direntry_name_buf, &direntry_fmt, &direntry_elem_size, &direntry_tlut_name,
                            &direntry_tlut_elem_size, false)) {
                if (direntry_fmt->fmt == G_IM_FMT_CI && direntry_tlut_name != NULL) {
                    if (strequ(tlut_name, direntry_tlut_name)) {
                        // TODO change asserts to errors and fail
                        assert(direntry_fmt == fmt);
                        assert(direntry_tlut_elem_size == tlut_elem_size);

                        bool png_name_already_found = false;
                        for (size_t k = 0; k < len_pngs_with_tlut; k++) {
                            if (strequ(pngs_with_tlut[k].name, in_dir_list[i])) {
                                png_name_already_found = true;
                                break;
                            }
                        }

                        if (!png_name_already_found) {
                            if (len_pngs_with_tlut == maxlen_pngs_with_tlut) {
                                maxlen_pngs_with_tlut *= 2;
                                pngs_with_tlut =
                                    realloc(pngs_with_tlut, sizeof(struct other_png_info[maxlen_pngs_with_tlut]));
                            }
                            assert(len_pngs_with_tlut < maxlen_pngs_with_tlut);
                            char* other_png_p = malloc(len_in_dir_p + strlen("/") + strlen(in_dir_list[i]) + 1);
                            sprintf(other_png_p, "%s/%s", in_dir_p, in_dir_list[i]);
                            pngs_with_tlut[len_pngs_with_tlut].png_p = other_png_p;
                            pngs_with_tlut[len_pngs_with_tlut].name = other_png_p + len_in_dir_p + strlen("/");
                            pngs_with_tlut[len_pngs_with_tlut].elem_size = direntry_elem_size;
                            pngs_with_tlut[len_pngs_with_tlut].img = NULL;
                            len_pngs_with_tlut++;
                        }
                    }
                }
            }
            free(direntry_name_buf);
        }
        assert(len_pngs_with_tlut <= maxlen_pngs_with_tlut);

        free_dir_list(in_dir_list);
    }

    struct n64_image* ref_img = n64texconv_image_from_png(png_p, G_IM_FMT_CI, fmt->siz, G_IM_FMT_RGBA);
    bool all_other_pngs_match_ref_img_pal = true;

    bool success = true;

    for (size_t i = 0; i < len_pngs_with_tlut; i++) {
        struct n64_image* other_img =
            n64texconv_image_from_png(pngs_with_tlut[i].png_p, G_IM_FMT_CI, fmt->siz, G_IM_FMT_RGBA);
        pngs_with_tlut[i].img = other_img;
        if (other_img == NULL) {
            fprintf(stderr, "Could not read png %s\n", pngs_with_tlut[i].png_p);
            success = false;
            break;
        }
        if (all_other_pngs_match_ref_img_pal) {
            bool pal_matches_ref =
                other_img->pal->count == ref_img->pal->count &&
                memcmp(other_img->pal->texels, ref_img->pal->texels, sizeof(struct color[ref_img->pal->count])) == 0;
            if (!pal_matches_ref) {
                all_other_pngs_match_ref_img_pal = false;
            }
        }
    }

    if (success) {
        for (size_t i = 0; i < len_pngs_with_tlut; i++) {
            assert(pngs_with_tlut[i].img != NULL);
#ifdef VERBOSE
            fprintf(stderr, "%s %s\n", pngs_with_tlut[i].name, pngs_with_tlut[i].png_p);
#endif
        }

        char* pal_inc_c_p =
            malloc(len_out_dir_p + strlen("/") + strlen(tlut_name) + strlen(".tlut.rgba16.uXX.inc.c") + 1);
        assert(tlut_elem_size == 8 || tlut_elem_size == 4);
        sprintf(pal_inc_c_p, "%s/%s.tlut.rgba16.%s.inc.c", out_dir_p, tlut_name, tlut_elem_size == 8 ? "u64" : "u32");

        if (all_other_pngs_match_ref_img_pal) {
            // write matching palette, and matching color indices for all pngs
#ifdef VERBOSE
            fprintf(stderr, "Matching data detected!\n");
#endif

            // pass pad_to_8b=true to account for the case where this is in fact not matching data
            // (the png was silently palettized by n64texconv)
            // Note: this forces all palette sizes to be 8-aligned, even u32-element-typed ones
            int ret = n64texconv_palette_to_c_file(pal_inc_c_p, ref_img->pal, true, tlut_elem_size);
            success = ret == 0;
            if (!success) {
                fprintf(stderr, "Could not write palette to %s (%d)\n", pal_inc_c_p, ret);
            }

            if (success) {
                for (size_t i = 0; i < len_pngs_with_tlut; i++) {
                    char* inc_c_p = make_inc_c_p(pngs_with_tlut[i].png_p, out_dir_p);

                    success = n64texconv_image_to_c_file(inc_c_p, pngs_with_tlut[i].img, false, false,
                                                         pngs_with_tlut[i].elem_size) == 0;
                    if (!success) {
                        fprintf(stderr, "Could not write image to %s\n", inc_c_p);
                    }
                    free(inc_c_p);
                    if (!success) {
                        break;
                    }
                }
            }
        } else {
            // co-palettize all pngs
#ifdef VERBOSE
            fprintf(stderr, "Non-matching data detected!\n");
#endif
            const bool copaletize_write_out_pngs = true;

            const size_t num_images = len_pngs_with_tlut;
            uint8_t* out_indices[num_images];
            struct color* texels[num_images];
            size_t widths[num_images];
            size_t heights[num_images];
            for (size_t i = 0; i < len_pngs_with_tlut; i++) {
                assert(pngs_with_tlut[i].img != NULL);
                out_indices[i] = malloc(pngs_with_tlut[i].img->width * pngs_with_tlut[i].img->height);
                texels[i] = pngs_with_tlut[i].img->texels;
                widths[i] = pngs_with_tlut[i].img->width;
                heights[i] = pngs_with_tlut[i].img->height;
            }
            const unsigned int max_colors = fmt->siz == G_IM_SIZ_8b ? 256 : 16;
            struct color out_pal[max_colors];
            size_t out_pal_count;
            const float dither_level = 0.5f;

            success = n64texconv_quantize_shared(out_indices, out_pal, &out_pal_count, texels, widths, heights,
                                                 num_images, max_colors, dither_level) == 0;
            if (!success) {
                fprintf(stderr, "Could not co-palettize images\n");
            }

            struct n64_palette pal = { out_pal, G_IM_FMT_RGBA, out_pal_count };
            if (success) {
                int ret = n64texconv_palette_to_c_file(pal_inc_c_p, &pal, true, tlut_elem_size);
                success = ret == 0;
                if (!success) {
                    fprintf(stderr, "Could not write generated palette to %s (%d)\n", pal_inc_c_p, ret);
                }
            }
            if (success) {
                if (copaletize_write_out_pngs) {
                    char* pal_out_png_p = strdup(pal_inc_c_p);
                    assert(strendswith(pal_inc_c_p, ".inc.c"));
                    pal_out_png_p[strlen(pal_out_png_p) - strlen(".inc.c")] = '\0';
                    strcat(pal_out_png_p, ".png");
                    success = n64texconv_palette_to_png(pal_out_png_p, &pal) == 0;
                    if (!success) {
                        fprintf(stderr, "Could not write generated palette to png %s\n", pal_out_png_p);
                    }
                    free(pal_out_png_p);
                }
            }
            if (success) {
                for (size_t i = 0; i < len_pngs_with_tlut; i++) {
                    char* other_png_p_buf = strdup(pngs_with_tlut[i].png_p);
                    char* other_png_stem = basename(other_png_p_buf);
                    assert(strendswith(other_png_stem, ".png"));                    // checked by parse_png_p
                    other_png_stem[strlen(other_png_stem) - strlen(".png")] = '\0'; // cut off .png suffix
                    char* inc_c_p = malloc(len_out_dir_p + strlen("/") + strlen(other_png_stem) + strlen(".inc.c") + 1);
                    sprintf(inc_c_p, "%s/%s.inc.c", out_dir_p, other_png_stem);
                    free(other_png_p_buf);

                    struct n64_image img = {
                        pngs_with_tlut[i].img->width,
                        pngs_with_tlut[i].img->height,
                        G_IM_FMT_CI,
                        fmt->siz,
                        &pal,
                        pngs_with_tlut[i].img->texels,
                        out_indices[i],
                    };

                    success = n64texconv_image_to_c_file(inc_c_p, &img, false, false, pngs_with_tlut[i].elem_size) == 0;
                    if (!success) {
                        fprintf(stderr, "Could not write palettized image to %s\n", inc_c_p);
                        break;
                    }

                    if (copaletize_write_out_pngs) {
                        char* out_png_p = strdup(inc_c_p);
                        assert(strendswith(inc_c_p, ".inc.c"));
                        out_png_p[strlen(out_png_p) - strlen(".inc.c")] = '\0';
                        strcat(out_png_p, ".png");
                        success = n64texconv_image_to_png(out_png_p, &img, false) == 0;
                        if (!success) {
                            fprintf(stderr, "Could not write palettized image to png %s\n", out_png_p);
                        }
                        free(out_png_p);
                        if (!success) {
                            break;
                        }
                    }
                }
            }

            for (size_t i = 0; i < num_images; i++) {
                free(out_indices[i]);
            }
        }

        free(pal_inc_c_p);
    }

    n64texconv_image_free(ref_img);

    for (size_t i = 0; i < len_pngs_with_tlut; i++) {
        free(pngs_with_tlut[i].png_p);
        if (pngs_with_tlut[i].img != NULL) {
            n64texconv_palette_free(pngs_with_tlut[i].img->pal);
            n64texconv_image_free(pngs_with_tlut[i].img);
        }
    }
    free(pngs_with_tlut);

    return success;
}

int main(int argc, char** argv) {
    if (argc < 3) {
    usage:
        fprintf(stderr, "Usage: build_from_png path/to/file.png path/to/out/folder/ [path/to/input/folder1/ ...]\n");
        fprintf(stderr, "The png file should be named like:\n");
        fprintf(stderr, " - texName.format.<u32|u64>.png (non-ci formats or ci formats with a non-shared tlut)\n");
        fprintf(stderr, " - texName.ci<4|8>.tlut_tlutName_<u32|u64>.<u32|u64>.png (ci formats with a shared tlut)\n");
        return EXIT_FAILURE;
    }
    const char* png_p = argv[1];
    const char* out_dir_p = argv[2];
    char** in_dirs = argv + 3;
    const int num_in_dirs = argc - 3;

    const struct fmt_info* fmt;
    int elem_size;
    char* tlut_name = NULL;
    int tlut_elem_size = -1;

    {
        char* png_p_buf = strdup(png_p);
        bool success = parse_png_p(png_p_buf, &fmt, &elem_size, &tlut_name, &tlut_elem_size, true);
        free(png_p_buf);
        if (!success) {
            goto usage;
        }
    }

    bool success;

    if (fmt->fmt != G_IM_FMT_CI) {
        success = handle_non_ci(png_p, fmt, elem_size, out_dir_p);
    } else {
        if (tlut_name == NULL) {
            success = handle_ci_single(png_p, fmt, elem_size, out_dir_p);
        } else {
            success = handle_ci_shared_tlut(png_p, fmt, out_dir_p, in_dirs, num_in_dirs, tlut_name, tlut_elem_size);
            free(tlut_name);
        }
    }

    return success ? EXIT_SUCCESS : EXIT_FAILURE;
}
