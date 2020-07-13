#include "z_en_poh.h"

#define FLAGS 0x00001015

#define THIS ((EnPoh*)thisx)

void EnPoh_Init(Actor* thisx, GlobalContext* globalCtx);
void EnPoh_Destroy(Actor* thisx, GlobalContext* globalCtx);
void EnPoh_Update(Actor* thisx, GlobalContext* globalCtx);

void func_80AE0A1C(Actor* thisx, GlobalContext* globalCtx); // update
void func_80AE1600(Actor* thisx, GlobalContext* globalCtx); // update

void func_80AE0EE4(Actor* thisx, GlobalContext* globalCtx); // draw
void func_80AE1148(Actor* thisx, GlobalContext* globalCtx); // draw
void func_80AE1654(Actor* thisx, GlobalContext* globalCtx); // draw

void func_80ADEAC4(EnPoh* this, GlobalContext* globalCtx);
void func_80ADEB80(EnPoh* this, GlobalContext* globalCtx);
void func_80ADEC9C(EnPoh* this, GlobalContext* globalCtx);
void func_80ADEDFC(EnPoh* this, GlobalContext* globalCtx);
void func_80ADEECC(EnPoh* this, GlobalContext* globalCtx);
void func_80ADF894(EnPoh* this, GlobalContext* globalCtx);
void func_80ADF0B8(EnPoh* this, GlobalContext* globalCtx);
void func_80ADEF38(EnPoh* this, GlobalContext* globalCtx);
void func_80ADF15C(EnPoh* this, GlobalContext* globalCtx);
void func_80ADF574(EnPoh* this, GlobalContext* globalCtx);
void func_80ADF5E0(EnPoh* this, GlobalContext* globalCtx);
void func_80ADF660(EnPoh* this, GlobalContext* globalCtx);
void func_80ADF77C(EnPoh* this, GlobalContext* globalCtx);
void func_80ADF994(EnPoh* this, GlobalContext* globalCtx);
void func_80ADFE28(EnPoh* this, GlobalContext* globalCtx);
void func_80ADFE80(EnPoh* this, GlobalContext* globalCtx);
void func_80AE009C(EnPoh* this, GlobalContext* globalCtx);
void func_80AE00DC(EnPoh* this, GlobalContext* globalCtx);
void func_80AE0204(EnPoh* this, GlobalContext* globalCtx);

s16 D_80AE1A50 = 0;

const ActorInit En_Poh_InitVars = {
    ACTOR_EN_POH,
    ACTORTYPE_ENEMY,
    FLAGS,
    OBJECT_GAMEPLAY_KEEP,
    sizeof(EnPoh),
    (ActorFunc)EnPoh_Init,
    (ActorFunc)EnPoh_Destroy,
    (ActorFunc)EnPoh_Update,
    NULL,
};

ColliderCylinderInit D_80AE1A74 = {
    { COLTYPE_UNK3, 0x00, 0x09, 0x39, 0x10, COLSHAPE_CYLINDER },
    { 0x00, { 0x00000000, 0x00, 0x00 }, { 0xFFCFFFFF, 0x00, 0x00 }, 0x00, 0x01, 0x01 },
    { 20, 40, 20, { 0, 0, 0 } },
};

ColliderJntSphItemInit D_80AE1AA0[1] = {
    {
        { 0x00, { 0xFFCFFFFF, 0x00, 0x08 }, { 0x00000000, 0x00, 0x00 }, 0x01, 0x00, 0x01 },
        { 18, { { 0, 1400, 0 }, 10 }, 100 },
    },
};

ColliderJntSphInit D_80AE1AC4 = {
    { COLTYPE_UNK3, 0x11, 0x09, 0x39, 0x10, COLSHAPE_JNTSPH },
    1, D_80AE1AA0,
};

CollisionCheckInfoInit D_80AE1AD4 = {0x04, 0x0019, 0x0032, 0x28};

DamageTable D_80AE1ADC = {
    0x00, 0x02, 0x01, 0x02, 0x11, 0x02, 0x02, 0x12, 0x01, 0x02, 0x04, 0x02, 0x02, 0x02, 0x02, 0x02, 
    0x02, 0x00, 0x00, 0x00, 0x00, 0x00, 0x01, 0x04, 0x02, 0x02, 0x08, 0x04, 0x00, 0x00, 0x04, 0x00,
};

UnkEnPohStruct D_80AE1AFC[2] = {
    { 0xFF, 0xAA, 0xFF, 0x64, 0x00, 0x96, 0x12, 0x05, 0xF8, 0x060015B0, 0x06000A60, 0x060004EC, 0x060006E0, 0x06002D28, 0x06002608, 0x06003850 },
    { 0xFF, 0xFF, 0xAA, 0x00, 0x96, 0x00, 0x09, 0x01, 0xF4, 0x06001440, 0x060009DC, 0x06000570, 0x06000708, 0x060045A0, 0x06005220, 0x06001C90 },
};

Color_RGBA8 D_80AE1B4C = { 0x4B, 0x14, 0x19, 0xFF };
Color_RGBA8 D_80AE1B50 = { 0x50, 0x6E, 0x5A, 0xFF };
Color_RGBA8 D_80AE1B54 = { 0x5A, 0x55, 0x32, 0xFF };
Color_RGBA8 D_80AE1B58 = { 0x64, 0x5A, 0x64, 0xFF };

InitChainEntry D_80AE1B5C[1] = {
    ICHAIN_F32(unk_4C, 3200, ICHAIN_STOP),
};

Vec3f D_80AE1B60 = {0.0f, 3.0f, 0.0f};
Vec3f D_80AE1B6C = {0.0f, 0.0f, 0.0f};

extern AnimationHeader D_060001A8;
extern AnimationHeader D_0600020C;
extern AnimationHeader D_060004EC;
extern AnimationHeader D_06000570;
extern AnimationHeader D_06000FE4;
extern AnimationHeader D_060011C4;

extern SkeletonHeader D_06006F90;
extern AnimationHeader D_060009DC;
extern SkeletonHeader D_060050D0;
extern AnimationHeader D_06000A60;

extern Gfx D_06004638[];

extern Gfx D_06004498[];
extern Gfx D_06004530[];
extern Gfx D_06004530[];
extern Gfx D_06004498[];
extern Gfx D_06004498[];
extern Gfx D_06004530[];

