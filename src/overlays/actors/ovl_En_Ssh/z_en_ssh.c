#include "z_en_ssh.h"

#define FLAGS 0x00000035

#define THIS ((EnSsh*)thisx)

void EnSsh_Init(Actor* thisx, GlobalContext* globalCtx);
void EnSsh_Destroy(Actor* thisx, GlobalContext* globalCtx);
void EnSsh_Update(Actor* thisx, GlobalContext* globalCtx);
void EnSsh_Draw(Actor* thisx, GlobalContext* globalCtx);

void func_80B02270(EnSsh* this, EnSshActionFunc actionFunc);
void func_80B02278(EnSsh* this, GlobalContext* globalCtx);
s32 func_80B02300(GlobalContext* globalCtx);
s32 func_80B023FC(EnSsh* this, GlobalContext* globalCtx);
void func_80B02490(EnSsh* this);
void func_80B02598(EnSsh* this);
void func_80B025C0(EnSsh* this, GlobalContext* globalCtx);
f32 func_80B02700(EnSsh* this, s32 arg1);
void func_80B02834(EnSsh* this);
void func_80B02854(EnSsh* this);
void func_80B02884(EnSsh* this);
void func_80B028CC(EnSsh* this);
void func_80B02920(EnSsh* this);
void func_80B0294C(EnSsh* this, f32 arg1, f32 arg2);
s32 func_80B02AC4(EnSsh* this);
void func_80B02B9C(EnSsh* this, GlobalContext* globalCtx);
void func_80B02C74(EnSsh* this, GlobalContext* globalCtx);
void func_80B02D14(EnSsh* this, GlobalContext* globalCtx);
void func_80B02D50(EnSsh* this, GlobalContext* globalCtx);
s32 func_80B02DBC(EnSsh* this, GlobalContext* globalCtx);
s32 func_80B02EA4(EnSsh* this);
s32 func_80B02EDC(EnSsh* this);
void func_80B02F1C(EnSsh* this);
void func_80B03060(EnSsh* this, GlobalContext* globalCtx);
s32 func_80B030D4(EnSsh* this, GlobalContext* globalCtx);
s32 func_80B031DC(EnSsh* this);
s32 func_80B03238(EnSsh* this, GlobalContext* globalCtx);
s32 func_80B0330C(EnSsh* this, GlobalContext* globalCtx);
void func_80B033BC(EnSsh* this, GlobalContext* globalCtx);
void func_80B03400(EnSsh* this, GlobalContext* globalCtx);
s32 func_80B034B4(EnSsh* this, GlobalContext* globalCtx);
void func_80B0368C(EnSsh* this, GlobalContext* globalCtx);
void func_80B03F48(EnSsh* this);

void func_80B03968(EnSsh* this, GlobalContext* globalCtx);
void func_80B039BC(EnSsh* this, GlobalContext* globalCtx);
void func_80B03A00(EnSsh* this, GlobalContext* globalCtx);
void func_80B03C8C(EnSsh* this, GlobalContext* globalCtx);
void func_80B03D74(EnSsh* this, GlobalContext* globalCtx);
void func_80B03E74(EnSsh* this, GlobalContext* globalCtx);
void func_80B03FF0(EnSsh* this, GlobalContext* globalCtx);

s32 func_80B04190(GlobalContext* globalCtx, s32 limbIndex, Gfx** dList, Vec3f* pos, Vec3s* rot, Actor* this);
void func_80B04280(GlobalContext* globalCtx, s32 limbIndex, Gfx** dList, Vec3s* rot, Actor* this);

extern AnimationHeader D_06000304;
extern SkeletonHeader D_060052E0;
extern Gfx D_060046C0[];
extern Gfx D_06004080[];
extern Gfx D_06004DE8[];

s32 D_80B043C0[] = {0xFFFF0000, 0x00000000, 0x00000400, 0xFFFFFFFF, 0x00010000, 0x00000000, 0x04000400, 0xFFFFFFFF, 0x00010064, 0x00000000, 0x04000000, 0xFFFFFFFF, 0xFFFF0064, 0x00000000, 0x00000000, 0xFFFFFFFF, 0xE7000000, 0x00000000, 0xD7000000, 0x00000000, 0xFCFFFFFF, 0xFFFFFEFB, 0xE200001C, 0xC8112078, 0xD9F1FBFF, 0x00000000, 0xFA000000, 0xFFFFFFFF, 0x01004008, (s32) D_80B043C0, 0x05000204, 0x00000000, 0x05000406, 0x00000000, 0xDF000000, 0x00000000,};

