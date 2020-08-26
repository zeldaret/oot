#include "z_en_bubble.h"

#define FLAGS 0x00000001

#define THIS ((EnBubble*)thisx)

void EnBubble_Init(Actor* thisx, GlobalContext* globalCtx);
void EnBubble_Destroy(Actor* thisx, GlobalContext* globalCtx);
void EnBubble_Update(Actor* thisx, GlobalContext* globalCtx);
void EnBubble_Draw(Actor* thisx, GlobalContext* globalCtx);

void func_809CC9B4(EnBubble* this, GlobalContext* globalCtx);
void func_809CCA60(EnBubble* this, GlobalContext* globalCtx);
void func_809CCAF0(EnBubble* this, GlobalContext* globalCtx);

const ActorInit En_Bubble_InitVars = {
    ACTOR_EN_BUBBLE,
    ACTORTYPE_ENEMY,
    FLAGS,
    OBJECT_BUBBLE,
    sizeof(EnBubble),
    (ActorFunc)EnBubble_Init,
    (ActorFunc)EnBubble_Destroy,
    (ActorFunc)EnBubble_Update,
    (ActorFunc)EnBubble_Draw,
};

ColliderJntSphItemInit D_809CCE30[] = {
    {
        { 0x00, { 0x00000000, 0x00, 0x04 }, { 0xFFCFD753, 0x00, 0x00 }, 0x00, 0x01, 0x01 },
        { 0x00, { { 0x0000, 0x0000, 0x0000 }, 16 }, 100 },
    },
    {
        { 0x00, { 0x00000000, 0x00, 0x00 }, { 0x00002824, 0x00, 0x00 }, 0x00, 0x79, 0x00 },
        { 0x00, { { 0x0000, 0x0000, 0x0000 }, 16 }, 100 },
    },
};

ColliderJntSphInit D_809CCE78 = {
    { COLTYPE_UNK6, 0x11, 0x09, 0x39, 0x10, COLSHAPE_JNTSPH },
    2,
    D_809CCE30,
};

CollisionCheckInfoInit2 D_809CCE88 = {
    0x01, 0x0002, 0x0019, 0x0019, 0xFF,
};

Vec3f D_809CCE94 = { 0.0f, -0.5f, 0.0f };

u32 D_809CCEA0 = 0xFFFFFFFF;

u32 D_809CCEA4 = 0x96969600;

void func_809CBC00(EnBubble* this, f32 arg1) {
    f32 a;
    f32 b;
    f32 c;
    f32 d;

    this->actor.flags |= 1;
    Actor_SetScale(&this->actor, 1.0f);
    this->actor.shape.unk_08 = 16.0f;
    this->unk_210 = 16.0f;
    this->unk_214 = 0.08f;
    this->unk_220 = arg1;
    this->unk_224 = arg1;
    a = Math_Rand_ZeroOne();
    b = Math_Rand_ZeroOne();
    c = Math_Rand_ZeroOne();
    this->unk_218 = 1.0f;
    this->unk_21C = 1.0f;
    d = (a * a) + (b * b) + (c * c);
    this->unk_1FC.x = a / d;
    this->unk_1FC.y = b / d;
    this->unk_1FC.z = c / d;
}

u32 func_809CBCBC(EnBubble* this) {
    ColliderBody* body = &this->colliderSphere.list->body;

    body->toucher.flags = 0x8;
    body->toucher.effect = 0;
    body->toucher.damage = 4;
    body->toucherFlags = 1;
    this->actor.velocity.y = 0.0f;
    return 6;
}

// only called through unused actionFunc
u32 func_809CBCEC(EnBubble* this) {
    func_809CBC00(this, -1.0f);
    return 12;
}

// EnBubble_DamagePlayer ?
void func_809CBD10(EnBubble* this, GlobalContext* globalCtx) {
    u32 damage = -this->colliderSphere.list->body.toucher.damage;

    globalCtx->unk_11D58(globalCtx, damage);
    func_8002F7A0(globalCtx, &this->actor, 6.0f, this->actor.yawTowardsLink, 6.0f);
}

