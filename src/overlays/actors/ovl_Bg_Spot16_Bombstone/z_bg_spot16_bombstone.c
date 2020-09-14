#include "z_bg_spot16_bombstone.h"

#define FLAGS 0x00000010

#define THIS ((BgSpot16Bombstone*)thisx)

void BgSpot16Bombstone_Init(Actor* thisx, GlobalContext* globalCtx);
void BgSpot16Bombstone_Destroy(Actor* thisx, GlobalContext* globalCtx);
void BgSpot16Bombstone_Update(Actor* thisx, GlobalContext* globalCtx);
void BgSpot16Bombstone_Draw(Actor* thisx, GlobalContext* globalCtx);
void func_808B5A94(BgSpot16Bombstone* this, GlobalContext* globalCtx);
void func_808B5B04(BgSpot16Bombstone* this, GlobalContext* globalCtx);
void func_808B5B6C(BgSpot16Bombstone* this, GlobalContext* globalCtx);
void func_808B5B58(BgSpot16Bombstone* this);
void func_808B5950(BgSpot16Bombstone* this, GlobalContext* globalCtx);
void func_808B5934(BgSpot16Bombstone* this);
void func_808B5AF0(BgSpot16Bombstone* this);
s16 func_808B4E58(BgSpot16Bombstone* this, GlobalContext* globalctx);

extern s16 D_06000C20;
extern s32 D_060009E0;

s16 D_808B5DD0 = { 0 };
s16 D_808B5DD4 = { 0 };

D_808B5DD8Struct D_808B5DD8[6] = { { 0x0008, 0x0004, 0x0046, 0x07D0, 0xFCE0, 0x0000, 0x0064, 0x0000, 0x0000, 0x0000 },
                                   { 0x0006, 0x0003, 0x0032, 0x00C8, 0x0A28, 0xC350, 0x005A, 0x0000, 0x0000, 0x0000 },
                                   { 0x0005, 0x0003, 0x0028, 0xF63C, 0x0190, 0x30B0, 0x0032, 0x0000, 0x0000, 0x0000 },
                                   { 0x0003, 0x0001, 0x003C, 0x0258, 0xFF9C, 0xAFC8, 0x0032, 0x0000, 0x0000, 0x0000 },
                                   { 0x0003, 0x0001, 0x0028, 0xF2B8, 0xFF9C, 0x6590, 0x001E, 0x0000, 0x0000, 0x0000 },
                                   { 0x0006, 0x0009, 0x0028, 0x0000, 0x0BB8, 0xD8F0, 0x001E, 0x0000, 0x0000, 0x0000 } };

// sJntSphItemsInit
// static ColliderJntSphItemInit D_808B5E50[1] = {
static ColliderJntSphItemInit sJntSphItemsInit[1] = {
    {
        { 0x00, { 0x00000000, 0x00, 0x00 }, { 0x4FC1FFF6, 0x00, 0x00 }, 0x00, 0x01, 0x01 },
        { 0, { { 0, 50, 0 }, 288 }, 100 },
    },
};

// sJntSphInit
// static ColliderJntSphInit D_808B5E74 = {
static ColliderJntSphInit sJntSphInit = {
    { COLTYPE_UNK12, 0x00, 0x0D, 0x39, 0x20, COLSHAPE_JNTSPH },
    1,
    sJntSphItemsInit,
};

s32 D_808B5E84[] = { 0x0A000900, 0x00010000, 0x00000000, 0x00000000, 0x00000000, 0x00000008,
                     0x00000000, 0x00010000, 0x00BE0050, 0x0000000A, 0x00000032 };

