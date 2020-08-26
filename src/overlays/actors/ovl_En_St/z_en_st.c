#include "z_en_st.h"

#define FLAGS 0x00000035

#define THIS ((EnSt*)thisx)

void EnSt_Init(Actor* thisx, GlobalContext* globalCtx);
void EnSt_Destroy(Actor* thisx, GlobalContext* globalCtx);
void EnSt_Update(Actor* thisx, GlobalContext* globalCtx);
void EnSt_Draw(Actor* thisx, GlobalContext* globalCtx);
void func_80B067F8(EnSt* this, GlobalContext* globalCtx);
void func_80B06700(EnSt* this, GlobalContext* globalCtx);
void func_80B06B88(EnSt* this, GlobalContext* globalCtx);
void func_80B06504(EnSt* this, GlobalContext* globalCtx);
void func_80B06B10(EnSt* this, GlobalContext* globalCtx);
void func_80B068CC(EnSt* this, GlobalContext* globalCtx);
void func_80B0699C(EnSt* this, GlobalContext* globalCtx);

static Vtx unusedVtx[] = 
{
    VTX(-1, 0, 0, 0, 1024, 0xFF, 0xFF, 0xFF, 0xFF),
    VTX(1, 0, 0, 1024, 1024, 0xFF, 0xFF, 0xFF, 0xFF),
    VTX(1, 100, 0, 1024, 0, 0xFF, 0xFF, 0xFF, 0xFF),
    VTX(-1, 100, 0, 0, 0, 0xFF, 0xFF, 0xFF, 0xFF),
};

static Gfx unusedGfx[] = 
{
    gsDPPipeSync(),
    gsSPTexture(0, 0, 0, G_TX_RENDERTILE, G_OFF),
    gsDPSetCombineLERP(0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, PRIMITIVE, 0, 0, 0, PRIMITIVE),
    gsDPSetRenderMode(G_RM_FOG_SHADE_A, G_RM_AA_ZB_OPA_SURF2),
    gsSPClearGeometryMode(G_CULL_BACK | G_LIGHTING | G_TEXTURE_GEN | G_TEXTURE_GEN_LINEAR),
    gsDPSetPrimColor(0, 0, 255, 255, 255, 255),
    gsSPVertex(unusedVtx, 4, 0),
    gsSP1Triangle(0, 1, 2, 0),
    gsSP1Triangle(0, 2, 3, 0),
    gsSPEndDisplayList(),
};

const ActorInit En_St_InitVars = {
    ACTOR_EN_ST,
    ACTORTYPE_ENEMY,
    FLAGS,
    OBJECT_ST,
    sizeof(EnSt),
    (ActorFunc)EnSt_Init,
    (ActorFunc)EnSt_Destroy,
    (ActorFunc)EnSt_Update,
    (ActorFunc)EnSt_Draw,
};

static ColliderCylinderInit sCylinderInit =
{
    { COLTYPE_UNK6, 0x00, 0x09, 0x00, 0x10, COLSHAPE_CYLINDER },
    { 0x00, { 0x00000000, 0x00, 0x00 }, { 0x00000000, 0x00, 0x00 }, 0x01, 0x01, 0x00 },
    { 32, 50, -24, { 0, 0, 0 } },
};

static CollisionCheckInfoInit2 sColChkInit = 
{
    0x02, 0x0000, 0x0000, 0x0000, 0xFF
};

static ColliderCylinderInit sCylinderInit2 =
{
    { COLTYPE_UNK6, 0x00, 0x00, 0x39, 0x10, COLSHAPE_CYLINDER },
    { 0x00, { 0x00000000, 0x00, 0x00 }, { 0x00000000, 0x00, 0x00 }, 0x00, 0x00, 0x01 },
    { 20, 60, -30, { 0, 0, 0 } },
};

static ColliderJntSphItemInit sJntSphItemsInit[1] = {
    {
        { 0x00, { 0xFFCFFFFF, 0x00, 0x04 }, { 0x00000000, 0x00, 0x00 }, 0x01, 0x00, 0x01 },
        { 1, { { 0, -240, 0 }, 28 }, 100 },
    },
};

static ColliderJntSphInit sJntSphInit =
{
    { COLTYPE_UNK6, 0x11, 0x00, 0x39, 0x10, COLSHAPE_JNTSPH },
    1, sJntSphItemsInit,
};

extern SkeletonHeader D_06005298;
extern AnimationHeader D_06000304;
extern AnimationHeader D_06005B98;
extern AnimationHeader D_060055A8;
extern AnimationHeader D_060055A8;

struct_80034EC0_Entry D_80B07088[] = {
    { &D_06000304, 1.0f, 0.0f, -1.0f, 0x01, 0.0f },
    { &D_06005B98, 1.0f, 0.0f, -1.0f, 0x03, -8.0f },
    { &D_06000304, 4.0f, 0.0f, -1.0f, 0x03, -8.0f },
    { &D_06000304, 1.0f, 0.0f, -1.0f, 0x01, -8.0f },
    { &D_060055A8, 1.0f, 0.0f, -1.0f, 0x03, -8.0f },
    { &D_06000304, 8.0f, 0.0f, -1.0f, 0x01, -8.0f },
    { &D_06000304, 6.0f, 0.0f, -1.0f, 0x01, -8.0f },
    { &D_06005B98, 2.0f, 0.0f, -1.0f, 0x01, -8.0f },
};