//#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Poh/EnPoh_Init.s")
void EnPoh_Init(Actor* thisx, GlobalContext* globalCtx) {
    s32 pad;
    Actor* collectible;
    EnPoh* this;

    this = THIS;
    Actor_ProcessInitChain(&this->actor, D_80AE1B5C);
    ActorShape_Init(&this->actor.shape, 0.0f, ActorShadow_DrawFunc_Circle, 30.0f);
    Collider_InitJntSph(globalCtx, &this->colliderSph);
    Collider_SetJntSph(globalCtx, &this->colliderSph, &this->actor, &D_80AE1AC4, &this->colliderSphItem);
    this->colliderSph.list[0].dim.worldSphere.radius = 0;
    this->colliderSph.list[0].dim.worldSphere.center.x = this->actor.posRot.pos.x;
    this->colliderSph.list[0].dim.worldSphere.center.y = this->actor.posRot.pos.y;
    this->colliderSph.list[0].dim.worldSphere.center.z = this->actor.posRot.pos.z;
    Collider_InitCylinder(globalCtx, &this->colliderCyl);
    Collider_SetCylinder(globalCtx, &this->colliderCyl, &this->actor, &D_80AE1A74);
    func_80061ED4(&this->actor.colChkInfo, &D_80AE1ADC, &D_80AE1AD4);
    this->unk_194 = 0;
    this->unk_195 = 0x20;
    this->unk_19A = Math_Rand_S16Offset(0x2BC, 0x12C);
    this->light = Lights_Insert(globalCtx, &globalCtx->lightCtx, &this->lightInfo);
    Lights_InitType2PositionalLight(&this->lightInfo, this->actor.initPosRot.pos.x, this->actor.initPosRot.pos.y, this->actor.initPosRot.pos.z, 0xFF, 0xFF, 0xFF, 0);
    if (this->actor.params >= 4) {
        this->actor.params = 0;
    }
    if (this->actor.params == 1) {
        D_80AE1A50++;
        if (D_80AE1A50 >= 3) {
            Actor_Kill(&this->actor);
        } else {
            collectible = Item_DropCollectible(globalCtx, &this->actor.posRot.pos, 0x4001);
            if (collectible != NULL) {
                collectible->speedXZ = 0.0f;
            }
        }
    } else if (this->actor.params == 3) {
        if (Flags_GetSwitch(globalCtx, 0x28) || Flags_GetSwitch(globalCtx, 0x09)) {
            Actor_Kill(&this->actor);
        } else {
            Flags_SetSwitch(globalCtx, 0x28);
        }
    } else {
        if (this->actor.params == 2) {
            if (Flags_GetSwitch(globalCtx, 0x29) || Flags_GetSwitch(globalCtx, 0x09)) {
                Actor_Kill(&this->actor);
            } else {
                Flags_SetSwitch(globalCtx, 0x29);
            }
        }
    }
    if (this->actor.params < 2) {
        this->objectIdx = Object_GetIndex(&globalCtx->objectCtx, 9);
        this->unk_197 = 0;
        this->actor.naviEnemyId = 0x44;
    } else {
        this->objectIdx = Object_GetIndex(&globalCtx->objectCtx, 0x6E);
        this->unk_197 = 1;
        this->actor.naviEnemyId = 0x43;
    }
    this->unk_2A4 = &D_80AE1AFC[this->unk_197];
    if (this->objectIdx < 0) {
        Actor_Kill(&this->actor);
    }
}

//#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Poh/EnPoh_Destroy.s")
void EnPoh_Destroy(Actor* thisx, GlobalContext* globalCtx) {
    EnPoh* this = THIS;

    Lights_Remove(globalCtx, &globalCtx->lightCtx, this->light);
    Collider_DestroyJntSph(globalCtx, &this->colliderSph);
    Collider_DestroyCylinder(globalCtx, &this->colliderCyl);
    if (this->actor.params == 1) {
        D_80AE1A50--;
    }
}

//#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Poh/func_80ADE114.s")
void func_80ADE114(EnPoh* this) {
    SkelAnime_ChangeAnimDefaultRepeat(&this->skelAnime, this->unk_2A4->unk_C);
    this->unk_198 = Math_Rand_S16Offset(2, 3);
    this->actionFunc = func_80ADEAC4;
    this->actor.speedXZ = 0.0f;
}

//#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Poh/func_80ADE16C.s")
void func_80ADE16C(EnPoh* this) {
    SkelAnime_ChangeAnimDefaultRepeat(&this->skelAnime, this->unk_2A4->unk_10);
    this->unk_198 = Math_Rand_S16Offset(15, 3);
    this->actionFunc = func_80ADEB80;
}

//#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Poh/func_80ADE1BC.s")
// Need to figure out animation headers
void func_80ADE1BC(EnPoh* this) {
    SkelAnime_ChangeAnimDefaultRepeat(&this->skelAnime, this->unk_2A4->unk_10);
    this->actionFunc = func_80ADEC9C;
    this->unk_198 = 0;
    this->actor.speedXZ = 2.0f;
}

//#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Poh/func_80ADE20C.s")
void func_80ADE20C(EnPoh* this) {
    if (this->unk_197 == 0) {
        SkelAnime_ChangeAnimTransitionRepeat(&this->skelAnime, &D_060001A8, -6.0f);
    } else {
        SkelAnime_ChangeAnimDefaultRepeat(&this->skelAnime, &D_0600020C);
    }
    this->unk_198 = 0xC;
    this->actor.speedXZ = 0.0f;
    Audio_PlayActorSound2(&this->actor, NA_SE_EN_PO_LAUGH);
    this->actionFunc = func_80ADEDFC;
}

//#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Poh/func_80ADE28C.s")
void func_80ADE28C(EnPoh* this) {
    if (this->unk_197 == 0) {
        SkelAnime_ChangeAnimTransitionStop(&this->skelAnime, &D_060004EC, -6.0f);
    } else {
        SkelAnime_ChangeAnimDefaultStop(&this->skelAnime, &D_06000570);
    }
    if (this->colliderCyl.body.acHitItem->toucher.flags & 0x0001F824) {
        this->actor.posRot.rot.y = this->colliderCyl.base.ac->posRot.rot.y;
    } else {
        this->actor.posRot.rot.y = func_8002DA78(&this->actor, this->colliderCyl.base.ac) + 0x8000;
    }
    this->colliderCyl.base.acFlags &= 0xFFFE;
    this->actor.speedXZ = 5.0f;
    func_8003426C(&this->actor, 0x4000, 0xFF, 0, 0x10);
    this->actionFunc = func_80ADEECC;
}

//#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Poh/func_80ADE368.s")
void func_80ADE368(EnPoh* this) {
    SkelAnime_ChangeAnimTransitionRepeat(&this->skelAnime, this->unk_2A4->unk_18, -5.0f);
    this->actor.speedXZ = 5.0f;
    this->actor.posRot.rot.y = this->actor.shape.rot.y + 0x8000;
    this->colliderCyl.base.acFlags |= 1;
    this->unk_198 = 0xC8;
    this->actionFunc = func_80ADF894;
}

//#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Poh/func_80ADE3DC.s")
void func_80ADE3DC(EnPoh* this) {
    this->unk_29D = 0;
    this->actor.flags &= ~1;
    if (this->unk_197 == 0) {
        SkelAnime_ChangeAnimPlaybackStop(&this->skelAnime, &D_060011C4, 0.0f);
        this->actionFunc = func_80ADEF38;
    } else {
        SkelAnime_ChangeAnimPlaybackStop(&this->skelAnime, &D_06000FE4, 1.0f);
        this->actor.posRot.pos.y = this->actor.initPosRot.pos.y + 20.0f;
        Audio_PlayActorSound2(this, NA_SE_EN_PO_LAUGH);
        Audio_PlayActorSound2(this, NA_SE_EN_PO_APPEAR);
        this->actionFunc = func_80ADF0B8;
    }
}

//#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Poh/func_80ADE48C.s")
void func_80ADE48C(EnPoh* this) {
    this->actor.speedXZ = 0.0f;
    this->actor.posRot.rot.y = this->actor.shape.rot.y;
    this->unk_198 = 0;
    this->actor.naviEnemyId = 0xFF;
    this->actor.flags &= ~1;
    this->actionFunc = func_80ADF15C;
}

//#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Poh/func_80ADE4C8.s")
void func_80ADE4C8(EnPoh* this) {
    SkelAnime_ChangeAnimDefaultStop(&this->skelAnime, this->unk_2A4->unk_10);
    this->actionFunc = func_80ADF574;
    this->actor.speedXZ = -5.0f;
}

//#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Poh/func_80ADE514.s")
void func_80ADE514(EnPoh* this) {
    SkelAnime_ChangeAnimDefaultRepeat(&this->skelAnime, this->unk_2A4->unk_C);
    this->unk_19C = this->actor.posRot.rot.y + 0x8000;
    this->actionFunc = func_80ADF5E0;
    this->actor.speedXZ = 0.0f;
}

//#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Poh/func_80ADE56C.s")
void func_80ADE56C(EnPoh* this) {
    this->unk_194 = 0x20;
    this->actor.speedXZ = 0.0f;
    this->actor.posRot.rot.y = this->actor.shape.rot.y;
    Audio_PlayActorSound2(&this->actor, NA_SE_EN_PO_DISAPPEAR);
    Audio_PlayActorSound2(&this->actor, NA_SE_EN_PO_LAUGH);
    this->actionFunc = func_80ADF660;
}