const ActorInit En_Ssh_InitVars = {
    ACTOR_EN_SSH,
    ACTORTYPE_NPC,
    FLAGS,
    OBJECT_SSH,
    sizeof(EnSsh),
    (ActorFunc)EnSsh_Init,
    (ActorFunc)EnSsh_Destroy,
    (ActorFunc)EnSsh_Update,
    (ActorFunc)EnSsh_Draw,
};

static ColliderCylinderInit D_80B04470 = {
    { COLTYPE_UNK6, 0x00, 0x09, 0x00, 0x10, COLSHAPE_CYLINDER },
    { 0x00, { 0x00000000, 0x00, 0x00 }, { 0x00000000, 0x00, 0x00 }, 0x01, 0x01, 0x00 },
    { 32, 50, -24, { 0, 0, 0 } },
};

static CollisionCheckInfoInit2 D_80B0449C = {1, 0, 0, 0, 0xFF};

static ColliderCylinderInit D_80B044A8 = {
    { COLTYPE_UNK6, 0x00, 0x00, 0x39, 0x10, COLSHAPE_CYLINDER },
    { 0x00, { 0x00000000, 0x00, 0x00 }, { 0x00000000, 0x00, 0x00 }, 0x00, 0x00, 0x01 },
    { 20, 60, -30, { 0, 0, 0 } },
};

static ColliderJntSphItemInit D_80B044D4[1] =  {
    {
        { 0x00, { 0xFFCFFFFF, 0x00, 0x04 }, { 0x00000000, 0x00, 0x00 }, 0x01, 0x00, 0x01 },
        { 1, { { 0, -240, 0 }, 28 }, 100 },
    },
};

static ColliderJntSphInit D_80B044F8 = {
    { COLTYPE_UNK6, 0x11, 0x00, 0x39, 0x10, COLSHAPE_JNTSPH },
    1, D_80B044D4,
};

void func_80B02270(EnSsh *this, EnSshActionFunc actionFunc) {
    this->actionFunc = actionFunc;
}

void func_80B02278(EnSsh *this, GlobalContext* globalCtx) {
    Vec3f sp34 = {0.0f, 0.0f, 0.0f};
    Vec3f sp28;

    sp28.x = this->actor.posRot.pos.x;
    sp28.y = this->actor.groundY;
    sp28.z = this->actor.posRot.pos.z;
    EffectSsBlast_SpawnWhiteCustomScale(globalCtx, &sp28, &sp34, &sp34, 0x64, 0xDC, 8);
}

s32 func_80B02300(GlobalContext *globalCtx) {
    EffectBlureInit1 blureInit;
    u8 p1StartColor[] = { 255, 255, 255, 75 };
    u8 p2StartColor[] = { 255, 255, 255, 75 };
    u8 p1EndColor[] = { 255, 255, 255, 0 };
    u8 p2EndColor[] = { 255, 255, 255, 0 };
    s32 i;
    s32 blureIdx;

    for (i = 0; i < 4; i++) {
        blureInit.p1StartColor[i] = p1StartColor[i];
        blureInit.p2StartColor[i] = p2StartColor[i];
        blureInit.p1EndColor[i] = p1EndColor[i];
        blureInit.p2EndColor[i] = p2EndColor[i];
    }

    blureInit.elemDuration = 6;
    blureInit.unkFlag = 0;
    blureInit.calcMode = 3;

    Effect_Add(globalCtx, &blureIdx, EFFECT_BLURE1, 0, 0, &blureInit);
    return blureIdx;
}

s32 func_80B023FC(EnSsh *this, GlobalContext *globalCtx) {
    CollisionPoly* sp4C;
    u32 sp48;
    Vec3f sp3C;

    sp3C.x = this->actor.posRot.pos.x;
    sp3C.y = this->actor.posRot.pos.y + 1000.0f;
    sp3C.z = this->actor.posRot.pos.z;
    if (!func_8003DE84(&globalCtx->colCtx, &this->actor.posRot.pos, &sp3C, &this->unk_544, &sp4C, 0, 0, 1, 1, &sp48)) {
        return false;
    } else {
        return true;
    }
}

void func_80B02490(EnSsh *this) {
    Vec3f sp4C = {834.0f, 834.0f, 0.0f};
    Vec3f sp40 = {834.0f, -584.0f, 0.0f};
    Vec3f sp34;
    Vec3f sp28;

    sp4C.x *= this->unk_53C;
    sp4C.y *= this->unk_53C;
    sp4C.z *=  this->unk_53C;
    sp40.x *=  this->unk_53C;
    sp40.y *=  this->unk_53C;
    sp40.z *=  this->unk_53C;
    Matrix_Push();
    Matrix_MultVec3f(&sp4C, &sp34);
    Matrix_MultVec3f(&sp40, &sp28);
    Matrix_Pull();
    EffectBlure_AddVertex(Effect_GetByIndex(this->unk_538), &sp34, &sp28);
}

