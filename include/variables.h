#ifndef VARIABLES_H
#define VARIABLES_H

#include "z64.h"
#include "libc64/os_malloc.h"
#include "segment_symbols.h"

struct MapData;

extern OSPiHandle* gCartHandle;

extern const char gBuildCreator[];
extern const char gBuildDate[];
extern const char gBuildMakeOption[];

extern OSMesgQueue gPiMgrCmdQueue;
extern OSViMode gViConfigMode;
extern u8 gViConfigModeType;

extern s16 gSpoilingItems[3];
extern s16 gSpoilingItemReverts[3];

// 4 16-colors palettes
extern u64 gMojiFontTLUTs[4][4]; // original name: "moji_tlut"
extern u64 gMojiFontTex[]; // original name: "font_ff"

extern struct MapData* gMapData;
extern u8 gBossMarkState;
extern f32 gBossMarkScale;
extern u32 D_8016139C;
extern PauseMapMarksData* gLoadedPauseMarkDataTable;

#endif