//#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Poh/func_80ADE5C4.s")
void func_80ADE5C4(EnPoh* this) {
    this->unk_194 = 0;
    this->actor.speedXZ = 0.0f;
    Audio_PlayActorSound2(&this->actor, NA_SE_EN_PO_APPEAR);
    Audio_PlayActorSound2(&this->actor, NA_SE_EN_PO_LAUGH);
    this->actionFunc = func_80ADF77C;
}

//#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Poh/func_80ADE610.s")
void func_80ADE610(EnPoh* this, GlobalContext* globalCtx) {
    this->actor.update = func_80AE1600;
    this->actor.draw = func_80AE1654;
    this->actor.shape.shadowDrawFunc = NULL;
    Actor_SetScale(this, 0.009999999776482582f);
    this->actor.flags |= 0x10;
    this->actor.gravity = -1.0f;
    this->actor.shape.unk_08 = 1500.0f;
    this->actor.posRot.pos.y -= 15.0f;
    if (this->unk_197 != 1) {
        this->actor.shape.rot.x = -0x8000;
    }
    Actor_ChangeType(globalCtx, &globalCtx->actorCtx, &this->actor, 8);
    this->unk_198 = 0x3C;
    this->actionFunc = func_80ADF994;
}

//#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Poh/func_80ADE6D4.s")
void func_80ADE6D4(EnPoh* this) {
    Lights_InitType0PositionalLight(&this->lightInfo, this->actor.posRot.pos.x, this->actor.posRot.pos.y, this->actor.posRot.pos.z, 0, 0, 0, 0);
    this->unk_19A = 0;
    this->actor.shape.rot.y = 0;
    this->unk_29A = 0;
    this->unk_29D = 0;
    this->actor.shape.unk_08 = 0.0f;
    this->actor.gravity = 0.0f;
    this->actor.velocity.y = 0.0f;
    if (this->actor.params >= 2) {
        this->unk_29B = 0xC8;
        this->unk_29C = 0;
    } else {
        this->unk_29B = 0;
        this->unk_29C = 0xC8;
    }
    this->actor.scale.x = 0.0f;
    this->actor.scale.y = 0.0f;
    this->actor.shape.rot.x = 0;
    this->actor.initPosRot.pos.y = this->actor.posRot.pos.y;
    Audio_PlayActorSound2(&this->actor, NA_SE_EV_METAL_BOX_BOUND);
    this->actionFunc = func_80ADFE28;
}

//#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Poh/func_80ADE7C0.s")
void func_80ADE7C0(EnPoh* this, GlobalContext* globalCtx) {
    this->actor.initPosRot.pos.y = this->actor.posRot.pos.y;
    Actor_SetHeight(&this->actor, -10.0f);
    this->colliderCyl.dim.radius = 0xD;
    this->colliderCyl.dim.height = 0x1E;
    this->colliderCyl.dim.yShift = 0;
    this->colliderCyl.dim.pos.x = this->actor.posRot.pos.x;
    this->colliderCyl.dim.pos.y = this->actor.posRot.pos.y - 20.0f;
    this->colliderCyl.dim.pos.z = this->actor.posRot.pos.z;
    this->colliderCyl.base.maskA = 9;
    if (this->actor.params == 3 || this->actor.params == 2) {
        if (CHECK_QUEST_ITEM(QUEST_SONG_SUN)) {
            // Did you try to play the  Sun's Song?
            this->actor.textId = 0x5000;
        } else if (!Flags_GetSwitch(globalCtx, 0xA) && !Flags_GetSwitch(globalCtx, 0xB)) {
            // Oh, what? You're not one of Ganondorf's men, are you?
            this->actor.textId = 0x500F;
        } else if ((this->actor.params == 3 && Flags_GetSwitch(globalCtx, 0xA)) || 
                    (this->actor.params == 2 && Flags_GetSwitch(globalCtx, 0xB))) {
            // What? You again? Somehow, you remind me of Princess Zelda. ince you seem to have some
            // connection with the Royal Family, I will tell you a little more of our story.
            this->actor.textId = 0x5013;
        } else {
            // What? You again? Somehow, you remind me of Princess Zelda. ince you seem to have some
            // connection with the Royal Family, I will tell you a little more of our story.
            // ... [ more story ] ...
            this->actor.textId = 0x5012;
        }
    } else {
        // You defeated Poe the ghost! Do you want to catch it in a bottle?
        this->actor.textId = 0x5005;
    }
    this->unk_198 = 0xC8;
    this->unk_195 = 0x20;
    this->actor.flags |= 1;
    this->actionFunc = func_80ADFE80;
}

//#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Poh/func_80ADE950.s")
void func_80ADE950(EnPoh* this, s32 arg1) {
    if (arg1) {
        func_800F8A44(&this->actor.projectedPos, 0x31E8);
        Audio_PlayActorSound2(&this->actor, NA_SE_EN_PO_LAUGH);
    }
    this->actionFunc = func_80AE009C;
}

//#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Poh/func_80ADE998.s")
void func_80ADE998(EnPoh* this) {
    this->actionFunc = func_80AE00DC;
    this->actor.initPosRot.pos.y = this->actor.posRot.pos.y - 15.0f;
}

//#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Poh/func_80ADE9BC.s")
void func_80ADE9BC(EnPoh* this) {
    this->actionFunc = func_80AE0204;
}

//#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Poh/func_80ADE9CC.s")
void func_80ADE9CC(EnPoh* this, GlobalContext* globalCtx) {
    Player * player = PLAYER;
    
    Math_ApproxF(&this->actor.posRot.pos.y, player->actor.posRot.pos.y, 1.0f);
    this->actor.posRot.pos.y += 2.5f * Math_Sins(this->unk_195 * 0x800);
    if (this->unk_195 != 0) {
        this->unk_195 -= 1;
    }
    if (this->unk_195 == 0) {
        this->unk_195 = 0x20;
    }
}

//#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Poh/func_80ADEA5C.s")
void func_80ADEA5C(EnPoh* this) {
    if (func_8002DBB0(&this->actor, &this->actor.initPosRot.pos) > 400.0f) {
        this->unk_19C = func_8002DAC0(&this->actor, &this->actor.initPosRot.pos);
    }
    Math_ApproxUpdateScaledS(&this->actor.posRot.rot.y, this->unk_19C, 0x71C);
}

//#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Poh/func_80ADEAC4.s")
void func_80ADEAC4(EnPoh* this, GlobalContext* globalCtx) {
    SkelAnime_FrameUpdateMatrix(&this->skelAnime);
    if (func_800A56C8(&this->skelAnime, 0.0f) != 0 && this->unk_198 != 0) {
        this->unk_198--;
    }
    func_80ADE9CC(this, globalCtx);
    if (this->actor.xzDistFromLink < 200.0f) {
        func_80ADE1BC(this);
    } else if (this->unk_198 == 0) {
        func_80ADE16C(this);
    }
    if (this->unk_29D == 0xFF) {
        func_8002F974(this, 0x3071);
    }
}

//#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Poh/func_80ADEB80.s")
void func_80ADEB80(EnPoh* this, GlobalContext* globalCtx) {
    SkelAnime_FrameUpdateMatrix(&this->skelAnime);
    Math_ApproxF(&this->actor.speedXZ, 1.0f, 0.20000000298023224f);
    if (func_800A56C8(&this->skelAnime, 0.0f) != 0 && this->unk_198 != 0) {
        this->unk_198--;
    }
    func_80ADEA5C(this);
    func_80ADE9CC(this, globalCtx);
    if (this->actor.xzDistFromLink < 200.0f && this->unk_198 < 0x13) {
        func_80ADE1BC(this);
    } else if (this->unk_198 == 0) {
        if (Math_Rand_ZeroOne() < 0.10000000149011612f) {
            func_80ADE514(this);
        } else {
            func_80ADE114(this);
        }
    }
    if (this->unk_29D == 0xFF) {
        func_8002F974(&this->actor, 0x3071);
    }
}

