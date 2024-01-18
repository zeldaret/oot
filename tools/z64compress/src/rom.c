/* 
 * rom.c
 * 
 * functions for compression magic reside herein
 * 
 * z64me <z64.me>
 * 
 */

#include <stdbool.h>
#include <stdio.h>
#include <stdlib.h>
#include <assert.h>
#include <string.h>
#include <stdarg.h>
#include <ctype.h>

/* POSIX dependencies */
#include <dirent.h>
#include <sys/stat.h>
#include <unistd.h>

/* threading */
#include <pthread.h>

#include "enc/enc.h"  /* file compression */
#include "enc/yar.h"  /* MM archive tools */

#include "sha1.h"     /* sha1 helpers */
#include "n64crc.h"   /* n64crc() */

#include "wow.h"
#include "wow_dirent.h" /* XXX always #include after dirent.h */
#undef   fopen
#undef   fread
#undef   fwrite
#undef   remove
#define  fopen   wow_fopen
#define  fread   wow_fread
#define  fwrite  wow_fwrite
#define  remove  wow_remove

extern FILE* printer;

#define SIZE_16MB (1024 * 1024 * 16)
#define SIZE_4MB  (1024 * 1024 * 4)

#define DMA_DELETED 0xffffffff /* aka UINT32_MAX */

#define DMASORT(ROM, FUNC) \
	qsort( \
		ROM->dma \
		, ROM->dma_num \
		, sizeof(*(ROM->dma)) \
		, FUNC \
	)

#define DMASORT_N(ROM, FUNC, NUM) \
	qsort( \
		ROM->dma \
		, NUM \
		, sizeof(*(ROM->dma)) \
		, FUNC \
	)

#define DMA_FOR_EACH \
for (dma = rom->dma; (unsigned)(dma - rom->dma) < rom->dma_num; ++dma)

#define PROGRESS_A_B (int)(dma - rom->dma), rom->dma_num

#define ALIGN(x, n) (((x) + ((n)-1)) & ~((n)-1))
#define ALIGN16(x) 	ALIGN(x, 16)
#define ALIGN8MB(x) ALIGN(x, 8 * 0x100000)

/*
 *
 * private types
 *
 */


struct encoder
{
	int (*encfunc)(
		void *src
		, unsigned src_sz
		, void *dst
		, unsigned *dst_sz
		, void *_ctx
	);
	void *(*ctx_new)(void);
	void (*ctx_free)(void *);
};


struct dma
{
	char             *compname;  /* name of compressed file    */
	void             *compbuf;   /* cache-less compressed data */
	unsigned int      index;     /* original index location    */
	int               compress;  /* entry can be compressed    */
	int               deleted;   /* points to deleted file     */
	unsigned          compSz;    /* cache-less compressed size */
	unsigned int      start;     /* start offset               */
	unsigned int      end;       /* end offset                 */
	unsigned int      Pstart;    /* start of physical (P) data */
	unsigned int      Pend;      /* end of physical (P) data   */
	unsigned int      Ostart;    /* original (O) start         */
	unsigned int      Oend;      /* original (O) end           */
};


struct rom
{
	char             *fn;        /* filename of loaded rom            */
	char             *codec;     /* compression codec                 */
	char             *cache;     /* compression cache                 */
	unsigned char    *data;      /* raw rom data                      */
	unsigned int      data_sz;   /* size of rom data                  */
	unsigned int      ofs;       /* offset where rom_write() writes   */
	int               is_comp;   /* non-0 if rom has been compressed  */
	struct dma       *dma;       /* dma array                         */
	unsigned int      dma_num;   /* number of entries in dma array    */
	unsigned char    *dma_raw;   /* pointer to raw dmadata            */
	int               dma_ready; /* non-zero after dma_ready()        */
	
	/* memory pools for things like compression */
	struct
	{
		void *mb16;  /* 16 mb */
		void *mb4;   /* 4 mb  */
	} mem;
};


struct fldr_item
{
	char             *name;      /* name  */
	void             *udata;     /* udata */
};


struct folder
{
	struct fldr_item *item;      /* item array */
	int               num;       /* number of items in array */
	struct fldr_item *active;    /* active item */
};


struct compThread
{
	struct rom *rom;
	void *data;
	int (*encfunc)(
		void *src
		, unsigned src_sz
		, void *dst
		, unsigned *dst_sz
		, void *_ctx
	);
	const char *codec;
	char *dot_codec;
	struct folder *list;
	int stride;   /* number of entries to advance each time */
	int ofs;      /* starting entry in list */
	int report;   /* report progress to stderr (last thread only) */
	void *ctx;    /* compression context */
	bool matching;
	pthread_t pt; /* pthread */
};

/*
 *
 * private functions
 *
 */


/* get 32-bit value from raw data */
static int get32(void *_data)
{
	unsigned char *data = _data;
	
	return (data[0] << 24) | (data[1] << 16) | (data[2] << 8) | data[3];
}


