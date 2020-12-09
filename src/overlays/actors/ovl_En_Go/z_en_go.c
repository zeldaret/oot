#include "z_en_go.h"
#include "overlays/actors/ovl_En_Bom/z_en_bom.h"
#include "overlays/actors/ovl_En_Bombf/z_en_bombf.h"

#define FLAGS 0x00000039

#define THIS ((EnGo*)thisx)

void EnGo_Init(Actor* thisx, GlobalContext* globalCtx);
void EnGo_Destroy(Actor* thisx, GlobalContext* globalCtx);
void EnGo_Update(Actor* thisx, GlobalContext* globalCtx);
void EnGo_Draw(Actor* thisx, GlobalContext* globalCtx);

s32 func_80A3ED24(GlobalContext *globalCtx, EnGo* this, void *arg2, s32 arg3, void *arg4, void *arg5);

void func_80A3E570(EnGo* this, void* actionFunc);
void func_80A3EDE0(EnGo* this, s32 unk_val);


s32 func_80A3EE8C(EnGo* this, GlobalContext* globalCtx);
f32 func_80A3EFE8(EnGo* this);

void func_80A3F060(EnGo* this, GlobalContext* globalCtx);

s32 func_80A3F300(EnGo* this, GlobalContext* globalCtx);

s32 func_80A3F15C(EnGo* this, GlobalContext* globalCtx);

void func_80A3F260(EnGo* this);
void func_80A3F274(EnGo* this);

void func_80A3F4BC(EnGo* this, GlobalContext* globalCtx);
void func_80A3F594(EnGo *this, u8 unk_arg1, f32 unk_arg2, f32 unk_arg3, s32 unk_arg4, f32 unk_arg5, f32 unk_arg6);
s32 func_80A3F7C0(EnGo* this, s16 unk_arg1, f32 unk_arg2);


void func_80A3F908(EnGo* this, GlobalContext* globalCtx);
void func_80A3FEB4(EnGo* this, GlobalContext* globalCtx);
void func_80A3FEF8(EnGo* this, GlobalContext* globalCtx);
void func_80A4008C(EnGo* this, GlobalContext* globalCtx);
void func_80A4011C(EnGo* this, GlobalContext* globalCtx);
void func_80A4020C(EnGo* this, GlobalContext* globalCtx);
void func_80A40218(EnGo* this, GlobalContext* globalCtx);
void func_80A40318(EnGo* this, GlobalContext* globalCtx);

void func_80A406E0(EnGo* this, GlobalContext* globalCtx);


void func_80A40A54(EnGo* this, GlobalContext* globalCtx);
void func_80A40B1C(EnGo* this, GlobalContext* globalCtx);
void func_80A40B74(EnGo* this, GlobalContext* globalCtx);
void func_80A40C78(EnGo* this, GlobalContext* globalCtx);
void func_80A40D5C(EnGo* this, GlobalContext* globalCtx);
void func_80A40DCC(EnGo* this, GlobalContext* globalCtx);


void func_80A40F58(EnGo* this, GlobalContext* globalCtx);
void func_80A41068(EnGo* this, GlobalContext* globalCtx);

// draw
s32 func_80A411C8(GlobalContext* globalCtx, s32 limb, Gfx** dList, Vec3f* pos, Vec3s* rot, void* thisx);
void func_80A413DC(GlobalContext* globalCtx, s32 limbIndex, Gfx** dList, Vec3s* rot, void* thisx);


void func_80A41604(EnGo* this, Vec3f* pos, Vec3f* velocity, Vec3f* accel, u8 unk_arg1, f32 unk_arg2, f32 unk_arg3);
void func_80A416A8(EnGo* this);
void func_80A417B4(EnGo* this, GlobalContext* globalCtx);


extern AnimationHeader D_060029A8;
extern AnimationHeader D_06004930;
extern Gfx* D_0600BD80;
extern Gfx* D_0600C140;
extern Gfx* D_0600CE80;
extern Gfx* D_0600DE80;
extern UNK_TYPE D_0600FD40;
extern UNK_TYPE D_0600FD50;
extern FlexSkeletonHeader D_0600FEF0;
extern AnimationHeader D_06010590;

typedef struct {
    AnimationHeader* animationseg;
    f32 playbackSpeed;
    u8 mode;
    f32 transitionRate;
} EnGoSkelAnime;


const ActorInit En_Go_InitVars = {
    ACTOR_EN_GO,
    ACTORTYPE_NPC,
    FLAGS,
    OBJECT_OF1D_MAP,
    sizeof(EnGo),
    (ActorFunc)EnGo_Init,
    (ActorFunc)EnGo_Destroy,
    (ActorFunc)EnGo_Update,
    (ActorFunc)EnGo_Draw,
};

// static ColliderCylinderInit sCylinderInit
ColliderCylinderInit D_80A41B00 =
{
    { COLTYPE_UNK10, 0x00, 0x00, 0x39, 0x20, COLSHAPE_CYLINDER },
    { 0x00, { 0x00000000, 0x00, 0x00 }, { 0x00000000, 0x00, 0x00 }, 0x00, 0x00, 0x01 },
    { 20, 46, 0, { 0, 0, 0 } },
};

// static CollisionCheckInfoInit2 sColChkInfoInit
CollisionCheckInfoInit2 D_80A41B2C = {
    0x00, 0x0000, 0x0000, 0x0000, 0xFF,
};


EnGoSkelAnime D_80A41B38[4] = { {&D_06004930, 0.0f, 0x01, 0.0f}, 
                             {&D_06004930, 0.0f, 0x01, -10.0f}, 
                             {&D_060029A8, 1.0f, 0x01, -10.0f}, 
                            {&D_06010590, 1.0f, 0x01, -10.0f} };

// pos, velocity, accel???
Vec3f D_80A41B78 = { 0.0f, 0.0f, 0.0f };
Vec3f D_80A41B84 = { 0.0f, 0.0f, 0.0f };
Vec3f D_80A41B90 = { 0.0f, 0.3f, 0.0f };


s32 D_80A41B9C[] = { 0x00000000, 0x00000000, 0x00000000 };
s32 D_80A41BA8[] = { 0x00000000, 0x00000000, 0x00000000 };
Vec3f D_80A41BB4 = { 0.0f, 0.0f, 0.0f };
Vec3f D_80A41BC0 = { 0.0f, 0.0f, 0.0f };
Vec3f D_80A41BCC = { 600.0f, 0.0f, 0.0f };
s32 D_80A41BD8[] = { 0x040539B0, 0x040535B0, 0x040531B0, 0x04052DB0, 0x040529B0, 0x040525B0, 0x040521B0, 0x04051DB0, 0x00000000, 0x00000000 };


