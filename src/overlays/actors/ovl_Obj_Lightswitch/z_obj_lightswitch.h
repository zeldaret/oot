#ifndef _Z_OBJ_LIGHTSWITCH_H_
#define _Z_OBJ_LIGHTSWITCH_H_

#include <ultra64.h>
#include <global.h>

struct ObjLightswitch;

typedef void (*ObjLightswitchActionFunc)(struct ObjLightswitch*, GlobalContext*);

enum ObjLightswitch_Type {
    OBJLIGHTSWITCH_TYPE_STAY_ON, // doesn't turn off unless the switch flag is cleared some other way
    OBJLIGHTSWITCH_TYPE_1,       // turns on and off
    OBJLIGHTSWITCH_TYPE_2,       // turns on and off
    OBJLIGHTSWITCH_TYPE_BURN     // disappears when turned on
};

typedef struct ObjLightswitch {
    /* 0x0000 */ Actor actor;
    /* 0x014C */ ObjLightswitchActionFunc actionFunc;
    /* 0x0150 */ ColliderJntSph col;
    /* 0x0170 */ ColliderJntSphItem colItems[1];
    /* 0x01B0 */ s16 timer;       // collision-related threshold and controls animation/logic when turning on/off
    /* 0x01B2 */ s16 toggleDelay; // timer ticking down used for delaying tuning on/off or disappearing, can be bypassed
    /* 0x01B4 */ s16 faceTextureIndex; // texture used by the center part of the sun
    /* 0x01B6 */ s16 red;              // (0-255 color component) << 6
    /* 0x01B8 */ s16 green;            // same
    /* 0x01BA */ s16 blue;             // same
    /* 0x01BC */ s16 alpha;            // same
    /* 0x01BE */ s16 flameRingRot;
    /* 0x01C0 */ s16 flameRingRotSpeed;
    /* 0x01C2 */ u8 prevFrameACflags;
} ObjLightswitch; // size = 0x01C4

extern const ActorInit Obj_Lightswitch_InitVars;

#endif