/* get size of a file; returns 0 if fopen fails */
static unsigned int file_size(const char *fn)
{
	FILE *fp;
	unsigned int sz;
	
	fp = fopen(fn, "rb");
	if (!fp)
		return 0;
	
	fseek(fp, 0, SEEK_END);
	sz = ftell(fp);
	fclose(fp);
	
	return sz;
}

/* load a file into an existing buffer */
static void *file_load_into(
	const char *dir
	, const char *fn
	, unsigned int *sz
	, void *dst
)
{
	FILE *fp;
	
	assert(fn);
	assert(sz);
	assert(dst);
	
	if (!dir)
		dir = "";
	
	*sz = 0;
	
	fp = fopen(fn, "rb");
	if (!fp)
		die("failed to open '%s%s' for reading", dir, fn);
	
	fseek(fp, 0, SEEK_END);
	*sz = ftell(fp);
	
	if (!*sz)
		die("size of file '%s%s' is zero", dir, fn);
	
	fseek(fp, 0, SEEK_SET);
	
	if (fread(dst, 1, *sz, fp) != *sz)
		die("failed to read contents of '%s%s'", dir, fn);
	
	fclose(fp);
	
	return dst;
}

/* load a file */
static void *file_load(const char *fn, unsigned int *sz)
{
	unsigned char *dst;
	
	assert(fn);
	assert(sz);
	
	*sz = file_size(fn);
	if (!*sz)
		die("failed to get size of file '%s'", fn);
	
	dst = malloc_safe(*sz);
	
	return file_load_into(0, fn, sz, dst);
}

/* write file */
static unsigned int file_write(
	const char *fn
	, void *data
	, unsigned int data_sz
)
{
	FILE *fp;
	
	assert(fn);
	assert(data);
	assert(data_sz);
	
	fp = fopen(fn, "wb");
	if (!fp)
		return 0;
	
	data_sz = fwrite(data, 1, data_sz, fp);
	
	fclose(fp);
	
	return data_sz;
}


/* allocate a folder structure and parse current working directory */
static struct folder *folder_new(void)
{
	wow_DIR *dir;
	struct wow_dirent *ep;
	struct fldr_item *item;
	struct folder *folder;
	char cwd[4096];
	int count = 0;
	int recount = 0;
	
	/* allocate a folder */
	folder = calloc_safe(1, sizeof(*folder));
	
	/* get current working directory for error reporting */
	wow_getcwd_safe(cwd, sizeof(cwd));
	
	/* first pass: count the contents */
	dir = wow_opendir(".");
	if (!dir)
		die("failed to parse directory '%s'", cwd);
	while ((ep = wow_readdir(dir)))
		count += 1;
	wow_closedir(dir);
	
	/* folder is empty */
	if (!count)
		die("folder '%s' is empty", cwd);
	
	/* allocate item array */
	item = calloc_safe(count, sizeof(*item));
	folder->item = item;
	folder->num = count;
	
	/* second pass: retrieve requested contents */
	dir = wow_opendir(".");
	if (!dir)
		die("failed to parse directory '%s'", cwd);
	for (
		recount = 0
		; (ep = wow_readdir(dir)) && recount < count
		; ++recount, ++item
	)
	{
		const char *dn;
		
		dn = (const char*)ep->d_name;
		
		/* skip names starting with '.' (covers both "." and "..") */
		if (*dn == '.')
			continue;
		
		/* skip directories */
		if (wow_is_dir(dn))
			continue;
		
		/* make a copy of the string */
		item->name = strdup_safe(dn);
	}
	
	if (recount != count)
		die("contents of '%s' changed during read, try again", cwd);
	wow_closedir(dir);
	
	return folder;
}


/* free a folder structure */
static void folder_free(struct folder *folder)
{
	if (!folder)
		return;
	
	/* folder contains items */
	if (folder->item)
	{
		struct fldr_item *item;
		
		/* walk item list, freeing resources owned by each */
		for (
			item = folder->item
			; item - folder->item < folder->num
			; ++item
		)
		{
			if (item->name)
				free(item->name);
		}
		
		/* free item list */
		free(folder->item);
	}
	
	/* free folder */
	free(folder);
}


/* locate folder item by name, ignoring extension (such as '.raw') */
static struct fldr_item *folder_findNameNoExt(
	struct folder *folder
	, char *name
)
{
	struct fldr_item *item;
	
	assert(folder);
	assert(name);
	
	for (
		item = folder->item
		; item - folder->item < folder->num
		; ++item
	)
	{
		char *period;
		int nchar;
		
		/* item has no name */
		if (!item->name)
			continue;
		
		/* doesn't contain a period */
		if (!(period = strrchr(item->name, '.')))
			continue;
		
		/* number of bytes to compare */
		nchar = period - item->name;
		
		/* names match */
		if (!memcmp(item->name, name, nchar))
			return item;
	}
	
	return 0;
}