// #pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Go/func_80A3E570.s")
void func_80A3E570(EnGo* this, void* actionFunc) {
    this->actionFunc = actionFunc;
}

// Lots of switches
#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Go/func_80A3E578.s")
#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Go/func_80A3E908.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Go/func_80A3ED24.s")
// s32 func_80A3ED24(GlobalContext *arg0, Actor *arg1, void *arg2, s32 arg3, void *arg4, void *arg5) {
//     GlobalContext *temp_a1;

//     if (*arg2 != 0) {
//         *arg2 = arg5(arg0);
//     } else {
//         temp_a1 = arg0;
//         arg0 = arg0;
//         if (func_8002F194(arg1, temp_a1) != 0) {
//             *arg2 = (u16)1;
//             return 1;
//         }
//         if (func_8002F2CC(arg1, arg0, (bitwise f32) arg3) == 0) {

//         } else {
//             arg1->textId = arg4(arg0, arg1);
//         }
//     }
//     return 0;
// }



#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Go/func_80A3EDE0.s")
// void func_80A3EDE0(EnGo *this, s32 unk_val) {
//     EnGoSkelAnime *temp_v1;
//     f32 phi_f0;

//     if ((this->actor.params & 0xF0) == 0x90) {
//         phi_f0 = 0.5f;
//     } else {
//         phi_f0 = 1.0f;
//     }
//     temp_v1 = &D_80A41B38[unk_val];
//     SkelAnime_ChangeAnim(&this->skelanime, temp_v1->animationseg, temp_v1->playbackSpeed * (temp_v1), 0.0f, 
//                             SkelAnime_GetFrameCount(temp_v1->animationseg), temp_v1->mode, temp_v1->transitionRate);
// }



// #pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Go/func_80A3EE8C.s")
s32 func_80A3EE8C(EnGo *this, GlobalContext *globalCtx) {

    if (((this->actor.params) & 0xF0) == 0x90) {
        return true;
    }

    if (globalCtx->sceneNum == SCENE_HIDAN && Flags_GetSwitch(globalCtx, (this->actor.params) >> 8) == 0 && LINK_IS_ADULT && (this->actor.params & 0xF0) == 0x10) {
            return true;
    }

    if (globalCtx->sceneNum == SCENE_SPOT18 && LINK_IS_ADULT && (this->actor.params & 0xF0) == 0) {
        return true;
    }


    if (globalCtx->sceneNum == SCENE_SPOT16 && gSaveContext.linkAge == 1 && ((this->actor.params & 0xF0) == 0x20 || (this->actor.params & 0xF0) == 0x30 || (this->actor.params & 0xF0) == 0x40)) {
        return true;
    }

    if (globalCtx->sceneNum == SCENE_SPOT18 && gSaveContext.linkAge == 1 && ((this->actor.params & 0xF0) == 0x50 || (this->actor.params & 0xF0) == 0x60 || (this->actor.params & 0xF0) == 0x70)) { 
        return true;
    }

    return false;
}


#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Go/func_80A3EFE8.s")
// f32 func_80A3EFE8(EnGo *this) {

//     u32 temp_t6;

//     temp_t6 = this->actor.params & 0xF0 - 0x20;
//     if (this->actor.params & 0xF0 <= 0 || temp_t6 <= 0x50) {
//         if (this->actor.params & 0xF0  == 0) {
//             return 10.0f;
//         }
//         // goto **(&jtbl_80A41F84 + (temp_t6 * 4));
//         switch (this->actor.params & 0xF0 * 4) {
//             case 
//             case 0:
//             case 16:
//             case 48:
//             case 64:
//             case 80:
//                 return 20.0f;
//             case 32:
//                 return 60.0f;
//             default:
//                 return 20.0f;
//         }
//     } 
    
// }



// s32 func_80A3EFE8(EnGo *this) {
//     s32 temp_v0;
//     u32 temp_t6;

//     temp_v0 = this->actor.params & 0xF0;
//     temp_t6 = temp_v0 - 0x20;
//     if (temp_v0 > 0) {
//         if (temp_t6 < 0x51U) {
//             // goto **(&jtbl_80A41F84 + (temp_t6 * 4));
//             block_3:
//             if (temp_v0 == 0) {
//                 return 10.0f;
//             case 0:
//             case 16:
//             case 48:
//             case 64:
//             case 80:
//                 return 20.0f;
//             case 32:
//                 return 60.0f;
//             }
//         }
//     } else {
//         goto block_3;
//     }

//     default:
//         return 20.0f;
// }

// temp_v0 = 0 - F



// #pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Go/func_80A3F060.s")
void func_80A3F060(EnGo *this, GlobalContext *globalCtx) {
    Player* player = PLAYER;
    s16 phi_a3;
    
    if (this->actionFunc != func_80A406E0 && this->actionFunc != func_80A4020C && this->actionFunc != func_80A40B1C) {
        phi_a3 = 1;
    }

    this->unk_1E0.unk_18 = player->actor.posRot.pos;
    this->unk_1E0.unk_14 = func_80A3EFE8(this);

    func_80034A14(&this->actor, &this->unk_1E0, 4, phi_a3);
}



#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Go/func_80A3F0E4.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Go/func_80A3F15C.s")

// #pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Go/func_80A3F260.s")
void func_80A3F260(EnGo *this) {
    f32 initialFrame;

    initialFrame = this->skelanime.initialFrame;
    this->skelanime.initialFrame = this->skelanime.animFrameCount;
    this->skelanime.animFrameCount = initialFrame;
}

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Go/func_80A3F274.s")
// void func_80A3F274(EnGo *this) {
//     s16 sp2E;
//     s16 *temp_a0;
//     void *temp_v0;
//     s16 phi_a1;

