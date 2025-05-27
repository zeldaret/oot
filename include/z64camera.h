#ifndef Z64CAMERA_H
#define Z64CAMERA_H

#include "ultra64.h"
#include "z64cutscene.h"
#include "z64math.h"

struct CollisionContext;
struct View;

#define CAM_STAT_CUT        0
#define CAM_STAT_WAIT       1
#define CAM_STAT_UNK3       3
#define CAM_STAT_ACTIVE     7
#define CAM_STAT_UNK100     0x100

#define NUM_CAMS 4

// Camera IDs are indices into `PlayState.cameraPtrs`
#define CAM_ID_MAIN 0 // The index of the main camera
#define CAM_ID_SUB_FIRST 1 // The index sub cameras start at
#define CAM_ID_NONE -1 // Used to indicate no camera. Can be used to default to the active camera in some scenarios

#define SUB_CAM_ID_DONE 0 // Used in some actors for variables holding sub camera IDs to indicate "subcam is finished"

#define ONEPOINT_CS_INFO(camera) (&camera->paramData.uniq9.csInfo)
#define PARENT_CAM(cam) ((cam)->play->cameraPtrs[(cam)->parentCamId])
#define CHILD_CAM(cam) ((cam)->play->cameraPtrs[(cam)->childCamId])

// Shrinking the window from the top and bottom with black borders (letterboxing)
#define CAM_LETTERBOX_SHIFT 12
#define CAM_LETTERBOX_MASK (0xF << CAM_LETTERBOX_SHIFT)
#define CAM_LETTERBOX_SIZE_MASK (0x7 << CAM_LETTERBOX_SHIFT)

#define CAM_LETTERBOX(letterBoxFlag) (((letterBoxFlag) & 0xF) << CAM_LETTERBOX_SHIFT)

// small/medium/large black borders
#define CAM_LETTERBOX_NONE   CAM_LETTERBOX(0)
#define CAM_LETTERBOX_SMALL  CAM_LETTERBOX(1)
#define CAM_LETTERBOX_MEDIUM CAM_LETTERBOX(2)
#define CAM_LETTERBOX_LARGE  CAM_LETTERBOX(3)

#define CAM_LETTERBOX_INSTANT CAM_LETTERBOX(8) // Bit to determine whether to set the current value directly (on), or to set the size target (off)
#define CAM_LETTERBOX_IGNORE  CAM_LETTERBOX(0xF) // No change in letterbox size, keep the previous size

// Camera-unique hud visibility mode macros
#define CAM_HUD_VISIBILITY_SHIFT 8
#define CAM_HUD_VISIBILITY_MASK (0xF << CAM_HUD_VISIBILITY_SHIFT)
#define CAM_HUD_VISIBILITY(hudVisibility) (((hudVisibility) & 0xF) << CAM_HUD_VISIBILITY_SHIFT)

// These defines exist to clarify exactly which HUD visibility modes are supported by the camera system. While most of
// them map 1 to 1 with their HUD visibility counterparts, not all HUD visibility mode values will work as expected if
// used directly. Notably:
// - CAM_HUD_VISIBILITY_ALL (0) maps to HUD_VISIBILITY_ALL (50), not HUD_VISIBILITY_NO_CHANGE (0)
// - HUD_VISIBILITY_NOTHING_INSTANT (52) has no CAM_HUD_VISIBILITY_* mapping,
//   because camera HUD visibility values are restricted to the 0-0xF range
#define CAM_HUD_VISIBILITY_ALL                          (0) // HUD_VISIBILITY_ALL
#define CAM_HUD_VISIBILITY_NOTHING                      (HUD_VISIBILITY_NOTHING)
#define CAM_HUD_VISIBILITY_NOTHING_ALT                  (HUD_VISIBILITY_NOTHING_ALT)
#define CAM_HUD_VISIBILITY_HEARTS_FORCE                 (HUD_VISIBILITY_HEARTS_FORCE)
#define CAM_HUD_VISIBILITY_A                            (HUD_VISIBILITY_A)
#define CAM_HUD_VISIBILITY_A_HEARTS_MAGIC_FORCE         (HUD_VISIBILITY_A_HEARTS_MAGIC_FORCE)
#define CAM_HUD_VISIBILITY_A_HEARTS_MAGIC_MINIMAP_FORCE (HUD_VISIBILITY_A_HEARTS_MAGIC_MINIMAP_FORCE)
#define CAM_HUD_VISIBILITY_ALL_NO_MINIMAP_BY_BTN_STATUS (HUD_VISIBILITY_ALL_NO_MINIMAP_BY_BTN_STATUS)
#define CAM_HUD_VISIBILITY_B                            (HUD_VISIBILITY_B)
#define CAM_HUD_VISIBILITY_HEARTS_MAGIC                 (HUD_VISIBILITY_HEARTS_MAGIC)
#define CAM_HUD_VISIBILITY_B_ALT                        (HUD_VISIBILITY_B_ALT)
#define CAM_HUD_VISIBILITY_HEARTS                       (HUD_VISIBILITY_HEARTS)
#define CAM_HUD_VISIBILITY_A_B_MINIMAP                  (HUD_VISIBILITY_A_B_MINIMAP)
#define CAM_HUD_VISIBILITY_HEARTS_MAGIC_FORCE           (HUD_VISIBILITY_HEARTS_MAGIC_FORCE)
// Unique to camera, does not change hud visibility mode (similar effect as HUD_VISIBILITY_NO_CHANGE)
#define CAM_HUD_VISIBILITY_IGNORE                       (0xF)

/**
 * letterboxFlag: Determines the size of the letter-box window. See CAM_LETTERBOX_* defines.
 *                  Can also add on the flag ( | CAM_LETTERBOX_INSTANT) to make the size change immediately
 * hudVisibilityMode: Determines the hud visibility mode. See CAM_HUD_VISIBILITY_* defines.
 *    - A value of 0 (CAM_HUD_VISIBILITY_ALL) in camera maps to a hud visibility mode of HUD_VISIBILITY_ALL
 *    - A value of 0xF in camera results in no change in the hudVisibility (CAM_HUD_VISIBILITY_IGNORE)
 * funcFlags: Custom flags for functions
 */
#define CAM_INTERFACE_FIELD(letterboxFlag, hudVisibilityMode, funcFlags) \
    (((letterboxFlag) & CAM_LETTERBOX_MASK) | CAM_HUD_VISIBILITY(hudVisibilityMode) | ((funcFlags) & 0xFF))

// Camera behaviorFlags. Flags specifically for settings, modes, and bgCam. Reset every frame.
// Used to store current state, only CAM_BEHAVIOR_SETTING_CHECK_PRIORITY and CAM_BEHAVIOR_BG_PROCESSED are read from and used in logic
// Setting (0x1, 0x10)
#define CAM_BEHAVIOR_SETTING_CHECK_PRIORITY (1 << 0)
#define CAM_BEHAVIOR_SETTING_VALID (1 << 4) // Set when a valid camera setting is requested
// Mode (0x2, 0x20)
#define CAM_BEHAVIOR_MODE_SUCCESS (1 << 1) // Set when the camera mode is the requested mode
#define CAM_BEHAVIOR_MODE_VALID (1 << 5) // Set when a valid camera mode is requested
// bgCam (0x4, 0x40)
#define CAM_BEHAVIOR_BG_SUCCESS (1 << 2)
#define CAM_BEHAVIOR_BG_PROCESSED (1 << 6)

// Camera stateFlags. Variety of generic flags
#define CAM_STATE_CHECK_BG_ALT (1 << 0) // Must be set for the camera to change settings based on the bg surface
#define CAM_STATE_CHECK_WATER (1 << 1) // Must be set for Camera_UpdateWater to run
#define CAM_STATE_CHECK_BG (1 << 2) //  Must be set for the camera to change settings based on the bg surface
#define CAM_STATE_EXTERNAL_FINISHED (1 << 3) // Signal from the external systems to camera that the current cam-update function is no longer needed
#define CAM_STATE_CAM_FUNC_FINISH (1 << 4) // Signal from camera to player that the cam-update function is finished its primary purpose
#define CAM_STATE_LOCK_MODE (1 << 5) // Prevents camera from changing mode, unless overridden by `forceModeChange` passed to `Camera_RequestModeImpl`
#define CAM_STATE_DISTORTION (1 << 6) // Set when camera distortion is on
#define CAM_STATE_PLAY_INIT (1 << 7) // Set in Play_Init, never used or changed
#define CAM_STATE_CAMERA_IN_WATER (1 << 8) // Camera (eye) is underwater
#define CAM_STATE_PLAYER_IN_WATER (1 << 9) // Player is swimming in water
#define CAM_STATE_BLOCK_BG (1 << 10) // Prevents the camera from changing settings based on the bg surface for 1 frame
#define CAM_STATE_DEMO7 (1 << 12) // Set in Camera_Demo7, but this function is never called
#define CAM_STATE_CAM_INIT (1 << 14) // Set in Camera_Init, never used or changed
#define CAM_STATE_PLAYER_DIVING ((s16)(1 << 15)) // Diving from the surface of the water down

// Camera viewFlags. Set params related to view
#define CAM_VIEW_AT (1 << 0) // camera->at
#define CAM_VIEW_EYE (1 << 1) // camera->eye and camera->eyeNext
#define CAM_VIEW_UP (1 << 2) // camera->up
#define CAM_VIEW_TARGET (1 << 3) // camera->target
#define CAM_VIEW_TARGET_POS (1 << 4) // camera->targetPosRot.pos
#define CAM_VIEW_FOV (1 << 5) // camera->fov
#define CAM_VIEW_ROLL (1 << 6) // camera->roll

// All scenes using `SCENE_CAM_TYPE_FIXED_SHOP_VIEWPOINT` or `SCENE_CAM_TYPE_FIXED_TOGGLE_VIEWPOINT` are expected
// to have their first two bgCamInfo entries be the following:
#define BGCAM_INDEX_TOGGLE_LOCKED 0
#define BGCAM_INDEX_TOGGLE_PIVOT 1

// Viewpoint is only used by `SCENE_CAM_TYPE_FIXED_SHOP_VIEWPOINT` and `SCENE_CAM_TYPE_FIXED_TOGGLE_VIEWPOINT`
// Value must be 1 greater than the corresponding bgCamIndex.
#define VIEWPOINT_NONE 0
// Use a camera prerend setting that locks the camera in place
#define VIEWPOINT_LOCKED (BGCAM_INDEX_TOGGLE_LOCKED + 1)
// Use a camera pivot setting that allows camera rotation (CAM_SET_PIVOT_SHOP_BROWSING for shop specifically)
#define VIEWPOINT_PIVOT (BGCAM_INDEX_TOGGLE_PIVOT + 1)

struct Actor;
struct CollisionPoly;

