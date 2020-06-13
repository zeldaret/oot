/*
 * File: z_bg_spot01_idohashira.c
 * Overlay: Bg_Spot01_Idohashira
 * Description:
 */

#include "z_bg_spot01_idohashira.h"

#include "vt.h"

#define FLAGS 0x00000010

#define THIS ((BgSpot01Idohashira*)thisx)

void BgSpot01Idohashira_Init(Actor* thisx, GlobalContext* globalCtx);
void BgSpot01Idohashira_Destroy(Actor* thisx, GlobalContext* globalCtx);
void BgSpot01Idohashira_Update(Actor* thisx, GlobalContext* globalCtx);
void BgSpot01Idohashira_Draw(Actor* thisx, GlobalContext* globalCtx);

void func_808AB504(BgSpot01Idohashira* this, GlobalContext* globalCtx);
void func_808AB510(BgSpot01Idohashira* this, GlobalContext* globalCtx);
void func_808AB530(BgSpot01Idohashira* this, GlobalContext* globalCtx);
void func_808AB570(BgSpot01Idohashira* this, GlobalContext* globalCtx);
void func_808AB700(BgSpot01Idohashira* this, GlobalContext* globalCtx);

BgSpot01IdohashiraActionFunc D_808AB830[] = {
    func_808AB504,
    func_808AB510,
    func_808AB530,
    func_808AB570,
};

InitChainEntry D_808AB840[] = {
    ICHAIN_VEC3F_DIV1000(scale, 100, ICHAIN_STOP),
};

BgSpot01IdohashiraDrawFunc D_808AB844[] = {
    func_808AB700,
};

const ActorInit Bg_Spot01_Idohashira_InitVars = {
    ACTOR_BG_SPOT01_IDOHASHIRA,
    ACTORTYPE_PROP,
    FLAGS,
    OBJECT_SPOT01_OBJECTS,
    sizeof(BgSpot01Idohashira),
    (ActorFunc)BgSpot01Idohashira_Init,
    (ActorFunc)BgSpot01Idohashira_Destroy,
    (ActorFunc)BgSpot01Idohashira_Update,
    (ActorFunc)BgSpot01Idohashira_Draw,
};

extern Gfx* D_06000420;
extern UNK_TYPE D_0600075C;

void func_808AACE0(BgSpot01Idohashira* this) {
    func_80078914(&this->dyna.actor.unk_E4, NA_SE_EV_BOX_BREAK);
}

void func_808AAD04(BgSpot01Idohashira* this, GlobalContext* globalCtx) {
    Audio_PlaySoundAtPosition(globalCtx, &this->dyna.actor.posRot.pos, 0x3C, NA_SE_EV_WOODBOX_BREAK);
}

void func_808AAD3C(GlobalContext* globalCtx, Vec3f* vec, u32 arg2) {
    EffectSparkInit effect;
    s32 sp24;

    effect.position.x = vec->x;
    effect.position.y = vec->y;
    effect.position.z = vec->z;
    effect.speed = 8.0f;
    effect.gravity = -1.0f;
    effect.uDiv = arg2;
    effect.vDiv = arg2;
    effect.colorStart[0].r = 0x00;
    effect.colorStart[0].g = 0x00;
    effect.colorStart[0].b = 0x00;
    effect.colorStart[0].a = 0xFF;
    effect.colorStart[1].r = 0x00;
    effect.colorStart[1].g = 0x00;
    effect.colorStart[1].b = 0x00;
    effect.colorStart[1].a = 0xFF;
    effect.colorStart[2].r = 0x00;
    effect.colorStart[2].g = 0x00;
    effect.colorStart[2].b = 0x00;
    effect.colorStart[2].a = 0xFF;
    effect.colorStart[3].r = 0x00;
    effect.colorStart[3].g = 0x00;
    effect.colorStart[3].b = 0x00;
    effect.colorStart[3].a = 0xFF;
    effect.colorEnd[0].r = 0x00;
    effect.colorEnd[0].g = 0x00;
    effect.colorEnd[0].b = 0x00;
    effect.colorEnd[0].a = 0x00;
    effect.colorEnd[1].r = 0x00;
    effect.colorEnd[1].g = 0x00;
    effect.colorEnd[1].b = 0x00;
    effect.colorEnd[1].a = 0x00;
    effect.colorEnd[2].r = 0x00;
    effect.colorEnd[2].g = 0x00;
    effect.colorEnd[2].b = 0x00;
    effect.colorEnd[2].a = 0x00;
    effect.colorEnd[3].r = 0x00;
    effect.colorEnd[3].g = 0x00;
    effect.colorEnd[3].b = 0x00;
    effect.colorEnd[3].a = 0x00;
    effect.timer = 0;
    effect.duration = 32;

    Effect_Add(globalCtx, &sp24, EFFECT_SPARK, 0, 1, &effect);
}