/* retrieve encoder from name */
static const struct encoder *encoder(const char *name)
{
	if (!strcmp(name, "yaz"))
	{
		static const struct encoder yaz = {
			.encfunc = yazenc
			, .ctx_new = yazCtx_new
			, .ctx_free = yazCtx_free
		};
		
		return &yaz;
	}
	else if (!strcmp(name, "lzo"))
	{
		static const struct encoder lzo = {
			.encfunc = lzoenc
			, .ctx_new = lzoCtx_new
			, .ctx_free = lzoCtx_free
		};
		
		return &lzo;
	}
	else if (!strcmp(name, "ucl"))
	{
		static const struct encoder ucl = {
			.encfunc = uclenc
		};
		
		return &ucl;
	}
	/*else if (!strcmp(name, "zx7"))
	{
		static const struct encoder zx7 = {
			.encfunc = zx7enc
		};
		
		return &zx7;
	}*/
	else if (!strcmp(name, "aplib"))
	{
		static const struct encoder aplib = {
			.encfunc = aplenc
		};
		
		return &aplib;
	}
	else
		die("unknown compression codec '%s'", name);
	
	return 0;
}


/* sort dma array by start, ascending */
static int sortfunc_dma_start_ascend(const void *_a, const void *_b)
{
	const struct dma *a = _a;
	const struct dma *b = _b;
	
	if (a->start < b->start)
		return -1;
	
	else if (a->start > b->start)
		return 1;
	
	return 0;
}


/* sort dma array by size, descending */
static int sortfunc_dma_size_descend(const void *_a, const void *_b)
{
	const struct dma *a = _a;
	const struct dma *b = _b;
	
	unsigned int a_len = a->end - a->start;
	unsigned int b_len = b->end - b->start;
	
	if (a_len < b_len)
		return 1;
	
	else if (a_len > b_len)
		return -1;
	
	return 0;
}


/* enter a directory (will be created if it doesn't exist) */
static void dir_enter(const char *dir)
{
	/* unable to enter directory */
	if (wow_chdir(dir))
	{
		/* attempt to create directory */
		if (wow_mkdir(dir))
			die("failed to create directory '%s'", dir);
		
		if (wow_chdir(dir))
			die("failed to enter directory '%s'", dir);
	}
}


static void report_progress(
	struct rom *rom
	, const char *codec
	, int v
	, int total
)
{
	/* caching enabled */
	if (rom->cache)
		fprintf(
			printer
			, "\r""updating '%s/%s' %d/%d: "
			, rom->cache
			, codec
			, v
			, total
		);
	
	else
		fprintf(
			printer
			, "\r""compressing file %d/%d: "
			, v
			, total
		);
}

/* compress a list of files */
static void dma_compress(
	struct rom *rom
	, void *compbuf
	, int encfunc(
		void *src
		, unsigned src_sz
		, void *dst
		, unsigned *dst_sz
		, void *_ctx
	)
	, const char *codec
	, char *dot_codec
	, struct folder *list
	, int stride   /* number of entries to advance each time */
	, int ofs      /* starting entry in list */
	, int report   /* report progress to stderr (last thread only) */
	, void *ctx    /* compression context */
	, bool matching
)
{
	struct dma *dma;
	struct fldr_item *item;
	
	for (dma = rom->dma + ofs
		; (unsigned)(dma - rom->dma) < rom->dma_num
		; dma += stride
	)
	{
		char *iname = 0;
		unsigned char *data = rom->data + dma->start;
		unsigned char checksum[64];
		char readable[64];
		int len = dma->end - dma->start;
		
		/* report the progress */
		if (report)
			report_progress(rom, codec, PROGRESS_A_B);
		
		/* skip files that have a size of 0 */
		if (dma->start == dma->end)
			continue;
		
		/* caching is disabled, just compress */
		if (!rom->cache)
		{
			int err;
			dma->compbuf = compbuf;
			
			/* don't compress this file */
			if (!dma->compress)
			{
				dma->compSz = dma->end - dma->start;
				dma->compbuf =	memdup_safe(
					rom->data + dma->start
					, dma->compSz
				);
				continue;
			}
			
			err =
			encfunc(
				rom->data + dma->start
				, dma->end - dma->start
				, dma->compbuf
				, &dma->compSz
				, ctx
			);
			
			/* file doesn't benefit from compression */
			if (!matching && dma->compSz >= dma->end - dma->start)
			{
				dma->compSz = dma->end - dma->start;
				dma->compbuf =	memdup_safe(
					rom->data + dma->start
					, dma->compSz
				);
				dma->compress = 0;
			}
			else
				dma->compbuf =	memdup_safe(dma->compbuf, dma->compSz);
			
			if (err)
				die("compression error");
			
			/* the rest of the loop applies only to caches */
			continue;
		}
		
		/* get readable checksum name */
		stb_sha1(checksum, data, len);
		stb_sha1_readable(readable, checksum);
		
		/* see if item already exists in folder */
		item = folder_findNameNoExt(list, readable);
		if (item)
		{
			/* use full file name, including extension */
			iname = item->name;
			
			/* it exists, so use udata to mark the file as used */
			item->udata = dot_codec;
			dma->compSz = file_size(iname);
			
			/* uncompressed file */
			if (strstr(iname, ".raw"))
				dma->compress = 0;
		}
		/* item doesn't exist, so create it */
		else
		{
			void *out = compbuf;
			unsigned out_sz;
			int err;
			
			/* file not marked for compression */
			if (!dma->compress)
			{
				out = rom->data + dma->start;
				out_sz = dma->end - dma->start;
				dma->compress = 0;
				strcat(readable, ".raw");
				
				/* write file */
				if (file_write(readable, out, out_sz) != out_sz)
					die("error writing file 'cache/%s/%s'", codec, readable);
				
				dma->compSz = out_sz;
				dma->compname = strdup_safe(readable);
				
				/* the remaining block applies only to compressed files */
				continue;
			}
			
			err =
			encfunc(
				rom->data + dma->start
				, dma->end - dma->start
				, out
				, &out_sz
				, ctx
			);
			
			if (err)
				die("compression error");
			
			/* file doesn't benefit from compression */
			if (!matching && out_sz >= dma->end - dma->start)
			{
				out = rom->data + dma->start;
				out_sz = dma->end - dma->start;
				dma->compress = 0;
				strcat(readable, ".raw");
			}
			/* file benefits from compression */
			else
				/* add encoding as extension, ex '.yaz' */
				strcat(readable, dot_codec);
			
			/* write file */
			if (file_write(readable, out, out_sz) != out_sz)
				die("error writing file 'cache/%s/%s'", codec, readable);
			
			dma->compSz = out_sz;
			iname = readable;
		}
		
		/* back up compressed filename to
		 * avoid having to re-checksum later
		 */
		dma->compname = strdup_safe(iname);
	}
}


