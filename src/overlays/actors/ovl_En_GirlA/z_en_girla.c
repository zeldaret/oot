/*
 * File: z_en_girla.c
 * Overlay: En_GirlA
 * Description: Shop Items
 */

#include "z_en_girla.h"
#include "vt.h"

#define FLAGS 0x00000019

#define THIS ((EnGirlA*)thisx)

void EnGirlA_Init(Actor* thisx, GlobalContext* globalCtx);
void EnGirlA_Destroy(Actor* thisx, GlobalContext* globalCtx);
void EnGirlA_Update(Actor* thisx, GlobalContext* globalCtx);

void func_80A3BEAC(GlobalContext* globalCtx, EnGirlA* this);
void func_80A3BEE0(GlobalContext* globalCtx, EnGirlA* this);
void func_80A3BFE4(EnGirlA* this, GlobalContext* globalCtx);
void func_80A3C3BC(EnGirlA* this, GlobalContext* globalCtx);
void func_80A3C498(Actor* thisx, GlobalContext* globalCtx, s32 flags);
void func_80A3C4D4(Actor* thisx, GlobalContext* globalCtx);

s32 func_80A3AAA8(GlobalContext* globalCtx, EnGirlA* this);
s32 func_80A3AB58(GlobalContext* globalCtx, EnGirlA* this);
s32 func_80A3ABF8(GlobalContext* globalCtx, EnGirlA* this);
s32 func_80A3ACAC(GlobalContext* globalCtx, EnGirlA* this);
s32 func_80A3AD60(GlobalContext* globalCtx, EnGirlA* this);
s32 func_80A3ADD4(GlobalContext* globalCtx, EnGirlA* this);
s32 func_80A3AE48(GlobalContext* globalCtx, EnGirlA* this);
s32 func_80A3AEBC(GlobalContext* globalCtx, EnGirlA* this);
s32 func_80A3AF30(GlobalContext* globalCtx, EnGirlA* this);
s32 func_80A3AFC4(GlobalContext* globalCtx, EnGirlA* this);
s32 func_80A3B040(GlobalContext* globalCtx, EnGirlA* this);
s32 func_80A3B0BC(GlobalContext* globalCtx, EnGirlA* this);
s32 func_80A3B160(GlobalContext* globalCtx, EnGirlA* this);
s32 func_80A3B204(GlobalContext* globalCtx, EnGirlA* this);
s32 func_80A3B250(GlobalContext* globalCtx, EnGirlA* this);
s32 func_80A3B2AC(GlobalContext* globalCtx, EnGirlA* this);
s32 func_80A3B308(GlobalContext* globalCtx, EnGirlA* this);
s32 func_80A3B318(GlobalContext* globalCtx, EnGirlA* this);
s32 func_80A3B328(GlobalContext* globalCtx, EnGirlA* this);
s32 func_80A3B3A8(GlobalContext* globalCtx, EnGirlA* this);
s32 func_80A3B454(GlobalContext* globalCtx, EnGirlA* this);
s32 func_80A3B464(GlobalContext* globalCtx, EnGirlA* this);
s32 func_80A3B4D8(GlobalContext* globalCtx, EnGirlA* this);
s32 func_80A3B54C(GlobalContext* globalCtx, EnGirlA* this);
s32 func_80A3B5C0(GlobalContext* globalCtx, EnGirlA* this);

void func_80A3B714(GlobalContext* globalCtx, EnGirlA* this);
void func_80A3B634(GlobalContext* globalCtx, EnGirlA* this);
void func_80A3B678(GlobalContext* globalCtx, EnGirlA* this);
void func_80A3B780(GlobalContext* globalCtx, EnGirlA* this);
void func_80A3BA40(GlobalContext* globalCtx, EnGirlA* this);
void func_80A3B7BC(GlobalContext* globalCtx, EnGirlA* this);
void func_80A3B800(GlobalContext* globalCtx, EnGirlA* this);
void func_80A3B83C(GlobalContext* globalCtx, EnGirlA* this);
void func_80A3B878(GlobalContext* globalCtx, EnGirlA* this);
void func_80A3B8B4(GlobalContext* globalCtx, EnGirlA* this);
void func_80A3B8F0(GlobalContext* globalCtx, EnGirlA* this);
void func_80A3B92C(GlobalContext* globalCtx, EnGirlA* this);
void func_80A3B968(GlobalContext* globalCtx, EnGirlA* this);
void func_80A3B9A4(GlobalContext* globalCtx, EnGirlA* this);
void func_80A3B9D4(GlobalContext* globalCtx, EnGirlA* this);
void func_80A3BA04(GlobalContext* globalCtx, EnGirlA* this);
void func_80A3BB6C(GlobalContext* globalCtx, EnGirlA* this);
void func_80A3BC0C(GlobalContext* globalCtx, EnGirlA* this);
void func_80A3BC3C(GlobalContext* globalCtx, EnGirlA* this);
void func_80A3BC6C(GlobalContext* globalCtx, EnGirlA* this);

const ActorInit En_GirlA_InitVars = {
    ACTOR_EN_GIRLA,
    ACTORCAT_PROP,
    FLAGS,
    OBJECT_GAMEPLAY_KEEP,
    sizeof(EnGirlA),
    (ActorFunc)EnGirlA_Init,
    (ActorFunc)EnGirlA_Destroy,
    (ActorFunc)EnGirlA_Update,
    NULL,
};

