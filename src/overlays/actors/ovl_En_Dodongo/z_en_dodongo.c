#include "z_en_dodongo.h"
#include "overlays/actors/ovl_En_Bom/z_en_bom.h"
#include "overlays/actors/ovl_En_Bombf/z_en_bombf.h"

#define FLAGS 0x00000015

#define THIS ((EnDodongo*)thisx)

void EnDodongo_Init(Actor* thisx, GlobalContext* globalCtx);
void EnDodongo_Destroy(Actor* thix, GlobalContext* globalCtx);
void EnDodongo_Update(Actor* thisx, GlobalContext* globalCtx);
void EnDodongo_Draw(Actor* thisx, GlobalContext* globalCtx);

void func_809F9A80(EnDodongo* this, GlobalContext* globalCtx);
void func_809FA674(s16 yaw, f32 radius, Vec3f* vec);
s32 func_809FA6D8(EnDodongo* this, GlobalContext* globalCtx);
void func_809F89CC(EnDodongo* this);

void func_809F8C94(EnDodongo* this, GlobalContext* globalCtx);
void func_809F8D0C(EnDodongo* this, GlobalContext* globalCtx);
void func_809F8D58(EnDodongo* this, GlobalContext* globalCtx);
void func_809F8F2C(EnDodongo* this, GlobalContext* globalCtx);
void func_809F9424(EnDodongo* this, GlobalContext* globalCtx);
void func_809F9C3C(EnDodongo* this, GlobalContext* globalCtx);
void func_809F9AF8(EnDodongo* this, GlobalContext* globalCtx);
void func_809F97C0(EnDodongo* this, GlobalContext* globalCtx);

extern SkeletonHeader D_06008318;
extern AnimationHeader D_06003B14;
extern AnimationHeader D_060042C4;
extern AnimationHeader D_06004C20;
extern AnimationHeader D_06008B1C;
extern AnimationHeader D_060028F0;
extern AnimationHeader D_06003088;
extern AnimationHeader D_060013C4;
extern AnimationHeader D_06001A44;

const ActorInit En_Dodongo_InitVars = {
    ACTOR_EN_DODONGO,
    ACTORTYPE_ENEMY,
    FLAGS,
    OBJECT_DODONGO,
    sizeof(EnDodongo),
    (ActorFunc)EnDodongo_Init,
    (ActorFunc)EnDodongo_Destroy,
    (ActorFunc)EnDodongo_Update,
    (ActorFunc)EnDodongo_Draw,
};

ColliderJntSphItemInit D_809FA7E0[6] = {
    {
        { 0x00, { 0x00000000, 0x00, 0x00 }, { 0xFFCFFFFF, 0x00, 0x00 }, 0x00, 0x01, 0x01 },
        { 15, { { 0, 0, 0 }, 17 }, 100 },
    },
    {
        { 0x00, { 0x00000000, 0x00, 0x00 }, { 0xFFCFFFFF, 0x00, 0x00 }, 0x00, 0x01, 0x01 },
        { 14, { { 0, 0, 0 }, 15 }, 100 },
    },
    {
        { 0x00, { 0x00000000, 0x00, 0x00 }, { 0xFFCFFFFF, 0x00, 0x00 }, 0x00, 0x01, 0x01 },
        { 13, { { 0, 0, 0 }, 10 }, 100 },
    },
    {
        { 0x00, { 0x00000000, 0x00, 0x00 }, { 0x00000000, 0x00, 0x00 }, 0x00, 0x00, 0x01 },
        { 21, { { 0, 0, 0 }, 20 }, 100 },
    },
    {
        { 0x00, { 0x00000000, 0x00, 0x00 }, { 0x00000000, 0x00, 0x00 }, 0x00, 0x00, 0x01 },
        { 28, { { 0, 0, 0 }, 20 }, 100 },
    },
    {
        { 0x00, { 0x00000000, 0x00, 0x00 }, { 0x0D800691, 0x00, 0x00 }, 0x00, 0x01, 0x09 },
        { 6, { { 0, 0, 0 }, 35 }, 100 },
    },
};

ColliderJntSphInit D_809FA8B8 = {
    { COLTYPE_UNK0, 0x11, 0x09, 0x39, 0x10, COLSHAPE_JNTSPH },
    6,
    D_809FA7E0,
};

ColliderTrisItemInit D_809FA8C8[3] = {
    {
        { 0x02, { 0x00000000, 0x00, 0x00 }, { 0xF24BF96E, 0x00, 0x00 }, 0x00, 0x0D, 0x00 },
        { { { -10.0f, 14.0f, 2.0f }, { -10.0f, -6.0f, 2.0f }, { 9.0f, 14.0f, 2.0f } } },
    },
    {
        { 0x02, { 0x00000000, 0x00, 0x00 }, { 0xFFCBF96E, 0x00, 0x00 }, 0x00, 0x0D, 0x00 },
        { { { -10.0f, -6.0f, 2.0f }, { 9.0f, -6.0f, 2.0f }, { 9.0f, 14.0f, 2.0f } } },
    },
    {
        { 0x02, { 0x00000000, 0x00, 0x00 }, { 0xFFCBF96E, 0x00, 0x00 }, 0x00, 0x0D, 0x00 },
        { { { -10.0f, -6.0f, 2.0f }, { 9.0f, -6.0f, 2.0f }, { 9.0f, 14.0f, 2.0f } } },
    },
};