static void *dma_compress_threadfunc(void *_CT)
{
	struct compThread *CT = _CT;
	
	dma_compress(
		CT->rom
		, CT->data
		, CT->encfunc
		, CT->codec
		, CT->dot_codec
		, CT->list
		, CT->stride
		, CT->ofs
		, CT->report
		, CT->ctx
		, CT->matching
	);
	
	return 0;
}


static void dma_compress_thread(
	struct compThread *CT
	, struct rom *rom
	, void *compbuf
	, int encfunc(
		void *src
		, unsigned src_sz
		, void *dst
		, unsigned *dst_sz
		, void *_ctx
	)
	, const char *codec
	, char *dot_codec
	, struct folder *list
	, int stride   /* number of entries to advance each time */
	, int ofs      /* starting entry in list */
	, int report   /* report progress to stderr (last thread only) */
	, void *ctx    /* compression context */
	, bool matching
)
{
	CT->rom = rom;
	CT->data = compbuf;
	CT->encfunc = encfunc;
	CT->codec = codec;
	CT->dot_codec = dot_codec;
	CT->list = list;
	CT->stride = stride;
	CT->ofs = ofs;
	CT->report = report;
	CT->ctx = ctx;
	CT->matching = matching;
	
	if (pthread_create(&CT->pt, 0, dma_compress_threadfunc, CT))
		die("threading error");
}


/* get dma entry by original index (useful after reordering) */
static struct dma *dma_get_idx(struct rom *rom, unsigned idx)
{
	struct dma *dma;
	
	assert(idx < rom->dma_num && "dma index too high");
	
	/* walk dma list for matching index */
	DMA_FOR_EACH
	{
		if (dma->index == idx)
			break;
	}
	
	return dma;
}


/* write 'num' bytes to rom and advance */
static void rom_write(struct rom *rom, void *data, int sz)
{
	unsigned char *raw;
	
	assert(rom);
	assert(rom->data);
	assert(data);
	assert(sz);
	
	if (rom->ofs + sz > rom->data_sz)
		die(
			"can't write %d bytes at 0x%X b/c it exceeds rom size"
			, sz, rom->ofs
		);
	
	raw = rom->data + rom->ofs;
	
	memcpy(raw, data, sz);
	
	rom->ofs += sz;
}


/* write 32 bit value to rom and advance */
static void rom_write32(struct rom *rom, unsigned int value)
{
	unsigned char raw[4];
	
	raw[0] = value >> 24;
	raw[1] = value >> 16;
	raw[2] = value >>  8;
	raw[3] = value;
	
	rom_write(rom, raw, 4);
}


/* write dma table into rom */
static void rom_write_dmadata(struct rom *rom)
{
	struct dma *dma;
	int num;
	int numUsed;
	
	assert(rom);
	assert(rom->dma);
	assert(rom->dma_raw);
	
	dma = rom->dma;
	num = rom->dma_num;
	
	/* sort all entries by size, descending */
	DMASORT(rom, sortfunc_dma_size_descend);
	
	/* find first entry where size == 0 (aka first unused entry) */
	for (dma = rom->dma; dma - rom->dma < num; ++dma)
		if (dma->start == dma->end)
			break;
	numUsed = dma - rom->dma;
	
	/* sort all used entries by start address, ascending */
	DMASORT_N(rom, sortfunc_dma_start_ascend, numUsed);
	
	/*
	 * at this point, unused entries have been moved to the end
	 */
	
	/* zero the table */
	memset(rom->dma_raw, 0, num * 16);
	
	/* write every entry */
	rom->ofs = rom->dma_raw - rom->data;
	for (dma = rom->dma; dma - rom->dma < num; ++dma)
	{
		rom_write32(rom, dma->start);
		rom_write32(rom, dma->end);
		rom_write32(rom, dma->Pstart);
		rom_write32(rom, dma->Pend);
		
		/* early end condition: all entries have been written */
		if (!dma->end)
			break;
	}
}