//#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Poh/func_80ADEC9C.s")
void func_80ADEC9C(EnPoh* this, GlobalContext* globalCtx) {
    Player* player;
    s16 facingDiff;

    player = PLAYER;
    SkelAnime_FrameUpdateMatrix(&this->skelAnime);
    if (this->unk_198 != 0) {
        this->unk_198--;
    }
    facingDiff = this->actor.yawTowardsLink - player->actor.shape.rot.y;
    if (facingDiff >= 0x3001) {
        Math_ApproxUpdateScaledS(&this->actor.posRot.rot.y, this->actor.yawTowardsLink + 0x3000, 0x71C);
    } else if (facingDiff < -0x3000) {
        Math_ApproxUpdateScaledS(&this->actor.posRot.rot.y, this->actor.yawTowardsLink - 0x3000, 0x71C);
    } else {
        Math_ApproxUpdateScaledS(&this->actor.posRot.rot.y, this->actor.yawTowardsLink, 0x71C);
    }
    func_80ADE9CC(this, globalCtx);
    if (280.0f < this->actor.xzDistFromLink) {
        func_80ADE16C(this);
    } else if (this->unk_198 == 0 && this->actor.xzDistFromLink < 140.0f && func_8002DFC8(&this->actor, 0x2AAA, globalCtx) == 0) {
        func_80ADE20C(this);
    }
    if (this->unk_29D == 0xFF) {
        func_8002F974(&this->actor, 0x3071);
    }
}

//#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Poh/func_80ADEDFC.s")
void func_80ADEDFC(EnPoh* this, GlobalContext* globalCtx) {
    SkelAnime_FrameUpdateMatrix(&this->skelAnime);
    if (func_800A56C8(&this->skelAnime, 0.0f) != 0) {
        Audio_PlayActorSound2(&this->actor, NA_SE_EN_PO_KANTERA);
        if (this->unk_198 != 0) {
            this->unk_198--;
        }
    }
    func_80ADE9CC(this, globalCtx);
    if (this->unk_198 >= 0xA) {
        Math_ApproxUpdateScaledS(&this->actor.posRot.rot.y, this->actor.yawTowardsLink, 0xE38);
    } else if (this->unk_198 == 9) {
        this->actor.speedXZ = 5.0f;
        this->skelAnime.animPlaybackSpeed = 2.0f;
    } else if (this->unk_198 == 0) {
        func_80ADE16C(this);
        this->unk_198 = 0x17;
    }
}

//#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Poh/func_80ADEECC.s")
void func_80ADEECC(EnPoh* this, GlobalContext* globalCtx) {
    Math_ApproxF(&this->actor.speedXZ, 0.0f, 0.5f);
    if (SkelAnime_FrameUpdateMatrix(&this->skelAnime) != 0) {
        if (this->actor.colChkInfo.health != 0) {
            func_80ADE368(this);
        } else {
            func_80ADE48C(this);
        }
    }
}

//#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Poh/func_80ADEF38.s")
void func_80ADEF38(EnPoh* this, GlobalContext* globalCtx) {
    if (SkelAnime_FrameUpdateMatrix(&this->skelAnime) != 0) {
        this->unk_29D = 0xFF;
        this->unk_19A = Math_Rand_S16Offset(0x2BC, 0x12C);
        this->actor.flags |= 1;
        func_80ADE16C(this);
    } else if (10.0f < this->skelAnime.animCurrentFrame) {
        this->unk_29D = ((this->skelAnime.animCurrentFrame - 10.0f) * 0.05000000074505806f) * 255.0f;
    }
    if (this->skelAnime.animPlaybackSpeed < 0.5f && this->actor.xzDistFromLink < 280.0f) {
        Audio_PlayActorSound2(this, NA_SE_EN_PO_APPEAR);
        this->skelAnime.animPlaybackSpeed = 1.0f;
    }
}

//#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Poh/func_80ADF0B8.s")
void func_80ADF0B8(EnPoh* this, GlobalContext* globalCtx) {
    if (SkelAnime_FrameUpdateMatrix(&this->skelAnime) != 0) {
        this->unk_29D = 0xFF;
        this->unk_19A = Math_Rand_S16Offset(0x2BC, 0x12C);
        this->actor.flags |= 1;
        func_80ADE16C(this);
    } else {
        this->unk_29D = CLAMP_MAX((s32)(this->skelAnime.animCurrentFrame * 25.5f), 0xFF);
    }
}

//#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Poh/func_80ADF15C.s")
void func_80ADF15C(EnPoh* this, GlobalContext* globalCtx) {
    Vec3f vec;
    f32 multiplier;
    f32 newScale;
    s32 pad;
    s32 pad1;

    this->unk_198++;
    if (this->unk_198 < 8) {
        if (this->unk_198 < 5) {
            vec.y = (Math_Sins((this->unk_198 * 0x1000) - 0x4000) * 23.0f) + (this->actor.posRot.pos.y + 40.0f);
            multiplier = Math_Coss((this->unk_198 * 0x1000) - 0x4000) * 23.0f;
            vec.x = (Math_Sins(func_8005A9F4(ACTIVE_CAM) + 0x4800) * multiplier) + this->actor.posRot.pos.x;
            vec.z = (Math_Coss(func_8005A9F4(ACTIVE_CAM) + 0x4800) * multiplier) + this->actor.posRot.pos.z;
        } else {
            vec.y = (this->actor.posRot.pos.y + 40.0f) + (15.0f * (this->unk_198 - 5));
            vec.x = (Math_Sins(func_8005A9F4(ACTIVE_CAM) + 0x4800) * 23.0f) + this->actor.posRot.pos.x;
            vec.z = (Math_Coss(func_8005A9F4(ACTIVE_CAM) + 0x4800) * 23.0f) + this->actor.posRot.pos.z;
        }
        func_8002A6B8(globalCtx, &vec, &D_80AE1B60, &D_80AE1B6C, (this->unk_198 * 0xA) + 0x50, 0, 0xFF, 0xFF, 0xFF, 0xFF, 0, 0, 0xFF, 1, 9, 1);
        vec.x = (this->actor.posRot.pos.x + this->actor.posRot.pos.x) - vec.x;
        vec.z = (this->actor.posRot.pos.z + this->actor.posRot.pos.z) - vec.z;
        func_8002A6B8(globalCtx, &vec, &D_80AE1B60, &D_80AE1B6C, (this->unk_198 * 0xA) + 0x50, 0, 0xFF, 0xFF, 0xFF, 0xFF, 0, 0, 0xFF, 1, 9, 1);
        vec.x = this->actor.posRot.pos.x;
        vec.z = this->actor.posRot.pos.z;
        func_8002A6B8(globalCtx, &vec, &D_80AE1B60, &D_80AE1B6C, (this->unk_198 * 0xA) + 0x50, 0, 0xFF, 0xFF, 0xFF, 0xFF, 0, 0, 0xFF, 1, 9, 1);
        if (this->unk_198 == 1) {
            Audio_PlayActorSound2(&this->actor, NA_SE_EN_EXTINCT);
        }
    } else if (this->unk_198 == 0x1C) {
        func_80ADE610(this, globalCtx);
    } else if (this->unk_198 >= 0x13) {
        newScale = (0x1C - this->unk_198) * 0.0010000000474974513f;
        this->actor.posRot.pos.y += 5.0f;
        this->actor.scale.z = newScale;
        this->actor.scale.y = newScale;
        this->actor.scale.x = newScale;
    }
    if (this->unk_198 == 0x12) {
        Audio_PlayActorSound2(&this->actor, NA_SE_EN_PO_DEAD2);
    }
}

//#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Poh/func_80ADF574.s")
void func_80ADF574(EnPoh* this, GlobalContext* globalCtx) {
    if (SkelAnime_FrameUpdateMatrix(&this->skelAnime) != 0) {
        this->actor.posRot.rot.y = this->actor.shape.rot.y;
        func_80ADE16C(this);
        this->unk_198 = 0x17;
    } else {
        Math_ApproxF(&this->actor.speedXZ, 0.0f, 0.5f);
        this->actor.shape.rot.y += 0x1000;
    }
}

