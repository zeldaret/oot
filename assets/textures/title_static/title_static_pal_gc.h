#ifndef TITLE_STATIC_PAL_GC_H
#define TITLE_STATIC_PAL_GC_H

#include "tex_len.h"
#include "ultra64.h"

// Medallions
#include "assets/textures/title_static/title_static_medallion_tex.h"

// Main window
#include "assets/textures/title_static/title_static_file_sel_window_tex.h"

// Character set select buttons
#include "assets/textures/title_static/title_static_char_set_tex.h"

#define gFileSelConnectorTex_WIDTH 24
#define gFileSelConnectorTex_HEIGHT 16
extern u64 gFileSelConnectorTex[TEX_LEN(u64, gFileSelConnectorTex_WIDTH, gFileSelConnectorTex_HEIGHT, 8)];
#define gFileSelBackspaceButtonTex_WIDTH 28
#define gFileSelBackspaceButtonTex_HEIGHT 16
extern u64 gFileSelBackspaceButtonTex[TEX_LEN(u64, gFileSelBackspaceButtonTex_WIDTH, gFileSelBackspaceButtonTex_HEIGHT, 16)];
#define gFileSelNameBoxTex_WIDTH 108
#define gFileSelNameBoxTex_HEIGHT 16
extern u64 gFileSelNameBoxTex[TEX_LEN(u64, gFileSelNameBoxTex_WIDTH, gFileSelNameBoxTex_HEIGHT, 16)];

#define gFileSelDISKButtonTex_WIDTH 44
#define gFileSelDISKButtonTex_HEIGHT 16
extern u64 gFileSelDISKButtonTex[TEX_LEN(u64, gFileSelDISKButtonTex_WIDTH, gFileSelDISKButtonTex_HEIGHT, 16)];

#include "assets/textures/title_static/title_static_file_sel_file_info_box_tex.h"

#define gFileSelOptionsDividerTex_WIDTH 256
#define gFileSelOptionsDividerTex_HEIGHT 2
extern u64 gFileSelOptionsDividerTex[TEX_LEN(u64, gFileSelOptionsDividerTex_WIDTH, gFileSelOptionsDividerTex_HEIGHT, 4)];
#define gFileSelBrightnessCheckTex_WIDTH 96
#define gFileSelBrightnessCheckTex_HEIGHT 16
extern u64 gFileSelBrightnessCheckTex[TEX_LEN(u64, gFileSelBrightnessCheckTex_WIDTH, gFileSelBrightnessCheckTex_HEIGHT, 4)];
#define gFileSelSaveXTex_WIDTH 32
#define gFileSelSaveXTex_HEIGHT 16
extern u64 gFileSelSaveXTex[TEX_LEN(u64, gFileSelSaveXTex_WIDTH, gFileSelSaveXTex_HEIGHT, 4)];

// Highlights
#include "assets/textures/title_static/title_static_highlight_tex.h"

// Stones
#include "assets/textures/title_static/title_static_stone_tex.h"

// Language specific textures

#define gFileSelENDButtonENGTex_WIDTH 44
#define gFileSelENDButtonENGTex_HEIGHT 16
extern u64 gFileSelENDButtonENGTex[TEX_LEN(u64, gFileSelENDButtonENGTex_WIDTH, gFileSelENDButtonENGTex_HEIGHT, 16)];
#define gFileSelENDButtonGERTex_WIDTH 44
#define gFileSelENDButtonGERTex_HEIGHT 16
extern u64 gFileSelENDButtonGERTex[TEX_LEN(u64, gFileSelENDButtonGERTex_WIDTH, gFileSelENDButtonGERTex_HEIGHT, 16)];
#define gFileSelENDButtonFRATex_WIDTH 44
#define gFileSelENDButtonFRATex_HEIGHT 16
extern u64 gFileSelENDButtonFRATex[TEX_LEN(u64, gFileSelENDButtonFRATex_WIDTH, gFileSelENDButtonFRATex_HEIGHT, 16)];

