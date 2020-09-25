#include "z_en_fw.h"
#include "../ovl_En_Bom/z_en_bom.h"

#define FLAGS 0x00000215

#define THIS ((EnFw*)thisx)

void EnFw_Init(Actor* thisx, GlobalContext* globalCtx);
void EnFw_Destroy(Actor* thisx, GlobalContext* globalCtx);
void EnFw_Update(Actor* thisx, GlobalContext* globalCtx);
void EnFw_Draw(Actor* thisx, GlobalContext* globalCtx);
void func_80A1F708(EnFw* this);
void func_80A1F814(EnFw* this, GlobalContext* globalCtx);
void func_80A1F664(EnFw *this, Vec3f *initialPos, Vec3f *initialSpeed, Vec3f *accel, u8 initialTimer, f32 scale, f32 scaleSpeed);
void func_80A1EC70(EnFw* this, GlobalContext* globalCtx);
void func_80A1ECD4(EnFw* this, GlobalContext* globalCtx);
void func_80A1F39C(EnFw* this, GlobalContext* globalCtx);
void func_80A1F2A8(EnFw* this, GlobalContext* globalCtx);

const ActorInit En_Fw_InitVars = {
    ACTOR_EN_FW,
    ACTORTYPE_ENEMY,
    FLAGS,
    OBJECT_FW,
    sizeof(EnFw),
    (ActorFunc)EnFw_Init,
    (ActorFunc)EnFw_Destroy,
    (ActorFunc)EnFw_Update,
    (ActorFunc)EnFw_Draw,
};

static ColliderJntSphItemInit sJntSphItemsInit[1] = {
    {
        { 0x00, { 0x00000000, 0x00, 0x04 }, { 0xFFCFFFFE, 0x00, 0x00 }, 0x00, 0x05, 0x01 },
        { 2, { { 1200, 0, 0 }, 16 }, 100 },
    },
};

static ColliderJntSphInit sJntSphInit =
{
    { COLTYPE_UNK6, 0x11, 0x09, 0x39, 0x10, COLSHAPE_JNTSPH },
    1, sJntSphItemsInit,
};

static CollisionCheckInfoInit2 D_80A1FB94 = {
    0x08, 0x0002, 0x0019, 0x0019, 0xFF
};

struct_80034EC0_Entry D_80A1FBA0[] = {
    { 0x06006CF8, 0.0f, 0.0f, -1.0f, 0x03, 0.0f },
    { 0x06007CD0, 1.0f, 0.0f, -1.0f, 0x03, -8.0f },
    { 0x06007DC8, 1.0f, 0.0f, -1.0f, 0x01, -8.0f },
};

extern SkeletonHeader D_06007C30;
extern Gfx D_06007928[];
extern Gfx D_06007938[];
extern AnimationHeader D_06006CF8;

s32 func_80A1E5A0(EnFw *this, s32 arg1, f32 arg2) {
    s16 temp_v1;

    if (!(this->actor.bgCheckFlags & 1) || this->actor.velocity.y > 0.0f) {
        return false;
    }

    Audio_PlayActorSound2(&this->actor, NA_SE_EN_DODO_M_GND);
    this->unk_204--;
    if (this->unk_204 <= 0) {
        if (this->unk_204 == 0) {
            this->unk_204 = 0;
            this->actor.velocity.y = 0.0f;
            return true;
        }
        this->unk_204 = arg1;
    }
    this->actor.velocity.y = arg2;
    this->actor.velocity.y *= ((f32)this->unk_204 / arg1);
    return 1;
}

s32 func_80A1E668(EnFw *this, GlobalContext *globalCtx) {
    Player* player = PLAYER;
    CollisionPoly* sp48;
    u32 sp44;
    Vec3f sp38;

    if (this->actor.xzDistFromLink > 300.0f) {
        return false;
    }
    
    if (ABS((s16)((f32) this->actor.yawTowardsLink - (f32) this->actor.shape.rot.y)) >= 0x1C71) {
        return false;
    }

    if (func_8003DE84(&globalCtx->colCtx, &this->actor.posRot.pos, &player->actor.posRot.pos, &sp38, &sp48, 1, 0, 0, 1, &sp44)) {
        return false;
    }
    return true;
}