//#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Poh/func_80ADF5E0.s")
void func_80ADF5E0(EnPoh* this, GlobalContext* globalCtx) {
    SkelAnime_FrameUpdateMatrix(&this->skelAnime);
    if (Math_ApproxUpdateScaledS(&this->actor.posRot.rot.y, this->unk_19C, 0x71C) != 0) {
        func_80ADE16C(this);
    }
    if (this->actor.xzDistFromLink < 200.0f) {
        func_80ADE1BC(this);
    }
    func_80ADE9CC(this, globalCtx);
}

//#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Poh/func_80ADF660.s")
void func_80ADF660(EnPoh* this, GlobalContext* globalCtx) {
    if (this->unk_194 != 0) {
        this->unk_194--;
    }
    this->actor.posRot.rot.y += 0x1000;
    func_80ADE9CC(this, globalCtx);
    this->unk_29D = this->unk_194 * 7.96875f;
    if (this->unk_194 == 0) {
        this->unk_19A = Math_Rand_S16Offset(0x64, 0x32);
        func_80ADE16C(this);
    }
}

//#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Poh/func_80ADF77C.s")
void func_80ADF77C(EnPoh* this, GlobalContext* globalCtx) {
    this->unk_194++;
    this->actor.posRot.rot.y -= 0x1000;
    func_80ADE9CC(this, globalCtx);
    this->unk_29D = this->unk_194 * 7.96875f;
    if (this->unk_194 == 0x20) {
        this->unk_19A = Math_Rand_S16Offset(0x2BC, 0x12C);
        this->unk_194 = 0;
        func_80ADE16C(this);
    }
}

//#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Poh/func_80ADF894.s")
void func_80ADF894(EnPoh* this, GlobalContext* globalCtx) {
    f32 multiplier;

    SkelAnime_FrameUpdateMatrix(&this->skelAnime);
    multiplier = Math_Sins(this->unk_195 * 0x800) * 3.0f;
    this->actor.posRot.pos.x -= multiplier * Math_Coss(this->actor.shape.rot.y);
    this->actor.posRot.pos.z += multiplier * Math_Sins(this->actor.shape.rot.y);
    Math_ApproxUpdateScaledS(&this->actor.posRot.rot.y, this->actor.yawTowardsLink + 0x8000, 0x71C);
    func_80ADE9CC(this, globalCtx);
    if ((this->unk_198 == 0) || (250.0f < this->actor.xzDistFromLink)) {
        this->actor.posRot.rot.y = this->actor.shape.rot.y;
        func_80ADE16C(this);
    }
    func_8002F974(this, 0x3072);
}

//#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Poh/func_80ADF994.s")
void func_80ADF994(EnPoh* this, GlobalContext* globalCtx) {
    s32 phi_v0;

    if (this->unk_198 != 0) {
        this->unk_198--;
    }
    if (this->actor.bgCheckFlags & 1) {
        phi_v0 = (this->unk_197 == 1) ? 0x6E : 9;
        func_800297A4(globalCtx, &this->actor.posRot.pos, 6.0f, 0, 1, 1, 0xF, phi_v0, 0xA, this->unk_2A4->unk_1C);
        func_80ADE6D4(this);
    } else if (this->unk_198 == 0) {
        Actor_Kill(&this->actor);
        return;
    }
    Actor_MoveForward(&this->actor);
    func_8002E4B4(globalCtx, &this->actor, 10.0f, 10.0f, 10.0f, 4);
}

//#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Poh/func_80ADFA90.s")
void func_80ADFA90(EnPoh* this, s32 arg1) {
    f32 multiplier;

    this->unk_29D = CLAMP(this->unk_29D + arg1, 0x00, 0xFF);
    if (arg1 < 0) {
        multiplier = this->unk_29D * 0.003921568859368563f;
        this->actor.scale.z = (0.005600000265985727f * multiplier) + 0.0014000000664964318f;
        this->actor.scale.x = (0.005600000265985727f * multiplier) + 0.0014000000664964318f;
        this->actor.scale.y = (0.007000000216066837f - (0.007000000216066837f * multiplier)) + 0.007000000216066837f;
    } else {
        multiplier = 1.0f;
        this->actor.scale.z = this->unk_29D * 2.7450982088339515e-05f;
        this->actor.scale.y = this->unk_29D * 2.7450982088339515e-05f;
        this->actor.scale.x = this->unk_29D * 2.7450982088339515e-05f;
        this->actor.posRot.pos.y = this->actor.initPosRot.pos.y + (0.05882352963089943f * this->unk_29D);
    }
    this->unk_29A = this->unk_2A4->unk_3 * multiplier;
    this->unk_29B = this->unk_2A4->unk_4 * multiplier;
    this->unk_29C = this->unk_2A4->unk_5 * multiplier;
    Lights_InitType0PositionalLight(&this->lightInfo, 
                    this->actor.posRot.pos.x, this->actor.posRot.pos.y, this->actor.posRot.pos.z, 
                    this->unk_2A4->unk_3, this->unk_2A4->unk_4, this->unk_2A4->unk_5, this->unk_29D * 0.7843137383460999f);
}

//#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Poh/func_80ADFE28.s")
void func_80ADFE28(EnPoh* this, GlobalContext* globalCtx) {
    this->actor.initPosRot.pos.y += 2.0f;
    func_80ADFA90(this, 0x14);
    if (this->unk_29D == 0xFF) {
        func_80ADE7C0(this, globalCtx);
    }
}

//#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Poh/func_80ADFE80.s")
void func_80ADFE80(EnPoh* this, GlobalContext* globalCtx) {
    DECR(this->unk_198);
    if (func_8002F194(&this->actor, globalCtx) != 0) {
        if (this->actor.params >= 2) {
            func_80ADE9BC(this);
        } else {
            func_80ADE998(this);
        }
        return;
    }
    if (this->unk_198 == 0) {
        func_80ADE950(this, 1);
        this->actor.flags &= ~0x10000;
        return;
    }
    if (this->colliderCyl.base.maskA & 2) {
        this->actor.flags |= 0x10000;
        func_8002F2F4(&this->actor, globalCtx);
    } else {
        this->actor.flags &= ~0x10000;
        CollisionCheck_SetOC(globalCtx, &globalCtx->colChkCtx, &this->colliderCyl);
    }
    this->actor.posRot.pos.y = Math_Sins(this->unk_195 * 0x800) * 5.0f + this->actor.initPosRot.pos.y;
    DECR(this->unk_195);
    if (this->unk_195 == 0) {
        this->unk_195 = 0x20;
    }
    this->colliderCyl.dim.pos.y = this->actor.posRot.pos.y - 20.0f;
    Actor_SetHeight(this, -10.0f);
    Lights_InitType0PositionalLight(&this->lightInfo, this->actor.posRot.pos.x, this->actor.posRot.pos.y, this->actor.posRot.pos.z, 
                this->unk_2A4->unk_3, this->unk_2A4->unk_4, this->unk_2A4->unk_5, this->unk_29D * 0.7843137383460999f);
}

//#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Poh/func_80AE009C.s")
void func_80AE009C(EnPoh* this, GlobalContext* globalCtx) {
    func_80ADFA90(this, -0xD);
    if (this->unk_29D == 0) {
        Actor_Kill(&this->actor);
    }
}

//#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Poh/func_80AE00DC.s")
void func_80AE00DC(EnPoh* this, GlobalContext* globalCtx) {
    // You defeated Poe the ghost! Do you want to catch it in a bottle?
    if (this->actor.textId != 0x5005) {
        func_80ADFA90(this, -0xD);
    } else {
        func_8002F974(&this->actor, 0x31E8);
    }
    if (func_8010BDBC(&globalCtx->msgCtx) == 4) {
        if (func_80106BC8(globalCtx) != 0) {
            func_800F8A44(&this->actor.projectedPos, 0x31E8);
            if (globalCtx->msgCtx.choiceIndex == 0) { // Yes
                if (Inventory_HasEmptyBottle()) { // If empty bottle in inventory, give bottled poe item
                    // You caught a Poe!
                    this->actor.textId = 0x5008;
                    Item_Give(globalCtx, ITEM_POE);
                    Audio_PlayActorSound2(&this->actor, NA_SE_EN_PO_BIG_GET);
                } else {
                    // You want to catch it but you don't have an empty bottle.
                    this->actor.textId = 0x5006;
                    Audio_PlayActorSound2(&this->actor, NA_SE_EN_PO_LAUGH);
                }
            } else { // No
                // You let it go for now.
                this->actor.textId = 0x5007;
                Audio_PlayActorSound2(&this->actor, NA_SE_EN_PO_LAUGH);
            }
            func_8010B720(globalCtx, this->actor.textId);
        }
    } else if (func_8002F334(&this->actor, globalCtx) != 0) {
        func_80ADE950(this, 0);
    }
}

