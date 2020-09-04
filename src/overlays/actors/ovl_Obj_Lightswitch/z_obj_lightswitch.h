#ifndef _Z_OBJ_LIGHTSWITCH_H_
#define _Z_OBJ_LIGHTSWITCH_H_

#include <ultra64.h>
#include <global.h>

struct ObjLightswitch;

typedef void(*ObjLightswitchActionFunc)(struct ObjLightswitch*, GlobalContext*);

typedef struct ObjLightswitch {
    /* 0x0000 */ Actor actor;
    /* 0x014C */ ObjLightswitchActionFunc actionFunc;
    /* 0x0150 */ ColliderJntSph col;
    /* 0x0170 */ ColliderJntSphItem colItems[1];
    /* 0x01B0 */ s16 unk1B0;
    /* 0x01B2 */ s16 unk1B2;
    /* 0x01B4 */ s16 unk1B4;
    /* 0x01B6 */ s16 unk1B6;
    /* 0x01B8 */ s16 unk1B8;
    /* 0x01BA */ s16 unk1BA;
    /* 0x01BC */ s16 unk1BC;
    /* 0x01BE */ s16 unk1BE;
    /* 0x01C0 */ s16 unk1C0;
    /* 0x01C2 */ u8 unk1C2;
    // char unk1C3; // padding?
} ObjLightswitch; // size = 0x01C4

extern const ActorInit Obj_Lightswitch_InitVars;

#endif
