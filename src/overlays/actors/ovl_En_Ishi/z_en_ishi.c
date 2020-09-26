#include "z_en_ishi.h"

#include <vt.h>

#define FLAGS 0x00800000

#define THIS ((EnIshi*)thisx)

typedef void (*EnIshiUnkFunc1)(struct EnIshi*, GlobalContext*);
typedef void (*EnIshiUnkFunc2)(struct EnIshi*, GlobalContext*);
typedef void (*EnIshiDrawFunc)(struct EnIshi*, GlobalContext*);

void EnIshi_Init(Actor* thisx, GlobalContext* globalCtx);
void EnIshi_Destroy(Actor* thisx, GlobalContext* globalCtx);
void EnIshi_Update(Actor* thisx, GlobalContext* globalCtx);
void EnIshi_Draw(Actor* thisx, GlobalContext* globalCtx);

void func_80A7F098(EnIshi* this);
void func_80A7F0A8(EnIshi* this, GlobalContext* globalCtx);
void func_80A7F2F8(EnIshi* this);
void func_80A7F31C(EnIshi* this, GlobalContext* globalCtx);
void func_80A7F3E8(EnIshi* this);
void func_80A7F514(EnIshi* this, GlobalContext* globalCtx);
void func_80A7E5A8(EnIshi* this, GlobalContext* globalCtx);
void func_80A7E824(EnIshi* this, GlobalContext* globalCtx);
void func_80A7EB10(EnIshi* this, GlobalContext* globalCtx);
void func_80A7EC04(EnIshi* this, GlobalContext* globalCtx);

extern Gfx D_0500A3B8[];
extern Gfx D_0500A5E8[];
extern Gfx D_0500A880[];

static s16 D_80A7F9F0 = 0;
static s16 D_80A7F9F4 = 0;

const ActorInit En_Ishi_InitVars = {
    ACTOR_EN_ISHI,
    ACTORTYPE_PROP,
    FLAGS,
    OBJECT_GAMEPLAY_FIELD_KEEP,
    sizeof(EnIshi),
    (ActorFunc)EnIshi_Init,
    (ActorFunc)EnIshi_Destroy,
    (ActorFunc)EnIshi_Update,
    (ActorFunc)EnIshi_Draw,
};

static f32 D_80A7FA18[] = { 0.1f, 0.4f };
static f32 D_80A7FA20[] = { 58.0f, 80.0f };
static f32 D_80A7FA28[] = { 0.0f, 0.005f };

static s16 D_80A7FA30[0x2852] = { NA_SE_EV_ROCK_BROKEN, NA_SE_EV_WALL_BROKEN };

static u8 D_80A84AD4[0x2852] = { 0x14, 0x28 };

static EnIshiUnkFunc1 D_80A87328[] = { func_80A7E5A8, func_80A7E824 };

static EnIshiUnkFunc2 D_80A87330[] = { func_80A7EB10, func_80A7EC04 };

static ColliderCylinderInit sCylinderInit[] = {
    {
        { COLTYPE_UNK12, 0x00, 0x0D, 0x39, 0x20, COLSHAPE_CYLINDER },
        { 0x00, { 0x00000000, 0x00, 0x00 }, { 0x4FC1FFFE, 0x00, 0x00 }, 0x00, 0x01, 0x01 },
        { 10, 18, -2, { 0, 0, 0 } },
    },
    {
        { COLTYPE_UNK12, 0x00, 0x0D, 0x39, 0x20, COLSHAPE_CYLINDER },
        { 0x00, { 0x00000000, 0x00, 0x00 }, { 0x4FC1FFF6, 0x00, 0x00 }, 0x00, 0x01, 0x01 },
        { 55, 70, 0, { 0, 0, 0 } },
    }
};

static CollisionCheckInfoInit sColChkInfoInit = { 0, 12, 60, 0xFF };

