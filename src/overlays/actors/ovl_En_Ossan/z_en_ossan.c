#include "z_en_ossan.h"
#include "vt.h"

#define FLAGS 0x00000019

#define THIS ((EnOssan*)thisx)

void EnOssan_Init(Actor*, GlobalContext*);
void EnOssan_Destroy(Actor*, GlobalContext*);
void EnOssan_Update(Actor*, GlobalContext*);

const ActorInit En_Ossan_InitVars = {
    ACTOR_EN_OSSAN,
    ACTORTYPE_NPC,
    FLAGS,
    OBJECT_GAMEPLAY_KEEP,
    sizeof(EnOssan),
    (ActorFunc)EnOssan_Init,
    (ActorFunc)EnOssan_Destroy,
    (ActorFunc)EnOssan_Update,
    NULL,
};

extern Gfx* D_0400CDC0;
extern Gfx* D_0400CE40;
extern Gfx* D_0400CF40;
extern SkeletonHeader D_060000F0;
extern AnimationHeader D_060000FC;
extern AnimationHeader D_060002E4;
extern AnimationHeader D_06000338;
extern AnimationHeader D_060004A8;
extern AnimationHeader D_0600065C;
extern AnimationHeader D_0600078C;
extern u32 D_06002820;
extern SkeletonHeader D_06004258;
extern SkeletonHeader D_06004658;
extern SkeletonHeader D_06004868;
extern SkeletonHeader D_06009B38;
extern SkeletonHeader D_0600BFA8;
extern u32 D_0600DE80;
extern SkeletonHeader D_0600FEF0;

u32 unk[] = {
    0x0A000039, 0x01000000, 0x00000000, 0x00000000, 
    0x00000000, 0x00000000, 0x00000000, 0x00000100, 0x001E0050, 
    0x00000000, 0x00000000
};

s16 D_80AC88EC[] = {
    0x000A, 0x001E, 0x0014, 0x0032
};

s16 D_80AC88F4[] = {
    0xEAAC, 0xEAAC, 0xEAAC, 0xEAAC, 0x1554, 0x1554, 0x1554, 0x1554, 
    0x001E, 0x001F, 0x0020, 0x0021, 0x0022, 0x0023, 0x0024, 0x0025
};


char* D_80AC8914[] = {
    "コキリの店  ",
    "薬屋        ",
    "夜の店      ",
    "路地裏の店  ",
    "盾の店      ",
    "大人の店    ",
    "タロンの店  ",
    "ゾーラの店  ",
    "ゴロン夜の店",
    "インゴーの店",
    "お面屋      "
};

s16 D_80AC8940[][3] = {
    {0x00FC, 0x0102, 0x0101},
    {0x0159, 0x0192, 0x0192}, 
    {0x0165, 0x0192, 0x0192},
    {0x0159, 0x0192, 0x0192},
    {0x005B, 0x0192, 0x0192},
    {0x005B, 0x0192, 0x0192}, 
    {0x005B, 0x0192, 0x0192},
    {0x00FE, 0x0192, 0x0104}, 
    {0x00C9, 0x0192, 0x0103},
    {0x005B, 0x0192, 0x0192}, 
    {0x013E, 0x0192, 0x0192}
};

void func_80AC311C(GlobalContext*); void func_80AC30B8(GlobalContext*);
void func_80AC3180(GlobalContext*);
void func_80AC30FC(GlobalContext*); void func_80AC313C(GlobalContext*);
void func_80AC3098(GlobalContext*); void func_80AC31A0(GlobalContext*);
void func_80AC31F4(GlobalContext*); void func_80AC32C4(GlobalContext*);

void (*D_80AC8984[])(GlobalContext*) = {
    func_80AC311C,
    func_80AC30B8,
    func_80AC3180,
    func_80AC30FC,
    func_80AC313C,
    func_80AC3098,
    func_80AC3098,
    func_80AC31A0,
    func_80AC31F4,
    func_80AC3098,
    func_80AC32C4
};

f32 D_80AC89B0[] = {
    0.00999999977648f,  0.0109999999404f,  0.0104999998584f, 
    0.0109999999404f,  0.00999999977648f, 0.00999999977648f, 
    0.00999999977648f, 0.00999999977648f, 0.00999999977648f, 
    0.00999999977648f, 0.00999999977648f
};

typedef struct {
    s16 funcIdx;
    Vec3s pos;
    //s16 x;
    //s16 y;
    //s16 z;
} OssanStruct1;

OssanStruct1 D_80AC89DC[][8] = {
    {
        {0x000D, 0x0032, 0x0034, 0xFFEC}, 
        {0x0000, 0x0032, 0x004C, 0xFFEC}, 
        {0x0004, 0x0050, 0x0034, 0xFFFD}, 
        {0x0005, 0x0050, 0x004C, 0xFFFD}, 
        {0x001D, 0xFFCE, 0x0034, 0xFFEC}, 
        {0x002C, 0xFFCE, 0x004C, 0xFFEC}, 
        {0x0001, 0xFFB0, 0x0034, 0xFFFD}, 
        {0x0010, 0xFFB0, 0x004C, 0xFFFD}, 
    },
    {   
        {0x0009, 0x0032, 0x0034, 0xFFEC}, 
        {0x0027, 0x0032, 0x004C, 0xFFEC}, 
        {0x0008, 0x0050, 0x0034, 0xFFFD}, 
        {0x002B, 0x0050, 0x004C, 0xFFFD}, 
        {0x0000, 0xFFCE, 0x0034, 0xFFEC}, 
        {0x0028, 0xFFCE, 0x004C, 0xFFEC}, 
        {0x002A, 0xFFB0, 0x0034, 0xFFFD}, 
        {0x0007, 0xFFB0, 0x004C, 0xFFFD}, 
    },
    {
        {0x0018, 0x0032, 0x0034, 0xFFEC}, 
        {0x001C, 0x0032, 0x004C, 0xFFEC}, 
        {0x0019, 0x0050, 0x0034, 0xFFFD}, 
        {0x0015, 0x0050, 0x004C, 0xFFFD}, 
        {0x001A, 0xFFCE, 0x0034, 0xFFEC}, 
        {0x0016, 0xFFCE, 0x004C, 0xFFEC}, 
        {0x001B, 0xFFB0, 0x0034, 0xFFFD}, 
        {0x0017, 0xFFB0, 0x004C, 0xFFFD}, 
     
    },
    {
        {0x0009, 0x0032, 0x0034, 0xFFEC}, 
        {0x0027, 0x0032, 0x004C, 0xFFEC}, 
        {0x0008, 0x0050, 0x0034, 0xFFFD}, 
        {0x002B, 0x0050, 0x004C, 0xFFFD}, 
        {0x0000, 0xFFCE, 0x0034, 0xFFEC}, 
        {0x0028, 0xFFCE, 0x004C, 0xFFEC}, 
        {0x002A, 0xFFB0, 0x0034, 0xFFFD}, 
        {0x0007, 0xFFB0, 0x004C, 0xFFFD}, 
    },
    {
        {0x000C, 0x0032, 0x0034, 0xFFEC}, 
        {0x002F, 0x0032, 0x004C, 0xFFEC}, 
        {0x0000, 0x0050, 0x0034, 0xFFFD}, 
        {0x0010, 0x0050, 0x004C, 0xFFFD}, 
        {0x002C, 0xFFCE, 0x0034, 0xFFEC}, 
        {0x0002, 0xFFCE, 0x004C, 0xFFEC}, 
        {0x0005, 0xFFB0, 0x0034, 0xFFFD},
        {0x0001, 0xFFB0, 0x004C, 0xFFFD}, 
    },
    {
        {0x000C, 0x0032, 0x0034, 0xFFEC}, 
        {0x0003, 0x0032, 0x004C, 0xFFEC}, 
        {0x0000, 0x0050, 0x0034, 0xFFFD}, 
        {0x0010, 0x0050, 0x004C, 0xFFFD}, 
        {0x002C, 0xFFCE, 0x0034, 0xFFEC}, 
        {0x0002, 0xFFCE, 0x004C, 0xFFEC}, 
        {0x0005, 0xFFB0, 0x0034, 0xFFFD}, 
        {0x0001, 0xFFB0, 0x004C, 0xFFFD}, 
    },
    {
        {0x0011, 0x0032, 0x0034, 0xFFEC}, 
        {0x0000, 0x0032, 0x004C, 0xFFEC}, 
        {0x0004, 0x0050, 0x0034, 0xFFFD}, 
        {0x0010, 0x0050, 0x004C, 0xFFFD}, 
        {0x0012, 0xFFCE, 0x0034, 0xFFEC}, 
        {0x0005, 0xFFCE, 0x004C, 0xFFEC}, 
        {0x0010, 0xFFB0, 0x0034, 0xFFFD}, 
        {0x0010, 0xFFB0, 0x004C, 0xFFFD}, 
    },
    {
        {0x000F, 0x0032, 0x0034, 0xFFEC}, 
        {0x002C, 0x0032, 0x004C, 0xFFEC}, 
        {0x0010, 0x0050, 0x0034, 0xFFFD}, 
        {0x0001, 0x0050, 0x004C, 0xFFFD}, 
        {0x0000, 0xFFCE, 0x0034, 0xFFEC}, 
        {0x0002, 0xFFCE, 0x004C, 0xFFEC}, 
        {0x0007, 0xFFB0, 0x0034, 0xFFFD}, 
        {0x0031, 0xFFB0, 0x004C, 0xFFFD}, 
    },
    {
        {0x0003, 0x0032, 0x0034, 0xFFEC}, 
        {0x0006, 0x0032, 0x004C, 0xFFEC}, 
        {0x002D, 0x0050, 0x0034, 0xFFFD}, 
        {0x002E, 0x0050, 0x004C, 0xFFFD}, 
        {0x000E, 0xFFCE, 0x0034, 0xFFEC}, 
        {0x0010, 0xFFCE, 0x004C, 0xFFEC}, 
        {0x0030, 0xFFB0, 0x0034, 0xFFFD}, 
        {0x0010, 0xFFB0, 0x004C, 0xFFFD}, 
    },
    {
        {0x0013, 0x0032, 0x0034, 0xFFEC}, 
        {0x0013, 0x0032, 0x004C, 0xFFEC}, 
        {0x0013, 0x0050, 0x0034, 0xFFFD},
        {0x0013, 0x0050, 0x004C, 0xFFFD}, 
        {0x0014, 0xFFCE, 0x0034, 0xFFEC}, 
        {0x0014, 0xFFCE, 0x004C, 0xFFEC}, 
        {0x0014, 0xFFB0, 0x0034, 0xFFFD}, 
        {0x0014, 0xFFB0, 0x004C, 0xFFFD}, 
    },
    {
        {0x0025, 0x0032, 0x0034, 0xFFEC}, 
        {0x0023, 0x0032, 0x004C, 0xFFEC}, 
        {0x0022, 0x0050, 0x0034, 0xFFFD}, 
        {0x0024, 0x0050, 0x004C, 0xFFFD}, 
        {0x0020, 0xFFCE, 0x0034, 0xFFEC}, 
        {0x001E, 0xFFCE, 0x004C, 0xFFEC}, 
        {0x0021, 0xFFB0, 0x0034, 0xFFFD}, 
        {0x001F, 0xFFB0, 0x004C, 0xFFFD}
    }
};

s32 func_80AC2CA8(s16); s32 func_80AC2CB8(s16); s32 func_80AC2CE8(s16);
s32 func_80AC2D18(s16); s32 func_80AC2D48(s16); s32 func_80AC2D78(s16);
s32 func_80AC2DA8(s16);

s32 (*D_80AC8C9C[])(s16) = {
    func_80AC2CA8,
    func_80AC2CA8,
    func_80AC2CA8,
    func_80AC2CA8,
    func_80AC2CA8,
    func_80AC2CA8,
    func_80AC2CA8,
    func_80AC2CA8,
    func_80AC2CA8,
    func_80AC2CA8,
    func_80AC2CA8,
    func_80AC2CA8,
    func_80AC2CA8,
    func_80AC2CA8,
    func_80AC2CA8,
    func_80AC2CA8,
    func_80AC2CA8,
    func_80AC2CA8,
    func_80AC2CA8,
    func_80AC2CA8,
    func_80AC2CA8,
    func_80AC2CA8,
    func_80AC2CA8,
    func_80AC2CA8,
    func_80AC2CA8,
    func_80AC2CA8,
    func_80AC2CA8,
    func_80AC2CA8,
    func_80AC2CA8,
    func_80AC2CA8,
    func_80AC2CA8,
    func_80AC2CB8,
    func_80AC2CE8,
    func_80AC2D18,
    func_80AC2CA8,
    func_80AC2D48,
    func_80AC2D78,
    func_80AC2DA8,
    func_80AC2CA8,
    func_80AC2CA8,
    func_80AC2CA8,
    func_80AC2CA8,
    func_80AC2CA8,
    func_80AC2CA8,
    func_80AC2CA8,
    func_80AC2CA8,
    func_80AC2CA8,
    func_80AC2CA8,
    func_80AC2CA8,
    func_80AC2CA8,
};

static InitChainEntry sInitChain[] = {
    ICHAIN_U8(unk_1F, 2, ICHAIN_CONTINUE),
    ICHAIN_F32(unk_4C, 500, ICHAIN_STOP),
};

Vec3f D_80AC8D6C[] = {
    { 17.0f, 58.0f, 30.0f}, 
    {-17.0f, 58.0f, 30.0f}
};

void func_80AC6B3C(EnOssan* this, GlobalContext*); void func_80AC6E0C(EnOssan* this, GlobalContext*); void func_80AC6ECC(EnOssan* this, GlobalContext*);
void func_80AC6ADC(EnOssan* this, GlobalContext*); void func_80AC6D30(EnOssan* this, GlobalContext*); void func_80AC6C54(EnOssan* this, GlobalContext*);
void func_80AC6E6C(EnOssan* this, GlobalContext*); 