typedef enum CameraSettingType {
    /* 0x00 */ CAM_SET_NONE,
    /* 0x01 */ CAM_SET_NORMAL0,
    /* 0x02 */ CAM_SET_NORMAL1,
    /* 0x03 */ CAM_SET_DUNGEON0,
    /* 0x04 */ CAM_SET_DUNGEON1,
    /* 0x05 */ CAM_SET_NORMAL3,
    /* 0x06 */ CAM_SET_HORSE, // "HORSE0"
    /* 0x07 */ CAM_SET_BOSS_GOHMA, // "BOSS_GOMA" (unused)
    /* 0x08 */ CAM_SET_BOSS_DODONGO, // "BOSS_DODO" (unused)
    /* 0x09 */ CAM_SET_BOSS_BARINADE, // "BOSS_BARI" (unused)
    /* 0x0A */ CAM_SET_BOSS_PHANTOM_GANON, // "BOSS_FGANON"
    /* 0x0B */ CAM_SET_BOSS_VOLVAGIA, // "BOSS_BAL"
    /* 0x0C */ CAM_SET_BOSS_BONGO, // "BOSS_SHADES"
    /* 0x0D */ CAM_SET_BOSS_MORPHA, // "BOSS_MOFA" (unused)
    /* 0x0E */ CAM_SET_BOSS_TWINROVA_PLATFORM, // Upper main platform and 4 smaller platforms in the room of the Twinrova boss battle "TWIN0"
    /* 0x0F */ CAM_SET_BOSS_TWINROVA_FLOOR, // The floor in the room of the Twinrova boss battle "TWIN1"
    /* 0x10 */ CAM_SET_BOSS_GANONDORF, // "BOSS_GANON1"
    /* 0x11 */ CAM_SET_BOSS_GANON, // "BOSS_GANON2" (unused)
    /* 0x12 */ CAM_SET_TOWER_CLIMB, // Various climbing structures (collapse sequence stairs, spiral around sarias house, zora domain climb, etc...) "TOWER0"
    /* 0x13 */ CAM_SET_TOWER_UNUSED, // Unused but data is in Phantom Ganon's Lair (no surface uses it) "TOWER1"
    /* 0x14 */ CAM_SET_MARKET_BALCONY, // Activated in day child market by talking to NPC on balcony above bombchu bowling "FIXED0"
    /* 0x15 */ CAM_SET_CHU_BOWLING, // Fixes the camera to the bombchu bowling targets while playing the minigame "FIXED1"
    /* 0x16 */ CAM_SET_PIVOT_CRAWLSPACE, // Unknown. In scene data: closely associated with crawlspaces CIRCLE0"
    /* 0x17 */ CAM_SET_PIVOT_SHOP_BROWSING, // Shopping and browsing for items "CIRCLE2"
    /* 0x18 */ CAM_SET_PIVOT_IN_FRONT, // The camera used on Link's balcony in Kokiri forest. Data present in scene data for Deku Tree, GTG, Inside Ganon's Castle (TODO: may or may not be used) "CIRCLE3"
    /* 0x19 */ CAM_SET_PREREND_FIXED, // Camera is fixed in position and rotation "PREREND0"
    /* 0x1A */ CAM_SET_PREREND_PIVOT, // Camera is fixed in position with fixed pitch, but is free to rotate in the yaw direction 360 degrees "PREREND1"
    /* 0x1B */ CAM_SET_PREREND_SIDE_SCROLL, // Camera side-scrolls position to follow the player. Only used in castle courtyard with the guards "PREREND3"
    /* 0x1C */ CAM_SET_DOOR0, // Custom room door transitions, used in fire and royal family tomb
    /* 0x1D */ CAM_SET_DOORC, // Generic room door transitions, camera moves and follows player as the door is open and closed
    /* 0x1E */ CAM_SET_CRAWLSPACE, // Used in all crawlspaces "RAIL3"
    /* 0x1F */ CAM_SET_START0, // Data is given in Temple of Time, but no surface uses it
    /* 0x20 */ CAM_SET_START1, // Scene/room door transitions that snap the camera to a fixed location (example: ganon's towers doors climbing up)
    /* 0x21 */ CAM_SET_FREE0, // Full manual control is given over the camera
    /* 0x22 */ CAM_SET_FREE2, // Various OnePoint Cutscenes, 10 total (example: falling chest)
    /* 0x23 */ CAM_SET_PIVOT_CORNER, // Inside the carpenter jail cells from thieves hideout "CIRCLE4"
    /* 0x24 */ CAM_SET_PIVOT_WATER_SURFACE, // Player diving from the surface of the water to underwater "CIRCLE5"
    /* 0x25 */ CAM_SET_CS_0, // Various cutscenes "DEMO0"
    /* 0x26 */ CAM_SET_CS_TWISTED_HALLWAY, // Never set to, but checked in twisting hallway (Forest Temple) "DEMO1"
    /* 0x27 */ CAM_SET_FOREST_BIRDS_EYE, // Used in the falling ceiling room in forest temple "MORI1"
    /* 0x28 */ CAM_SET_SLOW_CHEST_CS, // Long cutscene when opening a big chest with a major item "ITEM0"
    /* 0x29 */ CAM_SET_ITEM_UNUSED, // Unused "ITEM1"
    /* 0x2A */ CAM_SET_CS_3, // Various cutscenes "DEMO3"
    /* 0x2B */ CAM_SET_CS_ATTENTION, // Attention cutscenes and the actor siofuki (water spout/jet) "DEMO4"
    /* 0x2C */ CAM_SET_BEAN_GENERIC, // All beans except lost woods "UFOBEAN"
    /* 0x2D */ CAM_SET_BEAN_LOST_WOODS, // Lost woods bean "LIFTBEAN"
    /* 0x2E */ CAM_SET_SCENE_UNUSED, // Unused "SCENE0"
    /* 0x2F */ CAM_SET_SCENE_TRANSITION, // Scene Transitions "SCENE1"
    /* 0x30 */ CAM_SET_ELEVATOR_PLATFORM, // All the fire temple platforms that rise. Also used in non-mq spirit temple entrance shortcut "HIDAN1"
    /* 0x31 */ CAM_SET_FIRE_STAIRCASE, // Used on fire temple staircase actor cutscene in shortcut room connecting vanilla hammer chest to the final goron small key "HIDAN2"
    /* 0x32 */ CAM_SET_FOREST_UNUSED, // Unused "MORI2"
    /* 0x33 */ CAM_SET_FOREST_DEFEAT_POE, // Used when defeating a poe sister "MORI3"
    /* 0x34 */ CAM_SET_BIG_OCTO, // Used by big octo miniboss in Jabu Jabu "TAKO"
    /* 0x35 */ CAM_SET_MEADOW_BIRDS_EYE, // Used only as child in Sacred Forest Meadow Maze "SPOT05A"
    /* 0x36 */ CAM_SET_MEADOW_UNUSED, // Unused from Sacred Forest Meadow "SPOT05B"
    /* 0x37 */ CAM_SET_FIRE_BIRDS_EYE, // Used in lower-floor maze in non-mq fire temple "HIDAN3"
    /* 0x38 */ CAM_SET_TURN_AROUND, // Put the camera in front of player and turn around to look at player from the front "ITEM2"
    /* 0x39 */ CAM_SET_PIVOT_VERTICAL, // Lowering platforms (forest temple bow room, Jabu final shortcut) "CIRCLE6"
    /* 0x3A */ CAM_SET_NORMAL2,
    /* 0x3B */ CAM_SET_FISHING, // Fishing pond by the lake
    /* 0x3C */ CAM_SET_CS_C, // Various cutscenes "DEMOC"
    /* 0x3D */ CAM_SET_JABU_TENTACLE, // Jabu-Jabu Parasitic Tentacle Rooms "UO_FIBER"
    /* 0x3E */ CAM_SET_DUNGEON2,
    /* 0x3F */ CAM_SET_DIRECTED_YAW, // Does not auto-update yaw, tends to keep the camera pointed at a certain yaw (used by biggoron and final spirit lowering platform) "TEPPEN"
    /* 0x40 */ CAM_SET_PIVOT_FROM_SIDE, // Fixed side view, allows rotation of camera (eg. Potion Shop, Meadow at fairy grotto) "CIRCLE7"
    /* 0x41 */ CAM_SET_NORMAL4,
    /* 0x42 */ CAM_SET_MAX
} CameraSettingType;

typedef enum CameraModeType {
    /* 0x00 */ CAM_MODE_NORMAL,
    /* 0x01 */ CAM_MODE_Z_PARALLEL, // Holding Z but with no target, keeps the camera aligned
    /* 0x02 */ CAM_MODE_Z_TARGET_FRIENDLY,
    /* 0x03 */ CAM_MODE_TALK,
    /* 0x04 */ CAM_MODE_Z_TARGET_UNFRIENDLY,
    /* 0x05 */ CAM_MODE_WALL_CLIMB, // Climbing a wall: ladders and vines
    /* 0x06 */ CAM_MODE_FIRST_PERSON,
    /* 0x07 */ CAM_MODE_AIM_ADULT, // First person aiming as adult: bow and hookshot
    /* 0x08 */ CAM_MODE_Z_AIM, // Third person aiming for all items, child and adult
    /* 0x09 */ CAM_MODE_HOOKSHOT_FLY, // Player being pulled by the hookshot to a target
    /* 0x0A */ CAM_MODE_AIM_BOOMERANG, // Aiming the boomerang
    /* 0x0B */ CAM_MODE_AIM_CHILD, // First person aiming as child: slingshot
    /* 0x0C */ CAM_MODE_Z_WALL_CLIMB, // Climbing a wall with Z pressed: ladders and vines
    /* 0x0D */ CAM_MODE_JUMP, // Falling in air from a ledge jump
    /* 0x0E */ CAM_MODE_LEDGE_HANG, // Hanging from and climbing a ledge
    /* 0x0F */ CAM_MODE_Z_LEDGE_HANG, // Hanging from and climbing a ledge with Z pressed
    /* 0x10 */ CAM_MODE_FREE_FALL, // Falling in air except for a ledge jump or knockback
    /* 0x11 */ CAM_MODE_CHARGE, // Charging a spin attack
    /* 0x12 */ CAM_MODE_STILL, // Attacks without Z pressed, falling in air from knockback
    /* 0x13 */ CAM_MODE_PUSH_PULL,
    /* 0x14 */ CAM_MODE_FOLLOW_BOOMERANG, // Boomerang has been thrown, force-target the boomerang as it flies
    /* 0x15 */ CAM_MODE_MAX
} CameraModeType;

typedef enum CameraFuncType {
    /* 0x00 */ CAM_FUNC_NONE,
    /* 0x01 */ CAM_FUNC_NORM0,
    /* 0x02 */ CAM_FUNC_NORM1,
    /* 0x03 */ CAM_FUNC_NORM2,
    /* 0x04 */ CAM_FUNC_NORM3,
    /* 0x05 */ CAM_FUNC_NORM4,
    /* 0x06 */ CAM_FUNC_PARA0,
    /* 0x07 */ CAM_FUNC_PARA1,
    /* 0x08 */ CAM_FUNC_PARA2,
    /* 0x09 */ CAM_FUNC_PARA3,
    /* 0x0A */ CAM_FUNC_PARA4,
    /* 0x0B */ CAM_FUNC_KEEP0,
    /* 0x0C */ CAM_FUNC_KEEP1,
    /* 0x0D */ CAM_FUNC_KEEP2,
    /* 0x0E */ CAM_FUNC_KEEP3,
    /* 0x0F */ CAM_FUNC_KEEP4,
    /* 0x10 */ CAM_FUNC_SUBJ0,
    /* 0x11 */ CAM_FUNC_SUBJ1,
    /* 0x12 */ CAM_FUNC_SUBJ2,
    /* 0x13 */ CAM_FUNC_SUBJ3,
    /* 0x14 */ CAM_FUNC_SUBJ4,
    /* 0x15 */ CAM_FUNC_JUMP0,
    /* 0x16 */ CAM_FUNC_JUMP1,
    /* 0x17 */ CAM_FUNC_JUMP2,
    /* 0x18 */ CAM_FUNC_JUMP3,
    /* 0x19 */ CAM_FUNC_JUMP4,
    /* 0x1A */ CAM_FUNC_BATT0,
    /* 0x1B */ CAM_FUNC_BATT1,
    /* 0x1C */ CAM_FUNC_BATT2,
    /* 0x1D */ CAM_FUNC_BATT3,
    /* 0x1E */ CAM_FUNC_BATT4,
    /* 0x1F */ CAM_FUNC_FIXD0,
    /* 0x20 */ CAM_FUNC_FIXD1,
    /* 0x21 */ CAM_FUNC_FIXD2,
    /* 0x22 */ CAM_FUNC_FIXD3,
    /* 0x23 */ CAM_FUNC_FIXD4,
    /* 0x24 */ CAM_FUNC_DATA0,
    /* 0x25 */ CAM_FUNC_DATA1,
    /* 0x26 */ CAM_FUNC_DATA2,
    /* 0x27 */ CAM_FUNC_DATA3,
    /* 0x28 */ CAM_FUNC_DATA4,
    /* 0x29 */ CAM_FUNC_UNIQ0,
    /* 0x2A */ CAM_FUNC_UNIQ1,
    /* 0x2B */ CAM_FUNC_UNIQ2,
    /* 0x2C */ CAM_FUNC_UNIQ3,
    /* 0x2D */ CAM_FUNC_UNIQ4,
    /* 0x2E */ CAM_FUNC_UNIQ5,
    /* 0x2F */ CAM_FUNC_UNIQ6,
    /* 0x30 */ CAM_FUNC_UNIQ7,
    /* 0x31 */ CAM_FUNC_UNIQ8,
    /* 0x32 */ CAM_FUNC_UNIQ9,
    /* 0x33 */ CAM_FUNC_DEMO0,
    /* 0x34 */ CAM_FUNC_DEMO1,
    /* 0x35 */ CAM_FUNC_DEMO2,
    /* 0x36 */ CAM_FUNC_DEMO3,
    /* 0x37 */ CAM_FUNC_DEMO4,
    /* 0x38 */ CAM_FUNC_DEMO5,
    /* 0x39 */ CAM_FUNC_DEMO6,
    /* 0x3A */ CAM_FUNC_DEMO7,
    /* 0x3B */ CAM_FUNC_DEMO8,
    /* 0x3C */ CAM_FUNC_DEMO9,
    /* 0x3D */ CAM_FUNC_SPEC0,
    /* 0x3E */ CAM_FUNC_SPEC1,
    /* 0x3F */ CAM_FUNC_SPEC2,
    /* 0x40 */ CAM_FUNC_SPEC3,
    /* 0x41 */ CAM_FUNC_SPEC4,
    /* 0x42 */ CAM_FUNC_SPEC5,
    /* 0x43 */ CAM_FUNC_SPEC6,
    /* 0x44 */ CAM_FUNC_SPEC7,
    /* 0x45 */ CAM_FUNC_SPEC8,
    /* 0x46 */ CAM_FUNC_SPEC9,
    /* 0x47 */ CAM_FUNC_MAX
} CameraFuncType;

