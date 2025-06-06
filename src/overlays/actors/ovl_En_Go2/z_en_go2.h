#ifndef Z_EN_GO2_H
#define Z_EN_GO2_H

#include "ultra64.h"
#include "actor.h"
#include "overlays/actors/ovl_En_Go/z_en_go.h"

struct EnGo2;

typedef void (*EnGo2ActionFunc)(struct EnGo2*, struct PlayState*);

// WIP fire temple type docs
// /* 0x00 */ UNUSED
// /* 0x01 */ GORON_FIRE_LAVA_ROOM_OPEN
// /* 0x02 */ GORON_FIRE_LAVA_ROOM_BOMB
// /* 0x03 */ GORON_FIRE_MAZE_LOWER
// /* 0x04 */ GORON_FIRE_MAZE_SHORTCUT
// /* 0x05 */ GORON_FIRE_MAZE_SIDE_ROOM
// /* 0x06 */ GORON_FIRE_BOSS_KEY
// /* 0x07 */ GORON_FIRE_BOSS_KEY
// /* 0x08 */ GORON_FIRE_NEAR_BOSS
// /* 0x09 */ GORON_FIRE_BOSS_KEY
// /* 0x0A */ GORON_FIRE_MAZE_UPPER,
// /* 0x0B */ GORON_FIRE_HIGHEST

typedef struct EnGo2ColliderData {
    s16 unused;
    s16 yDist;
    s16 xzDist;
    s16 radius;
    s16 height;
} EnGo2ColliderData; // size = 0xA

typedef struct EnGo2ShapeData {
    f32 shadowScale;
    f32 scale;
    s8 attentionRangeType;
    f32 interactRange;
} EnGo2ShapeData; // size = 0x10

typedef struct EnGo2DustEffectData {
    u8 initialTimer;
    f32 scale;
    f32 scaleStep;
    s32 numDustEffects;
    f32 radius;
    f32 yAccel;
} EnGo2DustEffectData; // size = 0x18

typedef enum GoronType {
    /* 0x0 */ GORON_CITY_HOT_RODDER,
    /* 0x1 */ GORON_CITY_LINK,
    /* 0x2 */ GORON_DMT_BIGGORON,
    /* 0x3 */ GORON_FIRE_GENERIC,
    /* 0x4 */ GORON_DMT_BOMB_FLOWER,
    /* 0x5 */ GORON_DMT_ROLLING_SMALL,
    /* 0x6 */ GORON_DMT_DC_ENTRANCE,
    /* 0x7 */ GORON_CITY_ENTRANCE,
    /* 0x8 */ GORON_CITY_ISLAND,
    /* 0x9 */ GORON_CITY_LOWEST_FLOOR,
    /* 0xA */ GORON_CITY_STAIRWELL,
    /* 0xB */ GORON_CITY_LOST_WOODS,
    /* 0xC */ GORON_DMT_FAIRY_HINT,
    /* 0xD */ GORON_MARKET_BAZAAR
} GoronType;

#define ENGO2_GET_TYPE(this) PARAMS_GET_S((this)->actor.params, 0, 5)
#define ENGO2_GET_PATH_INDEX(this) PARAMS_GET_S((this)->actor.params, 5, 5)
#define ENGO2_CAGED_SWITCH_FLAG(this) PARAMS_GET_S((this)->actor.params, 10, 6)

#define ENGO2_PATH_INDEX_MAX NBITS_TO_MASK(5)
#define ENGO2_IS_CAGE_OPEN(play, this) Flags_GetSwitch(play, ENGO2_CAGED_SWITCH_FLAG(this))

#define EN_GO2_EFFECT_COUNT 10

typedef struct EnGo2 {
    /* 0x0000 */ Actor actor;
    /* 0x014C */ SkelAnime skelAnime;
    /* 0x0190 */ EnGo2ActionFunc actionFunc;
    /* 0x0194 */ NpcInteractInfo interactInfo;
    /* 0x01BC */ ColliderCylinder collider;
    /* 0x0208 */ struct Path* path;
    /* 0x020C */ u8 messageEntry; // tracks message state changes, like with `BOX_BREAK` or `TEXTID`
    /* 0x020D */ u8 messageState; // last known result of `Message_GetState`
    /* 0x020E */ u8 reverse;
    /* 0x020F */ u8 isTalkative;
    /* 0x0210 */ s8 waypoint;
    /* 0x0211 */ u8 isUncurled;
    /* 0x0212 */ u8 goronState;
    /* 0x0213 */ u8 eyeMouthTexState;
    /* 0x0214 */ u8 eyeTexIndex;
    /* 0x0215 */ u8 mouthTexIndex;
    /* 0x0216 */ u8 reverseWaypoint; // Set to z rotation, checked by waypoint
    /* 0x0218 */ f32 interactRange;
    /* 0x021C */ char unk_21C[0x04];
    /* 0x0220 */ f32 shadowAlpha;
    /* 0x0224 */ s16 blinkTimer;
    /* 0x0226 */ s16 fidgetTableY[GORON_LIMB_MAX];
    /* 0x024A */ s16 fidgetTableZ[GORON_LIMB_MAX];
    /* 0x026E */ u16 trackingMode;
    /* 0x0270 */ EnGoEffect effects[EN_GO2_EFFECT_COUNT];
    /* 0x04A0 */ Vec3f subCamEye;
    /* 0x04AC */ Vec3f subCamAt;
    /* 0x04B8 */ Vec3s jointTable[GORON_LIMB_MAX];
    /* 0x0524 */ Vec3s morphTable[GORON_LIMB_MAX];
    /* 0x0590 */ s16 bounceTimer;
    /* 0x0592 */ s16 animTimer;
    /* 0x0594 */ s32 getItemId;
    /* 0x0598 */ char unk_598[0x02];
    /* 0x059A */ s16 subCamId;
    /* 0x059C */ s16 bounceCounter;
} EnGo2; // size = 0x05A0

#endif