void func_80B04890(EnSt *this, EnStFunc* actionFunc) {
    this->actionFunc = actionFunc;
}

void func_80B04898(EnSt* this, GlobalContext* globalCtx, s32 dustCnt) {
    Color_RGBA8_n primColor = { 170, 130, 90, 255 };
    Color_RGBA8_n envColor = { 100, 60, 20, 0 };
    Vec3f dustVel = { 0.0f, 0.0f, 0.0f };
    Vec3f initialYAccel = { 0.0f, 0.3f, 0.0f };

    Vec3f dustPos;
    s16 yAngle;
    s32 i;

    yAngle = (Math_Rand_ZeroOne() - 0.5f) * 65536.0f;
    dustPos.y = this->actor.groundY;
    for(i = dustCnt; i >= 0; i--, yAngle += (s16)(0x10000 / dustCnt)){
        initialYAccel.x = (Math_Rand_ZeroOne() - 0.5f) * 4.0f;
        initialYAccel.z = (Math_Rand_ZeroOne() - 0.5f) * 4.0f;
        dustPos.x = this->actor.posRot.pos.x + (Math_Sins(yAngle) * 22.0f);
        dustPos.z = this->actor.posRot.pos.z + (Math_Coss(yAngle) * 22.0f);
        func_8002836C(globalCtx, &dustPos, &dustVel, &initialYAccel, &primColor, &envColor, 120, 40, 10);
    }
}

void func_80B04AB8(EnSt* this, GlobalContext* globalCtx) {
    Vec3f zeroVec = { 0.0f, 0.0f, 0.0f };

    Vec3f blastPos;

    blastPos.x = this->actor.posRot.pos.x;
    blastPos.y = this->actor.groundY;
    blastPos.z = this->actor.posRot.pos.z;

    func_80028F84(globalCtx, &blastPos, &zeroVec, &zeroVec, 100, 220, 8);
}

void func_80B04B40(EnSt* this, GlobalContext* globalCtx) {
    Vec3f zeroVec = { 0.0f, 0.0f, 0.0f };
    Vec3f deadPos;

    deadPos.x = this->actor.posRot.pos.x + ((Math_Rand_ZeroOne() - 0.5f) * 60.0f);
    deadPos.y = (this->actor.posRot.pos.y + 10.0f) + ((Math_Rand_ZeroOne() - 0.5f) * 45.0f);
    deadPos.z = this->actor.posRot.pos.z + ((Math_Rand_ZeroOne() - 0.5f) * 60.0f);
    func_8002A6B8(globalCtx, &deadPos, &zeroVec, &zeroVec, 100, 0, 255, 255, 255, 255, 255, 0, 0, 1, 9, 1);
}

s32 func_80B04C7C(GlobalContext *globalCtx) {
    EffectBlureInit1 blureInit;

    u8 D_80B07180[] = { 255, 255, 255, 75 };
    u8 D_80B07184[] = { 255, 255, 255, 75 };
    u8 D_80B07188[] = { 255, 255, 255, 0 };
    u8 D_80B0718C[] = { 255, 255, 255, 0 };

    s32 i;
    s32 blurIdx;

    for(i = 0; i < 4; i++){
        ((u8*)&blureInit.p1StartColor)[i] = D_80B07180[i];
        ((u8*)&blureInit.p2StartColor)[i] = D_80B07184[i];
        ((u8*)&blureInit.p1EndColor)[i] = D_80B07188[i];
        ((u8*)&blureInit.p2EndColor)[i] = D_80B0718C[i];
    }

    blureInit.elemDuration = 6;
    blureInit.unkFlag = 0;
    blureInit.calcMode = 3;

    Effect_Add(globalCtx, &blurIdx, 1, 0, 0, &blureInit);
    return blurIdx;
}

s32 func_80B04D78(EnSt *this, GlobalContext *globalCtx) {
    CollisionPoly* poly;
    s32 bgId;
    Vec3f sp3C;

    sp3C.x = this->actor.posRot.pos.x;
    sp3C.y = this->actor.posRot.pos.y + 1000.0f;
    sp3C.z = this->actor.posRot.pos.z;
    if (!func_8003DE84(&globalCtx->colCtx, &this->actor.posRot.pos, &sp3C, &this->unk_3F0, &poly, 0, 0, 1, 1, &bgId)) {
        return 0;
    }
    this->unk_3E4 = this->actor.posRot.pos;
    this->unk_3E4.y -= 100.0f;
    return 1;
}

