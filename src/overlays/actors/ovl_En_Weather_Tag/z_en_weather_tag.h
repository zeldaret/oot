#ifndef _Z_EN_WEATHER_TAG_H_
#define _Z_EN_WEATHER_TAG_H_

#include <ultra64.h>
#include <global.h>

struct EnWeatherTag;

typedef void (*EnWeatherTagActionFunc)(struct EnWeatherTag*, GlobalContext*);

typedef struct EnWeatherTag {
    /* 0x0000 */ Actor actor;
    /* 0x014C */ EnWeatherTagActionFunc actionFunc;
    /* 0x0150 */ char unk_150[0x04];
} EnWeatherTag; // size = 0x0154

extern const ActorInit En_Weather_Tag_InitVars;

#endif
