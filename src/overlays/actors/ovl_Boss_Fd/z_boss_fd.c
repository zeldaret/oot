#include "z_boss_fd.h"

#define FLAGS 0x00000035

#define THIS ((BossFd*)thisx)

void BossFd_Init(Actor* thisx, GlobalContext* globalCtx);
void BossFd_Destroy(Actor* thisx, GlobalContext* globalCtx);
void BossFd_Update(Actor* thisx, GlobalContext* globalCtx);
void BossFd_Draw(Actor* thisx, GlobalContext* globalCtx);

void func_808CB198(BossFd* this, GlobalContext* globalCtx);
void func_808CB6A8(BossFd* this, GlobalContext* globalCtx);
void func_808CB718(BossFd* this, GlobalContext* globalCtx);
void func_808CDE30(BossFd* this, GlobalContext* globalCtx);
void func_808CE01C(BossFd* this, GlobalContext* globalCtx);
void func_808CEC34(BossFd* this, GlobalContext* globalCtx);

void func_808CAE8C(BossFdStruct1 * arg0, Vec3f *arg1, Vec3f *arg2, Vec3f *arg3, f32 arg4);
void func_808CADC0(BossFdStruct1 * arg0, Vec3f *arg1, Vec3f *arg2, Vec3f *arg3, f32 arg4);
void func_808CAF5C(BossFdStruct1 * arg0, Vec3f *arg1, Vec3f *arg2, Vec3f *arg3, f32 arg4);
void func_808CAFF4(BossFdStruct1 * arg0, Vec3f *arg1, Vec3f *arg2, Vec3f *arg3, f32 arg4, s16 arg5, s16 arg6);
void func_808CB100(BossFd* this, f32 arg1);

s32 func_808CB67C(BossFd* this);

s32 func_808D00A4(GlobalContext* globalCtx, s32 limbIndex, Gfx** dList, Vec3f* pos, Vec3s* rot, Actor* actor);
s32 func_808D01C0(GlobalContext* globalCtx, s32 limbIndex, Gfx** dList, Vec3f* pos, Vec3s* rot, Actor* actor);
s32 func_808D07A4(GlobalContext* globalCtx, s32 limbIndex, Gfx** dList, Vec3f* pos, Vec3s* rot, Actor* actor);

void func_808D08F8(GlobalContext* globalCtx, BossFd* this);

extern SkeletonHeader D_06011660;
extern SkeletonHeader D_060115A0;
extern SkeletonHeader D_060114E0;
extern AnimationHeader D_060115E4;
extern AnimationHeader D_06011524;
extern AnimationHeader D_06011464;

extern Gfx D_0600A900[];
extern Gfx D_0600A880[];
extern Gfx D_0600D3A0[];
extern Gfx D_0600D420[];
extern Gfx D_0600B3A8[];
extern Gfx D_0600B3C8[];
extern Gfx D_0600D668[];
extern Gfx D_0600D6E8[];
extern Gfx D_0600B2F8[];

const ActorInit Boss_Fd_InitVars = {
    ACTOR_BOSS_FD,
    ACTORTYPE_BOSS,
    FLAGS,
    OBJECT_FD,
    sizeof(BossFd),
    (ActorFunc)BossFd_Init,
    (ActorFunc)BossFd_Destroy,
    (ActorFunc)BossFd_Update,
    (ActorFunc)BossFd_Draw,
};

// D_808D1660
static ColliderJntSphItemInit sJntSphItemsInit[19] = {
    {
        { 0x03, { 0xFFCFFFFF, 0x00, 0x10 }, { 0xFFCDFFFE, 0x00, 0x00 }, 0x01, 0x01, 0x01 },
        { 0, { { 0, 0, 0 }, 20 }, 100 },
    },
    {
        { 0x02, { 0xFFCFFFFF, 0x00, 0x10 }, { 0xFFCDFFFE, 0x00, 0x00 }, 0x01, 0x00, 0x01 },
        { 1, { { 0, 0, 0 }, 20 }, 100 },
    },
    {
        { 0x02, { 0xFFCFFFFF, 0x00, 0x10 }, { 0xFFCDFFFE, 0x00, 0x00 }, 0x01, 0x00, 0x01 },
        { 2, { { 0, 0, 0 }, 20 }, 100 },
    },
    {
        { 0x02, { 0xFFCFFFFF, 0x00, 0x10 }, { 0xFFCDFFFE, 0x00, 0x00 }, 0x01, 0x00, 0x01 },
        { 3, { { 0, 0, 0 }, 20 }, 100 },
    },
    {
        { 0x02, { 0xFFCFFFFF, 0x00, 0x10 }, { 0xFFCDFFFE, 0x00, 0x00 }, 0x01, 0x00, 0x01 },
        { 4, { { 0, 0, 0 }, 20 }, 100 },
    },
    {
        { 0x02, { 0xFFCFFFFF, 0x00, 0x10 }, { 0xFFCDFFFE, 0x00, 0x00 }, 0x01, 0x00, 0x01 },
        { 5, { { 0, 0, 0 }, 20 }, 100 },
    },
    {
        { 0x02, { 0xFFCFFFFF, 0x00, 0x10 }, { 0xFFCDFFFE, 0x00, 0x00 }, 0x01, 0x00, 0x01 },
        { 6, { { 0, 0, 0 }, 20 }, 100 },
    },
    {
        { 0x02, { 0xFFCFFFFF, 0x00, 0x10 }, { 0xFFCDFFFE, 0x00, 0x00 }, 0x01, 0x00, 0x01 },
        { 7, { { 0, 0, 0 }, 20 }, 100 },
    },
    {
        { 0x02, { 0xFFCFFFFF, 0x00, 0x10 }, { 0xFFCDFFFE, 0x00, 0x00 }, 0x01, 0x00, 0x01 },
        { 8, { { 0, 0, 0 }, 20 }, 100 },
    },
    {
        { 0x02, { 0xFFCFFFFF, 0x00, 0x10 }, { 0xFFCDFFFE, 0x00, 0x00 }, 0x01, 0x00, 0x01 },
        { 9, { { 0, 0, 0 }, 20 }, 100 },
    },
    {
        { 0x02, { 0xFFCFFFFF, 0x00, 0x10 }, { 0xFFCDFFFE, 0x00, 0x00 }, 0x01, 0x00, 0x01 },
        { 10, { { 0, 0, 0 }, 20 }, 100 },
    },
    {
        { 0x02, { 0xFFCFFFFF, 0x00, 0x10 }, { 0xFFCDFFFE, 0x00, 0x00 }, 0x01, 0x00, 0x01 },
        { 11, { { 0, 0, 0 }, 20 }, 100 },
    },
    {
        { 0x02, { 0xFFCFFFFF, 0x00, 0x10 }, { 0xFFCDFFFE, 0x00, 0x00 }, 0x01, 0x00, 0x01 },
        { 12, { { 0, 0, 0 }, 20 }, 100 },
    },
    {
        { 0x02, { 0xFFCFFFFF, 0x00, 0x10 }, { 0xFFCDFFFE, 0x00, 0x00 }, 0x01, 0x00, 0x01 },
        { 13, { { 0, 0, 0 }, 20 }, 100 },
    },
    {
        { 0x02, { 0xFFCFFFFF, 0x00, 0x10 }, { 0xFFCDFFFE, 0x00, 0x00 }, 0x01, 0x00, 0x01 },
        { 14, { { 0, 0, 0 }, 18 }, 100 },
    },
    {
        { 0x02, { 0xFFCFFFFF, 0x00, 0x10 }, { 0xFFCDFFFE, 0x00, 0x00 }, 0x01, 0x00, 0x01 },
        { 15, { { 0, 0, 0 }, 16 }, 100 },
    },
    {
        { 0x02, { 0xFFCFFFFF, 0x00, 0x10 }, { 0xFFCDFFFE, 0x00, 0x00 }, 0x01, 0x00, 0x01 },
        { 16, { { 0, 0, 0 }, 14 }, 100 },
    },
    {
        { 0x02, { 0xFFCFFFFF, 0x00, 0x10 }, { 0xFFCDFFFE, 0x00, 0x00 }, 0x01, 0x00, 0x01 },
        { 17, { { 0, 0, 0 }, 12 }, 100 },
    },
    {
        { 0x02, { 0xFFCFFFFF, 0x00, 0x10 }, { 0xFFCDFFFE, 0x00, 0x00 }, 0x01, 0x00, 0x01 },
        { 18, { { 0, 0, 0 }, 10 }, 100 },
    },
};