void func_80B04E44(EnSt *this) {
    Vec3f D_80B07190 = { 834.0f, 834.0f, 0.0f };
    Vec3f D_80B0719C = { 834.0f, -584.0f, 0.0f };

    Vec3f sp34;
    Vec3f sp28;
    
    D_80B07190.x *= this->unk_408;
    D_80B07190.y *= this->unk_408;
    D_80B07190.z *= this->unk_408;

    D_80B0719C.x *= this->unk_408;
    D_80B0719C.y *= this->unk_408;
    D_80B0719C.z *= this->unk_408;
    
    Matrix_Push();
    Matrix_MultVec3f(&D_80B07190, &sp34);
    Matrix_MultVec3f(&D_80B0719C, &sp28);
    Matrix_Pull();
    EffectBlure_AddVertex(Effect_GetByIndex(this->blurIdx), &sp34, &sp28);
}

void func_80B04F4C(EnSt *this) {
    EffectBlure_AddSpace(Effect_GetByIndex(this->blurIdx));
}

void func_80B04F74(EnSt *this) {
    func_80034EC0(&this->skelAnime, D_80B07088, 3);
}

// move up? 
void func_80B04FA0(EnSt *this) {
    Audio_PlayActorSound2(&this->actor, NA_SE_EN_STALTU_UP);
    func_80034EC0(&this->skelAnime, &D_80B07088, 2);
}

void func_80B04FDC(EnSt *this) {
    this->actor.posRot.pos.y = this->actor.groundY + this->unk_40C;
    func_80034EC0(&this->skelAnime, &D_80B07088, 4);
    this->unk_3D2 = 0;
    this->unk_3C2 = this->skelAnime.totalFrames;
}

void func_80B0503C(EnSt *this) {
    if (this->unk_3CC == 0) {
        func_80034EC0(&this->skelAnime, D_80B07088, 4);
        this->unk_3C2 = this->skelAnime.totalFrames;
    }
    this->unk_3D2 = 0;
    this->actor.velocity.y = -10.0f;
}

void func_80B050A0(EnSt *this, GlobalContext *globalCtx) {
    ColliderCylinderInit* cylinders[6] = { 
        &sCylinderInit, &sCylinderInit, &sCylinderInit,
        &sCylinderInit2, &sCylinderInit2, &sCylinderInit2,
    };

    s32 i;
    s32 pad;

    for(i = 0; i < ARRAY_COUNT(cylinders); i++){
        Collider_InitCylinder(globalCtx, &this->colCylinder[i]);
        Collider_SetCylinder(globalCtx, &this->colCylinder[i], &this->actor, cylinders[i]);
    }
    
    this->colCylinder[0].body.bumper.flags = 0x3F8F9;
    this->colCylinder[1].body.bumper.flags = 0xFFC00706;
    this->colCylinder[2].base.type = 9;
    this->colCylinder[2].body.bumperFlags = 0xD;
    this->colCylinder[2].body.flags = 2;
    this->colCylinder[2].body.bumper.flags = 0xFFCC0706;

    func_80061EFC(&this->actor.colChkInfo, DamageTable_Get(2), &sColChkInit);
    Collider_InitJntSph(globalCtx, &this->colSph);
    Collider_SetJntSph(globalCtx, &this->colSph, &this->actor, &sJntSphInit, this->colSphItems);
}

void func_80B051E0(EnSt *this, GlobalContext *globalCtx) {
    ColliderBody* body = &this->colCylinder[0].body;
    Player* player = PLAYER;
    if (player->stickFlameTimer != 0) {
        body->bumper.flags |= 2;
        this->colCylinder[1].body.bumper.flags &= ~2;
        this->colCylinder[2].body.bumper.flags &= ~2;
    } else {
        body->bumper.flags &= ~2;
        this->colCylinder[1].body.bumper.flags |= 2;
        this->colCylinder[2].body.bumper.flags |= 2;
    }
}

void func_80B05254(EnSt *this, GlobalContext *globalCtx) {
    Collider_CylinderUpdate(&this->actor, &this->colCylinder[0]);
    CollisionCheck_SetAC(globalCtx, &globalCtx->colChkCtx, &this->colCylinder[0].base);
}

void func_80B05298(EnSt *this, GlobalContext *globalCtx) {
    s16 angleTowardsLink;

    angleTowardsLink = ABS((s16)(this->actor.yawTowardsLink - this->actor.shape.rot.y));
    if (angleTowardsLink < 0x3FFC) {
        Collider_CylinderUpdate(&this->actor, &this->colCylinder[2]);
        CollisionCheck_SetAC(globalCtx, &globalCtx->colChkCtx, &this->colCylinder[2].base);
    } else {
        Collider_CylinderUpdate(&this->actor, &this->colCylinder[1]);
        CollisionCheck_SetAC(globalCtx, &globalCtx->colChkCtx, &this->colCylinder[1].base);
    }
}