static char* D_80A3C590[] = {
    "デクの実×5   ",  "矢×30        ",  "矢×50        ",  "爆弾×5       ",  "デクの実×10  ",  "デクの棒      ",
    "爆弾×10      ",  "さかな        ", "赤クスリ      ", "緑クスリ      ", "青クスリ      ", "巨人のナイフ  ",
    "ハイリアの盾  ", "デクの盾      ", "ゴロンの服    ", "ゾ─ラの服    ",  "回復のハート  ", "ロンロン牛乳  ",
    "鶏の卵        ", "インゴー牛乳  ", "インゴー卵    ", "もだえ石      ", "大人の財布    ", "ハートの欠片  ",
    "ボムチュウ    ", "ボムチュウ    ", "ボムチュウ    ", "ボムチュウ    ", "ボムチュウ    ", "デクのタネ    ",
    "キータンのお面", "こわそなお面  ", "ドクロのお面  ", "ウサギずきん  ", "まことの仮面  ", "ゾーラのお面  ",
    "ゴロンのお面  ", "ゲルドのお面  ", "ＳＯＬＤＯＵＴ", "炎            ", "虫            ", "チョウチョ    ",
    "ポウ          ", "妖精の魂      ", "矢×10        ",  "爆弾×20      ",  "爆弾×30      ",  "爆弾×5       ",
    "赤クスリ      ", "赤クスリ      ",
};

static s16 D_80A3C658[8] = { ITEM_MASK_KEATON, ITEM_MASK_SPOOKY, ITEM_MASK_SKULL, ITEM_MASK_BUNNY,
                             ITEM_MASK_TRUTH,  ITEM_MASK_ZORA,   ITEM_MASK_GORON, ITEM_MASK_GERUDO };

static u16 D_80A3C668[5] = { 0x70B6, 0x70B5, 0x70B4, 0x70B7, 0x70BB };

typedef struct {
    /* 0x00 */ s16 objID;
    /* 0x02 */ s16 giDrawId;
    /* 0x04 */ void (*unk_04)(Actor*, GlobalContext*, s32);
    /* 0x08 */ s16 unk_08;
    /* 0x0A */ s16 unk_0A;
    /* 0x0C */ u16 unk_0C;
    /* 0x0C */ u16 unk_0E;
    /* 0x10 */ s32 unk_10;
    /* 0x14 */ s32 (*unk_14)(GlobalContext*, EnGirlA*);
    /* 0x18 */ void (*unk_18)(GlobalContext*, EnGirlA*);
    /* 0x1C */ void (*unk_1C)(GlobalContext*, EnGirlA*);
} ShopItemEntry; // size = 0x20

