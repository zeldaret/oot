/*
 * File: z_en_goroiwa.c
 * Overlay: ovl_En_Goroiwa
 * Description: Rolling boulders
 */

#include "z_en_goroiwa.h"

#include <vt.h>

#define FLAGS 0x00000010

#define THIS ((EnGoroiwa*)thisx)

void EnGoroiwa_Init(Actor* thisx, GlobalContext* globalCtx);
void EnGoroiwa_Destroy(Actor* thisx, GlobalContext* globalCtx);
void EnGoroiwa_Update(Actor* thisx, GlobalContext* globalCtx);
void EnGoroiwa_Draw(Actor* thisx, GlobalContext* globalCtx);

void func_80A4D5E0(EnGoroiwa* this);
void func_80A4D624(EnGoroiwa* this, GlobalContext* globalCtx);
void func_80A4D944(EnGoroiwa* this, GlobalContext* globalCtx);
void func_80A4D9DC(EnGoroiwa* this);
void func_80A4DA3C(EnGoroiwa* this, GlobalContext* globalCtx);
void func_80A4DA7C(EnGoroiwa* this);
void func_80A4DAD0(EnGoroiwa* this, GlobalContext* globalCtx);
void func_80A4DB90(EnGoroiwa* this);
void func_80A4DC00(EnGoroiwa* this, GlobalContext* globalCtx);

/*
const ActorInit En_Goroiwa_InitVars = {
    ACTOR_EN_GOROIWA,
    ACTORTYPE_PROP,
    FLAGS,
    OBJECT_GOROIWA,
    sizeof(EnGoroiwa),
    (ActorFunc)EnGoroiwa_Init,
    (ActorFunc)EnGoroiwa_Destroy,
    (ActorFunc)EnGoroiwa_Update,
    (ActorFunc)EnGoroiwa_Draw,
};
*/

extern ColliderJntSphInit D_80A4DEA4;
extern CollisionCheckInfoInit D_80A4DEB4;
extern f32 D_80A4DEC4[];
extern Vec3f D_80A4DEE4;
extern Vec3f D_80A4DECC;
extern Vec3f D_80A4DED8;
extern f32 D_80A4DEF0[];
extern InitChainEntry D_80A4DEF8;
extern f32 D_80A4DF10[];
extern bool (*D_80A4DF18[])(EnGoroiwa* this);
extern void (*D_80A4DF20[])(EnGoroiwa* this);
extern s16 D_80A4DF28[];

extern Gfx D_0400D340[];
extern Gfx D_060006B0[];

void func_80A4BCA0(EnGoroiwa* this) {
    Sphere16* worldSphere = &this->collider.list->dim.worldSphere;

    worldSphere->center.x = this->actor.posRot.pos.x;
    worldSphere->center.y = D_80A4DEC4[(this->actor.params >> 10) & 1] + this->actor.posRot.pos.y;
    worldSphere->center.z = this->actor.posRot.pos.z;
}

void func_80A4BD04(EnGoroiwa* this, GlobalContext* globalCtx) {
    s32 pad;

    Collider_InitJntSph(globalCtx, &this->collider);
    Collider_SetJntSph(globalCtx, &this->collider, &this->actor, &D_80A4DEA4, &this->colliderItem);
    func_80A4BCA0(this);
    this->collider.list->dim.worldSphere.radius = 0x3A;
}

void func_80A4BD70(EnGoroiwa* this, u8 arg1) {
    this->unk_1D3 &= ~3;
    this->unk_1D3 |= arg1;
}

bool func_80A4BD8C(Vec3f* arg0, Vec3f* arg1) {
    f32 magnitude = Math3D_Vec3fMagnitude(arg1);
    f32 scale;

    if (magnitude < 0.001f) {
        return false;
    }

    scale = 1.0f / magnitude;

    arg0->x = arg1->x * scale;
    arg0->y = arg1->y * scale;
    arg0->z = arg1->z * scale;

    return true;
}

void func_80A4BE10(EnGoroiwa* this, GlobalContext* globalCtx) {
    if (globalCtx->sceneNum == SCENE_SPOT04) {
        this->unk_1D2 = 1;
        mREG(12) = 920;
    } else {
        this->unk_1D2 = 0;
        mREG(12) = 1000;
    }
}