void (*D_80AC8D84[])(EnOssan* this, GlobalContext*) = {
    func_80AC6B3C,
    func_80AC6E0C,
    func_80AC6ECC,
    func_80AC6E0C,
    func_80AC6ADC,
    func_80AC6ADC,
    func_80AC6ADC,
    func_80AC6D30,
    func_80AC6C54,
    func_80AC6ADC,
    func_80AC6E6C
};

Vec3f D_80AC8DB0[] = {
    {0.0f, 0.0f, 33.0f}, 
    {0.0f, 0.0f, 31.0f}, 
    {0.0f, 0.0f, 31.0f}, 
    {0.0f, 0.0f, 31.0f}, 
    {0.0f, 0.0f,  0.0f}, 
    {0.0f, 0.0f,  0.0f}, 
    {0.0f, 0.0f,  0.0f}, 
    {0.0f, 0.0f, 36.0f}, 
    {0.0f, 0.0f, 15.0f}, 
    {0.0f, 0.0f,  0.0f}, 
    {0.0f, 0.0f, 26.0f}
};

void func_80AC3B18(EnOssan*, GlobalContext*, Player*); void func_80AC4074(EnOssan*, GlobalContext*, Player*);
void func_80AC4288(EnOssan*, GlobalContext*, Player*); void func_80AC43A0(EnOssan*, GlobalContext*, Player*);
void func_80AC43F0(EnOssan*, GlobalContext*, Player*); void func_80AC44DC(EnOssan*, GlobalContext*, Player*);
void func_80AC4978(EnOssan*, GlobalContext*, Player*); void func_80AC4B4C(EnOssan*, GlobalContext*, Player*);
void func_80AC4D20(EnOssan*, GlobalContext*, Player*); void func_80AC5594(EnOssan*, GlobalContext*, Player*);
void func_80AC5680(EnOssan*, GlobalContext*, Player*); void func_80AC576C(EnOssan*, GlobalContext*, Player*);
void func_80AC5858(EnOssan*, GlobalContext*, Player*); void func_80AC5900(EnOssan*, GlobalContext*, Player*);
void func_80AC5C24(EnOssan*, GlobalContext*, Player*); void func_80AC5D40(EnOssan*, GlobalContext*, Player*);
void func_80AC5DAC(EnOssan*, GlobalContext*, Player*); void func_80AC5EF0(EnOssan*, GlobalContext*, Player*);
void func_80AC6208(EnOssan*, GlobalContext*, Player*); void func_80AC4DDC(EnOssan*, GlobalContext*, Player*);
void func_80AC60E4(EnOssan*, GlobalContext*, Player*); void func_80AC6148(EnOssan*, GlobalContext*, Player*);
void func_80AC61B8(EnOssan*, GlobalContext*, Player*); void func_80AC5C9C(EnOssan*, GlobalContext*, Player*);
void func_80AC5A28(EnOssan*, GlobalContext*, Player*); void func_80AC6258(EnOssan*, GlobalContext*, Player*);
void func_80AC62F4(EnOssan*, GlobalContext*, Player*);

void (*D_80AC8E34[])(EnOssan*, GlobalContext*, Player*) ={
    func_80AC3B18,
    func_80AC4074,
    func_80AC4288,
    func_80AC43A0,
    func_80AC43F0,
    func_80AC44DC,
    func_80AC4978,
    func_80AC4B4C,
    func_80AC4D20,
    func_80AC5594,
    func_80AC5680,
    func_80AC576C,
    func_80AC5858,
    func_80AC5900,
    func_80AC5C24,
    func_80AC5D40,
    func_80AC5DAC,
    func_80AC5EF0,
    func_80AC6208,
    func_80AC4DDC,
    func_80AC60E4,
    func_80AC6148,
    func_80AC61B8,
    func_80AC5C9C,
    func_80AC5A28,
    func_80AC6258,
    func_80AC62F4
};

u32 D_80AC8EA0[] = {
    0x06004878, 0x060052B8, 0x060056B8
};

u32 D_80AC8EAC[] = {
    0x06001570, 0x060001F0, 0x06000B30
};

u32 D_80AC8EB8[] = {
    0x0600CE80, 0x0600D280, 0x0600D680
};

u32 D_80AC8EC4[] = {
    0x06003E40, 0x06004640, 0x06004E40
};

u32 D_80AC8ED0[] = {
    0x060030D8, 0x060034D8, 0x060038D8
};

u32 D_80AC8EDC[] = {
    0x060035D8, 0x060039D8
};

u32 D_80AC8EE4[] = {
    0x06003968, 0x06003D68, 0x06004168
};

//const char* D_80AC94EC = "../z_en_oB1.c";


void func_80AC2CA0(EnOssan* this, void* arg1) {
    this->actionFunc = arg1;
}

s32 func_80AC2CA8(s16 arg0) {
    return arg0;
}

s32 func_80AC2CB8(s16 arg0) {
    if (gSaveContext.itemGetInf[3] & 0x200) {
        return arg0;
    }
    return -1;
}

s32 func_80AC2CE8(s16 arg0) {
    if (gSaveContext.itemGetInf[3] & 0x100) {
        return arg0;
    }
    return -1;
}

s32 func_80AC2D18(s16 arg0) {
    if (gSaveContext.itemGetInf[3] & 0x400) {
        return arg0;
    }
    return -1;
}

s32 func_80AC2D48(s16 arg0) {
    if (gSaveContext.itemGetInf[3] & 0x8000) {
        return arg0;
    }
    return -1;
}

s32 func_80AC2D78(s16 arg0) {
    if (gSaveContext.itemGetInf[3] & 0x8000) {
        return arg0;
    }
    return -1;
}

s32 func_80AC2DA8(s16 arg0) {
    if (gSaveContext.itemGetInf[3] & 0x8000) {
        return arg0;
    }
    return -1;
}

#ifdef NON_MATCHING
void func_80AC2DD8(EnOssan* this, GlobalContext* globalCtx, OssanStruct1* arg2) {
    s32 i;
    s16 temp_v0;
    s16 tmp2;

    for (i = 0; i < 8; i++) {
        tmp2 = arg2[i].funcIdx;
        if (tmp2 < 0) {
            this->unk_200[i] = NULL;
            continue;
        }
        temp_v0 = D_80AC8C9C[tmp2](tmp2);
        if (temp_v0 < 0) {
            this->unk_200[i] = NULL;
            continue;
        }
        this->unk_200[i] = (EnGirlA*)Actor_Spawn(&globalCtx->actorCtx, globalCtx, ACTOR_EN_GIRLA, 
                            arg2[i].pos.x + this->tana->actor.posRot.pos.x, 
                            arg2[i].pos.y + this->tana->actor.posRot.pos.y, 
                            arg2[i].pos.z + this->tana->actor.posRot.pos.z, 
                            this->tana->actor.shape.rot.x,
                            D_80AC88F4[i] + this->tana->actor.shape.rot.y,
                            this->tana->actor.shape.rot.z, 
                            temp_v0);
    }
}
#else
#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Ossan/func_80AC2DD8.s")
#endif

#ifdef NON_MATCHING
void func_80AC2F2C(EnOssan* this, GlobalContext* globalCtx) {
    s32 i;
    OssanStruct1* sp24;
    s16 temp_v0;

    if (this->actor.params == 10) {
        sp24 = D_80AC89DC[this->actor.params];
        for (i = 0; i < 8; i++) {
            if ((sp24[i].funcIdx >= 0) && (this->unk_200[i] == NULL)) {
                temp_v0 = D_80AC8C9C[sp24[i].funcIdx](sp24[i].funcIdx);
                if (temp_v0 >= 0) {
                    this->unk_200[i] = (EnGirlA*)Actor_Spawn(&globalCtx->actorCtx, globalCtx, ACTOR_EN_GIRLA, 
                        sp24[i].pos.x + this->tana->actor.posRot.pos.x, 
                        sp24[i].pos.y + this->tana->actor.posRot.pos.y, 
                        sp24[i].pos.z + this->tana->actor.posRot.pos.z, 
                        this->tana->actor.shape.rot.x, 
                        this->tana->actor.shape.rot.y + D_80AC88F4[i], 
                        this->tana->actor.shape.rot.z, 
                        temp_v0);
                }
            }
        }
    }
}
#else
#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Ossan/func_80AC2F2C.s")
#endif

void func_80AC3098(GlobalContext* globalCtx) {
    func_8010B720(globalCtx, 0x9E);
}

void func_80AC30B8(GlobalContext* globalCtx) {
    if (globalCtx->curSpawn == 0) {
        func_8010B720(globalCtx, 0x5046);
        return;
    }
    func_8010B720(globalCtx, 0x504E);
}

void func_80AC30FC(GlobalContext* globalCtx) {
    func_8010B720(globalCtx, 0x504E);
}

void func_80AC311C(GlobalContext* globalCtx) {
    func_8010B720(globalCtx, 0x10BA);
}

void func_80AC313C(GlobalContext* globalCtx) {
    if (globalCtx->curSpawn == 0) {
        func_8010B720(globalCtx, 0x9D);
        return;
    }
    func_8010B720(globalCtx, 0x9C);
}

void func_80AC3180(GlobalContext* globalCtx) {
    func_8010B720(globalCtx, 0x7076);
}

void func_80AC31A0(GlobalContext* globalCtx) {
    if (LINK_AGE_IN_YEARS == YEARS_CHILD) {
        func_8010B720(globalCtx, 0x403A);
        return;
    }
    func_8010B720(globalCtx, 0x403B);
}

void func_80AC31F4(GlobalContext* globalCtx) {
    if (LINK_AGE_IN_YEARS == YEARS_CHILD) {
        if (gSaveContext.eventChkInf[2] & 0x20) {
            func_8010B720(globalCtx, 0x3028);
            return;
        } else {
            if (((s32)(gSaveContext.upgrades & gUpgradeMasks[2]) >> gUpgradeShifts[2])) {
                func_8010B720(globalCtx, 0x302D);
                return;
            }
            func_8010B720(globalCtx, 0x300F);
            return;
        }
    }
    if (!(gBitFlags[1] & gSaveContext.questItems)) {
        func_8010B720(globalCtx, 0x3057);
        return;
    }
    func_8010B720(globalCtx, 0x305B);
}

void func_80AC32C4(GlobalContext* globalCtx) {
    if (((gSaveContext.itemGetInf[3] & 0x100) != 0) &&
        ((gSaveContext.itemGetInf[3] & 0x200) != 0) &&
        ((gSaveContext.itemGetInf[3] & 0x400) != 0) &&
        ((gSaveContext.itemGetInf[3] & 0x800) != 0)) {
            func_8010B720(globalCtx, 0x70AE);
            return;
    }
    if (globalCtx->msgCtx.choiceIndex != 0) {
        if (globalCtx->msgCtx.choiceIndex == 1) {
            func_8010B720(globalCtx, 0x70A4);
            return;
        }
    } else {
        func_8010B720(globalCtx, 0x70A3);
    }
}

void func_80AC3350(EnOssan* this, GlobalContext* globalCtx, f32 arg2) {
    this->unk_2D4 = arg2;
    Camera_SetCameraData(ACTIVE_CAM, 0xC, NULL, NULL, (s32)arg2, 0, 0);
}

s32 func_80AC33B0(EnOssan* this, GlobalContext* globalCtx, s16* arg2) {

    if (arg2[1] != 0x192) {
        this->unk_1E9 = Object_GetIndex(&globalCtx->objectCtx, arg2[1]);
        if (this->unk_1E9 < 0) {
            return 0;
        }
    } else {
        this->unk_1E9 = -1;
    }

    if (arg2[2] != 0x192) {
        this->unk_1EA = Object_GetIndex(&globalCtx->objectCtx, arg2[2]);
        if (this->unk_1EA < 0) {
            return 0;
        }
    } else {
        this->unk_1EA = -1;
    }
    return 1;
}

void func_80AC7094(EnOssan*, GlobalContext*);

void EnOssan_Init(Actor* thisx, GlobalContext* globalCtx) {
    s32 pad;
    EnOssan* this = THIS;
    s16* tmp;

    if (this->actor.params == 6) {
        if (LINK_AGE_IN_YEARS != YEARS_CHILD) {
            this->actor.params = 9;
        }
    }

    if ((this->actor.params >= 0xB) && (this->actor.params < 0)) {
        Actor_Kill(thisx);
        osSyncPrintf(VT_COL(RED, WHITE));
        // Bad args
        osSyncPrintf("引数がおかしいよ(arg_data=%d)！！\n", this->actor.params);
        osSyncPrintf(VT_RST);
        __assert("0", "../z_en_oB1.c", 0x4DE);
        return;
    }

    if (this->actor.params == 10) {
        if ((gSaveContext.infTable[7] & 0x40) == 0) {
            Actor_Kill(thisx);
            return;
        }
    }
    if (this->actor.params == 1) {
        if (LINK_AGE_IN_YEARS == YEARS_CHILD) {
            Actor_Kill(thisx);
            return;
        }
    }
    if (this->actor.params == 2) {
        if ((gSaveContext.eventChkInf[2] & 0x20) == 0) {
            Actor_Kill(thisx);
            return;
        }
    }

    tmp = D_80AC8940[this->actor.params];

    this->unk_1E8 = Object_GetIndex(&globalCtx->objectCtx, tmp[0]);
    if (this->unk_1E8 < 0) {
        Actor_Kill(thisx);
        osSyncPrintf(VT_COL(RED, WHITE));
        // No bank
        osSyncPrintf("バンクが無いよ！！(%s)\n", D_80AC8914[this->actor.params]);
        osSyncPrintf(VT_RST);
        __assert("0", "../z_en_oB1.c", 0x504);
        return;
    }
    if (func_80AC33B0(this, globalCtx, tmp) == 0) {
        Actor_Kill(thisx);
        osSyncPrintf(VT_COL(RED, WHITE));
        // No reserve bank
        osSyncPrintf("予備バンクが無いよ！！(%s)\n", D_80AC8914[this->actor.params]);
        osSyncPrintf(VT_RST);
        __assert("0", "../z_en_oB1.c", 0x50F);
        return;
    }
    Actor_ProcessInitChain(thisx, sInitChain);
    func_80AC2CA0(this, func_80AC7094);
}