//#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Poh/func_80AE0204.s")
void func_80AE0204(EnPoh* this, GlobalContext* globalCtx) {
    func_8002F974(this, 0x31E8);
    if (func_8010BDBC(&globalCtx->msgCtx) == 4) {
        if (func_80106BC8(globalCtx) != 0) {
            if (globalCtx->msgCtx.choiceIndex == 0) {
                if (!Flags_GetSwitch(globalCtx, 0xB) && !Flags_GetSwitch(globalCtx, 0xA)) {
                    // I am one of the ghostly composer brothers of Kakariko Village.
                    this->actor.textId = 0x5010;
                } else {
                    // To tell the truth, each of us was studying a different song, one to summon the sun and another to summon the moon.
                    this->actor.textId = 0x5014;
                }
                func_8010B720(globalCtx, this->actor.textId);
            } else {
                if (this->actor.params == 2) {
                    Flags_SetSwitch(globalCtx, 0xB);
                } else {
                    Flags_SetSwitch(globalCtx, 0xA);
                }
                func_80ADE950(this, 1);
            }
        }
    } else if (func_8002F334(this, globalCtx) != 0) {
        // GYAAAH! You killed me!! Huh? Oh, it's you. Did you try to play the Sun's Song?
        if (this->actor.textId == 0x5000) {
            Flags_SetSwitch(globalCtx, 9);
        }
        func_80ADE950(this, 1);
    }
}

//#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Poh/func_80AE032C.s")
void func_80AE032C(EnPoh* this, GlobalContext* globalCtx) {
    if (this->colliderCyl.base.acFlags & 2) {
        this->colliderCyl.base.acFlags &= 0xFFFD;
        if (this->actor.colChkInfo.damageEffect != 0 || this->actor.colChkInfo.damage != 0) {
            if (Actor_ApplyDamage(&this->actor) == 0) {
                func_80032C7C(globalCtx, &this->actor);
                Audio_PlayActorSound2(&this->actor, NA_SE_EN_PO_DEAD);
            } else {
                Audio_PlayActorSound2(&this->actor, NA_SE_EN_PO_DAMAGE);
            }
            func_80ADE28C(this);
        }
    }
}

//#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Poh/func_80AE03C4.s")
void func_80AE03C4(EnPoh* this) {
    if (this->actionFunc != func_80ADF77C && this->actionFunc != func_80ADF660 && 
        this->actionFunc != func_80ADEF38 && this->actionFunc != func_80ADF0B8) {
        if (this->unk_19A != 0) {
            this->unk_19A--;
        }
        if (this->unk_29D == 0xFF) {
            if (this->actor.unk_10C != 0) {
                this->unk_194++;
                this->unk_194 = CLAMP_MAX(this->unk_194, 0x14);
            } else {
                this->unk_194 = 0;
            }
            if ((this->unk_194 == 0x14 || this->unk_19A == 0) && (this->actionFunc == func_80ADEAC4 || 
                    this->actionFunc == func_80ADEB80 || this->actionFunc == func_80ADEC9C || 
                    this->actionFunc == func_80ADF894 || this->actionFunc == func_80ADF5E0)) {
                func_80ADE56C(this);
            }
        } else if (this->unk_29D == 0 && this->unk_19A == 0 && 
                    (this->actionFunc == func_80ADEAC4 || this->actionFunc == func_80ADEB80 || 
                    this->actionFunc == func_80ADEC9C || this->actionFunc == func_80ADF5E0)) {
            func_80ADE5C4(this);
        }
    }
}

#ifdef NON_MATCHING
// Single regalloc
void EnPoh_Update(Actor* thisx, GlobalContext* globalCtx) {
    EnPoh* this = THIS;

    if (Object_IsLoaded(&globalCtx->objectCtx, this->objectIdx) != 0) {
        this->actor.objBankIndex = this->objectIdx;
        this->actor.update = func_80AE0A1C;
        Actor_SetObjectDependency(globalCtx, &this->actor);
        if (this->unk_197 == 0) {
            SkelAnime_Init(globalCtx, &this->skelAnime, &D_060050D0, &D_06000A60, &this->limbDrawTbl, &this->unk_21C, 0x15);
            this->actor.draw = func_80AE0EE4;
        } else {
            SkelAnime_InitSV(globalCtx, &this->skelAnime, &D_06006F90, &D_060009DC, &this->limbDrawTbl, &this->unk_21C, 0xC);
            this->actor.draw = func_80AE1148;
            this->colliderSph.list[0].dim.joint = 9;
            this->colliderSph.list[0].dim.modelSphere.center.y *= -1;
            this->actor.shape.rot.y = this->actor.posRot.rot.y = -0x4000;
            this->colliderCyl.dim.radius = 0x14;
            this->colliderCyl.dim.height = 0x37;
            this->colliderCyl.dim.yShift = 0xF;
        }
        this->actor.flags &= -0x11;
        func_80ADE3DC(this);
    }
}
#else
#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Poh/EnPoh_Update.s")
#endif

//#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Poh/func_80AE067C.s")
void func_80AE067C(EnPoh* this) {
    s16 temp_var; // required for matching

    if (this->actionFunc == func_80ADEDFC) {
        this->unk_29A = CLAMP_MAX((s16)(this->unk_29A + 5), 0xFF);
        this->unk_29B = CLAMP_MIN((s16)(this->unk_29B - 5), 0x32);
        temp_var = this->unk_29C - 5;
        this->unk_29C = CLAMP_MIN(temp_var, 0x00);
    } else if (this->actionFunc == func_80ADF894) {
        this->unk_29A = CLAMP_MAX((s16)(this->unk_29A + 5), 0x50);
        this->unk_29B = CLAMP_MAX((s16)(this->unk_29B + 5), 0xFF);
        temp_var = this->unk_29C + 5;
        this->unk_29C = CLAMP_MAX(temp_var, 0xE1);
    } else if (this->actionFunc == func_80ADEECC) {
        if (this->actor.dmgEffectTimer & 2) {
            this->unk_29A = 0;
            this->unk_29B = 0;
            this->unk_29C = 0;
        } else {
            this->unk_29A = 0x50;
            this->unk_29B = 0xFF;
            this->unk_29C = 0xE1;
        }
    } else {
        this->unk_29A = CLAMP_MAX((s16)(this->unk_29A + 5), 0xFF);
        this->unk_29B = CLAMP_MAX((s16)(this->unk_29B + 5), 0xFF);
        if (this->unk_29C >= 0xD3) {
            temp_var = this->unk_29C - 5;
            this->unk_29C = CLAMP_MIN(temp_var, 0xD2);
        } else {
            temp_var = this->unk_29C + 5;
            this->unk_29C = CLAMP_MAX(temp_var, 0xD2);
        }
    }
}