typedef enum CameraDataType {
    /* 0x00 */ CAM_DATA_Y_OFFSET,
    /* 0x01 */ CAM_DATA_EYE_DIST,
    /* 0x02 */ CAM_DATA_EYE_DIST_NEXT,
    /* 0x03 */ CAM_DATA_PITCH_TARGET,
    /* 0x04 */ CAM_DATA_YAW_UPDATE_RATE_TARGET,
    /* 0x05 */ CAM_DATA_XZ_UPDATE_RATE_TARGET,
    /* 0x06 */ CAM_DATA_MAX_YAW_UPDATE,
    /* 0x07 */ CAM_DATA_FOV,
    /* 0x08 */ CAM_DATA_AT_LERP_STEP_SCALE,
    /* 0x09 */ CAM_DATA_INTERFACE_FIELD,
    /* 0x0A */ CAM_DATA_YAW_TARGET,
    /* 0x0B */ CAM_DATA_GROUND_Y_OFFSET,
    /* 0x0C */ CAM_DATA_GROUND_AT_LERP_STEP_SCALE,
    /* 0x0D */ CAM_DATA_SWING_YAW_INIT,
    /* 0x0E */ CAM_DATA_SWING_YAW_FINAL,
    /* 0x0F */ CAM_DATA_SWING_PITCH_INIT,
    /* 0x10 */ CAM_DATA_SWING_PITCH_FINAL,
    /* 0x11 */ CAM_DATA_SWING_PITCH_ADJ,
    /* 0x12 */ CAM_DATA_MIN_MAX_DIST_FACTOR,
    /* 0x13 */ CAM_DATA_AT_OFFSET_X,
    /* 0x14 */ CAM_DATA_AT_OFFSET_Y,
    /* 0x15 */ CAM_DATA_AT_OFFSET_Z,
    /* 0x16 */ CAM_DATA_UNK_22,
    /* 0x17 */ CAM_DATA_UNK_23,
    /* 0x18 */ CAM_DATA_FOV_SCALE,
    /* 0x19 */ CAM_DATA_YAW_SCALE,
    /* 0x1A */ CAM_DATA_UNK_26,
    /* 0x1B */ CAM_DATA_MAX
} CameraDataType;

#define CAM_FUNCDATA_INTERFACE_FIELD(interfaceField) \
    { interfaceField, CAM_DATA_INTERFACE_FIELD }

typedef struct SwingAnimation {
    /* 0x00 */ Vec3f collisionClosePoint;
    /* 0x0C */ struct CollisionPoly* atEyePoly;
    /* 0x10 */ f32 swingUpdateRate;
    /* 0x14 */ s16 unk_14;
    /* 0x16 */ s16 unk_16;
    /* 0x18 */ s16 unk_18;
    /* 0x1A */ s16 swingUpdateRateTimer;
} SwingAnimation; // size = 0x1C

typedef struct Normal1ReadOnlyData {
    /* 0x00 */ f32 yOffset;
    /* 0x04 */ f32 distMin;
    /* 0x08 */ f32 distMax;
    /* 0x0C */ f32 unk_0C;
    /* 0x10 */ f32 unk_10;
    /* 0x14 */ f32 unk_14;
    /* 0x18 */ f32 fovTarget;
    /* 0x1C */ f32 atLERPScaleMax;
    /* 0x20 */ s16 pitchTarget;
    /* 0x22 */ s16 interfaceField;
} Normal1ReadOnlyData; // size = 0x24

typedef struct Normal1ReadWriteData {
    /* 0x00 */ SwingAnimation swing;
    /* 0x1C */ f32 yOffset;
    /* 0x20 */ f32 unk_20;
    /* 0x24 */ s16 slopePitchAdj;
    /* 0x26 */ s16 swingYawTarget;
    /* 0x28 */ s16 unk_28;
    /* 0x2A */ s16 startSwingTimer;
} Normal1ReadWriteData; // size = 0x2C

typedef struct Normal1 {
    /* 0x00 */ Normal1ReadOnlyData roData;
    /* 0x24 */ Normal1ReadWriteData rwData;
} Normal1; // size = 0x50

#define NORMAL1_FLAG_0 (1 << 0)
#define NORMAL1_FLAG_1 (1 << 1)
#define NORMAL1_FLAG_2 (1 << 2)
#define NORMAL1_FLAG_4 (1 << 4)
#define NORMAL1_FLAG_5 (1 << 5)
#define NORMAL1_FLAG_7 (1 << 7)

#define CAM_FUNCDATA_NORM1(yOffset, eyeDist, eyeDistNext, pitchTarget, yawUpdateRateTarget, xzUpdateRateTarget, maxYawUpdate, fov, atLerpStepScale, interfaceField) \
    { yOffset, CAM_DATA_Y_OFFSET }, \
    { eyeDist, CAM_DATA_EYE_DIST }, \
    { eyeDistNext, CAM_DATA_EYE_DIST_NEXT }, \
    { pitchTarget, CAM_DATA_PITCH_TARGET }, \
    { yawUpdateRateTarget, CAM_DATA_YAW_UPDATE_RATE_TARGET }, \
    { xzUpdateRateTarget, CAM_DATA_XZ_UPDATE_RATE_TARGET }, \
    { maxYawUpdate, CAM_DATA_MAX_YAW_UPDATE }, \
    { fov, CAM_DATA_FOV }, \
    { atLerpStepScale, CAM_DATA_AT_LERP_STEP_SCALE }, \
    { interfaceField, CAM_DATA_INTERFACE_FIELD }

#define CAM_FUNCDATA_NORM1_ALT(yOffset, eyeDist, eyeDistNext, pitchTarget, yawUpdateRateTarget, xzUpdateRateTarget, maxYawUpdate, fov, atLerpStepScale, interfaceField) \
    { yOffset, CAM_DATA_Y_OFFSET }, \
    { eyeDist, CAM_DATA_EYE_DIST }, \
    { eyeDistNext, CAM_DATA_EYE_DIST_NEXT }, \
    { pitchTarget, CAM_DATA_PITCH_TARGET }, \
    { yawUpdateRateTarget, CAM_DATA_YAW_UPDATE_RATE_TARGET }, \
    { xzUpdateRateTarget, CAM_DATA_UNK_26 }, \
    { maxYawUpdate, CAM_DATA_MAX_YAW_UPDATE }, \
    { fov, CAM_DATA_FOV }, \
    { atLerpStepScale, CAM_DATA_AT_LERP_STEP_SCALE }, \
    { interfaceField, CAM_DATA_INTERFACE_FIELD }

typedef struct Normal2ReadOnlyData {
    /* 0x00 */ f32 unk_00;
    /* 0x04 */ f32 unk_04;
    /* 0x08 */ f32 unk_08;
    /* 0x0C */ f32 unk_0C;
    /* 0x10 */ f32 unk_10;
    /* 0x14 */ f32 unk_14;
    /* 0x18 */ f32 unk_18;
    /* 0x1C */ s16 unk_1C;
    /* 0x1E */ s16 interfaceField;
} Normal2ReadOnlyData; // size = 0x20

typedef struct Normal2ReadWriteData {
    /* 0x00 */ Vec3f unk_00;
    /* 0x0C */ Vec3f unk_0C;
    /* 0x18 */ f32 unk_18;
    /* 0x1C */ f32 unk_1C;
    /* 0x20 */ s16 unk_20;
    /* 0x22 */ s16 unk_22;
    /* 0x24 */ f32 unk_24;
    /* 0x28 */ s16 unk_28;
} Normal2ReadWriteData; // size = 0x2C

typedef struct Normal2 {
    /* 0x00 */ Normal2ReadOnlyData roData;
    /* 0x20 */ Normal2ReadWriteData rwData;
} Normal2; // size = 0x4C

#define NORMAL2_FLAG_0 (1 << 0)
#define NORMAL2_FLAG_2 (1 << 2)
#define NORMAL2_FLAG_4 (1 << 4)
#define NORMAL2_FLAG_7 (1 << 7)

#define CAM_FUNCDATA_NORM2(yOffset, eyeDist, eyeDistNext, unk_23, yawUpdateRateTarget, maxYawUpdate, fov, atLerpStepScale, interfaceField) \
    { yOffset, CAM_DATA_Y_OFFSET }, \
    { eyeDist, CAM_DATA_EYE_DIST }, \
    { eyeDistNext, CAM_DATA_EYE_DIST_NEXT }, \
    { unk_23, CAM_DATA_UNK_23 }, \
    { yawUpdateRateTarget, CAM_DATA_YAW_UPDATE_RATE_TARGET }, \
    { maxYawUpdate, CAM_DATA_MAX_YAW_UPDATE }, \
    { fov, CAM_DATA_FOV }, \
    { atLerpStepScale, CAM_DATA_AT_LERP_STEP_SCALE }, \
    { interfaceField, CAM_DATA_INTERFACE_FIELD }

typedef struct Normal3ReadOnlyData {
    /* 0x00 */ f32 yOffset;
    /* 0x04 */ f32 distMin;
    /* 0x08 */ f32 distMax;
    /* 0x0C */ f32 yawUpdateSpeed;
    /* 0x10 */ f32 unk_10;
    /* 0x14 */ f32 fovTarget;
    /* 0x18 */ f32 maxAtLERPScale;
    /* 0x1C */ s16 pitchTarget;
    /* 0x1E */ s16 interfaceField;
} Normal3ReadOnlyData; // size = 0x20

typedef struct Normal3ReadWriteData {
    /* 0x00 */ SwingAnimation swing;
    /* 0x1C */ f32 unk_1C;
    /* 0x20 */ f32 unk_20;
    /* 0x24 */ s16 curPitch;
    /* 0x26 */ s16 yawUpdAmt;
    /* 0x28 */ s16 yawTimer;
    /* 0x2A */ s16 distTimer;
} Normal3ReadWriteData; // size = 0x2C

typedef struct Normal3 {
    /* 0x00 */ Normal3ReadOnlyData roData;
    /* 0x20 */ Normal3ReadWriteData rwData;
} Normal3; // size = 0x4C

