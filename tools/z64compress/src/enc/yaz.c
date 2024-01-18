#include <stdio.h>
#include <stdlib.h>
#include <stdint.h>
#include <string.h>
#include "stretchy_buffer.h"

struct yazCtx
{
	uint16_t  *c;
	uint32_t  *cmds;
	uint16_t  *ctrl;
	uint8_t   *raws;
	uint8_t   *ctl;
	uint8_t   *back;
	int       *return_data;
};

void yazCtx_free(void *_ctx)
{
	struct yazCtx *ctx = _ctx;
	
	if (!ctx)
		return;
	
	free(ctx->return_data);
	sb_free(ctx->c);
	sb_free(ctx->raws);
	sb_free(ctx->ctrl);
	sb_free(ctx->cmds);
	sb_free(ctx->ctl);
	sb_free(ctx->back);
}

void *yazCtx_new(void)
{
	struct yazCtx *ctx = calloc(1, sizeof(*ctx));
	
	if (!ctx)
		return 0;
	
	/* allocate everything */
	ctx->c = sb_add(ctx->c, 32);
	ctx->return_data = malloc(2 * sizeof(*ctx->return_data));
	ctx->raws = sb_add(ctx->raws, 32);
	ctx->ctrl = sb_add(ctx->ctrl, 32);
	ctx->cmds = sb_add(ctx->cmds, 32);
	ctx->ctl  = sb_add(ctx->ctl , 32);
	ctx->back = sb_add(ctx->back, 32);
	
	return ctx;
}

// MIO0 encoding
#define MIx 0

#define min(MINA, MINB) ( ( (MINA)<(MINB) ) ? (MINA) : (MINB) )
#define max(MAXA, MAXB) ( ( (MAXA)>(MAXB) ) ? (MAXA) : (MAXB) )

#define U32b(u32X) ((u32X)[0]<<24|(u32X)[1]<<16|(u32X)[2]<<8|(u32X)[3])
#define U16b(u32X) ((u32X)[0]<<8|(u32X)[1])
#define U32wr(u32DST,u32SRC)	(*(u32DST+0))=((u32SRC)>>24)&0xFF,\
								(*(u32DST+1))=((u32SRC)>>16)&0xFF,\
								(*(u32DST+2))=((u32SRC)>>8)&0xFF,\
								(*(u32DST+3))=((u32SRC)>>0)&0xFF
#define U16wr(u16DST,u16SRC)	(*(u16DST+0))=((u16SRC)>>8)&0xFF,\
								(*(u16DST+1))=((u16SRC)>>0)&0xFF

static uint16_t *_enc_next_cpy(struct yazCtx *ctx, uint8_t *back) {
	stb__sbn(ctx->c)=0; // initialize count to 0
	int x;
	for (x=0; x < (sb_count(back) & (0xFFFFFFFE)); x += 2) {
		sb_push(ctx->c, (back[x]<<8) | back[x+1]);
	}
	return ctx->c;
}

static uint32_t _enc_z_from_tables(struct yazCtx *ctx, uint8_t *ctl, uint8_t *back, uint8_t *values, uint8_t *output, int dec_s, const char *mode) {
	//_enc_next_cpy(NULL);
	uint8_t *b=ctl, *v=values;
	uint16_t *c = _enc_next_cpy(ctx, back);
	uint32_t bit=0x10000, output_position=0;
	// if dec_s declared, will keep accurate track
	while (dec_s > 0) {
		// get next bit
		if (bit > 0xFFFF) {
			bit = b[0];
			b++;
			output[output_position++] = bit & 0xFF;
			bit |= 0x100;
		}
		// catch end of control commands
		if (bit & 0x80) {
			output[output_position++] = v[0];
			v++;
			dec_s--;
		} else {
			uint16_t val=c[0];
			c++;
			output[output_position++] = ((val>>8)&0xFF);
			output[output_position++] = ((val)&0xFF);
			
			// decrement dec_s accurately with length
			val>>=12;
			val&=0xF;
			if(MIx)
				dec_s--;
			else if(val==0) {
				val = v[0];
				v++;
				output[output_position++]=val;
				val+=16;
			}
			dec_s -= val+2;
		}
		bit <<= 1;
	}
	return output_position;
}

static int _enc_find(struct yazCtx *ctx, uint8_t *array, uint8_t *needle, int needle_len, int start_index, int source_length) {
	while(start_index < (source_length - needle_len + 1)) {
		int r, index = -1;
		for(r=start_index; r < (source_length - needle_len + 1); r++) {
			if(array[r]==needle[0]) {
				index=r;
				break;
			}
		}
		
		// if we did not find even the first element, the search has failed
		if (index == -1)
			return -1;
		
		int i, p;
		// check for needle
		for (i = 0, p = index; i < needle_len; i++, p++) {
			if (array[p] != needle[i])
				break;
		}
		if(i==needle_len) {
			// needle was found
			return index;
		}
		// continue to search for needle
		start_index = index + 1;
	}
	return -1;
}