void func_80B02598(EnSsh *this) {
    EffectBlure_AddSpace(Effect_GetByIndex(this->unk_538));
}

void func_80B025C0(EnSsh *this, GlobalContext *globalCtx) {
    ColliderCylinderInit* cylinders[6] = {
        &D_80B04470, &D_80B04470, &D_80B04470, &D_80B044A8, &D_80B044A8, &D_80B044A8,
    };
    s32 i;
    s32 pad;

    for (i = 0; i < ARRAY_COUNT(cylinders); i++) {
        Collider_InitCylinder(globalCtx, &this->collider1[i]);
        Collider_SetCylinder(globalCtx, &this->collider1[i], &this->actor, cylinders[i]);
    }

    this->collider1[0].body.bumper.flags = 0x0003F8E9;
    this->collider1[1].body.bumper.flags = 0xFFC00716;
    this->collider1[2].base.type = 9;
    this->collider1[2].body.bumperFlags = 0xD;
    this->collider1[2].body.flags = 2;
    this->collider1[2].body.bumper.flags = 0xFFCC0716;

    func_80061EFC(&this->actor.colChkInfo, DamageTable_Get(2), &D_80B0449C);

    Collider_InitJntSph(globalCtx, &this->collider2);
    Collider_SetJntSph(globalCtx, &this->collider2, &this->actor, &D_80B044F8, this->elements);
}

f32 func_80B02700(EnSsh *this, s32 arg1) {
    AnimationHeader* sp64[] = {0x06005BE8, 0x06000304, 0x06000304, 0x060055F8, 0x06000304, 0x06000304, 0x06005BE8};
    f32 sp48[] = {1.0f, 4.0f, 1.0f, 1.0f, 8.0f, 6.0f, 2.0f};
    u8 sp40[] = {0x03,0x03,0x01,0x03,0x01,0x01,0x01};
    f32 sp3C  = SkelAnime_GetFrameCount(&sp64[arg1]->genericHeader);
    s32 pad;

    SkelAnime_ChangeAnim(&this->skelAnime, sp64[arg1], sp48[arg1], 0.0f, sp3C, sp40[arg1], -6.0f);
    
    return sp3C;
}

void func_80B02834(EnSsh *this) {
    func_80B02700(this, 2);
}

void func_80B02854(EnSsh *this) {
    Audio_PlayActorSound2(&this->actor, 0x3869);
    func_80B02700(this, 1);
}

void func_80B02884(EnSsh *this) {
    this->actor.posRot.pos.y = this->unk_540 + this->actor.groundY;
    this->unk_534 = func_80B02700(this, 3);
}

void func_80B028CC(EnSsh *this) {
    if (this->unk_528 == 0) {
        this->unk_534 = func_80B02700(this, 4);
    }
    this->actor.velocity.y = -10.0f;
}

void func_80B02920(EnSsh *this) {
    if (this->unk_532 == 0) {
        this->unk_5CA |= 8;
        this->unk_532 = 120;
        this->actor.dmgEffectTimer = 0;
    }
}

void func_80B0294C(EnSsh *this, f32 arg1, f32 arg2) {
    f32 radius;
    f32 height;
    f32 yShift;
    s32 i;

    radius = this->collider2.list[0].dim.modelSphere.radius;
    radius *= arg1;
    this->collider2.list[0].dim.modelSphere.radius = radius;

    for (i = 0; i < 6; i++) {
        yShift = this->collider1[i].dim.yShift;
        radius = this->collider1[i].dim.radius;
        height = this->collider1[i].dim.height;
        yShift *= arg1;
        radius *= arg1 * arg2;
        height *= arg1;

        this->collider1[i].dim.yShift = yShift;
        this->collider1[i].dim.radius = radius;
        this->collider1[i].dim.height = height;
    }
    Actor_SetScale(&this->actor, 0.04f * arg1);
    this->unk_540 = 40.0f * arg1;
    this->unk_53C = arg1 * 1.5f;
}

