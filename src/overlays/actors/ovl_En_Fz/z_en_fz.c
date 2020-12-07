#include "z_en_fz.h"

#define FLAGS 0x00000415

#define THIS ((EnFz*)thisx)

void EnFz_Init(Actor* thisx, GlobalContext* globalCtx);
void EnFz_Destroy(Actor* thisx, GlobalContext* globalCtx);
void EnFz_Update(Actor* thisx, GlobalContext* globalCtx);
void EnFz_Draw(Actor* thisx, GlobalContext* globalCtx);

void func_80A1FF8C(EnFz* this, GlobalContext* globalCtx);
s32 func_80A200B0(EnFz *this, Vec3f* vec);

void func_80A202F4(EnFz* this);
void func_80A202FC(EnFz* this);
void func_80A203DC(EnFz* this);


void func_80A204A0(EnFz* this, GlobalContext* globalCtx);
void func_80A20704(EnFz* this);


void func_80A20100(EnFz* this, GlobalContext* globalCtx, Vec3f* vec, s32 unk_int, f32 unk_float);

void func_80A20774(EnFz* this, GlobalContext* globalCtx);
void func_80A207F4(EnFz* this);
void func_80A20830(EnFz* this, GlobalContext* globalCtx);
void func_80A20880(EnFz* this);
void func_80A208A8(EnFz* this, GlobalContext* globalCtx);
void func_80A20938(EnFz* this);
void func_80A20978(EnFz* this, GlobalContext* globalCtx);
void func_80A209B4(EnFz* this);
void func_80A209E4(EnFz* this, GlobalContext* globalCtx);
void func_80A20A20(EnFz* this);
void func_80A20A4C(EnFz* this, GlobalContext* globalCtx);
void func_80A20A88(EnFz* this, GlobalContext* globalCtx);
void func_80A20AC0(EnFz* this, GlobalContext* globalCtx);

void func_80A20748(EnFz* this);

void func_80A20CAC(EnFz* this, GlobalContext* globalCtx);
void func_80A20D4C(EnFz* this, GlobalContext* globalCtx);



void func_80A20D7C(EnFz* this);
void func_80A20DBC(EnFz* this, GlobalContext* globalCtx);
void func_80A20E84(EnFz* this);
void func_80A20EC4(EnFz* this, GlobalContext* globalCtx);


void func_80A2145C(EnFz* this, Vec3f* vec1, Vec3f* vec2, Vec3f* vec3, f32 randomNumber);
void func_80A215BC(EnFz* this, GlobalContext* globalCtx);

void func_80A21500(EnFz* this, Vec3f* vec1, Vec3f *vec2, Vec3f *vec3, f32 unk_float1, f32 unk_float2, s32 unk_val, s32 unk_condition);
void func_80A218A8(EnFz* this, GlobalContext* globalCtx);




extern UNK_TYPE D_060030A0;
extern UNK_TYPE D_060030A8;
extern UNK_TYPE D_06003158;
extern UNK_TYPE D_06003160;

const ActorInit En_Fz_InitVars = {
    ACTOR_EN_FZ,
    ACTORTYPE_ENEMY,
    FLAGS,
    OBJECT_FZ,
    sizeof(EnFz), 
    (ActorFunc)EnFz_Init,
    (ActorFunc)EnFz_Destroy,
    (ActorFunc)EnFz_Update,
    (ActorFunc)EnFz_Draw,
};

// static ColliderCylinderInit_Set3 sCylinderInit1 =
ColliderCylinderInit_Set3 D_80A21B90 = {
    { COLTYPE_UNK10, 0x11, 0x09, 0x39, COLSHAPE_CYLINDER },
    { 0x00, { 0xFFCFFFFF, 0x00, 0x00 }, { 0xFFCE0FDB, 0x00, 0x00 }, 0x01, 0x05, 0x01 },
    { 30, 80, 0, { 0, 0, 0 } },
};

// static ColliderCylinderInit_Set3 sCylinderInit2 =
ColliderCylinderInit_Set3 D_80A21BBC = {
    { COLTYPE_METAL_SHIELD, 0x00, 0x0D, 0x00, COLSHAPE_CYLINDER },
    { 0x00, { 0xFFCFFFFF, 0x00, 0x00 }, { 0x0001F024, 0x00, 0x00 }, 0x00, 0x01, 0x00 },
    { 35, 80, 0, { 0, 0, 0 } },
};

// static ColliderCylinderInit_Set3 sCylinderInit3 = {
ColliderCylinderInit_Set3 D_80A21BE8 = {
    { COLTYPE_UNK10, 0x11, 0x00, 0x00, COLSHAPE_CYLINDER },
    { 0x00, { 0x20000000, 0x02, 0x08 }, { 0x00000000, 0x00, 0x00 }, 0x01, 0x00, 0x00 },
    { 20, 30, -15, { 0, 0, 0 } },
};

// static DamageTable sDamageTable = {
DamageTable D_80A21C14 = { 0x00, 0xF0, 0xF0, 0xF2, 0xF0, 0xF0, 0xF2, 0xF2, 0xF0, 0xF2, 0xF4,
                           0x24, 0xF0, 0xF0, 0xF0, 0xF0, 0xF0, 0x24, 0x00, 0x00, 0x00, 0x00,
                           0xF0, 0xF4, 0xF2, 0xF0, 0xF8, 0xF4, 0x00, 0x00, 0x00, 0x00 };