//     temp_v0 = this->skelanime.animation;
//     if ((temp_v0 != D_06004930) || !(this->skelanime.animCurrentFrame > 32.0f)) {
//         phi_a1 = (u16)0;
//         if (temp_v0 != D_06004930) {
// block_3:
//             phi_a1 = (u16)0xFF;
//         }
//     } else {
//         goto block_3;
//     }
//     temp_a0 = &sp2E;
//     sp2E = (s16) this->actor.shape.unk_14;
//     Math_SmoothScaleMaxMinS((s16 *) temp_a0, phi_a1, (u16)0xA, (u16)0x3C, 1);
//     this->actor.shape.unk_14 = (u8) sp2E;
// }


#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Go/func_80A3F300.s")
// s32 func_80A3F300(EnGo *this, GlobalContext *globalCtx) {
//     Path *path;
//     f32 xDist;
//     f32 zDist;
//     s32 temp_a2;
//    Vec3s* pointPos;
//     s32 phi_return;

//     temp_a2 = this->actor.params & 0xF;
//     if (temp_a2 == 0xF) {
//         return 0;
//     }
//     path = &globalCtx->setupPathList[temp_a2];
//     pointPos = (Vec3s*)SEGMENTED_TO_VIRTUAL(path->points) + (this->unk_218 * 6);
//     xDist = pointPos->x - this->actor.posRot.pos.x;
//     zDist = pointPos->z - this->actor.posRot.pos.z;
//     Math_SmoothScaleMaxMinS(&this->actor.posRot.rot.y, (s16) (Math_atan2f(xDist, zDist) * 10430.378f), 0xA, 0x3E8, 1);
    
//     phi_return = 0;

//     if ((SQ(xDist) + SQ(zDist)) < 600.0f) {
//         this->unk_218++;
//         if (this->unk_218 >= path->count) {
//             this->unk_218 = 0;
//         }
//         if (this->actor.params & 0xF0) {
//             return 1;
//         }
//         if (Flags_GetSwitch(globalCtx, this->actor.params >> 8)) {
//             return 1;
//         }
//         if (this->unk_218 >= this->actor.shape.rot.z) {
//             this->unk_218 = 0;
//         }
//         phi_return = 1;
//     }
//     return phi_return;
// }


#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Go/func_80A3F4BC.s")
// void func_80A3F4BC(EnGo *this, GlobalContext *globalCtx) {
//     Path *path;
//     s32 temp_v1;
//     Vec3s* pointPos;

//     temp_v1 = this->actor.params & 0xF;

//     if (temp_v1 == 0xF) {
//         return;
//     }

//     path = &globalCtx->setupPathList[temp_v1];
//     pointPos = (Vec3s*)SEGMENTED_TO_VIRTUAL(path->points) + (path->count);
//     this->actor.posRot.pos.x = pointPos->x;
//     this->actor.posRot.pos.y = pointPos->y;
//     this->actor.initPosRot.pos.x = this->actor.posRot.pos.x;
//     this->actor.initPosRot.pos.y = this->actor.posRot.pos.y;
//     this->actor.posRot.pos.z = pointPos->z;
//     this->actor.initPosRot.pos.z = this->actor.posRot.pos.z;
// }


#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Go/func_80A3F594.s")
// void func_80A3F594(EnGo *this, u8 unk_arg1, f32 unk_arg2, f32 unk_arg3, s32 unk_arg4, f32 unk_arg5, f32 unk_arg6) {
//     Vec3f pos; // 94, 98, 9C
//     Vec3f velocity; // 88, 8C, 90
//     Vec3f accel; // 7C, 80, 84 
//     s32 i;
//     s16 angle;

//     if(1) {}
//     pos = D_80A41B78;
//     velocity = D_80A41B84;
//     accel = D_80A41B90;
//     pos = this->actor.posRot.pos;
//     pos.y  = this->actor.groundY;

//     if ((u32) unk_arg4 >= 0) {
//         angle = (s16) ((Math_Rand_ZeroOne() - 0.5f) * 65536.0f);
//         for(i=unk_arg4;i>=0;i--){
//             accel.x = (Math_Rand_ZeroOne() - 0.5f) * unk_arg6;
//             accel.z = (Math_Rand_ZeroOne() - 0.5f) * unk_arg6;
//             pos.x = (Math_Sins(angle) * unk_arg5) + this->actor.posRot.pos.x;
//             pos.z = (Math_Coss(angle) * unk_arg5) + this->actor.posRot.pos.z;
//             func_80A41604(this, &pos, &velocity, &accel, unk_arg1, unk_arg2, unk_arg3);
//             angle = (s16) (angle + (s16) (0x10000 / unk_arg4));
//         }
//         // if(1) {}

//     }
// }


#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Go/func_80A3F7C0.s")
// s32 func_80A3F7C0(EnGo *this, s16 unk_arg1, f32 unk_arg2) {
//     s16 temp_a1;
//     s16 temp_v1;
//     s32 phi_v1;
//     s32 phi_v0;
//     f32 phi_f8;

//     temp_a1 = unk_arg1;
//     if (((this->actor.bgCheckFlags & 1) == 0) || (this->actor.velocity.y > 0.0f)) {
//         return 0;
//     }

//     if ((s16) this->unk_1E0 != 0) {
//         return 1;
//     }

//     if (this->unk_21C == 0) {
//         phi_v1 = 0;
//         phi_v0 = this->unk_21C;
//     } 
//     else {
//         this->unk_21C--;
//         phi_v1 = this->unk_21C;
//         phi_v0 = this->unk_21C;
//     }



//     if (phi_v1) {
//         if (phi_v0 & 1) {
//             this->actor.posRot.pos.y += 1.5f;
//         }
//         else {
//             this->actor.posRot.pos.y -= 1.5f;
//         }
//         return true;

//     }

//     this->unk_21A--;
//     if ((s32) this->unk_21A <= 0) {
//         if (this->unk_21A == 0) {
//             this->unk_21C = Math_Rand_S16Offset(60, 30);
//             this->unk_21A = 0;
//             phi_f8 = 0.0f;
//         } 
//         else {
//             this->unk_21A = temp_a1;
//             block_16:
//             phi_f8 = ((f32) this->unk_21A / (f32) temp_a1) * unk_arg2;
//         }
//     } 
//     else {
//         goto block_16;
//     }


//     this->actor.velocity.y = phi_f8;
//     return 1;
// }


#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Go/func_80A3F908.s")
// void func_80A3F908(EnGo *this, GlobalContext *globalCtx) {
//     void *sp2C;
//     f32 temp_f0;
//     s32 temp_v0_2;
//     u8 temp_v0_3;
//     void (*)(struct EnGo *, struct GlobalContext *) temp_v0;
//     s32 phi_f0;
//     s32 phi_v0;
//     u8 phi_v0_2;

