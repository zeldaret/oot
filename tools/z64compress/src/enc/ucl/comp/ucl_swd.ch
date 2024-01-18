/* ucl_swd.c -- sliding window dictionary

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


#if (UCL_UINT_MAX < UCL_0xffffffffL)
#  error "UCL_UINT_MAX"
#endif


/***********************************************************************
//
************************************************************************/

/* unsigned type for dictionary access - don't waste memory here */
#if (0UL + SWD_N + SWD_F + SWD_F < 0UL + USHRT_MAX)
   typedef unsigned short   swd_uint;
#  define SWD_UINT_MAX      USHRT_MAX
#else
   typedef ucl_uint         swd_uint;
#  define SWD_UINT_MAX      UCL_UINT_MAX
#endif
#define swd_uintp           swd_uint __UCL_MMODEL *
#define SWD_UINT(x)         ((swd_uint)(x))


#ifndef SWD_MAX_CHAIN
#  define SWD_MAX_CHAIN     2048
#endif
#define SWD_HSIZE           (SWD_HMASK + 1)

#if !defined(HEAD3)
#if 1
#  define HEAD3(b,p) \
    (((0x9f5f*(((((ucl_uint32)b[p]<<5)^b[p+1])<<5)^b[p+2]))>>5) & SWD_HMASK)
#else
#  define HEAD3(b,p) \
    (((0x9f5f*(((((ucl_uint32)b[p+2]<<5)^b[p+1])<<5)^b[p]))>>5) & SWD_HMASK)
#endif
#endif

#if !defined(HEAD2)
#if (SWD_THRESHOLD == 1)
#  if 1 && defined(UA_GET2)
#    define HEAD2(b,p)      UA_GET2(&(b[p]))
#  else
#    define HEAD2(b,p)      (b[p] ^ ((unsigned)b[p+1]<<8))
#  endif
#  define NIL2              SWD_UINT_MAX
#endif
#endif


#if defined(__UCL_CHECKER)
   /* malloc arrays of the exact size to detect any overrun */
#  ifndef SWD_USE_MALLOC
#    define SWD_USE_MALLOC
#  endif
#endif


typedef struct
{
/* public - "built-in" */
    ucl_uint n;
    ucl_uint f;
    ucl_uint threshold;
    ucl_uint hmask;

/* public - configuration */
    ucl_uint max_chain;
    ucl_uint nice_length;
    ucl_bool use_best_off;
    ucl_uint lazy_insert;

/* public - output */
    ucl_uint m_len;
    ucl_uint m_off;
    ucl_uint look;
    int b_char;
#if defined(SWD_BEST_OFF)
    ucl_uint best_off[ SWD_BEST_OFF ];
#endif

/* semi public */
    UCL_COMPRESS_T *c;
    ucl_uint m_pos;
#if defined(SWD_BEST_OFF)
    ucl_uint best_pos[ SWD_BEST_OFF ];
#endif

/* private */
    const ucl_bytep dict;
    const ucl_bytep dict_end;
    ucl_uint dict_len;

/* private */
    ucl_uint ip;                /* input pointer (lookahead) */
    ucl_uint bp;                /* buffer pointer */
    ucl_uint rp;                /* remove pointer */
    ucl_uint b_size;

    ucl_bytep b_wrap;

    ucl_uint node_count;
    ucl_uint first_rp;

#if defined(SWD_USE_MALLOC)
    ucl_bytep b;
    swd_uintp head3;
    swd_uintp succ3;
    swd_uintp best3;
    swd_uintp llen3;
#ifdef HEAD2
    swd_uintp head2;
#ifdef HEAD2_VAR
    int use_head2;
#endif
#endif
#else
    unsigned char b [ SWD_N + SWD_F + SWD_F ];
    swd_uint head3 [ SWD_HSIZE ];
    swd_uint succ3 [ SWD_N + SWD_F ];
    swd_uint best3 [ SWD_N + SWD_F ];
    swd_uint llen3 [ SWD_HSIZE ];
#ifdef HEAD2
    swd_uint head2 [ UCL_UINT32_C(65536) ];
#endif
#endif
}
ucl_swd_t;


/* Access macro for head3.
 * head3[key] may be uninitialized if the list is emtpy,
 * but then its value will never be used.
 */
#if defined(__UCL_CHECKER)
#  define s_get_head3(s,key) \
        ((s->llen3[key] == 0) ? SWD_UINT_MAX : s->head3[key])
#else
#  define s_get_head3(s,key)    s->head3[key]
#endif


/***********************************************************************
//
************************************************************************/