s32 func_80B02AC4(EnSsh *this) {
    if ((this->unk_532 == 120) && (this->unk_5CA & 1)) {
        func_8003426C(&this->actor, 0, 0xC8, 0, this->unk_532);
    }
    if (DECR(this->unk_532) != 0) {
        Math_SmoothScaleMaxMinS(&this->unk_526, 0x2710, 0xA, 0x3E8, 1);
        return false;
    } else {
        this->unk_532 = 0;
        this->unk_5CA &= ~1;
        this->unk_52A = 0;
        if (this->unk_536 == 0) {
            this->unk_52A = 30;
        }
        Audio_PlayActorSound2(&this->actor, 0x3884);
        Audio_PlayActorSound2(&this->actor, 0x6868);
        return true;
    }
}

void func_80B02B9C(EnSsh *this, GlobalContext *globalCtx) {
    if (this->unk_52C != 0) {
        this->unk_52C--;
    }
    if (DECR(this->unk_52A) != 0) {
        this->actor.posRot.rot.y += 10000.0f * (this->unk_52A / 30.0f);
    } else if ((this->unk_536 == 0) && (this->unk_532 == 0)) {
        Math_SmoothScaleMaxMinS(&this->actor.posRot.rot.y, this->actor.yawTowardsLink, 4, 0x2710, 1);
    }
    this->actor.shape.rot.y = this->actor.posRot.rot.y;
}

void func_80B02C74(EnSsh *this, GlobalContext *globalCtx) {
    if ((this->unk_536 == 0) && (this->unk_532 == 0)) {
        Math_SmoothScaleMaxMinS(&this->actor.posRot.rot.y, this->actor.yawTowardsLink ^ 0x8000, 4, this->unk_526, 1);
    }
    this->actor.shape.rot.y = this->actor.posRot.rot.y;
    if (this->unk_532 < 30) {
        if (this->unk_532 & 1) {
            this->actor.shape.rot.y += 0x7D0;
        } else {
            this->actor.shape.rot.y -= 0x7D0;
        }
    }
}

void func_80B02D14(EnSsh *this, GlobalContext *globalCtx) {
    if (this->unk_532 != 0) {
        func_80B02C74(this, globalCtx);
    } else {
        func_80B02B9C(this, globalCtx);
    }
}

void func_80B02D50(EnSsh *this, GlobalContext *globalCtx) {
    f32 phi_f0 = 0.5f;

    if ((globalCtx->state.frames & 8) != 0) {
        phi_f0 *= -1.0f;
    }
    Math_SmoothScaleMaxMinF(&this->actor.velocity.y, phi_f0, 0.4f, 1000.0f, 0.0f);
}

s32 func_80B02DBC(EnSsh *this, GlobalContext *globalCtx) {
    Player* player = PLAYER;
    f32 yDist;

    if (this->unk_5CA & 4) {
        return true;
    }
    if (this->unk_528 != 0) {
        return true;
    }
    if (this->unk_536 != 0) {
        return true;
    }
    if (this->unk_534 != 0) {
        return true;
    }

    if (this->actor.xzDistFromLink > 160.0f) {
        // player is more than 160 xz units from the skulltulla
        return false;
    }

    yDist = this->actor.posRot.pos.y - player->actor.posRot.pos.y;
    if (yDist < 0.0f || yDist > 400.0f) {
        // player is above the skulltulla or more than 400 units below
        // the skulltulla
        return false;
    }

    if (player->actor.posRot.pos.y < this->actor.groundY) {
        // player is below the Skulltulla's ground position
        return false;
    }
    return true;
}

s32 func_80B02EA4(EnSsh *this) {
    f32 temp1 = this->actor.velocity.y;
    f32 temp = this->actor.posRot.pos.y + 2.0f * this->actor.velocity.y;

    if (temp >= this->actor.initPosRot.pos.y) {
        return 1;
    }
    return 0;
}

s32 func_80B02EDC(EnSsh *this) {
    f32 temp1 = this->actor.velocity.y;
    f32 temp = this->actor.posRot.pos.y + 2.0f * this->actor.velocity.y;

    if ((temp - this->actor.groundY) <= this->unk_540) {
        return 1;
    }
    return 0;
}

