#ifndef VARIABLES_H
#define VARIABLES_H

#include "z64.h"
#include "segment_symbols.h"

extern Mtx D_01000000;
extern Gfx D_06025218[];
extern Gfx D_060252D8[];
extern Gfx D_06025438[];
extern Gfx D_06025598[];
extern Gfx D_06025658[];
extern Gfx D_060257B8[];
extern Gfx D_0602A738[];
extern Gfx D_0602CB48[];

//extern ? D_80000004;
//extern ? D_80000008;
//extern ? D_8000000C;
//extern ? D_80000010;
//extern ? D_80000020;

extern u32 osTvType;
extern u32 osRomBase;
extern u32 osResetType;
extern u32 osMemSize;
extern u8 osAppNmiBuffer[];

extern u8 D_80009320[];
extern u8 D_800093F0[];
extern s8 D_80009430;
extern u32 D_80009460;
extern u32 gDmaMgrDmaBuffSize;
extern vu8 gViConfigUseDefault;
extern u8 gViConfigAdditionalScanLines;
extern u32 gViConfigFeatures;
extern f32 gViConfigXScale;
extern f32 gViConfigYScale;
extern OSPiHandle* gCartHandle;
extern u32 gCurrentRegion;
extern u32 __osPiAccessQueueEnabled;
extern OSViMode osViModePalLan1;
extern u64 osClockRate;
extern s32 osViClock;
extern u32 __osShutdown;
extern u32 __OSGlobalIntMask;
extern OSThread* __osThreadTail[];
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
extern u8 gBuildTeam[];
extern u8 gBuildDate[];
extern u8 gBuildMakeOption[];
extern OSMesgQueue gPiMgrCmdQ;
extern OSViMode gViConfigMode;
extern u8 D_80013960;
extern OSMesg piAccessBuf;
extern OSMesgQueue __osPiAccessQueue;
extern OSPiHandle __Dom1SpeedParam;
extern OSPiHandle __Dom2SpeedParam;
extern OSThread __osThreadSave;
extern OSTimer __osBaseTimer;
extern OSTime __osCurrentTime;
extern u32 __osBaseCounter;
extern u32 __osViIntrCount;
extern u32 __osTimerCounter;
extern OSPiHandle __CartRomHandle;
extern DmaEntry gDmaDataTable[0x60C];
//extern ? D_800D7288;
extern u64 D_801120C0[];
extern u8 D_80113070[];
extern u64 gJpegUCode[];
//extern ? D_80115440;
//extern ? D_80115760;
//extern ? D_80115770;
//extern ? D_8011578C;
//extern ? D_8011579C;
//extern ? D_801157AC;
//extern ? D_801157BC;
//extern ? D_801157CC;
//extern ? D_801157DC;
//extern ? D_801157EC;
//extern ? D_801157FC;
//extern ? D_801158C0;
//extern ? D_801158CC;
//extern ? D_801158D0;
//extern ? D_801158D4;
//extern ? D_801158D8;
//extern ? D_801158DC;
//extern ? D_801158E0;
//extern ? D_801158E4;
//extern ? D_801158E8;
//extern ? D_801158EC;
//extern ? D_801158F0;
//extern ? D_801158F4;
//extern ? D_801158F8;
//extern ? D_801158FC;
//extern ? D_80115908;
//extern ? D_80115914;
//extern ? D_80115920;
//extern ? D_8011592C;
//extern ? D_801159A4;
//extern ? D_801159A5;
//extern ? D_801159A6;
//extern ? D_801159A8;
//extern ? D_801159A9;
//extern ? D_801159AA;
extern EffectSsOverlay gEffectSsOverlayTable[EFFECT_SS_TYPE_MAX];
extern Gfx D_80116280[];
extern ActorOverlay gActorOverlayTable[ACTOR_ID_MAX]; // original name: "actor_dlftbls" 801162A0
extern s32 gMaxActorId; // original name: "MaxProfile"
//extern ? D_80119E2C;
//extern ? D_80119E52;
//extern ? D_80119E54;
//extern ? D_80119E94;
//extern ? D_80119EAC;
extern s32 gDbgCamEnabled;
//extern ? D_8011DB20;
//extern ? D_8011DE00;
//extern ? D_8011DE18;
//extern ? D_8011DE20;
//extern ? D_8011DE2C;
//extern ? D_8011DE54;
//extern ? D_8011DE6C;
//extern ? D_8011DE78;
//extern ? D_8011DEAC;
//extern ? D_8011DEEC;
//extern ? D_8011DF5C;
//extern ? D_8011DF6C;
//extern ? D_8011DFAC;
//extern ? D_8011DFEC;
//extern ? D_8011E008;
//extern ? D_8011E028;
//extern ? D_8011E02A;
//extern ? D_8011E02C;
//extern ? D_8011E02E;
//extern ? D_8011E056;
//extern ? D_8011E058;
//extern ? D_8011E05A;
//extern ? D_8011E068;
//extern ? D_8011E06A;
//extern ? D_8011E06C;
//extern ? D_8011E06E;
//extern ? D_8011E096;
//extern ? D_8011E098;
//extern ? D_8011E09A;
extern s16 D_8011E0B0;
//extern ? D_8011E0D4;
extern GameStateOverlay gGameStateOverlayTable[6];
extern u8 gWeatherMode;
extern u8 D_8011FB34;
extern u8 D_8011FB38;
extern u8 gSkyboxBlendingEnabled;
extern u16 gTimeIncrement;
extern struct_8011FC1C D_8011FC1C[][9];
extern SkyboxFile gSkyboxFiles[];
extern s32 gZeldaArenaLogSeverity;
extern MapData gMapDataTable;
extern s16 gSpoilingItems[3];
extern s16 gSpoilingItemReverts[3];
extern FlexSkeletonHeader* gPlayerSkelHeaders[2];
extern u8 gPlayerModelTypes[][5];
extern Gfx* D_80125D68[];
extern Gfx* D_80125DE8[];
extern Gfx* D_80125E08[];
extern Gfx* D_80125E18[];
extern Gfx* D_80125E58[];
extern Gfx* D_80125EF8[];
extern Gfx gCullBackDList[];
extern Gfx gCullFrontDList[];
extern Gfx gEmptyDL[];
extern u32 gBitFlags[32];
extern u16 gEquipMasks[4];
extern u16 gEquipNegMasks[4];
extern u32 gUpgradeMasks[8];
extern u32 gUpgradeNegMasks[8];
extern u8 gEquipShifts[4];
extern u8 gUpgradeShifts[8];
extern u16 gUpgradeCapacities[8][4];
extern u32 gGsFlagsMask[4];
extern u32 gGsFlagsShift[4];
extern void* gItemIcons[0x82];
extern u8 gItemSlots[56];
extern void (*gSceneCmdHandlers[26])(GlobalContext*, SceneCmd*);
extern s16 gLinkObjectIds[2];
extern u32 gObjectTableSize;
extern RomFile gObjectTable[OBJECT_ID_MAX];
extern EntranceInfo gEntranceTable[1556];
extern SceneTableEntry gSceneTable[SCENE_ID_MAX];
//extern ? D_8012A4A0;
extern u16 gSramSlotOffsets[];
//extern ? D_8012A690;
//extern ? D_8012A69C;
//extern ? D_8012A6A4;
//extern ? D_8012A704;
//extern ? D_8012A71C;
// 4 16-colors palettes
extern u64 gMojiFontTLUTs[4][4]; // original name: "moji_tlut"
extern u64 gMojiFontTex[]; // original name: "font_ff"
//extern ? D_8012AC90;
//extern ? D_8012ACA0;
//extern ? D_8012AD20;
//extern ? D_8012AD2C;
//extern ? D_8012AD40;
//extern ? D_8012ADC0;
//extern ? D_8012ADD8;
//extern ? D_8012AE18;
//extern ? D_8012AE24;
//extern ? D_8012AE30;
//extern ? D_8012AE3C;
//extern ? D_8012AEBC;
//extern ? D_8012AF0C;
//extern ? D_8012B000;
//extern ? D_8012B030;
//extern ? D_8012B060;
//extern ? D_8012BA90;
//extern ? D_8012BBA8;
//extern ? D_8012BFA8;
//extern ? D_8012C3A8;
//extern ? D_8012C7A8;
//extern ? D_8012CDC8;
//extern ? D_8012CEA0;
//extern ? D_8012CEE0;
//extern ? D_8012CEE4;
//extern ? D_8012CEE8;
//extern ? D_8012CEEC;
//extern ? D_8012CEF0;
//extern ? D_8012CEF4;
//extern ? D_8012CEF8;
//extern ? D_8012CF04;
//extern ? D_8012CF08;
//extern ? D_8012CF0C;
//extern ? D_8012CF10;
//extern ? D_8012CF14;
//extern ? D_8012CF18;
//extern ? D_8012CF24;
//extern ? D_8012CF30;
//extern ? D_8012CF34;
//extern ? D_8012CF38;
//extern ? D_8012CF3C;
//extern ? D_8012CF40;
//extern ? D_8012CF44;
//extern ? D_8012CF48;
//extern ? D_8012CF4C;
//extern ? D_8012CF50;
//extern ? D_8012CF60;
//extern ? D_8012CF64;
//extern ? D_8012CF68;
//extern ? D_8012CF6C;
//extern ? D_8012CF70;
//extern ? D_8012CF74;
//extern ? D_8012CF78;
//extern ? D_8012CF7C;
//extern ? D_8012CF80;
//extern ? D_8012CF84;
//extern ? D_8012CF88;
//extern ? D_8012CF94;
//extern ? D_8012CF98;
//extern ? D_8012CF9C;
//extern ? D_8012CFA4;
//extern ? D_8012CFA8;
//extern ? D_8012CFAC;
//extern ? D_8012CFB0;
//extern ? D_8012CFB4;
//extern ? D_8012CFC4;
//extern ? D_8012CFD0;
//extern ? D_8012CFE4;
//extern ? D_8012CFF8;
//extern ? D_8012D00C;
//extern ? D_8012D020;
//extern ? D_8012D034;
//extern ? D_8012D05C;
//extern ? D_8012D070;
//extern ? D_8012D084;
//extern ? D_8012D0AC;
//extern ? D_8012D0C0;
//extern ? D_8012D0D4;
//extern ? D_8012D0E4;
//extern ? D_8012D0F8;
//extern ? D_8012D103;
//extern ? D_8012D10C;
//extern ? D_8012D110;
//extern ? D_8012D114;
//extern ? D_8012D128;
//extern ? D_8012D13C;
//extern ? D_8012D14C;
//extern ? sDbCameraColors;
//extern ? D_8012D170;
//extern ? D_8012D172;
extern KaleidoMgrOverlay gKaleidoMgrOverlayTable[KALEIDO_OVL_MAX];
extern KaleidoMgrOverlay* gKaleidoMgrCurOvl;
extern u8 gBossMarkState;
extern void* D_8012D1F0;
//extern ? D_8012D200;
//extern ? D_8012D207;
//extern ? D_8012D210;
//extern ? D_8012D230;
//extern ? D_8012D248;
//extern ? D_8012D260;
//extern ? D_8012D264;
extern s32 gScreenWidth;
extern s32 gScreenHeight;
extern u32 gSystemHeapSize;
extern Mtx gMtxClear;
extern MtxF gMtxFClear;
extern u8 D_8012DBB0;
extern u32 D_8012DBC0;
extern vu32 gIrqMgrResetStatus;
extern volatile OSTime gIrqMgrRetraceTime;
extern s32 gDebugArenaLogSeverity;
//extern ? sUCodeDisasGeometryModes;
//extern ? sUCodeDisasMtxFlags;
//extern ? sUCodeDisasRenderModeFlags;
//extern ? D_8012DDDC;
//extern ? sUCodeDisasModeHMacros;
//extern ? sUCodeDisasModeLMacros;
extern s16* gWaveSamples[9];
extern f32 gBendPitchOneOctaveFrequencies[256];
extern f32 gBendPitchTwoSemitonesFrequencies[256];
extern f32 gNoteFrequencies[];
extern u8 gDefaultShortNoteVelocityTable[16];
extern u8 gDefaultShortNoteGateTimeTable[16];
extern AdsrEnvelope gDefaultEnvelope[4];
extern NoteSubEu gZeroNoteSub;
extern NoteSubEu gDefaultNoteSub;
extern u16 gHeadsetPanQuantization[64];
extern s16 D_8012FBA8[];
extern f32 gHeadsetPanVolume[128];
extern f32 gStereoPanVolume[128];
extern f32 gDefaultPanVolume[128];
extern s16 sLowPassFilterData[16*8];
extern s16 sHighPassFilterData[15*8];
extern s32 gAudioContextInitalized;
extern f32 D_80130510;
extern s32 D_80130514;
extern u8 D_80130520[];
extern u8 gIsLargeSoundBank[7];
extern u8 gChannelsPerBank[4][7];
extern u8 gUsedChannelsPerBank[4][7];
extern u8 gMorphaTransposeTable[16];
extern u8* gFrogsSongPtr;
extern OcarinaNote* gScarecrowLongSongPtr;
extern u8* gScarecrowSpawnSongPtr;
extern OcarinaSongButtons gOcarinaSongButtons[];
extern SoundParams* gSoundParams[7];
extern char D_80133390[];
extern char D_80133398[];
extern SoundBankEntry* gSoundBanks[7];
extern u8 sBankSizes[7];
extern u8 gSfxChannelLayout;
extern u16 D_801333D0;
extern Vec3f D_801333D4;
extern f32 D_801333E0;
extern s8 D_801333E8;
extern u8 D_801333F0;
extern u8 gAudioSfxSwapOff;
extern u8 D_801333F8;
//extern ? sSeqCmdWrPos;
//extern ? sSeqCmdRdPos;
extern u8 D_80133408;
extern u8 D_8013340C;
extern u8 gAudioSpecId;
extern u8 D_80133418;
extern AudioSpec gAudioSpecs[18];
extern s32 gOverlayLogSeverity;
//extern ? D_80134480;
//extern ? D_80134484;
extern s32 gSystemArenaLogSeverity;
//extern ? D_801344C0;
extern u32 gOSSiAccessQueueCreated; // = 0;
extern u32 gOSContInitialized; // = 0
extern s32 __osPfsInodeCacheChannel;
extern u8 __osPfsInodeCacheBank;
extern s32 __osPfsLastChannel;

