#ifndef _Z_EN_EX_ITEM_H_
#define _Z_EN_EX_ITEM_H_

#include "ultra64.h"
#include "global.h"

struct EnExItem;

typedef void (*EnExItemActionFunc)(struct EnExItem* this, GlobalContext* globalCtx);
typedef void (*EnExItemLightFunc)(Actor*, GlobalContext*, s32);

typedef struct EnExItem {
    /* 0x0000 */ Actor actor;
    /* 0x014C */ EnExItemActionFunc actionFunc;
    /* 0x0150 */ s16 getItemObjId;
    /* 0x0152 */ s16 type;
    /* 0x0152 */ s16 unusedParam;
    /* 0x0156 */ s16 drawItemId;
    /* 0x0158 */ s16 stopRotate;
    /* 0x015A */ s16 timer;
    /* 0x015A */ s16 chestKillTimer;
    /* 0x015A */ s16 prizeRotateTimer;
    /* 0x0160 */ s16 killItem;
    /* 0x0164 */ f32 scale;
    /* 0x0168 */ f32 unkFloat; // set to the same value as scale, but unused
    /* 0x016C */ s8 objectIdx;
    /* 0x0170 */ Vec3f initPos; // unused
    /* 0x017C */ EnExItemLightFunc unk_17C;
    /* 0x0180 */ EnExItemLightFunc unk_180;
} EnExItem; // size = 0x0184

extern const ActorInit En_Ex_Item_InitVars;

typedef enum {
    /*  0 */ ENEXITEM_BOMB_BAG_BOWL,
    /*  1 */ ENEXITEM_HEART_PIECE_BOWL,
    /*  2 */ ENEXITEM_BOMBCHUS_BOWL,
    /*  3 */ ENEXITEM_BOMBS_BOWL,
    /*  4 */ ENEXITEM_PURPLE_RUPEE_BOWL,
    /*  5 */ ENEXITEM_BOMB_BAG_COUNTER,
    /*  6 */ ENEXITEM_HEART_PIECE_COUNTER,
    /*  7 */ ENEXITEM_BOMBCHUS_COUNTER,
    /*  8 */ ENEXITEM_BOMBS_COUNTER,
    /*  9 */ ENEXITEM_PURPLE_RUPEE_COUNTER,
    /* 10 */ ENEXITEM_GREEN_RUPEE_CHEST,
    /* 11 */ ENEXITEM_BLUE_RUPEE_CHEST,
    /* 12 */ ENEXITEM_RED_RUPEE_CHEST,
    /* 13 */ ENEXITEM_13,
    /* 14 */ ENEXITEM_14,
    /* 15 */ ENEXITEM_SMALL_KEY_CHEST,
    /* 16 */ ENEXITEM_MAGIC_FIRE,
    /* 17 */ ENEXITEM_MAGIC_WIND,
    /* 18 */ ENEXITEM_MAGIC_DARK,
    /* 19 */ ENEXITEM_BULLET_BAG
} EnExItemParam;

#define ENEXITEM_COUNTER 5
#define ENEXITEM_CHEST 10
#define ENEXITEM_MAGIC 16

#endif