void func_80B02F1C(EnSsh *this) {
    Vec3f sp44;
    Vec3f sp38;
    f32 temp_f20;
    s16 sp32;

    if (this->unk_536 != 0) {
        this->unk_5C8 += 0x640;
        this->unk_536--;
        if (this->unk_536 == 0) {
            this->unk_5C8 = 0;
        }
        temp_f20 = this->unk_536 * 0.16666667f;
        sp32 = temp_f20 * 182.04445f * Math_Sins(this->unk_5C8);
        temp_f20 = this->actor.posRot.pos.y - this->unk_544.y;
        sp44.x = Math_Sins(sp32) * temp_f20;
        sp44.y = Math_Coss(sp32) * temp_f20;
        sp44.z = 0.0f;
        Matrix_Push();
        Matrix_Translate(this->unk_544.x, this->unk_544.y, this->unk_544.z, 0);
        Matrix_RotateY(this->actor.posRot.rot.y * 0.0000958738f, 1);
        Matrix_MultVec3f(&sp44, &sp38);
        Matrix_Pull();
        this->actor.shape.rot.z = -(sp32 * 2);
        this->actor.posRot.pos.x = sp38.x;
        this->actor.posRot.pos.z = sp38.z;
    }
}

void func_80B03060(EnSsh *this, GlobalContext *globalCtx) {
    ColliderBody* body = &this->collider1[0].body;
    Player* player = PLAYER;

    if (player->unk_860 != 0) {
        body->bumper.flags |= 2;
        this->collider1[1].body.bumper.flags &= ~2;
        this->collider1[2].body.bumper.flags &= ~2;
    } else {
        body->bumper.flags &= ~2;
        this->collider1[1].body.bumper.flags |= 2;
        this->collider1[2].body.bumper.flags |= 2;
    }
}

s32 func_80B030D4(EnSsh *this, GlobalContext *globalCtx) {
    s32 i;
    s32 phi_a3 = 0;

    if ((this->unk_5CC == 0) && (this->unk_52A == 0)) {
        return 0;
    }
    for(i = 0; i < 3; i++) {
        if(this->collider1[i+3].base.maskB & 1) {
            this->collider1[i+3].base.maskB &= ~1;
            phi_a3 = 1;
        }
    }
    if (phi_a3 == 0) {
        return 0;
    }
    this->unk_52C = 30;
    if (this->unk_536 == 0) {
        this->unk_52A = this->unk_52C;
    }
    Audio_PlayActorSound2(&this->actor, 0x3884);
    Audio_PlayActorSound2(&this->actor, 0x6868);
    globalCtx->damagePlayer(globalCtx, -8);
    func_8002F71C(globalCtx, &this->actor, 4.0f, this->actor.yawTowardsLink, 6.0f);
    this->unk_5CC--;
    return 1;
}

#ifdef NON_MATCHING
s32 func_80B031DC(EnSsh *this) {
    u8 acFlags = this->collider1[2].base.acFlags;

    if (!!(acFlags & 2) == 0) {
        return 0;
    } else {
        this->collider1[2].base.acFlags &= ~2;
        this->unk_52E = 8;
        if ((this->unk_536 == 0) && (this->unk_52C == 0) && (this->unk_532 == 0)) {
            this->unk_536 = 60;
        }
        return 1;
    }
}
#else
#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Ssh/func_80B031DC.s")
#endif

s32 func_80B03238(EnSsh *this, GlobalContext *globalCtx) {
    ColliderCylinder* cyl = &this->collider1[0];
    s32 phi_v1 = 0;

    if (cyl->base.acFlags & 2) {
        cyl->base.acFlags &= ~2;
        phi_v1 = 1;
    }
    cyl = &this->collider1[1];
    if (cyl->base.acFlags & 2) {
        cyl->base.acFlags &= ~2;
        phi_v1 = 1;
    }
    if (phi_v1 == 0) {
        return 0;
    }
    this->unk_52E = 8;
    if (this->unk_5CC <= 0) {
        this->unk_5CC++;
    }
    if (this->unk_532 == 0) {
        Audio_PlayActorSound2(&this->actor, 0x389E);
        Audio_PlayActorSound2(&this->actor, 0x6867);
    }
    func_80B02920(this);
    this->unk_5CA |= 1;
    return 0;
}

s32 func_80B0330C(EnSsh *this, GlobalContext *globalCtx) {
    if (this->unk_532 == 0) {
        func_80B030D4(this, globalCtx);
    }
    if (func_80B031DC(this)) {
        return 0;
    } else if (globalCtx->actorCtx.unk_02 != 0) {
        this->unk_52E = 8;
        if (this->unk_532 == 0) {
            Audio_PlayActorSound2(&this->actor, 0x389E);
            Audio_PlayActorSound2(&this->actor, 0x6867);
        }
        func_80B02920(this);
        this->unk_5CA |= 1;
        return 0;
    } else {
        return func_80B03238(this, globalCtx);
    }
}

