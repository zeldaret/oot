#include "z_en_fd_fire.h"

#define FLAGS 0x00000015

#define THIS ((EnFdFire*)thisx)

void EnFdFire_Init(Actor* thisx, GlobalContext* globalCtx);
void EnFdFire_Destroy(Actor* thisx, GlobalContext* globalCtx);
void EnFdFire_Update(Actor* thisx, GlobalContext* globalCtx);
void EnFdFire_Draw(Actor* thisx, GlobalContext* globalCtx);
void func_80A0EA34(EnFdFire* this, GlobalContext* globalCtx);
void func_80A0E70C(EnFdFire* this, GlobalContext* globalCtx);
void func_80A0E884(EnFdFire* this, GlobalContext* globalCtx);
void func_80A0E848(EnFdFire* this, GlobalContext* globalCtx);

extern Gfx D_0404D4E0[];

const ActorInit En_Fd_Fire_InitVars = {
    ACTOR_EN_FD_FIRE,
    ACTORTYPE_ENEMY,
    FLAGS,
    OBJECT_GAMEPLAY_DANGEON_KEEP,
    sizeof(EnFdFire),
    (ActorFunc)EnFdFire_Init,
    (ActorFunc)EnFdFire_Destroy,
    (ActorFunc)EnFdFire_Update,
    (ActorFunc)EnFdFire_Draw,
};

static ColliderCylinderInit sCylinderInit =
{
    { COLTYPE_UNK10, 0x11, 0x09, 0x39, 0x10, COLSHAPE_CYLINDER },
    { 0x00, { 0xFFCFFFFF, 0x01, 0x08 }, { 0x0D840008, 0x00, 0x00 }, 0x01, 0x01, 0x01 },
    { 12, 46, 0, { 0, 0, 0 } },
};

static  CollisionCheckInfoInit2 D_80A0F05C = {
    0x01, 0x0000, 0x0000, 0x0000, 0xFF
};

static DamageTable D_80A0F068 = {
    {
        0x00, 0x00, 0x00, 0x02, 
        0x00, 0x00, 0x00, 0x00, 
        0x00, 0x00, 0x00, 0x00, 
        0x00, 0x00, 0x00, 0x00, 
        0x00, 0x00, 0x04, 0x00, 
        0x00, 0x00, 0x00, 0x00, 
        0x00, 0x00, 0x00, 0x00, 
        0x00, 0x00, 0x00, 0x00,
    }
};

void func_80A0E4B0(EnFdFire *this, Vec3f *arg1) {
    f32 dist;
    f32 xDiff;
    f32 yDiff;
    f32 zDiff;
    xDiff = arg1->x - this->actor.posRot.pos.x;
    yDiff = arg1->y - this->actor.posRot.pos.y;
    zDiff = arg1->z - this->actor.posRot.pos.z;
    dist = sqrtf(SQ(xDiff) + SQ(yDiff) + SQ(zDiff));
    if (fabsf(dist) > fabsf(this->actor.speedXZ)) {
        this->actor.velocity.x = (xDiff / dist) * this->actor.speedXZ;
        this->actor.velocity.z = (zDiff / dist) * this->actor.speedXZ;
    } else {
        this->actor.velocity.x = 0.0f;
        this->actor.velocity.z = 0.0f;
    }
    
    this->actor.velocity.y += this->actor.gravity;
    if (!(this->actor.minVelocityY <= this->actor.velocity.y)) {
        this->actor.velocity.y = this->actor.minVelocityY;
    }
}

s32 func_80A0E578(EnFdFire *this, GlobalContext *globalCtx) {
    if (this->actionFunc == func_80A0EA34) {
        return false;
    }

    if (this->collider.base.acFlags & 2) {
        this->collider.base.acFlags &= ~2;
        return true;
    }

    if (this->collider.base.maskB & 1) {
        this->collider.base.maskB &= ~1;
        return true;
    }
    return false;
}

