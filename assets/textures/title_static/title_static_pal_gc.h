#ifndef TITLE_STATIC_PAL_GC_H
#define TITLE_STATIC_PAL_GC_H

#include "tex_len.h"
#include "ultra64.h"
#include "versions.h"

// Highlights
#define gFileSelBigButtonHighlightTex_WIDTH 72
#define gFileSelBigButtonHighlightTex_HEIGHT 24
extern u64 gFileSelBigButtonHighlightTex[TEX_LEN(u64, gFileSelBigButtonHighlightTex_WIDTH, gFileSelBigButtonHighlightTex_HEIGHT, 8)];
#define gFileSelCharHighlightTex_WIDTH 24
#define gFileSelCharHighlightTex_HEIGHT 24
extern u64 gFileSelCharHighlightTex[TEX_LEN(u64, gFileSelCharHighlightTex_WIDTH, gFileSelCharHighlightTex_HEIGHT, 8)];
#define gFileSelMediumButtonHighlightTex_WIDTH 56
#define gFileSelMediumButtonHighlightTex_HEIGHT 24
extern u64 gFileSelMediumButtonHighlightTex[TEX_LEN(u64, gFileSelMediumButtonHighlightTex_WIDTH, gFileSelMediumButtonHighlightTex_HEIGHT, 8)];
#define gFileSelSmallButtonHighlightTex_WIDTH 40
#define gFileSelSmallButtonHighlightTex_HEIGHT 24
extern u64 gFileSelSmallButtonHighlightTex[TEX_LEN(u64, gFileSelSmallButtonHighlightTex_WIDTH, gFileSelSmallButtonHighlightTex_HEIGHT, 8)];

// Stones & Medallions
#define gFileSelForestMedallionTex_WIDTH 16
#define gFileSelForestMedallionTex_HEIGHT 16
extern u64 gFileSelForestMedallionTex[TEX_LEN(u64, gFileSelForestMedallionTex_WIDTH, gFileSelForestMedallionTex_HEIGHT, 8)];
#define gFileSelFireMedallionTex_WIDTH 16
#define gFileSelFireMedallionTex_HEIGHT 16
extern u64 gFileSelFireMedallionTex[TEX_LEN(u64, gFileSelFireMedallionTex_WIDTH, gFileSelFireMedallionTex_HEIGHT, 8)];
#define gFileSelWaterMedallionTex_WIDTH 16
#define gFileSelWaterMedallionTex_HEIGHT 16
extern u64 gFileSelWaterMedallionTex[TEX_LEN(u64, gFileSelWaterMedallionTex_WIDTH, gFileSelWaterMedallionTex_HEIGHT, 8)];
#define gFileSelSpiritMedallionTex_WIDTH 16
#define gFileSelSpiritMedallionTex_HEIGHT 16
extern u64 gFileSelSpiritMedallionTex[TEX_LEN(u64, gFileSelSpiritMedallionTex_WIDTH, gFileSelSpiritMedallionTex_HEIGHT, 8)];
#define gFileSelShadowMedallionTex_WIDTH 16
#define gFileSelShadowMedallionTex_HEIGHT 16
extern u64 gFileSelShadowMedallionTex[TEX_LEN(u64, gFileSelShadowMedallionTex_WIDTH, gFileSelShadowMedallionTex_HEIGHT, 8)];
#define gFileSelLightMedallionTex_WIDTH 16
#define gFileSelLightMedallionTex_HEIGHT 16
extern u64 gFileSelLightMedallionTex[TEX_LEN(u64, gFileSelLightMedallionTex_WIDTH, gFileSelLightMedallionTex_HEIGHT, 8)];
#define gFileSelKokiriEmeraldTex_WIDTH 16
#define gFileSelKokiriEmeraldTex_HEIGHT 16
extern u64 gFileSelKokiriEmeraldTex[TEX_LEN(u64, gFileSelKokiriEmeraldTex_WIDTH, gFileSelKokiriEmeraldTex_HEIGHT, 32)];
#define gFileSelGoronRubyTex_WIDTH 16
#define gFileSelGoronRubyTex_HEIGHT 16
extern u64 gFileSelGoronRubyTex[TEX_LEN(u64, gFileSelGoronRubyTex_WIDTH, gFileSelGoronRubyTex_HEIGHT, 32)];
#define gFileSelZoraSapphireTex_WIDTH 16
#define gFileSelZoraSapphireTex_HEIGHT 16
extern u64 gFileSelZoraSapphireTex[TEX_LEN(u64, gFileSelZoraSapphireTex_WIDTH, gFileSelZoraSapphireTex_HEIGHT, 32)];

// Main window
#include "assets/textures/title_static/title_static_file_sel_window_tex.h"

// Character set select buttons
#define gFileSelKanjiButtonTex_WIDTH 28
#define gFileSelKanjiButtonTex_HEIGHT 16
extern u64 gFileSelKanjiButtonTex[TEX_LEN(u64, gFileSelKanjiButtonTex_WIDTH, gFileSelKanjiButtonTex_HEIGHT, 16)];
#define gFileSelHiraganaButtonTex_WIDTH 44
#define gFileSelHiraganaButtonTex_HEIGHT 16
extern u64 gFileSelHiraganaButtonTex[TEX_LEN(u64, gFileSelHiraganaButtonTex_WIDTH, gFileSelHiraganaButtonTex_HEIGHT, 16)];
#define gFileSelKatakanaButtonTex_WIDTH 44
#define gFileSelKatakanaButtonTex_HEIGHT 16
extern u64 gFileSelKatakanaButtonTex[TEX_LEN(u64, gFileSelKatakanaButtonTex_WIDTH, gFileSelKatakanaButtonTex_HEIGHT, 16)];

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

#if OOT_NTSC
#define gFileSelSaveXJPNTex_WIDTH 32
#define gFileSelSaveXJPNTex_HEIGHT 16
extern u64 gFileSelSaveXJPNTex[TEX_LEN(u64, gFileSelSaveXJPNTex_WIDTH, gFileSelSaveXJPNTex_HEIGHT, 4)];
#define gFileSelSaveXENGTex_WIDTH 32
#define gFileSelSaveXENGTex_HEIGHT 16
extern u64 gFileSelSaveXENGTex[TEX_LEN(u64, gFileSelSaveXENGTex_WIDTH, gFileSelSaveXENGTex_HEIGHT, 4)];
#else
#define gFileSelSaveXTex_WIDTH 32
#define gFileSelSaveXTex_HEIGHT 16
extern u64 gFileSelSaveXTex[TEX_LEN(u64, gFileSelSaveXTex_WIDTH, gFileSelSaveXTex_HEIGHT, 4)];
#endif

extern Gfx gFileSelWindow1DL[67];
extern Gfx gFileSelWindow2DL[66];
extern Gfx gFileSelWindow3DL[34];