void func_80B033BC(EnSsh *this, GlobalContext *globalCtx) {
    Collider_CylinderUpdate(&this->actor, &this->collider1[0]);
    CollisionCheck_SetAC(globalCtx, &globalCtx->colChkCtx, &this->collider1[0].base);
}

void func_80B03400(EnSsh *this, GlobalContext *globalCtx) {
    s16 angleTowardsLink = ABS((s16)(this->actor.yawTowardsLink - this->actor.shape.rot.y));

    if (angleTowardsLink < 90 * (0x10000 / 360)) {
        Collider_CylinderUpdate(&this->actor, &this->collider1[2]);
        CollisionCheck_SetAC(globalCtx, &globalCtx->colChkCtx, &this->collider1[2].base);
    } else {
        Collider_CylinderUpdate(&this->actor, &this->collider1[1]);
        CollisionCheck_SetAC(globalCtx, &globalCtx->colChkCtx, &this->collider1[1].base);
    }
}

s32 func_80B034B4(EnSsh *this, GlobalContext *globalCtx) {
    Vec3f cyloffsets[] = {
        { 40.0f, 0.0f, 0.0f },
        { 0.0f, 0.0f, 0.0f },
        { -40.0f, 0.0f, 0.0f },
    };
    Vec3f cylPos;
    s32 i;

    for (i = 0; i < 3; i++) {
        cylPos = this->actor.posRot.pos;
        cyloffsets[i].x *= this->unk_53C;
        cyloffsets[i].y *= this->unk_53C;
        cyloffsets[i].z *= this->unk_53C;
        Matrix_Push();
        Matrix_Translate(cylPos.x, cylPos.y, cylPos.z, MTXMODE_NEW);
        Matrix_RotateY((this->unk_524 / (f32)0x8000) * M_PI, MTXMODE_APPLY);
        Matrix_MultVec3f(&cyloffsets[i], &cylPos);
        Matrix_Pull();
        this->collider1[i + 3].dim.pos.x = cylPos.x;
        this->collider1[i + 3].dim.pos.y = cylPos.y;
        this->collider1[i + 3].dim.pos.z = cylPos.z;
        CollisionCheck_SetOC(globalCtx, &globalCtx->colChkCtx, &this->collider1[i + 3].base);
    }
    return 1;
}

void func_80B0368C(EnSsh *this, GlobalContext *globalCtx) {
    if (this->actor.colChkInfo.health == 0) {
        CollisionCheck_SetAT(globalCtx, &globalCtx->colChkCtx, &this->collider2.base);
        CollisionCheck_SetOC(globalCtx, &globalCtx->colChkCtx, &this->collider2.base);
    } else {
        if (this->unk_52C == 0) {
            func_80B034B4(this, globalCtx);
        }
        if (DECR(this->unk_52E) == 0) {
            func_80B033BC(this, globalCtx);
            func_80B03400(this, globalCtx);
        }
    }
}

void EnSsh_Init(Actor *thisx, GlobalContext *globalCtx) {
    f32 sp3C;
    s32 pad;
    EnSsh* this = THIS;

    sp3C = SkelAnime_GetFrameCount(&D_06000304.genericHeader);
    if (this->actor.params == 0) {
        if (gSaveContext.inventory.gsTokens >= 100) {
            Actor_Kill(&this->actor);
            return;
        }
    } else if (gSaveContext.inventory.gsTokens >= (this->actor.params * 10)) {
        Actor_Kill(&this->actor);
        return;
    }
    ActorShape_Init(&this->actor.shape, 0.0f, ActorShadow_DrawFunc_Circle, 30.0f);
    SkelAnime_Init(globalCtx, &this->skelAnime, &D_060052E0, NULL, this->limbDrawTable, this->transDrawTable, 30);
    SkelAnime_ChangeAnim(&this->skelAnime, &D_06000304, 1.0f, 0.0f, sp3C, 1, 0.0f);
    this->unk_538 = func_80B02300(globalCtx);
    func_80B025C0(this, globalCtx);
    this->unk_5CA = 0;
    this->unk_5CC = 0;
    func_80B023FC(this, globalCtx);
    if (this->actor.params != 0) {
        func_80B0294C(this, 0.5f, 1.0f);
    } else {
        func_80B0294C(this, 0.75f, 1.0f);
    }
    this->actor.gravity = 0.0f;
    this->unk_524 = this->actor.posRot.rot.y;
    func_80B02270(this, func_80B03FF0);
}

void EnSsh_Destroy(Actor* thisx, GlobalContext *globalCtx) {
    s32 pad;
    EnSsh* this = THIS;
    s32 i;

    Effect_Delete(globalCtx, this->unk_538);
    for(i = 0; i < 6; i++) {
        Collider_DestroyCylinder(globalCtx, &this->collider1[i]);
    }
    Collider_DestroyJntSph(globalCtx, &this->collider2);
}