#define CAM_FUNCDATA_NORM3(yOffset, eyeDist, eyeDistNext, pitchTarget, yawUpdateRateTarget, xzUpdateRateTarget, fov, atLerpStepScale, interfaceField) \
    { yOffset, CAM_DATA_Y_OFFSET }, \
    { eyeDist, CAM_DATA_EYE_DIST }, \
    { eyeDistNext, CAM_DATA_EYE_DIST_NEXT }, \
    { pitchTarget, CAM_DATA_PITCH_TARGET }, \
    { yawUpdateRateTarget, CAM_DATA_YAW_UPDATE_RATE_TARGET }, \
    { xzUpdateRateTarget, CAM_DATA_XZ_UPDATE_RATE_TARGET }, \
    { fov, CAM_DATA_FOV }, \
    { atLerpStepScale, CAM_DATA_AT_LERP_STEP_SCALE }, \
    { interfaceField, CAM_DATA_INTERFACE_FIELD }

typedef struct Parallel1ReadOnlyData {
    /* 0x00 */ f32 yOffset;
    /* 0x04 */ f32 distTarget;
    /* 0x08 */ f32 unk_08;
    /* 0x0C */ f32 unk_0C;
    /* 0x10 */ f32 fovTarget;
    /* 0x14 */ f32 unk_14;
    /* 0x18 */ f32 unk_18;
    /* 0x1C */ f32 unk_1C;
    /* 0x20 */ s16 pitchTarget;
    /* 0x22 */ s16 yawTarget;
    /* 0x24 */ s16 interfaceField;
} Parallel1ReadOnlyData; // size = 0x28

typedef struct Parallel1ReadWriteData {
    /* 0x00 */ Vec3f unk_00;
    /* 0x0C */ f32 yTarget;
    /* 0x10 */ s16 unk_10;
    /* 0x12 */ s16 yawTarget;
    /* 0x14 */ s16 pitchTarget;
    /* 0x16 */ s16 unk_16;
    /* 0x18 */ s16 animTimer;
} Parallel1ReadWriteData; // size = 0x1C

typedef struct Parallel1 {
    /* 0x00 */ Parallel1ReadOnlyData roData;
    /* 0x28 */ Parallel1ReadWriteData rwData;
} Parallel1; // size = 0x44

#define PARALLEL1_FLAG_0 (1 << 0)
#define PARALLEL1_FLAG_1 (1 << 1)
#define PARALLEL1_FLAG_2 (1 << 2)
#define PARALLEL1_FLAG_3 (1 << 3)
#define PARALLEL1_FLAG_4 (1 << 4)
#define PARALLEL1_FLAG_5 (1 << 5)
#define PARALLEL1_FLAG_6 (1 << 6)
#define PARALLEL1_FLAG_7 (1 << 7)

#define CAM_FUNCDATA_PARA1(yOffset, eyeDist, pitchTarget, yawTarget, yawUpdateRateTarget, xzUpdateRateTarget, fov, atLerpStepScale, interfaceField, groundYOffset, groundAtLerpStepScale) \
    { yOffset, CAM_DATA_Y_OFFSET }, \
    { eyeDist, CAM_DATA_EYE_DIST }, \
    { pitchTarget, CAM_DATA_PITCH_TARGET }, \
    { yawTarget, CAM_DATA_YAW_TARGET }, \
    { yawUpdateRateTarget, CAM_DATA_YAW_UPDATE_RATE_TARGET }, \
    { xzUpdateRateTarget, CAM_DATA_XZ_UPDATE_RATE_TARGET }, \
    { fov, CAM_DATA_FOV }, \
    { atLerpStepScale, CAM_DATA_AT_LERP_STEP_SCALE }, \
    { interfaceField, CAM_DATA_INTERFACE_FIELD }, \
    { groundYOffset, CAM_DATA_GROUND_Y_OFFSET }, \
    { groundAtLerpStepScale, CAM_DATA_GROUND_AT_LERP_STEP_SCALE }

#define PARALLEL3_FLAG_0 (1 << 0)
#define PARALLEL3_FLAG_1 (1 << 1)

typedef struct Jump1ReadOnlyData {
    /* 0x00 */ f32 atYOffset;
    /* 0x04 */ f32 distMin;
    /* 0x08 */ f32 distMax;
    /* 0x0C */ f32 yawUpateRateTarget;
    /* 0x10 */ f32 maxYawUpdate;
    /* 0x14 */ f32 unk_14; // never used.
    /* 0x18 */ f32 atLERPScaleMax;
    /* 0x1C */ s16 interfaceField;
} Jump1ReadOnlyData; // size = 0x20

typedef struct Jump1ReadWriteData {
    /* 0x00 */ SwingAnimation swing;
    /* 0x1C */ f32 unk_1C;
    /* 0x20 */ f32 unk_20;
    /* 0x24 */ s16 unk_24;
    /* 0x26 */ s16 unk_26;
} Jump1ReadWriteData; // size = 0x28

typedef struct Jump1 {
    /* 0x00 */ Jump1ReadOnlyData roData;
    /* 0x20 */ Jump1ReadWriteData rwData;
} Jump1; // size = 0x48

#define JUMP1_FLAG_2 (1 << 2)
#define JUMP1_FLAG_4 (1 << 4)

#define CAM_FUNCDATA_JUMP1(yOffset, eyeDist, eyeDistNext, yawUpdateRateTarget, maxYawUpdate, fov, atLerpStepScale, interfaceField) \
    { yOffset, CAM_DATA_Y_OFFSET }, \
    { eyeDist, CAM_DATA_EYE_DIST }, \
    { eyeDistNext, CAM_DATA_EYE_DIST_NEXT }, \
    { yawUpdateRateTarget, CAM_DATA_YAW_UPDATE_RATE_TARGET }, \
    { maxYawUpdate, CAM_DATA_MAX_YAW_UPDATE }, \
    { fov, CAM_DATA_FOV }, \
    { atLerpStepScale, CAM_DATA_AT_LERP_STEP_SCALE }, \
    { interfaceField, CAM_DATA_INTERFACE_FIELD }

typedef struct Jump2ReadOnlyData {
    /* 0x00 */ f32 atYOffset;
    /* 0x04 */ f32 minDist;
    /* 0x08 */ f32 maxDist;
    /* 0x0C */ f32 minMaxDistFactor;
    /* 0x10 */ f32 yawUpdRateTarget;
    /* 0x14 */ f32 xzUpdRateTarget;
    /* 0x18 */ f32 fovTarget;
    /* 0x1C */ f32 atLERPStepScale;
    /* 0x20 */ s16 interfaceField;
} Jump2ReadOnlyData; // size = 0x24

typedef struct Jump2ReadWriteData {
    /* 0x0 */ f32 floorY;
    /* 0x4 */ s16 yawTarget;
    /* 0x6 */ s16 initYawDiff; // unused, set but not read.
    /* 0x8 */ s16 yawAdj;
    /* 0xA */ s16 onFloor; // unused, set but not read
    /* 0xC */ s16 animTimer;
} Jump2ReadWriteData; // size = 0x10

typedef struct Jump2 {
    /* 0x00 */ Jump2ReadOnlyData roData;
    /* 0x24 */ Jump2ReadWriteData rwData;
} Jump2; // size = 0x34

#define JUMP2_FLAG_1 (1 << 1)
#define JUMP2_FLAG_2 (1 << 2)

#define CAM_FUNCDATA_JUMP2(yOffset, eyeDist, eyeDistNext, minMaxDistFactor, yawUpdateRateTarget, xzUpdateRateTarget, fov, atLerpStepScale, interfaceField) \
    { yOffset, CAM_DATA_Y_OFFSET }, \
    { eyeDist, CAM_DATA_EYE_DIST }, \
    { eyeDistNext, CAM_DATA_EYE_DIST_NEXT }, \
    { minMaxDistFactor, CAM_DATA_MIN_MAX_DIST_FACTOR }, \
    { yawUpdateRateTarget, CAM_DATA_YAW_UPDATE_RATE_TARGET }, \
    { xzUpdateRateTarget, CAM_DATA_XZ_UPDATE_RATE_TARGET }, \
    { fov, CAM_DATA_FOV }, \
    { atLerpStepScale, CAM_DATA_AT_LERP_STEP_SCALE }, \
    { interfaceField, CAM_DATA_INTERFACE_FIELD }

typedef struct Jump3ReadOnlyData {
    /* 0x00 */ f32 yOffset;
    /* 0x04 */ f32 distMin;
    /* 0x08 */ f32 distMax;
    /* 0x0C */ f32 swingUpdateRate;
    /* 0x10 */ f32 unk_10;
    /* 0x14 */ f32 unk_14;
    /* 0x18 */ f32 fovTarget;
    /* 0x1C */ f32 unk_1C;
    /* 0x20 */ s16 pitchTarget;
    /* 0x22 */ s16 interfaceField;
} Jump3ReadOnlyData; // size = 0x24

typedef struct Jump3ReadWriteData {
    /* 0x00 */ SwingAnimation swing;
    /* 0x1C */ f32 unk_1C;
    /* 0x20 */ s16 animTimer;
    /* 0x22 */ s16 mode;
} Jump3ReadWriteData; // size = 0x24

typedef struct Jump3 {
    /* 0x00 */ Jump3ReadOnlyData roData;
    /* 0x24 */ Jump3ReadWriteData rwData;
} Jump3; // size = 0x48

#define JUMP3_FLAG_0 (1 << 0)
#define JUMP3_FLAG_2 (1 << 2)
#define JUMP3_FLAG_4 (1 << 4)

#define CAM_FUNCDATA_JUMP3(yOffset, eyeDist, eyeDistNext, pitchTarget, yawUpdateRateTarget, xzUpdateRateTarget, maxYawUpdate, fov, atLerpStepScale, interfaceField) \
    { yOffset, CAM_DATA_Y_OFFSET }, \
    { eyeDist, CAM_DATA_EYE_DIST }, \
    { eyeDistNext, CAM_DATA_EYE_DIST_NEXT }, \
    { pitchTarget, CAM_DATA_PITCH_TARGET }, \
    { yawUpdateRateTarget, CAM_DATA_YAW_UPDATE_RATE_TARGET }, \
    { xzUpdateRateTarget, CAM_DATA_XZ_UPDATE_RATE_TARGET }, \
    { maxYawUpdate, CAM_DATA_MAX_YAW_UPDATE }, \
    { fov, CAM_DATA_FOV }, \
    { atLerpStepScale, CAM_DATA_AT_LERP_STEP_SCALE }, \
    { interfaceField, CAM_DATA_INTERFACE_FIELD }

typedef struct Battle1ReadOnlyData {
    /* 0x00 */ f32 yOffset;
    /* 0x04 */ f32 distance;
    /* 0x08 */ f32 swingYawInitial;
    /* 0x0C */ f32 swingYawFinal;
    /* 0x10 */ f32 swingPitchInitial;
    /* 0x14 */ f32 swingPitchFinal;
    /* 0x18 */ f32 swingPitchAdj;
    /* 0x1C */ f32 fov;
    /* 0x20 */ f32 atLERPScaleOnGround;
    /* 0x24 */ f32 yOffsetOffGround;
    /* 0x28 */ f32 atLERPScaleOffGround;
    /* 0x2C */ s16 interfaceField;
} Battle1ReadOnlyData; // size = 0x30

typedef struct Battle1ReadWriteData {
    /* 0x00 */ f32 initialEyeToAtDist;
    /* 0x04 */ f32 roll;
    /* 0x08 */ f32 yPosOffset;
    /* 0x0C */ struct Actor* target;
    /* 0x10 */ f32 unk_10;
    /* 0x14 */ s16 unk_14; // unused
    /* 0x16 */ s16 initialEyeToAtYaw;
    /* 0x18 */ s16 initialEyeToAtPitch;
    /* 0x1A */ s16 animTimer;
    /* 0x1C */ s16 chargeTimer;
} Battle1ReadWriteData; // size = 0x20

typedef struct Battle1 {
    /* 0x00 */ Battle1ReadOnlyData roData;
    /* 0x30 */ Battle1ReadWriteData rwData;
} Battle1; // size = 0x50