//     sp2C = globalCtx->unk1C44;
//     temp_v0 = this->actionFunc;
//     if ((&func_80A406E0 == temp_v0) || (&func_80A4011C == temp_v0) || (&func_80A4020C == temp_v0) || (&func_80A40D5C == temp_v0) || (&func_80A40DCC == temp_v0) || (&func_80A40B74 == temp_v0) || (&func_80A40C78 == temp_v0) || (&func_80A40B1C == temp_v0)) {
//         temp_v0_2 = this->actor.params & 0xF0;
//         temp_f0 = ((f32) this->collider.dim.radius + 30.0f) * (this->actor.scale.x / 0.01f);
//         phi_f0 = (bitwise s32) temp_f0;
//         if (temp_v0_2 == 0x90) {
//             phi_f0 = (bitwise s32) (temp_f0 * 4.8f);
//         }
//         if (temp_v0_2 == 0x90) {
//             phi_v0 = func_80A3ED24(globalCtx, this, (void *) &this->unk_1E0, phi_f0, &func_80A3E578, &func_80A3E908);
//         } else {
//             phi_v0 = func_800343CC(globalCtx, (Actor *) this, (s16 *) &this->unk_1E0, (bitwise f32) phi_f0, &func_80A3E578, &func_80A3E908);
//         }
//         if (((this->actor.params & 0xF0) == 0x90) && (phi_v0 == 1)) {
//             temp_v0_3 = gSaveContext.inventory.items[gItemSlots[0x2D]];
//             phi_v0_2 = temp_v0_3;
//             if (temp_v0_3 == 0x33) {
//                 if (func_8002F368(globalCtx) == 0xB) {
//                     if ((*(&gSaveContext + 0xF0E) & 0x10) != 0) {
//                         this->actor.textId = 0x3055;
//                     } else {
//                         this->actor.textId = 0x3054;
//                     }
//                 } else {
//                     this->actor.textId = 0x3053;
//                 }
//                 sp2C->unk10E = (u16) this->actor.textId;
//                 phi_v0_2 = gSaveContext.inventory.items[gItemSlots[0x2D]];
//             }
//             if (phi_v0_2 == 0x36) {
//                 if (func_8002F368(globalCtx) == 0xE) {
//                     this->actor.textId = 0x3059;
//                 } else {
//                     this->actor.textId = 0x3058;
//                 }
//                 sp2C->unk10E = (u16) this->actor.textId;
//             }
//         }
//     }
// }


#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Go/EnGo_Init.s")

// void EnGo_Init(Actor* thisx,, GlobalContext *globalCtx) {

//     EnGo* this = THIS;

//     s32 sp44[3];
//     s32 sp38[3];
//     s32 flag;

//     sp44[0] = D_80A41B9C[0];
//     sp44[1] = D_80A41B9C[1];
//     sp44[2] = D_80A41B9C[2];
//     sp38[0] = D_80A41BA8[0];
//     sp38[1] = D_80A41BA8[1];
//     sp38[2] = D_80A41BA8[2];


//     ActorShape_Init(&this->actor.shape, 0.0f, ActorShadow_DrawFunc_Circle, 30.0f);
//     SkelAnime_InitFlex(globalCtx, this->skelanime, &D_0600FEF0, NULL, 0, 0, 0);
//     Collider_InitCylinder(globalCtx, &this->collider);
//     Collider_SetCylinder(globalCtx, &this->collider, &this->actor, &D_80A41B00);
//     func_80061EFC(&this->actor.colChkInfo, DamageTable_Get(0x16), &D_80A41B2C);

//     if (func_80A3EE8C(this, globalCtx) == 0) {
//         Actor_Kill(&this->actor);
//         return;
//     }

//     if ((this->actor.params & 0xF0) && (this->actor.params & 0xF0 != 0x90)) {
//         this->actor.flags &= ~0x10;
//         this->actor.flags &= ~0x20;
//     }

//     func_80A3EDE0(this, 0);
//     unk_flag = this->actor.params & 0xF0;
//     this->actor.unk_1F = 6;
//     this->unk_1E0 = 0;
//     this->actor.gravity = -1.0f;


//     if (unk_flag >= 0x71) {
//         if (unk_flag == 0x90) {
//             this->actor.unk_1F = 5;
//             Actor_SetScale(&this->actor, 0.16f);
//             func_80A3E570(this, func_80A40218);
//     } 
    
//     else if (unk_flag < 0x71) {
//         switch (unk_flag * 4) {
//             case 0:
//                 Actor_SetScale(&this->actor, 0.008f);
//                 if (((gBitFlags[4] << gEquipShifts[EQUIP_TUNIC]) & gSaveContext.inventory.equipment) == 0) {
//                     this->actor.shape.unk_08 = 1400.0f;
//                     this->actor.speedXZ = 3.0f;
//                     func_80A3E570(this, func_80A4011C);
//                     break;
//             case 16:
//                 this->skelanime.animCurrentFrame = SkelAnime_GetFrameCount(&D_06004930);
//                 Actor_SetScale(&this->actor, 0.01f);
//                 func_80A3E570(this, func_80A4020C);
//             case 32: 
//                 Actor_SetScale(&this->actor, 0.01f);
//                 func_80A3E570(this, func_80A40218);
//                 break;
//             case 48:
//                 this->actor.shape.unk_08 = 1400.0f;
//                 Actor_SetScale(&this->actor, 0.01f);
//                 func_80A3E570(this, func_80A3FEB4);
//             case 64:
//                 if (gSaveContext.infTable[14] & 0x800) {
//                     func_80A3F4BC(this, globalCtx);
//                 }
//                 Actor_SetScale(&this->actor, 0.015f);
//                 func_80A3E570(this, func_80A40218);
//             case 80:
//                 Actor_SetScale(&this->actor, 0.01f);
//                 func_80A3E570(this, func_80A40218);
//                 break;
//             case 96:
//                 Actor_SetScale(&this->actor, 0.01f);
//                 func_80A3E570(this, func_80A40218);
//                 break;
//             case 112:
//                 Actor_SetScale(&this->actor, 0.01f);
//                 func_80A3E570(this, func_80A40218);
//                 break;
//             default:
//                 Actor_Kill(&this->actor);
//         }
        
