#ifndef FILE_SELECT_H
#define FILE_SELECT_H

#include "libc/stddef.h"
#include "ultra64.h"
#include "global.h"


#define GET_NEWF(sramCtx, slotNum, index) (sramCtx->readBuff[gSramSlotOffsets[slotNum] + offsetof(SaveContext, save.info.playerData.newf[index])])

#define SLOT_OCCUPIED(sramCtx, slotNum) \
    ((GET_NEWF(sramCtx, slotNum, 0) == 'Z') || \
     (GET_NEWF(sramCtx, slotNum, 1) == 'E') || \
     (GET_NEWF(sramCtx, slotNum, 2) == 'L') || \
     (GET_NEWF(sramCtx, slotNum, 3) == 'D') || \
     (GET_NEWF(sramCtx, slotNum, 4) == 'A') || \
     (GET_NEWF(sramCtx, slotNum, 5) == 'Z'))

// Init mode: Initial setup as the file select is starting up, fades and slides in various menu elements
// Config mode: Handles the bulk of the file select, various configuration tasks like picking a file, copy/erase, and the options menu
// Select mode: Displays the selected file with various details about it, and allows the player to confirm and open it
typedef enum {
    /* 0 */ FS_MENU_MODE_INIT,
    /* 1 */ FS_MENU_MODE_CONFIG,
    /* 2 */ FS_MENU_MODE_SELECT
} MenuMode;

typedef enum {
    /* 00 */ CM_FADE_IN_START,
    /* 01 */ CM_FADE_IN_END,
    /* 02 */ CM_MAIN_MENU,
    /* 03 */ CM_SETUP_COPY_SOURCE,
    /* 04 */ CM_SELECT_COPY_SOURCE,
    /* 05 */ CM_SETUP_COPY_DEST_1,
    /* 06 */ CM_SETUP_COPY_DEST_2,
    /* 07 */ CM_SELECT_COPY_DEST,
    /* 08 */ CM_EXIT_TO_COPY_SOURCE_1,
    /* 09 */ CM_EXIT_TO_COPY_SOURCE_2,
    /* 10 */ CM_SETUP_COPY_CONFIRM_1,
    /* 11 */ CM_SETUP_COPY_CONFIRM_2,
    /* 12 */ CM_COPY_CONFIRM,
    /* 13 */ CM_RETURN_TO_COPY_DEST,
    /* 14 */ CM_COPY_ANIM_1,
    /* 15 */ CM_COPY_ANIM_2,
    /* 16 */ CM_COPY_ANIM_3,
    /* 17 */ CM_COPY_ANIM_4,
    /* 18 */ CM_COPY_ANIM_5,
    /* 19 */ CM_COPY_RETURN_MAIN,
    /* 20 */ CM_SETUP_ERASE_SELECT,
    /* 21 */ CM_ERASE_SELECT,
    /* 22 */ CM_SETUP_ERASE_CONFIRM_1,
    /* 23 */ CM_SETUP_ERASE_CONFIRM_2,
    /* 24 */ CM_ERASE_CONFIRM,
    /* 25 */ CM_EXIT_TO_ERASE_SELECT_1,
    /* 26 */ CM_EXIT_TO_ERASE_SELECT_2,
    /* 27 */ CM_ERASE_ANIM_1,
    /* 28 */ CM_ERASE_ANIM_2,
    /* 29 */ CM_ERASE_ANIM_3,
    /* 30 */ CM_EXIT_ERASE_TO_MAIN,
    /* 31 */ CM_UNUSED_31,
    /* 32 */ CM_ROTATE_TO_NAME_ENTRY,
    /* 33 */ CM_NAME_ENTRY,
    /* 34 */ CM_START_NAME_ENTRY,
    /* 35 */ CM_NAME_ENTRY_TO_MAIN,
    /* 36 */ CM_MAIN_TO_OPTIONS,
    /* 37 */ CM_OPTIONS_MENU,
    /* 38 */ CM_START_OPTIONS,
    /* 39 */ CM_OPTIONS_TO_MAIN,
    /* 40 */ CM_UNUSED_DELAY
} ConfigMode;