static int *_enc_search(struct yazCtx *ctx, uint8_t *data, uint32_t pos, uint32_t sz, uint32_t cap/*=0x111*/) {
	int *return_data = ctx->return_data;
	// this is necessary unless pos is signed, so let's play it safe
	int mp = (pos>0x1000)?(pos-0x1000):0;
	int ml = min(cap, sz - pos);
	if(ml<3) {
		return_data[0]=return_data[1]=0;
		return return_data;
	}
	int
		hitp = 0,
		hitl = 3,
		hl = -1
	;
	
	if (mp < pos) {
		hl = _enc_find(ctx, data+mp, data+pos, hitl, 0, pos + hitl - mp);
		while (hl < (pos - mp)) {
			while ((hitl < ml) && (data[pos + hitl] == data[mp + hl + hitl]) ) {
				hitl += 1;
			}
			mp += hl;
			hitp = mp;
			if (hitl == ml) {
				return_data[0] = hitp;
				return_data[1] = hitl;
				return return_data;
			}
			mp += 1;
			hitl += 1;
			if (mp >= pos)
				break;
			hl = _enc_find(ctx, data+mp, data+pos, hitl, 0, pos + hitl - mp);
		}
	}
	
	// if length < 4, return miss
	if (hitl < 4)
		hitl = 1;
	
	return_data[0] = hitp;
	return_data[1] = hitl-1;
	return return_data;
}

static
uint32_t encode(struct yazCtx *ctx, uint8_t *data, uint32_t data_size, uint8_t *output, const char *mode) {
	uint32_t
		cap=0x111,
		sz=data_size,
		pos=0,
		flag=0x80000000
	;
	// initialize count of each to 0
	stb__sbn(ctx->raws)=0;
	stb__sbn(ctx->ctrl)=0;
	stb__sbn(ctx->cmds)=0;
	
	sb_push(ctx->cmds, 0);
	
	if(data_size==0) {
		memcpy(output, mode, 4);
		int i;
		for(i=4; i<16; i++)
			output[i]=0x00;
		return 16;
	}
	while(pos<sz) {
		int *search_return = _enc_search(ctx, data, pos, sz, cap);
		
		int hitp = search_return[0];
		int hitl = search_return[1];
		
		if (hitl < 3) {
			// push a raw if copying isn't possible
			sb_push(ctx->raws, data[pos]);
			ctx->cmds[sb_count(ctx->cmds)-1] |= flag;
			pos += 1;
		} else {
			search_return = _enc_search(ctx, data, pos+1, sz, cap);
			int tstp = search_return[0];
			int tstl = search_return[1];
			
			if ((hitl + 1) < tstl) {
				sb_push(ctx->raws, data[pos]);
				ctx->cmds[sb_count(ctx->cmds)-1] |= flag;
				pos += 1;
				flag >>= 1;
				if (flag == 0) {
					flag = 0x80000000;
					sb_push(ctx->cmds, 0);
				}
				hitl = tstl;
				hitp = tstp;
			}
			int e = pos - hitp - 1;
			pos += hitl;
			// handle MIx first, then Yax conditions
			if (cap == 0x12) {
				hitl -= 3;
				sb_push(ctx->ctrl, (hitl<<12) | e);
			} else if (hitl < 0x12) {
				hitl -= 2;
				sb_push(ctx->ctrl, (hitl<<12)|e);
			} else {
				sb_push(ctx->ctrl, e);
				sb_push(ctx->raws, hitl - 0x12);
			}
		}
		// advance the flag and refill if required
		flag >>= 1;
		if (flag == 0) {
			flag = 0x80000000;
			sb_push(ctx->cmds, 0);//cmds.push_back(0);
		}
	}
	
	// if no cmds in final word, delete it
	if (flag == 0x80000000) {
		stb__sbn(ctx->cmds) -= 1;//cmds.erase(cmds.end()-1);
	}
	
	// block and stream differentiation
	// Yay is block, Yaz is stream
	int mode_block=1, mode_stream=1; // temporary, for testing
	mode_block=!strcmp(mode,"Yay0");
	if (mode_block ) {
		uint32_t l = (sb_count(ctx->cmds) << 2) + 16;
		uint32_t o = (sb_count(ctx->ctrl) << 1) + l;
		memcpy(output, mode, 4);
		U32wr(output+4, sz);
		U32wr(output+8, l);
		U32wr(output+12, o);
		
		uint32_t output_position = 16;
		uint32_t x;
		for (x=0; x<sb_count(ctx->cmds); x++) {
			U32wr(output+output_position, ctx->cmds[x]);
			output_position+=4;
		}
		for (x=0; x<sb_count(ctx->ctrl); x++) {
			U16wr(output+output_position, ctx->ctrl[x]);
			output_position+=2;
		}
		for (x=0; x<sb_count(ctx->raws); x++) {
			output[output_position++] = ctx->raws[x];
		}
		return output_position;
	} else if(mode_stream) {
		memcpy(output, mode, 4);
		U32wr(output+4, sz);
		U32wr(output+8, 0);
		U32wr(output+12, 0);
		
		uint32_t output_position = 0;
		stb__sbn(ctx->ctl)=0; // initialize count to 0
		stb__sbn(ctx->back)=0; // initialize count to 0
		uint32_t x;
		for (x=0; x < sb_count(ctx->cmds); x++) {
			sb_push(ctx->ctl, (ctx->cmds[x]>>24)&0xFF);
			sb_push(ctx->ctl, (ctx->cmds[x]>>16)&0xFF);
			sb_push(ctx->ctl, (ctx->cmds[x]>>8)&0xFF);
			sb_push(ctx->ctl, (ctx->cmds[x])&0xFF);
		}
		for (x=0; x < sb_count(ctx->ctrl); x++) {
			sb_push(ctx->back, (ctx->ctrl[x]>>8)&0xFF);
			sb_push(ctx->back, (ctx->ctrl[x])&0xFF);
		}
		output_position = _enc_z_from_tables(ctx, ctx->ctl, ctx->back, ctx->raws, output+16, data_size, mode);
		return 16 + output_position;
	}
	return 0;
}