s32 func_80B0534C(EnSt *this, GlobalContext *globalCtx) {
    Vec3f D_80B071C0[] = {
        { 40.0f, 0.0f, 0.0f },
        { 0.0f, 0.0f, 0.0f },
        { -40.0f, 0.0f, 0.0f },
    };
    
    Vec3f sp70;
    s32 i;
    
    for(i = 0; i < 3; i++) {
        sp70 = this->actor.posRot.pos;
        D_80B071C0[i].x *= this->unk_408;
        D_80B071C0[i].y *= this->unk_408;
        D_80B071C0[i].z *= this->unk_408;
        Matrix_Push();
        Matrix_Translate(sp70.x, sp70.y, sp70.z, MTXMODE_NEW);
        Matrix_RotateY((this->unk_3BC / 32768.0f) * M_PI, MTXMODE_APPLY);
        Matrix_MultVec3f(&D_80B071C0[i], &sp70);
        Matrix_Pull();    
        this->colCylinder[i + 3].dim.pos.x = sp70.x;
        this->colCylinder[i + 3].dim.pos.y = sp70.y;
        this->colCylinder[i + 3].dim.pos.z = sp70.z;
        CollisionCheck_SetOC(globalCtx, &globalCtx->colChkCtx, &this->colCylinder[i + 3].base);
    }

    return 1;
}

void func_80B05524(EnSt *this, GlobalContext *globalCtx) {
    if ((this->actor.colChkInfo.health != 0) || (this->actionFunc == func_80B0699C)) {
        if (DECR(this->unk_3D4) == 0) {
            func_80B0534C(this, globalCtx);
        }
        
        DECR(this->unk_3D0);
        DECR(this->unk_3CC);

        if (this->unk_3D0 == 0 && this->unk_3CC == 0) {
            func_80B05254(this, globalCtx);
            func_80B05298(this, globalCtx);
        }
    }
}

s32 func_80B055E8(EnSt *this, GlobalContext *globalCtx) {
    Player* player = PLAYER;
    s32 phi_a3;
    s32 flg;
    s32 i;

    for(i = 0, phi_a3 = 0; i < 3; i++){
        if(((this->colCylinder[i + 3].base.maskB & 1) != 0) == 0) {
            continue;
        }
        this->colCylinder[i + 3].base.maskB &= ~0x1;
        phi_a3 = 1;
    }

    if (!phi_a3) {
        return 0;
    }

    if (this->unk_3C4 == 0) {
        Audio_PlayActorSound2(&this->actor, NA_SE_EN_STALTU_ROLL);
    }

    this->unk_3D4 = 30;
    globalCtx->unk_11D58(globalCtx, -8);
    Audio_PlayActorSound2(&player->actor, NA_SE_PL_BODY_HIT);
    func_8002F71C(globalCtx, &this->actor, 4.0f, this->actor.yawTowardsLink, 6.0f);
    return 1;
}

s32 func_80B056D0(EnSt *this) {
    u8 acFlags = this->colCylinder[2].base.acFlags;
    if (!!(acFlags & 2) == 0) {
        return 0;
    } else {
        this->colCylinder[2].base.acFlags &= ~0x2;
        this->unk_3D0 = 8;
        this->unk_3DC = 0;
        this->unk_3C4 = 60;
        return 1;
    }
}

s32 func_80B05710(EnSt *this, GlobalContext *globalCtx) {
    ColliderCylinder* cyl;
    s32 sp28;
    s32 phi_v1;

    sp28 = 0;
    phi_v1 = 0;
    cyl = &this->colCylinder[0];
    if (cyl->base.acFlags & 2) {
        cyl->base.acFlags &= ~2;
        phi_v1 = 1;
        sp28 |= cyl->body.acHitItem->toucher.flags;
    }

    cyl = &this->colCylinder[1];
    if (cyl->base.acFlags & 2) {
        cyl->base.acFlags &= ~2;
        phi_v1 = 1;
        sp28 |= cyl->body.acHitItem->toucher.flags;
    }

    if (!phi_v1) {
        return 0;
    }

    this->unk_3D0 = 8;
    if (this->actor.colChkInfo.damageEffect == 1) {
        if (this->unk_3CE == 0) {
            Audio_PlayActorSound2(&this->actor, NA_SE_EN_GOMA_JR_FREEZE);
            this->unk_3CE = 0x78;
            func_8003426C(&this->actor, 0, 0xC8, 0, this->unk_3CE);
        }
        return 0;
    }

    this->unk_3C4 = this->unk_3CE = 0;
    this->unk_3D4 = 1;
    func_80034EC0(&this->skelAnime, D_80B07088, 3);
    this->unk_3CC =  this->skelAnime.totalFrames;
    func_8003426C(&this->actor, 0x4000, 0xC8, 0, this->unk_3CC);
    if (Actor_ApplyDamage(&this->actor)) {
        Audio_PlayActorSound2(&this->actor, NA_SE_EN_STALTU_DAMAGE);
        return 0;
    }
    func_80032C7C(globalCtx, &this->actor);
    this->actor.flags &= ~1;
    this->unk_3C0 = 3;
    this->unk_3D8 = 0x14;
    this->actor.gravity = -1.0f;
    Audio_PlayActorSound2((Actor *) this, NA_SE_EN_STALWALL_DEAD);
    if (sp28 & 0x1F820) {
        func_80B04890(this, &func_80B06B10);
        this->unk_3D6 = 8;
    } else {
        func_80B04890(this, &func_80B068CC);
    }
    return 1;
}

