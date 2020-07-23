#include "z_boss_tw.h"

#define FLAGS 0x00000035

#define THIS ((BossTw*)thisx)

typedef enum {
    TW_KOTAKE,
    TW_KOUME,
    TW_TWINROVA,
    TW_FIRE_BLAST = 0x64,
    TW_FIRE_BLAST_GROUND,
    TW_ICE_BLAST,
    TW_ICE_BLAST_GROUND
} TwinrovaType;

void BossTw_Init(Actor* thisx, GlobalContext* globalCtx);
void BossTw_Destroy(Actor* thisx, GlobalContext* globalCtx);
void BossTw_Update(Actor* thisx, GlobalContext* globalCtx);
void BossTw_Draw(Actor* thisx, GlobalContext* globalCtx);
void func_80949CE4(BossTw *this, GlobalContext *globalCtx, u8 arg2);

const ActorInit Boss_Tw_InitVars = {
    ACTOR_BOSS_TW,
    ACTORTYPE_BOSS,
    FLAGS,
    OBJECT_TW,
    sizeof(BossTw),
    (ActorFunc)BossTw_Init,
    (ActorFunc)BossTw_Destroy,
    (ActorFunc)BossTw_Update,
    (ActorFunc)BossTw_Draw,
};

Vec3f D_8094A7D0 = { 0.0f, 0.0f, 1000.0f };
Vec3f D_8094A7DC = { 0.0f, 0.0f, 0.0f };

ColliderCylinderInit sCylinderInitBlasts =
{
    { COLTYPE_UNK10, 0x39, 0x09, 0x09, 0x10, COLSHAPE_CYLINDER },
    { 0x00, { 0xFFCFFFFF, 0x00, 0x30 }, { 0x00100000, 0x00, 0x00 }, 0x01, 0x01, 0x01 },
    { 25, 35, -17, { 0, 0, 0 } },
};

ColliderCylinderInit sCylinderInitKoumeKotake =
{
    { COLTYPE_UNK3, 0x11, 0x09, 0x09, 0x10, COLSHAPE_CYLINDER },
    { 0x00, { 0xFFCFFFFF, 0x00, 0x20 }, { 0xFFCDFFFE, 0x00, 0x00 }, 0x01, 0x01, 0x01 },
    { 45, 120, -30, { 0, 0, 0 } },
};

ColliderCylinderInit sCylinderInitTwinrova =
{
    { COLTYPE_UNK3, 0x11, 0x09, 0x39, 0x10, COLSHAPE_CYLINDER },
    { 0x00, { 0xFFCFFFFF, 0x00, 0x20 }, { 0xFFCDFFFE, 0x00, 0x00 }, 0x01, 0x05, 0x01 },
    { 45, 120, -30, { 0, 0, 0 } },
};

Vec3f D_8094A86C[] = {
    { 580.0f, 380.0f, 0.0f }, { 0.0f, 380.0f, 580.0f }, { -580.0f, 380.0f, 0.0f },
    { 0.0f, 380.0f, -580.0f },
};

u8 D_8094A89C = 0;

InitChainEntry D_8094A8A0[] = {
    ICHAIN_U8(unk_1F, 5, ICHAIN_CONTINUE),
    ICHAIN_F32_DIV1000(gravity, 0, ICHAIN_CONTINUE),
    ICHAIN_F32(unk_4C, 0, ICHAIN_STOP),
};

Vec3f D_8094A8AC[] = {
    { 600.0f, 400.0f, 0.0f }, { 0.0f, 400.0f, 600.0f }, { -600.0f, 400.0f, 0.0f }, 
    { 0.0f, 400.0f, -600.0f },
};

Vec3f D_8094A8DC = { 0.0f, 0.0f, 0.0f };
Vec3f D_8094A8E8 = { 0.0f, 0.0f, 0.0f };
Vec3f D_8094A8F4 = { 0.0f, 0.0f, 0.0f };

s16 D_8094A900[] = { 0x0000, 0x0001, 0x0002, 0x0002, 0x0001, 0x0000, };
s16 D_8094A90C[] = { 0x0000, 0x0001, 0x0002, 0x0002, 0x0002, 0x0002, 0x0002, 0x0002, 0x0001, 0x0000, };
Vec3f D_8094A920 = { 0.0f, 0.0f, 0.0f };
Vec3f D_8094A92C = { 0.0f, 0.0f, 0.0f };
Vec3f D_8094A938 = { 0.0f, 0.0f, 0.0f };
Vec3f D_8094A944 = { 0.0f, 0.0f, 0.0f };
Vec3f D_8094A950 = { 0.0f, 2000.0f, -2000.0f };

Vec3f D_8094A95C[] = {
    { 0.0f, 0.0f, -10000.0f },
    { 0.0f, 0.0f, -8000.0f },
    { 0.0f, 0.0f, -9000.0f },
    { 0.0f, 0.0f, -11000.0f },
    { 0.0f, 0.0f, -12000.0f }
};

extern UNK_TYPE D_0600A438;
extern UNK_TYPE D_0600B238;
extern UNK_TYPE D_0600B638;

UNK_PTR D_8094A998[] = {
    (UNK_PTR)&D_0600A438,
    (UNK_PTR)&D_0600B238,
    (UNK_PTR)&D_0600B638,
};

Vec3f D_8094A9A4 = { 0.0f, 200.0f, 2000.0f };

extern Gfx D_0602A9B0[];
extern Gfx D_0602A070[];
extern Gfx D_0602A470[];
Gfx* D_8094A9B0[] = {
    D_0602A9B0,
    D_0602A070,
    D_0602A470,
};

Vec3f D_8094A9BC = { 0.0f, 0.0f, 0.0f };
Vec3f D_8094A9C8 = { 0.0f, 2000.0f, -2000.0f };
Vec3f D_8094A9D4 = { 13000.0f, 0.0f, 0.0f };
Vec3f D_8094A9E0 = { 13000.0f, 0.0f, 0.0f };
Vec3f D_8094A9EC = { 0.0f, 200.0f, 2000.0f };
Vec3f D_8094A9F8 = { 0.0f, 0.0f, 0.0f };
Vec3f D_8094AA04 = { 0.0f, 0.0f, 0.0f };
Vec3f D_8094AA10 = { 0.0f, 0.0f, 0.0f };
Vec3f D_8094AA1C = { 0.0f, 0.0f, 0.0f };
// probably colors
u32 D_8094AA28[] = {
    0xFF8000FF, 0x0000FFFF, 0x00FF0000, 0x646464FF, 0xFFFF9696, 0x96FFFFFF,
};

Vec3f D_8094AA40 = { 0.0f, 0.0f, 0.0f };
Vec3f D_8094AA4C = { 0.0f, 0.0f, 0.0f };

extern u8 D_8094A89C;
extern s8 D_8094C840;
extern s16 D_8094C872;
extern u8 D_8094C86E;
extern u8 D_8094C850;
extern u8 D_8094C85E;
extern u8 D_8094C85C;
extern u8 D_8094C85F;
extern u8 D_8094C841;
extern u8 D_8094C851;
extern u8 D_8094C86F;
extern u8 D_8094C870;
extern s8 D_8094C87E;
extern s16 D_8094C87C;
extern s16 D_8094C87A;
extern s8 D_8094C878;
extern s16 D_8094C876;
extern s16 D_8094C874;
extern f32 D_8094C854;
extern f32 D_8094C858;
extern u8 D_8094C85D;
extern SkeletonHeader D_060070E0;
extern AnimationHeader D_06006F28;
extern AnimationHeader D_6006F28;
extern SkeletonHeader D_601F888;
extern BossTw* D_8094C844;

void BossTw_TwinrovaUpdate(Actor* thisx, GlobalContext* globalCtx);
void BossTw_TwinrovaDraw(Actor* thisx, GlobalContext* globalCtx);
void func_8093C824(BossTw* this, GlobalContext* globalCtx);
void func_8093D58C(BossTw* this, GlobalContext* globalCtx);
void func_8093A0A8(BossTw* this, GlobalContext* globalCtx);
void func_8093D54C(BossTw* this, GlobalContext* globalCtx);
void BossTw_BlastUpdate(Actor* thisx, GlobalContext* globalCtx);
void BossTw_BlastDraw(Actor* thisx, GlobalContext* globalCtx);
void func_809453EC(BossTw* this, GlobalContext* globalCtx);
void func_80945D14(BossTw* this, GlobalContext* globalCtx);
void func_8093EE10(BossTw* this, GlobalContext* globalCtx);
void func_80947240(Actor* thisx, GlobalContext* globalCtx);
void func_80949E10(BossTw *this, GlobalContext *globalCtx);
void func_8094A660(BossTw *this, GlobalContext *globalCtx);
void func_809499AC(BossTw *this, GlobalContext *globalCtx);
void func_80949734(BossTw *this, GlobalContext *globalCtx);
void func_8094A608(BossTw *this, GlobalContext *globalCtx);

extern SkeletonHeader D_06032020;
extern AnimationHeader D_060244B4;
extern AnimationHeader D_060244B4;
extern BossTw* D_8094C84C;
extern BossTw* D_8094C848;
extern Sub11E10Dot D_8094C880[0x96];

void func_80938CD0(GlobalContext *globalCtx, Vec3f *arg0, Vec3f *arg1, Vec3f *arg2, f32 arg3, s16 arg4, s16 arg5) {
    s16 phi_v0;
    Sub11E10Dot* dot;
    for(phi_v0 = 0, dot = &globalCtx->unk_11E10.dots[0]; phi_v0 < arg5; phi_v0++, dot++){
        if(dot->unk_00 == 0){
            dot->unk_00 = 1;
            dot->unk_04 = *arg0;
            dot->unk_10 = *arg1;
            dot->unk_1C = *arg2;
            dot->unk_34 = arg3 / 1000.0f;
            dot->unk_2C = 0xFF;
            dot->unk_01 = (s16)Math_Rand_ZeroFloat(10.0f);
            dot->unk_2E = arg4;
            return;
        }
    }
}

void func_80938DC4(GlobalContext *globalCtx, s16 arg1, Vec3f *arg2, Vec3f *arg3, Vec3f *arg4, f32 arg5, s16 arg6, s16 arg7, s16 arg8) {
    s16 phi_v0;
    Sub11E10Dot* dot;
    for(phi_v0 = 0, dot = &globalCtx->unk_11E10.dots[0]; phi_v0 < arg8; phi_v0++, dot++){
        if(dot->unk_00 == 0){
            dot->unk_00 = arg1;
            dot->unk_04 = *arg2;
            dot->unk_10 = *arg3;
            dot->unk_1C = *arg4;
            dot->unk_34 = arg5 / 1000.0f;
            dot->unk_2E = arg7;
            dot->unk_2C = arg6;
            dot->unk_01 = (s16)Math_Rand_ZeroFloat(100.0f);
            return;
        }
    }
}

extern Vec3f D_8094A7DC;
void func_80938EC0(GlobalContext* globalCtx, Vec3f *arg1, f32 arg2, f32 arg3, s16 arg4, s16 arg5, s16 arg6, s16 arg7) {
    s16 i;
    Sub11E10Dot* dot;

    for(i = 0, dot = &globalCtx->unk_11E10.dots[0]; i < arg7; i++, dot++){
        if(dot->unk_00 == 0){
            dot->unk_00 = 4;
            dot->unk_04 = *arg1;
            dot->unk_10 = D_8094A7DC;
            dot->unk_1C = D_8094A7DC;
            dot->unk_34 = arg2 * 0.0025f;
            dot->unk_38 = arg3 * 0.0025f;
            dot->unk_2E = arg5;
            dot->unk_30 = arg6;
            dot->unk_2C = arg4;
            dot->unk_3C = Math_Rand_ZeroFloat(M_PI);
            dot->unk_01 = 0;
            return;
        }
    }
}

#ifdef NON_MATCHING
void func_80938FC4(GlobalContext* globalCtx , s32 arg1) {
    s16 i;
    Sub11E10Dot* dot;
    
    for(i = 0, dot = &globalCtx->unk_11E10.dots[0]; i < 0x96; i++, dot++){
        if(dot->unk_00 == 0){
            dot->unk_00 = 5;
            dot->unk_10 = D_8094A7DC;
            dot->unk_1C = D_8094A7DC;
            dot->unk_01 = 0;
            dot->unk_44 = arg1;
            dot->unk_38 = 0.0f;
            dot->unk_34 = 0.0f;
            dot->unk_3C = 0.0f;
            if(arg1 == 0){
                dot->unk_2E = 0x64;
            } else {
                dot->unk_2E = 0x14;
            }
            return;
        }
    }
}
#else
#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Boss_Tw/func_80938FC4.s")
#endif

void func_80939070(GlobalContext *arg0, Vec3f *arg1, Vec3f *arg2, Vec3f *arg3, f32 arg4, s16 arg5) {
    s16 i;
    Sub11E10Dot* dot;
    for(i = 0, dot = &arg0->unk_11E10.dots[0]; i < 0x96; i++, dot++){
        if(dot->unk_00 == 0){
            dot->unk_00 = 6;
            dot->unk_04 = *arg1;
            dot->unk_10 = *arg2;
            dot->unk_1C = *arg3;
            dot->unk_34 = arg4 / 1000.0f;
            dot->unk_2E = arg5;
            dot->unk_30 = 0;
            dot->unk_2C = 0;
            dot->unk_01 = (s16)Math_Rand_ZeroFloat(1000.0f);
            return;
        }
    }
}

void func_80939148(GlobalContext* globalCtx, Vec3f* arg1, f32 arg2, f32 arg3, s16 arg4) {
    s16 i;
    Sub11E10Dot* dot;
    for(i = 0, dot = &globalCtx->unk_11E10.dots[0]; i < 0x96; i++, dot++){
        if(dot->unk_00 == 0){
            dot->unk_00 = 7;
            dot->unk_04 = *arg1;
            dot->unk_10 = D_8094A7DC;
            dot->unk_1C = D_8094A7DC;
            dot->unk_34 = arg2 / 1000.0f;
            dot->unk_2E = arg4;
            dot->unk_30 = 0;
            dot->unk_38 = arg3;
            dot->unk_3C = Math_Rand_ZeroFloat(2.0f * M_PI);
            dot->unk_2C = 0;
            dot->unk_01 = (s16)Math_Rand_ZeroFloat(1000.0f);
            return;
        }
    }
}

void func_80939250(GlobalContext* globalCtx, Vec3f* arg1, Vec3f* arg2, Vec3f* arg3, f32 arg4, f32 arg5, s16 arg6, s16 arg7) {
    s16 i;
    Sub11E10Dot* dot;
    for(i = 0, dot = &globalCtx->unk_11E10.dots[0]; i < 0x96; i++, dot++){
        if(dot->unk_00 == 0){
            dot->unk_00 = 8;
            dot->unk_04 = *arg1;
            dot->unk_10 = *arg2;
            dot->unk_1C = *arg3;
            dot->unk_34 = arg4 / 1000.0f;
            dot->unk_38 = arg5 / 1000.0f;
            dot->unk_2E = arg7;
            dot->unk_30 = 0;
            dot->unk_2C = arg6;
            dot->unk_01 = (s16)Math_Rand_ZeroFloat(1000.0f);
            return;
        }
    }
}
extern Vec3f D_8094C860;
extern s16 D_8094C86C;
void func_80939338(GlobalContext *globalCtx, f32 arg1, s16 arg2) {
    s16 i;
    s16 j;
    Sub11E10Dot* dot;
    Player* player = PLAYER;

    D_8094C860 = player->unk_9BC;
    D_8094C86C = player->actor.shape.rot.y;
    for(i = 0; i < 8; i++){
        for(dot = &globalCtx->unk_11E10.dots[0], j = 0; j < 0x96; j++, dot++){
            if(dot->unk_00 == 0){
                dot->unk_00 = 9;
                dot->unk_04 = D_8094C860;
                dot->unk_10 = D_8094A7DC;
                dot->unk_1C = D_8094A7DC;
                dot->unk_3C = i * 0.7853982f;
                dot->unk_40 = 1.5707964f;
                dot->unk_38 = 0.0f;
                dot->unk_34 = arg1 / 1000.0f;
                dot->unk_2E = arg2;
                dot->unk_30 = 0;
                dot->unk_2C = 0xFF;
                dot->unk_01 = (s16)Math_Rand_ZeroFloat(1000.0f);
                break;
            }
        }
    }
}

void func_809394FC(GlobalContext* globalCtx, f32 arg1, s16 arg2) {
    s16 i, j;
    Sub11E10Dot* dot;
    Player* player = PLAYER;

    D_8094C860 = player->unk_9BC;
    D_8094C86C = player->actor.shape.rot.y;
    for(i = 0; i < 8; i++){
        for(dot = &globalCtx->unk_11E10.dots[0], j = 0; j < 0x96; j++, dot++){
            if(dot->unk_00 == 0){
                dot->unk_00 = 10;
                dot->unk_04 = D_8094C860;
                dot->unk_10 = D_8094A7DC;
                dot->unk_1C = D_8094A7DC;
                dot->unk_3C = i * 0.7853982f;
                dot->unk_40 = 1.5707964f;
                dot->unk_38 = 0.0f;
                dot->unk_34 = arg1 /1000.0f;
                dot->unk_2E = arg2;
                dot->unk_30 = 0;
                dot->unk_2C = 0xFF;
                dot->unk_01 = (s16)Math_Rand_ZeroFloat(1000.0f);
                break;
            }
        }
    }
}

#ifdef NON_MATCHING
void BossTw_Init(Actor* thisx, GlobalContext *globalCtx) {
    BossTw* this = THIS;
    f32 temp_f0;
    f32 temp_f10;
    f32 temp_f4;
    f32 temp_f6;
    s16 temp_t9;
    s32 temp_f8;
    s32 temp_v0;
    s8 phi_t7;
    s32 phi_v0;
    f32 phi_f4;
    f32 phi_f10;
    f32 phi_f6;

    Actor_ProcessInitChain(&this->actor, &D_8094A8A0);
    ActorShape_Init(&this->actor.shape, 0, 0, 0);
    if (this->actor.params >= 0x64) {
        // Blasts
        Actor_SetScale(&this->actor, 0.01f);
        this->actor.update = BossTw_BlastUpdate;
        this->actor.draw = BossTw_BlastDraw;
        this->actor.flags &= ~1;

        Collider_InitCylinder(globalCtx, &this->collider);
        Collider_SetCylinder(globalCtx, &this->collider, &this->actor, &sCylinderInitBlasts);

        if(this->actor.params == 0x64 || this->actor.params == 0x65){
            this->actionFunc = func_809453EC;
            this->collider.body.toucher.effect = 1;
        } else if (this->actor.params == 0x66 || this->actor.params == 0x67){
            this->actionFunc = func_80945D14;
        } else if(this->actor.params >= 0x68){
            this->actionFunc = func_8093EE10;
            this->actor.draw = func_80947240;
            this->unk_1AC = 128.0f;
        }
        this->unk_178[1] = 0x96;
        return;
    }

    Actor_SetScale(&this->actor, 0.025f);
    this->actor.colChkInfo.mass = 0xFF;
    this->actor.colChkInfo.health = 0;
    Collider_InitCylinder(globalCtx, &this->collider);

    if (D_8094A89C == 0) {
        D_8094A89C = 1;
        globalCtx->envCtx.unk_BF = 1;
        globalCtx->envCtx.unk_BE = 1;
        globalCtx->envCtx.unk_BD = 1;
        globalCtx->envCtx.unk_D8 = 0.0f;
        D_8094C86E = D_8094C872 = D_8094C840 = 0;
        D_8094C850 = 0;
        D_8094C85E = 0;
        D_8094C85C = 0;
        D_8094C85F = 0;
        D_8094C841 = 0;
        D_8094C851 = 0;
        D_8094C86F = D_8094C872;
        D_8094C870 = D_8094C872;
        D_8094C87E = D_8094C872;
        D_8094C874 = D_8094C876 = D_8094C878 = D_8094C87A = D_8094C87C = D_8094C872;
        D_8094C858 = D_8094C854 = 0.0f;
        D_8094C85D = Math_Rand_ZeroFloat(1.99f);
        globalCtx->unk_11E10.dots = D_8094C880;
        for(phi_v0 = 0; phi_v0 < ARRAY_COUNT(D_8094C880); phi_v0++){
            D_8094C880[phi_v0].unk_00 = 0;
        }
    }
    
    if (this->actor.params == 0) {
        // Kotake
        Collider_SetCylinder(globalCtx, &this->collider, &this->actor, &sCylinderInitKoumeKotake);
        this->actor.naviEnemyId = 0x33;
        SkelAnime_InitSV(globalCtx, &this->skelAnime, &D_060070E0, &D_06006F28, NULL, NULL, 0);
        if (gSaveContext.eventChkInf[7] & 0x20){
            func_8093A0A8(this, globalCtx);
            this->actor.posRot.pos.x = -600.0f;
            this->actor.posRot.pos.y = 400.0f;
            this->actor.posRot.pos.z = 0.0f;
            Audio_SetBGM(0x1B);
        } else {
            func_8093D54C(this, globalCtx);
        }
        SkelAnime_ChangeAnimTransitionRepeat(&this->skelAnime, &D_6006F28, -3.0f);
        this->unk_564 = 1;
    } else if (this->actor.params == 1) {
        // Koume
        Collider_SetCylinder(globalCtx, &this->collider, &this->actor, &sCylinderInitKoumeKotake);
        this->actor.naviEnemyId = 0x32;
        SkelAnime_InitSV(globalCtx, &this->skelAnime, &D_601F888, &D_6006F28, NULL, NULL, 0);
        if (gSaveContext.eventChkInf[7] & 0x20){
            func_8093A0A8(this, globalCtx);
            this->actor.posRot.pos.x = 600.0f;
            this->actor.posRot.pos.y = 400.0f;
            this->actor.posRot.pos.z = 0.0f;
        } else {
            func_8093D54C(this, globalCtx);
        }
        SkelAnime_ChangeAnimTransitionRepeat(&this->skelAnime, &D_6006F28, -3.0f);
        this->unk_564 = 1;
    } else {
        // Twinrova
        Collider_SetCylinder(globalCtx, &this->collider, &this->actor, &sCylinderInitTwinrova);
        this->actor.naviEnemyId = 0x5B;
        this->actor.colChkInfo.health = 0x18;
        this->actor.update = BossTw_TwinrovaUpdate;
        this->actor.draw = BossTw_TwinrovaDraw;
        SkelAnime_InitSV(globalCtx, &this->skelAnime, &D_06032020, &D_060244B4, NULL, NULL, 0);
        SkelAnime_ChangeAnimTransitionRepeat(&this->skelAnime, &D_060244B4, -3.0f);
        if (gSaveContext.eventChkInf[7] & 0x20) {
            // began twinrova battle
            func_8093C824(this, globalCtx);
        } else {
            func_8093D58C(this, globalCtx);
            this->actor.posRot.pos.x = 0.0f;
            this->actor.posRot.pos.y = 1000.0f;
            this->actor.posRot.pos.z = 0.0f;
        }
        this->actor.params = 2;
        D_8094C84C = this;
        if (Flags_GetClear(globalCtx, globalCtx->roomCtx.curRoom.num)) {
            Actor_Kill(&this->actor);
            Actor_SpawnAttached(&globalCtx->actorCtx, &this->actor, globalCtx, ACTOR_DOOR_WARP1, 600.0f, 230.0f, 0.0f, 0, 0, 0, 0xFFFF);
            Actor_Spawn(&globalCtx->actorCtx, globalCtx, ACTOR_ITEM_B_HEART, -600.0f, 230.0f, 0.0f, 0, 0, 0, 0);
        } else {
            D_8094C844 = Actor_SpawnAttached(&globalCtx->actorCtx, &this->actor, globalCtx, ACTOR_BOSS_TW, this->actor.posRot.pos.x, this->actor.posRot.pos.y, this->actor.posRot.pos.z, 0, 0, 0, 0);
            D_8094C848 = Actor_SpawnAttached(&globalCtx->actorCtx, &this->actor, globalCtx, ACTOR_BOSS_TW, this->actor.posRot.pos.x, this->actor.posRot.pos.y, this->actor.posRot.pos.z, 0, 0, 0, 1);
            D_8094C844->actor.attachedA = &D_8094C848->actor;
            D_8094C848->actor.attachedA = &D_8094C844->actor;
        }
    }
    this->fogR = globalCtx->lightCtx.fogRed;
    this->fogG = globalCtx->lightCtx.fogGreen;
    this->fogB = globalCtx->lightCtx.fogBlue;
    this->fogMin = globalCtx->lightCtx.unk_0A;
}
#else
#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Boss_Tw/BossTw_Init.s")
#endif
#undef NON_MATCHING

void BossTw_Destroy(Actor *thisx, GlobalContext *globalCtx) {
    BossTw* this = THIS;

    Collider_DestroyCylinder(globalCtx, &this->collider);
    if (thisx->params < 0x64) {
        SkelAnime_Free(&this->skelAnime, globalCtx);
    }

    if (thisx->params == 2) {
        D_8094A89C = 0;
    }
}

void func_8093B1AC(BossTw* this, GlobalContext* globalCtx);
void func_80939F88(BossTw* this, GlobalContext* globalCtx);

void func_80939F40(BossTw* this, GlobalContext* globalCtx) {
    BossTw* attachedA = (BossTw*)this->actor.attachedA;

    this->actionFunc = func_80939F88;

    if ((attachedA != NULL) && (attachedA->actionFunc == func_8093B1AC)) {
        this->unk_178[0] = 0x28;
    } else {
        this->unk_178[0] = 0x3C;
    }
    this->unk_4C8 = 0.0f;
}

void func_8093A4DC(BossTw* this, GlobalContext* globalCtx);

