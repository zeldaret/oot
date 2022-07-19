#ifndef Z64CUTSCENE_COMMANDS_H
#define Z64CUTSCENE_COMMANDS_H

#include "command_macros_base.h"
#include "z64cutscene.h"

#ifdef __GNUC__
#define CMD_F(a) {.f = (a)}
#else
#define CMD_F(a) {(a)}
#endif

/**
 * Marks the beginning of a cutscene.
 */
#define CS_BEGIN_CUTSCENE(totalEntries, endFrame) CMD_W(totalEntries), CMD_W(endFrame)

/**
 * Declares a list of `CS_CAM_EYE_POINTS` entries.
 */
#define CS_CAM_EYE_POINTS_LIST(startFrame, endFrame) \
    CS_CMD_CAM_EYE_POINTS, CMD_HH(0x0001, startFrame), CMD_HH(endFrame, 0x0000)

/**
 * Defines camera `eye` data for a single point of a spline. 
 * The points of the spline are interpolated over time to create smooth camera movements.
 */
#define CS_CAM_EYE_POINTS(continueFlag, roll, frame, viewAngle, xPos, yPos, zPos, unused) \
    CMD_BBH(continueFlag, roll, frame), CMD_F(viewAngle), CMD_HH(xPos, yPos), CMD_HH(zPos, unused)

/**
 * Declares a list of `CS_CAM_EYE_REL_TO_PLAYER` entries.
 */
#define CS_CAM_EYE_POINTS_REL_TO_PLAYER_LIST(startFrame, endFrame) \
    CS_CMD_CAM_EYE_POINTS_REL_TO_PLAYER, CMD_HH(0x0001, startFrame), CMD_HH(endFrame, 0x0000)

#define CS_CAM_EYE_REL_TO_PLAYER(continueFlag, roll, frame, viewAngle, xPos, yPos, zPos, unused) \
    CMD_BBH(continueFlag, roll, frame), CMD_F(viewAngle), CMD_HH(xPos, yPos), CMD_HH(zPos, unused)

/**
 * Declares a list of `CS_CAM_EYE` entries.
 */
#define CS_CAM_EYE_LIST(unk, startFrame, endFrame, unused) \
    CS_CMD_CAM_EYE_NEW, CMD_HH(unk, startFrame), CMD_HH(endFrame, unused)

/**
 * Defines camera `eye` data that will be set on the specified frame.
 */
#define CS_CAM_EYE(continueFlag, roll, frame, viewAngle, xPos, yPos, zPos, unused) \
    CMD_BBH(continueFlag, roll, frame), CMD_F(viewAngle), CMD_HH(xPos, yPos), CMD_HH(zPos, unused)

/**
 * Declares a list of `CS_CAM_AT_POINTS` entries.
 */
#define CS_CAM_AT_POINTS_LIST(startFrame, endFrame) \
    CS_CMD_CAM_AT_POINTS, CMD_HH(0x0001, startFrame), CMD_HH(endFrame, 0x0000)

/**
 * Defines camera `at` data for a single point of a spline. 
 * The points of the spline are interpolated over time to create smooth camera movements.
 */
#define CS_CAM_AT_POINTS(continueFlag, roll, frame, viewAngle, xPos, yPos, zPos, unused) \
    CMD_BBH(continueFlag, roll, frame), CMD_F(viewAngle), CMD_HH(xPos, yPos), CMD_HH(zPos, unused)

/**
 * Declares a list of `CS_CAM_AT_REL_TO_PLAYER` entries.
 */
#define CS_CAM_AT_POINTS_REL_TO_PLAYER_LIST(startFrame, endFrame) \
    CS_CMD_CAM_AT_POINTS_REL_TO_PLAYER, CMD_HH(0x0001, startFrame), CMD_HH(endFrame, 0x0000)

#define CS_CAM_AT_REL_TO_PLAYER(continueFlag, roll, frame, viewAngle, xPos, yPos, zPos, unused) \
    CMD_BBH(continueFlag, roll, frame), CMD_F(viewAngle), CMD_HH(xPos, yPos), CMD_HH(zPos, unused)

/**
 * Declares a list of `CS_CAM_AT` entries.
 */
