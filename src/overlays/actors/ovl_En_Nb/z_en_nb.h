#ifndef _Z_EN_NB_H_
#define _Z_EN_NB_H_

#include <ultra64.h>
#include <global.h>

struct EnNb;

typedef void (*EnNbActionFunc)(struct EnNb*, GlobalContext*);
typedef void (*EnNbDrawFunc)(struct EnNb*, GlobalContext*);

typedef struct EnNb {
    /* 0x0000 */ Actor actor;
    /* 0x014C */ SkelAnime skelAnime;
    /* 0x0190 */ Vec3s limbDrawTable[19];
    /* 0x0202 */ Vec3s transitionDrawTable[19];
    /* 0x0274 */ s16 eyeIdx;
    /* 0x0276 */ s16 blinkTimer;
    /* 0x0278 */ s32 action;
    /* 0x027C */ s32 drawMode;
    /* 0x0280 */ f32 unk_280;
    /* 0x0284 */ u32 alpha;
    /* 0x0288 */ s32 unk_288;
    /* 0x028C */ s32 unk_28C;
    /* 0x0290 */ f32 unk_290;
    /* 0x0294 */ ColliderCylinder collider;
    /* 0x02E0 */ s32 unk_2E0;
    /* 0x02E4 */ Vec3f vec_2E4;
    /* 0x02F0 */ Vec3f vec_2F0;
    /* 0x02FC */ s16 unk_2FC;
    /* 0x02FE */ u16 unk_2FE;
    /* 0x0300 */ struct_80034A14_arg1 struct_300;
} EnNb; // size = 0x0328

typedef enum {
    /* 0x00 */
    /* 0x01 */ NB_CHAMBER_UNDERGROUND = 1,
    /* 0x02 */ NB_CHAMBER_APPEAR = 2,
    /* 0x03 */ NB_CHAMBER_IDLE = 3, // Talking to Link in the chamber
    
    /* 0x06 */ NB_GIVE_MEDALLION = 6,

    /* 0x0A */ NB_CAPTURED = 10,

    /* 0x14 */ NB_CREDITS_INIT = 20,
    /* 0x15 */ NB_CREDITS_FADEIN = 21,
    /* 0x16 */ NB_CREDITS_SIT = 22,
    /* 0x17 */ NB_CREDITS_HEAD_TURN = 23,
    /* 0x18 */ NB_CROUCH_CRAWLSPACE = 24,
    /* 0x19 */ NB_NOTICE_PLAYER = 25,
    /* 0x1A */ NB_IDLE_CRAWLSPACE = 26,
    /* 0x1B */ NB_IN_DIALOG = 27,
    /* 0x1C */ NB_IN_PATH = 28,
    /* 0x1D */ NB_IDLE_AFTER_TALK = 29
} EnNbAction;

typedef enum {
    /* 0x00 */ NB_DRAW_NOTHING,
    /* 0x01 */
    /* 0x02 */ NB_DRAW_TRANSPARENCY = 2
} EnNbDrawMode;
extern const ActorInit En_Nb_InitVars;

#endif