void func_80A4BE54(EnGoroiwa* this, GlobalContext* globalCtx) {
    Path* path = &globalCtx->setupPathList[this->actor.params & 0xFF];
    Vec3s* pointPos = (Vec3s*)SEGMENTED_TO_VIRTUAL(path->points) + this->waypoint2;
    Vec3f pos;

    pos.x = pointPos->x;
    pos.y = pointPos->y;
    pos.z = pointPos->z;

    this->actor.posRot.rot.y = Math_Vec3f_Yaw(&this->actor.posRot.pos, &pos);
}

void func_80A4BF28(EnGoroiwa* this, GlobalContext* globalCtx, Vec3f* arg2) {
    s16 temp_v0 = (this->actor.params >> 8) & 3;
    Path* path = &globalCtx->setupPathList[this->actor.params & 0xFF];
    s16 temp_t0 = this->waypoint1 - this->unk_1D0;
    Vec3s* pointPos;
    Vec3s* pointPos1;

    if (temp_t0 < 0) {
        if (temp_v0 == 0 || temp_v0 == 1) {
            temp_t0 = this->unk_1CA;
        } else if (temp_v0 == 3) {
            temp_t0 = 1;
        }
    } else {
        if (this->unk_1CA < temp_t0) {
            if (temp_v0 == 0 || temp_v0 == 1) {
                temp_t0 = 0;
            } else if (temp_v0 == 3) {
                temp_t0 = this->unk_1CA - 1;
            }
        }
    }

    pointPos1 = (Vec3s*)SEGMENTED_TO_VIRTUAL(path->points) + this->waypoint1;
    pointPos = (Vec3s*)SEGMENTED_TO_VIRTUAL(path->points) + temp_t0;
    arg2->x = pointPos1->x - pointPos->x;
    arg2->y = pointPos1->x - pointPos->y;
    arg2->z = pointPos1->x - pointPos->z;
}

void func_80A4C080(EnGoroiwa* this) {
    s16 temp_v0 = (this->actor.params >> 8) & 3;

    if (this->waypoint2 < 0) {
        if (temp_v0 == 0 || temp_v0 == 1) {
            this->waypoint1 = this->unk_1CA;
            this->waypoint2 = this->unk_1CA - 1;
            this->unk_1D0 = -1;
        } else if (temp_v0 == 3) {
            this->waypoint1 = 0;
            this->waypoint2 = 1;
            this->unk_1D0 = 1;
        }
    } else if (this->waypoint2 > this->unk_1CA) {
        if (temp_v0 == 0 || temp_v0 == 1) {
            this->waypoint1 = 0;
            this->waypoint2 = 1;
            this->unk_1D0 = 1;
        } else if (temp_v0 == 3) {
            this->waypoint1 = this->unk_1CA;
            this->waypoint2 = this->unk_1CA - 1;
            this->unk_1D0 = -1;
        }
    }
}

void func_80A4C134(EnGoroiwa* this) {
    this->waypoint1 = this->waypoint2;
    this->waypoint2 += this->unk_1D0;
    func_80A4C080(this);
}

void func_80A4C164(EnGoroiwa* this) {
    this->unk_1D0 *= -1;
    this->waypoint1 = this->waypoint2;
    this->waypoint2 += this->unk_1D0;
}

void func_80A4C188(EnGoroiwa* this, GlobalContext* globalCtx) {
    this->unk_1CA = globalCtx->setupPathList[this->actor.params & 0xFF].count - 1;
    this->waypoint1 = 0;
    this->waypoint2 = 1;
    this->unk_1D0 = 1;
}

void func_80A4C1C4(EnGoroiwa* this, GlobalContext* globalCtx, s32 waypoint) {
    Path* path = &globalCtx->setupPathList[this->actor.params & 0xFF];
    Vec3s* pointPos = (Vec3s*)SEGMENTED_TO_VIRTUAL(path->points) + waypoint;

    this->actor.posRot.pos.x = pointPos->x;
    this->actor.posRot.pos.y = pointPos->y;
    this->actor.posRot.pos.z = pointPos->z;
}