void EnFdFire_Init(Actor *thisx, GlobalContext *globalCtx) {
    EnFdFire* this = THIS;
    s32 pad;
    Player* player = PLAYER;

    ActorShape_Init(&this->actor.shape, 0.0f, ActorShadow_DrawFunc_Circle, 20.0f);
    Collider_InitCylinder(globalCtx, &this->collider);
    Collider_SetCylinder(globalCtx, &this->collider, &this->actor, &sCylinderInit);
    func_80061EFC(&this->actor.colChkInfo, &D_80A0F068, &D_80A0F05C);
    this->actor.flags &= ~1;
    this->actor.gravity = -0.6f;
    this->actor.speedXZ = 5.0f;
    this->actor.velocity.y = 12.0f;
    this->unk_19C = Math_Vec3f_DistXYZ(&this->actor.posRot.pos, &player->actor.posRot.pos);
    this->unk_1A0 = 3.0f;
    this->unk_1A8 = (s16)Math_Rand_ZeroFloat(5.0f) - 0x19;
    this->actionFunc = func_80A0E70C;
}

void EnFdFire_Destroy(Actor *thisx, GlobalContext *globalCtx) {
    EnFdFire* this = THIS;

    Collider_DestroyCylinder(globalCtx, &this->collider);
}

void func_80A0E70C(EnFdFire *this, GlobalContext *globalCtx) {
    Vec3f sp34 = { 0.0f, 0.0f, 0.0f };
    Vec3f sp28 = this->actor.parent->posRot.pos;

    sp28.x += this->unk_19C * Math_Sins(this->actor.posRot.rot.y);
    sp28.z += this->unk_19C * Math_Coss(this->actor.posRot.rot.y);
    func_80A0E4B0(this, &sp28);
    if (this->actor.bgCheckFlags & 1 && (!(0.0f < this->actor.velocity.y))) {
        this->actor.velocity = sp34;
        this->actor.speedXZ = 0.0f;
        this->actor.bgCheckFlags &= ~1;
        if (this->actor.params & 0x8000) {
            this->unk_1A6 = 200;
            this->actionFunc = func_80A0E884;    
        } else {
            this->unk_1A6 = 300;
            this->actionFunc = func_80A0E848;
        }
    }
}

void func_80A0E848(EnFdFire *this, GlobalContext *globalCtx) {
    if (DECR(this->unk_1A6) == 0) {
        this->actionFunc = func_80A0EA34;
    }
}

void func_80A0E884(EnFdFire *this, GlobalContext *globalCtx) {
    Player* player = PLAYER;
    f32 angles[] = {
        0.0f, 210.0f, 60.0f,
        270.0f, 120.0f, 330.0f,
        180.0f, 30.0f, 240.0f,
        90.0f, 300.0f, 150.0f,
    };

    Vec3f pos;
    s16 idx;

    idx = ((globalCtx->state.frames / 10) + (this->actor.params & 0x7FFF)) % 0xC;
    pos = player->actor.posRot.pos;
    pos.x += 120.0f * sinf(angles[idx]);
    pos.z += 120.0f * cosf(angles[idx]);

    if (DECR(this->unk_1A6) == 0) {
        this->actionFunc = func_80A0EA34;
    } else {
        Math_SmoothScaleMaxMinS(&this->actor.posRot.rot.y, Math_Vec3f_Yaw(&this->actor.posRot.pos, &pos), 8, 0xFA0, 1);
        Math_SmoothScaleMaxMinF(&this->actor.speedXZ, 0.0f, 0.4f, 1.0f, 0.0f);
        if (this->actor.speedXZ < 0.1f) {
            this->actor.speedXZ = 5.0f;
        }
        func_8002D868(&this->actor);
    }
}

void func_80A0EA34(EnFdFire *this, GlobalContext *globalCtx) {
    Math_SmoothScaleMaxMinF(&this->actor.speedXZ, 0.0f, 0.6f, 9.0f, 0.0f);
    func_8002D868(&this->actor);
    Math_SmoothScaleMaxMinF(&this->unk_1A0, 0.0f, 0.3f, 0.1f, 0.0f);
    this->actor.shape.unk_10 = 20.0f;
    this->actor.shape.unk_10 *= (this->unk_1A0 / 3.0f);
    if (!(this->unk_1A0 > 0.01f)) {
        Actor_Kill(&this->actor);
    }
}