typedef enum {
    /* 0 */ SM_FADE_MAIN_TO_SELECT,
    /* 1 */ SM_MOVE_FILE_TO_TOP,
    /* 2 */ SM_FADE_IN_FILE_INFO,
    /* 3 */ SM_CONFIRM_FILE,
    /* 4 */ SM_FADE_OUT_FILE_INFO,
    /* 5 */ SM_MOVE_FILE_TO_SLOT,
    /* 6 */ SM_FADE_OUT,
    /* 7 */ SM_LOAD_GAME
} SelectMode;

typedef enum {
    /* 0 */ FS_TITLE_SELECT_FILE,   // "Please select a file."
    /* 1 */ FS_TITLE_OPEN_FILE,     // "Open this file?"
    /* 2 */ FS_TITLE_COPY_FROM,     // "Copy which file?"
    /* 3 */ FS_TITLE_COPY_TO,       // "Copy to which file?"
    /* 4 */ FS_TITLE_COPY_CONFIRM,  // "Are you sure?"
    /* 5 */ FS_TITLE_COPY_COMPLETE, // "File copied."
    /* 6 */ FS_TITLE_ERASE_FILE,    // "Erase which file?"
    /* 7 */ FS_TITLE_ERASE_CONFIRM, // "Are you sure?"
    /* 8 */ FS_TITLE_ERASE_COMPLETE // "File erased."
} TitleLabel;

typedef enum {
    /* -1 */ FS_WARNING_NONE = -1,
    /*  0 */ FS_WARNING_NO_FILE_COPY,   // "No file to copy."
    /*  1 */ FS_WARNING_NO_FILE_ERASE,  // "No file to erase."
    /*  2 */ FS_WARNING_NO_EMPTY_FILES, // "There is no empty file."
    /*  3 */ FS_WARNING_FILE_EMPTY,     // "This is an empty file."
    /*  4 */ FS_WARNING_FILE_IN_USE     // "This file is in use."
} WarningLabel;

typedef enum {
    /* 0 */ FS_BTN_MAIN_FILE_1,
    /* 1 */ FS_BTN_MAIN_FILE_2,
    /* 2 */ FS_BTN_MAIN_FILE_3,
    /* 3 */ FS_BTN_MAIN_COPY,
    /* 4 */ FS_BTN_MAIN_ERASE,
    /* 5 */ FS_BTN_MAIN_OPTIONS
} MainMenuButtonIndex;

typedef enum {
    /* 0 */ FS_BTN_COPY_FILE_1,
    /* 1 */ FS_BTN_COPY_FILE_2,
    /* 2 */ FS_BTN_COPY_FILE_3,
    /* 3 */ FS_BTN_COPY_QUIT
} CopyMenuButtonIndex;

typedef enum {
    /* 0 */ FS_BTN_ERASE_FILE_1,
    /* 1 */ FS_BTN_ERASE_FILE_2,
    /* 2 */ FS_BTN_ERASE_FILE_3,
    /* 3 */ FS_BTN_ERASE_QUIT
} EraseMenuButtonIndex;

typedef enum {
    /* 0 */ FS_BTN_SELECT_FILE_1,
    /* 1 */ FS_BTN_SELECT_FILE_2,
    /* 2 */ FS_BTN_SELECT_FILE_3,
    /* 3 */ FS_BTN_SELECT_YES,
    /* 4 */ FS_BTN_SELECT_QUIT
} SelectMenuButtonIndex;

typedef enum {
    /* 0 */ FS_BTN_CONFIRM_YES,
    /* 1 */ FS_BTN_CONFIRM_QUIT
} ConfirmButtonIndex;

typedef enum {
    /* 0 */ FS_BTN_ACTION_COPY,
    /* 1 */ FS_BTN_ACTION_ERASE
} ActionButtonIndex;

typedef enum {
    /* 0 */ FS_SETTING_AUDIO,
    /* 1 */ FS_SETTING_TARGET
} SettingIndex;

typedef enum {
    /* 0 */ FS_AUDIO_STEREO,
    /* 1 */ FS_AUDIO_MONO,
    /* 2 */ FS_AUDIO_HEADSET,
    /* 3 */ FS_AUDIO_SURROUND
} AudioOption;