static
void swd_initdict(ucl_swd_t *s, const ucl_bytep dict, ucl_uint dict_len)
{
    s->dict = s->dict_end = NULL;
    s->dict_len = 0;

    if (!dict || dict_len <= 0)
        return;
    if (dict_len > s->n)
    {
        dict += dict_len - s->n;
        dict_len = s->n;
    }

    s->dict = dict;
    s->dict_len = dict_len;
    s->dict_end = dict + dict_len;
    ucl_memcpy(s->b,dict,dict_len);
    s->ip = dict_len;
}


static
void swd_insertdict(ucl_swd_t *s, ucl_uint node, ucl_uint len)
{
    ucl_uint key;

    s->node_count = s->n - len;
    s->first_rp = node;

    while (len-- > 0)
    {
        key = HEAD3(s->b,node);
        s->succ3[node] = s_get_head3(s,key);
        s->head3[key] = SWD_UINT(node);
        s->best3[node] = SWD_UINT(s->f + 1);
        s->llen3[key]++;
        assert(s->llen3[key] <= s->n);

#ifdef HEAD2
        IF_HEAD2(s) {
            key = HEAD2(s->b,node);
            s->head2[key] = SWD_UINT(node);
        }
#endif

        node++;
    }
}


/***********************************************************************
//
************************************************************************/

static
int swd_init(ucl_swd_t *s, const ucl_bytep dict, ucl_uint dict_len)
{
#if defined(SWD_USE_MALLOC)
    s->b = NULL;
    s->head3 = NULL;
    s->succ3 = NULL;
    s->best3 = NULL;
    s->llen3 = NULL;
#ifdef HEAD2
    s->head2 = NULL;
#endif
#endif

    if (s->n == 0)
        s->n = SWD_N;
    if (s->f == 0)
        s->f = SWD_F;
    s->threshold = SWD_THRESHOLD;
    if (s->n > SWD_N || s->f > SWD_F)
        return UCL_E_INVALID_ARGUMENT;

#if defined(SWD_USE_MALLOC)
    s->b = (ucl_bytep) ucl_alloc(1, s->n + s->f + s->f);
    s->head3 = (swd_uintp) ucl_alloc(SWD_HSIZE, sizeof(*s->head3));
    s->succ3 = (swd_uintp) ucl_alloc(s->n + s->f, sizeof(*s->succ3));
    s->best3 = (swd_uintp) ucl_alloc(s->n + s->f, sizeof(*s->best3));
    s->llen3 = (swd_uintp) ucl_alloc(SWD_HSIZE, sizeof(*s->llen3));
    if (!s->b || !s->head3  || !s->succ3 || !s->best3 || !s->llen3)
        return UCL_E_OUT_OF_MEMORY;
#ifdef HEAD2
    IF_HEAD2(s) {
        s->head2 = (swd_uintp) ucl_alloc(UCL_UINT32_C(65536), sizeof(*s->head2));
        if (!s->head2)
            return UCL_E_OUT_OF_MEMORY;
    }
#endif
#endif

    /* defaults */
    s->max_chain = SWD_MAX_CHAIN;
    s->nice_length = s->f;
    s->use_best_off = 0;
    s->lazy_insert = 0;

    s->b_size = s->n + s->f;
    if (s->b_size + s->f >= SWD_UINT_MAX)
        return UCL_E_ERROR;
    s->b_wrap = s->b + s->b_size;
    s->node_count = s->n;

    ucl_memset(s->llen3, 0, (ucl_uint)sizeof(s->llen3[0]) * SWD_HSIZE);
#ifdef HEAD2
    IF_HEAD2(s) {
#if 1
        ucl_memset(s->head2, 0xff, (ucl_uint)sizeof(s->head2[0]) * UCL_UINT32_C(65536));
        assert(s->head2[0] == NIL2);
#else
        ucl_uint32 i;
        for (i = 0; i < UCL_UINT32_C(65536); i++)
            s->head2[i] = NIL2;
#endif
    }
#endif

    s->ip = 0;
    swd_initdict(s,dict,dict_len);
    s->bp = s->ip;
    s->first_rp = s->ip;

    assert(s->ip + s->f <= s->b_size);
#if 1
    s->look = (ucl_uint) (s->c->in_end - s->c->ip);
    if (s->look > 0)
    {
        if (s->look > s->f)
            s->look = s->f;
        ucl_memcpy(&s->b[s->ip],s->c->ip,s->look);
        s->c->ip += s->look;
        s->ip += s->look;
    }
#else
    s->look = 0;
    while (s->look < s->f)
    {
        int c;
        if ((c = getbyte(*(s->c))) < 0)
            break;
        s->b[s->ip] = UCL_BYTE(c);
        s->ip++;
        s->look++;
    }
#endif
    if (s->ip == s->b_size)
        s->ip = 0;

    if (s->look >= 2 && s->dict_len > 0)
        swd_insertdict(s,0,s->dict_len);

    s->rp = s->first_rp;
    if (s->rp >= s->node_count)
        s->rp -= s->node_count;
    else
        s->rp += s->b_size - s->node_count;

#if defined(__UCL_CHECKER)
    /* initialize memory for the first few HEAD3 (if s->ip is not far
     * enough ahead to do this job for us). The value doesn't matter. */
    if (s->look < 3)
        ucl_memset(&s->b[s->bp+s->look],0,3);
#endif

    return UCL_E_OK;
}


