#ifndef _Z_EN_OSSAN_H_
#define _Z_EN_OSSAN_H_

#include "ultra64.h"
#include "global.h"
#include "overlays/actors/ovl_En_Tana/z_en_tana.h"
#include "overlays/actors/ovl_En_GirlA/z_en_girla.h"

struct EnOssan;

typedef void (*EnOssanActionFunc)(struct EnOssan*, GlobalContext*);
typedef void (*EnOssanTalkOwnerFunc)(GlobalContext*);
typedef void (*EnOssanUnkFunc1)(struct EnOssan*, GlobalContext*);
typedef void (*EnOssanUnkFunc2)(struct EnOssan*);
typedef s16 (*EnOssanGetGirlAParams)(s16);
typedef void (*EnOssanUnkFunc4)(struct EnOssan*, GlobalContext*, Player*);

typedef struct {
    u32 r;
    u32 g;
    u32 b;
    u32 a;
} EnvColor;

typedef struct {

    /* 0x0254 */ EnvColor stickColor;
    /* 0x0264 */ f32 stickTexX;
    /* 0x0268 */ f32 stickTexY;
    /* 0x026C */ EnvColor arrowColor;
    /* 0x027C */ f32 arrowTexX;
    /* 0x0280 */ f32 arrowTexY;
    /* 0x0284 */ f32 z;
    /* 0x0288 */ s32 isEnabled;
} StickDirectionPrompt;

#define ColChanMix(c1, c2, m) (c1 - (s32)(c2 * m)) & 0xFF

typedef struct EnOssan {
    /* 0x0000 */ Actor actor;
    /* 0x014C */ SkelAnime skelAnime;
    /* 0x0190 */ EnOssanActionFunc actionFunc;
    /* 0x0194 */ void(*unk_194)(struct EnOssan*, GlobalContext*); //objBankIndex3 VirtualToPhysical
    /* 0x0198 */ ColliderCylinder collider;
    /* 0x01E4 */ s16 timer;
    /* 0x01E6 */ s16 delayTimer;
    /* 0x01E8 */ s8 objBankIndex1;
    /* 0x01E9 */ s8 objBankIndex2;
    /* 0x01EA */ s8 objBankIndex3;
    /* 0x01EB */ u8 happyMaskShopState;
    /* 0x01EC */ u8 unk_1EC;
    /* 0x01ED */ s8 unk_1ED;
    /* 0x01EE */ s16 unk_1EE;
    /* 0x01F0 */ s16 lookAngle;
    /* 0x01F2 */ s16 unk_1F2;
    /* 0x01F4 */ s16 unk_1F4;
    /* 0x01F8 */ EnOssanUnkFunc2 unk_1F8;
    /* 0x01FC */ s16 stateFlag;
    /* 0x01FE */ s16 unk_1FE;
    /* 0x0200 */ EnGirlA* shelfSlots[8];
    /* 7 5  3 1 */
    /* 6 4  2 0 */
    /* 0x0220 */ EnTana* shelves;
    /* 0x0224 */ s32 stickX;
    /* 0x0228 */ s32 stickY;
    /* 0x022C */ u8 moveHorizontal;
    /* 0x022D */ u8 moveVertical;
    /* 0x0230 */ f32 cursorX;
    /* 0x0234 */ f32 cursorY;
    /* 0x0238 */ f32 cursorZ;
    
    /* 0x023C */ EnvColor cursorColor;
    /* 0x024C */ f32 cursorAnimTween;
    /* 0x0250 */ u8 cursorAnimState;
    /* 0x0251 */ u8 drawCursor;
    /* 0x0252 */ u8 cursorIndex;

    /* 0x0254 */ StickDirectionPrompt stickRightPrompt;
    /* 0x028C */ StickDirectionPrompt stickLeftPrompt;

    /* 0x02C4 */ f32 arrowAnimTween;
    /* 0x02C4 */ f32 stickAnimTween;
    /* 0x02CC */ u8 arrowAnimState;
    /* 0x02CD */ u8 stickAnimState;
    /* 0x02D0 */ f32 shopItemSelectedTween;
    /* 0x02D4 */ f32 unk_2D4;
} EnOssan; // size = 0x02D8

extern const ActorInit En_Ossan_InitVars;

typedef enum {
    /* 00 */ ENOSSAN_STATE_0, //Idle
    /* 01 */ ENOSSAN_STATE_1, //Start Conversation
    /* 02 */ ENOSSAN_STATE_2, //Facing Shopkeeper
    /* 03 */ ENOSSAN_STATE_3, //Talking to Shopkeeper
    /* 04 */ ENOSSAN_STATE_4,
    /* 05 */ ENOSSAN_STATE_5,
    /* 06 */ ENOSSAN_STATE_6,
    /* 07 */ ENOSSAN_STATE_7,
    /* 08 */ ENOSSAN_STATE_8,
    /* 09 */ ENOSSAN_STATE_9,
    /* 10 */ ENOSSAN_STATE_10,
    /* 11 */ ENOSSAN_STATE_11,
    /* 12 */ ENOSSAN_STATE_12,
    /* 13 */ ENOSSAN_STATE_13,
    /* 14 */ ENOSSAN_STATE_14,
    /* 15 */ ENOSSAN_STATE_15,
    /* 16 */ ENOSSAN_STATE_16,
    /* 17 */ ENOSSAN_STATE_17,
    /* 18 */ ENOSSAN_STATE_18,
    /* 19 */ ENOSSAN_STATE_19,
    /* 20 */ ENOSSAN_STATE_20,
    /* 21 */ ENOSSAN_STATE_21,
    /* 22 */ ENOSSAN_STATE_22,
    /* 23 */ ENOSSAN_STATE_23,
    /* 24 */ ENOSSAN_STATE_24,
    /* 25 */ ENOSSAN_STATE_25,
    /* 26 */ ENOSSAN_STATE_26
} EnOssan_State;

typedef enum {
    ENOSSAN_HAPPY_STATE_0, //Keaton Mask
    ENOSSAN_HAPPY_STATE_1, //Spooky Mask
    ENOSSAN_HAPPY_STATE_2, //Skull Mask
    ENOSSAN_HAPPY_STATE_3, //Bunny Hood
    ENOSSAN_HAPPY_STATE_4,
    ENOSSAN_HAPPY_STATE_5, //Give me my money man!
    ENOSSAN_HAPPY_STATE_6, //All Masks Sold Out
    ENOSSAN_HAPPY_STATE_7,
    ENOSSAN_HAPPY_STATE_8  //Payment received!
} EnOssan_HappyMaskState;

#endif
