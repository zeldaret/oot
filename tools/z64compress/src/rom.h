/* 
 * rom.h
 * 
 * functions for compression magic reside herein
 * 
 * z64me <z64.me>
 * 
 */

#ifndef Z64COMPRESS_ROM_H_INCLUDED
#define Z64COMPRESS_ROM_H_INCLUDED

/* opaque definition */
struct rom;

/* allocate a rom structure and load rom file */
struct rom *rom_new(const char *fn);

/* free a rom structure */
void rom_free(struct rom *rom);

/* save rom to disk using specified filename */
void rom_save(struct rom *rom, const char *fn);

/* compress rom using specified algorithm */
void rom_compress(struct rom *rom, int mb, int numThreads, bool matching);

/* specify start of dmadata and number of entries */
void rom_dma(struct rom *rom, unsigned int offset, int num_entries, bool matching);

/* call this once dma settings are finalized */
void rom_dma_ready(struct rom *rom, bool matching);

/* set compression flag on indices start <= idx <= end */
void
rom_dma_compress(struct rom *rom, unsigned start, unsigned end, int comp);

/* reencode existing archives within rom
 * NOTE: must be used before dma_ready()
 */
void rom_dma_repack(
	struct rom *rom
	, unsigned start
	, unsigned end
	, const char *from /* old codec */
	, const char *to /* new codec */
);

/* get number of dma entries */
int rom_dma_num(struct rom *rom);

/* set rom compression codec
 * valid options: "yaz", "lzo", "ucl", "aplib"
 * NOTE: to use codecs besides yaz, get patches from the z64enc repo
 */
void rom_set_codec(struct rom *rom, const char *codec);

/* set rom compressed file cache directory */
void rom_set_cache(struct rom *rom, const char *cache);

#endif /* Z64COMPRESS_ROM_H_INCLUDED */