//     }

//     func_80A3F4BC(this, globalCtx);
//     func_80A3E570(this, func_80A40218);

    
// }


// #pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Go/EnGo_Destroy.s")
void EnGo_Destroy(Actor* thisx, GlobalContext *globalCtx) {

    EnGo* this = THIS;
    SkelAnime_Free(&this->skelanime, globalCtx);
    Collider_DestroyCylinder(globalCtx, &this->collider);
}

// #pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Go/func_80A3FEB4.s")
void func_80A3FEB4(EnGo *this, GlobalContext *globalCtx) {
    if (!(this->actor.xyzDistFromLinkSq > 1440000.0f)) {
        func_80A3E570(this, func_80A3FEF8);
    }
}

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Go/func_80A3FEF8.s")
// void func_80A3FEF8(EnGo *this, GlobalContext *globalCtx) {
//     EnBom* bomb;
//     s16 phi_v1;

//     if (this->unk_20E == 0) {
//         phi_v1 = 0;
//     } else {
//         this->unk_20E--;
//     }
//     if (phi_v1 == 0) {
//         if (this->collider.base.maskB & 1) {
//             this->collider.base.maskB &= ~1;
//             globalCtx->damagePlayer(globalCtx, -4);
//             func_8002F71C(globalCtx, &this->actor, 4.0f, this->actor.yawTowardsLink, 6.0f);
//             this->unk_20E = 0x10;
//         }
//     }


//     this->actor.speedXZ = 3.0f;
//     if ((func_80A3F300() == 1) && (this->unk_218 == 0)) {
//         bomb = (EnBom*)Actor_Spawn(&globalCtx->actorCtx, globalCtx, ACTOR_EN_BOM, this->actor.posRot.pos.x, this->actor.posRot.pos.y, this->actor.posRot.pos.z, 0, 0, 0, 0);
//         if (bomb != NULL) {
//             bomb->timer = 0;
//         }
//         this->actor.speedXZ = 0.0f;
//         func_80A3E570(this, func_80A4008C);
//     }
//     this->actor.shape.rot = this->actor.posRot.rot;
//     if (func_80A3F7C0(this, 3, 6.0f)) {
//         func_80A3F594(this, 0xC, 0.16f, 0.1f, 1, 10.0f, 20.0f);
//     }
// }



// #pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Go/func_80A4008C.s")
void func_80A4008C(EnGo *this, GlobalContext *globalCtx) {
    if (func_80A3F7C0(this, 3, 6.0f)) {
        if (this->unk_21A == 0) {
            this->actor.shape.unk_08 = 0.0f;
            func_80A3E570(this, func_80A40218);
        }
        else{
            func_80A3F594(this, 0xC, 0.16f, 0.1f, 1, 10.0f, 20.0f);
        }
    }
}


// #pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Go/func_80A4011C.s")
void func_80A4011C(EnGo *this, GlobalContext *globalCtx) {

    if ((func_80A3F300(this, globalCtx) == 1) && Flags_GetSwitch(globalCtx, this->actor.params >> 8)  && (this->unk_218 == 0)) {
        this->actor.speedXZ = 0.0f;
        func_80A3E570(this, func_80A4008C);
        gSaveContext.infTable[16] |= 0x200;
    }

    this->actor.shape.rot = this->actor.posRot.rot;
    if (func_80A3F7C0(this, 3, 6.0f)) {
        func_80A3F594(this, 0xC, 0.18f, 0.2f, 2, 13.0f, 20.0f);
    }
}

// #pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Go/func_80A4020C.s")
void func_80A4020C(EnGo* this, GlobalContext* globalCtx) {}



#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Go/func_80A40218.s")
// void func_80A40218(EnGo *this, GlobalContext *globalCtx) {
//     f32 phi_f0;
//     s16 phi_v1;

//     if (this->unk_210 == 0) {
//         phi_v1 = 0;
//     } else {
//         this->unk_210--; 
//     }

//     if ((phi_v1 == 0) && func_80A3F15C(this, globalCtx)) {
//         Audio_PlaySoundGeneral(NA_SE_EN_GOLON_WAKE_UP, &this->actor.projectedPos, 4, &D_801333E0, &D_801333E0, &D_801333E8);
//         this->skelanime.animPlaybackSpeed = 0.1f;
//         if ((this->actor.params & 0xF0) == 0x90) {
//             phi_f0 = 0.5f;
//         } 
//         else {
//             phi_f0 = 1.0f;
//         }
//         this->skelanime.animPlaybackSpeed *= phi_f0;
//         if (!this->actor.params) {}
//         func_80A3E570(this, func_80A40318);
//         if ((this->actor.params & 0xF0) == 0x90) {
//             func_800800F8(globalCtx, 0x1068, -0x63, &this->actor, 0);
//         }
//     }
// }


#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Go/func_80A40318.s")
// void func_80A40318(EnGo *this, GlobalContext *globalCtx) {
//     s16 temp_v0;
//     f32 phi_f0;
//     s16 phi_v1;

//     if (this->skelanime.animPlaybackSpeed != 0.0f) {
//         if ((this->actor.params & 0xF0) == 0x90) {
//             phi_f0 = 0.5f;
//         } else {
//             phi_f0 = 1.0f;
//         }
//         Math_SmoothScaleMaxMinF(&this->skelanime.animPlaybackSpeed, phi_f0 * 0.5f, 0.1f, 1000.0f, 0.1f);
//         if (!((this->skelanime.animCurrentFrame + this->skelanime.animPlaybackSpeed) <= 12.0f)) {
//             this->skelanime.animCurrentFrame = 12.0f;
//             this->skelanime.animPlaybackSpeed = 0.0f;
//             if ((this->actor.params & 0xF0) != 0x90) {
//                 this->unk_212 = 0x1E;
//                 return;
//             }
// block_7:
//             if (this->unk_212 == 0) {
//                 phi_v1 = 0;
//             } else {
//                 this->unk_212--; 
//             }
//             if (phi_v1 == 0) {
//                 Audio_PlaySoundGeneral((u16)0x38FDU, &this->actor.projectedPos, (u8)4U, &D_801333E0, &D_801333E0, &D_801333E8);
//                 func_80A3E570(this, &func_80A405CC);
//                 return;
//             }
//             if (func_80A3F15C(this, globalCtx) == 0) {
//                 func_80A3F260(this);
//                 this->skelanime.animPlaybackSpeed = 0.0f;
//                 func_80A3E570(this, &func_80A40494);
//             }
//         }
//     } else {
//         goto block_7;
//     }
// }