void func_80A4C264(EnGoroiwa* this) {
    this->unk_1B0.x = 1.0f;
    this->unk_1C0 = 1.0f;
}

s32 func_80A4C27C(EnGoroiwa* this, GlobalContext* globalCtx) {
    s32 pad;
    Path* path = &globalCtx->setupPathList[this->actor.params & 0xFF];
    Vec3s* pointPos2 = (Vec3s*)SEGMENTED_TO_VIRTUAL(path->points) + this->waypoint2;
    Vec3s* pointPos1 = (Vec3s*)SEGMENTED_TO_VIRTUAL(path->points) + this->waypoint1;

    if (pointPos2->x == pointPos1->x && pointPos2->z == pointPos1->z) {
        if (pointPos2->y == pointPos1->y) {
            // Translation: Error: Invalid path data (points overlap)
            osSyncPrintf("Error : レールデータ不正(点が重なっている)");
            osSyncPrintf("(%s %d)(arg_data 0x%04x)\n", "../z_en_gr.c", 559, this->actor.params);
        }

        if (pointPos2->y > pointPos1->y) {
            return 1;
        } else {
            return -1;
        }
    }

    return 0;
}

void func_80A4C3A4(GlobalContext* globalCtx, Vec3f* arg1) {
    Vec3f sp7C;
    s32 i;
    s16 angle = 0;

    for (i = 0; i < 8; i++) {
        angle += 0x4E20;
        sp7C.x = ((47.0f * ((Math_Rand_ZeroOne() * 0.5f) + 0.5f)) * Math_Sins(angle)) + arg1->x;
        sp7C.y = ((Math_Rand_ZeroOne() - 0.5f) * 40.0f) + arg1->y;
        sp7C.z = ((47.0f * ((Math_Rand_ZeroOne() * 0.5f) + 0.5f))) * Math_Coss(angle) + arg1->z;
        func_800286CC(globalCtx, &sp7C, &D_80A4DECC, &D_80A4DED8, (s16)(Math_Rand_ZeroOne() * 30.0f) + 100, 80);
        func_800286CC(globalCtx, &sp7C, &D_80A4DECC, &D_80A4DED8, (s16)(Math_Rand_ZeroOne() * 20.0f) + 80, 80);
    }
}

void func_80A4C594(GlobalContext* globalCtx, Vec3f* arg1) {
    Vec3f sp4C;
    s32 i;
    s16 angle = 0;

    for (i = 0; i < 11; i++) {
        angle += 0x1746;
        sp4C.x = (Math_Sins(angle) * 55.0f) + arg1->x;
        sp4C.y = arg1->y;
        sp4C.z = (Math_Coss(angle) * 55.0f) + arg1->z;
        func_8002949C(globalCtx, &sp4C, 0, 0, 0, 350);
    }

    func_80029444(globalCtx, arg1, 300, 700, 0);
    func_80029444(globalCtx, arg1, 500, 900, 4);
    func_80029444(globalCtx, arg1, 500, 1300, 8);
}

bool func_80A4C6C8(EnGoroiwa* this, GlobalContext* globalCtx) {
    Path* path;
    bool result;
    s32 pad;
    Vec3s* pointPos;

    Math_ApproxF(&this->actor.speedXZ, mREG(12) * 0.01f, 0.3f);
    func_8002D868(&this->actor);
    path = &globalCtx->setupPathList[this->actor.params & 0xFF];
    pointPos = (Vec3s*)SEGMENTED_TO_VIRTUAL(path->points) + this->waypoint2;
    result = Math_ApproxF(&this->actor.posRot.pos.x, pointPos->x, fabsf(this->actor.velocity.x)) & 1;
    result &= Math_ApproxF(&this->actor.posRot.pos.z, pointPos->z, fabsf(this->actor.velocity.z));
    this->actor.posRot.pos.y += this->actor.velocity.y;

    return result;
}