// Language specific textures

// japanese uses the english texture
#define gFileSelENDButtonENGTex_WIDTH 44
#define gFileSelENDButtonENGTex_HEIGHT 16
extern u64 gFileSelENDButtonENGTex[TEX_LEN(u64, gFileSelENDButtonENGTex_WIDTH, gFileSelENDButtonENGTex_HEIGHT, 16)];
#if OOT_PAL
#define gFileSelENDButtonGERTex_WIDTH 44
#define gFileSelENDButtonGERTex_HEIGHT 16
extern u64 gFileSelENDButtonGERTex[TEX_LEN(u64, gFileSelENDButtonGERTex_WIDTH, gFileSelENDButtonGERTex_HEIGHT, 16)];
#define gFileSelENDButtonFRATex_WIDTH 44
#define gFileSelENDButtonFRATex_HEIGHT 16
extern u64 gFileSelENDButtonFRATex[TEX_LEN(u64, gFileSelENDButtonFRATex_WIDTH, gFileSelENDButtonFRATex_HEIGHT, 16)];
#endif

#if OOT_NTSC
#define gFileSelNoFileToCopyJPNTex_WIDTH 128
#define gFileSelNoFileToCopyJPNTex_HEIGHT 16
extern u64 gFileSelNoFileToCopyJPNTex[TEX_LEN(u64, gFileSelNoFileToCopyJPNTex_WIDTH, gFileSelNoFileToCopyJPNTex_HEIGHT, 8)];
#endif
#define gFileSelNoFileToCopyENGTex_WIDTH 128
#define gFileSelNoFileToCopyENGTex_HEIGHT 16
extern u64 gFileSelNoFileToCopyENGTex[TEX_LEN(u64, gFileSelNoFileToCopyENGTex_WIDTH, gFileSelNoFileToCopyENGTex_HEIGHT, 8)];
#if OOT_PAL
#define gFileSelNoFileToCopyGERTex_WIDTH 128
#define gFileSelNoFileToCopyGERTex_HEIGHT 16
extern u64 gFileSelNoFileToCopyGERTex[TEX_LEN(u64, gFileSelNoFileToCopyGERTex_WIDTH, gFileSelNoFileToCopyGERTex_HEIGHT, 8)];
#define gFileSelNoFileToCopyFRATex_WIDTH 128
#define gFileSelNoFileToCopyFRATex_HEIGHT 16
extern u64 gFileSelNoFileToCopyFRATex[TEX_LEN(u64, gFileSelNoFileToCopyFRATex_WIDTH, gFileSelNoFileToCopyFRATex_HEIGHT, 8)];
#endif

#if OOT_NTSC
#define gFileSelNoFileToEraseJPNTex_WIDTH 128
#define gFileSelNoFileToEraseJPNTex_HEIGHT 16
extern u64 gFileSelNoFileToEraseJPNTex[TEX_LEN(u64, gFileSelNoFileToEraseJPNTex_WIDTH, gFileSelNoFileToEraseJPNTex_HEIGHT, 8)];
#endif
#define gFileSelNoFileToEraseENGTex_WIDTH 128
#define gFileSelNoFileToEraseENGTex_HEIGHT 16
extern u64 gFileSelNoFileToEraseENGTex[TEX_LEN(u64, gFileSelNoFileToEraseENGTex_WIDTH, gFileSelNoFileToEraseENGTex_HEIGHT, 8)];
#if OOT_PAL
#define gFileSelNoFileToEraseGERTex_WIDTH 128
#define gFileSelNoFileToEraseGERTex_HEIGHT 16
extern u64 gFileSelNoFileToEraseGERTex[TEX_LEN(u64, gFileSelNoFileToEraseGERTex_WIDTH, gFileSelNoFileToEraseGERTex_HEIGHT, 8)];
#define gFileSelNoFileToEraseFRATex_WIDTH 128
#define gFileSelNoFileToEraseFRATex_HEIGHT 16
extern u64 gFileSelNoFileToEraseFRATex[TEX_LEN(u64, gFileSelNoFileToEraseFRATex_WIDTH, gFileSelNoFileToEraseFRATex_HEIGHT, 8)];
#endif

#if OOT_NTSC
#define gFileSelNoEmptyFileJPNTex_WIDTH 128
#define gFileSelNoEmptyFileJPNTex_HEIGHT 16
extern u64 gFileSelNoEmptyFileJPNTex[TEX_LEN(u64, gFileSelNoEmptyFileJPNTex_WIDTH, gFileSelNoEmptyFileJPNTex_HEIGHT, 8)];
#endif
#define gFileSelNoEmptyFileENGTex_WIDTH 128
#define gFileSelNoEmptyFileENGTex_HEIGHT 16
extern u64 gFileSelNoEmptyFileENGTex[TEX_LEN(u64, gFileSelNoEmptyFileENGTex_WIDTH, gFileSelNoEmptyFileENGTex_HEIGHT, 8)];
#if OOT_PAL
#define gFileSelNoEmptyFileGERTex_WIDTH 128
#define gFileSelNoEmptyFileGERTex_HEIGHT 16
extern u64 gFileSelNoEmptyFileGERTex[TEX_LEN(u64, gFileSelNoEmptyFileGERTex_WIDTH, gFileSelNoEmptyFileGERTex_HEIGHT, 8)];
#define gFileSelNoEmptyFileFRATex_WIDTH 128
#define gFileSelNoEmptyFileFRATex_HEIGHT 16
extern u64 gFileSelNoEmptyFileFRATex[TEX_LEN(u64, gFileSelNoEmptyFileFRATex_WIDTH, gFileSelNoEmptyFileFRATex_HEIGHT, 8)];
#endif

#if OOT_NTSC
#define gFileSelFileEmptyJPNTex_WIDTH 128
#define gFileSelFileEmptyJPNTex_HEIGHT 16
extern u64 gFileSelFileEmptyJPNTex[TEX_LEN(u64, gFileSelFileEmptyJPNTex_WIDTH, gFileSelFileEmptyJPNTex_HEIGHT, 8)];
#endif
#define gFileSelFileEmptyENGTex_WIDTH 128
#define gFileSelFileEmptyENGTex_HEIGHT 16
extern u64 gFileSelFileEmptyENGTex[TEX_LEN(u64, gFileSelFileEmptyENGTex_WIDTH, gFileSelFileEmptyENGTex_HEIGHT, 8)];
#if OOT_PAL
#define gFileSelFileEmptyGERTex_WIDTH 128
#define gFileSelFileEmptyGERTex_HEIGHT 16
extern u64 gFileSelFileEmptyGERTex[TEX_LEN(u64, gFileSelFileEmptyGERTex_WIDTH, gFileSelFileEmptyGERTex_HEIGHT, 8)];
#define gFileSelFileEmptyFRATex_WIDTH 128
#define gFileSelFileEmptyFRATex_HEIGHT 16
extern u64 gFileSelFileEmptyFRATex[TEX_LEN(u64, gFileSelFileEmptyFRATex_WIDTH, gFileSelFileEmptyFRATex_HEIGHT, 8)];
#endif