/*
 *
 * public functions
 *
 */

/* compress rom using specified algorithm */
void rom_compress(struct rom *rom, int mb, int numThreads, bool matching)
{
	struct dma *dma;
	struct folder *list = 0;
	struct fldr_item *item;
	char *dot_codec = 0;
	const char *codec;
	char cwd[4096] = {0};
	char cache_codec[4096] = {0};
	const char *cache;
	const struct encoder *enc = 0;
	unsigned int compsz = mb * 0x100000;
	unsigned int comp_total = 0;
	unsigned int largest_compress = 1024;
	float total_compressed = 0;
	float total_decompressed = 0;
	struct compThread *compThread = 0;
	int dma_num = rom->dma_num;
	int i;
	
	assert(rom);
	assert(rom->dma);
	assert(rom->dma_ready);
	assert(rom->is_comp == 0 && "rom_compressed called more than once");
	
	rom->is_comp = 1;
	
	if (numThreads <= 0)
		numThreads = 1;
	
	/* default codec = yaz */
	if (!(codec = rom->codec))
		codec = "yaz";
	
	cache = rom->cache;
	
	if (compsz > rom->data_sz || mb < 0)
		die("invalid mb argument %d", mb);
	
	/* get encoding functions */
	enc = encoder(codec);
	
	/* restore original start/end for nonexistent files */
	DMA_FOR_EACH
	{
		if (dma->deleted)
		{
			dma->start = dma->Ostart;
			dma->end   = dma->Oend;
			dma->compress = 0; /* deleted files don't compress */
		}
	}
	
	/* sort dma entries by size, descending */
	DMASORT(rom, sortfunc_dma_size_descend);
	
	/* locate largest file that will be compressed */
	DMA_FOR_EACH
	{
		if (dma->compress && dma->end - dma->start > largest_compress)
			largest_compress = dma->end - dma->start;
	}
	
	/* no file should compress to over 2x its uncompressed size */
	largest_compress *= 2;
	
	/* allocate compression buffer for each thread */
	compThread = calloc_safe(numThreads, sizeof(*compThread));
	for (i = 0; i < numThreads; ++i)
	{
		compThread[i].data = malloc_safe(largest_compress);
	
		/* allocate compression contexts (if applicable) */
		if (enc->ctx_new)
		{
			compThread[i].ctx = enc->ctx_new();
			if (!compThread[i].ctx)
				die("memory error");
		}
	}
	
	/* if using compression cache */
	if (cache)
	{
		sprintf(cache_codec, "%s/%s/", cache, codec);
		
		/* store current working directory for later */
		wow_getcwd_safe(cwd, sizeof(cwd));
		
		/* create and enter cache folder */
		dir_enter(cache);
		
		/* create and enter directory for the encoding algorithm */
		dir_enter(codec);
		
		/* make a '.yaz' string from 'yaz' */
		dot_codec = malloc_safe(strlen(codec) + 1/*'.'*/ + 1/*'\0'*/);
		strcpy(dot_codec, ".");
		strcat(dot_codec, codec);
		
		/* get list of all files in current working directory */
		list = folder_new();
	}
	
	/* now compress every compressible file */
	if (numThreads <= 1)
	{
		dma_compress(
			rom
			, compThread[0].data
			, enc->encfunc
			, codec
			, dot_codec
			, list
			, 1  /* stride */
			, 0  /* ofs    */
			, 1  /* report */
			, compThread[0].ctx
			, matching
		);
	}
	else
	{
		/* spawn threads */
		for (i = 0; i < numThreads; ++i)
		{
			dma_compress_thread(
				&compThread[i]
				, rom
				, compThread[i].data
				, enc->encfunc
				, codec
				, dot_codec
				, list
				, numThreads         /* stride */
				, i                  /* ofs    */
				, (i+1)==numThreads  /* report */
				, compThread[i].ctx
				, matching
			);
		}

		/* wait for all threads to complete */
		for (i = 0; i < numThreads; ++i)
		{
			if (pthread_join(compThread[i].pt, NULL))
				die("threading error");
		}
	}
	
	/* all files now compressed */
	report_progress(rom, codec, PROGRESS_A_B);
	fprintf(printer, "success!\n");
	
	/* sort by original start, ascending */
	DMASORT(rom, sortfunc_dma_start_ascend);
	
	/* determine physical addresses for each segment */
	comp_total = 0;
	DMA_FOR_EACH
	{
		char *fn = dma->compname;
		unsigned int sz;
		unsigned int sz16;
		
		if (dma->deleted)
			continue;
		
		/* cached file logic */
		if (cache)
		{
			/* skip entries that don't reference compressed files */
			if (!fn)
				continue;
			
			sz = dma->compSz;
			
			/* sz == 0 */
			if (!sz)
				die("'%s/%s/%s' file size == 0", cache, codec, fn);
		}
		
		/* in-memory file logic */
		else
		{
			/* skip entries that don't reference compressed data */
			sz = dma->compSz;
			if (!sz)
				continue;
		}
		
		/* ensure we remain 16-byte-aligned after advancing */
		sz16 = sz;
		if (sz16 & 15)
			sz16 += 16 - (sz16 & 15);
		
		dma->Pstart = comp_total;
		if (dma->compress)
		{
			dma->Pend = dma->Pstart + sz16;
			
			/* compressed file ratio variables */
			total_compressed += sz16;
			total_decompressed += dma->end - dma->start;
		}
		else
			dma->Pend = 0;
		comp_total += sz16;
		
		if (mb != 0 && dma->Pend > compsz)
			die("ran out of compressed rom space");
	}

	/* adaptive final size */
	if (mb == 0)
		compsz = ALIGN8MB(comp_total);
	
	if (matching)
	{
		/* fill the entire (compressed) rom space with 00010203...FF...
		   in order to match retail rom padding                         */
		unsigned char n = 0; /* will intentionally overflow */
		for (unsigned int j = 0; j < compsz; j++, n++)
		{
			rom->data[j] = n;
		}
	}
	else
	{
		/* zero the entire (compressed) rom space */
		memset(rom->data, 0, compsz);
	}
	
	/* inject compressed files */
	comp_total = 0;
	DMA_FOR_EACH
	{
		unsigned char *dst;
		char *fn = dma->compname;
		unsigned int sz;
		fprintf(printer, "\r""injecting file %d/%d: ", PROGRESS_A_B);
		
		if (dma->deleted)
			continue;
		
		dst = rom->data + dma->Pstart;
		
		/* external cached file logic */
		if (cache)
		{
			/* skip entries that don't reference compressed files */
			if (!fn)
				continue;

			/* load file into rom at offset */
			dst = file_load_into(cache_codec, fn, &sz, dst);
		}
		/* otherwise, a simple memcpy */
		else
		{
			memcpy(dst, dma->compbuf, dma->compSz);
			sz = dma->compSz;
		}

		if (matching)
		{
			/* since matching rom padding is not zero but file padding is zero,
				fill file padding space with zeros                              */
			memset(dst + sz, 0, ALIGN16(sz) - sz);
		}
	}
	fprintf(printer, "\r""injecting file %d/%d: ", dma_num, dma_num);
	fprintf(printer, "success!\n");
	
	fprintf(
		printer
		, "compression ratio: %.02f%%\n"
		, (total_compressed / total_decompressed) * 100.0f
	);
	
	/* now free compressed file names */
	DMA_FOR_EACH
	{
		if (dma->compname)
			free(dma->compname);
	}
	
	/* remove unused cache files */
	if (list)
	{
		for (item = list->item; item - list->item < list->num; ++item)
		{
			/* udata hasn't been marked, so file is unused */
			if (item->name && !item->udata)
			{
				if (remove(item->name))
					die("failed to remove '%s/%s/%s'"
						, cache, codec, item->name
					);
			}
		}
	}
	
	/* update rom size for when rom_save() is used */
	rom->data_sz = compsz;
	
	/* cleanup */
	DMA_FOR_EACH
	{
		/* zero starts/ends of deleted files */
		if (!matching && dma->deleted)
		{
			dma->start = 0;
			dma->end = 0;
			dma->Pstart = 0;
			dma->Pend = 0;
		}
		
		/* free any compbufs */
		if (dma->compbuf)
			free(dma->compbuf);
		dma->compSz = 0;
		dma->compbuf = 0;
	}
	if (list)
		folder_free(list);
	if (dot_codec)
		free(dot_codec);
	for (i = 0; i < numThreads; ++i)
	{
		free(compThread[i].data);
	
		/* free compression contexts (if applicable) */
		if (enc->ctx_free)
		{
			assert(compThread[i].ctx);
			enc->ctx_free(compThread[i].ctx);
		}
	}
	free(compThread);
	
	/* return to prior working directory */
	if (*cwd)
		wow_chdir(cwd);
}


