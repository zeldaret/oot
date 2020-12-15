/*
 * File: z_bg_gnd_iceblock.c
 * Overlay: ovl_Bg_Gnd_Iceblock
 * Description: Pushable large square ice block (Inside Ganon's Castle)
 */

#include "z_bg_gnd_iceblock.h"

#define FLAGS 0x00000030

#define THIS ((BgGndIceblock*)thisx)

void BgGndIceblock_Init(BgGndIceblock* this, GlobalContext* globalCtx);
void BgGndIceblock_Destroy(BgGndIceblock* this, GlobalContext* globalCtx);
void BgGndIceblock_Update(BgGndIceblock* this, GlobalContext* globalCtx);
void BgGndIceblock_Draw(BgGndIceblock* this, GlobalContext* globalCtx);

s32 func_80879D4C(BgGndIceblock* this);
void func_80879D98(void);

void func_8087A0C8(BgGndIceblock* this, GlobalContext* globalCtx);
void func_8087A184(BgGndIceblock* this, GlobalContext* globalCtx);
void func_8087A248(BgGndIceblock* this, GlobalContext* globalCtx);
void func_8087A300(BgGndIceblock* this, GlobalContext* globalCtx);
void func_8087A39C(BgGndIceblock* this, GlobalContext* globalCtx);

extern Gfx D_06004420[];
extern ColHeader D_06004618;


const ActorInit Bg_Gnd_Iceblock_InitVars = {
    ACTOR_BG_GND_ICEBLOCK,
    ACTORTYPE_PROP,
    FLAGS,
    OBJECT_DEMO_KEKKAI,
    sizeof(BgGndIceblock),
    (ActorFunc)BgGndIceblock_Init,
    (ActorFunc)BgGndIceblock_Destroy,
    (ActorFunc)BgGndIceblock_Update,
    (ActorFunc)BgGndIceblock_Draw,
};

Color_RGBA8 D_8087A740 = {0xFA, 0xFA, 0xFA, 0xFF};
Color_RGBA8 D_8087A744 =  {0xB4, 0xB4, 0xB4, 0xFF};
Vec3f D_8087A748 = {0.0f, 0.0f, 0.0f};
InitChainEntry D_8087A754[] = {0x48500064};
s32 D_8087A758[] =  { 0x00000000, 0x00000202, 0x02020303, 0x03040404, 0x06060606, 0x06060000};
s32 D_8087A770[] =  {0x05040302, 0x01000504, 0x02010601, 0x00050302, 0x05040302, 0x01000000, 0x00000000, 0x00000000};

u8 D_8087AC40;
u8 D_8087AC41;
u8 D_8087AC42;

void BgGndIceblock_Init(BgGndIceblock* thisx, GlobalContext *globalCtx) {
    s32 pad;
    BgGndIceblock* this = THIS;
    ColHeader* sp24 = NULL;

    Actor_ProcessInitChain(&this->dyna.actor, D_8087A754);
    DynaPolyInfo_SetActorMove(&this->dyna, 0);
    DynaPolyInfo_Alloc(&D_06004618, &sp24);
    this->unk_168 = this->dyna.actor.initPosRot.pos;
    this->actionFunc = func_8087A0C8;
    this->dyna.dynaPolyId = DynaPolyInfo_RegisterActor(globalCtx, &globalCtx->colCtx.dyna, &this->dyna.actor, sp24);
    if (this->dyna.actor.posRot.pos.x == 2792.0f) {
        this->dyna.actor.params = 0;
        D_8087AC40 = 7;
    } else if (this->dyna.actor.posRot.pos.x == 3032.0f) {
        this->dyna.actor.params = 1;
        D_8087AC41 = 0xE;
    } else {
        LogUtils_LogThreadId("../z_bg_gnd_iceblock.c", 138);
        osSyncPrintf("thisx->world.position.x = %f\n", this->dyna.actor.posRot.pos.x);
        __assert("0", "../z_bg_gnd_iceblock.c", 139);
    }
}

void BgGndIceblock_Destroy(BgGndIceblock* thisx, GlobalContext *globalCtx) {
    s32 pad;
    BgGndIceblock* this = THIS;

    DynaPolyInfo_Free(globalCtx, &globalCtx->colCtx.dyna, this->dyna.dynaPolyId);
}

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Bg_Gnd_Iceblock/func_80879C04.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Bg_Gnd_Iceblock/func_80879D10.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Bg_Gnd_Iceblock/func_80879D4C.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Bg_Gnd_Iceblock/func_80879D98.s")

void func_8087A0C8(BgGndIceblock *this, GlobalContext *globalCtx) {
    Player* player = PLAYER;

    if (this->dyna.unk_150 != 0.0f) {
        player->stateFlags2 &= ~0x10;
        if (this->dyna.unk_150 > 0.0f) {
            func_80879D98();
            if (func_8002DBB0(&this->dyna.actor, &this->unk_168) > 1.0f) {
                func_8002DF54(globalCtx, &this->dyna.actor, 8);
                this->actionFunc = func_8087A39C;
            }
        }
        this->dyna.unk_150 = 0.0f;
    }
}

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Bg_Gnd_Iceblock/func_8087A184.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Bg_Gnd_Iceblock/func_8087A248.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Bg_Gnd_Iceblock/func_8087A300.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Bg_Gnd_Iceblock/func_8087A39C.s")

void BgGndIceblock_Update(BgGndIceblock* thisx, GlobalContext *globalCtx) {
    s32 pad;
    BgGndIceblock* this = THIS;

    this->actionFunc(this, globalCtx);
}

void BgGndIceblock_Draw(BgGndIceblock* thisx, GlobalContext *globalCtx) {
    s32 pad;
    BgGndIceblock* this = THIS;

    Gfx_DrawDListOpa(globalCtx, D_06004420);
}