static
void swd_exit(ucl_swd_t *s)
{
#if defined(SWD_USE_MALLOC)
    /* free in reverse order of allocations */
#  ifdef HEAD2
    ucl_free(s->head2); s->head2 = NULL;
#endif
    ucl_free(s->llen3); s->llen3 = NULL;
    ucl_free(s->best3); s->best3 = NULL;
    ucl_free(s->succ3); s->succ3 = NULL;
    ucl_free(s->head3); s->head3 = NULL;
    ucl_free(s->b); s->b = NULL;
#else
    //ACC_UNUSED(s);
#endif
}


#define swd_pos2off(s,pos) \
    (s->bp > (pos) ? s->bp - (pos) : s->b_size - ((pos) - s->bp))


/***********************************************************************
//
************************************************************************/

static
void swd_getbyte(ucl_swd_t *s)
{
    int c;

    if ((c = getbyte(*(s->c))) < 0)
    {
        if (s->look > 0)
            --s->look;
#if defined(__UCL_CHECKER)
        /* initialize memory - value doesn't matter */
        s->b[s->ip] = 0;
        if (s->ip < s->f)
            s->b_wrap[s->ip] = 0;
#endif
    }
    else
    {
        s->b[s->ip] = UCL_BYTE(c);
        if (s->ip < s->f)
            s->b_wrap[s->ip] = UCL_BYTE(c);
    }
    if (++s->ip == s->b_size)
        s->ip = 0;
    if (++s->bp == s->b_size)
        s->bp = 0;
    if (++s->rp == s->b_size)
        s->rp = 0;
}


/***********************************************************************
// remove node from lists
************************************************************************/

static
void swd_remove_node(ucl_swd_t *s, ucl_uint node)
{
    if (s->node_count == 0)
    {
        ucl_uint key;

#ifdef UCL_DEBUG
        if (s->first_rp != UCL_UINT_MAX)
        {
            if (node != s->first_rp)
                printf("Remove %5u: %5u %5u %5u %5u  %6u %6u\n",
                        node, s->rp, s->ip, s->bp, s->first_rp,
                        s->ip - node, s->ip - s->bp);
            assert(node == s->first_rp);
            s->first_rp = UCL_UINT_MAX;
        }
#endif

        key = HEAD3(s->b,node);
        assert(s->llen3[key] > 0);
        --s->llen3[key];

#ifdef HEAD2
        IF_HEAD2(s) {
            key = HEAD2(s->b,node);
            assert(s->head2[key] != NIL2);
            if ((ucl_uint) s->head2[key] == node)
                s->head2[key] = NIL2;
        }
#endif
    }
    else
        --s->node_count;
}


/***********************************************************************
//
************************************************************************/

static
void swd_accept(ucl_swd_t *s, ucl_uint n)
{
    assert(n <= s->look);

    if (n > 0) do
    {
        ucl_uint key;

        swd_remove_node(s,s->rp);

        /* add bp into HEAD3 */
        key = HEAD3(s->b,s->bp);
        s->succ3[s->bp] = s_get_head3(s,key);
        s->head3[key] = SWD_UINT(s->bp);
        s->best3[s->bp] = SWD_UINT(s->f + 1);
        s->llen3[key]++;
        assert(s->llen3[key] <= s->n);

#ifdef HEAD2
        IF_HEAD2(s) {
            /* add bp into HEAD2 */
            key = HEAD2(s->b,s->bp);
            s->head2[key] = SWD_UINT(s->bp);
        }
#endif

        swd_getbyte(s);
    } while (--n > 0);
}


/***********************************************************************
//
************************************************************************/