void func_80B03968(EnSsh *this, GlobalContext *globalCtx) {
    if (func_80B02DBC(this, globalCtx)) {
        func_80B028CC(this);
        func_80B02270(this, func_80B03D74);
    } else {
        func_80B02D50(this, globalCtx);
    }
}

void func_80B039BC(EnSsh *this, GlobalContext *globalCtx) {
    func_80B02D50(this, globalCtx);
    if (func_8002F334(&this->actor, globalCtx)) {
        this->actionFunc = func_80B03A00;
    }
}

void func_80B03A00(EnSsh *this, GlobalContext *globalCtx) {
    if(1){}
    if (func_8002F194(&this->actor, globalCtx)) {
        this->actionFunc = func_80B039BC;
        if (this->actor.params == 0) {
            gSaveContext.eventChkInf[9] |= 0x40;
        }
        if ((this->actor.textId == 0x26) || (this->actor.textId == 0x27)) {
            gSaveContext.infTable[25] |=  0x40;
        }
        if ((this->actor.textId == 0x24) || (this->actor.textId == 0x25)) {
            gSaveContext.infTable[25] |= 0x80;
        }
    } else {
        if((this->unk_528 != 0) && (DECR(this->unk_528) == 0)) {
            func_80B02700(this, 2);
        }
        if((this->unk_534 != 0) && (DECR(this->unk_534) == 0)) {
            func_80B02700(this, 2);
        }
        if (!func_80B02DBC(this, globalCtx)) {
            func_80B02854(this);
            func_80B02270(this, func_80B03E74);
        } else {
            if(DECR(this->unk_530) == 0) {
                Audio_PlayActorSound2(&this->actor, 0x386A);
                this->unk_530 = 64;
            }
            func_80B02D50(this, globalCtx);
            if ((this->unk_528 == 0) && (this->unk_534 == 0)) {
                this->actor.textId = Text_GetFaceReaction(globalCtx, 0xD);
                if (this->actor.textId == 0) {
                    if (this->actor.params == 0) {
                        if (gSaveContext.inventory.gsTokens >= 50) {
                            this->actor.textId = 0x29;
                        } else if (gSaveContext.inventory.gsTokens >= 10) {
                            if (gSaveContext.infTable[25] & 0x80) {
                                this->actor.textId = 0x24;
                            } else {
                                this->actor.textId = 0x25;
                            }
                        } else {
                            if (gSaveContext.infTable[25] & 0x40) {
                                this->actor.textId = 0x27;
                            } else {
                                this->actor.textId = 0x26;
                            }
                        }
                    } else {
                        this->actor.textId = 0x22;
                    }
                }
                func_8002F2CC(&this->actor, globalCtx, 100.0f);
            }
        }
    }
}

void func_80B03C8C(EnSsh *this, GlobalContext *globalCtx) {
    s16 temp_v0;
    s16 temp_v0_2;
    s16 phi_v1;
    s16 phi_v1_2;
    if((this->unk_528 != 0) && (DECR(this->unk_528) == 0)) {
        func_80B02700(this, 2);
    }
    if((this->unk_534 != 0) && (DECR(this->unk_534) == 0)) {
        func_80B02700(this, 2);
    }
    if ((this->actor.groundY + this->unk_540) <= this->actor.posRot.pos.y) {
        func_80B02270(this, &func_80B03A00);
    } else {
        Math_SmoothScaleMaxMinF(&this->actor.velocity.y, 2.0f, 0.6f, 1000.0f, 0.0f);
    }
}

void func_80B03D74(EnSsh *this, GlobalContext *globalCtx) {
    if((this->unk_528 != 0) && (DECR(this->unk_528) == 0)) {
        func_80B02700(this, 4);
    }
    if (!func_80B02DBC(this, globalCtx)) {
        func_80B02854(this);
        func_80B02270(this, func_80B03E74);
    } else if (func_80B02EDC(this)) {
        func_80B02278(this, globalCtx);
        func_80B02884(this);
        func_80B02270(this, func_80B03C8C);
    } else if (DECR(this->unk_530) == 0) {
        Audio_PlayActorSound2(&this->actor, 0x3868);
        this->unk_530 = 3;
    }
}