void EnOssan_Destroy(Actor* thisx, GlobalContext* globalCtx) {
    EnOssan* this = THIS;
    SkelAnime_Free(&this->skelAnime, globalCtx);
    Collider_DestroyCylinder(globalCtx, &this->collider);
}

void func_80AC3744(GlobalContext* globalCtx, EnOssan* this) {
    s16 sp1E;
    s16 sp1C;

    func_8002F374(globalCtx, &this->unk_200[this->unk_252]->actor, &sp1E, &sp1C);
    this->unk_230 = (f32)sp1E;
    this->unk_234 = (f32)sp1C;
}

u16 func_80AC6F2C(EnOssan*);

void func_80AC37A8(GlobalContext* globalCtx, EnOssan* this) {
    Player* player = PLAYER;

    osSyncPrintf(VT_FGCOL(YELLOW) "%s[%d]:★★★ 会話終了！！ ★★★" VT_RST "\n", "../z_en_oB1.c", 0x539);
    YREG(31) = 0;
    func_8002F194(&this->actor, globalCtx);
    globalCtx->msgCtx.msgMode = 0x36;
    globalCtx->msgCtx.unk_E3E7 = 4;
    player->stateFlags2 &= 0xDFFFFFFF;
    func_800BC490(globalCtx, 1);
    Interface_ChangeAlpha(50);
    this->unk_251 = 0;
    this->unk_288 = 0;
    this->unk_2C0 = 0;
    func_80AC3350(this, globalCtx, 0.0f);
    this->actor.textId = func_80AC6F2C(this);
    this->unk_1FC = 0;
}

s32 func_80AC3884(EnOssan* this, GlobalContext* globalCtx, Input* cont1) {
    if (CHECK_PAD(cont1->press, B_BUTTON)) {
        func_80AC37A8(globalCtx, this);
        return 1;
    }
    return 0;
}

s32 func_80AC38C8(EnOssan* this, GlobalContext* globalCtx, Input* cont1) {
    if (CHECK_PAD(cont1->press, B_BUTTON)) {
        this->unk_1FC = this->unk_1FE;
        func_8010B720(globalCtx, this->unk_200[this->unk_252]->actor.textId);
        return 1;
    }
    return 0;
}

void func_80AC39AC(GlobalContext*, EnOssan*);

void func_80AC3928(GlobalContext* globalCtx, EnOssan* this, u8 arg2) {
    YREG(31) = 1;
    this->unk_1F0 = 0;
    this->unk_1EE = this->unk_1F0;
    Interface_SetDoAction(globalCtx, 0x10);
    func_80AC3350(this, globalCtx, 0.0f);
    if (!arg2) {
        this->unk_1FC = 1;
        return;
    }
    func_80AC39AC(globalCtx, this);
}

void func_80AC39AC(GlobalContext* globalCtx, EnOssan* this) {
    this->unk_1FC = 2;
    if (this->actor.params == 0xA) {
        if ((gSaveContext.itemGetInf[3] & 0x100) && 
            (gSaveContext.itemGetInf[3] & 0x200) && 
            (gSaveContext.itemGetInf[3] & 0x400) && 
            (gSaveContext.itemGetInf[3] & 0x800)) {
                func_8010B720(globalCtx, 0x70AD);
        } else {
            func_8010B720(globalCtx, 0x70A2);
        }
    } else {
        func_8010B720(globalCtx, 0x83);
    }

    Interface_SetDoAction(globalCtx, 6);
    this->unk_2C0 = 1;
    this->unk_288 = 1;
    func_80AC3350(this, globalCtx, 0.0f);
}

void func_80AC3A80(GlobalContext* globalCtx, EnOssan* this) {
    this->unk_1FC = 3;
    D_80AC8984[this->actor.params](globalCtx);
    Interface_SetDoAction(globalCtx, 6);
    this->unk_288 = 0;
    this->unk_2C0 = 0;
}

void func_80AC3AE0(GlobalContext* globalCtx, EnOssan* this) {
    func_80078884(0x4809);
    this->unk_251 = 0;
    this->unk_1FC = 8;
}

void func_80AC3B18(EnOssan* this, GlobalContext* globalCtx, Player* player) {
    this->unk_1F0 = this->actor.yawTowardsLink - this->actor.shape.rot.y;
    if (func_8002F194(&this->actor, globalCtx)) {
        // Start talking
        osSyncPrintf(VT_FGCOL(YELLOW) "★★★ 会話開始！！ ★★★" VT_RST "\n");
        player->stateFlags2 |= 0x20000000;
        func_800BC590(globalCtx);
        func_80AC3928(globalCtx, this, 0);
        return;
    }
    if (this->actor.xzDistFromLink < 100.0f) {
        func_8002F2CC(&this->actor, globalCtx, 100);
    }
}

#ifdef NON_MATCHING
void func_80AC3BCC(GlobalContext* globalCtx, EnOssan* this) {
    s8 cont1 = globalCtx->state.input[0].rel.in.x;
    s8 cont2 = globalCtx->state.input[0].rel.in.y;
    this->unk_22C = 0;
    this->unk_22D = 0;

    if (this->unk_224 == 0) {
        if ((cont1 >= 31) || (cont1 < -30)) {
            this->unk_224 = cont1;
            this->unk_22C = 1;
        }
    } else {
        if ((cont1 < 31) && (cont1 >= -30)) {
            this->unk_224 = 0;
        } else {
            if ((this->unk_224 * cont1) < 0)  {
                this->unk_224 = cont1;
                this->unk_22C = 1;
            } else {
                this->unk_224 += cont1;
                if (this->unk_224 >= 0x7D1) {
                    this->unk_224 = 0x7D0;
                } else if (this->unk_224 < -0x7D0) {
                    this->unk_224 = -0x7D0;
                }
            }
        }
    }

    if (this->unk_228 == 0) {
        if ((cont2 >= 31) || (cont2 < -30)) {
            this->unk_228 = cont2;
            this->unk_22D = 1;
        }
    } else {
        if ((cont2 < 31) && (cont2 >= -30)) {
            this->unk_228 = 0;
        } else {
            if (((this->unk_228 * cont2) < 0)) {
                this->unk_228 = cont2;
                this->unk_22D = 1;
            } else {
                this->unk_228 += cont2;
                if (this->unk_228 >= 0x7D1) {
                    this->unk_228 = 0x7D0;
                } else if (this->unk_228 < -0x7D0) {
                    this->unk_228 = -0x7D0;
                }
            }
        }
    }
}
#else
#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Ossan/func_80AC3BCC.s")
#endif

u8 func_80AC3D18(EnOssan* this, u8 arg1) {
    u8 i;
    if (this->unk_252 & 1) {
        for (i = arg1+1; i < arg1+4; i += 2) {
            if (this->unk_200[i] != NULL) {
                return i;
            }
        }
        for (i = arg1; i < arg1+4; i += 2) {
            if (this->unk_200[i] != NULL) {
                return i;
            }
        }
    } else {
        for (i = arg1; i < arg1+4; i += 2) {
            if (this->unk_200[i] != NULL) {
                return i;
            }
        }
        for (i = arg1+1; i < arg1+4; i += 2) {
            if (this->unk_200[i] != NULL) {
                return i;
            }
        }
    }
    return 0xFF;
}

u8 func_80AC3E50(EnOssan* this, u8 arg1, u8 arg2) {
    u8 tmp = arg2 + 4;

    while ((arg1 >= arg2) && (arg1 < tmp)) {
        arg1 -= 2;
        if (((arg1 >= arg2) && (arg1 < tmp)) && (this->unk_200[arg1] != NULL)) {
            return arg1;
        }
    }

    return 0xFF;
}

u8 func_80AC3ED8(EnOssan* this, u8 arg1, u8 arg2) {
    while (arg1 < arg2) {
        arg1 += 2;
        if ((arg1 < arg2) && (this->unk_200[arg1] != NULL)) {
            return arg1;
        }
    }
    return 0xFF;
}

void func_80AC3F38(EnOssan* this, GlobalContext* globalCtx) {
    if (gSaveContext.rupees < D_80AC88EC[this->unk_1EB]) {
        func_8010B720(globalCtx, 0x70A8);
        this->unk_1EC = 1;
        this->unk_1EB = 5;
    } else {
        Rupees_ChangeBy(-D_80AC88EC[this->unk_1EB]);
        if (this->unk_1EB == 3) {
            gSaveContext.eventChkInf[8] |= 0x8000;
            func_8010B720(globalCtx, 0x70A9);
            this->unk_1EB = 6;
            return;
        }
        if (this->unk_1EB == 0) {
            gSaveContext.eventChkInf[8] |= 0x1000;
        } else {
            if (this->unk_1EB == 1) {
                gSaveContext.eventChkInf[8] |= 0x4000;
            } else {
                if (this->unk_1EB == 2) {
                    gSaveContext.eventChkInf[8] |= 0x2000;
                }
            }
        }
        func_8010B720(globalCtx, 0x70A7);
        this->unk_1EB = 8;
    }
    this->unk_1FC = 1;
}

void func_80AC4074(EnOssan* this, GlobalContext* globalCtx, Player* player) {
    Input* cont1 = &globalCtx->state.input[0];

    u8 msg = func_8010BDBC(&globalCtx->msgCtx);
    if ((this->actor.params == 10) && (msg == 4)) {
        if ((func_80AC3884(this, globalCtx, cont1) == 0) && (func_80106BC8(globalCtx))) {
            switch(globalCtx->msgCtx.choiceIndex) {
                case 0:
                    func_80AC39AC(globalCtx, this);
                    break;
                case 1:
                    func_80AC37A8(globalCtx, this);
                    break;
            }
        } else {
            return;
        }
    } else {
        if (msg == 5) {
            if (func_80106BC8(globalCtx)) {
                func_80078884(0x4818);
                //tmp = this->unk_1EB;
                switch(this->unk_1EB) {
                    case 6:
                        func_8010B720(globalCtx, 0x70AA);
                        this->unk_1FC = 0x19;
                        break;
                    case 4:
                        func_80AC37A8(globalCtx, this);
                        break;
                    case 0:
                    case 1:
                    case 2:
                    case 3:
                       func_80AC3F38(this, globalCtx);
                       break;
                    case 5:
                        globalCtx->nextEntranceIndex = 0x1D1;
                        globalCtx->sceneLoadFlag = 0x14;
                        globalCtx->fadeTransition = 0x2E;
                        break;
                    default:
                        if (!func_80AC3884(this, globalCtx, cont1)) {
                            // Move the stick left and right and look at the warez!
                            osSyncPrintf("「スティック左右で品物みてくれ！」\n");
                            func_80AC39AC(globalCtx, this);
                        }
                        break;
                }
            }
        }
    }
}

s32 func_80AC4220(EnOssan* this, GlobalContext* globalCtx) {
    switch(globalCtx->msgCtx.choiceIndex) {
        case 0:
            func_80AC3A80(globalCtx, this);
            return 1;
        case 1:
            func_80AC37A8(globalCtx, this);
            return 1;
    }
    return 0;
}

void func_80AC4288(EnOssan* this, GlobalContext* globalCtx, Player* player) {
    u8 temp_v0;

    if (func_8010BDBC(&globalCtx->msgCtx) == 4) {
        if (func_80AC3884(this, globalCtx, &globalCtx->state.input[0]) == 0) {
            if (func_80106BC8(globalCtx) != 0) {
                if (func_80AC4220(this, globalCtx) != 0) {
                    func_80078884(0x4808);
                    return;
                }
            }
            if (this->unk_224 < 0) {
                temp_v0 = func_80AC3D18(this, 4);
                if (temp_v0 != 0xFF) {
                    this->unk_252 = temp_v0;
                    this->unk_1FC = 4;
                    Interface_SetDoAction(globalCtx, 6);
                    this->unk_288 = 0;
                    func_80078884(0x4809);
                    return;
                }
            } else {
                if (this->unk_224 > 0) {
                    temp_v0 = func_80AC3D18(this, 0);
                    if (temp_v0 != 0xFF) {
                        this->unk_252 = temp_v0;
                        this->unk_1FC = 5;
                        Interface_SetDoAction(globalCtx, 6);
                        this->unk_2C0 = 0;
                        func_80078884(0x4809);
                    }
                }
            }
        }
    }
}

void func_80AC43A0(EnOssan* this, GlobalContext* globalCtx, Player* player) {
    if (func_8010BDBC(&globalCtx->msgCtx) == 5) {
        if (func_80106BC8(globalCtx)) {
            func_80AC39AC(globalCtx, this);
        }
    }
}

void func_80AC43F0(EnOssan* this, GlobalContext* globalCtx, Player* player) {
    Math_SmoothScaleMaxF(&this->unk_2D4, 30.0f, 0.5f, 10.0f);
    if (29.5f < this->unk_2D4) {
        func_80AC3350(this, globalCtx, 30.0f);
    }
    func_80AC3350(this, globalCtx, this->unk_2D4);
    if (30.0f <= this->unk_2D4) {
        func_80AC3350(this, globalCtx, 30.0f);
        func_80AC3744(globalCtx, this);
        this->unk_1FC = (u16)6;
        func_8010B720(globalCtx, this->unk_200[this->unk_252]->actor.textId);
        return;
    }
    this->unk_224 = 0;
}

void func_80AC44DC(EnOssan* this, GlobalContext* globalCtx, Player* player) {
    Math_SmoothScaleMaxF(&this->unk_2D4, -30.0f, 0.5f, 10.0f);
    if (this->unk_2D4 < -29.5f) {
        func_80AC3350(this, globalCtx, -30.0f);
    }
    func_80AC3350(this, globalCtx, this->unk_2D4);
    if (this->unk_2D4 <= -30.0f) {
        func_80AC3350(this, globalCtx, -30.0f);
        func_80AC3744(globalCtx, this);
        this->unk_1FC = 7;
        func_8010B720(globalCtx, this->unk_200[this->unk_252]->actor.textId);
        return;
    }
    this->unk_224 = 0;
}