#define BATTLE1_FLAG_0 (1 << 0)
#define BATTLE1_FLAG_1 (1 << 1)
#define BATTLE1_FLAG_7 (1 << 7)

#define CAM_FUNCDATA_BATT1(yOffset, eyeDist, swingYawInit, swingYawFinal, swingPitchInit, swingPitchFinal, swingPitchAdj, fov, atLerpStepScale, interfaceField, groundYOffset, groundAtLerpStepScale) \
    { yOffset, CAM_DATA_Y_OFFSET }, \
    { eyeDist, CAM_DATA_EYE_DIST }, \
    { swingYawInit, CAM_DATA_SWING_YAW_INIT }, \
    { swingYawFinal, CAM_DATA_SWING_YAW_FINAL }, \
    { swingPitchInit, CAM_DATA_SWING_PITCH_INIT }, \
    { swingPitchFinal, CAM_DATA_SWING_PITCH_FINAL }, \
    { swingPitchAdj, CAM_DATA_SWING_PITCH_ADJ }, \
    { fov, CAM_DATA_FOV }, \
    { atLerpStepScale, CAM_DATA_AT_LERP_STEP_SCALE }, \
    { interfaceField, CAM_DATA_INTERFACE_FIELD }, \
    { groundYOffset, CAM_DATA_GROUND_Y_OFFSET }, \
    { groundAtLerpStepScale, CAM_DATA_GROUND_AT_LERP_STEP_SCALE }

typedef struct Battle4ReadOnlyData {
    /* 0x00 */ f32 yOffset;
    /* 0x04 */ f32 rTarget;
    /* 0x08 */ s16 pitchTarget;
    /* 0x0C */ f32 lerpUpdateRate;
    /* 0x10 */ f32 fovTarget;
    /* 0x14 */ f32 atLERPTarget;
    /* 0x18 */ s16 interfaceField;
    /* 0x1A */ s16 unk_1A;
} Battle4ReadOnlyData; // size = 0x1C

typedef struct Battle4ReadWriteData {
    /* 0x0 */ s16 animTimer;
} Battle4ReadWriteData; // size = 0x4

typedef struct Battle4 {
    /* 0x00 */ Battle4ReadOnlyData roData;
    /* 0x1C */ Battle4ReadWriteData rwData;
} Battle4; // size = 0x20

#define CAM_FUNCDATA_BATT4(yOffset, eyeDist, pitchTarget, yawUpdateRateTarget, fov, atLerpStepScale, interfaceField) \
    { yOffset, CAM_DATA_Y_OFFSET }, \
    { eyeDist, CAM_DATA_EYE_DIST }, \
    { pitchTarget, CAM_DATA_PITCH_TARGET }, \
    { yawUpdateRateTarget, CAM_DATA_YAW_UPDATE_RATE_TARGET }, \
    { fov, CAM_DATA_FOV }, \
    { atLerpStepScale, CAM_DATA_AT_LERP_STEP_SCALE }, \
    { interfaceField, CAM_DATA_INTERFACE_FIELD }

typedef struct KeepOn1ReadOnlyData {
    /* 0x00 */ f32 unk_00;
    /* 0x04 */ f32 unk_04;
    /* 0x08 */ f32 unk_08;
    /* 0x0C */ f32 unk_0C;
    /* 0x10 */ f32 unk_10;
    /* 0x14 */ f32 unk_14;
    /* 0x18 */ f32 unk_18;
    /* 0x1C */ f32 unk_1C;
    /* 0x20 */ f32 unk_20;
    /* 0x24 */ f32 unk_24;
    /* 0x28 */ f32 unk_28;
    /* 0x2C */ f32 unk_2C;
    /* 0x30 */ s16 interfaceField;
} KeepOn1ReadOnlyData; // size = 0x34

typedef struct KeepOn1ReadWriteData {
    /* 0x00 */ f32 unk_00;
    /* 0x04 */ f32 unk_04;
    /* 0x08 */ f32 unk_08;
    /* 0x0C */ struct Actor* unk_0C;
    /* 0x10 */ s16 unk_10;
    /* 0x12 */ s16 unk_12;
    /* 0x14 */ s16 unk_14;
    /* 0x16 */ s16 unk_16;
} KeepOn1ReadWriteData; // size = 0x18

typedef struct KeepOn1 {
    /* 0x00 */ KeepOn1ReadOnlyData roData;
    /* 0x34 */ KeepOn1ReadWriteData rwData;
} KeepOn1; // size = 0x4C

#define KEEPON1_FLAG_0 (1 << 0)
#define KEEPON1_FLAG_1 (1 << 1)

#define CAM_FUNCDATA_KEEP1(yOffset, eyeDist, eyeDistNext, swingYawInit, swingYawFinal, swingPitchInit, swingPitchFinal, swingPitchAdj, fov, atLerpStepScale, interfaceField, groundYOffset, groundAtLerpStepScale) \
    { yOffset, CAM_DATA_Y_OFFSET }, \
    { eyeDist, CAM_DATA_EYE_DIST }, \
    { eyeDistNext, CAM_DATA_EYE_DIST_NEXT }, \
    { swingYawInit, CAM_DATA_SWING_YAW_INIT }, \
    { swingYawFinal, CAM_DATA_SWING_YAW_FINAL }, \
    { swingPitchInit, CAM_DATA_SWING_PITCH_INIT }, \
    { swingPitchFinal, CAM_DATA_SWING_PITCH_FINAL }, \
    { swingPitchAdj, CAM_DATA_SWING_PITCH_ADJ }, \
    { fov, CAM_DATA_FOV }, \
    { atLerpStepScale, CAM_DATA_AT_LERP_STEP_SCALE }, \
    { interfaceField, CAM_DATA_INTERFACE_FIELD }, \
    { groundYOffset, CAM_DATA_GROUND_Y_OFFSET }, \
    { groundAtLerpStepScale, CAM_DATA_GROUND_AT_LERP_STEP_SCALE }

typedef struct KeepOn3ReadOnlyData {
    /* 0x00 */ f32 yOffset;
    /* 0x04 */ f32 minDist;
    /* 0x08 */ f32 maxDist;
    /* 0x0C */ f32 swingYawInitial;
    /* 0x10 */ f32 swingYawFinal;
    /* 0x14 */ f32 swingPitchInitial;
    /* 0x18 */ f32 swingPitchFinal;
    /* 0x1C */ f32 swingPitchAdj;
    /* 0x20 */ f32 fovTarget;
    /* 0x24 */ f32 atLERPScaleMax;
    /* 0x28 */ s16 initTimer;
    /* 0x2A */ s16 interfaceField;
} KeepOn3ReadOnlyData; // size = 0x2C

typedef struct KeepOn3ReadWriteData {
    /* 0x00 */ f32 eyeToAtTargetR;
    /* 0x08 */ f32 eyeToAtTargetYaw;
    /* 0x04 */ f32 eyeToAtTargetPitch;
    /* 0x0C */ struct Actor* target;
    /* 0x10 */ Vec3f atTarget;
    /* 0x1C */ s16 animTimer;
} KeepOn3ReadWriteData; // size = 0x20

typedef struct KeepOn3 {
    /* 0x00 */ KeepOn3ReadOnlyData roData;
    /* 0x2C */ KeepOn3ReadWriteData rwData;
} KeepOn3; // size = 0x4C

#define KEEPON3_FLAG_4 (1 << 4)
#define KEEPON3_FLAG_5 (1 << 5)
#define KEEPON3_FLAG_7 (1 << 7)

#define CAM_FUNCDATA_KEEP3(yOffset, eyeDist, eyeDistNext, swingYawInit, swingYawFinal, swingPitchInit, swingPitchFinal, swingPitchAdj, fov, atLerpStepScale, yawUpdateRateTarget, interfaceField) \
    { yOffset, CAM_DATA_Y_OFFSET }, \
    { eyeDist, CAM_DATA_EYE_DIST }, \
    { eyeDistNext, CAM_DATA_EYE_DIST_NEXT }, \
    { swingYawInit, CAM_DATA_SWING_YAW_INIT }, \
    { swingYawFinal, CAM_DATA_SWING_YAW_FINAL }, \
    { swingPitchInit, CAM_DATA_SWING_PITCH_INIT }, \
    { swingPitchFinal, CAM_DATA_SWING_PITCH_FINAL }, \
    { swingPitchAdj, CAM_DATA_SWING_PITCH_ADJ }, \
    { fov, CAM_DATA_FOV }, \
    { atLerpStepScale, CAM_DATA_AT_LERP_STEP_SCALE }, \
    { yawUpdateRateTarget, CAM_DATA_YAW_UPDATE_RATE_TARGET }, \
    { interfaceField, CAM_DATA_INTERFACE_FIELD }

typedef struct KeepOn4ReadOnlyData {
    /* 0x00 */ f32 unk_00;
    /* 0x04 */ f32 unk_04;
    /* 0x08 */ f32 unk_08;
    /* 0x0C */ f32 unk_0C;
    /* 0x10 */ f32 unk_10;
    /* 0x14 */ f32 unk_14;
    /* 0x18 */ f32 unk_18;
    /* 0x1C */ s16 interfaceField;
    /* 0x1E */ s16 unk_1E;
} KeepOn4ReadOnlyData; // size = 0x20

typedef struct KeepOn4ReadWriteData {
    /* 0x00 */ f32 unk_00;
    /* 0x04 */ f32 unk_04;
    /* 0x08 */ f32 unk_08;
    /* 0x0C */ s16 unk_0C;
    /* 0x0E */ s16 unk_0E;
    /* 0x10 */ s16 unk_10;
    /* 0x12 */ s16 unk_12;
    /* 0x14 */ s16 unk_14;
} KeepOn4ReadWriteData; // size = 0x18

typedef struct KeepOn4 {
    /* 0x00 */ KeepOn4ReadOnlyData roData;
    /* 0x20 */ KeepOn4ReadWriteData rwData;
} KeepOn4; // size = 0x38

#define KEEPON4_FLAG_0 (1 << 0)
#define KEEPON4_FLAG_1 (1 << 1)
#define KEEPON4_FLAG_2 (1 << 2)
#define KEEPON4_FLAG_3 (1 << 3)
#define KEEPON4_FLAG_4 (1 << 4)
#define KEEPON4_FLAG_5 (1 << 5)
#define KEEPON4_FLAG_6 (1 << 6)
#define KEEPON4_FLAG_7 (1 << 7)

#define CAM_FUNCDATA_KEEP4(yOffset, eyeDist, pitchTarget, yawTarget, atOffsetZ, fov, interfaceField, yawUpdateRateTarget, unk_22) \
    { yOffset, CAM_DATA_Y_OFFSET }, \
    { eyeDist, CAM_DATA_EYE_DIST }, \
    { pitchTarget, CAM_DATA_PITCH_TARGET }, \
    { yawTarget, CAM_DATA_YAW_TARGET }, \
    { atOffsetZ, CAM_DATA_AT_OFFSET_Z }, \
    { fov, CAM_DATA_FOV }, \
    { interfaceField, CAM_DATA_INTERFACE_FIELD }, \
    { yawUpdateRateTarget, CAM_DATA_YAW_UPDATE_RATE_TARGET }, \
    { unk_22, CAM_DATA_UNK_22 }

typedef struct KeepOn0ReadOnlyData {
    /* 0x00 */ f32 fovScale;
    /* 0x04 */ f32 yawScale;
    /* 0x08 */ s16 timerInit;
    /* 0x0A */ s16 interfaceField;
} KeepOn0ReadOnlyData; // size = 0x0C

typedef struct KeepOn0ReadWriteData {
    /* 0x0 */ f32 fovTarget;
    /* 0x4 */ s16 animTimer;
} KeepOn0ReadWriteData; // size = 0x8

typedef struct KeepOn0 {
    /* 0x00 */ KeepOn0ReadOnlyData roData;
    /* 0x0C */ KeepOn0ReadWriteData rwData;
} KeepOn0; // size = 0x14