bool func_80A4C814(EnGoroiwa* this, GlobalContext* globalCtx) {
    Path* path = &globalCtx->setupPathList[this->actor.params & 0xFF];
    s32 pad;
    Vec3s* pointPos2 = (Vec3s*)SEGMENTED_TO_VIRTUAL(path->points) + this->waypoint2;
    Vec3s* pointPos1 = (Vec3s*)SEGMENTED_TO_VIRTUAL(path->points) + this->waypoint1;
    bool result;
    Vec3f sp38;
    Vec3f sp2C;

    sp2C.x = pointPos2->x;
    sp2C.y = pointPos2->y;
    sp2C.z = pointPos2->z;
    Math_ApproxF(&this->actor.speedXZ, mREG(12) * 0.01f, 0.3f);
    if (Math3D_Vec3fDistSq(&sp2C, &this->actor.posRot.pos) < 25.0f) {
        Math_Vec3f_Diff(&sp2C, &this->actor.posRot.pos, &sp38);
    } else {
        sp38.x = sp2C.x - pointPos1->x;
        sp38.y = sp2C.y - pointPos1->y;
        sp38.z = sp2C.z - pointPos1->z;
    }
    func_80A4BD8C(&this->actor.velocity, &sp38);
    this->actor.velocity.x *= this->actor.speedXZ;
    this->actor.velocity.y *= this->actor.speedXZ;
    this->actor.velocity.z *= this->actor.speedXZ;
    result = Math_ApproxF(&this->actor.posRot.pos.x, sp2C.x, fabsf(this->actor.velocity.x)) & 1;
    result &= Math_ApproxF(&this->actor.posRot.pos.y, sp2C.y, fabsf(this->actor.velocity.y));
    result &= Math_ApproxF(&this->actor.posRot.pos.z, sp2C.z, fabsf(this->actor.velocity.z));
    return result;
}

bool func_80A4CA50(EnGoroiwa* this, GlobalContext* globalCtx) {
    s32 pad;
    Path* path = &globalCtx->setupPathList[this->actor.params & 0xFF];
    Vec3s* pointPos = (Vec3s*)SEGMENTED_TO_VIRTUAL(path->points) + this->waypoint2;

    Math_ApproxF(&this->actor.velocity.y, (mREG(12) * 0.01f) * 0.5f, 0.18f);
    this->actor.posRot.pos.x = pointPos->x;
    this->actor.posRot.pos.z = pointPos->z;
    return Math_ApproxF(&this->actor.posRot.pos.y, pointPos->y, fabsf(this->actor.velocity.y));
}

