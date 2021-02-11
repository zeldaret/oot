#include "z_en_mu.h"

#define FLAGS 0x00000009

#define THIS ((EnMu*)thisx)

void EnMu_Init(Actor* thisx, GlobalContext* globalCtx);
void EnMu_Destroy(Actor* thisx, GlobalContext* globalCtx);
void EnMu_Update(Actor* thisx, GlobalContext* globalCtx);
void EnMu_Draw(Actor* thisx, GlobalContext* globalCtx);

void func_80AB0724(Actor* this, GlobalContext* globalCtx);
s32 func_80AB05C4(GlobalContext* globalCtx, Actor* this);

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

s32 D_80AB0BFC[] = { 0x00000000, 0x00000000, 0xFF000000 };

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

//#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Mu/func_80AB0420.s")
void func_80AB0420(Actor* thisx, GlobalContext* globalCtx) {
    EnMu* this = THIS;
    this->actionfunc = globalCtx;
}

//#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Mu/func_80AB0428.s")
void func_80AB0428(EnMu* this, GlobalContext* globalCtx) {
    u8 textByteOffsetArray[] = { 0x42, 0x43, 0x3F, 0x41, 0x3E };
    u8 twoPowerIndexArray[] = { 0x01, 0x02, 0x04, 0x08, 0x10 };
    u8 textPresentedBitFlags;
    s32 index_rand;
    s32 i;

    textPresentedBitFlags = gSaveContext.eventInf[2] & 0x1F;
    gSaveContext.eventInf[2] &= 0xFFE0;
    index_rand = (globalCtx->state.frames + (s32)(Rand_ZeroOne() * 5.0f)) % 5;

    for (i = 0; i < 5; i++) {

        if ((textPresentedBitFlags & twoPowerIndexArray[index_rand]) == 0) {
            break;
        }

        if (++index_rand >= 5) {
            index_rand = 0;
        }
    }

    if (i == 5) {
        if (this->defFaceReaction == (textByteOffsetArray[index_rand] | 0x7000)) {
            if (++index_rand >= 5) {
                index_rand = 0;
            }
        }
        textPresentedBitFlags = 0;
    }

    textPresentedBitFlags |= twoPowerIndexArray[index_rand];
    this->defFaceReaction = textByteOffsetArray[index_rand] | 0x7000;
    textPresentedBitFlags &= 0xFF;
    gSaveContext.eventInf[2] |= textPresentedBitFlags;
}

//#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Mu/func_80AB0584.s")
u16 func_80AB0584(GlobalContext* globalCtx, EnMu* this) {
    u16 faceReaction = Text_GetFaceReaction(globalCtx, this->actor.params + 0x3A);
    if (faceReaction != 0) {
        return faceReaction;
    }
    return this->defFaceReaction;
}

//#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Mu/func_80AB05C4.s")
s32 func_80AB05C4(GlobalContext* globalCtx, Actor* thisx) {
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
            func_80AB0428(thisx, globalCtx);
            return 0;
        default:
            return 1;
    }
}

//#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Mu/EnMu_Init.s")
void EnMu_Init(Actor* thisx, GlobalContext* globalCtx) {
    EnMu* this = THIS;
    ColliderCylinder* sp34;
    ActorShape_Init(&this->actor.shape, 0.0f, ActorShadow_DrawCircle, 160.0f);
    SkelAnime_InitFlex(globalCtx, &this->skelAnime, &D_06004F70, &D_060003F4, 0, 0, 0);
    sp34 = &this->collider;
    Collider_InitCylinder(globalCtx, &this->collider);
    Collider_SetCylinder(globalCtx, &this->collider, (Actor*)this, &D_80AB0BD0);
    CollisionCheck_SetInfo2(&this->actor.colChkInfo, NULL, D_80AB0BFC);
    this->actor.targetMode = 6;
    Actor_SetScale((Actor*)this, 0.01f);
    func_80AB0428(this, globalCtx);
    func_80AB0420(this, func_80AB0724);
}

//#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Mu/EnMu_Destroy.s")
void EnMu_Destroy(Actor* thisx, GlobalContext* globalCtx) {
    EnMu* this = THIS;
    SkelAnime_Free(&this->skelAnime, globalCtx);
}