// sInitChain
InitChainEntry D_80A21C34[] = {
    ICHAIN_S8(naviEnemyId, 59, ICHAIN_CONTINUE),
    ICHAIN_U8(unk_1F, 2, ICHAIN_CONTINUE),
    ICHAIN_F32(unk_4C, 30, ICHAIN_STOP),
};

EnFzUnkFunc D_80A21C40[] = {
    func_80A202F4,
    func_80A202FC,
    func_80A203DC,
    func_80A203DC,
};

// Graphics Data
u32 D_80A21C50[] = { 0x06001130, 0x060021A0, 0x06002CA0, 0x00000000 };


#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Fz/EnFz_Init.s")

// void EnFz_Init(Actor* thisx, GlobalContext *globalCtx) {

//     EnFz* this = THIS;

//     s32 mass;

//     Actor_ProcessInitChain(&this->actor, &D_80A21C34);

//     this->actor.colChkInfo.damageTable = &D_80A21C14;
//     this->actor.colChkInfo.health = 6;

//     Collider_InitCylinder(globalCtx, &this->collider1);
//     Collider_SetCylinder_Set3(globalCtx, &this->collider1, &this->actor, &D_80A21B90);

//     Collider_InitCylinder(globalCtx,  &this->collider2);
//     Collider_SetCylinder_Set3(globalCtx, &this->collider2, &this->actor, &D_80A21BBC);

//     Collider_InitCylinder(globalCtx,  &this->collider3);
//     Collider_SetCylinder_Set3(globalCtx, &this->collider3, &this->actor,  &D_80A21BE8);
//     mass = (s32) 0xFF;
//     Actor_SetScale(&this->actor, 0.008f);

//     // temp_f0 = this->actor.posRot.pos.y;
//     this->actor.colChkInfo.mass = mass;

//     this->actor.flags = this->actor.flags & ~1;

//     this->unk_242 = 0;
//     this->unk_249 = 0;
//     this->unk_246 = 1;
//     this->unk_247 = 0;
//     this->unk_248 = 0;
//     this->unk_261 = 1;
//     this->unk_262 = 0;

//     this->actor.speedXZ = 0.0f;
//     this->actor.gravity = 0.0f;
//     this->actor.velocity.y = 0.0f;

//     this->unk_234.y = this->actor.posRot.pos.y;
//     this->unk_24C = this->actor.posRot.pos.y;

//     this->unk_234.x = this->actor.posRot.pos.x;
//     this->unk_234.z = this->actor.posRot.pos.z;

//     this->unk_250 = 135.0f;

//     if ((s32) this->actor.params < 0) {
//         this->unk_258 = 0;
//         this->actor.scale.y = 0.0f;
//         func_80A207F4(this);

//     } else {
//         this->unk_258 = mass;
//         func_80A20E84(this);
//     }

//     func_80A1FF8C(this, globalCtx);

// }


// #pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Fz/EnFz_Destroy.s")
void EnFz_Destroy(Actor* thisx, GlobalContext *globalCtx) {
    EnFz* this = THIS;
    Collider_DestroyCylinder(globalCtx, &this->collider1);
    Collider_DestroyCylinder(globalCtx, &this->collider2);
    Collider_DestroyCylinder(globalCtx, &this->collider3);
}

// #pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Fz/func_80A1FF8C.s")
void func_80A1FF8C(EnFz *this, GlobalContext *globalCtx) {
    Vec3f vec1; // 5C, 60, 64
    Vec3f vec2; // 50, 54, 58
    Vec3f vec3; // 44, 48, 4C
    u32 bgId;
    CollisionPoly* poly;

    vec1.x = this->actor.posRot.pos.x;
    vec1.y = this->actor.posRot.pos.y + 20.0f;
    vec1.z = this->actor.posRot.pos.z;
    Matrix_Translate(vec1.x, vec1.y, vec1.z, MTXMODE_NEW);
    Matrix_RotateRPY(this->actor.shape.rot.x, this->actor.shape.rot.y, this->actor.shape.rot.z, MTXMODE_APPLY);


    vec3.y = 0.0f;
    vec3.x = 0.0f;
    vec3.z = 220.0f;
    Matrix_MultVec3f(&vec3, &this->unk_264);
    if (func_8003DE84(&globalCtx->colCtx, &vec1, &this->unk_264, &vec2, &poly, 1, 0, 0, 1, &bgId)) {
        Math_Vec3f_Copy(&this->unk_264, &vec2);
    }
    vec1.x = this->actor.posRot.pos.x - this->unk_264.x;
    vec1.z = this->actor.posRot.pos.z - this->unk_264.z;
    this->unk_270 = SQ(vec1.x) + SQ(vec1.z);
}


// #pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Fz/func_80A200B0.s")
s32 func_80A200B0(EnFz *this, Vec3f* vec) {
    f32 x_dist;
    f32 z_dist;

    x_dist = this->actor.posRot.pos.x - vec->x;
    z_dist = this->actor.posRot.pos.z - vec->z;

    if (this->unk_270 <= (SQ(x_dist) + SQ(z_dist))) {
        return true;
    }
    return false;
}


#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Fz/func_80A20100.s")
// void func_80A20100(EnFz *this, GlobalContext *globalCtx, Vec3f *vec, s32 unk_int, f32 unk_float) {
//     f32 spB0;
//     f32 spAC;
//     f32 spA8;
//     f32 spA4;
//     f32 spA0;
//     f32 sp9C;
//     f32 sp98;
//     f32 sp94;
//     f32 sp90;
//     s8 sp8F;
//     s8 sp8E;
//     s8 sp8D;
//     s8 sp8C;
//     s8 sp8A;
//     s8 sp89;
//     s8 sp88;
//     f32 *temp_s4;
//     f32 *temp_s5;
//     f32 temp_f24;
//     s32 temp_s0;
//     s32 temp_s1;
//     s32 phi_s0;