#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Go/func_80A40494.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Go/func_80A405CC.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Go/func_80A406E0.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Go/func_80A408D8.s")


// #pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Go/func_80A40A54.s")
void func_80A40A54(EnGo *this, GlobalContext *globalCtx) {
    f32 float1;
    f32 float2;

    float1 = (32768.0f / SkelAnime_GetFrameCount(&D_06010590));
    float2 = this->skelanime.animCurrentFrame * float1;
    this->actor.speedXZ = Math_Sins((s16) float2);
        
    if (func_80A3F300(this, globalCtx) && this->unk_218 == 0) {
        func_80A3EDE0(this, 1);
        this->skelanime.animCurrentFrame = SkelAnime_GetFrameCount(&D_06004930);
        this->actor.speedXZ = 0.0f;
        func_80A3E570(this, func_80A406E0);
    }
}

// #pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Go/func_80A40B1C.s")
void func_80A40B1C(EnGo* this, GlobalContext* globalCtx) {
    if (gSaveContext.infTable[14] & 0x800) {
        func_80A3EDE0(this, 3);
        func_80A3E570(this, func_80A40A54);
        return;
    }
    else {
        func_80A406E0(this, globalCtx);
    }
}

// #pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Go/func_80A40B74.s")
void func_80A40B74(EnGo *this, GlobalContext *globalCtx) {
    f32 float1;
    f32 float2;
    s32 getItem;

    if (Actor_HasParent(&this->actor, globalCtx)) {
        this->unk_1E0.unk_00 = 2;
        this->actor.parent = NULL;
        func_80A3E570(this, func_80A40C78);
    }
    else {
        this->unk_20C = 0;

        if ((this->actor.params & 0xF0) == 0x90) {
            if (INV_CONTENT(ITEM_POCKET_EGG) == ITEM_CLAIM_CHECK) {
                getItem = GI_SWORD_BGS;
                this->unk_20C = 1;
            }
            if (INV_CONTENT(ITEM_POCKET_EGG) == ITEM_EYEDROPS) {
                getItem = GI_CLAIM_CHECK;
            }
            if (INV_CONTENT(ITEM_POCKET_EGG) == ITEM_SWORD_BROKEN) {
                getItem = GI_PRESCRIPTION;
            }
        }

        if ((this->actor.params & 0xF0) == 0) {
            getItem = GI_TUNIC_GORON;
        }

        float2 = fabsf(this->actor.yDistFromLink) + 1.0f;
        float1 = this->actor.xzDistFromLink + 1.0f;
        func_8002F434(&this->actor, globalCtx, getItem, float1, float2);

    }
}


// #pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Go/func_80A40C78.s")
void func_80A40C78(EnGo* this, GlobalContext* globalCtx) {

    if (this->unk_1E0.unk_00 == 3) {
        func_80A3E570(this, func_80A406E0);
        if ((this->actor.params & 0xF0) != 0x90) {
            this->unk_1E0.unk_00 = 0;
        }
        else if (this->unk_20C) {
            this->unk_1E0.unk_00 = 0;
            gSaveContext.bgsFlag = 1;
        }
        else if (INV_CONTENT(ITEM_POCKET_EGG) == ITEM_PRESCRIPTION) {
            // "I've been waiting forrrrr you, with tearrrrrrs in my eyes... Please say hello to Kinnng Zorrra!"
            this->actor.textId = 0x3058;
            func_8010B720(globalCtx, this->actor.textId);
            this->unk_1E0.unk_00 = 1;
        }
        else if (INV_CONTENT(ITEM_POCKET_EGG) == ITEM_CLAIM_CHECK) {
            // "Afterrrr a few days... Please returrrrrrn... Wait, just wait patiently..."
            this->actor.textId = 0x305C;
            func_8010B720(globalCtx, this->actor.textId);
            this->unk_1E0.unk_00 = 1;
            func_800775D8();
        }
    }
}



// #pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Go/func_80A40D5C.s")
void func_80A40D5C(EnGo *this, GlobalContext *globalCtx) {
    s16 phi_v1;

    if (this->unk_21E == 0) {
        phi_v1 = 0;
    } 
    else {
        this->unk_21E--;
        phi_v1 = this->unk_21E;
    }

    if (phi_v1 == 0) {
        // "Wowwwwwwwwwwwwww!!  This is stimulating! It's worrrrrking grrrrreat!  
        // Now I can get back to my blade business! 
        // My worrrrrk is not  verrrry consistent, so I'll give this to you so you won't forrrrrget."
        // [goto 305C] "Afterrrr a few days... Please returrrrrrn... Wait, just wait patiently..." }
        this->actor.textId = 0x305A;
        func_8010B720(globalCtx, this->actor.textId);
        this->unk_1E0.unk_00 = 1;
        func_80A3E570(this, func_80A40DCC);
    }
}


// #pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Go/func_80A40DCC.s")
void func_80A40DCC(EnGo *this, GlobalContext *globalCtx) {
    if (this->unk_1E0.unk_00 == 2) {
        func_80A3EDE0(this, 1);
        this->skelanime.animCurrentFrame = SkelAnime_GetFrameCount(&D_06004930);
        func_80106CCC(globalCtx);
        func_80A3E570(this, func_80A40B74);
        func_80A40B74(this, globalCtx);
    }
}


#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Go/EnGo_Update.s")

// #pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Go/func_80A40F58.s")
void func_80A40F58(EnGo *this, GlobalContext *globalCtx) {
    Vec3f vec1;

    vec1 = D_80A41BB4;

    OPEN_DISPS(globalCtx->state.gfxCtx, "../z_en_go.c", 2320);
    Matrix_Push();
    func_80093D18(globalCtx->state.gfxCtx);

    gSPMatrix(POLY_OPA_DISP++, Matrix_NewMtx(globalCtx->state.gfxCtx, "../z_en_go.c", 2326), G_MTX_NOPUSH | G_MTX_LOAD | G_MTX_MODELVIEW);

    gSPDisplayList(POLY_OPA_DISP++, &D_0600BD80);


    Matrix_MultVec3f(&vec1, &this->actor.posRot2);
    Matrix_Pull();
    CLOSE_DISPS(globalCtx->state.gfxCtx, "../z_en_go.c", 2341);
}


