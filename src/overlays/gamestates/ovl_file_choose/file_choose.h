#include "ultra64.h"
#include "global.h"
#include "vt.h"

#ifndef _FILE_CHOOSE_H_
#define _FILE_CHOOSE_H_

#define GET_NEWF(sramCtx, slotNum, index) (sramCtx->readBuff[gSramSlotOffsets[slotNum] + OFFSETOF(SaveContext, newf[index])])

#define SLOT_OCCUPIED(sramCtx, slotNum) \
    ((GET_NEWF(sramCtx, slotNum, 0) == 'Z') || \
     (GET_NEWF(sramCtx, slotNum, 1) == 'E') || \
     (GET_NEWF(sramCtx, slotNum, 2) == 'L') || \
     (GET_NEWF(sramCtx, slotNum, 3) == 'D') || \
     (GET_NEWF(sramCtx, slotNum, 4) == 'A') || \
     (GET_NEWF(sramCtx, slotNum, 5) == 'Z'))

typedef enum {
    /* 0 */ MENU_MODE_INIT,
    /* 1 */ MENU_MODE_CONFIG,
    /* 2 */ MENU_MODE_SELECT
} MenuMode;

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

typedef enum {
    /* 00 */ CM_FADE_IN_START,
    /* 01 */ CM_FADE_IN_END,
    /* 02 */ CM_MAIN_MENU,
    /* 03 */ CM_COPY_SOURCE_MENU,
    /* 04 */ CM_SELECT_COPY_SOURCE,
    /* 05 */ CM_05,
    /* 06 */ CM_06,
    /* 07 */ CM_07,
    /* 08 */ CM_08,
    /* 09 */ CM_09,
    /* 10 */ CM_10,
    /* 11 */ CM_11,
    /* 12 */ CM_12,
    /* 13 */ CM_13,
    /* 14 */ CM_14,
    /* 15 */ CM_15,
    /* 16 */ CM_16,
    /* 17 */ CM_17,
    /* 18 */ CM_18,
    /* 19 */ CM_COPY_RETURN_MAIN,
    /* 20 */ CM_20,
    /* 21 */ CM_21,
    /* 22 */ CM_22,
    /* 23 */ CM_23,
    /* 24 */ CM_24,
    /* 25 */ CM_25,
    /* 26 */ CM_26,
    /* 27 */ CM_27,
    /* 28 */ CM_28,
    /* 29 */ CM_29,
    /* 30 */ CM_30,
    /* 31 */ CM_31,
    /* 32 */ CM_MAIN_TO_KEYBOARD,
    /* 33 */ CM_KEYBOARD,
    /* 34 */ CM_START_NAME_ENTRY,
    /* 35 */ CM_KEYBOARD_TO_MAIN,
    /* 36 */ CM_MAIN_TO_OPTIONS,
    /* 37 */ CM_OPTIONS_MENU,
    /* 38 */ CM_START_OPTIONS,
    /* 39 */ CM_OPTIONS_TO_MAIN,
    /* 40 */ CM_40
} ConfigMode;

// Config Mode Update Functions
/* 00 */ void FileChoose_StartFadeIn(GameState* thisx);
/* 01 */ void FileChoose_FinishFadeIn(GameState* thisx);
/* 02 */ void FileChoose_UpdateMainMenu(GameState* thisx);
/* 03 */ void FileCopy_SetupSourceSelect(GameState* thisx); 
/* 04 */ void FileCopy_SelectSource(GameState* thisx); 
/* 05 */ void func_80804248(GameState* thisx); 
/* 06 */ void func_808043D8(GameState* thisx); 
/* 07 */ void FileChoose_SelectCopyDest(GameState* thisx); 
/* 08 */ void func_80804858(GameState* thisx); 
/* 09 */ void func_80804924(GameState* thisx); 
/* 10 */ void func_80804A50(GameState* thisx); 
/* 11 */ void func_80804C74(GameState* thisx); 
/* 12 */ void func_80804CD0(GameState* thisx); 
/* 13 */ void func_80804ED8(GameState* thisx); 
/* 14 */ void func_8080510C(GameState* thisx); 
/* 15 */ void func_808051C8(GameState* thisx); 
/* 16 */ void func_80805318(GameState* thisx); 
/* 17 */ void func_80805434(GameState* thisx); 
/* 18 */ void func_80805524(GameState* thisx); 
/* 19 */ void FileCopy_SetupMainMenu(GameState* thisx); 
/* 20 */ void func_8080595C(GameState* thisx); 
/* 21 */ void func_80805B2C(GameState* thisx); 
/* 22 */ void func_80805EB8(GameState* thisx); 
/* 23 */ void func_80806180(GameState* thisx); 
/* 24 */ void func_8080625C(GameState* thisx); 
/* 25 */ void func_80806444(GameState* thisx); 
/* 26 */ void func_808064F4(GameState* thisx); 
/* 27 */ void func_80806710(GameState* thisx); 
/* 28 */ void func_808068F0(GameState* thisx); 
/* 29 */ void func_808069B4(GameState* thisx); 
/* 30 */ void func_80806C20(GameState* thisx); 
/* 31 */ void func_8080BE28(GameState* thisx); 
/* 32 */ void FileChoose_RotateToNameEntry(GameState* thisx);
/* 33 */ void FileChoose_UpdateKeyboardCursor(GameState* thisx);
/* 34 */ void FileChoose_StartNameEntry(GameState* thisx);
/* 35 */ void FileChoose_RotateToMain(GameState* thisx);
/* 36 */ void FileChoose_RotateToOptions(GameState* thisx);
/* 37 */ void FileChoose_UpdateOptionsMenu(GameState* thisx);
/* 38 */ void FileChoose_StartOptions(GameState* thisx);
/* 39 */ void FileChoose_RotateToMain(GameState* thisx);
/* 40 */ void func_8080BE30(GameState* thisx);

typedef enum {
    /* 00 */ SM_00,
    /* 01 */ SM_01,
    /* 02 */ SM_02,
    /* 03 */ SM_03,
    /* 04 */ SM_04,
    /* 05 */ SM_05,
    /* 06 */ SM_FADE_OUT,
    /* 07 */ SM_LOAD_GAME
} SelectMode;

// Select Mode Update Functions
void func_8080FE2C(GameState* thisx);
void func_8080FF98(GameState* thisx);
void func_8081009C(GameState* thisx);
void func_8081017C(GameState* thisx);
void func_80810354(GameState* thisx);
void func_80810440(GameState* thisx);
void FileChoose_FadeOut(GameState* thisx);
void FileChoose_LoadGame(GameState* thisx);

void FileChoose_InitModeUpdate(GameState* thisx);
void FileChoose_ConfigModeUpdate(GameState* thisx);
void FileChoose_SelectModeUpdate(GameState* thisx);

void FileChoose_InitModeDraw(GameState* thisx);
void FileChoose_ConfigModeDraw(GameState* thisx);
void FileChoose_SelectModeDraw(GameState* thisx);

void FileChoose_PulsateCursor(GameState* thisx);
void FileChoose_DrawSettings(FileChooseContext* this);

void func_80808000(FileChooseContext* this);
void FileChoose_DrawCharacter(GraphicsContext* gfxCtx, void* texture, s16 vtx);

#endif