// D_808D190C
static ColliderJntSphInit sJntSphInit =
{
    { COLTYPE_METAL_SHIELD, 0x11, 0x09, 0x09, 0x10, COLSHAPE_JNTSPH },
    19, sJntSphItemsInit,
};

// D_808D191C
static InitChainEntry sInitChain[] = {
    ICHAIN_U8(unk_1F, 5, ICHAIN_CONTINUE),
    ICHAIN_S8(naviEnemyId, 33, ICHAIN_CONTINUE),
    ICHAIN_F32_DIV1000(gravity, 0, ICHAIN_CONTINUE),
    ICHAIN_F32(unk_4C, 0, ICHAIN_STOP),
};

// D_808D192C
Vec3f holeLocations[] = {
    {   0.0f,  90.0f, -243.0f},
    {   0.0f,  90.0f,    0.0f},
    {   0.0f,  90.0f,  243.0f},
    {-243.0f,  90.0f, -243.0f},
    {-243.0f,  90.0f,    0.0f},
    {-243.0f,  90.0f,  243.0f},
    { 243.0f,  90.0f, -243.0f},
    { 243.0f,  90.0f,    0.0f},
    { 243.0f,  90.0f,  243.0f}
  };
  
Vec3f D_808D1A28 = {0x00000000, 0x00000000, 0x42480000};
Vec3f D_808D1A40 = {0x00000000, 0x00000000, 0x00000000};
Vec3f D_808D1A4C = {0x00000000, 0x00000000, 0x00000000};
Color_RGBA8_n D_808D1A58 = {0xFF,0xFF,0x00,0xFF};
Color_RGBA8_n D_808D1A5C = {0xFF,0x0A,0x00,0xFF};
  
Vec3f D_808D1A60 = { 0x00000000, 0x00000000, 0x00000000};
Vec3f D_808D1A6C = { 0x00000000, 0xBF800000, 0x00000000};
Vec3f D_808D1A78 = { 0x00000000, 0x00000000, 0x00000000};
Vec3f D_808D1A84 = { 0x00000000, 0x00000000, 0x00000000};


UNK_TYPE D_808D1A9C[] = {
    0x04051DB0, 0x04051DB0, 0x040521B0, 
    0x040525B0, 0x040529B0, 0x04052DB0, 
    0x040531B0, 0x040535B0, 0x040539B0
};

s8 D_808D1AC2[] = {
    0x00, 0x5F
};

s16 D_808D1AC4[] = {
    0x005A, 0x0055, 0x0050, 0x004B, 0x0046, 0x0041, 0x003C, 0x0037, 
    0x0032, 0x002D, 0x0028, 0x0023, 0x001E, 0x0019, 0x0014, 0x000F, 
    0x000A, 0x0005, 0x0000, 0x001C, 0x001A, 0x0018, 0x0016, 0x0014, 
    0x0012, 0x0010, 0x000E, 0x000C, 0x000A, 0x0000
};

Gfx* D_808D1BC4[] = {
    0x060079A0, 0x06007AC0, 0x06007B70, 0x06007BD0, 
    0x06007C30, 0x06007C90, 0x06007CF0, 0x06007D50, 
    0x06007DB0, 0x06007E10, 0x06007E70, 0x06007ED0, 
    0x06007F30, 0x06007F90, 0x06007FF0, 0x06008038, 
    0x06008080, 0x060080D8
};

Vec3f D_808D1C0C = { 0.0f, 0.0f, 0.0f };
Vec3f D_808D1C18 = { 0.0f, 1700.0f, 7000.0f };
Vec3f D_808D1C24 = { -1000.0f, 700.0f, 7000.0f };

void func_808CADC0(BossFdStruct1 *arg0, Vec3f *arg1, Vec3f *arg2, Vec3f *arg3, f32 arg4) {
    s16 i;
    for (i=0; i < 0x96; i++,arg0++){
        if (arg0->unk_24 == 0) {
            arg0->unk_24 = 1;
            arg0->unk_00 = *arg1;
            arg0->unk_0C = *arg2;
            arg0->unk_18 = *arg3;
            arg0->unk_30 = arg4 / 1000.0f;
            arg0->unk_2A = 0xFF;
            arg0->unk_25 = (s16) Math_Rand_ZeroFloat(10.0f);
            break;
        }
    }
}

void func_808CAE8C(BossFdStruct1 *arg0, Vec3f *arg1, Vec3f *arg2, Vec3f *arg3, f32 arg4) {
    s16 i;
    for (i=0; i < 0x96; i++,arg0++){
        if (arg0->unk_24 == 0) {
            arg0->unk_24 = 2;
            arg0->unk_00 = *arg1;
            arg0->unk_0C = *arg2;
            arg0->unk_18 = *arg3;
            arg0->unk_30 = arg4 / 1000.0f;
            arg0->unk_34 = Math_Rand_ZeroFloat(100.0f);
            arg0->unk_38 = Math_Rand_ZeroFloat(100.0f);
            break;
        }
    }
}

void func_808CAF5C(BossFdStruct1 *arg0, Vec3f *arg1, Vec3f *arg2, Vec3f *arg3, f32 arg4) {
    s16 i;
    for (i=0; i < 0x96; i++,arg0++){
        if (arg0->unk_24 == 0) {
            arg0->unk_24 = 3;
            arg0->unk_00 = *arg1;
            arg0->unk_0C = *arg2;
            arg0->unk_18 = *arg3;
            arg0->unk_2C = 0;
            arg0->unk_30 = arg4 / 400.0f;
            break;
        }
    }
}