//     sp8C = 0x9B;
//     sp8D = 0xFF;
//     sp8E = 0xFF;
//     sp8F = 0xFF;
//     sp88 = 0xC8;
//     sp89 = 0xC8;
//     sp8A = 0xC8;
//     sp98 = 0.0f;
//     sp90 = 0.0f;
//     sp94 = -1.0f;
//     if (unk_int > 0) {
//         temp_s5 = &sp9C;
//         temp_s4 = &spA8;
//         phi_s0 = 0;
// loop_2:
//         temp_f24 = Math_Rand_CenteredFloat(0.3f) + 0.6f;
//         temp_s1 = (s32) Math_Rand_CenteredFloat(5.0f) + 0xC;
//         spA8 = Math_Rand_CenteredFloat(unk_float) + vec->x;
//         spAC = Math_Rand_ZeroFloat(unk_float) + vec->y;
//         spB0 = Math_Rand_CenteredFloat(unk_float) + vec->z;
//         sp9C = Math_Rand_CenteredFloat(10.0f);
//         spA0 = Math_Rand_ZeroFloat(10.0f) + 2.0f;
//         spA4 = Math_Rand_CenteredFloat(10.0f);
//         EffectSsEnIce_Spawn(globalCtx, (Vec3f *) temp_s4, temp_f24, (Vec3f *) temp_s5, &sp90, &sp8C, &sp88, temp_s1);
//         temp_s0 = phi_s0 + 1;
//         phi_s0 = temp_s0;
//         if (temp_s0 != unk_int) {
//             goto loop_2;
//         }
//     }
//     func_80062CD4(globalCtx, vec);
// }



void func_80A202F4(EnFz* this) {
}

// #pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Fz/func_80A202FC.s")
void func_80A202FC(EnFz *this) {
    Vec3f vec1; // 44, 48, 4C
    Vec3f vec2; // 38, 3C, 40 
    Vec3f vec3; // 2C, 30, 34

    if ((this->unk_240 & 0xF) == 0) {
        vec1.x = Math_Rand_CenteredFloat(40.0f) + this->actor.posRot.pos.x;
        vec1.y = Math_Rand_CenteredFloat(40.0f) + this->actor.posRot.pos.y + 30.0f;
        vec1.z = Math_Rand_CenteredFloat(40.0f) + this->actor.posRot.pos.z;
        vec3.z = 0.0f;
        vec3.x = 0.0f;
        vec2.z = 0.0f;
        vec2.y = 0.0f;
        vec2.x = 0.0f;
        vec3.y = 0.1f;
        func_80A2145C(this, &vec1, &vec2, &vec3, Math_Rand_ZeroFloat(7.5f) + 15.0f);
    }
}


// #pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Fz/func_80A203DC.s")
void func_80A203DC(EnFz *this) {
    Vec3f vec1; // 44, 48, 4C
    Vec3f vec2; // 38, 3C, 40
    Vec3f vec3; // 2C, 30, 34

    if ((this->unk_240 & 3) == 0) {
        vec1.x = Math_Rand_CenteredFloat(40.0f) + this->actor.posRot.pos.x;
        vec1.y = this->unk_24C;
        vec1.z = Math_Rand_CenteredFloat(40.0f) + this->actor.posRot.pos.z;
        vec3.z = 0.0f;
        vec3.x = 0.0f;
        vec2.z = 0.0f;
        vec2.y = 0.0f;
        vec2.x = 0.0f;
        vec3.y = 0.1f;
        func_80A2145C(this, &vec1, &vec2, &vec3, Math_Rand_ZeroFloat(7.5f) + 15.0f);
    }
}



#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Fz/func_80A204A0.s")
// void func_80A204A0(EnFz *this, GlobalContext *globalCtx) {
//     Vec3f vec; // 34, 38, 3C 

//     if (this->unk_247) {
//         if ((this->actor.bgCheckFlags & 8) == 0) {
//             if (func_800339B8(&this->actor, globalCtx, 60.0f, this->actor.posRot.rot.y) == 0) {
//                 block_4:
//                 this->actor.bgCheckFlags &= ~8;
//                 this->unk_247 = 0;
//                 this->unk_254 = 0.0f;
//                 this->actor.speedXZ = 0.0f;
//             }
//         } else {
//             goto block_4;
//         }
//     }


//     if (this->unk_248) {
//         if ((this->actor.params < 0) && (this->collider1.base.atFlags & 2)) {
//             this->unk_247 = 0;
//             this->unk_254 = 0.0f;
//             this->collider1.base.acFlags &= ~2;
//             this->actor.speedXZ = 0.0f;
//             this->unk_244 = 0xA;
//             func_80A20748(this);
//         }

//         else if (this->collider2.base.acFlags & 0x80) {
//             this->collider2.base.acFlags &= ~8; 
//             this->collider1.base.acFlags &= ~2;
//         }


//         else if (this->collider1.base.acFlags & 2) {
//             this->collider1.base.acFlags &= ~2;
            