typedef enum {
    /* 0 */ FS_CHAR_PAGE_HIRA,
    /* 1 */ FS_CHAR_PAGE_KATA,
    /* 2 */ FS_CHAR_PAGE_ENG
} CharPage;

typedef enum {
    /* 00 */ FS_KBD_BTN_HIRA,
    /* 01 */ FS_KBD_BTN_KATA,
    /* 02 */ FS_KBD_BTN_ENG,
    /* 03 */ FS_KBD_BTN_BACKSPACE,
    /* 04 */ FS_KBD_BTN_END,
    /* 99 */ FS_KBD_BTN_NONE = 99
} KeyboardButton;

typedef struct FileSelectState {
    /* 0x00000 */ GameState state;
    /* 0x000A4 */ Vtx* windowVtx;
    /* 0x000A8 */ u8* staticSegment;
    /* 0x000AC */ u8* parameterSegment;
    /* 0x000B0 */ char unk_B0[0x8];
    /* 0x000B8 */ View view;
    /* 0x001E0 */ SramContext sramCtx;
    /* 0x001E4 */ char unk_1E4[0x4];
    /* 0x001E8 */ SkyboxContext skyboxCtx;
    /* 0x00348 */ MessageContext msgCtx;
    /* 0x0E760 */ Font font;
    /* 0x1C8E8 */ EnvironmentContext envCtx;
    /* 0x1C9E4 */ char unk_1C9E4[0x4];
    /* 0x1C9E8 */ Vtx* windowContentVtx;
    /* 0x1C9EC */ Vtx* keyboardVtx;
    /* 0x1C9F0 */ Vtx* nameEntryVtx;
    /* 0x1C9F4 */ u8 n64ddFlag;
    /* 0x1C9F6 */ u16 deaths[3];
    /* 0x1C9FC */ u8 fileNames[3][8];
    /* 0x1CA14 */ u16 healthCapacities[3];
    /* 0x1CA1C */ u32 questItems[3];
    /* 0x1CA28 */ s16 n64ddFlags[3];
    /* 0x1CA2E */ s8 defense[3];
    /* 0x1CA32 */ u16 health[3];
    /* 0x1CA38 */ s16 buttonIndex;
    /* 0x1CA3A */ s16 confirmButtonIndex; // 0: yes, 1: quit
    /* 0x1CA3C */ s16 menuMode;
    /* 0x1CA3E */ s16 configMode;
    /* 0x1CA40 */ s16 prevConfigMode;
    /* 0x1CA42 */ s16 nextConfigMode;
    /* 0x1CA44 */ s16 selectMode;
    /* 0x1CA46 */ s16 selectedFileIndex;
    /* 0x1CA48 */ char unk_1CA48[0x2];
    /* 0x1CA4A */ s16 fileNamesY[3];
    /* 0x1CA50 */ s16 actionTimer;
    /* 0x1CA52 */ s16 buttonYOffsets[6];
    /* 0x1CA5E */ s16 copyDestFileIndex;
    /* 0x1CA60 */ s16 warningLabel;
    /* 0x1CA62 */ s16 warningButtonIndex;
    /* 0x1CA64 */ s16 titleLabel;
    /* 0x1CA66 */ s16 nextTitleLabel;
    /* 0x1CA68 */ s16 windowColor[3];
    /* 0x1CA6E */ s16 titleAlpha[2];
    /* 0x1CA72 */ s16 windowAlpha;
    /* 0x1CA74 */ s16 fileButtonAlpha[3];
    /* 0x1CA7A */ s16 nameBoxAlpha[3];
    /* 0x1CA80 */ s16 nameAlpha[3];
    /* 0x1CA86 */ s16 connectorAlpha[3];
    /* 0x1CA8C */ s16 fileInfoAlpha[3];
    /* 0x1CA92 */ s16 actionButtonAlpha[2];
    /* 0x1CA96 */ s16 confirmButtonAlpha[2];
    /* 0x1CA9A */ s16 optionButtonAlpha;
    /* 0x1CA9C */ s16 nameEntryBoxAlpha;
    /* 0x1CA9E */ s16 controlsAlpha;
    /* 0x1CAA0 */ s16 emptyFileTextAlpha;
    /* 0x1CAA2 */ s16 highlightColor[4];
    /* 0x1CAAA */ s16 highlightPulseDir; // 0 fade out, 1 fade in
    /* 0x1CAAC */ s16 unk_1CAAC; // initialized but never used
    /* 0x1CAAE */ s16 confirmButtonTexIndices[2];
    /* 0x1CAB2 */ s16 inputTimerX;
    /* 0x1CAB4 */ s16 inputTimerY;
    /* 0x1CAB6 */ s16 stickXDir;
    /* 0x1CAB8 */ s16 stickYDir;
    /* 0x1CABA */ s16 stickAdjX;
    /* 0x1CABC */ s16 stickAdjY;
    /* 0x1CABE */ s16 nameEntryBoxPosX;
    /* 0x1CAC0 */ s16 windowPosX;
    /* 0x1CAC4 */ f32 windowRot;
    /* 0x1CAC8 */ s16 kbdButton; // only for buttons, not characters
    /* 0x1CACA */ s16 charPage; // 0: hiragana, 1: katakana, 2: alphabet
    /* 0x1CACC */ s16 charBgAlpha; // square shape the letter sits in
    /* 0x1CACE */ s16 charIndex; // 0 - 64, top left to bottom right
    /* 0x1CAD0 */ s16 kbdX; // (0, 0) is top left character
    /* 0x1CAD2 */ s16 kbdY;
    /* 0x1CAD4 */ s16 newFileNameCharCount;
    /* 0x1CAD6 */ s16 unk_1CAD6[5];
} FileSelectState; // size = 0x1CAE0

