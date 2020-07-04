#include "z_en_girla.h"
#include "vt.h"

#define FLAGS 0x00000019

#define THIS ((EnGirlA*)thisx)

void EnGirlA_Init(Actor* this, GlobalContext* globalCtx);
void EnGirlA_Destroy(Actor* this, GlobalContext* globalCtx);
void EnGirlA_Update(Actor* this, GlobalContext* globalCtx);

const ActorInit En_GirlA_InitVars = {
    ACTOR_EN_GIRLA,
    ACTORTYPE_PROP,
    FLAGS,
    OBJECT_GAMEPLAY_KEEP,
    sizeof(EnGirlA),
    (ActorFunc)EnGirlA_Init,
    (ActorFunc)EnGirlA_Destroy,
    (ActorFunc)EnGirlA_Update,
    NULL,
};

char* D_80A3C590[] = {
    "デクの実×5   ",
    "矢×30        ",
    "矢×50        ",
    "爆弾×5       ",
    "デクの実×10  ",
    "デクの棒      ",
    "爆弾×10      ",
    "さかな        ",
    "赤クスリ      ",
    "緑クスリ      ",
    "青クスリ      ",
    "巨人のナイフ  ",
    "ハイリアの盾  ",
    "デクの盾      ",
    "ゴロンの服    ",
    "ゾ─ラの服    ",
    "回復のハート  ",
    "ロンロン牛乳  ",
    "鶏の卵        ",
    "インゴー牛乳  ",
    "インゴー卵    ",
    "もだえ石      ",
    "大人の財布    ",
    "ハートの欠片  ",
    "ボムチュウ    ",
    "ボムチュウ    ",
    "ボムチュウ    ",
    "ボムチュウ    ",
    "ボムチュウ    ",
    "デクのタネ    ",
    "キータンのお面",
    "こわそなお面  ",
    "ドクロのお面  ",
    "ウサギずきん  ",
    "まことの仮面  ",
    "ゾーラのお面  ",
    "ゴロンのお面  ",
    "ゲルドのお面  ",
    "ＳＯＬＤＯＵＴ",
    "炎            ",
    "虫            ",
    "チョウチョ    ",
    "ポウ          ",
    "妖精の魂      ",
    "矢×10        ",
    "爆弾×20      ",
    "爆弾×30      ",
    "爆弾×5       ",
    "赤クスリ      ",
    "赤クスリ      ",
};

s16 D_80A3C658[8] = {
    0x0024, 0x0026, 0x0025, 0x0027, 
    0x002B, 0x0029, 0x0028, 0x002A
};

u16 D_80A3C668[5] = {
    0x70B6, 0x70B5, 0x70B4, 0x70B7, 0x70BB
};

typedef struct {
    /* 0x00 */ s16 objID;
    /* 0x02 */ s16 unk_02;
    /* 0x04 */ void (*unk_04)(Actor*, GlobalContext*, s32);
    /* 0x08 */ s16 unk_08;
    /* 0x0A */ s16 unk_0A;
    /* 0x0C */ u16 unk_0C;
    /* 0x0C */ u16 unk_0E;
    /* 0x10 */ s32 unk_10;
    /* 0x14 */ s32 (*unk_14)(GlobalContext*, EnGirlA*);
    /* 0x18 */ void (*unk_18)(GlobalContext*, EnGirlA*);
    /* 0x1C */ void (*unk_1C)(GlobalContext*, EnGirlA*);
} GirlAThing; // size = 0x20

// void func_8002ED80(EnGirlA*, GlobalContext*, s32); 
// void func_8002EBCC(EnGirlA*, GlobalContext*, s32);
void func_80A3C498(Actor*, GlobalContext*, s32); 

s32 func_80A3AAA8(GlobalContext*, EnGirlA*); s32 func_80A3AB58(GlobalContext*, EnGirlA*); s32 func_80A3ABF8(GlobalContext*, EnGirlA*); 
s32 func_80A3ACAC(GlobalContext*, EnGirlA*); s32 func_80A3AD60(GlobalContext*, EnGirlA*);
s32 func_80A3ADD4(GlobalContext*, EnGirlA*); s32 func_80A3AE48(GlobalContext*, EnGirlA*); s32 func_80A3AEBC(GlobalContext*, EnGirlA*); s32 func_80A3AF30(GlobalContext*, EnGirlA*);
s32 func_80A3AFC4(GlobalContext*, EnGirlA*); s32 func_80A3B040(GlobalContext*, EnGirlA*); s32 func_80A3B0BC(GlobalContext*, EnGirlA*); s32 func_80A3B160(GlobalContext*, EnGirlA*);
s32 func_80A3B204(GlobalContext*, EnGirlA*); s32 func_80A3B250(GlobalContext*, EnGirlA*); s32 func_80A3B2AC(GlobalContext*, EnGirlA*); s32 func_80A3B308(GlobalContext*, EnGirlA*);
s32 func_80A3B318(GlobalContext*, EnGirlA*); s32 func_80A3B328(GlobalContext*, EnGirlA*); s32 func_80A3B3A8(GlobalContext*, EnGirlA*); s32 func_80A3B454(GlobalContext*, EnGirlA*);
s32 func_80A3B464(GlobalContext*, EnGirlA*); s32 func_80A3B4D8(GlobalContext*, EnGirlA*); s32 func_80A3B54C(GlobalContext*, EnGirlA*); s32 func_80A3B5C0(GlobalContext*, EnGirlA*);