static ShopItemEntry D_80A3C674[] = {
    { OBJECT_GI_NUTS, GID_NUTS, func_8002ED80, 0x000F, 0x0005, 0x00B2, 0x007F, GI_NUTS_5_2, func_80A3ABF8, func_80A3B714,
      func_80A3BB6C },
    { OBJECT_GI_ARROW, GID_ARROWS_MEDIUM, func_8002EBCC, 0x003C, 0x001E, 0x00C1, 0x009B, GI_ARROWS_MEDIUM, func_80A3AAA8,
      func_80A3B634, func_80A3BB6C },
    { OBJECT_GI_ARROW, GID_ARROWS_LARGE, func_8002EBCC, 0x005A, 0x0032, 0x00B0, 0x007D, GI_ARROWS_LARGE, func_80A3AAA8,
      func_80A3B634, func_80A3BB6C },
    { OBJECT_GI_BOMB_1, GID_BOMB, func_8002EBCC, 0x0019, 0x0005, 0x00A3, 0x008B, GI_BOMBS_5, func_80A3AB58,
      func_80A3B678, func_80A3BB6C },
    { OBJECT_GI_NUTS, GID_NUTS, func_8002ED80, 0x001E, 0x000A, 0x00A2, 0x0087, GI_NUTS_10, func_80A3ABF8, func_80A3B714,
      func_80A3BB6C },
    { OBJECT_GI_STICK, GID_STICK, NULL, 0x000A, 0x0001, 0x00A1, 0x0088, GI_STICKS_1, func_80A3ACAC, func_80A3B780,
      func_80A3BB6C },
    { OBJECT_GI_BOMB_1, GID_BOMB, func_8002EBCC, 0x0032, 0x000A, 0x00B1, 0x007C, GI_BOMBS_10, func_80A3AB58,
      func_80A3B678, func_80A3BB6C },
    { OBJECT_GI_FISH, GID_FISH, func_8002ED80, 0x00C8, 0x0001, 0x00B3, 0x007E, GI_FISH, func_80A3AD60, NULL,
      func_80A3BB6C },
    { OBJECT_GI_LIQUID, GID_POTION_RED, func_8002EBCC, 0x001E, 0x0001, 0x00A5, 0x008E, GI_POTION_RED, func_80A3ADD4,
      func_80A3BA40, func_80A3BB6C },
    { OBJECT_GI_LIQUID, GID_POTION_GREEN, func_8002EBCC, 0x001E, 0x0001, 0x00A6, 0x008F, GI_POTION_GREEN, func_80A3AE48,
      func_80A3BA40, func_80A3BB6C },
    { OBJECT_GI_LIQUID, GID_POTION_BLUE, func_8002EBCC, 0x003C, 0x0001, 0x00A7, 0x0090, GI_POTION_BLUE, func_80A3AEBC,
      func_80A3BA40, func_80A3BB6C },
    { OBJECT_GI_LONGSWORD, GID_SWORD_BGS, func_8002EBCC, 0x03E8, 0x0001, 0x00A8, 0x0091, GI_SWORD_KNIFE, func_80A3AF30,
      func_80A3B7BC, func_80A3BB6C },
    { OBJECT_GI_SHIELD_2, GID_SHIELD_HYLIAN, func_8002EBCC, 0x0050, 0x0001, 0x00A9, 0x0092, GI_SHIELD_HYLIAN,
      func_80A3AFC4, func_80A3B800, func_80A3BB6C },
    { OBJECT_GI_SHIELD_1, GID_SHIELD_DEKU, func_8002EBCC, 0x0028, 0x0001, 0x009F, 0x0089, GI_SHIELD_DEKU, func_80A3B040,
      func_80A3B83C, func_80A3BB6C },
    { OBJECT_GI_CLOTHES, GID_TUNIC_GORON, NULL, 0x00C8, 0x0001, 0x00AA, 0x0093, GI_TUNIC_GORON, func_80A3B0BC,
      func_80A3B878, func_80A3BC0C },
    { OBJECT_GI_CLOTHES, GID_TUNIC_ZORA, NULL, 0x012C, 0x0001, 0x00AB, 0x0094, GI_TUNIC_ZORA, func_80A3B160,
      func_80A3B8B4, func_80A3BC3C },
    { OBJECT_GI_HEART, GID_HEART, NULL, 0x000A, 0x0010, 0x00AC, 0x0095, GI_HEART, func_80A3B204, func_80A3B8F0,
      func_80A3BB6C },
    { OBJECT_GI_MILK, GID_MILK, func_80A3C498, 0x0064, 0x0001, 0x00AD, 0x0097, GI_MILK_BOTTLE, func_80A3B250,
      func_80A3B92C, func_80A3BB6C },
    { OBJECT_GI_EGG, GID_EGG, func_8002EBCC, 0x0064, 0x0001, 0x00AE, 0x0099, GI_WEIRD_EGG, func_80A3B2AC, func_80A3B968,
      func_80A3BB6C },
    { OBJECT_GI_MILK, GID_MILK, func_80A3C498, 0x2710, 0x0001, 0x00B4, 0x0085, GI_NONE, func_80A3B308, func_80A3B9A4,
      func_80A3BB6C },
    { OBJECT_GI_EGG, GID_EGG, func_8002EBCC, 0x2710, 0x0001, 0x00B5, 0x0085, GI_NONE, func_80A3B318, func_80A3B9D4,
      func_80A3BB6C },
    { OBJECT_GI_BOMB_2, GID_BOMBCHU, func_8002EBCC, 0x0064, 0x000A, 0x00BC, 0x008C, GI_BOMBCHUS_10, func_80A3B328, NULL,
      func_80A3BC6C },
    { OBJECT_GI_BOMB_2, GID_BOMBCHU, func_8002EBCC, 0x00B4, 0x0014, 0x0061, 0x002A, GI_BOMBCHUS_20, func_80A3B328, NULL,
      func_80A3BC6C },
    { OBJECT_GI_BOMB_2, GID_BOMBCHU, func_8002EBCC, 0x00B4, 0x0014, 0x0061, 0x002A, GI_BOMBCHUS_20, func_80A3B328, NULL,
      func_80A3BC6C },
    { OBJECT_GI_BOMB_2, GID_BOMBCHU, func_8002EBCC, 0x0064, 0x000A, 0x00BC, 0x008C, GI_BOMBCHUS_10, func_80A3B328, NULL,
      func_80A3BC6C },
    { OBJECT_GI_BOMB_2, GID_BOMBCHU, func_8002EBCC, 0x0064, 0x000A, 0x00BC, 0x008C, GI_BOMBCHUS_10, func_80A3B328, NULL,
      func_80A3BC6C },
    { OBJECT_GI_BOMB_2, GID_BOMBCHU, func_8002EBCC, 0x00B4, 0x0014, 0x0061, 0x002A, GI_BOMBCHUS_20, func_80A3B328, NULL,
      func_80A3BC6C },
    { OBJECT_GI_BOMB_2, GID_BOMBCHU, func_8002EBCC, 0x00B4, 0x0014, 0x0061, 0x002A, GI_BOMBCHUS_20, func_80A3B328, NULL,
      func_80A3BC6C },
    { OBJECT_GI_BOMB_2, GID_BOMBCHU, func_8002EBCC, 0x0064, 0x000A, 0x00BC, 0x008C, GI_BOMBCHUS_10, func_80A3B328, NULL,
      func_80A3BC6C },
    { OBJECT_GI_SEED, GID_SEEDS, func_8002EBCC, 0x001E, 0x001E, 0x00DF, 0x00DE, GI_SEEDS_30, func_80A3B3A8,
      func_80A3BA04, func_80A3BB6C },
    { OBJECT_GI_KI_TAN_MASK, GID_MASK_KEATON, func_8002EBCC, 0x0000, 0x0001, 0x70B2, 0x70BE, GI_MASK_KEATON,
      func_80A3B3A8, func_80A3BA04, func_80A3BB6C },
    { OBJECT_GI_REDEAD_MASK, GID_MASK_SPOOKY, func_8002EBCC, 0x0000, 0x0001, 0x70B1, 0x70BD, GI_MASK_SPOOKY,
      func_80A3B3A8, func_80A3BA04, func_80A3BB6C },
    { OBJECT_GI_SKJ_MASK, GID_MASK_SKULL, func_8002EBCC, 0x0000, 0x0001, 0x70B0, 0x70BC, GI_MASK_SKULL, func_80A3B3A8,
      func_80A3BA04, func_80A3BB6C },
    { OBJECT_GI_RABIT_MASK, GID_MASK_BUNNY, func_8002EBCC, 0x0000, 0x0001, 0x70B3, 0x70BF, GI_MASK_BUNNY, func_80A3B3A8,
      func_80A3BA04, func_80A3BB6C },
    { OBJECT_GI_TRUTH_MASK, GID_MASK_TRUTH, func_80A3C498, 0x0000, 0x0001, 0x70AF, 0x70C3, GI_MASK_TRUTH, func_80A3B3A8,
      func_80A3BA04, func_80A3BB6C },
    { OBJECT_GI_ZORAMASK, GID_MASK_ZORA, NULL, 0x0000, 0x0001, 0x70B9, 0x70C1, GI_MASK_ZORA, func_80A3B3A8,
      func_80A3BA04, func_80A3BB6C },
    { OBJECT_GI_GOLONMASK, GID_MASK_GORON, NULL, 0x0000, 0x0001, 0x70B8, 0x70C0, GI_MASK_GORON, func_80A3B3A8,
      func_80A3BA04, func_80A3BB6C },
    { OBJECT_GI_GERUDOMASK, GID_MASK_GERUDO, NULL, 0x0000, 0x0001, 0x70BA, 0x70C2, GI_MASK_GERUDO, func_80A3B3A8,
      func_80A3BA04, func_80A3BB6C },
    { OBJECT_GI_SOLDOUT, GID_SOLDOUT, func_8002EBCC, 0x0000, 0x0000, 0x00BD, 0x70C2, GI_MASK_GERUDO, func_80A3B454, NULL,
      NULL },
    { OBJECT_GI_FIRE, GID_BLUE_FIRE, func_8002EBCC, 0x012C, 0x0001, 0x00B9, 0x00B8, GI_BLUE_FIRE, func_80A3B464,
      func_80A3BA40, func_80A3BB6C },
    { OBJECT_GI_INSECT, GID_BUG, func_80A3C498, 0x0032, 0x0001, 0x00BB, 0x00BA, GI_BUGS, func_80A3B4D8, func_80A3BA40,
      func_80A3BB6C },
    { OBJECT_GI_GHOST, GID_BIG_POE, func_80A3C498, 0x0032, 0x0001, 0x506F, 0x5070, GI_BIG_POE, func_80A3B54C,
      func_80A3BA40, func_80A3BB6C },
    { OBJECT_GI_GHOST, GID_POE, func_80A3C498, 0x001E, 0x0001, 0x506D, 0x506E, GI_POE, func_80A3B54C, func_80A3BA40,
      func_80A3BB6C },
    { OBJECT_GI_SOUL, GID_FAIRY, func_80A3C498, 0x0032, 0x0001, 0x00B7, 0x00B6, GI_FAIRY, func_80A3B5C0, func_80A3BA40,
      func_80A3BB6C },
    { OBJECT_GI_ARROW, GID_ARROWS_SMALL, func_8002EBCC, 0x0014, 0x000A, 0x00A0, 0x008A, GI_ARROWS_SMALL, func_80A3AAA8,
      func_80A3B634, func_80A3BB6C },
    { OBJECT_GI_BOMB_1, GID_BOMB, func_8002EBCC, 0x0050, 0x0014, 0x001C, 0x0006, GI_BOMBS_20, func_80A3AB58,
      func_80A3B678, func_80A3BB6C },
    { OBJECT_GI_BOMB_1, GID_BOMB, func_8002EBCC, 0x0078, 0x001E, 0x001D, 0x001E, GI_BOMBS_30, func_80A3AB58,
      func_80A3B678, func_80A3BB6C },
    { OBJECT_GI_BOMB_1, GID_BOMB, func_8002EBCC, 0x0023, 0x0005, 0x00CB, 0x00CA, GI_BOMBS_5, func_80A3AB58,
      func_80A3B678, func_80A3BB6C },
    { OBJECT_GI_LIQUID, GID_POTION_RED, func_8002EBCC, 0x0028, 0x0001, 0x0064, 0x0062, GI_POTION_RED, func_80A3ADD4,
      func_80A3BA40, func_80A3BB6C },
    { OBJECT_GI_LIQUID, GID_POTION_RED, func_8002EBCC, 0x0032, 0x0001, 0x0065, 0x0063, GI_POTION_RED, func_80A3ADD4,
      func_80A3BA40, func_80A3BB6C },
};

