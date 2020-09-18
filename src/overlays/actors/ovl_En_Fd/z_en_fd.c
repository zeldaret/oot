#include "z_en_fd.h"

#define FLAGS 0x00000215

#define THIS ((EnFd*)thisx)

void EnFd_Init(Actor* thisx, GlobalContext* globalCtx);
void EnFd_Destroy(Actor* thisx, GlobalContext* globalCtx);
void EnFd_Update(Actor* thisx, GlobalContext* globalCtx);
void EnFd_Draw(Actor* thisx, GlobalContext* globalCtx);
void func_80A0C7EC(EnFd* this, GlobalContext* globalCtx);
void func_80A0C5D0(EnFd* this, GlobalContext* globalCtx);
void func_80A0C310(EnFd* this, GlobalContext* globalCtx);
void func_80A0C3A0(EnFd* this, GlobalContext* globalCtx);
void func_80A0C474(EnFd* this, GlobalContext* globalCtx);
void func_80A0CA44(EnFd* this, GlobalContext* globalCtx);
void func_80A0D4FC(EnFd *this);
void func_80A0D614(EnFd *this);
void func_80A0D40C(EnFd*, u8, Vec3f*, Vec3f*, Vec3f*, u8, f32, f32);
void func_80A0DB44(EnFd* this, GlobalContext* globalCtx);
void func_80A0D730(EnFd* this, GlobalContext* globalCtx);
void func_80A0C4F0(EnFd* this, GlobalContext* globalCtx);

extern Gfx D_060079F8[];
extern Gfx D_06007A78[];
extern Gfx D_06007928[];
extern Gfx D_06007938[];
extern SkeletonHeader D_06005810;

const ActorInit En_Fd_InitVars = {
    ACTOR_EN_FD,
    ACTORTYPE_ENEMY,
    FLAGS,
    OBJECT_FW,
    sizeof(EnFd),
    (ActorFunc)EnFd_Init,
    (ActorFunc)EnFd_Destroy,
    (ActorFunc)EnFd_Update,
    (ActorFunc)EnFd_Draw,
};

static ColliderJntSphItemInit sJntSphItemsInit[12] = {
    {
        { 0x00, { 0xFFCFFFFF, 0x01, 0x04 }, { 0x00040088, 0x00, 0x00 }, 0x01, 0x05, 0x01 },
        { 21, { { 1600, 0, 0 }, 5 }, 300 },
    },
    {
        { 0x00, { 0xFFCFFFFF, 0x01, 0x04 }, { 0x00040008, 0x00, 0x00 }, 0x01, 0x01, 0x01 },
        { 12, { { 1600, 0, 0 }, 5 }, 400 },
    },
    {
        { 0x00, { 0xFFCFFFFF, 0x01, 0x04 }, { 0x00040008, 0x00, 0x00 }, 0x01, 0x01, 0x01 },
        { 14, { { 800, 0, 0 }, 4 }, 300 },
    },
    {
        { 0x00, { 0xFFCFFFFF, 0x01, 0x04 }, { 0x00040008, 0x00, 0x00 }, 0x01, 0x01, 0x01 },
        { 15, { { 1600, 0, 0 }, 4 }, 300 },
    },
    {
        { 0x00, { 0xFFCFFFFF, 0x01, 0x04 }, { 0x00040008, 0x00, 0x00 }, 0x01, 0x01, 0x01 },
        { 16, { { 2000, 0, 0 }, 4 }, 300 },
    },
    {
        { 0x00, { 0xFFCFFFFF, 0x01, 0x04 }, { 0x00040008, 0x00, 0x00 }, 0x01, 0x01, 0x01 },
        { 17, { { 800, 0, 0 }, 4 }, 300 },
    },
    {
        { 0x00, { 0xFFCFFFFF, 0x01, 0x04 }, { 0x00040008, 0x00, 0x00 }, 0x01, 0x01, 0x01 },
        { 18, { { 1600, 0, 0 }, 4 }, 300 },
    },
    {
        { 0x00, { 0xFFCFFFFF, 0x01, 0x04 }, { 0x00040008, 0x00, 0x00 }, 0x01, 0x01, 0x01 },
        { 19, { { 2000, 0, 0 }, 4 }, 300 },
    },
    {
        { 0x00, { 0xFFCFFFFF, 0x01, 0x04 }, { 0x00040008, 0x00, 0x00 }, 0x01, 0x01, 0x01 },
        { 4, { { 2200, 0, 0 }, 4 }, 400 },
    },
    {
        { 0x00, { 0xFFCFFFFF, 0x01, 0x04 }, { 0x00040008, 0x00, 0x00 }, 0x01, 0x01, 0x01 },
        { 4, { { 5000, 0, 0 }, 4 }, 300 },
    },
    {
        { 0x00, { 0xFFCFFFFF, 0x01, 0x04 }, { 0x00040008, 0x00, 0x00 }, 0x01, 0x01, 0x01 },
        { 8, { { 2200, 0, 0 }, 4 }, 400 },
    },
    {
        { 0x00, { 0xFFCFFFFF, 0x01, 0x04 }, { 0x00040008, 0x00, 0x00 }, 0x01, 0x01, 0x01 },
        { 8, { { 5000, 0, 0 }, 4 }, 300 },
    },
};

