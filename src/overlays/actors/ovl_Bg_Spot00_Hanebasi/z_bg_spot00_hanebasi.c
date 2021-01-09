/*
 * File: z_bg_spot00_hanebasi.c
 * Overlay: ovl_Bg_Spot00_Hanebasi
 * Description: Hyrule Field Drawbridge Objects
 */

#include "z_bg_spot00_hanebasi.h"

#define FLAGS 0x00000010

#define THIS ((BgSpot00Hanebasi*)thisx)

void BgSpot00Hanebasi_Init(Actor* thisx, GlobalContext* globalCtx);
void BgSpot00Hanebasi_Destroy(Actor* thisx, GlobalContext* globalCtx);
void BgSpot00Hanebasi_Update(Actor* thisx, GlobalContext* globalCtx);
void BgSpot00Hanebasi_Draw(Actor* thisx, GlobalContext* globalCtx);

void func_808A9BE8(BgSpot00Hanebasi* this, GlobalContext* globalCtx);
void func_808A9E58(BgSpot00Hanebasi* this, GlobalContext* globalCtx);
void func_808A9D24(BgSpot00Hanebasi* this, GlobalContext* globalCtx);

extern Gfx D_0404D4E0[];
extern Gfx D_060000C0[];
extern UNK_TYPE D_06000280;
extern Gfx D_06000430[];
extern UNK_TYPE D_060005E0;

const ActorInit Bg_Spot00_Hanebasi_InitVars = {
    ACTOR_BG_SPOT00_HANEBASI,
    ACTORTYPE_BG,
    FLAGS,
    OBJECT_SPOT00_OBJECTS,
    sizeof(BgSpot00Hanebasi),
    (ActorFunc)BgSpot00Hanebasi_Init,
    (ActorFunc)BgSpot00Hanebasi_Destroy,
    (ActorFunc)BgSpot00Hanebasi_Update,
    (ActorFunc)BgSpot00Hanebasi_Draw,
};

/*static*/ f32 D_808AA7B0 = 0.0f;

static InitChainEntry sInitChain[] = {
    ICHAIN_F32(uncullZoneScale, 550, ICHAIN_CONTINUE),
    ICHAIN_F32(uncullZoneDownward, 2000, ICHAIN_CONTINUE),
    ICHAIN_F32(uncullZoneForward, 5000, ICHAIN_CONTINUE),
    ICHAIN_VEC3F_DIV1000(scale, 1000, ICHAIN_STOP),
};

void BgSpot00Hanebasi_Init(Actor* thisx, GlobalContext* globalCtx) {
    BgSpot00Hanebasi* this = THIS;
    s32 pad;
    Vec3f chainPos;
    CollisionHeader* colHeader = NULL;

    Actor_ProcessInitChain(&this->dyna.actor, &sInitChain);
    DynaPolyActor_Init(&this->dyna.actor, 1);

    if (this->dyna.actor.params == -1) {
        CollisionHeader_GetVirtual(&D_060005E0, &colHeader);
    } else {
        CollisionHeader_GetVirtual(&D_06000280, &colHeader);
    }

    this->dyna.bgId = DynaPoly_SetBgActor(globalCtx, &globalCtx->colCtx.dyna, &this->dyna.actor, colHeader);

    if (this->dyna.actor.params == -1) {
        if ((LINK_IS_ADULT) && (gSaveContext.sceneSetupIndex < 4)) {
            Actor_Kill(&this->dyna.actor);
            return;
        }

        if ((gSaveContext.sceneSetupIndex != 6) &&
            ((gSaveContext.sceneSetupIndex == 4) || (gSaveContext.sceneSetupIndex == 5) ||
             ((LINK_IS_CHILD) && (gSaveContext.nightFlag != 0)))) {
            this->dyna.actor.shape.rot.x = -0x4000;
        } else {
            this->dyna.actor.shape.rot.x = 0;
        }

        if (gSaveContext.sceneSetupIndex != 6) {
            if ((CHECK_QUEST_ITEM(QUEST_KOKIRI_EMERALD)) && (CHECK_QUEST_ITEM(QUEST_GORON_RUBY)) &&
                (CHECK_QUEST_ITEM(QUEST_ZORA_SAPPHIRE)) && (!(gSaveContext.eventChkInf[8] & 1))) {
                this->dyna.actor.shape.rot.x = -0x4000;
            }
        }

        chainPos.y =
            (10.0f * Math_CosS(this->dyna.actor.shape.rot.x)) - (Math_SinS(this->dyna.actor.shape.rot.x) * 400.0f);
        chainPos.z =
            (10.0f * Math_SinS(this->dyna.actor.shape.rot.x)) - (Math_CosS(this->dyna.actor.shape.rot.x) * 400.0f);
        chainPos.x =
            (158.0f * Math_CosS(this->dyna.actor.shape.rot.y)) + (Math_SinS(this->dyna.actor.shape.rot.y) * chainPos.z);
        chainPos.z = (-158.0f * Math_SinS(this->dyna.actor.shape.rot.y)) +
                     (Math_CosS(this->dyna.actor.shape.rot.y) * chainPos.z);

        if (Actor_SpawnAsChild(&globalCtx->actorCtx, &this->dyna.actor, globalCtx, ACTOR_BG_SPOT00_HANEBASI,
                               this->dyna.actor.posRot.pos.x + chainPos.x, this->dyna.actor.posRot.pos.y + chainPos.y,
                               this->dyna.actor.posRot.pos.z + chainPos.z,
                               ((this->dyna.actor.shape.rot.x == 0) ? 0 : 0xF020), this->dyna.actor.shape.rot.y, 0,
                               0) == NULL) {
            Actor_Kill(&this->dyna.actor);
        }

        this->actionFunc = func_808A9BE8;
        this->unk_168 = 40;
    } else if (this->dyna.actor.params == 0) {
        if (Actor_SpawnAsChild(&globalCtx->actorCtx, &this->dyna.actor, globalCtx, ACTOR_BG_SPOT00_HANEBASI,
                               this->dyna.actor.posRot.pos.x - (Math_CosS(this->dyna.actor.shape.rot.y) * 316.0f),
                               this->dyna.actor.posRot.pos.y,
                               this->dyna.actor.posRot.pos.z + (Math_SinS(this->dyna.actor.shape.rot.y) * 316.0f),
                               this->dyna.actor.shape.rot.x, this->dyna.actor.shape.rot.y, 0, 1) == NULL) {
            Actor_Kill(&this->dyna.actor);
            Actor_Kill(this->dyna.actor.parent);
        }

        this->actionFunc = func_808A9E58;
    } else {
        this->actionFunc = func_808A9E58;
    }

    if (this->dyna.actor.params >= 0) {
        this->lightNode = LightContext_InsertLight(globalCtx, &globalCtx->lightCtx, &this->lightInfo);
        Lights_PointGlowSetInfo(&this->lightInfo, ((this->dyna.actor.params == 0) ? 260.0f : -260.0f), 168, 690, 255,
                                255, 0, 0);
    }
}