/* specify start of dmadata and number of entries */
void rom_dma(struct rom *rom, unsigned int offset, int num_entries, bool matching)
{
	struct dma *dma;
	unsigned char *raw;
	
	assert(rom);
	assert(rom->data);
	assert(rom->dma == 0 && "called rom_dma() more than once");
	
	if (num_entries <= 0)
		die("invalid number of dma entries %d", num_entries);
	
	dma = calloc_safe(num_entries, sizeof(*dma));
	rom->dma = dma;
	rom->dma_num = num_entries;
	
	raw = rom->data + offset;
	rom->dma_raw = raw;
	
	/* initialize every entry */
	while (dma - rom->dma < num_entries)
	{
		/* propagate defaults */
		dma->index  = dma - rom->dma;
		dma->start  = get32(raw);
		dma->end    = get32(raw + 4);
		dma->Pstart = get32(raw + 8);
		dma->Pend   = get32(raw + 12);
		dma->Ostart = dma->start;
		dma->Oend   = dma->end;
		dma->compress = 0; /* compression off by default */
		
		/* nonexistent file */
		if (dma->Pstart == DMA_DELETED && dma->Pend == DMA_DELETED)
		{
			dma->deleted = 1;

			if (!matching)
			{
				dma->start = 0;
				dma->end = 0;
				dma->Ostart = 0;
				dma->Oend = 0;
				dma->Pstart = 0;
				dma->Pend = 0;
			}
		}
		
		/* invalid dma conditions */
		else if (
			(dma->Pend & 3) /* not 4-byte aligned */
			|| (dma->Pstart & 3)
			|| (dma->start  & 3)
			|| (dma->end & 3)
			|| dma->start > dma->end
			|| (dma->Pstart > dma->Pend && dma->Pend)
			|| dma->Pend > rom->data_sz
		)
		{
			die(
				"invalid dma entry encountered: %08X %08X %08X %08X"
				, dma->start, dma->end, dma->Pstart, dma->Pend
			);
		}
		
		/* rom is compressed */
		if (dma->Pend && dma->Pend != DMA_DELETED)
		{
			die(
				"encountered dma entry %08X %08X %08X %08X"
				", which suggests the rom is already compressed...\n"
				"now exiting..."
				, dma->start, dma->end, dma->Pstart, dma->Pend
			);
		}
		
		/* advance to next entry */
		raw += 16;
		dma += 1;
	}
}

