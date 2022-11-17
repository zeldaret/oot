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