bool func_80A4CB78(EnGoroiwa* this, GlobalContext* globalCtx) {
    s32 pad;
    Path* path = &globalCtx->setupPathList[this->actor.params & 0xFF];
    Vec3s* pointPos = (Vec3s*)SEGMENTED_TO_VIRTUAL(path->points) + this->waypoint2;
    f32 pointY;
    f32 thisY;
    f32 temp;
    s32 quakeIdx;
    CollisionPoly* sp68;
    Vec3f sp5C;
    f32 temp_f0_2;
    s32 pad2;
    u32 sp50;
    Vec3f sp44;
    WaterBox* waterBox;
    f32 ySurface;
    Vec3f sp30;

    pointY = pointPos->y;
    Math_ApproxF(&this->actor.velocity.y, -14.0f, 1.0f);
    this->actor.posRot.pos.x = pointPos->x;
    this->actor.posRot.pos.z = pointPos->z;
    thisY = this->actor.posRot.pos.y;
    if (1) {}
    this->actor.posRot.pos.y += this->actor.velocity.y;
    if (this->actor.velocity.y < 0.0f && this->actor.posRot.pos.y <= pointY) {
        if (this->unk_1C6 == 0) {
            if (this->actor.xzDistFromLink < 600.0f) {
                quakeIdx = Quake_Add(ACTIVE_CAM, 3);
                Quake_SetSpeed(quakeIdx, -0x3CB0);
                Quake_SetQuakeValues(quakeIdx, 3, 0, 0, 0);
                Quake_SetCountdown(quakeIdx, 7);
            }
            this->unk_1C0 = 0.0f;
            if (!(this->unk_1D3 & 0x10)) {
                sp5C.x = this->actor.posRot.pos.x;
                sp5C.y = this->actor.posRot.pos.y + 50.0f;
                sp5C.z = this->actor.posRot.pos.z;
                temp_f0_2 = func_8003CA0C(globalCtx, &globalCtx->colCtx, &sp68, &sp50, &this->actor, &sp5C);
                // temp needed to match
                temp = temp_f0_2 - (this->actor.posRot.pos.y - 59.5f);
                if (fabsf(temp) < 15.0f) {
                    sp44.x = this->actor.posRot.pos.x;
                    sp44.y = temp_f0_2 + 10.0f;
                    sp44.z = this->actor.posRot.pos.z;
                    func_80A4C3A4(globalCtx, &sp44);
                }
            }
        }
        if (this->unk_1C6 > 0) {
            return true;
        }
        this->unk_1C6 += 1;
        this->actor.velocity.y *= -0.3f;
        this->actor.posRot.pos.y = pointY - ((this->actor.posRot.pos.y - pointY) * 0.3f);
    }
    if (this->unk_1C6 == 0 && func_80042244(globalCtx, &globalCtx->colCtx, this->actor.posRot.pos.x, this->actor.posRot.pos.z, &ySurface, &waterBox) && this->actor.posRot.pos.y <= ySurface) {
        this->unk_1D3 |= 0x10;
        if (ySurface < thisY) {
            sp30.x = this->actor.posRot.pos.x;
            sp30.y = ySurface;
            sp30.z = this->actor.posRot.pos.z;
            func_80A4C594(globalCtx, &sp30);
            this->actor.velocity.y *= 0.2f;
        }
        if (this->actor.velocity.y < -8.0f) {
            this->actor.velocity.y = -8.0f;
        }
    }
    return false;
}

void func_80A4CED8(EnGoroiwa* this, GlobalContext* globalCtx) {
    s32 pad;
    Vec3f* temp;
    f32 sp8C;
    Vec3f sp80;
    Vec3f sp74;
    MtxF mtx;
    Vec3f sp28;

    if (this->unk_1D3 & 8) {
        sp8C = this->unk_1BC;
    } else {
        this->unk_1BC = Math3D_Vec3f_DistXYZ(&this->actor.posRot.pos, &this->actor.pos4) * 0.016806724f;
        sp8C = this->unk_1BC;
    }
    sp8C *= this->unk_1C0;
    // temp assignment needed to match
    temp = &sp80;
    if (this->unk_1D3 & 8) {
        func_80A4BF28(this, globalCtx, &sp28);
        Math3D_Vec3f_Cross(&D_80A4DEE4, &this->actor.velocity, temp);
    } else {
        Math3D_Vec3f_Cross(&D_80A4DEE4, &this->actor.velocity, temp);
    }

    if (func_80A4BD8C(&sp74, temp)) {
        this->unk_1B0 = sp74;
    } else {
        sp74 = this->unk_1B0;
    }

    func_800D23FC(sp8C, &sp74, 0);
    Matrix_RotateY(this->actor.shape.rot.y * (2 * M_PI / 65536), 1);
    Matrix_RotateX(this->actor.shape.rot.x * (2 * M_PI / 65536), 1);
    Matrix_RotateZ(this->actor.shape.rot.z * (2 * M_PI / 65536), 1);
    Matrix_Get(&mtx);
    func_800D20CC(&mtx, &this->actor.shape.rot, 0);
}

void func_80A4D074(EnGoroiwa* this, GlobalContext* globalCtx) {
    s16 temp_v0 = (this->actor.params >> 8) & 3;

    func_80A4C134(this);

    if (temp_v0 == 0 || temp_v0 == 1) {
        if (this->waypoint1 == 0 || this->waypoint1 == this->unk_1CA) {
            func_80A4C1C4(this, globalCtx, this->waypoint1);
        }
    }

    func_80A4BE54(this, globalCtx);
}

