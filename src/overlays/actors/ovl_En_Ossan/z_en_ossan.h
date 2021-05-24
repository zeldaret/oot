#ifndef _Z_EN_OSSAN_H_
#define _Z_EN_OSSAN_H_

#include "ultra64.h"
#include "global.h"
#include "overlays/actors/ovl_En_Tana/z_en_tana.h"
#include "overlays/actors/ovl_En_GirlA/z_en_girla.h"

struct EnOssan;

typedef void (*EnOssanActionFunc)(struct EnOssan*, GlobalContext*);
typedef void (*EnOssanTalkOwnerFunc)(GlobalContext*);
typedef void (*EnOssanInitFunc)(struct EnOssan*, GlobalContext*);
typedef s16 (*EnOssanGetGirlAParams)(s16);
typedef void (*EnOssanStateFunc)(struct EnOssan*, GlobalContext*, Player*);

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
    /* 0x0194 */ void (*obj3ToSeg6Func)(struct EnOssan*, GlobalContext*);
    /* 0x0198 */ ColliderCylinder collider; // unused
    /* 0x01E4 */ s16 timer;
    /* 0x01E6 */ s16 delayTimer;
    /* 0x01E8 */ s8 objBankIndex1;
    /* 0x01E9 */ s8 objBankIndex2;
    /* 0x01EA */ s8 objBankIndex3;
    /* 0x01EB */ u8 happyMaskShopState;
    /* 0x01EC */ u8 happyMaskShopkeeperEyeIdx;
    /* 0x01EE */ s16 headRot;
    /* 0x01F0 */ s16 headTargetRot;
    /* 0x01F2 */ s16 eyeTextureIdx;
    /* 0x01F4 */ s16 blinkTimer;
    /* 0x01F8 */ void (*blinkFunc)(struct EnOssan*);
    /* 0x01FC */ s16 stateFlag;
    /* 0x01FE */ s16 tempStateFlag;
    /* 0x0200 */ EnGirlA* shelfSlots[8];
    // Shelves are indexed as such:
    /* 7 5  3 1 */
    /* 6 4  2 0 */
    /* 0x0220 */ EnTana* shelves;
    /* 0x0224 */ s32 stickAccumX;
    /* 0x0228 */ s32 stickAccumY;
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
    /* 0x02D4 */ f32 cameraFaceAngle; // stored in degrees
} EnOssan;                            // size = 0x02D8

extern const ActorInit En_Ossan_InitVars;

typedef enum {
    /* 00 */ OSSAN_TYPE_KOKIRI,
    /* 01 */ OSSAN_TYPE_KAKARIKO_POTION,
    /* 02 */ OSSAN_TYPE_BOMBCHUS,
    /* 03 */ OSSAN_TYPE_MARKET_POTION,
    /* 04 */ OSSAN_TYPE_BAZAAR,
    /* 05 */ OSSAN_TYPE_ADULT,
    /* 06 */ OSSAN_TYPE_TALON,
    /* 07 */ OSSAN_TYPE_ZORA,
    /* 08 */ OSSAN_TYPE_GORON,
    /* 09 */ OSSAN_TYPE_INGO,
    /* 10 */ OSSAN_TYPE_MASK
} OssanType;

typedef enum {
    /* 00 */ ENOSSAN_STATE_0,  // Idle
    /* 01 */ ENOSSAN_STATE_1,  // Start Conversation
    /* 02 */ ENOSSAN_STATE_2,  // Facing Shopkeeper
    /* 03 */ ENOSSAN_STATE_3,  // Talking to Shopkeeper
    /* 04 */ ENOSSAN_STATE_4,  // Look to left shelf
    /* 05 */ ENOSSAN_STATE_5,  // Look to right shelf
    /* 06 */ ENOSSAN_STATE_6,  // Browse left shelf
    /* 07 */ ENOSSAN_STATE_7,  // Browse right shelf
    /* 08 */ ENOSSAN_STATE_8,  // Look from shelf to Shopkeeper
    /* 09 */ ENOSSAN_STATE_9,  // Select Generic Item
    /* 10 */ ENOSSAN_STATE_10, // Select Milk Bottle
    /* 11 */ ENOSSAN_STATE_11, // Select Weird Egg
    /* 12 */ ENOSSAN_STATE_12, // Select Unimplemented Item
    /* 13 */ ENOSSAN_STATE_13, // Select Bombs
    /* 14 */ ENOSSAN_STATE_14, // Can't get item
    /* 15 */ ENOSSAN_STATE_15, // Give Item (Hold it up with fanfare?)
    /* 16 */ ENOSSAN_STATE_16, // Item Purchased
    /* 17 */ ENOSSAN_STATE_17, // Would you like to buy something else?
    /* 18 */ ENOSSAN_STATE_18, // Give Lon Lon Milk
    /* 19 */ ENOSSAN_STATE_19, // Turn to shopkeeper, talk about fake bombs
    /* 20 */ ENOSSAN_STATE_20, // Can't Get Goron City Bombs
    /* 21 */ ENOSSAN_STATE_21, // Unused
    /* 22 */ ENOSSAN_STATE_22, // Follows ENOSSAN_STATE_21
    /* 23 */ ENOSSAN_STATE_23, // Quick Buy
    /* 24 */ ENOSSAN_STATE_24, // Select Mask Item
    /* 25 */ ENOSSAN_STATE_25, // Lend Mask of Truth
    /* 26 */ ENOSSAN_STATE_26  // Hylian Shield Discount
} EnOssan_State;

typedef enum {
    ENOSSAN_HAPPY_STATE_REQUEST_PAYMENT_KEATON_MASK,
    ENOSSAN_HAPPY_STATE_REQUEST_PAYMENT_SPOOKY_MASK,
    ENOSSAN_HAPPY_STATE_REQUEST_PAYMENT_SKULL_MASK,
    ENOSSAN_HAPPY_STATE_REQUEST_PAYMENT_BUNNY_HOOD,
    ENOSSAN_HAPPY_STATE_BORROWED_FIRST_MASK,
    ENOSSAN_HAPPY_STATE_ANGRY,          // Give me my money man!
    ENOSSAN_HAPPY_STATE_ALL_MASKS_SOLD, // All masks have been sold
    ENOSSAN_HAPPY_STATE_NONE = 8        // No Action / Payment received!
} EnOssan_HappyMaskState;

#endif