void func_80AC45C8(EnOssan* this) {
    u8 phi_v0;
    u8 temp_v0 = this->unk_252;

    if (this->unk_228 < 0) {
        temp_v0 &= 0xFE;
        if (this->unk_200[temp_v0] != NULL) {
            this->unk_252 = temp_v0;
            return;
        } else {
            if (temp_v0 < 4) {
                phi_v0 = temp_v0 + 2;
                if (phi_v0 >= 4) {
                    phi_v0 = 0;
                }
                while (phi_v0 != temp_v0) {
                    if (this->unk_200[phi_v0] != NULL) {
                        this->unk_252 = phi_v0;
                        return;
                    }
                    phi_v0 += 2;
                    if (phi_v0 >= 4) {
                        phi_v0 = 0;
                    }
                }
            } else {
                phi_v0 = temp_v0 + 2;
                if (phi_v0 >= 8) {
                    phi_v0 = 4;
                }
                while (phi_v0 != temp_v0) {
                    if (this->unk_200[phi_v0] != NULL) {
                        this->unk_252 = phi_v0;
                        return;
                    }
                    phi_v0 += 2;
                    if (phi_v0 >= 8) {
                        phi_v0 = 4;
                    }
                }
            }
        }
        return;
    }

    if (this->unk_228 > 0) {
        temp_v0 |= 1;
        if (this->unk_200[temp_v0] != NULL) {
            this->unk_252 = temp_v0;
            return;
        } else {
            if (temp_v0 < 4) {
                phi_v0 = temp_v0 + 2;
                if (phi_v0 >= 4) {
                    phi_v0 = 1;
                }
                while (phi_v0 != temp_v0) {
                    if (this->unk_200[phi_v0] != NULL) {
                        this->unk_252 = phi_v0;
                        return;
                    }
                    phi_v0 += 2;
                    if (phi_v0 >= 4) {
                        phi_v0 = 1;
                    }
                }
            } else {
                phi_v0 = temp_v0 + 2;
                if (phi_v0 >= 8) {
                    phi_v0 = 5;
                }
                while (phi_v0 != temp_v0) {
                    if (this->unk_200[phi_v0] != NULL) {
                        this->unk_252 = phi_v0;
                        return;
                    }
                    phi_v0 += 2;
                    if (phi_v0 >= 8) {
                        phi_v0 = 5;
                    }
                }
            }
        }
    }
}

s32 func_80AC47DC(GlobalContext* globalCtx, EnOssan* this, Input* cont1) {
    EnGirlA* girlA = this->unk_200[this->unk_252];

    if (func_80AC3884(this, globalCtx, cont1) != 0) {
        return 1;
    }
    if (func_80106BC8(globalCtx)) {
        if (!(girlA->actor.params == 0x26) && !girlA->unk_1A8) {
            this->unk_1FE = this->unk_1FC;
            func_8010B720(globalCtx, this->unk_200[this->unk_252]->unk_1A0);
            this->unk_288 = 0;
            this->unk_2C0 = 0;
            switch (girlA->actor.params) {
                case 30:
                case 31:
                case 32:
                case 33:
                case 34:
                case 35:
                case 36:
                case 37:
                    func_80078884(0x4808);
                    this->unk_251 = 0;
                    this->unk_1FC = 0x18;
                    return 1;
                case 17:
                    func_80078884(0x4808);
                    this->unk_251 = 0;
                    this->unk_1FC = 0xA;
                    return 1;
                case 18:
                    func_80078884(0x4808);
                    this->unk_251 = 0;
                    this->unk_1FC = 0xB;
                    return 1;
                case 19:
                case 20:
                    func_80078884(0x4806);
                    this->unk_251 = 0;
                    this->unk_1FC = 0xC;
                    return 1;
                case 3:
                case 6:
                case 45:
                case 46:
                case 47:
                    func_80078884(0x4808);
                    this->unk_251 = 0;
                    this->unk_1FC = 0xD;
                    return 1;
                default:
                    func_80078884(0x4808);
                    this->unk_251 = 0;
                    this->unk_1FC = 9;
                    return 1;
            }
        } else {
            func_80078884(0x4806);
            return 1;
        }
    }
    return 0;
}

s32 func_80AC652C(EnOssan*);

void func_80AC4978(EnOssan* this, GlobalContext* globalCtx, Player* player) {
    s32 pad;
    s32 idx;
    u8 tmp = this->unk_252;

    if (!func_80AC652C(this)) {
        // ZOOMING!
        osSyncPrintf("%s[%d]:" VT_FGCOL(GREEN) "ズーム中！！" VT_RST "\n", "../z_en_oB1.c", 0x868);
        this->unk_1E6 = 3;
        return;
    }
    if (this->unk_1E6) {
        this->unk_1E6--;
        return;
    }
    this->unk_251 = 0xFF;
    this->unk_2C0 = 1;
    func_80AC3744(globalCtx, this);
    if (func_8010BDBC(&globalCtx->msgCtx) == 5) {
        if (func_80AC47DC(globalCtx, this, &globalCtx->state.input[0]) == 0) {
            if (this->unk_22C) {
                if (this->unk_224 > 0) {
                    idx = func_80AC3E50(this, this->unk_252, 4);
                    if (idx != 0xFF) {
                        this->unk_252 = idx;
                    } else {
                        func_80AC3AE0(globalCtx, this);
                        return;
                    }
                } else {
                    if (this->unk_224 < 0) {
                        idx = func_80AC3ED8(this, this->unk_252, 8);
                        if (idx != 0xFF) {
                            this->unk_252 = idx;
                        }
                    }
                }
            } else {
                if ((this->unk_224 > 0) && (this->unk_224 >= 0x1F5)) {
                    idx = func_80AC3E50(this, this->unk_252, 4);
                    if (idx != 0xFF) {
                        this->unk_252 = idx;
                    } else {
                        func_80AC3AE0(globalCtx, this);
                        return;
                    }
                } else {
                    if (this->unk_224 < 0) {
                        if (this->unk_224 < -0x1F4) {
                            idx = func_80AC3ED8(this, this->unk_252, 8);
                            if (idx != 0xFF) {
                                this->unk_252 = idx;
                            }
                        }
                    }
                }
            }
            func_80AC45C8(this);
            if (this->unk_252 != tmp) {
                func_8010B720(globalCtx, this->unk_200[this->unk_252]->actor.textId);
                func_80078884(0x4809);
            }
        }
    }
}

void func_80AC4B4C(EnOssan* this, GlobalContext* globalCtx, Player* player) {
    s32 pad;
    s32 idx;
    u8 tmp = this->unk_252;

    if (func_80AC652C(this) == 0) {
        osSyncPrintf("%s[%d]:" VT_FGCOL(GREEN) "ズーム中！！" VT_RST "\n", "../z_en_oB1.c", 0x8C4);
        this->unk_1E6 = 3;
        return;
    }
    if (this->unk_1E6 != 0) {
        this->unk_1E6 -= 1;
        return;
    }
    this->unk_251 = 0xFF;
    this->unk_288 = 1;
    func_80AC3744(globalCtx, this);
    if (func_8010BDBC(&globalCtx->msgCtx) == 5) {
        if (func_80AC47DC(globalCtx, this, &globalCtx->state.input[0]) == 0) {
            if (this->unk_22C) {
                if (this->unk_224 < 0) {
                    idx = func_80AC3E50(this, this->unk_252, 0);
                    if (idx != 0xFF) {
                        this->unk_252 = idx;
                    } else {
                        func_80AC3AE0(globalCtx, this);
                        return;
                    }
                } else {
                    if (this->unk_224 > 0) {
                        idx = func_80AC3ED8(this, this->unk_252, 4);
                        if (idx != 0xFF) {
                            this->unk_252 = idx;
                        }
                    }
                }
            } else {
                if ((this->unk_224 < 0) && (this->unk_224 < -0x1F4)) {
                    idx = func_80AC3E50(this, this->unk_252, 0);
                    if (idx != 0xFF) {
                        this->unk_252 = idx;
                    } else {
                        func_80AC3AE0(globalCtx, this);
                        return;
                    }
                } else {
                    if (this->unk_224 > 0) {
                        if (this->unk_224 >= 0x1F5) {
                            idx = func_80AC3ED8(this, this->unk_252, 4);
                            if (idx != 0xFF) {
                                this->unk_252 = idx;
                            }
                        }
                    }
                }
            }
            func_80AC45C8(this);
            if (this->unk_252 != tmp) {
                func_8010B720(globalCtx, this->unk_200[this->unk_252]->actor.textId);
                func_80078884(0x4809);
            }
        }
    }
}

void func_80AC4D20(EnOssan* this, GlobalContext* globalCtx, Player* player) {
    Math_SmoothScaleMaxF(&this->unk_2D4, 0.0f, 0.5f, 10.0f);
    if (this->unk_2D4 < 0.5f) {
        if (-0.5f < this->unk_2D4) {
            func_80AC3350(this, globalCtx, 0.0f);
        }
    }
    func_80AC3350(this, globalCtx, this->unk_2D4);
    if (0.0f == this->unk_2D4) {
        func_80AC39AC(globalCtx, this);
    }
}

void func_80AC4DDC(EnOssan* this, GlobalContext* globalCtx, Player* player) {
    if (func_80AC652C(this) == 0) {
        osSyncPrintf("%s[%d]:" VT_FGCOL(GREEN) "ズーム中！！" VT_RST "\n", "../z_en_oB1.c", 0x933);
        return;
    }
    Math_SmoothScaleMaxF(&this->unk_2D4, 0.0f, 0.5f, 10.0f);
    if (this->unk_2D4 < 0.5f) {
        if (-0.5f < this->unk_2D4) {
            func_80AC3350(this, globalCtx, 0.0f);
        }
    }
    func_80AC3350(this, globalCtx, this->unk_2D4);
    if (0.0f == this->unk_2D4) {
        func_8010B720(globalCtx, 0x3010);
        this->unk_1FC = 0x14;
    }
}

void func_80AC4EC8(GlobalContext* globalCtx, EnOssan* this) {
    Player* player = PLAYER;

    // Obtained for the first time!
    osSyncPrintf("\n" VT_FGCOL(YELLOW) "初めて手にいれた！！" VT_RST "\n\n");
    func_8002F434(&this->actor, globalCtx, this->unk_200[this->unk_252]->unk_1A4, 120.0f, 120.0f);
    globalCtx->msgCtx.msgMode = 0x36;
    globalCtx->msgCtx.unk_E3E7 = 4;
    player->stateFlags2 &= 0xDFFFFFFF;
    func_800BC490(globalCtx, 1);
    Interface_ChangeAlpha(0x32);
    this->unk_251 = 0;
    func_80AC3350(this, globalCtx, 0.0f);
    this->unk_1FC = 0xF;
    // Start item pickup
    osSyncPrintf(VT_FGCOL(YELLOW) "持ち上げ開始！！" VT_RST "\n\n");
}

void func_80AC4FAC(GlobalContext* globalCtx, EnOssan* this, u32 arg2) {
    u32* new_var = &arg2;
    u32 new_var2 = *new_var;

    func_8010B720(globalCtx, new_var2);
    this->unk_1FC = 0xE;
    return;
}

void func_80AC4FE0(GlobalContext* globalCtx, EnOssan* this, u16 arg2) {
    func_8010B720(globalCtx, arg2);
    this->unk_1FC = 0x17;
}

void func_80AC62C4(GlobalContext*, EnOssan*);

void func_80AC5014(GlobalContext* globalCtx, EnOssan* this) {
    EnGirlA* girlA = this->unk_200[this->unk_252];

    switch (girlA->unk_1BC(globalCtx, girlA)) {
        case 0:
            if ((girlA->actor.params == 0xC) && ((gSaveContext.infTable[7]) & 0x40)) {
                func_80AC62C4(globalCtx, this);
            } else {
                func_80AC4EC8(globalCtx, this);
                this->unk_251 = 0;
                this->unk_2D0 = 0.0f;
                girlA->unk_1AC(globalCtx, girlA);
            }
            return;
        case 1:
            girlA->unk_1C0(globalCtx, girlA);
            func_80AC4FE0(globalCtx, this, 0x84);
            this->unk_251 = 0;
            this->unk_2D0 = 0.0f;
            girlA->unk_1AC(globalCtx, girlA);
            return;
        case 2:
            func_80078884(0x4806);
            func_80AC4FAC(globalCtx, this, 0x86);
            return;
        case 3:
            func_80078884(0x4806);
            func_80AC4FAC(globalCtx, this, 0x96);
            return;
        case 4:
            func_80078884(0x4806);
            func_80AC4FAC(globalCtx, this, 0x85);
            return;
        case 5:
            func_80078884(0x4806);
            func_80AC4FAC(globalCtx, this, 0x86);
            return;
    }
}

void func_80AC51B8(GlobalContext* globalCtx, EnOssan* this) {
    EnGirlA* girlA = this->unk_200[this->unk_252];

    switch(girlA->unk_1BC(globalCtx, girlA)) {
        case 0:
            func_8010B720(globalCtx, 0x9C);
            this->unk_1FC = 0x12;
            this->unk_251 = 0;
            return;
        case 1:
            girlA->unk_1C0(globalCtx, girlA);
            func_80AC4FE0(globalCtx, this, 0x98);
            this->unk_251 = 0;
            this->unk_2D0 = 0.0f;
            girlA->unk_1AC(globalCtx, girlA);
            return;
        case 3:
            func_80AC4FAC(globalCtx, this, 0x96);
            return;
        case 4:
            func_80AC4FAC(globalCtx, this, 0x85);
            return;
    }
}

void func_80AC52C0(GlobalContext* globalCtx, EnOssan* this) {
    EnGirlA* girlA = this->unk_200[this->unk_252];

    switch(girlA->unk_1BC(globalCtx, girlA)) {
        case 0:
            func_80AC4EC8(globalCtx, this);
            this->unk_251 = 0;
            this->unk_2D0 = 0.0f;
            girlA->unk_1AC(globalCtx, girlA);
            return;
        case 1:
            girlA->unk_1C0(globalCtx, girlA);
            func_80AC4FE0(globalCtx, this, 0x9A);
            this->unk_251 = (u8)0;
            this->unk_2D0 = 0.0f;
            girlA->unk_1AC(globalCtx, girlA);
            return;
        case 2:
            func_80078884(0x4806);
            func_80AC4FAC(globalCtx, this, 0x9D);
            return;
        case 4:
            func_80078884(0x4806);
            func_80AC4FAC(globalCtx, this, 0x85);
            return;
    }
}