void func_80A4D0FC(EnGoroiwa* this, GlobalContext* globalCtx) {
    s16 angle1;
    s16 angle2;
    s32 pad;
    Vec3f* pos = &this->actor.posRot.pos;
    Vec3f burstDepthY;
    Vec3f burstDepthX;
    f32 temp_f24;
    f32 temp_f22;
    f32 temp_f20;
    f32 temp_f20_2;
    s16 temp_v0 = (this->actor.params >> 10) & 1;
    s32 i;

    for (i = 0, angle1 = 0; i < 16; i++, angle1 += 0x4E20) {
        temp_f22 = Math_Sins(angle1);
        temp_f24 = Math_Coss(angle1);
        angle2 = Math_Rand_ZeroOne() * 65535.0f;
        burstDepthY.x = ((Math_Rand_ZeroOne() * 50.0f) * temp_f22) * Math_Sins(angle2);
        temp_f20_2 = Math_Sins(angle2);
        burstDepthY.y = (((Math_Rand_ZeroOne() - 0.5f) * 100.0f) * temp_f20_2) + D_80A4DEF0[temp_v0];
        burstDepthY.z = ((Math_Rand_ZeroOne() * 50.0f) * temp_f24) * Math_Sins(angle2);
        burstDepthX.x = burstDepthY.x * 0.2f;
        burstDepthX.y = (Math_Rand_ZeroOne() * 15.0f) + 2.0f;
        burstDepthX.z = burstDepthY.z * 0.2f;
        Math_Vec3f_Sum(&burstDepthY, pos, &burstDepthY);
        func_80029E8C(globalCtx, &burstDepthY, &burstDepthX, &burstDepthY, -340, 33, 28, 2, 0, (Math_Rand_ZeroOne() * 7.0f) + 1.0f, 1, 0, 70, -1, 1, D_0400D340);
    }

    burstDepthY.x = pos->x;
    burstDepthY.y = pos->y + D_80A4DEF0[temp_v0];
    burstDepthY.z = pos->z;
    func_80033480(globalCtx, &burstDepthY, 80.0f, 5, 70, 110, 1);
    func_80033480(globalCtx, &burstDepthY, 90.0f, 5, 110, 160, 1);
}

void EnGoroiwa_Init(Actor* thisx, GlobalContext* globalCtx) {
    EnGoroiwa* this = THIS;
    s32 params;

    Actor_ProcessInitChain(&this->actor, &D_80A4DEF8);
    func_80A4BD04(this, globalCtx);
    params = this->actor.params & 0xFF;
    if (params == 0xFF) {
        // Translation: Error: Invalid arg_data
        osSyncPrintf("Ｅｒｒｏｒ : arg_data が不正(%s %d)(arg_data 0x%04x)\n", "../z_en_gr.c", 1033, this->actor.params);
        Actor_Kill(&this->actor);
        return;
    }
    if (globalCtx->setupPathList[params].count < 2) {
        // Translation: Error: Invalid Path Data
        osSyncPrintf("Ｅｒｒｏｒ : レールデータ が不正(%s %d)\n", "../z_en_gr.c", 1043);
        Actor_Kill(&this->actor);
        return;
    }
    func_80061ED4(&this->actor.colChkInfo, NULL, &D_80A4DEB4);
    ActorShape_Init(&this->actor.shape, D_80A4DF10[(this->actor.params >> 10) & 1], ActorShadow_DrawFunc_Circle, 9.4f);
    this->actor.shape.unk_14 = 200;
    func_80A4BE10(this, globalCtx);
    func_80A4C188(this, globalCtx);
    func_80A4C1C4(this, globalCtx, 0);
    func_80A4C264(this);
    func_80A4BE54(this, globalCtx);
    func_80A4D5E0(this);
    // Translation: (Goroiwa)
    osSyncPrintf("(ごろ岩)(arg 0x%04x)(rail %d)(end %d)(bgc %d)(hit %d)\n", this->actor.params, this->actor.params & 0xFF, (this->actor.params >> 8) & 3, (this->actor.params >> 10) & 1, this->actor.initPosRot.rot.z & 1);
}

void EnGoroiwa_Destroy(Actor* thisx, GlobalContext* globalCtx) {
    Collider_DestroyJntSph(globalCtx, &THIS->collider);
}

void func_80A4D5E0(EnGoroiwa* this) {
    this->actionFunc = func_80A4D624;
    func_80A4BD70(this, 3);
    this->unk_1C0 = 1.0f;
}