/* call this once dma settings are finalized */
void rom_dma_ready(struct rom *rom, bool matching)
{
	struct dma *dma;
	int num;
	unsigned int lowest = 0;
	unsigned int highest_end = 0; /* highest end dma offset */
	
	assert(rom);
	assert(rom->data);
	assert(rom->dma);
	assert(rom->dma_ready == 0 && "dma_ready called more than once");
	
	dma = rom->dma;
	num = rom->dma_num;
	
	/* sort by start offset, ascending */
	DMASORT(rom, sortfunc_dma_start_ascend);
	
	/* confirm no entries overlap */
	for (dma = rom->dma ; dma - rom->dma < num; ++dma)
	{
		/* skip blank entries */
		if (!dma->start && !dma->end)
			continue;
		
		/* warn on empty files */
		if (dma->end == dma->start)
		{
			fprintf(
				printer
				, "warning: dma entry %d is empty file (%08X == %08X)\n"
				, dma->index, dma->start, dma->end
			);
			dma->Pstart = dma->Pend = DMA_DELETED;
		}
		
		/* nonexistent file */
		if (dma->Pstart == DMA_DELETED && dma->Pend == DMA_DELETED)
		{
			dma->deleted = 1;

			if (!matching)
			{
				dma->Ostart = 0;
				dma->Oend = 0;
				dma->start = 0;
				dma->end = 0;
				dma->compress = 0;
			}
			continue;
		}
		
		/* fatal error on entries where end < start */
		if (dma->end < dma->start)
			die(
				"dma invalid entry %d (%08X < %08X)"
				, dma->index, dma->end, dma->start
			);
		
		/* fatal error on unaligned entries */
		if ((dma->start & 3) || (dma->end & 3))
			die(
				"dma unaligned pointer (%08X %08X)"
				, dma->start
				, dma->end
			);
		
		/* fatal error on entries exceeding rom size */
		if (dma->end > rom->data_sz)
			die(
				"dma entry %d (%08X - %08X) exceeds rom size (%08X)"
				, dma->index, dma->start, dma->end, rom->data_sz
			);
		
		/* if at least one entry has been processed, and its
		 * start is lower than any of the previous ends
		 */
		if (dma > rom->dma && dma->start < lowest)
			die(
				"dma table entry %d (%08X - %08X) "
				"overlaps entry %d (%08X - %08X)"
				, dma->index, dma->start, dma->end
				, (dma-1)->index, (dma-1)->start, (dma-1)->end
			);
		
		/* store highest dma end offset */
		if (dma->end > highest_end)
			highest_end = dma->end;
		
		/* lowest acceptable start for next entry is end of current */
		lowest = dma->end;
	}
	
	/* note dma_ready() has been called */
	rom->dma_ready = 1;
}

/* reencode existing archives within rom
 * NOTE: must be used before dma_ready()
 */