#if OOT_NTSC
#define gFileSelFileInUseJPNTex_WIDTH 128
#define gFileSelFileInUseJPNTex_HEIGHT 16
extern u64 gFileSelFileInUseJPNTex[TEX_LEN(u64, gFileSelFileInUseJPNTex_WIDTH, gFileSelFileInUseJPNTex_HEIGHT, 8)];
#endif
#define gFileSelFileInUseENGTex_WIDTH 128
#define gFileSelFileInUseENGTex_HEIGHT 16
extern u64 gFileSelFileInUseENGTex[TEX_LEN(u64, gFileSelFileInUseENGTex_WIDTH, gFileSelFileInUseENGTex_HEIGHT, 8)];
#if OOT_PAL
#define gFileSelFileInUseGERTex_WIDTH 128
#define gFileSelFileInUseGERTex_HEIGHT 16
extern u64 gFileSelFileInUseGERTex[TEX_LEN(u64, gFileSelFileInUseGERTex_WIDTH, gFileSelFileInUseGERTex_HEIGHT, 8)];
#define gFileSelFileInUseFRATex_WIDTH 128
#define gFileSelFileInUseFRATex_HEIGHT 16
extern u64 gFileSelFileInUseFRATex[TEX_LEN(u64, gFileSelFileInUseFRATex_WIDTH, gFileSelFileInUseFRATex_HEIGHT, 8)];
#endif

#if OOT_NTSC
#define gFileSelCopyWhichFileJPNTex_WIDTH 128
#define gFileSelCopyWhichFileJPNTex_HEIGHT 16
extern u64 gFileSelCopyWhichFileJPNTex[TEX_LEN(u64, gFileSelCopyWhichFileJPNTex_WIDTH, gFileSelCopyWhichFileJPNTex_HEIGHT, 8)];
#endif
#define gFileSelCopyWhichFileENGTex_WIDTH 128
#define gFileSelCopyWhichFileENGTex_HEIGHT 16
extern u64 gFileSelCopyWhichFileENGTex[TEX_LEN(u64, gFileSelCopyWhichFileENGTex_WIDTH, gFileSelCopyWhichFileENGTex_HEIGHT, 8)];
#if OOT_PAL
#define gFileSelCopyWhichFileGERTex_WIDTH 128
#define gFileSelCopyWhichFileGERTex_HEIGHT 16
extern u64 gFileSelCopyWhichFileGERTex[TEX_LEN(u64, gFileSelCopyWhichFileGERTex_WIDTH, gFileSelCopyWhichFileGERTex_HEIGHT, 8)];
#define gFileSelCopyWhichFileFRATex_WIDTH 128
#define gFileSelCopyWhichFileFRATex_HEIGHT 16
extern u64 gFileSelCopyWhichFileFRATex[TEX_LEN(u64, gFileSelCopyWhichFileFRATex_WIDTH, gFileSelCopyWhichFileFRATex_HEIGHT, 8)];
#endif

#if OOT_NTSC
#define gFileSelCopyToWhichFileJPNTex_WIDTH 128
#define gFileSelCopyToWhichFileJPNTex_HEIGHT 16
extern u64 gFileSelCopyToWhichFileJPNTex[TEX_LEN(u64, gFileSelCopyToWhichFileJPNTex_WIDTH, gFileSelCopyToWhichFileJPNTex_HEIGHT, 8)];
#endif
#define gFileSelCopyToWhichFileENGTex_WIDTH 128
#define gFileSelCopyToWhichFileENGTex_HEIGHT 16
extern u64 gFileSelCopyToWhichFileENGTex[TEX_LEN(u64, gFileSelCopyToWhichFileENGTex_WIDTH, gFileSelCopyToWhichFileENGTex_HEIGHT, 8)];
#if OOT_PAL
#define gFileSelCopyToWhichFileGERTex_WIDTH 128
#define gFileSelCopyToWhichFileGERTex_HEIGHT 16
extern u64 gFileSelCopyToWhichFileGERTex[TEX_LEN(u64, gFileSelCopyToWhichFileGERTex_WIDTH, gFileSelCopyToWhichFileGERTex_HEIGHT, 8)];
#define gFileSelCopyToWhichFileFRATex_WIDTH 128
#define gFileSelCopyToWhichFileFRATex_HEIGHT 16
extern u64 gFileSelCopyToWhichFileFRATex[TEX_LEN(u64, gFileSelCopyToWhichFileFRATex_WIDTH, gFileSelCopyToWhichFileFRATex_HEIGHT, 8)];
#endif

#if OOT_NTSC
#define gFileSelAreYouSureJPNTex_WIDTH 128
#define gFileSelAreYouSureJPNTex_HEIGHT 16
extern u64 gFileSelAreYouSureJPNTex[TEX_LEN(u64, gFileSelAreYouSureJPNTex_WIDTH, gFileSelAreYouSureJPNTex_HEIGHT, 8)];
#endif
#define gFileSelAreYouSureENGTex_WIDTH 128
#define gFileSelAreYouSureENGTex_HEIGHT 16
extern u64 gFileSelAreYouSureENGTex[TEX_LEN(u64, gFileSelAreYouSureENGTex_WIDTH, gFileSelAreYouSureENGTex_HEIGHT, 8)];
#if OOT_PAL
#define gFileSelAreYouSureGERTex_WIDTH 128
#define gFileSelAreYouSureGERTex_HEIGHT 16
extern u64 gFileSelAreYouSureGERTex[TEX_LEN(u64, gFileSelAreYouSureGERTex_WIDTH, gFileSelAreYouSureGERTex_HEIGHT, 8)];
#define gFileSelAreYouSureFRATex_WIDTH 128
#define gFileSelAreYouSureFRATex_HEIGHT 16
extern u64 gFileSelAreYouSureFRATex[TEX_LEN(u64, gFileSelAreYouSureFRATex_WIDTH, gFileSelAreYouSureFRATex_HEIGHT, 8)];
#endif