ColliderTrisInit D_809FA97C = {
    { COLTYPE_METAL_SHIELD, 0x00, 0x0D, 0x00, 0x00, COLSHAPE_TRIS },
    3,
    D_809FA8C8,
};

ColliderQuadInit D_809FA98C = {
    { COLTYPE_UNK10, 0x11, 0x00, 0x00, 0x00, COLSHAPE_QUAD },
    { 0x00, { 0x20000000, 0x01, 0x10 }, { 0x00000000, 0x00, 0x00 }, 0x81, 0x00, 0x00 },
    { { { 0.0f, 0.0f, 0.0f }, { 0.0f, 0.0f, 0.0f }, { 0.0f, 0.0f, 0.0f }, { 0.0f, 0.0f, 0.0f } } },
};

DamageTable D_809FA9DC = {
    0x10, 0x02, 0x01, 0x02, 0x10, 0x01, 0x02, 0x10, 0x01, 0x02, 0x04, 0x02, 0xF4, 0x02, 0x02, 0x02,
    0x02, 0x60, 0xF3, 0x60, 0x00, 0x00, 0x01, 0x04, 0x02, 0x02, 0x08, 0x04, 0x00, 0x00, 0x04, 0x00,
};

void func_809F8250(EnDodongo* this, EnDodongoActionFunc actionFunc) {
    this->actionFunc = actionFunc;
}

void func_809F8258(EnDodongo* this, GlobalContext* globalCtx) {
    s32 pad;
    Vec3f sp78 = { 0.0f, 0.0f, 0.0f };
    Vec3f sp6C = { 0.0f, 0.3f, 0.0f };
    Vec3f sp60 = this->unk_340;
    s16 randAngle = Math_Rand_CenteredFloat(0x4000);
    f32 randCos;
    f32 randSin;

    randCos = Math_Coss(this->actor.shape.rot.y + randAngle);
    randSin = Math_Sins(this->actor.shape.rot.y + randAngle);
    if (this->unk_3C4.r > 30) {
        this->unk_3C4.r -= 16;
        this->unk_3C4.g -= 16;
    }

    if (this->unk_3C4.b < 30) {
        this->unk_3C4.b += 5;
        this->unk_3C4.a += 8;
        this->unk_3C8.a += 8;
    }
    if (this->unk_3C8.r != 0) {
        this->unk_3C8.r -= 15;
    }
    if (this->unk_3C8.g != 0) {
        this->unk_3C8.g--;
    }
    sp78.x = randSin * 3.5f;
    sp78.y = this->unk_3C8.r * 0.02f;
    sp78.z = randCos * 3.5f;
    sp6C.x = ((Math_Rand_ZeroOne() * 0.1f) + 0.15f) * -randSin;
    sp6C.z = ((Math_Rand_ZeroOne() * 0.1f) + 0.15f) * -randCos;
    func_8002836C(globalCtx, &sp60, &sp78, &sp6C, &this->unk_3C4, &this->unk_3C8, 0x64, 0x19, 0x14);

    randAngle = Math_Rand_ZeroOne() * 0x2000;
    randCos = Math_Coss(this->actor.shape.rot.y + randAngle);
    randSin = Math_Sins(this->actor.shape.rot.y + randAngle);
    sp60.x -= randCos * 6.0f;
    sp60.z += randSin * 6.0f;
    sp78.x = -randCos * 3.5f;
    sp78.y = this->unk_3C8.r * 0.02f;
    sp78.z = randSin * 3.5f;
    sp6C.x = ((Math_Rand_ZeroOne() * 0.1f) + 0.15f) * randCos;
    sp6C.z = ((Math_Rand_ZeroOne() * 0.1f) + 0.15f) * -randSin;
    func_8002836C(globalCtx, &sp60, &sp78, &sp6C, &this->unk_3C4, &this->unk_3C8, 0x64, 0x19, 0x14);

    randAngle = Math_Rand_ZeroOne() * 0x2000;
    randCos = Math_Coss(this->actor.shape.rot.y + randAngle);
    randSin = Math_Sins(this->actor.shape.rot.y + randAngle);

    sp60.x = this->unk_340.x + (randCos * 6.0f);
    sp60.z = this->unk_340.z - (randSin * 6.0f);
    sp78.x = randCos * 3.5f;
    sp78.y = this->unk_3C8.r * 0.02f;
    sp78.z = -randSin * 3.5f;
    sp6C.x = ((Math_Rand_ZeroOne() * 0.1f) + 0.15f) * -randCos;
    sp6C.z = ((Math_Rand_ZeroOne() * 0.1f) + 0.15f) * randSin;
    func_8002836C(globalCtx, &sp60, &sp78, &sp6C, &this->unk_3C4, &this->unk_3C8, 0x64, 0x19, 0x14);
}

InitChainEntry D_809FAA14[] = {
    ICHAIN_S8(naviEnemyId, 13, ICHAIN_CONTINUE),
    ICHAIN_F32_DIV1000(gravity, -1000, ICHAIN_CONTINUE),
    ICHAIN_F32(unk_4C, 2800, ICHAIN_STOP),
};