extern const s16 D_8014A6C0[];
#define gTatumsPerBeat (D_8014A6C0[1])
extern const AudioContextInitSizes D_8014A6C4;
extern s16 gOcarinaSongItemMap[];
extern u8 gAudioBankTable[];
extern u8 D_80155340[];
extern u8 gSoundFontTable[];
extern u8 gSequenceFontTable[];
extern u8 gSequenceTable[];
extern u8 gSampleBankTable[];
extern u8 D_80155F50[];
extern u8 D_80157580[];
extern u8 D_801579A0[];
extern u64 gJpegUCodeData[];

//extern ? D_8015BC30;
//extern ? D_8015BC3C;
//extern ? D_8015BC48;
//extern ? D_8015BC58;
//extern ? D_8015BC64;
//extern ? D_8015BC70;
//extern ? D_8015BC80;
//extern ? D_8015BC8C;
//extern ? D_8015BC98;
//extern ? D_8015BCA8;
//extern ? D_8015BCB4;
//extern ? D_8015BCC0;
//extern ? D_8015BCD0;
//extern ? D_8015BCDC;
//extern ? D_8015BCE8;
//extern ? D_8015BCF8;
//extern ? D_8015BCFC;
//extern ? D_8015BD00;
//extern ? D_8015BD08;
//extern ? D_8015BD0A;
//extern ? D_8015BD0C;
//extern ? D_8015BD0E;
//extern ? D_8015BD10;
//extern ? D_8015BD34;
//extern ? D_8015BD38;
//extern ? D_8015BD3C;
//extern ? D_8015BD50;
//extern ? D_8015BD70;
//extern ? D_8015BD7C;
//extern ? D_8015BD80;
//extern ? D_8015BD84;
//extern ? D_8015BD90;
//extern ? D_8015BD9C;
//extern ? D_8015CE46;
//extern ? playerFloorPoly;
//extern ? D_8015CE58;
//extern ? D_8015CE80;
//extern ? D_8015CE8C;
//extern ? D_8015CEA0;
//extern ? D_8015CEA8;
//extern ? D_8015CEC0;
//extern ? D_8015CED0;
//extern ? D_8015CF00;
//extern ? D_8015CF10;
//extern ? D_8015CF12;
//extern ? D_8015CF14;
//extern ? D_8015D3A4;
//extern ? D_8015D3A8;
//extern ? D_8015D3CC;
//extern ? D_8015D3D0;
//extern ? D_8015D3D8;
//extern ? D_8015D3DA;
//extern ? D_8015D3DC;
//extern ? D_8015D86C;
//extern ? D_8015D870;
//extern ? D_8015D894;
//extern ? D_8015D898;
//extern ? D_8015D8A0;
//extern ? D_8015D8A2;
//extern ? D_8015D8A4;
//extern ? D_8015DD34;
//extern ? D_8015DD38;
//extern ? D_8015DD5C;
//extern ? D_8015DD60;
//extern ? D_8015DD68;
//extern ? D_8015DD6A;
//extern ? D_8015DD6C;
//extern ? D_8015E1FC;
//extern ? D_8015E200;
//extern ? D_8015E224;
//extern ? D_8015E228;
//extern ? D_8015E230;
//extern ? D_8015E268;
//extern ? D_8015E2A0;
//extern ? D_8015E2D8;
//extern ? D_8015E310;
//extern ? D_8015E320;
//extern ? D_8015E358;
//extern ? D_8015E390;
//extern ? D_8015E3A0;
//extern ? D_8015E3D8;
//extern ? D_8015E410;
//extern ? D_8015E420;
//extern ? D_8015E430;
//extern ? D_8015E440;
//extern ? D_8015E478;
//extern ? D_8015E4B0;
//extern ? D_8015E4C0;
//extern ? D_8015E4F8;
//extern ? D_8015E530;
//extern ? D_8015E564;
//extern ? D_8015E598;
//extern ? D_8015E5A8;
//extern ? D_8015E5DC;
//extern ? D_8015E610;
//extern ? D_8015E61C;
//extern ? D_8015E628;
//extern ? D_8015E638;
//extern ? D_8015E648;
extern SaveContext gSaveContext; // 0x8015E660
extern GameInfo* gGameInfo; // 0x8015FA90
extern u16 D_8015FCC0;
extern u16 D_8015FCC2;
extern u16 D_8015FCC4;
extern u8 D_8015FCC8;
extern u8 gCustomLensFlareOn;
extern Vec3f gCustomLensFlarePos;
extern s16 D_8015FD06;
extern f32 D_8015FD08;
extern s16 D_8015FD0C;
extern LightningStrike gLightningStrike;
//extern ? D_8015FDF8;
extern MapData* gMapData;
//extern ? D_80160020;
//extern ? D_801600C0;
extern u8 D_80161010;
extern u8 D_801610D4;
extern u8 D_801610D5;
extern u8 D_801610DA;
//extern ? D_80161118;
//extern ? D_8016111A;
//extern ? D_8016111C;
//extern ? D_80161120;
//extern ? D_8016112C;
//extern ? D_80161138;
//extern ? D_8016113C;
//extern ? D_80161160;
//extern ? D_8016116E;
//extern ? D_80161170;
//extern ? D_8016117E;
//extern ? D_80161180;
//extern ? D_80161240;
//extern ? D_801612D0;
//extern ? D_801612D2;
//extern ? D_801612EC;
extern f32 gBossMarkScale;
extern PauseMapMarksData* gLoadedPauseMarkDataTable;
extern s32 gTrnsnUnkState;
extern Color_RGBA8_u32 D_801614B0;
extern SpeedMeter gSpeedMeter;
//extern ? D_801664F0;
//extern ? D_80166500;
//extern ? D_80166510;
//extern ? D_80166528;
//extern ? D_801665B0;
//extern ? D_801665C0;
//extern ? D_801665D0;
//extern ? D_801665D4;
//extern ? D_801665D8;
//extern ? D_801665DC;
//extern ? D_801665E0;
//extern ? D_801665F0;
//extern ? D_80166648;
extern PreNmiBuff* gAppNmiBufferPtr;
extern SchedContext gSchedContext;
extern PadMgr gPadMgr;
//extern ? D_80166D28;
extern u32 gSegments[NUM_SEGMENTS];
extern volatile OSTime D_8016A520;
extern volatile OSTime D_8016A528;
extern volatile OSTime D_8016A530;
extern volatile OSTime D_8016A538;
extern volatile OSTime D_8016A540;
extern volatile OSTime D_8016A548;
extern volatile OSTime D_8016A550;
extern volatile OSTime D_8016A558;
extern volatile OSTime gRSPAudioTotalTime;
extern volatile OSTime gRSPGFXTotalTime;
extern volatile OSTime gRSPOtherTotalTime;
extern volatile OSTime gRDPTotalTime;
extern SpeedMeterTimeEntry* gSpeedMeterTimeEntryPtr;
//extern ? D_8016A590;
//extern ? D_8016A594;
//extern ? D_8016A598;
//extern ? D_8016A5A0;
//extern ? D_8016A5B8;
//extern ? D_8016A5C4;
//extern ? D_8016A5D0;
//extern ? D_8016A5E8;
//extern ? D_8016A5F8;
//extern ? D_8016A608;
//extern ? D_8016A618;
//extern ? D_8016A628;
//extern ? D_8016A638;
//extern ? D_8016A688;
//extern ? D_8016A698;
//extern ? D_8016A6A8;
//extern ? D_8016A6E8;
//extern ? D_8016A6F8;
//extern ? D_8016A704;
//extern ? D_8016A710;
//extern ? D_8016A720;
//extern ? D_8016A724;
//extern ? D_8016A728;
//extern ? D_8016A730;
//extern ? D_8016A732;
//extern ? D_8016A734;
//extern ? D_8016A736;
//extern ? D_8016A738;
//extern ? D_8016A73A;
//extern ? D_8016A73C;
//extern ? D_8016A73E;
//extern ? D_8016A740;
//extern ? D_8016A750;
//extern ? D_8016A794;
//extern ? D_8016A7AC;
extern FaultThreadStruct gFaultStruct;
extern ActiveSound gActiveSounds[7][MAX_CHANNELS_PER_BANK]; // total size = 0xA8
extern u8 gSoundBankMuted[];
extern u16 gAudioSfxSwapSource[10];
extern u16 gAudioSfxSwapTarget[10];
extern u8 gAudioSfxSwapMode[10];
//extern ? D_8016E320;
//extern ? D_8016E348;
extern unk_D_8016E750 D_8016E750[4];
//extern ? D_8016EE8B;
extern AudioContext gAudioContext; // at 0x8016F180
//extern ? D_80174D28;
//extern ? D_80174D38;
//extern ? D_80174D48;
//extern ? D_80174D64;
//extern ? D_80174D68;
//extern ? D_80174D88;
//extern ? D_80174DA0;
//extern ? D_80174DB8;
//extern ? D_80174DBC;
//extern ? D_80174DC0;
extern void(*D_801755D0)(void);
extern u32 __osMalloc_FreeBlockTest_Enable;
//extern ? D_80175640;
//extern ? D_80175670;
//extern ? D_80175680;
//extern ? D_80175688;
//extern ? D_80175690;
//extern ? D_80175698;
//extern ? D_8017569C;
//extern ? D_801756A0;
//extern ? D_801756A8;
extern Arena gSystemArena;
extern OSPifRam osPifBuffers[MAXCONTROLLERS];
extern OSMesg osSiMesgBuff[SIAccessQueueSize];
extern OSMesgQueue gOSSiMessageQueue;
extern OSPifRam __osPifInternalBuff;
extern u8 __osContLastPoll;
extern u8 __osMaxControllers;
extern OSMesgQueue __osContMesgQueue;
extern OSMesg __osContMesgBuff[4];
extern __OSInode __osPfsInodeCache;
extern OSPifRam gPifMempakBuf;
extern u16 gZBuffer[SCREEN_HEIGHT][SCREEN_WIDTH]; // 0x25800 bytes
extern u64 gGfxSPTaskOutputBuffer[0x3000]; // 0x18000 bytes
extern u8 gGfxSPTaskYieldBuffer[OS_YIELD_DATA_SIZE]; // 0xC00 bytes
extern u8 gGfxSPTaskStack[0x400]; // 0x400 bytes
extern GfxPool gGfxPools[2]; // 0x24820 bytes
extern u8 gAudioHeap[0x38000]; // 0x38000 bytes
extern u8 gSystemHeap[];

#endif