#if OOT_NTSC
#define gFileSelFileCopiedJPNTex_WIDTH 128
#define gFileSelFileCopiedJPNTex_HEIGHT 16
extern u64 gFileSelFileCopiedJPNTex[TEX_LEN(u64, gFileSelFileCopiedJPNTex_WIDTH, gFileSelFileCopiedJPNTex_HEIGHT, 8)];
#endif
#define gFileSelFileCopiedENGTex_WIDTH 128
#define gFileSelFileCopiedENGTex_HEIGHT 16
extern u64 gFileSelFileCopiedENGTex[TEX_LEN(u64, gFileSelFileCopiedENGTex_WIDTH, gFileSelFileCopiedENGTex_HEIGHT, 8)];
#if OOT_PAL
#define gFileSelFileCopiedGERTex_WIDTH 128
#define gFileSelFileCopiedGERTex_HEIGHT 16
extern u64 gFileSelFileCopiedGERTex[TEX_LEN(u64, gFileSelFileCopiedGERTex_WIDTH, gFileSelFileCopiedGERTex_HEIGHT, 8)];
#define gFileSelFileCopiedFRATex_WIDTH 128
#define gFileSelFileCopiedFRATex_HEIGHT 16
extern u64 gFileSelFileCopiedFRATex[TEX_LEN(u64, gFileSelFileCopiedFRATex_WIDTH, gFileSelFileCopiedFRATex_HEIGHT, 8)];
#endif

#if OOT_NTSC
#define gFileSelPleaseSelectAFileJPNTex_WIDTH 128
#define gFileSelPleaseSelectAFileJPNTex_HEIGHT 16
extern u64 gFileSelPleaseSelectAFileJPNTex[TEX_LEN(u64, gFileSelPleaseSelectAFileJPNTex_WIDTH, gFileSelPleaseSelectAFileJPNTex_HEIGHT, 8)];
#endif
#define gFileSelPleaseSelectAFileENGTex_WIDTH 128
#define gFileSelPleaseSelectAFileENGTex_HEIGHT 16
extern u64 gFileSelPleaseSelectAFileENGTex[TEX_LEN(u64, gFileSelPleaseSelectAFileENGTex_WIDTH, gFileSelPleaseSelectAFileENGTex_HEIGHT, 8)];
#if OOT_PAL
#define gFileSelPleaseSelectAFileGERTex_WIDTH 128
#define gFileSelPleaseSelectAFileGERTex_HEIGHT 16
extern u64 gFileSelPleaseSelectAFileGERTex[TEX_LEN(u64, gFileSelPleaseSelectAFileGERTex_WIDTH, gFileSelPleaseSelectAFileGERTex_HEIGHT, 8)];
#define gFileSelPleaseSelectAFileFRATex_WIDTH 128
#define gFileSelPleaseSelectAFileFRATex_HEIGHT 16
extern u64 gFileSelPleaseSelectAFileFRATex[TEX_LEN(u64, gFileSelPleaseSelectAFileFRATex_WIDTH, gFileSelPleaseSelectAFileFRATex_HEIGHT, 8)];
#endif

#if OOT_NTSC
#define gFileSelOpenThisFileJPNTex_WIDTH 128
#define gFileSelOpenThisFileJPNTex_HEIGHT 16
extern u64 gFileSelOpenThisFileJPNTex[TEX_LEN(u64, gFileSelOpenThisFileJPNTex_WIDTH, gFileSelOpenThisFileJPNTex_HEIGHT, 8)];
#endif
#define gFileSelOpenThisFileENGTex_WIDTH 128
#define gFileSelOpenThisFileENGTex_HEIGHT 16
extern u64 gFileSelOpenThisFileENGTex[TEX_LEN(u64, gFileSelOpenThisFileENGTex_WIDTH, gFileSelOpenThisFileENGTex_HEIGHT, 8)];
#if OOT_PAL
#define gFileSelOpenThisFileGERTex_WIDTH 128
#define gFileSelOpenThisFileGERTex_HEIGHT 16
extern u64 gFileSelOpenThisFileGERTex[TEX_LEN(u64, gFileSelOpenThisFileGERTex_WIDTH, gFileSelOpenThisFileGERTex_HEIGHT, 8)];
#define gFileSelOpenThisFileFRATex_WIDTH 128
#define gFileSelOpenThisFileFRATex_HEIGHT 16
extern u64 gFileSelOpenThisFileFRATex[TEX_LEN(u64, gFileSelOpenThisFileFRATex_WIDTH, gFileSelOpenThisFileFRATex_HEIGHT, 8)];
#endif

#if OOT_NTSC
#define gFileSelEraseWhichFileJPNTex_WIDTH 128
#define gFileSelEraseWhichFileJPNTex_HEIGHT 16
extern u64 gFileSelEraseWhichFileJPNTex[TEX_LEN(u64, gFileSelEraseWhichFileJPNTex_WIDTH, gFileSelEraseWhichFileJPNTex_HEIGHT, 8)];
#endif
#define gFileSelEraseWhichFileENGTex_WIDTH 128
#define gFileSelEraseWhichFileENGTex_HEIGHT 16
extern u64 gFileSelEraseWhichFileENGTex[TEX_LEN(u64, gFileSelEraseWhichFileENGTex_WIDTH, gFileSelEraseWhichFileENGTex_HEIGHT, 8)];
#if OOT_PAL
#define gFileSelEraseWhichFileGERTex_WIDTH 128
#define gFileSelEraseWhichFileGERTex_HEIGHT 16
extern u64 gFileSelEraseWhichFileGERTex[TEX_LEN(u64, gFileSelEraseWhichFileGERTex_WIDTH, gFileSelEraseWhichFileGERTex_HEIGHT, 8)];
#define gFileSelEraseWhichFileFRATex_WIDTH 128
#define gFileSelEraseWhichFileFRATex_HEIGHT 16
extern u64 gFileSelEraseWhichFileFRATex[TEX_LEN(u64, gFileSelEraseWhichFileFRATex_WIDTH, gFileSelEraseWhichFileFRATex_HEIGHT, 8)];
#endif

#if OOT_NTSC
#define gFileSelAreYouSure2JPNTex_WIDTH 128
#define gFileSelAreYouSure2JPNTex_HEIGHT 16
extern u64 gFileSelAreYouSure2JPNTex[TEX_LEN(u64, gFileSelAreYouSure2JPNTex_WIDTH, gFileSelAreYouSure2JPNTex_HEIGHT, 8)];
#endif
#define gFileSelAreYouSure2ENGTex_WIDTH 128
#define gFileSelAreYouSure2ENGTex_HEIGHT 16
extern u64 gFileSelAreYouSure2ENGTex[TEX_LEN(u64, gFileSelAreYouSure2ENGTex_WIDTH, gFileSelAreYouSure2ENGTex_HEIGHT, 8)];
#if OOT_PAL
#define gFileSelAreYouSure2GERTex_WIDTH 128
#define gFileSelAreYouSure2GERTex_HEIGHT 16
extern u64 gFileSelAreYouSure2GERTex[TEX_LEN(u64, gFileSelAreYouSure2GERTex_WIDTH, gFileSelAreYouSure2GERTex_HEIGHT, 8)];
#define gFileSelAreYouSure2FRATex_WIDTH 128
#define gFileSelAreYouSure2FRATex_HEIGHT 16
extern u64 gFileSelAreYouSure2FRATex[TEX_LEN(u64, gFileSelAreYouSure2FRATex_WIDTH, gFileSelAreYouSure2FRATex_HEIGHT, 8)];
#endif

