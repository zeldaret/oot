#ifndef _Z_DOOR_SHUTTER_H_
#define _Z_DOOR_SHUTTER_H_

#include <ultra64.h>
#include <global.h>

struct DoorShutter;

typedef void (*DoorShutterActionFunc)(struct DoorShutter*, GlobalContext*);

typedef struct DoorShutter {
    /* 0x0000 */ DynaPolyActor dyna;
    /* 0x0164 */ s16 unk_164;
    /* 0x0166 */ s16 unk_166;
    /* 0x0168 */ s16 unk_168;
    /* 0x016A */ u8 unk_16A;
    /* 0x016B */ u8 unk_16B;
    /* 0x016C */ u8 unk_16C;
    /* 0x016D */ s8 unk_16D;
    /* 0x016E */ s8 unk_16E;
    /* 0x016F */ s8 unk_16F;
    /* 0x0170 */ f32 unk_170;
    /* 0x0174 */ DoorShutterActionFunc actionFunc;
} DoorShutter; // size = 0x0178

extern const ActorInit Door_Shutter_InitVars;

#endif