#define gFileSelNoFileToCopyENGTex_WIDTH 128
#define gFileSelNoFileToCopyENGTex_HEIGHT 16
extern u64 gFileSelNoFileToCopyENGTex[TEX_LEN(u64, gFileSelNoFileToCopyENGTex_WIDTH, gFileSelNoFileToCopyENGTex_HEIGHT, 8)];
#define gFileSelNoFileToCopyGERTex_WIDTH 128
#define gFileSelNoFileToCopyGERTex_HEIGHT 16
extern u64 gFileSelNoFileToCopyGERTex[TEX_LEN(u64, gFileSelNoFileToCopyGERTex_WIDTH, gFileSelNoFileToCopyGERTex_HEIGHT, 8)];
#define gFileSelNoFileToCopyFRATex_WIDTH 128
#define gFileSelNoFileToCopyFRATex_HEIGHT 16
extern u64 gFileSelNoFileToCopyFRATex[TEX_LEN(u64, gFileSelNoFileToCopyFRATex_WIDTH, gFileSelNoFileToCopyFRATex_HEIGHT, 8)];

#define gFileSelNoFileToEraseENGTex_WIDTH 128
#define gFileSelNoFileToEraseENGTex_HEIGHT 16
extern u64 gFileSelNoFileToEraseENGTex[TEX_LEN(u64, gFileSelNoFileToEraseENGTex_WIDTH, gFileSelNoFileToEraseENGTex_HEIGHT, 8)];
#define gFileSelNoFileToEraseGERTex_WIDTH 128
#define gFileSelNoFileToEraseGERTex_HEIGHT 16
extern u64 gFileSelNoFileToEraseGERTex[TEX_LEN(u64, gFileSelNoFileToEraseGERTex_WIDTH, gFileSelNoFileToEraseGERTex_HEIGHT, 8)];
#define gFileSelNoFileToEraseFRATex_WIDTH 128
#define gFileSelNoFileToEraseFRATex_HEIGHT 16
extern u64 gFileSelNoFileToEraseFRATex[TEX_LEN(u64, gFileSelNoFileToEraseFRATex_WIDTH, gFileSelNoFileToEraseFRATex_HEIGHT, 8)];

#define gFileSelNoEmptyFileENGTex_WIDTH 128
#define gFileSelNoEmptyFileENGTex_HEIGHT 16
extern u64 gFileSelNoEmptyFileENGTex[TEX_LEN(u64, gFileSelNoEmptyFileENGTex_WIDTH, gFileSelNoEmptyFileENGTex_HEIGHT, 8)];
#define gFileSelNoEmptyFileGERTex_WIDTH 128
#define gFileSelNoEmptyFileGERTex_HEIGHT 16
extern u64 gFileSelNoEmptyFileGERTex[TEX_LEN(u64, gFileSelNoEmptyFileGERTex_WIDTH, gFileSelNoEmptyFileGERTex_HEIGHT, 8)];
#define gFileSelNoEmptyFileFRATex_WIDTH 128
#define gFileSelNoEmptyFileFRATex_HEIGHT 16
extern u64 gFileSelNoEmptyFileFRATex[TEX_LEN(u64, gFileSelNoEmptyFileFRATex_WIDTH, gFileSelNoEmptyFileFRATex_HEIGHT, 8)];

#define gFileSelFileEmptyENGTex_WIDTH 128
#define gFileSelFileEmptyENGTex_HEIGHT 16
extern u64 gFileSelFileEmptyENGTex[TEX_LEN(u64, gFileSelFileEmptyENGTex_WIDTH, gFileSelFileEmptyENGTex_HEIGHT, 8)];
#define gFileSelFileEmptyGERTex_WIDTH 128
#define gFileSelFileEmptyGERTex_HEIGHT 16
extern u64 gFileSelFileEmptyGERTex[TEX_LEN(u64, gFileSelFileEmptyGERTex_WIDTH, gFileSelFileEmptyGERTex_HEIGHT, 8)];
#define gFileSelFileEmptyFRATex_WIDTH 128
#define gFileSelFileEmptyFRATex_HEIGHT 16
extern u64 gFileSelFileEmptyFRATex[TEX_LEN(u64, gFileSelFileEmptyFRATex_WIDTH, gFileSelFileEmptyFRATex_HEIGHT, 8)];