/* TODO optimization opportunities: threading, caching */
void rom_dma_repack(
	struct rom *rom
	, unsigned start
	, unsigned end
	, const char *from /* old codec */
	, const char *to /* new codec */
)
{
	const struct encoder *enc = 0;
	int (*decfunc)(
		void *src, void *dst, unsigned dstSz, unsigned *srcSz
	) = 0;
	void *ctx = 0;
	
	assert(rom);
	assert(rom->data);
	assert(rom->dma);
	assert(rom->dma_ready == 0 && "dma_repack must precede dma_ready");
	
	/* default codec = yaz */
	if (!from)
		from = "yaz";
	if (!(to = rom->codec))
		to = "yaz";
	
	/* swap start and end if they are not in ascending order */
	if (end < start)
	{
		int t = end;
		end = start;
		start = t;
	}
	
	/* allocate compression buffers, 16 mb */
	if (!rom->mem.mb16)
		rom->mem.mb16 = malloc_safe(SIZE_16MB);
	if (!rom->mem.mb4)
		rom->mem.mb4 = malloc_safe(SIZE_4MB);
	
	/* no need to reencode when the codec is the same */
	if (!strcmp(from, to))
		return;
	
	/* get decoding function */
	if (!strcmp(from, "yaz"))
	{
		from = "Yaz0";
		decfunc = yazdec;
	}
	else if (!strcmp(from, "raw"))
	{
		from = "raw0";
	}
	else
		die("dma_repack from='%s' unsupported", from);
	
	/* get encoding function */
	enc = encoder(to);
	
	/* allocate compression context (if applicable) */
	if (enc->ctx_new)
	{
		ctx = enc->ctx_new();
		if (!ctx)
			die("memory error");
	}
	
	/* start <= idx <= end */
	while (start <= end && start < rom->dma_num)
	{
		struct dma *dma = dma_get_idx(rom, start);
		
		unsigned char *dst = rom->data + dma->start;
		const char *errstr;
		unsigned int Osz = dma->end - dma->start;
		unsigned int Nsz;
		char name[32];
		
		dma->compress = 0;
		
		sprintf(name, "%08X", dma->start);
		
		errstr =
		yar_reencode(
			dst
			, Osz
			, rom->mem.mb16
			, &Nsz
			, 4
			
			, name
			, from
			, rom->mem.mb4
			, ctx
			
			, decfunc
			, enc->encfunc
			, 0
		);
		
		/* fatal error */
		if (errstr)
			die("%s", errstr);
		
		/* repacked archive won't fit in place of original archive */
		if (Nsz > Osz)
			die("repacking failed, new archive 0x%X bytes too big"
				, Nsz - Osz
			);
		
		/* copy encoded file into rom */
		memcpy(dst, rom->mem.mb16, Nsz);
		
		/* file sizes changed */
		fprintf(printer, "%.2f kb saved!\n", ((float)(Osz-Nsz))/1000.0f);
		
		dma->end = dma->start + Nsz;
		
		start += 1;
	}
	
	/* free compression context (if applicable) */
	if (enc->ctx_free)
	{
		assert(ctx);
		enc->ctx_free(ctx);
	}
}


/* set compression flag on indices start <= idx <= end */
void rom_dma_compress(
	struct rom *rom
	, unsigned start
	, unsigned end
	, int comp
)
{
	assert(rom);
	assert(rom->data);
	assert(rom->dma);
	assert(rom->dma_ready == 0 && "dma_compress must precede dma_ready");
	
	/* swap start and end if they are not in ascending order */
	if (end < start)
	{
		int t = end;
		end = start;
		start = t;
	}
	
	/* start <= idx <= end */
	while (start <= end && start < rom->dma_num)
	{
		struct dma *dma = rom->dma + start;
		
		dma->compress = comp;
		start += 1;
	}
}


/* set rom compressed file cache directory */
void rom_set_cache(struct rom *rom, const char *cache)
{
	assert(rom);
	assert(cache);
	
	if (rom->cache)
		free(rom->cache);
	
	rom->cache = strdup_safe(cache);
}

/* get number of dma entries */
int rom_dma_num(struct rom *rom)
{
	assert(rom);
	
	return rom->dma_num;
}

/* set rom compression codec
 * valid options: "yaz", "lzo", "ucl", "aplib"
 * NOTE: to use codecs besides yaz, get patches from the z64enc repo
 */
void rom_set_codec(struct rom *rom, const char *codec)
{
	assert(rom);
	assert(codec);
	
	if (rom->codec)
		free(rom->codec);
	
	rom->codec = strdup_safe(codec);
}

/* save rom to disk using specified filename */
void rom_save(struct rom *rom, const char *fn)
{
	assert(rom);
	assert(rom->data);
	
	/* updates dmadata */
	rom_write_dmadata(rom);
	
	/* recalculate crc */
	n64crc(rom->data);
	
	if (file_write(fn, rom->data, rom->data_sz) != rom->data_sz)
		die("failed to write file '%s'", fn);
}

/* allocate a rom structure */
struct rom *rom_new(const char *fn)
{
	struct rom *dst;
	
	assert(fn);
	
	/* allocate destination rom structure */
	dst = calloc_safe(1, sizeof(*dst));
	
	/* propagate rom file */
	dst->data = file_load(fn, &dst->data_sz);
	
	/* back up load file name */
	dst->fn = strdup_safe(fn);
	
	return dst;
}

/* free a rom structure */
void rom_free(struct rom *rom)
{
	if (!rom)
		return;
	
	if (rom->codec)
		free(rom->codec);
	
	if (rom->data)
		free(rom->data);
	
	if (rom->dma)
		free(rom->dma);
	
	if (rom->cache)
		free(rom->cache);
	
	if (rom->fn)
		free(rom->fn);
	
	/* free any memory pools that were allocated */
	if (rom->mem.mb16)
		free(rom->mem.mb16);
	if (rom->mem.mb4)
		free(rom->mem.mb4);
	
	free(rom);
}