void BgSpot00Hanebasi_Destroy(Actor* thisx, GlobalContext* globalCtx) {
    BgSpot00Hanebasi* this = THIS;

    DynaPoly_DeleteBgActor(globalCtx, &globalCtx->colCtx.dyna, this->dyna.bgId);

    if (this->dyna.actor.params >= 0) {
        LightContext_RemoveLight(globalCtx, &globalCtx->lightCtx, this->lightNode);
    }
}

void func_808A9BE8(BgSpot00Hanebasi* this, GlobalContext* globalCtx) {
    BgSpot00Hanebasi* child = (BgSpot00Hanebasi*)this->dyna.actor.child;

    if ((gSaveContext.sceneSetupIndex >= 4) || (!(CHECK_QUEST_ITEM(QUEST_KOKIRI_EMERALD))) ||
        (!(CHECK_QUEST_ITEM(QUEST_GORON_RUBY))) || (!(CHECK_QUEST_ITEM(QUEST_ZORA_SAPPHIRE))) ||
        (gSaveContext.eventChkInf[8] & 1)) {
        if (this->dyna.actor.shape.rot.x != 0) {
            if (Flags_GetEnv(globalCtx, 0) || ((gSaveContext.sceneSetupIndex < 4) && (gSaveContext.nightFlag == 0))) {
                this->actionFunc = func_808A9D24;
                this->unk_168 = 0;
                child->unk_168 = 0;
                return;
            }

            if (this) {} // required to match
        }

        if ((this->dyna.actor.shape.rot.x == 0) && (gSaveContext.sceneSetupIndex < 4) && (LINK_IS_CHILD) &&
            (gSaveContext.nightFlag != 0)) {
            this->actionFunc = func_808A9D24;
            this->unk_168 = -0x4000;
            child->unk_168 = -0xFE0;
        }
    }
}

void func_808A9D18(BgSpot00Hanebasi* this, GlobalContext* globalCtx) {
}