static s16 D_80A3CCB4[8] = { 0x0005, 0x000A, 0x000F, 0x0014, 0x0019, 0x001E, 0x0023, 0x0028 };

void func_80A3A750(EnGirlA* this, EnGirlAActionFunc func) {
    this->actionFunc = func;
}

s32 func_80A3A758(EnGirlA* this) {
    switch (this->actor.params) {
        case 17:
            if (gSaveContext.itemGetInf[0] & 0x4) {
                this->actor.params = 16;
                return 1;
            }
            break;
        case 24:
            if (gSaveContext.itemGetInf[0] & 0x40) {
                this->actor.params = 38;
                return 1;
            }
            break;
        case 25:
            if (gSaveContext.itemGetInf[0] & 0x80) {
                this->actor.params = 38;
                return 1;
            }
            break;
        case 26:
            if (gSaveContext.itemGetInf[0] & 0x100) {
                this->actor.params = 38;
                return 1;
            }
            break;
        case 27:
            if (gSaveContext.itemGetInf[0] & 0x200) {
                this->actor.params = 38;
                return 1;
            }
            break;
        case 28:
            if (gSaveContext.itemGetInf[0] & 0x400) {
                this->actor.params = 38;
                return 1;
            }
            break;
        case 21:
            if (gSaveContext.itemGetInf[0] & 0x8) {
                this->actor.params = 38;
                return 1;
            }
            break;
        case 22:
            if (gSaveContext.itemGetInf[0] & 0x10) {
                this->actor.params = 38;
                return 1;
            }
            break;
        case 23:
            if (gSaveContext.itemGetInf[0] & 0x20) {
                this->actor.params = 38;
                return 1;
            }
            break;
    }
    return 0;
}