void func_80A3B714(GlobalContext*, EnGirlA*); void func_80A3B634(GlobalContext*, EnGirlA*); void func_80A3B678(GlobalContext*, EnGirlA*); void func_80A3B780(GlobalContext*, EnGirlA*);
void func_80A3BA40(GlobalContext*, EnGirlA*); void func_80A3B7BC(GlobalContext*, EnGirlA*); void func_80A3B800(GlobalContext*, EnGirlA*); void func_80A3B83C(GlobalContext*, EnGirlA*);
void func_80A3B878(GlobalContext*, EnGirlA*); void func_80A3B8B4(GlobalContext*, EnGirlA*); void func_80A3B8F0(GlobalContext*, EnGirlA*); void func_80A3B92C(GlobalContext*, EnGirlA*);
void func_80A3B968(GlobalContext*, EnGirlA*); void func_80A3B9A4(GlobalContext*, EnGirlA*); void func_80A3B9D4(GlobalContext*, EnGirlA*); void func_80A3BA04(GlobalContext*, EnGirlA*);
void func_80A3BB6C(GlobalContext*, EnGirlA*); void func_80A3BC0C(GlobalContext*, EnGirlA*); void func_80A3BC3C(GlobalContext*, EnGirlA*); void func_80A3BC6C(GlobalContext*, EnGirlA*);

