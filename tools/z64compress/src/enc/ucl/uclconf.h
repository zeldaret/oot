/* uclconf.h -- configuration for the UCL data compression library

   This file is part of the UCL data compression library.

   Copyright (C) 2004 Markus Franz Xaver Johannes Oberhumer
   Copyright (C) 2003 Markus Franz Xaver Johannes Oberhumer
   Copyright (C) 2002 Markus Franz Xaver Johannes Oberhumer
   Copyright (C) 2001 Markus Franz Xaver Johannes Oberhumer
   Copyright (C) 2000 Markus Franz Xaver Johannes Oberhumer
   Copyright (C) 1999 Markus Franz Xaver Johannes Oberhumer
   Copyright (C) 1998 Markus Franz Xaver Johannes Oberhumer
   Copyright (C) 1997 Markus Franz Xaver Johannes Oberhumer
   Copyright (C) 1996 Markus Franz Xaver Johannes Oberhumer
   All Rights Reserved.

   The UCL library is free software; you can redistribute it and/or
   modify it under the terms of the GNU General Public License as
   published by the Free Software Foundation; either version 2 of
   the License, or (at your option) any later version.

   The UCL library is distributed in the hope that it will be useful,
   but WITHOUT ANY WARRANTY; without even the implied warranty of
   MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
   GNU General Public License for more details.

   You should have received a copy of the GNU General Public License
   along with the UCL library; see the file COPYING.
   If not, write to the Free Software Foundation, Inc.,
   59 Temple Place - Suite 330, Boston, MA 02111-1307, USA.

   Markus F.X.J. Oberhumer
   <markus@oberhumer.com>
   http://www.oberhumer.com/opensource/ucl/
 */


#ifndef __UCLCONF_H_INCLUDED
#define __UCLCONF_H_INCLUDED

#define UCL_VERSION             0x010300L
#define UCL_VERSION_STRING      "1.03"
#define UCL_VERSION_DATE        "Jul 20 2004"

/* internal Autoconf configuration file - only used when building UCL */
#if defined(UCL_HAVE_CONFIG_H)
#  include <config.h>
#endif
#include <limits.h>