void func_80A3A8D0(EnGirlA* this, GlobalContext* globalCtx) {
    s16 params = this->actor.params;

    osSyncPrintf("%s(%2d)初期設定\n", D_80A3C590[params], params);

    if ((params >= 50) && (params < 0)) {
        Actor_Kill(&this->actor);
        osSyncPrintf(VT_COL(RED, WHITE));
        osSyncPrintf("引数がおかしいよ(arg_data=%d)！！\n", this->actor.params);
        osSyncPrintf(VT_RST);
        __assert("0", "../z_en_girlA.c", 1421);
        return;
    }

    this->unk_194 = Object_GetIndex(&globalCtx->objectCtx, D_80A3C674[params].objID);

    if (this->unk_194 < 0) {
        Actor_Kill(&this->actor);
        osSyncPrintf(VT_COL(RED, WHITE));
        osSyncPrintf("バンクが無いよ！！(%s)\n", D_80A3C590[params]);
        osSyncPrintf(VT_RST);
        __assert("0", "../z_en_girlA.c", 1434);
        return;
    }

    this->actor.params = params;
    this->unk_198 = func_80A3BFE4;
}

void EnGirlA_Init(Actor* thisx, GlobalContext* globalCtx) {
    EnGirlA* this = THIS;

    func_80A3A758(this);
    func_80A3A8D0(this, globalCtx);
    osSyncPrintf("%s(%2d)初期設定\n", D_80A3C590[this->actor.params], this->actor.params);
}

void EnGirlA_Destroy(Actor* thisx, GlobalContext* globalCtx) {
    EnGirlA* this = THIS;

    if (this->unk_19C != 0) {
        SkelAnime_Free(&this->skelAnime, globalCtx);
    }
}

s32 func_80A3AAA8(GlobalContext* globalCtx, EnGirlA* this) {
    if (Item_CheckObtainability(ITEM_BOW) == ITEM_NONE) {
        return 5;
    }
    if (AMMO(ITEM_BOW) >= CUR_CAPACITY(UPG_QUIVER)) {
        return 2;
    }
    if (gSaveContext.rupees < this->unk_1C8) {
        return 4;
    }
    return 1;
}

s32 func_80A3AB58(GlobalContext* globalCtx, EnGirlA* this) {
    if (!CHECK_QUEST_ITEM(QUEST_GORON_RUBY)) {
        return 2;
    }
    if (AMMO(ITEM_BOMB) >= CUR_CAPACITY(UPG_BOMB_BAG)) {
        return 2;
    }
    if (gSaveContext.rupees < this->unk_1C8) {
        return 4;
    }
    return 1;
}

s32 func_80A3ABF8(GlobalContext* globalCtx, EnGirlA* this) {
    if ((CUR_CAPACITY(UPG_NUTS) != 0) && (AMMO(ITEM_NUT) >= CUR_CAPACITY(UPG_NUTS))) {
        return 2;
    }
    if (gSaveContext.rupees < this->unk_1C8) {
        return 4;
    }
    if (Item_CheckObtainability(ITEM_NUT) == ITEM_NONE) {
        return 0;
    }
    return 1;
}

s32 func_80A3ACAC(GlobalContext* globalCtx, EnGirlA* this) {
    if ((CUR_CAPACITY(UPG_STICKS) != 0) && (AMMO(ITEM_STICK) >= CUR_CAPACITY(UPG_STICKS))) {
        return 2;
    }
    if (gSaveContext.rupees < this->unk_1C8) {
        return 4;
    }
    if (Item_CheckObtainability(ITEM_STICK) == ITEM_NONE) {
        return 0;
    }
    return 1;
}

s32 func_80A3AD60(GlobalContext* globalCtx, EnGirlA* this) {
    if (!Inventory_HasEmptyBottle()) {
        return 3;
    }
    if (gSaveContext.rupees < this->unk_1C8) {
        return 4;
    }
    if (Item_CheckObtainability(ITEM_FISH) == ITEM_NONE) {
        return 0;
    }
    return 1;
}

s32 func_80A3ADD4(GlobalContext* globalCtx, EnGirlA* this) {
    if (!Inventory_HasEmptyBottle()) {
        return 3;
    }
    if (gSaveContext.rupees < this->unk_1C8) {
        return 4;
    }
    if (Item_CheckObtainability(ITEM_POTION_RED) == ITEM_NONE) {
        return 0;
    }
    return 1;
}