void func_808CAFF4(BossFdStruct1 *arg0, Vec3f *arg1, Vec3f *arg2, Vec3f *arg3, f32 arg4, s16 arg5, s16 arg6) {
    s16 i;
    for (i=0; i < 0xB4; i++,arg0++){
        if (arg0->unk_24 == 0) {
            arg0->unk_24 = 4;
            arg0->unk_25 = 0;
            arg0->unk_00 = *arg1;
            arg0->unk_0C = *arg2;
            arg0->unk_18 = *arg3;
            arg0->unk_00.x -= arg0->unk_0C.x;
            arg0->unk_00.y -= arg0->unk_0C.y;
            arg0->unk_00.z -= arg0->unk_0C.z;
            arg0->unk_34 = 0.0f;
            arg0->unk_2A = arg5;
            arg0->unk_38 = Math_Rand_ZeroFloat(10.0f);
            arg0->unk_2C = 0;
            arg0->unk_30 = arg4 / 400.0f;
            arg0->unk_2E = arg6;
            break;
        }
    }
}

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Boss_Fd/func_808CB100.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Boss_Fd/func_808CB198.s")

void BossFd_Init(Actor* thisx, GlobalContext *globalCtx) {
	s16 i;
    BossFd *this = THIS;
	s16 pad;

    Flags_SetSwitch(globalCtx, 0x14);
    Actor_SpawnAttached(&globalCtx->actorCtx, &this->actor, globalCtx, ACTOR_BG_VB_SIMA, 680.0f, -100.0f, 0.0f, 0, 0, 0, 0x64);
    Actor_ProcessInitChain(&this->actor, sInitChain);
    ActorShape_Init(&this->actor.shape, 0.0f, NULL, 0.0f);
    Actor_SetScale(&this->actor, 0.05f);
    SkelAnime_Init(globalCtx, &this->skelAnime1, &D_06011660, &D_060115E4, 0, 0, 0);
    SkelAnime_Init(globalCtx, &this->skelAnime2, &D_060115A0, &D_06011524, 0, 0, 0);
    SkelAnime_Init(globalCtx, &this->skelAnime3, &D_060114E0, &D_06011464, 0, 0, 0);
    this->unk_1402 = 1;
    if (this->unk_1402 == 0) {
        Audio_SetBGM(0x6B);
    }

    this->actor.posRot.pos.z = 0.0f;
    this->actor.posRot.pos.x = 0.0f;
    this->actor.posRot.pos.y = -200.0f;
    Collider_InitJntSph(globalCtx, &this->collider1);
    Collider_SetJntSph(globalCtx, &this->collider1, &this->actor, &sJntSphInit, this->colliderItems);
    
    for (i = 0; i < 100; i++) {
        this->unk_078C[i].x = this->actor.posRot.pos.x;
        this->unk_078C[i].y = this->actor.posRot.pos.y;
        this->unk_078C[i].z = this->actor.posRot.pos.z;
        if (i < 30) {
            this->unk_0E04[i].x = this->actor.posRot.pos.x;
            this->unk_0E04[i].y = this->actor.posRot.pos.y;
            this->unk_0E04[i].z = this->actor.posRot.pos.z;
        }
    }

    this->actor.colChkInfo.health = 0x18;
    this->unk_21E = 0x12;
    if (this->unk_1402 == 0) {
        this->actionFunc = func_808CDE30;
    } else {
        func_808CB6A8(this, globalCtx);
    }

    if (Flags_GetClear(globalCtx, globalCtx->roomCtx.curRoom.num) != 0) {
        Actor_Kill(&this->actor);
        Actor_SpawnAttached(&globalCtx->actorCtx, &this->actor, globalCtx,
                            ACTOR_DOOR_WARP1, 0.0f, 100.0f, 0.0f, 0, 0, 0, -1);
        Actor_Spawn(&globalCtx->actorCtx, globalCtx,
                    ACTOR_ITEM_B_HEART, 0.0f, 100.0f, 200.0f, 0, 0, 0, 0);
        return;
    }

    Actor_SpawnAttached(&globalCtx->actorCtx, &this->actor, globalCtx, ACTOR_BOSS_FD2,
                        this->actor.posRot.pos.x, this->actor.posRot.pos.y, this->actor.posRot.pos.z,
                        0, 0, 0, this->unk_1402);
}

void BossFd_Destroy(Actor *thisx, GlobalContext *globalCtx) {
    BossFd *this = THIS;
	s16 pad;

    SkelAnime_Free(&this->skelAnime1, globalCtx);
    SkelAnime_Free(&this->skelAnime2, globalCtx);
    SkelAnime_Free(&this->skelAnime3, globalCtx);
    Collider_DestroyJntSph(globalCtx, &this->collider1);
}

#ifdef NON_MATCHING
//Such a short function, but it won't match.
s32 func_808CB67C(BossFd *this) {
    s16 temp_v0;
    
    temp_v0 = this->actor.yawTowardsLink - this->actor.posRot.rot.y;
    if (temp_v0 >= 0) {
        return temp_v0 < 0x2000;
    } else {
        return -temp_v0 < 0x2000;
    }
}
#else
#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Boss_Fd/func_808CB67C.s")
#endif

void func_808CB6A8(BossFd *this, GlobalContext *globalCtx) {
    SkelAnime_ChangeAnimDefaultStop(&this->skelAnime1, &D_060115E4);
    SkelAnime_ChangeAnimDefaultStop(&this->skelAnime2, &D_06011524);
    SkelAnime_ChangeAnimDefaultStop(&this->skelAnime3, &D_06011464);
    this->actionFunc = &func_808CB718;
    this->unk_2AC = 1000.0f;
}

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Boss_Fd/func_808CB718.s")

#ifdef NON_MATCHING
void func_808CDE30(BossFd *this, GlobalContext *globalCtx) {
	u8 temp_rand;
    // NON_MATCHING regalloc stuff
    if (this->unk_2D8 == 1) {
        this->unk_2D8 = 0;
        func_808CB6A8(this, globalCtx);
		do {
			temp_rand = (u32) Math_Rand_ZeroFloat(8.9f) & 0xFF;
		} while(temp_rand == this->unk_2D4);
        this->unk_2D4 = temp_rand;
        if(globalCtx) {
        }
        this->unk_2BC.x = holeLocations[temp_rand & 0xFF].x;
        this->unk_2BC.y = holeLocations[temp_rand & 0xFF].y - 200.0f;
        this->unk_2BC.z = holeLocations[temp_rand & 0xFF].z;
		this->actor.posRot.pos = this->unk_2BC;
		this->unk_248[0] = 10;
        this->unk_222 = 3;
        this->unk_232 = 1;
    }
    if (this->unk_2D8 == 2) {
        this->unk_2D8 = 0;
        func_808CB6A8(this, globalCtx);
        this->unk_2D4 = 1;
        this->unk_2BC.x = holeLocations[2].x;
        this->unk_2BC.y = holeLocations[2].y - 200.0f;
        this->unk_2BC.z = holeLocations[2].z;
        this->actor.posRot.pos = this->unk_2BC;
        this->unk_248[0] = 10;
        this->unk_222 = 3;
    }
}
#else
#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Boss_Fd/func_808CDE30.s")
#endif