#define gFileSelFileInUseENGTex_WIDTH 128
#define gFileSelFileInUseENGTex_HEIGHT 16
extern u64 gFileSelFileInUseENGTex[TEX_LEN(u64, gFileSelFileInUseENGTex_WIDTH, gFileSelFileInUseENGTex_HEIGHT, 8)];
#define gFileSelFileInUseGERTex_WIDTH 128
#define gFileSelFileInUseGERTex_HEIGHT 16
extern u64 gFileSelFileInUseGERTex[TEX_LEN(u64, gFileSelFileInUseGERTex_WIDTH, gFileSelFileInUseGERTex_HEIGHT, 8)];
#define gFileSelFileInUseFRATex_WIDTH 128
#define gFileSelFileInUseFRATex_HEIGHT 16
extern u64 gFileSelFileInUseFRATex[TEX_LEN(u64, gFileSelFileInUseFRATex_WIDTH, gFileSelFileInUseFRATex_HEIGHT, 8)];

#define gFileSelCopyWhichFileENGTex_WIDTH 128
#define gFileSelCopyWhichFileENGTex_HEIGHT 16
extern u64 gFileSelCopyWhichFileENGTex[TEX_LEN(u64, gFileSelCopyWhichFileENGTex_WIDTH, gFileSelCopyWhichFileENGTex_HEIGHT, 8)];
#define gFileSelCopyWhichFileGERTex_WIDTH 128
#define gFileSelCopyWhichFileGERTex_HEIGHT 16
extern u64 gFileSelCopyWhichFileGERTex[TEX_LEN(u64, gFileSelCopyWhichFileGERTex_WIDTH, gFileSelCopyWhichFileGERTex_HEIGHT, 8)];
#define gFileSelCopyWhichFileFRATex_WIDTH 128
#define gFileSelCopyWhichFileFRATex_HEIGHT 16
extern u64 gFileSelCopyWhichFileFRATex[TEX_LEN(u64, gFileSelCopyWhichFileFRATex_WIDTH, gFileSelCopyWhichFileFRATex_HEIGHT, 8)];

#define gFileSelCopyToWhichFileENGTex_WIDTH 128
#define gFileSelCopyToWhichFileENGTex_HEIGHT 16
extern u64 gFileSelCopyToWhichFileENGTex[TEX_LEN(u64, gFileSelCopyToWhichFileENGTex_WIDTH, gFileSelCopyToWhichFileENGTex_HEIGHT, 8)];
#define gFileSelCopyToWhichFileGERTex_WIDTH 128
#define gFileSelCopyToWhichFileGERTex_HEIGHT 16
extern u64 gFileSelCopyToWhichFileGERTex[TEX_LEN(u64, gFileSelCopyToWhichFileGERTex_WIDTH, gFileSelCopyToWhichFileGERTex_HEIGHT, 8)];
#define gFileSelCopyToWhichFileFRATex_WIDTH 128
#define gFileSelCopyToWhichFileFRATex_HEIGHT 16
extern u64 gFileSelCopyToWhichFileFRATex[TEX_LEN(u64, gFileSelCopyToWhichFileFRATex_WIDTH, gFileSelCopyToWhichFileFRATex_HEIGHT, 8)];

#define gFileSelAreYouSureENGTex_WIDTH 128
#define gFileSelAreYouSureENGTex_HEIGHT 16
extern u64 gFileSelAreYouSureENGTex[TEX_LEN(u64, gFileSelAreYouSureENGTex_WIDTH, gFileSelAreYouSureENGTex_HEIGHT, 8)];
#define gFileSelAreYouSureGERTex_WIDTH 128
#define gFileSelAreYouSureGERTex_HEIGHT 16
extern u64 gFileSelAreYouSureGERTex[TEX_LEN(u64, gFileSelAreYouSureGERTex_WIDTH, gFileSelAreYouSureGERTex_HEIGHT, 8)];
#define gFileSelAreYouSureFRATex_WIDTH 128
#define gFileSelAreYouSureFRATex_HEIGHT 16
extern u64 gFileSelAreYouSureFRATex[TEX_LEN(u64, gFileSelAreYouSureFRATex_WIDTH, gFileSelAreYouSureFRATex_HEIGHT, 8)];