s32 func_80B05900(EnSt *this, GlobalContext *globalCtx) {
    if (func_80B056D0(this)) {
        return 0;
    }

    if (globalCtx->actorCtx.unk_02 != 0) {
        return 1;
    }

    if (func_80B05710(&this->actor, globalCtx)) {
        return 1;
    }

    if (this->unk_3CE == 0 && this->unk_3CC == 0) {
        func_80B055E8(this, globalCtx);
    }
    return 0;
}

void func_80B05988(EnSt *this) {
    f32 scaleAmount;
    f32 radius;
    f32 height;
    f32 yShift;
    s32 i;

    scaleAmount = 1.0f;
    if(this->actor.params == 1){
        scaleAmount = 1.4f;
    }

    radius = this->colSph.list[0].dim.modelSphere.radius;
    radius *= scaleAmount;
    this->colSph.list[0].dim.modelSphere.radius = radius;

    for(i = 0; i < 6; i++){
        yShift = this->colCylinder[i].dim.yShift;
        radius = this->colCylinder[i].dim.radius;
        height = this->colCylinder[i].dim.height;
        yShift *= scaleAmount;
        radius *= scaleAmount;
        height *= scaleAmount;
        
        this->colCylinder[i].dim.yShift = yShift;
        this->colCylinder[i].dim.radius = radius;
        this->colCylinder[i].dim.height = height;
    }
    Actor_SetScale(&this->actor, 0.04f * scaleAmount);
    this->unk_408 = scaleAmount;
    this->unk_40C = 32.0f * scaleAmount;
}

s32 func_80B05AF8(EnSt *this, s16 arg1, s16 arg2, s16 arg3, s16 arg4) {
    s16 sp2E;
    s16 sp2C;
    s16 sp2A;

    sp2E = this->unk_3DD;
    sp2C = this->unk_3DE;
    sp2A = this->unk_3DF;
    
    arg4 = 255 / (s16)(0.6f * arg4);
    if(arg4 <= 0){
        arg4 = 1;
    }

    Math_SmoothScaleMaxMinS(&sp2E, arg1, 1, arg4, arg4);
    Math_SmoothScaleMaxMinS(&sp2C, arg2, 1, arg4, arg4);
    Math_SmoothScaleMaxMinS(&sp2A, arg3, 1, arg4, arg4);
    this->unk_3DD = sp2E;
    this->unk_3DE = sp2C;
    this->unk_3DF = sp2A;
    return 1;
}

s32 func_80B05C24(EnSt *this) {
    if(this->unk_3CE == 0){
        return 0;
    }
    this->unk_3CE--;
}

void func_80B05C44(EnSt *this, GlobalContext *globalCtx) {
    u16 phi_a2 = 0;
    Vec3s sp50;
    s16 phi_v1_3;
    s16 temp_v0;
    s16 temp_t0;

    if (this->unk_3CE != 0){
        if(this->unk_3CE < 30) {
            if ((this->unk_3CE % 2) != 0) {
                this->actor.shape.rot.y += 0x800;
            } else {
                this->actor.shape.rot.y -= 0x800;
            }
        }
        return;
    }
    
    if (this->unk_3C4 == 0 && this->unk_3D8 == 0 && this->unk_3D6 == 0) {
        if (this->unk_3CC != 0 || this->unk_3D4 != 0) {
            this->actor.shape.rot.y += 0x2000;
            return;
        }

        if (this->actionFunc != func_80B06504) {
            this->unk_3C8 = 30;
            this->unk_3CA = 0;
        }

        if (this->unk_3C8 != 0) {
            this->unk_3C8--;
            if (this->unk_3C8 == 0) {
                Audio_PlayActorSound2(&this->actor, NA_SE_EN_STALTU_ROLL);
                this->unk_3CA = 30;
            }
        } else {
            if (this->unk_3CA != 0) {
                this->unk_3CA--;
                if (this->unk_3CA == 0) {
                    Audio_PlayActorSound2(&this->actor, NA_SE_EN_STALTU_ROLL);
                    this->unk_3C8 = 30;
                }
                phi_a2 = 0x8000;
            }
        }

        sp50 = this->actor.shape.rot;
        temp_t0 = (this->actionFunc == func_80B06504 ? this->actor.yawTowardsLink : this->unk_3BC);
        phi_v1_3 = sp50.y - (temp_t0  ^ phi_a2);
        if (ABS(phi_v1_3) < 0x4001) {
            Math_SmoothScaleMaxMinS(&sp50.y, temp_t0  ^ phi_a2, 4, 0x2000, 1);
        } else {
            sp50.y += 0x2000;
        }
        
        this->actor.shape.rot = this->actor.posRot.rot = sp50;

        if(phi_a2 == 0 && this->unk_3C8 < 0xA){
            temp_v0 = this->unk_3C8;
        } else if(phi_a2 == 0x8000 && this->unk_3CA < 0xA){
            temp_v0 = this->unk_3CA;
        } else {
            return;
        }

        if ((temp_v0 % 2) != 0) {
            this->actor.shape.rot.y += 0x800;
        } else {
            this->actor.shape.rot.y -= 0x800;
        }
    }
}