void func_808AAE6C(BgSpot01Idohashira* this, GlobalContext* globalCtx) {
    s32 pad;
    Vec3f sp30 = this->dyna.actor.posRot.pos;

    sp30.y += kREG(15);
    func_80033480(globalCtx, &sp30, kREG(11) + 350.0f, kREG(12) + 5, kREG(13) + 0x7D0, kREG(14) + 0x320, 0);
    func_808AAD3C(globalCtx, &sp30, 5);
    func_808AAD04(this, globalCtx);
}

void func_808AAF34(BgSpot01Idohashira* this, GlobalContext* globalCtx) {
    s32 pad[2];
    Vec3f dest;
    Vec3f src;

    if (this->unk_170 != 0) {
        src.x = kREG(20) + 1300.0f;
        src.y = kREG(21) + 200.0f;
        src.z = 0.0f;
        Matrix_MultVec3f(&src, &dest);
        func_80033480(globalCtx, &dest, kREG(16) + 80.0f, kREG(17) + 10, kREG(18) + 1000, kREG(19), 0);
        func_808AAD3C(globalCtx, &dest, 3);
        src.x = -(kREG(20) + 1300.0f);
        src.y = kREG(21) + 200.0f;
        src.z = 0.0f;
        Matrix_MultVec3f(&src, &dest);
        func_80033480(globalCtx, &dest, kREG(16) + 80.0f, kREG(17) + 10, kREG(18) + 1000, kREG(19), 0);
        func_808AAD3C(globalCtx, &dest, 3);
        this->unk_170 = 0;
        func_808AACE0(this);
    }
}

void BgSpot01Idohashira_Destroy(Actor* thisx, GlobalContext* globalCtx) {
    BgSpot01Idohashira* this = THIS;

    DynaPolyInfo_Free(globalCtx, &globalCtx->colCtx.dyna, this->dyna.dynaPolyId);
}

s32 func_808AB124(GlobalContext* globalCtx) {
    if (globalCtx->csCtx.state == 0) {
        return 1;
    }
    return 0;
}

CsCmdActorAction* func_808AB144(GlobalContext* globalCtx, s32 actionIdx) {
    s32 pad[2];
    CsCmdActorAction* npcAction = NULL;

    if (!func_808AB124(globalCtx)) {
        npcAction = globalCtx->csCtx.npcActions[actionIdx];
    }
    return npcAction;
}

void func_808AB18C(BgSpot01Idohashira* this) {
    this->dyna.actor.shape.rot.x += kREG(6);
    this->dyna.actor.shape.rot.y += (s16)(kREG(7) + 0x3E8);
    this->dyna.actor.shape.rot.z += (s16)(kREG(8) + 0x7D0);
}

f32 func_808AB1DC(f32 arg0, f32 arg1, u16 arg2, u16 arg3, u16 arg4) {
    f32 temp_f12;
    f32 regFloat;
    f32 diff32;
    f32 diff43;

    diff32 = arg2 - arg3;
    if (diff32 != 0.0f) {
        regFloat = kREG(9) + 30.0f;
        diff43 = arg4 - arg3;
        temp_f12 = regFloat * diff43;
        return (((((arg1 - arg0) - temp_f12) / SQ(diff32)) * diff43) * diff43) + temp_f12;
    }
    osSyncPrintf(VT_FGCOL(RED) "Bg_Spot01_Idohashira_Get_FreeFallで割り算出来ない!!!!!!!!!!!!!!\n" VT_RST);
    return 0.0f;
}

s32 func_808AB29C(BgSpot01Idohashira* this, GlobalContext* globalCtx) {
    CsCmdActorAction* npcAction;
    Vec3f* thisPos;
    f32 endX;
    f32 temp_f0;
    s32 pad2;
    Vec3f initPos;
    f32 endZ;
    f32 tempY;
    f32 tempZ;

    npcAction = func_808AB144(globalCtx, 2);
    if (npcAction != NULL) {
        temp_f0 = func_8006F93C(npcAction->endFrame, npcAction->startFrame, globalCtx->csCtx.frames);
        initPos = this->dyna.actor.initPosRot.pos;
        endX = npcAction->endPos.x;
        tempY = ((kREG(10) + 1100.0f) / 10.0f) + npcAction->endPos.y;
        endZ = npcAction->endPos.z;
        thisPos = &this->dyna.actor.posRot.pos;
        thisPos->x = ((endX - initPos.x) * temp_f0) + initPos.x;
        thisPos->y =
            func_808AB1DC(initPos.y, tempY, npcAction->endFrame, npcAction->startFrame, globalCtx->csCtx.frames) +
            initPos.y;
        thisPos->z = ((endZ - initPos.z) * temp_f0) + initPos.z;

        if (temp_f0 >= 1.0f) {
            return 1;
        } else {
            return 0;
        }
    }
    return 0;
}

void func_808AB3E8(BgSpot01Idohashira* this) {
    this->action = 1;
    this->drawConfig = 0;
}

