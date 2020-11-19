#include "z_en_dodongo.h"
#include "overlays/actors/ovl_En_Bom/z_en_bom.h"

#define FLAGS 0x00000015

#define THIS ((EnDodongo*)thisx)

void EnDodongo_Init(EnDodongo* this, GlobalContext* globalCtx);
void EnDodongo_Destroy(EnDodongo* this, GlobalContext* globalCtx);
void EnDodongo_Update(EnDodongo* this, GlobalContext* globalCtx);
void EnDodongo_Draw(EnDodongo* this, GlobalContext* globalCtx);

void func_809FA674(s16 arg0, f32 arg1, Vec3f* arg2);
s32 func_809FA0F8(GlobalContext* globalCtx, s32 limbIndex, Gfx** dList, Vec3f* pos, Vec3s* rot, EnDodongo* this);
void func_809FA14C(GlobalContext* globalCtx, s32 limbIndex, Gfx** dList, Vec3s* rot, EnDodongo* this);

void func_809F9A80(EnDodongo* this, GlobalContext* globalCtx);
void func_809F8258(EnDodongo* this, GlobalContext* globalCtx); //
s32 func_809FA6D8(EnDodongo* this, GlobalContext* globalCtx);
void func_809F9CA0(EnDodongo* this, GlobalContext* globalCtx);
void func_809F9DC8(EnDodongo* this, GlobalContext* globalCtx);

void func_809F89CC(EnDodongo* this);
void func_809F8A34(EnDodongo* this);
void func_809F8AD8(EnDodongo* this);
void func_809F8B2C(EnDodongo* this);
void func_809F8B7C(EnDodongo* this);
void func_809F8BFC(EnDodongo* this);
void func_809F9760(EnDodongo* this);
void func_809F8C94(EnDodongo* this, GlobalContext* globalCtx);
void func_809F8D0C(EnDodongo* this, GlobalContext* globalCtx);
void func_809F8D58(EnDodongo* this, GlobalContext* globalCtx);
void func_809F8F2C(EnDodongo* this, GlobalContext* globalCtx);
void func_809F9424(EnDodongo* this, GlobalContext* globalCtx);
void func_809F9C3C(EnDodongo* this, GlobalContext* globalCtx);
void func_809F9AF8(EnDodongo* this, GlobalContext* globalCtx);
void func_809F97C0(EnDodongo* this, GlobalContext* globalCtx); //

extern SkeletonHeader D_06008318;
extern AnimationHeader D_06003B14;
extern AnimationHeader D_060042C4;
extern AnimationHeader D_06004C20;
extern AnimationHeader D_06008B1C;
extern AnimationHeader D_060028F0;
extern AnimationHeader D_06003088;
extern AnimationHeader D_060013C4;
extern AnimationHeader D_06001A44;

/*
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
*/