#define gFileSelFileCopiedENGTex_WIDTH 128
#define gFileSelFileCopiedENGTex_HEIGHT 16
extern u64 gFileSelFileCopiedENGTex[TEX_LEN(u64, gFileSelFileCopiedENGTex_WIDTH, gFileSelFileCopiedENGTex_HEIGHT, 8)];
#define gFileSelFileCopiedGERTex_WIDTH 128
#define gFileSelFileCopiedGERTex_HEIGHT 16
extern u64 gFileSelFileCopiedGERTex[TEX_LEN(u64, gFileSelFileCopiedGERTex_WIDTH, gFileSelFileCopiedGERTex_HEIGHT, 8)];
#define gFileSelFileCopiedFRATex_WIDTH 128
#define gFileSelFileCopiedFRATex_HEIGHT 16
extern u64 gFileSelFileCopiedFRATex[TEX_LEN(u64, gFileSelFileCopiedFRATex_WIDTH, gFileSelFileCopiedFRATex_HEIGHT, 8)];

#define gFileSelPleaseSelectAFileENGTex_WIDTH 128
#define gFileSelPleaseSelectAFileENGTex_HEIGHT 16
extern u64 gFileSelPleaseSelectAFileENGTex[TEX_LEN(u64, gFileSelPleaseSelectAFileENGTex_WIDTH, gFileSelPleaseSelectAFileENGTex_HEIGHT, 8)];
#define gFileSelPleaseSelectAFileGERTex_WIDTH 128
#define gFileSelPleaseSelectAFileGERTex_HEIGHT 16
extern u64 gFileSelPleaseSelectAFileGERTex[TEX_LEN(u64, gFileSelPleaseSelectAFileGERTex_WIDTH, gFileSelPleaseSelectAFileGERTex_HEIGHT, 8)];
#define gFileSelPleaseSelectAFileFRATex_WIDTH 128
#define gFileSelPleaseSelectAFileFRATex_HEIGHT 16
extern u64 gFileSelPleaseSelectAFileFRATex[TEX_LEN(u64, gFileSelPleaseSelectAFileFRATex_WIDTH, gFileSelPleaseSelectAFileFRATex_HEIGHT, 8)];

#define gFileSelOpenThisFileENGTex_WIDTH 128
#define gFileSelOpenThisFileENGTex_HEIGHT 16
extern u64 gFileSelOpenThisFileENGTex[TEX_LEN(u64, gFileSelOpenThisFileENGTex_WIDTH, gFileSelOpenThisFileENGTex_HEIGHT, 8)];
#define gFileSelOpenThisFileGERTex_WIDTH 128
#define gFileSelOpenThisFileGERTex_HEIGHT 16
extern u64 gFileSelOpenThisFileGERTex[TEX_LEN(u64, gFileSelOpenThisFileGERTex_WIDTH, gFileSelOpenThisFileGERTex_HEIGHT, 8)];
#define gFileSelOpenThisFileFRATex_WIDTH 128
#define gFileSelOpenThisFileFRATex_HEIGHT 16
extern u64 gFileSelOpenThisFileFRATex[TEX_LEN(u64, gFileSelOpenThisFileFRATex_WIDTH, gFileSelOpenThisFileFRATex_HEIGHT, 8)];

#define gFileSelEraseWhichFileENGTex_WIDTH 128
#define gFileSelEraseWhichFileENGTex_HEIGHT 16
extern u64 gFileSelEraseWhichFileENGTex[TEX_LEN(u64, gFileSelEraseWhichFileENGTex_WIDTH, gFileSelEraseWhichFileENGTex_HEIGHT, 8)];
#define gFileSelEraseWhichFileGERTex_WIDTH 128
#define gFileSelEraseWhichFileGERTex_HEIGHT 16
extern u64 gFileSelEraseWhichFileGERTex[TEX_LEN(u64, gFileSelEraseWhichFileGERTex_WIDTH, gFileSelEraseWhichFileGERTex_HEIGHT, 8)];
#define gFileSelEraseWhichFileFRATex_WIDTH 128
#define gFileSelEraseWhichFileFRATex_HEIGHT 16
extern u64 gFileSelEraseWhichFileFRATex[TEX_LEN(u64, gFileSelEraseWhichFileFRATex_WIDTH, gFileSelEraseWhichFileFRATex_HEIGHT, 8)];

