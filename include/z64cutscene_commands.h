#ifndef Z64CUTSCENE_COMMANDS_H
#define Z64CUTSCENE_COMMANDS_H

#include "command_macros_base.h"
#include "z64cutscene.h"

/**
 * Cutscene scripts are arrays of `CutsceneData` words, including bit-packed integers and floats.
 *
 * Most command macros have unused arguments. This is to account for the vanilla assets setting specific values
 * that don't end up being used by any code. They can safely be set to anything, as they aren't used in the
 * implementation.
 *
 * It is believed the original tool used for cutscenes handled most commands the same way, using similar
 * fields, and the code would have accessed them using common structs. Given this, the unused values observed in vanilla
 * assets may appear to map to a variable that makes sense, even if it doesn't end up being used in the code. It
 * probably isn't garbage data.
 *
 * This codebase goes with specialized structs and macros to make it easier to follow the code.
 * Note this common struct design is still partially reflected in all commands having a `startFrame` and `endFrame`,
 * when sometimes only the `startFrame` matters (as documented).
 */

#ifdef __GNUC__
#define CMD_F(a) {.f = (a)}
#else
#define CMD_F(a) {(a)}
#endif

/**
 * Marks the beginning of a cutscene script.
 */
#define CS_BEGIN_CUTSCENE(totalEntries, frameCount) CMD_W(totalEntries), CMD_W(frameCount)

/**
 * Defines data for `CutsceneCameraPoint`, which can be used with any of the `eye` or `at` camera commands.
 */
#define CS_CAM_POINT(continueFlag, roll, frame, viewAngle, xPos, yPos, zPos, unused) \
    CMD_BBH(continueFlag, roll, frame), CMD_F(viewAngle), CMD_HH(xPos, yPos), CMD_HH(zPos, unused)

/**
 * Declares a list of camera `eye` points that form a spline.
 * The points of the spline are interpolated over time to create smooth camera movements.
 */
#define CS_CAM_EYE_SPLINE(startFrame, endFrame) \
    CS_CMD_CAM_EYE_SPLINE, CMD_HH(0x0001, startFrame), CMD_HH(endFrame, 0x0000)

/**
 * Declares a list of camera `at` points that form a spline.
 * The points of the spline are interpolated over time to create smooth camera movements.
 */
#define CS_CAM_AT_SPLINE(startFrame, endFrame) \
    CS_CMD_CAM_AT_SPLINE, CMD_HH(0x0001, startFrame), CMD_HH(endFrame, 0x0000)

/**
 * Declares a list of camera `eye` points that form a spline.
 * The points of the spline are interpolated over time to create smooth camera movements.
 * The points are relative to the player's position and yaw.
 */
#define CS_CAM_EYE_SPLINE_REL_TO_PLAYER(startFrame, endFrame) \
    CS_CMD_CAM_EYE_SPLINE_REL_TO_PLAYER, CMD_HH(0x0001, startFrame), CMD_HH(endFrame, 0x0000)

/**
 * Declares a list of camera `at` points that form a spline.
 * The points of the spline are interpolated over time to create smooth camera movements.
 * The points are relative to the player's position and yaw.
 */
#define CS_CAM_AT_SPLINE_REL_TO_PLAYER(startFrame, endFrame) \
    CS_CMD_CAM_AT_SPLINE_REL_TO_PLAYER, CMD_HH(0x0001, startFrame), CMD_HH(endFrame, 0x0000)

/**
 * Declares a single `eye` point that will be set on the specified frame, without any interpolation.
 * Should only contain a single point, not a list.
 * This feature is not used in the final game and lacks polish, it is recommended to use splines in all cases.
 */
#define CS_CAM_EYE(startFrame, endFrame) \
    CS_CMD_CAM_EYE, CMD_HH(0x0001, startFrame), CMD_HH(endFrame, 0x0000)