//             if (this->actor.colChkInfo.damageEffect != 2) {
//                 if (this->actor.colChkInfo.damageEffect == 0xF) {
//                     Actor_ApplyDamage(&this->actor);
//                     func_8003426C(&this->actor, 0x4000, 0xFF, 0x2000, 8);
//                     if (this->actor.colChkInfo.health == 0) {
//                         Audio_PlayActorSound2(&this->actor, NA_SE_EN_FREEZAD_DEAD);
//                         vec.x = this->actor.posRot.pos.x;
//                         vec.y = this->actor.posRot.pos.y;
//                         vec.z = this->actor.posRot.pos.z;
//                         func_80A20100(this, globalCtx, &vec, 0x1E, 10.0f);
//                         func_80A20CAC(this, globalCtx);
//                         Audio_PlayActorSound2(&this->actor, NA_SE_EV_ICE_BROKEN);
//                     }
//                     else {
//                         Audio_PlayActorSound2(&this->actor, NA_SE_EN_FREEZAD_DAMAGE);
//                         vec.x = this->actor.posRot.pos.x;
//                         vec.y = this->actor.posRot.pos.y;
//                         vec.z = this->actor.posRot.pos.z;
//                         func_80A20100(this, globalCtx, &vec, 0xA, 0.0f);
//                         this->unk_249++;
//                     }
//                 }
//             } 
//             else {
//                 Actor_ApplyDamage(&this->actor);
//                 func_8003426C(&this->actor, 0x4000, 0xFF, 0x2000, 8);
//                 if (this->actor.colChkInfo.health == 0) {
//                     Audio_PlayActorSound2(&this->actor, NA_SE_EN_FREEZAD_DEAD);
//                     func_80A20D7C(this);
//                 }
//                 else {
//                     Audio_PlayActorSound2(&this->actor, NA_SE_EN_FREEZAD_DAMAGE);
//                 }
//             }
//         }
//     }
// }


// #pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Fz/func_80A20704.s")
void func_80A20704(EnFz* this) {
    Math_SmoothScaleMaxMinS(&this->actor.shape.rot.y, this->actor.yawTowardsLink, 0xA, 0x7D0, 0);
    this->actor.posRot.rot.y = this->actor.shape.rot.y;
}

// #pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Fz/func_80A20748.s")
void func_80A20748(EnFz *this) {
    this->unk_260 = 2;
    this->unk_248 = 0;
    this->actor.flags &= ~1;
    this->actionFunc = func_80A20774;
}

// #pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Fz/func_80A20774.s")
void func_80A20774(EnFz *this, GlobalContext *globalCtx) { 

    this->unk_258 -= 0x10;
    if (this->unk_258 >= 0x100) {
        this->unk_258 = 0;
    }
    if (Math_SmoothScaleMaxMinF(&this->actor.scale.y, 0.0f, 1.0f, 0.0005f, 0) == 0.0f) {
        func_80A207F4(this);
    }
}



// #pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Fz/func_80A207F4.s")
void func_80A207F4(EnFz* this) {
    this->unk_260 = 0;
    this->unk_25E = 0;
    this->unk_25C = 0;
    this->unk_244 = 0x64;
    this->actionFunc = func_80A20830;
    this->actor.posRot.pos.x = this->unk_234.x;
    this->actor.posRot.pos.y = this->unk_234.y;
    this->actor.posRot.pos.z = this->unk_234.z;
}

// #pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Fz/func_80A20830.s")
void func_80A20830(EnFz* this, GlobalContext* globalCtx) {
    if ((this->unk_244 == 0) && (this->actor.xzDistFromLink < 400.0f)) {
        func_80A20880(this);
    }
}

// #pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Fz/func_80A20880.s")
void func_80A20880(EnFz* this) {
    this->unk_260 = 2;
    this->unk_244 = 0x14;
    this->unk_25E = 0xFA0;
    this->actionFunc = func_80A208A8;
}

// #pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Fz/func_80A208A8.s")
void func_80A208A8(EnFz* this, GlobalContext* globalCtx) {

    if (this->unk_244 == 0) {
        this->unk_258 += 8;
        if (this->unk_258 >= 0x100) {
            this->unk_258 = 0xFF;
        }
        if (Math_SmoothScaleMaxMinF(&this->actor.scale.y, 0.008f, 1.0f, 0.0005f, 0.0f) == 0.0f) {
            func_80A20938(this);
        }
    }
}

// #pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Fz/func_80A20938.s")
void func_80A20938(EnFz* this) {
    this->unk_260 = 1;
    this->unk_244 = 0x28;
    this->unk_246 = 1;
    this->unk_248 = 1;

    this->actor.flags |= 1;
    this->actionFunc = func_80A20978;
    this->actor.gravity = -1.0f;
}

// #pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Fz/func_80A20978.s")
void func_80A20978(EnFz* this, GlobalContext* globalCtx) {
    func_80A20704(this);
    if (this->unk_244 == 0) {
        func_80A209B4(this);
    }
}

// #pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Fz/func_80A209B4.s")
void func_80A209B4(EnFz* this) {
    this->unk_260 = 1;
    this->unk_247 = 1;
    this->unk_244 = 0x64;
    this->actionFunc = func_80A209E4;
    this->unk_254 = 4.0f;
}

// #pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Fz/func_80A209E4.s")
void func_80A209E4(EnFz* this, GlobalContext* globalCtx) {
    if ((this->unk_244 == 0) || (this->unk_247 == 0)) {
        func_80A20A20(this);
    }
}

// #pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Fz/func_80A20A20.s")
void func_80A20A20(EnFz* this) {
    this->unk_260 = 1;
    this->unk_244 = 0x28;
    this->actionFunc = func_80A20A4C;
    this->unk_254 = 0.0f;
    this->actor.speedXZ = 0.0f;
}

