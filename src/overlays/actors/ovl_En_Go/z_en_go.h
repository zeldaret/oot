#ifndef _Z_EN_GO_H_
#define _Z_EN_GO_H_

#include "ultra64.h"
#include "global.h"

struct EnGo;

typedef void (*EnGoActionFunc)(struct EnGo*, struct GlobalContext*);
typedef u16 (*callback1_80A3ED24)(struct GlobalContext*, struct EnGo*);
typedef s16 (*callback2_80A3ED24)(struct GlobalContext*, struct EnGo*);

// typedef enum {
//     /* 0x00 */ GORON1_CITY_LINK,
//     /* 0x10 */ GORON1_FIRE_GENERIC,
//     /* 0x20 */ GORON1_DMT_DC_ENTRANCE,
//     /* 0x30 */ GORON1_DMT_ROLLING_SMALL,
//     /* 0x40 */ GORON1_DMT_BOMB_FLOWER,
//     /* 0x50 */ GORON1_CITY_ENTRANCE, 
//     /* 0x60 */ GORON1_CITY_ISLAND,
//     /* 0x70 */ GORON1_CITY_LOST_WOODS, 
//     /* 0x80 */ // Not Used
//     /* 0x90 */ GORON1_DMT_BIGGORON, // Biggoron
// } GoronSize;

// typedef enum {
//     /* 0x00 */ GORON_FIRE_NEAR_BOSS,
//     /* 0x10 */ GORON_FIRE_LAVA_ROOM_OPEN,
//     /* 0x20 */ GORON_FIRE_LAVA_ROOM_BOMB,
//     /* 0x30 */ GORON_FIRE_MAZE_LOWER,
//     /* 0x40 */ GORON_FIRE_MAZE_UPPER,
//     /* 0x50 */ GORON_FIRE_MAZE_SIDE_ROOM, 
//     /* 0x60 */ GORON_FIRE_MAZE_SHORTCUT,
//     /* 0x70 */ GORON_FIRE_HIGHEST, 
//     /* 0x80 */ GORON_FIRE_BOSS_KEY, 
// } GoronFireTemple;


typedef struct {
    /* 0x0000 */ u8 isActive;
    /* 0x0001 */ u8 timer;
    /* 0x0002 */ u8 unk_2;
    /* 0x0004 */ f32 unk_4;
    /* 0x0008 */ f32 unk_8;
    /* 0x000C */ char unk_C[0x8];
    /* 0x0014 */ Vec3f pos;
    /* 0x0020 */ Vec3f velocity;
    /* 0x002C */ Vec3f accel;

} EnGoEffects; // Size 0x38

typedef struct EnGo {
    /* 0x0000 */ Actor actor;
    /* 0x014C */ SkelAnime skelanime;
    /* 0x0190 */ EnGoActionFunc actionFunc;
    /* 0x0194 */ ColliderCylinder collider;
    /* 0x01E0 */ struct_80034A14_arg1 unk_1E0; // 
    /* 0x0208 */ char unk_208[0x4];
    /* 0x020c */ s16 unk_20C;
    /* 0x020e */ s16 unk_20E;
    /* 0x0210 */ s16 unk_210;
    /* 0x0212 */ s16 unk_212;
    /* 0x0214 */ s16 unk_214;
    /* 0x0216 */ s16 unk_216;
    /* 0x0218 */ s16 unk_218;
    /* 0x021A */ s16 unk_21A;
    /* 0x021C */ s16 unk_21C;
    /* 0x021E */ s16 unk_21E;
    /* 0x0220 */ s16 unk_220[18];
    /* 0x0244 */ s16 unk_244[18];
    /* 0x0268 */ EnGoEffects unk_268[20];
} EnGo; // size = 0x06C8

extern const ActorInit En_Go_InitVars;

#endif
