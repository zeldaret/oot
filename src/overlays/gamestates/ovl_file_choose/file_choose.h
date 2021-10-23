#ifndef _FILE_CHOOSE_H_
#define _FILE_CHOOSE_H_

#include "ultra64.h"
#include "global.h"
#include "vt.h"


#define GET_NEWF(sramCtx, slotNum, index) (sramCtx->readBuff[gSramSlotOffsets[slotNum] + OFFSETOF(SaveContext, newf[index])])

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
    /* 0 */ MENU_MODE_INIT,
    /* 1 */ MENU_MODE_CONFIG,
    /* 2 */ MENU_MODE_SELECT
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
    /* 00 */ SM_FADE_MAIN_TO_SELECT,
    /* 01 */ SM_MOVE_FILE_TO_TOP,
    /* 02 */ SM_FADE_IN_FILE_INFO,
    /* 03 */ SM_CONFIRM_FILE,
    /* 04 */ SM_FADE_OUT_FILE_INFO,
    /* 05 */ SM_MOVE_FILE_TO_SLOT,
    /* 06 */ SM_FADE_OUT,
    /* 07 */ SM_LOAD_GAME
} SelectMode;

typedef enum {
    /* 0 */ TITLE_SELECT_FILE,   // "Please select a file."
    /* 1 */ TITLE_OPEN_FILE,     // "Open this file?"
    /* 2 */ TITLE_COPY_FROM,     // "Copy which file?"
    /* 3 */ TITLE_COPY_TO,       // "Copy to which file?"
    /* 4 */ TITLE_COPY_CONFIRM,  // "Are you sure?"
    /* 5 */ TITLE_COPY_COMPLETE, // "File copied."
    /* 6 */ TITLE_ERASE_FILE,    // "Erase which file?"
    /* 7 */ TITLE_ERASE_CONFIRM, // "Are you sure?"
    /* 8 */ TITLE_ERASE_COMPLETE // "File erased."
} TitleLabel;

typedef enum {
    /* -1 */ WARNING_NONE = -1,
    /*  0 */ WARNING_NO_FILE_COPY,   // "No file to copy."
    /*  1 */ WARNING_NO_FILE_ERASE,  // "No file to erase."
    /*  2 */ WARNING_NO_EMPTY_FILES, // "There is no empty file."
    /*  3 */ WARNING_FILE_EMPTY,     // "This is an empty file."
    /*  4 */ WARNING_FILE_IN_USE     // "This file is in use."
} WarningLabel;

typedef enum {
    /* 0 */ BTN_MAIN_FILE_1,
    /* 1 */ BTN_MAIN_FILE_2,
    /* 2 */ BTN_MAIN_FILE_3,
    /* 3 */ BTN_MAIN_COPY,
    /* 4 */ BTN_MAIN_ERASE,
    /* 5 */ BTN_MAIN_OPTIONS
} MainMenuButtonIndex;

typedef enum {
    /* 0 */ BTN_COPY_FILE_1,
    /* 1 */ BTN_COPY_FILE_2,
    /* 2 */ BTN_COPY_FILE_3,
    /* 3 */ BTN_COPY_QUIT
} CopyMenuButtonIndex;

typedef enum {
    /* 0 */ BTN_ERASE_FILE_1,
    /* 1 */ BTN_ERASE_FILE_2,
    /* 2 */ BTN_ERASE_FILE_3,
    /* 3 */ BTN_ERASE_QUIT
} EraseMenuButtonIndex;

typedef enum {
    /* 0 */ BTN_SELECT_FILE_1,
    /* 1 */ BTN_SELECT_FILE_2,
    /* 2 */ BTN_SELECT_FILE_3,
    /* 3 */ BTN_SELECT_YES,
    /* 4 */ BTN_SELECT_QUIT
} SelectMenuButtonIndex;

typedef enum {
    /* 0 */ BTN_CONFIRM_YES,
    /* 1 */ BTN_CONFIRM_QUIT
} ConfirmButtonIndex;

