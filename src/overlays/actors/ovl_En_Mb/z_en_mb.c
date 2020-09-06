#include "z_en_mb.h"

#define FLAGS 0x00000015

#define THIS ((EnMb*)thisx)

void EnMb_Init(Actor* thisx, GlobalContext* globalCtx);
void EnMb_Destroy(Actor* thisx, GlobalContext* globalCtx);
void EnMb_Update(Actor* thisx, GlobalContext* globalCtx);
void EnMb_Draw(Actor* thisx, GlobalContext* globalCtx);

const ActorInit En_Mb_InitVars = {
    ACTOR_EN_MB,
    ACTORTYPE_ENEMY,
    FLAGS,
    OBJECT_MB,
    sizeof(EnMb),
    (ActorFunc)EnMb_Init,
    (ActorFunc)EnMb_Destroy,
    (ActorFunc)EnMb_Update,
    (ActorFunc)EnMb_Draw,
};

/*s32 D_80AA9C00[] = {
    0x00000939, 0x20010000, 0x01000000, 0x00000000, 0x00000000, 0xFFCFFFFF,
    0x00000000, 0x00010100, 0x00140046, 0x00000000, 0x00000000,
};*/
static ColliderCylinderInit sCylinderInit = {
    { COLTYPE_UNK0, 0x00, 0x09, 0x39, 0x20, COLSHAPE_CYLINDER },
    { 0x01, { 0x00000000, 0x00, 0x00 }, { 0xFFCFFFFF, 0x00, 0x00 }, 0x00, 0x01, 0x01 },
    { 20, 70, 0, { 0, 0, 0 } },
};

/*s32 D_80AA9C2C[] = {
    0x02000000, 0x00000000, 0x00000000, 0xFFCFFFFF, 0x00000000, 0x000D0000, 0xC1200000, 0x41600000,
    0x40000000, 0xC1200000, 0xC0C00000, 0x40000000, 0x41100000, 0x41600000, 0x40000000, 0x02000000,
    0x00000000, 0x00000000, 0xFFCFFFFF, 0x00000000, 0x000D0000, 0xC1200000, 0xC0C00000, 0x40000000,
    0x41100000, 0xC0C00000, 0x40000000, 0x41100000, 0x41600000, 0x40000000,
};*/
static ColliderTrisItemInit sTrisItemsInit[2] = {
    {
        { 0x02, { 0x00000000, 0x00, 0x00 }, { 0xFFCFFFFF, 0x00, 0x00 }, 0x00, 0x0D, 0x00 },
        { { { -10.0f, 14.0f, 2.0f }, { -10.0f, -6.0f, 2.0f }, { 9.0f, 14.0f, 2.0f } } },
    },
    {
        { 0x02, { 0x00000000, 0x00, 0x00 }, { 0xFFCFFFFF, 0x00, 0x00 }, 0x00, 0x0D, 0x00 },
        { { { -10.0f, -6.0f, 2.0f }, { 9.0f, -6.0f, 2.0f }, { 9.0f, 14.0f, 2.0f } } },
    },
};

// s32 D_80AA9CA4[] = { 0x09000D00, 0x00020000, 0x00000002, D_80AA9C2C };
static ColliderTrisInit sTrisInit = {
    { COLTYPE_METAL_SHIELD, 0x00, 0x0D, 0x00, 0x00, COLSHAPE_TRIS },
    2,
    sTrisItemsInit,
};

/*s32 D_80AA9CB4[] = {
    0x0A110000, 0x00030000, 0x00000000, 0xFFCFFFFF, 0x00080000, 0x00000000, 0x00000000,
    0x01000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000,
    0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000,
};*/
static ColliderQuadInit sQuadInit = {
    { COLTYPE_UNK10, 0x11, 0x00, 0x00, 0x00, COLSHAPE_QUAD },
    { 0x00, { 0xFFCFFFFF, 0x00, 0x08 }, { 0x00000000, 0x00, 0x00 }, 0x01, 0x00, 0x00 },
    { { { 0.0f, 0.0f, 0.0f }, { 0.0f, 0.0f, 0.0f }, { 0.0f, 0.0f, 0.0f }, { 0.0f, 0.0f, 0.0f } } },
};