#ifdef __cplusplus
extern "C" {
#endif



/***********************************************************************
// UCL requires a conforming <limits.h>
************************************************************************/

#if !defined(CHAR_BIT) || (CHAR_BIT != 8)
#  error "invalid CHAR_BIT"
#endif
#if !defined(UCHAR_MAX) || !defined(UINT_MAX) || !defined(ULONG_MAX)
#  error "check your compiler installation"
#endif
#if (USHRT_MAX < 1) || (UINT_MAX < 1) || (ULONG_MAX < 1)
#  error "your limits.h macros are broken"
#endif

/* workaround a compiler bug under hpux 10.20 */
#define UCL_0xffffL             65535ul
#define UCL_0xffffffffL         4294967295ul

#if !defined(UCL_UINT32_C)
#  if (UINT_MAX < UCL_0xffffffffL)
#    define UCL_UINT32_C(c)     c ## UL
#  else
#    define UCL_UINT32_C(c)     ((c) + 0U)
#  endif
#endif


/***********************************************************************
// architecture defines
************************************************************************/

#if (defined(__CYGWIN__) || defined(__CYGWIN32__)) && defined(__GNUC__)
#  define UCL_OS_CYGWIN         1
#elif defined(__EMX__) && defined(__GNUC__)
#  define UCL_OS_EMX            1
#elif defined(__BORLANDC__) && defined(__DPMI32__) && (__BORLANDC__ >= 0x0460)
#  define UCL_OS_DOS32          1
#elif defined(__BORLANDC__) && defined(__DPMI16__)
#  define UCL_OS_DOS16          1
#elif defined(__ZTC__) && defined(DOS386)
#  define UCL_OS_DOS32          1
#elif defined(__OS2__) || defined(__OS2V2__)
#  if (UINT_MAX == UCL_0xffffL)
#    define UCL_OS_OS216        1
#  elif (UINT_MAX == UCL_0xffffffffL)
#    define UCL_OS_OS2          1
#  else
#    error "check your limits.h header"
#  endif
#elif defined(__WIN64__) || defined(_WIN64) || defined(WIN64)
#  define UCL_OS_WIN64          1
#elif defined(__WIN32__) || defined(_WIN32) || defined(WIN32) || defined(__WINDOWS_386__)
#  define UCL_OS_WIN32          1
#elif defined(__MWERKS__) && defined(__INTEL__)
#  define UCL_OS_WIN32          1
#elif defined(__WINDOWS__) || defined(_WINDOWS) || defined(_Windows)
#  if (UINT_MAX == UCL_0xffffL)
#    define UCL_OS_WIN16        1
#  elif (UINT_MAX == UCL_0xffffffffL)
#    define UCL_OS_WIN32        1
#  else
#    error "check your limits.h header"
#  endif
#elif defined(__DOS__) || defined(__MSDOS__) || defined(_MSDOS) || defined(MSDOS) || (defined(__PACIFIC__) && defined(DOS))
#  if (UINT_MAX == UCL_0xffffL)
#    define UCL_OS_DOS16        1
#  elif (UINT_MAX == UCL_0xffffffffL)
#    define UCL_OS_DOS32        1
#  else
#    error "check your limits.h header"
#  endif
#elif defined(__WATCOMC__)
#  if defined(__NT__) && (UINT_MAX == UCL_0xffffL)
     /* wcl: NT host defaults to DOS target */
#    define UCL_OS_DOS16        1
#  elif defined(__NT__) && (__WATCOMC__ < 1100)
     /* wcl386: Watcom C 11 defines _WIN32 */
#    define UCL_OS_WIN32        1
#  else
#    error "please specify a target using the -bt compiler option"
#  endif
#elif defined(__palmos__)
#  if (UINT_MAX == UCL_0xffffL)
#    define UCL_OS_PALMOS       1
#  else
#    error "check your limits.h header"
#  endif
#elif defined(__TOS__) || defined(__atarist__)
#  define UCL_OS_TOS            1
#elif defined(macintosh)
#  define UCL_OS_MACCLASSIC     1
#elif defined(__VMS)
#  define UCL_OS_VMS            1
#else
#  define UCL_OS_POSIX          1
#endif

/* memory checkers */
#if !defined(__UCL_CHECKER)
#  if defined(__BOUNDS_CHECKING_ON)
#    define __UCL_CHECKER       1
#  elif defined(__CHECKER__)
#    define __UCL_CHECKER       1
#  elif defined(__INSURE__)
#    define __UCL_CHECKER       1
#  elif defined(__PURIFY__)
#    define __UCL_CHECKER       1
#  endif
#endif

/* fix ancient compiler versions */
#if (UINT_MAX == UCL_0xffffL)
#if (defined(__MSDOS__) && defined(__TURBOC__) && (__TURBOC__ < 0x0410)) || (defined(MSDOS) && defined(_MSC_VER) && (_MSC_VER < 700))
#  if !defined(__cdecl)
#    define __cdecl cdecl
#  endif
#  if !defined(__far)
#    define __far far
#  endif
#  if !defined(__huge)
#    define __huge huge
#  endif
#  if !defined(__near)
#    define __near near
#  endif
#endif
#endif


/***********************************************************************
// integral and pointer types
************************************************************************/

/* Integral types with 32 bits or more */
#if !defined(UCL_UINT32_MAX)
#  if (UINT_MAX >= UCL_0xffffffffL)
     typedef unsigned int       ucl_uint32;
     typedef int                ucl_int32;
#    define UCL_UINT32_MAX      UINT_MAX
#    define UCL_INT32_MAX       INT_MAX
#    define UCL_INT32_MIN       INT_MIN
#  elif (ULONG_MAX >= UCL_0xffffffffL)
     typedef unsigned long      ucl_uint32;
     typedef long               ucl_int32;
#    define UCL_UINT32_MAX      ULONG_MAX
#    define UCL_INT32_MAX       LONG_MAX
#    define UCL_INT32_MIN       LONG_MIN
#  else
#    error "ucl_uint32"
#  endif
#endif

/* ucl_uint is used like size_t */
#if !defined(UCL_UINT_MAX)
#  if (UINT_MAX >= UCL_0xffffffffL)
     typedef unsigned int       ucl_uint;
     typedef int                ucl_int;
#    define UCL_UINT_MAX        UINT_MAX
#    define UCL_INT_MAX         INT_MAX
#    define UCL_INT_MIN         INT_MIN
#  elif (ULONG_MAX >= UCL_0xffffffffL)
     typedef unsigned long      ucl_uint;
     typedef long               ucl_int;
#    define UCL_UINT_MAX        ULONG_MAX
#    define UCL_INT_MAX         LONG_MAX
#    define UCL_INT_MIN         LONG_MIN
#  else
#    error "ucl_uint"
#  endif
#endif

/* Memory model that allows to access memory at offsets of ucl_uint. */
#if !defined(__UCL_MMODEL)
#  if (UCL_UINT_MAX <= UINT_MAX)
#    define __UCL_MMODEL
#  elif defined(UCL_OS_DOS16) || defined(UCL_OS_OS216) || defined(UCL_OS_WIN16)
#    define __UCL_MMODEL_HUGE   1
#    define __UCL_MMODEL        __huge
#    define ucl_uintptr_t       unsigned long
#  else
#    define __UCL_MMODEL
#  endif
#endif

/* no typedef here because of const-pointer issues */
#define ucl_bytep               unsigned char __UCL_MMODEL *
#define ucl_charp               char __UCL_MMODEL *
#define ucl_voidp               void __UCL_MMODEL *
#define ucl_shortp              short __UCL_MMODEL *
#define ucl_ushortp             unsigned short __UCL_MMODEL *
#define ucl_uint32p             ucl_uint32 __UCL_MMODEL *
#define ucl_int32p              ucl_int32 __UCL_MMODEL *
#define ucl_uintp               ucl_uint __UCL_MMODEL *
#define ucl_intp                ucl_int __UCL_MMODEL *
#define ucl_voidpp              ucl_voidp __UCL_MMODEL *
#define ucl_bytepp              ucl_bytep __UCL_MMODEL *
/* deprecated - use `ucl_bytep' instead of `ucl_byte *' */
#define ucl_byte                unsigned char __UCL_MMODEL

typedef int ucl_bool;


/***********************************************************************
// function types
************************************************************************/

/* name mangling */
#if !defined(__UCL_EXTERN_C)
#  ifdef __cplusplus
#    define __UCL_EXTERN_C      extern "C"
#  else
#    define __UCL_EXTERN_C      extern
#  endif
#endif

/* calling convention */
#if !defined(__UCL_CDECL)
#  if defined(__GNUC__) || defined(__HIGHC__) || defined(__NDPC__)
#    define __UCL_CDECL
#  elif defined(UCL_OS_DOS16) || defined(UCL_OS_OS216) || defined(UCL_OS_WIN16)
#    define __UCL_CDECL         __far __cdecl
#  elif defined(UCL_OS_DOS32) || defined(UCL_OS_OS2) || defined(UCL_OS_WIN32) || defined(UCL_OS_WIN64)
#    define __UCL_CDECL         __cdecl
#  else
#    define __UCL_CDECL
#  endif
#endif

/* DLL export information */
#if !defined(__UCL_EXPORT1)
#  define __UCL_EXPORT1
#endif
#if !defined(__UCL_EXPORT2)
#  define __UCL_EXPORT2
#endif

/* __cdecl calling convention for public C and assembly functions */
#if !defined(UCL_PUBLIC)
#  define UCL_PUBLIC(_rettype)  __UCL_EXPORT1 _rettype __UCL_EXPORT2 __UCL_CDECL
#endif
#if !defined(UCL_EXTERN)
#  define UCL_EXTERN(_rettype)  __UCL_EXTERN_C UCL_PUBLIC(_rettype)
#endif
#if !defined(UCL_PRIVATE)
#  define UCL_PRIVATE(_rettype) static _rettype __UCL_CDECL
#endif

/* C++ exception specification for extern "C" function types */
#if !defined(__cplusplus)
#  undef UCL_NOTHROW
#  define UCL_NOTHROW
#elif !defined(UCL_NOTHROW)
#  define UCL_NOTHROW
#endif

/* function types */
typedef int
(__UCL_CDECL *ucl_compress_t)   ( const ucl_bytep src, ucl_uint  src_len,
                                        ucl_bytep dst, ucl_uintp dst_len,
                                        ucl_voidp wrkmem );

typedef int
(__UCL_CDECL *ucl_decompress_t) ( const ucl_bytep src, ucl_uint  src_len,
                                        ucl_bytep dst, ucl_uintp dst_len,
                                        ucl_voidp wrkmem );

typedef int
(__UCL_CDECL *ucl_optimize_t)   (       ucl_bytep src, ucl_uint  src_len,
                                        ucl_bytep dst, ucl_uintp dst_len,
                                        ucl_voidp wrkmem );

typedef int
(__UCL_CDECL *ucl_compress_dict_t)(const ucl_bytep src, ucl_uint  src_len,
                                        ucl_bytep dst, ucl_uintp dst_len,
                                        ucl_voidp wrkmem,
                                  const ucl_bytep dict, ucl_uint dict_len );

typedef int
(__UCL_CDECL *ucl_decompress_dict_t)(const ucl_bytep src, ucl_uint  src_len,
                                        ucl_bytep dst, ucl_uintp dst_len,
                                        ucl_voidp wrkmem,
                                  const ucl_bytep dict, ucl_uint dict_len );

/* a progress indicator callback function */
typedef struct
{
    void (__UCL_CDECL *callback) (ucl_uint, ucl_uint, int, ucl_voidp);
    ucl_voidp user;
}
ucl_progress_callback_t;
#define ucl_progress_callback_p ucl_progress_callback_t __UCL_MMODEL *


/***********************************************************************
// error codes and prototypes
************************************************************************/

/* Error codes for the compression/decompression functions. Negative
 * values are errors, positive values will be used for special but
 * normal events.
 */
#define UCL_E_OK                    0
#define UCL_E_ERROR                 (-1)
#define UCL_E_INVALID_ARGUMENT      (-2)
#define UCL_E_OUT_OF_MEMORY         (-3)
/* compression errors */
#define UCL_E_NOT_COMPRESSIBLE      (-101)
/* decompression errors */
#define UCL_E_INPUT_OVERRUN         (-201)
#define UCL_E_OUTPUT_OVERRUN        (-202)
#define UCL_E_LOOKBEHIND_OVERRUN    (-203)
#define UCL_E_EOF_NOT_FOUND         (-204)
#define UCL_E_INPUT_NOT_CONSUMED    (-205)
#define UCL_E_OVERLAP_OVERRUN       (-206)


/* ucl_init() should be the first function you call.
 * Check the return code !
 *
 * ucl_init() is a macro to allow checking that the library and the
 * compiler's view of various types are consistent.
 */
#define ucl_init() __ucl_init2(UCL_VERSION,(int)sizeof(short),(int)sizeof(int),\
    (int)sizeof(long),(int)sizeof(ucl_uint32),(int)sizeof(ucl_uint),\
    (int)-1,(int)sizeof(char *),(int)sizeof(ucl_voidp),\
    (int)sizeof(ucl_compress_t))