D_808B5EB0Struct D_808B5EB0[] = { { 0x0000, 0x000A, 0x003C, 0xFFF6, 0x0104, 0x01E0, 0x0007 },
                                  { 0x0000, 0x0000, 0x0032, 0x0000, 0x0104, 0x017C, 0x000D },
                                  { 0x0001, 0x001E, 0x0014, 0x0014, 0x00A0, 0x0104, 0x000A },
                                  { 0x0002, 0x0014, 0x0028, 0x0014, 0x00C8, 0x0096, 0x0007 },
                                  { 0x0003, 0xFFD8, 0x0064, 0x001E, 0x00D2, 0x0064, 0x0007 },
                                  { 0x0004, 0x000A, 0x0078, 0x000A, 0x00A0, 0x0028, 0x000A },
                                  { 0x0005, 0xFFA7, 0x006E, 0x0041, 0x0096, 0x0118, 0x0007 },
                                  { 0x0006, 0xFFC4, 0x0070, 0x006D, 0x006E, 0x0082, 0x0007 },
                                  { 0x0007, 0xFFF2, 0x0050, 0x007F, 0x008C, 0x00D2, 0x0007 },
                                  { 0x0008, 0x0014, 0x0032, 0x001E, 0x008C, 0x00C8, 0x0007 },
                                  { 0x0009, 0xFFEC, 0x0014, 0x0028, 0x00C8, 0x00B4, 0x0007 },
                                  { 0x000A, 0x001E, 0x0028, 0xFFE2, 0x0064, 0x0078, 0x0007 },
                                  { 0x000A, 0xFF92, 0x001D, 0x0078, 0x008C, 0x0118, 0x000A },
                                  { 0x000B, 0x001E, 0x0014, 0x001E, 0x0050, 0x00C8, 0x0006 },
                                  { 0x000C, 0x0028, 0x001E, 0xFFE2, 0x00AA, 0x010E, 0x0011 },
                                  { 0x000D, 0xFFD8, 0x0032, 0xFFEC, 0x008C, 0x0056, 0x0006 },
                                  { 0x000D, 0x0032, 0x0032, 0x0032, 0x0096, 0x00C8, 0x000A },
                                  { 0x000E, 0x0028, 0x0028, 0xFFD8, 0x003C, 0x00A0, 0x0006 },
                                  { 0x000F, 0xFFE2, 0x0014, 0x0032, 0x00AA, 0x012C, 0x0006 },
                                  { 0x0010, 0x0028, 0x0032, 0x0014, 0x00AA, 0x0078, 0x0007 },
                                  { 0x0010, 0x001E, 0x0032, 0x003C, 0x0096, 0x00C8, 0x0006 },
                                  { 0x0011, 0x000A, 0x000A, 0x0000, 0x0082, 0x00DC, 0x0006 },
                                  { 0x0012, 0x000A, 0x0028, 0x0014, 0x00B4, 0x00DC, 0x000B },
                                  { 0x0013, 0x000A, 0x0005, 0x0000, 0x006E, 0x0046, 0x0011 },
                                  { 0x0013, 0xFFEC, 0x0032, 0xFFE2, 0x0096, 0x00C8, 0x0006 },
                                  { 0x0014, 0x0050, 0x0032, 0x0000, 0x0096, 0x00C8, 0x0008 } };

const ActorInit Bg_Spot16_Bombstone_InitVars = {
    ACTOR_BG_SPOT16_BOMBSTONE,
    ACTORTYPE_PROP,
    FLAGS,
    OBJECT_SPOT16_OBJ,
    sizeof(BgSpot16Bombstone),
    (ActorFunc)BgSpot16Bombstone_Init,
    (ActorFunc)BgSpot16Bombstone_Destroy,
    (ActorFunc)BgSpot16Bombstone_Update,
    (ActorFunc)BgSpot16Bombstone_Draw,
};

// sInitChain
static InitChainEntry sInitChain[] = {
    ICHAIN_F32(uncullZoneForward, 2000, ICHAIN_CONTINUE),
    ICHAIN_F32(uncullZoneScale, 500, ICHAIN_CONTINUE),
    ICHAIN_F32(uncullZoneDownward, 1000, ICHAIN_STOP),
};

// s32 D_808B603C[] = { 0xB0F407D0, 0xB0F801F4, 0x30FC03E8};

s32 D_808B6048[] = { 0xB06CFFFF, 0xB070FFF6, 0xB0F403E8, 0xB0F800C8, 0x30FC03E8 };
Vec3f D_808B605C = { 0, 0, 0 };
Vec3i D_808B6068 = { 0x00000000, 0x3ECCCCCD, 0x00000000 };

s32 D_808B6074[] = { 0x42840000, 0x424C0000, 0x42400000, 0x42100000, 0x41A80000 };

