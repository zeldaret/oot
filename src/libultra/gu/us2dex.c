#include "global.h"

void guS2DInitBg(uObjBg* bg) {
    u16 tmem = (bg->b.imageFmt == G_IM_FMT_CI) ? 0x100 : 0x200;
    u16 shift = 6 - bg->b.imageSiz;
    u32 tsize;

    if (bg->b.imageLoad == G_BGLT_LOADBLOCK) {
        bg->b.tmemW = bg->b.imageW >> shift;
        bg->b.tmemH = (tmem / bg->b.tmemW) << 2;
        bg->b.tmemSizeW = bg->b.tmemW << 1;
        bg->b.tmemSize = bg->b.tmemH * bg->b.tmemSizeW;
        bg->b.tmemLoadSH = (bg->b.tmemSize >> 1) - 1;
        bg->b.tmemLoadTH = GS_CALC_DXT(bg->b.tmemW);
    } else { // G_BGLT_LOADTILE
        bg->b.tmemW = (bg->b.frameW >> shift) + 3;
        bg->b.tmemH = (tmem / bg->b.tmemW) << 2;
        bg->b.tmemSizeW = (bg->b.imageW >> shift) << 1;

        tsize = bg->b.tmemH * bg->b.tmemSizeW;
        bg->b.tmemSize = tsize >> 16;
        bg->b.tmemLoadSH = tsize & 0xFFFF;
        bg->b.tmemLoadTH = bg->b.tmemH - 1;
    }
}