UCL_EXTERN(int) __ucl_init2(ucl_uint32,int,int,int,int,int,int,int,int,int);

/* version functions (useful for shared libraries) */
UCL_EXTERN(ucl_uint32) ucl_version(void);
UCL_EXTERN(const char *) ucl_version_string(void);
UCL_EXTERN(const char *) ucl_version_date(void);
UCL_EXTERN(const ucl_charp) _ucl_version_string(void);
UCL_EXTERN(const ucl_charp) _ucl_version_date(void);

/* string functions */
UCL_EXTERN(int)
ucl_memcmp(const ucl_voidp _s1, const ucl_voidp _s2, ucl_uint _len);
UCL_EXTERN(ucl_voidp)
ucl_memcpy(ucl_voidp _dest, const ucl_voidp _src, ucl_uint _len);
UCL_EXTERN(ucl_voidp)
ucl_memmove(ucl_voidp _dest, const ucl_voidp _src, ucl_uint _len);
UCL_EXTERN(ucl_voidp)
ucl_memset(ucl_voidp _s, int _c, ucl_uint _len);

/* checksum functions */
UCL_EXTERN(ucl_uint32)
ucl_adler32(ucl_uint32 _adler, const ucl_bytep _buf, ucl_uint _len);
UCL_EXTERN(ucl_uint32)
ucl_crc32(ucl_uint32 _c, const ucl_bytep _buf, ucl_uint _len);
UCL_EXTERN(const ucl_uint32p)
ucl_get_crc32_table(void);