// #pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Fz/func_80A20A4C.s")
void func_80A20A4C(EnFz* this, GlobalContext* globalCtx) {
    func_80A20704(this);
    if (this->unk_244 == 0) {
        func_80A20A88(this, globalCtx);
    }
}

// #pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Fz/func_80A20A88.s")
void func_80A20A88(EnFz* this, GlobalContext* globalCtx) {
    this->unk_260 = 1;
    this->unk_244 = 0x50;
    this->actionFunc = func_80A20AC0;
    func_80A1FF8C(this, globalCtx);
}

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Fz/func_80A20AC0.s")
// void func_80A20AC0(EnFz *this, GlobalContext *globalCtx) {
//     Vec3f vec1; // 5C, 60, 64
//     Vec3f vec2; // 50, 54, 58
//     Vec3f vec3; // 44, 48, 4C
//     Vec3f vec4; // 38, 3C, 40
//     s32 isUnk;
//     s16 unk_val;

//     if (this->unk_244 == 0) {
//         func_80A20748(this);
//     }

//     else if (this->unk_244 >= 0xB) {

//         isUnk = false;
//         unk_val = 0x96;
//         func_8002F974(&this->actor, 0x31A4); // sfx.h

//         if ((this->unk_244 - 0xA) < 0x10) {
//             unk_val = (this->unk_244 * 0xA) - 0x64;
//         }

//         vec4.z = 0.0f;
//         vec4.x = 0.0f;
//         vec4.y = 0.6f;

//         vec2.x = this->actor.posRot.pos.x;
//         vec2.y = this->actor.posRot.pos.y + 20.0f;
//         vec2.z = this->actor.posRot.pos.z;

//         Matrix_RotateY((this->actor.shape.rot.y / 32768.0f) * M_PI, MTXMODE_NEW);

//         vec1.y = -2.0f;
//         vec1.x = 0.0f;
//         vec1.z = 20.0f;

//         Matrix_MultVec3f(&vec1, &vec3);
//         if ((this->unk_244 & 7) == 0) {
//             isUnk = true;
//         }


//         func_80A21500(this, &vec2, &vec3, &vec4, 2.0f, 25.0f, unk_val, isUnk);

//         vec2.x += (vec3.x * 0.5f);
//         vec2.y += (vec3.y * 0.5f);
//         vec2.z += (vec3.z * 0.5f);

//         func_80A21500(this, &vec2, &vec3, &vec4, 2.0f, 25.0f, unk_val, false);
//     }
// }


// #pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Fz/func_80A20CAC.s")
void func_80A20CAC(EnFz *this, GlobalContext *globalCtx) {
    this->unk_260 = 0;
    this->unk_246 = 1;
    this->unk_248 = 0;
    this->unk_262 = 1;
    this->actor.flags &= ~1;
    this->unk_261 = 0;
    this->unk_244 = 0x3C;
    this->unk_254 = 0.0f;
    this->actor.gravity = 0.0f;
    this->actor.velocity.y = 0.0f;
    this->actor.speedXZ = 0.0f;
    Actor_ChangeType(globalCtx, &globalCtx->actorCtx, &this->actor, (u8)6U);
    Item_DropCollectibleRandom(globalCtx, &this->actor, &this->actor.posRot, 0x60);
    this->actionFunc = func_80A20D4C;
}


// #pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Fz/func_80A20D4C.s")
void func_80A20D4C(EnFz *this, GlobalContext *globalCtx) {
    if (this->unk_244 == 0) {
        Actor_Kill(&this->actor);
    }
}


// #pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Fz/func_80A20D7C.s")
void func_80A20D7C(EnFz *this) {
    this->unk_260 = 3;
    this->unk_248 = 0;
    this->unk_262 = 1;
    this->actor.flags &= ~1;
    this->actionFunc = func_80A20DBC;
    this->actor.speedXZ = 0.0f;
    this->unk_254 = 0.0f;
}


// #pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Fz/func_80A20DBC.s")
void func_80A20DBC(EnFz *this, GlobalContext *globalCtx) {
    u32 temp_t7;

    Math_ApproxF(&this->actor.scale.y, 0.0006f, 0.0002f);
    
    if (this->actor.scale.y < 0.006f) {
        this->actor.scale.x += 0.0004f;
        this->actor.scale.z += 0.0004f;
    }

    if (this->actor.scale.y < 0.004f) {
        this->unk_258 -= 8;
        if (this->unk_258 >= 0x100) {
            this->unk_258 = 0;
        }
    }

    if (this->unk_258 == 0) {
        func_80A20CAC(this, globalCtx);
    }
}


// #pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Fz/func_80A20E84.s")
void func_80A20E84(EnFz *this) {
    this->unk_260 = 1;
    this->unk_244 = 0x28;
    this->unk_246 = 1;
    this->unk_248 = 1;
    this->actor.flags |= 1;
    this->actionFunc = func_80A20EC4;
    this->actor.gravity = -1.0f;
}


#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Fz/func_80A20EC4.s")
// void func_80A20EC4(EnFz *this, GlobalContext *globalCtx) {
//     Vec3f vec1; // 5C, 60, 64
//     Vec3f vec2; // 50, 54, 58
//     Vec3f vec3; // 44, 48, 4C
//     Vec3f vec4; // 38, 3C, 40
//     u8 sp37;
//     s16 sp34;
//     f32 temp_f12;
//     s32 temp_v0;

