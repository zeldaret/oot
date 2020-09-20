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
void func_808B5A78(BgSpot16Bombstone* this);
void func_808B53A8(BgSpot16Bombstone* this, GlobalContext* globalCtx);

extern s16 D_06000C20;
extern Gfx D_060009E0;

typedef struct D_808B5DD8Struct {
    s16 speed; // assigned to actor.speedXZ
    s16 velocity; // assigned to actor.velocity
    s16 scale; // sent to Actor_SetScale
    s16 unk_6; // assigned to unk_210
    s16 unk_8; // assigned to unk_212
    s16 unk_A; // assigned to actor.posRot.rot.y
    s16 unk_C; // added to actor.initPosRot.pos.y and assigned to actor.posRot.pos.y
    Vec3s unk_E; // assigned to actor.shape.rot
} D_808B5DD8Struct; // size = 0x14

typedef struct D_808B5EB0Struct {
    s16 unk_0;
    s16 unk_2;
    s16 unk_4;
    s16 unk_6;
    s16 unk_8;
    s16 unk_A;
    s16 unk_C;
} D_808B5EB0Struct; // size = 0x14

EnBombf *playerBomb = NULL;
s16 D_808B5DD4 = 0;

D_808B5DD8Struct D_808B5DD8[] = { { 0x0008, 0x0004, 0x0046, 0x07D0, 0xFCE0, 0x0000, 0x0064, 0x0000, 0x0000, 0x0000 },
                                  { 0x0006, 0x0003, 0x0032, 0x00C8, 0x0A28, 0xC350, 0x005A, 0x0000, 0x0000, 0x0000 },
                                  { 0x0005, 0x0003, 0x0028, 0xF63C, 0x0190, 0x30B0, 0x0032, 0x0000, 0x0000, 0x0000 },
                                  { 0x0003, 0x0001, 0x003C, 0x0258, 0xFF9C, 0xAFC8, 0x0032, 0x0000, 0x0000, 0x0000 },
                                  { 0x0003, 0x0001, 0x0028, 0xF2B8, 0xFF9C, 0x6590, 0x001E, 0x0000, 0x0000, 0x0000 },
                                  { 0x0006, 0x0009, 0x0028, 0x0000, 0x0BB8, 0xD8F0, 0x001E, 0x0000, 0x0000, 0x0000 } };

// sJntSphItemsInit
// static ColliderJntSphItemInit D_808B5E50[1] = {
static ColliderJntSphItemInit sJntSphItemsInit[] = {
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

static InitChainEntry sInitChain2[] = {
    ICHAIN_F32(gravity, 65535, ICHAIN_CONTINUE),
    ICHAIN_F32(minVelocityY, 65526, ICHAIN_CONTINUE),
    ICHAIN_F32(uncullZoneForward, 1000, ICHAIN_CONTINUE),
    ICHAIN_F32(uncullZoneScale, 200, ICHAIN_CONTINUE),
    ICHAIN_F32(uncullZoneDownward, 1000, ICHAIN_STOP),
};

// s16 D_808B6048[] = { 45164, 65535, 45168, 65526, 45300, 1000, 45304, 200, 12540, 1000 };

Vec3f D_808B605C = { 0, 0, 0 };
Vec3f D_808B6068 = { 0.0f, 0.4f, 0.0f };

f32 D_808B6074[] = { 66.0f, 51.0f, 48.0f, 36.0f, 21.0f };

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

s32 func_808B4E58(BgSpot16Bombstone* this, GlobalContext* globalctx) {

    Actor* actor = &this->actor;
    f32 scaleMultiplier = 0.0016666667f;
    f32 multiplier = 50.0f;
    f32 sinValue;
    f32 cosValue;

    Actor_ProcessInitChain(actor, sInitChain2);

    actor->speedXZ = D_808B5DD8[actor->params].speed;
    actor->velocity.y = D_808B5DD8[actor->params].velocity;

    Actor_SetScale(actor, D_808B5DD8[actor->params].scale * scaleMultiplier);

    this->unk_210 = (f32) D_808B5DD8[actor->params].unk_6;
    this->unk_212 = (f32) D_808B5DD8[actor->params].unk_8;

    actor->posRot.rot.y = D_808B5DD8[actor->params].unk_A;

    sinValue = Math_Sins(this->actor.posRot.rot.y);
    cosValue = Math_Coss(this->actor.posRot.rot.y);

    actor->posRot.pos.x = (sinValue * multiplier) + actor->initPosRot.pos.x;
    actor->posRot.pos.y = D_808B5DD8[actor->params].unk_C + actor->initPosRot.pos.y;
    actor->posRot.pos.z = (cosValue * multiplier) + actor->initPosRot.pos.z;

    actor->shape.rot.x = D_808B5DD8[actor->params].unk_E.x;
    actor->shape.rot.y = D_808B5DD8[actor->params].unk_E.y;
    actor->shape.rot.z = D_808B5DD8[actor->params].unk_E.z;

    this->unk_150 = &D_060009E0;
    this->unk_214 = Object_GetIndex(&globalctx->objectCtx, OBJECT_BOMBIWA);

    if (this->unk_214 < 0) {
        osSyncPrintf("Error : バンク危険！(arg_data 0x%04x)(%s %d)\n", actor->params,
                        "../z_bg_spot16_bombstone.c", 0x24D);
        return false;
    }

    func_808B5AF0(this);
    return true;
}

// #pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Bg_Spot16_Bombstone/func_808B4E58.s")

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
        func_800287AC(globalCtx, &newPos, &D_808B605C, &D_808B6068, D_808B5EB0[index].unk_8, D_808B5EB0[index].unk_A,
                      D_808B5EB0[index].unk_C);
        this->unk_158++;
    }
}