/* memory allocation hooks */
typedef ucl_voidp (__UCL_CDECL *ucl_malloc_hook_t) (ucl_uint);
typedef void (__UCL_CDECL *ucl_free_hook_t) (ucl_voidp);
UCL_EXTERN(void)
ucl_set_malloc_hooks(ucl_malloc_hook_t, ucl_free_hook_t);
UCL_EXTERN(void)
ucl_get_malloc_hooks(ucl_malloc_hook_t*, ucl_free_hook_t*);

#ifndef UCL_SAFE_ALLOC
#define UCL_SAFE_ALLOC 1
#include <stdio.h>
#include <stdlib.h>

/* safe calloc */
static
inline
void *
calloc_safe(size_t nmemb, size_t size)
{
	void *result;
	
	result = calloc(nmemb, size);
	
	if (!result)
	{
		fprintf(stderr, "[!] memory error\n");
		exit(EXIT_FAILURE);
	}
	
	return result;
}

/* safe malloc */
static
inline
void *
malloc_safe(size_t size)
{
	void *result;
	
	result = malloc(size);
	
	if (!result)
	{
		fprintf(stderr, "[!] memory error\n");
		exit(EXIT_FAILURE);
	}
	
	return result;
}
#endif /* UCL_SAFE_ALLOC */

