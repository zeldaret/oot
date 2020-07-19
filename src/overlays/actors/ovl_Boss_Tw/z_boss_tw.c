#include "z_boss_tw.h"

#define FLAGS 0x00000035

#define THIS ((BossTw*)thisx)

void BossTw_Init(Actor* thisx, GlobalContext* globalCtx);
void BossTw_Destroy(Actor* thisx, GlobalContext* globalCtx);
void BossTw_Update(Actor* thisx, GlobalContext* globalCtx);
void BossTw_Draw(Actor* thisx, GlobalContext* globalCtx);

/*
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
*/
#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Boss_Tw/func_80938CD0.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Boss_Tw/func_80938DC4.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Boss_Tw/func_80938EC0.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Boss_Tw/func_80938FC4.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Boss_Tw/func_80939070.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Boss_Tw/func_80939148.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Boss_Tw/func_80939250.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Boss_Tw/func_80939338.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Boss_Tw/func_809394FC.s")

extern InitChainEntry D_8094A8A0[];
extern ColliderCylinderInit D_8094A7E8;
extern u8 D_8094A89C;
void func_80946B00(Actor* thisx, GlobalContext* globalCtx);
void func_80946C7C(Actor* thisx, GlobalContext* globalCtx);
extern u8 D_8094C840;
        extern s16 D_8094C872;
        extern s8 D_8094C86E;
        extern u8 D_8094C850;
        extern u8 D_8094C85E;
        extern u8 D_8094C85C;
        extern u8 D_8094C85F;
        extern u8 D_8094C841;
        extern u8 D_8094C851;
        extern s8 D_8094C86F;
        extern s8 D_8094C870;
        extern s8 D_8094C87E;
        extern s16 D_8094C87C;
        extern s16 D_8094C87A;
        extern s8 D_8094C878;
        extern s16 D_8094C876;
        extern s16 D_8094C874;
        extern f32 D_8094C854;
        extern f32 D_8094C858;
        extern s8 D_8094C85D;
        extern ColliderCylinderInit D_8094A814;
    extern SkeletonHeader D_060070E0;
    extern AnimationHeader D_06006F28;
    extern AnimationHeader D_6006F28;
    extern SkeletonHeader D_601F888;
    extern BossTw* D_8094C844;
    void func_8093A0A8(BossTw* this, GlobalContext* globalCtx);
    void func_8093D54C(BossTw* this, GlobalContext* globalCtx);
    extern ColliderCylinderInit D_8094A840;
        void func_80940D48(Actor* thisx, GlobalContext* globalCtx);
        void func_80945084(Actor* thisx, GlobalContext* globalCtx);
        void func_8093C824(BossTw* this, GlobalContext* globalCtx);
        void func_8093D58C(BossTw* this, GlobalContext* globalCtx);
        extern SkeletonHeader D_06032020;
        extern AnimationHeader D_060244B4;
        extern AnimationHeader D_060244B4;
        extern BossTw* D_8094C84C;
        extern BossTw* D_8094C848;
        extern u8 D_8094C880[0x96];
        void func_809453EC(BossTw* this, GlobalContext* globalCtx);
        void func_80945D14(BossTw* this, GlobalContext* globalCtx);
        void func_8093EE10(BossTw* this, GlobalContext* globalCtx);
        void func_80947240(Actor* thisx, GlobalContext* globalCtx);
