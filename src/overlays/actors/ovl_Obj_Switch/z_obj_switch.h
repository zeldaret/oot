#ifndef _Z_OBJ_SWITCH_H_
#define _Z_OBJ_SWITCH_H_

#include <ultra64.h>
#include <global.h>

struct ObjSwitch;

typedef void (*ObjSwitchActionFunc)(struct ObjSwitch*, GlobalContext*);

typedef enum ObjSwitch_Type {
    /*
    has dynapoly
    no collider
    uses floor switch dlists regular/red/blue (not rusty)
    */
    OBJSWITCH_TYPE_FLOOR,
    /*
    has dynapoly
    horizontal (XZ plane) tris collider
    always draws rusty floor switch
    */
    OBJSWITCH_TYPE_FLOOR_RUSTY,
    /*
    vertical (XY plane) tris collider
    draws yellow or silver eye switch
    */
    OBJSWITCH_TYPE_EYE,
    /*
    jntSph collider (1 sphere)
    draws crystal switch
    uses envcolor?
    */
    OBJSWITCH_TYPE_CRYSTAL,
    /*
    same as OBJSWITCH_TYPE_CRYSTAL but, on init:
    sets the actor flag |= 1 (cloudmodding: actor targetable)
    sets unk_1F = 4 (?)
    */
    OBJSWITCH_TYPE_CRYSTAL_TARGETABLE
} ObjSwitch_Type;

typedef enum ObjSwitch_SubTypeFloor {
    /*
    releases without delay?
    regular look
    never released unless switch flag is cleared (by some other means)
    */
    OBJSWITCH_SUBTYPE_FLOOR_0,
    /*
    red
    toggle when stepped on?
    */
    OBJSWITCH_SUBTYPE_FLOOR_1,
    /*
    releases without delay?
    blue
    */
    OBJSWITCH_SUBTYPE_FLOOR_2,
    /*
    pressed without delay?
    blue
    sets the flag reversed? (pressed = clear, released = set)
    same as OBJSWITCH_SUBTYPE_FLOOR_2 but reversed flag and bypasses some kind of press cooldown
    */
    OBJSWITCH_SUBTYPE_FLOOR_3
} ObjSwitch_SubTypeFloor;

typedef enum ObjSwitch_SubTypeEye {
    /*
    yellow
    like OBJSWITCH_SUBTYPE_FLOOR_0, never opens unless switch flag is cleared (by some other means)
    */
    OBJSWITCH_SUBTYPE_EYE_0,
    /*
    silver
    can be opened by hitting it
    */
    OBJSWITCH_SUBTYPE_EYE_1
} ObjSwitch_SubTypeEye;

typedef enum ObjSwitch_SubTypeCrystal {
    OBJSWITCH_SUBTYPE_CRYSTAL_0,
    /*
    uses env color
    */
    OBJSWITCH_SUBTYPE_CRYSTAL_1,
    OBJSWITCH_SUBTYPE_CRYSTAL_4 = 4
} ObjSwitch_SubTypeCrystal;

typedef struct ObjSwitch {
    /* 0x0000 */ DynaPolyActor dyna;
    /* 0x0164 */ ObjSwitchActionFunc actionFunc;
    s16 framesUntilRelease; // ticks down to 0, used for OBJSWITCH_SUBTYPE_FLOOR_2 and OBJSWITCH_SUBTYPE_FLOOR_3
    s16 crystalHitDelay;    // a cooldown for collision checks?
    s16 toggleDelay;        // ticks down to 0, used in all types as cooldown, but many things can bypass it
    u8 enableToggleDelay;   // boolean related to having turned on or off, if false ignore toggleDelay
    s16 eyeOpenFrame;       // texture index: 0-3 open-closed (for animation purposes)
    UNK_PTR crystalSubtype1texture;
    // these 4 are used for TwoTexScroll ()
    u8 twoTexScroll_x1;
    u8 twoTexScroll_y1;
    u8 twoTexScroll_x2;
    u8 twoTexScroll_y2;
    Color_RGB8 crystalColor;
    union {
        u8 lastFrameDynaUnk160;      // floor type
        u8 lastFrameColliderACflags; // eye, crystal type
    };
    union {
        struct {
            ColliderJntSph col;
            ColliderJntSphItem items[2];
        } jntSph;
        struct {
            ColliderTris col;
            ColliderTrisItem items[2];
        } tris;
    };
} ObjSwitch; // size = 0x0258

extern const ActorInit Obj_Switch_InitVars;

#endif
