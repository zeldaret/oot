#ifndef Z64INTERFACE_H
#define Z64INTERFACE_H

extern u8 _icon_item_staticSegmentRomStart[];
extern u8 _icon_item_24_staticSegmentRomStart[];

// An "item icon" (gItemIcon*Tex) is 32x32 rgba32
#define ITEM_ICON_WIDTH 32
#define ITEM_ICON_HEIGHT 32
#define ITEM_ICON_SIZE (ITEM_ICON_WIDTH * ITEM_ICON_HEIGHT * 4) // The size in bytes of an item icon

/**
 * Get the VROM address of the item icon for the specified item.
 *
 * @param itemId An ItemId value in the range `ITEM_DEKU_STICK`..`ITEM_FISHING_POLE`
 */
#define GET_ITEM_ICON_VROM(itemId) ((uintptr_t)_icon_item_staticSegmentRomStart + ((itemId)*ITEM_ICON_SIZE))

// A "quest icon" (gQuestIcon*Tex) is 24x24 rgba32
#define QUEST_ICON_WIDTH 24
#define QUEST_ICON_HEIGHT 24
#define QUEST_ICON_SIZE (QUEST_ICON_WIDTH * QUEST_ICON_HEIGHT * 4) // The size in bytes of a quest icon

/**
 * Get the VROM address of the quest icon for the specified item.
 *
 * @param itemId An ItemId value in the range `ITEM_MEDALLION_FOREST`..`ITEM_MAGIC_JAR_BIG`
 */
#define GET_QUEST_ICON_VROM(itemId) \
    ((uintptr_t)_icon_item_24_staticSegmentRomStart + (((itemId)-ITEM_MEDALLION_FOREST) * QUEST_ICON_SIZE))

typedef enum {
    /* 0x00 */ DO_ACTION_ATTACK,
    /* 0x01 */ DO_ACTION_CHECK,
    /* 0x02 */ DO_ACTION_ENTER,
    /* 0x03 */ DO_ACTION_RETURN,
    /* 0x04 */ DO_ACTION_OPEN,
    /* 0x05 */ DO_ACTION_JUMP,
    /* 0x06 */ DO_ACTION_DECIDE,
    /* 0x07 */ DO_ACTION_DIVE,
    /* 0x08 */ DO_ACTION_FASTER,
    /* 0x09 */ DO_ACTION_THROW,
    /* 0x0A */ DO_ACTION_NONE, // in do_action_static, the texture at this position is NAVI, however this value is in practice the "No Action" value
    /* 0x0B */ DO_ACTION_CLIMB,
    /* 0x0C */ DO_ACTION_DROP,
    /* 0x0D */ DO_ACTION_DOWN,
    /* 0x0E */ DO_ACTION_SAVE,
    /* 0x0F */ DO_ACTION_SPEAK,
    /* 0x10 */ DO_ACTION_NEXT,
    /* 0x11 */ DO_ACTION_GRAB,
    /* 0x12 */ DO_ACTION_STOP,
    /* 0x13 */ DO_ACTION_PUTAWAY,
    /* 0x14 */ DO_ACTION_REEL,
    /* 0x15 */ DO_ACTION_1,
    /* 0x16 */ DO_ACTION_2,
    /* 0x17 */ DO_ACTION_3,
    /* 0x18 */ DO_ACTION_4,
    /* 0x19 */ DO_ACTION_5,
    /* 0x1A */ DO_ACTION_6,
    /* 0x1B */ DO_ACTION_7,
    /* 0x1C */ DO_ACTION_8,
    /* 0x1D */ DO_ACTION_MAX
} DoAction;

// TODO extract this information from the texture definitions themselves
#define DO_ACTION_TEX_WIDTH 48
#define DO_ACTION_TEX_HEIGHT 16
#define DO_ACTION_TEX_SIZE ((DO_ACTION_TEX_WIDTH * DO_ACTION_TEX_HEIGHT) / 2) // (sizeof(gCheckDoActionENGTex))