GirlAThing D_80A3C674[] = {
    {0x00BB, 0x0011, func_8002ED80, 0x000F, 0x0005, 0x00B2, 0x007F, 0x00000063, func_80A3ABF8, func_80A3B714, func_80A3BB6C}, 
    {0x00D8, 0x0025, func_8002EBCC, 0x003C, 0x001E, 0x00C1, 0x009B, 0x0000004A, func_80A3AAA8, func_80A3B634, func_80A3BB6C}, 
    {0x00D8, 0x0026, func_8002EBCC, 0x005A, 0x0032, 0x00B0, 0x007D, 0x0000004B, func_80A3AAA8, func_80A3B634, func_80A3BB6C}, 
    {0x00CE, 0x001F, func_8002EBCC, 0x0019, 0x0005, 0x00A3, 0x008B, 0x00000001, func_80A3AB58, func_80A3B678, func_80A3BB6C}, 
    {0x00BB, 0x0011, func_8002ED80, 0x001E, 0x000A, 0x00A2, 0x0087, 0x00000064, func_80A3ABF8, func_80A3B714, func_80A3BB6C}, 
    {0x00C7, 0x001A,    0x00000000, 0x000A, 0x0001, 0x00A1, 0x0088, 0x00000007, func_80A3ACAC, func_80A3B780, func_80A3BB6C}, 
    {0x00CE, 0x001F, func_8002EBCC, 0x0032, 0x000A, 0x00B1, 0x007C, 0x00000066, func_80A3AB58, func_80A3B678, func_80A3BB6C}, 
    {0x00F4, 0x003E, func_8002ED80, 0x00C8, 0x0001, 0x00B3, 0x007E, 0x0000006C, func_80A3AD60,    0x00000000, func_80A3BB6C}, 
    {0x00EB, 0x0037, func_8002EBCC, 0x001E, 0x0001, 0x00A5, 0x008E, 0x00000010, func_80A3ADD4, func_80A3BA40, func_80A3BB6C}, 
    {0x00EB, 0x0036, func_8002EBCC, 0x001E, 0x0001, 0x00A6, 0x008F, 0x00000011, func_80A3AE48, func_80A3BA40, func_80A3BB6C}, 
    {0x00EB, 0x0038, func_8002EBCC, 0x003C, 0x0001, 0x00A7, 0x0090, 0x00000012, func_80A3AEBC, func_80A3BA40, func_80A3BB6C}, 
    {0x00F8, 0x0042, func_8002EBCC, 0x03E8, 0x0001, 0x00A8, 0x0091, 0x00000028, func_80A3AF30, func_80A3B7BC, func_80A3BB6C}, 
    {0x00DC, 0x002B, func_8002EBCC, 0x0050, 0x0001, 0x00A9, 0x0092, 0x0000002A, func_80A3AFC4, func_80A3B800, func_80A3BB6C}, 
    {0x00CB, 0x001C, func_8002EBCC, 0x0028, 0x0001, 0x009F, 0x0089, 0x00000029, func_80A3B040, func_80A3B83C, func_80A3BB6C},
    {0x00F2, 0x003B,    0x00000000, 0x00C8, 0x0001, 0x00AA, 0x0093, 0x0000002C, func_80A3B0BC, func_80A3B878, func_80A3BC0C}, 
    {0x00F2, 0x003C,    0x00000000, 0x012C, 0x0001, 0x00AB, 0x0094, 0x0000002D, func_80A3B160, func_80A3B8B4, func_80A3BC3C}, 
    {0x00B7, 0x0008,    0x00000000, 0x000A, 0x0010, 0x00AC, 0x0095, 0x00000048, func_80A3B204, func_80A3B8F0, func_80A3BB6C}, 
    {0x00DF, 0x002F, func_80A3C498, 0x0064, 0x0001, 0x00AD, 0x0097, 0x00000014, func_80A3B250, func_80A3B92C, func_80A3BB6C}, 
    {0x00DA, 0x0028, func_8002EBCC, 0x0064, 0x0001, 0x00AE, 0x0099, 0x00000047, func_80A3B2AC, func_80A3B968, func_80A3BB6C}, 
    {0x00DF, 0x002F, func_80A3C498, 0x2710, 0x0001, 0x00B4, 0x0085, 0x00000000, func_80A3B308, func_80A3B9A4, func_80A3BB6C}, 
    {0x00DA, 0x0028, func_8002EBCC, 0x2710, 0x0001, 0x00B5, 0x0085, 0x00000000, func_80A3B318, func_80A3B9D4, func_80A3BB6C}, 
    {0x00D9, 0x0027, func_8002EBCC, 0x0064, 0x000A, 0x00BC, 0x008C, 0x00000003, func_80A3B328,    0x00000000, func_80A3BC6C}, 
    {0x00D9, 0x0027, func_8002EBCC, 0x00B4, 0x0014, 0x0061, 0x002A, 0x0000006B, func_80A3B328,    0x00000000, func_80A3BC6C}, 
    {0x00D9, 0x0027, func_8002EBCC, 0x00B4, 0x0014, 0x0061, 0x002A, 0x0000006B, func_80A3B328,    0x00000000, func_80A3BC6C}, 
    {0x00D9, 0x0027, func_8002EBCC, 0x0064, 0x000A, 0x00BC, 0x008C, 0x00000003, func_80A3B328,    0x00000000, func_80A3BC6C}, 
    {0x00D9, 0x0027, func_8002EBCC, 0x0064, 0x000A, 0x00BC, 0x008C, 0x00000003, func_80A3B328,    0x00000000, func_80A3BC6C}, 
    {0x00D9, 0x0027, func_8002EBCC, 0x00B4, 0x0014, 0x0061, 0x002A, 0x0000006B, func_80A3B328,    0x00000000, func_80A3BC6C}, 
    {0x00D9, 0x0027, func_8002EBCC, 0x00B4, 0x0014, 0x0061, 0x002A, 0x0000006B, func_80A3B328,    0x00000000, func_80A3BC6C}, 
    {0x00D9, 0x0027, func_8002EBCC, 0x0064, 0x000A, 0x00BC, 0x008C, 0x00000003, func_80A3B328,    0x00000000, func_80A3BC6C}, 
    {0x0119, 0x0047, func_8002EBCC, 0x001E, 0x001E, 0x00DF, 0x00DE, 0x00000069, func_80A3B3A8, func_80A3BA04, func_80A3BB6C}, 
    {0x0134, 0x0030, func_8002EBCC, 0x0000, 0x0001, 0x70B2, 0x70BE, 0x0000001A, func_80A3B3A8, func_80A3BA04, func_80A3BB6C}, 
    {0x0135, 0x0031, func_8002EBCC, 0x0000, 0x0001, 0x70B1, 0x70BD, 0x00000018, func_80A3B3A8, func_80A3BA04, func_80A3BB6C}, 
    {0x0136, 0x004E, func_8002EBCC, 0x0000, 0x0001, 0x70B0, 0x70BC, 0x00000017, func_80A3B3A8, func_80A3BA04, func_80A3BB6C}, 
    {0x0137, 0x004F, func_8002EBCC, 0x0000, 0x0001, 0x70B3, 0x70BF, 0x0000001B, func_80A3B3A8, func_80A3BA04, func_80A3BB6C}, 
    {0x0138, 0x0050, func_80A3C498, 0x0000, 0x0001, 0x70AF, 0x70C3, 0x0000001C, func_80A3B3A8, func_80A3BA04, func_80A3BB6C}, 
    {0x0151, 0x005B,    0x00000000, 0x0000, 0x0001, 0x70B9, 0x70C1, 0x00000052, func_80A3B3A8, func_80A3BA04, func_80A3BB6C}, 
    {0x0150, 0x005A,    0x00000000, 0x0000, 0x0001, 0x70B8, 0x70C0, 0x00000051, func_80A3B3A8, func_80A3BA04, func_80A3BB6C}, 
    {0x0152, 0x005C,    0x00000000, 0x0000, 0x0001, 0x70BA, 0x70C2, 0x00000053, func_80A3B3A8, func_80A3BA04, func_80A3BB6C}, 
    {0x0148, 0x0058, func_8002EBCC, 0x0000, 0x0000, 0x00BD, 0x70C2, 0x00000053, func_80A3B454,    0x00000000,    0x00000000}, 
    {0x0173, 0x0066, func_8002EBCC, 0x012C, 0x0001, 0x00B9, 0x00B8, 0x0000006E, func_80A3B464, func_80A3BA40, func_80A3BB6C}, 
    {0x0174, 0x0067, func_80A3C498, 0x0032, 0x0001, 0x00BB, 0x00BA, 0x0000006D, func_80A3B4D8, func_80A3BA40, func_80A3BB6C}, 
    {0x0176, 0x006F, func_80A3C498, 0x0032, 0x0001, 0x506F, 0x5070, 0x00000070, func_80A3B54C, func_80A3BA40, func_80A3BB6C}, 
    {0x0176, 0x0069, func_80A3C498, 0x001E, 0x0001, 0x506D, 0x506E, 0x0000006F, func_80A3B54C, func_80A3BA40, func_80A3BB6C}, 
    {0x0177, 0x006A, func_80A3C498, 0x0032, 0x0001, 0x00B7, 0x00B6, 0x00000013, func_80A3B5C0, func_80A3BA40, func_80A3BB6C}, 
    {0x00D8, 0x0024, func_8002EBCC, 0x0014, 0x000A, 0x00A0, 0x008A, 0x00000049, func_80A3AAA8, func_80A3B634, func_80A3BB6C}, 
    {0x00CE, 0x001F, func_8002EBCC, 0x0050, 0x0014, 0x001C, 0x0006, 0x00000067, func_80A3AB58, func_80A3B678, func_80A3BB6C}, 
    {0x00CE, 0x001F, func_8002EBCC, 0x0078, 0x001E, 0x001D, 0x001E, 0x00000068, func_80A3AB58, func_80A3B678, func_80A3BB6C}, 
    {0x00CE, 0x001F, func_8002EBCC, 0x0023, 0x0005, 0x00CB, 0x00CA, 0x00000001, func_80A3AB58, func_80A3B678, func_80A3BB6C}, 
    {0x00EB, 0x0037, func_8002EBCC, 0x0028, 0x0001, 0x0064, 0x0062, 0x00000010, func_80A3ADD4, func_80A3BA40, func_80A3BB6C}, 
    {0x00EB, 0x0037, func_8002EBCC, 0x0032, 0x0001, 0x0065, 0x0063, 0x00000010, func_80A3ADD4, func_80A3BA40, func_80A3BB6C},
};