Vec3f *func_80A1E760(Vec3f *dst, EnFw *this, f32 arg2, s16 arg3) {
    s16 sp36;
    Vec3f sp28;

    sp36 = Math_Vec3f_Yaw(&this->actor.parent->initPosRot.pos, &this->actor.posRot.pos) + 
                (arg3 * 0x1554);
    sp28.x = (Math_Sins(sp36) * arg2) + this->actor.parent->initPosRot.pos.x;
    sp28.z = (Math_Coss(sp36) * arg2) + this->actor.parent->initPosRot.pos.z;
    sp28.x -= this->actor.posRot.pos.x;
    sp28.z -= this->actor.posRot.pos.z;
    *dst = sp28;
    return dst;
}

s32 func_80A1E838(EnFw *this, GlobalContext *globalCtx) {
    ColliderBody* body;
    s32 phi_return;

    if (this->collider.base.acFlags & 2) {
        body = &this->collider.list[0];
        if (body->acHitItem->toucher.flags & 0x80) {
            this->unk_200 = 1;
        } else {
            this->unk_200 = 0;
        }
        this->collider.base.acFlags &= ~2;
        if (Actor_ApplyDamage(&this->actor) <= 0) {
            if (this->actor.parent->colChkInfo.health < 9) {
                func_80032C7C(globalCtx, &this->actor);
                this->actor.parent->colChkInfo.health = 0;
            } else {
                this->actor.parent->colChkInfo.health -= 8;
            }
            this->unk_212 = 0;
        }
        return true;
    } else {
        return false;
    }
}

s32 func_80A1E8F8(EnFw *this, u8 arg1, f32 arg2, f32 arg3, s32 arg4, f32 arg5, f32 arg6, f32 arg7) {
    Vec3f sp9C = { 0.0f, 0.0f, 0.0f };
    Vec3f sp90 = { 0.0f, 0.0f, 0.0f };
    Vec3f sp84 = { 0.0f, 0.0f, 0.0f };
    s16 phi_s0;
    s32 i;
    
    sp9C = this->actor.posRot.pos;
    sp9C.y = this->actor.groundY + 2.0f;
    phi_s0 = ((Math_Rand_ZeroOne() - 0.5f) * 65536.0f);
    i = arg4;
    while(i >= 0){
        sp84.x = (Math_Rand_ZeroOne() - 0.5f) * arg6;
        sp84.y = arg7;
        sp84.z = (Math_Rand_ZeroOne() - 0.5f) * arg6;
        sp9C.x = (Math_Sins(phi_s0) * arg5) + this->actor.posRot.pos.x;
        sp9C.z = (Math_Coss(phi_s0) * arg5) + this->actor.posRot.pos.z;
        func_80A1F664(this, &sp9C, &sp90, &sp84, arg1, arg2, arg3);
        phi_s0 += (s16)(0x10000 / arg4);
        i--;
    }
    return 0;
}

void EnFw_Init(Actor *thisx, GlobalContext *globalCtx) {
    EnFw* this = THIS;

    SkelAnime_InitSV(globalCtx, &this->skelAnime, &D_06007C30, NULL, this->limbDrawTable, this->transDrawTable, 11);
    func_80034EC0(&this->skelAnime, D_80A1FBA0, 0);
    ActorShape_Init(&this->actor.shape, 0.0f, ActorShadow_DrawFunc_Circle, 20.0f);
    Collider_InitJntSph(globalCtx, &this->collider);
    Collider_SetJntSph(globalCtx, &this->collider, &this->actor, &sJntSphInit, this->sphs);
    func_80061EFC(&this->actor.colChkInfo, DamageTable_Get(0x10), &D_80A1FB94);
    Actor_SetScale(&this->actor, 0.01f);
    this->unk_202 = -this->actor.params;
    this->actionFunc = func_80A1EC70;
    this->actor.gravity = -1.0f;
}

void EnFw_Destroy(Actor *thisx, GlobalContext *globalCtx) {
    EnFw* this = THIS;
    Collider_DestroyJntSph(globalCtx, &this->collider);
}

void func_80A1EC70(EnFw *this, GlobalContext *globalCtx) {
    if (func_80A1E5A0(this, 3, 8.0f) && this->unk_204 == 0) {
        this->unk_212 = Math_Rand_S16Offset(300, 150);
        this->actionFunc = func_80A1ECD4;
    }
}

