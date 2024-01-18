#ifndef Z64COMPRESS_ENC_H_INCLUDED
#define Z64COMPRESS_ENC_H_INCLUDED

int yazenc(
	void *src
	, unsigned src_sz
	, void *dst
	, unsigned *dst_sz
	, void *_ctx
);
void *yazCtx_new(void);
void yazCtx_free(void *_ctx);
int yazdec(void *_src, void *_dst, unsigned dstSz, unsigned *srcSz);

int lzoenc(
	void *src
	, unsigned src_sz
	, void *dst
	, unsigned *dst_sz
	, void *_ctx
);
void *lzoCtx_new(void);
void lzoCtx_free(void *_ctx);

int uclenc(
	void *src
	, unsigned src_sz
	, void *dst
	, unsigned *dst_sz
	, void *_ctx
);

int zx7enc(
	void *src
	, unsigned src_sz
	, void *dst
	, unsigned *dst_sz
	, void *_ctx
);

int aplenc(
	void *_src
	, unsigned src_sz
	, void *_dst
	, unsigned *dst_sz
	, void *_ctx
);

#endif /* Z64COMPRESS_ENC_H_INCLUDED */