static ColliderJntSphInit sJntSphInit =
{
    { COLTYPE_UNK10, 0x11, 0x09, 0x39, 0x10, COLSHAPE_JNTSPH },
    12, sJntSphItemsInit,
};

static CollisionCheckInfoInit2 sColChkInit = {
    0x18, 0x0002, 0x0019, 0x0019, 0xFF
};

static struct_80034EC0_Entry D_80A0DFEC[] = {
    { 0x060010B4, 1.0f, 0.0f, -1.0f, 0x03, 0.0f },
    { 0x06005C64, 1.0f, 0.0f, -1.0f, 0x03, -10.0f },
    { 0x06006044, 0.0f, 0.0f, -1.0f, 0x03, -10.0f },
    { 0x06006A18, 1.0f, 0.0f, -1.0f, 0x01, -10.0f },
    { 0x06006B64, 0.0f, 0.0f, -1.0f, 0x03, -10.0f }
};

s32 func_80A0B6C0(EnFd *this, GlobalContext *globalCtx) {
    if (this->unk_4C2 != 0) {
        return false;
    }
    if (Actor_SpawnAsChild(&globalCtx->actorCtx, &this->actor, globalCtx, ACTOR_EN_FW, this->unk_4D0.x, this->unk_4D0.y, this->unk_4D0.z, 0, this->actor.shape.rot.y, 0, this->unk_4BA) == NULL) {
        return false;
    }

    this->actor.child->colChkInfo.health = this->actor.colChkInfo.health % 8;

    if (this->actor.child->colChkInfo.health == 0) {
        this->actor.child->colChkInfo.health = 8;
    }

    if ((this->actor.flags & 0x2000) == 0x2000) {
        func_8002DE04(globalCtx, &this->actor, this->actor.child);
    }   
    this->unk_4B4 = 1;
    return true;
}

void func_80A0B7B8(EnFd *this, GlobalContext *globalCtx, s16 arg2, s16 arg3) {
    s32 i;

    for(i = 0; i < arg2; i++){
        s16 angle = (s16)((((i * 360.0f) / arg2) * 182.04445f)) + this->actor.yawTowardsLink; 
        Actor_SpawnAsChild(&globalCtx->actorCtx, &this->actor, globalCtx, ACTOR_EN_FD_FIRE, this->actor.posRot.pos.x, this->actor.posRot.pos.y, this->actor.posRot.pos.z, 0, angle, 0, (arg3 << 0xF) | i);
    }
}

void func_80A0B8D8(EnFd *this, GlobalContext *globalCtx) {
    Vec3f sp44 = { 0.0f, 0.0f, 0.0f };
    Vec3f sp38 = { 0.0f, 0.0f, 0.0f };
    Vec3f sp2C = { 0.0f, 0.0f, 0.0f };

    if (this->actionFunc == func_80A0C7EC || this->actionFunc == func_80A0C5D0) {
        sp44.x = this->actor.posRot.pos.x;
        sp44.y = this->actor.groundY + 4.0f;
        sp44.z = this->actor.posRot.pos.z;
        sp2C.x = (Math_Rand_ZeroOne() - 0.5f) * 2.0f;
        sp2C.y = ((Math_Rand_ZeroOne() - 0.5f) * 0.2f) + 0.3f;
        sp2C.z = (Math_Rand_ZeroOne() - 0.5f) * 2.0f;
        func_80A0D40C(this, 1, &sp44, &sp38, &sp2C, 8, 0.6f, 0.2f);
    }
}

s32 func_80A0BA44(EnFd *this, GlobalContext *globalCtx) {
    
    if (this->actionFunc == func_80A0C310 || 
        this->actionFunc == func_80A0C3A0 ||
        this->actionFunc == func_80A0C474 ||
        this->actionFunc == func_80A0CA44) {
        return false;
    }

    if (globalCtx->actorCtx.unk_02 != 0 && 
        this->actor.xzDistFromLink < 300.0f && 
        this->actor.yDistFromLink < 60.0f) {
        return true;
    }

    return false;
}