void EnDodongo_Init(Actor* thisx, GlobalContext* globalCtx) {
    EnDodongo* this = THIS;
    EffectBlureInit1 sp54;

    this->actor.unk_1F = 3;
    Actor_ProcessInitChain(&this->actor, D_809FAA14);
    this->unk_3C4.r = this->unk_3C4.g = this->unk_3C8.r = 255;
    this->unk_3C4.a = this->unk_3C8.a = 200;
    this->unk_3C8.g = 10;
    this->unk_34C = this->unk_350 = this->unk_354 = 1.0f;
    ActorShape_Init(&this->actor.shape, 0.0f, &ActorShadow_DrawFunc_Circle, 48.0f);
    Actor_SetScale(&this->actor, 0.01875f);
    SkelAnime_Init(globalCtx, &this->skelAnime, &D_06008318, &D_06004C20, this->limbDrawTable,
                   this->transitionDrawTable, 31);
    this->actor.colChkInfo.health = 4;
    this->actor.colChkInfo.mass = 0xFE;
    this->actor.colChkInfo.damageTable = &D_809FA9DC;
    Collider_InitQuad(globalCtx, &this->collider1);
    Collider_InitTris(globalCtx, &this->collider2);
    Collider_InitJntSph(globalCtx, &this->collider3);
    Collider_SetQuad(globalCtx, &this->collider1, &this->actor, &D_809FA98C);
    Collider_SetTris(globalCtx, &this->collider2, &this->actor, &D_809FA97C, this->trisElements);
    Collider_SetJntSph(globalCtx, &this->collider3, &this->actor, &D_809FA8B8, this->sphElements);

    sp54.p1StartColor[0] = sp54.p1StartColor[1] = sp54.p1StartColor[2] = sp54.p1StartColor[3] = sp54.p2StartColor[0] =
        sp54.p2StartColor[1] = sp54.p2StartColor[2] = sp54.p1EndColor[0] = sp54.p1EndColor[1] = sp54.p1EndColor[2] =
            sp54.p2EndColor[0] = sp54.p2EndColor[1] = sp54.p2EndColor[2] = 0xFF;

    sp54.p1EndColor[3] = sp54.p2EndColor[3] = 0;
    sp54.p2StartColor[3] = 0x40;
    sp54.elemDuration = 8;
    sp54.unkFlag = false;
    sp54.calcMode = 2;

    Effect_Add(globalCtx, &this->blureIdx, 1, 0, 0, &sp54);
    func_8002E4B4(globalCtx, &this->actor, 75.0f, 60.0f, 70.0f, 0x1D);
    func_809F89CC(this);
}

void EnDodongo_Destroy(Actor* thisx, GlobalContext* globalCtx) {
    s32 pad;
    EnDodongo* this = THIS;

    Effect_Delete(globalCtx, this->blureIdx);
    Collider_DestroyTris(globalCtx, &this->collider2);
    Collider_DestroyJntSph(globalCtx, &this->collider3);
    Collider_DestroyQuad(globalCtx, &this->collider1);
}

void func_809F89CC(EnDodongo* this) {
    SkelAnime_ChangeAnimTransitionRepeat(&this->skelAnime, &D_06004C20, -4.0f);
    this->actor.speedXZ = 0.0f;
    this->unk_30C = Math_Rand_S16Offset(30, 50);
    this->unk_304 = 4;
    func_809F8250(this, func_809F8C94);
}

void func_809F8A34(EnDodongo* this) {
    f32 frames = SkelAnime_GetFrameCount(&D_06008B1C.genericHeader);

    SkelAnime_ChangeAnim(&this->skelAnime, &D_06008B1C, 0.0f, 0.0f, frames, 0, -4.0f);
    this->actor.speedXZ = 1.5f;
    this->unk_30C = Math_Rand_S16Offset(50, 70);
    this->unk_316 = 1;
    this->unk_304 = 8;
    func_809F8250(this, func_809F9424);
}

void func_809F8AD8(EnDodongo* this) {
    SkelAnime_ChangeAnimTransitionStop(&this->skelAnime, &D_060028F0, -4.0f);
    this->unk_304 = 3;
    this->actor.speedXZ = 0.0f;
    func_809F8250(this, func_809F8D58);
}

void func_809F8B2C(EnDodongo* this) {
    SkelAnime_ChangeAnimDefaultStop(&this->skelAnime, &D_06003088);
    this->unk_304 = 5;
    this->actor.speedXZ = 0.0f;
    func_809F8250(this, func_809F8D0C);
}

void func_809F8B7C(EnDodongo* this) {
    SkelAnime_ChangeAnim(&this->skelAnime, &D_060028F0, -1.0f, 35.0f, 0.0f, 2, -4.0f);
    this->unk_304 = 1;
    this->unk_30C = 25;
    this->actor.speedXZ = 0.0f;
    func_809F8250(this, func_809F8F2C);
}

void func_809F8BFC(EnDodongo* this) {
    SkelAnime_ChangeAnim(&this->skelAnime, &D_060028F0, 0.0f, 25.0f, 0.0f, 2, -4.0f);
    this->unk_304 = 7;
    this->actor.speedXZ = 0.0f;
    if (this->unk_3CC == 15) {
        this->unk_312 = 36;
    }
    Audio_PlayActorSound2(&this->actor, 0x389E);
    func_809F8250(this, func_809F9C3C);
}