#if OOT_NTSC
#define gFileSelFileErasedJPNTex_WIDTH 128
#define gFileSelFileErasedJPNTex_HEIGHT 16
extern u64 gFileSelFileErasedJPNTex[TEX_LEN(u64, gFileSelFileErasedJPNTex_WIDTH, gFileSelFileErasedJPNTex_HEIGHT, 8)];
#endif
#define gFileSelFileErasedENGTex_WIDTH 128
#define gFileSelFileErasedENGTex_HEIGHT 16
extern u64 gFileSelFileErasedENGTex[TEX_LEN(u64, gFileSelFileErasedENGTex_WIDTH, gFileSelFileErasedENGTex_HEIGHT, 8)];
#if OOT_PAL
#define gFileSelFileErasedGERTex_WIDTH 128
#define gFileSelFileErasedGERTex_HEIGHT 16
extern u64 gFileSelFileErasedGERTex[TEX_LEN(u64, gFileSelFileErasedGERTex_WIDTH, gFileSelFileErasedGERTex_HEIGHT, 8)];
#define gFileSelFileErasedFRATex_WIDTH 128
#define gFileSelFileErasedFRATex_HEIGHT 16
extern u64 gFileSelFileErasedFRATex[TEX_LEN(u64, gFileSelFileErasedFRATex_WIDTH, gFileSelFileErasedFRATex_HEIGHT, 8)];
#endif

#if OOT_NTSC
#define gFileSelOptionsJPNTex_WIDTH 128
#define gFileSelOptionsJPNTex_HEIGHT 16
extern u64 gFileSelOptionsJPNTex[TEX_LEN(u64, gFileSelOptionsJPNTex_WIDTH, gFileSelOptionsJPNTex_HEIGHT, 8)];
#endif
#define gFileSelOptionsENGTex_WIDTH 128
#define gFileSelOptionsENGTex_HEIGHT 16
extern u64 gFileSelOptionsENGTex[TEX_LEN(u64, gFileSelOptionsENGTex_WIDTH, gFileSelOptionsENGTex_HEIGHT, 8)];
#if OOT_PAL
#define gFileSelOptionsGERTex_WIDTH 128
#define gFileSelOptionsGERTex_HEIGHT 16
extern u64 gFileSelOptionsGERTex[TEX_LEN(u64, gFileSelOptionsGERTex_WIDTH, gFileSelOptionsGERTex_HEIGHT, 8)];
// french uses the english texture
#endif

#if OOT_NTSC
#define gFileSelNameJPNTex_WIDTH 56
#define gFileSelNameJPNTex_HEIGHT 16
extern u64 gFileSelNameJPNTex[TEX_LEN(u64, gFileSelNameJPNTex_WIDTH, gFileSelNameJPNTex_HEIGHT, 8)];
#endif
#define gFileSelNameENGTex_WIDTH 56
#define gFileSelNameENGTex_HEIGHT 16
extern u64 gFileSelNameENGTex[TEX_LEN(u64, gFileSelNameENGTex_WIDTH, gFileSelNameENGTex_HEIGHT, 8)];
#if OOT_PAL
#define gFileSelNameGERTex_WIDTH 56
#define gFileSelNameGERTex_HEIGHT 16
extern u64 gFileSelNameGERTex[TEX_LEN(u64, gFileSelNameGERTex_WIDTH, gFileSelNameGERTex_HEIGHT, 8)];
#define gFileSelNameFRATex_WIDTH 56
#define gFileSelNameFRATex_HEIGHT 16
extern u64 gFileSelNameFRATex[TEX_LEN(u64, gFileSelNameFRATex_WIDTH, gFileSelNameFRATex_HEIGHT, 8)];
#endif

#if OOT_NTSC
#define gFileSelControlsJPNTex_WIDTH 144
#define gFileSelControlsJPNTex_HEIGHT 16
extern u64 gFileSelControlsJPNTex[TEX_LEN(u64, gFileSelControlsJPNTex_WIDTH, gFileSelControlsJPNTex_HEIGHT, 8)];
#endif
#define gFileSelControlsENGTex_WIDTH 144
#define gFileSelControlsENGTex_HEIGHT 16
extern u64 gFileSelControlsENGTex[TEX_LEN(u64, gFileSelControlsENGTex_WIDTH, gFileSelControlsENGTex_HEIGHT, 8)];
#if OOT_PAL
#define gFileSelControlsGERTex_WIDTH 144
#define gFileSelControlsGERTex_HEIGHT 16
extern u64 gFileSelControlsGERTex[TEX_LEN(u64, gFileSelControlsGERTex_WIDTH, gFileSelControlsGERTex_HEIGHT, 8)];
#define gFileSelControlsFRATex_WIDTH 144
#define gFileSelControlsFRATex_HEIGHT 16
extern u64 gFileSelControlsFRATex[TEX_LEN(u64, gFileSelControlsFRATex_WIDTH, gFileSelControlsFRATex_HEIGHT, 8)];
#endif

#if OOT_NTSC
#define gFileSelCopyButtonJPNTex_WIDTH 64
#define gFileSelCopyButtonJPNTex_HEIGHT 16
extern u64 gFileSelCopyButtonJPNTex[TEX_LEN(u64, gFileSelCopyButtonJPNTex_WIDTH, gFileSelCopyButtonJPNTex_HEIGHT, 16)];
#endif
#define gFileSelCopyButtonENGTex_WIDTH 64
#define gFileSelCopyButtonENGTex_HEIGHT 16
extern u64 gFileSelCopyButtonENGTex[TEX_LEN(u64, gFileSelCopyButtonENGTex_WIDTH, gFileSelCopyButtonENGTex_HEIGHT, 16)];
#if OOT_PAL
#define gFileSelCopyButtonGERTex_WIDTH 64
#define gFileSelCopyButtonGERTex_HEIGHT 16
extern u64 gFileSelCopyButtonGERTex[TEX_LEN(u64, gFileSelCopyButtonGERTex_WIDTH, gFileSelCopyButtonGERTex_HEIGHT, 16)];
#define gFileSelCopyButtonFRATex_WIDTH 64
#define gFileSelCopyButtonFRATex_HEIGHT 16
extern u64 gFileSelCopyButtonFRATex[TEX_LEN(u64, gFileSelCopyButtonFRATex_WIDTH, gFileSelCopyButtonFRATex_HEIGHT, 16)];
#endif

