/* n2_99.ch -- implementation of the NRV2[BDE]-99 compression algorithms

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



#define HAVE_MEMCMP 1
#define HAVE_MEMCPY 1
#define HAVE_MEMMOVE 1
#define HAVE_MEMSET 1


#include "../ucl_conf.h"
#include "../ucl.h"

#include <stdlib.h>
#include <string.h>
#include <stddef.h>
#include <assert.h>


/***********************************************************************
//
************************************************************************/

#define SWD_USE_MALLOC 1
#if (ACC_OS_DOS16)
#define SWD_HMASK       (s->hmask)
#define HEAD2_VAR
#define IF_HEAD2(s)     if (s->use_head2)
#else
#define SWD_HMASK       (UCL_UINT32_C(65535))
#define IF_HEAD2(s)
#endif
#define SWD_N           (8*1024*1024ul) /* max. size of ring buffer */
#define SWD_F           2048            /* upper limit for match length */
#define SWD_THRESHOLD   1               /* lower limit for match length */

#if defined(NRV2B)
#  define UCL_COMPRESS_T                ucl_nrv2b_t
#  define ucl_swd_t                     ucl_nrv2b_swd_t
#  define ucl_nrv_99_compress           ucl_nrv2b_99_compress
#  define M2_MAX_OFFSET                 0xd00
#elif defined(NRV2D)
#  define UCL_COMPRESS_T                ucl_nrv2d_t
#  define ucl_swd_t                     ucl_nrv2d_swd_t
#  define ucl_nrv_99_compress           ucl_nrv2d_99_compress
#  define M2_MAX_OFFSET                 0x500
#elif defined(NRV2E)
#  define UCL_COMPRESS_T                ucl_nrv2e_t
#  define ucl_swd_t                     ucl_nrv2e_swd_t
#  define ucl_nrv_99_compress           ucl_nrv2e_99_compress
#  define M2_MAX_OFFSET                 0x500
#else
#  error
#endif
#define ucl_swd_p       ucl_swd_t * __UCL_MMODEL

#include "ucl_mchw.ch"


/***********************************************************************
// start-step-stop prefix coding
************************************************************************/

static void code_prefix_ss11(UCL_COMPRESS_T *c, ucl_uint32 i)
{
    if (i >= 2)
    {
        ucl_uint32 t = 4;
        i += 2;
        do {
            t <<= 1;
        } while (i >= t);
        t >>= 1;
        do {
            t >>= 1;
            bbPutBit(c, (i & t) ? 1 : 0);
            bbPutBit(c, 0);
        } while (t > 2);
    }
    bbPutBit(c, (unsigned)i & 1);
    bbPutBit(c, 1);
}


#if defined(NRV2D) || defined(NRV2E)
static void code_prefix_ss12(UCL_COMPRESS_T *c, ucl_uint32 i)
{
    if (i >= 2)
    {
        ucl_uint32 t = 2;
        do {
            i -= t;
            t <<= 2;
        } while (i >= t);
        do {
            t >>= 1;
            bbPutBit(c, (i & t) ? 1 : 0);
            bbPutBit(c, 0);
            t >>= 1;
            bbPutBit(c, (i & t) ? 1 : 0);
        } while (t > 2);
    }
    bbPutBit(c, (unsigned)i & 1);
    bbPutBit(c, 1);
}
#endif