#define CAM_FUNCDATA_KEEP0(fovScale, yawScale, yawUpdateRateTarget, interfaceField) \
    { fovScale, CAM_DATA_FOV_SCALE }, \
    { yawScale, CAM_DATA_YAW_SCALE }, \
    { yawUpdateRateTarget, CAM_DATA_YAW_UPDATE_RATE_TARGET }, \
    { interfaceField, CAM_DATA_INTERFACE_FIELD }

typedef struct Fixed1ReadOnlyData {
    /* 0x00 */ f32 unk_00; // seems to be unused?
    /* 0x04 */ f32 lerpStep;
    /* 0x08 */ f32 fov;
    /* 0x0C */ s16 interfaceField;
} Fixed1ReadOnlyData; // size = 0x10

typedef struct Fixed1ReadWriteData {
    /* 0x00 */ PosRot eyePosRotTarget;
    /* 0x14 */ s16 fov;
} Fixed1ReadWriteData; // size = 0x18

typedef struct Fixed1 {
    /* 0x00 */ Fixed1ReadOnlyData roData;
    /* 0x10 */ Fixed1ReadWriteData rwData;
} Fixed1; // size = 0x28

#define CAM_FUNCDATA_FIXD1(yOffset, yawUpdateRateTarget, fov, interfaceField) \
    { yOffset, CAM_DATA_Y_OFFSET }, \
    { yawUpdateRateTarget, CAM_DATA_YAW_UPDATE_RATE_TARGET }, \
    { fov, CAM_DATA_FOV }, \
    { interfaceField, CAM_DATA_INTERFACE_FIELD }

typedef struct Fixed2ReadOnlyData {
    /* 0x00 */ f32 yOffset;
    /* 0x04 */ f32 eyeStepScale;
    /* 0x08 */ f32 posStepScale;
    /* 0x0C */ f32 fov;
    /* 0x10 */ s16 interfaceField;
} Fixed2ReadOnlyData; // size = 0x14

typedef struct Fixed2ReadWriteData {
    /* 0x0 */ Vec3f eye;
    /* 0xC */ s16 fov;
} Fixed2ReadWriteData; // size = 0x10

typedef struct Fixed2 {
    /* 0x00 */ Fixed2ReadOnlyData roData;
    /* 0x14 */ Fixed2ReadWriteData rwData;
} Fixed2; // size = 0x24


#define FIXED2_FLAG_0 (1 << 0)

#define CAM_FUNCDATA_FIXD2(yOffset, yawUpdateRateTarget, xzUpdateRateTarget, fov, interfaceField) \
    { yOffset, CAM_DATA_Y_OFFSET }, \
    { yawUpdateRateTarget, CAM_DATA_YAW_UPDATE_RATE_TARGET }, \
    { xzUpdateRateTarget, CAM_DATA_XZ_UPDATE_RATE_TARGET }, \
    { fov, CAM_DATA_FOV }, \
    { interfaceField, CAM_DATA_INTERFACE_FIELD }

typedef struct Fixed3ReadOnlyData {
    /* 0x0 */ s16 interfaceField;
} Fixed3ReadOnlyData; // size = 0x4

typedef struct Fixed3ReadWriteData {
    /* 0x0 */ Vec3s rot;
    /* 0x6 */ s16 fov;
    /* 0x8 */ s16 updDirTimer;
    /* 0xA */ s16 roomImageOverrideBgCamIndex;
} Fixed3ReadWriteData; // size = 0xC

typedef struct Fixed3 {
    /* 0x0 */ Fixed3ReadOnlyData roData;
    /* 0x4 */ Fixed3ReadWriteData rwData;
} Fixed3; // size = 0x10

typedef struct Fixed4ReadOnlyData {
    /* 0x00 */ f32 yOffset;
    /* 0x04 */ f32 speedToEyePos;
    /* 0x08 */ f32 followSpeed;
    /* 0x0C */ f32 fov;
    /* 0x10 */ s16 interfaceField;
} Fixed4ReadOnlyData; // size = 0x14

typedef struct Fixed4ReadWriteData {
    /* 0x0 */ Vec3f eyeTarget;
    /* 0xC */ f32 followSpeed;
} Fixed4ReadWriteData; // size = 0x10

typedef struct Fixed4 {
    /* 0x00 */ Fixed4ReadOnlyData roData;
    /* 0x14 */ Fixed4ReadWriteData rwData;
} Fixed4; // size = 0x24

#define FIXED4_FLAG_2 (1 << 2)

#define CAM_FUNCDATA_FIXD4(yOffset, yawUpdateRateTarget, xzUpdateRateTarget, fov, interfaceField) \
    { yOffset, CAM_DATA_Y_OFFSET }, \
    { yawUpdateRateTarget, CAM_DATA_YAW_UPDATE_RATE_TARGET }, \
    { xzUpdateRateTarget, CAM_DATA_XZ_UPDATE_RATE_TARGET }, \
    { fov, CAM_DATA_FOV }, \
    { interfaceField, CAM_DATA_INTERFACE_FIELD }

typedef struct Subj3ReadOnlyData {
    /* 0x00 */ f32 eyeNextYOffset;
    /* 0x04 */ f32 eyeDist;
    /* 0x08 */ f32 eyeNextDist;
    /* 0x0C */ f32 unk_0C; // unused
    /* 0x10 */ Vec3f atOffset;
    /* 0x1C */ f32 fovTarget;
    /* 0x20 */ s16 interfaceField;
} Subj3ReadOnlyData; // size = 0x24

typedef struct Subj3ReadWriteData {
    /* 0x0 */ f32 r;
    /* 0x4 */ s16 yaw;
    /* 0x6 */ s16 pitch;
    /* 0x8 */ s16 animTimer;
} Subj3ReadWriteData; // size = 0xC

typedef struct Subj3 {
    /* 0x00 */ Subj3ReadOnlyData roData;
    /* 0x24 */ Subj3ReadWriteData rwData;
} Subj3; // size = 0x30

#define CAM_FUNCDATA_SUBJ3(yOffset, eyeDist, eyeDistNext, yawUpdateRateTarget, atOffsetX, atOffsetY, atOffsetZ, fov, interfaceField) \
    { yOffset, CAM_DATA_Y_OFFSET }, \
    { eyeDist, CAM_DATA_EYE_DIST }, \
    { eyeDistNext, CAM_DATA_EYE_DIST_NEXT }, \
    { yawUpdateRateTarget, CAM_DATA_YAW_UPDATE_RATE_TARGET }, \
    { atOffsetX, CAM_DATA_AT_OFFSET_X }, \
    { atOffsetY, CAM_DATA_AT_OFFSET_Y }, \
    { atOffsetZ, CAM_DATA_AT_OFFSET_Z }, \
    { fov, CAM_DATA_FOV }, \
    { interfaceField, CAM_DATA_INTERFACE_FIELD }

typedef struct Subj4ReadOnlyData {
    /* 0x0 */ s16 interfaceField;
} Subj4ReadOnlyData; // size = 0x4

typedef struct Subj4ReadWriteData {
    /* 0x00 */ InfiniteLine crawlspaceLine;
    /* 0x18 */ Vec3f unk_18; // unused
    /* 0x24 */ f32 xzSpeed;
    /* 0x28 */ f32 eyeLerp;
    /* 0x2C */ s16 eyeLerpPhase;
    /* 0x2E */ s16 isSfxOff;
    /* 0x30 */ s16 forwardYaw; // yaw to the forwards crawling direction
    /* 0x32 */ s16 zoomTimer;
} Subj4ReadWriteData; // size = 0x34

typedef struct Subj4 {
    /* 0x00 */ Subj4ReadOnlyData roData;
    /* 0x04 */ Subj4ReadWriteData rwData;
} Subj4; // size = 0x38

#define CAM_FUNCDATA_SUBJ4(yOffset, eyeDist, eyeDistNext, yawUpdateRateTarget, fov, interfaceField) \
    { yOffset, CAM_DATA_Y_OFFSET }, \
    { eyeDist, CAM_DATA_EYE_DIST }, \
    { eyeDistNext, CAM_DATA_EYE_DIST_NEXT }, \
    { yawUpdateRateTarget, CAM_DATA_YAW_UPDATE_RATE_TARGET }, \
    { fov, CAM_DATA_FOV }, \
    { interfaceField, CAM_DATA_INTERFACE_FIELD }

typedef struct Data4ReadOnlyData {
    /* 0x0 */ f32 yOffset;
    /* 0x4 */ f32 fov;
    /* 0x8 */ s16 interfaceField;
} Data4ReadOnlyData; // size = 0xC

typedef struct Data4ReadWriteData {
    /* 0x00 */ PosRot eyePosRot;
    /* 0x14 */ char unk_14[0x8];
    /* 0x1C */ s16 fov;
    /* 0x1E */ s16 flags;
} Data4ReadWriteData; // size = 0x20

typedef struct Data4 {
    /* 0x00 */ Data4ReadOnlyData roData;
    /* 0x0C */ Data4ReadWriteData rwData;
} Data4; // size = 0x2C

#define CAM_FUNCDATA_DATA4(yOffset, fov, interfaceField) \
    { yOffset, CAM_DATA_Y_OFFSET }, \
    { fov, CAM_DATA_FOV }, \
    { interfaceField, CAM_DATA_INTERFACE_FIELD }

typedef struct Unique1ReadOnlyData {
    /* 0x00 */ f32 yOffset;
    /* 0x04 */ f32 distMin;
    /* 0x08 */ f32 distMax;
    /* 0x0C */ char unk_0C[4]; // unused
    /* 0x10 */ f32 fovTarget;
    /* 0x14 */ f32 atLERPScaleMax;
    /* 0x18 */ s16 pitchTarget;
    /* 0x1A */ s16 interfaceField;
} Unique1ReadOnlyData; // size = 0x1C

typedef struct Unique1ReadWriteData {
    /* 0x0 */ f32 unk_00; // unused
    /* 0x4 */ s16 yawTarget;
    /* 0x6 */ s16 yawTargetAdj;
    /* 0x8 */ s16 timer;
} Unique1ReadWriteData; // size = 0xC

typedef struct Unique1 {
    /* 0x00 */ Unique1ReadOnlyData roData;
    /* 0x1C */ Unique1ReadWriteData rwData;
} Unique1; // size = 0x28

#define CAM_FUNCDATA_UNIQ1(yOffset, eyeDist, eyeDistNext, pitchTarget, fov, atLerpStepScale, interfaceField) \
    { yOffset, CAM_DATA_Y_OFFSET }, \
    { eyeDist, CAM_DATA_EYE_DIST }, \
    { eyeDistNext, CAM_DATA_EYE_DIST_NEXT }, \
    { pitchTarget, CAM_DATA_PITCH_TARGET }, \
    { fov, CAM_DATA_FOV }, \
    { atLerpStepScale, CAM_DATA_AT_LERP_STEP_SCALE }, \
    { interfaceField, CAM_DATA_INTERFACE_FIELD }

typedef struct Unique2ReadOnlyData {
    /* 0x00 */ f32 yOffset;
    /* 0x04 */ f32 distTarget;
    /* 0x08 */ f32 fovTarget;
    /* 0x0C */ s16 interfaceField;
} Unique2ReadOnlyData; // size = 0x10

typedef struct Unique2ReadWriteData {
    /* 0x0 */ f32 unk_00;
    /* 0x4 */ s16 unk_04;
} Unique2ReadWriteData; // size = 0x8

typedef struct Unique2 {
    /* 0x00 */ Unique2ReadOnlyData roData;
    /* 0x10 */ Unique2ReadWriteData rwData;
} Unique2; // size = 0x18

#define UNIQUE2_FLAG_0 (1 << 0)
#define UNIQUE2_FLAG_1 (1 << 1)
#define UNIQUE2_FLAG_4 (1 << 4)

#define CAM_FUNCDATA_UNIQ2(yOffset, eyeDist, fov, interfaceField) \
    { yOffset, CAM_DATA_Y_OFFSET }, \
    { eyeDist, CAM_DATA_EYE_DIST }, \
    { fov, CAM_DATA_FOV }, \
    { interfaceField, CAM_DATA_INTERFACE_FIELD }

