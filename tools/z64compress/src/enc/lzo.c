#include <stdio.h>
#include <string.h>
#include <stdlib.h>
#include "lzo/lzoconf.h"
#include "lzo/lzo1x.h"

void
lzoCtx_free(void *_ctx)
{
	if (!_ctx)
		return;
	
	free(_ctx);
}

void *
lzoCtx_new(void)
{
	return malloc(LZO1X_999_MEM_COMPRESS);
}

int
lzoenc(
	void *_src
	, unsigned src_sz
	, void *_dst
	, unsigned *dst_sz
	, void *_ctx
)
{
	unsigned char *src = _src;
	unsigned char *dst = _dst;
	unsigned char *wrkmem = _ctx;
	lzo_uint result_sz = 0;
	
	int hlen = 8; /* header length; required due to MM's archives */
	memset(dst, 0, hlen);
	memcpy(dst, "LZO0", 4);
	dst[4] = (src_sz >> 24);
	dst[5] = (src_sz >> 16);
	dst[6] = (src_sz >>  8);
	dst[7] = (src_sz >>  0);
	
	if (!wrkmem)
		return 1;
	
	memset(wrkmem, 0, LZO1X_999_MEM_COMPRESS);
	
	lzo1x_999_compress(src, src_sz, dst + hlen, &result_sz, wrkmem);
	
	*dst_sz = result_sz + hlen;
	
	return 0;
}