s16 D_80A3CCB4[8] = {
    0x0005, 0x000A, 0x000F, 0x0014, 0x0019, 0x001E, 0x0023, 0x0028
};


void func_80A3A750(EnGirlA* this, void* arg1) {
    this->actionFunc = arg1;
}

s32 func_80A3A758(EnGirlA* this) {
    switch(this->actor.params) {
    case 0x11:
        if (gSaveContext.itemGetInf[0] & 0x4) {
            this->actor.params = 0x10;
            return 1;
        }
        break;
    case 0x18:
        if (gSaveContext.itemGetInf[0] & 0x40) {
            this->actor.params = 0x26;
            return 1;
        }
        break;
    case 0x19:
        if (gSaveContext.itemGetInf[0] & 0x80) {
            this->actor.params = 0x26;
            return 1;
        }
        break;
    case 0x1A:
        if (gSaveContext.itemGetInf[0] & 0x100) {
            this->actor.params = 0x26;
            return 1;
        }
        break;
    case 0x1B:
        if (gSaveContext.itemGetInf[0] & 0x200) {
            this->actor.params = 0x26;
            return 1;
        }
        break;
    case 0x1C:
        if (gSaveContext.itemGetInf[0] & 0x400) {
            this->actor.params = 0x26;
            return 1;
        }
        break;
    case 0x15:
        if (gSaveContext.itemGetInf[0] & 0x8) {
            this->actor.params = 0x26;
            return 1;
        }
        break;
    case 0x16:
        if (gSaveContext.itemGetInf[0] & 0x10) {
            this->actor.params = 0x26;
            return 1;
        }
        break;
    case 0x17:
        if (gSaveContext.itemGetInf[0] & 0x20) {
            this->actor.params = 0x26;
            return 1;
        }
        break;
    }
    return 0;
}

void func_80A3BFE4(EnGirlA*, GlobalContext*);

#ifdef NON_MATCHING
void func_80A3A8D0(EnGirlA* this, GlobalContext* globalCtx) {
    //EnGirlA* this = THIS;
    char* strptr = D_80A3C590[this->actor.params];
    char* strptr2 = D_80A3C590[this->actor.params];
    s16 params = this->actor.params;

    osSyncPrintf("%s(%2d)初期設定\n", strptr, this->actor.params);
    if ((params >= 50) && (params < 0)) {
        Actor_Kill(&this->actor);
        osSyncPrintf(VT_COL(RED, WHITE));
        // Bad argument!
        osSyncPrintf("引数がおかしいよ(arg_data=%d)！！\n", this->actor.params);
        osSyncPrintf(VT_RST);
        __assert("0", "../z_en_girlA.c", 0x58D);
        return;
    }

    this->unk_194 = Object_GetIndex(&globalCtx->objectCtx, D_80A3C674[params].objID);
    if (this->unk_194 < 0) {
        Actor_Kill(&this->actor);
        osSyncPrintf(VT_COL(RED, WHITE));
        // No bank!
        osSyncPrintf("バンクが無いよ！！(%s)\n", strptr2);
        osSyncPrintf(VT_RST);
        if (this) {};
        __assert("0", "../z_en_girlA.c", 0x59A);
        return;
    }
    this->actor.params = params & 0xFFFF;
    this->unk_198 = func_80A3BFE4;
}
#else
#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_GirlA/func_80A3A8D0.s")
#endif


void EnGirlA_Init(Actor* thisx, GlobalContext* globalCtx) {
    EnGirlA* this = THIS;
    func_80A3A758(this);
    func_80A3A8D0(this, globalCtx);
    osSyncPrintf("%s(%2d)初期設定\n", D_80A3C590[thisx->params], thisx->params);
}

void EnGirlA_Destroy(Actor* thisx, GlobalContext* globalCtx) {
    EnGirlA* this = THIS;
    if (this->unk_19C != 0) {
        SkelAnime_Free(&this->skelAnime, globalCtx);
    }
}

s32 func_80A3AAA8(GlobalContext* globalCtx, EnGirlA* this) {
    if (Item_CheckObtainability(3) == 0xFF) {
        return 5;
    }
    if (gSaveContext.ammo[gItemSlots[3]] >= gUpgradeCapacities[0][(s32)(gSaveContext.upgrades & gUpgradeMasks[0]) >> gUpgradeShifts[0]]) {
        return 2;
    }
    if (gSaveContext.rupees < this->unk_1C8) {
        return 4;
    }
    return 1;
}

s32 func_80A3AB58(GlobalContext* globalCtx, EnGirlA* this) {
    if ((gBitFlags[0x13] & gSaveContext.questItems) == 0) {
        return 2;
    }
    if (gSaveContext.ammo[gItemSlots[2]] >= gUpgradeCapacities[1][(s32)(gSaveContext.upgrades & gUpgradeMasks[1]) >> gUpgradeShifts[1]]) {
        return 2;
    }
    if (gSaveContext.rupees < this->unk_1C8) {
        return 4;
    }
    return 1;
}