// s32 D_808B6088[] = {0x00, 0x00, 0x00, 0x01, 0x00, 0x02, 0x00, 0x03, 0x00, 0x04};
s16 D_808B6088[] = { 0, 1, 2, 3, 4 };

// s16 D_808B6092[] = {0x00};

void func_808B4C30(BgSpot16Bombstone* this) {
    s16 temp_v0;

    temp_v0 = this->actor.params;
    this->unk_156 = (temp_v0 >> 8) & 0x3F;
    this->actor.params = temp_v0 & 0xFF;
}

// #pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Bg_Spot16_Bombstone/func_808B4C30.s")

void func_808B4C4C(BgSpot16Bombstone* this, GlobalContext* globalCtx) {
    ColliderJntSph* colliderJntSph;

    colliderJntSph = &this->colliderJntSph;
    Collider_InitJntSph(globalCtx, colliderJntSph);
    Collider_SetJntSph(globalCtx, colliderJntSph, &this->actor, &sJntSphInit, &this->colliderJntSphItem);
    this->colliderJntSph.list->dim.worldSphere.center.x = this->actor.posRot.pos.x;
    this->colliderJntSph.list->dim.worldSphere.center.y = (this->actor.posRot.pos.y + 50.0f);
    this->colliderJntSph.list->dim.worldSphere.center.z = this->actor.posRot.pos.z;
    this->colliderJntSph.list->dim.worldSphere.radius = 0x78;
}

// #pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Bg_Spot16_Bombstone/func_808B4C4C.s")

void func_808B4D04(BgSpot16Bombstone* this, GlobalContext* globalCtx) {
    ColliderCylinder* temp_a1;

    temp_a1 = &this->colliderCylinder;
    Collider_InitCylinder(globalCtx, temp_a1);
    Collider_SetCylinder(globalCtx, temp_a1, &this->actor, (ColliderCylinderInit*)D_808B5E84);
    this->colliderCylinder.dim.pos.x += (s16)this->actor.posRot.pos.x;
    this->colliderCylinder.dim.pos.y += (s16)this->actor.posRot.pos.y;
    this->colliderCylinder.dim.pos.z += (s16)this->actor.posRot.pos.z;
}

// #pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Bg_Spot16_Bombstone/func_808B4D04.s")

s32 func_808B4D9C(BgSpot16Bombstone* this, GlobalContext* globalCtx) {
    if (Flags_GetSwitch(globalCtx, this->unk_156)) {
        osSyncPrintf("Spot16 obj 爆弾石 破壊済み\n");
        return 0;
    }
    Actor_ProcessInitChain(&this->actor, sInitChain);
    Actor_SetScale(&this->actor, 0.4);
    this->actor.colChkInfo.mass = 0xFFU;
    func_808B4C4C(this, globalCtx);
    func_808B4D04(this, globalCtx);
    this->unk_15C = Math_Sins(this->actor.shape.rot.y);
    this->unk_160 = Math_Coss(this->actor.shape.rot.y);
    this->unk_150 = &D_06000C20;

    func_808B5934(this);
    return 1;
}

// #pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Bg_Spot16_Bombstone/func_808B4D9C.s")

// s16 func_808B4E58(BgSpot16Bombstone* this, GlobalContext* globalctx) {

//     f32 multiplier = 50.0f;
//     f32 scaleMultiplier = 0.0016666667f;
//     Actor* actor = &this->actor;
//     f32 sinValue;
//     f32 temp;
//     f32 temp2;
//     f32 cosValue;

//     Actor_ProcessInitChain(actor, sInitChain);

//     actor->speedXZ = D_808B5DD8[actor->params].speed;
//     actor->velocity.y = D_808B5DD8[actor->params].velocity;

//     Actor_SetScale(actor, D_808B5DD8[actor->params].scale * scaleMultiplier);

//     temp = D_808B5DD8[actor->params].unk_6;
//     this->unk_210 = temp;

//     temp2 = D_808B5DD8[actor->params].unk_8;
//     this->unk_212 = temp2;

//     actor->posRot.rot.y = D_808B5DD8[actor->params].unk_A;