#ifdef NON_MATCHING
void func_80A4D624(EnGoroiwa* this, GlobalContext* globalCtx) {
    s32 temp_v0_5;
    s16 temp_v1;
    s16 temp_v1_2;

    if (this->collider.base.atFlags & 2) {
        this->collider.base.atFlags &= ~2;
        temp_v1 = this->actor.yawTowardsLink - this->actor.posRot.rot.y;
        this->unk_1D3 &= ~4;
        if (temp_v1 >= -0x3FFF && temp_v1 < 0x4000) {
            this->unk_1D3 |= 4;
            if ((this->actor.params >> 10) & 1 || (this->actor.initPosRot.rot.z & 1) != 1) {
                func_80A4C164(this);
                func_80A4BE54(this, globalCtx);
            }
        }
        func_8002F6D4(globalCtx, &this->actor, 2.0f, this->actor.yawTowardsLink, 0.0f, 0);
        osSyncPrintf(VT_FGCOL(CYAN));
        // Translation: Player knocked down
        osSyncPrintf("Player ぶっ飛ばし\n");
        osSyncPrintf(VT_RST);
        D_80A4DF20[(this->actor.params >> 10) & 1](this);
        func_8002F7DC(&PLAYER->actor, NA_SE_PL_BODY_HIT);
        if ((this->actor.initPosRot.rot.z & 1) == 1) {
            this->timer = 50;
        }
    } else if (D_80A4DF18[(this->actor.params >> 10) & 1](this)) {
        temp_v1_2 = (this->actor.params >> 8) & 3;
        if (temp_v1_2 == 1) {
            if (this->waypoint2 == 0 || this->unk_1CA == this->waypoint2) {
                func_80A4D0FC(this, globalCtx);
            }
        }
        func_80A4D074(this, globalCtx);
        if (temp_v1_2 == 3) {
            if (this->waypoint1 != 0) {
                if (this->unk_1CA == this->waypoint1) {
block_16:
                    func_80A4D9DC(this);
                } else {
block_17:
                    if (!((this->actor.params >> 10) & 1) && this->waypoint1 != 0) {
                        if (this->unk_1CA != this->waypoint1) {
                            temp_v0_5 = func_80A4C27C(this, globalCtx);
                            if (temp_v0_5 > 0) {
                                func_80A4DA7C(this);
                            } else if (temp_v0_5 < 0) {
                                func_80A4DB90(this);
                            } else {
                                func_80A4D5E0(this);
                            }
                        } else {
                            func_80A4D5E0(this);
                        }
                    }
                }
            } else {
                goto block_16;
            }
        } else {
            goto block_17;
        }
    }
    Audio_PlayActorSound2(&this->actor, NA_SE_EV_BIGBALL_ROLL - SFX_FLAG);
}
#else
#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Goroiwa/func_80A4D624.s")
#endif

void func_80A4D8CC(EnGoroiwa* this) {
    this->actionFunc = func_80A4D944;
    func_80A4BD70(this, 2);
    this->actor.gravity = -0.86f;
    this->actor.minVelocityY = -15.0f;
    this->actor.speedXZ *= 0.15f;
    this->actor.velocity.y = 5.0f;
    this->unk_1C0 = 1.0f;
}

void func_80A4D944(EnGoroiwa* this, GlobalContext* globalCtx) {
    func_80A4C6C8(this, globalCtx);
    if (this->actor.bgCheckFlags & 1 && this->actor.velocity.y < 0.0f) {
        if (this->unk_1D3 & 4 && (this->actor.initPosRot.rot.z & 1) == 1) {
            func_80A4C164(this);
            func_80A4BE54(this, globalCtx);
        }
        func_80A4D9DC(this);
    }
}

void func_80A4D9DC(EnGoroiwa* this) {
    this->actionFunc = func_80A4DA3C;
    this->actor.speedXZ = 0.0f;
    func_80A4BD70(this, 2);
    this->unk_1C4 = D_80A4DF28[this->actor.initPosRot.rot.z & 1];
    this->unk_1C0 = 0.0f;
}

