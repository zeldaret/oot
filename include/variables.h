#ifndef VARIABLES_H
#define VARIABLES_H

#include "z64.h"
#include "libc64/os_malloc.h"
#include "segment_symbols.h"

extern Mtx D_01000000;

extern void* osRomBase;
extern s32 osTvType;
extern u32 osRomType;
extern u32 osVersion;
extern s32 osResetType;
extern s32 osCicId;
extern u32 osMemSize;
extern u8 osAppNMIBuffer[0x40];

extern u32 __osBbIsBb;
extern u32 __osBbEepromSize;
extern u32 __osBbPakSize;
extern u32 __osBbFlashSize;
extern u32 __osBbEepromAddress;
extern u32 __osBbPakAddress[4];
extern u32 __osBbFlashAddress;
extern u32 __osBbSramSize;
extern u32 __osBbSramAddress;
extern u32 __osBbHackFlags;

extern s8 D_80009430;
extern vu8 gViConfigBlack;
extern u8 gViConfigAdditionalScanLines;
extern u32 gViConfigFeatures;
extern f32 gViConfigXScale;
extern f32 gViConfigYScale;
extern OSPiHandle* gCartHandle;
extern s32 gCurrentRegion;
extern u32 __osPiAccessQueueEnabled;
extern OSViMode osViModePalLan1;
extern s32 osViClock;
extern u32 __osShutdown;
extern OSHWIntr __OSGlobalIntMask;
extern __OSThreadTail __osThreadTail;
extern OSThread* __osRunQueue;
extern OSThread* __osActiveQueue;
extern OSThread* __osRunningThread;
extern OSThread* __osFaultedThread;
extern OSPiHandle* __osPiTable;
extern OSPiHandle* __osCurrentHandle[];
extern OSTimer* __osTimerList;
extern OSViMode osViModeNtscLan1;
extern OSViMode osViModeMpalLan1;
extern OSViContext* __osViCurr;
extern OSViContext* __osViNext;
extern OSViMode osViModeFpalLan1;
extern u32 __additional_scanline;
extern const char gBuildCreator[];
extern const char gBuildDate[];
extern const char gBuildMakeOption[];
extern OSMesgQueue gPiMgrCmdQueue;
extern OSViMode gViConfigMode;
extern u8 gViConfigModeType;
extern OSMesgQueue __osPiAccessQueue;
extern OSPiHandle __Dom1SpeedParam;
extern OSPiHandle __Dom2SpeedParam;
extern OSTime __osCurrentTime;
extern u32 __osBaseCounter;
extern u32 __osViIntrCount;
extern u32 __osTimerCounter;
extern EffectSsOverlay gEffectSsOverlayTable[EFFECT_SS_TYPE_MAX];
extern Gfx D_80116280[];
extern ActorOverlay gActorOverlayTable[ACTOR_ID_MAX]; // original name: "actor_dlftbls" 801162A0
extern s32 gMaxActorId; // original name: "MaxProfile"
extern s32 gDebugCamEnabled;
extern GameStateOverlay gGameStateOverlayTable[GAMESTATE_ID_MAX];
extern s32 gZeldaArenaLogSeverity;
extern MapData gMapDataTable;
extern s16 gSpoilingItems[3];
extern s16 gSpoilingItemReverts[3];

extern Gfx gEmptyDL[];

extern u16 gSramSlotOffsets[];
// 4 16-colors palettes
extern u64 gMojiFontTLUTs[4][4]; // original name: "moji_tlut"
extern u64 gMojiFontTex[]; // original name: "font_ff"
extern u8 gBossMarkState;

#if DEBUG_FEATURES
extern u32 gIsCtrlr2Valid;
#endif
extern s16* gWaveSamples[9];
extern f32 gBendPitchOneOctaveFrequencies[256];
extern f32 gBendPitchTwoSemitonesFrequencies[256];
extern f32 gPitchFrequencies[];
extern u8 gDefaultShortNoteVelocityTable[16];
extern u8 gDefaultShortNoteGateTimeTable[16];
extern EnvelopePoint gDefaultEnvelope[4];
extern NoteSubEu gZeroNoteSub;
extern NoteSubEu gDefaultNoteSub;
extern u16 gHaasEffectDelaySizes[64];
extern s16 D_8012FBA8[];
extern f32 gHeadsetPanVolume[128];
extern f32 gStereoPanVolume[128];
extern f32 gDefaultPanVolume[128];
extern s16 gLowPassFilterData[16 * 8];
extern s16 gHighPassFilterData[15 * 8];
extern s32 gAudioContextInitialized;
extern u8 gIsLargeSfxBank[7];
extern u8 gChannelsPerBank[4][7];
extern u8 gUsedChannelsPerBank[4][7];
extern u8 gMorphaTransposeTable[16];
extern u8* gFrogsSongPtr;
extern OcarinaNote* gScarecrowLongSongPtr;
extern u8* gScarecrowSpawnSongPtr;
extern OcarinaSongButtons gOcarinaSongButtons[];
extern SfxParams* gSfxParams[7];
extern char D_80133390[];
extern char D_80133398[];
extern u8 gSfxRequestWriteIndex;
extern u8 gSfxRequestReadIndex;
extern SfxBankEntry* gSfxBanks[7];
extern u8 gSfxBankSizes[];
extern u8 gSfxChannelLayout;
extern u16 D_801333D0;
extern Vec3f gSfxDefaultPos;
extern f32 gSfxDefaultFreqAndVolScale;
extern s8 gSfxDefaultReverb;
#if DEBUG_FEATURES
extern u8 D_801333F0;
extern u8 gAudioSfxSwapOff;
extern u8 D_801333F8;
#endif
extern u8 gSeqCmdWritePos;
extern u8 gSeqCmdReadPos;
extern u8 gStartSeqDisabled;
#if DEBUG_FEATURES
extern u8 gAudioDebugPrintSeqCmd;
#endif
extern u8 gSoundModeList[];
extern u8 gAudioSpecId;
extern u8 D_80133418;
extern AudioSpec gAudioSpecs[18];
extern s32 gOverlayLogSeverity;
extern s32 gSystemArenaLogSeverity;
extern u8 __osPfsInodeCacheBank;
extern s32 __osPfsLastChannel;