typedef struct {
    /* 0x0000 */ View   view;
    /* 0x0128 */ Vtx*   actionVtx;
    /* 0x012C */ Vtx*   beatingHeartVtx;
    /* 0x0130 */ u8*    parameterSegment;
    /* 0x0134 */ u8*    doActionSegment;
    /* 0x0138 */ u8*    iconItemSegment;
    /* 0x013C */ u8*    mapSegment;
    /* 0x0140 */ u8     mapPalette[32];
    /* 0x0160 */ DmaRequest dmaRequest_160;
    /* 0x0180 */ DmaRequest dmaRequest_180;
    /* 0x01A0 */ char   unk_1A0[0x20];
    /* 0x01C0 */ OSMesgQueue loadQueue;
    /* 0x01D8 */ OSMesg loadMsg;
    /* 0x01DC */ Viewport viewport;
    /* 0x01EC */ s16    unk_1EC;
    /* 0x01EE */ u16    unk_1EE;
    /* 0x01F0 */ u16    unk_1F0;
    /* 0x01F4 */ f32    unk_1F4;
    /* 0x01F8 */ s16    naviCalling;
    /* 0x01FA */ s16    unk_1FA;
    /* 0x01FC */ s16    unk_1FC;
    /* 0x01FE */ s16    heartColorOscillator;
    /* 0x0200 */ s16    heartColorOscillatorDirection;
    /* 0x0202 */ s16    beatingHeartPrim[3];
    /* 0x0208 */ s16    beatingHeartEnv[3];
    /* 0x020E */ s16    heartsPrimR[2];
    /* 0x0212 */ s16    heartsPrimG[2];
    /* 0x0216 */ s16    heartsPrimB[2];
    /* 0x021A */ s16    heartsEnvR[2];
    /* 0x021E */ s16    heartsEnvG[2];
    /* 0x0222 */ s16    heartsEnvB[2];
    /* 0x0226 */ s16    unk_226; // Used only in unused functions
    /* 0x0228 */ s16    unk_228; // Used only in unused functions
    /* 0x022A */ s16    beatingHeartOscillator;
    /* 0x022C */ s16    beatingHeartOscillatorDirection;
    /* 0x022E */ s16    unk_22E;
    /* 0x0230 */ s16    lensMagicConsumptionTimer; // When lens is active, 1 unit of magic is consumed every time the timer reaches 0
    /* 0x0232 */ s16    counterDigits[4]; // used for key and rupee counters
    /* 0x023A */ u8     numHorseBoosts;
    /* 0x023C */ u16    unk_23C;
    /* 0x023E */ u16    hbaAmmo; // ammo while playing the horseback archery minigame
    /* 0x0240 */ u16    unk_240;
    /* 0x0242 */ u16    unk_242;
    /* 0x0224 */ u16    unk_244; // screen fill alpha?
    /* 0x0246 */ u16    aAlpha; // also carrots alpha
    /* 0x0248 */ u16    bAlpha; // also HBA score alpha
    /* 0x024A */ u16    cLeftAlpha;
    /* 0x024C */ u16    cDownAlpha;
    /* 0x024E */ u16    cRightAlpha;
    /* 0x0250 */ u16    healthAlpha; // also max C-Up alpha
    /* 0x0252 */ u16    magicAlpha; // also Rupee and Key counters alpha
    /* 0x0254 */ u16    minimapAlpha;
    /* 0x0256 */ s16    startAlpha;
    /* 0x0258 */ s16    unk_258;
    /* 0x025A */ s16    unk_25A;
    /* 0x025C */ s16    mapRoomNum;
    /* 0x025E */ s16    mapPaletteIndex; // "map_palete_no"
    /* 0x0260 */ u8     unk_260;
    /* 0x0261 */ u8     unk_261;
    struct {
        /* 0x0262 */ u8    hGauge;     // "h_gage"; unknown?
        /* 0x0263 */ u8    bButton;    // "b_button"
        /* 0x0264 */ u8    aButton;    // "a_button"
        /* 0x0265 */ u8    bottles;    // "c_bottle"
        /* 0x0266 */ u8    tradeItems; // "c_warasibe"
        /* 0x0267 */ u8    hookshot;   // "c_hook"
        /* 0x0268 */ u8    ocarina;    // "c_ocarina"
        /* 0x0269 */ u8    warpSongs;  // "c_warp"
        /* 0x026A */ u8    sunsSong;   // "m_sunmoon"
        /* 0x026B */ u8    farores;    // "m_wind"
        /* 0x026C */ u8    dinsNayrus; // "m_magic"; din's fire and nayru's love
        /* 0x026D */ u8    all;        // "another"; enables all item restrictions
    }                   restrictions;
} InterfaceContext; // size = 0x270

/**
 * Button HUD Positions (Upper Left)
 */
#define A_BUTTON_X 186
#define A_BUTTON_Y 9

#define B_BUTTON_X 160
#define B_BUTTON_Y 17

#define C_LEFT_BUTTON_X 227
#define C_LEFT_BUTTON_Y 18

#define C_DOWN_BUTTON_X 249
#define C_DOWN_BUTTON_Y 34

#define C_RIGHT_BUTTON_X 271
#define C_RIGHT_BUTTON_Y 18

#define C_UP_BUTTON_X 254
#define C_UP_BUTTON_Y 16

/**
 * These are the colors for the hearts in the interface. The prim color is the red color of the heart
 * for the base hearts, while the prim color for the double defense hearts is the white outline. The
 * env color for the base hearts is the purple-ish outline, while the env color for the double defense
 * hearts is the red color of the hearts.
 */

#define HEARTS_PRIM_R 255
#define HEARTS_PRIM_G 70
#define HEARTS_PRIM_B 50

#define HEARTS_ENV_R 50
#define HEARTS_ENV_G 40
#define HEARTS_ENV_B 60

#define HEARTS_DD_PRIM_R 255
#define HEARTS_DD_PRIM_G 255
#define HEARTS_DD_PRIM_B 255

#define HEARTS_DD_ENV_R 200
#define HEARTS_DD_ENV_G 0
#define HEARTS_DD_ENV_B 0

/**
 * The burn and drown colors listed here are unused. Prerelease footage of the game confirms that at one
 * point in development the orange color was to be used while taking damage from hot environments.
 * Based on this, we can assume that the blue heart color was to be used while drowning.
 * In the final game these environments only have a timer and do not damage you continuously.
 */

#define HEARTS_BURN_PRIM_R 255
#define HEARTS_BURN_PRIM_G 190
#define HEARTS_BURN_PRIM_B 0

#define HEARTS_BURN_ENV_R 255
#define HEARTS_BURN_ENV_G 0
#define HEARTS_BURN_ENV_B 0

#define HEARTS_DROWN_PRIM_R 100
#define HEARTS_DROWN_PRIM_G 100
#define HEARTS_DROWN_PRIM_B 255

#define HEARTS_DROWN_ENV_R 0
#define HEARTS_DROWN_ENV_G 0
#define HEARTS_DROWN_ENV_B 255

#endif
