#ifndef _Z64LIGHT_H_
#define _Z64LIGHT_H_

#include <ultra64.h>
#include <ultra64/gbi.h>

typedef struct z_Light_t
{
    /* 0x0 */ struct LightInfo* info;
    /* 0x4 */ struct z_Light_t* prev;
    /* 0x8 */ struct z_Light_t* next;
} z_Light;

typedef struct
{
    /* 0x0 */ z_Light* lightsHead;
    /* 0x4 */ u8 ambientRed;
    /* 0x5 */ u8 ambientGreen;
    /* 0x6 */ u8 ambientBlue;
    /* 0x7 */ u8 unk_07;
    /* 0x8 */ u8 unk_08;
    /* 0x9 */ u8 unk_09;
    /* 0xA */ s16 unk_0A;
    /* 0xC */ s16 unk_0C;
} LightingContext;

typedef struct
{
    /* 0x000 */ int numOccupied;
    /* 0x004 */ int nextFree;
    /* 0x008 */ z_Light lights[32];
} LightsList;

typedef struct
{
    /* 0x0 */ u8 type;
    /* 0x2 */ u16 params[6];
} LightInfo;

typedef struct
{
    /* 0x0 */ s8 dirX;
    /* 0x1 */ s8 dirY;
    /* 0x2 */ s8 dirZ;
    /* 0x3 */ u8 red;
    /* 0x4 */ u8 green;
    /* 0x5 */ u8 blue;
    /* 0x6 */ u16 pad[3];
} LightInfoDirectionalParams;

typedef struct
{
    /* 0x0 */ s16 posX;
    /* 0x2 */ s16 posY;
    /* 0x4 */ s16 posZ;
    /* 0x6 */ u8 red;
    /* 0x7 */ u8 green;
    /* 0x8 */ u8 blue;
    /* 0x9 */ u8 unk_09;
    /* 0xA */ s16 radius;
} LightInfoPositionalParams;

typedef struct
{
    /* 0x00 */ u8 numLights;
    /* 0x01 */ u8 enablePosLights;
    /* 0x02 */ UNK_TYPE1 pad2[6];
    /* 0x08 */ Ambient ambient;
    /* 0x10 */ Light lights[7];
} LightMapper;

typedef struct
{
    /* 0x0 */ u8 type;
    /* 0x2 */ LightInfoDirectionalParams params;
} LightInfoDirectional;

typedef struct
{
    /* 0x0 */ u8 type;
    /* 0x2 */ LightInfoPositionalParams params;
} LightInfoPositional;

#endif