//     sinValue = Math_Sins(this->actor.posRot.rot.y);
//     cosValue = Math_Coss(this->actor.posRot.rot.y);

//     actor->posRot.pos.x = (sinValue * multiplier) + actor->initPosRot.pos.x;
//     actor->posRot.pos.y = D_808B5DD8[actor->params].unk_C + actor->initPosRot.pos.y;
//     actor->posRot.pos.z = (cosValue * multiplier) + actor->initPosRot.pos.z;

//     actor->shape.rot.x = D_808B5DD8[actor->params].unk_E.x;
//     actor->shape.rot.y = D_808B5DD8[actor->params].unk_E.y;
//     actor->shape.rot.z = D_808B5DD8[actor->params].unk_E.z;

//     this->unk_150 = &D_060009E0;
//     this->unk_214 = Object_GetIndex(&globalctx->objectCtx, 0x163);

//     if (this->unk_214 < 0) {
//         osSyncPrintf("Error : バンク危険！(arg_data 0x%04x)(%s %d)\n", actor->params,
//                      "../z_bg_spot16_bombstone.c", 0x24D);
//         return 0;
//     }

//     func_808B5AF0(this);
//     return 1;
// }

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Bg_Spot16_Bombstone/func_808B4E58.s")

// void BgSpot16Bombstone_Init(Actor *thisx, GlobalContext *globalCtx) {

//     BgSpot16Bombstone* this = THIS;
//     s16 phi_v1;

//     func_808B4C30(this);

//     switch(this->actor.params) {
//         case 0xFF:
//             phi_v1 = func_808B4D9C(thisx, globalCtx);
//             break;
//         case 0:
//         case 1:
//         case 2:
//         case 3:
//         case 5:
//             phi_v1 = func_808B4E58(thisx, globalCtx);
//             break;
//         default:
//             osSyncPrintf("Error : arg_data おかしいな(%s %d)(arg_data 0x%04x)\n",
//                 "../z_bg_spot16_bombstone.c", 0x29C, this->actor.params);
//             phi_v1 = 0;
//             break;
//     }

//     if (phi_v1 == 0) {
//         Actor_Kill(thisx);
//         return;
//     }
//     osSyncPrintf("Spot16 obj 爆弾石 (scaleX %f)(arg_data 0x%04x)\n", this->actor.scale.x, this->actor.params);
// }

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Bg_Spot16_Bombstone/BgSpot16Bombstone_Init.s")

void BgSpot16Bombstone_Destroy(Actor* thisx, GlobalContext* globalCtx) {
    BgSpot16Bombstone* this = THIS;
    ColliderJntSph* temp_a1;

    if (this->actor.params == 0xFF) {
        temp_a1 = &this->colliderJntSph;
        Collider_DestroyJntSph(globalCtx, temp_a1);
        Collider_DestroyCylinder(globalCtx, &this->colliderCylinder);
    }
}

// #pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Bg_Spot16_Bombstone/BgSpot16Bombstone_Destroy.s")

void func_808B51A8(BgSpot16Bombstone* this, GlobalContext* globalCtx) {
    f32 scaleX1 = this->actor.scale.x * 150;
    s16 scaleX2 = this->actor.scale.x * 250;
    Vec3f tempPosRot;

    tempPosRot.x = this->actor.posRot.pos.x;
    tempPosRot.y = this->actor.posRot.pos.y + 50.0f;
    tempPosRot.z = this->actor.posRot.pos.z;

    func_80033480(globalCtx, &tempPosRot, scaleX1, 2, scaleX2, 0xA0, 1);
}

// #pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Bg_Spot16_Bombstone/func_808B51A8.s")

// void func_808B5240(BgSpot16Bombstone* this, GlobalContext* globalCtx) {
//     D_808B5EB0Struct *currentElement;
//     Vec3f position;
//     Vec3f actorPos = this->actor.posRot.pos;
//     Vec3f velocity;
//     Vec3i acceleration;

//     currentElement = &D_808B5EB0[this->unk_158];

//     velocity = D_808B605C;
//     acceleration = D_808B6068;
//     while (this->unk_158 < 26 && this->unk_154 >= currentElement->unk_0) {