static
void swd_search(ucl_swd_t *s, ucl_uint node, ucl_uint cnt)
{
    const ucl_bytep p1;
    const ucl_bytep p2;
    const ucl_bytep px;
    ucl_uint m_len = s->m_len;
    const ucl_bytep b  = s->b;
    const ucl_bytep bp = s->b + s->bp;
    const ucl_bytep bx = s->b + s->bp + s->look;
    unsigned char scan_end1;

    assert(s->m_len > 0);

    scan_end1 = bp[m_len - 1];
    for ( ; cnt-- > 0; node = s->succ3[node])
    {
        p1 = bp;
        p2 = b + node;
        px = bx;

        assert(m_len < s->look);

        if (
#if 1
            p2[m_len - 1] == scan_end1 &&
            p2[m_len] == p1[m_len] &&
#endif
            p2[0] == p1[0] &&
            p2[1] == p1[1])
        {
            ucl_uint i;
            assert(ucl_memcmp(bp,&b[node],3) == 0);

#if 0 && defined(UA_GET4)
            p1 += 3; p2 += 3;
            while (p1 < px && UA_GET4(p1) == UA_GET4(p2))
                p1 += 4, p2 += 4;
            while (p1 < px && *p1 == *p2)
                p1 += 1, p2 += 1;
#else
            p1 += 2; p2 += 2;
            do {} while (++p1 < px && *p1 == *++p2);
#endif
            i = (ucl_uint) (p1 - bp);

#ifdef UCL_DEBUG
            if (ucl_memcmp(bp,&b[node],i) != 0)
                printf("%5ld %5ld %02x%02x %02x%02x\n",
                        (long)s->bp, (long) node,
                        bp[0], bp[1], b[node], b[node+1]);
#endif
            assert(ucl_memcmp(bp,&b[node],i) == 0);

#if defined(SWD_BEST_OFF)
            if (i < SWD_BEST_OFF)
            {
                if (s->best_pos[i] == 0)
                    s->best_pos[i] = node + 1;
            }
#endif
            if (i > m_len)
            {
                s->m_len = m_len = i;
                s->m_pos = node;
                if (m_len == s->look)
                    return;
                if (m_len >= s->nice_length)
                    return;
                if (m_len > (ucl_uint) s->best3[node])
                    return;
                scan_end1 = bp[m_len - 1];
            }
        }
    }
}


/***********************************************************************
//
************************************************************************/

#ifdef HEAD2

static
ucl_bool swd_search2(ucl_swd_t *s)
{
    ucl_uint key;

    assert(s->look >= 2);
    assert(s->m_len > 0);

    key = s->head2[ HEAD2(s->b,s->bp) ];
    if (key == NIL2)
        return 0;
#ifdef UCL_DEBUG
    if (ucl_memcmp(&s->b[s->bp],&s->b[key],2) != 0)
        printf("%5ld %5ld %02x%02x %02x%02x\n", (long)s->bp, (long)key,
                s->b[s->bp], s->b[s->bp+1], s->b[key], s->b[key+1]);
#endif
    assert(ucl_memcmp(&s->b[s->bp],&s->b[key],2) == 0);
#if defined(SWD_BEST_OFF)
    if (s->best_pos[2] == 0)
        s->best_pos[2] = key + 1;
#endif

    if (s->m_len < 2)
    {
        s->m_len = 2;
        s->m_pos = key;
    }
    return 1;
}

#endif


/***********************************************************************
//
************************************************************************/

static
void swd_findbest(ucl_swd_t *s)
{
    ucl_uint key;
    ucl_uint cnt, node;
    ucl_uint len;

    assert(s->m_len > 0);

    /* get current head, add bp into HEAD3 */
    key = HEAD3(s->b,s->bp);
    node = s->succ3[s->bp] = s_get_head3(s,key);
    cnt = s->llen3[key]++;
    assert(s->llen3[key] <= s->n + s->f);
    if (cnt > s->max_chain && s->max_chain > 0)
        cnt = s->max_chain;
    s->head3[key] = SWD_UINT(s->bp);

    s->b_char = s->b[s->bp];
    len = s->m_len;
    if (s->m_len >= s->look)
    {
        if (s->look == 0)
            s->b_char = -1;
        s->m_off = 0;
        s->best3[s->bp] = SWD_UINT(s->f + 1);
    }
    else
    {
#if defined(HEAD2_VAR)
        if (s->use_head2) {
            if (swd_search2(s) && s->look >= 3)
                swd_search(s,node,cnt);
        } else {
            if (s->look >= 3)
                swd_search(s,node,cnt);
        }
#elif defined(HEAD2)
        if (swd_search2(s) && s->look >= 3)
            swd_search(s,node,cnt);
#else
        if (s->look >= 3)
            swd_search(s,node,cnt);
#endif
        if (s->m_len > len)
            s->m_off = swd_pos2off(s,s->m_pos);
        s->best3[s->bp] = SWD_UINT(s->m_len);

#if defined(SWD_BEST_OFF)
        if (s->use_best_off)
        {
            int i;
            for (i = 2; i < SWD_BEST_OFF; i++)
                if (s->best_pos[i] > 0)
                    s->best_off[i] = swd_pos2off(s,s->best_pos[i]-1);
                else
                    s->best_off[i] = 0;
        }
#endif
    }

    swd_remove_node(s,s->rp);

#ifdef HEAD2
    /* add bp into HEAD2 */
    IF_HEAD2(s) {
        key = HEAD2(s->b,s->bp);
        s->head2[key] = SWD_UINT(s->bp);
    }
#endif
}


#undef HEAD3
#undef HEAD2
#undef IF_HEAD2
#undef s_get_head3


/*
vi:ts=4:et
*/