/**
 * Declares a single `at` point that will be set on the specified frame, without any interpolation.
 * Should only contain a single point, not a list.
 * This feature is not used in the final game and lacks polish, it is recommended to use splines in all cases.
 */
#define CS_CAM_AT(startFrame, endFrame) \
    CS_CMD_CAM_AT, CMD_HH(0x0001, startFrame), CMD_HH(endFrame, 0x0000)

/**
 * Declares a list of `CS_MISC` entries.
 */
#define CS_MISC_LIST(entries) \
    CS_CMD_MISC, CMD_W(entries)

/**
 * Various miscellaneous commands.
 * @see `CutsceneMiscType` enum for the different types of commands.
 * @note setting `endFrame` to same value as `startFrame` will not behave as expected.
 * For commands that only need to last one frame, set `endFrame` to `startFrame + 1`.
 */
#define CS_MISC(type, startFrame, endFrame, unused0, unused1, unused2, unused3, unused4, unused5, unused6, unused7, unused8, unused9, unused10) \
    CMD_HH(type, startFrame), CMD_HH(endFrame, unused0), \
    CMD_W(unused1), CMD_W(unused2), CMD_W(unused3), CMD_W(unused4), CMD_W(unused5), \
    CMD_W(unused6), CMD_W(unused7), CMD_W(unused8), CMD_W(unused9), CMD_W(unused10)

/**
 * Declares a list of `CS_LIGHT_SETTING` entries.
 */
#define CS_LIGHT_SETTING_LIST(entries) \
    CS_CMD_LIGHT_SETTING, CMD_W(entries)

/**
 * Changes the environment lights to the specified setting.
 * The lighting change will take place immediately with no blending.
 * @note `endFrame` is not used in the implementation of the command, so its value does not matter
 */
#define CS_LIGHT_SETTING(lightSetting, startFrame, endFrame, unused0, unused1, unused2, unused3, unused4, unused5, unused6, unused7) \
    CMD_BBH(0, (lightSetting + 1), startFrame), CMD_HH(endFrame, unused0), \
    CMD_W(unused1), CMD_W(unused2), CMD_W(unused3), CMD_W(unused4), CMD_W(unused5), \
    CMD_W(unused6), CMD_W(unused7), 0x00000000, 0x00000000, 0x00000000

/**
 * Declares a list of `CS_RUMBLE_CONTROLLER` entries.
 */
#define CS_RUMBLE_CONTROLLER_LIST(entries) \
    CS_CMD_RUMBLE_CONTROLLER, CMD_W(entries)

/**
 * Rumble the controller.
 * @note `endFrame` is not used in the implementation of the command, so its value does not matter
*/
#define CS_RUMBLE_CONTROLLER(unused0, startFrame, endFrame, sourceStrength, duration, decreaseRate, unused1, unused2) \
    CMD_HH(unused0, startFrame), CMD_HBB(endFrame, sourceStrength, duration), CMD_BBH(decreaseRate, unused1, unused2)

/**
 * Declares a list of `CS_ACTOR_CUE` entries.
 */
#define CS_ACTOR_CUE_LIST(cmdType, entries) \
    CMD_W(cmdType), CMD_W(entries)

/**
 * Defines a cue that an actor can listen for.
 * The actor can choose whether or not to use the position and rotation data supplied to it.
 * The cue `id` is a number that has an actor-specific meaning.
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

#define CS_TEXT_OCARINA_ACTION(ocarinaAction, startFrame, endFrame, messageId) \
    CS_TEXT(ocarinaAction, startFrame, endFrame, CS_TEXT_OCARINA_ACTION, messageId, CS_TEXT_ID_NONE)

/**
 * Controls various types of screen transitions.
 * @see `CutsceneTransitionType` for type options.
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
 * @note `endFrame` is not used in the implementation of the command, so its value does not matter
 */
