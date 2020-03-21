#include <global.h>

typedef struct 
{
    /* 0x00 */ u32 type;
    /* 0x04 */ u32 setScissor;
    /* 0x08 */ union
    {
        Color_RGBA8 c;
        u32 rgba;
    } color;
    /* 0x0C */ u32 unk_0C;
} struct_801664F0;

Gwords D_8012AC00[] = 
{
    gsDPSetOtherMode(0, G_RM_VISCVG | G_RM_VISCVG2 | G_ZS_PRIM),
    gsDPFillRectangle(0, 0, SCREEN_WIDTH-1, SCREEN_HEIGHT-1),
    gsDPPipeSync(),
    gsDPSetBlendColor(0, 0, 0, 8),
    gsSPEndDisplayList(),
};

Gwords D_8012AC28[] = 
{
    gsDPSetOtherMode(0, GBL_c1(3, 1, 1, 1) | GBL_c2(3, 1, 1, 1) | IM_RD | FORCE_BL | G_ZS_PRIM),
    gsDPFillRectangle(0, 0, SCREEN_WIDTH-1, SCREEN_HEIGHT-1),
    gsSPEndDisplayList(),
};

Gwords D_8012AC40[] = 
{
    gsDPSetOtherMode(0, GBL_c1(0, 3, 1, 1) | GBL_c2(0, 3, 1, 1) | IM_RD | FORCE_BL | G_ZS_PRIM),
    gsDPFillRectangle(0, 0, SCREEN_WIDTH-1, SCREEN_HEIGHT-1),
    gsSPEndDisplayList(),
};

Gwords D_8012AC58[] = 
{
    gsDPSetCombineLERP(K5, K5, 0, PRIMITIVE, 0, 0, 0, PRIMITIVE, K5, K5, 0, PRIMITIVE, 0, 0, 0, PRIMITIVE),
    gsDPSetOtherMode(G_CD_DISABLE | G_AD_NOTPATTERN, G_ZS_PRIM | IM_RD | CVG_DST_WRAP | CVG_DST_FULL | FORCE_BL | GBL_c1(0, 0, 1, 0) | GBL_c2(0, 0, 1, 0)),
    gsDPFillRectangle(0, 0, SCREEN_WIDTH-1, SCREEN_HEIGHT-1),
    gsDPSetOtherMode(0, GBL_c1(0, 3, 1, 1) | GBL_c2(0, 3, 1, 1) | IM_RD | FORCE_BL | G_ZS_PRIM),
    gsDPFillRectangle(0, 0, SCREEN_WIDTH-1, SCREEN_HEIGHT-1),
    gsSPEndDisplayList(),
};

//Init func
void func_800ACE70(struct_801664F0* this)
{
    this->type = 0;
    this->setScissor = false;
    this->color.c.r = 0xFF;
    this->color.c.g = 0xFF;
    this->color.c.b = 0xFF;
    this->color.c.a = 0xFF;
}

//Destroy func
void func_800ACE90(struct_801664F0* this)
{

}

//Update func
void func_800ACE98(struct_801664F0* this, Gfx** gfxp)
{
    Gfx* gfx;

    gfx = *gfxp;

    gDPPipeSync(gfx++);
    gDPSetPrimDepth(gfx++, -1, -1);

    if (this->setScissor == true)
    {
        gDPSetScissor(gfx++, G_SC_NON_INTERLACE, 0, 0, SCREEN_WIDTH, SCREEN_HEIGHT);
    }
    
    switch(this->type)
    {
        case 1:
        {
            gSPDisplayList(gfx++, D_8012AC40);
            break;
        }
        case 2:
        {
            gDPSetColor(gfx++, G_SETPRIMCOLOR, this->color.rgba);
            gSPDisplayList(gfx++, D_8012AC58);
            break;
        }
        case 3:
        {
            gDPSetColor(gfx++, G_SETBLENDCOLOR, this->color.rgba);
            gSPDisplayList(gfx++, D_8012AC00);
            break;
        }
        case 4:
        {
            gDPSetColor(gfx++, G_SETFOGCOLOR, this->color.rgba);
            gSPDisplayList(gfx++, D_8012AC28);
            break;
        }
    }    

    gDPPipeSync(gfx++);
    *gfxp = gfx;
}