#if OOT_NTSC
#define gFileSelFile1ButtonJPNTex_WIDTH 64
#define gFileSelFile1ButtonJPNTex_HEIGHT 16
extern u64 gFileSelFile1ButtonJPNTex[TEX_LEN(u64, gFileSelFile1ButtonJPNTex_WIDTH, gFileSelFile1ButtonJPNTex_HEIGHT, 16)];
#endif
#define gFileSelFile1ButtonENGTex_WIDTH 64
#define gFileSelFile1ButtonENGTex_HEIGHT 16
extern u64 gFileSelFile1ButtonENGTex[TEX_LEN(u64, gFileSelFile1ButtonENGTex_WIDTH, gFileSelFile1ButtonENGTex_HEIGHT, 16)];
#if OOT_PAL
#define gFileSelFile1ButtonGERTex_WIDTH 64
#define gFileSelFile1ButtonGERTex_HEIGHT 16
extern u64 gFileSelFile1ButtonGERTex[TEX_LEN(u64, gFileSelFile1ButtonGERTex_WIDTH, gFileSelFile1ButtonGERTex_HEIGHT, 16)];
#define gFileSelFile1ButtonFRATex_WIDTH 64
#define gFileSelFile1ButtonFRATex_HEIGHT 16
extern u64 gFileSelFile1ButtonFRATex[TEX_LEN(u64, gFileSelFile1ButtonFRATex_WIDTH, gFileSelFile1ButtonFRATex_HEIGHT, 16)];
#endif

#if OOT_NTSC
#define gFileSelFile2ButtonJPNTex_WIDTH 64
#define gFileSelFile2ButtonJPNTex_HEIGHT 16
extern u64 gFileSelFile2ButtonJPNTex[TEX_LEN(u64, gFileSelFile2ButtonJPNTex_WIDTH, gFileSelFile2ButtonJPNTex_HEIGHT, 16)];
#endif
#define gFileSelFile2ButtonENGTex_WIDTH 64
#define gFileSelFile2ButtonENGTex_HEIGHT 16
extern u64 gFileSelFile2ButtonENGTex[TEX_LEN(u64, gFileSelFile2ButtonENGTex_WIDTH, gFileSelFile2ButtonENGTex_HEIGHT, 16)];
#if OOT_PAL
#define gFileSelFile2ButtonGERTex_WIDTH 64
#define gFileSelFile2ButtonGERTex_HEIGHT 16
extern u64 gFileSelFile2ButtonGERTex[TEX_LEN(u64, gFileSelFile2ButtonGERTex_WIDTH, gFileSelFile2ButtonGERTex_HEIGHT, 16)];
#define gFileSelFile2ButtonFRATex_WIDTH 64
#define gFileSelFile2ButtonFRATex_HEIGHT 16
extern u64 gFileSelFile2ButtonFRATex[TEX_LEN(u64, gFileSelFile2ButtonFRATex_WIDTH, gFileSelFile2ButtonFRATex_HEIGHT, 16)];
#endif

#if OOT_NTSC
#define gFileSelFile3ButtonJPNTex_WIDTH 64
#define gFileSelFile3ButtonJPNTex_HEIGHT 16
extern u64 gFileSelFile3ButtonJPNTex[TEX_LEN(u64, gFileSelFile3ButtonJPNTex_WIDTH, gFileSelFile3ButtonJPNTex_HEIGHT, 16)];
#endif
#define gFileSelFile3ButtonENGTex_WIDTH 64
#define gFileSelFile3ButtonENGTex_HEIGHT 16
extern u64 gFileSelFile3ButtonENGTex[TEX_LEN(u64, gFileSelFile3ButtonENGTex_WIDTH, gFileSelFile3ButtonENGTex_HEIGHT, 16)];
#if OOT_PAL
#define gFileSelFile3ButtonGERTex_WIDTH 64
#define gFileSelFile3ButtonGERTex_HEIGHT 16
extern u64 gFileSelFile3ButtonGERTex[TEX_LEN(u64, gFileSelFile3ButtonGERTex_WIDTH, gFileSelFile3ButtonGERTex_HEIGHT, 16)];
#define gFileSelFile3ButtonFRATex_WIDTH 64
#define gFileSelFile3ButtonFRATex_HEIGHT 16
extern u64 gFileSelFile3ButtonFRATex[TEX_LEN(u64, gFileSelFile3ButtonFRATex_WIDTH, gFileSelFile3ButtonFRATex_HEIGHT, 16)];
#endif

#if OOT_NTSC
#define gFileSelYesButtonJPNTex_WIDTH 64
#define gFileSelYesButtonJPNTex_HEIGHT 16
extern u64 gFileSelYesButtonJPNTex[TEX_LEN(u64, gFileSelYesButtonJPNTex_WIDTH, gFileSelYesButtonJPNTex_HEIGHT, 16)];
#endif
#define gFileSelYesButtonENGTex_WIDTH 64
#define gFileSelYesButtonENGTex_HEIGHT 16
extern u64 gFileSelYesButtonENGTex[TEX_LEN(u64, gFileSelYesButtonENGTex_WIDTH, gFileSelYesButtonENGTex_HEIGHT, 16)];
#if OOT_PAL
#define gFileSelYesButtonGERTex_WIDTH 64
#define gFileSelYesButtonGERTex_HEIGHT 16
extern u64 gFileSelYesButtonGERTex[TEX_LEN(u64, gFileSelYesButtonGERTex_WIDTH, gFileSelYesButtonGERTex_HEIGHT, 16)];
#define gFileSelYesButtonFRATex_WIDTH 64
#define gFileSelYesButtonFRATex_HEIGHT 16
extern u64 gFileSelYesButtonFRATex[TEX_LEN(u64, gFileSelYesButtonFRATex_WIDTH, gFileSelYesButtonFRATex_HEIGHT, 16)];
#endif

#if OOT_NTSC
#define gFileSelEraseButtonJPNTex_WIDTH 64
#define gFileSelEraseButtonJPNTex_HEIGHT 16
extern u64 gFileSelEraseButtonJPNTex[TEX_LEN(u64, gFileSelEraseButtonJPNTex_WIDTH, gFileSelEraseButtonJPNTex_HEIGHT, 16)];
#endif
#define gFileSelEraseButtonENGTex_WIDTH 64
#define gFileSelEraseButtonENGTex_HEIGHT 16
extern u64 gFileSelEraseButtonENGTex[TEX_LEN(u64, gFileSelEraseButtonENGTex_WIDTH, gFileSelEraseButtonENGTex_HEIGHT, 16)];
#if OOT_PAL
#define gFileSelEraseButtonGERTex_WIDTH 64
#define gFileSelEraseButtonGERTex_HEIGHT 16
extern u64 gFileSelEraseButtonGERTex[TEX_LEN(u64, gFileSelEraseButtonGERTex_WIDTH, gFileSelEraseButtonGERTex_HEIGHT, 16)];
#define gFileSelEraseButtonFRATex_WIDTH 64
#define gFileSelEraseButtonFRATex_HEIGHT 16
extern u64 gFileSelEraseButtonFRATex[TEX_LEN(u64, gFileSelEraseButtonFRATex_WIDTH, gFileSelEraseButtonFRATex_HEIGHT, 16)];
#endif

