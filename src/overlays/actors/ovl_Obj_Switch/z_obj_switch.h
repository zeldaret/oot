#ifndef _Z_OBJ_SWITCH_H_
#define _Z_OBJ_SWITCH_H_

#include <ultra64.h>
#include <global.h>

struct ObjSwitch;

typedef void (*ObjSwitchActionFunc)(struct ObjSwitch*, GlobalContext*);

typedef struct ObjSwitch {
    /* 0x0000 */ DynaPolyActor dyna;
    /* 0x0164 */ ObjSwitchActionFunc actionFunc;
    s16 unk168;// s16?
    s16 unk16A;// s16?
    s16 unk16C;// often used with (s32) cast and <= 0 // s16?
    u8 unk16E;// type? must be <= 16 bits
    s16 unk170;
    //char unk172[2]; // alignment, unused?
    void* unk174;// segmented address
    // these 4 are used for TwoTexScroll
    u8 unk178;
    u8 unk179;
    u8 unk17A;
    u8 unk17B;
    u8 unk17C;// r
    u8 unk17D;// g
    u8 unk17E;// b
    u8 unk17F;
    union {
        Collider unk180_base;
        struct {
            ColliderJntSph unk180;
            ColliderJntSphItem unk1A0[2];
        } jntSph;
        struct {
            ColliderTris unk180;
            ColliderTrisItem unk1A0[2];
        } tris;
    };
} ObjSwitch; // size = 0x0258

extern const ActorInit Obj_Switch_InitVars;

#endif