// EnBubble_Explosion
s32 func_809CBD78(EnBubble* this, GlobalContext* globalCtx) {
    u32 i;
    Vec3f sp90;
    Vec3f sp84;
    Vec3f sp78;

    sp90 = D_809CCE94;
    Math_SmoothScaleMaxMinF(&this->unk_220, 4.0f, 0.1f, 1000.0f, 0.0f);
    Math_SmoothScaleMaxMinF(&this->unk_224, 4.0f, 0.1f, 1000.0f, 0.0f);
    Math_SmoothScaleMaxMinF(&this->unk_210, 54.0f, 0.1f, 1000.0f, 0.0f);
    Math_SmoothScaleMaxMinF(&this->unk_214, 0.2f, 0.1f, 1000.0f, 0.0f);
    this->actor.shape.unk_08 = ((this->unk_224 + 1.0f) * 16.0f);

    if (DECR(this->unk_20A) != 0) {
        return -1;
    }
    sp78.x = this->actor.posRot.pos.x;
    sp78.y = this->actor.posRot.pos.y + this->actor.shape.unk_08;
    sp78.z = this->actor.posRot.pos.z;
    for (i = 0; i < 20; i++) {
        sp84.x = (Math_Rand_ZeroOne() - 0.5f) * 7.0f;
        sp84.y = Math_Rand_ZeroOne() * 7.0f;
        sp84.z = (Math_Rand_ZeroOne() - 0.5f) * 7.0f;
        func_80029694(globalCtx, &sp78, &sp84, &sp90, &D_809CCEA0, &D_809CCEA4, Math_Rand_S16Offset(100, 50), 0x19, 0);
    }
    Item_DropCollectibleRandom(globalCtx, NULL, &this->actor.posRot.pos, 0x50);
    this->actor.flags &= ~0x1;
    return Math_Rand_S16Offset(90, 60);
}

// only called in an unused actionFunc
u32 func_809CBFD4(EnBubble* this) {
    if (DECR(this->unk_20A) != 0) {
        return -1;
    }
    return func_809CBCEC(this);
}

// only called in an unused actionFunc
u32 func_809CC020(EnBubble* this) {
    this->unk_220 += 0.083333336f;
    this->unk_224 += 0.083333336f;

    if (DECR(this->unk_20A) != 0) {
        return 0;
    }
    return 1;
}

// EnBubble_SnellsLaw
// ret is unit vector in derection of vec1 reflected over vec2
void func_809CC074(Vec3f* vec1, Vec3f* vec2, Vec3f* ret) {
    f32 norm;

    func_800CB0C0(vec1, vec2, ret); // Snell's Law: Flips vec1 around vec2 into ret
    norm = sqrtf((ret->x * ret->x) + (ret->y * ret->y) + (ret->z * ret->z));
    if (norm != 0.0f) {
        ret->x /= norm;
        ret->y /= norm;
        ret->z /= norm;
    } else {
        ret->x = ret->y = ret->z = 0.0f;
    }
}

// EnBubble_Vec3fNormalize
void func_809CC0FC(Vec3f* vec) {
    f32 norm;

    norm = sqrt((vec->x * vec->x) + (vec->y * vec->y) + (vec->z * vec->z));
    if (norm != 0.0f) {
        vec->x /= norm;
        vec->y /= norm;
        vec->z /= norm;
    } else {
        vec->x = vec->y = vec->z = 0.0f;
    }
}

// EnBubble_Bound
#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Bubble/func_809CC16C.s")
// void func_809CC16C(EnBubble* this, GlobalContext* globalCtx) {
//     CollisionPoly* sp94;
//     u32 pad;
//     Vec3f sp84;
//     Vec3f sp78;
//     Vec3f sp6C;
//     Vec3f collisionNorm;
//     Vec3f sp54;
//     f32 phi_f0;
//     u32 sp4C;
//     u8 sp4B;
//     u8 new_var;