void func_80A7E460(Actor* thisx, GlobalContext* globalCtx) {
    EnIshi* this = THIS;

    Collider_InitCylinder(globalCtx, &this->collider);
    Collider_SetCylinder(globalCtx, &this->collider, &this->actor, &sCylinderInit[this->actor.params & 1]);
    Collider_CylinderUpdate(&this->actor, &this->collider);
}

s32 func_80A7E4D8(EnIshi* this, GlobalContext* globalCtx, f32 arg2) {
    CollisionPoly* sp34;
    Vec3f sp28;
    UNK_TYPE sp24;
    f32 temp_f0;

    sp28.x = this->actor.posRot.pos.x;
    sp28.y = this->actor.posRot.pos.y + 30.0f;
    sp28.z = this->actor.posRot.pos.z;
    temp_f0 = func_8003C9A4(&globalCtx->colCtx, &sp34, &sp24, &this->actor, &sp28);
    if (temp_f0 > -32000.0f) {
        this->actor.posRot.pos.y = temp_f0 + arg2;
        Math_Vec3f_Copy(&this->actor.initPosRot.pos, &this->actor.posRot.pos);
        return true;
    } else {
        osSyncPrintf(VT_COL(YELLOW, BLACK));
        // Translation: Failure adhering to ground
        osSyncPrintf("地面に付着失敗(%s %d)\n", "../z_en_ishi.c", 388);
        osSyncPrintf(VT_RST);
        return false;
    }
}

void func_80A7E5A8(EnIshi* this, GlobalContext* globalCtx) {
    static s16 scales[] = { 16, 13, 11, 9, 7, 5 };

    s32 pad;
    Vec3f velocity;
    Vec3f pos;
    s32 phi_v0;
    s32 i;

    for (i = 0; i < ARRAY_COUNT(scales); i++) {
        pos.x = this->actor.posRot.pos.x + (Math_Rand_ZeroOne() - 0.5f) * 8.0f;
        pos.y = this->actor.posRot.pos.y + (Math_Rand_ZeroOne() * 5.0f) + 5.0f;
        pos.z = this->actor.posRot.pos.z + (Math_Rand_ZeroOne() - 0.5f) * 8.0f;
        Math_Vec3f_Copy(&velocity, &this->actor.velocity);
        if (this->actor.bgCheckFlags & 1) {
            velocity.x *= 0.8f;
            velocity.y *= -0.8f;
            velocity.z *= 0.8f;
        } else if (this->actor.bgCheckFlags & 8) {
            velocity.x *= -0.8f;
            velocity.y *= 0.8f;
            velocity.z *= -0.8f;
        }
        velocity.x += (Math_Rand_ZeroOne() - 0.5f) * 11.0f;
        velocity.y += Math_Rand_ZeroOne() * 6.0f;
        velocity.z += (Math_Rand_ZeroOne() - 0.5f) * 11.0f;
        if (Math_Rand_ZeroOne() < 0.5f) {
            phi_v0 = 0x41;
        } else {
            phi_v0 = 0x21;
        }
        func_80029E8C(globalCtx, &pos, &velocity, &pos, -420, phi_v0, 0x1E, 5, 0, scales[i], 3, 0xA, 0x28, -1, 2, D_0500A880);
    }
}