#ifdef NON_MATCHING
// Not close to matching yet, but it does compile and the control flow seems correct.
void func_808CE01C(BossFd *this, GlobalContext *globalCtx) {
    s16 sp106 = 0;
    s16 spE8[5] = {0x0000,0x0001,0x0002,0x0002,0x0001}; //D_808D1A34
    f32 spD8;
    f32 spD4;
    Vec3f spD0;
    Vec3f spC4;
    Vec3f spB8;
    f32 spB0;
    f32 spAC;
    Vec3f spA0;
    Vec3f sp94;
    Vec3f sp88;
    Vec3f sp7C;
    u8 temp_v1;
    f32 phi_f0;
    f32 phi_f20;
    f32 phi_f0_2;
    f32 phi_f2;
    s16 i1;
    
    temp_v1 = this->unk_220;
    if (temp_v1 == 0) {
        globalCtx->envCtx.unk_BF = 0;
        globalCtx->envCtx.unk_D8 = (Math_Sins(this->unk_226 * 0x500) * 0.5f) + 0.5f;
        globalCtx->envCtx.unk_DC = 2;
        globalCtx->envCtx.unk_BD = 1;
        globalCtx->envCtx.unk_BE = 0;
    } else if (temp_v1 == 3) {
        globalCtx->envCtx.unk_BF = 0;
        globalCtx->envCtx.unk_DC = 2;
        globalCtx->envCtx.unk_BD = 2;
        globalCtx->envCtx.unk_BE = 0;
        Math_SmoothScaleMaxF(&globalCtx->envCtx.unk_D8, 1.0f, 1.0f, 0.05f);
    } else if (temp_v1 == 2) {
        this->unk_220--;
        globalCtx->envCtx.unk_BF = 0;
        Math_SmoothScaleMaxF(&globalCtx->envCtx.unk_D8, (Math_Sins(this->unk_226 * 0x3E00) * 0.05f) + 0.55f, 1.0f, 0.15f);
        globalCtx->envCtx.unk_DC = 2;
        globalCtx->envCtx.unk_BD = 3;
        globalCtx->envCtx.unk_BE = 0;
    } else if (temp_v1 == 10) {
        this->unk_220 = 1;
        globalCtx->envCtx.unk_BF = 0;
        Math_SmoothScaleMaxF(&globalCtx->envCtx.unk_D8, (Math_Sins(this->unk_226 * 0xC00) * 0.07f) + 0.21f, 1.0f, 0.05f);
        globalCtx->envCtx.unk_DC = 2;
        globalCtx->envCtx.unk_BD = 3;
        globalCtx->envCtx.unk_BE = 0;
    } else if (temp_v1 == 1) {
        Math_SmoothScaleMaxF(&globalCtx->envCtx.unk_D8, 0.0f, 1.0f, 0.03f);
        if (globalCtx->envCtx.unk_D8 <= 0.01f) {
            this->unk_220 = 0;
        }
    }

    if (this->unk_238 != 0) {
        this->unk_238--;
        phi_f0 = 20.0f;
        phi_f20 = 20.0f;
    } else {
        phi_f0 = 3.0f;
        phi_f20 = 5.0f;
    }
    Math_SmoothScaleMaxF(&this->unk_294, phi_f0, 1.0f, 0.1f);
    Math_SmoothScaleMaxF(&this->unk_290, phi_f20, 1.0f, 0.5f);
    if ((this->unk_226 & 7) == 0) {
        if (Math_Rand_ZeroOne() < 0.3f) {
            this->unk_22C = 4;
        }
    }

    this->unk_2D5 = spE8[this->unk_22C];
    if (this->unk_22C != 0) {
        this->unk_22C--;
    }

    if (this->unk_22E != 0) {
        if (this->unk_22E == 0x25) {
            Audio_PlaySoundGeneral(0x38D1U, &this->actor.projectedPos, 4, &D_801333E0, &D_801333E0, &D_801333E8);
        }
        phi_f0_2 = 6000.0f;
        phi_f2 = 1300.0f;
    } else {
        phi_f0_2 = ((this->unk_226 & 0x10) != 0) ? 0.0f : 1000.0f;
        phi_f2 = 500.0f;
    }
    Math_SmoothScaleMaxF(this + 0x13CC, phi_f0_2, 0.3f, phi_f2);

    if (this->unk_22E != 0) {
        this->unk_22E--;
    }
    if (this->unk_248[4] != 0) {
        Audio_PlaySoundGeneral(0x30D0, &this->actor.projectedPos, 4, &D_801333E0, &D_801333E0, &D_801333E8);
        if (this->unk_240 != 0) {
            this->unk_240--;
            if ((this->actor.colChkInfo.health != 0) && (this->unk_1402 == 6)) {
                if (this->actor.posRot.rot.x >= 0x3001) {
            block_34:
                    if ((u8) this->unk_220 == 0) {
                        globalCtx->envCtx.unk_D8 = 0.0f;
                    }
                    this->unk_220 = 2;
                }
            } else {
                goto block_34;
            }
            for(i1 = 0; i1 < 5; i1++) {
                spD0.x = Math_Rand_CenteredFloat(20.0f);
                spD0.y = Math_Rand_ZeroFloat(5.0f) + 4.0f;
                spD0.z = Math_Rand_CenteredFloat(20.0f);
                spC4.z = 0.0f;
                spC4.x = 0.0f;
                spC4.y = -0.3f;
                spB8.y = 100.0f;
                spB8.x = this->unk_2C8.x + ((spD0.x * 20.0f) / 10.0f);
                spB8.z = this->unk_2C8.z + ((spD0.z * 20.0f) / 10.0f);
                func_8002836C(globalCtx, &spB8, &spD0, &spC4, &D_808D1A58, &D_808D1A5C, (s16) Math_Rand_ZeroFloat(150.0f) + 0x320, 0xA, (s16) Math_Rand_ZeroFloat(5.0f) + 0x11);
            }
        } else {
            for (i1 = 0; i1 < 2; i1++) {
                spD0.x = Math_Rand_CenteredFloat(10.0f);
                spD0.y = Math_Rand_ZeroFloat(3.0f) + 3.0f;
                spD0.z = Math_Rand_CenteredFloat(10.0f);
                spC4.z = 0.0f;
                spC4.x = 0.0f;
                spC4.y = -0.3f;
                spB8.y = 100.0f;
                spB8.x = this->unk_2C8.x + ((spD0.x * 50.0f) / 10.0f);
                spB8.z = this->unk_2C8.z + ((spD0.z * 50.0f) / 10.0f);
                func_8002836C(globalCtx, &spB8, &spD0, &spC4, &D_808D1A58, &D_808D1A5C, 0x1F4, 0xA, 0x14);
            }
        }
        
        for(i1 = 0; i1 < 8 ; i1++) {
            spD0.x = Math_Rand_CenteredFloat(20.0f);
            spD0.y = Math_Rand_ZeroFloat(10.0f);
            spD0.z = Math_Rand_CenteredFloat(20.0f);
            spC4.y = 0.4f;
            spC4.x = Math_Rand_CenteredFloat(0.5f);
            spC4.z = Math_Rand_CenteredFloat(0.5f);
            spB8.x = Math_Rand_CenteredFloat(60.0f) +  this->unk_2C8.x;
            spB8.y = Math_Rand_ZeroFloat(40.0f) + 100.0f;
            spB8.z = Math_Rand_CenteredFloat(60.0f) + this->unk_2C8.z;
            func_808CADC0(this->unk_1970, &spB8, &spD0, &spC4, Math_Rand_ZeroFloat(1.5f) + 6);
        }
    }
    
    if ((this->unk_21C != 0) && (this->unk_21C < 0x11)) {
        sp106 = (this->unk_21C >= 6) ? 0xFF : this->unk_21C * 0x32;    
    }
    
    if (sp106 != 0) {
        spA0 = D_808D1A40;
        sp88 = D_808D1A4C;
        this->unk_220 = 2;
        spA0.z = 30.0f;
        Audio_PlaySoundGeneral(0x30DBU, &D_808D1A28, 4U, &D_801333E0, &D_801333E0, &D_801333E8);
        sp7C = this->unk_13F4;
        spB0 = (((- this->actor.posRot.rot.x) / 32768.0f) * 3.1415927f) + 0.3f;
        Matrix_RotateY((this->actor.posRot.rot.y / 32768.0f) * 3.1415927f, 0);
        Matrix_RotateX(spB0, 1);
        Matrix_MultVec3f(&spA0, &sp94);
        func_808CAFF4(this->unk_1970, &sp7C, &sp94, &sp88, (Math_Sins(this->unk_226 * 0x2000) * 50.0f) + 300.0f, sp106, this->actor.posRot.rot.y);
        sp7C.x += sp94.x * 0.5f;
        sp7C.y += sp94.y * 0.5f;
        sp7C.z += sp94.z * 0.5f;
        func_808CAFF4(this->unk_1970,&sp7C, &sp94, &sp88, (Math_Sins(this->unk_226 * 0x2000) * 50.0f) + 300.0f, sp106, this->actor.posRot.rot.y);
        spA0.x = 0.0f;
        spA0.z = 0.0f;
        spA0.y = 17.0f;
        
        for(i1 = 0; i1 < 6; i1++) {
            spAC = Math_Rand_ZeroFloat(6.2831855f);
            spB0 = Math_Rand_ZeroFloat(6.2831855f);
            Matrix_RotateY(spAC, 0);
            Matrix_RotateX(spB0, 1);
            Matrix_MultVec3f(&spA0,&sp94);
            sp88.x = (sp94.x * -10.0f) / 100.0f;
            sp88.y = (sp94.y * -10.0f) / 100.0f;
            sp88.z = (sp94.z * -10.0f) / 100.0f;
            func_808CADC0(this->unk_1970, &sp7C, &sp94, &sp88, Math_Rand_ZeroFloat(2.0f) + 8);
        }
    }
    if ((this->actor.posRot.pos.y < 90.0f) || (700.0f < this->actor.posRot.pos.y) || (func_808CDE30 == this->actionFunc)){
        this->actor.flags &= ~1;
    } else {
        this->actor.flags |= 1;
    }    
}
#else
#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Boss_Fd/func_808CE01C.s")
#endif