s32 func_80A0BAE0(EnFd *this, GlobalContext *globalCtx) {
    Player* player = PLAYER;
    ColliderBody* body;

    if (this->collider.base.acFlags & 2 || func_80A0BA44(this, globalCtx)) {
        this->collider.base.acFlags &= ~2;
        if (this->unk_4C2 != 0) {
            return false;
        }
        body = &this->collider.list[0].body;
        if (body->acHitItem != NULL && (body->acHitItem->toucher.flags & 0x80)){
            return false;
        }
        if (!func_80A0B6C0(this, globalCtx)) {
            return false;
        }
        this->unk_4C2 = 30;
        this->actor.flags &= ~1;
        Audio_PlayActorSound2(&this->actor, (u16)0x397AU);
        func_80032C7C(globalCtx, &this->actor);
        return true;
    } else if (DECR(this->unk_4C4) == 0) {
        if (this->collider.base.atFlags & 2) {
            this->collider.base.atFlags &= ~2;
            if (this->unk_4C2 != 0){
                return false;
            }
            if(this->collider.base.atFlags & 4) {
                return false;
            }
            this->unk_4C4 = 30;
            Audio_PlayActorSound2(&player->actor, (u16)0x83EU);
            func_8002F71C(globalCtx, &this->actor, this->actor.speedXZ + 2.0f, this->actor.yawTowardsLink, 6.0f);
        }
    }
    return false;
}

s32 func_80A0BC70(EnFd *this, Actor *arg1, GlobalContext *globalCtx) {
    CollisionPoly** colPoly;
    u32 bgId;
    Vec3f colPoint;
    s16 angle;
    s32 pad;

    if (Math_Vec3f_DistXYZ(&this->actor.posRot.pos, &arg1->posRot.pos) > 400.0f) {
        return false;
    }
    angle = (f32)Math_Vec3f_Yaw(&this->actor.posRot.pos, &arg1->posRot.pos) - this->actor.shape.rot.y;
    if (ABS(angle) >= 0x1C71) {
        return false;
    }
    if (func_8003DE84(&globalCtx->colCtx, &this->actor.posRot.pos, &arg1->posRot.pos, &colPoint, &colPoly, 1, 0, 0, 1, &bgId)) {
        return false;
    }
    return true;
}

Actor *func_80A0BD78(EnFd *this, GlobalContext *globalCtx) {
    Actor *phi_s0 = globalCtx->actorCtx.actorList[ACTORTYPE_EXPLOSIVES].first;
    while(phi_s0 != NULL){
        if(phi_s0->params != 0 || phi_s0->parent != NULL){
            phi_s0 = phi_s0->next;
            continue;
        }

        if(phi_s0->id != ACTOR_EN_BOM){
            phi_s0 = phi_s0->next;
            continue;
        }
        
        if(func_80A0BC70(this, phi_s0, globalCtx) != 1){
            phi_s0 = phi_s0->next;
            continue;
        }

        return phi_s0;
    }
    return NULL;
}

Actor *func_80A0BE34(EnFd *this, GlobalContext *globalCtx) {
    Player* player;
    Actor *temp_ret;

    temp_ret = func_80A0BD78(this, globalCtx);
    if (temp_ret != NULL) {
        return temp_ret;
    }
    
    if (this->unk_4C4 != 0) {
        return NULL;
    }

    player = PLAYER;
    if (func_80A0BC70(this, &player->actor, globalCtx) == 0) {
        return NULL;
    }
    return &player->actor;
}

Vec3f *func_80A0BEA0(Vec3f *arg0, EnFd *this, f32 arg2, s16 arg3) {
    s16 angle;
    Vec3f sp28;

    angle = Math_Vec3f_Yaw(&this->actor.initPosRot, &this->actor.posRot) + (arg3 * 0x1554);
    sp28.x = (Math_Sins(angle) * arg2) + this->actor.initPosRot.pos.x;
    sp28.z = (Math_Coss(angle) * arg2) + this->actor.initPosRot.pos.z;
    sp28.x -= this->actor.posRot.pos.x;
    sp28.z -= this->actor.posRot.pos.z;
    *arg0 = sp28;
    return arg0;
}

s32 func_80A0BF6C(EnFd *this, GlobalContext *globalCtx, f32 arg2, s16 *arg3) {
    CollisionPoly* sp5C;
    u32 sp58;
    Vec3f sp4C;
    Vec3f sp40;

    func_80A0BEA0(&sp40, this, arg2, *arg3);
    
    sp40.x += this->actor.posRot.pos.x;
    sp40.y = this->actor.posRot.pos.y;
    sp40.z += this->actor.posRot.pos.z;

    if (func_8003DE84(&globalCtx->colCtx, &this->actor.posRot.pos, &sp40, &sp4C, &sp5C, 1, 0, 0, 1, &sp58)) {
        *arg3 = -*arg3;
        return true;
    }
    
    if (this->unk_4C0 != 0 || DECR(this->unk_4BE) != 0) {
        return false;
    }
    
    if (Math_Rand_ZeroOne() > 0.5f) {
        *arg3 = -*arg3;
    }
    return true;
}