static void
code_match(UCL_COMPRESS_T *c, ucl_uint m_len, const ucl_uint m_off)
{
    unsigned m_low = 0;

    while (m_len > c->conf.max_match)
    {
        code_match(c, c->conf.max_match - 3, m_off);
        m_len -= c->conf.max_match - 3;
    }

    c->match_bytes += m_len;
    if (m_len > c->result[3])
        c->result[3] = m_len;
    if (m_off > c->result[1])
        c->result[1] = m_off;

    bbPutBit(c, 0);

#if defined(NRV2B)
    if (m_off == c->last_m_off)
    {
        bbPutBit(c, 0);
        bbPutBit(c, 1);
    }
    else
    {
        code_prefix_ss11(c, 1 + ((m_off - 1) >> 8));
        bbPutByte(c, (unsigned)m_off - 1);
    }
    m_len = m_len - 1 - (m_off > M2_MAX_OFFSET);
    if (m_len >= 4)
    {
        bbPutBit(c,0);
        bbPutBit(c,0);
        code_prefix_ss11(c, m_len - 4);
    }
    else
    {
        bbPutBit(c, m_len > 1);
        bbPutBit(c, (unsigned)m_len & 1);
    }
#elif defined(NRV2D)
    m_len = m_len - 1 - (m_off > M2_MAX_OFFSET);
    assert(m_len > 0);
    m_low = (m_len >= 4) ? 0u : (unsigned) m_len;
    if (m_off == c->last_m_off)
    {
        bbPutBit(c, 0);
        bbPutBit(c, 1);
        bbPutBit(c, m_low > 1);
        bbPutBit(c, m_low & 1);
    }
    else
    {
        code_prefix_ss12(c, 1 + ((m_off - 1) >> 7));
        bbPutByte(c, ((((unsigned)m_off - 1) & 0x7f) << 1) | ((m_low > 1) ? 0 : 1));
        bbPutBit(c, m_low & 1);
    }
    if (m_len >= 4)
        code_prefix_ss11(c, m_len - 4);
#elif defined(NRV2E)
    m_len = m_len - 1 - (m_off > M2_MAX_OFFSET);
    assert(m_len > 0);
    m_low = (m_len <= 2);
    if (m_off == c->last_m_off)
    {
        bbPutBit(c, 0);
        bbPutBit(c, 1);
        bbPutBit(c, m_low);
    }
    else
    {
        code_prefix_ss12(c, 1 + ((m_off - 1) >> 7));
        bbPutByte(c, ((((unsigned)m_off - 1) & 0x7f) << 1) | (m_low ^ 1));
    }
    if (m_low)
        bbPutBit(c, (unsigned)m_len - 1);
    else if (m_len <= 4)
    {
        bbPutBit(c, 1);
        bbPutBit(c, (unsigned)m_len - 3);
    }
    else
    {
        bbPutBit(c, 0);
        code_prefix_ss11(c, m_len - 5);
    }
#else
#  error
#endif

    c->last_m_off = m_off;
    (void)m_low;
}


static void
code_run(UCL_COMPRESS_T *c, const ucl_bytep ii, ucl_uint lit)
{
    if (lit == 0)
        return;
    c->lit_bytes += lit;
    if (lit > c->result[5])
        c->result[5] = lit;
    do {
        bbPutBit(c, 1);
        bbPutByte(c, *ii++);
    } while (--lit > 0);
}


/***********************************************************************
//
************************************************************************/

static int
len_of_coded_match(UCL_COMPRESS_T *c, ucl_uint m_len, ucl_uint m_off)
{
    int b;
    if (m_len < 2 || (m_len == 2 && (m_off > M2_MAX_OFFSET))
        || m_off > c->conf.max_offset)
        return -1;
    assert(m_off > 0);

    m_len = m_len - 2 - (m_off > M2_MAX_OFFSET);

    if (m_off == c->last_m_off)
        b = 1 + 2;
    else
    {
#if defined(NRV2B)
        b = 1 + 10;
        m_off = (m_off - 1) >> 8;
        while (m_off > 0)
        {
            b += 2;
            m_off >>= 1;
        }
#elif defined(NRV2D) || defined(NRV2E)
        b = 1 + 9;
        m_off = (m_off - 1) >> 7;
        while (m_off > 0)
        {
            b += 3;
            m_off >>= 2;
        }
#else
#  error
#endif
    }

#if defined(NRV2B) || defined(NRV2D)
    b += 2;
    if (m_len < 3)
        return b;
    m_len -= 3;
#elif defined(NRV2E)
    b += 2;
    if (m_len < 2)
        return b;
    if (m_len < 4)
        return b + 1;
    m_len -= 4;
#else
#  error
#endif
    do {
        b += 2;
        m_len >>= 1;
    } while (m_len > 0);

    return b;
}


/***********************************************************************
//
************************************************************************/

#if !defined(NDEBUG)
static
void assert_match( const ucl_swd_p swd, ucl_uint m_len, ucl_uint m_off )
{
    const UCL_COMPRESS_T *c = swd->c;
    ucl_uint d_off;

    assert(m_len >= 2);
    if (m_off <= (ucl_uint) (c->bp - c->in))
    {
        assert(c->bp - m_off + m_len < c->ip);
        assert(ucl_memcmp(c->bp, c->bp - m_off, m_len) == 0);
    }
    else
    {
        assert(swd->dict != NULL);
        d_off = m_off - (ucl_uint) (c->bp - c->in);
        assert(d_off <= swd->dict_len);
        if (m_len > d_off)
        {
            assert(ucl_memcmp(c->bp, swd->dict_end - d_off, d_off) == 0);
            assert(c->in + m_len - d_off < c->ip);
            assert(ucl_memcmp(c->bp + d_off, c->in, m_len - d_off) == 0);
        }
        else
        {
            assert(ucl_memcmp(c->bp, swd->dict_end - d_off, m_len) == 0);
        }
    }
}
#else
#  define assert_match(a,b,c)   ((void)0)
#endif


#if defined(SWD_BEST_OFF)

static void
better_match ( const ucl_swd_p swd, ucl_uint *m_len, ucl_uint *m_off )
{
}