void func_80A7E824(EnIshi* this, GlobalContext* globalCtx) {
    static s16 scales[] = { 145, 135, 120, 100, 70, 50, 45, 40, 35 };
    
    Vec3f* temp = &this->actor.posRot.pos;
    Vec3f velocity;
    Vec3f pos;
    s16 angle = 0x1000;
    s32 i;
    f32 rand;
    s16 phi_v0;
    s16 phi_v1;
    s32 pad;

    for (i = 0; i < ARRAY_COUNT(scales); i++) {
        if (this) {}
        if (this) {}
        angle += 0x4E20;
        rand = Math_Rand_ZeroOne() * 10.0f;
        pos.x = this->actor.posRot.pos.x + (Math_Sins(angle) * rand);
        pos.y = this->actor.posRot.pos.y + (Math_Rand_ZeroOne() * 40.0f) + 5.0f;
        pos.z = this->actor.posRot.pos.z + (Math_Coss(angle) * rand);
        phi_v0 = this->actor.bgCheckFlags;
        Math_Vec3f_Copy(&velocity, &this->actor.velocity);
        if (this->actor.bgCheckFlags & 1) {
            velocity.x *= 0.9f;
            velocity.y *= -0.8f;
            velocity.z *= 0.9f;
        } else if (this->actor.bgCheckFlags & 8) {
            velocity.x *= -0.9f;
            velocity.y *= 0.8f;
            velocity.z *= -0.9f;
        }
        rand = Math_Rand_ZeroOne() * 10.0f;
        velocity.x += rand * Math_Sins(angle);
        velocity.y += (Math_Rand_ZeroOne() * 4.0f) + ((Math_Rand_ZeroOne() * i) * 0.7f);
        velocity.z += rand * Math_Coss(angle);
        if (i == 0) {
            phi_v0 = 0x29;
            phi_v1 = -0x1C2;
        } else if (i < 4) {
            phi_v0 = 0x25;
            phi_v1 = -0x17C;
        } else {
            phi_v0 = 0x45;
            phi_v1 = -0x140;
        }
        func_80029E8C(globalCtx, &pos, &velocity, &this->actor.posRot.pos, phi_v1, phi_v0, 0x1E, 5, 0, scales[i], 5, 2, 0x46, 0, 2, D_0500A5E8);
    }
}

void func_80A7EB10(EnIshi* this, GlobalContext* globalCtx) {
    Vec3f sp2C;

    Math_Vec3f_Copy(&sp2C, &this->actor.posRot.pos);
    if (this->actor.bgCheckFlags & 1) {
        sp2C.x += 2.0f * this->actor.velocity.x;
        sp2C.y -= 2.0f * this->actor.velocity.y;
        sp2C.z += 2.0f * this->actor.velocity.z;
    } else if (this->actor.bgCheckFlags & 8) {
        sp2C.x -= 2.0f * this->actor.velocity.x;
        sp2C.y += 2.0f * this->actor.velocity.y;
        sp2C.z -= 2.0f * this->actor.velocity.z;
    }
    func_80033480(globalCtx, &sp2C, 60.0f, 3, 0x50, 0x3C, 1);
}

void func_80A7EC04(EnIshi* this, GlobalContext* globalCtx) {
    Vec3f sp2C;

    Math_Vec3f_Copy(&sp2C, &this->actor.posRot.pos);
    if (this->actor.bgCheckFlags & 1) {
        sp2C.x += 2.0f * this->actor.velocity.x;
        sp2C.y -= 2.0f * this->actor.velocity.y;
        sp2C.z += 2.0f * this->actor.velocity.z;
    } else if (this->actor.bgCheckFlags & 8) {
        sp2C.x -= 2.0f * this->actor.velocity.x;
        sp2C.y += 2.0f * this->actor.velocity.y;
        sp2C.z -= 2.0f * this->actor.velocity.z;
    }
    func_80033480(globalCtx, &sp2C, 140.0f, 0xA, 0xB4, 0x5A, 1);
}

void func_80A7ECF8(EnIshi* this, GlobalContext* globalCtx) {
    if (!(this->actor.params & 1)) {
        s16 dropParams = (this->actor.params >> 8) & 0xF;
        if (dropParams >= 0xD) {
            dropParams = 0;
        }
        Item_DropCollectibleRandom(globalCtx, NULL, &this->actor.posRot.pos, dropParams << 4);
    }
}

void func_80A7ED60(EnIshi* this) {
    this->actor.velocity.y += this->actor.gravity;

    if (this->actor.velocity.y < this->actor.minVelocityY) {
        this->actor.velocity.y = this->actor.minVelocityY;
    }
}