//#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Mu/func_80AB0724.s")
void func_80AB0724(Actor* thisx, GlobalContext* globalCtx) {
    EnMu* this = THIS;
    func_80034F54(globalCtx, &this->unk_20A, &this->unk_22A, 0x10);
}

//#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Mu/EnMu_Update.s")
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
    this->actionfunc(this, globalCtx);
    talkDist = this->collider.dim.radius + 30.0f;
    func_800343CC(globalCtx, &this->actor, this->unk_1E0, talkDist, func_80AB0584, func_80AB05C4);

    this->actor.focus.pos = this->actor.world.pos;
    this->actor.focus.pos.y += 60.0f;
}

//#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Mu/func_80AB08A4.s")
// EnMu_OverrideLimbDraw
s32 func_80AB08A4(GlobalContext* globalCtx, s32 limbIndex, s32 arg2, s32 arg3, Vec3s* rot, void* thisx) {
    EnMu* this = THIS;

    if ((limbIndex == 5) || (limbIndex == 6) || (limbIndex == 7) || (limbIndex == 0xB) || (limbIndex == 0xC) ||
        (limbIndex == 0xD) || (limbIndex == 0xE)) {
        rot->y += Math_SinS(this->unk_20A[limbIndex]) * 200.0f;
        rot->z += Math_CosS(this->unk_22A[limbIndex]) * 200.0f;
    }
    return 0;
}

//#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Mu/func_80AB0994.s")
// EnMu_PostLimbDraw
void func_80AB0994(s32 arg0, s32 arg1, s32 arg2, s32 arg3) {
}

//#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Mu/func_80AB09A8.s")
Gfx* func_80AB09A8(GraphicsContext* gfxCtx, u8 r, u8 g, u8 b, u8 a) {
    Gfx* dlist;

    dlist = Graph_Alloc(gfxCtx, 2 * sizeof(Gfx));
    gDPSetEnvColor(dlist, r, g, b, a);
    gSPEndDisplayList(dlist + 1);

    return dlist;
}

/*s32 D_80AB0C38[] = { 0x6482EB00, 0xA0FA3C00, 0x5A3C1400, 0x1EF0C800, 0x8C461400,
                     0x8C461400, 0x1EF0C800, 0x5A3C1400, 0xA0FA3C00, 0x6482EB00 };*/
// s32 D_80AB0C60[] = { 0x08090A0B, 0x0C000000, 0x00000000, 0x00000000 };
//#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Mu/EnMu_Draw.s")
void EnMu_Draw(Actor* thisx, GlobalContext* globalCtx) {
    EnMu* this = THIS;

    s32 D_80AB0C38[] = { 0x6482EB00, 0xA0FA3C00, 0x5A3C1400, 0x1EF0C800, 0x8C461400,
                         0x8C461400, 0x1EF0C800, 0x5A3C1400, 0xA0FA3C00, 0x6482EB00 }; //?
    u8 D_80AB0C60[] = { 0x08, 0x09, 0x0A, 0x0B, 0x0C };                               //?
    Color_RGBA8* temp_v0;
    u32 phi_s0;
    u8* phi_s1;

    OPEN_DISPS(globalCtx->state.gfxCtx, "../z_en_mu.c", 514);
    Matrix_Translate(-1200.0f, 0.0f, -1400.0f, 1);
    phi_s1 = &D_80AB0C60;
    for (phi_s0 = 0; phi_s0 != 0x14; phi_s0 += 4) {
        temp_v0 = &D_80AB0C38 + (this->actor.params * 0x14) + phi_s0;
        gSPSegment(POLY_OPA_DISP++, 0x00,
                   func_80AB09A8(globalCtx->state.gfxCtx, temp_v0->r, temp_v0->g, temp_v0->b, temp_v0->a));
        phi_s1++;
    }
    SkelAnime_DrawFlexOpa(globalCtx, this->skelAnime.skeleton, this->skelAnime.jointTable,
                          (s32)this->skelAnime.dListCount, func_80AB08A4, func_80AB0994, this);
    CLOSE_DISPS(globalCtx->state.gfxCtx, "../z_en_mu.c", 534);
}