typedef struct DoorParams {
    /* 0x0 */ struct Actor* doorActor;
    /* 0x4 */ s16 bgCamIndex;
    /* 0x6 */ s16 timer1;
    /* 0x8 */ s16 timer2;
    /* 0xA */ s16 timer3;
} DoorParams; // size = 0xC

typedef struct Unique3ReadOnlyData {
    /* 0x0 */ f32 yOffset;
    /* 0x4 */ f32 fov;
    /* 0x8 */ s16 interfaceField;
} Unique3ReadOnlyData; // size = 0xC

typedef struct Unique3ReadWriteData {
    /* 0x0 */ f32 initialFov;
    /* 0x4 */ f32 initialDist;
} Unique3ReadWriteData; // size = 0x8

typedef struct Unique3 {
    /* 0x00 */ Unique3ReadOnlyData roData;
    /* 0x0C */ Unique3ReadWriteData rwData;
} Unique3; // size = 0x14

#define UNIQUE3_FLAG_1 (1 << 1)
#define UNIQUE3_FLAG_2 (1 << 2)

#define CAM_FUNCDATA_UNIQ3(yOffset, fov, interfaceField) \
    { yOffset, CAM_DATA_Y_OFFSET }, \
    { fov, CAM_DATA_FOV }, \
    { interfaceField, CAM_DATA_INTERFACE_FIELD }

typedef struct Unique0ReadOnlyData {
    /* 0x0 */ s16 interfaceField;
} Unique0ReadOnlyData; // size = 0x4

typedef struct Unique0ReadWriteData {
    /* 0x00 */ Vec3f initialPos;
    /* 0x0C */ s16 animTimer;
    /* 0x10 */ InfiniteLine eyeAndDirection;
} Unique0ReadWriteData; // size = 0x28

typedef struct Unique0 {
    /* 0x00 */ Unique0ReadOnlyData roData;
    /* 0x04 */ Unique0ReadWriteData rwData;
} Unique0; // size = 0x2C

#define UNIQUE0_FLAG_0 (1 << 0)

typedef struct Unique6ReadOnlyData {
    /* 0x0 */ s16 interfaceField;
} Unique6ReadOnlyData; // size = 0x4

typedef struct Unique6 {
    /* 0x0 */ Unique6ReadOnlyData roData;
} Unique6; // size = 0x4

#define UNIQUE6_FLAG_0 (1 << 0)

typedef struct Unique7ReadOnlyData {
    /* 0x0 */ f32 fov;
    /* 0x4 */ s16 interfaceField;
    /* 0x6 */ s16 align;
} Unique7ReadOnlyData; // size = 0x8

typedef struct Unique7ReadWriteData {
    /* 0x0 */ Vec3s unk_00;
} Unique7ReadWriteData; // size = 0x8

typedef struct Unique7 {
    /* 0x00 */ Unique7ReadOnlyData roData;
    /* 0x08 */ Unique7ReadWriteData rwData;
} Unique7; // size = 0x10

#define CAM_FUNCDATA_UNIQ7(fov, interfaceField) \
    { fov, CAM_DATA_FOV }, \
    { interfaceField, CAM_DATA_INTERFACE_FIELD }

typedef enum OnePointCsAction {
    /*  0x1 */ ONEPOINT_CS_ACTION_ID_1 = 1,
    /*  0x2 */ ONEPOINT_CS_ACTION_ID_2,
    /*  0x3 */ ONEPOINT_CS_ACTION_ID_3,
    /*  0x4 */ ONEPOINT_CS_ACTION_ID_4,
    /*  0x9 */ ONEPOINT_CS_ACTION_ID_9 = 9,
    /*  0xA */ ONEPOINT_CS_ACTION_ID_10,
    /*  0xB */ ONEPOINT_CS_ACTION_ID_11,
    /*  0xC */ ONEPOINT_CS_ACTION_ID_12,
    /*  0xD */ ONEPOINT_CS_ACTION_ID_13,
    /*  0xF */ ONEPOINT_CS_ACTION_ID_15 = 15,
    /* 0x10 */ ONEPOINT_CS_ACTION_ID_16,
    /* 0x11 */ ONEPOINT_CS_ACTION_ID_17,
    /* 0x12 */ ONEPOINT_CS_ACTION_ID_18,
    /* 0x13 */ ONEPOINT_CS_ACTION_ID_19,
    /* 0x15 */ ONEPOINT_CS_ACTION_ID_21 = 21,
    /* 0x18 */ ONEPOINT_CS_ACTION_ID_24 = 24
} OnePointCsAction;

#define ONEPOINT_CS_ACTION_FLAG_40 0x40
#define ONEPOINT_CS_ACTION_FLAG_BGCHECK 0x80

#define ONEPOINT_CS_ACTION(action, isBit40, checkBg) \
    (((action) & 0x1F) | ((isBit40) ? ONEPOINT_CS_ACTION_FLAG_40 : 0) | ((checkBg) ? ONEPOINT_CS_ACTION_FLAG_BGCHECK : 0))

#define ONEPOINT_CS_GET_ACTION(onePointCsFull) ((onePointCsFull)->actionFlags & 0x1F)

#define ONEPOINT_CS_INIT_FIELD_NONE 0xFF
#define ONEPOINT_CS_INIT_FIELD_ACTORCAT(actorCat) (0x80 | ((actorCat) & 0x0F))
#define ONEPOINT_CS_INIT_FIELD_HUD_VISIBILITY(camHudVisibility) (0xC0 | ((camHudVisibility) & 0x0F))
#define ONEPOINT_CS_INIT_FIELD_PLAYER_CS(csAction) ((csAction) & 0x7F)

#define ONEPOINT_CS_INIT_FIELD_IS_TYPE_ACTORCAT(field) ((field & 0xF0) == 0x80)
#define ONEPOINT_CS_INIT_FIELD_IS_TYPE_HUD_VISIBILITY(field) ((field & 0xF0) == 0xC0)
#define ONEPOINT_CS_INIT_FIELD_IS_TYPE_PLAYER_CS(field) !(field & 0x80)

/** viewFlags
 * & 0x00FF = atFlags
 * & 0xFF00 = eyeFlags
 * 0x1: Direct Copy of atTargetInit
 *      if viewFlags & 0x6060: use head for focus point
 * 0x2: Add atTargetInit to view's lookAt
 *      if viewFlags & 0x6060: use world for focus point
 * 0x3: Add atTargetInit to camera's at
 * 0x4: Don't update targets?
 * 0x8: flag to use atTagetInit as f32 pitch, yaw, r
 * 0x10: ? unused
 * 0x20: focus on player
*/
typedef struct OnePointCsFull {
    /* 0x00 */ u8 actionFlags;
    /* 0x01 */ u8 initField;
    /* 0x02 */ s16 viewFlags;
    /* 0x04 */ s16 timerInit;
    /* 0x06 */ s16 rollTargetInit;
    /* 0x08 */ f32 fovTargetInit;
    /* 0x0C */ f32 lerpStepScale;
    /* 0x10 */ Vec3f atTargetInit;
    /* 0x1C */ Vec3f eyeTargetInit;
} OnePointCsFull; // size = 0x28

typedef struct OnePointCsInfo {
    /* 0x0 */ s32 keyFrameCount;
    /* 0x4 */ OnePointCsFull* keyFrames;
} OnePointCsInfo; // size = 0x8

typedef struct Unique9ReadOnlyData {
    /* 0x0 */ s16 interfaceField;
} Unique9ReadOnlyData; // size = 0x40

typedef struct Unique9ReadWriteData {
    /* 0x00 */ OnePointCsFull* curKeyFrame;
    /* 0x04 */ Vec3f atTarget;
    /* 0x10 */ Vec3f eyeTarget;
    /* 0x1C */ Vec3f playerPos;
    /* 0x28 */ f32 fovTarget;
    /* 0x2C */ VecGeo atEyeOffsetTarget;
    /* 0x34 */ s16 rollTarget;
    /* 0x36 */ s16 curKeyFrameIdx;
    /* 0x38 */ s16 unk_38;
    /* 0x3A */ s16 isNewKeyFrame;
    /* 0x3C */ s16 keyFrameTimer;
} Unique9ReadWriteData; // size = 0x40

typedef struct Unique9 {
    /* 0x00 */ OnePointCsInfo csInfo;
    /* 0x08 */ Unique9ReadOnlyData roData;
    /* 0x0C */ Unique9ReadWriteData rwData;
} Unique9; // size = 0x4C

typedef struct Demo1ReadOnlyData {
    /* 0x0 */ s16 interfaceField;
} Demo1ReadOnlyData; // size = 0x4

typedef struct Demo1ReadWriteData {
    /* 0x0 */ f32 curFrame;
    /* 0x4 */ s16 keyframe;
} Demo1ReadWriteData; // size = 0x14

typedef struct Demo1 {
    /* 0x00 */ Demo1ReadOnlyData roData;
    /* 0x04 */ Demo1ReadWriteData rwData;
} Demo1; // size = 0x18

typedef struct Demo3ReadOnlyData {
    /* 0x0 */ f32 fov;
    /* 0x4 */ f32 unk_04; // unused
    /* 0x8 */ s16 interfaceField;
} Demo3ReadOnlyData; // size = 0xC

typedef struct Demo3ReadWriteData {
    /* 0x00 */ Vec3f initialAt;
    /* 0x0C */ f32 unk_0C;
    /* 0x10 */ s16 animFrame;
    /* 0x12 */ s16 yawDir;
} Demo3ReadWriteData; // size = 0x14

typedef struct Demo3 {
    /* 0x00 */ Demo3ReadOnlyData roData;
    /* 0x0C */ Demo3ReadWriteData rwData;
} Demo3; // size = 0x20

#define CAM_FUNCDATA_DEMO3(fov, atLerpStepScale, interfaceField) \
    { fov, CAM_DATA_FOV }, \
    { atLerpStepScale, CAM_DATA_AT_LERP_STEP_SCALE }, \
    { interfaceField, CAM_DATA_INTERFACE_FIELD }

typedef struct Demo6ReadOnlyData {
    /* 0x0 */ s16 interfaceField;
    /* 0x2 */ s16 unk_02;
} Demo6ReadOnlyData; // size = 0x4

typedef struct Demo6ReadWriteData {
    /* 0x0 */ s16 animTimer;
    /* 0x4 */ Vec3f atTarget;
} Demo6ReadWriteData; // size = 0x10

typedef struct Demo6 {
    /* 0x00 */ Demo6ReadOnlyData roData;
    /* 0x04 */ Demo6ReadWriteData rwData;
} Demo6; // size = 0x14

typedef struct OnePointCamData {
    /* 0x0 */ CutsceneCameraPoint* atPoints;
    /* 0x4 */ CutsceneCameraPoint* eyePoints;
    /* 0x8 */ s16 actionParameters;
    /* 0xA */ s16 initTimer;
} OnePointCamData; // size = 0xC

typedef struct Demo9ReadOnlyData {
    /* 0x0 */ s16 interfaceField;
} Demo9ReadOnlyData; // size = 0x4

typedef struct Demo9ReadWriteData {
    /* 0x0 */ f32 curFrame;
    /* 0x4 */ s16 keyframe;
    /* 0x6 */ s16 doLERPAt;
    /* 0x8 */ s16 finishAction;
    /* 0xA */ s16 animTimer;
} Demo9ReadWriteData; // size = 0xC

typedef struct Demo9 {
    /* 0x00 */ OnePointCamData onePointCamData;
    /* 0x0C */ Demo9ReadOnlyData roData;
    /* 0x10 */ Demo9ReadWriteData rwData;
} Demo9; // size = 0x1C

#define DEMO9_FLAG_1 (1 << 1)
#define DEMO9_FLAG_4 (1 << 4)

typedef struct Special0ReadOnlyData {
    /* 0x0 */ f32 lerpAtScale;
    /* 0x4 */ s16 interfaceField;
} Special0ReadOnlyData; // size = 0x8