void func_80939F88(BossTw *this, GlobalContext *globalCtx) {
    BossTw* attachedA = (BossTw*)this->actor.attachedA;

    SkelAnime_FrameUpdateMatrix(&this->skelAnime);
    Math_SmoothScaleMaxF(&this->actor.speedXZ, 0.0f, 1.0f, 1.0f);
    Math_SmoothScaleMaxS(&this->actor.shape.rot.y, this->actor.yawTowardsLink, 5, this->unk_4C8);
    Math_SmoothScaleMaxS(&this->actor.shape.rot.x, 0, 5, this->unk_4C8);
    Math_SmoothScaleMaxF(&this->unk_4C8, 4096.0f, 1.0f, 200.0f);
    func_8002D908(&this->actor);
    func_8002D7EC(&this->actor);
    if (this->unk_178[0] == 0) {
        if (attachedA->actionFunc != func_8093B1AC) {
            if (this->unk_15E != 0) {
                this->unk_15E = 0;
                func_8093A4DC(this, globalCtx);
                this->actor.speedXZ = 0.0f;
                return;
            }
        }
        func_8093A0A8(this, globalCtx);
    }
}

void func_8093A2AC(BossTw* this, GlobalContext* globalCtx);

#ifdef NON_MATCHING
void func_8093A0A8(BossTw *this, GlobalContext *globalCtx) {
    BossTw* attachedA = (BossTw*)this->actor.attachedA;

    this->unk_5F8 = 1;
    this->actor.flags |= 1;
    this->actionFunc = func_8093A2AC;
    this->unk_4C8 = 0.0f;
    SkelAnime_ChangeAnimTransitionRepeat(&this->skelAnime, &D_06006F28, -10.0f);
    if (Math_Rand_ZeroOne() < 0.5f) {
        if (this->actor.attachedA != NULL && attachedA->actionFunc == func_8093B1AC) {
            this->unk_4B0.x = attachedA->actor.posRot.pos.x + Math_Rand_CenteredFloat(200.0f);
            this->unk_4B0.y = Math_Rand_ZeroFloat(200.0f) + 340.0f;
            this->unk_4B0.z = attachedA->actor.posRot.pos.z + Math_Rand_CenteredFloat(200.0f);
            this->unk_178[0] = (s32)Math_Rand_ZeroFloat(50.0f) + 0x32;
            return;
        }
    }
    if (Math_Rand_ZeroOne() < 0.5f) {
        this->unk_4B0.x = Math_Rand_CenteredFloat(800.0f);
        this->unk_4B0.y = Math_Rand_ZeroFloat(200.0f) + 340.0f;
        this->unk_4B0.z = Math_Rand_CenteredFloat(800.0f);
        this->unk_178[0] = (s16) ((s32) Math_Rand_ZeroFloat(50.0f) + 0x32);
        return;
    }
    this->unk_4B0 = D_8094A8AC[(s16)Math_Rand_ZeroFloat(3.99f)];
    this->unk_178[0] = 0xC8;
    this->unk_15E = 1;
}
#else
#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Boss_Tw/func_8093A0A8.s")
#endif
#undef NON_MATCHING

void func_8093A2AC(BossTw *this, GlobalContext *globalCtx) {
    f32 sp3C;
    f32 sp38;
    f32 sp34;
    f32 sp30;
    f32 sp2C;
    f32 sp28;

    Audio_PlayActorSound2(&this->actor, 0x311F);
    Math_SmoothScaleMaxF(&this->unk_4D0, 0.0f, 1.0f, 10.0f);
    SkelAnime_FrameUpdateMatrix(&this->skelAnime);
    sp3C = this->unk_4B0.x - this->actor.posRot.pos.x;
    sp38 = this->unk_4B0.y - this->actor.posRot.pos.y;
    sp34 = this->unk_4B0.z - this->actor.posRot.pos.z;
    sp2C = (s16)(Math_atan2f(sp3C, sp34) * 10430.378f);
    sp28 = sqrtf(SQ(sp3C) + SQ(sp34));
    sp30 = (s16)(Math_atan2f(sp38, sp28) * 10430.378f);
    Math_SmoothScaleMaxS(&this->actor.posRot.rot.x, sp30, 0xA, this->unk_4C8);
    Math_SmoothScaleMaxS(&this->actor.posRot.rot.y, sp2C, 0xA, this->unk_4C8);
    Math_SmoothScaleMaxS(&this->actor.shape.rot.y, sp2C, 0xA, this->unk_4C8);
    Math_SmoothScaleMaxS(&this->actor.shape.rot.x, sp30, 0xA, this->unk_4C8);
    Math_SmoothScaleMaxF(&this->unk_4C8, 4096.0f, 1.0f, 100.0f);
    Math_SmoothScaleMaxF(&this->actor.speedXZ, 10.0f, 1.0f, 1.0f);
    func_8002D908(&this->actor);
    func_8002D7EC(&this->actor);
    if ((this->unk_178[0] == 0) || (sp28 < 70.0f)) {
        func_80939F40(this, globalCtx);
    }
}

void func_8093B1AC(BossTw* this, GlobalContext* globalCtx);
extern AnimationHeader D_06007688;

#ifdef NON_MATCHING
void func_8093A4DC(BossTw *this, GlobalContext *globalCtx) {
    Player* player = PLAYER;
    this->actionFunc = &func_8093B1AC;
    SkelAnime_ChangeAnimTransitionStop(&this->skelAnime, &D_06007688, -5.0f);
    this->unk_1A4 = SkelAnime_GetFrameCount(&D_06007688.genericHeader);
    this->unk_178[1] = 0x46;
    this->unk_4B0 = player->actor.posRot.pos;
    this->unk_440 = 0;
    this->unk_4FC = -1;
    this->unk_50C = this->unk_48C;
    this->unk_52C = 0.0f;
    this->unk_548 = 0.0f;
    this->unk_4D4 = 0.0f;
    this->spawnPortalAlpha = 0.0f;
    this->spawnPortalScale = 2000.0f;
    this->unk_4E4 = 0.0f;
    this->unk_4EC = 0.0f;
    this->unk_4F0 = 0.0f;
    this->unk_4F8 = 0.01f;
}
#else
#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Boss_Tw/func_8093A4DC.s")
#endif
#undef NON_MATCHING

void func_80938CD0(GlobalContext* globalCtx, Vec3f* arg0, Vec3f* arg1, Vec3f *arg2, f32 arg3, s16 arg4, s16 arg5);
void func_8093C858(BossTw* this, GlobalContext* globalCtx);

#ifdef NON_MATCHING
void func_8093A5C4(BossTw *this, GlobalContext *globalCtx, s16 arg2) {
    BossTw *temp_v0;
    s16 phi_s0;
    Vec3f spA4;
    Vec3f sp98;
    Vec3f sp8C;

    for(phi_s0 = 0; phi_s0 < 0x96; phi_s0++){
        sp98.x = Math_Rand_CenteredFloat(20.0f);
        sp98.y = Math_Rand_ZeroFloat(10.0f);
        sp98.z = Math_Rand_CenteredFloat(20.0f);
        sp8C.y = 0.2f;
        sp8C.x = Math_Rand_CenteredFloat(0.25f);
        sp8C.z = Math_Rand_CenteredFloat(0.25f);
        spA4 = this->unk_500;
        func_80938CD0(globalCtx, &spA4, &sp98, &sp8C, (s16)Math_Rand_ZeroFloat(2.0f) + 8, arg2, 0x4B);
    }

    if (arg2 == 1) {
        D_8094C841 = 1;
        temp_v0 = (BossTw*)Actor_SpawnAttached(&globalCtx->actorCtx, &this->actor, globalCtx, ACTOR_BOSS_TW, this->unk_500.x, this->unk_500.y, this->unk_500.z, 0, 0, 0, 0x65);
        if (temp_v0 != NULL) {
            if (D_8094C84C->actionFunc == func_8093C858) {
                temp_v0->unk_178[0] = 0x64;
            } else {
                temp_v0->unk_178[0] = 0x32;
            }
            D_8094C848->unk_1A8 = D_8094C848->unk_1AC = D_8094C848->unk_1B0 = 255.0f;
            D_8094C848->unk_1B4 = 1.0f;
            D_8094C848->unk_1B8 = 0.005f;
            D_8094C848->unk_4BC = temp_v0->actor.posRot.pos;
            D_8094C840 = 4;
            return;
        }
    } else {
        D_8094C841 = 2;
        temp_v0 = (BossTw*)Actor_SpawnAttached(&globalCtx->actorCtx, &this->actor, globalCtx, ACTOR_BOSS_TW, this->unk_500.x, this->unk_500.y, this->unk_500.z, 0, 0, 0, 0x67);
        if (temp_v0 != NULL) {
            if (D_8094C84C->actionFunc == func_8093C858) {
                temp_v0->unk_178[0] = 0x64;
            } else {
                temp_v0->unk_178[0] = 0x32;
            }
            
            D_8094C844->unk_1B0 = 50.0f;
            D_8094C844->unk_1A8 = 250.0f;
            D_8094C844->unk_1B4 = 0.005f;
            D_8094C844->unk_1BC = 1.0f;
            D_8094C844->unk_1C4 = 70.0f;
            D_8094C844->unk_4BC = temp_v0->actor.posRot.pos;
            D_8094C840 = 3;
        }
    }
}
#else
#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Boss_Tw/func_8093A5C4.s")
#endif
#undef NON_MATCHING


#ifdef NON_MATCHING
s32 func_8093A940(BossTw *this, GlobalContext *globalCtx) {
    Vec3f sp44;
    Vec3f sp38;
    Player* player = PLAYER;
    s32 temp_s0;
    s32 phi_s0;
    s32 ret;

    sp44.x = player->actor.posRot.pos.x - this->unk_48C.x;
    sp44.y = player->actor.posRot.pos.y - this->unk_48C.y;
    sp44.z = player->actor.posRot.pos.z - this->unk_48C.z;
    Matrix_RotateX(-this->unk_518, MTXMODE_NEW);
    Matrix_RotateY(-this->unk_51C, MTXMODE_APPLY);
    Matrix_MultVec3f(&sp44, &sp38);
    if (fabsf(sp38.x) < 20.0f && fabsf(sp38.y) < 50.0f && sp38.z > 100.0f && sp38.z <= this->unk_52C) {
        if (D_8094C84C->unk_178[2] != 0) {
            return 1;
        }

        D_8094C84C->unk_178[2] = 0x96;
        this->unk_52C = sqrtf(SQ(sp44.x) + SQ(sp44.y) + SQ(sp44.z));
        func_8002F6D4(globalCtx, &this->actor, 3.0f, this->actor.shape.rot.y, 0.0f, 0x20);
        if (this->actor.params != 0) {
            if(player->unk_A60 == 0){
                for(phi_s0 = 0; phi_s0 < 0x12; phi_s0++){
                    player->unk_A61[phi_s0] = Math_Rand_S16Offset(0, 0xC8);
                }
                player->unk_A60 = 1;
                // todo: fix age properties.
                func_8002F7DC(&player->actor, ((u16*)player->ageProperties)[0x49] + 0x681E);
            }
            return 1;
        }
        if (D_8094C85F != 0) {
            return 1;
        }
        D_8094C85F = 1;
        return 1;
    }
    return 0;
}
#else
#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Boss_Tw/func_8093A940.s")
#endif
#undef NON_MATCHING

void func_80939338(GlobalContext* globalCtx, f32 arg1, s16 arg2);

s32 func_8093AB30(BossTw *this, GlobalContext *globalCtx) {
    Vec3f sp3C;
    Vec3f sp30;
    Player* player = PLAYER;
    s16 temp_v1;

    if (player->stateFlags1 & 0x400000) {
        // player shielding
        temp_v1 = player->actor.shape.rot.y - this->actor.shape.rot.y + 0x8000;
        if (temp_v1 < 0x2000) {
            if (temp_v1 >= -0x1FFF) {
                sp3C.x = 0.0f;
                sp3C.y = 0.0f;
                sp3C.z = 10.0f;
                Matrix_RotateY(player->actor.shape.rot.y / 32768.0f * M_PI, MTXMODE_NEW);
                Matrix_MultVec3f(&sp3C, &sp30);
                sp3C.x = player->actor.posRot.pos.x + sp30.x - this->unk_48C.x;
                sp3C.y = player->actor.posRot.pos.y + sp30.y - this->unk_48C.y;
                sp3C.z = player->actor.posRot.pos.z + sp30.z - this->unk_48C.z;
                Matrix_RotateX(-this->unk_518, MTXMODE_NEW);
                Matrix_RotateY(-this->unk_51C, MTXMODE_APPLY);
                Matrix_MultVec3f(&sp3C, &sp30);
                if (fabsf(sp30.x) < 30.0f && fabsf(sp30.y) < 70.0f && sp30.z > 100.0f && sp30.z <= this->unk_52C) {
                    if (func_8008F098(globalCtx)) {
                        // player has mirror shield equipped
                        this->unk_52C = sqrtf(SQ(sp3C.x) + SQ(sp3C.y) + SQ(sp3C.z));
                        return 1;
                    }

                    if (D_8094C86E >= 0xB) {
                        return 0;
                    }

                    if (D_8094C86E == 0) {
                        func_80939338(globalCtx, 10.0f, this->actor.params);
                        globalCtx->envCtx.unk_D8 = 1.0f;
                        this->unk_178[0] = 0xA;
                        func_80078884(0x1838);
                    }

                    D_8094C86E++;
                    this->unk_52C = sqrtf(SQ(sp3C.x) + SQ(sp3C.y) + SQ(sp3C.z));
                    return 2;
                }
            }
        }
    }
    return 0;
}

s32 func_8093ADB4(BossTw *this, Vec3f *arg1) {
    Vec3f sp2C;
    Vec3f sp20;

    sp2C.x = arg1->x - this->unk_50C.x;
    sp2C.y = arg1->y - this->unk_50C.y;
    sp2C.z = arg1->z - this->unk_50C.z;
    Matrix_RotateX(-this->unk_53C, MTXMODE_NEW);
    Matrix_RotateY(-this->unk_540, MTXMODE_APPLY);
    Matrix_MultVec3f(&sp2C, &sp20);
    if (fabsf(sp20.x) < 50.0f && fabsf(sp20.y) < 50.0f && sp20.z > 100.0f && sp20.z <= this->unk_548) {
        this->unk_548 = sqrtf(SQ(sp2C.x) + SQ(sp2C.y) + SQ(sp2C.z)) * 1.1f;
        return 1;
    }
    return 0;
}

f32 func_8093AED8(Vec3f *arg0) {
    Vec3f sp2C;

    if (fabsf(arg0->x) < 350.0f && fabsf(arg0->z) < 350.0f && arg0->y < 240.0f) {
        if(arg0->y > 200.0f){
             return 240.0f;
        }
        return 35.0f;
    }

    if (fabsf(arg0->x) < 110.0f && ((fabsf(arg0->z - 600.0f) < 110.0f) || (fabsf(arg0->z + 600.0f) < 110.0f)) && (arg0->y < 230.0f)) {
        if (arg0->y > 190.0f) {
            return 230.0f;
        }
        return 35.0f;
    }
     

    if (fabsf(arg0->z) < 110.0f && ((fabsf(arg0->x - 600.0f) < 110.0f) || (fabsf(arg0->x + 600.0f) < 110.0f)) && (arg0->y < 230.0f)) {
        if (arg0->y > 190.0f){
            return 230.0f;
        }
        return 35.0f;
    }

    if (arg0->y < -20.0f) {
        return 0.0f;
    }
    
    if (fabsf(arg0->x) > 1140.0f || fabsf(arg0->z) > 1140.0f) {
        return 35.0f;
    }

    Matrix_Push();
    // 45 Degrees to radians
    Matrix_RotateY((45.0f * (M_PI / 180.0f)), MTXMODE_NEW);
    Matrix_MultVec3f(arg0, &sp2C);
    Matrix_Pull();

    if (fabsf(sp2C.x) > 920.0f || fabsf(sp2C.z) > 920.0f) {
        return 35.0f;
    }

    return -100.0f;
}

extern AnimationHeader D_06009398;
extern AnimationHeader D_06003614;
extern AnimationHeader D_06003E34;