void func_80A7ED94(Vec3f* arg0, f32 arg1) {
    arg1 += ((Math_Rand_ZeroOne() * 0.2f) - 0.1f) * arg1;
    arg0->x -= arg0->x * arg1;
    arg0->y -= arg0->y * arg1;
    arg0->z -= arg0->z * arg1;
}

void func_80A7EE1C(EnIshi* this, GlobalContext* globalCtx) {
    s32 i;

    for (i = 0; i < 3; i++) {
        if (Actor_Spawn(&globalCtx->actorCtx, globalCtx, ACTOR_EN_INSECT, this->actor.posRot.pos.x, this->actor.posRot.pos.y, this->actor.posRot.pos.z, 0, Math_Rand_ZeroOne() * 0xFFFF, 0, 1) == NULL) {
            break;
        }
    }
}

static InitChainEntry sInitChains[2][5] = {
    {
        ICHAIN_F32_DIV1000(gravity, 64336, ICHAIN_CONTINUE),
        ICHAIN_F32_DIV1000(minVelocityY, 45536, ICHAIN_CONTINUE),
        ICHAIN_F32(uncullZoneForward, 1200, ICHAIN_CONTINUE),
        ICHAIN_F32(uncullZoneScale, 150, ICHAIN_CONTINUE),
        ICHAIN_F32(uncullZoneDownward, 400, ICHAIN_STOP),
    },
    {
        ICHAIN_F32_DIV1000(gravity, 63036, ICHAIN_CONTINUE),
        ICHAIN_F32_DIV1000(minVelocityY, 45536, ICHAIN_CONTINUE),
        ICHAIN_F32(uncullZoneForward, 2000, ICHAIN_CONTINUE),
        ICHAIN_F32(uncullZoneScale, 250, ICHAIN_CONTINUE),
        ICHAIN_F32(uncullZoneDownward, 500, ICHAIN_STOP),
    },
};

void EnIshi_Init(Actor* thisx, GlobalContext* globalCtx) {
    EnIshi* this = THIS;
    s16 sp2A = this->actor.params & 1;

    Actor_ProcessInitChain(&this->actor, sInitChains[sp2A]);
    if (globalCtx->csCtx.state != 0) {
        this->actor.uncullZoneForward += 1000.0f;
    }
    if (this->actor.shape.rot.y == 0) {
        this->actor.shape.rot.y = this->actor.posRot.rot.y = Math_Rand_ZeroFloat(0x10000);
    }
    Actor_SetScale(&this->actor, D_80A7FA18[sp2A]);
    func_80A7E460(&this->actor, globalCtx);
    if ((sp2A == 1) &&
        Flags_GetSwitch(globalCtx, ((this->actor.params >> 0xA) & 0x3C) | ((this->actor.params >> 6) & 3))) {
        Actor_Kill(&this->actor);
    } else {
        func_80061ED4(&this->actor.colChkInfo, NULL, &sColChkInfoInit);
        this->actor.shape.unk_08 = D_80A7FA20[sp2A];
        if (!((this->actor.params >> 5) & 1) && !func_80A7E4D8(this, globalCtx, 0.0f)) {
            Actor_Kill(&this->actor);
        } else {
            func_80A7F098(this);
        }
    }
}

void EnIshi_Destroy(Actor* thisx, GlobalContext* globalCtx) {
    Collider_DestroyCylinder(globalCtx, &THIS->collider);
}

void func_80A7F098(EnIshi* this) {
    this->actionFunc = func_80A7F0A8;
}