s32 func_80A3AE48(GlobalContext* globalCtx, EnGirlA* this) {
    if (!Inventory_HasEmptyBottle()) {
        return 3;
    }
    if (gSaveContext.rupees < this->unk_1C8) {
        return 4;
    }
    if (Item_CheckObtainability(ITEM_POTION_GREEN) == ITEM_NONE) {
        return 0;
    }
    return 1;
}

s32 func_80A3AEBC(GlobalContext* globalCtx, EnGirlA* this) {
    if (!Inventory_HasEmptyBottle()) {
        return 3;
    }
    if (gSaveContext.rupees < this->unk_1C8) {
        return 4;
    }
    if (Item_CheckObtainability(ITEM_POTION_BLUE) == ITEM_NONE) {
        return 0;
    }
    return 1;
}

s32 func_80A3AF30(GlobalContext* globalCtx, EnGirlA* this) {
    if ((gBitFlags[2] & gSaveContext.inventory.equipment) && !(gBitFlags[3] & gSaveContext.inventory.equipment)) {
        return 2;
    }
    if (gSaveContext.rupees < this->unk_1C8) {
        return 4;
    }
    if (Item_CheckObtainability(ITEM_SWORD_BGS) == ITEM_NONE) {
        return 0;
    }
    return 1;
}

s32 func_80A3AFC4(GlobalContext* globalCtx, EnGirlA* this) {
    if (gBitFlags[5] & gSaveContext.inventory.equipment) {
        return 2;
    }
    if (gSaveContext.rupees < this->unk_1C8) {
        return 4;
    }
    if (Item_CheckObtainability(ITEM_SHIELD_HYLIAN) == ITEM_NONE) {
        return 0;
    }
    return 1;
}

s32 func_80A3B040(GlobalContext* globalCtx, EnGirlA* this) {
    if (gBitFlags[4] & gSaveContext.inventory.equipment) {
        return 2;
    }
    if (gSaveContext.rupees < this->unk_1C8) {
        return 4;
    }
    if (Item_CheckObtainability(ITEM_SHIELD_DEKU) == ITEM_NONE) {
        return 0;
    }
    return 1;
}

s32 func_80A3B0BC(GlobalContext* globalCtx, EnGirlA* this) {
    if (LINK_AGE_IN_YEARS == YEARS_CHILD) {
        return 2;
    }
    if (gBitFlags[9] & gSaveContext.inventory.equipment) {
        return 2;
    }
    if (gSaveContext.rupees < this->unk_1C8) {
        return 4;
    }
    if (Item_CheckObtainability(ITEM_TUNIC_GORON) == ITEM_NONE) {
        return 0;
    }
    return 1;
}