void func_808CEC34(BossFd *this, GlobalContext *globalCtx) {
    ColliderJntSphItem * colliderItem1 = this->collider1.list;
    ColliderTouch * cTouch;
    
    if ((colliderItem1->body.bumperFlags & 2) != 0) {
        colliderItem1->body.bumperFlags &= ~2;
        cTouch = &colliderItem1->body.acHitItem->toucher;
        this->actor.colChkInfo.health -= 2;
        if ((cTouch->flags & 0x1000) != 0) {
            this->actor.colChkInfo.health -= 2;
        }
        if ((s8) this->actor.colChkInfo.health <= 2) {
            this->actor.colChkInfo.health = 2;
        }
        this->unk_230 = 0xA;
        this->unk_23E = 0x14;
        Audio_PlaySoundGeneral(0x38D5, &this->actor.projectedPos, 4, &D_801333E0, &D_801333E0, &D_801333E8);
    }
}

#ifdef NON_MATCHING
void BossFd_Update(Actor *thisx, GlobalContext *globalCtx) {
    //NON_MATCHING but just barely
	BossFd *this = THIS;
    s16 temp_rand;
    s16 i1;
    f32 phi_f0_1;
    f32 phi_f0_2;
    f32 phi_f0_3;
    f32 phi_f22;
    f32 phi_f20;
    Vec3f spB0;
    Vec3f spA4;
    Vec3f sp98;
    Vec3f sp8C;
    Vec3f sp80;
    Vec3f sp74;
    Actor *bossFdRock;

    osSyncPrintf((const char *) "FD MOVE START \n");
    this->unk_226++;
    this->unk_224++;
    this->actionFunc(this, globalCtx);
    
	for(i1 = 0; i1 < 6; i1++){
		if(this->unk_248[i1] != 0) {
			this->unk_248[i1]--;
		}
	}
    if (this->unk_21C != 0) {
        this->unk_21C--;
    }
    if (this->unk_230 != 0) {
        this->unk_230--;
    }
    if (this->unk_23E != 0) {
        this->unk_23E--;
    }
    if (this->unk_222 < 0xC8) {
        if (this->unk_23E == 0) {
            func_808CEC34(this, globalCtx);
        }
        CollisionCheck_SetAC(globalCtx, &globalCtx->colChkCtx, &this->collider1.base);
        CollisionCheck_SetAT(globalCtx, &globalCtx->colChkCtx, &this->collider1.base);
    }
	
    func_808CE01C(thisx, globalCtx);
    this->unk_254 += 4.0f;
    this->unk_258 = 120.0f;
    this->unk_25C += 3.0f;
    this->unk_260 -= 2.0f;

    phi_f0_1 = ((this->unk_226 & 0x10) != 0) ? 30.0f : 158.0f;
    Math_SmoothScaleMaxF(&this->unk_270, phi_f0_1, 1.0f, 8.0f);
    
    if (this->unk_21E == 0) {
        this->unk_274 = this->unk_270;
    } else {
        phi_f0_2 = ((this->unk_226 & 4) != 0) ? 0.0f : 255.0f;
        Math_SmoothScaleMaxF(&this->unk_274, phi_f0_2, 1.0f, 64.0f);
    }
    
    phi_f0_3 = ((this->unk_226 & 8) != 0) ? 128.0f : 255.0f;
    phi_f22 = (((this->unk_226 + 3) & 8) != 0) ? 128.0f : 255.0f;
    phi_f20 = (((this->unk_226 + 6) & 8) != 0) ? 128.0f : 255.0f;
    
    Math_SmoothScaleMaxF(&this->unk_284.x, phi_f0_3, 1.0f, 16.0f);
    Math_SmoothScaleMaxF(&this->unk_284.y, phi_f22, 1.0f, 16.0f);
    Math_SmoothScaleMaxF(&this->unk_284.z, phi_f20, 1.0f, 16.0f);
	
    if (this->unk_23A != 0) {
        this->unk_23A--;
        if ((this->unk_23A & 0xF) == 0) {
            bossFdRock = Actor_SpawnAttached(&globalCtx->actorCtx, &this->actor, globalCtx, 0xAD,
                                            this->actor.posRot.pos.x, 1000.0f, this->actor.posRot.pos.z,
                                            0, 0, (s16) Math_Rand_ZeroFloat(50.0f) + 0x82, 0x64);
            if (bossFdRock != 0) {
                for(i1 = 0; i1 < 10; i1++){
                    spB0 = D_808D1A60;
                    spA4 = D_808D1A6C;
                    sp98.x = Math_Rand_CenteredFloat(300.0f) + bossFdRock->posRot.pos.x;
                    sp98.y = Math_Rand_CenteredFloat(300.0f) + bossFdRock->posRot.pos.y;
                    sp98.z = Math_Rand_CenteredFloat(300.0f) + bossFdRock->posRot.pos.z;
                    func_808CAE8C(&this->unk_1970, &sp98, &spB0, &spA4, (s16) Math_Rand_ZeroFloat(15.0f) + 0x14);
				}
            }
        }
    }
    
    sp8C = D_808D1A78;
    sp80 = D_808D1A84;
    
    for(i1 = 0; i1 < 6; i1++) {
        sp80.y = 0.4f;
		sp80.x = Math_Rand_CenteredFloat(0.5f);
		sp80.z = Math_Rand_CenteredFloat(0.5f);
		temp_rand = Math_Rand_ZeroFloat(8.9f);
		sp74.x = holeLocations[temp_rand].x + Math_Rand_CenteredFloat(60.0f);
		sp74.y = (holeLocations[temp_rand].y + 10.0f) + Math_Rand_ZeroFloat(40.0f);
		sp74.z = holeLocations[temp_rand].z + Math_Rand_CenteredFloat(60.0f);
		func_808CADC0(&this->unk_1970, &sp74, &sp8C, &sp80, (s16) Math_Rand_ZeroFloat(2.0f) + 6);
	}

    if (this->unk_21E != 0) {
        for(i1 = 0; i1 < (s16) this->unk_294; i1++) {
            temp_rand = Math_Rand_ZeroFloat(29.9f);
            sp74.y = this->unk_0E04[temp_rand].y + Math_Rand_CenteredFloat(20.0f);
            if (90.0f <= sp74.y) {
                sp74.x = this->unk_0E04[temp_rand].x + Math_Rand_CenteredFloat(20.0f);
                sp74.z = this->unk_0E04[temp_rand].z + Math_Rand_CenteredFloat(20.0f);
                sp8C.x = Math_Rand_CenteredFloat(this->unk_290);
                sp8C.y = Math_Rand_CenteredFloat(this->unk_290);
                sp8C.z = Math_Rand_CenteredFloat(this->unk_290);
                sp80.y = 0.4f;
                sp80.x = Math_Rand_CenteredFloat(0.5f);
                sp80.z = Math_Rand_CenteredFloat(0.5f);
                func_808CADC0(&this->unk_1970, &sp74, &sp8C, &sp80, (s16) Math_Rand_ZeroFloat(2.0f) + 8);
            }
        }
    }
    osSyncPrintf((const char *) "FD MOVE END 1\n");
    func_808CF448(thisx, globalCtx);
    osSyncPrintf((const char *) "FD MOVE END 2\n");
}
#else
#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Boss_Fd/BossFd_Update.s")
#endif

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Boss_Fd/func_808CF448.s")