void func_809F8C94(EnDodongo* this, GlobalContext* globalCtx) {
    SkelAnime_FrameUpdateMatrix(&this->skelAnime);
    if ((DECR(this->unk_30C) == 0) && func_800A56C8(&this->skelAnime, 0.0f)) {
        func_809F8A34(this);
    }
}

void func_809F8D0C(EnDodongo* this, GlobalContext* globalCtx) {
    if (SkelAnime_FrameUpdateMatrix(&this->skelAnime)) {
        func_809F89CC(this);
        this->unk_30C = Math_Rand_S16Offset(10, 20);
    }
}

void func_809F8D58(EnDodongo* this, GlobalContext* globalCtx) {
    s32 pad;
    Vec3f sp48 = { 0.0f, 0.0f, 0.0f };
    Vec3f sp3C = { 0.0f, 0.0f, 0.0f };
    Vec3f sp30;
    s16 pad2;
    s16 sp2C;

    if ((s32)this->skelAnime.animCurrentFrame == 24) {
        Audio_PlayActorSound2(&this->actor, 0x3801);
    }
    if ((29.0f <= this->skelAnime.animCurrentFrame) && (this->skelAnime.animCurrentFrame <= 43.0f)) {
        Audio_PlayActorSound2(&this->actor, 0x3002);
        sp2C = this->skelAnime.animCurrentFrame - 29.0f;
        sp30 = this->actor.posRot.pos;
        sp30.y += 35.0f;
        func_809FA674(this->actor.posRot.rot.y, 30.0f, &sp30);
        func_809FA674(this->actor.posRot.rot.y, 2.5f, &sp3C);
        EffectSsDFire_SpawnFixedScale(globalCtx, &sp30, &sp48, &sp3C, 255 - (sp2C * 10), sp2C + 3);
    } else if ((2.0f <= this->skelAnime.animCurrentFrame) && (this->skelAnime.animCurrentFrame <= 20.0f)) {
        Audio_PlayActorSound2(&this->actor, 0x3058);
    }
    if (SkelAnime_FrameUpdateMatrix(&this->skelAnime)) {
        func_809F8B2C(this);
    }
}

void func_809F8F2C(EnDodongo* this, GlobalContext* globalCtx) {
    Vec3f sp9C = { 0.0f, 0.0f, 0.0f };
    Vec3f sp90 = { 0.0f, 0.6f, 0.0f };
    Color_RGBA8 sp8C = { 255, 255, 255, 255 };
    Vec3f sp80 = { 0.0f, 0.0f, 0.0f };
    Vec3f sp74 = { 0.0f, 1.0f, 0.0f };
    s16 phi_s0;
    Vec3f sp64;
    s32 pad;

    if (this->actor.child != NULL) {
        this->actor.child->posRot.pos = this->unk_334;
        ((EnBom*)this->actor.child)->timer++;
    } else if (this->actor.parent != NULL) {
        this->actor.parent->posRot.pos = this->unk_334;
        ((EnBombf*)this->actor.parent)->timer++;
        //! @bug The devs forgot an explosive could also be a bombchu, which leads to a serious bug. ->timer (0x1F8) is
        //! outside the bounds of the bombchu actor and happens to be one of the pointers in the next arena node. When
        //! this value is written to, massive memory corruption occurs.
    }

    if ((s32)this->skelAnime.animCurrentFrame == 28) {
        Audio_PlayActorSound2(&this->actor, 0x385B);
        if (this->actor.child != NULL) {
            Actor_Kill(this->actor.child);
            this->actor.child = NULL;
        } else if (this->actor.parent != NULL) {
            Actor_Kill(this->actor.parent);
            this->actor.parent = NULL;
        }
    } else if ((s32)this->skelAnime.animCurrentFrame == 24) {
        this->unk_30C--;
        if (this->unk_30C != 0) {
            this->skelAnime.animCurrentFrame++;
            if (this->unk_30C == 10) {
                for (phi_s0 = 10; phi_s0 >= 0; phi_s0--) {
                    sp80.x = Math_Rand_CenteredFloat(10.0f);
                    sp80.y = Math_Rand_CenteredFloat(10.0f);
                    sp80.z = Math_Rand_CenteredFloat(10.0f);
                    sp74.x = sp80.x * -0.1f;
                    sp74.y = sp80.y * -0.1f;
                    sp74.z = sp80.z * -0.1f;
                    sp64.x = this->sphElements[0].dim.worldSphere.center.x + sp80.x;
                    sp64.y = this->sphElements[0].dim.worldSphere.center.y + sp80.y;
                    sp64.z = this->sphElements[0].dim.worldSphere.center.z + sp80.z;
                    func_8002836C(globalCtx, &sp64, &sp80, &sp74, &this->unk_3C4, &this->unk_3C8, 0x190, 0xA, 0xA);
                }
                Audio_PlayActorSound2(&this->actor, 0x180E);
                func_8003426C(&this->actor, 0x4000, 0x78, 0, 8);
            }
        }
    }
    if ((s32)this->skelAnime.animCurrentFrame < 28) {
        if (((s32)this->skelAnime.animCurrentFrame < 26) && (this->unk_30C < 11)) {
            func_809F8258(this, globalCtx);
        } else {
            sp64 = this->unk_340;
            func_8002829C(globalCtx, &sp64, &sp9C, &sp90, &sp8C, &sp8C, 0x32, 5);
            sp64.x -= (Math_Coss(this->actor.shape.rot.y) * 6.0f);
            sp64.z += (Math_Sins(this->actor.shape.rot.y) * 6.0f);
            func_8002829C(globalCtx, &sp64, &sp9C, &sp90, &sp8C, &sp8C, 0x32, 5);
            sp64.x = (Math_Coss(this->actor.shape.rot.y) * 6.0f) + this->unk_340.x;
            sp64.z = this->unk_340.z - (Math_Sins(this->actor.shape.rot.y) * 6.0f);
            func_8002829C(globalCtx, &sp64, &sp9C, &sp90, &sp8C, &sp8C, 0x32, 5);
        }
    }
    this->unk_350 = this->unk_354 = (Math_Sins(this->actor.dmgEffectTimer * 0x1000) * 0.5f) + 1.0f;

    this->unk_34C = Math_Sins(this->actor.dmgEffectTimer * 0x1000) + 1.0f;
    SkelAnime_FrameUpdateMatrix(&this->skelAnime);
    if (this->unk_30C == 0) {
        func_809F9A80(this, globalCtx);
    }
}