s32 func_80B05EE4(EnSt *this, GlobalContext *globalCtx) {
    if (this->actor.velocity.y > 0.0f || this->unk_3C0 == 0) {
        return 0;
    }

    if(!(this->actor.bgCheckFlags & 1)) {
        return 0;
    }
    Audio_PlayActorSound2(&this->actor, NA_SE_EN_DODO_M_GND);
    func_80B04898(this, globalCtx, 0xA);
    this->actor.velocity.y = 6.0f / (4 - this->unk_3C0);
    this->unk_3C0--;
    if (this->unk_3C0 != 0) {
        return 0;
    } else {
        this->actor.velocity.y = 0.0f;
    }
    return 1;
}

void func_80B05FB0(EnSt *this, GlobalContext *globalCtx) {
    f32 ySpeedTarget;

    ySpeedTarget = 0.5f;
    if ((globalCtx->state.frames & 8) != 0) {
        ySpeedTarget *= -1.0f;
    }
    Math_SmoothScaleMaxMinF(&this->actor.velocity.y, ySpeedTarget, 0.4f, 1000.0f, 0.0f);
}

// player relative to to this
s32 func_80B0601C(EnSt *this, GlobalContext *globalCtx) {
    Player* player = PLAYER;
    f32 yDist;
    if (this->unk_3CC != 0) {
        return 0;
    } else if (this->actor.xzDistFromLink > 160.0f) {
        return 0;
    }

    yDist = this->actor.posRot.pos.y - player->actor.posRot.pos.y;
    if (yDist < 0.0f || yDist > 400.0f) {
        return 0;
    }
    
    if (player->actor.posRot.pos.y < this->actor.groundY) {
        return 0;
    }
    return 1;
}

s32 func_80B060C4(EnSt *this) {
    f32 velY = this->actor.velocity.y;
    f32 checkY = this->actor.posRot.pos.y + (velY * 2.0f);
    if (checkY >= this->actor.initPosRot.pos.y) {
        return 1;
    }
    return 0;
}

s32 func_80B060FC(EnSt *this) {
    f32 velY = this->actor.velocity.y;
    f32 checkY = this->actor.posRot.pos.y + (velY * 2.0f);
    if (checkY - this->actor.groundY <= this->unk_40C) {
        return 1;
    }
    return 0;
}

void func_80B0613C(EnSt *this) {
    Vec3f sp44;
    Vec3f sp38;
    f32 sp34;
    s16 temp_s1;

    if (this->unk_3C4 != 0) {
        
        this->unk_410 += 0xA28;
        this->unk_3C4--;
        
        if (this->unk_3C4 == 0) {
            this->unk_410 = 0;
        }

        sp34 = this->unk_3C4 * 0.46666667f;
        temp_s1 = Math_Sins(this->unk_410) * (sp34 * 182.04445f);

        if (this->unk_3DA >= ABS(temp_s1) && this->unk_3DC == 0) {
                Audio_PlayActorSound2(&this->actor, NA_SE_EN_STALTU_WAVE);
                this->unk_3DC = 1;
        }

        if (this->unk_3DA < ABS(temp_s1)) {
            this->unk_3DC = 0;
        }

        this->unk_3DA = ABS(temp_s1);
        sp44.x = Math_Sins(temp_s1) * -200.0f;
        sp44.y = Math_Coss(temp_s1) * -200.0f;
        sp44.z = 0.0f;
        Matrix_Push();
        Matrix_Translate(this->unk_3F0.x, this->unk_3F0.y, this->unk_3F0.z, MTXMODE_NEW);
        Matrix_RotateY(this->actor.posRot.rot.y * 0.0000958738f, MTXMODE_APPLY);
        Matrix_MultVec3f(&sp44, &sp38);
        Matrix_Pull();
        this->actor.shape.rot.z = -(temp_s1 * 2);
        this->actor.posRot.pos.x = sp38.x;
        this->actor.posRot.pos.z = sp38.z;
    }
}

void EnSt_Init(Actor *thisx, GlobalContext *globalCtx) {
    EnSt* this = THIS;
    s32 pad;

    ActorShape_Init(&this->actor.shape, 0.0f, ActorShadow_DrawFunc_Circle, 14.0f);
    SkelAnime_Init(globalCtx, &this->skelAnime, &D_06005298, NULL, this->limbDrawTable, this->transDrawTable, 30);
    func_80034EC0(&this->skelAnime, D_80B07088, 0);
    this->blurIdx = func_80B04C7C(globalCtx);
    func_80B050A0(this, globalCtx);
    if (thisx->params == 2) {
        this->actor.flags |= 0x80;
    }
    if (this->actor.params == 1) {
        this->actor.naviEnemyId = 5;
    } else {
        this->actor.naviEnemyId = 4;
    }
    func_80B04D78(this, globalCtx);
    this->actor.flags |= 0x4000;
    this->actor.flags |= 0x1000000;
    func_80B05988(this);
    this->actor.gravity = 0.0f;
    this->unk_3BC = this->actor.posRot.rot.y;
    func_80B04890(this, func_80B06B88);
}