void func_808A9D24(BgSpot00Hanebasi* this, GlobalContext* globalCtx) {
    BgSpot00Hanebasi* child;
    Actor* childsChild;
    s16 angle = 80;

    if (Math_ScaledStepToS(&this->dyna.actor.shape, this->unk_168, 80)) {
        this->actionFunc = func_808A9BE8;
    }

    if (this->dyna.actor.shape.rot.x >= -0x27D8) {
        child = this->dyna.actor.child;
        angle *= 0.4f;
        Math_ScaledStepToS(&child->dyna.actor.shape.rot.x, child->unk_168, angle);
        childsChild = child->dyna.actor.child;
        Math_ScaledStepToS(&childsChild->shape.rot.x, child->unk_168, angle);
    }

    if (this->unk_168 < 0) {
        if (this->actionFunc == func_808A9BE8) {
            Audio_PlayActorSound2(&this->dyna.actor, NA_SE_EV_BRIDGE_CLOSE_STOP);
        } else {
            func_8002F974(&this->dyna.actor, NA_SE_EV_BRIDGE_CLOSE - SFX_FLAG);
        }
    } else {
        if (this->actionFunc == func_808A9BE8) {
            Audio_PlayActorSound2(&this->dyna.actor, NA_SE_EV_BRIDGE_OPEN_STOP);
        } else {
            func_8002F974(&this->dyna.actor, NA_SE_EV_BRIDGE_OPEN - SFX_FLAG);
        }
    }
}

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Bg_Spot00_Hanebasi/func_808A9E58.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Bg_Spot00_Hanebasi/BgSpot00Hanebasi_Update.s")

void func_808AA2B0(Actor* thisx, GlobalContext* globalCtx2) {
    GlobalContext* globalCtx = globalCtx2;
    f32 angle;
    s32 i;

    OPEN_DISPS(globalCtx->state.gfxCtx, "../z_bg_spot00_hanebasi.c", 633);

    func_80093D84(globalCtx->state.gfxCtx);

    if (gSaveContext.sceneSetupIndex >= 4) {
        D_808AA7B0 = 0.008f;
    } else {
        D_808AA7B0 = ((thisx->shape.rot.x * -1) - 0x2000) * (1.0f / 1024000.0f);
    }

    angle = (s16)(Camera_GetCamDirYaw(ACTIVE_CAM) + 0x8000) * (M_PI / 32768.0f);
    gDPSetPrimColor(POLY_XLU_DISP++, 128, 128, 255, 255, 0, 255);
    gDPSetEnvColor(POLY_XLU_DISP++, 255, 0, 0, 0);

    for (i = 0; i < 2; i++) {
        gSPSegment(POLY_XLU_DISP++, 0x08,
                   Gfx_TwoTexScroll(globalCtx->state.gfxCtx, 0, 0, 0, 32, 64, 1, 0,
                                    ((globalCtx->gameplayFrames + i) * -20) & 0x1FF, 32, 128));

        Matrix_Translate((i == 0) ? 260.0f : -260.0f, 128.0f, 690.0f, 0);
        Matrix_RotateY(angle, MTXMODE_APPLY);
        Matrix_Scale(D_808AA7B0, D_808AA7B0, D_808AA7B0, MTXMODE_APPLY);

        gSPMatrix(POLY_XLU_DISP++, Matrix_NewMtx(globalCtx->state.gfxCtx, "../z_bg_spot00_hanebasi.c", 674),
                  G_MTX_NOPUSH | G_MTX_LOAD | G_MTX_MODELVIEW);
        gSPDisplayList(POLY_XLU_DISP++, D_0404D4E0);
    }

    CLOSE_DISPS(globalCtx->state.gfxCtx, "../z_bg_spot00_hanebasi.c", 681);
}

void BgSpot00Hanebasi_Draw(Actor* thisx, GlobalContext* globalCtx) {
    Vec3f basePos = { 158.0f, 10.0f, 400.0f };
    Vec3f newPos;

    OPEN_DISPS(globalCtx->state.gfxCtx, "../z_bg_spot00_hanebasi.c", 698);

    func_80093D18(globalCtx->state.gfxCtx);

    gSPMatrix(POLY_OPA_DISP++, Matrix_NewMtx(globalCtx->state.gfxCtx, "../z_bg_spot00_hanebasi.c", 702),
              G_MTX_NOPUSH | G_MTX_LOAD | G_MTX_MODELVIEW);

    if (thisx->params == -1) {
        gSPDisplayList(POLY_OPA_DISP++, D_06000430);

        Matrix_MultVec3f(&basePos, &newPos);
        thisx->child->posRot.pos.x = newPos.x;
        thisx->child->posRot.pos.y = newPos.y;
        thisx->child->posRot.pos.z = newPos.z;
        basePos.x *= -1.0f;

        Matrix_MultVec3f(&basePos, &newPos);
        thisx->child->child->posRot.pos.x = newPos.x;
        thisx->child->child->posRot.pos.y = newPos.y;
        thisx->child->child->posRot.pos.z = newPos.z;

        if (gSaveContext.sceneSetupIndex != 12) {
            if (gSaveContext.sceneSetupIndex < 4) {
                if ((gSaveContext.linkAge != 0) && (thisx->shape.rot.x < -0x2000)) {
                lbl:
                    func_808AA2B0(thisx, globalCtx);
                } else {
                    D_808AA7B0 = 0.0f;
                }
            } else {
                goto lbl;
            }
        }
    } else {
        gSPDisplayList(POLY_OPA_DISP++, D_060000C0);
    }

    CLOSE_DISPS(globalCtx->state.gfxCtx, "../z_bg_spot00_hanebasi.c", 733);
}