void func_80AC53F4(GlobalContext* globalCtx, EnOssan* this) {
    EnGirlA* girlA = this->unk_200[this->unk_252];

    switch(girlA->unk_1BC(globalCtx, girlA)) {
        case 0:
        case 1:
            girlA->unk_1C0(globalCtx, girlA);
            func_80AC4FE0(globalCtx, this, 0x84);
            this->unk_251 = (u8)0;
            this->unk_2D0 = 0.0f;
            girlA->unk_1AC(globalCtx, girlA);
            return;
        case 2:
            func_80078884(0x4806);
            func_80AC4FAC(globalCtx, this, 0x86);
            return;
        case 4:
            func_80078884(0x4806);
            func_80AC4FAC(globalCtx, this, 0x85);
            return;
    }
}

void func_80AC54F4(GlobalContext* globalCtx, EnOssan* this) {
    if (LINK_AGE_IN_YEARS == YEARS_CHILD) {
        if ((gSaveContext.eventChkInf[2] & 0x20) == 0) {
            if (gSaveContext.infTable[15] & 0x1000) {
                func_80AC4FAC(globalCtx, this, 0x302E);
            } else {
                this->unk_288 = 0;
                this->unk_2C0 = 0;
                this->unk_251 = 0;
                this->unk_1FC = 0x13;
            }
        } else {
            func_80AC53F4(globalCtx, this);
        }
    } else {
        func_80AC53F4(globalCtx, this);
    }
}

s32 func_80AC6490(EnOssan*);

void func_80AC5594(EnOssan* this, GlobalContext* globalCtx, Player* player) {
    Input* cont1 = &globalCtx->state.input[0];

    if (func_80AC6490(this) == 0) {
        // Zooming
        osSyncPrintf("%s[%d]:" VT_FGCOL(GREEN) "ズーム中！！" VT_RST "\n", "../z_en_oB1.c", 0xA5E);
        return;
    }
    if (func_8010BDBC(&globalCtx->msgCtx) == 4) {
        if (func_80AC38C8(this, globalCtx, cont1) == 0) {
            if (func_80106BC8(globalCtx) != 0) {
                switch(globalCtx->msgCtx.choiceIndex) {
                    case 0:
                        func_80AC5014(globalCtx, this);
                        return;
                    case 1:
                        this->unk_1FC = this->unk_1FE;
                        func_8010B720(globalCtx, this->unk_200[this->unk_252]->actor.textId);
                        return;
                }
            }
        }
    }
}

void func_80AC5680(EnOssan* this, GlobalContext* globalCtx, Player* player) {
    Input* cont1 = &globalCtx->state.input[0];

    if (func_80AC6490(this) == 0) {
        osSyncPrintf("%s[%d]:" VT_FGCOL(GREEN) "ズーム中！！" VT_RST "\n", "../z_en_oB1.c", 0xA85);
        return;
    }
    if (func_8010BDBC(&globalCtx->msgCtx) == 4) {
        if (func_80AC38C8(this, globalCtx, cont1) == 0) {
            if (func_80106BC8(globalCtx) != 0) {
                switch(globalCtx->msgCtx.choiceIndex) {
                    case 0:
                        func_80AC51B8(globalCtx, this);
                        return;
                    case 1:
                        this->unk_1FC = (s16) this->unk_1FE;
                        func_8010B720(globalCtx, this->unk_200[this->unk_252]->actor.textId);
                        return;
                }
            }
        }
    }
}

void func_80AC576C(EnOssan* this, GlobalContext* globalCtx, Player* player) {
    Input* cont1 = &globalCtx->state.input[0];

    if (func_80AC6490(this) == 0) {
        osSyncPrintf("%s[%d]:" VT_FGCOL(GREEN) "ズーム中！！" VT_RST "\n", "../z_en_oB1.c", 0xAAC);
        return;
    }
    if (func_8010BDBC(&globalCtx->msgCtx) == 4) {
        if (func_80AC38C8(this, globalCtx, cont1) == 0) {
            if (func_80106BC8(globalCtx) != 0) {
                switch(globalCtx->msgCtx.choiceIndex) {
                    case 0:
                        func_80AC52C0(globalCtx, this);
                        return;
                    case 1:
                        this->unk_1FC = this->unk_1FE;
                        func_8010B720(globalCtx, this->unk_200[this->unk_252]->actor.textId);
                        return;
                }
            }
        }
    }
}

void func_80AC5858(EnOssan* this, GlobalContext* globalCtx, Player* player) {
    Input* cont1 = &globalCtx->state.input[0];

    if (func_80AC6490(this) == 0) {
        osSyncPrintf("%s[%d]:" VT_FGCOL(GREEN) "ズーム中！！" VT_RST "\n", "../z_en_oB1.c", 0xAD3);
        return;
    }
    if (func_8010BDBC(&globalCtx->msgCtx) == 5) {
        if (func_80106BC8(globalCtx) != 0) {
            this->unk_1FC = this->unk_1FE;
            func_8010B720(globalCtx, this->unk_200[this->unk_252]->actor.textId);
        }
    }
}

void func_80AC5900(EnOssan* this, GlobalContext* globalCtx, Player* player) {
    Input* cont1 = &globalCtx->state.input[0];

    if (func_80AC6490(this) == 0) {
        osSyncPrintf("%s[%d]:" VT_FGCOL(GREEN) "ズーム中！！" VT_RST "\n", "../z_en_oB1.c", 0xAEE);
        return;
    }
    osSyncPrintf("店主の依頼 ( %d )\n", gSaveContext.infTable[15] & 0x1000);
    if (this->actor.params != 8) {
        func_80AC5594(this, globalCtx, player);
        return;
    }
    if (func_8010BDBC(&globalCtx->msgCtx) == 4) {
        if (func_80AC38C8(this, globalCtx, globalCtx->state.input) == 0) {
            if (func_80106BC8(globalCtx) != 0) {
                switch (globalCtx->msgCtx.choiceIndex) {
                    case 0:
                        func_80AC54F4(globalCtx, this);
                        return;
                    case 1:
                        this->unk_1FC = this->unk_1FE;
                        func_8010B720(globalCtx, this->unk_200[this->unk_252]->actor.textId);
                        return;
                }
            }
        }
    }
}

void func_80AC5A28(EnOssan* this, GlobalContext* globalCtx, Player* player) {
    u8 msg;
    EnGirlA* girlA;
    Input* cont1 = &globalCtx->state.input[0];

    msg = func_8010BDBC(&globalCtx->msgCtx);
    girlA = this->unk_200[this->unk_252];
    if (func_80AC6490(this) == 0) {
        osSyncPrintf("%s[%d]:" VT_FGCOL(GREEN) "ズーム中！！" VT_RST "\n", "../z_en_oB1.c", 0xB1D);
        return;
    }
    if (msg == 5) {
        if (func_80106BC8(globalCtx)) {
            this->unk_1FC = this->unk_1FE;
            func_8010B720(globalCtx, this->unk_200[this->unk_252]->actor.textId);
            return;
        }
    } else {
        if (msg == 4) {
            if ((func_80AC38C8(this, globalCtx, cont1) == 0) && (func_80106BC8(globalCtx))) {
                switch (globalCtx->msgCtx.choiceIndex) {
                    case 0:
                        switch (girlA->actor.params) {
                            case 30:
                                gSaveContext.itemGetInf[2] |= 8;
                                break;
                            case 31:
                                gSaveContext.itemGetInf[2] |= 0x20;
                                break;
                            case 32:
                                gSaveContext.itemGetInf[2] |= 0x10;
                                break;
                            case 33:
                            case 34:
                            case 35:
                            case 36:
                            case 37:
                                gSaveContext.itemGetInf[2] |= 0x40;
                        }
                        func_80AC4EC8(globalCtx, this);
                        this->unk_251 = 0;
                        this->unk_2D0 = 0.0f;
                        girlA->unk_1AC(globalCtx, girlA);
                        break;
                        
                    case 1:
                        this->unk_1FC = this->unk_1FE;
                        func_8010B720(globalCtx, this->unk_200[this->unk_252]->actor.textId);
                        break;
                }
            }
        }
    }
}

void func_80AC5C24(EnOssan* this, GlobalContext* globalCtx, Player* player) {
    if (func_8010BDBC(&globalCtx->msgCtx) == 5) {
        if (func_80106BC8(globalCtx)) {
            this->unk_1FC = this->unk_1FE;
            func_8010B720(globalCtx, this->unk_200[this->unk_252]->actor.textId);
        }
    }
}

void func_80AC646C(EnOssan*);

void func_80AC5C9C(EnOssan* this, GlobalContext* globalCtx, Player* player) {
    if (func_8010BDBC(&globalCtx->msgCtx) == 5) {
        if (func_80106BC8(globalCtx)) {
            this->unk_2D0 = 0.0f;
            func_80AC646C(this);
            this->unk_200[this->unk_252]->unk_1B0(globalCtx, this->unk_200[this->unk_252]);
            this->unk_1FC = this->unk_1FE;
            func_8010B720(globalCtx, this->unk_200[this->unk_252]->actor.textId);
        }
    }
}

void func_80AC5D40(EnOssan* this, GlobalContext* globalCtx, Player* player) {
    if (func_8002F410(&this->actor, globalCtx)) {
        this->actor.attachedA = NULL;
        this->unk_1FC = 0x10;
        return;
    }
    func_8002F434(&this->actor, globalCtx, this->unk_200[this->unk_252]->unk_1A4, 120.0f, 120.0f);
}

void func_80AC5DAC(EnOssan* this, GlobalContext* globalCtx, Player* player) {
    u8 msg;
    EnGirlA* girlA;

    msg = func_8010BDBC(&globalCtx->msgCtx);
    if (msg == 6) {
        if (func_80106BC8(globalCtx)) {
            if (this->actor.params == 0xA) {
                girlA = this->unk_200[this->unk_252];
                func_80AC646C(this);
                this->unk_200[this->unk_252]->unk_1B0(globalCtx, this->unk_200[this->unk_252]);
                if ((girlA->actor.params == 0x22) && !(gSaveContext.itemGetInf[3] & 0x8000)) {
                    gSaveContext.itemGetInf[3] |= 0x8000;
                    func_8010B720(globalCtx, 0x70AB);
                    this->unk_1EB = 4;
                    func_80AC2F2C(this, globalCtx);
                    this->unk_1FC = 1;
                    return;
                }
                func_80AC37A8(globalCtx, this);
                return;
            }
            this->unk_200[this->unk_252]->unk_1C4(globalCtx, this->unk_200[this->unk_252]);
            this->unk_1FC = 0x11;
            func_8010B720(globalCtx, 0x6B);
        }
    }
}

void func_80AC5EF0(EnOssan* this, GlobalContext* globalCtx, Player* player) {
    u8 msg = func_8010BDBC(&globalCtx->msgCtx);

    if (msg == 4) {
        if (func_80106BC8(globalCtx)) {
            func_80AC646C(this);
            this->unk_200[this->unk_252]->unk_1B0(globalCtx, this->unk_200[this->unk_252]);
            if (func_80AC3884(this, globalCtx, &globalCtx->state.input[0]) == 0) {
                switch (globalCtx->msgCtx.choiceIndex) {
                    case 0:
                        // Continuing
                        osSyncPrintf(VT_FGCOL(YELLOW) "★★★ 続けるよ！！ ★★★" VT_RST "\n");
                        player->actor.shape.rot.y += 0x8000;
                        player->stateFlags2 |= 0x20000000;
                        func_800BC490(globalCtx, 2);
                        func_8010B680(globalCtx, this->actor.textId, &this->actor);
                        func_80AC3928(globalCtx, this, 1);
                        func_8002F298(&this->actor, globalCtx, 100.0f, -1);
                        break;
                    case 1:
                    default:
                        // Stopping
                        osSyncPrintf(VT_FGCOL(YELLOW) "★★★ やめるよ！！ ★★★" VT_RST "\n");
                        func_80AC37A8(globalCtx, this);
                        break;
                }
            }
        }
    } else if (msg == 5) {
        if (func_80106BC8(globalCtx) != 0) {
            func_80AC646C(this);
            this->unk_200[this->unk_252]->unk_1B0(globalCtx, this->unk_200[this->unk_252]);
            player->actor.shape.rot.y += 0x8000;
            player->stateFlags2 |= 0x20000000;
            func_800BC490(globalCtx, 2);
            func_8010B680(globalCtx, this->actor.textId, &this->actor);
            func_80AC3928(globalCtx, this, 1);
            func_8002F298(&this->actor, globalCtx, 100.0f, -1U);
        }
    }
}

void func_80AC60E4(EnOssan* this, GlobalContext* globalCtx, Player* player) {
    if (func_8010BDBC(&globalCtx->msgCtx) == 5) {
        if (func_80106BC8(globalCtx)) {
            gSaveContext.infTable[15] |= 0x1000;
            func_80AC39AC(globalCtx, this);
        }
    }
}

void func_80AC6148(EnOssan* this, GlobalContext* globalCtx, Player* player) {
    if (func_8010BDBC(&globalCtx->msgCtx) == 1) {
        if (func_80106BC8(globalCtx)) {
            this->unk_1FC = 0x16;
            func_8010B720(globalCtx, 0x3012U);
            gSaveContext.infTable[15] |= 0x1000;
        }
    }
}

void func_80AC61B8(EnOssan* this, GlobalContext* globalCtx, Player* player) {
    if (func_8010BDBC(&globalCtx->msgCtx) == 5) {
        if (func_80106BC8(globalCtx)) {
            func_80AC39AC(globalCtx, this);
        }
    }
}

void func_80AC6208(EnOssan* this, GlobalContext* globalCtx, Player* player) {
    if (func_8010BDBC(&globalCtx->msgCtx) == 5) {
        if (func_80106BC8(globalCtx)) {
            func_80AC4EC8(globalCtx, this);
        }
    }
}

