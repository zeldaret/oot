#include "z_en_dnt_nomal.h"
#include "overlays/actors/ovl_En_Dnt_Demo/z_en_dnt_demo.h"

#define FLAGS 0x00000030

#define THIS ((EnDntNomal*)thisx)

void EnDntNomal_Init(Actor* thisx, GlobalContext* globalCtx);
void EnDntNomal_Destroy(Actor* thisx, GlobalContext* globalCtx);
void EnDntNomal_Update(Actor* thisx, GlobalContext* globalCtx);
void func_809F5C98(Actor* thisx, GlobalContext* globalCtx);
void func_809F5A6C(Actor* thisx, GlobalContext* globalCtx);

s32 func_809F58E4(GlobalContext* globalCtx, s32 limbIndex, Gfx** dList, Vec3f* pos, Vec3s* rot, void* thisx);
void func_809F59E4(GlobalContext* globalCtx, s32 limbIndex, Gfx** dList, Vec3s* rot, void* thisx);

void func_809F3480(EnDntNomal* this, GlobalContext* globalCtx);
void func_809F35CC(EnDntNomal* this, GlobalContext* globalCtx);
void func_809F49A4(EnDntNomal* this, GlobalContext* globalCtx);
void func_809F43F0(EnDntNomal* this, GlobalContext* globalCtx);
void func_809F44FC(EnDntNomal* this, GlobalContext* globalCtx);
void func_809F4730(EnDntNomal* this, GlobalContext* globalCtx);
void func_809F4E18(EnDntNomal* this, GlobalContext* globalCtx);
void func_809F5478(EnDntNomal* this, GlobalContext* globalCtx);
void func_809F4BA4(EnDntNomal* this, GlobalContext* globalCtx);

extern UNK_TYPE D_06000168;
extern UNK_TYPE D_0600031C;
extern AnimationHeader D_06000430;
extern UNK_TYPE D_060006CC;
extern UNK_TYPE D_06000894;
extern UNK_TYPE D_06000B70;
extern Gfx D_060014E0[];
extern Gfx D_06001B00[];
extern SkeletonHeader D_060023B8;
extern AnimationHeader D_060024CC;
extern UNK_TYPE D_060026C4;
extern SkeletonHeader D_06002AF0;
extern UNK_TYPE D_06002E1C;
extern UNK_TYPE D_06002E84;
extern UNK_TYPE D_06003128;

const ActorInit En_Dnt_Nomal_InitVars = {
    ACTOR_EN_DNT_NOMAL,
    ACTORTYPE_PROP,
    FLAGS,
    OBJECT_GAMEPLAY_KEEP,
    sizeof(EnDntNomal),
    (ActorFunc)EnDntNomal_Init,
    (ActorFunc)EnDntNomal_Destroy,
    (ActorFunc)EnDntNomal_Update,
    NULL,
};

static ColliderCylinderInit D_809F5DD0 = {
    { COLTYPE_UNK10, 0x00, 0x00, 0x39, 0x10, COLSHAPE_CYLINDER },
    { 0x00, { 0x00000000, 0x00, 0x00 }, { 0x00000000, 0x00, 0x00 }, 0x00, 0x00, 0x01 },
    { 16, 46, 0, { 0, 0, 0 } },
};

static ColliderQuadInit D_809F5DFC = {
    { COLTYPE_UNK10, 0x00, 0x09, 0x00, 0x20, COLSHAPE_QUAD },
    { 0x00, { 0x00000000, 0x00, 0x00 }, { 0x0001F824, 0x00, 0x00 }, 0x00, 0x01, 0x00 },
    { { { 0.0f, 0.0f, 0.0f }, { 0.0f, 0.0f, 0.0f }, { 0.0f, 0.0f, 0.0f }, { 0.0f, 0.0f, 0.0f } } },
};

static Color_RGBA8 D_809F5E4C[] = {
    { 255, 255, 255, 255 }, { 255, 195, 175, 255 }, { 210, 255, 0, 255 },
    { 255, 255, 255, 255 }, { 210, 255, 0, 255 },   { 255, 195, 175, 255 },
    { 255, 255, 255, 255 }, { 255, 195, 175, 255 }, { 210, 255, 0, 255 },
};