#ifdef NON_MATCHING
void func_80A1ECD4(EnFw *this, GlobalContext *globalCtx) {
    f32 sp5C;
    Vec3f sp48;
    SkelAnime *sp3C;
    EnBom *bomb;
    SkelAnime *temp_a0;
    f32 *temp_a0_2;
    f32 *temp_a0_3;
    f32 temp_f0;
    s16 temp_v0_3;
    s16 temp_v1;
    s16 temp_v1_2;
    s32 temp_v0_4;
    EnFd *flareDancer;
    s16 phi_v0;
    s16 phi_v0_2;

    Math_SmoothScaleMaxMinF(&this->skelAnime.animPlaybackSpeed, 1.0f, 0.1f, 1.0f, 0.0f);
    if (this->skelAnime.animCurrentSeg == &D_06006CF8) {
        if (func_800A56C8(&this->skelAnime, this->skelAnime.animFrameCount) == 0) {
            this->unk_218 = Math_Vec3f_DistXYZ(&this->actor.posRot.pos, &this->actor.parent->posRot.pos);
            func_80034EC0(&this->skelAnime, D_80A1FBA0, 2);
            return;
        }
    } else {
        if (this->unk_208 == 0 && this->unk_20A == 0 && func_80A1E838(this, globalCtx)) {
            if (this->actor.parent->colChkInfo.health > 0) {
                if (this->unk_200 == 0) {
                    this->actor.velocity.y = 6.0f;
                }
                Audio_PlayActorSound2(&this->actor, NA_SE_EN_FLAME_MAN_DAMAGE);
                this->unk_208 = 20;
            } else {
                Audio_PlayActorSound2(&this->actor, NA_SE_EN_FLAME_MAN_DAMAGE);
                this->unk_20A = 6;
            }
            this->actor.speedXZ = 0.0f;
        }
        if (this->unk_20A != 0) {
            this->skelAnime.animPlaybackSpeed = 0.0f;
            Math_SmoothScaleMaxMinF(&this->actor.scale.x, 0.024999999f, 0.08f, 0.6f, 0.0f);
            Actor_SetScale(&this->actor, this->actor.scale.x);
            if (this->actor.dmgEffectTimer == 0) {
                func_8003426C(&this->actor, 0x4000, 0xC8, 0, this->unk_20A);
                this->unk_20A--;
            }
            if (this->unk_20A == 0) {
                bomb = (EnBom*)Actor_Spawn(&globalCtx->actorCtx, globalCtx, ACTOR_EN_BOM, this->unk_1F4.x, this->unk_1F4.y, this->unk_1F4.z, 0, 0, 0x600, 0);
                if (bomb != NULL) {
                    bomb->timer = 0;
                }
                flareDancer = this->actor.parent;
                flareDancer->actor.params |= 0x4000;
                Item_DropCollectibleRandom(globalCtx, NULL, &this->actor.posRot.pos, 0xA0);
                Actor_Kill(&this->actor);
                return;
            }
        } else {
            if (!(this->actor.bgCheckFlags & 1) || this->actor.velocity.y > 0) {
                func_8003426C(&this->actor, 0x4000, 0xC8, 0, this->unk_208);
                return;
            }
            DECR(this->unk_208);
            if ((200.0f - this->unk_218) < 0.9f) {
                if (DECR(this->unk_212) == 0) {
                    this->actor.speedXZ = 0.0f;
                    this->actionFunc = func_80A1F2A8;
                    return;
                }
            }
            Math_SmoothScaleMaxMinF(&this->unk_218, 200.0f, 0.3f, 100.0f, 0.0f);
            if (this->unk_214 != 0) {
                Math_SmoothScaleMaxMinF(&this->actor.speedXZ, 0.0f, 0.1f, 1.0f, 0.0f);
                phi_v0 = this->actor.posRot.rot.y ^ 0x8000;
                sp5C = this->actor.shape.rot.y;
                temp_f0 = Math_SmoothScaleMaxMinF(&sp5C, phi_v0, 0.1f, 10000.0f, 0.0f);
                this->actor.shape.rot.y = sp5C;
                if (!(5460.0f < temp_f0)) {
                    this->unk_214 = 0;
                } else {
                    func_80A1E760(&sp48, this, this->unk_218, this->unk_202);
                    Math_SmoothScaleMaxMinS(&this->actor.shape.rot.y, (Math_atan2f(sp48.x, sp48.z) * 10430.378f), 4, 0xFA0, 1);
                }
                this->actor.posRot.rot = this->actor.shape.rot;
                if (this->unk_20E == 0) {
                    if (func_80A1E668(this, globalCtx)) {
                        Audio_PlayActorSound2(&this->actor, NA_SE_EN_FLAME_MAN_SURP);
                        this->unk_210 = 8;
                        this->unk_20E = 8;
                    }
                }
                if (this->unk_20E != 0) {
                    if (DECR(this->unk_210) == 0) {
                        Audio_PlayActorSound2(&this->actor, NA_SE_EN_FLAME_MAN_SLIDE);
                        this->unk_210 = 4;
                    }
                    Math_SmoothScaleMaxMinF(&this->actor.speedXZ, 0.0f, 0.1f, 1.0f, 0.0f);
                    this->skelAnime.animPlaybackSpeed = 0.0f;
                    func_80A1E8F8(this, 8, 0.16f, 0.2f, 3, 8.0f, 20.0f, ((Math_Rand_ZeroOne() - 0.5f) * 0.2f) + 0.3f);
                    this->unk_20E--;
                    if (this->unk_20E == 0) {
                        this->unk_214 = 1;
                        this->unk_202 = -this->unk_202;
                        return;
                    }
                } else {
                    Math_SmoothScaleMaxMinF(&this->actor.speedXZ, 6.0f, 0.1f, 1.0f, 0.0f);
                    phi_v0 = this->skelAnime.animCurrentFrame;
                    if (phi_v0 == 1 || phi_v0 == 4) {
                        Audio_PlayActorSound2(&this->actor, NA_SE_EN_FLAME_MAN_RUN);
                        func_80A1E8F8(this, 8, 0.16f, 0.1f, 1, 0.0f, 20.0f, 0.0f);
                    }
                }
            }
        }
    }
}
#else
#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Fw/func_80A1ECD4.s")
#endif