void func_80AC6258(EnOssan* this, GlobalContext* globalCtx, Player* player) {
    if (func_8010BDBC(&globalCtx->msgCtx) == 5) {
        if (func_80106BC8(globalCtx)) {
            gSaveContext.itemGetInf[2] |= 0x400;
            this->unk_252 = 2;
            func_80AC4EC8(globalCtx, this);
        }
    }
}

void func_80AC62C4(GlobalContext* globalCtx, EnOssan* this) {
    func_8010B720(globalCtx, 0x71B2);
    this->unk_1FC = 0x1A;
}

void func_80AC62F4(EnOssan* this, GlobalContext* globalCtx, Player* player) {
    EnGirlA* girlA;

    if (func_8010BDBC(&globalCtx->msgCtx) == 6) {
        if (func_80106BC8(globalCtx) != 0) {
            girlA = this->unk_200[this->unk_252];
            func_80AC4EC8(globalCtx, this);
            this->unk_251 = 0;
            this->unk_2D0 = 0.0f;
            girlA->unk_1AC(globalCtx, girlA);
        }
    }
}

#ifdef NON_MATCHING
void func_80AC6384(EnOssan* this) {
    EnGirlA* girlA;
    OssanStruct1* tmp2 = &D_80AC89DC[this->actor.params][this->unk_252];
    Vec3f* tmp = &D_80AC8D6C[(u8)(this->unk_252 >> 2)];

    f32 tmp4 = tmp2->pos.x;
    f32 tmp5 = tmp2->pos.y;
    f32 tmp6 = tmp2->pos.z;

    girlA = this->unk_200[this->unk_252];
    girlA->actor.posRot.pos.x = this->tana->actor.posRot.pos.x + (((tmp->x - tmp4) * this->unk_2D0) + tmp4);
    girlA->actor.posRot.pos.y = this->tana->actor.posRot.pos.y + (((tmp->y - tmp5) * this->unk_2D0) + tmp5);
    girlA->actor.posRot.pos.z = this->tana->actor.posRot.pos.z + (((tmp->z - tmp6) * this->unk_2D0) + tmp6);
}
#else
#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Ossan/func_80AC6384.s")
#endif

void func_80AC6384(EnOssan*);

void func_80AC646C(EnOssan* this) {
    this->unk_2D0 = 0.0f;
    func_80AC6384(this);
}

s32 func_80AC6490(EnOssan* this) {
    Math_SmoothScaleMaxF(&this->unk_2D0, 1.0f, 1.0f, 0.15f);
    if (0.85f <= this->unk_2D0) {
        this->unk_2D0 = 1.0f;
    }
    func_80AC6384(this);
    if (this->unk_2D0 == 1.0f) {
        return 1;
    }
    return 0;
}

s32 func_80AC652C(EnOssan* this) {
    Math_SmoothScaleMaxF(&this->unk_2D0, 0.0f, 1.0f, 0.15f);
    if (this->unk_2D0 <= 0.15f) {
        this->unk_2D0 = 0.0f;
    }
    func_80AC6384(this);
    if (this->unk_2D0 == 0.0f) {
        return 1;
    }
    return 0;
}

void func_80AC65B8(EnOssan* this) {
    EnGirlA** actor = this->unk_200;
    EnGirlA* actor2;
    s32 i;
    
    for (i = 0; i < 8; i++) {
        actor2 = *actor;
        if (actor2) {
            if ((this->unk_1FC != 9)    &&
                (this->unk_1FC != 10)   &&
                (this->unk_1FC != 11)   &&
                (this->unk_1FC != 12)   &&
                (this->unk_1FC != 13)   &&
                (this->unk_1FC != 0x18) &&
                (this->unk_1FC != 14)   && 
                (this->unk_251 == 0)) {
                    actor2->unk_1B4 = 0;
            } else {
                if (i == this->unk_252) {
                    actor2->unk_1B4 = 1;
                } else {
                    actor2->unk_1B4 = 0;
                }
            }
        }
        actor++;
    }
}

#ifdef NON_MATCHING
void func_80AC66F4(EnOssan* this) {
    f32 phi_f0 = this->unk_24C;
    f32 temp_v0;

    if (this->unk_250 == 0) {
        phi_f0 += 0.05f;
        if (phi_f0 >= 1.0f) {
            phi_f0 = 1.0f;
            this->unk_250 = 1;
        }
    } else {
        phi_f0 -= 0.05f;
        if (phi_f0 <= 0.0f) {
            phi_f0 = 0.0f;
            this->unk_250 = 0;
        }
    }
    temp_v0 = 0.0f;

    this->unk_24C = phi_f0;
    this->unk_23C = (-(s32)temp_v0) & 0xFF;
    this->unk_240 = (0xFF - (s32)(80.0f * phi_f0)) & 0xFF;

    this->unk_244 = (0x50 - (s32)phi_f0) & 0xFF;
    this->unk_248 = (0xFF - (s32)phi_f0) & 0xFF;
}
#else
#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Ossan/func_80AC66F4.s")
#endif
#undef NON_MATCHING

void func_80AC67C4(EnOssan*);

#ifdef NON_MATCHING
void func_80AC67C4(EnOssan* this) {
    f32 temp_f2 = this->unk_2C4;
    f32 temp_f0 = this->unk_2C8;
    s32 tmp;
    s32 tmp2;
    s32 tmp3;
    s32 tmp4;
    s32 tmp5;

    if (this->unk_2CC == 0) {
        temp_f2 += 0.05f;
        if (temp_f2 > 1.0f) {
            temp_f2 = 1.0f;
            this->unk_2CC = 1;
        }
    } else {
        temp_f2 -= 0.05f;
        if (temp_f2 < 0.0f) {
            temp_f2 = 0.0f;
            this->unk_2CC = 0;
        }
    }
    this->unk_2C4 = temp_f2;

    if (this->unk_2CD == 0) {
        temp_f0 += 0.1f;
        if (temp_f0 > 1.0f) {
            temp_f0 = 1.0f;
            this->unk_2CD = 1;
        }
    } else {
        temp_f0 = 0.0f;
        this->unk_2CD = 0;
        
    }
    
    this->unk_2B4 = 290.0f;

    tmp = (0xFF - (s32)(155.0f * temp_f2)) & 0xFF;
    this->unk_26C = tmp;

    tmp2 = (-(s32)(-100.0f * temp_f2)) & 0xFF;
    tmp3 = (0xC8 - (s32)(50.0f * temp_f2)) & 0xFF;
    tmp4 = 274.0f + (8.0f * temp_f0);
    tmp5 = 49.0f - (8.0f * temp_f0);

    this->unk_2C8 = 0.0f;

    this->unk_2A8 = 
    this->unk_2A4 = 
    this->unk_270 = tmp;

    this->unk_2AC = 
    this->unk_274 = tmp2;
    
    this->unk_2B0 = 
    this->unk_278 = tmp3;

    this->unk_29C = tmp4;

    this->unk_264 = tmp5;
    
    this->unk_280 = 
    this->unk_2B8 = 91.0f;

    this->unk_268 = 
    this->unk_2A0 = 95.0f;
    this->unk_27C = 33.0f;
}
#else
#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Ossan/func_80AC67C4.s")
#endif

void func_80AC69A4(EnOssan*);

void func_80AC6970(EnOssan* this) {
    s16 tmp = this->unk_1F4 - 1;
    if (tmp != 0) {
        this->unk_1F4 = tmp;
        return;
    }
    this->unk_1F8 = func_80AC69A4;
    return;
}

void func_80AC6970(EnOssan*);

void func_80AC69A4(EnOssan* this) {
    s16 tmp = this->unk_1F4 - 1;

    if (tmp != 0) {
        this->unk_1F4 = tmp;
        return;
    }

    tmp = this->unk_1F2 + 1;
    if (tmp >= 3) {
        this->unk_1F2 = 0;
        this->unk_1F4 = ((s32)(Math_Rand_ZeroOne() * 60.0f) + 20);
        this->unk_1F8 = func_80AC6970;
        return;
    }
    this->unk_1F2 = tmp;
    this->unk_1F4 = 1;
    return;
}

s32 func_80AC6A44(EnOssan* this, GlobalContext* globalCtx) {
    if (Object_IsLoaded(&globalCtx->objectCtx, this->unk_1E8)) {
        if ((this->unk_1E9 >= 0) && (Object_IsLoaded(&globalCtx->objectCtx, this->unk_1E9) == 0)) {
            return 0;
        } else {
            if (this->unk_1EA >= 0) { 
                if (Object_IsLoaded(&globalCtx->objectCtx, this->unk_1EA) == 0) {
                    return 0;
                }
            }
        }
        return 1;
    }
    return 0;
}

void func_80AC7DAC(Actor*, GlobalContext*);

void func_80AC6ADC(EnOssan* this, GlobalContext* globalCtx) {
    SkelAnime_InitSV(globalCtx, &this->skelAnime, &D_06009B38, &D_06000338, 0, 0, 0);
    this->actor.draw = func_80AC7DAC;
    this->unk_194 = NULL;
}

void func_80AC7380(EnOssan*, GlobalContext*);
void func_80AC80B4(Actor*, GlobalContext*);

void func_80AC6B3C(EnOssan* this, GlobalContext* globalCtx) {
    SkelAnime_InitSV(globalCtx, &this->skelAnime, &D_060000F0, NULL, 0, 0, 0);
    gSegments[6] = PHYSICAL_TO_VIRTUAL(globalCtx->objectCtx.status[this->unk_1EA].segment);
    SkelAnime_ChangeAnim(&this->skelAnime, &D_060004A8, 1.0f, 0.0f, SkelAnime_GetFrameCount(&D_060004A8.genericHeader), 0, 0.0f);
    this->actor.draw = func_80AC80B4;
    this->unk_194 = func_80AC7380;
    Actor_SpawnAttached(&globalCtx->actorCtx, &this->actor, globalCtx, 0x18, this->actor.posRot.pos.x, this->actor.posRot.pos.y, this->actor.posRot.pos.z, 0, 0, 0, 3);
}

void func_80AC8244(Actor*, GlobalContext*);

void func_80AC6C54(EnOssan* this, GlobalContext* globalCtx) {
    SkelAnime_InitSV(globalCtx, &this->skelAnime, &D_0600FEF0, NULL, 0, 0, 0);
    gSegments[6] = PHYSICAL_TO_VIRTUAL(globalCtx->objectCtx.status[this->unk_1EA].segment);
    SkelAnime_ChangeAnim(&this->skelAnime, &D_060000FC, 1.0f, 0.0f, SkelAnime_GetFrameCount(&D_060000FC.genericHeader), 0, 0.0f);
    this->actor.draw = func_80AC8244;
    this->unk_194 = func_80AC7380;
}

void func_80AC83DC(Actor*, GlobalContext*);

void func_80AC6D30(EnOssan* this, GlobalContext* globalCtx) {
    SkelAnime_InitSV(globalCtx, &this->skelAnime, &D_0600BFA8, NULL, 0, 0, 0);
    gSegments[6] = PHYSICAL_TO_VIRTUAL(globalCtx->objectCtx.status[this->unk_1EA].segment);
    SkelAnime_ChangeAnim(&this->skelAnime, &D_0600078C, 1.0f, 0.0f, SkelAnime_GetFrameCount(&D_0600078C.genericHeader), 0, 0.0f);
    this->actor.draw = func_80AC83DC;
    this->unk_194 = func_80AC7380;
}

void func_80AC854C(Actor*, GlobalContext*);

void func_80AC6E0C(EnOssan* this, GlobalContext* globalCtx) {
    SkelAnime_InitSV(globalCtx, &this->skelAnime, &D_06004258, &D_060002E4, 0, 0, 0);
    this->actor.draw = func_80AC854C;
    this->unk_194 = NULL;
}

void func_80AC8668(Actor*, GlobalContext*);

void func_80AC6E6C(EnOssan* this, GlobalContext* globalCtx) {
    SkelAnime_InitSV(globalCtx, &this->skelAnime, &D_06004658, &D_060002E4, 0, 0, 0);
    this->actor.draw = func_80AC8668;
    this->unk_194 = NULL;
}

void func_80AC8784(Actor*, GlobalContext*);

void func_80AC6ECC(EnOssan* this, GlobalContext* globalCtx) {
    SkelAnime_InitSV(globalCtx, &this->skelAnime, &D_06004868, &D_0600065C, 0, 0, 0);
    this->actor.draw = func_80AC8784;
    this->unk_194 = NULL;
}

u16 func_80AC6F2C(EnOssan* this) {
    this->unk_1EB = 8;
    if (this->actor.params == 10) {
        if (gSaveContext.items[gItemSlots[0x21]] == 0x2C) {
            if ((gSaveContext.itemGetInf[3] & 0x800) != 0) {
                if ((gSaveContext.eventChkInf[8] & 0x8000) == 0) {
                    this->unk_1EB = 3;
                    return 0x70C6;
                }
                return 0x70AC;
            }
            if ((gSaveContext.itemGetInf[3] & 0x400) != 0) {
                if ((gSaveContext.eventChkInf[8] & 0x4000) == 0) {
                    this->unk_1EB = 1;
                    return 0x70C5;
                }
                return 0x70AC;
            }
            if ((gSaveContext.itemGetInf[3] & 0x200) != 0) {
                if ((gSaveContext.eventChkInf[8] & 0x2000) == 0) {
                    this->unk_1EB = 2;
                    return 0x70C4;
                }
                return 0x70AC;
            }
            if ((gSaveContext.itemGetInf[3] & 0x100) != 0) {
                if ((gSaveContext.eventChkInf[8] & 0x1000) == 0) {
                    this->unk_1EB = 0;
                    return 0x70A5;
                }
                return 0x70AC;
            }
        } else {
            if ((gSaveContext.itemGetInf[3] & 0x800) != 0) {
                return 0x70AC;
            }
            if ((gSaveContext.itemGetInf[3] & 0x400) == 0) {
                if ((gSaveContext.itemGetInf[2] & 0x10) == 0) {
                    if ((gSaveContext.itemGetInf[3] & 0x100) == 0) {
                        if ((gSaveContext.itemGetInf[2] & 0x8) == 0) {
                            return 0x70A1;
                        }
                        this->unk_1EB = 4;
                        return 0x70A6;
                    }
                }
            }
            return 0x70C7;
        }
    }
    return 0x9E;
}