Vec3f D_809F5E70 = { 0.0f, 0.0f, 0.0f };

Vec3f D_809F5E7C = { 0.0f, 0.0f, 0.0f };

void EnDntNomal_Init(Actor* thisx, GlobalContext* globalCtx) {
    s32 pad;
    EnDntNomal* this = THIS;

    this->unk_26A = this->actor.params;
    if (this->unk_26A < 0) {
        this->unk_26A = 0;
    }
    this->actor.flags &= ~1;
    this->actor.colChkInfo.mass = 0xFF;
    this->unk_266 = -1;
    if (this->unk_26A == 0) {
        osSyncPrintf("\n\n");
        // Deku Scrub target
        osSyncPrintf("\x1b[32m☆☆☆☆☆ デグナッツ的当て ☆☆☆☆☆ \n\x1b[m");
        Collider_InitQuad(globalCtx, &this->targetQuad);
        Collider_SetQuad(globalCtx, &this->targetQuad, &this->actor, &D_809F5DFC);
        this->actor.posRot.rot.y = this->actor.shape.rot.y = this->actor.yawTowardsLink;
        this->unk_266 = OBJECT_HINTNUTS;
    } else {
        osSyncPrintf("\n\n");
        // Deku Scrub mask show audience
        osSyncPrintf("\x1b[32m☆☆☆☆☆ デグナッツお面品評会一般人 ☆☆☆☆☆ \n\x1b[m");
        Collider_InitCylinder(globalCtx, &this->bodyCyl);
        Collider_SetCylinder(globalCtx, &this->bodyCyl, &this->actor, &D_809F5DD0);
        this->unk_266 = OBJECT_DNK;
    }
    if (this->unk_266 >= 0) {
        this->unk_279 = Object_GetIndex(&globalCtx->objectCtx, this->unk_266);
        if (this->unk_279 < 0) {
            Actor_Kill(&this->actor);
            // What?
            osSyncPrintf("\x1b[35m なにみの？ %d\n\x1b[m\n", this->unk_279);
            // Bank is funny
            osSyncPrintf("\x1b[36m バンクおかしいしぞ！%d\n\x1b[m\n", this->actor.params);
            return;
        }
    } else {
        Actor_Kill(&this->actor);
    }
    this->actionFunc = func_809F3480;
}

void EnDntNomal_Destroy(Actor* thisx, GlobalContext* globalCtx) {
    s32 pad;
    EnDntNomal* this = THIS;

    if (this->unk_26A == 0) {
        Collider_DestroyQuad(globalCtx, &this->targetQuad);
    } else {
        Collider_DestroyCylinder(globalCtx, &this->bodyCyl);
    }
}

void func_809F3480(EnDntNomal* this, GlobalContext* globalCtx) {
    if (Object_IsLoaded(&globalCtx->objectCtx, this->unk_279)) {
        gSegments[6] = PHYSICAL_TO_VIRTUAL(globalCtx->objectCtx.status[this->unk_279].segment);
        this->actor.objBankIndex = this->unk_279;
        ActorShape_Init(&this->actor.shape, 0.0f, ActorShadow_DrawFunc_Circle, 0.0f);
        this->actor.gravity = -2.0f;
        Actor_SetScale(&this->actor, 0.01f);
        if (this->unk_26A == 0) {
            SkelAnime_Init(globalCtx, &this->skelAnime, &D_060023B8, &D_060024CC, this->limbDrawTbl,
                           this->transitionDrawTbl, 10);
            this->actor.draw = func_809F5C98;
        } else {
            SkelAnime_Init(globalCtx, &this->skelAnime, &D_06002AF0, &D_06000430, this->limbDrawTbl,
                           this->transitionDrawTbl, 11);
            this->actor.draw = func_809F5A6C;
        }
        this->actionFunc = func_809F35CC;
    }
}

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Dnt_Nomal/func_809F35CC.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Dnt_Nomal/func_809F3624.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Dnt_Nomal/func_809F36CC.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Dnt_Nomal/func_809F39B8.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Dnt_Nomal/func_809F3AD4.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Dnt_Nomal/func_809F3B40.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Dnt_Nomal/func_809F3BE4.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Dnt_Nomal/func_809F3CD0.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Dnt_Nomal/func_809F3D84.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Dnt_Nomal/func_809F3E30.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Dnt_Nomal/func_809F3ED4.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Dnt_Nomal/func_809F3F6C.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Dnt_Nomal/func_809F40D4.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Dnt_Nomal/func_809F42A4.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Dnt_Nomal/func_809F4310.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Dnt_Nomal/func_809F43C8.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Dnt_Nomal/func_809F43F0.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Dnt_Nomal/func_809F44FC.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Dnt_Nomal/func_809F4730.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Dnt_Nomal/func_809F4824.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Dnt_Nomal/func_809F48FC.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Dnt_Nomal/func_809F49A4.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Dnt_Nomal/func_809F4BA4.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Dnt_Nomal/func_809F4CB4.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Dnt_Nomal/func_809F4E18.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Dnt_Nomal/func_809F4EF4.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Dnt_Nomal/func_809F50B8.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Dnt_Nomal/func_809F50EC.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Dnt_Nomal/func_809F51B8.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Dnt_Nomal/func_809F5478.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Dnt_Nomal/func_809F551C.s")

