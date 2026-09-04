#ifndef Z_EN_GO_H
#define Z_EN_GO_H

#include "ultra64.h"
#include "actor.h"

#include "assets/objects/object_oF1d_map/object_oF1d_map.h"

struct EnGo;

typedef void (*EnGoActionFunc)(struct EnGo*, struct PlayState*);

typedef enum EnGoType {
    ENGO_TYPE_CITY_LINK         = (0 << 4),
    ENGO_TYPE_FIRE_GENERIC      = (1 << 4),
    ENGO_TYPE_DMT_DC_ENTRANCE   = (2 << 4),
    ENGO_TYPE_DMT_ROLLING_SMALL = (3 << 4),
    ENGO_TYPE_DMT_BOMB_FLOWER   = (4 << 4),
    ENGO_TYPE_CITY_ENTRANCE     = (5 << 4),
    ENGO_TYPE_CITY_ISLAND       = (6 << 4),
    ENGO_TYPE_CITY_LOST_WOODS   = (7 << 4),
    ENGO_TYPE_DMT_BIGGORON      = (9 << 4)
} EnGoType;

#define ENGO_GET_PATH_INDEX(this) PARAMS_GET_U((this)->actor.params, 0, 4)
#define ENGO_GET_TYPE(this) PARAMS_GET_NOSHIFT((this)->actor.params, 4, 4)
#define ENGO_IS_CAGE_OPEN_SWITCH_FLAG(this) PARAMS_GET_NOMASK((this)->actor.params, 8)

#define ENGO_PATH_NONE NBITS_TO_MASK(4)
#define ENGO_GET_SPEED_SCALE(this) (ENGO_GET_TYPE(this) == ENGO_TYPE_DMT_BIGGORON ? 0.5f : 1.0f)

#define EN_GO_EFFECT_COUNT 20

typedef struct EnGoEffect {
    /* 0x0000 */ u8 type;
    /* 0x0001 */ u8 timer;
    /* 0x0002 */ u8 initialTimer;
    /* 0x0004 */ f32 scale;
    /* 0x0008 */ f32 scaleStep;
    /* 0x000C */ Color_RGBA8 color;
    /* 0x0010 */ char unk_10[4];
    /* 0x0014 */ Vec3f pos;
    /* 0x0020 */ Vec3f velocity;
    /* 0x002C */ Vec3f accel;
} EnGoEffect; // size = 0x38

typedef struct EnGo {
    /* 0x0000 */ Actor actor;
    /* 0x014C */ SkelAnime skelAnime;
    /* 0x0190 */ EnGoActionFunc actionFunc;
    /* 0x0194 */ ColliderCylinder collider;
    /* 0x01E0 */ NpcInteractInfo interactInfo;
    /* 0x0208 */ char unk_208[0x4];
    /* 0x020C */ s16 gaveSword;
    /* 0x020E */ s16 knockbackCooldown;
    /* 0x0210 */ s16 curledTimer;
    /* 0x0212 */ s16 attentionCooldown;
    /* 0x0214 */ s16 blinkTimer;  // unused
    /* 0x0216 */ s16 eyeTexIndex; // unused
    /* 0x0218 */ s16 waypoint;
    /* 0x021A */ s16 bounceCounter;
    /* 0x021C */ s16 bounceTimer;
    /* 0x021E */ s16 eyedropsTimer;
    /* 0x0220 */ s16 fidgetTableY[GORON_LIMB_MAX];
    /* 0x0244 */ s16 fidgetTableZ[GORON_LIMB_MAX];
    /* 0x0268 */ EnGoEffect effects[EN_GO_EFFECT_COUNT];
} EnGo; // size = 0x06C8

#endif