void FileSelect_Init(GameState* thisx);
void FileSelect_Destroy(GameState* thisx);

void FileSelect_SetupCopySource(GameState* thisx);
void FileSelect_SelectCopySource(GameState* thisx);
void FileSelect_SetupCopyDest1(GameState* thisx);
void FileSelect_SetupCopyDest2(GameState* thisx);
void FileSelect_SelectCopyDest(GameState* thisx);
void FileSelect_ExitToCopySource1(GameState* thisx);
void FileSelect_ExitToCopySource2(GameState* thisx);
void FileSelect_SetupCopyConfirm1(GameState* thisx);
void FileSelect_SetupCopyConfirm2(GameState* thisx);
void FileSelect_CopyConfirm(GameState* thisx);
void FileSelect_ReturnToCopyDest(GameState* thisx);
void FileSelect_CopyAnim1(GameState* thisx);
void FileSelect_CopyAnim2(GameState* thisx);
void FileSelect_CopyAnim3(GameState* thisx);
void FileSelect_CopyAnim4(GameState* thisx);
void FileSelect_CopyAnim5(GameState* thisx);

void FileSelect_ExitCopyToMain(GameState* thisx);
void FileSelect_SetupEraseSelect(GameState* thisx);
void FileSelect_EraseSelect(GameState* thisx);
void FileSelect_SetupEraseConfirm1(GameState* thisx);
void FileSelect_SetupEraseConfirm2(GameState* thisx);
void FileSelect_EraseConfirm(GameState* thisx);
void FileSelect_ExitToEraseSelect1(GameState* thisx);
void FileSelect_ExitToEraseSelect2(GameState* thisx);
void FileSelect_EraseAnim1(GameState* thisx);
void FileSelect_EraseAnim2(GameState* thisx);
void FileSelect_EraseAnim3(GameState* thisx);
void FileSelect_ExitEraseToMain(GameState* thisx);

void FileSelect_UpdateKeyboardCursor(GameState* thisx);
void FileSelect_StartNameEntry(GameState* thisx);
void FileSelect_UpdateOptionsMenu(GameState* thisx);
void FileSelect_StartOptions(GameState* thisx);

void FileSelect_InitModeDraw(GameState* thisx);
void FileSelect_ConfigModeDraw(GameState* thisx);
void FileSelect_SelectModeDraw(GameState* thisx);

void FileSelect_PulsateCursor(GameState* thisx);
void FileSelect_DrawOptions(GameState* thisx);

void FileSelect_DrawNameEntry(GameState* thisx);
void FileSelect_DrawCharacter(GraphicsContext* gfxCtx, void* texture, s16 vtx);

extern s16 D_808123F0[];

#endif