s32 func_80A3ABF8(GlobalContext* globalCtx, EnGirlA* this) {
    s32 tmp = gUpgradeCapacities[7][(s32)(gSaveContext.upgrades & gUpgradeMasks[7]) >> gUpgradeShifts[7]];

    if (tmp != 0) {
        if (gSaveContext.ammo[gItemSlots[1]] >= tmp) {
            return 2;
        }
    }
    if (gSaveContext.rupees < this->unk_1C8) {
        return 4;
    }
    if (Item_CheckObtainability(1) == 0xFF) {
        return 0;
    }
    return 1;
}

s32 func_80A3ACAC(GlobalContext* globalCtx, EnGirlA* this) {
    s32 tmp = gUpgradeCapacities[6][(s32)(gSaveContext.upgrades & gUpgradeMasks[6]) >> gUpgradeShifts[6]];
    
    if (tmp != 0) {
        if (gSaveContext.ammo[gItemSlots[0]] >= tmp) {
            return 2;
        }
    }
    if (gSaveContext.rupees < this->unk_1C8) {
        return 4;
    }
    if (Item_CheckObtainability(0) == 0xFF) {
        return 0;
    }
    return 1;
}

s32 func_80A3AD60(GlobalContext* globalCtx, EnGirlA* this) {
    if (Inventory_HasEmptyBottle() == 0) {
        return 3;
    }
    if (gSaveContext.rupees < this->unk_1C8) {
        return 4;
    }
    if (Item_CheckObtainability(0x19) == 0xFF) {
        return 0;
    }
    return 1;
}

s32 func_80A3ADD4(GlobalContext* globalCtx, EnGirlA* this) {
    if (Inventory_HasEmptyBottle() == 0) {
        return 3;
    }
    if (gSaveContext.rupees < this->unk_1C8) {
        return 4;
    }
    if (Item_CheckObtainability(0x15) == 0xFF) {
        return 0;
    }
    return 1;
}

s32 func_80A3AE48(GlobalContext* globalCtx, EnGirlA* this) {
    if (Inventory_HasEmptyBottle() == 0) {
        return 3;
    }
    if (gSaveContext.rupees < this->unk_1C8) {
        return 4;
    }
    if (Item_CheckObtainability(0x16) == 0xFF) {
        return 0;
    }
    return 1;
}

s32 func_80A3AEBC(GlobalContext* globalCtx, EnGirlA* this) {
    if (Inventory_HasEmptyBottle() == 0) {
        return 3;
    }
    if (gSaveContext.rupees < this->unk_1C8) {
        return 4;
    }
    if (Item_CheckObtainability(0x17) == 0xFF) {
        return 0;
    }
    return 1;
}

s32 func_80A3AF30(GlobalContext* globalCtx, EnGirlA* this) {
    if ((gBitFlags[2] & gSaveContext.equipment) != 0) {
        if ((gBitFlags[3] & gSaveContext.equipment) == 0) {
            return 2;
        }
    }
    if (gSaveContext.rupees < this->unk_1C8) {
        return 4;
    }
    if (Item_CheckObtainability(0x3D) == 0xFF) {
        return 0;
    }
    return 1;
}

s32 func_80A3AFC4(GlobalContext* globalCtx, EnGirlA* this) {
    if ((gBitFlags[5] & gSaveContext.equipment) != 0) {
        return 2;
    }
    if (gSaveContext.rupees < this->unk_1C8) {
        return 4;
    }
    if (Item_CheckObtainability(0x3F) == 0xFF) {
        return 0;
    }
    return 1;
}

s32 func_80A3B040(GlobalContext* globalCtx, EnGirlA* this) {
    if ((gBitFlags[4] & gSaveContext.equipment) != 0) {
        return 2;
    }
    if (gSaveContext.rupees < this->unk_1C8) {
        return 4;
    }
    if (Item_CheckObtainability(0x3E) == 0xFF) {
        return 0;
    }
    return 1;
}

s32 func_80A3B0BC(GlobalContext* globalCtx, EnGirlA* this) {
    if (LINK_AGE_IN_YEARS == YEARS_CHILD) {
        return 2;
    }
    if ((gBitFlags[9] & gSaveContext.equipment) != 0) {
        return 2;
    }
    if (gSaveContext.rupees < this->unk_1C8) {
        return 4;
    }
    if (Item_CheckObtainability(0x42) == 0xFF) {
        return 0;
    }
    return 1;
}

s32 func_80A3B160(GlobalContext* globalCtx, EnGirlA* this) {
    if (LINK_AGE_IN_YEARS == YEARS_CHILD) {
        return 2;
    }
    if ((gBitFlags[10] & gSaveContext.equipment) != 0) {
        return 2;
    }
    if (gSaveContext.rupees < this->unk_1C8) {
        return 4;
    }
    if (Item_CheckObtainability(0x43) == 0xFF) {
        return 0;
    }
    return 1;
}

s32 func_80A3B204(GlobalContext* globalCtx, EnGirlA* this) {
    if (gSaveContext.healthCapacity == gSaveContext.health) {
        return 2;
    }
    if (gSaveContext.rupees < this->unk_1C8) {
        return 4;
    }
    return 1;
}

s32 func_80A3B250(GlobalContext* globalCtx, EnGirlA* this) {
    if (gSaveContext.rupees < this->unk_1C8) {
        return 4;
    }
    if (Item_CheckObtainability(0x1A) == 0xFF) {
        return 0;
    }
    return 1;
}

s32 func_80A3B2AC(GlobalContext* globalCtx, EnGirlA* this) {
    if (gSaveContext.rupees < this->unk_1C8) {
        return 4;
    }
    if (Item_CheckObtainability(0x23) == 0xFF) {
        return 0;
    }
    return 1;
}

s32 func_80A3B308(GlobalContext* globalCtx, EnGirlA* this) {
    return 4;
}