/* memory allocation functions */
#if 0
UCL_EXTERN(ucl_voidp) ucl_malloc(ucl_uint);
UCL_EXTERN(ucl_voidp) ucl_alloc(ucl_uint, ucl_uint);
UCL_EXTERN(void) ucl_free(ucl_voidp);
#else
#  define ucl_malloc(a) (malloc_safe(a))
#  define ucl_alloc(a, b) (calloc_safe(a, b))
#  define ucl_free(a) (free(a))
#endif


/* misc. */
UCL_EXTERN(ucl_bool) ucl_assert(int _expr);
UCL_EXTERN(int) _ucl_config_check(void);
typedef union { ucl_bytep p; ucl_uint u; } __ucl_pu_u;
typedef union { ucl_bytep p; ucl_uint32 u32; } __ucl_pu32_u;

/* align a char pointer on a boundary that is a multiple of `size' */
UCL_EXTERN(unsigned) __ucl_align_gap(const ucl_voidp _ptr, ucl_uint _size);
#define UCL_PTR_ALIGN_UP(_ptr,_size) \
    ((_ptr) + (ucl_uint) __ucl_align_gap((const ucl_voidp)(_ptr),(ucl_uint)(_size)))


#ifdef __cplusplus
} /* extern "C" */
#endif

#endif /* already included */