void func_80A0C0A0(EnFd *this, GlobalContext *globalCtx) {
    if (this->unk_4C2 != 0) {
        Math_SmoothScaleMaxMinF(&this->unk_4CC, 0.0f, 0.3f, 10.0f, 0.0f);
        this->actor.shape.unk_14 = this->unk_4CC;
        if (!(0.9f <= this->unk_4CC)) {
            this->unk_4C2 = 0;
            this->unk_4BE = 0;
            this->actionFunc = func_80A0CA44;
            this->actor.speedXZ = 0.0f;
        }
    }
}

void EnFd_Init(Actor* thisx, GlobalContext *globalCtx) {
    EnFd* this = THIS;

    SkelAnime_InitSV(globalCtx, &this->skelAnime, &D_06005810, NULL, this->limbDrawTable, this->transDrawTable, 27);
    ActorShape_Init(&this->actor.shape, 0.0f, ActorShadow_DrawFunc_Circle, 32.0f);
    Collider_InitJntSph(globalCtx, &this->collider);
    Collider_SetJntSph(globalCtx, &this->collider, &this->actor, &sJntSphInit, this->colSphs);
    func_80061EFC(&this->actor.colChkInfo, DamageTable_Get(0xF), &sColChkInit);
    this->actor.flags &= ~1;
    this->actor.flags |= 0x1000000;
    Actor_SetScale(&this->actor, 0.01f);
    this->unk_4BC = 1;
    this->actor.gravity = -1.0f;
    this->unk_4BA = Math_Rand_ZeroOne() < 0.5f ? -1 : 1;
    this->actor.naviEnemyId = 0x22U;
    this->actionFunc = func_80A0C310;
}

void EnFd_Destroy(Actor *thisx, GlobalContext *globalCtx) {
    EnFd* this = THIS;

    Collider_DestroyJntSph(globalCtx, &this->collider);
}

void func_80A0C310(EnFd *this, GlobalContext *globalCtx) {
    this->actor.posRot.pos = this->actor.initPosRot.pos;
    this->actor.params = 0;
    this->actor.shape.unk_14 = 0xFF;
    this->unk_4B4 = 0;
    this->actor.scale.y = 0.0f;
    this->unk_4CC = 255.0f;
    func_80034EC0(&this->skelAnime, &D_80A0DFEC, 0);
    Audio_PlayActorSound2(&this->actor, NA_SE_EN_FLAME_LAUGH);
    this->actionFunc = func_80A0C3A0;
}

void func_80A0C3A0(EnFd *this, GlobalContext *globalCtx) {
    if (func_800A56C8(&this->skelAnime, this->skelAnime.animFrameCount)) {
        this->actor.velocity.y = 6.0f;
        this->actor.scale.y = 0.01f;
        this->actor.posRot.rot.y ^= 0x8000;
        this->actor.flags |= 1;
        this->actor.speedXZ = 8.0f;
        func_80034EC0(&this->skelAnime, &D_80A0DFEC, 1);
        this->actionFunc = func_80A0C474;
    } else {
        this->actor.scale.y = this->skelAnime.animCurrentFrame * (0.01f / this->skelAnime.totalFrames);
        this->actor.shape.rot.y += 0x2000;
        this->actor.posRot.rot.y = this->actor.shape.rot.y;
    }
}

void func_80A0C474(EnFd *this, GlobalContext *globalCtx) {
    if (this->actor.bgCheckFlags & 1) {
        if (!(0.0f < this->actor.velocity.y)) {
            this->actor.velocity.y = 0.0f;
            this->actor.speedXZ = 0.0f;
            this->actor.posRot.rot.y = this->actor.shape.rot.y;
            func_80034EC0(&this->skelAnime, &D_80A0DFEC, 2);
            this->actionFunc = func_80A0C4F0;
        }
    }
}

void func_80A0C4F0(EnFd *this, GlobalContext *globalCtx) {
    Vec3f sp2C;

    Math_SmoothScaleMaxMinF(&this->skelAnime.animPlaybackSpeed, 1.0f, 0.1f, 1.0f, 0.0f);
    if (func_800A56C8(&this->skelAnime, this->skelAnime.animFrameCount)) {
        this->unk_4BE = Math_Rand_S16Offset(0x3C, 0x5A);
        this->unk_4C8 = Math_Vec3f_DistXYZ(&this->actor.posRot.pos, &this->actor.initPosRot.pos);
        func_80A0BEA0(&sp2C, this, this->unk_4C8, this->unk_4BA);
        this->actor.posRot.rot.y = Math_atan2f(sp2C.x, sp2C.z) * 10430.378f;
        func_80034EC0(&this->skelAnime, D_80A0DFEC, 4);
        this->actionFunc = func_80A0C5D0;
    }
}