void EnSt_Destroy(Actor *thisx, GlobalContext *globalCtx) {
    EnSt* this = THIS;
    s32 i;

    Effect_Delete(globalCtx, this->blurIdx);
    for(i = 0; i < 6; i++){
        Collider_DestroyCylinder(globalCtx, &this->colCylinder[i]);
    }
    Collider_DestroyJntSph(globalCtx, &this->colSph);
}

void func_80B064B0(EnSt *this, GlobalContext *globalCtx) {
    if (func_80B0601C(this, globalCtx)) {
        func_80B0503C(this);
        func_80B04890(this, func_80B06700);
    } else {
        func_80B05FB0(this, globalCtx);
    }
}

void func_80B06504(EnSt *this, GlobalContext *globalCtx) {
    if (this->unk_3CC != 0) {
        this->unk_3CC--;
        if (this->unk_3CC == 0) {
            func_80034EC0(&this->skelAnime, D_80B07088, 3);
        }
    }

    if (this->unk_3C2 != 0) {
        this->unk_3C2--;
        if (this->unk_3C2 == 0) {
            func_80034EC0(&this->skelAnime, D_80B07088, 3);
        }
    }

    if (func_80B0601C(this, globalCtx) == 0) {
        func_80B04FA0(this);
        func_80B04890(this, func_80B067F8);
        return;
    }
    
    if (DECR(this->unk_3D2) == 0) {
        Audio_PlayActorSound2(&this->actor, NA_SE_EN_STALTU_LAUGH);
        this->unk_3D2 = 64;
    }
    func_80B05FB0(this, globalCtx);
}

void func_80B065FC(EnSt *this, GlobalContext *globalCtx) {
    s16 temp_v0;
    s16 temp_v0_2;

    if (this->unk_3C2 != 0) {
        this->unk_3C2--;
        if (this->unk_3C2 == 0) {
            func_80034EC0(&this->skelAnime, D_80B07088, 3);
        }
    }

    if (this->unk_3CC != 0) {
        this->unk_3CC--;
        if (this->unk_3CC == 0) {
            func_80034EC0(&this->skelAnime, D_80B07088, 3);
        }
    }
    this->unk_3D2++;
    if (this->unk_3D2 == 0xE) {
        Audio_PlayActorSound2(&this->actor, NA_SE_EN_STALTU_DOWN_SET);
    }
    if ((this->actor.groundY + this->unk_40C) < this->actor.posRot.pos.y) {
        this->unk_3D2 = 0;
        func_80B04890(this, func_80B06504);
        return;
    } else {
        Math_SmoothScaleMaxMinF(&this->actor.velocity.y, 2.0f, 0.3f, 1.0f, 0.0f);
    }
}

void func_80B06700(EnSt *this, GlobalContext *globalCtx) {
    if (this->unk_3CC != 0) {
        this->unk_3CC--;
        if (this->unk_3CC == 0) {
            func_80034EC0(&this->skelAnime, D_80B07088, 5);
        }
    }

    if (!func_80B0601C(this, globalCtx)) {
        func_80B04FA0(this);
        func_80B04890(this, &func_80B067F8);
        
    } else if(func_80B060FC(this)) {
        func_80B04AB8(this, globalCtx);
        func_80B04FDC(this);
        func_80B04890(this, &func_80B065FC);
    } else if (DECR(this->unk_3D2) == 0) {
        Audio_PlayActorSound2(&this->actor, NA_SE_EN_STALTU_DOWN);
        this->unk_3D2 = 3;
    }
}

void func_80B067F8(EnSt *this, GlobalContext *globalCtx) {
    f32 animPctDone;

    animPctDone = this->skelAnime.animCurrentFrame / (this->skelAnime.totalFrames - 1.0f);
    if (animPctDone == 1.0f) {
        func_80B04FA0(this);
    }

    if (func_80B0601C(this, globalCtx)) {
        func_80B0503C(this);
        func_80B04890(this, func_80B06700);
    } else if (func_80B060C4(this)) {
        func_80B04F74(this);
        func_80B04890(this, func_80B064B0);
    } else {
        this->actor.velocity.y = 4.0f * animPctDone;
    }
}

void func_80B068CC(EnSt *this, GlobalContext *globalCtx) {
    s16 temp_t0;

    this->actor.dmgEffectTimer = this->unk_3D8;
    func_8002D868(&this->actor);
    this->actor.posRot.rot.x +=  0x800;
    this->actor.posRot.rot.z -= 0x800;
    this->actor.shape.rot = this->actor.posRot.rot;
    if (func_80B05EE4(this, globalCtx)) {
        this->actor.shape.unk_08 = 400.0f;
        this->actor.speedXZ = 1.0f;
        this->actor.gravity = -2.0f;
        func_80B04890(this, func_80B0699C);
    } else {
        Math_SmoothScaleMaxMinF(&this->actor.shape.unk_08, 400.0f, 0.4f, 10000.0f, 0.0f);
    }
}