#define gFileSelAreYouSure2ENGTex_WIDTH 128
#define gFileSelAreYouSure2ENGTex_HEIGHT 16
extern u64 gFileSelAreYouSure2ENGTex[TEX_LEN(u64, gFileSelAreYouSure2ENGTex_WIDTH, gFileSelAreYouSure2ENGTex_HEIGHT, 8)];
#define gFileSelAreYouSure2GERTex_WIDTH 128
#define gFileSelAreYouSure2GERTex_HEIGHT 16
extern u64 gFileSelAreYouSure2GERTex[TEX_LEN(u64, gFileSelAreYouSure2GERTex_WIDTH, gFileSelAreYouSure2GERTex_HEIGHT, 8)];
#define gFileSelAreYouSure2FRATex_WIDTH 128
#define gFileSelAreYouSure2FRATex_HEIGHT 16
extern u64 gFileSelAreYouSure2FRATex[TEX_LEN(u64, gFileSelAreYouSure2FRATex_WIDTH, gFileSelAreYouSure2FRATex_HEIGHT, 8)];

#define gFileSelFileErasedENGTex_WIDTH 128
#define gFileSelFileErasedENGTex_HEIGHT 16
extern u64 gFileSelFileErasedENGTex[TEX_LEN(u64, gFileSelFileErasedENGTex_WIDTH, gFileSelFileErasedENGTex_HEIGHT, 8)];
#define gFileSelFileErasedGERTex_WIDTH 128
#define gFileSelFileErasedGERTex_HEIGHT 16
extern u64 gFileSelFileErasedGERTex[TEX_LEN(u64, gFileSelFileErasedGERTex_WIDTH, gFileSelFileErasedGERTex_HEIGHT, 8)];
#define gFileSelFileErasedFRATex_WIDTH 128
#define gFileSelFileErasedFRATex_HEIGHT 16
extern u64 gFileSelFileErasedFRATex[TEX_LEN(u64, gFileSelFileErasedFRATex_WIDTH, gFileSelFileErasedFRATex_HEIGHT, 8)];

#define gFileSelOptionsENGTex_WIDTH 128
#define gFileSelOptionsENGTex_HEIGHT 16
extern u64 gFileSelOptionsENGTex[TEX_LEN(u64, gFileSelOptionsENGTex_WIDTH, gFileSelOptionsENGTex_HEIGHT, 8)];
#define gFileSelOptionsGERTex_WIDTH 128
#define gFileSelOptionsGERTex_HEIGHT 16
extern u64 gFileSelOptionsGERTex[TEX_LEN(u64, gFileSelOptionsGERTex_WIDTH, gFileSelOptionsGERTex_HEIGHT, 8)];
// french uses the english texture

#define gFileSelNameENGTex_WIDTH 56
#define gFileSelNameENGTex_HEIGHT 16
extern u64 gFileSelNameENGTex[TEX_LEN(u64, gFileSelNameENGTex_WIDTH, gFileSelNameENGTex_HEIGHT, 8)];
#define gFileSelNameGERTex_WIDTH 56
#define gFileSelNameGERTex_HEIGHT 16
extern u64 gFileSelNameGERTex[TEX_LEN(u64, gFileSelNameGERTex_WIDTH, gFileSelNameGERTex_HEIGHT, 8)];
#define gFileSelNameFRATex_WIDTH 56
#define gFileSelNameFRATex_HEIGHT 16
extern u64 gFileSelNameFRATex[TEX_LEN(u64, gFileSelNameFRATex_WIDTH, gFileSelNameFRATex_HEIGHT, 8)];

#define gFileSelControlsENGTex_WIDTH 144
#define gFileSelControlsENGTex_HEIGHT 16
extern u64 gFileSelControlsENGTex[TEX_LEN(u64, gFileSelControlsENGTex_WIDTH, gFileSelControlsENGTex_HEIGHT, 8)];
#define gFileSelControlsGERTex_WIDTH 144
#define gFileSelControlsGERTex_HEIGHT 16
extern u64 gFileSelControlsGERTex[TEX_LEN(u64, gFileSelControlsGERTex_WIDTH, gFileSelControlsGERTex_HEIGHT, 8)];
#define gFileSelControlsFRATex_WIDTH 144
#define gFileSelControlsFRATex_HEIGHT 16
extern u64 gFileSelControlsFRATex[TEX_LEN(u64, gFileSelControlsFRATex_WIDTH, gFileSelControlsFRATex_HEIGHT, 8)];