#define CS_CAM_AT_LIST(unk, startFrame, endFrame, unused) \
    CS_CMD_CAM_AT_NEW, CMD_HH(unk, startFrame), CMD_HH(endFrame, unused)

/**
 * Defines camera `at` data that will be set on the specified frame.
 */
#define CS_CAM_AT(continueFlag, roll, frame, viewAngle, xPos, yPos, zPos, unused) \
    CMD_BBH(continueFlag, roll, frame), CMD_F(viewAngle), CMD_HH(xPos, yPos), CMD_HH(zPos, unused)

/**
 * Declares a list of `CS_MISC` entries.
 */
#define CS_MISC_LIST(entries) \
    CS_CMD_MISC, CMD_W(entries)

/**
 * Various miscellanious commands.
 * @see `CutsceneMiscCommand` enum for the different types of commands.
 */
#define CS_MISC(cmd, startFrame, endFrame, unused0, unused1, unused2, unused3, unused4, unused5, unused6, unused7, unused8, unused9, unused10) \
    CMD_HH(cmd, startFrame), CMD_HH(endFrame, unused0), \
    CMD_W(unused1), CMD_W(unused2), CMD_W(unused3), CMD_W(unused4), CMD_W(unused5), \
    CMD_W(unused6), CMD_W(unused7), CMD_W(unused8), CMD_W(unused9), CMD_W(unused10)

/**
 * Declares a list of `CS_LIGHT_SETTING` entries.
 */
#define CS_LIGHT_SETTING_LIST(entries) \
    CS_CMD_LIGHT_SETTING, CMD_W(entries)

/**
 * Changes the lights to the specified setting.
 * @note This will only work for `LIGHT_MODE_SETTINGS`, it will not override time-based light configs.
 * @note The value for `endFrame` is not used, only the starting frame matters.
 */
#define CS_LIGHT_SETTING(setting, startFrame, endFrame, unused0, unused1, unused2, unused3, unused4, unused5, unused6, unused7) \
    CMD_HH(setting, startFrame), CMD_HH(endFrame, unused0), \
    CMD_W(unused1), CMD_W(unused2), CMD_W(unused3), CMD_W(unused4), CMD_W(unused5), \
    CMD_W(unused6), CMD_W(unused7), 0x00000000, 0x00000000, 0x00000000

/**
 * Declares a list of `CS_RUMBLE_CONTROLLER` entries.
 */
#define CS_RUMBLE_CONTROLLER_LIST(entries) \
    CS_CMD_RUMBLE_CONTROLLER, CMD_W(entries)

#define CS_RUMBLE_CONTROLLER(unk, startFrame, endFrame, unk2, unk3, unk4, unused0, unused1) \
    CMD_HH(unk, startFrame), CMD_HBB(endFrame, unk2, unk3), CMD_BBH(unk4, unused0, unused1)

/**
 * Declares a list of `CS_ACTOR_CUE` entries.
 */
#define CS_ACTOR_CUE_LIST(cmdType, entries) \
    CMD_W(cmdType), CMD_W(entries)

/**
 * Defines a cue that an actor an actor can listen for. The actor can choose to use the position and rotatation data supplied to it.
 * The cue `id` is a number that each has an actor specific meaning which will signal that it should do something.
 */
#define CS_ACTOR_CUE(id, startFrame, endFrame, rotX, rotY, rotZ, startX, startY, startZ, endX, endY, endZ, unused0, unused1, unused2) \
    CMD_HH(id, startFrame), CMD_HH(endFrame, rotX), CMD_HH(rotY, rotZ), \
    CMD_W(startX), CMD_W(startY), CMD_W(startZ), \
    CMD_W(endX), CMD_W(endY), CMD_W(endZ), \
    CMD_F(unused0), CMD_F(unused1), CMD_F(unused2)

/**
 * Declares a list of `CS_PLAYER_CUE` entries.
 */
#define CS_PLAYER_CUE_LIST(entries) \
    CS_CMD_PLAYER_CUE, CMD_W(entries)

/**
 * A player cue is the same as `CS_ACTOR_CUE` but is specifically for player. 
 */