void func_80AC73B4(EnOssan*, GlobalContext*);

#ifdef NON_MATCHING
void func_80AC7094(EnOssan* this, GlobalContext* globalCtx) {
    OssanStruct1* sp24;
    EnTana* temp_v0;
    Vec3f* temp_v0_2;

    if (func_80AC6A44(this, globalCtx)) {
        this->actor.flags &= 0xFFFFFFEF;
        this->actor.objBankIndex = this->unk_1E8;
        Actor_SetObjectDependency(globalCtx, &this->actor);
        this->tana = Actor_Find(&globalCtx->actorCtx, ACTOR_EN_TANA, 6);
        if (this->tana == NULL) {
            osSyncPrintf(VT_COL(RED, WHITE));
            // Warning! No shelves!
            osSyncPrintf("★★★ 警告！！ 棚がないよ！！ ★★★\n");
            osSyncPrintf(VT_RST);
            return;
        }
        // Shopkeep ( %d ) init
        osSyncPrintf(VT_FGCOL(YELLOW) "◇◇◇ 店のおやじ( %d ) 初期設定 ◇◇◇" VT_RST "\n", this->actor.params);
        
        temp_v0_2 = &D_80AC8DB0[this->actor.params];
        this->actor.posRot.pos.x += temp_v0_2->x;
        this->actor.posRot.pos.y += temp_v0_2->y;
        this->actor.posRot.pos.z += temp_v0_2->z;
        sp24 = &D_80AC89DC[this->actor.params];
        ActorShape_Init(&this->actor.shape, 0.0f, &ActorShadow_DrawFunc_Circle, 20.0f);
        D_80AC8D84[this->actor.params](this, globalCtx);

        this->actor.textId = func_80AC6F2C(this);

        this->unk_230 = 100.0f;
        this->unk_234 = 100.0f;

        this->unk_248 = this->unk_240 = this->actor.colChkInfo.mass = 0xFF;

        this->actor.colChkInfo.unk_10 = 0x32;
        

        this->unk_244 = 0x50;

        this->unk_250 = 
        this->unk_251 = 
        this->unk_1EC = 
        this->unk_228 = 
        this->unk_224 = 
        this->unk_252 = 
        this->unk_23C = 
        this->unk_1FC = 0;

        

        this->unk_25C = 
        this->unk_258 = 
        this->unk_254 = 0xC8;

        this->unk_260 = 0xB4;

        this->unk_26C = 0xFF;
        this->unk_270 = 0xFF;
        this->unk_274 = 0;
        this->unk_278 = 0xC8;
        this->unk_288 = 0;
        this->unk_28C = 0xC8;
        this->unk_290 = 0xC8;
        this->unk_294 = 0xC8;
        this->unk_298 = 0xB4;
        this->unk_2A4 = 0xFF;
        this->unk_2A8 = 0xFF;
        this->unk_2AC = 0;
        this->unk_2B0 = 0xC8;
        this->unk_2C0 = 0;
        this->unk_2CC = 0;
        this->unk_2CD = 0;


        this->unk_238 = 1.5f;
        this->unk_268 = 95.0f;
        this->unk_2A0 = 95.0f;
        this->unk_280 = 91.0f;
        this->unk_2B8 = 91.0f;
        this->unk_284 = 1.0f;
        this->unk_2BC = 1.0f;
        this->unk_264 = 49.0f;
        this->unk_27C = 33.0f;
        this->unk_24C = 0.0f;
        this->unk_2C4 = 0.0f;
        this->unk_2C8 = 0.0f;
        this->unk_2D0 = 0.0f;
        this->unk_29C = 274.0f;
        this->unk_2B4 = 290.0f;

        Actor_SetScale(&this->actor, D_80AC89B0[this->actor.params]);
        func_80AC2DD8(this, globalCtx, sp24);
        
        this->unk_1F4 = 0x14;
        this->unk_1F2 = 0;
        this->unk_1F8 = func_80AC6970;
        this->actor.flags &= 0xFFFFFFFE;
        this->unk_1EE = this->unk_1F0 = 0;
        func_80AC2CA0(this, func_80AC73B4);
    }
}
#else
#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Ossan/func_80AC7094.s")
#endif

void func_80AC7380(EnOssan* this, GlobalContext* globalCtx) {
    gSegments[6] = PHYSICAL_TO_VIRTUAL(globalCtx->objectCtx.status[this->unk_1EA].segment);
}

void func_80AC73B4(EnOssan* this, GlobalContext* globalCtx) {
    Player* player = PLAYER;
    Actor* thisx = (Actor*)&this->actor;

    this->unk_1F8(this);
    func_80AC3BCC(globalCtx, this);
    func_80AC65B8(this);
    func_80AC67C4(this);
    func_80AC66F4(this);
    Math_ApproxS(&this->unk_1EE, this->unk_1F0, 0x190);
    if (player) {
        D_80AC8E34[this->unk_1FC](this, globalCtx, player);
    }
    Actor_MoveForward(thisx);
    func_8002E4B4(globalCtx, thisx, 26.0f, 10.0f, 0.0f, 5);
    Actor_SetHeight(&this->actor, 90.0f);
    Actor_SetScale(&this->actor, D_80AC89B0[this->actor.params]);
    if (this->unk_194) {
        this->unk_194(this, globalCtx);
    }
    SkelAnime_FrameUpdateMatrix(&this->skelAnime);
}

void EnOssan_Update(Actor* thisx, GlobalContext* globalCtx) {
    EnOssan* this = THIS;
    this->unk_1E4++;
    this->actionFunc(this, globalCtx);
}

s32 func_80AC74F4(GlobalContext* globalCtx, s32 limbIndex, Gfx** dList, Vec3f* pos, Vec3s* rot, Actor* thisx) {
    EnOssan* this = THIS;

    if (limbIndex == 8) {
        rot->x += this->unk_1EE;
    }
    return 0;
}

#ifdef NON_MATCHING
void func_80AC7528(GlobalContext* globalCtx, EnOssan* this, f32 arg2, f32 arg3, f32 arg4, u8 arg5) {
    GraphicsContext* gfxCtx = globalCtx->state.gfxCtx;
    s32 temp_f0;
    s32 tmp2;
    Gfx* dispRefs[4];

    Graph_OpenDisps(dispRefs, globalCtx->state.gfxCtx, "../z_en_oB1.c", 0x1060);
    if (arg5) {
        func_80094520(globalCtx->state.gfxCtx);

        #pragma _permuter sameline start
        gDPSetPrimColor(gfxCtx->overlay.p++, 0, 0, this->unk_23C, this->unk_240, this->unk_244, this->unk_248);
        
        gDPLoadTextureBlock(gfxCtx->overlay.p++, &D_0400CDC0, G_IM_FMT_IA,
                            G_IM_SIZ_4b, 0x10, 0x10, 0, G_TX_MIRROR | G_TX_WRAP, G_TX_MIRROR | G_TX_WRAP,
                            4, 4, G_TX_NOLOD, G_TX_NOLOD);
        #pragma _permuter sameline end
        /*
        gDPSetTextureImage(gfxCtx->overlay.p++, G_IM_FMT_IA, G_IM_SIZ_16b, 1, 0x0400CDC0);
        gDPSetTile(gfxCtx->overlay.p++, G_IM_FMT_IA, G_IM_SIZ_16b, 0, 0x0000, G_TX_LOADTILE, 0, G_TX_MIRROR | G_TX_WRAP, 4, G_TX_NOLOD, G_TX_MIRROR | G_TX_WRAP, 4, G_TX_NOLOD);
        gDPLoadSync(gfxCtx->overlay.p++);
        gDPLoadBlock(gfxCtx->overlay.p++, G_TX_LOADTILE, 0, 0, 63, 2048);
        gDPPipeSync(gfxCtx->overlay.p++);
        gDPSetTile(gfxCtx->overlay.p++, G_IM_FMT_IA, G_IM_SIZ_4b, 1, 0x0000, G_TX_RENDERTILE, 0, G_TX_MIRROR | G_TX_WRAP, 4, G_TX_NOLOD, G_TX_MIRROR | G_TX_WRAP, 4, G_TX_NOLOD);
        gDPSetTileSize(gfxCtx->overlay.p++, G_TX_RENDERTILE, 0, 0, 0x003C, 0x003C);
        */

        temp_f0 = (16.0f * arg4);
        tmp2 = (1.0f / arg4) * 1024.0f;
        #pragma _permuter sameline start
        gSPTextureRectangle(gfxCtx->overlay.p++, 
                (arg2 - temp_f0) * 4, 
                (arg3 - temp_f0) * 4, 
                (arg2 + temp_f0) * 4, 
                (arg3 + temp_f0) * 4, 
                G_TX_RENDERTILE, 0, 0, 
                tmp2,
                tmp2);
        #pragma _permuter sameline end
        /*
        gTexRect(gfxCtx->overlay.p++, (arg2 - temp_f0) * 4.0f, (arg3 - temp_f0) * 4.0f, (arg2 + temp_f0) * 4.0f, (arg3 + temp_f0) * 4.0f, G_TX_RENDERTILE);
        gDPHalf1(gfxCtx->overlay.p++, 0x00000000);
        gDPHalf2(gfxCtx->overlay.p++, (1.0f / arg4) * 1024.0f);
        */
    }
    Graph_CloseDisps(dispRefs, globalCtx->state.gfxCtx, "../z_en_oB1.c", 0x1077);
}
#else
#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Ossan/func_80AC7528.s")
#endif
#undef NON_MATCHING

#ifdef NON_MATCHING
void func_80AC77CC(GlobalContext* globalCtx, 
                     s32 arg1, s32 arg2, s32 arg3, s32 arg4, 
                     f32 arg5,  f32 arg6, f32 arg7, 
                     s32 arg8,  s32 arg9, 
                    f32 arg10, f32 arg11) {
    f32 temp_f0;
    f32 temp_f2;
    GraphicsContext* gfxCtx = globalCtx->state.gfxCtx;
    Gfx* dispRefs[4];

    Graph_OpenDisps(dispRefs, globalCtx->state.gfxCtx, "../z_en_oB1.c", 0x1084);

    gDPPipeSync(gfxCtx->overlay.p++);
    gDPSetPrimColor(gfxCtx->overlay.p++, 0, 0, arg1, arg2, arg3, arg4);

    temp_f0 = 8.0f * arg7;
    temp_f2 = 12.0f * arg7;

    gTexRect(gfxCtx->overlay.p++, (arg5 - temp_f0) * 4.0f, (arg6 - temp_f2) * 4.0f, (arg5 + temp_f0) * 4.0f, (arg6 + temp_f2) * 4.0f, G_TX_RENDERTILE);
    gDPHalf1(gfxCtx->overlay.p++, (arg8 << 0x10) | (arg9 & 0xFFFF));
    gDPHalf2(gfxCtx->overlay.p++, ((s32)(arg10 * temp_f0) << 0x10) | ((s32)(arg11 * temp_f0) & 0xFFFF));

    Graph_CloseDisps(dispRefs, globalCtx->state.gfxCtx, "../z_en_oB1.c", 0x1092);
}
#else
#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Ossan/func_80AC77CC.s")
#endif

void func_80AC77CC(GlobalContext* globalCtx, 
                     s32, s32,  s32, s32, 
                     f32,  f32, f32, 
                     s32,  s32, 
                    f32, f32);

void func_80AC79C8(GlobalContext* globalCtx, EnOssan* this) {
    s32 tmp = this->unk_288;
    s32 tmp2 = this->unk_2C0;
    GraphicsContext* gfxCtx = globalCtx->state.gfxCtx;
    Gfx* dispRefs[4];


    Graph_OpenDisps(dispRefs, globalCtx->state.gfxCtx, "../z_en_oB1.c", 0x109C);

    if (tmp || tmp2) {
        func_80094520(globalCtx->state.gfxCtx);
        gDPSetCombineMode(gfxCtx->overlay.p++, G_CC_MODULATEIA_PRIM, G_CC_MODULATEIA_PRIM);

        gDPLoadTextureBlock(gfxCtx->overlay.p++, &D_0400CF40, G_IM_FMT_IA,
                            G_IM_SIZ_8b, 0x10, 0x18, 0, G_TX_NOMIRROR | G_TX_WRAP, G_TX_NOMIRROR | G_TX_WRAP,
                            4, G_TX_NOMASK, G_TX_NOLOD, G_TX_NOLOD);

        /*
        gDPSetTextureImage(gfxCtx->overlay.p++, G_IM_FMT_IA, G_IM_SIZ_16b, 1, 0x0400CF40);
        gDPSetTile(gfxCtx->overlay.p++, G_IM_FMT_IA, G_IM_SIZ_16b, 0, 0x0000, G_TX_LOADTILE, 0, G_TX_NOMIRROR | G_TX_WRAP, G_TX_NOMASK, G_TX_NOLOD, G_TX_NOMIRROR | G_TX_WRAP, 4, G_TX_NOLOD);
        gDPLoadSync(gfxCtx->overlay.p++);
        gDPLoadBlock(gfxCtx->overlay.p++, G_TX_LOADTILE, 0, 0, 191, 1024);
        gDPPipeSync(gfxCtx->overlay.p++);
        gDPSetTile(gfxCtx->overlay.p++, G_IM_FMT_IA, G_IM_SIZ_8b, 2, 0x0000, G_TX_RENDERTILE, 0, G_TX_NOMIRROR | G_TX_WRAP, G_TX_NOMASK, G_TX_NOLOD, G_TX_NOMIRROR | G_TX_WRAP, 4, G_TX_NOLOD);
        gDPSetTileSize(gfxCtx->overlay.p++, G_TX_RENDERTILE, 0, 0, 0x003C, 0x005C);
        */

        if (tmp) {
            func_80AC77CC(globalCtx, this->unk_26C, this->unk_270, this->unk_274, this->unk_278, 
                this->unk_27C, this->unk_280, this->unk_284, 
                0, 0, -1.0f, 1.0f);
        }
        if (tmp2) {
            func_80AC77CC(globalCtx, this->unk_2A4, this->unk_2A8, this->unk_2AC, this->unk_2B0, 
                this->unk_2B4, this->unk_2B8, this->unk_2BC, 
                0, 0, 1.0f, 1.0f);
        }

        gDPLoadTextureBlock(gfxCtx->overlay.p++, &D_0400CE40, G_IM_FMT_IA,
                            G_IM_SIZ_8b, 0x10, 0x10, 0, G_TX_NOMIRROR | G_TX_WRAP, G_TX_NOMIRROR | G_TX_WRAP,
                            4, G_TX_NOMASK, G_TX_NOLOD, G_TX_NOLOD);

        /*
        gDPSetTextureImage(gfxCtx->overlay.p++, G_IM_FMT_IA, G_IM_SIZ_16b, 1, 0x0400CE40);
        gDPSetTile(gfxCtx->overlay.p++, G_IM_FMT_IA, G_IM_SIZ_16b, 0, 0x0000, G_TX_LOADTILE, 0, G_TX_NOMIRROR | G_TX_WRAP, G_TX_NOMASK, G_TX_NOLOD, G_TX_NOMIRROR | G_TX_WRAP, 4, G_TX_NOLOD);
        gDPLoadSync(gfxCtx->overlay.p++);
        gDPLoadBlock(gfxCtx->overlay.p++, G_TX_LOADTILE, 0, 0, 127, 1024);
        gDPPipeSync(gfxCtx->overlay.p++);
        gDPSetTile(gfxCtx->overlay.p++, G_IM_FMT_IA, G_IM_SIZ_8b, 2, 0x0000, G_TX_RENDERTILE, 0, G_TX_NOMIRROR | G_TX_WRAP, G_TX_NOMASK, G_TX_NOLOD, G_TX_NOMIRROR | G_TX_WRAP, 4, G_TX_NOLOD);
        gDPSetTileSize(gfxCtx->overlay.p++, G_TX_RENDERTILE, 0, 0, 0x003C, 0x003C);
        */

        if (tmp) {
            func_80AC77CC(globalCtx, this->unk_254, this->unk_258, this->unk_25C, this->unk_260, 
                this->unk_264, this->unk_268, this->unk_284, 
                0, 0, -1.0f, 1.0f);
        }
        if (tmp2) {
            func_80AC77CC(globalCtx, this->unk_28C, this->unk_290, this->unk_294, this->unk_298, 
                this->unk_29C, this->unk_2A0, this->unk_2BC, 
                0, 0, 1.0f, 1.0f);
        }
    }
    Graph_CloseDisps(dispRefs, globalCtx->state.gfxCtx, "../z_en_oB1.c", 0x10CC);
}