//     if ((this->unk_240 & 0xC0) != 0) {
//         func_80A20704(this);
//         func_80A1FF8C(this, globalCtx);
//     }
//     else {
//         sp37 = 0;
//         sp34 = 0x96; 
//         func_8002F974(&this->actor, 0x31A4); // sfx.h
//         temp_v0 = this->unk_240 & 0x3F;
//         if (temp_v0 >= 0x30) {
//             sp34 = 0x276 - (temp_v0 * 0xA);
//         }
//         vec4.z = 0.0f;
//         vec4.x = 0.0f;
//         vec4.y = 0.6f;
//         vec2.x = this->actor.posRot.pos.x;
//         vec2.y = this->actor.posRot.pos.y + 20.0f;
//         vec2.z = this->actor.posRot.pos.z;
//         Matrix_RotateY(((f32) this->actor.shape.rot.y / 32768.0f) * 3.1415927f, MTXMODE_NEW);
//         vec1.y = -2.0f;
//         vec1.x = 0.0f;
//         vec1.z = 20.0f;
//         Matrix_MultVec3f(&vec1, &vec3);
//         if ((this->unk_240 & 7) == 0) {
//             sp37 = 1;
//         }
//         func_80A21500(this, &vec2, &vec3, &vec4, 2.0f, 25.0f, (?32) sp34, (?32) sp37);
//         temp_f12 = vec2.x;
//         vec2.x += (vec3.x * 0.5f);
//         vec2.y += (vec3.y * 0.5f);
//         vec2.z += (vec3.z * 0.5f);
//         func_80A21500(temp_f12, vec3.y, this, &vec2, &vec3, &vec4, 2.0f, 25.0f, (?32) sp34, 0);
//     }
// }



// #pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Fz/EnFz_Update.s")
void EnFz_Update(Actor* thisx, GlobalContext *globalCtx) {

    EnFz* this = THIS;
    CollisionCheckContext* colChkCtx;

    this->unk_240++;

    if (this->unk_242) {
        this->unk_242--;
    }

    if (this->unk_244) {
        this->unk_244--;
    }

    if (this->unk_263) {
        this->unk_263--;
    }

    Actor_SetHeight(&this->actor, 50.0f);
    func_80A204A0(this, globalCtx);
    this->actionFunc(this, globalCtx);


    if (this->unk_262 == 0) {
        Collider_CylinderUpdate(&this->actor, &this->collider1);
        Collider_CylinderUpdate(&this->actor, &this->collider2);

        if (this->unk_248) {
            if (this->actor.dmgEffectTimer == 0) {
                colChkCtx = &globalCtx->colChkCtx;
                CollisionCheck_SetAC(globalCtx, colChkCtx, &this->collider1);
                CollisionCheck_SetAC(globalCtx, colChkCtx, &this->collider2);
            }

            CollisionCheck_SetOC(globalCtx, &globalCtx->colChkCtx, &this->collider1);
        }
    }

    Math_ApproxF(&this->actor.speedXZ, this->unk_254, 0.2f); // (f32) (s32). Pointer? Struct?
    Actor_MoveForward(&this->actor);

    if (this->unk_246) {
        func_8002E4B4(globalCtx, &this->actor, 20.0f, 20.0f, 20.0f, 5);
    }

    D_80A21C40[this->unk_260](this);
    func_80A215BC(this, globalCtx);
}




#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Fz/EnFz_Draw.s")
// void EnFz_Draw(Actor* thisx, GlobalContext *globalCtx) {

//     EnFz* this = THIS;

//     s32 index;

//     index = (s32) (6 - this->actor.colChkInfo.health) >> 1;

//     OPEN_DISPS(globalCtx->state.gfxCtx, "../z_en_fz.c", 1167);

//     if (this->actor.colChkInfo.health == 0) {
//         index = 2;
//     }

//     // POLY_XLU_DISP

//     if (this->unk_261) {
//         func_8002ED80(&this->actor, globalCtx, 0);
//         func_80093D84(globalCtx->state.gfxCtx);

//         gSPSegment(POLY_XLU_DISP, 0x08, 
//             Gfx_TwoTexScroll(globalCtx->state.gfxCtx, 0, 0, globalCtx->state.frames & 0x7F, 0x20, 0x20, 1, 0, (globalCtx->state.frames * 2) & 0x7F, 0x20, 0x20));
//         gSPMatrix(POLY_XLU_DISP, Matrix_NewMtx(globalCtx->state.gfxCtx, "../z_en_fz.c", 0x49F), G_MTX_NOPUSH | G_MTX_LOAD | G_MTX_MODELVIEW);
//         gDPSetCombineLERP(POLY_XLU_DISP, TEXEL1, PRIMITIVE, PRIM_LOD_FRAC, TEXEL0, TEXEL1, TEXEL0, PRIMITIVE, TEXEL0, PRIMITIVE, ENVIRONMENT, COMBINED, ENVIRONMENT, COMBINED, 0, ENVIRONMENT, 0);
//         gDPSetPrimColor(POLY_XLU_DISP, 0, 0x80, 0x9B, 0xFF, 0xFF, 0xFF);
//         gDPSetEnvColor(POLY_XLU_DISP, 0xC8, 0xC8, 0xC8, 0xFF);
//         // temp_v0_5->words.w1 = (this->unk_258 & 0xFF) | 0xC8C8C800;
//         gSPDisplayList(POLY_XLU_DISP, D_80A21C50[index]);

//     CLOSE_DISPS(globalCtx->state.gfxCtx, "../z_en_fz.c", 1200);