#define gFileSelCopyButtonENGTex_WIDTH 64
#define gFileSelCopyButtonENGTex_HEIGHT 16
extern u64 gFileSelCopyButtonENGTex[TEX_LEN(u64, gFileSelCopyButtonENGTex_WIDTH, gFileSelCopyButtonENGTex_HEIGHT, 16)];
#define gFileSelCopyButtonGERTex_WIDTH 64
#define gFileSelCopyButtonGERTex_HEIGHT 16
extern u64 gFileSelCopyButtonGERTex[TEX_LEN(u64, gFileSelCopyButtonGERTex_WIDTH, gFileSelCopyButtonGERTex_HEIGHT, 16)];
#define gFileSelCopyButtonFRATex_WIDTH 64
#define gFileSelCopyButtonFRATex_HEIGHT 16
extern u64 gFileSelCopyButtonFRATex[TEX_LEN(u64, gFileSelCopyButtonFRATex_WIDTH, gFileSelCopyButtonFRATex_HEIGHT, 16)];

#define gFileSelFile1ButtonENGTex_WIDTH 64
#define gFileSelFile1ButtonENGTex_HEIGHT 16
extern u64 gFileSelFile1ButtonENGTex[TEX_LEN(u64, gFileSelFile1ButtonENGTex_WIDTH, gFileSelFile1ButtonENGTex_HEIGHT, 16)];
#define gFileSelFile1ButtonGERTex_WIDTH 64
#define gFileSelFile1ButtonGERTex_HEIGHT 16
extern u64 gFileSelFile1ButtonGERTex[TEX_LEN(u64, gFileSelFile1ButtonGERTex_WIDTH, gFileSelFile1ButtonGERTex_HEIGHT, 16)];
#define gFileSelFile1ButtonFRATex_WIDTH 64
#define gFileSelFile1ButtonFRATex_HEIGHT 16
extern u64 gFileSelFile1ButtonFRATex[TEX_LEN(u64, gFileSelFile1ButtonFRATex_WIDTH, gFileSelFile1ButtonFRATex_HEIGHT, 16)];

#define gFileSelFile2ButtonENGTex_WIDTH 64
#define gFileSelFile2ButtonENGTex_HEIGHT 16
extern u64 gFileSelFile2ButtonENGTex[TEX_LEN(u64, gFileSelFile2ButtonENGTex_WIDTH, gFileSelFile2ButtonENGTex_HEIGHT, 16)];
#define gFileSelFile2ButtonGERTex_WIDTH 64
#define gFileSelFile2ButtonGERTex_HEIGHT 16
extern u64 gFileSelFile2ButtonGERTex[TEX_LEN(u64, gFileSelFile2ButtonGERTex_WIDTH, gFileSelFile2ButtonGERTex_HEIGHT, 16)];
#define gFileSelFile2ButtonFRATex_WIDTH 64
#define gFileSelFile2ButtonFRATex_HEIGHT 16
extern u64 gFileSelFile2ButtonFRATex[TEX_LEN(u64, gFileSelFile2ButtonFRATex_WIDTH, gFileSelFile2ButtonFRATex_HEIGHT, 16)];

#define gFileSelFile3ButtonENGTex_WIDTH 64
#define gFileSelFile3ButtonENGTex_HEIGHT 16
extern u64 gFileSelFile3ButtonENGTex[TEX_LEN(u64, gFileSelFile3ButtonENGTex_WIDTH, gFileSelFile3ButtonENGTex_HEIGHT, 16)];
#define gFileSelFile3ButtonGERTex_WIDTH 64
#define gFileSelFile3ButtonGERTex_HEIGHT 16
extern u64 gFileSelFile3ButtonGERTex[TEX_LEN(u64, gFileSelFile3ButtonGERTex_WIDTH, gFileSelFile3ButtonGERTex_HEIGHT, 16)];
#define gFileSelFile3ButtonFRATex_WIDTH 64
#define gFileSelFile3ButtonFRATex_HEIGHT 16
extern u64 gFileSelFile3ButtonFRATex[TEX_LEN(u64, gFileSelFile3ButtonFRATex_WIDTH, gFileSelFile3ButtonFRATex_HEIGHT, 16)];