//         position.x = ((this->unk_15C * currentElement->unk_6) + (currentElement->unk_2 * 
//             this->unk_160)) + actorPos.x;
//         position.y = currentElement->unk_4 + this->actor.posRot.pos.y;
//         position.z = ((this->unk_160 * currentElement->unk_6) - (currentElement->unk_2 * 
//             this->unk_15C)) + actorPos.z;

//         func_800287AC(
//             globalCtx,
//             &position,
//             &velocity,
//             &acceleration,
//             currentElement->unk_8,
//             currentElement->unk_A,
//             currentElement->unk_C
//         );
//         this->unk_158++;
        
//         currentElement = &D_808B5EB0[this->unk_158];
//     }
// }

void func_808B5240(BgSpot16Bombstone* this, GlobalContext* globalCtx) {
    s32 tempUnk6;
    s16 new_var;
    s16 index;
    f32 tempUnk2;
    Vec3f newPos;
    Vec3f* actorPos = &this->actor.posRot.pos;

    if (1) {}

    while (1) {
        if ((this->unk_158 >= 26U) || (this->unk_154 < D_808B5EB0[this->unk_158].unk_0)) {
            return;
        }

        index = this->unk_158;
        tempUnk2 = D_808B5EB0[index].unk_2;
        new_var = D_808B5EB0[index].unk_6;
        tempUnk6 = D_808B5EB0[index].unk_6;
        newPos.x = ((this->unk_15C * new_var) + (tempUnk2 * this->unk_160)) + actorPos->x;
        newPos.y = D_808B5EB0[index].unk_4 + actorPos->y;
        newPos.z = ((this->unk_160 * tempUnk6) - (tempUnk2 * this->unk_15C)) + actorPos->z;
        func_800287AC(
            globalCtx, 
            &newPos, 
            &D_808B605C, 
            &D_808B6068, 
            D_808B5EB0[index].unk_8, 
            D_808B5EB0[index].unk_A,
            D_808B5EB0[index].unk_C);
        this->unk_158++;
    }
}

// #pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Bg_Spot17_Bombstone/func_808B5240.s")

/*
void func_808B53A8(void *arg0, GlobalContext *arg1) {
    f32 spC0;
    f32 spBC;
    f32 spB8;
    f32 spB4;
    f32 spB0;
    f32 spAC;
    f32 *temp_s3;
    f32 *temp_s4;
    s32 *temp_s0;
    s32 phi_v0;
    s32 *phi_s0;

    phi_v0 = 0;
    if (arg0->unk1C == 0) {
        Actor_Spawn(arg1 + 0x1C24, arg1, (u16)0xCD, (bitwise f32) arg0->unk24, arg0->unk28, arg0->unk2C, 0, 0, 0, 5);
        phi_v0 = 3;
    }
    if (phi_v0 < 5) {
        temp_s4 = &spAC;
        temp_s3 = &spB8;
        phi_s0 = &D_808B6074[phi_v0];
loop_4:
        spB8 = ((Math_Rand_ZeroOne() - 0.5f) * 8.0f) + (bitwise f32) arg0->unk24;
        spBC = ((Math_Rand_ZeroOne() * 5.0f) + arg0->unk28) + 8.0f;
        spC0 = ((Math_Rand_ZeroOne() - 0.5f) * 8.0f) + arg0->unk2C;
        spAC = (Math_Rand_ZeroOne() - 0.5f) * 16.0f;
        spB0 = (f32) ((f64) (fabsf(arg0->unk60) * 1.3f) + ((f64) Math_Rand_ZeroOne() * 14.0));
        spB4 = (Math_Rand_ZeroOne() - 0.5f) * 16.0f;
        func_80029E8C(arg1, (Vec3f *) temp_s3, (Vec3f *) temp_s4, arg0 + 0x24, -0x1A4, 0x31, 0xF, 0xF, 0, (s32) ((s32)
((*phi_s0 * arg0->unk50) * 3.0f) << 0x10) >> 0x10, 2, 0x40, 0xA0, -1, 0x163, 0x60009E0); temp_s0 = phi_s0 + 4; phi_s0 =
temp_s0; if (temp_s0 != D_808B6088) { goto loop_4;
        }
    }
}
*/
#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Bg_Spot16_Bombstone/func_808B53A8.s")