#ifdef NON_MATCHING
void func_8093B1AC(BossTw *this, GlobalContext *globalCtx) {
    Vec3f sp130;
    Vec3s sp128;
    Player *player = PLAYER;
    BossTw *attachedA;
    s16 sp11A;
    Vec3f sp10C;
    Vec3f sp100;
    Vec3f spF4;
    Vec3f spE4;
    Vec3f spD8;
    Vec3f spCC;
    Vec3f spBC;
    f32 spB8;
    f32 spB4;
    f32 spB0;
    f32 spAC;
    f32 spA8;
    f32 spA4;
    f32 spA0;
    f32 sp9C;
    f32 sp98;
    f32 sp94;
    f32 sp90;
    f32 sp8C;
    f32 sp88;
    f32 sp84;
    f32 sp80;
    SkelAnime *sp74;
    f32 sp70;
    f32 *sp6C;
    Vec3f *temp_s1;
    Vec3f *temp_s2_2;
    Vec3f *temp_s3_2;
    char *temp_s1_2;
    char *temp_s3_3;
    f32 *temp_s1_3;
    f32 *temp_s1_4;
    f32 *temp_s2;
    f32 *temp_s2_3;
    f32 *temp_s2_4;
    f32 *temp_s2_5;
    f32 *temp_s3;
    f32 *temp_s3_4;
    f32 *temp_s4;
    f32 *temp_s4_2;
    f32 temp_f0;
    f32 temp_f0_2;
    f32 temp_f0_3;
    f32 temp_f10;
    f32 temp_f16;
    f32 temp_f20;
    f32 temp_f20_2;
    f32 temp_f24;
    f32 temp_f26;
    f32 temp_f2;
    s16 temp_f6;
    s16 temp_t1;
    s16 temp_t5;
    s32 temp_a1;
    s32 temp_cond;
    s32 temp_cond_2;
    s32 temp_s0;
    s32 temp_s0_3;
    s32 temp_s0_4;
    s32 temp_s0_5;
    s32 temp_s0_6;
    s16 temp_v0;
    s32 temp_v0_3;
    s8 temp_v1;
    void *temp_s0_2;
    void *temp_v0_2;
    s32 phi_v0;
    s16 phi_s0;
    s32 phi_v0_2;
    s32 phi_s0_2;
    Vec3f *phi_s3;
    s32 phi_s0_3;
    s32 phi_s0_4;
    s32 phi_s0_5;
    Vec3f *phi_s3_2;

    Math_SmoothScaleMaxF(&this->actor.posRot.pos.y, 400.0f, 0.05f, this->actor.speedXZ);
    Math_SmoothScaleMaxF(&this->actor.speedXZ, 5.0f, 1.0f, 0.25f);
    sp74 = &this->skelAnime;
    SkelAnime_FrameUpdateMatrix(&this->skelAnime);
    this->unk_520 = this->unk_520 + -0.3f;
    if (this->unk_178[1] != 0) {
        Math_SmoothScaleMaxS(&this->actor.shape.rot.y, this->actor.yawTowardsLink, 5, this->unk_4C8);
        if ((player->stateFlags1 & 0x400000) && ((player->actor.shape.rot.y - this->actor.shape.rot.y + 0x8000) < 0x2000)  && ((player->actor.shape.rot.y - this->actor.shape.rot.y + 0x8000) >= -0x1FFF)) {
            Math_SmoothScaleMaxF(&this->unk_4B0.x, player->unk_9BC.x, 1.0f, 400.0f);
            Math_SmoothScaleMaxF(&this->unk_4B0.y, player->unk_9BC.y, 1.0f, 400.0f);
            Math_SmoothScaleMaxF(&this->unk_4B0.z, player->unk_9BC.z, 1.0f, 400.0f);
        } else {
            Math_SmoothScaleMaxF(&this->unk_4B0.x, player->actor.posRot.pos.x, 1.0f, 400.0f);
            Math_SmoothScaleMaxF(&this->unk_4B0.y, player->actor.posRot.pos.y + 30.0f, 1.0f, 400.0f);
            Math_SmoothScaleMaxF(&this->unk_4B0.z, player->actor.posRot.pos.z, 1.0f, 400.0f);
        }

        this->unk_178[0] = (u16)0x46;
        this->unk_500.z = this->unk_500.y = this->unk_500.x = 0.0f;
        this->unk_4EC += this->unk_4F0 * 0.0025f;
        sp6C = &this->spawnPortalAlpha;
        Math_SmoothScaleMaxF(&this->spawnPortalAlpha, 255.0f, 1.0f, 10.0f);
        Math_SmoothScaleMaxF(&this->unk_4F0, 50.0f, 1.0f, 2.0f);
        if (this->unk_178[1] < 0x32) {
            phi_v0_2 = (s32) this->unk_178[1];
            if (this->unk_178[1] < 0xA) {
                if (this->unk_178[1] == 9) {
                    globalCtx->envCtx.unk_D8 = 0.5f;
                    globalCtx->envCtx.unk_BD = 3 - this->actor.params;
                    Audio_PlayActorSound2((Actor *) this, (u16)0x3913U);
                }
                temp_s4 = &spF4;
                phi_v0 = (s32) this->unk_178[1];
                if (this->unk_178[1] == 5) {
                    this->unk_4D0 = 255.0f;
                    phi_v0 = (s32) this->unk_178[1];
                }
                temp_s3 = &sp100;
                phi_v0_2 = phi_v0;
                for(sp11A = 0; sp11A < 2; sp11A++){
                    for(phi_s0 = 0; phi_s0 < ARRAY_COUNT(this->unk_450); phi_s0++){
                        sp10C = this->unk_450[phi_s0];
                        sp100.x = Math_Rand_CenteredFloat(10.0f);
                        sp100.y = Math_Rand_CenteredFloat(10.0f);
                        sp100.z = Math_Rand_CenteredFloat(10.0f);
                        spF4.z = spF4.y = spF4.x = 0.0f;
                        func_80939070(globalCtx, &sp10C, &sp100, &spF4, Math_Rand_ZeroFloat(10.0f) + 25.0f, this->actor.params);
                    }
                }
            }

            if (this->unk_178[1] < 0x14) {
                Math_SmoothScaleMaxF(&this->unk_4D4, 0.0f, 1.0f, 20.0f);
                Math_SmoothScaleMaxF(&this->spawnPortalAlpha, 0.0f, 1.0f, 30.0f);
            } else {
                Math_SmoothScaleMaxF(&this->unk_4D4, 255.0f, 1.0f, 10.0f);
                if (this->actor.params == 1) {
                    Audio_PlayActorSound2(&this->actor, 0x310E);
                } else {
                    Audio_PlayActorSound2(&this->actor, 0x3112);
                }
            }
            this->unk_4E8 += this->unk_4E4 * 0.0025f;
            Math_SmoothScaleMaxF(&this->spawnPortalScale, 0.0f, 0.1f, this->unk_4E4);
            Math_SmoothScaleMaxF(&this->unk_4E4, 50.0f, 1.0f, 2.0f);
        }

        if (func_800A56C8(&this->skelAnime, this->unk_1A4)) {
            SkelAnime_ChangeAnimTransitionRepeat(&this->skelAnime, &D_06009398, 0.0f);
            this->unk_1A4 = 10000.0f;
        }

        if (this->unk_178[1] == 1) {
            SkelAnime_ChangeAnimTransitionStop(&this->skelAnime, &D_06003614, 0.0f);
            temp_f6 = SkelAnime_GetFrameCount(&D_06003614.genericHeader);
            this->unk_4DC = 0.0f;
            this->spawnPortalAlpha = 0.0f;
            this->unk_4D4 = 0.0f;
            this->unk_1A4 = temp_f6;
            D_8094C86E = 0;
        }
        phi_s3 = &this->unk_50C;
    } else {
        if (func_800A56C8(&this->skelAnime, this->unk_1A4)) {
            SkelAnime_ChangeAnimTransitionRepeat(&this->skelAnime, &D_06003E34, 0.0f);
            this->unk_1A4 = 10000.0f;
        }
        
        if (func_800A56C8(&this->skelAnime, this->unk_1A4 - 5.0f)) {
            this->unk_4FC = 0;
            D_8094C840 = this->actor.params + 1;
        }

        if (func_800A56C8(&this->skelAnime, this->unk_1A4 - 13.0f)) {
            Audio_PlayActorSound2(&this->actor, 0x3923);
            Audio_PlayActorSound2(&this->actor, 0x39B3);
        }
        temp_f20 = this->unk_4B0.x - this->unk_48C.x;
        temp_f24 = this->unk_4B0.z - this->unk_48C.z;
        temp_f26 = this->unk_4B0.y - this->unk_48C.y;
        temp_f2 = SQ(temp_f20);
        this->unk_51C = Math_atan2f(temp_f20, temp_f24);
        temp_f16 = SQ(temp_f24);
        this->unk_518 = -Math_atan2f(temp_f26, sqrtf(temp_f2 + temp_f16));
        if (this->unk_4FC != -1) {
            if (this->unk_4FC != 0) {
                if (this->unk_4FC != 1) {

                } else {
                    if(CHECK_PAD(globalCtx->state.input[0].cur, R_TRIG)) {
                        this->unk_52C = sqrtf((temp_f2 + (temp_f26 * temp_f26)) + temp_f16);
                        Math_SmoothScaleMaxF(&this->unk_548, 2000.0f, 1.0f, 40.0f);
                        Math_SmoothScaleMaxF(&this->unk_4B0.x, player->unk_9BC.x, 1.0f, 400.0f);
                        Math_SmoothScaleMaxF(&this->unk_4B0.y, player->unk_9BC.y, 1.0f, 400.0f);
                        Math_SmoothScaleMaxF(&this->unk_4B0.z, player->unk_9BC.z, 1.0f, 400.0f);
                        if (!(this->unk_150 & 3)) {
                            func_80938EC0(globalCtx, &player->unk_9BC, 0.5f, 3.0f, 0xFF, this->actor.params, 1, 0x96);
                        }
                    } else {
                        this->unk_4FC = 0;
                        this->unk_548 = 0.0f;
                    }
                    func_800A6E10(&globalCtx->mf_11D60, this->unk_530, &this->unk_558, &this->actor.projectedW);
                    if (this->actor.params == 1) {
                        Audio_PlaySoundGeneral(0x3122, &this->unk_558, 4, &D_801333E0, &D_801333E0, &D_801333E8);
                        Audio_PlaySoundGeneral(0x3117, &this->unk_558, 4, &D_801333E0, &D_801333E0, &D_801333E8);
                    } else {
                        Audio_PlaySoundGeneral(0x3111, &this->unk_558, 4, &D_801333E0, &D_801333E0, &D_801333E8);
                        Audio_PlaySoundGeneral(0x3118, &this->unk_558, 4, &D_801333E0, &D_801333E0, &D_801333E8);
                    }
                }
block_58:
                phi_s3_2 = &this->unk_50C;
            } else {
                if (this->unk_178[0] != 0) {
                    temp_v0_3 = func_8093AB30(this, globalCtx);
                    if (temp_v0_3 == 1) {
                        spCC = D_8094A8DC;
                        //temp_s4_2 = &spD8;
                        //temp_s2_2 = player + 0x9BC;
                        //phi_s0_2 = 0;

                        for(phi_s0_2 = 0; phi_s0_2 < 0x96; phi_s0_2++){
                            spD8.x = Math_Rand_CenteredFloat(15.0f);
                            spD8.y = Math_Rand_CenteredFloat(15.0f);
                            spD8.z = Math_Rand_CenteredFloat(15.0f);
                            spE4 = player->unk_9BC;
                            func_80938CD0(globalCtx, &spE4, &spD8, &spCC, (s16)Math_Rand_ZeroFloat(2.0f) + 5, this->actor.params, 0x96);
                        }
                        this->unk_4FC = (u16)1;
                        func_80078914(&player->actor.projectedPos, 0x180C);
                        func_800D20CC(&player->mf_A20, (Vec3s *) &sp128, 0);
                        this->unk_524 = -sp128.x;
                        this->unk_526 = sp128.y + 0x8000;
                        this->unk_500.z = this->unk_500.y = this->unk_500.x = 0.0f;
                        globalCtx->envCtx.unk_D8 = 1.0f;
                        func_800AA000(0.0f, 0x64, 5, 4);
                    } else {
                        if (temp_v0_3 == 0) {
                            func_8093A940(this, globalCtx);
                            if (this->unk_440 == 0) {
                                temp_f0 = sqrtf(temp_f2 + SQ(temp_f26) + temp_f16);
                                Math_SmoothScaleMaxF(&this->unk_52C, temp_f0 + temp_f0, 1.0f, 40.0f);
                            }
                        }
                    }
                }
                temp_s3_2 = &this->unk_50C;
                temp_s1_2 = this->unk_54C;
                func_800A6E10(&globalCtx->mf_11D60, &this->unk_50C, &this->unk_54C, &this->actor.projectedW);
                if (this->actor.params == 1) {
                    Audio_PlaySoundGeneral(0x3122U, &this->unk_54C, 4, &D_801333E0, &D_801333E0, &D_801333E8);
                    phi_s3_2 = temp_s3_2;
                } else {
                    Audio_PlaySoundGeneral(0x3111U, &this->unk_54C, 4, &D_801333E0, &D_801333E0, &D_801333E8);
                    phi_s3_2 = temp_s3_2;
                }
            }
        } else {
            goto block_58;
        }
        if (this->unk_178[0] == 0 && (D_8094C840 == 1 || D_8094C840 == 2)) {
            D_8094C840 = 0;
        }
        phi_s3 = phi_s3_2;
        if (this->unk_178[0] == 0) {
            Math_SmoothScaleMaxF(&this->unk_4F8, 0.0f, 1.0f, 0.0005f);
            phi_s3 = phi_s3_2;
            if (0.0f == this->unk_4F8 == 0.0f) {
                func_8093C164(this, globalCtx);
                this->unk_548 = 0.0f;
                this->unk_52C = 0.0f;
                phi_s3 = phi_s3_2;
            }
        }
    }
    Matrix_Translate(this->unk_48C.x, this->unk_48C.y, this->unk_48C.z, 0);
    Matrix_RotateY(this->unk_51C, (u8)1U);
    Matrix_RotateX(this->unk_518, (u8)1U);
    sp130.x = 0.0f;
    sp130.y = 0.0f;
    sp130.z = this->unk_52C + -5.0f;
    temp_s2_3 = &sp130;
    Matrix_MultVec3f(&sp130, &this->unk_50C);
    if (this->unk_440 == 0) {
        if (this->unk_4FC == 0) {
            if (this->unk_178[0] != 0) {
                temp_f0_2 = func_8093AED8(&this->unk_50C);
                this->unk_500.y = temp_f0_2;
                if (0.0f <= temp_f0_2) {
                    this->unk_440 = 1;
                    this->unk_500.x = this->unk_50C.x;
                    this->unk_500.z = this->unk_50C.z;
                    func_8093A5C4(this, globalCtx, this->actor.params);
                    this->unk_178[0] = 0x14;
                }
            }
        }
    }
    if (this->unk_4FC == 1) {
        temp_s3_3 = this->unk_530;
        if (this->unk_440 == 0) {
            func_800D20CC(&player->mf_A20, &sp128, 0);
            sp128.y = sp128.y + 0x8000;
            sp128.x = 0 - sp128.x;
            Math_SmoothScaleMaxS(&this->unk_524, sp128.x, 5, 0x2000);
            Math_SmoothScaleMaxS(&this->unk_526, sp128.y, 5, 0x2000);
            this->unk_53C = this->unk_524 / 32768.0f * M_PI;
            this->unk_540 = this->unk_526 / 32768.0f * M_PI;
        }
        Matrix_Translate(this->unk_50C.x, this->unk_50C.y, this->unk_50C.z, MTXMODE_NEW);
        Matrix_RotateY(this->unk_540, MTXMODE_APPLY;
        Matrix_RotateX(this->unk_53C, MTXMODE_APPLY);
        sp130.x = 0.0f;
        sp130.y = 0.0f;
        sp130.z = this->unk_548 + -170.0f;
        Matrix_MultVec3f(&sp130, &this->unk_530);
        if (this->unk_440 == 0) {
            sp130.z = 0.0f;
            phi_s0_4 = 0;
loop_76:
            Matrix_MultVec3f((Vec3f *) temp_s2_3, (Vec3f *) &spBC);
            temp_f0_3 = func_8093AED8(&spBC);
            temp_cond_2 = 0.0f <= temp_f0_3;
            this->unk_500.y = temp_f0_3;
            if (temp_cond_2) {
                temp_s2_4 = &spA4;
                temp_s1_3 = &spB0;
                phi_s0_3 = 0;
                if (35.0f != this->unk_500.y) {
                    phi_s0_3 = 0;
                    if (0.0f < this->unk_53C) {
                        phi_s0_3 = 0;
                        if (this->unk_178[0] != 0) {
                            this->unk_440 = (u16)1;
                            this->unk_500.x = spBC;
                            this->unk_500.z = spC4;
                            func_8093A5C4(this, globalCtx, this->actor.params);
                            this->unk_178[0] = (u16)0x14;
                        } else {
loop_81:
                            spB0 = Math_Rand_CenteredFloat(20.0f);
                            spB4 = Math_Rand_CenteredFloat(20.0f);
                            spB8 = Math_Rand_CenteredFloat(20.0f);
                            spA4 = 0.0f;
                            spA8 = 0.0f;
                            spAC = 0.0f;
                            func_80939070(globalCtx, temp_s3_3, temp_s1_3, temp_s2_4, Math_Rand_ZeroFloat(10.0f) + 25.0f, (?32) this->actor.params);
                            temp_s0_4 = (s32) ((phi_s0_3 + 1) << 0x10) >> 0x10;
                            phi_s0_3 = temp_s0_4;
                            if (temp_s0_4 < 5) {
                                goto loop_81;
                            }
                            this->unk_548 = sp138;
                            Math_SmoothScaleMaxF(&globalCtx->envCtx.unk_D8, 0.8f, 1.0f, 0.2f);
                        }
                    } else {
                        goto loop_81;
                    }
                } else {
                    goto loop_81;
                }
            } else {
                temp_f10 = sp138 + 20.0f;
                temp_s0_5 = (s32) ((phi_s0_4 + 1) << 0x10) >> 0x10;
                sp138 = temp_f10;
                if (!(this->unk_548 < temp_f10)) {
                    phi_s0_4 = temp_s0_5;
                    if (temp_s0_5 < 0xC8) {
                        goto loop_76;
                    }
                }
            }
        }

        if (func_8093ADB4(this, (Vec3f *) &this->actor.posRot) != 0) {
            if (!(this->unk_150 & 3)) {
                func_80938EC0(globalCtx, temp_s3_3, 0x3F000000, 0x40400000, 0xFF, (?32) this->actor.params, 1, 0x96);
            }
        }
        
        if (func_8093ADB4(this, (Vec3f *) &attachedA->posRot) != 0) {
            if (&func_8093C2C4 != attachedA->unk14C) {
                temp_s3_4 = &sp80;
                temp_s2_5 = &sp8C;
                temp_s1_4 = &sp98;
                phi_s0_5 = 0;
loop_91:
                sp98 = Math_Rand_CenteredFloat(50.0f) + attachedA->posRot.pos.x;
                sp9C = Math_Rand_CenteredFloat(50.0f) + attachedA->posRot.pos.y;
                spA0 = Math_Rand_CenteredFloat(50.0f) + attachedA->posRot.pos.z;
                sp8C = Math_Rand_CenteredFloat(20.0f);
                sp90 = Math_Rand_CenteredFloat(20.0f);
                sp94 = Math_Rand_CenteredFloat(20.0f);
                sp80 = 0.0f;
                sp84 = 0.0f;
                sp88 = 0.0f;
                func_80939070(globalCtx, temp_s1_4, temp_s2_5, temp_s3_4, Math_Rand_ZeroFloat(10.0f) + 25.0f, (?32) this->actor.params);
                temp_s0_6 = (s32) ((phi_s0_5 + 1) << 0x10) >> 0x10;
                phi_s0_5 = temp_s0_6;
                if (temp_s0_6 < 0x32) {
                    goto loop_91;
                }
                func_8093C25C(attachedA, globalCtx);
                Audio_PlayActorSound2((Actor *) attachedA, (u16)0x3916U);
                globalCtx->envCtx.unk_D8 = 1.0f;
                attachedA->colChkInfo.health = (u8) (attachedA->colChkInfo.health + 1);
            }
        }
    }
}
#else
#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Boss_Tw/func_8093B1AC.s")
#endif
#undef NON_MATCHING

void func_8093C1C4(BossTw* this, GlobalContext* globalCtx);
extern AnimationHeader D_06004548;

void func_8093C164(BossTw* this, GlobalContext* globalCtx) {
    this->actionFunc = func_8093C1C4;
    SkelAnime_ChangeAnimTransitionStop(&this->skelAnime, &D_06004548, 0.0f);
    this->unk_1A4 = SkelAnime_GetFrameCount(&D_06004548.genericHeader);
}

void func_8093C58C(BossTw* this, GlobalContext* globalCtx);
void func_8093C1C4(BossTw *this, GlobalContext *globalCtx) {

    SkelAnime_FrameUpdateMatrix(&this->skelAnime);
    Math_SmoothScaleMaxF(&this->unk_4D0, 0.0f, 1.0f, 10.0f);
    if (func_800A56C8(&this->skelAnime, this->unk_1A4)) {
        if (D_8094C84C->unk_178[2] == 0) {
            func_8093A0A8(this, globalCtx);
        } else {
            func_8093C58C(this, globalCtx);
        }
        this->unk_4D0 = 0.0f;
    }
}

void func_8093C2C4(BossTw* this, GlobalContext* globalCtx);
extern AnimationHeader D_0600578C;

void func_8093C25C(BossTw* this, GlobalContext* globalCtx) {
    this->actionFunc = func_8093C2C4;
    SkelAnime_ChangeAnimTransitionStop(&this->skelAnime, &D_0600578C, 0.0f);
    this->unk_178[0] = 0x35;
    this->actor.speedXZ = 0.0f;
    if (this->actor.params == 0) {
        this->fogTimer = 20;
    }
}
extern AnimationHeader D_06006530;

void func_8093C2C4(BossTw *this, GlobalContext *globalCtx) {
    Vec3f sp5C;
    Vec3f sp50;
    Vec3f sp44;

    SkelAnime_FrameUpdateMatrix(&this->skelAnime);
    if (!(this->unk_150 & 3)) {
        sp5C.x = Math_Rand_CenteredFloat(80.0f) + this->actor.posRot.pos.x;
        sp5C.y = Math_Rand_CenteredFloat(80.0f) + this->actor.posRot.pos.y;
        sp5C.z = Math_Rand_CenteredFloat(80.0f) + this->actor.posRot.pos.z;
        sp50.x = 0.0f;
        sp50.y = 0.0f;
        sp50.z = 0.0f;
        sp44.x = 0.0f;
        sp44.y = 0.1f;
        sp44.z = 0.0f;
        func_80938DC4(globalCtx, this->actor.params + 2, &sp5C, &sp50, &sp44, Math_Rand_ZeroFloat(10.0f) + 15.0f, 0, 0, 0x96);
    }
    if (this->actor.params == 1) {
        Math_SmoothScaleMaxF(&this->fogR, 255.0f, 1.0f, 30.0f);
        Math_SmoothScaleMaxF(&this->fogG, 255.0f, 1.0f, 30.0f);
        Math_SmoothScaleMaxF(&this->fogB, 255.0f, 1.0f, 30.0f);
        Math_SmoothScaleMaxF(&this->fogMin, 900.0f, 1.0f, 30.0f);
        Math_SmoothScaleMaxF(&this->fogMax, 1099.0f, 1.0f, 30.0f);
    }

    Math_SmoothScaleMaxF(&this->actor.posRot.pos.y, ((Math_Sins(this->unk_150 * 1500) * 20.0f) + 350.0f) + 50.0f, 0.1f, this->actor.speedXZ);
    Math_SmoothScaleMaxF(&this->actor.speedXZ, 5.0f, 1.0f, 1.0f);
    this->actor.posRot.pos.y -= 50.0f;
    func_8002E4B4(globalCtx, &this->actor, 50.0f, 50.0f, 100.0f, 4);
    this->actor.posRot.pos.y += 50.0f;
    if (this->actor.bgCheckFlags & 1) {
        this->actor.speedXZ = 0.0f;
    }
    if (this->unk_178[0] == 1) {
        SkelAnime_ChangeAnimTransitionStop(&this->skelAnime, &D_06006530, 0.0f);
        this->unk_1A4 = SkelAnime_GetFrameCount(&D_06006530.genericHeader);
    }
    if (this->unk_178[0] == 0) {
        if (func_800A56C8(&this->skelAnime, this->unk_1A4)) {
            func_8093A0A8(this, globalCtx);
        }
    }
}

void func_8093C5F4(BossTw* this, GlobalContext* globalCtx);
extern AnimationHeader D_060088C8;

void func_8093C58C(BossTw* this, GlobalContext* globalCtx) {
    this->actionFunc = func_8093C5F4;
    SkelAnime_ChangeAnimTransitionStop(&this->skelAnime, &D_060088C8, 0.0f);
    this->unk_1A4 = SkelAnime_GetFrameCount(&D_060088C8.genericHeader);
    this->actor.speedXZ = 0.0f;
}

void func_8093C5F4(BossTw *this, GlobalContext *globalCtx) {
    SkelAnime_FrameUpdateMatrix(&this->skelAnime);
    if (func_800A56C8(&this->skelAnime, 10.0f)) {
        if (this->actor.params == 1) {
            Audio_PlayActorSound2(&this->actor, NA_SE_EN_TWINROBA_LAUGH);
        } else {
            Audio_PlayActorSound2(&this->actor, NA_SE_EN_TWINROBA_LAUGH2);
        }
    }

    if (func_800A56C8(&this->skelAnime, this->unk_1A4)) {
        func_8093A0A8(this, globalCtx);
    }
}

void func_8093C700(BossTw* this, GlobalContext* globalCtx);
extern AnimationHeader D_06007CA8;

void func_8093C684(BossTw* this, GlobalContext* globalCtx) {
    this->actionFunc = func_8093C700;
    SkelAnime_ChangeAnimTransitionStop(&this->skelAnime, &D_06007CA8, -3.0f);
    this->unk_1A4 = SkelAnime_GetFrameCount(&D_06007CA8.genericHeader);
    this->actor.speedXZ = 0.0f;
    SkelAnime_FrameUpdateMatrix(&this->skelAnime);
    this->unk_178[0] = 0x14;
}

// hit with hookshot?
void func_8093C700(BossTw *this, GlobalContext *globalCtx) {
    if (this->unk_178[0] != 0) {
        this->collider.base.type = 9;
        this->actor.shape.rot.y -= 0x3000;
        if (!(this->unk_178[0] & 3)) {
            Audio_PlayActorSound2(&this->actor, NA_SE_EN_TWINROBA_ROLL);
        }
    } else {
        SkelAnime_FrameUpdateMatrix(&this->skelAnime);
        Math_SmoothScaleMaxS(&this->actor.shape.rot.y, this->actor.posRot.rot.y, 3, 0x2000);
        if (func_800A56C8(&this->skelAnime, this->unk_1A4)) {
            func_8093A0A8(this, globalCtx);
        }
    }
}

void func_8093C7E4(BossTw* this, GlobalContext* globalCtx);
extern AnimationHeader D_06006F28;

void func_8093C79C(BossTw* this, GlobalContext* globalCtx) {
    this->actionFunc = func_8093C7E4;
    this->unk_4C8 = 0.0f;
    this->actor.speedXZ = 0.0f;
    SkelAnime_ChangeAnimTransitionRepeat(&this->skelAnime, &D_06006F28, -10.0f);
}

void func_8093C7E4(BossTw *this, GlobalContext *globalCtx) {
    Math_SmoothScaleMaxF(&this->unk_4D0, 0.0f, 1.0f, 10.0f);
    SkelAnime_FrameUpdateMatrix(&this->skelAnime);
}

void func_8093C824(BossTw *this, GlobalContext *globalCtx) {
    this->actionFunc = func_8093C858;
    this->unk_564 = 0;
    this->actor.posRot.pos.y = -2000.0f;
    this->actor.flags &= ~1;
}

void func_8093C8F4(BossTw* this, GlobalContext *globalCtx);

void func_8093C858(BossTw *this, GlobalContext *globalCtx) {
    if (this->actor.params == 2 && 
        D_8094C848->actionFunc == func_8093A2AC && 
        D_8094C844->actionFunc == func_8093A2AC && 
        (D_8094C848->actor.colChkInfo.health + D_8094C844->actor.colChkInfo.health) >= 4) {

        func_8093C8F4(this, globalCtx);
        func_8093C79C(D_8094C844, globalCtx);
        func_8093C79C(D_8094C848, globalCtx);
    }
}

void func_8093C910(BossTw* this, GlobalContext* globalCtx);

void func_8093C8F4(BossTw *this, GlobalContext *globalCtx) {
    this->actionFunc = func_8093C910;
    this->unk_5FA = 0;
    this->unk_440 = 0;
}

// big boi
#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Boss_Tw/func_8093C910.s")

void func_8093D444(BossTw* this, GlobalContext* globalCtx);
extern AnimationHeader D_060004A4;

void func_8093D3D8(BossTw* this, GlobalContext* globalCtx) {
    this->actionFunc = func_8093D444;
    SkelAnime_ChangeAnimTransitionRepeat(&this->skelAnime, &D_060004A4, -3.0f);
    this->unk_5F8 = 0;
    this->unk_152 = Math_Rand_ZeroFloat(20.0f);
}

void func_8093D444(BossTw *this, GlobalContext *globalCtx) {
    if (this->unk_178[0] == 0) {
        SkelAnime_FrameUpdateMatrix(&this->skelAnime);
    }
    Math_SmoothScaleMaxS(&this->actor.shape.rot.y, this->unk_164, 5, this->unk_4C8);
    Math_SmoothScaleMaxF(&this->unk_4C8, 20480.0f, 1.0f, 1000.0f);
    if (D_8094C84C->unk_152 >= 0x8D) {
        Math_SmoothScaleMaxF(&this->fogR, 100.0f, 1.0f, 15.0f);
        Math_SmoothScaleMaxF(&this->fogG, 255.0f, 1.0f, 15.0f);
        Math_SmoothScaleMaxF(&this->fogB, 255.0f, 1.0f, 15.0f);
        Math_SmoothScaleMaxF(&this->fogMin, 850.0f, 1.0f, 15.0f);
        Math_SmoothScaleMaxF(&this->fogMax, 1099.0f, 1.0f, 15.0f);
    }
}

void func_8093D580(BossTw* this, GlobalContext* globalCtx);

void func_8093D54C(BossTw *this, GlobalContext *globalCtx) {
    this->actionFunc = func_8093D580;
    this->unk_564 = 0;
    this->actor.posRot.pos.y = -2000.0f;
    this->actor.flags &= ~1;
}

void func_8093D580(BossTw *this, GlobalContext *globalCtx) {
}

void func_8093D5C0(BossTw* this, GlobalContext* globalCtx);

void func_8093D58C(BossTw *this, GlobalContext *globalCtx) {
    this->actionFunc = func_8093D5C0;
    this->unk_564 = 0;
    this->actor.posRot.pos.y = -2000.0f;
    this->actor.flags &= ~1;
}

// big boi
#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Boss_Tw/func_8093D5C0.s")

void func_8093EE10(BossTw *this, GlobalContext *globalCtx) {
    f32 sp34;
    f32 sp30;
    f32 sp2C;
    s32 pad;
    s16 phi_v0;
    s16 sp24;
    f32 temp_f14_2;

    if (!(this->unk_150 & 0xF)) {
        Audio_PlayActorSound2(&this->actor, NA_SE_EN_TWINROBA_FB_FLY);
    }

    if (D_8094C84C->unk_5FA < 2) {
        if (this->unk_178[0] == 0) {
            this->unk_178[0] = 0x14;
            this->unk_4B0.x = Math_Rand_CenteredFloat(100.0f) + D_8094C84C->actor.posRot.pos.x;
            this->unk_4B0.y = Math_Rand_CenteredFloat(50.0f) + 400.0f;
            this->unk_4B0.z = Math_Rand_CenteredFloat(100.0f) + D_8094C84C->actor.posRot.pos.z;
        }
        this->unk_178[1] = 0xA;
        this->unk_4C8 = 8192.0f;
        this->actor.speedXZ = 5.0f;
    } else {
        if (this->unk_178[1] == 9) {
            this->unk_4B0.y = 413.0f;
            this->actor.posRot.pos.z = 0.0f;
            this->actor.posRot.pos.x = 0.0f;
            for(phi_v0 = 0; phi_v0 < 0x32; phi_v0++){
                this->blastTailPos[phi_v0] = this->actor.posRot.pos;
            }
        }
        if (this->actor.params == 0x69) {
            this->unk_4B0.x = D_8094C848->actor.posRot.pos.x;
            this->unk_4B0.z = D_8094C848->actor.posRot.pos.z;
        } else {
            this->unk_4B0.x = D_8094C844->actor.posRot.pos.x;
            this->unk_4B0.z = D_8094C844->actor.posRot.pos.z;
        }
        Math_SmoothScaleMaxF(&this->unk_4B0.y, 263.0f, 1.0f, 2.0f);
        if (this->unk_4B0.y == 263.0f) {
            Math_SmoothScaleMaxF(&this->actor.speedXZ, 0.0f, 1.0f, 0.2f);
            if (D_8094C84C->unk_5FA == 3) {
                Actor_Kill(&this->actor);
            }
        }
    }
    sp34 = this->unk_4B0.x - this->actor.posRot.pos.x;
    sp30 = this->unk_4B0.y - this->actor.posRot.pos.y;
    sp2C = this->unk_4B0.z - this->actor.posRot.pos.z;
    sp24 = Math_atan2f(sp34, sp2C) * 10430.378f;
    Math_SmoothScaleMaxS(&this->actor.posRot.rot.x, Math_atan2f(sp30, sqrtf(SQ(sp34) + SQ(sp2C))) * 10430.378f, 5, this->unk_4C8);
    Math_SmoothScaleMaxS(&this->actor.posRot.rot.y, sp24, 5, this->unk_4C8);
    func_8002D908(&this->actor);
    func_8002D7EC(&this->actor);
}

void func_8093F9E4(BossTw* this, GlobalContext* globalCtx);
extern AnimationHeader D_06024374;

#ifdef NON_MATCHING
void func_8093F108(BossTw *this, GlobalContext *globalCtx) {
    this->actionFunc = func_8093F9E4;
    SkelAnime_ChangeAnimTransitionRepeat(&this->skelAnime, &D_06024374, -3.0f);
    this->unk_440 = 0;
    this->unk_152 = 0;
    this->actor.flags &= ~1;
    this->invincibilityTimer = 0x2710;
    this->actor.posRot.rot.y = this->actor.shape.rot.y;
    this->unk_5FA = this->unk_440;
    this->unk_150 = this->unk_152;
    func_8093D3D8(D_8094C848, globalCtx);
    func_8093D3D8(D_8094C844, globalCtx);
    D_8094C844->unk_178[0] = 8;
    this->unk_1D0 = 1.0f;
}
#else
#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Boss_Tw/func_8093F108.s")
#endif

extern AnimationHeader D_0600230C;
extern AnimationHeader D_06001D10;
extern AnimationHeader D_060017E0;
extern AnimationHeader D_060012A4;

#ifdef NON_MATCHING
void func_8093F1C4(BossTw *this, GlobalContext *globalCtx) {
    s16 sp3A;
    s16 sp38;
    u8 sp37;
    u8 sp36;
    u8 sp35;
    f32 *sp24;
    s16 phi_v1;
    s16 phi_v1_2;
    s16 phi_v1_3;
    s16 phi_v1_4;

    sp38 = 0;
    sp37 = 0;
    sp36 = 0;
    sp35 = 0;
    sp3A = 0;

    if (0x50 == this->unk_152) {
        sp36 = 1;
    }
    if (0x50 == this->unk_152) {
        sp3A = 0x604B;
        sp35 = 0x32;
    }
    if (this->unk_152 == 0x8C) {
        sp37 = 2;
        sp36 = 2;
    }
    if (this->unk_152 == 0xAA) {
        sp37 = 3;
        D_8094C844->unk_164 = -0x4000;
        D_8094C844->unk_4C8 = 0.0f;
        Audio_PlayActorSound2(&D_8094C844->actor, NA_SE_EN_TWINROBA_SENSE);
        sp3A = 0x604C;
    }
    if (this->unk_152 == 0xD2) {
        D_8094C874 = 0x1E;
    }
    if (this->unk_152 == 0x10E) {
        sp36 = 3;
        D_8094C848->unk_164 = 0x4000;
        D_8094C848->unk_4C8 = 0.0f;
        Audio_PlayActorSound2(&D_8094C848->actor, NA_SE_EN_TWINROBA_SENSE);
    }

    if (this->unk_152 == 0x122) {
        sp3A = 0x604D;
        sp35 = 0x23;
    }

    if (this->unk_152 == 0x15E) {
        sp36 = 2;
        sp37 = 2;
        D_8094C848->unk_164 = D_8094C844->unk_164 = 0;
        D_8094C848->unk_4C8 = D_8094C844->unk_4C8 = 0.0f;
    }
    if (this->unk_152 == 0x17C) {
        sp36 = 3;
        sp37 = 3;
    }
    if (this->unk_152 == 0x190) {
        sp36 = 2;
        sp37 = 2;
    }
    if (this->unk_152 == 0x1AE) {
        D_8094C874 = 0x1B3;
        sp36 = 4;
        D_8094C878 = 1;
    }

    if (this->unk_152 >= 0x1B9) {
        if (this->unk_152 < 0x35C) {;
            func_80078884(NA_SE_EN_TWINROBA_FIGHT & ~SFX_FLAG);
        }
    }

    if (this->unk_152 == 0x1AE) {
        sp3A = 0x604E;
    }

    if (0x1E0 == this->unk_152) {
        sp37 = 4;
        D_8094C844->unk_164 = -0x4000;
    }

    if (this->unk_152 == 0x1F4) {
        sp36 = 2;
    }
    if (0x1E0 == this->unk_152) {
        sp38 = 0x604F;
    }

    if (0x212 == this->unk_152) {
        sp36 = 4;
        D_8094C848->unk_164 = 0x4000;
        D_8094C87A = 0x14F;
        D_8094C87E = 1;
    }
    if (0x212 == this->unk_152) {
        sp3A = 0x6050;
    }
    if (this->unk_152 == 0x244) {
        sp38 = 0x6051;
    }
    if (this->unk_152 == 0x26C) {
        sp3A = 0x6052;
    }
    if (this->unk_152 == 0x294) {
        sp38 = 0x6053;
    }
    if (this->unk_152 == 0x2BC) {
        sp3A = 0x6054;
    }
    if (this->unk_152 == 0x2E4) {
        sp38 = 0x6055;
    }
    if (this->unk_152 == 0x30C) {
        sp3A = 0x6056;
    }

    if (this->unk_152 == 0x334) {
        sp38 = 0x6057;
        Audio_SetBGM(0x105000FF);
    }
    if (this->unk_152 == 0x35C) {
        sp36 = 3;
        sp37 = 3;
    }

    if (this->unk_152 == 0x384) {
        Audio_PlayActorSound2(&D_8094C848->actor, NA_SE_EN_TWINROBA_DIE);
        Audio_PlayActorSound2(&D_8094C844->actor, NA_SE_EN_TWINROBA_DIE);
    }
    if (this->unk_152 == 0x3A2) {
        sp3A = 0x6058;
    }
    if (sp3A != 0) {
        func_8010B680(globalCtx, sp3A, NULL);
        if (sp35 != 0) {
            D_8094C876 = 0xA;
            D_8094C874 = sp35;
            D_8094C878 = 0;
        }
    }
    if (sp38 != 0) {
        func_8010B680(globalCtx, sp38, NULL);
    }
    switch(sp37){
        case 1:
        SkelAnime_ChangeAnimTransitionRepeat(&D_8094C844->skelAnime, &D_0600230C, -5.0f);
        break;
        case 2:
        SkelAnime_ChangeAnimTransitionRepeat(&D_8094C844->skelAnime, &D_06001D10, -5.0f);
        break;
        case 3:
        SkelAnime_ChangeAnimTransitionRepeat(&D_8094C844->skelAnime, &D_060017E0, -5.0f);
        break;
        case 4:
        SkelAnime_ChangeAnimTransitionRepeat(&D_8094C844->skelAnime, &D_060012A4, -5.0f);
        break;
    }

    switch(sp36){
        case 1:
        SkelAnime_ChangeAnimTransitionRepeat(&D_8094C848->skelAnime, &D_0600230C, -5.0f);
        break;
        case 2:
        SkelAnime_ChangeAnimTransitionRepeat(&D_8094C848->skelAnime, &D_06001D10, -5.0f);
        break;
        case 3:
        SkelAnime_ChangeAnimTransitionRepeat(&D_8094C848->skelAnime, &D_060017E0, -5.0f);
        break;
        case 4:
        SkelAnime_ChangeAnimTransitionRepeat(&D_8094C848->skelAnime, &D_060012A4, -5.0f);
        break;
    }

    if (this->unk_152 >= 0x78 && this->unk_152 < 0x1F4) {
        Math_SmoothScaleMaxF(&this->unk_1CC, 255.0f, 0.1f, 5.0f);
    }

    if (this->unk_152 >= 0x96) {
        Math_SmoothScaleMaxF(&D_8094C848->unk_1C8, (Math_Sins(this->unk_150 * 500) * 0.05f) + 0.4f, 0.1f, 0.01f);
        Math_SmoothScaleMaxF(&D_8094C844->unk_1C8, (Math_Coss(this->unk_150 * 1700) * 0.05f) + 0.4f, 0.1f, 0.01f);
        if (this->unk_152 >= 0x370) {
            Math_SmoothScaleMaxF(&D_8094C844->actor.posRot.pos.y, 2000.0f, 1.0f, this->actor.speedXZ);
            Math_SmoothScaleMaxF(&D_8094C848->actor.posRot.pos.y, 2000.0f, 1.0f, this->actor.speedXZ);
            Math_SmoothScaleMaxF(&this->actor.speedXZ, 10.0f, 1.0f, 0.25f);
            if (this->unk_152 >= 0x3A2) {
                Math_SmoothScaleMaxF(&this->unk_1D0, 5.0f, 1.0f, 0.05f);
                Math_SmoothScaleMaxF(&this->unk_1CC, 0.0f, 1.0f, 3.0f);
            }
            Audio_PlayActorSound2(&this->actor, NA_SE_EV_GOTO_HEAVEN & ~SFX_FLAG);
        } else {
            Math_SmoothScaleMaxF(&D_8094C844->actor.posRot.pos.y, ((Math_Coss(this->unk_152 * 1700) * 4.0f) + 263.0f) + 20.0f, 0.1f, this->actor.speedXZ);
            Math_SmoothScaleMaxF(&D_8094C848->actor.posRot.pos.y, ((Math_Sins(this->unk_152 * 1500) * 4.0f) + 263.0f) + 20.0f, 0.1f, this->actor.speedXZ);
            Math_SmoothScaleMaxF(&this->actor.speedXZ, 1.0f, 1.0f, 0.05f);
        }
    }
}
#else
#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Boss_Tw/func_8093F1C4.s")
#endif


void func_80939070(GlobalContext*, Vec3f*, Vec3f*, Vec3f*, f32, s16);
extern AnimationHeader D_060216DC;

#ifdef NON_MATCHING
void func_8093F9E4(BossTw *this, GlobalContext *globalCtx) {
    f32 spD8;
    f32 spD0;
    Player *player = PLAYER;
    Camera *spC8;
    Vec3f spBC;
    Vec3f spB0;
    Vec3f spA4;
    Vec3f sp98;
    Vec3f sp8C;
    Vec3f sp80;
    PosRot *sp64;
    ActorContext *temp_s0_3;
    ActorContext *temp_s0_6;
    Camera *temp_v0;
    SkelAnime *temp_s0;
    f32 *temp_s0_5;
    f32 *temp_s1;
    f32 *temp_s1_2;
    f32 temp_f0;
    f32 temp_f0_2;
    f32 temp_f0_3;
    f32 temp_f18;
    f32 temp_f20;
    f32 temp_f4;
    s16 temp_a1;
    s32 temp_s0_2;
    s32 temp_s0_4;
    u16 temp_t7;
    void *temp_s1_3;
    s32 phi_v0;
    s16 phi_s0;

    spC8 = Gameplay_GetCamera(globalCtx, 0);
    SkelAnime_FrameUpdateMatrix(&this->skelAnime);
    this->unk_160 += 0x14;
    if (this->unk_160 >= 0x100) {
        this->unk_160 = 0xFF;
    }
    Math_SmoothScaleMaxF(&this->unk_1B4, 0.0f, 1.0f, 0.05f);
    this->unk_5F8 = 1;

    switch(this->unk_440){
        case 0:
            if (this->unk_150 == 0xF) {
                SkelAnime_ChangeAnimTransitionStop(&this->skelAnime, &D_060216DC, -3.0f);
            }

            if (this->unk_150 >= 0xF) {
                Math_SmoothScaleMaxF(&this->actor.posRot.pos.y, 400.0f, 0.05f, 10.0f);
            }
            if (this->unk_150 >= 0x37) {
                if (this->unk_150 == 0x37) {
                    globalCtx->envCtx.unk_D8 = 0.0f;
                }
                D_8094C840 = -1;
                globalCtx->envCtx.unk_BE = 5;
                globalCtx->envCtx.unk_BD = 0;
                Math_SmoothScaleMaxF(&globalCtx->envCtx.unk_D8, 1.0f, 1.0f, 0.015f);
                Math_SmoothScaleMaxF(&this->actor.scale.x, 0.00025f, 0.1f, 0.00005f);
                this->unk_1B8 += this->actor.speedXZ;
                this->actor.shape.rot.y = (this->actor.shape.rot.y + (s32)this->actor.speedXZ);
                if (65536.0f < this->unk_1B8) {
                    this->unk_1B8 -= 65536.0f;
                    Audio_PlayActorSound2(&this->actor, NA_SE_EN_TWINROBA_ROLL);
                }
                Math_SmoothScaleMaxF(&this->actor.speedXZ, 12288.0f, 1.0f, 256.0f);
                if (this->unk_150 == 0x87) {
                    spA4 = D_8094A8E8;
                    func_80078884(NA_SE_EN_TWINROBA_TRANSFORM);
                    for(phi_s0 = 0; phi_s0 < 0x64; phi_s0++){
                        
                        spB0.x = Math_Rand_CenteredFloat(5.0f);
                        spB0.y = Math_Rand_CenteredFloat(5.0f);
                        spB0.z = Math_Rand_CenteredFloat(5.0f);
                        spBC = this->actor.posRot.pos;
                        spBC.x += spB0.x;
                        spBC.y += spB0.y;
                        spBC.z += spB0.z;
                        func_80939070(globalCtx, &spBC, &spB0, &spA4, Math_Rand_ZeroFloat(2.0f) + 5.0f, Math_Rand_ZeroFloat(1.99f));
                    }
                    this->unk_440 = 1;
                    this->unk_564 = 0;
                    this->actor.scale.x = 0.0f;
                    Actor_SpawnAttached(&globalCtx->actorCtx, &this->actor, globalCtx, ACTOR_BOSS_TW, this->actor.posRot.pos.x, this->actor.posRot.pos.y, this->actor.posRot.pos.z, 0, 0, 0, 0x69);
                    Actor_SpawnAttached(&globalCtx->actorCtx, &this->actor, globalCtx, ACTOR_BOSS_TW, this->actor.posRot.pos.x, this->actor.posRot.pos.y, this->actor.posRot.pos.z, 0, 0, 0, 0x68);
                    this->actor.flags &= ~1;
                }
            }
            Actor_SetScale(&this->actor, this->actor.scale.x);
        case 1:
        default:
            break;
    }
    
    switch(this->unk_5FA) {
        case 0:
            this->unk_5FA = 1;
            func_80064520(globalCtx, &globalCtx->csCtx);
            func_8002DF54(globalCtx, &this->actor, 8);
            this->unk_5FC = Gameplay_CreateSubCamera(globalCtx);
            Gameplay_ChangeCameraStatus(globalCtx, 0, 1); // Wait
            Gameplay_ChangeCameraStatus(globalCtx, this->unk_5FC, 7); // active
            this->unk_600 = spC8->eye;
            this->unk_60C = spC8->at;
            Audio_SetBGM(0x100100FF);
            break;
        case 1:
            spD0 = Math_Sins(this->actor.posRot.rot.y) * 200.0f;
            spD8 = Math_Coss(this->actor.posRot.rot.y) * 200.0f;
            Math_SmoothScaleMaxF(&this->unk_600.x, this->actor.posRot.pos.x + spD0, 0.1f, 50.0f);
            Math_SmoothScaleMaxF(&this->unk_600.y, 300.0f, 0.1f, 50.0f);
            Math_SmoothScaleMaxF(&this->unk_600.z, this->actor.posRot.pos.z + spD8, 0.1f, 50.0f);
            Math_SmoothScaleMaxF(&this->unk_60C.x, this->actor.posRot.pos.x, 0.1f, 50.0f);
            Math_SmoothScaleMaxF(&this->unk_60C.y, this->actor.posRot.pos.y, 0.1f, 50.0f);
            Math_SmoothScaleMaxF(&this->unk_60C.z, this->actor.posRot.pos.z, 0.1f, 50.0f);
            if (this->unk_150 == 0xAA) {
                this->unk_5FA = 2;
                this->unk_152 = 0;
                this->unk_600.z = 170.0f;
                this->unk_6A4 = 170.0f;
                this->unk_600.x = 0.0f;
                this->unk_60C.x = 0.0f;
                this->unk_60C.z = 0.0f;
                this->unk_600.y = 260.0f;
                player->actor.shape.rot.y = -0x8000;
                player->actor.posRot.pos.x = -40.0f;
                player->actor.posRot.pos.y = 240.0f;
                player->actor.posRot.pos.z = 90.0f;
                D_8094C848->actor.posRot.pos.x = -37.0f;
                D_8094C844->actor.posRot.pos.x = 37.0f;
                D_8094C848->actor.posRot.pos.y = D_8094C844->actor.posRot.pos.y = 263.0f;
                this->unk_60C.y = D_8094C848->actor.posRot.pos.y + 17.0f;
                D_8094C848->actor.posRot.pos.z = D_8094C844->actor.posRot.pos.z = 0.0f;
                D_8094C848->unk_164 = D_8094C844->unk_164 = D_8094C848->actor.shape.rot.x = D_8094C844->actor.shape.rot.x = D_8094C848->actor.shape.rot.y = D_8094C844->actor.shape.rot.y = 0;
                func_8002DF54(globalCtx, &D_8094C848->actor, 1);
                D_8094C848->actor.flags |= 1;
                break;
            }
        case 2:
            if (this->unk_152 == 0x64) {
                sp80 = D_8094A8F4;
                for(phi_s0 = 0; phi_s0 < 0x32; phi_s0++){
                    sp8C.x = Math_Rand_CenteredFloat(3.0f);
                    sp8C.y = Math_Rand_CenteredFloat(3.0f);
                    sp8C.z = Math_Rand_CenteredFloat(3.0f);
                    sp98 = D_8094C848->actor.posRot.pos;
                    sp98.x += sp8C.x + sp8C.x;
                    sp98.y += sp8C.y + sp8C.y;
                    sp98.z += sp8C.z + sp8C.z;
                    func_80939070(globalCtx, &sp98, &sp8C, &sp80, Math_Rand_ZeroFloat(2.0f) + 5.0f, 1);
                    sp8C.x = Math_Rand_CenteredFloat(3.0f);
                    sp8C.y = Math_Rand_CenteredFloat(3.0f);
                    sp8C.z = Math_Rand_CenteredFloat(3.0f);
                    sp98 = D_8094C844->actor.posRot.pos;
                    sp98.x += sp8C.x + sp8C.x;
                    sp98.y += sp8C.y + sp8C.y;
                    sp98.z += sp8C.z + sp8C.z;
                    func_80939070(globalCtx, &sp98, &sp8C, &sp80, Math_Rand_ZeroFloat(2.0f) + 5.0f, 0);
                }

                Actor_SetScale(&D_8094C848->actor, 0.0f);
                Actor_SetScale(&D_8094C844->actor, 0.0f);
                D_8094C848->unk_564 = 1;
                D_8094C844->unk_564 = 1;
                func_80078884(NA_SE_EN_TWINROBA_TRANSFORM);
                Audio_SetBGM(0x61);
                this->unk_5FA = 3;
                this->unk_152 = 0;
                this->unk_6A0 = 0.0f;
                this->actor.speedXZ = 0.0f;
                this->unk_6B0 = 0.0f;
                this->unk_6AC = 0.0f;
                break;
            }
        case 3:
            temp_s0_5 = &globalCtx->envCtx.unk_D8;
            func_8093F1C4(this, globalCtx);
            if (this->unk_152 < 0x96) {
                globalCtx->envCtx.unk_BE = 1;
                globalCtx->envCtx.unk_BD = 0;
                Math_SmoothDownscaleMaxF(&globalCtx->envCtx.unk_D8, 1.0f, 0.1f);
            } else {
                globalCtx->envCtx.unk_BE = 1;
                globalCtx->envCtx.unk_BD = 6;
                Math_SmoothScaleMaxF(&globalCtx->envCtx.unk_D8, (Math_Sins(this->unk_152 * 4096) * 0.25f) + 0.75f, 1.0f, 0.1f);
            }
            Math_SmoothScaleMaxF(&this->unk_60C.y, D_8094C848->actor.posRot.pos.y + 17.0f, 0.05f, 10.0f);
            if (this->unk_152 >= 0x32) {
                Math_SmoothScaleMaxF(&this->unk_6A4, 110.0f, 0.05f, this->unk_6A0);
                Math_SmoothScaleMaxF(&this->unk_6A0, 1.0f, 1.0f, 0.025f);
                this->unk_600.x = sinf(this->unk_6AC) * this->unk_6A4;
                this->unk_600.z = cosf(this->unk_6AC) * this->unk_6A4;
                if (this->unk_152 >= 0x97) {
                    this->unk_6AC += this->unk_6B0;
                    if (this->unk_152 >= 0x320) {
                        Math_SmoothScaleMaxF(&this->unk_6B0, 0.0f, 1.0f, 0.0001f);
                    } else {
                        Math_SmoothScaleMaxF(&this->unk_6B0, 0.015f, 1.0f, 0.0001f);
                    }
                }
            }
            Math_SmoothScaleMaxF(&D_8094C848->actor.scale.x, 0.01f, 0.1f, 0.001f);
            Actor_SetScale(&D_8094C848->actor, D_8094C848->actor.scale.x);
            Actor_SetScale(&D_8094C844->actor, D_8094C848->actor.scale.x);
            if (this->unk_152 >= 0x3FC) {
                temp_s0_6 = &globalCtx->actorCtx;
                temp_v0 = Gameplay_GetCamera(globalCtx, 0);
                temp_s1_3 = this + 0x600;
                temp_v0->eye = this->unk_600;
                temp_v0->eye = this->unk_600;
                temp_v0->at = this->unk_60C;
                func_800C08AC(globalCtx, this->unk_5FC, 0);
                this->unk_5FA = 4;
                this->unk_5FC = 0;
                func_80064534(globalCtx, &globalCtx->csCtx);
                func_8002DF54(globalCtx, &this->actor, 7);
                Audio_SetBGM(0x21);
                Actor_SpawnAttached(&globalCtx->actorCtx, &this->actor, globalCtx, ACTOR_DOOR_WARP1, 600.0f, 230.0f, 0.0f, 0, 0, 0, 0xFFFF);
                Actor_Spawn(&globalCtx->actorCtx, globalCtx, ACTOR_ITEM_B_HEART, -600.0f, 230.0f, 0.0f, 0, 0, 0, 0);
                this->actor.posRot.pos.y = -2000.0f;
                this->unk_1CC = 0.0f;
                D_8094C848->unk_564 = D_8094C844->unk_564 = 0;
                Flags_SetClear(globalCtx, globalCtx->roomCtx.curRoom.num);
                break;
            }
        case 4:
            D_8094C840 = 0;
            break;
    }

    if (this->unk_5FC != 0) {
        func_800C04D8(globalCtx, this->unk_5FC, &this->unk_60C, &this->unk_600);
    }
}
#else
#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Boss_Tw/func_8093F9E4.s")
#endif

#ifdef NON_MATCHING
void BossTw_Update(Actor *thisx, GlobalContext *globalCtx) {

    BossTw* this = THIS;
    Vec3f sp74;
    Vec3f sp68;
    Vec3f sp5C;
    s16 temp_v0_2;
    
    Player *temp_s2 = PLAYER;
    s16 phi_s0;

    this->collider.base.type = 3;
    Math_SmoothScaleMaxF(&this->fogR, globalCtx->lightCtx.fogRed, 1.0f, 10.0f);
    Math_SmoothScaleMaxF(&this->fogG, globalCtx->lightCtx.fogGreen, 1.0f, 10.0f);
    Math_SmoothScaleMaxF(&this->fogB, globalCtx->lightCtx.fogBlue, 1.0f, 10.0f);
    Math_SmoothScaleMaxF(&this->fogMin, globalCtx->lightCtx.unk_0A, 1.0f, 10.0f);
    Math_SmoothScaleMaxF(&this->fogMax, 1000.0f, 1.0f, 10.0f);
    this->unk_156++;
    this->unk_150++;
    this->unk_152++;
    if (this->unk_156 >= 0x32) {
        this->unk_156 = 0;
    }
    this->blastTailPos[this->unk_156] = this->actor.posRot.pos;
    for(phi_s0 = 0; phi_s0 < 5; phi_s0++){
        DECR(this->unk_178[phi_s0]);
    }

    DECR(this->invincibilityTimer);
    DECR(this->fogTimer);

    if (this->actionFunc == func_8093A2AC || this->actionFunc == func_8093C700 || this->actionFunc == func_80939F88) {
        temp_v0_2 = temp_s2->actor.shape.rot.y - this->actor.yawTowardsLink + 0x8000;
        if (temp_v0_2 < 0x1000 && temp_v0_2 >= -0xFFF && temp_s2->unk_A73) {
            func_8093C684(this, globalCtx);
        }
    }

    this->actionFunc(this, globalCtx);
    if (this->actionFunc != func_8093C858) {
        this->collider.dim.radius = 0x2D;
        if (this->actionFunc == func_8093C700) {
            this->collider.dim.radius *= 2;
        }
        this->collider.dim.height = 0x78;
        this->collider.dim.yShift = -0x1E;
        if (this->invincibilityTimer == 0) {
            if (this->collider.base.acFlags & 2) {
                this->collider.base.acFlags &= ~2;
            }
            Collider_CylinderUpdate(&this->actor, &this->collider);
            CollisionCheck_SetAC(globalCtx, &globalCtx->colChkCtx, &this->collider.base);
            CollisionCheck_SetAT(globalCtx, &globalCtx->colChkCtx, &this->collider.base);
        }

        if (this->actor.params == 0) {
            this->unk_188 += 1.0f;
            this->unk_198 -= 7.0f;
            this->unk_19C += 1.0f;
        } else {
            this->unk_188 = this->unk_188;
            this->unk_190 = this->unk_190;
            this->unk_198 = this->unk_198 + -15.0f;
            this->unk_1A0 = this->unk_1A0 + -10.0f;
        }

        if ((this->unk_152 & 0x1F) == 0) {
            if (Math_Rand_ZeroOne() < 0.3f) {
                this->unk_158 = 4;
            }
        }
        this->unk_4CC = D_8094A900[this->unk_158];
        if (this->unk_158 != 0) {
            this->unk_158--;
        }
        if (this->actionFunc != func_8093C7E4) {
            if (this->unk_5F8 != 0) {
                sp68 = D_8094A920;
                sp5C = D_8094A92C;

                if (0.0f < this->unk_4D0) {
                    for(phi_s0 = 0; phi_s0 <= 0; phi_s0++){
                        sp74 = this->unk_450[0];
                        sp74.x += Math_Rand_CenteredFloat(70.0f);
                        sp74.y += Math_Rand_CenteredFloat(70.0f);
                        sp74.z += Math_Rand_CenteredFloat(70.0f);
                        sp5C.y = 0.4f;
                        sp5C.x = Math_Rand_CenteredFloat(0.5f);
                        sp5C.z = Math_Rand_CenteredFloat(0.5f);
                        func_80938CD0(globalCtx, &sp74, &sp68, &sp5C, (s16)Math_Rand_ZeroFloat(2.0f) + 8, this->actor.params, 0x25);
                    }
                }

                for(phi_s0 = 0; phi_s0 <= 0; phi_s0++){
                    sp74 = this->unk_444;
                    sp74.x += Math_Rand_CenteredFloat(70.0f);
                    sp74.y += Math_Rand_CenteredFloat(70.0f);
                    sp74.z += Math_Rand_CenteredFloat(70.0f);
                    sp5C.y = 0.4f;
                    sp5C.x = Math_Rand_CenteredFloat(0.5f);
                    sp5C.z = Math_Rand_CenteredFloat(0.5f);
                    func_80938CD0(globalCtx,  &sp74, &sp68, &sp5C, (s16)Math_Rand_ZeroFloat(2.0f)  + 8, this->actor.params, 0x25);
                }
            }
        }
    }
}
#else
#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Boss_Tw/BossTw_Update.s")
#endif

//#define NON_MATCHING
#ifdef NON_MATCHING
void BossTw_TwinrovaUpdate(Actor *thisx, GlobalContext *globalCtx) {
    ColliderCylinder *sp4C;
    s32 temp_v0_2;
    BossTw* this = THIS;
    Player *sp88 = PLAYER;
    Vec3f sp7C;
    Vec3f sp70;
    Vec3f sp64;
    s16 phi_s0;
    s32 phi_s1;
    s32 phi_a2;

    this->actor.flags &= ~0x400;
    this->unk_5F8 = 0;
    this->collider.base.type = 3;
    Math_SmoothScaleMaxF(&this->fogR, globalCtx->lightCtx.fogRed, 1.0f, 10.0f);
    Math_SmoothScaleMaxF(&this->fogG, globalCtx->lightCtx.fogGreen, 1.0f, 10.0f);
    Math_SmoothScaleMaxF(&this->fogB, globalCtx->lightCtx.fogBlue, 1.0f, 10.0f);
    Math_SmoothScaleMaxF(&this->fogMin, globalCtx->lightCtx.unk_0A, 1.0f, 10.0f);
    Math_SmoothScaleMaxF(&this->fogMax, 1000.0f, 1.0f, 10.0f);
    this->unk_150++;
    this->unk_152++;
    for(phi_s0 = 0; phi_s0 < 5; phi_s0++){
        DECR(this->unk_178[phi_s0]);
    }

    DECR(this->invincibilityTimer);
    DECR(this->fogTimer);
    this->actionFunc(this, globalCtx);
    
    if (this->actionFunc != func_809499AC && this->actionFunc != func_80949734 &&
        this->unk_564 != 0 && this->unk_5F8 == 0 && 
        ((s16)(sp88->actor.shape.rot.y - this->actor.yawTowardsLink + 0x8000) < 0x1000) && 
        ((s16)(sp88->actor.shape.rot.y - this->actor.yawTowardsLink + 0x8000) >= -0xFFF) && sp88->unk_A73 != 0) {
            func_8094A608(this, globalCtx);
    }

    this->unk_4CC = D_8094A900[this->unk_158];

    DECR(this->unk_158);

    if ((this->unk_152 & 0x1F) == 0 && this->actionFunc != func_8093C910 && Math_Rand_ZeroOne() < 0.3f) {
        this->unk_158 = 4;
    }

    if (this->actionFunc == func_8093C910) {
        this->unk_4CE = D_8094A90C[this->unk_162];
        DECR(this->unk_162);
    } else {
        if (this->actionFunc == func_80949E10) {
            this->unk_4CC = 1;
        }
        if (this->actionFunc == func_8093F9E4) {
            this->unk_4CC = 2;
        }
        this->unk_4CE = this->unk_4CC;
    }

    if (this->unk_564 != 0 && this->unk_5F8 == 0) {
        sp70 = D_8094A938;
        if(this->unk_160 != 0 && ((this->unk_160 -= 0x14) < 0 )){
            this->unk_160 = 0;
        }
        Math_SmoothScaleMaxF(&this->unk_1B4, 1.0f, 1.0f, 0.05f);
        sp64.y = 0.4f;
        for(phi_s0 = 0; phi_s0 < 2; phi_s0++){
            sp7C = this->unk_498;
            sp7C.x += Math_Rand_CenteredFloat(30.0f);
            sp7C.y += Math_Rand_CenteredFloat(30.0f);
            sp7C.z += Math_Rand_CenteredFloat(30.0f);
            sp64.x = Math_Rand_CenteredFloat(0.5f);
            sp64.z = Math_Rand_CenteredFloat(0.5f);
            func_80938CD0(globalCtx, &sp7C, &sp70, &sp64, (s16)Math_Rand_ZeroFloat(2.0f) + 7, 0, 0x4B);
        }
        for(phi_s0 = 0; phi_s0 < 2; phi_s0++){
            sp7C = this->unk_4A4;
            sp7C.x += Math_Rand_CenteredFloat(30.0f);
            sp7C.y += Math_Rand_CenteredFloat(30.0f);
            sp7C.z += Math_Rand_CenteredFloat(30.0f);
            sp64.x = Math_Rand_CenteredFloat(0.5f);
            sp64.z = Math_Rand_CenteredFloat(0.5f);
            func_80938CD0(globalCtx, &sp7C, &sp70, &sp64, (s16)Math_Rand_ZeroFloat(2.0f) + 7, 1, 0x4B);
        }
    }
    this->collider.dim.radius = 35;
    if (this->actionFunc == func_8094A660) {
        this->collider.dim.radius *= 2;
    }
    this->collider.dim.height = 150;
    this->collider.dim.yShift = -60;
    sp4C = &this->collider;
    Collider_CylinderUpdate(&this->actor, sp4C);
    if (this->invincibilityTimer == 0) {
        if (this->actionFunc != func_80949E10) {
            if (this->twinrovaStun) {
                this->twinrovaStun = false;
                this->fogTimer = 10;
                func_80949CE4(this, globalCtx, 0);
                Audio_PlayActorSound2(&this->actor, NA_SE_EN_TWINROBA_YOUNG_DAMAGE);
            } else if (this->collider.base.acFlags & 2) {
                this->collider.base.acFlags &= ~2;
                if ((this->collider.body.acHitItem->toucher.flags & 0x1F824)) {
                    // not sure what this is here for?
                }
            }
        } else if (this->collider.base.acFlags & 2) {
            ColliderBody* acHitItem = this->collider.body.acHitItem;
            this->collider.base.acFlags &= ~2;
            phi_s1 = 0;
            if (temp_v0_2 = func_800635D0(acHitItem->toucher.flags), temp_v0_2 == 0) {
                phi_a2 = 2;
            } else {
                phi_s1 = 1;
                phi_a2 = temp_v0_2 & 0xFF;
            }

            if (!(acHitItem->toucher.flags & 0x80)) {
                if ((s8)this->actor.colChkInfo.health < 3) {
                    if (phi_s1 == 0) {
                        phi_a2 = 0;
                    }
                }
                func_80949CE4(this, globalCtx, phi_a2);
            }
        }
    }

    CollisionCheck_SetAC(globalCtx, &globalCtx->colChkCtx, &sp4C->base);
    osSyncPrintf("OooooooooooooooooooooooooooooooooCC\n");
    CollisionCheck_SetOC(globalCtx, &globalCtx->colChkCtx, &sp4C->base);
    globalCtx->envCtx.unk_DC = 2;
    switch(D_8094C840 + 1){
        case 0:
            Math_SmoothDownscaleMaxF(&globalCtx->envCtx.unk_D8, 1.0f, 0.02f);
            break;
        case 1:
            globalCtx->envCtx.unk_BD = 3;
            Math_SmoothScaleMaxF(&globalCtx->envCtx.unk_D8, 0.5f, 1.0f, 0.05f);
            break;
        case 2:
            globalCtx->envCtx.unk_BD = 2;
            Math_SmoothScaleMaxF(&globalCtx->envCtx.unk_D8, (Math_Sins(this->unk_150 * 0x3000) * 0.03f) + 0.5f, 1.0f, 0.05f);
            break;
        case 3:
            globalCtx->envCtx.unk_BD = 3;
            Math_SmoothScaleMaxF(&globalCtx->envCtx.unk_D8, 1.0f, 1.0f, 0.1f);
            break;
        case 4:
            globalCtx->envCtx.unk_BD = 2;
            Math_SmoothScaleMaxF(&globalCtx->envCtx.unk_D8, (Math_Sins(this->unk_150 * 0x3E00) * 0.05f) + 0.95f, 1.0f, 0.1f);
            break;
        case 5:
            globalCtx->envCtx.unk_BD = 0;
            Math_SmoothScaleMaxF(&globalCtx->envCtx.unk_D8, 1.0f, 1.0f, 0.05f);
            break;
        case 6:
            break;
    }

    func_809477E0(globalCtx);
    if (D_8094C85F == 1) {
        D_8094C85F = 2;
        func_80938FC4(globalCtx, 0);
        func_80078914(&sp88->actor.projectedPos, NA_SE_VO_LI_FREEZE);
        func_80078914(&sp88->actor.projectedPos, NA_SE_PL_FREEZE);
        if (D_8094C850 != 0) {
            D_8094C850 = 4;
        }
    }

    if (sp88->unk_A60 && D_8094C851 != 0) {
        D_8094C851 = 4;
    }
}
#else
#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Boss_Tw/BossTw_TwinrovaUpdate.s")
#endif
#undef NON_MATCHING

extern Gfx D_06012CE0[];
extern Gfx D_060134B8[];
extern Gfx D_06012B38[];
extern Gfx D_06013310[];
s32 func_809416D0(GlobalContext *globalCtx, s32 limbIndex, Gfx **dList, Vec3f *pos, Vec3s *rot, Actor *thisx) {
    BossTw* this = THIS;
    if (limbIndex == 0x15) {
        if (this->unk_5F8 == 0) {
            if (this->actor.params == 0) {
                *dList = D_06012CE0;
            } else {
                *dList = D_060134B8;
            }
        }
    }
    if (limbIndex == 0xE) {
        if (this->actionFunc == func_8093D444) {
            *dList = NULL;
        } else if (this->unk_4D0 == 0.0f) {
            if (this->actor.params == 0) {
                *dList = D_06012B38;
            } else {
                *dList = D_06013310;
            }
        }
    }
    return 0;
}

extern Gfx D_06013E98[];
extern Gfx D_06013F98[];
extern Gfx D_06014070[];
extern Gfx D_06014158[];
extern Gfx D_06013AE8[];
extern Gfx D_06013D68[];

#ifdef NON_MATCHING
void func_80941788(GlobalContext *globalCtx, s32 limbIndex, Gfx **dList, Vec3s *rot, Actor *thisx) {
    GraphicsContext *gfxCtx = globalCtx->state.gfxCtx;
    BossTw* this = THIS;
    Gfx *dispRefs[4];
    
    Graph_OpenDisps(dispRefs, globalCtx->state.gfxCtx, "../z_boss_tw.c", 6168);
    switch(limbIndex){
        case 0x15:
            Matrix_MultVec3f(&D_8094A944, &this->actor.posRot2.pos);
            Matrix_MultVec3f(&D_8094A950, &this->unk_444);
            if (this->unk_5F8 != 0) {
                gSPMatrix(gfxCtx->polyXlu.p++, Matrix_NewMtx(globalCtx->state.gfxCtx, "../z_boss_tw.c", 6190), G_MTX_LOAD | G_MTX_MODELVIEW | G_MTX_NOPUSH);
                if (this->actor.params == 0) {
                    gSPDisplayList(gfxCtx->polyXlu.p++, SEGMENTED_TO_VIRTUAL(D_06013AE8));
                } else {
                    gSPDisplayList(gfxCtx->polyXlu.p++, SEGMENTED_TO_VIRTUAL(D_06013D68));
                }
            }
            break;
        case 0xE:
            Matrix_MultVec3f(&D_8094A95C[0], &this->unk_450[0]);
            Matrix_MultVec3f(&D_8094A95C[1], &this->unk_450[1]);
            Matrix_MultVec3f(&D_8094A95C[2], &this->unk_450[2]);
            Matrix_MultVec3f(&D_8094A95C[3], &this->unk_450[3]);
            Matrix_MultVec3f(&D_8094A95C[4], &this->unk_450[4]);
            if (this->unk_4D0 > 0.0f) {
                gSPMatrix(gfxCtx->polyXlu.p++, Matrix_NewMtx(globalCtx->state.gfxCtx, "../z_boss_tw.c", 6221), G_MTX_LOAD | G_MTX_MODELVIEW | G_MTX_NOPUSH);
                if (this->actor.params == 0) {
                    gDPSetPrimColor(gfxCtx->polyXlu.p++, 0, 0, 255, 225, 255, (s32)this->unk_4D0);
                    gSPDisplayList(gfxCtx->polyXlu.p++, SEGMENTED_TO_VIRTUAL(D_06013E98));
                    gDPSetPrimColor(gfxCtx->polyXlu.p++, 0, 0, 195, 225, 235, (s32)this->unk_4D0);
                    gSPDisplayList(gfxCtx->polyXlu.p++, SEGMENTED_TO_VIRTUAL(D_06013F98));
                } else {
                    gDPSetPrimColor(gfxCtx->polyXlu.p++, 0, 0, 100, 20, 0, (s32)this->unk_4D0);
                    gSPDisplayList(gfxCtx->polyXlu.p++, SEGMENTED_TO_VIRTUAL(D_06014070));
                    gDPSetPrimColor(gfxCtx->polyXlu.p++, 0, 0, 255, 70, 0, (s32)this->unk_4D0);
                    gSPDisplayList(gfxCtx->polyXlu.p++, SEGMENTED_TO_VIRTUAL(D_06014158));
                }
            }
            break;
    }
    Graph_CloseDisps(dispRefs, globalCtx->state.gfxCtx, "../z_boss_tw.c", 6236);
}
#else
#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Boss_Tw/func_80941788.s")
#endif

extern Gfx D_0601BC00[];
extern Gfx D_0601C1C0[];
extern Gfx D_0601A790[];

#ifdef NON_MATCHING
void func_80941BC0(BossTw *this, GlobalContext *globalCtx) {
    Gfx* sp88[4];
    GraphicsContext *temp_s0;

    temp_s0 = globalCtx->state.gfxCtx;
    Graph_OpenDisps(sp88, globalCtx->state.gfxCtx, "../z_boss_tw.c", 6341);
    Matrix_Push();
    func_80093D84(globalCtx->state.gfxCtx);
    Matrix_Translate(this->unk_4BC.x, this->unk_4BC.y, this->unk_4BC.z, MTXMODE_NEW);
    Matrix_Scale(this->unk_1B4, this->unk_1B4, this->unk_1B4, MTXMODE_APPLY);
    gSPMatrix(temp_s0->polyXlu.p++, Matrix_NewMtx(globalCtx->state.gfxCtx, "../z_boss_tw.c", 6358), G_MTX_LOAD | G_MTX_MODELVIEW | G_MTX_NOPUSH);
    gDPSetPrimColor(temp_s0->polyXlu.p++, 0, 0, 255, 255, 255, (s32)this->unk_1B0);
    gDPSetEnvColor(temp_s0->polyXlu.p++, 0, 40, 30, 80);
    gSPDisplayList(temp_s0->polyXlu.p++, SEGMENTED_TO_VIRTUAL(D_0601BC00));
    gDPSetPrimColor(temp_s0->polyXlu.p++, 0, 0, 215, 215, 215, (u32)(this->unk_1BC * (s16)this->unk_1B0));
    gDPSetEnvColor(temp_s0->polyXlu.p++, 255, 255, 255, 128);
    gSPSegment(temp_s0->polyXlu.p++, 8, Gfx_TwoTexScroll(globalCtx->state.gfxCtx, 0, 0U, 0U, 0x20, 0x40, 1, (u32) this->unk_1C4 & 0x3F, (this->unk_152 * 4) & 0x3F, 0x10, 0x10));
    Matrix_Push();
    Matrix_RotateY(this->unk_1C0, MTXMODE_APPLY);
    gSPMatrix(temp_s0->polyXlu.p++, Matrix_NewMtx(globalCtx->state.gfxCtx, "../z_boss_tw.c", 6423), G_MTX_LOAD | G_MTX_MODELVIEW | G_MTX_NOPUSH);
    gSPDisplayList(temp_s0->polyXlu.p++, SEGMENTED_TO_VIRTUAL(D_0601C1C0));
    Matrix_Pull();
    gSPMatrix(temp_s0->polyXlu.p++, Matrix_NewMtx(globalCtx->state.gfxCtx, "../z_boss_tw.c", 6427), G_MTX_LOAD | G_MTX_MODELVIEW | G_MTX_NOPUSH);
    gSPSegment(temp_s0->polyXlu.p++, 0xD, Gfx_TwoTexScroll(globalCtx->state.gfxCtx, 0, this->unk_152 & 0x7F, (this->unk_152 * 8) & 0xFF, 0x20, 0x40, 1, (-this->unk_152 * 2) & 0x3F, 0, 0x10, 0x10));
    gDPSetPrimColor(temp_s0->polyXlu.p++, 0, 0, 195, 225, 235, (s32)this->unk_1A8);
    gDPSetEnvColor(temp_s0->polyXlu.p++, 255, 255, 255, 128);
    gSPSetGeometryMode(temp_s0->polyXlu.p++, G_CULL_BACK | G_FOG);
    gSPDisplayList(temp_s0->polyXlu.p++, SEGMENTED_TO_VIRTUAL(D_0601A790));
    Matrix_Pull();
    Graph_CloseDisps(sp88, globalCtx->state.gfxCtx, "../z_boss_tw.c", 6461);
}
#else
#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Boss_Tw/func_80941BC0.s")
#endif

extern Gfx D_06019D40[];
extern Gfx D_06018FC0[];
extern Gfx D_06019938[];

#ifdef NON_MATCHING
void func_80942180(BossTw *this, GlobalContext *globalCtx) {
    Gfx *sp90[4];
    GraphicsContext *temp_s0;

    temp_s0 = globalCtx->state.gfxCtx;
    Graph_OpenDisps(sp90, globalCtx->state.gfxCtx, "../z_boss_tw.c", 6468);
    Matrix_Push();
    func_80093D84(globalCtx->state.gfxCtx);
    Matrix_Translate(this->unk_4BC.x, this->unk_4BC.y, this->unk_4BC.z, MTXMODE_NEW);
    Matrix_Scale(this->unk_1B8, this->unk_1B8, this->unk_1B8, MTXMODE_APPLY);
    gSPSegment(temp_s0->polyXlu.p++, 8, Gfx_TwoTexScroll(globalCtx->state.gfxCtx, 0, 
        (-this->unk_150) & 0x7F, 0, 
        0x20, 0x20, 
        1, 
        (this->unk_150 * 2) & 0x7F, 0, 
        0x20, 0x20));
    gSPMatrix(temp_s0->polyXlu.p++, Matrix_NewMtx(globalCtx->state.gfxCtx, "../z_boss_tw.c", 6497), G_MTX_LOAD | G_MTX_MODELVIEW | G_MTX_NOPUSH);
    gDPSetPrimColor(temp_s0->polyXlu.p++, 0, 0, 100, 40, 128, (s32)this->unk_1B0);
    gDPPipeSync(temp_s0->polyXlu.p++);
    gDPSetEnvColor(temp_s0->polyXlu.p++, 255,245, 255, 128);
    gSPDisplayList(temp_s0->polyXlu.p++, SEGMENTED_TO_VIRTUAL(D_06019D40));
    func_800D1FD4(&globalCtx->mf_11DA0);
    gSPMatrix(temp_s0->polyXlu.p++, Matrix_NewMtx(globalCtx->state.gfxCtx, "../z_boss_tw.c", 6514), G_MTX_LOAD | G_MTX_MODELVIEW | G_MTX_NOPUSH);
    gSPSegment(temp_s0->polyXlu.p++, 8, Gfx_TwoTexScroll(globalCtx->state.gfxCtx, 0, this->unk_150 & 0x7F, (-this->unk_150 * 6) & 0xFF, 0x20, 0x40, 1, (this->unk_150 * 2) & 0x7F, (-this->unk_150 * 6) & 0xFF, 0x20, 0x40));
    gDPSetPrimColor(temp_s0->polyXlu.p++, 0, 0, 80, 0, 0, (s32)this->unk_1AC);
    gDPPipeSync(temp_s0->polyXlu.p++);
    gDPSetEnvColor(temp_s0->polyXlu.p++, 0, 0, 0, 100);
    gSPDisplayList(temp_s0->polyXlu.p++, SEGMENTED_TO_VIRTUAL(D_06018FC0));
    gSPSegment(temp_s0->polyXlu.p++, 8, Gfx_TwoTexScroll(globalCtx->state.gfxCtx, 0, (-this->unk_150 * 3) & 0x7F, 0, 0x20, 0x20, 1, 0, (-this->unk_150 * 0xA) & 0xFF, 0x20, 0x40));
    gDPSetPrimColor(temp_s0->polyXlu.p++, 0, 0, 100, 50, 0, (s32)this->unk_1A8);
    gDPPipeSync(temp_s0->polyXlu.p++);
    gDPSetEnvColor(temp_s0->polyXlu.p++, 200, 235, 240, 128);
    Matrix_Scale(this->unk_1B4, this->unk_1B4, this->unk_1B4, MTXMODE_APPLY);
    gSPMatrix(temp_s0->polyXlu.p++, Matrix_NewMtx(globalCtx->state.gfxCtx, "../z_boss_tw.c", 6575), G_MTX_LOAD | G_MTX_MODELVIEW | G_MTX_NOPUSH);
    gSPDisplayList(temp_s0->polyXlu.p++, SEGMENTED_TO_VIRTUAL(D_06019938));
    Matrix_Pull();
    Graph_CloseDisps(sp90, globalCtx->state.gfxCtx, "../z_boss_tw.c", 6579);
}
#else
#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Boss_Tw/func_80942180.s")
#endif

extern Gfx D_0601CEE0[];
extern Gfx D_0601DBE8[];
extern Gfx D_0601A998[];
extern Gfx D_0601A430[];

#ifdef NON_MATCHING
void func_809426F0(BossTw *this, GlobalContext *globalCtx) {
    Gfx *spA4[4];
    GraphicsContext *temp_s2;
    f32 temp_f0;
    s16 phi_s1;

    temp_s2 = globalCtx->state.gfxCtx;
    Graph_OpenDisps(spA4, globalCtx->state.gfxCtx, (const char *) "../z_boss_tw.c", 0x19BB);
    gSPSegment(temp_s2->polyXlu.p++, 8, Gfx_TwoTexScroll(globalCtx->state.gfxCtx, 0,  // tile 1
        0, ((0 - this->unk_152) * 0xF) & 0xFF, // x1,y1
        0x20, 0x40, // width1, height1
        1, // tile2
        0, 0, // x2,y2
        0x40, 0x40)); // width2, height2
    Matrix_Push();
    Matrix_Translate(0.0f, 0.0f, 5000.0f, MTXMODE_APPLY);
    Matrix_Scale(this->spawnPortalScale / 2000.0f, this->spawnPortalScale / 2000.0f, this->spawnPortalScale / 2000.0f, MTXMODE_APPLY);
    Matrix_RotateZ(this->unk_4EC, MTXMODE_APPLY);
    gSPMatrix(temp_s2->polyXlu.p++, Matrix_NewMtx(globalCtx->state.gfxCtx, (char *) "../z_boss_tw.c", 0x19D6), G_MTX_LOAD | G_MTX_MODELVIEW | G_MTX_NOPUSH);
    if (this->actor.params == 0) {
        gDPSetPrimColor(temp_s2->polyXlu.p++, 0, 0, 135, 175, 165, (s32)this->spawnPortalAlpha);
        gSPDisplayList(temp_s2->polyXlu.p++, SEGMENTED_TO_VIRTUAL(D_0601CEE0));
    } else {
        gDPSetPrimColor(temp_s2->polyXlu.p++, 0, 0, 255, 255, 0, (s32)this->spawnPortalAlpha);
        gSPDisplayList(temp_s2->polyXlu.p++, SEGMENTED_TO_VIRTUAL(D_0601DBE8));
    }
    Matrix_Pull();
    if (this->actor.params == 0) {
        gDPSetPrimColor(temp_s2->polyXlu.p++, 0, 0, 195, 225, 235, (s32)this->unk_4D4);
        gSPDisplayList(temp_s2->polyXlu.p++, SEGMENTED_TO_VIRTUAL(D_0601A998));
    } else {
        gDPSetPrimColor(temp_s2->polyXlu.p++, 0, 0, 200, 20, 0, (s32)this->unk_4D4);
        gDPSetEnvColor(temp_s2->polyXlu.p++, 255, 215, 255, 128);
    }
    for(phi_s1 = 0; phi_s1 < 8; phi_s1++){
        Matrix_Push();
        Matrix_Translate(0.0f, 0.0f, 5000.0f, MTXMODE_APPLY);
        temp_f0 = phi_s1 * M_PI;
        Matrix_RotateZ(((temp_f0 + temp_f0) * 0.125f) + this->unk_4E8, MTXMODE_APPLY);
        Matrix_Translate(0.0f, this->spawnPortalScale * 1.5f, 0.0f, MTXMODE_APPLY);
        gSPSegment(temp_s2->polyXlu.p++, 8, Gfx_TwoTexScroll(globalCtx->state.gfxCtx, 0, 
            ((this->unk_152 * 3) + (phi_s1 * 10)) & 0x7F, ((-this->unk_152 * 0xF) + (phi_s1 * 50)) & 0xFF, 
            0x20, 0x40, 
            1, 0, 0, 
            0x20, 0x20));
        Matrix_Scale(0.4f, 0.4f, 0.4f, MTXMODE_APPLY);
        func_800D1FD4(&globalCtx->mf_11DA0);
        gSPMatrix(temp_s2->polyXlu.p++, Matrix_NewMtx(globalCtx->state.gfxCtx, (char *) "../z_boss_tw.c", 0x1A5F), G_MTX_LOAD | G_MTX_MODELVIEW | G_MTX_NOPUSH);
        gSPDisplayList(temp_s2->polyXlu.p++, SEGMENTED_TO_VIRTUAL(D_0601A430));
        Matrix_Pull();
    }
    Graph_CloseDisps(spA4, globalCtx->state.gfxCtx, (const char *) "../z_boss_tw.c", 0x1A64);
}
#else
#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Boss_Tw/func_809426F0.s")
#endif

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Boss_Tw/func_80942C70.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Boss_Tw/func_80943028.s")

s32 func_809416D0(GlobalContext* globalCtx, s32 limbIndex, Gfx** dList, Vec3f* pos, Vec3s* rot, Actor* thisx);
void func_80941788(GlobalContext* globalCtx, s32 limbIndex, Gfx** dList, Vec3s* rot, Actor* thisx);

#ifdef NON_MATCHING
void BossTw_Draw(Actor *thisx, GlobalContext *globalCtx) {
    BossTw* this = THIS;
    Player *sp84;
    Gfx *sp70[5];
    Gfx *sp64;
    Gfx *sp60;
    Gfx *sp5C;
    Gfx *temp_v0;
    Gfx *temp_v0_2;
    Gfx *temp_v0_3;
    Gfx *temp_v0_4;
    Gfx *temp_v1;
    GraphicsContext *temp_s1;
    Vec3f diff;
    void *temp_t3;
    void *temp_t8;
    Gfx *phi_v0;
    Gfx *phi_v1;
    Gfx *phi_v0_2;
    s32 t;

    sp84 = PLAYER;
    temp_s1 = globalCtx->state.gfxCtx;
    Graph_OpenDisps(sp70, globalCtx->state.gfxCtx, "../z_boss_tw.c", 6947);
    if (this->unk_564 != 0) {
        gSPSegment(temp_s1->polyOpa.p++, 0xA, 
            SEGMENTED_TO_VIRTUAL(D_8094A998[this->unk_4CC]));

        gSPSegment(temp_s1->polyXlu.p++, 0xA, 
            SEGMENTED_TO_VIRTUAL(D_8094A998[this->unk_4CC]));

        gSPSegment(temp_s1->polyXlu.p++, 0x8, 
            Gfx_TwoTexScroll(globalCtx->state.gfxCtx, 0, (s16)this->unk_184 & 0x7F, (s16)this->unk_194 & 0x7F, 0x20, 0x20, 1, (s32)this->unk_188 & 0x7F, (s32)this->unk_198 & 0xFF, 0x20, 0x40));
        
        if (this->actor.params == 0) {
            gSPSegment(temp_s1->polyXlu.p++, 9, 
                Gfx_TexScroll(globalCtx->state.gfxCtx, (s16)this->unk_18C & 0x7F, (s16)this->unk_19C & 0xFF, 0x20, 0x40));
        } else {
            gSPSegment(temp_s1->polyXlu.p++, 9, 
                Gfx_TwoTexScroll(globalCtx->state.gfxCtx, 0, (s16)this->unk_18C & 0x7F, (s16)this->unk_19C & 0x7F, 0x20, 0x20, 1, (s32)this->unk_190 & 0x7F, (s32)this->unk_1A0 & 0xFF, 0x20, 0x40));
        }

        func_80093D18(globalCtx->state.gfxCtx);
        func_80093D84(globalCtx->state.gfxCtx);

        temp_s1->polyOpa.p = this->fogTimer & 2 ? 
            Gfx_SetFog(temp_s1->polyOpa.p, 0xFF, 0x32, 0, 0, 0x384, 0x44B) :
            Gfx_SetFog(temp_s1->polyOpa.p, (u32)this->fogR, (u32)this->fogG, (u32)this->fogB, 0, this->fogMin, this->fogMax);

        Matrix_Push();
        SkelAnime_DrawSV(globalCtx, this->skelAnime.skeleton, this->skelAnime.limbDrawTbl, this->skelAnime.dListCount, func_809416D0, func_80941788, &this->actor);
        Matrix_Pull();
        temp_s1->polyOpa.p = func_800BC8A0(globalCtx, temp_s1->polyOpa.p);
    }
    if (this->actor.params == 0) {
        if (this->unk_1A8 > 0.0f) {
            if (this->unk_1B0 > 0.0f) {
                diff.x = this->unk_4BC.x - sp84->actor.posRot.pos.x;
                diff.y = this->unk_4BC.y - sp84->actor.posRot.pos.y;
                diff.z = this->unk_4BC.z - sp84->actor.posRot.pos.z;
                if (fabsf(diff.y) < 10.0f) {
                    if (sp84->actor.bgCheckFlags & 1) {
                        if (sqrtf(SQ(diff.x) + SQ(diff.z)) < (this->unk_1B4 * 4600.0f)) {
                            if (D_8094C85F == 0) {
                                if (this->unk_1B0 > 200.0f) {
                                    D_8094C85F = 1;
                                    D_8094C84C->unk_178[1] = 0x64;
                                }
                            }
                        }
                    }
                }
            }
            func_80941BC0(this, globalCtx);
        }
    } else {
        func_80942180(this, globalCtx);
    }
    if (this->unk_564 != 0) {
        if (this->actionFunc == func_8093D444) {
            func_80943028(this, globalCtx);
        } else {
            func_809426F0(this, globalCtx);
            Matrix_MultVec3f(&D_8094A9A4, &this->unk_48C);
            func_80942C70(this, globalCtx);
        }
    }
    Graph_CloseDisps(sp70, globalCtx->state.gfxCtx, "../z_boss_tw.c", 7123);
}
#else
#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Boss_Tw/BossTw_Draw.s")
#endif
#undef NON_MATCHING

extern Gfx D_0602D940[];
extern Gfx D_0602D890[];

#ifdef NON_MATCHING
// BossTw_TwinRovaOverrideLimbDraw
s32 func_80943950(GlobalContext *globalCtx, s32 limbIndex, Gfx **dList, Vec3f *pos, Vec3s *rot, Actor *thisx) {
    BossTw* this = THIS;
    GraphicsContext *gfxCtx = globalCtx->state.gfxCtx;
    Gfx *dispRefs[4];

    Graph_OpenDisps(dispRefs, globalCtx->state.gfxCtx, "../z_boss_tw.c", 7139);
    switch(limbIndex){
        case 15:
            gSPSegment(gfxCtx->polyOpa.p++, 0xC, Gfx_TexScroll(globalCtx->state.gfxCtx, 0U, (s16)(f32)this->unk_150, 8, 8));
            gSPSegment(gfxCtx->polyOpa.p++, 8, SEGMENTED_TO_VIRTUAL(D_8094A9B0[this->unk_4CC]));
            gSPSegment(gfxCtx->polyOpa.p++, 9, SEGMENTED_TO_VIRTUAL(D_8094A9B0[this->unk_4CE]));
            gDPSetEnvColor(gfxCtx->polyOpa.p++, 255, 255, 255, (s32)this->unk_160);
            break;
        case 17:
        case 41:
            *dList = NULL;
            gSPSegment(gfxCtx->polyXlu.p++, 0xA, Gfx_TwoTexScroll(globalCtx->state.gfxCtx, 0, 0U, 0U, 0x20, 0x20, 1, 0, -this->unk_150 * 0xF, 0x20, 0x40));
            break;
        case 18:
        case 42:
            *dList = NULL;
            gSPSegment(gfxCtx->polyXlu.p++, 0xB, Gfx_TwoTexScroll(globalCtx->state.gfxCtx, 0, 0U, 0U, 0x20, 0x20, 1, 0, -this->unk_150 * 0xA, 0x20, 0x40));
            break;
        case 16:
        case 32:
            *dList = NULL;
            gSPSegment(gfxCtx->polyXlu.p++, 8, Gfx_TwoTexScroll(globalCtx->state.gfxCtx, 0, 0U, 0U, 0x20, 0x20, 1, this->unk_150, -this->unk_150 * 7, 0x20, 0x40));
            break;
        case 30:
        case 31:
            *dList = NULL;
            gSPSegment(gfxCtx->polyXlu.p++, 9, Gfx_TexScroll(globalCtx->state.gfxCtx, 0U, this->unk_150, 0x20, 0x40));
            break;
        case 19:
            if (this->unk_5F8 != 0) {
                *dList = D_0602D940;
                break;
            }

        case 20:
            if (this->unk_5F8 != 0) {
                *dList = D_0602D890;
            }
            break;
    }
    if (this->unk_5F8 != 0) {
        if ((limbIndex == 0x22) || (limbIndex == 0x28)) {
            *dList = NULL;
        }
    }
    Graph_CloseDisps(dispRefs, globalCtx->state.gfxCtx, "../z_boss_tw.c", 7251);
    return 0;
}
#else
s32 func_80943950(GlobalContext *globalCtx, s32 limbIndex, Gfx **dList, Vec3f *pos, Vec3s *rot, Actor *thisx);
#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Boss_Tw/func_80943950.s")
#endif

// BossTw_TwinrovaPostLimbDraw
void func_80943D90(GlobalContext *globalCtx, s32 limbIndex, Gfx **dList, Vec3s *rot, Actor *thisx) {
    BossTw* this = THIS;
    GraphicsContext *gfxCtx = globalCtx->state.gfxCtx;
    Gfx *dispRefs[4];

    Graph_OpenDisps(dispRefs, globalCtx->state.gfxCtx, "../z_boss_tw.c", 7262);
    switch(limbIndex){
        case 34:
            Matrix_MultVec3f(&D_8094A9D4, &this->unk_498);
            break;
        case 40:
            Matrix_MultVec3f(&D_8094A9E0, &this->unk_4A4);
            break;
        case 21:
            Matrix_MultVec3f(&D_8094A9BC, &this->actor.posRot2.pos);
            Matrix_MultVec3f(&D_8094A9C8, &this->unk_444);
            break;
        case 15:
        case 16:
        case 17:
        case 18:
        case 31:
        case 32:
        case 41:
        case 42:
            Matrix_Push();
            Matrix_Scale(this->unk_1B4, this->unk_1B4, this->unk_1B4, MTXMODE_APPLY);
            gSPMatrix(gfxCtx->polyXlu.p++, Matrix_NewMtx(globalCtx->state.gfxCtx, "../z_boss_tw.c", 7295), G_MTX_LOAD | G_MTX_MODELVIEW | G_MTX_NOPUSH);
            Matrix_Pull();
            gSPDisplayList(gfxCtx->polyXlu.p++, *dList);
            break;
    }

    Graph_CloseDisps(dispRefs, globalCtx->state.gfxCtx, "../z_boss_tw.c", 7301);
}

extern Gfx D_0601E0E0[];
extern Gfx D_0601E020[];
extern Gfx D_0601E3A0[];
extern Gfx D_0601E2C0[];
extern Gfx D_0601E9F0[];

#ifdef NON_MATCHING
void func_80943F08(BossTw *this, GlobalContext *globalCtx) {
    f32 t;
    Player *spB0 = PLAYER;
    s16 temp_t0;
    s16 temp_a0;
    Gfx *sp98[5];
    f32 sp60;
    GraphicsContext *temp_s0 = globalCtx->state.gfxCtx;

    Graph_OpenDisps(sp98, globalCtx->state.gfxCtx, (const char *) "../z_boss_tw.c", 0x1C8F);
    Matrix_Push();

    temp_t0 = D_8094C850 | D_8094C851;
    if (temp_t0 == 1) {
        func_80078884(NA_SE_IT_SHIELD_CHARGE_LV1 & ~SFX_FLAG);
    } else if (temp_t0 == 2) {
        func_80078884(NA_SE_IT_SHIELD_CHARGE_LV2 & ~SFX_FLAG);
    } else if (temp_t0 == 3) {
        func_80078884(NA_SE_IT_SHIELD_CHARGE_LV3 & ~SFX_FLAG);
    }

    if ((temp_t0 != 0) && (temp_t0 < 4)) {
        Math_SmoothScaleMaxF(&D_8094C854, 255.0f, 1.0f, 20.0f);
        if (temp_t0 == 3) {
            temp_t0 *= 3;
        }
    } else if (temp_t0 == 0) {
        D_8094C854 = 0.0f;
    } else {
        Math_SmoothScaleMaxF(&D_8094C854, 0.0f, 1.0f, 10.0f);
        if (D_8094C854 == 0.0f) {
            D_8094C851 = 0;
            D_8094C850 = 0;
        }
        temp_t0 = 1;
    }

    if (func_8008F098(globalCtx)) {
        if (temp_t0 != 0) {
            Matrix_Mult(&spB0->mf_A20, MTXMODE_NEW);
            Matrix_RotateX(1.5707964f, MTXMODE_APPLY);
            gSPMatrix(temp_s0->polyXlu.p++, Matrix_NewMtx(globalCtx->state.gfxCtx, "../z_boss_tw.c", 7362), G_MTX_LOAD | G_MTX_MODELVIEW | G_MTX_NOPUSH);
            temp_a0 = (Math_Sins(this->unk_150 * 0xAAA * temp_t0) * D_8094C854 * 0.5f) + (D_8094C854 * 0.5f);
            if (D_8094C850 != 0) {
                gDPSetEnvColor(temp_s0->polyXlu.p++, 255, 245, 255, temp_a0);
                gSPDisplayList(temp_s0->polyXlu.p++, SEGMENTED_TO_VIRTUAL(D_0601E0E0));
                gSPSegment(temp_s0->polyXlu.p++, 8, Gfx_TwoTexScroll(globalCtx->state.gfxCtx, 0, (this->unk_150 * 2) * temp_t0, 0U, 0x20, 0x20, 1, (-this->unk_150 * 2) * temp_t0, 0, 0x20, 0x20));
                gDPSetPrimColor(temp_s0->polyXlu.p++, 0, 0, 100, 20, 0, (s32)D_8094C854);
                gSPDisplayList(temp_s0->polyXlu.p++, SEGMENTED_TO_VIRTUAL(D_0601E020));
            } else {
                gDPSetEnvColor(temp_s0->polyXlu.p++, 225, 255, 255, temp_a0);
                gSPDisplayList(temp_s0->polyXlu.p++, SEGMENTED_TO_VIRTUAL(D_0601E3A0));
                gSPSegment(temp_s0->polyXlu.p++, 8, Gfx_TwoTexScroll(globalCtx->state.gfxCtx, 0, 0U, (-this->unk_150 * 5) * temp_t0, 0x20, 0x40, 1, (this->unk_150 * 4) * temp_t0, 0, 0x20, 0x20));
                gDPSetPrimColor(temp_s0->polyXlu.p++, 0, 0, 175, 205, 195, (s32)D_8094C854);
                gSPDisplayList(temp_s0->polyXlu.p++, SEGMENTED_TO_VIRTUAL(D_0601E2C0));
            }
        }
    }

    if (D_8094C86F != 0) {
        t = D_8094C872 > 0 ? 100.0f : 60.0f;
        D_8094C86F--;
        Math_SmoothScaleMaxF(&D_8094C858, 255.0f, 1.0f, t);
    } else {
        t = D_8094C872 > 0 ? 40.0f : 20.0f;
        Math_SmoothScaleMaxF(&D_8094C858, 0.0f, 1.0f, t);
    }

    if (func_8008F098(globalCtx) && D_8094C858 > 0.0f) {
        sp60 = D_8094C872 > 0 ? 1.3f : 1.0f;
        Matrix_Mult(&spB0->mf_A20, MTXMODE_NEW);
        Matrix_RotateX(1.5707964f, MTXMODE_APPLY);
        Matrix_Scale(sp60, sp60, sp60, MTXMODE_APPLY);
        gSPMatrix(temp_s0->polyXlu.p++, Matrix_NewMtx(globalCtx->state.gfxCtx, "../z_boss_tw.c", 7486), G_MTX_LOAD | G_MTX_MODELVIEW | G_MTX_NOPUSH);
        if (D_8094C850 != 0) {
            gDPSetPrimColor(temp_s0->polyXlu.p++, 0, 0, 255, 220, 20, (s32)D_8094C858);
            gDPSetEnvColor(temp_s0->polyXlu.p++, 255, 0, 20, 110);
        } else {
            gDPSetPrimColor(temp_s0->polyXlu.p++, 0, 0, 255, 255, 255, (s32)D_8094C858);
            gDPSetEnvColor(temp_s0->polyXlu.p++, 185, 225, 205, 150);
        }
        gSPSegment(temp_s0->polyXlu.p++, 8, Gfx_TwoTexScroll(globalCtx->state.gfxCtx, 0, 0U, this->unk_150 * D_8094C872, 0x20, 0x40, 1, 0, this->unk_150 * D_8094C872, 0x20, 0x20));
        gSPDisplayList(temp_s0->polyXlu.p++, SEGMENTED_TO_VIRTUAL(D_0601E9F0));
    }

    Matrix_Pull();
    Graph_CloseDisps(sp98, globalCtx->state.gfxCtx, "../z_boss_tw.c", 7531);
}
#else
#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Boss_Tw/func_80943F08.s")
#endif

extern Gfx D_0601EC68[];

#ifdef NON_MATCHING
void BossTw_SpawnPortalsDraw(BossTw *this, GlobalContext *globalCtx) {
    GraphicsContext *temp_s0;
    Gfx *sp80[5];

    temp_s0 = globalCtx->state.gfxCtx;
    Graph_OpenDisps(sp80, globalCtx->state.gfxCtx, "../z_boss_tw.c", 7546);
    func_80093D84(globalCtx->state.gfxCtx);
    gSPSegment(temp_s0->polyXlu.p++, 8, Gfx_TwoTexScroll(globalCtx->state.gfxCtx, 0, 0, -this->unk_150 * 0xF, 0x20, 0x40, 1, 0, 0, 0x40, 0x40));
    Matrix_Push();
    Matrix_Translate(0.0f, 232.0f, -600.0f, MTXMODE_NEW);
    Matrix_Scale(this->spawnPortalScale, this->spawnPortalScale, this->spawnPortalScale, MTXMODE_APPLY);
    gDPSetPrimColor(temp_s0->polyXlu.p++, 0, 0, 0, 0, 0, (s32)this->spawnPortalAlpha);
    gSPMatrix(temp_s0->polyXlu.p++, Matrix_NewMtx(globalCtx->state.gfxCtx, "../z_boss_tw.c", 7582), G_MTX_LOAD | G_MTX_MODELVIEW | G_MTX_NOPUSH);
    gSPDisplayList(temp_s0->polyXlu.p++, SEGMENTED_TO_VIRTUAL(D_0601EC68));
    gDPSetPrimColor(temp_s0->polyXlu.p++, 0, 0, 135, 175, 165, (s32)this->spawnPortalAlpha);
    Matrix_Translate(0.0f, 2.0f, 0.0f, MTXMODE_APPLY);
    Matrix_RotateX(1.5707964f, MTXMODE_APPLY);
    gSPMatrix(temp_s0->polyXlu.p++, Matrix_NewMtx(globalCtx->state.gfxCtx, "../z_boss_tw.c", 7596), G_MTX_LOAD | G_MTX_MODELVIEW | G_MTX_NOPUSH);
    gSPDisplayList(temp_s0->polyXlu.p++, SEGMENTED_TO_VIRTUAL(D_0601CEE0));
    Matrix_Translate(0.0f, 232.0f, 600.0f, MTXMODE_NEW);
    Matrix_Scale(this->spawnPortalScale, this->spawnPortalScale, this->spawnPortalScale, MTXMODE_APPLY);
    gDPSetPrimColor(temp_s0->polyXlu.p++, 0, 0, 0, 0, 0, (s32)this->spawnPortalAlpha);
    gSPMatrix(temp_s0->polyXlu.p++, Matrix_NewMtx(globalCtx->state.gfxCtx, "../z_boss_tw.c", 7617), G_MTX_LOAD | G_MTX_MODELVIEW | G_MTX_NOPUSH);
    gSPDisplayList(temp_s0->polyXlu.p++, SEGMENTED_TO_VIRTUAL(D_0601EC68));
    gDPSetPrimColor(temp_s0->polyXlu.p++, 0, 0, 255, 255, 0, (s32)this->spawnPortalAlpha);
    Matrix_Translate(0.0f, 2.0f, 0.0f, MTXMODE_APPLY);
    Matrix_RotateX(1.5707964f, MTXMODE_APPLY);
    gSPMatrix(temp_s0->polyXlu.p++, Matrix_NewMtx(globalCtx->state.gfxCtx, "../z_boss_tw.c", 7631), G_MTX_LOAD | G_MTX_MODELVIEW | G_MTX_NOPUSH);
    gSPDisplayList(temp_s0->polyXlu.p++, SEGMENTED_TO_VIRTUAL(D_0601DBE8));
    Matrix_Pull();
    Graph_CloseDisps(sp80, globalCtx->state.gfxCtx, "../z_boss_tw.c", 7635);
}
#else
#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Boss_Tw/BossTw_SpawnPortalsDraw.s")
#endif

extern Gfx D_0601F390[];
extern Gfx D_0601F238[];
extern Gfx D_0601EEB0[];
#ifdef NON_MATCHING
//BossTw_DrawGotoHeavenCylinder
void func_80944C50(BossTw *this, GlobalContext *globalCtx) {
    f32 phi_f12;
    s32 pad;
    GraphicsContext *temp_s0;
    Gfx *sp6C[4];

    temp_s0 = globalCtx->state.gfxCtx;
    Graph_OpenDisps(&sp6C, globalCtx->state.gfxCtx, "../z_boss_tw.c", 7645);
    Matrix_Push();
    Matrix_Translate(0.0f, 750.0f, 0.0f, MTXMODE_NEW);
    Matrix_Scale(0.35f, 0.35f, 0.35f, MTXMODE_APPLY);
    Matrix_Push();
    Matrix_Scale(this->unk_1D0, this->unk_1D0, this->unk_1D0, MTXMODE_APPLY);
    gSPMatrix(temp_s0->polyXlu.p++, Matrix_NewMtx(globalCtx->state.gfxCtx, "../z_boss_tw.c", 7671), G_MTX_LOAD | G_MTX_MODELVIEW | G_MTX_NOPUSH);
    gSPDisplayList(temp_s0->polyXlu.p++, SEGMENTED_TO_VIRTUAL(D_0601F390));
    Matrix_Pull();
    gSPSegment(temp_s0->polyXlu.p++, 8, Gfx_TwoTexScroll(globalCtx->state.gfxCtx, 0, -D_8094C848->unk_150 * 2, 0, 0x20, 0x20, 1, -D_8094C848->unk_150 * 2, 0, 0x20, 0x40));
    gDPSetPrimColor(temp_s0->polyXlu.p++, 0, 0, 255, 255, 255, (s16)this->unk_1CC / 2);
    gSPMatrix(temp_s0->polyXlu.p++, Matrix_NewMtx(globalCtx->state.gfxCtx, "../z_boss_tw.c", 7694), G_MTX_LOAD | G_MTX_MODELVIEW | G_MTX_NOPUSH);
    gSPDisplayList(temp_s0->polyXlu.p++, SEGMENTED_TO_VIRTUAL(D_0601F238));
    gSPSegment(temp_s0->polyXlu.p++, 8, Gfx_TwoTexScroll(globalCtx->state.gfxCtx, 0, -D_8094C848->unk_150 * 5, -D_8094C848->unk_150 * 2, 0x20, 0x40, 1, 0, -D_8094C848->unk_150 * 2, 0x10, 0x10));
    gDPSetPrimColor(temp_s0->polyXlu.p++, 0, 0, 255, 255, 255, (s32)(this->unk_1CC * 0.3f));
    phi_f12 = this->unk_1CC / 150.0f;
    if(phi_f12 > 1.0f){
        phi_f12 = 1.0f;
    }
    Matrix_Scale(phi_f12, 1.0f, phi_f12, MTXMODE_APPLY);
    gSPMatrix(temp_s0->polyXlu.p++, Matrix_NewMtx(globalCtx->state.gfxCtx, "../z_boss_tw.c", 7728), G_MTX_LOAD | G_MTX_MODELVIEW | G_MTX_NOPUSH);
    gSPDisplayList(temp_s0->polyXlu.p++, SEGMENTED_TO_VIRTUAL(D_0601EEB0));
    Matrix_Pull();
    Graph_CloseDisps(sp6C, globalCtx->state.gfxCtx, "../z_boss_tw.c", 7732);
}
#else
#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Boss_Tw/func_80944C50.s")
#endif

void BossTw_TwinrovaDraw(Actor *thisx, GlobalContext *globalCtx) {
    BossTw* this = THIS;
    GraphicsContext *gfxCtx;
    Gfx *dispRefs[5];

    gfxCtx = globalCtx->state.gfxCtx;
    Graph_OpenDisps(dispRefs, globalCtx->state.gfxCtx, "../z_boss_tw.c", 7748);
    if (this->unk_564 != 0) {
        func_80093D18(globalCtx->state.gfxCtx);
        func_80093D84(globalCtx->state.gfxCtx);
        
        gfxCtx->polyOpa.p = (this->fogTimer & 2) ? 
            Gfx_SetFog2(gfxCtx->polyOpa.p, 255, 50, 0, 0, 0x384, 0x44B) :
            Gfx_SetFog2(gfxCtx->polyOpa.p, (u32)this->fogR, (u32)this->fogG, (u32)this->fogB, 0, this->fogMin, this->fogMax);
        
        Matrix_Push();
        SkelAnime_DrawSV(globalCtx, this->skelAnime.skeleton, this->skelAnime.limbDrawTbl, this->skelAnime.dListCount, func_80943950, func_80943D90, thisx);
        Matrix_Pull();
        
        Matrix_MultVec3f(&D_8094A9EC, &this->unk_48C);
        gfxCtx->polyOpa.p = Gfx_SetFog2(gfxCtx->polyOpa.p, globalCtx->lightCtx.fogRed, globalCtx->lightCtx.fogGreen, globalCtx->lightCtx.fogBlue, 0, globalCtx->lightCtx.unk_0A, 0x3E8);
    }
    func_80948668(globalCtx);
    func_80943F08(this, globalCtx);
    if (this->spawnPortalAlpha > 0.0f) {
        BossTw_SpawnPortalsDraw(this, globalCtx);
    }
    if (this->unk_1CC > 0.0f) {
        func_80944C50(this, globalCtx);
    }
    Graph_CloseDisps(dispRefs, globalCtx->state.gfxCtx, "../z_boss_tw.c", 7804);
}

#ifdef NON_MATCHING
void func_809453EC(BossTw *this, GlobalContext *globalCtx) {
    f32 distXZ;
    f32 spC4;
    f32 spC0;
    Player *spB8 = PLAYER;
    Vec3f spA8;
    Vec3f sp9C;
    Vec3s sp94;
    Vec3f sp84;
    Vec3f sp78;
    Vec3f sp6C;
    s16 sp52;
    f32 sp4C;
    f32 yDiff;
    f32 temp_f20;
    f32 temp_f2;
    s16 phi_v1;
    s16 phi_v0;
    s16 phi_s0;

    switch(this->actor.params) {
        case 0x64:
        // case 0x64
            switch(this->unk_440){
                case 0:
                    Actor_SetScale(&this->actor, 0.03f);
                    this->unk_440 = 1;
                    temp_f20 = spB8->actor.posRot.pos.x - this->actor.posRot.pos.x;
                    spC4 = (spB8->actor.posRot.pos.y + 30.0f) - this->actor.posRot.pos.y;
                    spC0 = spB8->actor.posRot.pos.z - this->actor.posRot.pos.z;
                    //yaw
                    this->actor.posRot.rot.y = Math_atan2f(temp_f20, spC0) * 10430.378f;
                    //pitch
                    distXZ = sqrtf(SQ(temp_f20) + SQ(spC0));
                    this->actor.posRot.rot.x = Math_atan2f(spC4, distXZ) * 10430.378f;
                    this->actor.speedXZ = 20.0f;
                    
                    for(phi_s0 = 0; phi_s0 < 50; phi_s0++){
                        this->blastTailPos[phi_s0] = this->actor.posRot.pos;
                    }
                    this->unk_1AC = 255.0f;
                case 1:
                case 0xA:
                    this->unk_565 = 1;
                    if (this->unk_178[0] == 0) {
                        func_8002D908(&this->actor);
                        func_8002D7EC(&this->actor);
                        Audio_PlayActorSound2(&this->actor, NA_SE_EN_TWINROBA_SHOOT_FIRE & ~SFX_FLAG);
                    } else {
                        this->actor.posRot.pos = spB8->unk_9BC;
                        this->actor.posRot.pos.y = -2000.0f;
                        func_800D20CC(&spB8->mf_A20, &sp94, MTXMODE_NEW);
                        sp94.x = -sp94.x;
                        sp94.y = sp94.y + 0x8000;
                        Math_SmoothScaleMaxS(&this->unk_524.x, sp94.x, 0xA, 0x800);
                        Math_SmoothScaleMaxS(&this->unk_524.y, sp94.y, 0xA, 0x800);
                        if (this->unk_178[0] == 0x32) {
                            D_8094C86F = 0xA;
                            D_8094C872 = 7;
                            globalCtx->envCtx.unk_D8 = 1.0f;
                        }

                        if (this->unk_178[0] < 0x33) {
                            Audio_PlayActorSound2(&this->actor, NA_SE_EN_TWINROBA_SHOOT_FIRE & ~SFX_FLAG);
                            Audio_PlayActorSound2(&this->actor, NA_SE_EN_TWINROBA_REFL_FIRE & ~SFX_FLAG);
                            Matrix_RotateY((this->unk_524.y / 32678.0f) * M_PI, MTXMODE_NEW);
                            Matrix_RotateX((this->unk_524.x / 32678.0f) * M_PI, MTXMODE_APPLY);
                            sp9C.x = 0.0f;
                            sp9C.y = 0.0f;
                            sp9C.z = 50.0f;
                            Matrix_MultVec3f(&sp9C, &spA8);
                            phi_v0 = this->unk_178[0] * 10;
                            if(phi_v0 >= 256){
                                phi_v0 = 255;
                            }
                            func_80939250(globalCtx, &spB8->unk_9BC, &spA8, &D_8094A7DC, 10.0f, 80.0f, phi_v0, 1);
                        }
                        
                        if (this->unk_178[0] == 1) {
                            D_8094C840 = 0;
                            D_8094C850++;
                            Actor_Kill(&this->actor);
                            return;
                        }
                    }

                    this->unk_500.y = func_8093AED8(&this->actor.posRot.pos);
                    if (0.0f <= this->unk_500.y) {
                        if (35.0f != this->unk_500.y) {
                            this->unk_500.x = this->actor.posRot.pos.x;
                            this->unk_500.z = this->actor.posRot.pos.z;
                            func_8093A5C4(this, globalCtx, 1);
                        } else {
                            for(phi_s0 = 0; phi_s0 < 50; phi_s0++){
                                sp84.x = Math_Rand_CenteredFloat(20.0f);
                                sp84.y = Math_Rand_CenteredFloat(20.0f);
                                sp84.z = Math_Rand_CenteredFloat(20.0f);
                                sp78.x = 0.0f;
                                sp78.y = 0.0f;
                                sp78.z = 0.0f;
                                func_80939070(globalCtx, &this->actor.posRot.pos, &sp84, &sp78, Math_Rand_ZeroFloat(10.0f) + 25.0f, this->unk_566);
                            }
                            globalCtx->envCtx.unk_D8 = 0.5f;
                        }

                        this->unk_440 = 2;
                        this->unk_178[0] = 0x14;
                        return;
                    } else {
                        Vec3f sp60 = { 0.0f, 0.0f, 0.0f };
                        Vec3f sp54 = { 0.0f, 0.0f, 0.0f };
                        for(phi_s0 = 0; phi_s0 < 10; phi_s0++){
                            sp6C = this->blastTailPos[(s16)Math_Rand_ZeroFloat(29.9f)];
                            sp6C.x += Math_Rand_CenteredFloat(40.0f);
                            sp6C.y += Math_Rand_CenteredFloat(40.0f);
                            sp6C.z += Math_Rand_CenteredFloat(40.0f);
                            sp54.y = 0.4f;
                            sp54.x = Math_Rand_CenteredFloat(0.5f);
                            sp54.z = Math_Rand_CenteredFloat(0.5f);
                            func_80938CD0(globalCtx, &sp6C, &sp60, &sp54, (s16)Math_Rand_ZeroFloat(2.0f) + 8, 1, 0x4B);
                        }
                        return;
                    }
                    
                    return;
                case 2:
                    Math_SmoothScaleMaxF(&this->unk_1AC, 0.0f, 1.0f, 15.0f);
                    if (this->unk_178[0] == 0) {
                        Actor_Kill(&this->actor);
                    }
                    return;
            }
            break;
        case 0x65:
            if (this->unk_178[0] != 0) {
                if (this->unk_178[0] == 1) {
                    D_8094C840 = 0;
                }

                if (D_8094C841 == 2) {
                    this->unk_178[0] = 0;
                }
                
                Audio_PlayActorSound2(&this->actor, NA_SE_EN_TWINROBA_FIRE_EXP & ~SFX_FLAG);

                temp_f20 = D_8094C848->unk_4BC.x - spB8->actor.posRot.pos.x;
                yDiff = D_8094C848->unk_4BC.y - spB8->actor.posRot.pos.y;
                temp_f2 = D_8094C848->unk_4BC.z - spB8->actor.posRot.pos.z;
                
                if ((spB8->unk_A60 == 0)  && (spB8->actor.bgCheckFlags & 1) && 
                    (fabsf(yDiff) < 10.0f) && 
                    (sqrtf(SQ(temp_f20) + SQ(temp_f2)) < (D_8094C848->unk_1B8 * 4550.0f))) {
                    
                    for(phi_v1 = 0; phi_v1 < 18; phi_v1++){
                        spB8->unk_A61[phi_v1] =  Math_Rand_S16Offset(0, 0xC8);
                    }
                    
                    spB8->unk_A60 = 1;
                    
                    if (this->unk_168 == 0) {
                        func_8002F7DC(&spB8->actor, ((u16*)spB8->ageProperties)[0x49] + 0x681E); // todo fix when ageProperties is figured out.
                        this->unk_168 = 0x28;
                    }
                    
                    D_8094C84C->unk_178[2] = 0x64;
                }

                Math_SmoothScaleMaxF(&D_8094C848->unk_1B8, 0.04f, 0.1f, 0.002f);
                return;
            }

            sp4C = D_8094C841 == 2 ? 3.0f : 1.0f;
            Math_SmoothScaleMaxF(&D_8094C848->unk_1A8, 0.0f, 1.0f, 10.0f * sp4C);
            Math_SmoothScaleMaxF(&D_8094C848->unk_1B4, 0.0f, 1.0f, 0.03f * sp4C);
            Math_SmoothScaleMaxF(&D_8094C848->unk_1AC, 0.0f, 1.0f, 3.0f * sp4C);
            Math_SmoothScaleMaxF(&D_8094C848->unk_1B0, 0.0f, 1.0f, 6.0f * sp4C);
            
            if (D_8094C848->unk_1AC <= 0.0f) {
                Actor_Kill(&this->actor);
            }
            break;
    }
}
#else
#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Boss_Tw/func_809453EC.s")
#endif

//BossTw_IceBlastBegin
//#define NON_MATCHING
#ifdef NON_MATCHING
void func_80945D14(BossTw *this, GlobalContext *globalCtx) {
    f32 distXZ;
    f32 diffX;
    f32 diffY;
    f32 diffZ;
    Player *player = PLAYER;
    Vec3s spEC;
    f32 temp_f2;
    s16 phi_v0;
    s16 phi_s0;
    f32 phi_f0;
    s32 new_var;
    PosRot* posRot = &this->actor.posRot;

    switch(this->actor.params) {
        case TW_ICE_BLAST:
            switch(this->unk_440){
                case 0:
                    Actor_SetScale(&this->actor, 0.03f);
                    this->unk_440 = 1;
                    diffX = player->actor.posRot.pos.x - this->actor.posRot.pos.x;
                    diffY = (player->actor.posRot.pos.y + 30.0f) - this->actor.posRot.pos.y;
                    diffZ = player->actor.posRot.pos.z- this->actor.posRot.pos.z;
                    this->actor.posRot.rot.y = Math_atan2f(diffX, diffZ) * 10430.378f;
                    distXZ = sqrtf(SQ(diffX) + SQ(diffZ));
                    this->actor.posRot.rot.x = Math_atan2f(diffY, distXZ) * 10430.378f;
                    this->actor.speedXZ = 20;
                    for(phi_s0 = 0; phi_s0 < 50; phi_s0++){
                        this->blastTailPos[phi_s0] = this->actor.posRot.pos;
                    }
                    this->unk_1AC = 255.0f;
                case 1:
                case 0xA:
                    this->unk_565 = 1;
                    new_var = this->unk_178[0];
                    if (new_var == 0) {
                        func_8002D908(&this->actor);
                        func_8002D7EC(&this->actor);
                        Audio_PlayActorSound2(&this->actor, NA_SE_EN_TWINROBA_SHOOT_FREEZE & ~SFX_FLAG);
                    } else {
                        this->actor.posRot.pos = player->unk_9BC;
                        this->actor.posRot.pos.y = -2000.0f;
                        func_800D20CC(&player->mf_A20, &spEC, MTXMODE_NEW);
                        spEC.y += 0x8000;
                        spEC.x = -spEC.x;
                        Math_SmoothScaleMaxS(&this->unk_524.x, spEC.x, 0xA, 0x800);
                        Math_SmoothScaleMaxS(&this->unk_524.y, spEC.y, 0xA, 0x800);
                        if(!player){}
                        if (this->unk_178[0] == 0x32) {
                            D_8094C86F = 0xA;
                            D_8094C872 = 7;
                            globalCtx->envCtx.unk_D8 = 1.0f;
                        }
                        if (this->unk_178[0] < 0x33) {
                            Vec3f sp100;
                            Vec3f spF4;
                            Audio_PlayActorSound2(&this->actor, NA_SE_EN_TWINROBA_SHOOT_FREEZE & ~SFX_FLAG);
                            Audio_PlayActorSound2(&this->actor, NA_SE_EN_TWINROBA_REFL_FREEZE & ~SFX_FLAG);
                            Matrix_RotateY((this->unk_524.y / 32678.0f) * M_PI, MTXMODE_NEW);
                            Matrix_RotateX((this->unk_524.x / 32678.0f) * M_PI, MTXMODE_APPLY);
                            spF4.x = 0.0f;
                            spF4.y = 0.0f;
                            spF4.z = 50.0f;
                            Matrix_MultVec3f(&spF4, &sp100);
                            phi_v0 = this->unk_178[0] * 10;
                            if (phi_v0 >= 0x100) {
                                phi_v0 = 0xFF;
                            }
                            func_80939250(globalCtx, &player->unk_9BC, &sp100, &D_8094A7DC, 10.0f, 80.0f, phi_v0, 0);
                        }
                        if (this->unk_178[0] == 1) {
                            D_8094C840 = 0;
                            D_8094C851++;
                            Actor_Kill(&this->actor);
                        }
                        return;
                    }

                    this->unk_500.y = func_8093AED8(&this->actor.posRot.pos);
                    
                    if (this->unk_500.y >= 0) {
                        if (this->unk_500.y != 35.0f) {
                            this->unk_500.x = this->actor.posRot.pos.x;
                            this->unk_500.z = this->actor.posRot.pos.z;
                            func_8093A5C4(this, globalCtx, 0);
                        } else {
                            for(phi_s0 = 0; phi_s0 < 50; phi_s0++){
                                Vec3f spDC;
                                Vec3f spD0;
                                spDC.x = Math_Rand_CenteredFloat(20);
                                spDC.y = Math_Rand_CenteredFloat(20);
                                spDC.z = Math_Rand_CenteredFloat(20);
                                spD0.x = 0.0f;
                                spD0.y = 0.0f;
                                spD0.z = 0.0f;
                                func_80939070(globalCtx, &this->actor.posRot.pos, &spDC, &spD0, Math_Rand_ZeroFloat(10.0f) + 25.0f, this->unk_566);
                            }
                            globalCtx->envCtx.unk_D8 = 0.5f;
                        }

                        this->unk_440 = 2;
                        this->unk_178[0] = 0x14;
                    } else {                    
                        Vec3f spC4;
                        Vec3f spB8;
                        Vec3f spAC;
                        spB8 = D_8094AA10;
                        spAC = D_8094AA1C;
                        for(phi_s0 = 0; phi_s0 < 10; phi_s0++){

                            spC4 = this->blastTailPos[(s16)Math_Rand_ZeroFloat(29.9f)];
                            spC4.x += Math_Rand_CenteredFloat(40.0f);
                            spC4.y += Math_Rand_CenteredFloat(40.0f);
                            spC4.z += Math_Rand_CenteredFloat(40.0f);
                            spAC.y = 0.4f;
                            spAC.x = Math_Rand_CenteredFloat(0.5f);
                            spAC.z = Math_Rand_CenteredFloat(0.5f);
                            func_80938CD0(globalCtx, &spC4, &spB8, &spAC, (s16)Math_Rand_ZeroFloat(2.0f) + 8, 0, 0x4B);
                        }
                    }
                    break;
                case 2:
                    Math_SmoothScaleMaxF(&this->unk_1AC, 0.0f, 1.0f, 15.0f);
                    if (this->unk_178[0] == 0) {
                        Actor_Kill(&this->actor);
                    }
                    break;
            }
            break;
        case TW_ICE_BLAST_GROUND:
            if (this->unk_178[0] != 0) {
                if (this->unk_178[0] == 1) {
                    D_8094C840 = 0;
                }
                if (D_8094C841 == 1) {
                    this->unk_178[0] = 0;
                }

                Audio_PlayActorSound2(&this->actor, NA_SE_EV_ICE_FREEZE & ~SFX_FLAG);
                
                phi_v0 = D_8094C84C->actionFunc == func_8093C858 ? 0x46 : 0x14;

                if (phi_v0 < this->unk_178[0]) {
                    Vec3f sp9C;
                    Vec3f sp90;
                    Vec3f sp84;
                    sp9C.x = Math_Rand_CenteredFloat(320.0f) + D_8094C844->unk_4BC.x;
                    sp9C.y = Math_Rand_CenteredFloat(320.0f) + D_8094C844->unk_4BC.z;
                    sp9C.y = D_8094C844->unk_4BC.y;
                    sp90.x = 0.0f;
                    sp90.y = 0.0f;
                    sp90.z = 0.0f;
                    sp84.x = 0.0f;
                    sp84.z = 0.0f;
                    sp84.y = 0.13f;
                    func_80938DC4(globalCtx, 3, &sp9C, &sp90, &sp84, Math_Rand_ZeroFloat(5.0f) + 20.0f, 0, 0, 0x50);
                    sp90.x = Math_Rand_CenteredFloat(10.0f);
                    sp90.z = Math_Rand_CenteredFloat(10.0f);
                    sp90.y = Math_Rand_ZeroFloat(3.0f) + 3.0f;
                    sp9C.x = D_8094C844->unk_4BC.x + (sp90.x * 0.5f);
                    sp9C.z = D_8094C844->unk_4BC.z + (sp90.z * 0.5f);
                    func_80938DC4(globalCtx, 3, &sp9C, &sp90, &sp84, Math_Rand_ZeroFloat(5.0f) + 15.0f, 0xFF, 2, 0x82);
                }
                
                Math_SmoothScaleMaxF(&D_8094C844->unk_1A8, 80.0f, 1.0f, 3.0f);
                Math_SmoothScaleMaxF(&D_8094C844->unk_1B0, 255.0f, 1.0f, 10.0f);
                Math_SmoothScaleMaxF(&D_8094C844->unk_1B4, 0.04f, 0.1f, 0.002f);
                Math_SmoothScaleMaxF(&D_8094C844->unk_1C4, 70.0f, 1.0f, 5.0f);
                if (this->unk_178[0] == 0x46 || this->unk_178[0] == 0x1E) {
                    D_8094C844->unk_1C4 = 10.0f;
                }

                if ((this->unk_178[0] & 3) == 0) {
                    temp_f2 = (s16)Math_Rand_ZeroFloat(9.9f);
                    D_8094C844->unk_1C0 = ((temp_f2 + temp_f2) * M_PI) / 10.0f;
                    return;
                }
            } else {
                if (D_8094C841 == 1) {
                    if (1.0f < D_8094C844->unk_1B0) {
                        for(phi_s0 = 0; phi_s0 < 3; phi_s0++){
                            Vec3f sp74;
                            Vec3f sp68;
                            Vec3f sp5C;
                            sp74.x = Math_Rand_CenteredFloat(280.0f) + D_8094C844->unk_4BC.x;
                            sp74.z = Math_Rand_CenteredFloat(280.0f) + D_8094C844->unk_4BC.z;
                            sp74.y = D_8094C844->unk_4BC.y + 30.0f;
                            sp68.x = 0.0f;
                            sp68.y = 0.0f;
                            sp68.z = 0.0f;
                            sp5C.x = 0.0f;
                            sp5C.y = 0.13f;
                            sp5C.z = 0.0f;
                            func_80938DC4(globalCtx, 3, &sp74, &sp68, &sp5C, Math_Rand_ZeroFloat(5.0f) + 20.0f, 0, 0, 0x50);
                        }
                    }
                    phi_f0 = 3.0f;
                } else {
                    phi_f0 = 1.0f;
                }
                Math_SmoothScaleMaxF(&D_8094C844->unk_1BC, 0.0f, 1.0f, 0.2f * phi_f0);
                Math_SmoothScaleMaxF(&D_8094C844->unk_1B0, 0.0f, 1.0f, 5.0f * phi_f0);
                Math_SmoothScaleMaxF(&D_8094C844->unk_1A8, 0.0f, 1.0f, phi_f0);
                if (D_8094C844->unk_1A8 <= 0.0f) {
                    Actor_Kill(&this->actor);
                }
            }
            break;
    }
}
#else
#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Boss_Tw/func_80945D14.s")
#endif
#undef NON_MATCHING

#ifdef NON_MATCHING
s32 func_8094687C(BossTw *this, GlobalContext *globalCtx) {
    Player *sp24;
    s32 temp_t2;
    s32 temp_t8;
    s32 temp_v0;
    u8 temp_t1;
    s32 phi_a2;

    sp24 = PLAYER;
    phi_a2 = 0;
    if (this->unk_440 == 1) {
        if (this->collider.base.acFlags & 2) {
            this->collider.base.acFlags &= ~2;
            this->collider.base.atFlags &= ~2;
            phi_a2 = 0;
            if (this->collider.body.acHitItem->toucher.flags & 0x100000) {
                this->invincibilityTimer = 7;
                globalCtx->envCtx.unk_D8 = 1.0f;
                func_800AA000(0.0f, 100, 5, 4);
                if (func_8008F098(globalCtx)) {
                    if (this->unk_566 == 1) {
                        if (D_8094C851 != 0) {
                            D_8094C851 = 0;
                            func_80939338(globalCtx, 10.0f, 1);
                        } else {
                            func_809394FC(globalCtx, 10.0f, 1);
                            temp_t1 = D_8094C850 + 1;
                            temp_t2 = temp_t1 * 2;
                            D_8094C850 = temp_t1;
                            D_8094C86F = temp_t2 + 8;
                            D_8094C872 = -7;
                        }
                    } else if (D_8094C850 != 0) {
                        D_8094C850 = 0;
                        func_80939338(globalCtx, 10.0f, 0);
                    } else {
                        func_809394FC(globalCtx, 10.0f, 0);
                        D_8094C851++;
                        D_8094C86F = D_8094C851 * 2;
                        D_8094C872 = -7;
                    }

                    if ((D_8094C851 >= 3) || (D_8094C850 >= 3)) {
                        this->unk_178[0] = 0x50;
                        this->unk_440 = 0xA;
                        func_800D20CC(&sp24->mf_A20, &this->unk_524, MTXMODE_NEW);
                        this->unk_524.x = -this->unk_524.x;
                        this->unk_524.y = this->unk_524.y + 0x8000;
                        D_8094C86F = 8;
                    } else {
                        this->unk_440 = 2;
                        this->unk_178[0] = 0x14;
                        D_8094C840 = 0;
                    }
                } else {
                    func_80939338(globalCtx, 10.0f, this->unk_566);
                    this->unk_440 = 2;
                    this->unk_178[0] = 0x14;
                    D_8094C840 = 0;
                    D_8094C851 = 0;
                    D_8094C850 = 0;
                    func_80078884(NA_SE_IT_SHIELD_REFLECT_MG2);
                }
                phi_a2 = 1;
            }
        }
    }
    return phi_a2;
}
#else
s32 func_8094687C(BossTw *this, GlobalContext *globalCtx);
#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Boss_Tw/func_8094687C.s")
#endif

void BossTw_BlastUpdate(Actor *thisx, GlobalContext *globalCtx) {
    BossTw* this = THIS;
    ColliderCylinder* collider;
    s16 i;

    this->unk_150++;
    this->unk_152++;
    this->unk_156++;

    if (this->unk_156 > 29) {
        this->unk_156 = 0;
    }

    this->blastTailPos[this->unk_156] = this->actor.posRot.pos;
    
    this->actionFunc(thisx, globalCtx);

    for(i = 0; i < 5; i++){
        DECR(this->unk_178[i]);
    }

    DECR(this->invincibilityTimer);
    DECR(this->unk_168);
    
    this->actor.posRot2.pos = this->actor.posRot.pos;
    collider = &this->collider;
    Collider_CylinderUpdate(&this->actor, collider);

    if (this->unk_565 != 0 && this->invincibilityTimer == 0 && !func_8094687C(this, globalCtx)){
        CollisionCheck_SetAC(globalCtx, &globalCtx->colChkCtx, &collider->base);
        CollisionCheck_SetAT(globalCtx, &globalCtx->colChkCtx, &collider->base);
    }

    this->unk_565 = 0;
}

extern Gfx D_0601A998[];
extern Gfx D_0601ABB0[];
extern Gfx D_0601A430[];

#ifdef NON_MATCHING
void BossTw_BlastDraw(Actor *thisx, GlobalContext *globalCtx) {
    BossTw* this = THIS;
    GraphicsContext *temp_s2;
    Gfx *spAC[4];
    f32 temp_f0;
    s32 phi_s0;
    s16 idx;

    temp_s2 = globalCtx->state.gfxCtx;
    Graph_OpenDisps(spAC, globalCtx->state.gfxCtx, (const char *) "../z_boss_tw.c", 0x2272);
    func_80093D84(globalCtx->state.gfxCtx);
    switch(this->actor.params){
        case TW_FIRE_BLAST:
            gDPSetPrimColor(temp_s2->polyXlu.p++, 0, 0, 200, 20, 0, (s32)this->unk_1AC);
            gDPSetEnvColor(temp_s2->polyXlu.p++, 255, 215, 255, 128);
            for(phi_s0 = 9; phi_s0 >=0; phi_s0--){
                /* creates a tail for the blast */
                gSPSegment(temp_s2->polyXlu.p++, 8, Gfx_TwoTexScroll(globalCtx->state.gfxCtx, 0, ((this->unk_150 * 3) + (phi_s0 * 0xA)) & 0x7F, ((-this->unk_150 * 0xF) + (phi_s0 * 50)) & 0xFF, 0x20, 0x40, 1, 0, 0, 0x20, 0x20));
                idx = (((this->unk_156 - phi_s0) + 0x1E) % 0x1E);
                Matrix_Translate(this->blastTailPos[idx].x, this->blastTailPos[idx].y, this->blastTailPos[idx].z, MTXMODE_NEW);
                temp_f0 = (1.0f - (phi_s0 * 0.09f));
                Matrix_Scale(this->actor.scale.x * temp_f0, this->actor.scale.y * temp_f0, this->actor.scale.z * temp_f0, MTXMODE_APPLY);
                func_800D1FD4(&globalCtx->mf_11DA0);
                gSPMatrix(temp_s2->polyXlu.p++, Matrix_NewMtx(globalCtx->state.gfxCtx, "../z_boss_tw.c", 8865), G_MTX_LOAD | G_MTX_MODELVIEW | G_MTX_NOPUSH);
                gSPDisplayList(temp_s2->polyXlu.p++, SEGMENTED_TO_VIRTUAL(D_0601A430));
            }
            break;
        case TW_FIRE_BLAST_GROUND:
            break;
        case TW_ICE_BLAST:
        case TW_ICE_BLAST_GROUND:
        default:
            gDPSetPrimColor(temp_s2->polyXlu.p++, 0, 0, 195, 225, 235, (s32)this->unk_1AC);
            gSPDisplayList(temp_s2->polyXlu.p++, SEGMENTED_TO_VIRTUAL(D_0601A998));
            
            for(phi_s0 = 9; phi_s0 >= 0; phi_s0--){
                gSPSegment(temp_s2->polyXlu.p++, 8, Gfx_TwoTexScroll(globalCtx->state.gfxCtx, 0, ((this->unk_150 * 3) + (phi_s0 * 0xA)) & 0x7F, ((-this->unk_150 * 0xF) + (phi_s0 * 50)) & 0xFF, 0x20, 0x40, 1, 0, 0, 0x20, 0x20));
                idx = (((this->unk_156 - phi_s0) + 0x1E) % 0x1E);
                Matrix_Translate(this->blastTailPos[idx].x, this->blastTailPos[idx].y, this->blastTailPos[idx].z, MTXMODE_NEW);
                temp_f0 = 1.0f - (phi_s0 * 0.09f);
                Matrix_Scale(this->actor.scale.x * temp_f0, this->actor.scale.y * temp_f0, this->actor.scale.z * temp_f0, MTXMODE_APPLY);
                func_800D1FD4(&globalCtx->mf_11DA0);
                gSPMatrix(temp_s2->polyXlu.p++, Matrix_NewMtx(globalCtx->state.gfxCtx, "../z_boss_tw.c", 9004), G_MTX_LOAD | G_MTX_MODELVIEW | G_MTX_NOPUSH);
                gSPDisplayList(temp_s2->polyXlu.p++, SEGMENTED_TO_VIRTUAL(D_0601ABB0));
            }
            break;
    }
    Graph_CloseDisps(spAC, globalCtx->state.gfxCtx, "../z_boss_tw.c", 9013);
}
#else
#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Boss_Tw/BossTw_BlastDraw.s")
#endif
#undef NON_MATCHING

extern Gfx D_0601AB00[];
extern Gfx D_0601A998[];
#ifdef NON_MATCHING
void func_80947240(Actor *thisx, GlobalContext *globalCtx) {
    BossTw* this = THIS;
    GraphicsContext *temp_s2;
    Gfx *spAC[4];
    f32 temp_f0;
    s16 phi_s0;
    s16 temp_v1;

    temp_s2 = globalCtx->state.gfxCtx;
    Graph_OpenDisps(spAC, globalCtx->state.gfxCtx, "../z_boss_tw.c", 9028);
    func_80093D84(globalCtx->state.gfxCtx);
    if (this->actor.params == 0x69) {
        gDPSetPrimColor(temp_s2->polyXlu.p++, 0, 0, 200, 20, 0, (s32)this->unk_1AC);
        gDPSetEnvColor(temp_s2->polyXlu.p++, 255, 215, 255, 128);
        for(phi_s0 = 9; phi_s0 >= 0; phi_s0--){
            gSPSegment(temp_s2->polyXlu.p++, 8, Gfx_TwoTexScroll(globalCtx->state.gfxCtx, 0, ((this->unk_150 * 3) + (phi_s0 * 0xA)) & 0x7F, ((-this->unk_150 * 0xF) + (phi_s0 * 50)) & 0xFF, 0x20, 0x40, 1, 0, 0, 0x20, 0x20));
            temp_v1 = ((this->unk_156 - phi_s0) + 30) % 30;
            Matrix_Translate(this->blastTailPos[temp_v1].x, this->blastTailPos[temp_v1].y, this->blastTailPos[temp_v1].z, MTXMODE_NEW);
            temp_f0 = 1.0f - (phi_s0 * 0.09f);
            Matrix_Scale(this->actor.scale.x * temp_f0, this->actor.scale.y * temp_f0, this->actor.scale.z * temp_f0, MTXMODE_APPLY);
            func_800D1FD4(&globalCtx->mf_11DA0);
            gSPMatrix(temp_s2->polyXlu.p++, Matrix_NewMtx(globalCtx->state.gfxCtx, "../z_boss_tw.c", 9071), G_MTX_LOAD | G_MTX_MODELVIEW | G_MTX_NOPUSH);
            gSPDisplayList(temp_s2->polyXlu.p++, SEGMENTED_TO_VIRTUAL(D_0601A430));
        }
    } else {
        gDPSetPrimColor(temp_s2->polyXlu.p++, 0, 0, 195, 225, 235, (s32)this->unk_1AC);
        gSPDisplayList(temp_s2->polyXlu.p++, SEGMENTED_TO_VIRTUAL(D_0601A998));
        
        for(phi_s0 = 9; phi_s0 >= 0; phi_s0--){
            gSPSegment(temp_s2->polyXlu.p++, 8, Gfx_TwoTexScroll(globalCtx->state.gfxCtx, 0, ((this->unk_150 * 3) + (phi_s0 * 0xA)) & 0x7F, ((-this->unk_150 * 0xF) + (phi_s0 * 50)) & 0xFF, 0x20, 0x40, 1, 0, 0, 0x20, 0x20));
            temp_v1 = ((this->unk_156 - phi_s0) + 30) % 30;
            Matrix_Translate(this->blastTailPos[temp_v1].x, this->blastTailPos[temp_v1].y, this->blastTailPos[temp_v1].z, MTXMODE_NEW);
            temp_f0 = 1.0f - (phi_s0 * 0.09f);
            Matrix_Scale(this->actor.scale.x * temp_f0, this->actor.scale.y * temp_f0, this->actor.scale.z * temp_f0, MTXMODE_APPLY);
            func_800D1FD4(&globalCtx->mf_11DA0);
            gSPMatrix(temp_s2->polyXlu.p++, Matrix_NewMtx(globalCtx->state.gfxCtx, "../z_boss_tw.c", 9107), G_MTX_LOAD | G_MTX_MODELVIEW | G_MTX_NOPUSH);
            gSPDisplayList(temp_s2->polyXlu.p++, SEGMENTED_TO_VIRTUAL(D_0601AB00));
        }
    }
    Graph_CloseDisps(spAC, globalCtx->state.gfxCtx, "../z_boss_tw.c", 9111);
}
#else
#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Boss_Tw/func_80947240.s")
#endif

// draw dots (big)
#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Boss_Tw/func_809477E0.s")

extern s32 D_8094F2B0;
extern s32 D_8094F2B4;
extern s32 D_8094F2B8;

void func_80948528(s32 arg0, s32 arg1, s32 arg2) {
    D_8094F2B0 = arg0;
    D_8094F2B4 = arg1;
    D_8094F2B8 = arg2;
}

f32 func_80948544(void) {
    f32 phi_f2;

    D_8094F2B0 = (D_8094F2B0 * 0xAB) % 0x763D;;
    D_8094F2B4 = (D_8094F2B4 * 0xAC) % 0x7663;
    D_8094F2B8 = (D_8094F2B8 * 0xAA) % 0x7673;
    
    phi_f2 = D_8094F2B0 / 30269.0f + D_8094F2B4 / 30307.0f + D_8094F2B8 / 30323.0f;
    
    while (1.0f <= phi_f2) {
        phi_f2 = phi_f2 - 1.0f;
    }
    return fabsf(phi_f2);
}

// large draw
#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Boss_Tw/func_80948668.s")

void func_809495A4(BossTw* this, GlobalContext* globalCtx);
extern AnimationHeader D_06032BF8;

void func_80949530(BossTw* this, GlobalContext* globalCtx) {
    this->actionFunc = func_809495A4;
    SkelAnime_ChangeAnimTransitionRepeat(&this->skelAnime, &D_06032BF8, -3.0f);
    this->unk_150 = Math_Rand_ZeroFloat(100.0f);
    this->unk_178[1] = 0x19;
    this->unk_4C8 = 0.0f;
}

void func_809496D0(BossTw *this, GlobalContext *globalCtx);

void func_809495A4(BossTw *this, GlobalContext *globalCtx) {
    SkelAnime_FrameUpdateMatrix(&this->skelAnime);
    Math_SmoothScaleMaxF(&this->actor.posRot.pos.x, this->unk_4B0.x, 0.1f, fabsf(this->actor.velocity.x) * 1.5f);
    Math_SmoothScaleMaxF(&this->actor.posRot.pos.y, this->unk_4B0.y, 0.1f, fabsf(this->actor.velocity.y) * 1.5f);
    Math_SmoothScaleMaxF(&this->unk_4B0.y, 380.0f, 1.0f, 2.0f);
    Math_SmoothScaleMaxF(&this->actor.posRot.pos.z, this->unk_4B0.z, 0.1f, fabsf(this->actor.velocity.z) * 1.5f);
    if (this->unk_178[1] == 1) {
        func_809496D0(this, globalCtx);
    }
    Math_SmoothScaleMaxS(&this->actor.shape.rot.y, this->actor.yawTowardsLink, 5, this->unk_4C8);
    Math_SmoothScaleMaxF(&this->unk_4C8, 4096.0f, 1.0f, 350.0f);
}

extern AnimationHeader D_06036FBC;

void func_809496D0(BossTw *this, GlobalContext *globalCtx) {
    f32 temp_f6;

    this->actionFunc = func_80949734;
    SkelAnime_ChangeAnimTransitionStop(&this->skelAnime, &D_06036FBC, -5.0f);
    this->unk_1A4 = SkelAnime_GetFrameCount(&D_06036FBC.genericHeader);
    this->unk_440 = 0;
}

void func_80949920(BossTw* this, GlobalContext* globalCtx);

#ifdef NON_MATCHING
void func_80949734(BossTw *this, GlobalContext *globalCtx) {
    SkelAnime* skelAnime = &this->skelAnime;
    SkelAnime_FrameUpdateMatrix(skelAnime);
    Math_SmoothScaleMaxF(&this->actor.posRot.pos.x, this->unk_4B0.x, 0.03f, fabsf(this->actor.velocity.x) * 1.5f);
    Math_SmoothScaleMaxF(&this->actor.posRot.pos.y, this->unk_4B0.y, 0.03f, fabsf(this->actor.velocity.y) * 1.5f);
    Math_SmoothScaleMaxF(&this->actor.posRot.pos.z, this->unk_4B0.z, 0.03f, fabsf(this->actor.velocity.z) * 1.5f);
    Math_SmoothScaleMaxS(&this->actor.shape.rot.y, this->actor.yawTowardsLink, 5, 0x1000);
    if (func_800A56C8(skelAnime, this->unk_1A4)) {
        if ((s8)this->actor.colChkInfo.health < 0xA) {
            D_8094C85C = Math_Rand_ZeroFloat(1.99f);
        } else {
            D_8094C85E++;
            if (D_8094C85E >= 4) {
                D_8094C85E = 1;
                D_8094C85D = D_8094C85D == 0;
            }
            D_8094C85C = D_8094C85D;
        }
        func_80949920(this, globalCtx);
    }
}
#else
#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Boss_Tw/func_80949734.s")
#endif

extern AnimationHeader D_06023750;
extern AnimationHeader D_06022700;

void func_80949920(BossTw *this, GlobalContext *globalCtx) {
    this->actionFunc = func_809499AC;
    if (D_8094C85C == 0) {
        SkelAnime_ChangeAnimTransitionStop(&this->skelAnime, &D_06022700, 0.0f);
    } else {
        SkelAnime_ChangeAnimTransitionStop(&this->skelAnime, &D_06023750, 0.0f);
    }
    this->unk_1A4 = SkelAnime_GetFrameCount(&D_06023750.genericHeader);
}

void func_80949BFC(BossTw *this, GlobalContext *globalCtx);
void func_809499AC(BossTw *this, GlobalContext *globalCtx) {
    BossTw* twMagic;
    Vec3f *magicSpawnPos;
    s32 magicParams;
    s16 i;
    Vec3f sp7C;
    Vec3f sp70;

    SkelAnime_FrameUpdateMatrix(&this->skelAnime);
    if (func_800A56C8(&this->skelAnime, 8.0f)) {
        Audio_PlayActorSound2(&this->actor, NA_SE_EN_TWINROBA_THROW_MASIC);
        Audio_PlayActorSound2(&this->actor, NA_SE_EN_TWINROBA_YOUNG_SHOOTVC);
    }

    if (func_800A56C8(&this->skelAnime, 12.0f)) {
        // magic type? 
        if (D_8094C85C != 0) {
            magicParams = 0x64;
            magicSpawnPos = &this->unk_4A4;
        } else {
            magicParams = 0x66;
            magicSpawnPos = &this->unk_498;
        }

        twMagic = (BossTw*)Actor_SpawnAttached(&globalCtx->actorCtx, &this->actor, globalCtx, ACTOR_BOSS_TW, magicSpawnPos->x, magicSpawnPos->y, magicSpawnPos->z, 0, 0, 0, magicParams);
        if(twMagic != NULL){
            twMagic->unk_566 = magicParams == 0x66 ? 0 : 1;
        }
        D_8094C840 = twMagic->unk_566 + 1;
        sp7C = D_8094AA40;
        sp70 = D_8094AA4C;
        for(i = 0; i < 0x64; i++){
            sp7C.x = Math_Rand_CenteredFloat(30.0f);
            sp7C.y = Math_Rand_CenteredFloat(30.0f);
            sp7C.z = Math_Rand_CenteredFloat(30.0f);
            func_80938CD0(globalCtx, magicSpawnPos, &sp7C, &sp70, (s16)Math_Rand_ZeroFloat(2.0f) + 11, twMagic->unk_566, 0x4B);
        }
    }

    if (func_800A56C8(&this->skelAnime, this->unk_1A4)) {
        func_80949BFC(this, globalCtx);
    }

    Math_SmoothScaleMaxS(&this->actor.shape.rot.y, this->actor.yawTowardsLink, 5, 0x1000);
}

void func_80949C4C(BossTw *this, GlobalContext *globalCtx);
extern AnimationHeader D_06032BF8;

void func_80949BFC(BossTw *this, GlobalContext *globalCtx) {
    this->actionFunc = func_80949C4C;
    SkelAnime_ChangeAnimTransitionRepeat(&this->skelAnime, &D_06032BF8, -10.0f);
    this->unk_178[1] = 0x3C;
}

void func_8094A6D8(BossTw* this, GlobalContext* globalCtx);
void func_8094A1C0(BossTw *this, GlobalContext *globalCtx);

void func_80949C4C(BossTw *this, GlobalContext *globalCtx) {
    SkelAnime_FrameUpdateMatrix(&this->skelAnime);
    if (this->unk_178[1] == 0 && D_8094C870 == 0) {
        if (D_8094C84C->unk_178[2] == 0) {
            func_8094A1C0(this, globalCtx);
        } else {
            func_8094A6D8(this, globalCtx);
        }
    }
    D_8094C870 = 0;
    Math_SmoothScaleMaxS(&this->actor.shape.rot.y, this->actor.yawTowardsLink, 5, 0x1000);
}

extern AnimationHeader D_060338F0;
extern AnimationHeader D_06024374;

// Twinrova_TakeDamage
void func_80949CE4(BossTw *this, GlobalContext *globalCtx, u8 damage) {
    if (this->actionFunc != func_80949E10) {
        SkelAnime_ChangeAnimTransitionStop(&this->skelAnime, &D_060338F0, -15.0f);
        this->unk_178[0] = 0x96;
        this->unk_178[1] = 0x14;
        this->unk_440 = 0;
        this->actor.velocity.y = 0.0f;
    } else {
        this->fogTimer = 10;
        this->invincibilityTimer = 20;
        SkelAnime_ChangeAnimTransitionStop(&this->skelAnime, &D_06024374, -3.0f);
        this->unk_1A4 = SkelAnime_GetFrameCount(&D_06024374);
        this->unk_440 = 1;
        this->actor.colChkInfo.health -= damage;
        if(this->actor.colChkInfo.shealth < 0){
            this->actor.colChkInfo.shealth  = 0;
        }
        if (this->actor.colChkInfo.shealth <= 0) {
            func_8093F108(this, globalCtx);
            func_80032C7C(globalCtx, &this->actor);
            Audio_PlayActorSound2(&this->actor, NA_SE_EN_TWINROBA_YOUNG_DEAD);
            return;
        } 
        Audio_PlayActorSound2(&this->actor, NA_SE_EN_TWINROBA_YOUNG_DAMAGE2);
        Audio_PlayActorSound2(&this->actor, NA_SE_EN_TWINROBA_CUTBODY);
    }

    this->actionFunc = func_80949E10;
}

extern AnimationHeader D_060343B4;
extern AnimationHeader D_06035030;
void func_8094A0C4(BossTw* this, GlobalContext* globalCtx);
void func_80949E10(BossTw *this, GlobalContext *globalCtx) {
    s16 sp66;
    Vec3f sp58;
    Vec3f sp4C;
    Vec3f sp40;

    this->unk_5F8 = 1;
    this->actor.flags |= 0x400;

    sp66 = D_8094C85C == 0 ? 3 : 2;

    if (!(this->unk_150 & 7)) {
        sp58.x = Math_Rand_CenteredFloat(20.0f) + this->actor.posRot.pos.x;
        sp58.y = Math_Rand_CenteredFloat(40.0f) + this->actor.posRot.pos.y + 20;
        sp58.z = Math_Rand_CenteredFloat(20.0f) + this->actor.posRot.pos.z;
        sp4C.x = 0.0f;
        sp4C.y = 0.0f;
        sp4C.z = 0.0f;
        sp40.x = 0.0f;
        sp40.y = 0.1f;
        sp40.z = 0.0f;
        func_80938DC4(globalCtx, sp66, &sp58, &sp4C, &sp40, Math_Rand_ZeroFloat(5.0f) + 10.0f, 0, 0, 0x96);
    }
    SkelAnime_FrameUpdateMatrix(&this->skelAnime);
    this->unk_160 += 0x14;
    if (this->unk_160 >= 0x100) {
        this->unk_160 = 0xFF;
    }
    Math_SmoothScaleMaxF(&this->unk_1B4, 0.0f, 1.0f, 0.05f);
    this->actor.posRot.pos.y += this->actor.velocity.y;
    Math_SmoothScaleMaxF(&this->actor.velocity.y, -5.0f, 1.0f, 0.5f);
    this->actor.posRot.pos.y -= 30.0f;
    func_8002E4B4(globalCtx, &this->actor, 50.0f, 50.0f, 100.0f, 4);
    this->actor.posRot.pos.y += 30.0f;
    if (this->unk_440 == 0) {
        if (this->unk_178[1] == 0) {
            this->unk_440 = 1;
            this->unk_1A4 = SkelAnime_GetFrameCount(&D_060343B4.genericHeader);
            SkelAnime_ChangeAnim(&this->skelAnime, &D_060343B4, 1.0f, 0.0f, this->unk_1A4, 3, 0.0f);
        }
    } else {
        if (func_800A56C8(&this->skelAnime, this->unk_1A4)) {
            this->unk_1A4 = 1000.0f;
            SkelAnime_ChangeAnimTransitionRepeat(&this->skelAnime, &D_06035030, 0.0f);
        }
    }
    if (this->actor.bgCheckFlags & 1) {
        this->actor.velocity.y = 0.0f;
    }
    if (this->unk_178[0] == 0) {
        func_8094A0C4(this, globalCtx);
    }
}

void func_8094A12C(BossTw* this, GlobalContext* globalCtx);
extern AnimationHeader D_06035988;
void func_8094A0C4(BossTw *this, GlobalContext *globalCtx) {
    SkelAnime_ChangeAnimTransitionStop(&this->skelAnime, &D_06035988, 0.0f);
    this->unk_1A4 = SkelAnime_GetFrameCount(&D_06035988.genericHeader);
    this->actionFunc = func_8094A12C;
    this->unk_178[0] = 0x32;
}

extern AnimationHeader D_06032BF8;
void func_8094A12C(BossTw *this, GlobalContext *globalCtx) {
    SkelAnime_FrameUpdateMatrix(&this->skelAnime);
    Math_SmoothScaleMaxF(&this->actor.posRot.pos.y, this->unk_4B0.y, 0.05f, 5.0f);
    if (func_800A56C8(&this->skelAnime, this->unk_1A4)) {
        this->unk_1A4 = 1000.0f;
        SkelAnime_ChangeAnimTransitionRepeat(&this->skelAnime, &D_06032BF8, 0.0f);
    }
    if (this->unk_178[0] == 0) {
        func_8094A1C0(this, globalCtx);
    }
}

extern AnimationHeader D_06032BF8;
void func_8094A398(BossTw *this, GlobalContext *globalCtx);
#ifdef NON_MATCHING
void func_8094A1C0(BossTw *this, GlobalContext *globalCtx) {
    Vec3f *temp_s2;
    f32 temp_f14;
    f32 temp_f20;
    f32 temp_f20_2;
    f32 temp_f22;
    f32 temp_f22_2;
    f32 temp_f24;
    s16 temp_t7;
    Player *temp_s1;
    void *temp_t0;
    s16 phi_t7;

    temp_s1 = PLAYER;
    temp_s2 = &this->unk_4B0;
    do {
        this->unk_154 += (s16)((s16)Math_Rand_ZeroFloat(2.99f) + 1);
        if(this->unk_154 < 0 && this->unk_154 & 3){
            this->unk_154 -= 4;
        }
        this->unk_4B0 = D_8094A86C[this->unk_154];
        temp_f20 = this->unk_4B0.x - temp_s1->actor.posRot.pos.x;
        temp_f22 = this->unk_4B0.z - temp_s1->actor.posRot.pos.z;
    } while(!(SQ(temp_f20) + SQ(temp_f22) > 90000.0f));

    this->actionFunc = func_8094A398;
    temp_f20 = this->unk_4B0.x - this->actor.posRot.pos.x;
    this->unk_4B0.y = 480.0f;
    temp_f22 = this->unk_4B0.z - this->actor.posRot.pos.z;
    this->unk_4C8 = 0.0f;
    this->actor.speedXZ = 0.0f;
    temp_f24 = 480.0f - this->actor.posRot.pos.y;
    temp_f14 = sqrtf(SQ(temp_f20) + SQ(temp_f22));
    this->actor.posRot.rot.y = Math_atan2f(temp_f20, temp_f22) * 10430.378f;
    this->actor.posRot.rot.x = Math_atan2f(temp_f24, temp_f14) * 10430.378f;
    SkelAnime_ChangeAnimTransitionRepeat(&this->skelAnime, &D_06032BF8, -10.0f);
}
#else
#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Boss_Tw/func_8094A1C0.s")
#endif

void func_8094A398(BossTw *this, GlobalContext *globalCtx) {
    f32 xDiff;
    f32 yDiff;
    f32 zDiff;
    s32 pad;
    f32 yaw;
    f32 xzDist;

    Audio_PlayActorSound2(&this->actor, NA_SE_EN_TWINROBA_FLY & ~SFX_FLAG);
    SkelAnime_FrameUpdateMatrix(&this->skelAnime);
    xDiff = this->unk_4B0.x - this->actor.posRot.pos.x;
    yDiff = this->unk_4B0.y - this->actor.posRot.pos.y;
    zDiff = this->unk_4B0.z - this->actor.posRot.pos.z;
    // Convert from radians to degrees, then degrees to binary angle
    yaw = (s16)(Math_atan2f(xDiff, zDiff) * ((180.0f / M_PI) * (65536.0f / 360.0f)));
    xzDist = sqrtf(SQ(xDiff) + SQ(zDiff));
    Math_SmoothScaleMaxS(&this->actor.posRot.rot.x, (f32)(s16)(Math_atan2f(yDiff, xzDist) * ((180.0f / M_PI) * (65536.0f / 360.0f))), 0xA, this->unk_4C8);
    Math_SmoothScaleMaxS(&this->actor.posRot.rot.y, yaw, 0xA, this->unk_4C8);
    Math_SmoothScaleMaxS(&this->actor.shape.rot.y, yaw, 0xA, this->unk_4C8);
    Math_SmoothScaleMaxF(&this->unk_4C8, 2000.0f, 1.0f, 100.0f);
    Math_SmoothScaleMaxF(&this->actor.speedXZ, 30.0f, 1.0f, 2.0f);
    func_8002D908(&this->actor);
    Math_SmoothScaleMaxF(&this->actor.posRot.pos.x, this->unk_4B0.x, 0.1f, fabsf(this->actor.velocity.x) * 1.5f);
    Math_SmoothScaleMaxF(&this->actor.posRot.pos.y, this->unk_4B0.y, 0.1f, fabsf(this->actor.velocity.y) * 1.5f);
    Math_SmoothScaleMaxF(&this->unk_4B0.y, 380.0f, 1.0f, 2.0f);
    Math_SmoothScaleMaxF(&this->actor.posRot.pos.z, this->unk_4B0.z, 0.1f, fabsf(this->actor.velocity.z) * 1.5f);
    if (xzDist < 200.0f) {
        func_80949530(this, globalCtx);
    }
}

extern AnimationHeader D_06032BF8;

void func_8094A608(BossTw *this, GlobalContext *globalCtx) {
    this->actionFunc = func_8094A660;
    SkelAnime_ChangeAnimTransitionRepeat(&this->skelAnime, &D_06032BF8, 0.0f);
    this->unk_178[0] = 0x14;
    this->actor.speedXZ = 0.0f;
}

void func_8094A660(BossTw *this, GlobalContext *globalCtx) {
    SkelAnime_FrameUpdateMatrix(&this->skelAnime);
    if (this->unk_178[0] != 0) {
        this->collider.base.type = 9;
        this->actor.shape.rot.y = this->actor.shape.rot.y - 0x3000;
        if (!(this->unk_178[0] & 3)) {
            Audio_PlayActorSound2(&this->actor, NA_SE_EN_TWINROBA_ROLL);
        }
    } else {
        func_8094A1C0(this, globalCtx);
    }
}

extern AnimationHeader D_0603A2D0;
void func_8094A740(BossTw* this, GlobalContext* globalCtx);
void func_8094A6D8(BossTw* this, GlobalContext* globalCtx) {
    this->actionFunc = func_8094A740;
    SkelAnime_ChangeAnimTransitionStop(&this->skelAnime, &D_0603A2D0, 0.0f);
    this->unk_1A4 = SkelAnime_GetFrameCount(&D_0603A2D0.genericHeader);
    this->actor.speedXZ = 0.0f;
}

void func_8094A740(BossTw* this, GlobalContext* globalCtx) {
    SkelAnime_FrameUpdateMatrix(&this->skelAnime);
    if (func_800A56C8(&this->skelAnime, 10.0f)) {
        Audio_PlayActorSound2(&this->actor, NA_SE_EN_TWINROBA_YOUNG_LAUGH);
    }
    if (func_800A56C8(&this->skelAnime, this->unk_1A4)) {
        func_8094A1C0(this, globalCtx);
    }
}