/*
 * File: z_bg_spot03_taki.c
 * Overlay: ovl_Bg_Spot03_Taki
 * Description: Zora's River Waterfall
 */

#include "z_bg_spot03_taki.h"

#define FLAGS 0x00000030

#define THIS ((BgSpot03Taki*)thisx)

void BgSpot03Taki_Init(Actor* thisx, GlobalContext* globalCtx);
void BgSpot03Taki_Destroy(Actor* thisx, GlobalContext* globalCtx);
void BgSpot03Taki_Update(Actor* thisx, GlobalContext* globalCtx);
void BgSpot03Taki_Draw(Actor* thisx, GlobalContext* globalCtx);

void func_800F46E0(Vec3f* pos, f32 arg0);
void func_808ADEF0(BgSpot03Taki* this, GlobalContext* globalCtx);

const ActorInit Bg_Spot03_Taki_InitVars = {
    ACTOR_BG_SPOT03_TAKI,
    ACTORTYPE_BG,
    FLAGS,
    OBJECT_SPOT03_OBJECT,
    sizeof(BgSpot03Taki),
    (ActorFunc)BgSpot03Taki_Init,
    (ActorFunc)BgSpot03Taki_Destroy,
    (ActorFunc)BgSpot03Taki_Update,
    (ActorFunc)BgSpot03Taki_Draw,
};

static InitChainEntry sInitChain[] = {
    ICHAIN_VEC3F_DIV1000(scale, 100, ICHAIN_STOP),
};

extern UNK_TYPE D_06000C98;
extern Vtx* D_06000800;
extern Vtx* D_06000990;
extern Gfx* D_06000B20[];
extern Gfx* D_06001580[];

// Not decompiled yet.
#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Bg_Spot03_Taki/func_808ADAE0.s")

void BgSpot03Taki_Init(Actor *thisx, GlobalContext *globalCtx) {
    BgSpot03Taki *this = THIS;
    s16 pad;
    s32 sp24 = 0;

    this->switchFlag = (this->dyna.actor.params & 0x3F);
    DynaPolyInfo_SetActorMove(&this->dyna, 0);
    DynaPolyInfo_Alloc(&D_06000C98, &sp24);
    this->dyna.dynaPolyId = DynaPolyInfo_RegisterActor(globalCtx, &globalCtx->colCtx.dyna, &this->dyna.actor, sp24);
    Actor_ProcessInitChain(&this->dyna.actor, sInitChain);
    this->unk_174 = 0;
    this->unk_170 = 255.0f;
    func_808ADAE0(this, 0);
    func_808ADAE0(this, 1);
    this->actionFunc = func_808ADEF0;
}

void BgSpot03Taki_Destroy(Actor *thisx, GlobalContext *globalCtx) {
    BgSpot03Taki *this = THIS;

    DynaPolyInfo_Free(globalCtx, &globalCtx->colCtx.dyna, this->dyna.dynaPolyId);
}

void func_808ADEF0(BgSpot03Taki* this, GlobalContext* globalCtx) {
    if (this->unk_16A == 0) {
        if (Flags_GetSwitch(globalCtx, this->switchFlag) != 0) {
            this->unk_16A = 2;
            this->unk_168 = 0x28;
            func_800800F8(globalCtx, 0x1004, -0x63, NULL, 0);
        }
    } else if (this->unk_16A == 1) {
        this->unk_168--;
        if (this->unk_168 < 0) {
            this->unk_16A = 2;
        }
    } else if (this->unk_16A == 2) {
        if (this->unk_170 > 0) {
            this->unk_170 -= 5;
            if (this->unk_170 <= 0.0f) {
                func_8003EBF8(globalCtx, &globalCtx->colCtx.dyna, this->dyna.dynaPolyId);
                this->unk_168 = 0x190;
                this->unk_16A = 3;
                this->unk_170 = 0;
            }
        }
    } else if (this->unk_16A == 3) {
        this->unk_168--;
        if (this->unk_168 < 0) {
            this->unk_16A = 4;
        }
    } else if (this->unk_16A == 4) {
        if (this->unk_170 < 255.0f) {
            this->unk_170 += 5.0f;
            if (this->unk_170 >= 255.0f) {
                func_8003EC50(globalCtx, &globalCtx->colCtx.dyna, this->dyna.dynaPolyId);
                this->unk_16A = 0;
                this->unk_170 = 255.0f;
                Flags_UnsetSwitch(globalCtx, this->switchFlag);
            }
        }
    }
    func_808ADAE0(this, this->unk_174);
}

void BgSpot03Taki_Update(Actor *thisx, GlobalContext *globalCtx) {
    BgSpot03Taki *this = THIS;

    this->actionFunc(this, globalCtx);
}

#ifdef NON_MATCHING
void BgSpot03Taki_Draw(Actor *thisx, GlobalContext *globalCtx) {
    BgSpot03Taki *this = THIS;
    Gfx *(*dlist)[];
    u32 gameplayFrames;

    OPEN_DISPS(globalCtx->state.gfxCtx, "../z_bg_spot03_taki.c", 321);

    gameplayFrames = globalCtx->gameplayFrames;

    gSPMatrix(oGfxCtx->polyXlu.p++,
              Matrix_NewMtx(globalCtx->state.gfxCtx, "../z_bg_spot03_taki.c", 325),
              G_MTX_NOPUSH | G_MTX_LOAD | G_MTX_MODELVIEW);

    func_80093D84(globalCtx->state.gfxCtx);

    gSPSegment(oGfxCtx->polyXlu.p++, 0x08,
               Gfx_TwoTexScroll(globalCtx->state.gfxCtx, 0, 0, gameplayFrames * 5, 64, 64, 1, 0, gameplayFrames * 5, 64, 64));

    gSPDisplayList(oGfxCtx->polyXlu.p++, &D_06001580);

    if (this->unk_174 == 0) {
        gSPVertex(oGfxCtx->polyXlu.p++, &D_06000800, 25, 0);
    } else {
        gSPVertex(oGfxCtx->polyXlu.p++, &D_06000990, 25, 0);
        dlist = &D_06000B20;
        gSPDisplayList(oGfxCtx->polyXlu.p++, dlist);
    }

    gSPSegment(oGfxCtx->polyXlu.p++, 0x08,
               Gfx_TwoTexScroll(globalCtx->state.gfxCtx, 0, (u8)gameplayFrames, gameplayFrames * 3, 64, 64, 1, -gameplayFrames, gameplayFrames * 3, 64, 64));

    gSPDisplayList(oGfxCtx->polyXlu.p++, &D_06000B20);

    CLOSE_DISPS(globalCtx->state.gfxCtx, "../z_bg_spot03_taki.c", 358);

    this->unk_174 = this->unk_174 == 0;

    if (this->unk_16A > 0 && this->unk_16A < 4) {
        func_800F46E0(&this->dyna.actor.projectedPos, 0.5);
    }
    else {
        func_800F46E0(&this->dyna.actor.projectedPos, 1.0);
    }
}
#else
#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Bg_Spot03_Taki/BgSpot03Taki_Draw.s")
#endif