#ifdef NON_MATCHING
//gfxCtx on the stack. Done by Maide
void func_808CF898(BossFdStruct1 *arg0, GlobalContext *globalCtx) {
    GraphicsContext* gfxCtx = globalCtx->state.gfxCtx;
    u8 flag = 0;
    s16 i;
    BossFdStruct1* ptr = arg0;
    
    

    GraphicsContext* localGfxCtx = gfxCtx;
    Gfx* dispRefs[4];

    Graph_OpenDisps(dispRefs, localGfxCtx, "../z_boss_fd.c", 0xFB7);

    for (i = 0; i < 180; i++, ptr++) {
        if (ptr->unk_24 == 1) {
            if (flag == 0) {
                func_80093D84(globalCtx->state.gfxCtx);
                gSPDisplayList(gfxCtx->polyXlu.p++, D_0600A880);
                flag += 1;
            }

            gDPSetPrimColor(gfxCtx->polyXlu.p++, 0, 0, ptr->unk_26.r, ptr->unk_26.g, ptr->unk_26.b, ptr->unk_2A);
            Matrix_Translate(ptr->unk_00.x, ptr->unk_00.y, ptr->unk_00.z, 0);
            func_800D1FD4(&globalCtx->mf_11DA0);
            Matrix_Scale(ptr->unk_30, ptr->unk_30, 1.0f, 1);

            gSPMatrix(gfxCtx->polyXlu.p++, Matrix_NewMtx(gfxCtx, "../z_boss_fd.c", 0xFCE), G_MTX_NOPUSH | G_MTX_LOAD | G_MTX_MODELVIEW);
            gSPDisplayList(gfxCtx->polyXlu.p++, D_0600A900);
        }
    }

    ptr = arg0;
    flag = 0;
    for (i = 0; i < 180; i++, ptr++) {
        if (ptr->unk_24 == 2) {
            if (flag == 0) {
                func_80093D18(globalCtx->state.gfxCtx);
                gSPDisplayList(gfxCtx->polyOpa.p++, D_0600D3A0);
                flag += 1;
            }

            Matrix_Translate(ptr->unk_00.x, ptr->unk_00.y, ptr->unk_00.z, 0);
            Matrix_RotateY(ptr->unk_38, 1);
            Matrix_RotateX(ptr->unk_34, 1);
            Matrix_Scale(ptr->unk_30, ptr->unk_30, 1.0f, 1);

            gSPMatrix(gfxCtx->polyOpa.p++, Matrix_NewMtx(gfxCtx, "../z_boss_fd.c", 0xFE4), G_MTX_NOPUSH | G_MTX_LOAD | G_MTX_MODELVIEW);
            gSPDisplayList(gfxCtx->polyOpa.p++, D_0600D420);
        }
    }

    ptr = arg0;
    flag = 0;
    for (i = 0; i < 180; i++, ptr++) {
        if (ptr->unk_24 == 3) {
            if (flag == 0) {
                gfxCtx->polyXlu.p = Gfx_CallSetupDL(gfxCtx->polyXlu.p, 0);
                gSPDisplayList(gfxCtx->polyXlu.p++, D_0600B3A8);
                gDPSetPrimColor(gfxCtx->polyXlu.p++, 0, 0, 0x5A, 0x1E, 0x00, 0xFF);
                gDPSetEnvColor(gfxCtx->polyXlu.p++, 0x5A, 0x1E, 0x00, 0x00);
                flag += 1;
            }

            Matrix_Translate(ptr->unk_00.x, ptr->unk_00.y, ptr->unk_00.z, 0);
            Matrix_Scale(ptr->unk_30, ptr->unk_30, ptr->unk_30, 1);
            func_800D1FD4(&globalCtx->mf_11DA0);

            gSPMatrix(gfxCtx->polyXlu.p++, Matrix_NewMtx(gfxCtx, "../z_boss_fd.c", 0x1008), G_MTX_NOPUSH | G_MTX_LOAD | G_MTX_MODELVIEW);
            gSPSegment(gfxCtx->polyXlu.p++, 0x08, SEGMENTED_TO_VIRTUAL(D_808D1A9C[ptr->unk_2C]));
            gSPDisplayList(gfxCtx->polyXlu.p++, D_0600B3C8);
        }
    }

    ptr = arg0;
    flag = 0;
    for (i = 0; i < 180; i++, ptr++) {
        if (ptr->unk_24 == 4) {
            if (flag == 0) {
                gfxCtx->polyXlu.p = Gfx_CallSetupDL(gfxCtx->polyXlu.p, 0);
                gSPDisplayList(gfxCtx->polyXlu.p++, D_0600B3A8);
                gDPSetEnvColor(gfxCtx->polyXlu.p++, 0xFF, 0x0A, 0x00, 0xFF);
                flag += 1;
            }

            gDPSetPrimColor(gfxCtx->polyXlu.p++, 0, 0, 0xFF, 0xFF, 0x00, ptr->unk_2A);
            Matrix_Translate(ptr->unk_00.x, ptr->unk_00.y, ptr->unk_00.z, 0);
            Matrix_Scale(ptr->unk_30, ptr->unk_30, ptr->unk_30, 1);
            func_800D1FD4(&globalCtx->mf_11DA0);

            gSPMatrix(gfxCtx->polyXlu.p++, Matrix_NewMtx(gfxCtx, "../z_boss_fd.c", 0x103A), G_MTX_NOPUSH | G_MTX_LOAD | G_MTX_MODELVIEW);
            gSPSegment(gfxCtx->polyXlu.p++, 0x08, SEGMENTED_TO_VIRTUAL(D_808D1A9C[ptr->unk_2C]));
            gSPDisplayList(gfxCtx->polyXlu.p++, D_0600B3C8);
        }
    }

    ptr = arg0;
    flag = 0;
    for (i = 0; i < 180; i++, ptr++) {
        if (ptr->unk_24 == 5) {
            if (flag == 0) {
                func_80093D84(globalCtx->state.gfxCtx);
                gSPDisplayList(gfxCtx->polyXlu.p++, D_0600D668);
                flag += 1;
            }

            Matrix_Translate(ptr->unk_00.x, ptr->unk_00.y, ptr->unk_00.z, 0);
            Matrix_RotateY(ptr->unk_38, 1);
            Matrix_RotateX(ptr->unk_34, 1);
            Matrix_Scale(ptr->unk_30, ptr->unk_30, 1.0f, 1);

            gSPMatrix(gfxCtx->polyXlu.p++, Matrix_NewMtx(gfxCtx, "../z_boss_fd.c", 0x1060), G_MTX_NOPUSH | G_MTX_LOAD | G_MTX_MODELVIEW);
            gSPDisplayList(gfxCtx->polyXlu.p++, D_0600D6E8);
        }
    }

    Graph_CloseDisps(dispRefs, localGfxCtx, "../z_boss_fd.c", 0x1066);
}
#else
#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Boss_Fd/func_808CF898.s")
#endif