typedef struct Special0 {
    /* 0x0 */ Special0ReadOnlyData roData;
} Special0; // size = 0x8

#define CAM_FUNCDATA_SPEC0(yawUpdateRateTarget, interfaceField) \
    { yawUpdateRateTarget, CAM_DATA_YAW_UPDATE_RATE_TARGET }, \
    { interfaceField, CAM_DATA_INTERFACE_FIELD }

typedef struct Special4ReadWriteData {
    /* 0x0 */ s16 initialTimer;
} Special4ReadWriteData; // size = 0x4

typedef struct Special4 {
    /* 0x0 */ Special4ReadWriteData rwData;
} Special4; // size = 0x4

typedef struct Special5ReadOnlyData {
    /* 0x00 */ f32 yOffset;
    /* 0x04 */ f32 eyeDist;
    /* 0x08 */ f32 minDistForRot;
    /* 0x0C */ f32 fovTarget;
    /* 0x10 */ f32 atMaxLERPScale;
    /* 0x14 */ s16 timerInit;
    /* 0x16 */ s16 pitch;
    /* 0x18 */ s16 interfaceField;
    /* 0x1A */ s16 unk_1A;
} Special5ReadOnlyData; // size = 0x1C

typedef struct Special5ReadWriteData {
    /* 0x0 */ s16 animTimer;
} Special5ReadWriteData; // size = 0x4

typedef struct Special5 {
    /* 0x00 */ Special5ReadOnlyData roData;
    /* 0x1C */ Special5ReadWriteData rwData;
} Special5; // size = 0x20

#define CAM_FUNCDATA_SPEC5(yOffset, eyeDist, eyeDistNext, unk_22, pitchTarget, fov, atLerpStepScale, interfaceField) \
    { yOffset, CAM_DATA_Y_OFFSET }, \
    { eyeDist, CAM_DATA_EYE_DIST }, \
    { eyeDistNext, CAM_DATA_EYE_DIST_NEXT }, \
    { unk_22, CAM_DATA_UNK_22 }, \
    { pitchTarget, CAM_DATA_PITCH_TARGET }, \
    { fov, CAM_DATA_FOV }, \
    { atLerpStepScale, CAM_DATA_AT_LERP_STEP_SCALE }, \
    { interfaceField, CAM_DATA_INTERFACE_FIELD }

// Uses incorrect CAM_DATA values
#define CAM_FUNCDATA_SPEC5_ALT(yOffset, eyeDist, eyeDistNext, pitchTarget, fov, atLerpStepScale, unk_22, interfaceField) \
    { yOffset, CAM_DATA_Y_OFFSET }, \
    { eyeDist, CAM_DATA_EYE_DIST }, \
    { eyeDistNext, CAM_DATA_EYE_DIST_NEXT }, \
    { pitchTarget, CAM_DATA_PITCH_TARGET }, \
    { fov, CAM_DATA_FOV }, \
    { atLerpStepScale, CAM_DATA_AT_LERP_STEP_SCALE }, \
    { unk_22, CAM_DATA_UNK_22 }, \
    { interfaceField, CAM_DATA_INTERFACE_FIELD }

typedef struct Special7ReadWriteData {
    /* 0x0 */ s16 index; // See `CamElevatorPlatform`
} Special7ReadWriteData; // size = 0x4

typedef struct Special7 {
    /* 0x0 */ Special7ReadWriteData rwData;
} Special7; // size = 0x4

typedef struct Special6ReadOnlyData {
    /* 0x0 */ s16 interfaceField;
} Special6ReadOnlyData; // size = 0x4

typedef struct Special6ReadWriteData {
    /* 0x0 */ f32 initialPlayerY;
    /* 0x4 */ s16 animTimer;
} Special6ReadWriteData; // size = 0x8

typedef struct Special6 {
    /* 0x0 */ Special6ReadOnlyData roData;
    /* 0x4 */ Special6ReadWriteData rwData;
} Special6; // size = 0xC

typedef struct Special9ReadOnlyData {
    /* 0x0 */ f32 yOffset;
    /* 0x4 */ f32 unk_04;
    /* 0x8 */ s16 interfaceField;
    /* 0xA */ s16 unk_0A;
} Special9ReadOnlyData; // size = 0xC

typedef struct Special9ReadWriteData {
    /* 0x0 */ s16 targetYaw;
} Special9ReadWriteData; // size = 0x4

typedef struct Special9 {
    /* 0x00 */ Special9ReadOnlyData roData;
    /* 0x0C */ Special9ReadWriteData rwData;
} Special9; // size = 0x10

#define SPECIAL9_FLAG_0 (1 << 0)
#define SPECIAL9_FLAG_1 (1 << 1)
#define SPECIAL9_FLAG_3 (1 << 3)

#define CAM_FUNCDATA_SPEC9(yOffset, fov, interfaceField) \
    { yOffset, CAM_DATA_Y_OFFSET }, \
    { fov, CAM_DATA_FOV }, \
    { interfaceField, CAM_DATA_INTERFACE_FIELD }

typedef union CamParamData {
    Normal1 norm1;
    Normal2 norm2;
    Normal3 norm3;
    Parallel1 para1;
    Jump1 jump1;
    Jump2 jump2;
    Jump3 jump3;
    Battle1 batt1;
    Battle4 batt4;
    KeepOn0 keep0;
    KeepOn1 keep1;
    KeepOn3 keep3;
    KeepOn4 keep4;
    Fixed1 fixd1;
    Fixed2 fixd2;
    Fixed3 fixd3;
    Fixed4 fixd4;
    Subj3 subj3;
    Subj4 subj4;
    Data4 data4;
    Unique1 uniq1;
    Unique2 uniq2;
    Unique6 uniq6;
    Unique7 uniq7;
    Unique9 uniq9;
    Demo1 demo1;
    Demo3 demo3;
    Demo6 demo6;
    Demo9 demo9;
    Special0 spec0;
    Special4 spec4;
    Special5 spec5;
    Special6 spec6;
    Special7 spec7;
    struct {
        /* 0x0 */ DoorParams doorParams;
        /* 0xC */ union {
            Unique0 uniq0;
            Unique3 uniq3;
            Special9 spec9;
        };
    };
} CamParamData; // size = 0x50

typedef struct CamColChk {
    /* 0x00 */ Vec3f pos;
    /* 0x0C */ Vec3f norm;
    /* 0x18 */ struct CollisionPoly* poly;
    /* 0x1C */ VecGeo geoNorm;
    /* 0x24 */ s32 bgId;
} CamColChk; // size = 0x28

typedef struct Camera {
    /* 0x000 */ CamParamData paramData;
    /* 0x050 */ Vec3f at;
    /* 0x05C */ Vec3f eye;
    /* 0x068 */ Vec3f up;
    /* 0x074 */ Vec3f eyeNext;
    /* 0x080 */ Vec3f quakeOffset;
    /* 0x08C */ struct PlayState* play;
    /* 0x090 */ struct Player* player;
    /* 0x094 */ PosRot playerPosRot;
    /* 0x0A8 */ struct Actor* target;
    /* 0x0AC */ PosRot targetPosRot;
    /* 0x0C0 */ f32 rUpdateRateInv;
    /* 0x0C4 */ f32 pitchUpdateRateInv;
    /* 0x0C8 */ f32 yawUpdateRateInv;
    /* 0x0CC */ f32 xzOffsetUpdateRate;
    /* 0x0D0 */ f32 yOffsetUpdateRate;
    /* 0x0D4 */ f32 fovUpdateRate;
    /* 0x0D8 */ f32 xzSpeed;
    /* 0x0DC */ f32 dist;
    /* 0x0E0 */ f32 speedRatio;
    /* 0x0E4 */ Vec3f playerToAtOffset;
    /* 0x0F0 */ Vec3f playerPosDelta;
    /* 0x0FC */ f32 fov;
    /* 0x100 */ f32 atLERPStepScale;
    /* 0x104 */ f32 playerGroundY;
    /* 0x108 */ Vec3f floorNorm;
    /* 0x114 */ f32 waterYPos;
    /* 0x118 */ s32 bgCamIndexBeforeUnderwater;
    /* 0x11C */ s32 waterCamSetting;
    /* 0x120 */ s32 waterQuakeIndex;
    /* 0x124 */ void* data0;
    /* 0x128 */ void* data1;
    /* 0x12C */ s16 data2;
    /* 0x12E */ s16 data3;
    /* 0x130 */ s16 uid;
    /* 0x132 */ char unk_132[2];
    /* 0x134 */ Vec3s inputDir;
    /* 0x13A */ Vec3s camDir;
    /* 0x140 */ s16 status;
    /* 0x142 */ s16 setting;
    /* 0x144 */ s16 mode;
    /* 0x146 */ s16 bgId; // bgId the camera is currently interacting with
    /* 0x148 */ s16 bgCamIndex;
    /* 0x14A */ s16 behaviorFlags; // includes flags on settings, modes, bgCam. All related to camera update behaviour
    /* 0x14C */ s16 stateFlags;
    /* 0x14E */ s16 childCamId;
    /* 0x150 */ s16 waterDistortionTimer;
    /* 0x152 */ s16 distortionFlags;
    /* 0x154 */ s16 prevSetting;
    /* 0x156 */ s16 nextBgCamIndex;
    /* 0x158 */ s16 nextBgId;
    /* 0x15A */ s16 roll;
    /* 0x15C */ s16 viewFlags; // For setting params: at, eye, up, target, targetPos, fov, roll
    /* 0x15E */ s16 animState;
    /* 0x160 */ s16 timer;
    /* 0x162 */ s16 parentCamId;
    /* 0x164 */ s16 camId;
    /* 0x166 */ s16 prevBgCamIndex;
    /* 0x168 */ s16 csId;
    /* 0x16A */ s16 unk_16A;
} Camera; // size = 0x16C

extern s32 gDebugCamEnabled;

void Camera_Init(Camera* camera, struct View* view, struct CollisionContext* colCtx, struct PlayState* play);
void Camera_InitDataUsingPlayer(Camera* camera, struct Player* player);
s16 Camera_ChangeStatus(Camera* camera, s16 status);
Vec3s Camera_Update(Camera* camera);
void Camera_Finish(Camera* camera);
s32 Camera_RequestMode(Camera* camera, s16 mode);
s32 Camera_CheckValidMode(Camera* camera, s16 mode);
s32 Camera_RequestSetting(Camera* camera, s16 setting);
s32 Camera_RequestBgCam(Camera* camera, s32 requestedBgCamIndex);
s16 Camera_GetInputDirYaw(Camera* camera);
Vec3s Camera_GetCamDir(Camera* camera);
s16 Camera_GetCamDirPitch(Camera* camera);
s16 Camera_GetCamDirYaw(Camera* camera);
s32 Camera_RequestQuake(Camera* camera, s32 unused, s16 y, s32 duration);
s32 Camera_SetViewParam(Camera* camera, s32 viewFlag, void* param);
s32 Camera_OverwriteStateFlags(Camera* camera, s16 stateFlags);
s16 Camera_SetStateFlag(Camera* camera, s16 stateFlag);
s16 Camera_UnsetStateFlag(Camera* camera, s16 stateFlag);
s32 Camera_ResetAnim(Camera* camera);
s32 Camera_SetCSParams(Camera* camera, CutsceneCameraPoint* atPoints, CutsceneCameraPoint* eyePoints,
                       struct Player* player, s16 relativeToPlayer);
s32 Camera_ChangeDoorCam(Camera* camera, struct Actor* doorActor, s16 bgCamIndex, f32 arg3, s16 timer1, s16 timer2,
                         s16 timer3);
s32 Camera_Copy(Camera* dstCamera, Camera* srcCamera);
Vec3f Camera_GetQuakeOffset(Camera* camera);
void Camera_SetCameraData(Camera* camera, s16 setDataFlags, void* data0, void* data1, s16 data2, s16 data3,
                          UNK_TYPE arg6);
s32 func_8005B198(void);
s16 Camera_SetFinishedFlag(Camera* camera);

#endif