int
yazenc(
	void *_src
	, unsigned src_sz
	, void *_dst
	, unsigned *dst_sz
	, void *_ctx
)
{
	unsigned char *src = _src;
	unsigned char *dst = _dst;
	if (!_ctx)
		return 1;
	*dst_sz = encode(_ctx, src, src_sz, dst, "Yaz0");
	return 0;
}

/* yaz decoder, courtesy of spinout182 */
int
yazdec(void *_src, void *_dst, unsigned dstSz, unsigned *srcSz)
{
	unsigned char *src = _src;
	unsigned char *dst = _dst;
	
	int srcPlace = 0, dstPlace = 0; /*current read/write positions*/
	
	unsigned int validBitCount = 0; /*number of valid bits left in "code" byte*/
	unsigned char currCodeByte = 0;
	
	int uncompressedSize = dstSz;
	
	src += 0x10;
	
	while(dstPlace < uncompressedSize)
	{
		/*read new "code" byte if the current one is used up*/
		if(!validBitCount)
		{
			currCodeByte = src[srcPlace];
			++srcPlace;
			validBitCount = 8;
		}
		
		if(currCodeByte & 0x80)
		{
			/*direct copy*/
			dst[dstPlace] = src[srcPlace];
			dstPlace++;
			srcPlace++;
		}
		else
		{
			/*RLE part*/
			unsigned char byte1 = src[srcPlace];
			unsigned char byte2 = src[srcPlace + 1];
			srcPlace += 2;
			
			unsigned int dist = ((byte1 & 0xF) << 8) | byte2;
			unsigned int copySource = dstPlace - (dist + 1);

			unsigned int numBytes = byte1 >> 4;
			if(numBytes)
				numBytes += 2;
			else
			{
				numBytes = src[srcPlace] + 0x12;
				srcPlace++;
			}

			/*copy run*/
			int i;
			for(i = 0; i < numBytes; ++i)
			{
				dst[dstPlace] = dst[copySource];
				copySource++;
				dstPlace++;
			}
		}
		
		/*use next bit from "code" byte*/
		currCodeByte <<= 1;
		validBitCount-=1;		
	}
	
	if (srcSz)
		*srcSz = srcPlace;
	
	return 0;
}

#ifdef YAZ_MAIN_TEST

#define FERR(x) {         \
   fprintf(stderr, x);    \
   fprintf(stderr, "\n"); \
   exit(EXIT_FAILURE);    \
}

int main(int argc, char* argv[])
{
	FILE *fp;
	struct yazCtx *ctx;
	unsigned size;
	
	if(argc < 2)
		FERR("args: yazenc in.raw > out.yaz");
	
	fp = fopen(argv[1], "rb");
	if(fp == NULL)
		FERR("failed to open file");
	
	fseek(fp, 0, SEEK_END);
	size = ftell(fp);
	fseek(fp, 0, SEEK_SET);
	
	fprintf(stderr, "input file size: %d\n", size);
	
	void *buf = malloc(size);
	void *outbuf = malloc( (size + 64) * 2);
	
	if (fread(buf, 1, size, fp) != size)
		FERR("failed to read file");
	
	fclose(fp);
	
	ctx = yazCtx_new();
	if (yazenc(buf, size, outbuf, &size, ctx))
		FERR("encoding error");
	
	if (fwrite(outbuf, 1, size, stdout) != size)
		FERR("failed to write stdout");
	
	yazCtx_free(ctx);
	free(buf);
	free(outbuf);
	return EXIT_SUCCESS;
}
#endif /* YAZ_MAIN_TEST */