void func_809F9424(EnDodongo* this, GlobalContext* globalCtx) {
    s32 pad;
    f32 playbackSpeed;
    Player* player = PLAYER;
    s16 sp42 = (s16)(this->actor.yawTowardsLink - this->actor.shape.rot.y);

    sp42 = (sp42 < 0) ? -sp42 : sp42;

    Math_SmoothScaleMaxMinF(&this->actor.speedXZ, 1.5f, 0.1f, 1.0f, 0.0f);

    playbackSpeed = this->actor.speedXZ * 0.75f;
    if (this->actor.speedXZ >= 0.0f) {
        if (playbackSpeed > 3.0f / 2) {
            playbackSpeed = 3.0f / 2;
        }
    } else {
        if (playbackSpeed < -3.0f / 2) {
            playbackSpeed = -3.0f / 2;
        }
    }
    this->skelAnime.animPlaybackSpeed = playbackSpeed;

    SkelAnime_FrameUpdateMatrix(&this->skelAnime);
    if ((s32)this->skelAnime.animCurrentFrame < 21) {
        if (this->unk_316 == 0) {
            Audio_PlayActorSound2(&this->actor, 0x3800);
            func_80033260(globalCtx, &this->actor, &this->unk_31C, 10.0f, 3, 2.0f, 0xC8, 0xF, 0);
            this->unk_316 = 1;
        }
    } else {
        if (this->unk_316 != 0) {
            Audio_PlayActorSound2(&this->actor, 0x3800);
            func_80033260(globalCtx, &this->actor, &this->unk_328, 10.0f, 3, 2.0f, 0xC8, 0xF, 0);
            this->unk_316 = 0;
        }
    }

    if (Math_Vec3f_DistXZ(&this->actor.initPosRot.pos, &player->actor.posRot.pos) < 400.0f) {
        Math_SmoothScaleMaxMinS(&this->actor.posRot.rot.y, this->actor.yawTowardsLink, 1, 0x1F4, 0);
        this->actor.flags |= 1;
        if ((this->actor.xzDistFromLink < 100.0f) && (sp42 < 0x1388) && (this->actor.yDistFromLink < 60.0f)) {
            func_809F8AD8(this);
        }
    } else {
        this->actor.flags &= ~1;
        if ((150.0f < Math_Vec3f_DistXZ(&this->actor.posRot.pos, &this->actor.initPosRot.pos)) ||
            (this->unk_30E != 0)) {
            s16 sp40 = Math_Vec3f_Yaw(&this->actor.posRot.pos, &this->actor.initPosRot.pos);

            Math_SmoothScaleMaxMinS(&this->actor.posRot.rot.y, sp40, 1, 0x1F4, 0);
        }
        if (this->unk_30E != 0) {
            this->unk_30E--;
        }
        this->unk_30C--;
        if (this->unk_30C == 0) {
            if (0.7f < Math_Rand_ZeroOne()) {
                this->unk_30C = Math_Rand_S16Offset(50, 70);
                this->unk_30E = Math_Rand_S16Offset(15, 40);
            } else {
                func_809F89CC(this);
            }
        }
    }

    this->actor.shape.rot.y = this->actor.posRot.rot.y;
}

void func_809F9760(EnDodongo* this) {
    SkelAnime_ChangeAnimTransitionStop(&this->skelAnime, &D_06001A44, -4.0f);
    Audio_PlayActorSound2(&this->actor, 0x3803);
    this->unk_304 = 0;
    this->unk_30C = 0;
    this->actor.speedXZ = 0.0f;
    func_809F8250(this, func_809F97C0);
}