#define CS_PLAYER_CUE(id, startFrame, endFrame, rotX, rotY, rotZ, startX, startY, startZ, endX, endY, endZ, unused0, unused1, unused2) \
    CS_ACTOR_CUE(id, startFrame, endFrame, rotX, rotY, rotZ, startX, startY, startZ, endX, endY, endZ, unused0, unused1, unused2)

/**
 * Declares a list of `CS_TEXT_*` entries.
 */
#define CS_TEXT_LIST(entries) \
    CS_CMD_TEXT, CMD_W(entries)

/**
 * Starts a textbox at the specified time. 
 * For `CS_TEXT_OCARINA_ACTION`, `textId` is used as an ocarina action.
 * For a choice textbox, `altTextId1` is the top text id to branch to and `altTextId2` is the bottom.
 */
#define CS_TEXT(textId, startFrame, endFrame, type, altTextId1, altTextId2) \
    CMD_HH(textId, startFrame), CMD_HH(endFrame, type), CMD_HH(altTextId1, altTextId2)

#define CS_TEXT_NONE(startFrame, endFrame) \
    CS_TEXT(CS_TEXT_ID_NONE, startFrame, endFrame, 0xFFFF, CS_TEXT_ID_NONE, CS_TEXT_ID_NONE)

#define CS_TEXT_LEARN_SONG(ocarinaSongAction, startFrame, endFrame, messageId) \
    CS_TEXT(ocarinaSongAction, startFrame, endFrame, CS_TEXT_OCARINA_ACTION, messageId, CS_TEXT_ID_NONE)

/**
 * Controls various types of screen transitions.
 * @see `CutsceneTransitionTypes` for type options.
 */
#define CS_TRANSITION(type, startFrame, endFrame) \
    CS_CMD_TRANSITION, 0x00000001, CMD_HH(type, startFrame), CMD_HH(endFrame, endFrame)

/**
 * Declares a list of `CS_START_SEQ` entries.
 */
#define CS_START_SEQ_LIST(entries) \
    CS_CMD_START_SEQ, CMD_W(entries)

/**
 * Starts a sequence at the specified time.
 * @note The sequence ID is subtracted by 1 before being used. Add +1 to the desired sequence ID when passing it in.
 * @note The value for `endFrame` is not used, only the starting frame matters.
 */
#define CS_START_SEQ(seqId, startFrame, endFrame, unused0, unused1, unused2, unused3, unused4, unused5, unused6, unused7) \
    CMD_HH(seqId, startFrame), CMD_HH(endFrame, unused0), \
    CMD_W(unused1), CMD_W(unused2), CMD_W(unused3), CMD_W(unused4), CMD_W(unused5), \
    CMD_W(unused6), CMD_W(unused7), 0x00000000, 0x00000000, 0x00000000

/**
 * Declares a list of `CS_STOP_SEQ` entries.
 */
#define CS_STOP_SEQ_LIST(entries) \
    CS_CMD_STOP_SEQ, CMD_W(entries)

/**
 * Stops a sequence at the specified time.
 * @note The sequence ID is subtracted by 1 before being used. Add +1 to the desired sequence ID when passing it in.
 * @note The value for `endFrame` is not used, only the starting frame matters.
 */
#define CS_STOP_SEQ(seqId, startFrame, endFrame, unused0, unused1, unused2, unused3, unused4, unused5, unused6, unused7) \
    CMD_HH(seqId, startFrame), CMD_HH(endFrame, unused0), \
    CMD_W(unused1), CMD_W(unused2), CMD_W(unused3), CMD_W(unused4), CMD_W(unused5), \
    CMD_W(unused6), CMD_W(unused7), 0x00000000, 0x00000000, 0x00000000

/**
 * Declares a list of `CS_FADE_SEQ` entries.
 */
#define CS_FADE_SEQ_LIST(entries) \
    CS_CMD_FADE_SEQ, CMD_W(entries)

/**
 * Fades a sequence out over the specified duration.
 */
#define CS_FADE_SEQ(fadeType, startFrame, endFrame, unused0, unused1, unused2, unused3, unused4, unused5, unused6, unused7) \
    CMD_HH(fadeType, startFrame), CMD_HH(endFrame, unused0), \
    CMD_W(unused1), CMD_W(unused2), CMD_W(unused3), CMD_W(unused4), CMD_W(unused5), \
    CMD_W(unused6), CMD_W(unused7), 0x00000000, 0x00000000, 0x00000000

