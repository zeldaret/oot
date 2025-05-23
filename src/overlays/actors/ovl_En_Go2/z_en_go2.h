#ifndef Z_EN_GO2_H
#define Z_EN_GO2_H

#include "ultra64.h"
#include "global.h"
#include "overlays/actors/ovl_En_Go/z_en_go.h"

struct EnGo2;

typedef void (*EnGo2ActionFunc)(struct EnGo2*, PlayState*);

typedef enum GoronType {
    /* 0x00 */ GORON_CITY_ROLLING_BIG,
    /* 0x01 */ GORON_CITY_LINK,
    /* 0x02 */ GORON_DMT_BIGGORON,
    /* 0x03 */ GORON_FIRE_GENERIC,
    /* 0x04 */ GORON_DMT_BOMB_FLOWER,
    /* 0x05 */ GORON_DMT_ROLLING_SMALL,
    /* 0x06 */ GORON_DMT_DC_ENTRANCE,
    /* 0x07 */ GORON_CITY_ENTRANCE,
    /* 0x08 */ GORON_CITY_ISLAND,
    /* 0x09 */ GORON_CITY_LOWEST_FLOOR,
    /* 0x0A */ GORON_CITY_STAIRWELL,
    /* 0x0B */ GORON_CITY_LOST_WOODS,
    /* 0x0C */ GORON_DMT_FAIRY_HINT,
    /* 0x0D */ GORON_MARKET_BAZAAR
} GoronType;

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


typedef struct EnGo2DataStruct1 {
    s16 unused;
    s16 yDist;
    s16 xzDist;
    s16 radius;
    s16 height;
} EnGo2DataStruct1; // size = 0xA

typedef struct EnGo2DataStruct2 {
    f32 shape_unk_10;
    f32 scale;
    s8 actor_unk_1F;
    f32 interactRange;
} EnGo2DataStruct2; // size = 0x10

typedef struct EnGo2DustEffectData {
    u8 initialTimer;
    f32 scale;
    f32 scaleStep;
    s32 numDustEffects;
    f32 radius;
    f32 yAccel;
} EnGo2DustEffectData; // size = 0x18

#define EN_GO2_EFFECT_COUNT 10

typedef struct EnGo2 {
    /* 0x0000 */ Actor actor;
    /* 0x014C */ SkelAnime skelAnime;
    /* 0x0190 */ EnGo2ActionFunc actionFunc;
    /* 0x0194 */ NpcInteractInfo interactInfo;
    /* 0x01BC */ ColliderCylinder collider;
    /* 0x0208 */ Path* path;
    /* 0x020C */ u8 unk_20C; // counter for GORON_CITY_LINK animation
    /* 0x020D */ u8 dialogState;
    /* 0x020E */ u8 reverse;
    /* 0x020F */ u8 isAwake; // Conditional
    /* 0x0210 */ s8 waypoint;
    /* 0x0211 */ u8 unk_211; // Conditional
    // goron link: 0 - rolling, 1 - frozen
    // biggoron: 0 - give eyedrops, 1 - applying eyedrops, 2 - getting claimcheck
    // generic fire: 0 -
    /* 0x0212 */ u8 goronState;
    /* 0x0213 */ u8 eyeMouthTexState; // 0, 1, 2, 3
    /* 0x0214 */ u8 eyeTexIndex;
    /* 0x0215 */ u8 mouthTexIndex;
    /* 0x0216 */ u8 unk_216; // Set to z rotation, checked by waypoint
    /* 0x0218 */ f32 interactRange;
    /* 0x021C */ char unk_21C[0x04];
    /* 0x0220 */ f32 alpha; // Set to 0, used by func_80A45360, smoothed to this->actor.shape.shadowAlpha from either 0 or 255.0f
    /* 0x0224 */ s16 blinkTimer;
    /* 0x0226 */ s16 fidgetTableY[18];
    /* 0x024A */ s16 fidgetTableZ[18];
    /* 0x026E */ u16 trackingMode;
    /* 0x0270 */ EnGoEffect effects[EN_GO2_EFFECT_COUNT];
    /* 0x04A0 */ Vec3f subCamEye;
    /* 0x04AC */ Vec3f subCamAt;
    /* 0x04B8 */ Vec3s jointTable[18];
    /* 0x0524 */ Vec3s morphTable[18];
    /* 0x0590 */ s16 unk_590; // timer
    /* 0x0592 */ s16 animTimer; // animTimer. Plays NA_SE_EN_MORIBLIN_WALK, NA_SE_EV_IRON_DOOR_OPEN, NA_SE_EV_IRON_DOOR_CLOSE
    /* 0x0594 */ s32 getItemId;
    /* 0x0598 */ char unk_598[0x02];
    /* 0x059A */ s16 subCamId;
    /* 0x059C */ s16 unk_59C;
} EnGo2; // size = 0x05A0

#endif