void func_809F97C0(EnDodongo* this, GlobalContext* globalCtx) {
    s16 yawDiff1 = this->actor.yawTowardsLink - this->actor.shape.rot.y;

    if (SkelAnime_FrameUpdateMatrix(&this->skelAnime)) {
        if ((this->unk_30C != 0) || (ABS(yawDiff1) < 0x4000)) {
            this->sphElements[2].body.toucherFlags = 0;
            this->sphElements[1].body.toucherFlags = 0;
            this->collider3.base.atFlags = 0;
            this->sphElements[2].body.toucher.flags = 0;
            this->sphElements[1].body.toucher.flags = 0;
            this->sphElements[2].body.toucher.damage = 0;
            this->sphElements[1].body.toucher.damage = 0;
            func_809F8AD8(this);
            this->unk_30C = Math_Rand_S16Offset(5, 10);
        } else {
            s16 yawDiff2 = this->actor.yawTowardsLink - this->actor.shape.rot.y;
            AnimationHeader* animation;

            this->unk_310 = (0xFFFF - ABS(yawDiff2)) / 0xF;
            if ((s16)(this->actor.yawTowardsLink - this->actor.shape.rot.y) >= 0) {
                this->unk_310 = -this->unk_310;
                animation = &D_060042C4;
            } else {
                animation = &D_06003B14;
            }
            Audio_PlayActorSound2(&this->actor, 0x3859);
            SkelAnime_ChangeAnimPlaybackStop(&this->skelAnime, animation, 2.0f);
            this->unk_30C = 18;
            this->collider3.base.atFlags = this->sphElements[1].body.toucherFlags =
                this->sphElements[2].body.toucherFlags = 0x11;
            this->sphElements[1].body.toucher.flags = this->sphElements[2].body.toucher.flags = 0xFFCFFFFF;
            this->sphElements[1].body.toucher.damage = this->sphElements[2].body.toucher.damage = 8;
        }
    } else if (this->unk_30C > 1) {
        Vec3f tailPos;

        this->unk_30C--;
        this->actor.posRot.rot.y += this->unk_310;
        this->actor.shape.rot.y = this->actor.posRot.rot.y;
        tailPos.x = this->sphElements[1].dim.worldSphere.center.x;
        tailPos.y = this->sphElements[1].dim.worldSphere.center.y;
        tailPos.z = this->sphElements[1].dim.worldSphere.center.z;
        func_80033260(globalCtx, &this->actor, &tailPos, 5.0f, 2, 2.0f, 100, 15, 0);
        tailPos.x = this->sphElements[2].dim.worldSphere.center.x;
        tailPos.y = this->sphElements[2].dim.worldSphere.center.y;
        tailPos.z = this->sphElements[2].dim.worldSphere.center.z;
        func_80033260(globalCtx, &this->actor, &tailPos, 5.0f, 2, 2.0f, 100, 15, 0);

        if (this->collider3.base.atFlags & 2) {
            Player* player = PLAYER;

            if (this->collider3.base.at == &player->actor) {
                Audio_PlayActorSound2(&player->actor, 0x83E);
            }
        }
        CollisionCheck_SetAT(globalCtx, &globalCtx->colChkCtx, &this->collider3.base);
    }
}

void func_809F9A80(EnDodongo* this, GlobalContext* globalCtx) {
    SkelAnime_ChangeAnimTransitionStop(&this->skelAnime, &D_060013C4, -8.0f);
    this->unk_30C = 0;
    Audio_PlayActorSound2(&this->actor, 0x3804);
    this->unk_304 = 2;
    this->actor.flags &= ~1;
    this->actor.speedXZ = 0.0f;
    func_809F8250(this, func_809F9AF8);
}

void func_809F9AF8(EnDodongo* this, GlobalContext* globalCtx) {
    EnBom* bomb;

    if (this->skelAnime.animCurrentFrame < 35.0f) {
        if (this->actor.params == 0) {
            func_809F8258(this, globalCtx);
        }
    } else if (this->actor.dmgEffectTimer == 0) {
        func_8003426C(&this->actor, 0x4000, 0x78, 0, 4);
    }
    if (SkelAnime_FrameUpdateMatrix(&this->skelAnime) != 0) {
        if (this->unk_30C == 0) {
            bomb = (EnBom*)Actor_Spawn(&globalCtx->actorCtx, globalCtx, ACTOR_EN_BOM, this->actor.posRot.pos.x,
                                       this->actor.posRot.pos.y, this->actor.posRot.pos.z, 0, 0, 6, BOMB_BODY);
            if (bomb != NULL) {
                bomb->timer = 0;
                this->unk_30C = 8;
            }
        }
    } else if ((s32)this->skelAnime.animCurrentFrame == 0x34) {
        Audio_PlayActorSound2(&this->actor, 0x387A);
    }
    if (this->unk_30C != 0) {
        this->unk_30C--;
        if (this->unk_30C == 0) {
            Item_DropCollectibleRandom(globalCtx, &this->actor, &this->actor.posRot.pos, 0x40);
            Actor_Kill(&this->actor);
        }
    }
}

void func_809F9C3C(EnDodongo* this, GlobalContext* globalCtx) {
    SkelAnime_FrameUpdateMatrix(&this->skelAnime);
    if (this->actor.dmgEffectTimer == 0) {
        if (this->actor.colChkInfo.health == 0) {
            func_809F9A80(this, globalCtx);
        } else {
            func_809F89CC(this);
        }
    }
}