void func_808B561C(BgSpot16Bombstone* this, GlobalContext* globalCtx) {
    int i;
    PosRot* temp_s1;

    temp_s1 = &this->actor.posRot;
    for (i = 0; i < ARRAY_COUNT(D_808B6088); i++) {
        if (Actor_Spawn(&globalCtx->actorCtx, globalCtx, 0xCD, temp_s1->pos.x, temp_s1->pos.y, temp_s1->pos.z, 0, 0, 0,
                        D_808B6088[i]) == 0) {
            return;
        }
    }
}

// #pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Bg_Spot16_Bombstone/func_808B561C.s")

/*
void func_808B56BC(void *arg0, void *arg1) {
    void *sp3C;
    s32 sp28;
    f32 temp_f0;
    f32 temp_f2;
    s32 temp_a0;
    s32 temp_v0;
    void *temp_a2;
    s32 phi_v1;

    temp_a2 = arg1->unk1C44;
    if (arg0->unk90 < 130.0f) {
        temp_f0 = arg0->unk94;
        if (temp_f0 < 160.0f) {
            if (-10.0f <= temp_f0) {
                temp_v0 = arg0->unk8A - arg0->unkB6;
                phi_v1 = 0 - temp_v0;
                if (temp_v0 >= 0) {
                    phi_v1 = temp_v0;
                }
                temp_a0 = (s32) ((phi_v1 - 0x3FFF) << 0x10) >> 0x10;
                if (temp_a0 > 0) {
                    sp28 = temp_a0;
                    sp3C = temp_a2;
                    temp_f2 = Math_Sins((s16) temp_a0) * arg0->unk90;
                    if (0.0f <= temp_f2) {
                        temp_a2->unk24 = (f32) (temp_a2->unk24 + (temp_f2 * arg0->unk15C));
                        temp_a2->unk2C = (f32) (temp_a2->unk2C + (temp_f2 * arg0->unk160));
                        return;
                    }
                    osSyncPrintf((const char *) "Error 補正出来ない(%s %d)(arg_data 0x%04x)(hosei_angY %x)\n",
"../z_bg_spot16_bombstone.c", 0x3A7, arg0->unk1C, sp28);
                }
            }
        }
    }
}
*/

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Bg_Spot16_Bombstone/func_808B56BC.s")

/*
s32 func_808B57E0(s32 arg0, GlobalContext *arg1) {
    f32 temp_ret;
    s16 temp_t0;
    s16 temp_v0_2;
    s32 temp_v0;
    s32 temp_v0_3;
    void *temp_v0_4;
    void *temp_v1;
    s32 phi_return;

    temp_v0_2 = D_808B5DD4;
    temp_v1 = arg1->unk1C44;
    if ((s32) temp_v0_2 > 0) {
        D_808B5DD4 = (s16) (temp_v0_2 - 1);
    }
    temp_v0 = D_808B5DD0;
    if (temp_v0 != 0) {
        if (temp_v0->unk130 == 0) {
            D_808B5DD0 = 0;
            return temp_v0;
        }
        phi_return = temp_v0;
        if ((s32) D_808B5DD4 <= 0) {
            phi_return = temp_v0;
            if (temp_v0->unk28 < 1400.0f) {
                temp_ret = Math3D_Dist1DSq(temp_v0->unk24 + 1579.0f, temp_v0->unk2C + 790.0f);
                phi_return = (bitwise s32) temp_ret;
                if (temp_ret < 160000.0f) {
                    temp_v0_3 = D_808B5DD0;
                    phi_return = temp_v0_3;
                    if (temp_v0_3->unk1C == 0) {
                        temp_t0 = temp_v0_3->unk1F8;
                        phi_return = temp_v0_3;
                        if ((s32) temp_t0 > 0) {
                            D_808B5DD4 = (s16) (temp_t0 + 0x14);
                            return (s32) func_800800F8(arg1, (u16)0x1054, D_808B5DD4, NULL, 0);
                        }
                    }
                }
            }
        }
    } else {
        phi_return = temp_v0;
        if ((temp_v1->unk67C & 0x800) != 0) {
            temp_v0_4 = temp_v1->unk3AC;
            phi_return = (s32) temp_v0_4;
            if (temp_v0_4 != 0) {
                phi_return = (s32) temp_v0_4;
                if (temp_v0_4->unk2 == 3) {
                    phi_return = (s32) temp_v0_4;
                    if (temp_v0_4->unk0 == 0x4C) {
                        D_808B5DD0 = (s32) temp_v0_4;
                        phi_return = (s32) temp_v0_4;
                    }
                }
            }
        }
    }
    return phi_return;
}
*/

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Bg_Spot16_Bombstone/func_808B57E0.s")