s32 func_80A3B318(GlobalContext* globalCtx, EnGirlA* this) {
    return 4;
}

s32 func_80A3B328(GlobalContext* globalCtx, EnGirlA* this) {
    if (gSaveContext.ammo[gItemSlots[9]] >= 0x32) {
        return 2;
    }
    if (gSaveContext.rupees < this->unk_1C8) {
        return 4;
    }
    if (Item_CheckObtainability(9) == 0xFF) {
        return 0;
    }
    return 1;
}

s32 func_80A3B3A8(GlobalContext* globalCtx, EnGirlA* this) {
    if (gSaveContext.ammo[gItemSlots[6]] >= gUpgradeCapacities[5][(s32)(gSaveContext.upgrades & gUpgradeMasks[5]) >> gUpgradeShifts[5]]) {
        return 2;
    }
    if (gSaveContext.rupees < this->unk_1C8) {
        return 4;
    }
    if (Item_CheckObtainability(0x58) == 0xFF) {
        return 0;
    }
    return 1;
}

s32 func_80A3B454(GlobalContext* globalCtx, EnGirlA* this) {
    return 5;
}

s32 func_80A3B464(GlobalContext* globalCtx, EnGirlA* this) {
    if (Inventory_HasEmptyBottle() == 0) {
        return 3;
    }
    if (gSaveContext.rupees < this->unk_1C8) {
        return 4;
    }
    if (Item_CheckObtainability(0x1C) == 0xFF) {
        return 0;
    }
    return 1;
}

s32 func_80A3B4D8(GlobalContext* globalCtx, EnGirlA* this) {
    if (Inventory_HasEmptyBottle() == 0) {
        return 3;
    }
    if (gSaveContext.rupees < this->unk_1C8) {
        return 4;
    }
    if (Item_CheckObtainability(0x1D) == 0xFF) {
        return 0;
    }
    return 1;
}

s32 func_80A3B54C(GlobalContext* globalCtx, EnGirlA* this) {
    if (Inventory_HasEmptyBottle() == 0) {
        return 3;
    }
    if (gSaveContext.rupees < this->unk_1C8) {
        return 4;
    }
    if (Item_CheckObtainability(0x20) == 0xFF) {
        return 0;
    }
    return 1;
}

s32 func_80A3B5C0(GlobalContext* globalCtx, EnGirlA* this) {
    if (Inventory_HasEmptyBottle() == 0) {
        return 3;
    }
    if (gSaveContext.rupees < this->unk_1C8) {
        return 4;
    }
    if (Item_CheckObtainability(0x18) == 0xFF) {
        return 0;
    }
    return 1;
}

void func_80A3B634(GlobalContext* globalCtx, EnGirlA* this) {
    Inventory_ChangeAmmo(3, this->unk_1CA);
    Rupees_ChangeBy(-this->unk_1C8);
}


void func_80A3B678(GlobalContext* globalCtx, EnGirlA* this) {
    switch (this->unk_1CA) {
    case 5:
        Item_Give(globalCtx, 0x8E);
        break;
    case 10:
        Item_Give(globalCtx, 0x8F);
        break;
    case 20:
        Item_Give(globalCtx, 0x90);
        break;
    case 30:
        Item_Give(globalCtx, 0x91);
        break;
    }
    Rupees_ChangeBy(-this->unk_1C8);
}

void func_80A3B714(GlobalContext* globalCtx, EnGirlA* this) {
    switch (this->unk_1CA) {
    case 5:
        Item_Give(globalCtx, 0x8C);
        break;
    case 10:
        Item_Give(globalCtx, 0x8D);
        break;
    }
    Rupees_ChangeBy(-this->unk_1C8);
}

void func_80A3B780(GlobalContext* globalCtx, EnGirlA* this) {
    Item_Give(globalCtx, 0);
    Rupees_ChangeBy(-this->unk_1C8);
}

void func_80A3B7BC(GlobalContext* globalCtx, EnGirlA* this) {
    func_800849EC(globalCtx);
    gSaveContext.bgsHitsLeft = 8;
    Rupees_ChangeBy(-this->unk_1C8);
}

void func_80A3B800(GlobalContext* globalCtx, EnGirlA* this) {
    Item_Give(globalCtx, 0x3F);
    Rupees_ChangeBy(-this->unk_1C8);
}

void func_80A3B83C(GlobalContext* globalCtx, EnGirlA* this) {
    Item_Give(globalCtx, 0x3E);
    Rupees_ChangeBy(-this->unk_1C8);
}

void func_80A3B878(GlobalContext* globalCtx, EnGirlA* this) {
    Item_Give(globalCtx, 0x42);
    Rupees_ChangeBy(-this->unk_1C8);
}

void func_80A3B8B4(GlobalContext* globalCtx, EnGirlA* this) {
    Item_Give(globalCtx, 0x43);
    Rupees_ChangeBy(-this->unk_1C8);
}

void func_80A3B8F0(GlobalContext* globalCtx, EnGirlA* this) {
    Health_ChangeBy(globalCtx, this->unk_1CA);
    Rupees_ChangeBy(-this->unk_1C8);
}

void func_80A3B92C(GlobalContext* globalCtx, EnGirlA* this) {
    Item_Give(globalCtx, 0x1A);
    Rupees_ChangeBy(-this->unk_1C8);
}

void func_80A3B968(GlobalContext* globalCtx, EnGirlA* this) {
    Item_Give(globalCtx, 0x21);
    Rupees_ChangeBy(-this->unk_1C8);
}

void func_80A3B9A4(GlobalContext* globalCtx, EnGirlA* this) {
    Rupees_ChangeBy(-this->unk_1C8);
}