void EnDntNomal_Update(Actor* thisx, GlobalContext* globalCtx) {
    s32 pad;
    EnDntNomal* this = THIS;

    if (this->unk_258 != 0) {
        this->unk_258--;
    }
    if (this->unk_25A != 0) {
        this->unk_25A--;
    }
    if (this->unk_264 != 0) {
        this->unk_264--;
    }
    if (this->unk_25C != 0) {
        this->unk_25C--;
    }
    if (this->unk_25E != 0) {
        this->unk_25E--;
    }
    if (this->unk_260 != 0) {
        this->unk_260--;
    }
    this->actor.posRot.rot.x = this->actor.shape.rot.x;
    if (this->actionFunc != func_809F49A4) {
        this->actor.posRot.rot.y = this->actor.shape.rot.y;
    }
    this->unk_262++;
    if (this->unk_26A != 0) {
        switch (this->unk_270) {
            case 1:
                if (this->unk_278 == 0) {
                    this->actionFunc = func_809F43F0;
                } else {
                    this->actionFunc = func_809F44FC;
                }
                break;
            case 2:
                this->unk_274 = 0;
                this->actor.colChkInfo.mass = 0;
                this->unk_264 = (s16)Math_Rand_ZeroFloat(3.0f) + (s16)(this->unk_26A * 0.5f);
                this->actionFunc = func_809F4730;
                break;
            case 3:
                this->unk_274 = 1;
                this->actionFunc = func_809F4730;
                break;
            case 4:
                this->actionFunc = func_809F4E18;
                break;
            case 5:
                this->actionFunc = func_809F5478;
                break;
            case 6:
                this->actionFunc = func_809F4BA4;
                break;
            case 0:
                break;
        }
    }
    if (this->unk_270 != 0) {
        this->unk_270 = 0;
    }
    if (this->unk_260 == 0) {
        this->unk_268++;
        if (this->unk_268 >= 3) {
            this->unk_268 = 0;
            this->unk_260 = (s16)Math_Rand_ZeroFloat(60.0f) + 20;
        }
    }
    this->actionFunc(this, globalCtx);
    Actor_MoveForward(&this->actor);
    func_8002E4B4(globalCtx, &this->actor, 20.0f, 20.0f, 60.0f, 0x1D);
    if (this->unk_26A == 0) {
        func_80062734(&this->targetQuad, &this->unk_228[0], &this->unk_228[1], &this->unk_228[2], &this->unk_228[3]);
        CollisionCheck_SetAC(globalCtx, &globalCtx->colChkCtx, &this->targetQuad.base);
    } else {
        Collider_CylinderUpdate(&this->actor, &this->bodyCyl);
        if (this->unk_218 != 0) {
            CollisionCheck_SetOC(globalCtx, &globalCtx->colChkCtx, &this->bodyCyl.base);
        }
    }
}