extern ColliderJntSph D_809FA7E0[];
// 0x00000000, 0x00000000, 0x00000000, 0xFFCFFFFF, 0x00000000, 0x00010100, 0x0F000000, 0x00000000, 0x00110064, 0x00000000, 0x00000000, 0x00000000, 0xFFCFFFFF, 0x00000000, 0x00010100, 0x0E000000, 0x00000000, 0x000F0064, 0x00000000, 0x00000000, 0x00000000, 0xFFCFFFFF, 0x00000000, 0x00010100, 0x0D000000, 0x00000000, 0x000A0064, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000100, 0x15000000, 0x00000000, 0x00140064, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000100, 0x1C000000, 0x00000000, 0x00140064, 0x00000000, 0x00000000, 0x00000000, 0x0D800691, 0x00000000, 0x00010900, 0x06000000, 0x00000000, 0x00230064
extern ColliderJntSphInit D_809FA8B8;
// 0x00110939, 0x10000000, 0x00000006, D_809FA7E0
extern ColliderTrisItemInit D_809FA8C8[];
// 0x02000000, 0x00000000, 0x00000000, 0xF24BF96E, 0x00000000, 0x000D0000, 0xC1200000, 0x41600000, 0x40000000, 0xC1200000, 0xC0C00000, 0x40000000, 0x41100000, 0x41600000, 0x40000000, 0x02000000, 0x00000000, 0x00000000, 0xFFCBF96E, 0x00000000, 0x000D0000, 0xC1200000, 0xC0C00000, 0x40000000, 0x41100000, 0xC0C00000, 0x40000000, 0x41100000, 0x41600000, 0x40000000, 0x02000000, 0x00000000, 0x00000000, 0xFFCBF96E, 0x00000000, 0x000D0000, 0xC1200000, 0xC0C00000, 0x40000000, 0x41100000, 0xC0C00000, 0x40000000, 0x41100000, 0x41600000, 0x40000000
extern ColliderTrisInit D_809FA97C;
// 0x09000D00, 0x00020000, 0x00000003, D_809FA8C8
extern ColliderQuadInit D_809FA98C;
// 0x0A110000, 0x00030000, 0x00000000, 0x20000000, 0x01100000, 0x00000000, 0x00000000, 0x81000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
extern DamageTable D_809FA9DC;
// 0x10020102, 0x10010210, 0x01020402, 0xF4020202, 0x0260F360, 0x00000104, 0x02020804, 0x00000400

void func_809F8250(EnDodongo *this, EnDodongoActionFunc actionFunc) {
    this->actionFunc = actionFunc;
}

extern Vec3f D_809FA9FC;
// 0x00000000, 0x00000000, 0x00000000
extern Vec3f D_809FAA08;
// 0x00000000, 0x3E99999A, 0x00000000

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Dodongo/func_809F8258.s")

extern InitChainEntry D_809FAA14[];
// 0x8917000D, 0xB86CFC18, 0x304C0AF0

void EnDodongo_Init(EnDodongo *thisx, GlobalContext *globalCtx) {
    EnDodongo* this = THIS;
    EffectBlureInit1 sp54;

    this->actor.unk_1F = 3;
    Actor_ProcessInitChain(&this->actor, D_809FAA14);
    this->unk_3C4 = this->unk_3C5 = this->unk_3C8 = 0xFF;
    this->unk_3C7 = this->unk_3CB = 0xC8;
    this->unk_3C9 = 0xA;
    this->unk_34C = this->unk_350 = this->unk_354 = 1.0f;
    ActorShape_Init(&this->actor.shape, 0.0f, &ActorShadow_DrawFunc_Circle, 48.0f);
    Actor_SetScale(&this->actor, 0.01875f);
    SkelAnime_Init(globalCtx, &this->skelAnime, &D_06008318, &D_06004C20, this->limbDrawTable, this->transitionDrawTable, 31);
    this->actor.colChkInfo.health = 4;
    this->actor.colChkInfo.mass = 0xFE;
    this->actor.colChkInfo.damageTable = &D_809FA9DC;
    Collider_InitQuad(globalCtx, &this->collider1);
    Collider_InitTris(globalCtx, &this->collider2);
    Collider_InitJntSph(globalCtx,&this->collider3);
    Collider_SetQuad(globalCtx, &this->collider1, &this->actor, &D_809FA98C);
    Collider_SetTris(globalCtx, &this->collider2, &this->actor, &D_809FA97C, this->trisElements);
    Collider_SetJntSph(globalCtx, &this->collider3, &this->actor, &D_809FA8B8, this->sphElements);

    sp54.p1StartColor[0] = sp54.p1StartColor[1] = sp54.p1StartColor[2] = sp54.p1StartColor[3] = sp54.p2StartColor[0] = sp54.p2StartColor[1] = sp54.p2StartColor[2] = sp54.p1EndColor[0] = sp54.p1EndColor[1] = sp54.p1EndColor[2] = sp54.p2EndColor[0] = sp54.p2EndColor[1] = sp54.p2EndColor[2] = 0xFF;
    
    sp54.p1EndColor[3] = sp54.p2EndColor[3] = 0;
    sp54.p2StartColor[3] = 0x40;
    sp54.elemDuration = 8;
    sp54.unkFlag = false;
    sp54.calcMode = 2;
    
    Effect_Add(globalCtx, &this->blureIdx, 1, 0, 0, &sp54);
    func_8002E4B4(globalCtx, &this->actor, 75.0f, 60.0f, 70.0f, 0x1D);
    func_809F89CC(this);
}