//     new_var = this->colliderSphere.list[1].body.bumperFlags;
//     if (new_var & 0x2) {
//         this->unk_244 = this->colliderSphere.base.ac->velocity;
//         func_809CC0FC(&this->unk_244);
//         this->unk_250.x += (this->unk_244.x * 3.0f);
//         this->unk_250.y += (this->unk_244.y * 3.0f);
//         this->unk_250.z += (this->unk_244.z * 3.0f);
//     }
//     this->unk_25C -= 0.1f;
//     if (this->unk_25C < this->actor.minVelocityY) {
//         this->unk_25C = this->actor.minVelocityY;
//     }
//     sp54.x = this->unk_238.x + this->unk_250.x;
//     sp54.y = this->unk_238.y + this->unk_250.y + this->unk_25C;
//     sp54.z = this->unk_238.z + this->unk_250.z;
//     func_809CC0FC(&sp54);

//     sp78.x = this->actor.posRot.pos.x;
//     sp78.y = this->actor.posRot.pos.y + this->actor.shape.unk_08;
//     sp78.z = this->actor.posRot.pos.z;
//     sp6C = sp78; // ???? delete this?

//     sp6C.x += (sp54.x * 24.0f);
//     sp6C.y += (sp54.y * 24.0f);
//     sp6C.z += (sp54.z * 24.0f);
//     if (func_8003DE84(&globalCtx->colCtx, &sp78, &sp6C, &sp84, &sp94, 1, 1, 1, 0, &sp4C) != 0) {
//         collisionNorm.x = sp94->norm.x * 0.00003051851f;
//         collisionNorm.y = sp94->norm.y * 0.00003051851f;
//         collisionNorm.z = sp94->norm.z * 0.00003051851f;
//         func_809CC074(&sp54, &collisionNorm, &sp54);
//         this->unk_22C = sp54;
//         // ++this->unk_228;
//         sp4B = ++this->unk_228;
//         if (this->unk_228 > (s16)(Math_Rand_ZeroOne() * 10.0f)) {
//             this->unk_228 = 0;
//         }
//         phi_f0 = (sp4B == 0) ? 3.6f : 3.0f;
//         this->unk_250.x = this->unk_250.y = this->unk_250.z = 0.0f;
//         this->unk_238.x = (this->unk_22C.x * phi_f0);
//         this->unk_238.y = (this->unk_22C.y * phi_f0);
//         this->unk_238.z = (this->unk_22C.z * phi_f0);
//         this->unk_25C = 0.0f;
//         Audio_PlayActorSound2(&this->actor, NA_SE_EN_AWA_BOUND);
//         this->unk_210 = 128.0f;
//         this->unk_214 = 0.48f;
//     } else if (this->actor.bgCheckFlags & 0x20 && sp54.y < 0.0f) {
//         collisionNorm.x = collisionNorm.z = 0.0f;
//         collisionNorm.y = 1.0f;
//         func_809CC074(&sp54, &collisionNorm, &sp54);
//         this->unk_22C = sp54;
//         // ++this->unk_228;
//         sp4B = ++this->unk_228;
//         if (this->unk_228 > (s16)(Math_Rand_ZeroOne() * 10.0f)) {
//             this->unk_228 = 0;
//         }
//         phi_f0 = (sp4B == 0) ? 3.6f : 3.0f;
//         this->unk_250.x = this->unk_250.y = this->unk_250.z = 0.0f;
//         this->unk_238.x = (this->unk_22C.x * phi_f0);
//         this->unk_238.y = (this->unk_22C.y * phi_f0);
//         this->unk_238.z = (this->unk_22C.z * phi_f0);
//         this->unk_25C = 0.0f;
//         Audio_PlayActorSound2(&this->actor, NA_SE_EN_AWA_BOUND);
//         this->unk_210 = 128.0f;
//         this->unk_214 = 0.48f;
//     }
//     this->actor.velocity.x = this->unk_238.x + this->unk_250.x;
//     this->actor.velocity.y = this->unk_238.y + this->unk_250.y + this->unk_25C;
//     this->actor.velocity.z = this->unk_238.z + this->unk_250.z;
//     Math_SmoothScaleMaxF(&this->unk_250.x, 0.0f, 0.3f, 0.1f);
//     Math_SmoothScaleMaxF(&this->unk_250.y, 0.0f, 0.3f, 0.1f);
//     Math_SmoothScaleMaxF(&this->unk_250.z, 0.0f, 0.3f, 0.1f);
// }

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Bubble/func_809CC648.s")
// u32 func_809CC648(EnBubble *this) {
//     u32 temp = this->colliderSphere.base.acFlags & 0x2;
//     temp = !!temp;
//     if (!(temp)) {
//         return 0;
//     }
//     else {
//         this->colliderSphere.base.acFlags &= ~0x2;
//         if ((this->colliderSphere.list[1].body.bumperFlags & 0x2)) {
//             this->unk_1F0.x = this->colliderSphere.base.ac->velocity.x / 10.0f;
//             this->unk_1F0.y = this->colliderSphere.base.ac->velocity.y / 10.0f;
//             this->unk_1F0.z = this->colliderSphere.base.ac->velocity.z / 10.0f;
//             this->unk_210 = 128.0f;
//             this->unk_214 = 0.48f;
//             return 0;
//         }
//         this->unk_208 = 8;
//         return 1;
//     }
// }