void func_80B0699C(EnSt *this, GlobalContext *globalCtx) {
    Vec3f sZeroVec = { 0.0f, 0.0f, 0.0f };

    if (DECR(this->unk_3D8) == 0) {
        this->actor.velocity = sZeroVec;
        this->unk_3D6 = 8;
        func_80B04890(this, &func_80B06B10);
        return;
    }

    if (DECR(this->unk_3C6) == 0) {
        this->unk_3BE = Math_Vec3f_Yaw(&this->actor.posRot.pos, &this->actor.initPosRot.pos);
        this->unk_3C6 = 8;
    }

    Math_SmoothScaleMaxMinS(&this->actor.posRot.rot.x, 0x3FFC, 4, 0x2710, 1);
    Math_SmoothScaleMaxMinS(&this->actor.posRot.rot.z, 0, 4, 0x2710, 1);
    Math_SmoothScaleMaxMinS(&this->actor.posRot.rot.y, this->unk_3BE, 0xA, 0x2710, 1);
    
    this->actor.shape.rot = this->actor.posRot.rot;
    
    func_8002D868(&this->actor);
    this->unk_3C0 = 2;
    func_80B05EE4(this, globalCtx);
}

void func_80B06B10(EnSt *this, GlobalContext *globalCtx) {
    if (DECR(this->unk_3D6) != 0) {
        func_80B04B40(this, globalCtx);
    } else {
        Item_DropCollectibleRandom(globalCtx, NULL, &this->actor.posRot.pos, 0xE0);
        Actor_Kill(&this->actor);
    }
}

void func_80B06B88(EnSt *this, GlobalContext *globalCtx) {
    if (!func_80B060FC(this)) {
        this->unk_3C8 = 60;
        func_80B04890(this, func_80B064B0);
        func_80B064B0(this, globalCtx);
    } else {
        func_80B04FDC(this);
        func_80B04890(this, func_80B065FC);
        func_80B065FC(this, globalCtx);
    }
}

void EnSt_Update(Actor *thisx, GlobalContext *globalCtx) {
    static Color_RGBA8 colBlack = { { 0, 0, 0, 0 } };

    EnSt* this = THIS;
    s32 pad;
    Color_RGBA8 color;

    color.rgba = colBlack.rgba;
    if (this->actor.flags & 0x8000) {
        SkelAnime_FrameUpdateMatrix(&this->skelAnime);
    } else if (!func_80B05900(this, globalCtx)) {
        if (this->unk_3CE == 0) {
            SkelAnime_FrameUpdateMatrix(&this->skelAnime);
        }

        if (this->unk_3C4 == 0 && this->unk_3CE == 0) {
            func_8002D7EC(&this->actor);
        }
        func_8002E4B4(globalCtx, &this->actor, 0.0f, 0.0f, 0.0f, 4);
        if ((this->unk_3CE == 0) && (this->unk_3C4 == 0)) {
            this->actionFunc(this, globalCtx);
        } else if (this->unk_3CE != 0) {
            func_80B05C24(this);
        } else {
            func_80B0613C(this);
        }
        func_80B05C44(this, globalCtx);

        if (this->actionFunc == func_80B06504) {
            if ((globalCtx->state.frames & 0x10) != 0) {
                color.r = 255;
            }
        }
        func_80B05AF8(this, color.r, color.g, color.b, 8);
        func_80B05524(this, globalCtx);
        Actor_SetHeight(&this->actor, 0.0f);
    }
}

s32 func_80B06D88(GlobalContext *globalCtx, s32 limbIndex, Gfx **dListP, Vec3f *pos, Vec3s *rot, void* thisx) {
    EnSt* this = THIS;
    GraphicsContext *gfxCtx;
    Gfx* dispRefs[4];

    gfxCtx = globalCtx->state.gfxCtx;
    Graph_OpenDisps(dispRefs, globalCtx->state.gfxCtx, "../z_en_st.c", 2260);
    switch(limbIndex){
        case 1:
            if (this->unk_3D4 != 0 && this->unk_3C4 == 0) {
                if (this->unk_3D4 >= 2) {
                    func_80B04E44(this);
                } else {
                    func_80B04F4C(this);
                }
            }
            break;
        case 4:
            gDPPipeSync(gfxCtx->polyOpa.p++);
            gDPSetEnvColor(gfxCtx->polyOpa.p++, this->unk_3DD, this->unk_3DE, this->unk_3DF, 0);
            break;
    }
    Graph_CloseDisps(dispRefs, globalCtx->state.gfxCtx, "../z_en_st.c", 2295);
    return 0;
}

void func_80B06EAC(GlobalContext *globalCtx, s32 limbIndex, Gfx **dListP, Vec3s *rot, void* thisx) {
    EnSt* this = THIS;
    func_800628A4(limbIndex, &this->colSph);
}

void EnSt_Draw(Actor *thisx, GlobalContext *globalCtx) {
    EnSt* this = THIS;

    func_80B051E0(this, globalCtx);
    func_80093D18(globalCtx->state.gfxCtx);
    SkelAnime_Draw(globalCtx, this->skelAnime.skeleton, this->skelAnime.limbDrawTbl, func_80B06D88, func_80B06EAC, this);
}
