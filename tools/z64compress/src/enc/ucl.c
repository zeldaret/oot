#include <stdio.h>
#include <string.h>
#include <stdlib.h>
#include "ucl/ucl.h"

int
uclenc(
	void *_src
	, unsigned src_sz
	, void *_dst
	, unsigned *dst_sz
	, void *_ctx
)
{
	unsigned char *src = _src;
	unsigned char *dst = _dst;
	int r;
	int level = 10;
	ucl_uint result_sz;
	
	int hlen = 8; /* header length; required due to MM's archives */
	memset(dst, 0, hlen);
	memcpy(dst, "UCL0", 4);
	dst[4] = (src_sz >> 24);
	dst[5] = (src_sz >> 16);
	dst[6] = (src_sz >>  8);
	dst[7] = (src_sz >>  0);
	
	r = ucl_nrv2b_99_compress(
		src          /* in */
		, src_sz     /* in size */
		, dst + hlen /* out */
		, &result_sz /* out size */
		, NULL       /* callback */
		, level      /* level */
		, NULL       /* conf */
		, NULL       /* result */
	);
	
	if (r != UCL_E_OK)
	{
		fprintf(stderr, "[!] fatal compression error %d\n", r);
		exit(EXIT_FAILURE);
	}
	
	*dst_sz = result_sz + hlen;
	
	return 0;
}

