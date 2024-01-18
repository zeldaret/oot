/* ucl_conf.h -- main internal configuration file for the the UCL library

   This file is part of the UCL data compression library.

   Copyright (C) 1996-2004 Markus Franz Xaver Johannes Oberhumer
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


/* WARNING: this file should *not* be used by applications. It is
   part of the implementation of the library and is subject
   to change.
 */


#ifndef __UCL_CONF_H
#define __UCL_CONF_H


/***********************************************************************
//
************************************************************************/

#if defined(__UCLCONF_H_INCLUDED)
#  error "include this file first"
#endif
#include "uclconf.h"

#if !defined(__UCL_MMODEL_HUGE) && defined(HAVE_MEMCMP)
#  define ucl_memcmp(a,b,c)     memcmp(a,b,c)
#endif
#if !defined(__UCL_MMODEL_HUGE) && defined(HAVE_MEMCPY)
#  define ucl_memcpy(a,b,c)     memcpy(a,b,c)
#endif
#if !defined(__UCL_MMODEL_HUGE) && defined(HAVE_MEMMOVE)
#  define ucl_memmove(a,b,c)    memmove(a,b,c)
#endif
#if !defined(__UCL_MMODEL_HUGE) && defined(HAVE_MEMSET)
#  define ucl_memset(a,b,c)     memset(a,b,c)
#endif
#if 0 /* WANT_ACC */
#if defined(UCL_HAVE_CONFIG_H)
#  define ACC_CONFIG_NO_HEADER 1
#endif
#define __ACCLIB_FUNCNAME(f)        error_do_not_use_acclib
#include "acc/acc.h"

#if (ACC_CC_MSC && (_MSC_VER >= 1300))
   /* avoid `-Wall' warnings in system header files */
#  pragma warning(disable: 4820)
   /* avoid warnings about inlining */
#  pragma warning(disable: 4710 4711)
#endif

#if defined(__UCL_MMODEL_HUGE) && (!ACC_HAVE_MM_HUGE_PTR)
#  error "this should not happen - check defines for __huge"
#endif

#if (ACC_OS_DOS16 + 0 != UCL_OS_DOS16 + 0)
#  error "DOS16"
#endif
#if (ACC_OS_OS216 + 0 != UCL_OS_OS216 + 0)
#  error "OS216"
#endif
#if (ACC_OS_WIN16 + 0 != UCL_OS_WIN16 + 0)
#  error "WIN16"
#endif
#if (ACC_OS_DOS32 + 0 != UCL_OS_DOS32 + 0)
#  error "DOS32"
#endif
#if (ACC_OS_OS2 + 0 != UCL_OS_OS2 + 0)
#  error "DOS32"
#endif
#if (ACC_OS_WIN32 + 0 != UCL_OS_WIN32 + 0)
#  error "WIN32"
#endif
#if (ACC_OS_WIN64 + 0 != UCL_OS_WIN64 + 0)
#  error "WIN64"
#endif


#include "acc/acc_incd.h"
#if (ACC_OS_DOS16 || ACC_OS_OS216 || ACC_OS_WIN16)
#  include "acc/acc_ince.h"
#  include "acc/acc_inci.h"
#endif

#undef NDEBUG
#if !defined(UCL_DEBUG)
#  define NDEBUG 1
#endif
#include <assert.h>


#if (ACC_OS_DOS16 || ACC_OS_OS216 || ACC_OS_WIN16) && (ACC_CC_BORLANDC)
#  if (__BORLANDC__ >= 0x0450)  /* v4.00 */
#    pragma option -h           /* enable fast huge pointers */
#  else
#    pragma option -h-          /* disable fast huge pointers - compiler bug */
#  endif
#endif
#endif /* WANT_ACC */


/***********************************************************************
//
************************************************************************/

#if 1
#  define UCL_BYTE(x)       ((unsigned char) (x))
#else
#  define UCL_BYTE(x)       ((unsigned char) ((x) & 0xff))
#endif
#if 0
#  define UCL_USHORT(x)     ((unsigned short) (x))
#else
#  define UCL_USHORT(x)     ((unsigned short) ((x) & 0xffff))
#endif

#define UCL_MAX(a,b)        ((a) >= (b) ? (a) : (b))
#define UCL_MIN(a,b)        ((a) <= (b) ? (a) : (b))
#define UCL_MAX3(a,b,c)     ((a) >= (b) ? UCL_MAX(a,c) : UCL_MAX(b,c))
#define UCL_MIN3(a,b,c)     ((a) <= (b) ? UCL_MIN(a,c) : UCL_MIN(b,c))

#define ucl_sizeof(type)    ((ucl_uint) (sizeof(type)))

#define UCL_HIGH(array)     ((ucl_uint) (sizeof(array)/sizeof(*(array))))

/* this always fits into 16 bits */
#define UCL_SIZE(bits)      (1u << (bits))
#define UCL_MASK(bits)      (UCL_SIZE(bits) - 1)

#define UCL_LSIZE(bits)     (1ul << (bits))
#define UCL_LMASK(bits)     (UCL_LSIZE(bits) - 1)

#define UCL_USIZE(bits)     ((ucl_uint) 1 << (bits))
#define UCL_UMASK(bits)     (UCL_USIZE(bits) - 1)

/* Maximum value of a signed/unsigned type.
   Do not use casts, avoid overflows ! */
#define UCL_STYPE_MAX(b)    (((1l  << (8*(b)-2)) - 1l)  + (1l  << (8*(b)-2)))
#define UCL_UTYPE_MAX(b)    (((1ul << (8*(b)-1)) - 1ul) + (1ul << (8*(b)-1)))


/***********************************************************************
// compiler and architecture specific stuff
************************************************************************/

/* Some defines that indicate if memory can be accessed at unaligned
 * memory addresses. You should also test that this is actually faster
 * even if it is allowed by your system.
 */

#undef UA_GET2
#undef UA_SET2
#undef UA_GET4
#undef UA_SET4
#if 1 && (ACC_ARCH_AMD64 || ACC_ARCH_IA32)
#  define UA_GET2(p)    (* (const ucl_ushortp) (p))
#  define UA_SET2(p)    (* (ucl_ushortp) (p))
#  define UA_GET4(p)    (* (const acc_uint32e_t *) (p))
#  define UA_SET4(p)    (* (acc_uint32e_t *) (p))
#elif 0 && (ACC_ARCH_M68K) && (ACC_CC_GNUC >= 0x020900ul)
   typedef struct { unsigned short v; } __ucl_ua2_t __attribute__((__aligned__(1)));
   typedef struct { unsigned long v; }  __ucl_ua4_t __attribute__((__aligned__(1)));
#  define UA_GET2(p)    (((const __ucl_ua2_t *)(p))->v)
#  define UA_SET2(p)    (((__ucl_ua2_t *)(p))->v)
#  define UA_GET4(p)    (((const __ucl_ua4_t *)(p))->v)
#  define UA_SET4(p)    (((__ucl_ua4_t *)(p))->v)
#endif


/***********************************************************************
// some globals
************************************************************************/

__UCL_EXTERN_C int __ucl_init_done;
UCL_EXTERN(const ucl_bytep) ucl_copyright(void);


/***********************************************************************
// ANSI C preprocessor macros
************************************************************************/

#define _UCL_STRINGIZE(x)           #x
#define _UCL_MEXPAND(x)             _UCL_STRINGIZE(x)


/***********************************************************************
//
************************************************************************/

//#include "ucl_ptr.h"


#endif /* already included */

/*
vi:ts=4:et
*/