void func_80A0C5D0(EnFd *this, GlobalContext *globalCtx) {
    f32 sp34;
    f32 temp_f0;
    f32 sp2C;

    if ((this->unk_4BE < 0x1F) && (this->unk_4C2 == 0)) {
        func_8002F974(&this->actor, NA_SE_EN_FLAME_FIRE_ATTACK - SFX_FLAG);
    } else {
        func_8002F974(&this->actor, NA_SE_EN_FLAME_ROLL - SFX_FLAG);
    }

    if (DECR(this->unk_4BE) != 0) {
        this->actor.shape.rot.y += (this->unk_4BA << 0xD);
        if (this->unk_4BE == 30) {
            if (this->unk_4C2 == 0) {
                if (this->actor.xzDistFromLink > 160.0f) {
                    func_80A0B7B8(this, globalCtx, 8, 0);
                } else {
                    func_80A0B7B8(this, globalCtx, 8, 1);
                }
            }
        }
    } else {
        sp34 = this->actor.posRot.rot.y;
        sp34 -= this->actor.shape.rot.y;
        sp2C = 0.0f;
        temp_f0 = fabsf(sp34);
        sp34 /= temp_f0;
        Math_SmoothScaleMaxF(&sp2C, temp_f0, 0.6f, 8192.0f);
        sp2C *= sp34;
        this->actor.shape.rot.y += (s16)sp2C;
        sp2C = fabsf(sp2C);
        if ((s32)sp2C < 0x12D) {
            this->actor.shape.rot.y = this->actor.posRot.rot.y;
        }

        if (this->actor.shape.rot.y == this->actor.posRot.rot.y) {
            this->unk_4B6 = Math_Vec3f_Yaw(&this->actor.initPosRot.pos, &this->actor.posRot.pos);
            this->unk_4B8 = this->unk_4BA < 0 ? 0xFFFF : 0;
            this->unk_4C0 = (globalCtx->state.frames & 7) + 2;
            this->unk_4BE = Math_Rand_S16Offset(0x1E, 0x78);
            func_80034EC0(&this->skelAnime, &D_80A0DFEC, 3);
            this->actionFunc = func_80A0C7EC;
        }
    }
}

void func_80A0C7EC(EnFd *this, GlobalContext *globalCtx) {
    Actor *temp_v0;
    s16 temp_v1;
    f32 phi_f2;
    Vec3f sp30;

    if (func_80A0BF6C(this, globalCtx, this->unk_4C8, &this->unk_4BA)) {
        if (this->unk_4C2 == 0) {
            this->actor.posRot.rot.y ^= 0x8000;
            this->actor.velocity.y = 6.0f;
            this->actor.speedXZ = 0.0f;
            func_80034EC0(&this->skelAnime, &D_80A0DFEC, 1);
            this->actionFunc = func_80A0C474;
            return;
        }
    }

    temp_v1 = Math_Vec3f_Yaw(&this->actor.initPosRot.pos, &this->actor.posRot.pos) - this->unk_4B6;
    if (this->unk_4BA > 0) {
        if ((temp_v1 & 0xFFFF) < (u16)this->unk_4B8) {
            this->unk_4C0--;
        }
    } else if ((u16)this->unk_4B8 < (temp_v1 & 0xFFFF)) {
        this->unk_4C0--;
    }

    if (this->unk_4C0 < 0) {
        this->unk_4C0 = 0;
    }
    this->unk_4B8 = temp_v1;
    temp_v0 = func_80A0BE34(this, globalCtx);
    if ((temp_v0 != 0) && (this->unk_4C2 == 0)) {
        phi_f2 = Math_Vec3f_DistXYZ(&this->actor.initPosRot.pos, &temp_v0->posRot.pos);
    } else {
        phi_f2 = 200.0f;
    }
    Math_SmoothScaleMaxMinF(&this->unk_4C8, phi_f2, 0.3f, 100.0f, 0.0f);
    func_80A0BEA0(&sp30, this, this->unk_4C8, this->unk_4BA);
    Math_SmoothScaleMaxMinS(&this->actor.shape.rot.y, Math_atan2f(sp30.x, sp30.z) * 10430.378f, 4, 0xFA0, 1);
    this->actor.posRot.rot = this->actor.shape.rot;
    func_8002F974(&this->actor, NA_SE_EN_FLAME_RUN - SFX_FLAG);
    if (this->skelAnime.animCurrentFrame == 6.0f ||
        this->skelAnime.animCurrentFrame == 13.0f ||
        this->skelAnime.animCurrentFrame == 28.0f) {
        Audio_PlayActorSound2(&this->actor, NA_SE_EN_FLAME_KICK);
    }
    Math_SmoothScaleMaxMinF(&this->actor.speedXZ, 8.0f, 0.1f, 1.0f, 0.0f);
}

void func_80A0CA44(EnFd *this, GlobalContext *globalCtx) {
    if(this->unk_4BE != 0){
        this->unk_4BE--;
        if(this->unk_4BE == 0){
            Actor_Kill(&this->actor);
        }
    } else if(this->actor.params & 0x8000){
        this->actionFunc = func_80A0C310;
    } else if (this->actor.params & 0x4000){
        this->actor.params = 0;
        this->unk_4BE = 30;
    }
}