/**
 * Declares a list of `CS_TIME` entries.
 */
#define CS_TIME_LIST(entries) \
    CS_CMD_SETTIME, CMD_W(entries)

/**
 * Sets the time of day.
 * @note The value for `endFrame` is not used, only the starting frame matters.
 */
#define CS_TIME(unk, startFrame, endFrame, hour, min, unused) \
    CMD_HH(unk, startFrame), \
    CMD_HBB(endFrame, hour, min), \
    CMD_W(unused)

/**
 * Sends the player to a new destination. 
 * `destination` maps to a custom block of code that must implement the scene transitioning on its own.
 * This custom code can also do other tasks like changing age, setting flags, or any other setup that is needed
 * before going to the next destination.
 * @note The value for `endFrame` is not used, only the starting frame matters.
 */
#define CS_DESTINATION(destination, startFrame, endFrame) \
    CS_CMD_DESTINATION, 1, CMD_HH(destination, startFrame), CMD_HH(endFrame, endFrame)

/**
 * Marks the end of a cutscene.
 */
#define CS_END() 0xFFFFFFFF, 0x00000000


// most instances of this look like unimplemented actor cues.
// after confirming this, can probably switch those over and delete this
#define CS_UNK_DATA_LIST(cmdType, entries) CMD_W(cmdType), CMD_W(entries)

#define CS_UNK_DATA(unk1, unk2, unk3, unk4, unk5, unk6, unk7, unk8, unk9, unk10, unk11, unk12) \
    CMD_W(unk1), CMD_W(unk2), CMD_W(unk3), CMD_W(unk4), CMD_W(unk5), CMD_W(unk6), \
    CMD_W(unk7), CMD_W(unk8), CMD_W(unk9), CMD_W(unk10), CMD_W(unk11), CMD_W(unk12)

// TODO: Fix ZAPD and delete these
#define CS_CAM_POS_LIST                CS_CAM_EYE_POINTS_LIST
#define CS_CAM_POS                     CS_CAM_EYE_POINTS
#define CS_CAM_FOCUS_POINT_LIST        CS_CAM_AT_POINTS_LIST
#define CS_CAM_FOCUS_POINT             CS_CAM_AT_POINTS
#define CS_CAM_POS_PLAYER_LIST         CS_CAM_EYE_POINTS_REL_TO_PLAYER_LIST
#define CS_CAM_POS_PLAYER              CS_CAM_EYE_REL_TO_PLAYER
#define CS_CAM_FOCUS_POINT_PLAYER_LIST CS_CAM_AT_POINTS_REL_TO_PLAYER_LIST
#define CS_CAM_FOCUS_POINT_PLAYER      CS_CAM_AT_REL_TO_PLAYER
#define CS_NPC_ACTION_LIST             CS_ACTOR_CUE_LIST
#define CS_NPC_ACTION                  CS_ACTOR_CUE
#define CS_PLAYER_ACTION_LIST          CS_PLAYER_CUE_LIST
#define CS_PLAYER_ACTION               CS_PLAYER_CUE
#define CS_LIGHTING_LIST               CS_LIGHT_SETTING_LIST
#define CS_LIGHTING                    CS_LIGHT_SETTING
#define CS_CMD_09_LIST                 CS_RUMBLE_CONTROLLER_LIST
#define CS_CMD_09                      CS_RUMBLE_CONTROLLER
#define CS_TEXT_DISPLAY_TEXTBOX        CS_TEXT
#define CS_SCENE_TRANS_FX              CS_TRANSITION
#define CS_PLAY_BGM_LIST               CS_START_SEQ_LIST
#define CS_PLAY_BGM                    CS_START_SEQ
#define CS_STOP_BGM_LIST               CS_STOP_SEQ_LIST
#define CS_STOP_BGM                    CS_STOP_SEQ
#define CS_FADE_BGM_LIST               CS_FADE_SEQ_LIST
#define CS_FADE_BGM                    CS_FADE_SEQ
#define CS_TERMINATOR                  CS_DESTINATION

#endif