extern TempoData gTempoData;
extern AudioHeapInitSizes gAudioHeapInitSizes;
extern s16 gOcarinaSongItemMap[];
extern AudioTable gSoundFontTable;
extern u8 gSequenceFontTable[];
extern u8 gSequenceTable[];
extern AudioTable gSampleBankTable;

extern u8 gUseCutsceneCam;
extern u16 D_8015FCCC;
extern char D_8015FCD0[20];
extern u8 D_8015FCE4;
extern u16 gCamAtSplinePointsAppliedFrame;
extern u16 gCamEyePointAppliedFrame;
extern u16 gCamAtPointAppliedFrame;

extern LightningStrike gLightningStrike;
// TODO: These variables are here for BSS ordering but ideally they should not
// be extern. This could be fixed by putting more stuff (e.g. struct definitions)
// between gLightningStrike and gCustomLensFlareOn.
extern s16 sLightningFlashAlpha;
extern s16 sSunDepthTestX;
extern s16 sSunDepthTestY;
extern u8 gCustomLensFlareOn;
extern Vec3f gCustomLensFlarePos;
extern s16 gLensFlareScale;
extern f32 gLensFlareColorIntensity;
extern s16 gLensFlareGlareStrength;
extern MapData* gMapData;
extern f32 gBossMarkScale;
extern u32 D_8016139C;
extern PauseMapMarksData* gLoadedPauseMarkDataTable;

extern PreNmiBuff* gAppNmiBufferPtr;
extern Scheduler gScheduler;
extern PadMgr gPadMgr;
extern IrqMgr gIrqMgr;
extern volatile OSTime gAudioThreadUpdateTimeTotalPerGfxTask;
extern volatile OSTime gGfxTaskSentToNextReadyMinusAudioThreadUpdateTime;
extern volatile OSTime gRSPAudioTimeTotal;
extern volatile OSTime gRSPGfxTimeTotal;
extern volatile OSTime gRDPTimeTotal;
extern volatile OSTime gGraphUpdatePeriod;
extern volatile OSTime gAudioThreadUpdateTimeStart;
extern volatile OSTime gAudioThreadUpdateTimeAcc;
extern volatile OSTime gRSPAudioTimeAcc;
extern volatile OSTime gRSPGfxTimeAcc;
extern volatile OSTime gRSPOtherTimeAcc;
extern volatile OSTime D_8016A578;
extern volatile OSTime gRDPTimeAcc;

extern SfxBankEntry D_8016BAD0[9];
extern SfxBankEntry D_8016BC80[12];
extern SfxBankEntry D_8016BEC0[22];
extern SfxBankEntry D_8016C2E0[20];
extern SfxBankEntry D_8016C6A0[8];
extern SfxBankEntry D_8016C820[3];
extern SfxBankEntry D_8016C8B0[5];
extern ActiveSfx gActiveSfx[7][MAX_CHANNELS_PER_BANK]; // total size = 0xA8
extern u8 gSfxBankMuted[];
extern u16 gAudioSfxSwapSource[10];
extern u16 gAudioSfxSwapTarget[10];
extern u8 gAudioSfxSwapMode[10];
extern ActiveSequence gActiveSeqs[4];
extern AudioContext gAudioCtx;
extern AudioCustomUpdateFunction gAudioCustomUpdateFunction;

extern OSPifRam __osContPifRam;
extern u8 __osContLastCmd;
extern u8 __osMaxControllers;
extern __OSInode __osPfsInodeCache;
extern OSPifRam __osPfsPifRam;
extern u16 gZBuffer[SCREEN_HEIGHT][SCREEN_WIDTH]; // 0x25800 bytes
extern u64 gGfxSPTaskOutputBuffer[0x3000]; // 0x18000 bytes
extern u64 gGfxSPTaskYieldBuffer[OS_YIELD_DATA_SIZE / sizeof(u64)]; // 0xC00 bytes
extern u64 gGfxSPTaskStack[SP_DRAM_STACK_SIZE64]; // 0x400 bytes
extern GfxPool gGfxPools[2]; // 0x24820 bytes
extern u8 gAudioHeap[0x38000]; // 0x38000 bytes

#endif