// #pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Go/func_80A41068.s")
void func_80A41068(EnGo *this, GlobalContext *globalCtx) {
    Vec3f vec1;
    
    vec1 = D_80A41BC0;

    OPEN_DISPS(globalCtx->state.gfxCtx, "../z_en_go.c", 0x933);
    Matrix_Push();
    func_80093D18(globalCtx->state.gfxCtx);
    Matrix_RotateRPY((s16) (globalCtx->state.frames * ((s16) this->actor.speedXZ * 0x578)), 0, this->actor.shape.rot.z, MTXMODE_APPLY);
    gSPMatrix(POLY_OPA_DISP++, Matrix_NewMtx(globalCtx->state.gfxCtx, "../z_en_go.c", 0x940), G_MTX_NOPUSH | G_MTX_LOAD | G_MTX_MODELVIEW);
    gSPDisplayList(POLY_OPA_DISP++, &D_0600C140);
    Matrix_MultVec3f(&vec1, &this->actor.posRot2);
    Matrix_Pull();

    CLOSE_DISPS(globalCtx->state.gfxCtx, "../z_en_go.c", 0x94F);
}


// EnGo_OverrideLimbDraw
#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Go/func_80A411C8.s")
// s32 func_80A411C8(GlobalContext *globalCtx, s32 limb, Gfx **dList, Vec3f *pos, Vec3s *rot, void *thisx) {

//     EnGo* this = THIS;

//     if (limb == 0x11) {
//         Matrix_Translate(2800.0f, 0.0f, 0.0f, MTXMODE_APPLY);
//         Matrix_RotateX((this->unk_1E0.unk_08.x / 32768.0f) * M_PI, MTXMODE_APPLY);
//         Matrix_RotateZ((this->unk_1E0.unk_08.z / 32768.0f) * M_PI, MTXMODE_APPLY);
//         Matrix_Translate(-2800.0f, 0.0f, 0.0f, MTXMODE_APPLY);
//     }

//     if (limb == 0xA) {
//         Matrix_RotateY((this->unk_1E0.unk_0E.y / 32768.0f) * M_PI, MTXMODE_APPLY);
//         Matrix_RotateX((this->unk_1E0.unk_0E.x / 32768.0f) * M_PI, MTXMODE_APPLY);
//     }

//     if ((limb == 0xA) || (limb == 0xB) || (limb == 0xE)) {
//         rot->y += Math_Sins(this->unk_220[limb]) * 200.0f;
//         rot->z += Math_Coss(this->unk_244[limb]) * 200.0f;
//     }

//     return 0;
// }




// EnNb_PostLimbDraw
// #pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Go/func_80A413DC.s")
void func_80A413DC(GlobalContext *globalCtx, s32 limbIndex, Gfx **dList, Vec3s *rot, void *thisx) {
    
    EnGo* this = THIS;
    Vec3f vec1;

    vec1 = D_80A41BCC;

    if (limbIndex == 0x11) {
        Matrix_MultVec3f(&vec1, &this->actor.posRot2.pos);
    }
}



// #pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Go/EnGo_Draw.s")
void EnGo_Draw(Actor* thisx, GlobalContext *globalCtx) {

    EnGo* this = THIS;

    OPEN_DISPS(globalCtx->state.gfxCtx, "../z_en_go.c", 2479);
    func_80A416A8(this);
    Matrix_Push();
    func_80A417B4(this, globalCtx);
    Matrix_Pull();

    if (this->actionFunc == func_80A40218) {
        func_80A40F58(this, globalCtx);
        return;
    }

    if (this->actionFunc == func_80A4011C || this->actionFunc == func_80A3FEB4 || this->actionFunc == func_80A3FEF8 || this->actionFunc == func_80A3FEB4) {
        func_80A41068(this, globalCtx);
        return;
    }

    func_800943C8(globalCtx->state.gfxCtx);

    gSPSegment(POLY_OPA_DISP++, 0x08, SEGMENTED_TO_VIRTUAL(&D_0600CE80));
    gSPSegment(POLY_OPA_DISP++, 0x09, SEGMENTED_TO_VIRTUAL(&D_0600DE80));

    SkelAnime_DrawFlexOpa(globalCtx, this->skelanime.skeleton, this->skelanime.limbDrawTbl, this->skelanime.dListCount, func_80A411C8, func_80A413DC, &this->actor);
    CLOSE_DISPS(globalCtx->state.gfxCtx, "../z_en_go.c", 2525);
    func_80A417B4(this, globalCtx);
}



#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Go/func_80A41604.s")
// void func_80A41604(EnGo *this, Vec3f *pos, Vec3f *velocity, Vec3f *accel, u8 unk_arg1, f32 unk_arg2, f32 unk_arg3) {
//     EnGoUnkStruct *phi_v0;
//     s16 i;
//     u8 arg1;

//     phi_v0 = this->unk_268;
//     arg1 = unk_arg1;


//     for(i=0;i<20;i++){
//         if (phi_v0->unk_0 != 1) {
//             phi_v0->unk_4 = unk_arg2;
//             phi_v0->unk_8 = unk_arg3;
//             if(1) {}
//             phi_v0->unk_0 = 1;
//             phi_v0->unk_1 = arg1;
//             phi_v0->unk_2 = arg1;
//             phi_v0->pos = *pos;
//             phi_v0->accel = *accel;
//             phi_v0->velocity = *velocity;
//             return;
//         }
//         phi_v0++;
//     }

// }

// #pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Go/func_80A416A8.s")
void func_80A416A8(EnGo *this) {
    EnGoUnkStruct *phi_s0;
    f32 randomNumber;
    s16 temp_s1;
    s16 i;

    phi_s0 = this->unk_268;

    for(i=0;i<20;i++){
        if (phi_s0->unk_0) {
            phi_s0->unk_1--;

            if ((phi_s0->unk_1) == 0) {
                phi_s0->unk_0 = 0;
            }

            phi_s0->accel.x = (Math_Rand_ZeroOne() * 0.4f) - 0.2f;
            randomNumber = Math_Rand_ZeroOne() * 0.4f;
            phi_s0->accel.z = randomNumber - 0.2f;
            phi_s0->pos.x += phi_s0->velocity.x;
            phi_s0->pos.y += phi_s0->velocity.y;
            phi_s0->pos.z += phi_s0->velocity.z;
            phi_s0->velocity.x += phi_s0->accel.x;
            phi_s0->velocity.y += phi_s0->accel.y;
            phi_s0->velocity.z += randomNumber - 0.2f;
            phi_s0->unk_4 += phi_s0->unk_8;
        }
        phi_s0++;
    }
}