//     func_80A218A8(this, globalCtx);
//     }

// }




#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Fz/func_80A2145C.s")
// void func_80A2145C(EnFz *this, Vec3f *vec1, Vec3f *vec2, Vec3f *vec3, f32 randomNumber) {
//     EnFzUnkStruct** UnkStructPtr;
//     EnFzUnkStruct* UnkStruct;
//     s32 i;
    
//     UnkStructPtr = &this->unk_274;

//     for(i=0;i<40;i++){
//         UnkStruct = UnkStructPtr[i];
//         if (UnkStruct->flag0 == 0) {
//             UnkStruct->flag0 = 1;
//             UnkStruct->vec1 = *vec1;
//             UnkStruct->vec2 = *vec2;
//             UnkStruct->vec3 = *vec3;
//             UnkStruct->unk_2E = 0;
//             UnkStruct->unk_2C = 0;
//             UnkStruct->flag1 = 0;
//             UnkStruct->randomNumber = randomNumber / 1000.0f;
//             return;
//         }
//     } 
// }



#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Fz/func_80A21500.s")
// void func_80A21500(EnFz *this, Vec3f *vec1, Vec3f *vec2, Vec3f *vec3, f32 unk_float1, f32 unk_float2, s32 unk_val, s32 unk_condition) {
//     EnFzUnkStruct** UnkStructPtr;
//     EnFzUnkStruct* UnkStruct;
//     s32 i;

//     UnkStruct = this->unk_274; 
//     for(i=0;i<40;i++) {
//         UnkStruct = UnkStructPtr[(s16) i];
//         if (UnkStruct->flag0 == 0) {
//             UnkStruct->flag0 = 2;
//             UnkStruct->vec1 = *vec1;
//             UnkStruct->vec2 = *vec2;
//             UnkStruct->vec3 = *vec3;
//             UnkStruct->unk_2E = 0;
//             UnkStruct->randomNumber = unk_float1 / 1000.0f;
//             UnkStruct->unk_34 = unk_float2 / 1000.0f;
//             UnkStruct->flag1 = 0;
//             UnkStruct->unk_2C = (s16) unk_val;
//             UnkStruct->unk_38 = (u8) unk_condition;
//             return;
//         }
//     };

// }



#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Fz/func_80A215BC.s")
// void func_80A215BC(EnFz *this, GlobalContext *globalCtx) {
//     f32 sp6C;
//     f32 sp68;
//     f32 sp64;
//     f32 *temp_s7;
//     f32 temp_f0;
//     f32 temp_f0_2;
//     f32 temp_f12;
//     f32 temp_f2;
//     s16 temp_s2;
//     s16 temp_v0_2;
//     u8 temp_v0;
//     void *phi_s0;
//     s16 phi_s2;

//     temp_s7 = &sp64;
//     phi_s0 = this + 0x274;
//     phi_s2 = (u16)0;
// loop_1:
//     if (phi_s0->unk0 != 0) {
//         temp_f0 = phi_s0->unk10;
//         temp_f2 = phi_s0->unk14;
//         temp_f12 = phi_s0->unk18;
//         phi_s0->unk4 = (f32) (phi_s0->unk4 + temp_f0);
//         phi_s0->unk8 = (f32) (phi_s0->unk8 + temp_f2);
//         phi_s0->unkC = (f32) (phi_s0->unkC + temp_f12);
//         temp_v0 = phi_s0->unk0;
//         phi_s0->unk1 = (u8) (phi_s0->unk1 + 1);
//         phi_s0->unk10 = (f32) (temp_f0 + phi_s0->unk1C);
//         phi_s0->unk14 = (f32) (temp_f2 + phi_s0->unk20);
//         phi_s0->unk18 = (f32) (temp_f12 + phi_s0->unk24);
//         if (1 == temp_v0) {
//             if (phi_s0->unk2E == 0) {
//                 phi_s0->unk2C = (s16) (phi_s0->unk2C + 0xA);
//                 if ((s32) phi_s0->unk2C >= 0x64) {
//                     phi_s0->unk2E = (s16) (phi_s0->unk2E + 1);
//                 }
//             } else {
//                 phi_s0->unk2C = (s16) (phi_s0->unk2C - 3);
//                 if ((s32) phi_s0->unk2C <= 0) {
//                     phi_s0->unk2C = (u16)0;
//                     phi_s0->unk0 = (u8)0U;
//                 }
//             }
//         } else if ((u16)2 == temp_v0) {
//             temp_f0_2 = phi_s0->unk34;
//             Math_SmoothScaleMaxF(phi_s0 + 0x30, temp_f0_2, 0.1f, temp_f0_2 / 10.0f);
//             temp_v0_2 = phi_s0->unk2E;
//             if (temp_v0_2 == 0) {
//                 if ((s32) phi_s0->unk1 >= 7) {
//                     phi_s0->unk2E = (s16) (temp_v0_2 + 1);
//                 }
//             } else {
//                 phi_s0->unk20 = 2.0f;
//                 phi_s0->unk2C = (s16) (phi_s0->unk2C - 0x11);
//                 phi_s0->unk10 = (f32) (phi_s0->unk10 * 0.75f);
//                 phi_s0->unk18 = (f32) (phi_s0->unk18 * 0.75f);
//                 if ((s32) phi_s0->unk2C <= 0) {
//                     phi_s0->unk2C = (u16)0;
//                     phi_s0->unk0 = (u8)0U;
//                 }
//             }
//             if ((this->unk_263 == 0) && ((s32) phi_s0->unk2C >= 0x65) && (phi_s0->unk38 != 0)) {
//                 this->collider3.dim.pos.x = (s16) (s32) phi_s0->unk4;
//                 this->collider3.dim.pos.y = (s16) (s32) phi_s0->unk8;
//                 this->collider3.dim.pos.z = (s16) (s32) phi_s0->unkC;
//                 CollisionCheck_SetAT(globalCtx, &globalCtx->colChkCtx, (Collider *) &this->collider3);
//             }
//             sp64 = phi_s0->unk4;
//             sp68 = phi_s0->unk8 + 10.0f;
//             sp6C = phi_s0->unkC;
//             if (((u16)2 != phi_s0->unk2E) && (func_80A200B0(this, temp_s7) != 0)) {
//                 phi_s0->unk2E = (u16)2;
//                 phi_s0->unk10 = 0.0f;
//                 phi_s0->unk18 = 0.0f;
//             }
//         }
//     }
//     temp_s2 = phi_s2 + 1;
//     phi_s0 = phi_s0 + 0x3C;
//     phi_s2 = temp_s2;
//     if ((s32) temp_s2 < 0x28) {
//         goto loop_1;
//     }
// }