// EnBubble_DetectCollision ? return 1 means going to pop
u32 func_809CC6E4(EnBubble* this, GlobalContext* globalCtx) {
    if (DECR(this->unk_208) != 0 || this->actionFunc == func_809CCA60) {
        return 0;
    }
    if (this->colliderSphere.base.maskB & 0x1) {
        this->colliderSphere.base.maskB &= ~0x1;
        func_809CBD10(this, globalCtx);
        this->unk_208 = 8;
        return 1;
    }
    return func_809CC648(this);
}

void func_809CC774(EnBubble* this) {
    ColliderJntSphItemDim* dim;
    Vec3f src;
    Vec3f dest;

    dim = &this->colliderSphere.list[0].dim;
    src.x = dim->modelSphere.center.x;
    src.y = dim->modelSphere.center.y;
    src.z = dim->modelSphere.center.z;

    Matrix_MultVec3f(&src, &dest);
    dim->worldSphere.center.x = dest.x;
    dim->worldSphere.center.y = dest.y;
    dim->worldSphere.center.z = dest.z;
    dim->worldSphere.radius = dim->modelSphere.radius * (1.0f + this->unk_220);
    this->colliderSphere.list[1].dim = *dim;
}

void EnBubble_Init(Actor* thisx, GlobalContext* globalCtx) {
    EnBubble* this = THIS;
    u32 pad;

    ActorShape_Init(&this->actor.shape, 16.0f, ActorShadow_DrawFunc_Circle, 0.2f);
    Collider_InitJntSph(globalCtx, &this->colliderSphere);
    Collider_SetJntSph(globalCtx, &this->colliderSphere, &this->actor, &D_809CCE78, this->colliderSphereItems);
    func_80061EFC(&this->actor.colChkInfo, DamageTable_Get(9), &D_809CCE88);
    this->actor.naviEnemyId = 0x16;
    this->unk_22C.x = Math_Rand_ZeroOne();
    this->unk_22C.y = Math_Rand_ZeroOne();
    this->unk_22C.z = Math_Rand_ZeroOne();
    func_809CC0FC(&this->unk_22C);
    this->unk_238.x = this->unk_22C.x * 3.0f;
    this->unk_238.y = this->unk_22C.y * 3.0f;
    this->unk_238.z = this->unk_22C.z * 3.0f;
    func_809CBC00(this, 0.0f);
    this->actionFunc = func_809CC9B4;
}

void EnBubble_Destroy(Actor* thisx, GlobalContext* globalCtx) {
    EnBubble* this = THIS;

    Collider_DestroyJntSph(globalCtx, &this->colliderSphere);
}