void BossFd_Draw(Actor *thisx, GlobalContext *globalCtx) {
    BossFd *this = THIS;
    s32 pad;

    osSyncPrintf("FD DRAW START\n");
    if (this->actionFunc != func_808CDE30) {
        GraphicsContext *gfxCtx = globalCtx->state.gfxCtx;
        Gfx *dispRefs[4];

        Graph_OpenDisps(dispRefs, globalCtx->state.gfxCtx, "../z_boss_fd.c", 0x1079);
        func_80093D18(globalCtx->state.gfxCtx);
        if (this->unk_230 & 2) {
            gfxCtx->polyOpa.p = Gfx_SetFog(gfxCtx->polyOpa.p, 0xFF, 0xFF, 0xFF, 0, 0x384, 0x44B);
        }

        func_808D08F8(globalCtx, this);
        gfxCtx->polyOpa.p = func_800BC8A0(globalCtx, gfxCtx->polyOpa.p);
        Graph_CloseDisps(dispRefs, globalCtx->state.gfxCtx, "../z_boss_fd.c", 0x1093);
    }

    osSyncPrintf("FD DRAW END\n");
    func_808CF898(this->unk_1970, globalCtx);
    osSyncPrintf("FD DRAW END2\n");
}

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Boss_Fd/func_808D00A4.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Boss_Fd/func_808D01C0.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Boss_Fd/func_808D02DC.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Boss_Fd/func_808D07A4.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Boss_Fd/func_808D08A4.s")