void EnDodongo_Destroy(EnDodongo *thisx, GlobalContext *globalCtx) {
    s32 pad;
    EnDodongo* this = THIS;

    Effect_Delete(globalCtx, this->blureIdx);
    Collider_DestroyTris(globalCtx, &this->collider2);
    Collider_DestroyJntSph(globalCtx, &this->collider3);
    Collider_DestroyQuad(globalCtx, &this->collider1);
}

void func_809F89CC(EnDodongo *this) {
    SkelAnime_ChangeAnimTransitionRepeat(&this->skelAnime, &D_06004C20, -4.0f);
    this->actor.speedXZ = 0.0f;
    this->unk_30C = Math_Rand_S16Offset(30, 50);
    this->unk_304 = 4;
    func_809F8250(this, func_809F8C94);
}

void func_809F8A34(EnDodongo *this) {
    f32 frames = SkelAnime_GetFrameCount(&D_06008B1C.genericHeader);

    SkelAnime_ChangeAnim(&this->skelAnime, &D_06008B1C, 0.0f, 0.0f, frames, 0, -4.0f);
    this->actor.speedXZ = 1.5f;
    this->unk_30C = Math_Rand_S16Offset(50, 70);
    this->unk_316 = 1;
    this->unk_304 = 8;
    func_809F8250(this, func_809F9424);
}

void func_809F8AD8(EnDodongo *this) {
    SkelAnime_ChangeAnimTransitionStop(&this->skelAnime, &D_060028F0, -4.0f);
    this->unk_304 = 3;
    this->actor.speedXZ = 0.0f;
    func_809F8250(this, func_809F8D58);
}

void func_809F8B2C(EnDodongo *this) {
    SkelAnime_ChangeAnimDefaultStop(&this->skelAnime, &D_06003088);
    this->unk_304 = 5;
    this->actor.speedXZ = 0.0f;
    func_809F8250(this, func_809F8D0C);
}

void func_809F8B7C(EnDodongo *this) {
    SkelAnime_ChangeAnim(&this->skelAnime, &D_060028F0, -1.0f, 35.0f, 0.0f, 2, -4.0f);
    this->unk_304 = 1;
    this->unk_30C = 25;
    this->actor.speedXZ = 0.0f;
    func_809F8250(this, func_809F8F2C);
}

void func_809F8BFC(EnDodongo *this) {
    SkelAnime_ChangeAnim(&this->skelAnime, &D_060028F0, 0.0f, 25.0f, 0.0f, 2, -4.0f);
    this->unk_304 = 7;
    this->actor.speedXZ = 0.0f;
    if (this->unk_3CC == 15) {
        this->unk_312 = 36;
    }
    Audio_PlayActorSound2(this, 0x389E);
    func_809F8250(this, func_809F9C3C);
}

void func_809F8C94(EnDodongo *this, GlobalContext *globalCtx) {
    SkelAnime_FrameUpdateMatrix(&this->skelAnime);
    if ((DECR(this->unk_30C) == 0) && func_800A56C8(&this->skelAnime, 0.0f)) {
        func_809F8A34(this);
    }
}

void func_809F8D0C(EnDodongo *this, GlobalContext *globalCtx) {
    if (SkelAnime_FrameUpdateMatrix(&this->skelAnime)) {
        func_809F89CC(this);
        this->unk_30C = Math_Rand_S16Offset(10, 20);
    }
}