void func_809CC9B4(EnBubble* this, GlobalContext* globalCtx) {
    if (func_809CC6E4(this, globalCtx) != 0) {
        this->unk_20A = func_809CBCBC(this);
        this->actionFunc = func_809CCA60;
    } else {
        func_809CC16C(this, globalCtx);
        this->actor.shape.unk_08 = ((this->unk_224 + 1.0f) * 16.0f);
        CollisionCheck_SetAC(globalCtx, &globalCtx->colChkCtx, &this->colliderSphere.base);
        CollisionCheck_SetOC(globalCtx, &globalCtx->colChkCtx, &this->colliderSphere.base);
    }
}

// EnBubble_Pop
void func_809CCA60(EnBubble* this, GlobalContext* globalCtx) {
    if (func_809CBD78(this, globalCtx) >= 0) {
        Audio_PlaySoundAtPosition(globalCtx, &this->actor.posRot.pos, 60, NA_SE_EN_AWA_BREAK);
        Actor_Kill(&this->actor);
    }
}

// actionFunc, never used?
void func_809CCAA8(EnBubble* this, GlobalContext* globalCtx) {
    s32 temp_v0;

    temp_v0 = func_809CBFD4(this);
    if (temp_v0 >= 0) {
        this->actor.shape.shadowDrawFunc = ActorShadow_DrawFunc_Circle;
        this->unk_20A = temp_v0;
        this->actionFunc = func_809CCAF0;
    }
}

// actionFunc, never used?
void func_809CCAF0(EnBubble* this, GlobalContext* globalCtx) {
    if (func_809CC020(this) != 0) {
        this->actionFunc = func_809CC9B4;
    }
    CollisionCheck_SetAC(globalCtx, &globalCtx->colChkCtx, &this->colliderSphere.base);
    CollisionCheck_SetOC(globalCtx, &globalCtx->colChkCtx, &this->colliderSphere.base);
}

void EnBubble_Update(Actor* thisx, GlobalContext* globalCtx) {
    EnBubble* this = THIS;

    func_8002D7EC(&this->actor);
    func_8002E4B4(globalCtx, &this->actor, 16.0f, 16.0f, 0.0f, 7);
    this->actionFunc(this, globalCtx);
    Actor_SetHeight(&this->actor, this->actor.shape.unk_08);
}

void EnBubble_Draw(Actor* thisx, GlobalContext* globalCtx) {
    EnBubble* this = THIS;
    u32 pad;
    GraphicsContext* gfxCtx;
    Gfx* dispRefs[4];

    gfxCtx = globalCtx->state.gfxCtx;
    Graph_OpenDisps(dispRefs, globalCtx->state.gfxCtx, "../z_en_bubble.c", 1175);
    if (this->actionFunc != func_809CCAA8) {
        func_80093D84(globalCtx->state.gfxCtx);
        Math_SmoothScaleMaxMinF(&this->unk_210, 16.0f, 0.2f, 1000.0f, 0.0f);
        Math_SmoothScaleMaxMinF(&this->unk_214, 0.08f, 0.2f, 1000.0f, 0.0f);
        func_800D1FD4(&globalCtx->mf_11DA0);

        Matrix_Scale(this->unk_220 + 1.0f, this->unk_224 + 1.0f, 1.0f, MTXMODE_APPLY);
        Matrix_RotateZ(((f32)globalCtx->state.frames * 0.017453292f) * this->unk_210, MTXMODE_APPLY);
        Matrix_Scale(this->unk_214 + 1.0f, 1.0f, 1.0f, MTXMODE_APPLY);
        Matrix_RotateZ((-(f32)globalCtx->state.frames * 0.017453292f) * this->unk_210, MTXMODE_APPLY);

        gSPMatrix(gfxCtx->polyXlu.p++, Matrix_NewMtx(globalCtx->state.gfxCtx, "../z_en_bubble.c", 1220),
                  G_MTX_NOPUSH | G_MTX_LOAD | G_MTX_MODELVIEW);
        gSPDisplayList(gfxCtx->polyXlu.p++, D_06001000);
    }
    Graph_CloseDisps(dispRefs, globalCtx->state.gfxCtx, "../z_en_bubble.c", 1226);
    if (this->actionFunc != func_809CCAA8) {
        this->actor.shape.unk_10 = (f32)((this->unk_220 + 1.0f) * 0.2f);
        func_809CC774(this);
    }
}