#endif


/***********************************************************************
//
************************************************************************/

UCL_PUBLIC(int)
ucl_nrv_99_compress        ( const ucl_bytep in, ucl_uint in_len,
                                   ucl_bytep out, ucl_uintp out_len,
                                   ucl_progress_callback_p cb,
                                   int level,
                             const struct ucl_compress_config_p conf,
                                   ucl_uintp result)
{
    const ucl_bytep ii;
    ucl_uint lit;
    ucl_uint m_len, m_off;
    UCL_COMPRESS_T c_buffer;
    UCL_COMPRESS_T * const c = &c_buffer;
#undef s
#if defined(SWD_USE_MALLOC)
    ucl_swd_t the_swd = {0};
#   define s (&the_swd)
#else
//    static ucl_swd_p s = 0;
#endif
    ucl_uint result_buffer[16];
    int r;

    struct swd_config_t
    {
        unsigned try_lazy;
        ucl_uint good_length;
        ucl_uint max_lazy;
        ucl_uint nice_length;
        ucl_uint max_chain;
        ucl_uint32 flags;
        ucl_uint32 max_offset;
    };
    const struct swd_config_t *sc;
    static const struct swd_config_t swd_config[10] = {
#define F SWD_F
        /* faster compression */
        {   0,   0,   0,   8,    4,   0,  48*1024L },
        {   0,   0,   0,  16,    8,   0,  48*1024L },
        {   0,   0,   0,  32,   16,   0,  48*1024L },
        {   1,   4,   4,  16,   16,   0,  48*1024L },
        {   1,   8,  16,  32,   32,   0,  48*1024L },
        {   1,   8,  16, 128,  128,   0,  48*1024L },
        {   2,   8,  32, 128,  256,   0, 128*1024L },
        {   2,  32, 128,   F, 2048,   1, 128*1024L },
        {   2,  32, 128,   F, 2048,   1, 256*1024L },
        {   2,   F,   F,   F, 4096,   1, SWD_N }
        /* max. compression */
#undef F
    };

    if (level < 1 || level > 10)
        return UCL_E_INVALID_ARGUMENT;
    sc = &swd_config[level - 1];

    memset(c, 0, sizeof(*c));
    memset(&c->conf, 0xff, sizeof(c->conf));
    c->ip = c->in = in;
    c->in_end = in + in_len;
    c->out = out;
    if (cb && cb->callback)
        c->cb = cb;
    cb = NULL;
    c->result = result ? result : (ucl_uintp) result_buffer;
    result = NULL;
    ucl_memset(c->result, 0, 16*sizeof(*c->result));
    c->result[0] = c->result[2] = c->result[4] = UCL_UINT_MAX;
    if (conf)
        ucl_memcpy(&c->conf, conf, sizeof(c->conf));
    conf = NULL;
    r = bbConfig(c, 0, 8);
    if (r == 0)
        r = bbConfig(c, c->conf.bb_endian, c->conf.bb_size);
    if (r != 0)
        return UCL_E_INVALID_ARGUMENT;
    c->bb_op = out;

    ii = c->ip;             /* point to start of literal run */
    lit = 0;

#if !defined(s)
    if (!s)
        s = (ucl_swd_p) ucl_malloc(ucl_sizeof(*s));
    if (!s)
        return UCL_E_OUT_OF_MEMORY;
    memset(s, 0, ucl_sizeof(*s));
#endif
    s->f = UCL_MIN((ucl_uint)SWD_F, c->conf.max_match);
    s->n = UCL_MIN((ucl_uint)SWD_N, sc->max_offset);
    s->hmask = UCL_UINT32_C(65535);
#ifdef HEAD2_VAR
    s->use_head2 = 1;
#if defined(ACC_MM_AHSHIFT)
    if (ACC_MM_AHSHIFT != 3) {
        s->hmask = 16 * 1024 - 1;
        s->use_head2 = 0;
    }
#endif
#endif
    if (c->conf.max_offset != UCL_UINT_MAX)
        s->n = UCL_MIN(SWD_N, c->conf.max_offset);
    if (in_len < s->n)
        s->n = UCL_MAX(in_len, 256);
    if (s->f < 8 || s->n < 256)
        return UCL_E_INVALID_ARGUMENT;
    r = init_match(c,s,NULL,0,sc->flags);
    if (r == UCL_E_OK && (SWD_HSIZE - 1 != s->hmask))
        r = UCL_E_ERROR;
    if (r != UCL_E_OK)
    {
#if !defined(s)
        ucl_free(s);
#endif
        return r;
    }
    if (sc->max_chain > 0)
        s->max_chain = sc->max_chain;
    if (sc->nice_length > 0)
        s->nice_length = sc->nice_length;
    if (c->conf.max_match < s->nice_length)
        s->nice_length = c->conf.max_match;

    if (c->cb)
        (*c->cb->callback)(0,0,-1,c->cb->user);

    c->last_m_off = 1;
    r = find_match(c,s,0,0);
    if (r != UCL_E_OK)
        return r;
    while (c->look > 0)
    {
        ucl_uint ahead;
        ucl_uint max_ahead;
        int l1, l2;

        c->codesize = (ucl_uint) (c->bb_op - out);

        m_len = c->m_len;
        m_off = c->m_off;

        assert(c->bp == c->ip - c->look);
        assert(c->bp >= in);
        if (lit == 0)
            ii = c->bp;
        assert(ii + lit == c->bp);
        assert(s->b_char == *(c->bp));

        if (m_len < 2 || (m_len == 2 && (m_off > M2_MAX_OFFSET))
            || m_off > c->conf.max_offset)
        {
            /* a literal */
            lit++;
            s->max_chain = sc->max_chain;
            r = find_match(c,s,1,0);
            assert(r == 0);
            continue;
        }

    /* a match */
#if defined(SWD_BEST_OFF)
        if (s->use_best_off)
            better_match(s,&m_len,&m_off);
#endif
        assert_match(s,m_len,m_off);

        /* shall we try a lazy match ? */
        ahead = 0;
        if (sc->try_lazy <= 0 || m_len >= sc->max_lazy || m_off == c->last_m_off)
        {
            /* no */
            l1 = 0;
            max_ahead = 0;
        }
        else
        {
            /* yes, try a lazy match */
            l1 = len_of_coded_match(c,m_len,m_off);
            assert(l1 > 0);
            max_ahead = UCL_MIN((ucl_uint)sc->try_lazy, m_len - 1);
        }

        while (ahead < max_ahead && c->look > m_len)
        {
            if (m_len >= sc->good_length)
                s->max_chain = sc->max_chain >> 2;
            else
                s->max_chain = sc->max_chain;
            r = find_match(c,s,1,0);
            ahead++;

            assert(r == 0);
            assert(c->look > 0);
            assert(ii + lit + ahead == c->bp);

            if (c->m_len < 2)
                continue;
#if defined(SWD_BEST_OFF)
            if (s->use_best_off)
                better_match(s,&c->m_len,&c->m_off);
#endif
            l2 = len_of_coded_match(c,c->m_len,c->m_off);
            if (l2 < 0)
                continue;
#if 1
            if (l1 + (int)(ahead + c->m_len - m_len) * 5 > l2 + (int)(ahead) * 9)
#else
            if (l1 > l2)
#endif
            {
                c->lazy++;
                assert_match(s,c->m_len,c->m_off);

#if 0
                if (l3 > 0)
                {
                    /* code previous run */
                    code_run(c,ii,lit);
                    lit = 0;
                    /* code shortened match */
                    code_match(c,ahead,m_off);
                }
                else
#endif
                {
                    lit += ahead;
                    assert(ii + lit == c->bp);
                }
                goto lazy_match_done;
            }
        }

        assert(ii + lit + ahead == c->bp);

        /* 1 - code run */
        code_run(c,ii,lit);
        lit = 0;

        /* 2 - code match */
        code_match(c,m_len,m_off);
        s->max_chain = sc->max_chain;
        r = find_match(c,s,m_len,1+ahead);
        assert(r == 0);

lazy_match_done: ;
    }

    /* store final run */
    code_run(c,ii,lit);

    /* EOF */
    bbPutBit(c, 0);
#if defined(NRV2B)
    code_prefix_ss11(c, UCL_UINT32_C(0x1000000));
    bbPutByte(c, 0xff);
#elif defined(NRV2D) || defined(NRV2E)
    code_prefix_ss12(c, UCL_UINT32_C(0x1000000));
    bbPutByte(c, 0xff);
#else
#  error
#endif
    bbFlushBits(c, 0);

    assert(c->textsize == in_len);
    c->codesize = (ucl_uint) (c->bb_op - out);
    *out_len = (ucl_uint) (c->bb_op - out);
    if (c->cb)
        (*c->cb->callback)(c->textsize,c->codesize,4,c->cb->user);

#if 0
    printf("%7ld %7ld -> %7ld   %7ld %7ld   %ld  (max: %d %d %d)\n",
          (long) c->textsize, (long) in_len, (long) c->codesize,
           c->match_bytes, c->lit_bytes,  c->lazy,
           c->result[1], c->result[3], c->result[5]);
#endif
    assert(c->lit_bytes + c->match_bytes == in_len);

    swd_exit(s);
#if !defined(s)
    ucl_free(s);
#endif
    return UCL_E_OK;
#undef s
}


/*
vi:ts=4:et
*/