void func_80A7F0A8(EnIshi* this, GlobalContext* globalCtx) {
    static u16 D_80A873E0[] = { NA_SE_PL_PULL_UP_ROCK, NA_SE_PL_PULL_UP_BIGROCK };

    s32 pad;
    s16 sp32 = this->actor.params & 1;

    if (Actor_HasParent(&this->actor, globalCtx)) {
        func_80A7F2F8(this);
        Audio_PlaySoundAtPosition(globalCtx, &this->actor.posRot.pos, 20, D_80A873E0[sp32]);
        if ((this->actor.params >> 4) & 1) {
            func_80A7EE1C(this, globalCtx);
        }
    } else if (this->collider.base.acFlags & 2 && sp32 == 0 && this->collider.body.acHitItem->toucher.flags & 0x40000048) {
        func_80A7ECF8(this, globalCtx);
        Audio_PlaySoundAtPosition(globalCtx, &this->actor.posRot.pos, D_80A84AD4[sp32], D_80A7FA30[sp32]);
        D_80A87328[sp32](this, globalCtx);
        D_80A87330[sp32](this, globalCtx);
        Actor_Kill(&this->actor);
    } else if (this->actor.xzDistFromLink < 600.0f) {
        Collider_CylinderUpdate(&this->actor, &this->collider);
        this->collider.base.acFlags &= ~2;
        CollisionCheck_SetAC(globalCtx, &globalCtx->colChkCtx, &this->collider.base);
        if (this->actor.xzDistFromLink < 400.0f) {
            CollisionCheck_SetOC(globalCtx, &globalCtx->colChkCtx, &this->collider.base);
            if (this->actor.xzDistFromLink < 90.0f) {
                if (sp32 == 1) {
                    func_8002F434(&this->actor, globalCtx, 0, 80.0f, 20.0f);
                } else {
                    func_8002F434(&this->actor, globalCtx, 0, 50.0f, 10.0f);
                }
            }
        }
    }
}

void func_80A7F2F8(EnIshi* this) {
    this->actionFunc = func_80A7F31C;
    this->actor.room = -1;
    this->actor.flags |= 0x10;
}

void func_80A7F31C(EnIshi* this, GlobalContext* globalCtx) {
    if (Actor_HasNoParent(&this->actor, globalCtx)) {
        this->actor.room = globalCtx->roomCtx.curRoom.num;
        if ((this->actor.params & 1) == 1) {
            Flags_SetSwitch(globalCtx, ((this->actor.params >> 0xA) & 0x3C) | ((this->actor.params >> 6) & 3));
        }
        func_80A7F3E8(this);
        func_80A7ED60(this);
        func_80A7ED94(&this->actor.velocity, D_80A7FA28[this->actor.params & 1]);
        func_8002D7EC(&this->actor);
        func_8002E4B4(globalCtx, &this->actor, 7.5f, 35.0f, 0.0f, 0xC5);
    }
}

void func_80A7F3E8(EnIshi* this) {
    this->actor.velocity.x = Math_Sins(this->actor.posRot.rot.y) * this->actor.speedXZ;
    this->actor.velocity.z = Math_Coss(this->actor.posRot.rot.y) * this->actor.speedXZ;
    if (!(this->actor.params & 1)) {
        D_80A7F9F0 = (Math_Rand_ZeroOne() - 0.5f) * 16000.0f;
        D_80A7F9F4 = (Math_Rand_ZeroOne() - 0.5f) * 2400.0f;
    } else {
        D_80A7F9F0 = (Math_Rand_ZeroOne() - 0.5f) * 8000.0f;
        D_80A7F9F4 = (Math_Rand_ZeroOne() - 0.5f) * 1600.0f;
    }
    this->actor.colChkInfo.mass = 0xF0;
    this->actionFunc = func_80A7F514;
}