// void func_808B5934(BgSpot16Bombstone* this) {
//     this->actor.draw = &BgSpot16Bombstone_Draw;
//     this->actionFunc = &func_808B5950;
// }

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Bg_Spot16_Bombstone/func_808B5934.s")

/*
s16 func_808B5950(void *arg0, GlobalContext *arg1) {
    CollisionCheckContext *sp30;
    Collider *sp2C;
    Collider *temp_a2;
    CollisionCheckContext *temp_a1;
    GameInfo *temp_v1;
    s16 temp_ret;
    s16 temp_v0;
    u8 temp_v0_2;

    func_808B56BC();
    func_808B57E0(arg0, arg1);
    temp_v0_2 = arg0->unk1D5;
    if ((temp_v0_2 & 2) != 0) {
        arg0->unk1D5 = (u8) (temp_v0_2 & 0xFFFD);
        func_808B561C(arg0, arg1);
        func_800800F8(arg1, (u16)0x1054, (u16)0x32, NULL, 0);
        Flags_SetSwitch(arg1, (s32) arg0->unk156);
        gSaveContext.unkED8 = (u16) (gSaveContext.unkED8 | 8);
        func_808B5A78(arg0);
    } else {
        temp_a1 = &arg1->colChkCtx;
        sp30 = temp_a1;
        CollisionCheck_SetAC(arg1, temp_a1, arg0 + 0x1C4);
        temp_a2 = arg0 + 0x164;
        sp2C = temp_a2;
        CollisionCheck_SetOC(arg1, temp_a1, temp_a2);
        CollisionCheck_SetAC(arg1, temp_a1, temp_a2);
    }
    temp_v1 = gGameInfo;
    temp_v0 = temp_v1->unk11D4;
    if (temp_v0 == 1) {
        temp_ret = func_808B561C(arg0, arg1);
        gGameInfo->unk11D4 = (u16)-0xA;
        return temp_ret;
    }
    if ((s32) temp_v0 < 0) {
        temp_v1->unk11D4 = (s16) (temp_v0 + 1);
    }
    return temp_v0;
}
*/

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Bg_Spot16_Bombstone/func_808B5950.s")

// void func_808B5A78(BgSpot16Bombstone* this) {
//     this->unk_154 = 0;
//     this->unk_158 = 0;
//     this->actor.draw = NULL;
//     this->actionFunc = &func_808B5A94;
// }

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Bg_Spot16_Bombstone/func_808B5A78.s")

/*
void func_808B5A94(Actor *arg0) {
    s16 temp_v0;
    s32 phi_v0;

    func_808B5240();
    temp_v0 = arg0->unk154;
    phi_v0 = (s32) temp_v0;
    if (temp_v0 == 0x38) {
        arg0 = arg0;
        func_80078884((u16)0x4802U);
        phi_v0 = (s32) arg0->unk154;
    }
    if (phi_v0 >= 0x3D) {
        Actor_Kill(arg0);
    }
}
*/

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Bg_Spot16_Bombstone/func_808B5A94.s")

// void func_808B5AF0(BgSpot16Bombstone* this) {
//     this->actionFunc = &func_808B5B04;
//     this->actor.draw = NULL;
// }

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Bg_Spot16_Bombstone/func_808B5AF0.s")

// void func_808B5B04(BgSpot16Bombstone* this, GlobalContext* globalCtx) {
//     if (Object_IsLoaded(&globalCtx->objectCtx, this->unk_214)) {
//         func_808B5B58(this);
//         this->actor.draw = &BgSpot16Bombstone_Draw;
//     }
// }

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Bg_Spot16_Bombstone/func_808B5B04.s")

