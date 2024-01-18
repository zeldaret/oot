/* getbit.h -- bit-buffer access

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


/***********************************************************************
//
************************************************************************/

#if 1
#define getbit_8(bb, src, ilen) \
    (((bb = bb & 0x7f ? bb*2 : ((unsigned)src[ilen++]*2+1)) >> 8) & 1)
#elif 1
#define getbit_8(bb, src, ilen) \
    (bb*=2,bb&0xff ? (bb>>8)&1 : ((bb=src[ilen++]*2+1)>>8)&1)
#else
#define getbit_8(bb, src, ilen) \
    (((bb*=2, (bb&0xff ? bb : (bb=src[ilen++]*2+1,bb))) >> 8) & 1)
#endif


#define getbit_le16(bb, src, ilen) \
    (bb*=2,bb&0xffff ? (bb>>16)&1 : (ilen+=2,((bb=(src[ilen-2]+src[ilen-1]*256u)*2+1)>>16)&1))


#if 1 && (ACC_ENDIAN_LITTLE_ENDIAN) && defined(UA_GET4)
#define getbit_le32(bb, bc, src, ilen) \
    (bc > 0 ? ((bb>>--bc)&1) : (bc=31,\
    bb=UA_GET4((src)+ilen),ilen+=4,(bb>>31)&1))
#else
#define getbit_le32(bb, bc, src, ilen) \
    (bc > 0 ? ((bb>>--bc)&1) : (bc=31,\
    bb=src[ilen]+src[ilen+1]*0x100+src[ilen+2]*UCL_UINT32_C(0x10000)+src[ilen+3]*UCL_UINT32_C(0x1000000),\
    ilen+=4,(bb>>31)&1))
#endif


/*
vi:ts=4:et
*/