extern Vec3f D_809FAA20;
// 0x00000000, 0x00000000, 0x00000000
extern Vec3f D_809FAA2C;
// 0x00000000, 0x00000000, 0x00000000

void func_809F8D58(EnDodongo *this, GlobalContext *globalCtx) {
    s32 pad;
    Vec3f sp48 = D_809FAA20;
    Vec3f sp3C = D_809FAA2C;
    Vec3f sp30;
    s16 pad2;
    s16 sp2C;

    if ((s32)this->skelAnime.animCurrentFrame == 24) {
        Audio_PlayActorSound2(this, 0x3801);
    }
    if ((29.0f <= this->skelAnime.animCurrentFrame) && (this->skelAnime.animCurrentFrame <= 43.0f)) {
        Audio_PlayActorSound2(this, 0x3002);
        sp2C = this->skelAnime.animCurrentFrame - 29.0f;
        sp30 =  this->actor.posRot.pos;
        sp30.y += 35.0f;
        func_809FA674(this->actor.posRot.rot.y, 30.0f, &sp30);
        func_809FA674(this->actor.posRot.rot.y, 2.5f, &sp3C);
        EffectSsDFire_SpawnFixedScale(globalCtx, &sp30, &sp48, &sp3C, 255 - (sp2C * 10), sp2C + 3);
    } else if ((2.0f <= this->skelAnime.animCurrentFrame) && (this->skelAnime.animCurrentFrame <= 20.0f)) {
        Audio_PlayActorSound2(this, 0x3058);
    }
    if (SkelAnime_FrameUpdateMatrix(&this->skelAnime)) {
        func_809F8B2C(this);
    }
}

extern Vec3f D_809FAA38;
// 0x00000000, 0x00000000, 0x00000000
extern Vec3f D_809FAA44;
// 0x00000000, 0x3F19999A, 0x00000000
extern Color_RGBA8 D_809FAA50;
// 0xFFFFFFFF
extern Vec3f D_809FAA54;
// 0x00000000, 0x00000000, 0x00000000
extern Vec3f D_809FAA60;
// 0x00000000, 0x3F800000, 0x00000000