// void func_808B5B58(BgSpot16Bombstone* this) {
//     this->unk_154 = 0;
//     this->actionFunc = &func_808B5B6C;
// }

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Bg_Spot16_Bombstone/func_808B5B58.s")

/*
void func_808B5B6C(Actor *arg0, GlobalContext *arg1) {
    u16 temp_v0;

    Actor_MoveForward(arg0);
    arg0->shape.rot.x = (s16) (arg0->shape.rot.x + arg0->unk210);
    arg0->shape.rot.z = (s16) (arg0->shape.rot.z + arg0->unk212);
    if ((s32) arg0->unk154 >= 0x3D) {
        Actor_Kill(arg0);
        return;
    }
    temp_v0 = arg0->bgCheckFlags;
    if ((temp_v0 & 8) != 0) {
block_5:
        func_808B53A8(arg0, arg1);
        func_808B51A8(arg0, arg1);
        Audio_PlaySoundAtPosition(arg1, (Vec3f *) &arg0->posRot, 0x14, (u16)0x2852U);
        Actor_Kill(arg0);
        return;
    }
    if ((temp_v0 & 1) != 0) {
        if (arg0->velocity.y < 0.0f) {
            goto block_5;
        }
    }
    func_8002E4B4(arg1, arg0, 17.5f, 35.0f, 0.0f, 5);
}*/

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Bg_Spot16_Bombstone/func_808B5B6C.s")

// void BgSpot16Bombstone_Update(Actor* thisx, GlobalContext* globalCtx) {
//     BgSpot16Bombstone* this = THIS;

//     this->unk_154 = (s16)(this->unk_154 + 1);
//     if (this->actionFunc != 0) {
//         this->actionFunc(this, globalCtx);
//     }
// }

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Bg_Spot16_Bombstone/BgSpot16Bombstone_Update.s")

/*
void BgSpot16Bombstone_Draw(Actor *thisx, GlobalContext *globalCtx) {
    Gfx *sp34;
    Gfx *sp30;
    Gfx *temp_v0;
    Gfx *temp_v0_2;
    Gfx *temp_v0_3;
    Gfx *temp_v0_4;
    GraphicsContext *temp_a1;
    GraphicsContext *temp_s0;

    temp_a1 = globalCtx->state.gfxCtx;
    temp_s0 = temp_a1;
    Graph_OpenDisps(&sp34, temp_a1, (const char *) "../z_bg_spot16_bombstone.c", 0x4E5);
    func_80093D18(globalCtx->state.gfxCtx);
    temp_v0 = temp_s0->polyOpa.p;
    temp_s0->polyOpa.p = (Gfx *) (temp_v0 + 8);
    temp_v0->words.w0 = 0xDA380003U;
    sp30 = temp_v0;
    sp30->words.w1 = Matrix_NewMtx(globalCtx->state.gfxCtx, (char *) "../z_bg_spot16_bombstone.c", 0x4E9);
    if (thisx->params == 0xFF) {
        temp_v0_2 = temp_s0->polyOpa.p;
        temp_s0->polyOpa.p = (Gfx *) (temp_v0_2 + 8);
        temp_v0_2->words.w0 = 0xDE000000U;
        temp_v0_2->words.w1 = (u32) thisx->unk150;
    } else {
        temp_v0_3 = temp_s0->polyOpa.p;
        temp_s0->polyOpa.p = (Gfx *) (temp_v0_3 + 8);
        temp_v0_3->words.w0 = 0xDB060018U;
        temp_v0_3->words.w1 = (u32) globalCtx->objectCtx.status[thisx->unk214].segment;
        temp_v0_4 = temp_s0->polyOpa.p;
        temp_s0->polyOpa.p = (Gfx *) (temp_v0_4 + 8);
        temp_v0_4->words.w0 = 0xDE000000U;
        temp_v0_4->words.w1 = (u32) thisx->unk150;
    }
    Graph_CloseDisps(&sp34, globalCtx->state.gfxCtx, (const char *) "../z_bg_spot16_bombstone.c", 0x4FA);
}
*/

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Bg_Spot16_Bombstone/BgSpot16Bombstone_Draw.s")