// s32 D_80AA9D04[] = { 0x50F2F1F2, 0x10F2F2F2, 0xF1F2F4F2, 0x64F2F4F2, 0xF2506350, 0x0000F1F4, 0xF2F2F8F4, 0x5000F400
// };

static DamageTable sDamageTable[] = {
    0x50, 0xF2, 0xF1, 0xF2, 0x10, 0xF2, 0xF2, 0xF2, 0xF1, 0xF2, 0xF4, 0xF2, 0x64, 0xF2, 0xF4, 0xF2,
    0xF2, 0x50, 0x63, 0x50, 0x00, 0x00, 0xF1, 0xF4, 0xF2, 0xF2, 0xF8, 0xF4, 0x50, 0x00, 0xF4, 0x00,
};

/*s32 D_80AA9D24[] = {
    0x50F200F2, 0x00F2F210, 0xF1F2F4F2, 0x64F2F4F2, 0xF2506350, 0x0000F1F4, 0xF2F2F8F4, 0x5000F400,
};*/

static DamageTable sDamageTable2[] = 
    {0x50, 0xF2, 0x00, 0xF2, 0x00, 0xF2, 0xF2, 0x10, 0xF1, 0xF2, 0xF4, 0xF2, 0x64, 0xF2, 0xF4, 0xF2, 0xF2, 0x50, 0x63, 0x50, 0x00, 0x00, 0xF1, 0xF4, 0xF2, 0xF2, 0xF8, 0xF4, 0x50, 0x00, 0xF4, 0x00,};

s32 D_80AA9D44[] = {
    0x8917004A,
    0xB86CFC18,
    0x304C14B4,
};

s32 D_80AA9D50[] = {
    0x00000000,
    0x00000000,
    0x00000000,
};

s32 D_80AA9D5C[] = {
    0x41900000,
    0x41900000,
    0x00000000,
};

s32 D_80AA9D68[] = {
    0x00140028,
    0x00000000,
};

s32 D_80AA9D70[] = {
    0xF63C0000,
    0x0DAC0000,
};

s32 D_80AA9D78[] = {
    0x00000000,
    0x00000000,
    0x00000000,
};

s32 D_80AA9D84[] = {
    0x00000000,
    0x00000000,
    0x00000000,
};

s32 D_80AA9D90[] = {
    0x447A0000,
    0x44BB8000,
    0x00000000,
};

s32 D_80AA9D9C[] = {
    0xC47A0000,
    0x44BB8000,
    0x00000000,
};

s32 D_80AA9DA8[] = {
    0x447A0000,
    0x44BB8000,
    0x458CA000,
};

s32 D_80AA9DB4[] = {
    0xC47A0000,
    0x44BB8000,
    0x458CA000,
};

s32 D_80AA9DC0[] = {
    0x447A0000,
    0x00000000,
    0x00000000,
};

s32 D_80AA9DCC[] = {
    0x447A0000,
    0x00000000,
    0x00000000,
};

s32 D_80AA9DD8[] = {
    0x447A0000,
    0xC5FA0000,
    0xC4BB8000,
};

s32 D_80AA9DE4[] = {
    0x447A0000, 0xC60CA000, 0x44FA0000, 0x44898000, 0xC42F0000, 0x00000000,
};

s32 D_80AA9DFC[] = {
    0x00000000,
    0x00000000,
    0x00000000,
};

s32 D_80AA9E08[] = { 0x00000000, 0xC5FA0000, 0x00000000 };

s32 D_80AA9E14[] = {
    0x00000000,
    0x00000000,
    0x00000000,
};

s32 D_80AA9E20[] = {
    0x457A0000, 0x45DAC000, 0x455AC000, 0x457A0000, 0x00000000, 0x455AC000, 0xC57A0000, 0x45DAC000, 0x455AC000,
};

s32 D_80AA9E44[] = { 0xC57A0000, 0x45DAC000, 0x455AC000, 0xC57A0000, 0x00000000, 0x455AC000,
                     0x457A0000, 0x00000000, 0x455AC000, 0x00000000, 0x00000000 };

SkeletonHeader D_06008F38;
AnimationHeader D_060028E0;
SkeletonHeader D_06014190;
AnimationHeader D_0600EBE4;

void func_80AA68FC(EnMb* this, GlobalContext* globalCtx);
void func_80AA6898(EnMb* this);

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Mb/func_80AA6050.s")