s32 func_809F58E4(GlobalContext* globalCtx, s32 limbIndex, Gfx** dList, Vec3f* pos, Vec3s* rot, void* thisx) {
    EnDntNomal* this = THIS;

    if ((limbIndex == 1) || (limbIndex == 3) || (limbIndex == 4) || (limbIndex == 5) || (limbIndex == 6)) {
        OPEN_DISPS(globalCtx->state.gfxCtx, "../z_en_dnt_nomal.c", 0x6C5);
        gDPPipeSync(POLY_OPA_DISP++);
        gDPSetEnvColor(POLY_OPA_DISP++, D_809F5E4C[this->unk_26A - 1].r, D_809F5E4C[this->unk_26A - 1].g,
                       D_809F5E4C[this->unk_26A - 1].b, 255);
        CLOSE_DISPS(globalCtx->state.gfxCtx, (const char*)"../z_en_dnt_nomal.c", 0x6CF);
    }
    return 0;
}

void func_809F59E4(GlobalContext* globalCtx, s32 limbIndex, Gfx** dList, Vec3s* rot, void* thisx) {
    EnDntNomal* this = THIS;
    Vec3f sp18 = { 0.0f, 0.0f, 0.0f };

    if (this->unk_26A == 0) {
        if (limbIndex == 5) {
            Matrix_MultVec3f(&sp18, &this->unk_27C);
        }
    } else if (limbIndex == 7) {
        Matrix_MultVec3f(&sp18, &this->unk_27C);
    }
}

void func_809F5A6C(Actor* thisx, GlobalContext* globalCtx) {
    static void* D_809F5EA0[] = { 0x060027D0, 0x060025D0, 0x06002750 };
    EnDntNomal* this = THIS;
    Vec3f sp60 = { 0.25f, 0.25f, 0.25f };
    s32 pad;

    OPEN_DISPS(globalCtx->state.gfxCtx, "../z_en_dnt_nomal.c", 0x6FE);
    func_80093D18(globalCtx->state.gfxCtx);
    gSPSegment(POLY_OPA_DISP++, 0x08, SEGMENTED_TO_VIRTUAL(D_809F5EA0[this->unk_268]));
    SkelAnime_DrawOpa(globalCtx, this->skelAnime.skeleton, this->skelAnime.limbDrawTbl, func_809F58E4, func_809F59E4,
                      this);
    Matrix_Translate(this->unk_21C.x, this->unk_21C.y, this->unk_21C.z, 0);
    Matrix_Scale(0.01f, 0.01f, 0.01f, 1);
    gDPPipeSync(POLY_OPA_DISP++);
    gDPSetEnvColor(POLY_OPA_DISP++, D_809F5E4C[this->unk_26A - 1].r, D_809F5E4C[this->unk_26A - 1].g,
                   D_809F5E4C[this->unk_26A - 1].b, 255);
    gSPMatrix(POLY_OPA_DISP++, Matrix_NewMtx(globalCtx->state.gfxCtx, "../z_en_dnt_nomal.c", 0x716), 2);
    gSPDisplayList(POLY_OPA_DISP++, D_06001B00);
    CLOSE_DISPS(globalCtx->state.gfxCtx, "../z_en_dnt_nomal.c", 0x719);
    if (this->actionFunc == func_809F49A4) {
        func_80033C30(&this->actor.posRot.pos, &sp60, 0xFF, globalCtx);
    }
}

void func_809F5C98(Actor* thisx, GlobalContext* globalCtx) {
    EnDntNomal* this = THIS;

    OPEN_DISPS(globalCtx->state.gfxCtx, "../z_en_dnt_nomal.c", 0x729);
    func_80093D18(globalCtx->state.gfxCtx);
    SkelAnime_DrawOpa(globalCtx, this->skelAnime.skeleton, this->skelAnime.limbDrawTbl, NULL, func_809F59E4, this);
    Matrix_Translate(this->unk_21C.x, this->unk_21C.y, this->unk_21C.z, 0);
    Matrix_Scale(0.01f, 0.01f, 0.01f, 1);
    gSPMatrix(POLY_OPA_DISP++, Matrix_NewMtx(globalCtx->state.gfxCtx, "../z_en_dnt_nomal.c", 0x738), 2);
    gSPDisplayList(POLY_OPA_DISP++, D_060014E0);
    CLOSE_DISPS(globalCtx->state.gfxCtx, "../z_en_dnt_nomal.c", 0x73B);
}