void func_80A3B9D4(GlobalContext* globalCtx, EnGirlA* this) {
    Rupees_ChangeBy(-this->unk_1C8);
}

void func_80A3BA04(GlobalContext* globalCtx, EnGirlA* this) {
    Item_Give(globalCtx, 0x95);
    Rupees_ChangeBy(-this->unk_1C8);
}

void func_80A3BA40(GlobalContext* globalCtx, EnGirlA* this) {
    switch(this->actor.params) {
        case 7:
            Item_Give(globalCtx, 0x19);
            break;
        case 8:
            Item_Give(globalCtx, 0x15);
            break;
        case 9:
            Item_Give(globalCtx, 0x16);
            break;
        case 10:
            Item_Give(globalCtx, 0x17);
            break;
        case 0x27:
            Item_Give(globalCtx, 0x1C);
            break;
        case 0x28:
            Item_Give(globalCtx, 0x1D);
            break;
        case 0x29:
            Item_Give(globalCtx, 0x1E);
            break;
        case 0x2A:
            Item_Give(globalCtx, 0x20);
            break;
        case 0x2B:
            Item_Give(globalCtx, 0x18);
            break;
    }
    Rupees_ChangeBy(-this->unk_1C8);
}

void func_80A3BB6C(GlobalContext* globalCtx, EnGirlA* this) {
    if (this->actor.params == 0xC) {
        if ((gSaveContext.infTable[7] & 0x40)) {
            Rupees_ChangeBy(-(this->unk_1C8 - D_80A3CCB4[(s32)Math_Rand_ZeroFloat(7.9f)]));
            return;
        }
    }
    Rupees_ChangeBy(-this->unk_1C8);
}

void func_80A3BC0C(GlobalContext* globalCtx, EnGirlA* this) {
    Rupees_ChangeBy(-this->unk_1C8);
}

void func_80A3BC3C(GlobalContext* globalCtx, EnGirlA* this) {
    Rupees_ChangeBy(-this->unk_1C8);
}

void func_80A3BC6C(GlobalContext* globalCtx, EnGirlA* this) {
    switch(this->actor.params) {
        case 0x18:
            gSaveContext.itemGetInf[0] |= 0x40;
            break;
        case 0x19:
            gSaveContext.itemGetInf[0] |= 0x80;
            break;
        case 0x1A:
            gSaveContext.itemGetInf[0] |= 0x100;
            break;
        case 0x1B:
            gSaveContext.itemGetInf[0] |= 0x200;
            break;
        case 0x1C:
            gSaveContext.itemGetInf[0] |= 0x400;
            break;
        case 0x15:
            gSaveContext.itemGetInf[0] |= 0x8;
            break;
        case 0x16:
            gSaveContext.itemGetInf[0] |= 0x10;
            break;
        case 0x17:
            gSaveContext.itemGetInf[0] |= 0x20;
            break;
    }
    Rupees_ChangeBy(-this->unk_1C8);
}

void func_80A3BD80(GlobalContext* globalCtx, EnGirlA* this) {
}

void func_80A3C4D4(Actor*, GlobalContext*);
void func_80A3BEAC(GlobalContext*, EnGirlA*);

void func_80A3BD8C(GlobalContext* globalCtx, EnGirlA* this) {
    GirlAThing* tmp = &D_80A3C674[this->actor.params];
    s32 params = this->actor.params;
    s32 params2;
    s32 tmp3;

    if ((this->actor.params >= 0x1E) && (this->actor.params < 0x23) ){
        params2 = this->actor.params - 0x1E;
        tmp3 = 0;
        switch (this->actor.params) {
            case 0x1E:
                if ((gSaveContext.itemGetInf[3] & 0x100) != 0) {
                    tmp3 = 1;
                }
                break;
            case 0x1F:
                if (gSaveContext.itemGetInf[3] & 0x400) {
                    tmp3 = 1;
                }
                break;
            case 0x20:
                if (gSaveContext.itemGetInf[3] & 0x200) {
                    tmp3 = 1;
                }
                break;
            case 0x21:
                if (gSaveContext.itemGetInf[3] & 0x800) {
                    tmp3 = 1;
                }
                break;
            case 0x22:
                if (gSaveContext.itemGetInf[3] & 0x800) {
                    tmp3 = 1;
                }
                break;
        }
        if (tmp3 != 0) {
            this->actor.textId = D_80A3C668[params2];
        } else {
            this->actor.textId = tmp->unk_0C;
        }
    } else {
        this->actor.textId = tmp->unk_0C;
    }
    this->unk_1A8 = 0;
    this->actor.draw = func_80A3C4D4;
}

void func_80A3BEAC(GlobalContext* globalCtx, EnGirlA* this) {
    this->unk_1A8 = 1;
    this->actor.draw = NULL;
    if ((this->actor.params >= 0x1E) && (this->actor.params < 0x26)) {
        this->actor.textId = 0xBD;
    }
}

#ifdef NON_MATCHING
void func_80A3BEE0(GlobalContext* globalCtx, EnGirlA* this) {
    GirlAThing* tmp;
    if (func_80A3A758(this)) {
        func_80A3A8D0(this, globalCtx);
        tmp = &D_80A3C674[this->actor.params];
        this->actor.textId = tmp->unk_0C;
    } else {
        this->unk_1A8 = 0;
        this->actor.draw = func_80A3C4D4;
    }
}
#else
#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_GirlA/func_80A3BEE0.s")
#endif

