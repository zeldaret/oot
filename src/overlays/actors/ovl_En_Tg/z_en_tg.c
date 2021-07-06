/*
 * File: z_en_tg.c
 * Overlay: ovl_En_Tg
 * Description: Honey & Darling
 */

#include "z_en_tg.h"

#define FLAGS 0x00000009

#define THIS ((EnTg*)thisx)

void EnTg_Init(Actor* thisx, GlobalContext* globalCtx);
void EnTg_Destroy(Actor* thisx, GlobalContext* globalCtx);
void EnTg_Update(Actor* thisx, GlobalContext* globalCtx);
void EnTg_Draw(Actor* thisx, GlobalContext* globalCtx);

void EnTg_SpinIfNotTalking(EnTg* this, GlobalContext* globalCtx);

extern AnimationHeader D_06005040;
extern FlexSkeletonHeader D_0600AE40;

static ColliderCylinderInit sCylinderInit = {
    {
        COLTYPE_NONE,
        AT_NONE,
        AC_NONE,
        OC1_ON | OC1_TYPE_ALL,
        OC2_TYPE_2,
        COLSHAPE_CYLINDER,
    },
    {
        ELEMTYPE_UNK0,
        { 0x00000000, 0x00, 0x00 },
        { 0x00000000, 0x00, 0x00 },
        TOUCH_NONE,
        BUMP_NONE,
        OCELEM_ON,
    },
    { 20, 64, 0, { 0, 0, 0 } },
};

static CollisionCheckInfoInit2 sColChkInfoInit = { 0, 0, 0, 0, 0xFF };

const ActorInit En_Tg_InitVars = {
    ACTOR_EN_TG,
    ACTORCAT_NPC,
    FLAGS,
    OBJECT_MU,
    sizeof(EnTg),
    (ActorFunc)EnTg_Init,
    (ActorFunc)EnTg_Destroy,
    (ActorFunc)EnTg_Update,
    (ActorFunc)EnTg_Draw,
};

u16 EnTg_GetTextId(GlobalContext* globalCtx, Actor* thisx) {
    EnTg* this = THIS;
    u16 temp;
    u32 phi;

    temp = Text_GetFaceReaction(globalCtx, 0x24);
    if (temp != 0) {
        return temp;
    }
    if (globalCtx->sceneNum == SCENE_SPOT01) {
        if (this->timesSpokenTo % 2 != 0) {
            phi = 0x5089;
        } else {
            phi = 0x508A;
        }
        return phi;
    } else {
        if (this->timesSpokenTo % 2 != 0) {
            phi = 0x7025;
        } else {
            phi = 0x7026;
        }
        return phi;
    }
}

s16 EnTg_OnTextComplete(GlobalContext* globalCtx, Actor* thisx) {
    EnTg* this = THIS;

    switch (func_8010BDBC(&globalCtx->msgCtx)) {
        case 0:
        case 1:
        case 3:
        case 4:
        case 5:
        case 6:
        case 7:
        case 8:
        case 9:
            return 1;
        case 2:
            switch (this->actor.textId) {
                case 0x5089:
                case 0x508A:
                    this->timesSpokenTo++;
                    break;
                case 0x7025:
                case 0x7026:
                    this->actor.params ^= 1;
                    this->timesSpokenTo++;
                    break;
            }
            return 0;
        default:
            return 1;
    }
}

void EnTg_Init(Actor* thisx, GlobalContext* globalCtx) {
    EnTg* this = THIS;

    ActorShape_Init(&this->actor.shape, 0.0f, ActorShadow_DrawCircle, 28.0f);
    SkelAnime_InitFlex(globalCtx, &this->skelAnime, &D_0600AE40, &D_06005040, NULL, NULL, 0);
    Collider_InitCylinder(globalCtx, &this->collider);
    Collider_SetCylinder(globalCtx, &this->collider, &this->actor, &sCylinderInit);
    CollisionCheck_SetInfo2(&this->actor.colChkInfo, NULL, &sColChkInfoInit);
    this->actor.targetMode = 6;
    Actor_SetScale(&this->actor, 0.01f);
    this->timesSpokenTo = globalCtx->state.frames % 2;
    this->actionFunc = EnTg_SpinIfNotTalking;
}

void EnTg_Destroy(Actor* thisx, GlobalContext* globalCtx) {
    EnTg* this = THIS;

    SkelAnime_Free(&this->skelAnime, globalCtx);
    Collider_DestroyCylinder(globalCtx, &this->collider);
}

void EnTg_SpinIfNotTalking(EnTg* this, GlobalContext* globalCtx) {
    if (this->isTalking == 0) {
        this->actor.shape.rot.y += 0x800;
    }
}

void EnTg_Update(Actor* thisx, GlobalContext* globalCtx) {
    EnTg* this = THIS;
    s32 pad;
    f32 temp;
    Vec3s sp2C;

    sp2C.x = this->actor.world.pos.x;
    sp2C.y = this->actor.world.pos.y;
    sp2C.z = (s16)this->actor.world.pos.z + 3;
    this->collider.dim.pos = sp2C;
    CollisionCheck_SetOC(globalCtx, &globalCtx->colChkCtx, &this->collider.base);
    SkelAnime_Update(&this->skelAnime);
    Actor_UpdateBgCheckInfo(globalCtx, &this->actor, 0.0f, 0.0f, 0.0f, 4);
    this->actionFunc(this, globalCtx);
    temp = this->collider.dim.radius + 30.0f;
    func_800343CC(globalCtx, &this->actor, &this->isTalking, temp, EnTg_GetTextId, EnTg_OnTextComplete);
}

s32 EnTg_OverrideLimbDrawOpa(GlobalContext* globalCtx, s32 limbIndex, Gfx** dList, Vec3f* pos, Vec3s* rot,
                             void* thisx) {
    return 0;
}

void EnTg_PostLimbDrawOpa(GlobalContext* globalCtx, s32 limbIndex, Gfx** dList, Vec3s* rot, void* thisx) {
    EnTg* this = (EnTg*)thisx;
    Vec3f D_80B18968 = { 0.0, 800.0, 0.0 };
    if (limbIndex == 9) {
        Matrix_MultVec3f(&D_80B18968, &this->actor.focus.pos);
    }
}

Gfx* func_80B18778(GraphicsContext* gfxCtx, u8 r, u8 g, u8 b, u8 a) {
    Gfx* displayList;

    displayList = Graph_Alloc(gfxCtx, 2 * sizeof(Gfx));
    gDPSetEnvColor(displayList, r, g, b, a);
    gSPEndDisplayList(displayList + 1);
    return displayList;
}

void EnTg_Draw(Actor* thisx, GlobalContext* globalCtx) {
    EnTg* this = THIS;

    OPEN_DISPS(globalCtx->state.gfxCtx, "../z_en_tg.c", 462);
    Matrix_Translate(0.0f, 0.0f, -560.0f, MTXMODE_APPLY);
    gSPSegment(POLY_OPA_DISP++, 0x08, func_80B18778(globalCtx->state.gfxCtx, 0, 0x32, 0xA0, 0));
    gSPSegment(POLY_OPA_DISP++, 0x09, func_80B18778(globalCtx->state.gfxCtx, 0xFF, 0xFF, 0xFF, 0));
    SkelAnime_DrawFlexOpa(globalCtx, this->skelAnime.skeleton, this->skelAnime.jointTable, this->skelAnime.dListCount,
                          EnTg_OverrideLimbDrawOpa, EnTg_PostLimbDrawOpa, this);
    CLOSE_DISPS(globalCtx->state.gfxCtx, "../z_en_tg.c", 480);
}
