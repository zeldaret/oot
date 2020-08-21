#ifndef _Z64LIGHT_H_
#define _Z64LIGHT_H_

#include <ultra64.h>
#include <ultra64/gbi.h>
#include <z64math.h>

typedef struct {
    /* 0x0 */ s16 posX;
    /* 0x2 */ s16 posY;
    /* 0x4 */ s16 posZ;
    /* 0x6 */ u8 red;
    /* 0x7 */ u8 green;
    /* 0x8 */ u8 blue;
    /* 0x9 */ u8 unk_09;
    /* 0xA */ s16 radius;
} PointParams; // size = 0xC

typedef struct {
    /* 0x0 */ s8 dirX;
    /* 0x1 */ s8 dirY;
    /* 0x2 */ s8 dirZ;
    /* 0x3 */ u8 red;
    /* 0x4 */ u8 green;
    /* 0x5 */ u8 blue;
} DirectionalParams; // size = 0x6

typedef union {
    /* 0x0 */ PointParams point;
    /* 0x0 */ DirectionalParams directional;
} LightParams; // size = 0xC

typedef struct {
    /* 0x0 */ u8 type;
    /* 0x2 */ LightParams params;
} LightInfo; // size = 0xE

typedef struct {
    /* 0x00 */ u8 numLights;
    /* 0x01 */ u8 enablePosLights;
    /* 0x02 */ char unk_02[6];
    /* 0x10 */ Lights7 lights;
} LightMapper; // size = 0x80

struct LightNode;

typedef struct LightNode {
    /* 0x0 */ struct LightInfo* info;
    /* 0x4 */ struct LightNode* prev;
    /* 0x8 */ struct LightNode* next;
} LightNode; // size = 0xC

typedef struct {
    /* 0x000 */ s32 numOccupied;
    /* 0x004 */ s32 nextFree;
    /* 0x008 */ LightNode lights[32];
} LightsList; // size = 0x188

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

typedef void (*LightUpdateFunc)(LightMapper*, LightParams* params, Vec3f* vec);

#endif