void EnFdFire_Update(Actor *thisx, GlobalContext *globalCtx) {
    EnFdFire* this = THIS;
    s32 pad;

    if (this->actionFunc != func_80A0EA34) {
        if ((this->actor.parent->update == 0) || func_80A0E578(this, globalCtx)) {
            this->actionFunc = func_80A0EA34;
        }
    }

    func_8002D7EC(&this->actor);
    this->actionFunc(this, globalCtx);
    func_8002E4B4(globalCtx, &this->actor, 12.0f, 10.0f, 0.0f, 5);
    
    if (this->actionFunc != func_80A0EA34) {
        Collider_CylinderUpdate(&this->actor, &this->collider);
        CollisionCheck_SetAT(globalCtx, &globalCtx->colChkCtx, &this->collider.base);
        CollisionCheck_SetAC(globalCtx, &globalCtx->colChkCtx, &this->collider.base);
    }
}

#define COLOR_IDX (((this->actor.params & 0x8000) >> 0xF))

void EnFdFire_Draw(Actor* thisx, GlobalContext *globalCtx) {
    Color_RGBA8_n primColors[] = {
        { 255, 255, 0, 255 },
        { 255, 255, 255, 255 },
    };
    Color_RGBA8_n envColors[] = {
        { 255, 10, 0, 255 },
        { 0, 10, 255, 255 },
    };
    s32 pad;
    EnFdFire* this = THIS;
    Vec3f sp9C = { 0.0f, 0.0f, 0.0f };
    Vec3f sp90 = { 0.0f, 0.0f, 0.0f };
    s16 sp8E;
    f32 sp88;
    f32 sp84;
    f32 sp80;

    OPEN_DISPS(globalCtx->state.gfxCtx, "../z_en_fd_fire.c", 0x23C);
    Matrix_Translate(this->actor.posRot.pos.x, this->actor.posRot.pos.y, this->actor.posRot.pos.z, MTXMODE_NEW);
    sp8E = Math_Vec3f_Yaw(&sp9C, &this->actor.velocity) - func_8005A9F4(globalCtx->cameraPtrs[globalCtx->activeCamera]);
    sp84 = fabsf(Math_Coss(sp8E));
    sp88 = Math_Sins(sp8E);
    sp80 = Math_Vec3f_DistXZ(&sp9C, &this->actor.velocity) / 1.5f;
    if(1){}if(1){}if(1){}
    Matrix_RotateY((s16)(func_8005A9F4(globalCtx->cameraPtrs[globalCtx->activeCamera]) + 0x8000) * 0.0000958738f, MTXMODE_APPLY);
    Matrix_RotateZ(((sp88 * -10.0f) * sp80) * (M_PI / 180.0f), MTXMODE_APPLY);
    sp9C.x = sp9C.y = sp9C.z = this->unk_1A0 * 0.001f;
    Matrix_Scale(sp9C.x, sp9C.y, sp9C.z, MTXMODE_APPLY);
    sp84 = sp80 * (-0.14999999f * sp84) + 1.0f;
    if(sp84 < 0.1f){
        sp84 = 0.1f;
    }
    Matrix_Scale(1.0f, sp84, 1.0f / sp84, MTXMODE_APPLY);
    gSPMatrix(oGfxCtx->polyXlu.p++, Matrix_NewMtx(globalCtx->state.gfxCtx, "../z_en_fd_fire.c", 623), G_MTX_NOPUSH | G_MTX_LOAD | G_MTX_MODELVIEW);
    func_80093D84(globalCtx->state.gfxCtx);
    gSPSegment(oGfxCtx->polyXlu.p++, 0x8, 
                Gfx_TwoTexScroll(globalCtx->state.gfxCtx, 0, 0, 0, 
                                0x20, 0x40, 1, 0, 
                                globalCtx->state.frames * this->unk_1A8, 
                                0x20, 0x80));
    gDPSetPrimColor(oGfxCtx->polyXlu.p++, 128, 128, 
                    primColors[COLOR_IDX].r, primColors[COLOR_IDX].g, 
                    primColors[COLOR_IDX].b, primColors[COLOR_IDX].a);
    gDPSetEnvColor(oGfxCtx->polyXlu.p++, envColors[COLOR_IDX].r, envColors[COLOR_IDX].g,
                                         envColors[COLOR_IDX].b, envColors[COLOR_IDX].a);
    gDPPipeSync(oGfxCtx->polyXlu.p++);
    gSPDisplayList(oGfxCtx->polyXlu.p++, &D_0404D4E0);
    CLOSE_DISPS(globalCtx->state.gfxCtx, "../z_en_fd_fire.c", 672);
}