#ifdef NON_MATCHING
void func_80AC7DAC(Actor* thisx, GlobalContext* globalCtx) {
    GraphicsContext* gfxCtx = globalCtx->state.gfxCtx;
    Gfx* dispRefs[4];
    EnOssan* this = THIS;
    f32 tmp;

    Graph_OpenDisps(dispRefs, globalCtx->state.gfxCtx, "../z_en_oB1.c", 0x10E0);
    func_80093D18(globalCtx->state.gfxCtx);

    gSPSegment(gfxCtx->polyOpa.p++, 0x08, SEGMENTED_TO_VIRTUAL(D_80AC8EA0[this->unk_1F2]));

    SkelAnime_DrawSV(globalCtx, this->skelAnime.skeleton, this->skelAnime.limbDrawTbl, this->skelAnime.dListCount, func_80AC74F4, NULL, &this->actor);
    tmp = this->unk_238;
    func_80AC7528(globalCtx, this, this->unk_230, this->unk_234, this->unk_238, this->unk_251);
    func_80AC79C8(globalCtx, this);
    Graph_CloseDisps(dispRefs, globalCtx->state.gfxCtx, "../z_en_oB1.c", 0x10F4);
}
#else
#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Ossan/func_80AC7DAC.s")
#endif

s32 func_80AC7ED0(GlobalContext*, s32, Gfx**, Vec3f*, Vec3s*, Actor*);
#ifdef NON_MATCHING
s32 func_80AC7ED0(GlobalContext* globalCtx, s32 limbIndex, Gfx** dList, Vec3f* pos, Vec3s* rot, Actor* thisx) {
    GraphicsContext* gfxCtx = globalCtx->state.gfxCtx;
    EnOssan* this = THIS;
    Gfx* dispRefs[4];

    Graph_OpenDisps(dispRefs, globalCtx->state.gfxCtx, "../z_en_oB1.c", 0x1102);
    if (limbIndex == 0xF) {
        gSPSegment(gfxCtx->polyOpa.p++, 0x06, globalCtx->objectCtx.status[this->unk_1E9].segment);
        gSegments[6] = PHYSICAL_TO_VIRTUAL(globalCtx->objectCtx.status[this->unk_1E9].segment);
        dList[0] = &D_06002820;
        gSPSegment(gfxCtx->polyOpa.p++, 0x0A, SEGMENTED_TO_VIRTUAL(D_80AC8EAC[this->unk_1F2]));

    }
    Graph_CloseDisps(dispRefs, globalCtx->state.gfxCtx, "../z_en_oB1.c", 0x1116);
    return 0;
}
#else
#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Ossan/func_80AC7ED0.s")
#endif

Gfx* func_80AC801C(GraphicsContext* gfxCtx) {
    Gfx* displayList;
    displayList = Graph_Alloc(gfxCtx, sizeof(Gfx));
    gSPEndDisplayList(displayList);
    return displayList;
}

Gfx* func_80AC8048(GraphicsContext* gfxCtx, u8 arg1, u8 arg2, u8 arg3, u8 arg4) {
    Gfx* displayList;

    displayList = Graph_Alloc(gfxCtx, sizeof(Gfx) * 2);
    gDPSetEnvColor(displayList, arg1, arg2, arg3, arg4);
    gSPEndDisplayList(displayList + 1);
    return displayList;
}

void func_80AC7528(GlobalContext*, EnOssan*, f32, f32, f32, u8);

void func_80AC80B4(Actor* thisx, GlobalContext* globalCtx) {
    GraphicsContext* gfxCtx = globalCtx->state.gfxCtx;
    s32 pad;
    EnOssan* this = THIS;
    Gfx* dispRefs[4];

    Graph_OpenDisps(dispRefs, globalCtx->state.gfxCtx, "../z_en_oB1.c", 0x1139);
    func_80093D18(globalCtx->state.gfxCtx);

    gDPSetEnvColor(gfxCtx->polyOpa.p++, 0x00, 0x00, 0x00, 0xFF);
    gSPSegment(gfxCtx->polyOpa.p++, 0x08, func_80AC8048(globalCtx->state.gfxCtx, 0, 0x82, 0x46, 0xFF));
    gSPSegment(gfxCtx->polyOpa.p++, 0x09, func_80AC8048(globalCtx->state.gfxCtx, 0x6E, 0xAA, 0x14, 0xFF));
    gSPSegment(gfxCtx->polyOpa.p++, 0x0C, func_80AC801C(globalCtx->state.gfxCtx));
    SkelAnime_DrawSV(globalCtx, this->skelAnime.skeleton, this->skelAnime.limbDrawTbl, this->skelAnime.dListCount, func_80AC7ED0, NULL, &this->actor);
    func_80AC7528(globalCtx, this, this->unk_230, this->unk_234, this->unk_238, this->unk_251);
    func_80AC79C8(globalCtx, this);
    Graph_CloseDisps(dispRefs, globalCtx->state.gfxCtx, "../z_en_oB1.c", 0x1152);
}

#ifdef NON_MATCHING
void func_80AC8244(Actor* thisx, GlobalContext* globalCtx) {
    GraphicsContext* gfxCtx = globalCtx->state.gfxCtx;
    s32 pad;
    EnOssan* this = THIS;
    Gfx* dispRefs[4];

    Graph_OpenDisps(dispRefs, globalCtx->state.gfxCtx, "../z_en_oB1.c", 0x1167);
    func_80093D18(globalCtx->state.gfxCtx);

    gSPSegment(gfxCtx->polyOpa.p++, 0x08, SEGMENTED_TO_VIRTUAL(D_80AC8EB8[this->unk_1F2]));
    gSPSegment(gfxCtx->polyOpa.p++, 0x09, SEGMENTED_TO_VIRTUAL(&D_0600DE80));

    SkelAnime_DrawSV(globalCtx, this->skelAnime.skeleton, this->skelAnime.limbDrawTbl, this->skelAnime.dListCount, NULL, NULL, &this->actor);
    func_80AC7528(globalCtx, this, this->unk_230, this->unk_234, this->unk_238, this->unk_251);
    func_80AC79C8(globalCtx, this);
    Graph_CloseDisps(dispRefs, globalCtx->state.gfxCtx, "../z_en_oB1.c", 0x117C);
}
#else
#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Ossan/func_80AC8244.s")
#endif

s32 func_80AC83A8(GlobalContext* globalCtx, s32 limbIndex, Gfx** dList, Vec3f* pos, Vec3s* rot, Actor* thisx) {
    EnOssan* this = THIS;
    if (limbIndex == 0xF) {
        rot->x += this->unk_1EE;
    }
    return 0;
}

void func_80AC83DC(Actor* thisx, GlobalContext* globalCtx) {
    GraphicsContext* gfxCtx = globalCtx->state.gfxCtx;
    s32 pad;
    EnOssan* this = THIS;
    Gfx* dispRefs[4];
    

    Graph_OpenDisps(dispRefs, globalCtx->state.gfxCtx, "../z_en_oB1.c", 0x119A);
    func_80093D18(globalCtx->state.gfxCtx);

    gDPSetEnvColor(gfxCtx->polyOpa.p++, 0x00, 0x00, 0x00, 0xFF);
    gSPSegment(gfxCtx->polyOpa.p++, 0x0C, func_80AC801C(globalCtx->state.gfxCtx));

    gSPSegment(gfxCtx->polyOpa.p++, 0x08, SEGMENTED_TO_VIRTUAL(D_80AC8EC4[this->unk_1F2]));
    
    SkelAnime_DrawSV(globalCtx, this->skelAnime.skeleton, this->skelAnime.limbDrawTbl, this->skelAnime.dListCount, func_80AC83A8, NULL, &this->actor);
    func_80AC7528(globalCtx, this, this->unk_230, this->unk_234, this->unk_238, this->unk_251);
    func_80AC79C8(globalCtx, this);
    Graph_CloseDisps(dispRefs, globalCtx->state.gfxCtx, "../z_en_oB1.c", 0x11B3);
}

#ifdef NON_MATCHING
void func_80AC854C(Actor* thisx, GlobalContext* globalCtx) {
    GraphicsContext* gfxCtx = globalCtx->state.gfxCtx;
    s32 pad;
    EnOssan* this = THIS;
    Gfx* dispRefs[4];


    Graph_OpenDisps(dispRefs, globalCtx->state.gfxCtx, "../z_en_oB1.c", 0x11C0);
    func_80093D18(globalCtx->state.gfxCtx);

    gSPSegment(gfxCtx->polyOpa.p++, 0x08, SEGMENTED_TO_VIRTUAL(D_80AC8ED0[this->unk_1F2]));

    SkelAnime_DrawSV(globalCtx, this->skelAnime.skeleton, this->skelAnime.limbDrawTbl, this->skelAnime.dListCount, NULL, NULL, &this->actor);
    func_80AC7528(globalCtx, this, this->unk_230, this->unk_234, this->unk_238, this->unk_251);
    func_80AC79C8(globalCtx, this);
    Graph_CloseDisps(dispRefs, globalCtx->state.gfxCtx, "../z_en_oB1.c", 0x11D4);
}
#else
#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Ossan/func_80AC854C.s")
#endif

#ifdef NON_MATCHING
void func_80AC8668(Actor* thisx, GlobalContext* globalCtx) {
    GraphicsContext* gfxCtx = globalCtx->state.gfxCtx;
    s32 pad;
    EnOssan* this = THIS;
    Gfx* dispRefs[4];

    Graph_OpenDisps(dispRefs, globalCtx->state.gfxCtx, "../z_en_oB1.c", 0x11E2);
    func_80093D18(globalCtx->state.gfxCtx);

    gSPSegment(gfxCtx->polyOpa.p++, 0x08, SEGMENTED_TO_VIRTUAL(D_80AC8EDC[this->unk_1EC]));

    SkelAnime_DrawSV(globalCtx, this->skelAnime.skeleton, this->skelAnime.limbDrawTbl, this->skelAnime.dListCount, NULL, NULL, &this->actor);
    func_80AC7528(globalCtx, this, this->unk_230, this->unk_234, this->unk_238, this->unk_251);
    func_80AC79C8(globalCtx, this);
    Graph_CloseDisps(dispRefs, globalCtx->state.gfxCtx, "../z_en_oB1.c", 0x11F6);
}
#else
#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Ossan/func_80AC8668.s")
#endif

#ifdef NON_MATCHING
void func_80AC8784(Actor* thisx, GlobalContext* globalCtx) {
    GraphicsContext* gfxCtx = globalCtx->state.gfxCtx;
    Gfx* dispRefs[4];
    EnOssan* this = THIS;

    Graph_OpenDisps(dispRefs, globalCtx->state.gfxCtx, "../z_en_oB1.c", 0x1203);
    func_80093D18(globalCtx->state.gfxCtx);
    #pragma _permuter sameline start
    gSPSegment(gfxCtx->polyOpa.p++, 0x08, SEGMENTED_TO_VIRTUAL(D_80AC8EE4[this->unk_1F2]));
    #pragma _permuter sameline end
    SkelAnime_DrawSV(globalCtx, this->skelAnime.skeleton, this->skelAnime.limbDrawTbl, this->skelAnime.dListCount, NULL, NULL, &this->actor);
    func_80AC7528(globalCtx, this, this->unk_230, this->unk_234, this->unk_238, this->unk_251);
    func_80AC79C8(globalCtx, this);
    Graph_CloseDisps(dispRefs, globalCtx->state.gfxCtx, "../z_en_oB1.c", 0x1217);
}
#else
#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Ossan/func_80AC8784.s")
#endif