#if OOT_NTSC
#define gFileSelQuitButtonJPNTex_WIDTH 64
#define gFileSelQuitButtonJPNTex_HEIGHT 16
extern u64 gFileSelQuitButtonJPNTex[TEX_LEN(u64, gFileSelQuitButtonJPNTex_WIDTH, gFileSelQuitButtonJPNTex_HEIGHT, 16)];
#endif
#define gFileSelQuitButtonENGTex_WIDTH 64
#define gFileSelQuitButtonENGTex_HEIGHT 16
extern u64 gFileSelQuitButtonENGTex[TEX_LEN(u64, gFileSelQuitButtonENGTex_WIDTH, gFileSelQuitButtonENGTex_HEIGHT, 16)];
#if OOT_PAL
#define gFileSelQuitButtonGERTex_WIDTH 64
#define gFileSelQuitButtonGERTex_HEIGHT 16
extern u64 gFileSelQuitButtonGERTex[TEX_LEN(u64, gFileSelQuitButtonGERTex_WIDTH, gFileSelQuitButtonGERTex_HEIGHT, 16)];
#define gFileSelQuitButtonFRATex_WIDTH 64
#define gFileSelQuitButtonFRATex_HEIGHT 16
extern u64 gFileSelQuitButtonFRATex[TEX_LEN(u64, gFileSelQuitButtonFRATex_WIDTH, gFileSelQuitButtonFRATex_HEIGHT, 16)];
#endif

#if OOT_NTSC
#define gFileSelSurroundJPNTex_WIDTH 48
#define gFileSelSurroundJPNTex_HEIGHT 16
extern u64 gFileSelSurroundJPNTex[TEX_LEN(u64, gFileSelSurroundJPNTex_WIDTH, gFileSelSurroundJPNTex_HEIGHT, 8)];
#endif
#define gFileSelSurroundENGTex_WIDTH 48
#define gFileSelSurroundENGTex_HEIGHT 16
extern u64 gFileSelSurroundENGTex[TEX_LEN(u64, gFileSelSurroundENGTex_WIDTH, gFileSelSurroundENGTex_HEIGHT, 8)];
// both german & french use the english texture

#if OOT_NTSC
#define gFileSelHeadsetJPNTex_WIDTH 48
#define gFileSelHeadsetJPNTex_HEIGHT 16
extern u64 gFileSelHeadsetJPNTex[TEX_LEN(u64, gFileSelHeadsetJPNTex_WIDTH, gFileSelHeadsetJPNTex_HEIGHT, 8)];
#endif
#define gFileSelHeadsetENGTex_WIDTH 48
#define gFileSelHeadsetENGTex_HEIGHT 16
extern u64 gFileSelHeadsetENGTex[TEX_LEN(u64, gFileSelHeadsetENGTex_WIDTH, gFileSelHeadsetENGTex_HEIGHT, 8)];
#if OOT_PAL
#define gFileSelHeadsetGERTex_WIDTH 48
#define gFileSelHeadsetGERTex_HEIGHT 16
extern u64 gFileSelHeadsetGERTex[TEX_LEN(u64, gFileSelHeadsetGERTex_WIDTH, gFileSelHeadsetGERTex_HEIGHT, 8)];
#define gFileSelHeadsetFRATex_WIDTH 48
#define gFileSelHeadsetFRATex_HEIGHT 16
extern u64 gFileSelHeadsetFRATex[TEX_LEN(u64, gFileSelHeadsetFRATex_WIDTH, gFileSelHeadsetFRATex_HEIGHT, 8)];
#endif

#if OOT_NTSC
#define gFileSelMonoJPNTex_WIDTH 48
#define gFileSelMonoJPNTex_HEIGHT 16
extern u64 gFileSelMonoJPNTex[TEX_LEN(u64, gFileSelMonoJPNTex_WIDTH, gFileSelMonoJPNTex_HEIGHT, 8)];
#endif
#define gFileSelMonoENGTex_WIDTH 48
#define gFileSelMonoENGTex_HEIGHT 16
extern u64 gFileSelMonoENGTex[TEX_LEN(u64, gFileSelMonoENGTex_WIDTH, gFileSelMonoENGTex_HEIGHT, 8)];
// both german & french use the english texture

#if OOT_NTSC
#define gFileSelSOUNDENGTex_WIDTH 64
#define gFileSelSOUNDENGTex_HEIGHT 16
extern u64 gFileSelSOUNDENGTex[TEX_LEN(u64, gFileSelSOUNDENGTex_WIDTH, gFileSelSOUNDENGTex_HEIGHT, 8)];
#endif
#define gFileSelSOUNDENGTex_WIDTH 64
#define gFileSelSOUNDENGTex_HEIGHT 16
extern u64 gFileSelSOUNDENGTex[TEX_LEN(u64, gFileSelSOUNDENGTex_WIDTH, gFileSelSOUNDENGTex_HEIGHT, 8)];
#if OOT_PAL
// german uses the english texture
#define gFileSelSOUNDFRATex_WIDTH 64
#define gFileSelSOUNDFRATex_HEIGHT 16
extern u64 gFileSelSOUNDFRATex[TEX_LEN(u64, gFileSelSOUNDFRATex_WIDTH, gFileSelSOUNDFRATex_HEIGHT, 8)];
#endif

#if OOT_NTSC
#define gFileSelStereoJPNTex_WIDTH 48
#define gFileSelStereoJPNTex_HEIGHT 16
extern u64 gFileSelStereoJPNTex[TEX_LEN(u64, gFileSelStereoJPNTex_WIDTH, gFileSelStereoJPNTex_HEIGHT, 8)];
#endif
#define gFileSelStereoENGTex_WIDTH 48
#define gFileSelStereoENGTex_HEIGHT 16
extern u64 gFileSelStereoENGTex[TEX_LEN(u64, gFileSelStereoENGTex_WIDTH, gFileSelStereoENGTex_HEIGHT, 8)];
#if OOT_PAL
// german uses the english texture
#define gFileSelStereoFRATex_WIDTH 48
#define gFileSelStereoFRATex_HEIGHT 16
extern u64 gFileSelStereoFRATex[TEX_LEN(u64, gFileSelStereoFRATex_WIDTH, gFileSelStereoFRATex_HEIGHT, 8)];
#endif