#define CS_START_SEQ(seqId, startFrame, endFrame, unused0, unused1, unused2, unused3, unused4, unused5, unused6, unused7) \
    CMD_HH((seqId + 1), startFrame), CMD_HH(endFrame, unused0), \
    CMD_W(unused1), CMD_W(unused2), CMD_W(unused3), CMD_W(unused4), CMD_W(unused5), \
    CMD_W(unused6), CMD_W(unused7), 0x00000000, 0x00000000, 0x00000000

/**
 * Declares a list of `CS_STOP_SEQ` entries.
 */
#define CS_STOP_SEQ_LIST(entries) \
    CS_CMD_STOP_SEQ, CMD_W(entries)

/**
 * Stops a sequence at the specified time.
 * @note `endFrame` is not used in the implementation of the command, so its value does not matter
 */
#define CS_STOP_SEQ(seqId, startFrame, endFrame, unused0, unused1, unused2, unused3, unused4, unused5, unused6, unused7) \
    CMD_HH((seqId + 1), startFrame), CMD_HH(endFrame, unused0), \
    CMD_W(unused1), CMD_W(unused2), CMD_W(unused3), CMD_W(unused4), CMD_W(unused5), \
    CMD_W(unused6), CMD_W(unused7), 0x00000000, 0x00000000, 0x00000000

/**
 * Declares a list of `CS_FADE_OUT_SEQ` entries.
 */
#define CS_FADE_OUT_SEQ_LIST(entries) \
    CS_CMD_FADE_OUT_SEQ, CMD_W(entries)

/**
 * Fade out the sequence that is playing on the specified sequence player, over the specified frame range.
 * @see `CutsceneFadeOutSeqPlayer`
 */
#define CS_FADE_OUT_SEQ(seqPlayer, startFrame, endFrame, unused0, unused1, unused2, unused3, unused4, unused5, unused6, unused7) \
    CMD_HH(seqPlayer, startFrame), CMD_HH(endFrame, unused0), \
    CMD_W(unused1), CMD_W(unused2), CMD_W(unused3), CMD_W(unused4), CMD_W(unused5), \
    CMD_W(unused6), CMD_W(unused7), 0x00000000, 0x00000000, 0x00000000

/**
 * Declares a list of `CS_TIME` entries.
 */
#define CS_TIME_LIST(entries) \
    CS_CMD_TIME, CMD_W(entries)

/**
 * Sets the time of day.
 * Both the day time and skybox time are set by this command.
 * @note `endFrame` is not used in the implementation of the command, so its value does not matter
 */
#define CS_TIME(unused0, startFrame, endFrame, hour, min) \
    CMD_HH(unused0, startFrame), CMD_HBB(endFrame, hour, min), CMD_W(0)

/**
 * Sends the player to a new destination.
 * `destination` maps to a custom block of code that must implement the scene transition on its own.
 * This custom code can also do other tasks like changing age, setting flags, or any other setup that is needed
 * before going to the next destination.
 *
 * @see `CutsceneDestination`
 * @note `endFrame` is not used in the implementation of the command, so its value does not matter
 */
#define CS_DESTINATION(destination, startFrame, endFrame) \
    CS_CMD_DESTINATION, 1, CMD_HH(destination, startFrame), CMD_HH(endFrame, endFrame)

/**
 * Marks the end of a cutscene script.
 */
#define CS_END() 0xFFFFFFFF, 0x00000000


// most instances of this look like unimplemented actor cues.
// after confirming this, can probably switch those over and delete this
#define CS_UNK_DATA_LIST(cmdType, entries) CMD_W(cmdType), CMD_W(entries)

#define CS_UNK_DATA(unk1, unk2, unk3, unk4, unk5, unk6, unk7, unk8, unk9, unk10, unk11, unk12) \
    CMD_W(unk1), CMD_W(unk2), CMD_W(unk3), CMD_W(unk4), CMD_W(unk5), CMD_W(unk6), \
    CMD_W(unk7), CMD_W(unk8), CMD_W(unk9), CMD_W(unk10), CMD_W(unk11), CMD_W(unk12)

#endif