// #pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Bg_Spot17_Bombstone/func_808B5240.s")

// void func_808B53A8(BgSpot16Bombstone *this, GlobalContext *globalCtx) {
//     Vec3f randomVector2;
//     Vec3f randomVector1;
//     f32 temp;
//     s16 scale;
//     s32 arrayIndex;

//     if (this->actor.params == 0) {
//         Actor_Spawn(&globalCtx->actorCtx, globalCtx, ACTOR_BG_SPOT16_BOMBSTONE, 
//             this->actor.posRot.pos.x, this->actor.posRot.pos.y, this->actor.posRot.pos.z, 0, 0, 0, 5);
//         arrayIndex = 3;
//     }
//     else {
//         arrayIndex = 0;
//     }

//     // for (; arrayIndex < ARRAY_COUNT(D_808B6074); ++arrayIndex) {
//     if (arrayIndex < 5) {
//         do {
//             randomVector1.x = ((Math_Rand_ZeroOne() - 0.5f) * 8.0f) + this->actor.posRot.pos.x;
//             randomVector1.y = ((Math_Rand_ZeroOne() * 5.0f) + this->actor.posRot.pos.y) + 8.0f;
//             randomVector1.z = ((Math_Rand_ZeroOne() - 0.5f) * 8.0f) + this->actor.posRot.pos.z;

//             randomVector2.x = (Math_Rand_ZeroOne() - 0.5f) * 16.0f;
//             randomVector2.y = (Math_Rand_ZeroOne() * 14.0) + (fabsf(this->actor.velocity.y) * 1.3f);
//             randomVector2.z = (Math_Rand_ZeroOne() - 0.5f) * 16.0f;

//             scale = D_808B6074[arrayIndex] * this->actor.scale.x * 3;

//             func_80029E8C(
//                 globalCtx, 
//                 &randomVector1, 
//                 &randomVector2, 
//                 &this->actor.posRot.pos, 
//                 -0x1A4, 
//                 0x31, 
//                 0xF, 
//                 0xF, 
//                 0, 
//                 scale,
//                 2, 
//                 0x40, 
//                 0xA0, 
//                 -1, 
//                 OBJECT_BOMBIWA,
//                 &D_060009E0);
//             arrayIndex += 1;
//         }
//         while (arrayIndex != ARRAY_COUNT(D_808B6074));
//     }
// }

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