void func_80B03E74(EnSsh *this, GlobalContext *globalCtx) {
    f32 sp24 = this->skelAnime.animCurrentFrame / (this->skelAnime.totalFrames - 1.0f);

    if (sp24 == 1.0f) {
        func_80B02854(this);
    }
    if (func_80B02DBC(this, globalCtx)) {
        func_80B028CC(this);
        func_80B02270(this, func_80B03D74);
    } else if (func_80B02EA4(this)) {
        func_80B02834(this);
        func_80B02270(this, func_80B03968);
    } else { 
        this->actor.velocity.y = 4.0f * sp24;
    }
}

void func_80B03F48(EnSsh *this) {
    if (this->unk_5CA & 0x10) {
        if (this->unk_52A == 0) {
            this->unk_5CA &= ~0x10;
            if (this->actor.params != 0) {
                func_80B0294C(this, 0.5f, 1.0f);
            } else {
                func_80B0294C(this, 0.75f, 1.0f);
            }
        }
    } else { // !(this->unk_5CA & 0x10)
        if (this->unk_52A != 0) {
            this->unk_5CA |= 0x10;
            if (this->actor.params != 0) {
                func_80B0294C(this, 0.5f, 2.0f);
            } else {
                func_80B0294C(this, 0.75f, 2.0f);
            }
        }
    }
}

void func_80B03FF0(EnSsh *this, GlobalContext *globalCtx) {
    if (!func_80B02EDC(this)) {
        func_80B02270(this, func_80B03968);
        func_80B03968(this, globalCtx);
    } else {
        func_80B02884(this);
        this->unk_5CA |= 4;
        func_80B02270(this, func_80B03C8C);
        func_80B03C8C(this, globalCtx);
    }
}

void EnSsh_Update(Actor* thisx, GlobalContext *globalCtx) {
    s32 pad;
    EnSsh* this = THIS;

    func_80B03F48(this);
    if (!func_80B0330C(this, globalCtx)) {
        if (this->unk_532 != 0) {
            func_80B02AC4(this);
        } else {
            SkelAnime_FrameUpdateMatrix(&this->skelAnime);
            func_8002D7EC(&this->actor);
            func_8002E4B4(globalCtx, &this->actor, 0.0f, 0.0f, 0.0f, 4);
            this->actionFunc(this, globalCtx);
        }
        func_80B02D14(this, globalCtx);
        if (DECR(this->unk_5D0) == 0) {
            this->unk_5D0 = Math_Rand_S16Offset(0x3C, 0x3C);
        }
        this->unk_5CE = this->unk_5D0;
        if (this->unk_5CE >= 3) {
            this->unk_5CE = 0;
        }
        func_80B0368C(this, globalCtx);
        Actor_SetHeight(&this->actor, 0.0f);
    }
}

s32 func_80B04190(GlobalContext *globalCtx, s32 limbIndex, Gfx **dList, Vec3f *pos, Vec3s *rot, Actor *thisx) {
    EnSsh* this = THIS;

    switch(limbIndex){
        case 1:
            if ((this->unk_52A != 0) && (this->unk_536 == 0)) {
                if (this->unk_52A >= 2) {
                    func_80B02490(this);
                } else {
                    func_80B02598(this);
                }
            }
            break;
        case 4:
            if(this->actor.params == 0){
                *dList = D_060046C0;
            }
            break;
        case 5:
            if(this->actor.params == 0){
                *dList = D_06004080;
            }
            break;
        case 8:
            if(this->actor.params == 0){
                *dList = D_06004DE8;
            }
            break;
    }
    return 0;
}

void func_80B04280(GlobalContext *globalCtx, s32 limbIndex, Gfx **dList, Vec3s *rot, Actor *thisx) {
    EnSsh* this = THIS;

    func_800628A4(limbIndex, &this->collider2);
}

void EnSsh_Draw(Actor* thisx, GlobalContext *globalCtx) {
    static Gfx* D_80B045B8[] = {0x060007E0, 0x06000C60, 0x06001060};
    s32 pad;
    EnSsh* this = THIS;

    func_80B03060(this, globalCtx);
    func_80B02F1C(this);
    OPEN_DISPS(globalCtx->state.gfxCtx, "../z_en_ssh.c", 0x91D);
    gSPSegment(POLY_OPA_DISP++, 0x08, SEGMENTED_TO_VIRTUAL(D_80B045B8[this->unk_5CE]));
    CLOSE_DISPS(globalCtx->state.gfxCtx, "../z_en_ssh.c", 0x920);
    SkelAnime_Draw(globalCtx, this->skelAnime.skeleton, this->skelAnime.limbDrawTbl, func_80B04190, func_80B04280, &this->actor);
}