void func_809F9CA0(EnDodongo* this, GlobalContext* globalCtx) {
    if (this->collider2.base.acFlags & 0x80) {
        this->collider2.base.acFlags &= ~0x80;
        this->collider3.base.acFlags &= ~2;
    } else if ((this->collider3.base.acFlags & 2) && (this->unk_304 >= 3)) {
        this->collider3.base.acFlags &= ~2;
        func_8003573C(&this->actor, &this->collider3, 0);
        if (this->actor.colChkInfo.damageEffect != 0xE) {
            this->unk_3CC = this->actor.colChkInfo.damageEffect;
            if ((this->actor.colChkInfo.damageEffect == 1) || (this->actor.colChkInfo.damageEffect == 0xF)) {
                if (this->unk_304 != 7) {
                    func_8003426C(&this->actor, 0, 0x78, 0, 0x50);
                    Actor_ApplyDamage(&this->actor);
                    func_809F8BFC(this);
                }
            } else {
                func_8003426C(&this->actor, 0x4000, 0x78, 0, 8);
                if (Actor_ApplyDamage(&this->actor) == 0) {
                    func_809F9A80(this, globalCtx);
                } else {
                    func_809F9760(this);
                }
            }
        }
    }
}

void func_809F9DC8(EnDodongo* this, GlobalContext* globalCtx) {
    Vec3f sp94 = { -1000.0f, -1500.0f, 0.0f };
    Vec3f sp88 = { -1000.0f, -200.0f, 1500.0f };
    Vec3f sp7C = { -1000.0f, -200.0f, -1500.0f };
    Vec3f sp70 = { 0.0f, 0.0f, 0.0f };
    f32 temp_f2;
    s32 pad3 = 3;
    s32 pad2 = 2;
    s32 pad1 = 1;
    s32 pad0 = 0;
    s32 pad58;
    s32 pad54;
    s32 pad50;
    s32 pad4C;
    s32 pad48;
    s32 pad44;
    s32 pad40;
    s32 pad3C;
    s32 pad38;

    temp_f2 = func_800CA720((this->skelAnime.animCurrentFrame - 28.0f) * 0.08f) * 5500.0f;
    sp7C.x -= temp_f2;
    sp94.x -= temp_f2;
    sp88.x -= temp_f2;

    Matrix_MultVec3f(&sp94, &this->collider1.dim.quad[pad1]);
    Matrix_MultVec3f(&sp88, &this->collider1.dim.quad[pad0]);
    Matrix_MultVec3f(&sp7C, &this->collider1.dim.quad[pad3]);
    Matrix_MultVec3f(&sp70, &this->collider1.dim.quad[pad2]);

    func_80062734(&this->collider1, &this->collider1.dim.quad[pad0], &this->collider1.dim.quad[pad1],
                  &this->collider1.dim.quad[pad2], &this->collider1.dim.quad[pad3]);
}

void EnDodongo_Update(Actor* thisx, GlobalContext* globalCtx) {
    s32 pad;
    EnDodongo* this = THIS;

    func_809F9CA0(this, globalCtx);
    if (this->actor.colChkInfo.damageEffect != 0xE) {
        this->actionFunc(this, globalCtx);
        Actor_MoveForward(&this->actor);
        func_8002E4B4(globalCtx, &this->actor, 75.0f, 60.0f, 70.0f, 0x1D);
        if (this->actor.bgCheckFlags & 2) {
            Audio_PlayActorSound2(&this->actor, 0x387A);
        }
    }
    CollisionCheck_SetOC(globalCtx, &globalCtx->colChkCtx, &this->collider3.base);
    if (this->unk_304 != 2) {
        CollisionCheck_SetAC(globalCtx, &globalCtx->colChkCtx, &this->collider2.base);
    }
    if (this->unk_304 >= 3) {
        CollisionCheck_SetAC(globalCtx, &globalCtx->colChkCtx, &this->collider3.base);
    }
    if ((this->unk_304 >= 4) && func_809FA6D8(this, globalCtx)) {
        func_809F8B7C(this);
    }
    if ((this->unk_304 == 3) && (29.0f < this->skelAnime.animCurrentFrame) &&
        (this->skelAnime.animCurrentFrame < 43.0f)) {
        CollisionCheck_SetAT(globalCtx, &globalCtx->colChkCtx, &this->collider1.base);
    }
    this->actor.posRot2.pos.x = this->actor.posRot.pos.x + Math_Sins(this->actor.shape.rot.y) * -30.0f;
    this->actor.posRot2.pos.y = this->actor.posRot.pos.y + 20.0f;
    this->actor.posRot2.pos.z = this->actor.posRot.pos.z + Math_Coss(this->actor.shape.rot.y) * -30.0f;
}

s32 func_809FA0F8(GlobalContext* globalCtx, s32 limbIndex, Gfx** dList, Vec3f* pos, Vec3s* rot, Actor* thisx) {
    EnDodongo* this = THIS;

    if ((limbIndex == 0xF) || (limbIndex == 0x10)) {
        Matrix_Scale(this->unk_34C, this->unk_350, this->unk_354, MTXMODE_APPLY);
    }
    return 0;
}