void func_809F8F2C(EnDodongo *this, GlobalContext *globalCtx) {
    Vec3f sp9C = D_809FAA38;
    Vec3f sp90 = D_809FAA44;
    Color_RGBA8 sp8C = D_809FAA50;
    Vec3f sp80 = D_809FAA54;
    Vec3f sp74 = D_809FAA60;
    s16 phi_s0;
    Vec3f sp64;
    s32 pad;
    

    if (this->actor.child != NULL) {
        this->actor.child->posRot.pos = this->unk_334;
        ((EnBom*)this->actor.child)->timer++;
    } else if (this->actor.parent != NULL) {
        this->actor.parent->posRot.pos = this->unk_334;
        ((EnBom*)this->actor.parent)->timer++;
    }
    
    if ((s32)this->skelAnime.animCurrentFrame == 28) {
        Audio_PlayActorSound2(this, 0x385B);
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
                for(phi_s0 = 10; phi_s0 >= 0; phi_s0--) {
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
                Audio_PlayActorSound2(this, 0x180E);
                func_8003426C(this, 0x4000, 0x78, 0, 8);
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

#ifdef NON_MATCHING
void func_809F9424(EnDodongo *this, GlobalContext *globalCtx) {
    Player* player = PLAYER;
    f32 phi_f12;
    f32 pad;
    s16 sp42 = (s16)(this->actor.yawTowardsLink - this->actor.shape.rot.y);
    s16 sp40;

    sp42 = (sp42 < 0) ? -sp42 : sp42;

    Math_SmoothScaleMaxMinF(&this->actor.speedXZ, 1.5f, 0.1f, 1.0f, 0.0f);

    phi_f12 = this->actor.speedXZ * 0.75f;
    if (this->actor.speedXZ >= 0.0f) {
        if (phi_f12 > 1.5f) {
            phi_f12 = 1.5f;
        }
    } else {
        if(phi_f12 < -1.5f){
            phi_f12 = -1.5f;
        }
    }
    this->skelAnime.animPlaybackSpeed = phi_f12;

    SkelAnime_FrameUpdateMatrix(&this->skelAnime);
    if ((s32)this->skelAnime.animCurrentFrame < 21) {
        if (this->unk_316 == 0) {
            Audio_PlayActorSound2(this, 0x3800);
            func_80033260(globalCtx, this, &this->unk_31C, 10.0f, 3, 2.0f, 0xC8, 0xF, 0);
            this->unk_316 = 1;
        }
    } else if (this->unk_316 != 0) {
        Audio_PlayActorSound2(this, 0x3800);
        func_80033260(globalCtx, this, &this->unk_328, 10.0f, 3, 2.0f, 0xC8, 0xF, 0);
        this->unk_316 = 0;
    }
    
    if (Math_Vec3f_DistXZ(&this->actor.initPosRot.pos, &player->actor.posRot.pos) < 400.0f) {
        Math_SmoothScaleMaxMinS(&this->actor.posRot.rot.y, this->actor.yawTowardsLink, 1, 0x1F4, 0);
        this->actor.flags |= 1;
        if ((this->actor.xzDistFromLink < 100.0f) && (sp42 < 0x1388) && (this->actor.yDistFromLink < 60.0f)) {
            func_809F8AD8(this);
        } else {
            this->actor.flags &= ~1;
            if ((150.0f < Math_Vec3f_DistXZ(&this->actor.posRot.pos, &this->actor.initPosRot.pos)) || (this->unk_30E != 0)) {
                sp40 = Math_Vec3f_Yaw(&this->actor.posRot.pos, &this->actor.initPosRot.pos);
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
    }
    
    this->actor.shape.rot.y = this->actor.posRot.rot.y;
}
#else
#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Dodongo/func_809F9424.s")
#endif

void func_809F9760(EnDodongo *this) {
    SkelAnime_ChangeAnimTransitionStop(&this->skelAnime, &D_06001A44, -4.0f);
    Audio_PlayActorSound2(this, 0x3803);
    this->unk_304 = 0;
    this->unk_30C = 0;
    this->actor.speedXZ = 0.0f;
    func_809F8250(this, func_809F97C0);
}

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Dodongo/func_809F97C0.s")

void func_809F9A80(EnDodongo *this, GlobalContext *globalCtx) {
    SkelAnime_ChangeAnimTransitionStop(&this->skelAnime, &D_060013C4, -8.0f);
    this->unk_30C = 0;
    Audio_PlayActorSound2(this, 0x3804);
    this->unk_304 = 2;
    this->actor.flags &= ~1;
    this->actor.speedXZ = 0.0f;
    func_809F8250(this, func_809F9AF8);
}

void func_809F9AF8(EnDodongo *this, GlobalContext *globalCtx) {
    EnBom* bomb;

    if (this->skelAnime.animCurrentFrame < 35.0f) {
        if (this->actor.params == 0) {
            func_809F8258(this, globalCtx);
        }
    } else if (this->actor.dmgEffectTimer == 0) {
        func_8003426C(this, 0x4000, 0x78, 0, 4);
    }
    if (SkelAnime_FrameUpdateMatrix(&this->skelAnime) != 0) {
        if (this->unk_30C == 0) {
            bomb = (EnBom*) Actor_Spawn(&globalCtx->actorCtx, globalCtx, ACTOR_EN_BOM, this->actor.posRot.pos.x, this->actor.posRot.pos.y, this->actor.posRot.pos.z, 0, 0, 6, 0);
            if (bomb != NULL) {
                bomb->timer = 0;
                this->unk_30C = 8;
            }
        }
    } else if ((s32) this->skelAnime.animCurrentFrame == 0x34) {
        Audio_PlayActorSound2((Actor *) this, (u16)0x387AU);
    }
    if (this->unk_30C != 0) {
        this->unk_30C--;
        if (this->unk_30C == 0) {
            Item_DropCollectibleRandom(globalCtx, this, &this->actor.posRot, 0x40);
            Actor_Kill(this);
        }
    }
}

void func_809F9C3C(EnDodongo *this, GlobalContext *globalCtx) {
    SkelAnime_FrameUpdateMatrix(&this->skelAnime);
    if (this->actor.dmgEffectTimer == 0) {
        if (this->actor.colChkInfo.health == 0) {
            func_809F9A80(this, globalCtx);
        } else {
            func_809F89CC(this);
        }
    }
}

void func_809F9CA0(EnDodongo *this, GlobalContext *globalCtx) {
    if (this->collider2.base.acFlags & 0x80) {
        this->collider2.base.acFlags &= ~0x80;
        this->collider3.base.acFlags &= ~2;
    } else if ((this->collider3.base.acFlags & 2) && (this->unk_304 >= 3)) {
        this->collider3.base.acFlags &= ~2;
        func_8003573C(this, &this->collider3, 0);
        if (this->actor.colChkInfo.damageEffect != 0xE) {
            this->unk_3CC = this->actor.colChkInfo.damageEffect;
            if ((this->actor.colChkInfo.damageEffect == 1) || (this->actor.colChkInfo.damageEffect == 0xF)) {
                if (this->unk_304 != 7) {
                    func_8003426C(this, 0, 0x78, 0, 0x50);
                    Actor_ApplyDamage(this);
                    func_809F8BFC(this);
                }
            } else {
                func_8003426C(this, 0x4000, 0x78, 0, 8);
                if (Actor_ApplyDamage(this) == 0) {
                    func_809F9A80(this, globalCtx);
                } else {
                    func_809F9760(this);
                }
            }
        }
    }
}

extern Vec3f D_809FAA6C;
// 0xC47A0000, 0xC4BB8000, 0x00000000
extern Vec3f D_809FAA78;
// 0xC47A0000, 0xC3480000, 0x44BB8000
extern Vec3f D_809FAA84;
// 0xC47A0000, 0xC3480000, 0xC4BB8000
extern Vec3f D_809FAA90;
// 0x00000000, 0x00000000, 0x00000000

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Dodongo/func_809F9DC8.s")

void EnDodongo_Update(EnDodongo *thisx, GlobalContext *globalCtx) {
    s32 pad;
    EnDodongo* this = THIS;

    func_809F9CA0(this, globalCtx);
    if (this->actor.colChkInfo.damageEffect != 0xE) {
        this->actionFunc(this, globalCtx);
        Actor_MoveForward(this);
        func_8002E4B4(globalCtx, this, 75.0f, 60.0f, 70.0f, 0x1D);
        if (this->actor.bgCheckFlags & 2) {
            Audio_PlayActorSound2(this, 0x387A);
        }
    }
    CollisionCheck_SetOC(globalCtx, &globalCtx->colChkCtx, &this->collider3);
    if (this->unk_304 != 2) {
        CollisionCheck_SetAC(globalCtx, &globalCtx->colChkCtx, &this->collider2);
    }
    if (this->unk_304 >= 3) {
        CollisionCheck_SetAC(globalCtx, &globalCtx->colChkCtx, &this->collider3);
    }
    if ((this->unk_304 >= 4) && func_809FA6D8(this, globalCtx)) {
        func_809F8B7C(this);
    }
    if ((this->unk_304 == 3) && (29.0f < this->skelAnime.animCurrentFrame) && (this->skelAnime.animCurrentFrame < 43.0f)) {
        CollisionCheck_SetAT(globalCtx, &globalCtx->colChkCtx, &this->collider1);
    }
    this->actor.posRot2.pos.x = this->actor.posRot.pos.x + Math_Sins(this->actor.shape.rot.y) * -30.0f;
    this->actor.posRot2.pos.y = this->actor.posRot.pos.y + 20.0f;
    this->actor.posRot2.pos.z = this->actor.posRot.pos.z + Math_Coss(this->actor.shape.rot.y) * -30.0f;
}

s32 func_809FA0F8(GlobalContext *globalCtx, s32 limbIndex, Gfx **dList, Vec3f *pos, Vec3s *rot, EnDodongo *this) {
    if ((limbIndex == 0xF) || (limbIndex == 0x10)) {
        Matrix_Scale(this->unk_34C, this->unk_350, this->unk_354, MTXMODE_APPLY);
    }
    return 0;
}

extern Vec3f D_809FAA9C;
// 0x453B8000, 0x00000000, 0x00000000
extern Vec3f D_809FAAA8;
// 0x00000000, 0x00000000, 0x00000000
extern Vec3f D_809FAAB4[];
// 0xC3960000, 0xC51C4000, 0x00000000, 0xC3960000, 0x44960000, 0xC528C000, 0x453B8000, 0x44960000, 0x00000000
extern Vec3f D_809FAAD8[];
// 0xC3960000, 0xC51C4000, 0x00000000, 0xC3960000, 0x44960000, 0x4528C000, 0x453B8000, 0x44960000, 0x00000000
extern Vec3f D_809FAAFC[];
// 0xC4160000, 0x44960000, 0xC52F0000, 0xC4160000, 0x44960000, 0x452F0000, 0x453B8000, 0x44960000, 0x00000000
extern Vec3f D_809FAB20;
// 0x44E10000, 0x44960000, 0x00000000
extern Vec3f D_809FAB2C;
// 0x44BB8000, 0x43960000, 0x00000000,
extern Vec3f D_809FAB38; //unused
// 0x44898000, 0xC42F0000, 0x00000000
extern Vec3f D_809FAB44; // static
// 0x00000000, 0x00000000, 0x00000000,
extern Vec3f D_809FAB60; //unused
// 0x4508E000, 0x00000000, 0x00000000

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Dodongo/func_809FA14C.s")

#ifdef NON_MATCHING
void EnDodongo_Draw(EnDodongo *thisx, GlobalContext *globalCtx) {
    s32 pad;
    EnDodongo* this = THIS;

    func_80093D18(globalCtx->state.gfxCtx);
    SkelAnime_Draw(globalCtx, this->skelAnime.skeleton, this->skelAnime.limbDrawTbl, func_809FA0F8, func_809FA14C, &this->actor);
    
    if (this->unk_312 != 0) {
        this->unk_312--;
        this->actor.dmgEffectTimer++;
        if ((this->unk_312 % 4) == 0) {
            EffectSsEnIce_SpawnFlyingVec3f(globalCtx, &this->actor, &this->unk_358[this->unk_312 >> 2], 0x96, 0x96, 0x96, 0xFA, 0xEB, 0xF5, 0xFF, 1.8f);
        }
    }
}
#else
#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Dodongo/EnDodongo_Draw.s")
#endif

void func_809FA674(s16 arg0, f32 arg1, Vec3f *arg2) {
    arg2->x += Math_Sins(arg0) * arg1;
    arg2->z += Math_Coss(arg0) * arg1;
}

s32 func_809FA6D8(EnDodongo *this, GlobalContext *globalCtx) {
    Actor* actor = globalCtx->actorCtx.actorList[ACTORTYPE_EXPLOSIVES].first;
    f32 dx;
    f32 dy;
    f32 dz;

    while (actor != NULL) {
        if((actor->params != 0) || (actor->parent != NULL)) {
            actor = actor->next;
            continue;
        }
        dx = actor->posRot.pos.x - this->unk_334.x;
        dy = actor->posRot.pos.y - this->unk_334.y;
        dz = actor->posRot.pos.z - this->unk_334.z;
        if((fabsf(dx) < 20.0f) && (fabsf(dy) < 10.0f) && (fabsf(dz) < 20.0f)) {
            if(actor->id == ACTOR_EN_BOM) {
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