//#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Poh/func_80AE089C.s")
void func_80AE089C(EnPoh* this) {
    f32 rand;

    if ((this->actionFunc == func_80ADEF38 || this->actionFunc == func_80ADF0B8) && this->skelAnime.animCurrentFrame < 12.0f) {
        this->unk_2A0 = (s16)(this->skelAnime.animCurrentFrame * 16.65999984741211f) + 0x37;
        this->unk_29F = (s16)(this->skelAnime.animCurrentFrame * 16.65999984741211f) + 0x37;
        this->unk_29E = (s16)(this->skelAnime.animCurrentFrame * 16.65999984741211f) + 0x37;
        this->unk_2A1 = this->skelAnime.animCurrentFrame * 16.66666603088379f;
    } else {
        rand = Math_Rand_ZeroOne();
        this->unk_29E = (s16)(rand * 30.0f) + 0xE1;
        this->unk_29F = (s16)(rand * 100.0f) + 0x9B;
        this->unk_2A0 = (s16)(rand * 160.0f) + 0x5F;
        this->unk_2A1 = 0xC8;
    }
}

//#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Poh/func_80AE0A1C.s")
void func_80AE0A1C(Actor* thisx, GlobalContext* globalCtx) {
    EnPoh* this;
    s32 pad;
    Vec3f vec;
    UNK_TYPE sp38;

    this = THIS;
    if (this->colliderSph.base.atFlags & 2) {
        this->colliderSph.base.atFlags &= 0xFFFD;
        func_80ADE4C8(this);
    }
    func_80AE032C(this, globalCtx);
    func_80AE03C4(this);
    this->actionFunc(this, globalCtx);
    Actor_MoveForward(this);
    if (this->actionFunc == func_80ADEDFC && this->unk_198 < 0xA) {
        this->actor.flags |= 0x1000000;
        CollisionCheck_SetAT(globalCtx, &globalCtx->colChkCtx, &this->colliderSph.base);
    }
    Collider_CylinderUpdate(&this->actor, &this->colliderCyl);
    if ((this->colliderCyl.base.acFlags & 1) && this->unk_29D == 0xFF) {
        CollisionCheck_SetAC(globalCtx, &globalCtx->colChkCtx, &this->colliderCyl.base);
    }
    CollisionCheck_SetOC(globalCtx, &globalCtx->colChkCtx, &this->colliderCyl.base);
    CollisionCheck_SetOC(globalCtx, &globalCtx->colChkCtx, &this->colliderSph.base);
    Actor_SetHeight(&this->actor, 42.0f);
    if (this->actionFunc != func_80ADEECC && this->actionFunc != func_80ADF574) {
        if (this->actionFunc == func_80ADF894) {
            this->actor.shape.rot.y = this->actor.posRot.rot.y + 0x8000;
        } else {
            this->actor.shape.rot.y = this->actor.posRot.rot.y;
        }
    }
    vec.x = this->actor.posRot.pos.x;
    vec.y = this->actor.posRot.pos.y + 20.0f;
    vec.z = this->actor.posRot.pos.z;
    this->actor.groundY = func_8003C9A4(&globalCtx->colCtx, &this->actor.floorPoly, &sp38, &this->actor, &vec);
    func_80AE089C(this);
    this->actor.shape.unk_14 = this->unk_29D;
}

//#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Poh/func_80AE0BF8.s")
//OverrideLimbDraw2
s32 func_80AE0BF8(GlobalContext* globalCtx, s32 limbIndex, Gfx** dList, Vec3f* pos, Vec3s* rot, Actor* thisx, Gfx** gfxP) {
    EnPoh* this = THIS;

    if ((this->unk_29D == 0 || limbIndex == this->unk_2A4->unk_6) || (this->actionFunc == func_80ADF15C && this->unk_198 >= 2)) {
        *dList = NULL;
    } else if (this->actor.params == 3 && limbIndex == 0xA) {
        *dList = D_06004638;
    }
    if (limbIndex == 0x13 && this->unk_197 == 0) {
        gDPPipeSync((*gfxP)++);
        gDPSetEnvColor((*gfxP)++, this->unk_29A, this->unk_29B, this->unk_29C, this->unk_29D);
    }
    return 0;
}

//PostLimbDraw2
//#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Poh/func_80AE0CE8.s")
void func_80AE0CE8(GlobalContext* globalCtx, s32 limbIndex, Gfx** dList, Vec3s* rot, Actor* thisx, Gfx** gfxP) {
    EnPoh* this = THIS;

    func_800628A4(limbIndex, &this->colliderSph);
    if (this->actionFunc == func_80ADF15C && this->unk_198 >= 2 && limbIndex == this->unk_2A4->unk_7) {
        gSPMatrix((*gfxP)++, Matrix_NewMtx(globalCtx->state.gfxCtx, "../z_en_poh.c", 2460), G_MTX_NOPUSH | G_MTX_LOAD | G_MTX_MODELVIEW);
        gSPDisplayList((*gfxP)++, this->unk_2A4->unk_20);
    }
    if (limbIndex == this->unk_2A4->unk_6) {
        if (this->actionFunc == func_80ADF15C && this->unk_198 >= 0x13 && 0.0f != this->actor.scale.x) {
            f32 mtxScale = 0.009999999776482582f / this->actor.scale.x;
            Matrix_Scale(mtxScale, mtxScale, mtxScale, 1);
        }
        Matrix_Get(&this->unk_368);
        if (this->actionFunc == func_80ADF15C && this->unk_198 == 0x1B) {
            this->actor.posRot.pos.x = this->unk_368.wx;
            this->actor.posRot.pos.y = this->unk_368.wy;
            this->actor.posRot.pos.z = this->unk_368.wz;
        }
        Lights_InitType2PositionalLight(&this->lightInfo, 
                    this->colliderSph.list[0].dim.worldSphere.center.x, 
                    this->colliderSph.list[0].dim.worldSphere.center.y, 
                    this->colliderSph.list[0].dim.worldSphere.center.z, 
                    this->unk_29E,
                    this->unk_29F,
                    this->unk_2A0,
                    this->unk_2A1 * 0.7843137383460999f);
    }
}

//#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Poh/func_80AE0EE4.s")
void func_80AE0EE4(Actor* thisx, GlobalContext *globalCtx) {
    EnPoh* this;
    GraphicsContext* gfxCtx;
    Gfx* dispRefs[4];

    this = THIS;
    gfxCtx = globalCtx->state.gfxCtx;
    Graph_OpenDisps(dispRefs, globalCtx->state.gfxCtx, "../z_en_poh.c", 0xA45);
    func_80AE067C(this);
    func_80093D18(globalCtx->state.gfxCtx);
    func_80093D84(globalCtx->state.gfxCtx);
    if (this->unk_29D == 0xFF || this->unk_29D == 0) {
        gDPSetEnvColor(gfxCtx->polyOpa.p++, this->unk_29A, this->unk_29B, this->unk_29C, this->unk_29D);
        gSPSegment(gfxCtx->polyOpa.p++, 0x08, D_80116280 + 0x2);
        gfxCtx->polyOpa.p = SkelAnime_Draw2(globalCtx, this->skelAnime.skeleton, this->skelAnime.limbDrawTbl, 
                    func_80AE0BF8, func_80AE0CE8, &this->actor, gfxCtx->polyOpa.p);
    } else {
        gDPSetEnvColor(gfxCtx->polyXlu.p++, 0xFF, 0xFF, 0xFF, this->unk_29D);
        gSPSegment(gfxCtx->polyXlu.p++, 0x08, D_80116280);
        gfxCtx->polyXlu.p = SkelAnime_Draw2(globalCtx, this->skelAnime.skeleton, this->skelAnime.limbDrawTbl, 
                    func_80AE0BF8, func_80AE0CE8, &this->actor, gfxCtx->polyXlu.p);
    }
    gDPPipeSync(gfxCtx->polyOpa.p++);
    gDPSetEnvColor(gfxCtx->polyOpa.p++, this->unk_29E, this->unk_29F, this->unk_2A0, 0xFF);
    Matrix_Put(&this->unk_368);
    gSPMatrix(gfxCtx->polyOpa.p++, Matrix_NewMtx(globalCtx->state.gfxCtx, "../z_en_poh.c", 0xA74), G_MTX_NOPUSH | G_MTX_LOAD | G_MTX_MODELVIEW);
    gSPDisplayList(gfxCtx->polyOpa.p++, this->unk_2A4->unk_1C);
    Graph_CloseDisps(dispRefs, globalCtx->state.gfxCtx, "../z_en_poh.c", 0xA79);
}

