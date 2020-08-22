#ifndef _Z64LIGHT_H_
#define _Z64LIGHT_H_

#include <ultra64.h>
#include <ultra64/gbi.h>
#include <z64math.h>

typedef struct {
    /* 0x0 */ s16 x;
    /* 0x2 */ s16 y;
    /* 0x4 */ s16 z;
    /* 0x6 */ u8 r;
    /* 0x7 */ u8 g;
    /* 0x8 */ u8 b;
    /* 0x9 */ u8 unk_09;
    /* 0xA */ s16 radius;
} LightPoint; // size = 0xC

typedef struct {
    /* 0x0 */ s8 x;
    /* 0x1 */ s8 y;
    /* 0x2 */ s8 z;
    /* 0x3 */ u8 r;
    /* 0x4 */ u8 g;
    /* 0x5 */ u8 b;
} LightDirectional; // size = 0x6

typedef union {
    /* 0x0 */ LightPoint point;
    /* 0x0 */ LightDirectional dir;
} LightParams; // size = 0xC

typedef struct {
    /* 0x0 */ u8 type;
    /* 0x2 */ LightParams params;
} LightInfo; // size = 0xE

typedef struct {
    /* 0x00 */ u8 numLights;
    /* 0x10 */ Lightsn lights;
} LightCollection; // size = 0x80

typedef struct LightNode {
    /* 0x0 */ struct LightInfo* info;
    /* 0x4 */ struct LightNode* prev;
    /* 0x8 */ struct LightNode* next;
} LightNode; // size = 0xC

typedef struct {
    /* 0x0 */ LightNode* head;
    /* 0x4 */ u8 ambientRed;
    /* 0x5 */ u8 ambientGreen;
    /* 0x6 */ u8 ambientBlue;
    /* 0x7 */ u8 unk_07;
    /* 0x8 */ u8 unk_08;
    /* 0x9 */ u8 unk_09;
    /* 0xA */ s16 unk_0A;
    /* 0xC */ s16 unk_0C;
} LightContext; // size = 0x10

typedef enum {
    /* 0x00 */ LIGHT_POINT_NOGLOW,
    /* 0x01 */ LIGHT_DIRECTIONAL,
    /* 0x02 */ LIGHT_POINT_GLOW
} LightTypes;

typedef void (*LightUpdateFunc)(LightCollection*, LightParams* params, Vec3f* vec);

#endif