#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Fz/func_80A218A8.s")
// void func_80A218A8(EnFz *this, GlobalContext *globalCtx) {
//     Gfx *sp9C;
//     Gfx *temp_v0;
//     Gfx *temp_v0_2;
//     Gfx *temp_v0_3;
//     Gfx *temp_v0_4;
//     Gfx *temp_v0_5;
//     Gfx *temp_v0_6;
//     GraphicsContext *temp_s0;
//     MtxF *temp_s4;
//     f32 temp_f12;
//     s16 temp_s3;
//     s32 temp_v1;
//     u32 *temp_s6;
//     void *phi_s2;
//     s32 phi_s5;
//     s16 phi_s3;

//     temp_s0 = globalCtx->state.gfxCtx;
//     Graph_OpenDisps(&sp9C, temp_s0, (const char *) "../z_en_fz.c", 0x568);
//     func_80093D84(globalCtx->state.gfxCtx);
//     phi_s2 = this + 0x274;
//     phi_s5 = 0;
//     phi_s3 = (u16)0;
// loop_1:
//     if ((s32) phi_s2->unk0 > 0) {
//         temp_s4 = &globalCtx->mf_11DA0;
//         temp_v0 = temp_s0->polyXlu.p;
//         temp_s0->polyXlu.p = temp_v0 + 8;
//         temp_s6 = &gSegments[(u32) (0x6003158 * 0x10) >> 0x1C];
//         temp_v0->words.w0 = 0xE7000000;
//         temp_v0->words.w1 = 0;
//         if (phi_s5 == 0) {
//             temp_v0_2 = temp_s0->polyXlu.p;
//             temp_s0->polyXlu.p = temp_v0_2 + 8;
//             temp_v0_2->words.w0 = 0xDE000000;
//             temp_v0_2->words.w1 = gSegments[(u32) (0x60030A0 * 0x10) >> 0x1C] + (0x60030A0 & 0xFFFFFF) + 0x80000000;
//             phi_s5 = (phi_s5 + 1) & 0xFF;
//         }
//         temp_v0_3 = temp_s0->polyXlu.p;
//         temp_s0->polyXlu.p = temp_v0_3 + 8;
//         temp_v0_3->words.w0 = 0xFA000000;
//         temp_v0_3->words.w1 = (phi_s2->unk2C & 0xFF) | 0xC3E1EB00;
//         temp_v0_4 = temp_s0->polyXlu.p;
//         temp_s0->polyXlu.p = temp_v0_4 + 8;
//         temp_v0_4->words.w0 = 0xDB060020;
//         temp_v1 = phi_s2->unk1 + (phi_s3 * 3);
//         temp_v0_4->words.w1 = Gfx_TwoTexScroll(globalCtx->state.gfxCtx, 0, temp_v1 * 3, temp_v1 * 0xF, 0x20, 0x40, 1, 0, 0, 0x20, 0x20);
//         Matrix_Translate(phi_s2->unk4, phi_s2->unk8, (bitwise f32) phi_s2->unkC, (u8)0U);
//         func_800D1FD4(temp_s4);
//         temp_f12 = phi_s2->unk30;
//         Matrix_Scale(temp_f12, temp_f12, 1.0f, (u8)1U);
//         temp_v0_5 = temp_s0->polyXlu.p;
//         temp_s0->polyXlu.p = temp_v0_5 + 8;
//         temp_v0_5->words.w0 = 0xDA380003;
//         temp_v0_5->words.w1 = Matrix_NewMtx(temp_s0, (char *) "../z_en_fz.c", 0x590);
//         temp_v0_6 = temp_s0->polyXlu.p;
//         temp_s0->polyXlu.p = temp_v0_6 + 8;
//         temp_v0_6->words.w0 = 0xDE000000;
//         temp_v0_6->words.w1 = *temp_s6 + (0x6003158 & 0xFFFFFF) + 0x80000000;
//     }
//     temp_s3 = phi_s3 + 1;
//     phi_s2 = phi_s2 + 0x3C;
//     phi_s3 = temp_s3;
//     if ((s32) temp_s3 < 0x28) {
//         goto loop_1;
//     }
//     Graph_CloseDisps(&sp9C, temp_s0, (const char *) "../z_en_fz.c", 0x596);
// }
