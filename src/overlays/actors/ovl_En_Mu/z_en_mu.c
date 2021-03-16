#include "z_en_mu.h"

#define FLAGS 0x00000009

#define THIS ((EnMu*)thisx)

void EnMu_Init(Actor* thisx, GlobalContext* globalCtx);
void EnMu_Destroy(Actor* thisx, GlobalContext* globalCtx);
void EnMu_Update(Actor* thisx, GlobalContext* globalCtx);
void EnMu_Draw(Actor* thisx, GlobalContext* globalCtx);

void EnMu_Pose(Actor* this, GlobalContext* globalCtx);
s32 EnMu_CheckDialogState(GlobalContext* globalCtx, Actor* this);

extern AnimationHeader D_060003F4;
extern FlexSkeletonHeader D_06004F70;

static ColliderCylinderInit D_80AB0BD0 = {
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
    { 100, 70, 0, { 0, 0, 0 } },
};

CollisionCheckInfoInit2 D_80AB0BFC = { 0x00, 0x0000, 0x0000, 0x0000, 0xFF };

const ActorInit En_Mu_InitVars = {
    ACTOR_EN_MU,
    ACTORCAT_NPC,
    FLAGS,
    OBJECT_MU,
    sizeof(EnMu),
    (ActorFunc)EnMu_Init,
    (ActorFunc)EnMu_Destroy,
    (ActorFunc)EnMu_Update,
    (ActorFunc)EnMu_Draw,
};

void EnMu_SetActionFunction(Actor* thisx, GlobalContext* globalCtx) {
    EnMu* this = THIS;
    this->actionFunc = globalCtx;
}

void EnMu_Interact(EnMu* this, GlobalContext* globalCtx) {
    u8 textByteOffset[] = { 0x42, 0x43, 0x3F, 0x41, 0x3E };
    u8 twoPower[] = { 0x01, 0x02, 0x04, 0x08, 0x10 };
    u8 textFlags;
    s32 randomIndex;
    s32 i;

    textFlags = gSaveContext.eventInf[2] & 0x1F;
    gSaveContext.eventInf[2] &= 0xFFE0;
    randomIndex = (globalCtx->state.frames + (s32)(Rand_ZeroOne() * 5.0f)) % 5;

    for (i = 0; i < 5; i++) {

        if ((textFlags & twoPower[randomIndex]) == 0) {
            break;
        }

        if (++randomIndex >= 5) {
            randomIndex = 0;
        }
    }

    if (i == 5) {
        if (this->defFaceReaction == (textByteOffset[randomIndex] | 0x7000)) {
            if (++randomIndex >= 5) {
                randomIndex = 0;
            }
        }
        textFlags = 0;
    }

    textFlags |= twoPower[randomIndex];
    this->defFaceReaction = textByteOffset[randomIndex] | 0x7000;
    textFlags &= 0xFF;
    gSaveContext.eventInf[2] |= textFlags;
}

u16 EnMu_GetFaceReaction(GlobalContext* globalCtx, EnMu* this) {
    u16 faceReaction = Text_GetFaceReaction(globalCtx, this->actor.params + 0x3A);
    if (faceReaction != 0) {
        return faceReaction;
    }
    return this->defFaceReaction;
}

s32 EnMu_CheckDialogState(GlobalContext* globalCtx, Actor* thisx) {
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
            EnMu_Interact(thisx, globalCtx);
            return 0;
        default:
            return 1;
    }
}

void EnMu_Init(Actor* thisx, GlobalContext* globalCtx) {
    EnMu* this = THIS;
    ColliderCylinder* colliderCylinder;
    ActorShape_Init(&this->actor.shape, 0.0f, ActorShadow_DrawCircle, 160.0f);
    SkelAnime_InitFlex(globalCtx, &this->skelAnime, &D_06004F70, &D_060003F4, 0, 0, 0);
    colliderCylinder = &this->collider;
    Collider_InitCylinder(globalCtx, &this->collider);
    Collider_SetCylinder(globalCtx, &this->collider, (Actor*)this, &D_80AB0BD0);
    CollisionCheck_SetInfo2(&this->actor.colChkInfo, NULL, &D_80AB0BFC);
    this->actor.targetMode = 6;
    Actor_SetScale((Actor*)this, 0.01f);
    EnMu_Interact(this, globalCtx);
    EnMu_SetActionFunction(this, EnMu_Pose);
}