void func_80A7F514(EnIshi* this, GlobalContext* globalCtx) {
    s32 pad;
    s16 sp4A = this->actor.params & 1;
    s32 pad2;
    s32 quakeIdx;
    Vec3f sp34;

    if (this->actor.bgCheckFlags & 9) {
        func_80A7ECF8(this, globalCtx);
        D_80A87328[sp4A](this, globalCtx);
        if (!(this->actor.bgCheckFlags & 0x20)) {
            Audio_PlaySoundAtPosition(globalCtx, &this->actor.posRot.pos, D_80A84AD4[sp4A], D_80A7FA30[sp4A]);
            D_80A87330[sp4A](this, globalCtx);
        }
        if (sp4A == 1) {
            quakeIdx = Quake_Add(ACTIVE_CAM, 3);
            Quake_SetSpeed(quakeIdx, -0x3CB0);
            Quake_SetQuakeValues(quakeIdx, 3, 0, 0, 0);
            Quake_SetCountdown(quakeIdx, 7);
            func_800AA000(this->actor.xyzDistFromLinkSq, 0xFF, 0x14, 0x96);
        }
        Actor_Kill(&this->actor);
    } else {
        if (this->actor.bgCheckFlags & 0x40) {
            sp34.x = this->actor.posRot.pos.x;
            sp34.y = this->actor.posRot.pos.y + this->actor.waterY;
            sp34.z = this->actor.posRot.pos.z;
            func_8002949C(globalCtx, &sp34, 0, 0, 0, 0x15E);
            if (sp4A == 0) {
                func_80029444(globalCtx, &sp34, 0x96, 0x28A, 0);
                func_80029444(globalCtx, &sp34, 0x190, 0x320, 4);
                func_80029444(globalCtx, &sp34, 0x1F4, 0x44C, 8);
            } else {
                func_80029444(globalCtx, &sp34, 0x12C, 0x2BC, 0);
                func_80029444(globalCtx, &sp34, 0x1F4, 0x384, 4);
                func_80029444(globalCtx, &sp34, 0x1F4, 0x514, 8);
            }
            this->actor.minVelocityY = -6.0f;
            D_80A7F9F0 >>= 2;
            D_80A7F9F4 >>= 2;
            Audio_PlaySoundAtPosition(globalCtx, &this->actor.posRot.pos, 40, NA_SE_EV_DIVE_INTO_WATER_L);
            this->actor.bgCheckFlags &= ~0x40;
        }
        Math_ApproxF(&this->actor.shape.unk_08, 0.0f, 2.0f);
        func_80A7ED60(this);
        func_80A7ED94(&this->actor.velocity, D_80A7FA28[sp4A]);
        func_8002D7EC(&this->actor);
        this->actor.shape.rot.x += D_80A7F9F0;
        this->actor.shape.rot.y += D_80A7F9F4;
        func_8002E4B4(globalCtx, &this->actor, 7.5f, 35.0f, 0.0f, 0xC5);
        Collider_CylinderUpdate(&this->actor, &this->collider);
        CollisionCheck_SetOC(globalCtx, &globalCtx->colChkCtx, &this->collider.base);
    }
}

void EnIshi_Update(Actor* thisx, GlobalContext* globalCtx) {
    EnIshi* this = THIS;

    this->actionFunc(this, globalCtx);
}

void func_80A7F8A0(EnIshi* this, GlobalContext* globalCtx) {
    Gfx_DrawDListOpa(globalCtx, D_0500A880);
}

void func_80A7F8CC(EnIshi* this, GlobalContext* globalCtx) {
    OPEN_DISPS(globalCtx->state.gfxCtx, "../z_en_ishi.c", 1050);

    func_80093D18(globalCtx->state.gfxCtx);
    gSPMatrix(oGfxCtx->polyOpa.p++, Matrix_NewMtx(globalCtx->state.gfxCtx, "../z_en_ishi.c", 1055), G_MTX_NOPUSH | G_MTX_LOAD | G_MTX_MODELVIEW);
    gDPSetPrimColor(oGfxCtx->polyOpa.p++, 0, 0, 255, 255, 255, 255);
    gSPDisplayList(oGfxCtx->polyOpa.p++, D_0500A3B8);

    CLOSE_DISPS(globalCtx->state.gfxCtx, "../z_en_ishi.c", 1062);
}

static EnIshiDrawFunc sDrawFuncs[] = { func_80A7F8A0, func_80A7F8CC };

void EnIshi_Draw(Actor* thisx, GlobalContext* globalCtx) {
    EnIshi* this = THIS;

    sDrawFuncs[this->actor.params & 1](this, globalCtx);
}