s32 func_80A3B160(GlobalContext* globalCtx, EnGirlA* this) {
    if (LINK_AGE_IN_YEARS == YEARS_CHILD) {
        return 2;
    }
    if (gBitFlags[10] & gSaveContext.inventory.equipment) {
        return 2;
    }
    if (gSaveContext.rupees < this->unk_1C8) {
        return 4;
    }
    if (Item_CheckObtainability(ITEM_TUNIC_ZORA) == ITEM_NONE) {
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
    if (Item_CheckObtainability(ITEM_MILK_BOTTLE) == ITEM_NONE) {
        return 0;
    }
    return 1;
}

s32 func_80A3B2AC(GlobalContext* globalCtx, EnGirlA* this) {
    if (gSaveContext.rupees < this->unk_1C8) {
        return 4;
    }
    if (Item_CheckObtainability(ITEM_LETTER_ZELDA) == ITEM_NONE) {
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
    if (AMMO(ITEM_BOMBCHU) >= 50) {
        return 2;
    }
    if (gSaveContext.rupees < this->unk_1C8) {
        return 4;
    }
    if (Item_CheckObtainability(ITEM_BOMBCHU) == ITEM_NONE) {
        return 0;
    }
    return 1;
}

s32 func_80A3B3A8(GlobalContext* globalCtx, EnGirlA* this) {
    if (AMMO(ITEM_SLINGSHOT) >= CUR_CAPACITY(UPG_BULLET_BAG)) {
        return 2;
    }
    if (gSaveContext.rupees < this->unk_1C8) {
        return 4;
    }
    if (Item_CheckObtainability(ITEM_SEEDS) == ITEM_NONE) {
        return 0;
    }
    return 1;
}

s32 func_80A3B454(GlobalContext* globalCtx, EnGirlA* this) {
    return 5;
}

s32 func_80A3B464(GlobalContext* globalCtx, EnGirlA* this) {
    if (!Inventory_HasEmptyBottle()) {
        return 3;
    }
    if (gSaveContext.rupees < this->unk_1C8) {
        return 4;
    }
    if (Item_CheckObtainability(ITEM_BLUE_FIRE) == ITEM_NONE) {
        return 0;
    }
    return 1;
}

s32 func_80A3B4D8(GlobalContext* globalCtx, EnGirlA* this) {
    if (!Inventory_HasEmptyBottle()) {
        return 3;
    }
    if (gSaveContext.rupees < this->unk_1C8) {
        return 4;
    }
    if (Item_CheckObtainability(ITEM_BUG) == ITEM_NONE) {
        return 0;
    }
    return 1;
}

s32 func_80A3B54C(GlobalContext* globalCtx, EnGirlA* this) {
    if (!Inventory_HasEmptyBottle()) {
        return 3;
    }
    if (gSaveContext.rupees < this->unk_1C8) {
        return 4;
    }
    if (Item_CheckObtainability(ITEM_POE) == ITEM_NONE) {
        return 0;
    }
    return 1;
}

s32 func_80A3B5C0(GlobalContext* globalCtx, EnGirlA* this) {
    if (!Inventory_HasEmptyBottle()) {
        return 3;
    }
    if (gSaveContext.rupees < this->unk_1C8) {
        return 4;
    }
    if (Item_CheckObtainability(ITEM_FAIRY) == ITEM_NONE) {
        return 0;
    }
    return 1;
}

void func_80A3B634(GlobalContext* globalCtx, EnGirlA* this) {
    Inventory_ChangeAmmo(ITEM_BOW, this->unk_1CA);
    Rupees_ChangeBy(-this->unk_1C8);
}

void func_80A3B678(GlobalContext* globalCtx, EnGirlA* this) {
    switch (this->unk_1CA) {
        case 5:
            Item_Give(globalCtx, ITEM_BOMBS_5);
            break;
        case 10:
            Item_Give(globalCtx, ITEM_BOMBS_10);
            break;
        case 20:
            Item_Give(globalCtx, ITEM_BOMBS_20);
            break;
        case 30:
            Item_Give(globalCtx, ITEM_BOMBS_30);
            break;
    }
    Rupees_ChangeBy(-this->unk_1C8);
}

void func_80A3B714(GlobalContext* globalCtx, EnGirlA* this) {
    switch (this->unk_1CA) {
        case 5:
            Item_Give(globalCtx, ITEM_NUTS_5);
            break;
        case 10:
            Item_Give(globalCtx, ITEM_NUTS_10);
            break;
    }
    Rupees_ChangeBy(-this->unk_1C8);
}

void func_80A3B780(GlobalContext* globalCtx, EnGirlA* this) {
    Item_Give(globalCtx, ITEM_STICK);
    Rupees_ChangeBy(-this->unk_1C8);
}

void func_80A3B7BC(GlobalContext* globalCtx, EnGirlA* this) {
    func_800849EC(globalCtx);
    gSaveContext.swordHealth = 8;
    Rupees_ChangeBy(-this->unk_1C8);
}

void func_80A3B800(GlobalContext* globalCtx, EnGirlA* this) {
    Item_Give(globalCtx, ITEM_SHIELD_HYLIAN);
    Rupees_ChangeBy(-this->unk_1C8);
}

void func_80A3B83C(GlobalContext* globalCtx, EnGirlA* this) {
    Item_Give(globalCtx, ITEM_SHIELD_DEKU);
    Rupees_ChangeBy(-this->unk_1C8);
}

void func_80A3B878(GlobalContext* globalCtx, EnGirlA* this) {
    Item_Give(globalCtx, ITEM_TUNIC_GORON);
    Rupees_ChangeBy(-this->unk_1C8);
}

void func_80A3B8B4(GlobalContext* globalCtx, EnGirlA* this) {
    Item_Give(globalCtx, ITEM_TUNIC_ZORA);
    Rupees_ChangeBy(-this->unk_1C8);
}

void func_80A3B8F0(GlobalContext* globalCtx, EnGirlA* this) {
    Health_ChangeBy(globalCtx, this->unk_1CA);
    Rupees_ChangeBy(-this->unk_1C8);
}

void func_80A3B92C(GlobalContext* globalCtx, EnGirlA* this) {
    Item_Give(globalCtx, ITEM_MILK_BOTTLE);
    Rupees_ChangeBy(-this->unk_1C8);
}

void func_80A3B968(GlobalContext* globalCtx, EnGirlA* this) {
    Item_Give(globalCtx, ITEM_WEIRD_EGG);
    Rupees_ChangeBy(-this->unk_1C8);
}

void func_80A3B9A4(GlobalContext* globalCtx, EnGirlA* this) {
    Rupees_ChangeBy(-this->unk_1C8);
}

void func_80A3B9D4(GlobalContext* globalCtx, EnGirlA* this) {
    Rupees_ChangeBy(-this->unk_1C8);
}

void func_80A3BA04(GlobalContext* globalCtx, EnGirlA* this) {
    Item_Give(globalCtx, ITEM_SEEDS_30);
    Rupees_ChangeBy(-this->unk_1C8);
}

void func_80A3BA40(GlobalContext* globalCtx, EnGirlA* this) {
    switch (this->actor.params) {
        case 7:
            Item_Give(globalCtx, ITEM_FISH);
            break;
        case 8:
            Item_Give(globalCtx, ITEM_POTION_RED);
            break;
        case 9:
            Item_Give(globalCtx, ITEM_POTION_GREEN);
            break;
        case 10:
            Item_Give(globalCtx, ITEM_POTION_BLUE);
            break;
        case 39:
            Item_Give(globalCtx, ITEM_BLUE_FIRE);
            break;
        case 40:
            Item_Give(globalCtx, ITEM_BUG);
            break;
        case 41:
            Item_Give(globalCtx, ITEM_BIG_POE);
            break;
        case 42:
            Item_Give(globalCtx, ITEM_POE);
            break;
        case 43:
            Item_Give(globalCtx, ITEM_FAIRY);
            break;
    }
    Rupees_ChangeBy(-this->unk_1C8);
}

void func_80A3BB6C(GlobalContext* globalCtx, EnGirlA* this) {
    if (this->actor.params == 12) {
        if (gSaveContext.infTable[7] & 0x40) {
            Rupees_ChangeBy(-(this->unk_1C8 - D_80A3CCB4[(s32)Rand_ZeroFloat(7.9f)]));
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
    switch (this->actor.params) {
        case 24:
            gSaveContext.itemGetInf[0] |= 0x40;
            break;
        case 25:
            gSaveContext.itemGetInf[0] |= 0x80;
            break;
        case 26:
            gSaveContext.itemGetInf[0] |= 0x100;
            break;
        case 27:
            gSaveContext.itemGetInf[0] |= 0x200;
            break;
        case 28:
            gSaveContext.itemGetInf[0] |= 0x400;
            break;
        case 21:
            gSaveContext.itemGetInf[0] |= 0x8;
            break;
        case 22:
            gSaveContext.itemGetInf[0] |= 0x10;
            break;
        case 23:
            gSaveContext.itemGetInf[0] |= 0x20;
            break;
    }
    Rupees_ChangeBy(-this->unk_1C8);
}

void func_80A3BD80(EnGirlA* this, GlobalContext* globalCtx) {
}

void func_80A3BD8C(GlobalContext* globalCtx, EnGirlA* this) {
    ShopItemEntry* tmp = &D_80A3C674[this->actor.params];
    s32 params = this->actor.params;
    s32 params2;
    s32 tmp3;

    if ((this->actor.params >= 30) && (this->actor.params < 35)) {
        params2 = this->actor.params - 30;
        tmp3 = 0;
        switch (this->actor.params) {
            case 30:
                if (gSaveContext.itemGetInf[3] & 0x100) {
                    tmp3 = 1;
                }
                break;
            case 31:
                if (gSaveContext.itemGetInf[3] & 0x400) {
                    tmp3 = 1;
                }
                break;
            case 32:
                if (gSaveContext.itemGetInf[3] & 0x200) {
                    tmp3 = 1;
                }
                break;
            case 33:
                if (gSaveContext.itemGetInf[3] & 0x800) {
                    tmp3 = 1;
                }
                break;
            case 34:
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
    if ((this->actor.params >= 30) && (this->actor.params < 38)) {
        this->actor.textId = 0xBD;
    }
}

void func_80A3BEE0(GlobalContext* globalCtx, EnGirlA* this) {
    ShopItemEntry* itemEntry;

    if (func_80A3A758(this)) {
        func_80A3A8D0(this, globalCtx);
        itemEntry = &D_80A3C674[this->actor.params];
        this->actor.textId = itemEntry->unk_0C;
    } else {
        this->unk_1A8 = 0;
        this->actor.draw = func_80A3C4D4;
    }
}

s32 func_80A3BF54(EnGirlA* this, GlobalContext* globalCtx) {
    s32 params;

    if ((this->actor.params >= 30) && (this->actor.params < 38)) {
        params = this->actor.params - 30;
        if (INV_CONTENT(ITEM_TRADE_CHILD) == D_80A3C658[params]) {
            func_80A3BEAC(globalCtx, this);
        } else {
            func_80A3BD8C(globalCtx, this);
        }
        return 1;
    }
    return 0;
}

void func_80A3BFE4(EnGirlA* this, GlobalContext* globalCtx) {
    s16 params = this->actor.params;
    ShopItemEntry* tmp = &D_80A3C674[params];

    if (Object_IsLoaded(&globalCtx->objectCtx, this->unk_194)) {
        this->actor.flags &= ~0x10;
        this->actor.objBankIndex = this->unk_194;
        switch (this->actor.params - 30) {
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
        this->giDrawId = tmp->giDrawId;
        osSyncPrintf("%s(%2d)\n", D_80A3C590[params], params);
        this->actor.flags &= ~1;
        Actor_SetScale(&this->actor, 0.25f);
        this->actor.shape.yOffset = 24.0f;
        this->actor.shape.shadowScale = 4.0f;
        this->actor.floorHeight = this->actor.home.pos.y;
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
    this->actor.shape.yOffset = 24.0f;
    this->actor.shape.shadowScale = 4.0f;
    func_80A3BF54(this, globalCtx);
    this->actionFunc(this, globalCtx);
    Actor_SetFocus(&this->actor, 5.0f);
    this->actor.shape.rot.x = 0.0f;
    if (this->actor.params != 38) {
        if (this->unk_1B4 != 0) {
            this->unk_1B8 += 0x1F4;
        } else {
            Math_SmoothStepToS(&this->unk_1B8, 0, 10, 0x7D0, 0);
        }
    }
}

void EnGirlA_Update(Actor* thisx, GlobalContext* globalCtx) {
    EnGirlA* this = THIS;

    this->unk_198(this, globalCtx);
}

void func_80A3C498(Actor* thisx, GlobalContext* globalCtx, s32 flags) {
    func_8002EBCC(thisx, globalCtx, 0);
    func_8002ED80(thisx, globalCtx, 0);
}

void func_80A3C4D4(Actor* thisx, GlobalContext* globalCtx) {
    EnGirlA* this = THIS;

    Matrix_RotateY(((this->unk_1B8 * 360.0f) / 65536.0f) * 0.017453292f, MTXMODE_APPLY);
    if (this->unk_1D0 != NULL) {
        this->unk_1D0(thisx, globalCtx, 0);
    }
    GetItem_Draw(globalCtx, this->giDrawId);
}