//#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Mb/EnMb_Init.s")

void EnMb_Init(Actor* thisx, GlobalContext* globalCtx) {
    Player* player = PLAYER;
    EnMb* this = THIS;
    //ColliderCylinder* sp38;
    //ActorShape* sp34;
    //ActorShape* temp_a0;
   // ColliderCylinder* temp_a1;
   // ColliderCylinder* temp_a1_2;
    //ColliderCylinder* temp_a1_3;
    //s16 temp_a1_4;
    s32 phi_v1;
    s16 temp_a0_2;
    s16 tempParams;

    Actor_ProcessInitChain(thisx, (InitChainEntry*)D_80AA9D44);
    //temp_a0 = &thisx->shape;
    //sp34 = temp_a0;
    ActorShape_Init(&thisx->shape, 0.0f, ActorShadow_DrawFunc_Circle, 46.0f);
    thisx->colChkInfo.mass = 0xFF;
    thisx->colChkInfo.damageTable = sDamageTable;
  //  temp_a1 = &this->collider1;

    //sp38 = temp_a1;
    Collider_InitCylinder(globalCtx, &this->collider1);
    Collider_SetCylinder(globalCtx, &this->collider1, thisx, &sCylinderInit);

    //temp_a1_2 = &this->collider3;
    //sp38 = temp_a1_2;
    Collider_InitTris(globalCtx, &this->collider3);
    Collider_SetTris(globalCtx, &this->collider3, thisx, &sTrisInit, this->collider3Items);

    //temp_a1_3 = &this->collider2;
   // sp38 = temp_a1_3;
    Collider_InitQuad(globalCtx, &this->collider2);
    Collider_SetQuad(globalCtx, &this->collider2, thisx, &sQuadInit);
    tempParams = thisx->params;
    switch(tempParams){
        case -1:
            SkelAnime_InitSV(globalCtx, &this->skelAnime, &D_06008F38, &D_060028E0, &this->limbDrawTable,
                             &this->transitionDrawTable, 28);
            thisx->colChkInfo.health = 2;
            thisx->colChkInfo.mass = 0xFE;
            this->unk_360 = 1000.0f;
            this->unk_364 = 1750.0f;
            func_80AA6830(thisx);
            return;
        case 0:
            SkelAnime_InitSV(globalCtx, &this->skelAnime, &D_06014190, &D_0600EBE4, &this->limbDrawTable,
                             &this->transitionDrawTable, 28);
            thisx->colChkInfo.health = 6;
            thisx->colChkInfo.mass = 0xFF;
            thisx->colChkInfo.damageTable = &sDamageTable2;
            Actor_SetScale(thisx, 0.02f);
            this->collider1.dim.height = 0xAA;
            this->collider1.dim.radius = 0x2D;
            thisx->uncullZoneForward = 4000.0f;
            thisx->uncullZoneScale = 800.0f;
            thisx->uncullZoneDownward = 1800.0f;
           // this->collider2.body.toucher.flags = 0x20000000;
            this->unk_364 = 710.0f;
            // temp_a1_4 = thisx->posRot.rot.y;
            temp_a0_2 = (thisx->posRot.rot.y - Math_Vec3f_Yaw(&thisx->posRot, &player->actor.posRot));
            if (temp_a0_2 >= 0) {
                phi_v1 = temp_a0_2;
            } else {
                phi_v1 = 0 - temp_a0_2;
            }
            if (phi_v1 >= 0x4001) {
                thisx->posRot.rot.y = (thisx->posRot.rot.y + 0x8000);
                thisx->shape.rot.y = thisx->posRot.rot.y;
                thisx->posRot.pos.z = (thisx->posRot.pos.z + 600.0f);
            }
            thisx->flags = (thisx->flags & -2);
            ActorShape_Init(&thisx->shape, 0.0f, (void*)&ActorShadow_DrawFunc_Teardrop, 90.0f);
            thisx->naviEnemyId = (s16)(thisx->naviEnemyId + 1);
            func_80AA6898(this);
            return;
    }
   /* if (tempParams != -1) {
        SkelAnime_InitSV(globalCtx, &this->skelAnime, &D_06008F38, &D_060028E0, &this->limbDrawTable,
                         &this->transitionDrawTable, 28);
        thisx->colChkInfo.health = 2;
        thisx->colChkInfo.mass = 0xFE;
        this->unk_360 = 1000.0f;
        this->unk_364 = 1750.0f;
        func_80AA6830(thisx);
        return;
    }
    if (tempParams != 0) {
        SkelAnime_InitSV(globalCtx, &this->skelAnime, &D_06014190, &D_0600EBE4, &this->limbDrawTable,
                         &this->transitionDrawTable, 28);
        thisx->colChkInfo.health = 6;
        thisx->colChkInfo.mass = 0xFF;
        thisx->colChkInfo.damageTable = &sDamageTable2;
        Actor_SetScale(thisx, 0.02f);
        this->collider1.dim.height = 0xAA;
        this->collider1.dim.radius = 0x2D;
        thisx->uncullZoneForward = 4000.0f;
        thisx->uncullZoneScale = 800.0f;
        thisx->uncullZoneDownward = 1800.0f;
        this->collider2.body.toucher.flags = 0x20000000;
        this->unk_364 = 710.0f;
      //  temp_a1_4 = thisx->posRot.rot.y;
        temp_a0_2 = (thisx->posRot.rot.y - Math_Vec3f_Yaw(&thisx->posRot, &player->actor.posRot));
        if (temp_a0_2 >= 0) {
            phi_v1 = temp_a0_2;
        } else {
            phi_v1 = 0 - temp_a0_2;
        }
        if (phi_v1 >= 0x4001) {
            thisx->posRot.rot.y = (thisx->posRot.rot.y + 0x8000);
            thisx->shape.rot.y = thisx->posRot.rot.y;
            thisx->posRot.pos.z = (thisx->posRot.pos.z + 600.0f);
        }
        ActorShape_Init(&thisx->shape, 0.0f, (void*)&ActorShadow_DrawFunc_Teardrop, 90.0f);
        thisx->flags = (thisx->flags & -2);
        thisx->naviEnemyId = (thisx->naviEnemyId + 1);
        func_80AA6898(this);
        return;
    }*/
    SkelAnime_InitSV(globalCtx, &this->skelAnime, &D_06008F38, &D_060028E0, &this->limbDrawTable, &this->transitionDrawTable, 28);
    Actor_SetScale(thisx, 0.014f);
    this->unk_35D = (thisx->params & 0xFF00);
    thisx->params = 1;
    this->unk_35C = 0;
    thisx->colChkInfo.health = 1;
    thisx->colChkInfo.mass = 0xFE;
    this->unk_360 = 350.0f;
    thisx->flags = (thisx->flags & -2);
    this->unk_364 = 1750.0f;
    func_80AA68FC(this, globalCtx);
}

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Mb/EnMb_Destroy.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Mb/func_80AA6408.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Mb/func_80AA6444.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Mb/func_80AA652C.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Mb/func_80AA66A0.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Mb/func_80AA6830.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Mb/func_80AA6898.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Mb/func_80AA68FC.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Mb/func_80AA6974.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Mb/func_80AA6A18.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Mb/func_80AA6AC8.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Mb/func_80AA6B80.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Mb/func_80AA6BF0.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Mb/func_80AA6CC0.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Mb/func_80AA6D20.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Mb/func_80AA6DA4.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Mb/func_80AA6E1C.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Mb/func_80AA6E7C.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Mb/func_80AA6F04.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Mb/func_80AA6F8C.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Mb/func_80AA702C.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Mb/func_80AA7134.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Mb/func_80AA71AC.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Mb/func_80AA7310.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Mb/func_80AA7478.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Mb/func_80AA74BC.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Mb/func_80AA77D0.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Mb/func_80AA7938.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Mb/func_80AA7CAC.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Mb/func_80AA800C.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Mb/func_80AA8378.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Mb/func_80AA840C.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Mb/func_80AA8514.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Mb/func_80AA87D8.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Mb/func_80AA8AEC.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Mb/func_80AA8DD8.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Mb/func_80AA8E88.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Mb/func_80AA8F50.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Mb/func_80AA8FC8.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Mb/func_80AA90A0.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Mb/func_80AA92B8.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Mb/func_80AA9440.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Mb/func_80AA94D8.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Mb/EnMb_Update.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Mb/func_80AA9870.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Mb/EnMb_Draw.s")