//#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Poh/func_80AE1148.s")
void func_80AE1148(Actor* thisx, GlobalContext *globalCtx) {
    EnPoh* this;
    Color_RGBA8 *sp90;
    Color_RGBA8 *phi_t0;
    GraphicsContext *gfxCtx;
    Gfx* dispRefs[4];

    this = THIS;
    gfxCtx = globalCtx->state.gfxCtx;
    Graph_OpenDisps(dispRefs, globalCtx->state.gfxCtx, "../z_en_poh.c", 2694);
    func_80AE067C(this);
    if (this->actor.params == 2) {
        sp90 = &D_80AE1B4C;
        phi_t0 = &D_80AE1B54;
    } else {
        sp90 = &D_80AE1B50;
        phi_t0 = &D_80AE1B58;
    }
    if (this->unk_29D == 0xFF || this->unk_29D == 0) {
        func_80093D18(globalCtx->state.gfxCtx);
        gSPSegment(gfxCtx->polyOpa.p++, 0x08, Gfx_EnvColor(globalCtx->state.gfxCtx, this->unk_29A, this->unk_29B, this->unk_29C, this->unk_29D));
        gSPSegment(gfxCtx->polyOpa.p++, 0x0A, Gfx_EnvColor(globalCtx->state.gfxCtx, sp90->r, sp90->g, sp90->b, this->unk_29D));
        gSPSegment(gfxCtx->polyOpa.p++, 0x0B, Gfx_EnvColor(globalCtx->state.gfxCtx, phi_t0->r, phi_t0->g, phi_t0->b, this->unk_29D));
        gSPSegment(gfxCtx->polyOpa.p++, 0x0C, D_80116280 + 0x2);
        gfxCtx->polyOpa.p = SkelAnime_DrawSV2(globalCtx, this->skelAnime.skeleton, this->skelAnime.limbDrawTbl, this->skelAnime.dListCount, func_80AE0BF8, func_80AE0CE8, &this->actor, gfxCtx->polyOpa.p);
    } else {
        func_80093D18(globalCtx->state.gfxCtx);
        func_80093D84(globalCtx->state.gfxCtx);
        gSPSegment(gfxCtx->polyXlu.p++, 0x08, Gfx_EnvColor(globalCtx->state.gfxCtx, this->unk_29A, this->unk_29B, this->unk_29C, this->unk_29D));
        gSPSegment(gfxCtx->polyXlu.p++, 0x0A, Gfx_EnvColor(globalCtx->state.gfxCtx, sp90->r, sp90->g, sp90->b, this->unk_29D));
        gSPSegment(gfxCtx->polyXlu.p++, 0x0B, Gfx_EnvColor(globalCtx->state.gfxCtx, phi_t0->r, phi_t0->g, phi_t0->b, this->unk_29D));
        gSPSegment(gfxCtx->polyXlu.p++, 0x0C, D_80116280);
        gfxCtx->polyXlu.p = SkelAnime_DrawSV2(globalCtx, this->skelAnime.skeleton, this->skelAnime.limbDrawTbl, this->skelAnime.dListCount, &func_80AE0BF8, &func_80AE0CE8, this, gfxCtx->polyXlu.p);
    }
    gDPPipeSync(gfxCtx->polyOpa.p++);
    gDPSetEnvColor(gfxCtx->polyOpa.p++, this->unk_29E, this->unk_29F, this->unk_2A0, 0xFF);
    Matrix_Put(&this->unk_368);
    gSPMatrix(gfxCtx->polyOpa.p++, Matrix_NewMtx(globalCtx->state.gfxCtx, "../z_en_poh.c", 2787), G_MTX_NOPUSH | G_MTX_LOAD | G_MTX_MODELVIEW);
    gSPDisplayList(gfxCtx->polyOpa.p++, this->unk_2A4->unk_1C);
    gSPDisplayList(gfxCtx->polyOpa.p++, D_06004498);
    gDPPipeSync(gfxCtx->polyOpa.p++);
    gDPSetEnvColor(gfxCtx->polyOpa.p++, sp90->r, sp90->g, sp90->b, 0xFF);
    gSPDisplayList(gfxCtx->polyOpa.p++, D_06004530);
    Graph_CloseDisps(dispRefs, globalCtx->state.gfxCtx, "../z_en_poh.c", 0xAF2);
}

//#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Poh/func_80AE1600.s")
void func_80AE1600(Actor* thisx, GlobalContext* globalCtx) {
    EnPoh* this = THIS;

    this->actionFunc(this, globalCtx);
    if (this->actionFunc != func_80ADF994) {
        this->unk_19A++;
    }
    func_80AE089C(this);
}

//#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Poh/func_80AE1654.s")
void func_80AE1654(Actor* thisx, GlobalContext* globalCtx) {
    EnPoh* this = THIS;  
    GraphicsContext* gfxCtx = globalCtx->state.gfxCtx;
    Gfx* dispRefs[4];

    Graph_OpenDisps(dispRefs, globalCtx->state.gfxCtx, "../z_en_poh.c", 0xB11);
    if (this->actionFunc == func_80ADF994) {
        func_80093D18(globalCtx->state.gfxCtx);
        gDPSetEnvColor(gfxCtx->polyOpa.p++, this->unk_29E, this->unk_29F, this->unk_2A0, 0xFF);
        Lights_InitType2PositionalLight(&this->lightInfo, this->actor.posRot.pos.x, this->actor.posRot.pos.y, this->actor.posRot.pos.z, 
                                        this->unk_29E, this->unk_29F, this->unk_2A0, 0xC8);
        gSPMatrix(gfxCtx->polyOpa.p++, Matrix_NewMtx(globalCtx->state.gfxCtx, "../z_en_poh.c", 0xB26), G_MTX_NOPUSH | G_MTX_LOAD | G_MTX_MODELVIEW);
        gSPDisplayList(gfxCtx->polyOpa.p++, this->unk_2A4->unk_1C);
        if (this->unk_197 == 1) {
            Color_RGBA8* envColor = (this->actor.params == 2) ? &D_80AE1B4C : &D_80AE1B50;
            s32 pad;
            gSPDisplayList(gfxCtx->polyOpa.p++, D_06004498);
            gDPPipeSync(gfxCtx->polyOpa.p++);
            gDPSetEnvColor(gfxCtx->polyOpa.p++, envColor->r, envColor->g, envColor->b, 0xFF);
            gSPDisplayList(gfxCtx->polyOpa.p++, D_06004530);
        }
    } else {
        func_80093D84(globalCtx->state.gfxCtx);
        gSPSegment(gfxCtx->polyXlu.p++, 0x08, 
                    Gfx_TwoTexScroll(globalCtx->state.gfxCtx, 0, 0, 0, 0x20, 0x40, 1, 0, (this->unk_19A * this->unk_2A4->unk_8) & 0x1FF, 0x20, 0x80));
        gDPSetPrimColor(gfxCtx->polyXlu.p++, 0x80, 0x80, this->unk_2A4->unk_0, this->unk_2A4->unk_1, this->unk_2A4->unk_2, this->unk_29D);
        gDPSetEnvColor(gfxCtx->polyXlu.p++, this->unk_29A, this->unk_29B, this->unk_29C, 0xFF);
        Matrix_RotateY((s16)(func_8005A9F4(ACTIVE_CAM) + 0x8000) * 9.58738019107841e-05f, 1);
        gSPMatrix(gfxCtx->polyXlu.p++, Matrix_NewMtx(globalCtx->state.gfxCtx, "../z_en_poh.c", 0xB5E), G_MTX_NOPUSH | G_MTX_LOAD | G_MTX_MODELVIEW);
        gSPDisplayList(gfxCtx->polyXlu.p++, this->unk_2A4->unk_24);
    }
    Graph_CloseDisps(dispRefs, globalCtx->state.gfxCtx, "../z_en_poh.c", 0xB64);
}