void EnMu_Destroy(Actor* thisx, GlobalContext* globalCtx) {
    EnMu* this = THIS;
    SkelAnime_Free(&this->skelAnime, globalCtx);
}

void EnMu_Pose(Actor* thisx, GlobalContext* globalCtx) {
    EnMu* this = THIS;
    func_80034F54(globalCtx, &this->jointTable, &this->morphTable, 0x10);
}

void EnMu_Update(Actor* thisx, GlobalContext* globalCtx) {
    EnMu* this = THIS;
    s32 pad;
    f32 talkDist;
    Vec3s pos;

    pos.x = this->actor.world.pos.x;
    pos.y = this->actor.world.pos.y;
    pos.z = this->actor.world.pos.z;

    this->collider.dim.pos = pos;

    CollisionCheck_SetOC(globalCtx, &globalCtx->colChkCtx, &this->collider);
    SkelAnime_Update(&this->skelAnime);
    Actor_UpdateBgCheckInfo(globalCtx, &this->actor, 0.0f, 0.0f, 0.0f, 4);
    this->actionFunc(this, globalCtx);
    talkDist = this->collider.dim.radius + 30.0f;
    func_800343CC(globalCtx, &this->actor, this->dialogState, talkDist, EnMu_GetFaceReaction, EnMu_CheckDialogState);

    this->actor.focus.pos = this->actor.world.pos;
    this->actor.focus.pos.y += 60.0f;
}

s32 EnMu_OverrideLimbDraw(GlobalContext* globalCtx, s32 limbIndex, s32 arg2, s32 arg3, Vec3s* rot, void* thisx) {
    EnMu* this = THIS;
    if ((limbIndex == 5) || (limbIndex == 6) || (limbIndex == 7) || (limbIndex == 0xB) || (limbIndex == 0xC) ||
        (limbIndex == 0xD) || (limbIndex == 0xE)) {
        rot->y += Math_SinS(this->jointTable[limbIndex]) * 200.0f;
        rot->z += Math_CosS(this->morphTable[limbIndex]) * 200.0f;
    }
    return 0;
}

void EnMu_PostLimbDraw(s32 arg0, s32 arg1, s32 arg2, s32 arg3) {
}

Gfx* EnMu_DisplayListSetColor(GraphicsContext* gfxCtx, u8 r, u8 g, u8 b, u8 a) {
    Gfx* dlist;
    dlist = Graph_Alloc(gfxCtx, 2 * sizeof(Gfx));
    gDPSetEnvColor(dlist, r, g, b, a);
    gSPEndDisplayList(dlist + 1);
    return dlist;
}

void EnMu_Draw(Actor* thisx, GlobalContext* globalCtx) {
    EnMu* this = THIS;

    // 2 sets of 5 colors for each actor in town with different colors
    Color_RGBA8 colors[2][5] = { 0x64, 0x82, 0xEB, 0x00, 0xA0, 0xFA, 0x3C, 0x00, 0x5A, 0x3C, 0x14, 0x00, 0x1E, 0xF0,
                                 0xC8, 0x00, 0x8C, 0x46, 0x14, 0x00, 0x8C, 0x46, 0x14, 0x00, 0x1E, 0xF0, 0xC8, 0x00,
                                 0x5A, 0x3C, 0x14, 0x00, 0xA0, 0xFA, 0x3C, 0x00, 0x64, 0x82, 0xEB, 0x00 }; //?
    u8 D_80AB0C60[] = { 0x08, 0x09, 0x0A, 0x0B, 0x0C };                                                    //?
    u32 i;

    OPEN_DISPS(globalCtx->state.gfxCtx, "../z_en_mu.c", 514);
    Matrix_Translate(-1200.0f, 0.0f, -1400.0f, 1);
    for (i = 0; i != 5; i++) {
        gSPSegment(POLY_OPA_DISP++, D_80AB0C60[i],
                   EnMu_DisplayListSetColor(globalCtx->state.gfxCtx, colors[this->actor.params][i].r,
                                            colors[this->actor.params][i].g, colors[this->actor.params][i].b,
                                            colors[this->actor.params][i].a));
    }
    SkelAnime_DrawFlexOpa(globalCtx, this->skelAnime.skeleton, this->skelAnime.jointTable,
                          (s32)this->skelAnime.dListCount, EnMu_OverrideLimbDraw, EnMu_PostLimbDraw, this);
    CLOSE_DISPS(globalCtx->state.gfxCtx, "../z_en_mu.c", 534);
}