#if OOT_NTSC
#define gFileSelZTargetingJPNTex_WIDTH 64
#define gFileSelZTargetingJPNTex_HEIGHT 16
extern u64 gFileSelZTargetingJPNTex[TEX_LEN(u64, gFileSelZTargetingJPNTex_WIDTH, gFileSelZTargetingJPNTex_HEIGHT, 8)];
#endif
#define gFileSelZTargetingENGTex_WIDTH 64
#define gFileSelZTargetingENGTex_HEIGHT 16
extern u64 gFileSelZTargetingENGTex[TEX_LEN(u64, gFileSelZTargetingENGTex_WIDTH, gFileSelZTargetingENGTex_HEIGHT, 8)];
#if OOT_PAL
#define gFileSelZTargetingGERTex_WIDTH 144
#define gFileSelZTargetingGERTex_HEIGHT 16
extern u64 gFileSelZTargetingGERTex[TEX_LEN(u64, gFileSelZTargetingGERTex_WIDTH, gFileSelZTargetingGERTex_HEIGHT, 8)];
#define gFileSelZTargetingFRATex_WIDTH 64
#define gFileSelZTargetingFRATex_HEIGHT 16
extern u64 gFileSelZTargetingFRATex[TEX_LEN(u64, gFileSelZTargetingFRATex_WIDTH, gFileSelZTargetingFRATex_HEIGHT, 8)];
#endif

#if OOT_NTSC
#define gFileSelSwitchJPNTex_WIDTH 48
#define gFileSelSwitchJPNTex_HEIGHT 16
extern u64 gFileSelSwitchJPNTex[TEX_LEN(u64, gFileSelSwitchJPNTex_WIDTH, gFileSelSwitchJPNTex_HEIGHT, 8)];
#endif
#define gFileSelSwitchENGTex_WIDTH 48
#define gFileSelSwitchENGTex_HEIGHT 16
extern u64 gFileSelSwitchENGTex[TEX_LEN(u64, gFileSelSwitchENGTex_WIDTH, gFileSelSwitchENGTex_HEIGHT, 8)];
#if OOT_PAL
#define gFileSelSwitchGERTex_WIDTH 80
#define gFileSelSwitchGERTex_HEIGHT 16
extern u64 gFileSelSwitchGERTex[TEX_LEN(u64, gFileSelSwitchGERTex_WIDTH, gFileSelSwitchGERTex_HEIGHT, 8)];
#define gFileSelSwitchFRATex_WIDTH 48
#define gFileSelSwitchFRATex_HEIGHT 16
extern u64 gFileSelSwitchFRATex[TEX_LEN(u64, gFileSelSwitchFRATex_WIDTH, gFileSelSwitchFRATex_HEIGHT, 8)];
#endif

#if OOT_NTSC
#define gFileSelHoldJPNTex_WIDTH 48
#define gFileSelHoldJPNTex_HEIGHT 16
extern u64 gFileSelHoldJPNTex[TEX_LEN(u64, gFileSelHoldJPNTex_WIDTH, gFileSelHoldJPNTex_HEIGHT, 8)];
#endif
#define gFileSelHoldENGTex_WIDTH 48
#define gFileSelHoldENGTex_HEIGHT 16
extern u64 gFileSelHoldENGTex[TEX_LEN(u64, gFileSelHoldENGTex_WIDTH, gFileSelHoldENGTex_HEIGHT, 8)];
#if OOT_PAL
#define gFileSelHoldGERTex_WIDTH 80
#define gFileSelHoldGERTex_HEIGHT 16
extern u64 gFileSelHoldGERTex[TEX_LEN(u64, gFileSelHoldGERTex_WIDTH, gFileSelHoldGERTex_HEIGHT, 8)];
#define gFileSelHoldFRATex_WIDTH 48
#define gFileSelHoldFRATex_HEIGHT 16
extern u64 gFileSelHoldFRATex[TEX_LEN(u64, gFileSelHoldFRATex_WIDTH, gFileSelHoldFRATex_HEIGHT, 8)];
#endif

#if OOT_NTSC
#define gFileSelCheckBrightnessJPNTex_WIDTH 96
#define gFileSelCheckBrightnessJPNTex_HEIGHT 16
extern u64 gFileSelCheckBrightnessJPNTex[TEX_LEN(u64, gFileSelCheckBrightnessJPNTex_WIDTH, gFileSelCheckBrightnessJPNTex_HEIGHT, 8)];
#endif
#define gFileSelCheckBrightnessENGTex_WIDTH 128
#define gFileSelCheckBrightnessENGTex_HEIGHT 16
extern u64 gFileSelCheckBrightnessENGTex[TEX_LEN(u64, gFileSelCheckBrightnessENGTex_WIDTH, gFileSelCheckBrightnessENGTex_HEIGHT, 8)];
#if OOT_PAL
#define gFileSelCheckBrightnessGERTex_WIDTH 128
#define gFileSelCheckBrightnessGERTex_HEIGHT 16
extern u64 gFileSelCheckBrightnessGERTex[TEX_LEN(u64, gFileSelCheckBrightnessGERTex_WIDTH, gFileSelCheckBrightnessGERTex_HEIGHT, 8)];
#define gFileSelCheckBrightnessFRATex_WIDTH 128
#define gFileSelCheckBrightnessFRATex_HEIGHT 16
extern u64 gFileSelCheckBrightnessFRATex[TEX_LEN(u64, gFileSelCheckBrightnessFRATex_WIDTH, gFileSelCheckBrightnessFRATex_HEIGHT, 8)];
#endif

#if OOT_NTSC
#define gFileSelOptionsButtonJPNTex_WIDTH 64
#define gFileSelOptionsButtonJPNTex_HEIGHT 16
extern u64 gFileSelOptionsButtonJPNTex[TEX_LEN(u64, gFileSelOptionsButtonJPNTex_WIDTH, gFileSelOptionsButtonJPNTex_HEIGHT, 16)];
#endif
#define gFileSelOptionsButtonENGTex_WIDTH 64
#define gFileSelOptionsButtonENGTex_HEIGHT 16
extern u64 gFileSelOptionsButtonENGTex[TEX_LEN(u64, gFileSelOptionsButtonENGTex_WIDTH, gFileSelOptionsButtonENGTex_HEIGHT, 16)];
#if OOT_PAL
#define gFileSelOptionsButtonGERTex_WIDTH 64
#define gFileSelOptionsButtonGERTex_HEIGHT 16
extern u64 gFileSelOptionsButtonGERTex[TEX_LEN(u64, gFileSelOptionsButtonGERTex_WIDTH, gFileSelOptionsButtonGERTex_HEIGHT, 16)];
// french uses the english texture
#endif

#endif /* TITLE_STATIC_PAL_GC_H */