void func_808B56BC(BgSpot16Bombstone *this, GlobalContext *globalCtx) {
    Player *player = PLAYER;
    f32 temp_f2;
    s16 temp_a0;
    s32 yawDiff;
    s32 absYawDiff;

    if (this->actor.xzDistFromLink < 130.0f && 
        this->actor.yDistFromLink < 160.0f && 
        this->actor.yDistFromLink >= -10.0f
    ) {
        yawDiff = this->actor.yawTowardsLink - this->actor.shape.rot.y;
        absYawDiff = (yawDiff >= 0) ? yawDiff : -yawDiff;

        temp_a0 = absYawDiff - 0x3FFF;

        if (temp_a0 > 0) {
            temp_f2 = Math_Sins(temp_a0) * this->actor.xzDistFromLink;

            if (temp_f2 >= 0.0f) {
                player->actor.posRot.pos.x += temp_f2 * this->unk_15C;
                player->actor.posRot.pos.z += temp_f2 * this->unk_160;
            }
            else {
                osSyncPrintf("Error 補正出来ない(%s %d)(arg_data 0x%04x)(hosei_angY %x)\n", 
                    "../z_bg_spot16_bombstone.c", 935, this->actor.params, temp_a0);
            }
        }
    }
}



// #pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Bg_Spot16_Bombstone/func_808B56BC.s")

void func_808B57E0(BgSpot16Bombstone *this, GlobalContext *globalCtx) {
    EnBombf *newBomb;
    Player *player = PLAYER;
    EnBombf *tempBomb;

    if (D_808B5DD4 > 0) {
        D_808B5DD4--;
    }

    if (playerBomb != NULL) {
        if (playerBomb->actor.update == NULL) {
            playerBomb = NULL;
        }
        else if (D_808B5DD4 <= 0 && 
            playerBomb->actor.posRot.pos.y < 1400.0f && 
            Math3D_Dist1DSq(playerBomb->actor.posRot.pos.x + 1579.0f, 
                playerBomb->actor.posRot.pos.z + 790.0f) < 160000.0f &&
            playerBomb->actor.params == 0
        ) {
            tempBomb = playerBomb;
            if (tempBomb->timer > 0) {
                D_808B5DD4 = tempBomb->timer + 0x14;
                func_800800F8(globalCtx, 0x1054, D_808B5DD4, NULL, 0);
            }
        }
    } else {
        if ((player->stateFlags1 & 0x800) != 0) {
            newBomb = player->heldActor;
            if (newBomb != NULL && 
                newBomb->actor.type == ACTORTYPE_EXPLOSIVES && 
                newBomb->actor.id == ACTOR_EN_BOMBF
            ) {
                playerBomb = newBomb;
            }
        }
    }
}

// #pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Bg_Spot16_Bombstone/func_808B57E0.s")

void func_808B5934(BgSpot16Bombstone* this) {
    this->actor.draw = &BgSpot16Bombstone_Draw;
    this->actionFunc = &func_808B5950;
}

// #pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Bg_Spot16_Bombstone/func_808B5934.s")

void func_808B5950(BgSpot16Bombstone* this, GlobalContext* globalCtx) {
    s16 tempGameInfo;
    u8 acFlags;

    func_808B56BC(this, globalCtx);
    func_808B57E0(this, globalCtx);

    // TODO: Figure out if this can be removed.
    if (globalCtx) {}

    acFlags = this->colliderCylinder.base.acFlags;

    if ((acFlags & 2) != 0) {
        this->colliderCylinder.base.acFlags = acFlags & 0xFFFD;

        func_808B561C(this, globalCtx);

        func_800800F8(globalCtx, 0x1054, 0x32, NULL, 0);

        Flags_SetSwitch(globalCtx, this->unk_156);
        gSaveContext.eventChkInf[2] |= 8;

        func_808B5A78(this);
    } else {
        CollisionCheck_SetAC(globalCtx, &globalCtx->colChkCtx, &this->colliderCylinder);
        CollisionCheck_SetOC(globalCtx, &globalCtx->colChkCtx, &this->colliderJntSph);
        CollisionCheck_SetAC(globalCtx, &globalCtx->colChkCtx, &this->colliderJntSph);
    }

    if (gGameInfo->data[0x8e0] == 1) {
        func_808B561C(this, globalCtx);
        gGameInfo->data[0x8e0] = -0xA;
    } else if (gGameInfo->data[0x8E0] < 0) {
        gGameInfo->data[0x8E0]++;
    }
}

// #pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Bg_Spot16_Bombstone/func_808B5950.s")

void func_808B5A78(BgSpot16Bombstone* this) {
    this->unk_154 = 0;
    this->unk_158 = 0;
    this->actor.draw = NULL;
    this->actionFunc = &func_808B5A94;
}