#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Go/func_80A417B4.s")
// void func_80A417B4(EnGo *this, GlobalContext *globalCtx) {
//     Gfx *sp88;
//     EnGoUnkStruct *temp_s2;
//     Gfx *temp_v0;
//     Gfx *temp_v0_2;
//     Gfx *temp_v0_3;
//     Gfx *temp_v0_4;
//     Gfx *temp_v0_5;
//     Gfx *temp_v0_6;
//     Gfx *temp_v0_7;
//     GraphicsContext *temp_a1;
//     GraphicsContext *temp_s0;
//     MtxF *temp_s3;
//     f32 temp_f12;
//     f32 temp_f16;
//     f32 temp_f16_2;
//     f32 temp_f6;
//     f32 temp_f8;
//     s16 temp_s4;
//     s32 temp_a0;
//     u8 temp_t1;
//     u8 temp_t2;
//     u8 temp_t2_2;
//     u8 temp_t3;
//     EnGoUnkStruct *phi_s2;
//     s32 phi_s7;
//     f32 phi_f6;
//     f32 phi_f16;
//     f32 phi_f16_2;
//     f32 phi_f8;
//     s16 phi_s4;

//     temp_a1 = globalCtx->state.gfxCtx;
//     temp_s2 = this->unk_268;
//     temp_s0 = temp_a1;
//     Graph_OpenDisps(&sp88, temp_a1, (const char *) "../z_en_go.c", 0xA42);
//     func_80093D84(globalCtx->state.gfxCtx);
//     phi_s2 = temp_s2;
//     phi_s7 = 0;
//     phi_s4 = (u16)0;
// loop_1:
//     temp_s3 = &globalCtx->mf_11DA0;
//     if (phi_s2->unk_0 != 0) {
//         if (phi_s7 == 0) {
//             temp_v0 = Gfx_CallSetupDL(temp_s0->polyXlu.p, 0U);
//             temp_s0->polyXlu.p = temp_v0;
//             temp_s0->polyXlu.p = temp_v0 + 8;
//             temp_v0->words.w1 = 0x600FD40;
//             temp_v0->words.w0 = 0xDE000000;
//             temp_v0_2 = temp_s0->polyXlu.p;
//             temp_s0->polyXlu.p = temp_v0_2 + 8;
//             temp_v0_2->words.w0 = 0xFB000000;
//             temp_v0_2->words.w1 = 0x643C1400;
//             phi_s7 = 1;
//         }
//         temp_t1 = phi_s2->unk_1;
//         temp_f6 = (f32) temp_t1;
//         phi_f6 = temp_f6;
//         if ((s32) temp_t1 < 0) {
//             phi_f6 = temp_f6 + 4294967296.0f;
//         }
//         temp_t2 = phi_s2->unk_2;
//         temp_f16 = (f32) temp_t2;
//         phi_f16 = temp_f16;
//         if ((s32) temp_t2 < 0) {
//             phi_f16 = temp_f16 + 4294967296.0f;
//         }
//         temp_v0_3 = temp_s0->polyXlu.p;
//         temp_s0->polyXlu.p = temp_v0_3 + 8;
//         temp_v0_3->words.w0 = 0xFA000000;
//         temp_v0_3->words.w1 = ((s16) (s32) (phi_f6 * (255.0f / phi_f16)) & 0xFF) | 0xAA825A00;
//         temp_v0_4 = temp_s0->polyXlu.p;
//         temp_s0->polyXlu.p = temp_v0_4 + 8;
//         temp_v0_4->words.w1 = 0;
//         temp_v0_4->words.w0 = 0xE7000000;
//         Matrix_Translate(phi_s2->pos.x, phi_s2->pos.y, (bitwise f32) phi_s2->pos.z, (u8)0U);
//         func_800D1FD4(temp_s3);
//         temp_f12 = phi_s2->unk_4;
//         Matrix_Scale(temp_f12, temp_f12, 1.0f, (u8)1U);
//         temp_v0_5 = temp_s0->polyXlu.p;
//         temp_s0->polyXlu.p = temp_v0_5 + 8;
//         temp_v0_5->words.w0 = 0xDA380003;
//         temp_v0_5->words.w1 = Matrix_NewMtx(globalCtx->state.gfxCtx, (char *) "../z_en_go.c", 0xA68);
//         temp_t2_2 = phi_s2->unk_1;
//         temp_f16_2 = (f32) temp_t2_2;
//         phi_f16_2 = temp_f16_2;
//         if ((s32) temp_t2_2 < 0) {
//             phi_f16_2 = temp_f16_2 + 4294967296.0f;
//         }
//         temp_t3 = phi_s2->unk_2;
//         temp_f8 = (f32) temp_t3;
//         phi_f8 = temp_f8;
//         if ((s32) temp_t3 < 0) {
//             phi_f8 = temp_f8 + 4294967296.0f;
//         }
//         temp_v0_6 = temp_s0->polyXlu.p;
//         temp_s0->polyXlu.p = temp_v0_6 + 8;
//         temp_v0_6->words.w0 = 0xDB060020;
//         temp_a0 = D_80A41BD8[(s16) (s32) (phi_f16_2 * (8.0f / phi_f8))];
//         temp_v0_6->words.w1 = (temp_a0 & 0xFFFFFF) + gSegments[(u32) (temp_a0 * 0x10) >> 0x1C] + 0x80000000;
//         temp_v0_7 = temp_s0->polyXlu.p;
//         temp_s0->polyXlu.p = temp_v0_7 + 8;
//         temp_v0_7->words.w1 = 0x600FD50;
//         temp_v0_7->words.w0 = 0xDE000000;
//     }
//     temp_s4 = phi_s4 + 1;
//     phi_s2 = phi_s2 + 0x38;
//     phi_s4 = temp_s4;
//     if ((s32) temp_s4 < 0x14) {
//         goto loop_1;
//     }
//     Graph_CloseDisps(&sp88, globalCtx->state.gfxCtx, (const char *) "../z_en_go.c", 0xA76);
// }