#ifdef NON_MATCHING
//WIP by Maide
void func_808D08F8(GlobalContext *globalCtx, BossFd *this) {
    s16 idx;
    f32 tmpf1;
    Vec3f spB0;
    Vec3f spA4;

    Mtx* mat = Graph_Alloc(globalCtx->state.gfxCtx, 18 * sizeof(Mtx));
    GraphicsContext* gfxCtx = globalCtx->state.gfxCtx;
    Gfx* dispRefs[4];

    Graph_OpenDisps(dispRefs, globalCtx->state.gfxCtx, "../z_boss_fd.c", 0x11ED);
    if (this->unk_230 != 0) {
        gSPSegment(gfxCtx->polyOpa.p++, 0x09, SEGMENTED_TO_VIRTUAL(D_808D1BB8[this->unk_2D5]));
    }

    gSPSegment(gfxCtx->polyOpa.p++, 0x08, Gfx_TwoTexScroll(globalCtx->state.gfxCtx, 0, 
        this->unk254, this->unk258, 0x20, 0x20, 1, this->unk25C, this->unk260, 0x20, 0x20));
    gDPSetPrimColor(gfxCtx->polyOpa.p++, 0, 0, 0xFF, 0xFF, 0xFF, 0xFF);
    gDPSetEnvColor(gfxCtx->polyOpa.p++, 0xFF, 0xFF, 0xFF, this->unk270);

    osSyncPrintf("LH\n");
    Matrix_Push();
    idx = D_808D1AC4[this->unk_228] % 0x64;
    Matrix_Translate(this->unk_0E04[idx].x, this->unk_0E04[idx].y, this->unk_0E04[idx].z, 0);
    Matrix_RotateY(this->unk_078C[idx].y, 1);
    Matrix_RotateX(-this->unk_078C[idx].x, 1);
    Matrix_Translate(-13.0f, -5.0f, 13.0f, 1);
    Matrix_Scale(this->actor.scale.x * 0.1f, this->actor.scale.y * 0.1f, this->actor.scale.z * 0.1f, 1);
    SkelAnime_Draw(globalCtx, this->skelAnime2.skeleton, this->skelAnime2.limbDrawTbl, func_808D00A4, 0, &this->actor);
    Matrix_Pull();
    osSyncPrintf("RH\n");
    Matrix_Push();
    idx = D_808D1AC4[this->unk_228] % 0x64;
    Matrix_Translate(this->unk_0E04[idx].x, this->unk_0E04[idx].y, this->unk_0E04[idx].z, 0);
    Matrix_RotateY(this->unk_078C[idx].y, 1);
    Matrix_RotateX(-this->unk_078C[idx].x, 1);
    Matrix_Translate(13.0f, -5.0f, 13.0f, 1);
    Matrix_Scale(this->actor.scale.x * 0.1f, this->actor.scale.y * 0.1f, this->actor.scale.z * 0.1f, 1);
    SkelAnime_Draw(globalCtx, this->skelAnime3.skeleton, this->skelAnime3.limbDrawTbl, func_808D01C0, 0, &this->actor);
    Matrix_Pull();
    osSyncPrintf("BD\n");

    gSPSegment(gfxCtx->polyOpa.p++, 0x0D, mat);
    Matrix_Push();

    for (i = 0; i < 18; i++) {
        idx = (D_808D1AC2[i] + this->unk_228) % 0x64;
        Matrix_Translate(this->unk_0E04[idx].x, this->unk_0E04[idx].y, this->unk_0E04[idx].z, 0);
        Matrix_RotateY(this->unk_078C[idx].y, 1);
        Matrix_RotateX(-this->unk_078C[idx].z, 1);
        Matrix_Translate(0.0f, 0.0f, 35.0f, 1);
        Matrix_Scale(this->actor.scale.x, this->actor.scale.y, this->actor.scale.z, 1);
        if (i < this->unk_230) {
            Matrix_Scale((this->unk280 * Math_Sins((this->unk_228 * 5000.0f) + (i * 7000.0f))) + 1.0f, (this->unk280 * Math_Sins((this->unk_228 * 5000.0f) + (i * 7000.0f))) + 1.0f, 1.0f, 1);
            Matrix_RotateY(1.5707964f, 1);
            Matrix_ToMtx(mat, "../z_boss_fd.c", 0x126F);

            gSPMatrix(gfxCtx->polyOpa.p++, mat, G_MTX_NOPUSH | G_MTX_LOAD | G_MTX_MODELVIEW);
            gSPDisplayList(gfxCtx->polyOpa.p++, D_808D1BC4[i]);
        } else {
            Vec3f spFC;
            Vec3f spF0 = D_808D1C0C;
            Vec3f spE4;
            Vec3s spDC;
            f32 spD4;
            Actor* actorBall;

            if (this->unk_13D0[i] < 2) {
                spD4 = 0.1f;
                Matrix_Translate(0.0f, 0.0f, -1100.0f, 1);
                Matrix_RotateY(-M_PI, 1);
                if (i >= 14) {
                    Matrix_Scale(1.0f - ((i - 14) * 0.2f), 1.0f - ((pi - 14) * 0.2f), 1.0f, 1);
                    spD4 = 0.1f * (i * 2);
                }

                Matrix_Scale(0.1f, 0.1f, 0.1f, 1);
                gSPMatrix(gfxCtx->polyOpa.p++, Matrix_NewMtx(globalCtx->state.gfxCtx, "../z_boss_fd.c", 0x12A0), G_MTX_NOPUSH | G_MTX_LOAD | G_MTX_MODELVIEW);
                gSPDisplayList(gfxCtx->polyOpa.p++, D_0600B2F8);
                if (temp_s2->unk13D0 == 1) {
                    temp_s2->unk13D0 = 2;
                    Matrix_MultVec3f(&spF0, &spE4);
                    Matrix_Get(&spFC);
                    func_800D20CC(&spFC, &spDC, 0);
                    actorBall = Actor_SpawnAttached(&globalCtx->actorCtx, &this->actor, globalCtx, ACTOR_EN_VB_BALL, spE4, spE8, spEC, spDC, spDE, spE0, phi_s1 + 0xC8);
                    actorBall->actor.scale.x *= spD4;
                    actorBall->actor.scale.y *= spD4;
                    actorBall->actor.scale.z *= 0.1f;
                }
            }
        }

        if (i > 0) {
            func_800628A4(i + 1, &this->collider1);
        }
    }

    Matrix_Pull();
    osSyncPrintf("BH\n");

    gDPPipeSync(gfxCtx->polyOpa.p++);
    gDPSetEnvColor(gfxCtx->polyOpa.p++, 0xFF, 0xFF, 0xFF, this->unk_274);

    Matrix_Push();
    if (this->unk_222 >= 0xCC) {
        tmpf1 = -20.0f;
    } else {
        tmpf1 = -10.0f - ((this->actor.speedXZ - 5.0f) * 10.0f);
    }

    idx = D_808D1AC0[this->unk_228] % 0x64;
    Matrix_Translate(this->unk_0E04[idx].x, this->unk_0E04[idx].y, this->unk_0E04[idx].z, 0);
    Matrix_RotateY(this->unk_078C[idx].y, 1);
    Matrix_RotateX(-this->unk_078C[idx].x, 1);
    Matrix_RotateZ((this->actor.shape.rot.z / 32768.0f) * 3.1415927f, 1);
    Matrix_Translate(0.0f, 0.0f, tmpf1, 1);
    Matrix_Push();
    Matrix_Translate(0.0f, 0.0f, 25.0f, 1);
    osSyncPrintf("BHC\n");
    func_800628A4(0, sp7C);
    Matrix_Pull();
    osSyncPrintf("BHCE\n");
    Matrix_Scale(this->actor.scale.x * 0.1f, this->actor.scale.y * 0.1f, this->actor.scale.z * 0.1f, 1);
    SkelAnime_Draw(globalCtx, this->skelAnime1.skeleton, this->skelAnime1.limbDrawTbl, func_808D07A4, &func_808D08A4, &this->actor);
    osSyncPrintf("SK\n");
    spB0 = D_808D1C18;
    spA4 = D_808D1C24;
    func_80093D84(globalCtx->state.gfxCtx);

    gSPDisplayList(gfxCtx->polyOpa.p++, 0x06009168);
    gDPSetPrimColor(gfxCtx->polyOpa.p++, 0, 0, 0xFF, this->unk_284, 0x00, 0xFF);

    Matrix_Push();
    Matrix_MultVec3f(&spB0, &this->unk_0E04[0x28]);
    temp_s0_2 = this + 0xC9C;
    func_808D02DC(globalCtx, this, this->unk_0E04, temp_s0_2, this + 0xF6C, 0);
    Matrix_Pull();
    temp_v1_3 = temp_s4->polyXlu.p;
    temp_s4->polyXlu.p = temp_v1_3 + 8;
    temp_v1_3->words.w0 = 0xFA000000;
    temp_v1_3->words.w1 = (((this->unk288 & 0xFF) << 0x10) | 0xFF000000) | 0xFF;
    Matrix_Push();
    Matrix_MultVec3f(&spA4, this + 0x11D0);
    func_808D02DC(globalCtx, this, this + 0xFF0, temp_s0_2, this + 0x1158, 1);
    Matrix_Pull();
    temp_v1_4 = temp_s4->polyXlu.p;
    temp_s4->polyXlu.p = temp_v1_4 + 8;
    temp_v1_4->words.w0 = 0xFA000000;
    temp_v1_4->words.w1 = (((this->unk28C & 0xFF) << 0x10) | 0xFF000000) | 0xFF;
    Matrix_Push();
    temp_a0_2 = &spA4;
    spA4 = spA4 * -1.0f;
    Matrix_MultVec3f(temp_a0_2, this + 0x13BC);
    func_808D02DC(globalCtx, this, this + 0x11DC, temp_s0_2, this + 0x1344, 2);
    Matrix_Pull();
    Matrix_Pull();
    osSyncPrintf("END\n");
    Graph_CloseDisps(dispRefs, globalCtx->state.gfxCtx, "../z_boss_fd.c", 0x137B);
}
#else
#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Boss_Fd/func_808D08F8.s")
#endif