typedef enum {
    /* 0 */ BTN_ACTION_COPY,
    /* 1 */ BTN_ACTION_ERASE
} ActionButtonIndex;

typedef enum {
    /* 0 */ SETTING_AUDIO,
    /* 1 */ SETTING_TARGET
} SettingIndex;

typedef enum {
    /* 0 */ AUDIO_STEREO,
    /* 1 */ AUDIO_MONO,
    /* 2 */ AUDIO_HEADSET,
    /* 3 */ AUDIO_SURROUND
} AudioOption;

typedef enum {
    /* 0 */ CHAR_PAGE_HIRA,
    /* 1 */ CHAR_PAGE_KATA,
    /* 2 */ CHAR_PAGE_ENG
} CharPage;

typedef enum {
    /* 00 */ KBD_BTN_HIRA,
    /* 01 */ KBD_BTN_KATA,
    /* 02 */ KBD_BTN_ENG,
    /* 03 */ KBD_BTN_BACKSPACE,
    /* 04 */ KBD_BTN_END,
    /* 99 */ KBD_BTN_NONE = 99
} KeyboardButton;

void FileChoose_SetupCopySource(GameState* thisx); 
void FileChoose_SelectCopySource(GameState* thisx); 
void FileChoose_SetupCopyDest1(GameState* thisx); 
void FileChoose_SetupCopyDest2(GameState* thisx); 
void FileChoose_SelectCopyDest(GameState* thisx); 
void FileChoose_ExitToCopySource1(GameState* thisx); 
void FileChoose_ExitToCopySource2(GameState* thisx); 
void FileChoose_SetupCopyConfirm1(GameState* thisx); 
void FileChoose_SetupCopyConfirm2(GameState* thisx); 
void FileChoose_CopyConfirm(GameState* thisx); 
void FileChoose_ReturnToCopyDest(GameState* thisx); 
void FileChoose_CopyAnim1(GameState* thisx); 
void FileChoose_CopyAnim2(GameState* thisx); 
void FileChoose_CopyAnim3(GameState* thisx); 
void FileChoose_CopyAnim4(GameState* thisx); 
void FileChoose_CopyAnim5(GameState* thisx); 

void FileChoose_ExitCopyToMain(GameState* thisx); 
void FileChoose_SetupEraseSelect(GameState* thisx); 
void FileChoose_EraseSelect(GameState* thisx); 
void FileChoose_SetupEraseConfirm1(GameState* thisx); 
void FileChoose_SetupEraseConfirm2(GameState* thisx); 
void FileChoose_EraseConfirm(GameState* thisx); 
void FileChoose_ExitToEraseSelect1(GameState* thisx); 
void FileChoose_ExitToEraseSelect2(GameState* thisx); 
void FileChoose_EraseAnim1(GameState* thisx); 
void FileChoose_EraseAnim2(GameState* thisx); 
void FileChoose_EraseAnim3(GameState* thisx); 
void FileChoose_ExitEraseToMain(GameState* thisx); 

void FileChoose_UpdateKeyboardCursor(GameState* thisx);
void FileChoose_StartNameEntry(GameState* thisx);
void FileChoose_UpdateOptionsMenu(GameState* thisx);
void FileChoose_StartOptions(GameState* thisx);

void FileChoose_InitModeDraw(GameState* thisx);
void FileChoose_ConfigModeDraw(GameState* thisx);
void FileChoose_SelectModeDraw(GameState* thisx);

void FileChoose_PulsateCursor(GameState* thisx);
void FileChoose_DrawOptions(GameState* thisx);

void FileChoose_DrawNameEntry(GameState* thisx);
void FileChoose_DrawCharacter(GraphicsContext* gfxCtx, void* texture, s16 vtx);

extern Vtx D_80811BB0[];
extern s16 D_808123F0[];
extern Vtx D_80811E30[];
extern Vtx D_80811D30[];
extern Vtx D_80812130[];
extern Vtx D_80811F30[];
extern Vtx gOptionsDividerTop[];
extern Vtx gOptionsDividerMiddle[];
extern Vtx gOptionsDividerBottom[];

#endif