s32 func_80A3BF54(EnGirlA* this, GlobalContext* globalCtx) {
    if ((this->actor.params >= 0x1E) && (this->actor.params < 0x26) ) {
        s32 params = this->actor.params - 0x1E;
        if (gSaveContext.items[gItemSlots[0x21]] == D_80A3C658[params]) {
            func_80A3BEAC(globalCtx, this);
            return 1;
        }
        func_80A3BD8C(globalCtx, this);
        return 1;
    }
    return 0;
}

void func_80A3C3BC(EnGirlA*, GlobalContext*);
void func_80A3BEE0(GlobalContext*, EnGirlA*);

void func_80A3BFE4(EnGirlA* this, GlobalContext* globalCtx) {
    
    s16 params = this->actor.params;
    GirlAThing* tmp = &D_80A3C674[params];

    if (Object_IsLoaded(&globalCtx->objectCtx, this->unk_194)) {
        this->actor.flags &= 0xFFFFFFEF;
        this->actor.objBankIndex = this->unk_194;
        switch (this->actor.params - 0x1E) {
            case 0:
                if (gSaveContext.itemGetInf[3] & 0x100) {
                    this->actor.textId = 0x70B6;
                } else {
                    this->actor.textId = tmp->unk_0C;
                }
                this->unk_1A0 = tmp->unk_0E;
                break;
            case 1:

                if (gSaveContext.itemGetInf[3] & 0x400) {
                    this->actor.textId = 0x70B5;
                } else {
                    this->actor.textId = tmp->unk_0C;
                }
                this->unk_1A0 = tmp->unk_0E;
                break;
            case 2:
                if (gSaveContext.itemGetInf[3] & 0x200) {
                    this->actor.textId = 0x70B4;
                } else {
                    this->actor.textId = tmp->unk_0C;
                }

                this->unk_1A0 = tmp->unk_0E;
                break;
            case 3:
                if (gSaveContext.itemGetInf[3] & 0x800) {
                    this->actor.textId = 0x70B7;
                } else {
                    this->actor.textId = tmp->unk_0C;
                }
                
                this->unk_1A0 = tmp->unk_0E;
                break;
            case 4:
                if (gSaveContext.itemGetInf[3] & 0x800) {
                    this->actor.textId = 0x70BB;
                    this->unk_1A0 = tmp->unk_0E;
                } else {
                    this->actor.textId = tmp->unk_0C;
                    this->unk_1A0 = 0xEB;
                }
                break;
            case 5:
                
                this->actor.textId = tmp->unk_0C;
                this->unk_1A0 = tmp->unk_0E;
                break;
            case 6:

                this->actor.textId = tmp->unk_0C;
                this->unk_1A0 = tmp->unk_0E;
                break;
            case 7:
                this->actor.textId = tmp->unk_0C;
                this->unk_1A0 = tmp->unk_0E;
                break;
            default:
                this->actor.textId = tmp->unk_0C;
                this->unk_1A0 = tmp->unk_0E;
                break;
        }
        if (func_80A3BF54(this, globalCtx) == 0) {
            func_80A3BD8C(globalCtx, this);
        }
        
        this->unk_1AC = func_80A3BEAC;
        this->unk_1B0 = func_80A3BEE0;
        this->unk_1A4 = tmp->unk_10;
        this->unk_1BC = tmp->unk_14;
        this->unk_1C0 = tmp->unk_18;
        this->unk_1C4 = tmp->unk_1C;
        this->unk_1C8 = tmp->unk_08;
        this->unk_1CA = tmp->unk_0A;
        this->unk_1D0 = tmp->unk_04;
        this->unk_1CC = tmp->unk_02;
        osSyncPrintf("%s(%2d)\n", D_80A3C590[params], params);
        this->actor.flags &= 0xFFFFFFFE;
        Actor_SetScale(&this->actor, 0.25f);
        this->actor.shape.unk_08 = 24.0f;
        this->actor.shape.unk_10 = 4.0f;
        this->actor.groundY = this->actor.initPosRot.pos.y;
        this->actor.gravity = 0.0f;
        func_80A3A750(this, func_80A3BD80);
        this->unk_19C = 1;
        this->unk_198 = func_80A3C3BC;
        this->unk_1B4 = 0;
        this->unk_1B8 = 0;
        this->unk_1B6 = this->actor.shape.rot.y;
    }
}

void func_80A3C3BC(EnGirlA* this, GlobalContext* globalCtx) {
    Actor_SetScale(&this->actor, 0.25f);
    this->actor.shape.unk_08 = 24.0f;
    this->actor.shape.unk_10 = 4.0f;
    func_80A3BF54(this, globalCtx);
    this->actionFunc(this, globalCtx);
    Actor_SetHeight(&this->actor, 5.0f);
    this->actor.shape.rot.x = 0.0f;
    if (this->actor.params != 0x26) {
        if (this->unk_1B4 != 0) {
            this->unk_1B8 += 0x1F4;
            return;
        }
        Math_SmoothScaleMaxMinS(&this->unk_1B8, 0, 10, 0x7D0, 0);
    }
}

void EnGirlA_Update(Actor* thisx, GlobalContext* globalCtx) {
    EnGirlA* this = THIS;
    this->unk_198(this, globalCtx);
}

void func_80A3C498(Actor* this, GlobalContext* globalCtx, s32 flags) {
    func_8002EBCC(this, globalCtx, 0);
    func_8002ED80(this, globalCtx, 0);
}

void func_80A3C4D4(Actor* thisx, GlobalContext* globalCtx) {
    EnGirlA* this = THIS;
    Matrix_RotateY(((this->unk_1B8 * 360.0f) / 65536.0f) * 0.017453292f, MTXMODE_APPLY);
    if (this->unk_1D0 != NULL) {
        this->unk_1D0(thisx, globalCtx, 0);
    }
    func_800694A0(globalCtx, this->unk_1CC);
}