void func_80A1F2A8(EnFw *this, GlobalContext *globalCtx) {
    s16 sp36;

    sp36 = Math_Vec3f_Yaw(&this->actor.posRot.pos, &this->actor.parent->initPosRot.pos);
    Math_SmoothScaleMaxMinS(&this->actor.shape.rot.y, sp36, 4, 0xFA0, 1);
    if (ABS(sp36 - this->actor.shape.rot.y) < 0x65) {
        this->actor.posRot.rot = this->actor.shape.rot;
        this->actor.velocity.y = 14.0f;
        this->actor.initPosRot.pos = this->actor.posRot.pos;
        Audio_PlayActorSound2(&this->actor, NA_SE_EN_STAL_JUMP);
        func_80034EC0(&this->skelAnime, D_80A1FBA0, 1);
        this->actionFunc = func_80A1F39C;
    }
}

void func_80A1F39C(EnFw *this, GlobalContext *globalCtx) {
    if (this->actor.bgCheckFlags & 1 && this->actor.velocity.y <= 0.0f) {
        this->actor.parent->params |= 0x8000;
        Actor_Kill(&this->actor);
    } else {
        Math_SmoothScaleMaxMinF(&this->actor.posRot, this->actor.parent->initPosRot.pos.x, 0.6f, 8.0f, 0.0f);
        Math_SmoothScaleMaxMinF(&this->actor.posRot.pos.z, this->actor.parent->initPosRot.pos.z, 0.6f, 8.0f, 0.0f);
    }
}

void EnFw_Update(Actor *thisx, GlobalContext *globalCtx) {
    EnFw* this = THIS;
    SkelAnime_FrameUpdateMatrix(&this->skelAnime);
    if ((this->actor.flags & 0x2000) != 0x2000) {
        Actor_MoveForward(&this->actor);
        func_8002E4B4(globalCtx, &this->actor, 10.0f, 20.0f, 0.0f, 5);
        this->actionFunc(this, globalCtx);
        if (this->unk_208 == 0 && this->unk_20A == 0 && this->actionFunc == func_80A1ECD4) {
            CollisionCheck_SetAC(globalCtx, &globalCtx->colChkCtx, &this->collider.base);
        }
        CollisionCheck_SetOC(globalCtx, &globalCtx->colChkCtx, &this->collider.base);
    }
}

s32 func_80A1F52C(GlobalContext *globalContext, s32 limbIndex, Gfx **dList, Vec3f *pos, Vec3s *rot, void *thisx) {
    return 0;
}

void func_80A1F544(GlobalContext *globalCtx, s32 limbIndex, Gfx **dList, Vec3s *rot, void *thisx) {
    EnFw* this = THIS;
    Vec3f zeroVec = { 0.0f, 0.0f, 0.0f };
    

    if (limbIndex == 2) {
        Matrix_MultVec3f(&zeroVec, &this->unk_1F4);
    }

    if (limbIndex == 3) {
        limbIndex = limbIndex;
        Matrix_MultVec3f(&zeroVec, &this->actor.posRot2.pos);
    }
    func_800628A4(limbIndex, &this->collider);
}

