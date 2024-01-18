/* <z64.me> yar.c: decode and encode MM yaz archives */

#ifndef Z64YAR_H_INCLUDED
#define Z64YAR_H_INCLUDED

/* reencode yar archive */
/* returns 0 on success, pointer to error message otherwise */
char *
yar_reencode(
	unsigned char   *src     /* source archive */
	, unsigned int   sz      /* source archive size */
	, unsigned char *dst     /* destination archive */
	, unsigned int  *dst_sz  /* destination archive size  */
	, int align              /* compressed file alignment */
	
	, const char *name       /* name of archive (0 = hide progress) */
	, const char *codec      /* the expected encoding header "Yaz0" */
	, void *imm              /* intermediate buffer for conversion  */
	, void *ctx              /* compression context (if applicable) */
	
	/* decompresses file; return non-zero on fail; optional
	 * if files are already decompressed (up to user to know)
	 */
	, int decode(void *src, void *dst, unsigned dstSz, unsigned *srcSz)
	
	/* compress file; returns non-zero on fail; optional if
	 * files are desired to be left decompressed
	 */
	, int encode(void *src, unsigned srcSz, void *dst, unsigned *dstSz, void *ctx)
	
	/* test if file has been previously encoded; optional */
	, int exist(void *src, unsigned srcSz, void *dst, unsigned *dstSz)
);

#endif /* Z64YAR_H_INCLUDED */