void EnFd_Update(Actor* thisx, GlobalContext *globalCtx) {
    EnFd* this = THIS;
    s32 pad;

    if (this->unk_4BC != 0) {
        func_800F5ACC(0x38);
        this->unk_4BC = 0;
    }

    if (this->actionFunc != func_80A0C310) {
        SkelAnime_FrameUpdateMatrix(&this->skelAnime);
        func_80A0B8D8(this, globalCtx);
    }

    if ((this->actor.flags & 0x2000) == 0x2000) {
        if (func_80A0B6C0(this, globalCtx)) {
            this->actor.flags &= ~1;
            this->unk_4C2 = 30;
            Audio_PlayActorSound2(&this->actor, NA_SE_EN_FLAME_DAMAGE);
            func_80032C7C(globalCtx, &this->actor);
        } else {
            this->actor.flags &= ~0x2000;
        }
    } else if (this->actionFunc != func_80A0CA44) {
        func_80A0BAE0(this, globalCtx);
    }
    Actor_MoveForward(&this->actor);
    func_8002E4B4(globalCtx, &this->actor, 0.0f, 0.0f, 0.0f, 4);
    func_80A0C0A0(this, globalCtx);
    this->actionFunc(this, globalCtx);
    func_80A0D614(this);
    func_80A0D4FC(this);
    if (this->actionFunc != func_80A0C310 && this->actionFunc != func_80A0C3A0 && this->actionFunc != func_80A0CA44) {
        if (this->unk_4C4 == 0 && this->unk_4C2 == 0) {
            CollisionCheck_SetAT(globalCtx, &globalCtx->colChkCtx, &this->collider.base);
        }
        if ((this->actionFunc == func_80A0C7EC) || (this->actionFunc == func_80A0C5D0)) {
            CollisionCheck_SetAC(globalCtx, &globalCtx->colChkCtx, &this->collider.base);
        }
        CollisionCheck_SetOC(globalCtx, &globalCtx->colChkCtx, &this->collider.base);
    }
}

s32 func_80A0CCB8(GlobalContext *globalCtx, s32 limbIndex, Gfx **dList, Vec3f *pos, Vec3s *rot, void *thisx, Gfx **gfxP) {
    EnFd* this = THIS;

    if (this->unk_4C2 != 0) {
        switch(limbIndex){
            case 13:
            case 21:
                *dList = NULL;
                break;
        }
    }
    return 0;
}

void func_80A0CCF0(GlobalContext *globalCtx, s32 limbIndex, Gfx **dList, Vec3s *rot, void *thisx, Gfx **gfxP) {
    EnFd* this = THIS;
    Vec3f spC0 = { 6800.0f, 0.0f, 0.0f };
    Vec3f spB4 = { 6800.0f, 0.0f, 0.0f };
    Vec3f spA8 = { 0.0f, 0.0f, 0.0f };
    Vec3f sp9C = { 0.0f, 0.0f, 0.0f };
    Vec3f sp90 = { 0.0f, 0.0f, 0.0f };
    Vec3f sp84 = { 0.0f, 0.0f, 0.0f };
    s32 i;

    if (limbIndex == 0x15) {
        Matrix_MultVec3f((Vec3f *) &spA8, &this->unk_4D0);
    }

    if (limbIndex == 0xD) {
        Matrix_MultVec3f((Vec3f *) &spA8, (Vec3f *) &this->actor.posRot2);
    }

    if(limbIndex == 3 || limbIndex == 6 || limbIndex == 7 || limbIndex == 10 ||
        limbIndex == 14 || limbIndex == 15 || limbIndex == 17 || limbIndex == 18 ||
        limbIndex == 20 || limbIndex == 22 || limbIndex == 23 || limbIndex == 24 ||
        limbIndex == 25 || limbIndex == 26){
            if((globalCtx->state.frames % 2) != 0) {
                for(i = 0; i < 1; i++){
                    Matrix_MultVec3f(&spA8, &sp9C);
                    sp9C.x += (Math_Rand_ZeroOne() - 0.5f) * 20.0f;
                    sp9C.y +=(Math_Rand_ZeroOne() - 0.5f) * 40.0f;
                    sp9C.z += (Math_Rand_ZeroOne() - 0.5f) * 20.0f;
                    sp90.x = (Math_Rand_ZeroOne() - 0.5f) * 0.4f;
                    sp90.y = ((Math_Rand_ZeroOne() - 0.5f) * 0.2f) + 0.6f;
                    sp90.z = (Math_Rand_ZeroOne() - 0.5f) * 0.4f;
                    func_80A0D40C(this, 2, &sp9C, &sp84, &sp90, 0, 0.006f, 0.0f);
                }
            }
    }

    func_800628A4(limbIndex, &this->collider);
}