void func_809FA14C(GlobalContext* globalCtx, s32 limbIndex, Gfx** dList, Vec3s* rot, Actor* thisx) {
    static Vec3f D_809FAB38[3] = {
        { 1100.0f, -700.0f, 0.0f },
        { 0.0f, 0.0f, 0.0f },
        { 2190.0f, 0.0f, 0.0f },
    };
    Vec3f sp17C = { 3000.0f, 0.0f, 0.0f };
    Vec3f sp170 = { 0.0f, 0.0f, 0.0f };
    s32 i;
    Vec3f sp148[3];
    Vec3f sp124[3];
    Vec3f sp100[3];
    Vec3f spF4;
    Vec3f spE8;
    EnDodongo* this = THIS;
    Vec3f spC0[] = {
        { -300.0f, -2500.0f, 0.0f },
        { -300.0f, 1200.0f, -2700.0f },
        { 3000.0f, 1200.0f, 0.0f },
    };
    Vec3f sp9C[] = {
        { -300.0f, -2500.0f, 0.0f },
        { -300.0f, 1200.0f, 2700.0f },
        { 3000.0f, 1200.0f, 0.0f },
    };
    Vec3f sp78[] = {
        { -600.0f, 1200.0f, -2800.0f },
        { -600.0f, 1200.0f, 2800.0f },
        { 3000.0f, 1200.0f, 0.0f },
    };
    Vec3f sp6C = { 1800.0f, 1200.0f, 0.0f };
    Vec3f sp60 = { 1500.0f, 300.0f, 0.0f };

    func_800628A4(limbIndex, &this->collider3);

    switch (limbIndex) {
        case 2:
            if ((this->unk_304 == 3) && (29.0f < this->skelAnime.animCurrentFrame) &&
                (this->skelAnime.animCurrentFrame < 43.0f)) {
                func_809F9DC8(this, globalCtx);
            }
            break;
        case 7:
            for (i = 0; i < 3; i++) {
                Matrix_MultVec3f(&spC0[i], &sp148[i]);
                Matrix_MultVec3f(&sp9C[i], &sp124[i]);
                Matrix_MultVec3f(&sp78[i], &sp100[i]);
            }
            func_800627A0(&this->collider2, 0, &sp148[0], &sp148[1], &sp148[2]);
            func_800627A0(&this->collider2, 1, &sp124[0], &sp124[1], &sp124[2]);
            func_800627A0(&this->collider2, 2, &sp100[0], &sp100[1], &sp100[2]);
            Matrix_MultVec3f(&sp6C, &this->unk_334);
            Matrix_MultVec3f(&sp60, &this->unk_340);
            break;
        case 15:
            if ((this->unk_304 == 0) && (this->unk_30C >= 2)) {
                Matrix_MultVec3f(&sp17C, &spF4);
                Matrix_MultVec3f(&sp170, &spE8);
                EffectBlure_AddVertex(Effect_GetByIndex(this->blureIdx), &spF4, &spE8);
            } else if ((this->unk_304 == 0) && (this->unk_30C != 0)) {
                EffectBlure_AddSpace(Effect_GetByIndex(this->blureIdx));
            }
            break;
        case 21:
            Matrix_MultVec3f(&D_809FAB38[1], &this->unk_31C);
            break;
        case 28:
            Matrix_MultVec3f(&D_809FAB38[1], &this->unk_328);
            break;
    }
    if (this->unk_312 != 0) {
        i = -1;
        switch (limbIndex) {
            case 7:
                sp170.x = 1200.0f;
                i = 0;
                break;
            case 13:
                i = 1;
                break;
            case 14:
                i = 2;
                break;
            case 15:
                i = 3;
                break;
            case 16:
                i = 4;
                break;
            case 22:
                i = 5;
                break;
            case 29:
                i = 6;
                break;
            case 21:
                i = 7;
                break;
            case 28:
                i = 8;
                break;
        }
        if (i >= 0) {
            Matrix_MultVec3f(&sp170, &this->unk_358[i]);
        }
    }
}

void EnDodongo_Draw(Actor* thisx, GlobalContext* globalCtx2) {
    GlobalContext* globalCtx = globalCtx2;
    EnDodongo* this = THIS;
    s32 index;

    func_80093D18(globalCtx->state.gfxCtx);
    SkelAnime_Draw(globalCtx, this->skelAnime.skeleton, this->skelAnime.limbDrawTbl, func_809FA0F8, func_809FA14C,
                   &this->actor);

    if (this->unk_312 != 0) {
        this->actor.dmgEffectTimer++;
        if (1) {}
        this->unk_312--;
        if ((this->unk_312 % 4) == 0) {
            index = this->unk_312 >> 2;
            EffectSsEnIce_SpawnFlyingVec3f(globalCtx, &this->actor, &this->unk_358[index], 0x96, 0x96, 0x96, 0xFA, 0xEB,
                                           0xF5, 0xFF, 1.8f);
        }
    }
}

void func_809FA674(s16 yaw, f32 radius, Vec3f* vec) {
    vec->x += Math_Sins(yaw) * radius;
    vec->z += Math_Coss(yaw) * radius;
}

s32 func_809FA6D8(EnDodongo* this, GlobalContext* globalCtx) {
    Actor* actor = globalCtx->actorCtx.actorList[ACTORTYPE_EXPLOSIVES].first;
    f32 dx;
    f32 dy;
    f32 dz;

    while (actor != NULL) {
        if ((actor->params != 0) || (actor->parent != NULL)) {
            actor = actor->next;
            continue;
        }
        dx = actor->posRot.pos.x - this->unk_334.x;
        dy = actor->posRot.pos.y - this->unk_334.y;
        dz = actor->posRot.pos.z - this->unk_334.z;
        if ((fabsf(dx) < 20.0f) && (fabsf(dy) < 10.0f) && (fabsf(dz) < 20.0f)) {
            if (actor->id == ACTOR_EN_BOM) {
                this->actor.child = actor;
            } else {
                this->actor.parent = actor;
            }
            actor->parent = &this->actor;
            return true;
        }
        actor = actor->next;
    }
    return false;
}
