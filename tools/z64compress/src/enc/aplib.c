#include <stdio.h>
#include <string.h>
#include <stdlib.h>
#include "apultra/libapultra.h"

static void compression_progress(long long nOriginalSize, long long nCompressedSize) {
   /* do nothing */
}

int
aplenc(
	void *_src
	, unsigned src_sz
	, void *_dst
	, unsigned *dst_sz
	, void *_ctx
)
{
	unsigned char *src = _src;
	unsigned char *dst = _dst;
	int nMaxCompressedSize = apultra_get_max_compressed_size(src_sz);
	apultra_stats stats;
	
	int hlen = 8; /* header length; required due to MM's archives */
	memset(dst, 0, hlen);
	memcpy(dst, "APL0", 4);
	dst[4] = (src_sz >> 24);
	dst[5] = (src_sz >> 16);
	dst[6] = (src_sz >>  8);
	dst[7] = (src_sz >>  0);
	
	*dst_sz = apultra_compress(
		src
		, dst + hlen
		, src_sz
		, nMaxCompressedSize
		, 0 /* flags */
		, 0 /* nMaxWindowSize */
		, 0 /* nDictionarySize */
		, compression_progress
		, &stats
	);
	
	*dst_sz = *dst_sz + hlen;
	
	return 0;
}