// #pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Bg_Spot16_Bombstone/func_808B5A78.s")

void func_808B5A94(BgSpot16Bombstone* this, GlobalContext* globalCtx) {
    s16 temp;

    func_808B5240(this, globalCtx);

    temp = this->unk_154;

    if (temp == 0x38) {
        func_80078884(0x4802U);
        temp = this->unk_154;
    }

    if (temp >= 0x3D) {
        Actor_Kill(&this->actor);
    }
}

// #pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Bg_Spot16_Bombstone/func_808B5A94.s")

void func_808B5AF0(BgSpot16Bombstone* this) {
    this->actionFunc = &func_808B5B04;
    this->actor.draw = NULL;
}

// #pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Bg_Spot16_Bombstone/func_808B5AF0.s")

void func_808B5B04(BgSpot16Bombstone* this, GlobalContext* globalCtx) {
    if (Object_IsLoaded(&globalCtx->objectCtx, this->unk_214)) {
        func_808B5B58(this);
        this->actor.draw = &BgSpot16Bombstone_Draw;
    }
}

// #pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Bg_Spot16_Bombstone/func_808B5B04.s")

void func_808B5B58(BgSpot16Bombstone* this) {
    this->unk_154 = 0;
    this->actionFunc = &func_808B5B6C;
}

// #pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Bg_Spot16_Bombstone/func_808B5B58.s")

void func_808B5B6C(BgSpot16Bombstone* this, GlobalContext* globalCtx) {
    u16 bgCheckFlags;
    Actor* actor = &this->actor;

    Actor_MoveForward(actor);
    actor->shape.rot.x = actor->shape.rot.x + this->unk_210;
    actor->shape.rot.z = actor->shape.rot.z + this->unk_212;

    if (this->unk_154 >= 0x3D) {
        Actor_Kill(actor);
        return;
    }

    bgCheckFlags = actor->bgCheckFlags;
    if ((bgCheckFlags & 8) != 0 || ((bgCheckFlags & 1) != 0) && actor->velocity.y < 0.0f) {
        func_808B53A8(this, globalCtx);
        func_808B51A8(this, globalCtx);
        Audio_PlaySoundAtPosition(globalCtx, &actor->posRot, 0x14, NA_SE_EV_ROCK_BROKEN);
        Actor_Kill(actor);
        return;
    }

    func_8002E4B4(globalCtx, actor, 17.5f, 35.0f, 0.0f, 5);
}

// #pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Bg_Spot16_Bombstone/func_808B5B6C.s")

void BgSpot16Bombstone_Update(Actor* thisx, GlobalContext* globalCtx) {
    BgSpot16Bombstone* this = THIS;

    this->unk_154 = this->unk_154 + 1;
    if (this->actionFunc != 0) {
        this->actionFunc(this, globalCtx);
    }
}

// #pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Bg_Spot16_Bombstone/BgSpot16Bombstone_Update.s")

void BgSpot16Bombstone_Draw(Actor* thisx, GlobalContext* globalCtx) {
    BgSpot16Bombstone* this = (BgSpot16Bombstone*)thisx;
    s32 pad;

    OPEN_DISPS(globalCtx->state.gfxCtx, "../z_bg_spot16_bombstone.c", 1253);

    func_80093D18(globalCtx->state.gfxCtx);

    gSPMatrix(oGfxCtx->polyOpa.p++, Matrix_NewMtx(globalCtx->state.gfxCtx, "../z_bg_spot16_bombstone.c", 1257),
              G_MTX_NOPUSH | G_MTX_LOAD | G_MTX_MODELVIEW);

    if (this->actor.params == 0xFF) {
        gSPDisplayList(oGfxCtx->polyOpa.p++, this->unk_150);
    } else {
        gSPSegment(oGfxCtx->polyOpa.p++, 0x06, globalCtx->objectCtx.status[this->unk_214].segment);
        gSPDisplayList(oGfxCtx->polyOpa.p++, this->unk_150);
    }

    CLOSE_DISPS(globalCtx->state.gfxCtx, "../z_bg_spot16_bombstone.c", 1274);
}

// #pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Bg_Spot16_Bombstone/BgSpot16Bombstone_Draw.s")