#define gFileSelYesButtonENGTex_WIDTH 64
#define gFileSelYesButtonENGTex_HEIGHT 16
extern u64 gFileSelYesButtonENGTex[TEX_LEN(u64, gFileSelYesButtonENGTex_WIDTH, gFileSelYesButtonENGTex_HEIGHT, 16)];
#define gFileSelYesButtonGERTex_WIDTH 64
#define gFileSelYesButtonGERTex_HEIGHT 16
extern u64 gFileSelYesButtonGERTex[TEX_LEN(u64, gFileSelYesButtonGERTex_WIDTH, gFileSelYesButtonGERTex_HEIGHT, 16)];
#define gFileSelYesButtonFRATex_WIDTH 64
#define gFileSelYesButtonFRATex_HEIGHT 16
extern u64 gFileSelYesButtonFRATex[TEX_LEN(u64, gFileSelYesButtonFRATex_WIDTH, gFileSelYesButtonFRATex_HEIGHT, 16)];

#define gFileSelEraseButtonENGTex_WIDTH 64
#define gFileSelEraseButtonENGTex_HEIGHT 16
extern u64 gFileSelEraseButtonENGTex[TEX_LEN(u64, gFileSelEraseButtonENGTex_WIDTH, gFileSelEraseButtonENGTex_HEIGHT, 16)];
#define gFileSelEraseButtonGERTex_WIDTH 64
#define gFileSelEraseButtonGERTex_HEIGHT 16
extern u64 gFileSelEraseButtonGERTex[TEX_LEN(u64, gFileSelEraseButtonGERTex_WIDTH, gFileSelEraseButtonGERTex_HEIGHT, 16)];
#define gFileSelEraseButtonFRATex_WIDTH 64
#define gFileSelEraseButtonFRATex_HEIGHT 16
extern u64 gFileSelEraseButtonFRATex[TEX_LEN(u64, gFileSelEraseButtonFRATex_WIDTH, gFileSelEraseButtonFRATex_HEIGHT, 16)];

#define gFileSelQuitButtonENGTex_WIDTH 64
#define gFileSelQuitButtonENGTex_HEIGHT 16
extern u64 gFileSelQuitButtonENGTex[TEX_LEN(u64, gFileSelQuitButtonENGTex_WIDTH, gFileSelQuitButtonENGTex_HEIGHT, 16)];
#define gFileSelQuitButtonGERTex_WIDTH 64
#define gFileSelQuitButtonGERTex_HEIGHT 16
extern u64 gFileSelQuitButtonGERTex[TEX_LEN(u64, gFileSelQuitButtonGERTex_WIDTH, gFileSelQuitButtonGERTex_HEIGHT, 16)];
#define gFileSelQuitButtonFRATex_WIDTH 64
#define gFileSelQuitButtonFRATex_HEIGHT 16
extern u64 gFileSelQuitButtonFRATex[TEX_LEN(u64, gFileSelQuitButtonFRATex_WIDTH, gFileSelQuitButtonFRATex_HEIGHT, 16)];

#include "assets/textures/title_static/title_static_options_tex.h"

#define gFileSelOptionsButtonENGTex_WIDTH 64
#define gFileSelOptionsButtonENGTex_HEIGHT 16
extern u64 gFileSelOptionsButtonENGTex[TEX_LEN(u64, gFileSelOptionsButtonENGTex_WIDTH, gFileSelOptionsButtonENGTex_HEIGHT, 16)];
#define gFileSelOptionsButtonGERTex_WIDTH 64
#define gFileSelOptionsButtonGERTex_HEIGHT 16
extern u64 gFileSelOptionsButtonGERTex[TEX_LEN(u64, gFileSelOptionsButtonGERTex_WIDTH, gFileSelOptionsButtonGERTex_HEIGHT, 16)];
// french uses the english texture

#endif /* TITLE_STATIC_PAL_GC_H */
