/* n2b_d.c -- implementation of the NRV2B decompression algorithm

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
// actual implementation used by a recursive #include
************************************************************************/

#ifdef getbit

#ifdef SAFE
#define fail(x,r)   if (x) { *dst_len = olen; return r; }
#else
#define fail(x,r)
#endif

{
    ucl_uint32 bb = 0;
#ifdef TEST_OVERLAP
    ucl_uint ilen = src_off, olen = 0, last_m_off = 1;
#else
    ucl_uint ilen = 0, olen = 0, last_m_off = 1;
#endif
#ifdef SAFE
    const ucl_uint oend = *dst_len;
#endif
    //ACC_UNUSED(wrkmem);

#ifdef TEST_OVERLAP
    src_len += src_off;
    fail(oend >= src_len, UCL_E_OVERLAP_OVERRUN);
#endif

    for (;;)
    {
        ucl_uint m_off, m_len;

        while (getbit(bb))
        {
            fail(ilen >= src_len, UCL_E_INPUT_OVERRUN);
            fail(olen >= oend, UCL_E_OUTPUT_OVERRUN);
#ifdef TEST_OVERLAP
            fail(olen > ilen, UCL_E_OVERLAP_OVERRUN);
            olen++; ilen++;
#else
            dst[olen++] = src[ilen++];
#endif
        }
        m_off = 1;
        do {
            m_off = m_off*2 + getbit(bb);
            fail(ilen >= src_len, UCL_E_INPUT_OVERRUN);
            fail(m_off > UCL_UINT32_C(0xffffff) + 3, UCL_E_LOOKBEHIND_OVERRUN);
        } while (!getbit(bb));
        if (m_off == 2)
        {
            m_off = last_m_off;
        }
        else
        {
            fail(ilen >= src_len, UCL_E_INPUT_OVERRUN);
            m_off = (m_off-3)*256 + src[ilen++];
            if (m_off == UCL_UINT32_C(0xffffffff))
                break;
            last_m_off = ++m_off;
        }
        m_len = getbit(bb);
        m_len = m_len*2 + getbit(bb);
        if (m_len == 0)
        {
            m_len++;
            do {
                m_len = m_len*2 + getbit(bb);
                fail(ilen >= src_len, UCL_E_INPUT_OVERRUN);
                fail(m_len >= oend, UCL_E_OUTPUT_OVERRUN);
            } while (!getbit(bb));
            m_len += 2;
        }
        m_len += (m_off > 0xd00);
        fail(olen + m_len > oend, UCL_E_OUTPUT_OVERRUN);
        fail(m_off > olen, UCL_E_LOOKBEHIND_OVERRUN);
#ifdef TEST_OVERLAP
        olen += m_len + 1;
        fail(olen > ilen, UCL_E_OVERLAP_OVERRUN);
#else
        {
            const ucl_bytep m_pos;
            m_pos = dst + olen - m_off;
            dst[olen++] = *m_pos++;
            do dst[olen++] = *m_pos++; while (--m_len > 0);
        }
#endif
    }
    *dst_len = olen;
    return ilen == src_len ? UCL_E_OK : (ilen < src_len ? UCL_E_INPUT_NOT_CONSUMED : UCL_E_INPUT_OVERRUN);
}

#undef fail

#endif /* getbit */


/***********************************************************************
// decompressor entries for the different bit-buffer sizes
************************************************************************/

#ifndef getbit

#include "ucl_conf.h"
#include "ucl.h"
#include "getbit.h"


UCL_PUBLIC(int)
ucl_nrv2b_decompress_8          ( const ucl_bytep src, ucl_uint  src_len,
                                        ucl_bytep dst, ucl_uintp dst_len,
                                        ucl_voidp wrkmem )
{
#define getbit(bb)      getbit_8(bb,src,ilen)
#include "n2b_d.c"
#undef getbit
}

#if 0
UCL_PUBLIC(int)
ucl_nrv2b_decompress_le16       ( const ucl_bytep src, ucl_uint  src_len,
                                        ucl_bytep dst, ucl_uintp dst_len,
                                        ucl_voidp wrkmem )
{
#define getbit(bb)      getbit_le16(bb,src,ilen)
#include "n2b_d.c"
#undef getbit
}


UCL_PUBLIC(int)
ucl_nrv2b_decompress_le32       ( const ucl_bytep src, ucl_uint  src_len,
                                        ucl_bytep dst, ucl_uintp dst_len,
                                        ucl_voidp wrkmem )
{
    unsigned bc = 0;
#define getbit(bb)      getbit_le32(bb,bc,src,ilen)
#include "n2b_d.c"
#undef getbit
}
#endif /* 0 */


#endif /* !getbit */


/*
vi:ts=4:et
*/