void EnFd_Draw(Actor* thisx, GlobalContext *globalCtx) {
    EnFd* this = THIS;
    s32 phi_a1;

    Color_RGBA8_n sp8C[] = {
        { 255, 255, 200, 255 },
        { 200, 200, 200, 255 },
        { 255, 255, 0, 255 },
    };
    
    Color_RGBA8_n sp80[] = {
        { 0, 255, 0, 255 },
        { 0, 0, 255, 255 },
        { 255, 0, 0, 255 },
    };

    u32 frames;
    s32 pad;

    if(this){}
    frames = globalCtx->state.frames;

    OPEN_DISPS(globalCtx->state.gfxCtx, "../z_en_fd.c", 1751);

    Matrix_Push();
    func_80A0DB44(this, globalCtx);
    func_80A0D730(this, globalCtx);
    Matrix_Pull();
    if (this->actionFunc != func_80A0C310 && !(this->unk_4CC < 0.9f)) {
        if(1){}
        func_80093D84(globalCtx->state.gfxCtx);
        phi_a1 = CLAMP(this->actor.colChkInfo.health - 1, 0, 0x17);
        gDPSetPrimColor(oGfxCtx->polyXlu.p++, 0, 128, 
                        sp8C[phi_a1 / 8].r, sp8C[phi_a1 / 8].g, 
                        sp8C[phi_a1 / 8].b, (u8)this->unk_4CC);
        gDPSetEnvColor(oGfxCtx->polyXlu.p++, sp80[phi_a1 / 8].r, 
                        sp80[phi_a1 / 8].g, 
                        sp80[phi_a1 / 8].b, (u8)this->unk_4CC);
        gSPSegment(oGfxCtx->polyXlu.p++, 0x8, 
                    Gfx_TwoTexScroll(globalCtx->state.gfxCtx, 0, 0, 0, 0x20, 
                                        0x40, 1, 0, 0xFF - (u8)(frames * 6), 
                                        8, 0x40));
        gDPPipeSync(oGfxCtx->polyXlu.p++);
        gSPSegment(oGfxCtx->polyXlu.p++, 0x9, D_80116280);
        
        oGfxCtx->polyXlu.p = SkelAnime_DrawSV2(globalCtx, this->skelAnime.skeleton, this->skelAnime.limbDrawTbl, this->skelAnime.dListCount, &func_80A0CCB8, &func_80A0CCF0, this, oGfxCtx->polyXlu.p);
    }
    CLOSE_DISPS(globalCtx->state.gfxCtx, "../z_en_fd.c", 1822);
}

void func_80A0D40C(EnFd *this, u8 arg1, Vec3f *arg2, Vec3f *arg3, Vec3f *arg4, u8 arg5, f32 arg6, f32 arg7) {
    EnFdPart* part = this->particles;
    s16 i;

    for(i = 0; i < ARRAY_COUNT(this->particles); i++, part++){
        if (part->unk_00 != 0) {
            continue;
        }
        part->unk_04 = arg6;
        part->unk_08 = arg7;
        part->unk_02 = part->unk_01 = arg5;
        part->unk_00 = arg1;
        part->unk_14 = *arg2;
        part->unk_2C = *arg4;
        part->unk_20 = *arg3;
        if ((arg1 & 0xFF) == 2) {
            part->unk_0C.a = 255;
            part->unk_01 = (s16)(Math_Rand_ZeroOne() * 10.0f);
        }
        return;
    }
}

void func_80A0D4FC(EnFd *this) {

    s16 i;
    EnFdPart* part = this->particles;
    for(i = 0; i < ARRAY_COUNT(this->particles); i++, part++){
        if (part->unk_00 == 1) {
            part->unk_01--;
            if (part->unk_01 == 0) {
                part->unk_00 = 0;
            }
            part->unk_2C.x = (Math_Rand_ZeroOne() * 0.4f) - 0.2f;
            part->unk_2C.z = (Math_Rand_ZeroOne() * 0.4f) - 0.2f;
            part->unk_14.x += part->unk_20.x;
            part->unk_14.y += part->unk_20.y;
            part->unk_14.z += part->unk_20.z;
            part->unk_20.x += part->unk_2C.x;
            part->unk_20.y += part->unk_2C.y;
            part->unk_20.z += part->unk_2C.z;
            part->unk_04 += part->unk_08;
        }
    }
}

void func_80A0D614(EnFd *this) {
    EnFdPart* part = this->particles;
    s16 i;
    Color_RGBA8_n colors[] = {
        { 255, 128, 0, 0 },
        { 255, 0, 0, 0 },
        { 255, 255, 0, 0 },
        { 255, 0, 0, 0 },
    };

    for(i = 0; i < ARRAY_COUNT(this->particles); i++, part++){
        if (part->unk_00 == 2) {
            part->unk_14.x += part->unk_20.x;
            part->unk_14.y += part->unk_20.y;
            part->unk_14.z += part->unk_20.z;
            part->unk_01++;
            part->unk_20.x += part->unk_2C.x;
            part->unk_20.y += part->unk_2C.y;
            part->unk_20.z += part->unk_2C.z;
            
            part->unk_0C.r = colors[part->unk_01 % 4].r;
            part->unk_0C.g = colors[part->unk_01 % 4].g;
            part->unk_0C.b = colors[part->unk_01 % 4].b;
            if (part->unk_0C.a >= 31) {
                part->unk_0C.a = part->unk_0C.a - 30;
            } else {
                part->unk_0C.a = 0;
                part->unk_00 = 0;
            }
        }
    }
}

