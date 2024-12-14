#ifndef LINE_NUMBERS_H
#define LINE_NUMBERS_H

#define LN(ntsc0, ntsc1, ntsc2, pal0, pal1, gc_jp, gc_jp_mq, gc_us, gc_us_mq, gc_eu, gc_eu_mq, gc_jp_ce, dbg) \
    (OOT_VERSION == NTSC_1_0) ? ntsc0    : \
    (OOT_VERSION == NTSC_1_1) ? ntsc1    : \
    (OOT_VERSION == NTSC_1_2) ? ntsc2    : \
    (OOT_VERSION == PAL_1_0)  ? pal0     : \
    (OOT_VERSION == PAL_1_1)  ? pal1     : \
    (OOT_VERSION == GC_JP)    ? gc_jp    : \
    (OOT_VERSION == GC_JP_MQ) ? gc_jp_mq : \
    (OOT_VERSION == GC_US)    ? gc_us    : \
    (OOT_VERSION == GC_US_MQ) ? gc_us_mq : \
    (OOT_VERSION == GC_EU)    ? gc_eu    : \
    (OOT_VERSION == GC_EU_MQ) ? gc_eu_mq : \
    (OOT_VERSION == GC_JP_CE) ? gc_jp_ce : dbg

#define LN_N0(ntsc0, rest) \
    LN(ntsc0, rest, rest, rest, rest, rest, rest, rest, rest, rest, rest, rest, rest)

#define LN_N0_N1(ntsc0, ntsc1, rest) \
    LN(ntsc0, ntsc1, rest, rest, rest, rest, rest, rest, rest, rest, rest, rest, rest)

#define LN_N0_GC(ntsc0, middle, gc) \
    LN(ntsc0, middle, middle, middle, middle, gc, gc, gc, gc, gc, gc, gc, gc)

#define LN_N0_N1_GC(ntsc0, ntsc1, middle, gc) \
    LN(ntsc0, ntsc1, middle, middle, middle, gc, gc, gc, gc, gc, gc, gc, gc)

#define LN_N0_N1_DBG(ntsc0, ntsc1, middle, debug) \
    LN(ntsc0, ntsc1, middle, middle, middle, middle, middle, middle, middle, middle, middle, middle, debug)

#define LN_Z_PLAY(ntsc0, ntsc1, n2p0, pal1, gc_ntsc, gc_eu, gc_jp_ce) \
    LN(ntsc0, ntsc1, n2p0, n2p0, pal1, gc_ntsc, gc_ntsc, gc_ntsc, gc_ntsc, gc_eu, gc_eu, gc_eu, gc_jp_ce)

#endif