void func_808AB3F8(BgSpot01Idohashira* this, GlobalContext* globalCtx) {
    this->action = 2;
    this->drawConfig = 0;
    this->unk_170 = 1;
}

void func_808AB414(BgSpot01Idohashira* this, GlobalContext* globalCtx) {
    func_808AAE6C(this, globalCtx);
    this->action = 3;
    this->drawConfig = 0;
}

void func_808AB444(BgSpot01Idohashira* this, GlobalContext* globalCtx) {
    CsCmdActorAction* npcAction = func_808AB144(globalCtx, 2);
    u32 action;
    u32 unk_16C;

    if (npcAction != NULL) {
        action = npcAction->action;
        unk_16C = this->unk_16C;
        if (action != unk_16C) {
            switch (action) {
                case 1:
                    func_808AB3E8(this);
                    break;
                case 2:
                    func_808AB3F8(this, globalCtx);
                    break;
                case 3:
                    Actor_Kill(&this->dyna.actor);
                    break;
                default:
                    osSyncPrintf("Bg_Spot01_Idohashira_Check_DemoMode:そんな動作は無い!!!!!!!!\n");
            }
            this->unk_16C = action;
        }
    }
}

void func_808AB504(BgSpot01Idohashira* this, GlobalContext* globalCtx) {
}

void func_808AB510(BgSpot01Idohashira* this, GlobalContext* globalCtx) {
    func_808AB444(this, globalCtx);
}

void func_808AB530(BgSpot01Idohashira* this, GlobalContext* globalCtx) {
    func_808AB18C(this);
    if (func_808AB29C(this, globalCtx)) {
        func_808AB414(this, globalCtx);
    }
}

void func_808AB570(BgSpot01Idohashira* this, GlobalContext* globalCtx) {
    func_808AB444(this, globalCtx);
}

void BgSpot01Idohashira_Update(Actor* thisx, GlobalContext* globalCtx) {
    BgSpot01Idohashira* this = THIS;

    if (this->action < 0 || this->action >= 4 || D_808AB830[this->action] == NULL) {
        osSyncPrintf(VT_FGCOL(RED) "メインモードがおかしい!!!!!!!!!!!!!!!!!!!!!!!!!\n" VT_RST);
        return;
    }
    D_808AB830[this->action](this, globalCtx);
}

void BgSpot01Idohashira_Init(Actor* thisx, GlobalContext* globalCtx) {
    s32 pad[2];
    BgSpot01Idohashira* this = THIS;
    s32 localC;

    Actor_ProcessInitChain(&this->dyna.actor, D_808AB840);
    DynaPolyInfo_SetActorMove(&this->dyna, 0);
    localC = 0;
    DynaPolyInfo_Alloc(&D_0600075C, &localC);
    this->dyna.dynaPolyId = DynaPolyInfo_RegisterActor(globalCtx, &globalCtx->colCtx.dyna, &this->dyna.actor, localC);

    if (gSaveContext.sceneSetupIndex < 4) {
        if ((gSaveContext.eventChkInf[5] & 0x10) && LINK_IS_ADULT) {
            Actor_Kill(&this->dyna.actor);
        } else {
            this->action = 0;
        }
    } else if (gSaveContext.sceneSetupIndex == 4) {
        this->action = 1;
        this->dyna.actor.shape.unk_08 = -(kREG(10) + 1100.0f);
    } else if (gSaveContext.sceneSetupIndex == 6) {
        this->action = 0;
    } else {
        Actor_Kill(&this->dyna.actor);
    }
}

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Bg_Spot01_Idohashira/func_808AB700.s")
/*void func_808AB700(BgSpot01Idohashira *this, GlobalContext *globalCtx) {
    GraphicsContext* gfxCtx = globalCtx->state.gfxCtx;
    Gfx* dispRefs[5];

    Graph_OpenDisps(dispRefs, gfxCtx, "../z_bg_spot01_idohashira.c", 689);
    func_80093D18(gfxCtx);

    gSPMatrix(gfxCtx->polyOpa.p++, Matrix_NewMtx(gfxCtx, "../z_bg_spot01_idohashira.c", 699), G_MTX_NOPUSH | G_MTX_LOAD
| G_MTX_MODELVIEW); func_808AAF34(this, globalCtx); gSPDisplayList(gfxCtx->polyOpa.p++, &D_06000420);

    Graph_CloseDisps(dispRefs, gfxCtx, "../z_bg_spot01_idohashira.c", 708);
}*/

void BgSpot01Idohashira_Draw(Actor* thisx, GlobalContext* globalCtx) {
    BgSpot01Idohashira* this = THIS;

    if (this->drawConfig < 0 || this->drawConfig > 0 || D_808AB844[this->drawConfig] == NULL) {
        osSyncPrintf(VT_FGCOL(RED) "描画モードがおかしい!!!!!!!!!!!!!!!!!!!!!!!!!\n" VT_RST);
        return;
    }
    D_808AB844[this->drawConfig](this, globalCtx);
}