void func_80A0D730(EnFd *this, GlobalContext *globalCtx) {
    static Gfx* D_80A0E0F8[] = {
        0x040539B0, 0x040535B0, 0x040531B0, 0x04052DB0, 0x040529B0, 0x040525B0, 0x040521B0, 0x04051DB0,
    };
    
    s32 firstDone;
    s16 i;
    s16 idx;
    EnFdPart *part = this->particles;

    OPEN_DISPS(globalCtx->state.gfxCtx, "../z_en_fd.c", 0x7B1);
    firstDone = 0;
    if(1){}
    func_80093D84(globalCtx->state.gfxCtx);
    for(i = 0; i < ARRAY_COUNT(this->particles); i++, part++){
        if (part->unk_00 == 1) {
            if (firstDone == 0) {
                oGfxCtx->polyXlu.p = Gfx_CallSetupDL(oGfxCtx->polyXlu.p, 0);
                gSPDisplayList(oGfxCtx->polyXlu.p++, D_06007928);
                gDPSetEnvColor(oGfxCtx->polyXlu.p++, 255, 10, 0, (u8)((this->unk_4CC / 255.0f) * 255));
                firstDone = 1;
            }
            gDPSetPrimColor(oGfxCtx->polyXlu.p++, 0, 0, 255, 255, 0, (u8)((this->unk_4CC / 255.0f) * 255));
            gDPPipeSync(oGfxCtx->polyXlu.p++);
            Matrix_Translate(part->unk_14.x, part->unk_14.y, part->unk_14.z, MTXMODE_NEW);
            func_800D1FD4(&globalCtx->mf_11DA0);
            Matrix_Scale(part->unk_04, part->unk_04, 1.0f, MTXMODE_APPLY);
            gSPMatrix(oGfxCtx->polyXlu.p++, Matrix_NewMtx(globalCtx->state.gfxCtx, "../z_en_fd.c", 0x7D6), G_MTX_NOPUSH | G_MTX_LOAD | G_MTX_MODELVIEW);
            idx = part->unk_01 * (8.0f / part->unk_02);
            gSPSegment(oGfxCtx->polyXlu.p++, 0x8, SEGMENTED_TO_VIRTUAL(D_80A0E0F8[idx]));
            gSPDisplayList(oGfxCtx->polyXlu.p++, D_06007938);
        }
    }
    CLOSE_DISPS(globalCtx->state.gfxCtx, "../z_en_fd.c", 0x7E4);
}

void func_80A0DB44(EnFd *this, GlobalContext *globalCtx) {
    s16 i;
    s16 firstDone;
    EnFdPart *phi_s0;

    phi_s0 = this->particles;
    OPEN_DISPS(globalCtx->state.gfxCtx, "../z_en_fd.c", 2034);
    firstDone = false;
    func_80093D84(globalCtx->state.gfxCtx);
    for(i = 0; i < ARRAY_COUNT(this->particles); i++, phi_s0++){    
        if (phi_s0->unk_00 == 2) {
            if (!firstDone) {
                func_80093D84(globalCtx->state.gfxCtx);
                gSPDisplayList(oGfxCtx->polyXlu.p++, D_060079F8);
                firstDone = true;
            }
            gDPSetPrimColor(oGfxCtx->polyXlu.p++, 0, 0, phi_s0->unk_0C.r, phi_s0->unk_0C.g, phi_s0->unk_0C.b, (u8)(phi_s0->unk_0C.a * (this->unk_4CC / 255.0f)));
            gDPPipeSync(oGfxCtx->polyXlu.p++);
            if(1){}
            Matrix_Translate(phi_s0->unk_14.x, phi_s0->unk_14.y, phi_s0->unk_14.z, MTXMODE_NEW);
            func_800D1FD4(&globalCtx->mf_11DA0);
            Matrix_Scale(phi_s0->unk_04, phi_s0->unk_04, 1.0f, MTXMODE_APPLY);
            gSPMatrix(oGfxCtx->polyXlu.p++, Matrix_NewMtx(globalCtx->state.gfxCtx, "../z_en_fd.c", 2064),  G_MTX_NOPUSH | G_MTX_LOAD | G_MTX_MODELVIEW);
            gSPDisplayList(oGfxCtx->polyXlu.p++, D_06007A78);
        }
    }
    CLOSE_DISPS(globalCtx->state.gfxCtx, "../z_en_fd.c", 2071);
}