#define NON_MATCHING
#ifdef NON_MATCHING
void BossTw_Init(Actor* thisx, GlobalContext *globalCtx) {
    BossTw* this = THIS;
    void *sp48;
    void *sp44;
    f32 temp_f0;
    f32 temp_f10;
    f32 temp_f4;
    f32 temp_f6;
    s16 temp_t9;
    s32 temp_f8;
    s32 temp_v0;
    void *temp_a0;
    void *temp_a0_2;
    void *temp_a1;
    void *temp_a1_2;
    void *temp_a1_3;
    void *temp_a1_4;
    void *temp_a1_5;
    void *temp_v0_2;
    s8 phi_t7;
    s32 phi_v0;
    f32 phi_f4;
    f32 phi_f10;
    f32 phi_f6;

    Actor_ProcessInitChain(&this->actor, &D_8094A8A0);
    ActorShape_Init(&this->actor.shape, 0, 0, 0);
    if (this->actor.params >= 0x64) {
        Actor_SetScale(&this->actor, 0.01f);
        this->actor.update = func_80946B00;
        this->actor.draw = func_80946C7C;
        this->actor.flags &= ~1;
        Collider_InitCylinder(globalCtx, &this->collider);
        Collider_SetCylinder(globalCtx, &this->collider, &this->actor, &D_8094A7E8);
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
        this->unk_17A = 0x96;
        return;
    }
    Actor_SetScale(&this->actor, 0.025f);
    this->actor.colChkInfo.mass = 0xFF;
    this->actor.colChkInfo.health = 0;
    Collider_InitCylinder(globalCtx, &this->collider);
    if (D_8094A89C == 0) {
        D_8094A89C = (u8)1;
        globalCtx->envCtx.unk_BF = 1;
        globalCtx->envCtx.unk_BE = 1;
        globalCtx->envCtx.unk_BD = 1;
        globalCtx->envCtx.unk_D8 = 0.0f;
        D_8094C840 = (u8)0;
        D_8094C872 = (s16) (D_8094C840 & 0xFF);
        D_8094C86E = (s8) D_8094C840;
        D_8094C850 = (u8)0;
        D_8094C85E = (u8)0;
        D_8094C85C = (u8)0;
        D_8094C85F = (u8)0;
        D_8094C841 = (u8)0;
        D_8094C851 = (u8)0;
        D_8094C86F = (s8) D_8094C872;
        D_8094C870 = (s8) D_8094C872;
        D_8094C87E = (s8) D_8094C872;
        D_8094C87C = (s16) (D_8094C872 & 0xFF);
        sp44 = temp_a1_2;
        D_8094C87A = (s16) D_8094C87C;
        D_8094C878 = (s8) D_8094C87C;
        temp_t9 = D_8094C87C & 0xFF;
        D_8094C876 = temp_t9;
        D_8094C874 = temp_t9;
        D_8094C854 = 0.0f;
        D_8094C858 = (f32) D_8094C854;
        D_8094C85D = Math_Rand_ZeroFloat(1.99f);
        globalCtx->unk_11E10 = D_8094C880;
        for(phi_v0 = 0; phi_v0 < ARRAY_COUNT(D_8094C880); phi_v0++){
            D_8094C880[phi_v0] = 0;
        }
    }
    
    if (this->actor.params == 0) {
        Collider_SetCylinder(globalCtx, &this->collider, &this->actor, &D_8094A814);
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
        Collider_SetCylinder(globalCtx, &this->collider, &this->actor, &D_8094A814);
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
        
        Collider_SetCylinder(globalCtx, &this->collider, &this->actor, &D_8094A840);
        this->actor.naviEnemyId = 0x5B;
        this->actor.colChkInfo.health = 0x18;
        this->actor.update = func_80940D48;
        this->actor.draw = func_80945084;
        SkelAnime_InitSV(globalCtx, &this->skelAnime, &D_06032020, &D_060244B4, NULL, NULL, 0);
        SkelAnime_ChangeAnimTransitionRepeat(sp48, &D_060244B4, -3.0f);
        if (gSaveContext.eventChkInf[7] & 0x20) {
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
    this->unk_1D4 = globalCtx->lightCtx.unk_07;
    this->unk_1D8 = globalCtx->lightCtx.unk_08;
    this->unk_1DC = globalCtx->lightCtx.unk_09;
    this->unk_1E0 = globalCtx->lightCtx.unk_0A;
}
#else
#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Boss_Tw/BossTw_Init.s")
#endif
#undef NON_MATCHING

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Boss_Tw/BossTw_Destroy.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Boss_Tw/func_80939F40.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Boss_Tw/func_80939F88.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Boss_Tw/func_8093A0A8.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Boss_Tw/func_8093A2AC.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Boss_Tw/func_8093A4DC.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Boss_Tw/func_8093A5C4.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Boss_Tw/func_8093A940.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Boss_Tw/func_8093AB30.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Boss_Tw/func_8093ADB4.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Boss_Tw/func_8093AED8.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Boss_Tw/func_8093B1AC.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Boss_Tw/func_8093C164.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Boss_Tw/func_8093C1C4.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Boss_Tw/func_8093C25C.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Boss_Tw/func_8093C2C4.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Boss_Tw/func_8093C58C.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Boss_Tw/func_8093C5F4.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Boss_Tw/func_8093C684.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Boss_Tw/func_8093C700.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Boss_Tw/func_8093C79C.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Boss_Tw/func_8093C7E4.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Boss_Tw/func_8093C824.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Boss_Tw/func_8093C858.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Boss_Tw/func_8093C8F4.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Boss_Tw/func_8093C910.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Boss_Tw/func_8093D3D8.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Boss_Tw/func_8093D444.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Boss_Tw/func_8093D54C.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Boss_Tw/func_8093D580.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Boss_Tw/func_8093D58C.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Boss_Tw/func_8093D5C0.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Boss_Tw/func_8093EE10.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Boss_Tw/func_8093F108.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Boss_Tw/func_8093F1C4.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Boss_Tw/func_8093F9E4.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Boss_Tw/BossTw_Update.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Boss_Tw/func_80940D48.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Boss_Tw/func_809416D0.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Boss_Tw/func_80941788.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Boss_Tw/func_80941BC0.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Boss_Tw/func_80942180.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Boss_Tw/func_809426F0.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Boss_Tw/func_80942C70.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Boss_Tw/func_80943028.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Boss_Tw/BossTw_Draw.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Boss_Tw/func_80943950.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Boss_Tw/func_80943D90.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Boss_Tw/func_80943F08.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Boss_Tw/func_809447BC.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Boss_Tw/func_80944C50.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Boss_Tw/func_80945084.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Boss_Tw/func_809453EC.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Boss_Tw/func_80945D14.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Boss_Tw/func_8094687C.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Boss_Tw/func_80946B00.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Boss_Tw/func_80946C7C.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Boss_Tw/func_80947240.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Boss_Tw/func_809477E0.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Boss_Tw/func_80948528.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Boss_Tw/func_80948544.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Boss_Tw/func_80948668.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Boss_Tw/func_80949530.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Boss_Tw/func_809495A4.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Boss_Tw/func_809496D0.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Boss_Tw/func_80949734.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Boss_Tw/func_80949920.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Boss_Tw/func_809499AC.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Boss_Tw/func_80949BFC.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Boss_Tw/func_80949C4C.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Boss_Tw/func_80949CE4.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Boss_Tw/func_80949E10.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Boss_Tw/func_8094A0C4.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Boss_Tw/func_8094A12C.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Boss_Tw/func_8094A1C0.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Boss_Tw/func_8094A398.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Boss_Tw/func_8094A608.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Boss_Tw/func_8094A660.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Boss_Tw/func_8094A6D8.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Boss_Tw/func_8094A740.s")