void func_80A4DA3C(EnGoroiwa* this, GlobalContext* globalCtx) {
    if (this->unk_1C4 > 0) {
        this->unk_1C4--;
    } else {
        this->collider.base.atFlags &= ~2;
        func_80A4D5E0(this);
    }
}

void func_80A4DA7C(EnGoroiwa* this) {
    this->actionFunc = func_80A4DAD0;
    func_80A4BD70(this, 3);
    this->unk_1C0 = 0.0f;
    this->actor.velocity.y = fabsf(this->actor.speedXZ) * 0.1f;
}

void func_80A4DAD0(EnGoroiwa* this, GlobalContext* globalCtx) {
    if (this->collider.base.atFlags & 2) {
        this->collider.base.atFlags &= ~2;
        func_8002F6D4(globalCtx, &this->actor, 2.0f, this->actor.yawTowardsLink, 0.0f, 4);
        func_8002F7DC(&PLAYER->actor, NA_SE_PL_BODY_HIT);
        if ((this->actor.initPosRot.rot.z & 1) == 1) {
            this->timer = 50;
            return;
        }
    } else if (func_80A4CA50(this, globalCtx)) {
        func_80A4D074(this, globalCtx);
        func_80A4D5E0(this);
        this->actor.speedXZ = 0.0f;
    }
}

void func_80A4DB90(EnGoroiwa* this) {
    this->actionFunc = func_80A4DC00;
    func_80A4BD70(this, 3);
    this->unk_1C0 = 0.3f;
    this->unk_1C6 = 0;
    this->actor.velocity.y = fabsf(this->actor.speedXZ) * -0.3f;
    this->unk_1D3 |= 8;
    this->unk_1D3 &= ~0x10;
}

void func_80A4DC00(EnGoroiwa* this, GlobalContext* globalCtx) {
    if (this->collider.base.atFlags & 2) {
        this->collider.base.atFlags &= ~2;
        func_8002F6D4(globalCtx, &this->actor, 2.0f, this->actor.yawTowardsLink, 0.0f, 4);
        func_8002F7DC(&PLAYER->actor, NA_SE_PL_BODY_HIT);
        if ((this->actor.initPosRot.rot.z & 1) == 1) {
            this->timer = 50;
            return;
        }
    } else if (func_80A4CB78(this, globalCtx)) {
        func_80A4D074(this, globalCtx);
        func_80A4D5E0(this);
        this->unk_1D3 &= ~8;
        this->actor.speedXZ = 0.0f;
    }
}

void EnGoroiwa_Update(Actor* thisx, GlobalContext* globalCtx) {
    EnGoroiwa* this = THIS;
    Player* player = PLAYER;
    s32 pad;
    UNK_TYPE sp30;
    s32 temp_v0_2;

    if (!(player->stateFlags1 & 0x300000C0)) {
        if (this->timer > 0) {
            this->timer--;
        }
        this->actionFunc(this, globalCtx);
        temp_v0_2 = (this->actor.params >> 10) & 1;
        if (temp_v0_2 != 0) {
            if (temp_v0_2 == 1) {
                func_8002E4B4(globalCtx, &this->actor, 0.0f, 0.0f, 0.0f, 0x1C);
            }
        } else {
            this->actor.groundY = func_8003C9A4(&globalCtx->colCtx, &this->actor.floorPoly, &sp30, &this->actor, &this->actor.posRot.pos);
        }
        func_80A4CED8(this, globalCtx);
        if (this->actor.xzDistFromLink < 300.0f) {
            func_80A4BCA0(this);
            if (this->unk_1D3 & 1 && this->timer <= 0) {
                CollisionCheck_SetAT(globalCtx, &globalCtx->colChkCtx, &this->collider.base);
            }
            if (this->unk_1D3 & 2 && this->timer <= 0) {
                CollisionCheck_SetOC(globalCtx, &globalCtx->colChkCtx, &this->collider.base);
            }
        }
    }
}

void EnGoroiwa_Draw(Actor* thisx, GlobalContext* globalCtx) {
    Gfx_DrawDListOpa(globalCtx, D_060006B0);
}