void EnFw_Draw(Actor *thisx, GlobalContext *globalCtx) {
    EnFw* this = THIS;

    func_80A1F708(this);
    Matrix_Push();
    func_80A1F814(this, globalCtx);
    Matrix_Pull();
    func_80093D18(globalCtx->state.gfxCtx);
    SkelAnime_DrawSV(globalCtx, this->skelAnime.skeleton, this->skelAnime.limbDrawTbl, this->skelAnime.dListCount, func_80A1F52C, func_80A1F544, this);
}

void func_80A1F664(EnFw *this, Vec3f *initialPos, Vec3f *initialSpeed, Vec3f *accel, u8 initialTimer, f32 scale, f32 scaleSpeed) {
    EnFdPart* part = this->particles;
    s16 i;

    for(i = 0; i < ARRAY_COUNT(this->particles); i++, part++){
        if(part->type != 1){
            part->scale = scale;
            part->scaleSpeed = scaleSpeed;
            part->initialTimer = part->timer = initialTimer;
            part->type = 1;
            part->pos = *initialPos;
            part->accel = *accel;
            part->speed = *initialSpeed;
            return;
        }
    }
}

void func_80A1F708(EnFw *this) {
    EnFdPart *part = this->particles;
    s16 i;
    
    for(i = 0; i < ARRAY_COUNT(this->particles); i++, part++){
        if (part->type != 0) {
            if ((--part->timer) == 0) {
                part->type = 0;
            }
            part->accel.x = (Math_Rand_ZeroOne() * 0.4f) - 0.2f;
            part->accel.z = (Math_Rand_ZeroOne() * 0.4f) - 0.2f;
            part->pos.x += part->speed.x;
            part->pos.y += part->speed.y;
            part->pos.z += part->speed.z;
            part->speed.x += part->accel.x;
            part->speed.y += part->accel.y;
            part->speed.z += part->accel.z;
            part->scale += part->scaleSpeed;
        }
    }
}

void func_80A1F814(EnFw *this, GlobalContext *globalCtx) {
    static Gfx* D_80A1FC18[] = {
        0x040539B0, 0x040535B0, 0x040531B0, 0x04052DB0, 
        0x040529B0, 0x040525B0, 0x040521B0, 0x04051DB0,
    };
    EnFdPart* part = this->particles;
    s16 phi_s7;
    s16 alpha;
    s16 i;
    s16 idx;

    OPEN_DISPS(globalCtx->state.gfxCtx, "../z_en_fw.c", 0x4A7);
    phi_s7 = 0;
    func_80093D84(globalCtx->state.gfxCtx);
    if(1){}
    for(i = 0; i < ARRAY_COUNT(this->particles); i++, part++){
        if (part->type != 0) {
            if (phi_s7 == 0) {
                oGfxCtx->polyXlu.p = Gfx_CallSetupDL(oGfxCtx->polyXlu.p, 0U);
                gSPDisplayList(oGfxCtx->polyXlu.p++, D_06007928);
                gDPSetEnvColor(oGfxCtx->polyXlu.p++, 100, 60, 20, 0);
                phi_s7 = 1;
            }
            alpha = part->timer * (255.0f / part->initialTimer);
            gDPSetPrimColor(oGfxCtx->polyXlu.p++, 0, 0, 170, 130, 90, alpha);
            gDPPipeSync(oGfxCtx->polyXlu.p++);
            Matrix_Translate(part->pos.x, part->pos.y, part->pos.z, MTXMODE_NEW);
            func_800D1FD4(&globalCtx->mf_11DA0);
            Matrix_Scale(part->scale, part->scale, 1.0f, MTXMODE_APPLY);
            gSPMatrix(oGfxCtx->polyXlu.p++, Matrix_NewMtx(globalCtx->state.gfxCtx, "../z_en_fw.c", 0x4CD), G_MTX_NOPUSH | G_MTX_LOAD | G_MTX_MODELVIEW);
            idx = part->timer * (8.0f / part->initialTimer);
            gSPSegment(oGfxCtx->polyXlu.p++, 0x8, SEGMENTED_TO_VIRTUAL(D_80A1FC18[idx]));
            gSPDisplayList(oGfxCtx->polyXlu.p++, &D_06007938);
        }
    }
    CLOSE_DISPS(globalCtx->state.gfxCtx, "../z_en_fw.c", 0x4DB);
}
