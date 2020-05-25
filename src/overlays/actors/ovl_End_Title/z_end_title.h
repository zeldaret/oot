#ifndef _Z_END_TITLE_H_
#define _Z_END_TITLE_H_

#include <ultra64.h>
#include <global.h>

struct EndTitle;

typedef struct EndTitle {
    /* 0x0000 */ Actor actor;
    /* 0x014C */ u8 theEndTitleCardAlpha;
    /* 0x014D */ u8 zeldaTitleCardAlpha;
    /* 0x014E */ u8 ocarinaTitleCardAlpha;
} EndTitle; // size = 0x0150

extern const ActorInit End_Title_InitVars;

#endif
