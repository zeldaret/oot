#ifndef FUNCTIONS_H
#define FUNCTIONS_H

#include "z64.h"
#include "macros.h"

void bootproc(void);
void Main_ThreadEntry(void* arg);
void Idle_ThreadEntry(void* arg);
void ViConfig_UpdateVi(u32 black);
void ViConfig_UpdateBlack(void);
void* Yaz0_FirstDMA(void);
void* Yaz0_NextDMA(u8* curSrcPos);
void Yaz0_DecompressImpl(u8* src, u8* dst);
void Yaz0_Decompress(uintptr_t romStart, u8* dst, size_t size);
void Locale_Init(void);
void Locale_ResetRegion(void);
#if OOT_DEBUG
void isPrintfInit(void);
#endif
void rmonPrintf(const char* fmt, ...);
#if OOT_DEBUG
void* is_proutSyncPrintf(void* arg, const char* str, size_t count);
NORETURN void func_80002384(const char* exp, const char* file, int line);
#endif
OSPiHandle* osDriveRomInit(void);
void Mio0_Decompress(u8* src, u8* dst);
#if OOT_DEBUG
void LogUtils_LogHexDump(void* ptr, s32 size0);
void LogUtils_CheckNullPointer(const char* exp, void* ptr, const char* file, int line);
void LogUtils_CheckValidPointer(const char* exp, void* ptr, const char* file, int line);
void LogUtils_LogThreadId(const char* name, int line);
#endif
void LogUtils_HungupThread(const char* name, int line);
void LogUtils_ResetHungup(void);
void __osPiCreateAccessQueue(void);
void __osPiGetAccess(void);
void __osPiRelAccess(void);
s32 osSendMesg(OSMesgQueue* mq, OSMesg msg, s32 flag);
void osStopThread(OSThread* thread);
void osViExtendVStart(u32 value);
s32 osRecvMesg(OSMesgQueue* mq, OSMesg* msg, s32 flag);
#if PLATFORM_N64
void osInitialize(void);
#else
#define osInitialize()           \
{                                \
    __osInitialize_common();     \
    __osInitialize_autodetect(); \
}
#endif
void __osInitialize_common(void);
void __osInitialize_autodetect(void);
void __osEnqueueAndYield(OSThread**);
void __osEnqueueThread(OSThread**, OSThread*);
OSThread* __osPopThread(OSThread**);
void __osDispatchThread(void);
void __osCleanupThread(void);
void __osDequeueThread(OSThread** queue, OSThread* thread);
void osDestroyThread(OSThread* thread);
void osCreateThread(OSThread* thread, OSId id, void (*entry)(void*), void* arg, void* sp, OSPri pri);
void __osSetSR(u32);
u32 __osGetSR(void);
void osWritebackDCache(void* vaddr, s32 nbytes);
void* osViGetNextFramebuffer(void);
void osCreatePiManager(OSPri pri, OSMesgQueue* cmdQueue, OSMesg* cmdBuf, s32 cmdMsgCnt);
void __osDevMgrMain(void* arg);
s32 __osPiRawStartDma(s32 dir, u32 cartAddr, void* dramAddr, size_t size);
u32 osVirtualToPhysical(void* vaddr);
void osViBlack(u8 active);
s32 __osSiRawReadIo(void* devAddr, u32* dst);
OSId osGetThreadId(OSThread* thread);
void osViSetMode(OSViMode* mode);
u32 __osProbeTLB(void*);
u32 osGetMemSize(void);
void osSetEventMesg(OSEvent e, OSMesgQueue* mq, OSMesg msg);
void osUnmapTLBAll(void);
s32 osEPiStartDma(OSPiHandle* handle, OSIoMesg* mb, s32 direction);
void osInvalICache(void* vaddr, s32 nbytes);
void osCreateMesgQueue(OSMesgQueue* mq, OSMesg* msg, s32 count);
void osInvalDCache(void* vaddr, s32 nbytes);
s32 __osSiDeviceBusy(void);
s32 osJamMesg(OSMesgQueue* mq, OSMesg msg, s32 flag);
void osSetThreadPri(OSThread* thread, OSPri pri);
OSPri osGetThreadPri(OSThread* thread);
s32 __osEPiRawReadIo(OSPiHandle* handle, u32 devAddr, u32* data);
void osViSwapBuffer(void* frameBufPtr);
s32 __osEPiRawStartDma(OSPiHandle* handle, s32 direction, u32 cartAddr, void* dramAddr, size_t size);
OSTime osGetTime(void);
void osSetTime(OSTime time);
void __osTimerServicesInit(void);
void __osTimerInterrupt(void);
void __osSetTimerIntr(OSTime time);
OSTime __osInsertTimer(OSTimer* timer);
u32 osGetCount(void);
void __osSetCompare(u32);
s32 __osDisableInt(void);
void __osRestoreInt(s32);
void __osViInit(void);
void __osViSwapContext(void);
OSMesgQueue* osPiGetCmdQueue(void);
s32 osEPiReadIo(OSPiHandle* handle, u32 devAddr, u32* data);
void osViSetSpecialFeatures(u32 func);
OSPiHandle* osCartRomInit(void);
void __osSetFpcCsr(u32);
u32 __osGetFpcCsr(void);
s32 osEPiWriteIo(OSPiHandle* handle, u32 devAddr, u32 data);
void osMapTLBRdb(void);
void osYieldThread(void);
u32 __osGetCause(void);
s32 __osEPiRawWriteIo(OSPiHandle* handle, u32 devAddr, u32 data);
s32 __osSiRawWriteIo(void* devAddr, u32 val);
void osCreateViManager(OSPri pri);
OSViContext* __osViGetCurrentContext(void);
void osStartThread(OSThread* thread);
void osViSetYScale(f32 scale);
void osViSetXScale(f32 value);
void __osSetWatchLo(u32);

EnItem00* Item_DropCollectible(PlayState* play, Vec3f* spawnPos, s16 params);
EnItem00* Item_DropCollectible2(PlayState* play, Vec3f* spawnPos, s16 params);
void Item_DropCollectibleRandom(PlayState* play, Actor* fromActor, Vec3f* spawnPos, s16 params);
void EffectBlure_AddVertex(EffectBlure* this, Vec3f* p1, Vec3f* p2);
void EffectBlure_AddSpace(EffectBlure* this);
void EffectBlure_Init1(void* thisx, void* initParamsx);
void EffectBlure_Init2(void* thisx, void* initParamsx);
void EffectBlure_Destroy(void* thisx);
s32 EffectBlure_Update(void* thisx);
void EffectBlure_Draw(void* thisx, GraphicsContext* gfxCtx);
void EffectShieldParticle_Init(void* thisx, void* initParamsx);
void EffectShieldParticle_Destroy(void* thisx);
s32 EffectShieldParticle_Update(void* thisx);
void EffectShieldParticle_Draw(void* thisx, GraphicsContext* gfxCtx);
void EffectSpark_Init(void* thisx, void* initParamsx);
void EffectSpark_Destroy(void* thisx);
s32 EffectSpark_Update(void* thisx);
void EffectSpark_Draw(void* thisx, GraphicsContext* gfxCtx);
void func_80026230(PlayState* play, Color_RGBA8* color, s16 arg2, s16 arg3);
void func_80026400(PlayState* play, Color_RGBA8* color, s16 arg2, s16 arg3);
void func_80026608(PlayState* play);
void func_80026690(PlayState* play, Color_RGBA8* color, s16 arg2, s16 arg3);
void func_80026860(PlayState* play, Color_RGBA8* color, s16 arg2, s16 arg3);
void func_80026A6C(PlayState* play);
PlayState* Effect_GetPlayState(void);
void* Effect_GetByIndex(s32 index);
void Effect_InitContext(PlayState* play);
void Effect_Add(PlayState* play, s32* pIndex, s32 type, u8 arg3, u8 arg4, void* initParams);
void Effect_DrawAll(GraphicsContext* gfxCtx);
void Effect_UpdateAll(PlayState* play);
void Effect_Delete(PlayState* play, s32 index);
void Effect_DeleteAll(PlayState* play);
void EffectSs_InitInfo(PlayState* play, s32 tableSize);
void EffectSs_ClearAll(PlayState* play);
void EffectSs_Delete(EffectSs* effectSs);
void EffectSs_Reset(EffectSs* effectSs);
void EffectSs_Insert(PlayState* play, EffectSs* effectSs);
void EffectSs_Spawn(PlayState* play, s32 type, s32 priority, void* initParams);
void EffectSs_UpdateAll(PlayState* play);
void EffectSs_DrawAll(PlayState* play);
s16 EffectSs_LerpInv(s16 a, s16 b, s32 weightInv);
s16 EffectSs_LerpS16(s16 a, s16 b, f32 weight);
u8 EffectSs_LerpU8(u8 a, u8 b, f32 weight);
void EffectSs_DrawGEffect(PlayState* play, EffectSs* this, void* texture);
void EffectSsDust_Spawn(PlayState* play, u16 drawFlags, Vec3f* pos, Vec3f* velocity, Vec3f* accel,
                        Color_RGBA8* primColor, Color_RGBA8* envColor, s16 scale, s16 scaleStep, s16 life,
                        u8 updateMode);
void func_8002829C(PlayState* play, Vec3f* pos, Vec3f* velocity, Vec3f* accel, Color_RGBA8* primColor,
                   Color_RGBA8* envColor, s16 scale, s16 scaleStep);
void func_80028304(PlayState* play, Vec3f* pos, Vec3f* velocity, Vec3f* accel, Color_RGBA8* primColor,
                   Color_RGBA8* envColor, s16 scale, s16 scaleStep);
void func_8002836C(PlayState* play, Vec3f* pos, Vec3f* velocity, Vec3f* accel, Color_RGBA8* primColor,
                   Color_RGBA8* envColor, s16 scale, s16 scaleStep, s16 life);
void func_800283D4(PlayState* play, Vec3f* pos, Vec3f* velocity, Vec3f* accel, Color_RGBA8* primColor,
                   Color_RGBA8* envColor, s16 scale, s16 scaleStep, s16 life);
void func_8002843C(PlayState* play, Vec3f* pos, Vec3f* velocity, Vec3f* accel, Color_RGBA8* primColor,
                   Color_RGBA8* envColor, s16 scale, s16 scaleStep, s16 life);
void func_800284A4(PlayState* play, Vec3f* pos, Vec3f* velocity, Vec3f* accel, Color_RGBA8* primColor,
                   Color_RGBA8* envColor, s16 scale, s16 scaleStep);
void func_80028510(PlayState* play, Vec3f* pos, Vec3f* velocity, Vec3f* accel, Color_RGBA8* primColor,
                   Color_RGBA8* envColor, s16 scale, s16 scaleStep);
void func_8002857C(PlayState* play, Vec3f* pos, Vec3f* velocity, Vec3f* accel);
void func_800285EC(PlayState* play, Vec3f* pos, Vec3f* velocity, Vec3f* accel);
void func_8002865C(PlayState* play, Vec3f* pos, Vec3f* velocity, Vec3f* accel, s16 scale, s16 scaleStep);
void func_800286CC(PlayState* play, Vec3f* pos, Vec3f* velocity, Vec3f* accel, s16 scale, s16 scaleStep);
void func_8002873C(PlayState* play, Vec3f* pos, Vec3f* velocity, Vec3f* accel, s16 scale, s16 scaleStep,
                   s16 life);
void func_800287AC(PlayState* play, Vec3f* pos, Vec3f* velocity, Vec3f* accel, s16 scale, s16 scaleStep,
                   s16 life);
void func_8002881C(PlayState* play, Vec3f* pos, Vec3f* velocity, Vec3f* accel, Color_RGBA8* primColor,
                   Color_RGBA8* envColor);
void func_80028858(PlayState* play, Vec3f* pos, Vec3f* velocity, Vec3f* accel, Color_RGBA8* primColor,
                   Color_RGBA8* envColor);
void func_80028990(PlayState* play, f32 randScale, Vec3f* srcPos);
void func_80028A54(PlayState* play, f32 randScale, Vec3f* srcPos);
void EffectSsKiraKira_SpawnSmallYellow(PlayState* play, Vec3f* pos, Vec3f* velocity, Vec3f* accel);
void EffectSsKiraKira_SpawnSmall(PlayState* play, Vec3f* pos, Vec3f* velocity, Vec3f* accel,
                                 Color_RGBA8* primColor, Color_RGBA8* envColor);
void EffectSsKiraKira_SpawnDispersed(PlayState* play, Vec3f* pos, Vec3f* velocity, Vec3f* accel,
                                     Color_RGBA8* primColor, Color_RGBA8* envColor, s16 scale, s32 life);
void EffectSsKiraKira_SpawnFocused(PlayState* play, Vec3f* pos, Vec3f* velocity, Vec3f* accel,
                                   Color_RGBA8* primColor, Color_RGBA8* envColor, s16 scale, s32 life);
void EffectSsBomb_Spawn(PlayState* play, Vec3f* pos, Vec3f* velocity, Vec3f* accel);
void EffectSsBomb2_SpawnFade(PlayState* play, Vec3f* pos, Vec3f* velocity, Vec3f* accel);
void EffectSsBomb2_SpawnLayered(PlayState* play, Vec3f* pos, Vec3f* velocity, Vec3f* accel, s16 scale,
                                s16 scaleStep);
void EffectSsBlast_Spawn(PlayState* play, Vec3f* pos, Vec3f* velocity, Vec3f* accel, Color_RGBA8* innerColor,
                         Color_RGBA8* outerColor, s16 scale, s16 scaleStep, s16 scaleStepDecay, s16 life);
void EffectSsBlast_SpawnWhiteShockwaveSetScale(PlayState* play, Vec3f* pos, Vec3f* velocity, Vec3f* accel, s16 scale,
                                         s16 scaleStep, s16 life);
void EffectSsBlast_SpawnShockwaveSetColor(PlayState* play, Vec3f* pos, Vec3f* velocity, Vec3f* accel,
                                          Color_RGBA8* innerColor, Color_RGBA8* outerColor, s16 life);
void EffectSsBlast_SpawnWhiteShockwave(PlayState* play, Vec3f* pos, Vec3f* velocity, Vec3f* accel);
void EffectSsGSpk_SpawnAccel(PlayState* play, Actor* actor, Vec3f* pos, Vec3f* velocity, Vec3f* accel,
                             Color_RGBA8* primColor, Color_RGBA8* envColor, s16 scale, s16 scaleStep);
void EffectSsGSpk_SpawnNoAccel(PlayState* play, Actor* actor, Vec3f* pos, Vec3f* velocity, Vec3f* accel,
                               Color_RGBA8* primColor, Color_RGBA8* envColor, s16 scale, s16 scaleStep);
void EffectSsGSpk_SpawnFuse(PlayState* play, Actor* actor, Vec3f* pos, Vec3f* velocity, Vec3f* accel);
void EffectSsGSpk_SpawnRandColor(PlayState* play, Actor* actor, Vec3f* pos, Vec3f* velocity, Vec3f* accel,
                                 s16 scale, s16 scaleStep);
void EffectSsGSpk_SpawnSmall(PlayState* play, Actor* actor, Vec3f* pos, Vec3f* velocity, Vec3f* accel,
                             Color_RGBA8* primColor, Color_RGBA8* envColor);
void EffectSsDFire_Spawn(PlayState* play, Vec3f* pos, Vec3f* velocity, Vec3f* accel, s16 scale, s16 scaleStep,
                         s16 alpha, s16 fadeDelay, s32 life);
void EffectSsDFire_SpawnFixedScale(PlayState* play, Vec3f* pos, Vec3f* velocity, Vec3f* accel, s16 alpha,
                                   s16 fadeDelay);
void EffectSsBubble_Spawn(PlayState* play, Vec3f* pos, f32 yPosOffset, f32 yPosRandScale, f32 xzPosRandScale,
                          f32 scale);
void EffectSsGRipple_Spawn(PlayState* play, Vec3f* pos, s16 radius, s16 radiusMax, s16 life);
void EffectSsGSplash_Spawn(PlayState* play, Vec3f* pos, Color_RGBA8* primColor, Color_RGBA8* envColor,
                           s16 type, s16 scale);
void EffectSsGMagma_Spawn(PlayState* play, Vec3f* pos);
void EffectSsGFire_Spawn(PlayState* play, Vec3f* pos);
void EffectSsLightning_Spawn(PlayState* play, Vec3f* pos, Color_RGBA8* primColor, Color_RGBA8* envColor,
                             s16 scale, s16 yaw, s16 life, s16 numBolts);
void EffectSsDtBubble_SpawnColorProfile(PlayState* play, Vec3f* pos, Vec3f* velocity, Vec3f* accel, s16 scale,
                                        s16 life, s16 colorProfile, s16 randXZ);
void EffectSsDtBubble_SpawnCustomColor(PlayState* play, Vec3f* pos, Vec3f* velocity, Vec3f* accel,
                                       Color_RGBA8* primColor, Color_RGBA8* envColor, s16 scale, s16 life, s16 randXZ);
void EffectSsHahen_Spawn(PlayState* play, Vec3f* pos, Vec3f* velocity, Vec3f* accel, s16 unused, s16 scale,
                         s16 objId, s16 life, Gfx* dList);
void EffectSsHahen_SpawnBurst(PlayState* play, Vec3f* pos, f32 burstScale, s16 unused, s16 scale,
                              s16 randScaleRange, s16 count, s16 objId, s16 life, Gfx* dList);
void EffectSsStick_Spawn(PlayState* play, Vec3f* pos, s16 yaw);
void EffectSsSibuki_Spawn(PlayState* play, Vec3f* pos, Vec3f* velocity, Vec3f* accel, s16 moveDelay,
                          s16 direction, s16 scale);
void EffectSsSibuki_SpawnBurst(PlayState* play, Vec3f* pos);
void EffectSsSibuki2_Spawn(PlayState* play, Vec3f* pos, Vec3f* velocity, Vec3f* accel, s16 scale);
void EffectSsGMagma2_Spawn(PlayState* play, Vec3f* pos, Color_RGBA8* primColor, Color_RGBA8* envColor,
                           s16 updateRate, s16 drawMode, s16 scale);
void EffectSsStone1_Spawn(PlayState* play, Vec3f* pos, s32 arg2);
void EffectSsHitMark_Spawn(PlayState* play, s32 type, s16 scale, Vec3f* pos);
void EffectSsHitMark_SpawnFixedScale(PlayState* play, s32 type, Vec3f* pos);
void EffectSsHitMark_SpawnCustomScale(PlayState* play, s32 type, s16 scale, Vec3f* pos);
void EffectSsFhgFlash_SpawnLightBall(PlayState* play, Vec3f* pos, Vec3f* velocity, Vec3f* accel, s16 scale,
                                     u8 param);
void EffectSsFhgFlash_SpawnShock(PlayState* play, Actor* actor, Vec3f* pos, s16 scale, u8 param);
void EffectSsKFire_Spawn(PlayState* play, Vec3f* pos, Vec3f* velocity, Vec3f* accel, s16 scaleMax, u8 type);
void EffectSsSolderSrchBall_Spawn(PlayState* play, Vec3f* pos, Vec3f* velocity, Vec3f* accel, s16 unused,
                                  s16* linkDetected);
void EffectSsKakera_Spawn(PlayState* play, Vec3f* pos, Vec3f* velocity, Vec3f* arg3, s16 gravity, s16 arg5,
                          s16 arg6, s16 arg7, s16 arg8, s16 scale, s16 arg10, s16 arg11, s32 life, s16 colorIdx,
                          s16 objId, Gfx* dList);
void EffectSsIcePiece_Spawn(PlayState* play, Vec3f* pos, f32 scale, Vec3f* velocity, Vec3f* accel, s32 life);
void EffectSsIcePiece_SpawnBurst(PlayState* play, Vec3f* refPos, f32 scale);
void EffectSsEnIce_SpawnFlyingVec3f(PlayState* play, Actor* actor, Vec3f* pos, s16 primR, s16 primG, s16 primB,
                                    s16 primA, s16 envR, s16 envG, s16 envB, f32 scale);
void EffectSsEnIce_SpawnFlyingVec3s(PlayState* play, Actor* actor, Vec3s* pos, s16 primR, s16 primG, s16 primB,
                                    s16 primA, s16 envR, s16 envG, s16 envB, f32 scale);
void EffectSsEnIce_Spawn(PlayState* play, Vec3f* pos, f32 scale, Vec3f* velocity, Vec3f* accel,
                         Color_RGBA8* primColor, Color_RGBA8* envColor, s32 life);
void EffectSsFireTail_Spawn(PlayState* play, Actor* actor, Vec3f* pos, f32 scale, Vec3f* arg4, s16 arg5,
                            Color_RGBA8* primColor, Color_RGBA8* envColor, s16 type, s16 bodyPart, s32 life);
void EffectSsFireTail_SpawnFlame(PlayState* play, Actor* actor, Vec3f* pos, f32 arg3, s16 bodyPart,
                                 f32 colorIntensity);
void EffectSsFireTail_SpawnFlameOnPlayer(PlayState* play, f32 scale, s16 bodyPart, f32 colorIntensity);
void EffectSsEnFire_SpawnVec3f(PlayState* play, Actor* actor, Vec3f* pos, s16 scale, s16 arg4, s16 flags, s16 bodyPart);
void EffectSsEnFire_SpawnVec3s(PlayState* play, Actor* actor, Vec3s* pos, s16 scale, s16 arg4, s16 flags, s16 bodyPart);
void EffectSsExtra_Spawn(PlayState* play, Vec3f* pos, Vec3f* velocity, Vec3f* accel, s16 scale, s16 scoreIdx);
void EffectSsFCircle_Spawn(PlayState* play, Actor* actor, Vec3f* pos, s16 radius, s16 height);
void EffectSsDeadDb_Spawn(PlayState* play, Vec3f* pos, Vec3f* velocity, Vec3f* accel, s16 scale, s16 scaleStep,
                          s16 primR, s16 primG, s16 primB, s16 primA, s16 envR, s16 envG, s16 envB, s16 unused,
                          s32 arg14, s16 playSfx);
void EffectSsDeadDd_Spawn(PlayState* play, Vec3f* pos, Vec3f* velocity, Vec3f* accel, s16 scale, s16 scaleStep,
                          s16 primR, s16 primG, s16 primB, s16 alpha, s16 envR, s16 envG, s16 envB, s16 alphaStep,
                          s32 life);
void EffectSsDeadDd_SpawnRandYellow(PlayState* play, Vec3f* pos, s16 scale, s16 scaleStep, f32 randPosScale,
                                    s32 randIter, s32 life);
void EffectSsDeadDs_Spawn(PlayState* play, Vec3f* pos, Vec3f* velocity, Vec3f* accel, s16 scale, s16 scaleStep,
                          s16 alpha, s32 life);
void EffectSsDeadDs_SpawnStationary(PlayState* play, Vec3f* pos, s16 scale, s16 scaleStep, s16 alpha,
                                    s32 life);
void EffectSsDeadSound_Spawn(PlayState* play, Vec3f* pos, Vec3f* velocity, Vec3f* accel, u16 sfxId,
                             s16 lowerPriority, s16 repeatMode, s32 life);
void EffectSsDeadSound_SpawnStationary(PlayState* play, Vec3f* pos, u16 sfxId, s16 lowerPriority,
                                       s16 repeatMode, s32 life);
void EffectSsIceSmoke_Spawn(PlayState* play, Vec3f* pos, Vec3f* velocity, Vec3f* accel, s16 scale);
void FlagSet_Update(PlayState* play);
void Overlay_LoadGameState(GameStateOverlay* overlayEntry);
void Overlay_FreeGameState(GameStateOverlay* overlayEntry);

void ActorOverlayTable_LogPrint(void);
void ActorOverlayTable_Init(void);
void ActorOverlayTable_Cleanup(void);
void func_80038A28(CollisionPoly* poly, f32 tx, f32 ty, f32 tz, MtxF* dest);
f32 CollisionPoly_GetPointDistanceFromPlane(CollisionPoly* poly, Vec3f* point);
void CollisionPoly_GetVerticesByBgId(CollisionPoly* poly, s32 bgId, CollisionContext* colCtx, Vec3f* dest);
void BgCheck_Allocate(CollisionContext* colCtx, PlayState* play, CollisionHeader* colHeader);
f32 BgCheck_EntityRaycastDown1(CollisionContext* colCtx, CollisionPoly** outGroundPoly, Vec3f* pos);
f32 BgCheck_EntityRaycastDown2(PlayState* play, CollisionContext* colCtx, CollisionPoly** outGroundPoly, Vec3f* pos);
f32 BgCheck_EntityRaycastDown3(CollisionContext* colCtx, CollisionPoly** outGroundPoly, s32* bgId, Vec3f* pos);
f32 BgCheck_EntityRaycastDown4(CollisionContext* colCtx, CollisionPoly** outGroundPoly, s32* bgId, Actor* actor,
                               Vec3f* pos);
f32 BgCheck_EntityRaycastDown5(PlayState* play, CollisionContext* colCtx, CollisionPoly** outGroundPoly, s32* bgId,
                               Actor* actor, Vec3f* pos);
f32 BgCheck_EntityRaycastDown6(CollisionContext* colCtx, CollisionPoly** outGroundPoly, s32* bgId, Actor* actor,
                               Vec3f* pos, f32 chkDist);
f32 BgCheck_EntityRaycastDown7(CollisionContext* colCtx, CollisionPoly** outPoly, s32* bgId, Actor* actor, Vec3f* pos);
f32 BgCheck_AnyRaycastDown1(CollisionContext* colCtx, CollisionPoly* outGroundPoly, Vec3f* pos);
f32 BgCheck_AnyRaycastDown2(CollisionContext* colCtx, CollisionPoly* outGroundPoly, s32* bgId, Vec3f* pos);
f32 BgCheck_CameraRaycastDown2(CollisionContext* colCtx, CollisionPoly** outPoly, s32* bgId, Vec3f* pos);
f32 BgCheck_EntityRaycastDownWalls(CollisionContext* colCtx, CollisionPoly** outPoly, s32* bgId, Actor* actor, Vec3f* pos);
f32 BgCheck_EntityRaycastDown9(CollisionContext* colCtx, CollisionPoly** outPoly, s32* bgId, Vec3f* pos);
s32 BgCheck_EntitySphVsWall1(CollisionContext* colCtx, Vec3f* posResult, Vec3f* posNext, Vec3f* posPrev, f32 radius,
                             CollisionPoly** outPoly, f32 checkHeight);
s32 BgCheck_EntitySphVsWall2(CollisionContext* colCtx, Vec3f* posResult, Vec3f* posNext, Vec3f* posPrev, f32 radius,
                             CollisionPoly** outPoly, s32* outBgId, f32 checkHeight);
s32 BgCheck_EntitySphVsWall3(CollisionContext* colCtx, Vec3f* posResult, Vec3f* posNext, Vec3f* posPrev, f32 radius,
                             CollisionPoly** outPoly, s32* outBgId, Actor* actor, f32 checkHeight);
s32 BgCheck_EntitySphVsWall4(CollisionContext* colCtx, Vec3f* posResult, Vec3f* posNext, Vec3f* posPrev, f32 radius,
                             CollisionPoly** outPoly, s32* outBgId, Actor* actor, f32 checkHeight);
s32 BgCheck_AnyCheckCeiling(CollisionContext* colCtx, f32* outY, Vec3f* pos, f32 checkHeight);
s32 BgCheck_EntityCheckCeiling(CollisionContext* colCtx, f32* outY, Vec3f* pos, f32 checkHeight,
                               CollisionPoly** outPoly, s32* outBgId, Actor* actor);
s32 BgCheck_CameraLineTest1(CollisionContext* colCtx, Vec3f* posA, Vec3f* posB, Vec3f* posResult,
                            CollisionPoly** outPoly, s32 chkWall, s32 chkFloor, s32 chkCeil, s32 chkOneFace, s32* bgId);
s32 BgCheck_CameraLineTest2(CollisionContext* colCtx, Vec3f* posA, Vec3f* posB, Vec3f* posResult,
                            CollisionPoly** outPoly, s32 chkWall, s32 chkFloor, s32 chkCeil, s32 chkOneFace, s32* bgId);
s32 BgCheck_EntityLineTest1(CollisionContext* colCtx, Vec3f* posA, Vec3f* posB, Vec3f* posResult,
                            CollisionPoly** outPoly, s32 chkWall, s32 chkFloor, s32 chkCeil, s32 chkOneFace, s32* bgId);
s32 BgCheck_EntityLineTest2(CollisionContext* colCtx, Vec3f* posA, Vec3f* posB, Vec3f* posResult,
                            CollisionPoly** outPoly, s32 chkWall, s32 chkFloor, s32 chkCeil, s32 chkOneFace, s32* bgId,
                            Actor* actor);
s32 BgCheck_EntityLineTest3(CollisionContext* colCtx, Vec3f* posA, Vec3f* posB, Vec3f* posResult,
                            CollisionPoly** outPoly, s32 chkWall, s32 chkFloor, s32 chkCeil, s32 chkOneFace, s32* bgId,
                            Actor* actor, f32 chkDist);
s32 BgCheck_ProjectileLineTest(CollisionContext* colCtx, Vec3f* posA, Vec3f* posB, Vec3f* posResult,
                               CollisionPoly** outPoly, s32 chkWall, s32 chkFloor, s32 chkCeil, s32 chkOneFace,
                               s32* bgId);
s32 BgCheck_AnyLineTest1(CollisionContext* colCtx, Vec3f* posA, Vec3f* posB, Vec3f* posResult, CollisionPoly** outPoly,
                         s32 chkOneFace);
s32 BgCheck_AnyLineTest2(CollisionContext* colCtx, Vec3f* posA, Vec3f* posB, Vec3f* posResult, CollisionPoly** outPoly,
                         s32 chkWall, s32 chkFloor, s32 chkCeil, s32 chkOneFace);
s32 BgCheck_AnyLineTest3(CollisionContext* colCtx, Vec3f* posA, Vec3f* posB, Vec3f* posResult, CollisionPoly** outPoly,
                         s32 chkWall, s32 chkFloor, s32 chkCeil, s32 chkOneFace, s32* bgId);
s32 BgCheck_SphVsFirstPoly(CollisionContext* colCtx, Vec3f* center, f32 radius);
s32 DynaPoly_IsBgIdBgActor(s32 bgId);
void DynaPoly_DisableCollision(PlayState* play, DynaCollisionContext* dyna, s32 bgId);
void DynaPoly_EnableCollision(PlayState* play, DynaCollisionContext* dyna, s32 bgId);
void DynaPoly_DisableCeilingCollision(PlayState* play, DynaCollisionContext* dyna, s32 bgId);
s32 DynaPoly_SetBgActor(PlayState* play, DynaCollisionContext* dyna, Actor* actor, CollisionHeader* colHeader);
DynaPolyActor* DynaPoly_GetActor(CollisionContext* colCtx, s32 bgId);
void DynaPoly_DeleteBgActor(PlayState* play, DynaCollisionContext* dyna, s32 bgId);
void DynaPoly_InvalidateLookup(PlayState* play, DynaCollisionContext* dyna);
void DynaPoly_UnsetAllInteractFlags(PlayState* play, DynaCollisionContext* dyna, Actor* actor);
void DynaPoly_UpdateContext(PlayState* play, DynaCollisionContext* dyna);
void DynaPoly_UpdateBgActorTransforms(PlayState* play, DynaCollisionContext* dyna);
void CollisionHeader_GetVirtual(void* colHeader, CollisionHeader** dest);
void func_800418D0(CollisionContext* colCtx, PlayState* play);
u32 SurfaceType_GetBgCamIndex(CollisionContext* colCtx, CollisionPoly* poly, s32 bgId);
u16 BgCheck_GetBgCamSettingImpl(CollisionContext* colCtx, u32 bgCamIndex, s32 bgId);
u16 BgCheck_GetBgCamSetting(CollisionContext* colCtx, CollisionPoly* poly, s32 bgId);
u16 BgCheck_GetBgCamCount(CollisionContext* colCtx, CollisionPoly* poly, s32 bgId);
Vec3s* BgCheck_GetBgCamFuncDataImpl(CollisionContext* colCtx, s32 bgCamIndex, s32 bgId);
Vec3s* BgCheck_GetBgCamFuncData(CollisionContext* colCtx, CollisionPoly* poly, s32 bgId);
u32 SurfaceType_GetExitIndex(CollisionContext* colCtx, CollisionPoly* poly, s32 bgId);
u32 SurfaceType_GetFloorType(CollisionContext* colCtx, CollisionPoly* poly, s32 bgId);
u32 func_80041D70(CollisionContext* colCtx, CollisionPoly* poly, s32 bgId);
s32 SurfaceType_GetWallFlags(CollisionContext* colCtx, CollisionPoly* poly, s32 bgId);
s32 SurfaceType_CheckWallFlag0(CollisionContext* colCtx, CollisionPoly* poly, s32 bgId);
s32 SurfaceType_CheckWallFlag1(CollisionContext* colCtx, CollisionPoly* poly, s32 bgId);
s32 SurfaceType_CheckWallFlag2(CollisionContext* colCtx, CollisionPoly* poly, s32 bgId);
u32 SurfaceType_GetFloorProperty(CollisionContext* colCtx, CollisionPoly* poly, s32 bgId);
u32 SurfaceType_IsSoft(CollisionContext* colCtx, CollisionPoly* poly, s32 bgId);
u32 SurfaceType_IsHorseBlocked(CollisionContext* colCtx, CollisionPoly* poly, s32 bgId);
u32 SurfaceType_GetMaterial(CollisionContext* colCtx, CollisionPoly* poly, s32 bgId);
u16 SurfaceType_GetSfxOffset(CollisionContext* colCtx, CollisionPoly* poly, s32 bgId);
u32 SurfaceType_GetFloorEffect(CollisionContext* colCtx, CollisionPoly* poly, s32 bgId);
u32 SurfaceType_GetLightSetting(CollisionContext* colCtx, CollisionPoly* poly, s32 bgId);
u32 SurfaceType_GetEcho(CollisionContext* colCtx, CollisionPoly* poly, s32 bgId);
u32 SurfaceType_CanHookshot(CollisionContext* colCtx, CollisionPoly* poly, s32 bgId);
s32 SurfaceType_IsIgnoredByEntities(CollisionContext* colCtx, CollisionPoly* poly, s32 bgId);
s32 SurfaceType_IsIgnoredByProjectiles(CollisionContext* colCtx, CollisionPoly* poly, s32 bgId);
s32 SurfaceType_IsFloorConveyor(CollisionContext* colCtx, CollisionPoly* poly, s32 bgId);
u32 SurfaceType_GetConveyorSpeed(CollisionContext* colCtx, CollisionPoly* poly, s32 bgId);
u32 SurfaceType_GetConveyorDirection(CollisionContext* colCtx, CollisionPoly* poly, s32 bgId);
u32 func_80042108(CollisionContext* colCtx, CollisionPoly* poly, s32 bgId);
s32 WaterBox_GetSurface1(PlayState* play, CollisionContext* colCtx, f32 x, f32 z, f32* ySurface,
                         WaterBox** outWaterBox);
s32 WaterBox_GetSurface2(PlayState* play, CollisionContext* colCtx, Vec3f* pos, f32 surfaceChkDist,
                         WaterBox** outWaterBox);
s32 WaterBox_GetSurfaceImpl(PlayState* play, CollisionContext* colCtx, f32 x, f32 z, f32* ySurface,
                            WaterBox** outWaterBox);
u32 WaterBox_GetBgCamIndex(CollisionContext* colCtx, WaterBox* waterBox);
u16 WaterBox_GetBgCamSetting(CollisionContext* colCtx, WaterBox* waterBox);
u32 WaterBox_GetLightIndex(CollisionContext* colCtx, WaterBox* waterBox);
s32 func_80042708(CollisionPoly* polyA, CollisionPoly* polyB, Vec3f* point, Vec3f* closestPoint);
s32 func_800427B4(CollisionPoly* polyA, CollisionPoly* polyB, Vec3f* pointA, Vec3f* pointB, Vec3f* closestPoint);
#if OOT_DEBUG
void BgCheck_DrawDynaCollision(PlayState*, CollisionContext*);
void BgCheck_DrawStaticCollision(PlayState*, CollisionContext*);
#endif
void func_80043334(CollisionContext* colCtx, Actor* actor, s32 bgId);
s32 DynaPolyActor_TransformCarriedActor(CollisionContext* colCtx, s32 bgId, Actor* carriedActor);
void DynaPolyActor_Init(DynaPolyActor* dynaActor, s32 transformFlags);
void DynaPolyActor_UnsetAllInteractFlags(DynaPolyActor* dynaActor);
void DynaPolyActor_SetActorOnTop(DynaPolyActor* dynaActor);
void DynaPoly_SetPlayerOnTop(CollisionContext* colCtx, s32 floorBgId);
void DynaPoly_SetPlayerAbove(CollisionContext* colCtx, s32 floorBgId);
void func_80043538(DynaPolyActor* dynaActor);
s32 DynaPolyActor_IsActorOnTop(DynaPolyActor* dynaActor);
s32 DynaPolyActor_IsPlayerOnTop(DynaPolyActor* dynaActor);
s32 DynaPolyActor_IsPlayerAbove(DynaPolyActor* dynaActor);
s32 func_800435B4(DynaPolyActor* dynaActor);
s32 func_800435D8(PlayState* play, DynaPolyActor* dynaActor, s16 arg2, s16 arg3, s16 arg4);

void SaveContext_Init(void);
s32 func_800635D0(s32);
void Regs_Init(void);
void DebugCamera_ScreenText(u8 x, u8 y, const char* text);
void DebugCamera_ScreenTextColored(u8 x, u8 y, u8 colorIndex, const char* text);
#if OOT_DEBUG
void Regs_UpdateEditor(Input* input);
#endif
void Debug_DrawText(GraphicsContext* gfxCtx);
void DebugDisplay_Init(void);
DebugDispObject* DebugDisplay_AddObject(f32 posX, f32 posY, f32 posZ, s16 rotX, s16 rotY, s16 rotZ, f32 scaleX,
                                        f32 scaleY, f32 scaleZ, u8 red, u8 green, u8 blue, u8 alpha, s16 type,
                                        GraphicsContext* gfxCtx);
void DebugDisplay_DrawObjects(PlayState* play);

void* MemCpy(void* dest, const void* src, s32 len);
void GetItem_Draw(PlayState* play, s16 drawId);

u16 QuestHint_GetSariaTextId(PlayState* play);
u16 QuestHint_GetNaviTextId(PlayState* play);
u16 MaskReaction_GetTextId(PlayState* play, u32 maskReactionSet);
void CutsceneFlags_UnsetAll(PlayState* play);
void CutsceneFlags_Set(PlayState* play, s16 flag);
void CutsceneFlags_Unset(PlayState* play, s16 flag);
s32 CutsceneFlags_Get(PlayState* play, s16 flag);
s32 func_8006CFC0(s32 sceneId);
void func_8006D074(PlayState* play);
void func_8006D0AC(PlayState* play);
void func_8006D0EC(PlayState* play, Player* player);
void func_8006D684(PlayState* play, Player* player);
void func_8006DC68(PlayState* play, Player* player);
void func_8006DD9C(Actor* actor, Vec3f* arg1, s16 arg2);

s32 Kanji_OffsetFromShiftJIS(s32 character);
void Font_LoadCharWide(Font* font, u16 character, u16 codePointIndex);
void Font_LoadChar(Font* font, u8 character, u16 codePointIndex);
void Font_LoadMessageBoxIcon(Font* font, u16 icon);
void Font_LoadOrderedFont(Font* font);

void Health_InitMeter(PlayState* play);
void Health_UpdateMeter(PlayState* play);
void Health_DrawMeter(PlayState* play);
void Health_UpdateBeatingHeart(PlayState* play);
u32 Health_IsCritical(void);

void* ZeldaArena_Malloc(u32 size);
void* ZeldaArena_MallocR(u32 size);
void* ZeldaArena_Realloc(void* ptr, u32 newSize);
void ZeldaArena_Free(void* ptr);
void* ZeldaArena_Calloc(u32 num, u32 size);
void ZeldaArena_GetSizes(u32* outMaxFree, u32* outFree, u32* outAlloc);
void ZeldaArena_Check(void);
void ZeldaArena_Init(void* start, u32 size);
void ZeldaArena_Cleanup(void);
s32 ZeldaArena_IsInitialized(void);
#if OOT_DEBUG
void ZeldaArena_CheckPointer(void* ptr, u32 size, const char* name, const char* action);
void* ZeldaArena_MallocDebug(u32 size, const char* file, int line);
void* ZeldaArena_MallocRDebug(u32 size, const char* file, int line);
void* ZeldaArena_ReallocDebug(void* ptr, u32 newSize, const char* file, int line);
void ZeldaArena_FreeDebug(void* ptr, const char* file, int line);
void ZeldaArena_Display(void);
#endif
void MapMark_Init(PlayState* play);
void MapMark_ClearPointers(PlayState* play);
void MapMark_Draw(PlayState* play);
void PreNmiBuff_Init(PreNmiBuff* this);
void PreNmiBuff_SetReset(PreNmiBuff* this);
u32 PreNmiBuff_IsResetting(PreNmiBuff* this);
void Sched_FlushTaskQueue(void);
f32 OLib_Vec3fDist(Vec3f* a, Vec3f* b);
f32 OLib_Vec3fDistXZ(Vec3f* a, Vec3f* b);
f32 OLib_ClampMinDist(f32 val, f32 min);
f32 OLib_ClampMaxDist(f32 val, f32 max);
Vec3f OLib_Vec3fDistNormalize(Vec3f* a, Vec3f* b);
Vec3f OLib_VecGeoToVec3f(VecGeo* geo);
VecSph OLib_Vec3fToVecSph(Vec3f* vec);
VecGeo OLib_Vec3fToVecGeo(Vec3f* vec);
VecGeo OLib_Vec3fDiffToVecGeo(Vec3f* a, Vec3f* b);
Vec3f OLib_Vec3fDiffRad(Vec3f* a, Vec3f* b);
s16 OnePointCutscene_Init(PlayState* play, s16 csId, s16 timer, Actor* actor, s16 parentCamId);
s16 OnePointCutscene_EndCutscene(PlayState* play, s16 subCamId);
s32 OnePointCutscene_Attention(PlayState* play, Actor* actor);
s32 OnePointCutscene_AttentionSetSfx(PlayState* play, Actor* actor, s32 sfxId);
void OnePointCutscene_EnableAttention(void);
void OnePointCutscene_DisableAttention(void);
s32 OnePointCutscene_CheckForCategory(PlayState* play, s32 actorCategory);
void OnePointCutscene_Noop(PlayState* play, s32 arg1);

Path* Path_GetByIndex(PlayState* play, s16 index, s16 max);
f32 Path_OrientAndGetDistSq(Actor* actor, Path* path, s16 waypoint, s16* yaw);
void Path_CopyLastPoint(Path* path, Vec3f* dest);

void PreNMI_Init(GameState* thisx);

void func_80095AA0(PlayState* play, Room* room, Input* input, s32 arg3);
void Room_DrawBackground2D(Gfx** gfxP, void* tex, void* tlut, u16 width, u16 height, u8 fmt, u8 siz, u16 tlutMode,
                           u16 tlutCount, f32 offsetX, f32 offsetY);
void Room_Init(PlayState* play, Room* room);
u32 Room_SetupFirstRoom(PlayState* play, RoomContext* roomCtx);
s32 Room_RequestNewRoom(PlayState* play, RoomContext* roomCtx, s32 roomNum);
s32 Room_ProcessRoomRequest(PlayState* play, RoomContext* roomCtx);
void Room_Draw(PlayState* play, Room* room, u32 flags);
void Room_FinishRoomChange(PlayState* play, RoomContext* roomCtx);
void Sample_Destroy(GameState* thisx);
void Sample_Init(GameState* thisx);

void Object_InitContext(PlayState* play, ObjectContext* objectCtx);
void Object_UpdateEntries(ObjectContext* objectCtx);
s32 Object_GetSlot(ObjectContext* objectCtx, s16 objectId);
s32 Object_IsLoaded(ObjectContext* objectCtx, s32 slot);
void func_800981B8(ObjectContext* objectCtx);
s32 Scene_ExecuteCommands(PlayState* play, SceneCmd* sceneCmd);
void Scene_ResetTransitionActorList(GameState* state, TransitionActorList* transitionActors);
void Scene_SetTransitionForNextEntrance(PlayState* play);
void Scene_Draw(PlayState* play);

void Skin_UpdateVertices(MtxF* mtx, SkinVertex* skinVertices, SkinLimbModif* modifEntry, Vtx* vtxBuf, Vec3f* pos);
void Skin_DrawAnimatedLimb(GraphicsContext* gfxCtx, Skin* skin, s32 limbIndex, s32 arg3, s32 drawFlags);
void Skin_DrawLimb(GraphicsContext* gfxCtx, Skin* skin, s32 limbIndex, Gfx* dlistOverride, s32 drawFlags);
void func_800A6330(Actor* actor, PlayState* play, Skin* skin, SkinPostDraw postDraw, s32 setTranslation);
void func_800A6360(Actor* actor, PlayState* play, Skin* skin, SkinPostDraw postDraw,
                   SkinOverrideLimbDraw overrideLimbDraw, s32 setTranslation);
void func_800A6394(Actor* actor, PlayState* play, Skin* skin, SkinPostDraw postDraw,
                   SkinOverrideLimbDraw overrideLimbDraw, s32 setTranslation, s32 arg6);
void func_800A63CC(Actor* actor, PlayState* play, Skin* skin, SkinPostDraw postDraw,
                   SkinOverrideLimbDraw overrideLimbDraw, s32 setTranslation, s32 arg6, s32 drawFlags);
void Skin_GetLimbPos(Skin* skin, s32 limbIndex, Vec3f* offset, Vec3f* dst);
void Skin_Init(PlayState* play, Skin* skin, SkeletonHeader* skeletonHeader, AnimationHeader* animationHeader);
void Skin_Free(PlayState* play, Skin* skin);
s32 Skin_ApplyAnimTransformations(Skin* skin, MtxF* limbMatrices, Actor* actor, s32 setTranslation);

void Sram_InitNewSave(void);
void Sram_InitDebugSave(void);
void Sram_OpenSave(SramContext* sramCtx);
void Sram_WriteSave(SramContext* sramCtx);
void Sram_VerifyAndLoadAllSaves(FileSelectState* fileSelect, SramContext* sramCtx);
void Sram_InitSave(FileSelectState* fileSelect, SramContext* sramCtx);
void Sram_EraseSave(FileSelectState* fileSelect, SramContext* sramCtx);
void Sram_CopySave(FileSelectState* fileSelect, SramContext* sramCtx);
void Sram_WriteSramHeader(SramContext* sramCtx);
void Sram_InitSram(GameState* gameState, SramContext* sramCtx);
void Sram_Alloc(GameState* gameState, SramContext* sramCtx);
void Sram_Init(PlayState* play, SramContext* sramCtx);
void SsSram_Init(s32 addr, u8 handleType, u8 handleDomain, u8 handleLatency, u8 handlePageSize, u8 handleRelDuration,
                 u8 handlePulse, u32 handleSpeed);
void SsSram_Dma(void* dramAddr, size_t size, s32 direction);
void SsSram_ReadWrite(s32 addr, void* dramAddr, size_t size, s32 direction);

void ViMode_LogPrint(OSViMode* osViMode);
void ViMode_Configure(ViMode* viMode, s32 type, s32 tvType, s32 loRes, s32 antialiasOff, s32 modeN, s32 fb16Bit,
                      s32 width, s32 height, s32 leftAdjust, s32 rightAdjust, s32 upperAdjust, s32 lowerAdjust);
void ViMode_Save(ViMode* viMode);
void ViMode_Load(ViMode* viMode);
void ViMode_Init(ViMode* viMode);
void ViMode_Destroy(ViMode* viMode);
void ViMode_ConfigureFeatures(ViMode* viMode, s32 viFeatures);
void ViMode_Update(ViMode* viMode, Input* input);
void PlayerCall_InitFuncPtrs(void);
void TransitionTile_Destroy(TransitionTile* this);
TransitionTile* TransitionTile_Init(TransitionTile* this, s32 cols, s32 rows);
void TransitionTile_Draw(TransitionTile* this, Gfx** gfxP);
void TransitionTile_Update(TransitionTile* this);
void TransitionTriforce_Start(void* thisx);
void* TransitionTriforce_Init(void* thisx);
void TransitionTriforce_Destroy(void* thisx);
void TransitionTriforce_Update(void* thisx, s32 updateRate);
void TransitionTriforce_SetColor(void* thisx, u32 color);
void TransitionTriforce_SetType(void* thisx, s32 type);
void TransitionTriforce_Draw(void* thisx, Gfx** gfxP);
s32 TransitionTriforce_IsDone(void* thisx);
void TransitionWipe_Start(void* thisx);
void* TransitionWipe_Init(void* thisx);
void TransitionWipe_Destroy(void* thisx);
void TransitionWipe_Update(void* thisx, s32 updateRate);
void TransitionWipe_Draw(void* thisx, Gfx** gfxP);
s32 TransitionWipe_IsDone(void* thisx);
void TransitionWipe_SetType(void* thisx, s32 type);
void TransitionWipe_SetColor(void* thisx, u32 color);
void TransitionCircle_Start(void* thisx);
void* TransitionCircle_Init(void* thisx);
void TransitionCircle_Destroy(void* thisx);
void TransitionCircle_Update(void* thisx, s32 updateRate);
void TransitionCircle_Draw(void* thisx, Gfx** gfxP);
s32 TransitionCircle_IsDone(void* thisx);
void TransitionCircle_SetType(void* thisx, s32 type);
void TransitionCircle_SetColor(void* thisx, u32 color);
void TransitionCircle_SetUnkColor(void* thisx, u32 color);
void TransitionFade_Start(void* thisx);
void* TransitionFade_Init(void* thisx);
void TransitionFade_Destroy(void* thisx);
void TransitionFade_Update(void* thisx, s32 updateRate);
void TransitionFade_Draw(void* thisx, Gfx** gfxP);
s32 TransitionFade_IsDone(void* thisx);
void TransitionFade_SetColor(void* thisx, u32 color);
void TransitionFade_SetType(void* thisx, s32 type);

void DebugCamera_Init(DebugCam* debugCam, Camera* cameraPtr);
void DebugCamera_Enable(DebugCam* debugCam, Camera* cam);
void DebugCamera_Update(DebugCam* debugCam, Camera* cam);
void DebugCamera_Reset(Camera* cam, DebugCam* debugCam);
void func_800BB0A0(f32 u, Vec3f* pos, f32* roll, f32* viewAngle, f32* point0, f32* point1, f32* point2, f32* point3);
s32 func_800BB2B4(Vec3f* pos, f32* roll, f32* fov, CutsceneCameraPoint* point, s16* keyFrame, f32* curFrame);

s32 func_800C0D34(PlayState* this, Actor* actor, s16* yaw);
s32 func_800C0DB4(PlayState* this, Vec3f* pos);
void PreRender_SetValuesSave(PreRender* this, u32 width, u32 height, void* fbuf, void* zbuf, void* cvg);
void PreRender_Init(PreRender* this);
void PreRender_SetValues(PreRender* this, u32 width, u32 height, void* fbuf, void* zbuf);
void PreRender_Destroy(PreRender* this);
void func_800C170C(PreRender* this, Gfx** gfxP, void* buf, void* bufSave, u32 r, u32 g, u32 b, u32 a);
void func_800C1AE8(PreRender* this, Gfx** gfxP, void* fbuf, void* fbufSave);
void PreRender_SaveZBuffer(PreRender* this, Gfx** gfxP);
void PreRender_SaveFramebuffer(PreRender* this, Gfx** gfxP);
void PreRender_DrawCoverage(PreRender* this, Gfx** gfxP);
void PreRender_RestoreZBuffer(PreRender* this, Gfx** gfxP);
void func_800C213C(PreRender* this, Gfx** gfxP);
void PreRender_RestoreFramebuffer(PreRender* this, Gfx** gfxP);
void PreRender_CopyImageRegion(PreRender* this, Gfx** gfxP);
void PreRender_ApplyFilters(PreRender* this);
void GameState_SetFBFilter(Gfx** gfxP);
void GameState_Draw(GameState* gameState, GraphicsContext* gfxCtx);
void GameState_SetFrameBuffer(GraphicsContext* gfxCtx);
void GameState_ReqPadData(GameState* gameState);
void GameState_Update(GameState* gameState);
void GameState_InitArena(GameState* gameState, size_t size);
void GameState_Realloc(GameState* gameState, size_t size);
void GameState_Init(GameState* gameState, GameStateFunc init, GraphicsContext* gfxCtx);
void GameState_Destroy(GameState* gameState);
GameStateFunc GameState_GetInit(GameState* gameState);
u32 GameState_IsRunning(GameState* gameState);
#if OOT_DEBUG
void* GameState_Alloc(GameState* gameState, size_t size, const char* file, int line);
void* GameAlloc_MallocDebug(GameAlloc* this, u32 size, const char* file, int line);
#endif
void* GameAlloc_Malloc(GameAlloc* this, u32 size);
void GameAlloc_Free(GameAlloc* this, void* data);
void GameAlloc_Cleanup(GameAlloc* this);
void GameAlloc_Init(GameAlloc* this);
void Graph_InitTHGA(GraphicsContext* gfxCtx);
GameStateOverlay* Graph_GetNextGameState(GameState* gameState);
void Graph_Init(GraphicsContext* gfxCtx);
void Graph_Destroy(GraphicsContext* gfxCtx);
void Graph_TaskSet00(GraphicsContext* gfxCtx);
void Graph_Update(GraphicsContext* gfxCtx, GameState* gameState);
void Graph_ThreadEntry(void*);

Gfx* Gfx_Open(Gfx* gfx);
Gfx* Gfx_Close(Gfx* gfx, Gfx* dst);
void* Gfx_Alloc(Gfx** gfxP, u32 size);
ListAlloc* ListAlloc_Init(ListAlloc* this);
void* ListAlloc_Alloc(ListAlloc* this, u32 size);
void ListAlloc_Free(ListAlloc* this, void* data);
void ListAlloc_FreeAll(ListAlloc* this);
void Main(void* arg);
void SysCfb_Init(s32 n64dd);
void* SysCfb_GetFbPtr(s32 idx);
void* SysCfb_GetFbEnd(void);

void Math3D_DrawSphere(PlayState* play, Sphere16* sph);
void Math3D_DrawCylinder(PlayState* play, Cylinder16* cyl);
u64* SysUcode_GetUCodeBoot(void);
size_t SysUcode_GetUCodeBootSize(void);
u64* SysUcode_GetUCode(void);
u64* SysUcode_GetUCodeData(void);
NORETURN void func_800D31A0(void);
void func_800D31F0(void);
void func_800D3210(void);
void* DebugArena_Malloc(u32 size);
void* DebugArena_MallocR(u32 size);
void* DebugArena_Realloc(void* ptr, u32 newSize);
void DebugArena_Free(void* ptr);
void* DebugArena_Calloc(u32 num, u32 size);
void DebugArena_GetSizes(u32* outMaxFree, u32* outFree, u32* outAlloc);
void DebugArena_Check(void);
void DebugArena_Init(void* start, u32 size);
void DebugArena_Cleanup(void);
s32 DebugArena_IsInitialized(void);
#if OOT_DEBUG
void DebugArena_CheckPointer(void* ptr, u32 size, const char* name, const char* action);
void* DebugArena_MallocDebug(u32 size, const char* file, int line);
void* DebugArena_MallocRDebug(u32 size, const char* file, int line);
void* DebugArena_ReallocDebug(void* ptr, u32 newSize, const char* file, int line);
void DebugArena_FreeDebug(void* ptr, const char* file, int line);
void DebugArena_Display(void);
#endif

void RcpUtils_PrintRegisterStatus(void);
void RcpUtils_Reset(void);
void* Overlay_AllocateAndLoad(uintptr_t vromStart, uintptr_t vromEnd, void* vramStart, void* vramEnd);
void MtxConv_F2L(Mtx* m1, MtxF* m2);
void MtxConv_L2F(MtxF* m1, Mtx* m2);
void Overlay_Relocate(void* allocatedRamAddr, OverlayRelocationSection* ovlRelocs, void* vramStart);
size_t Overlay_Load(uintptr_t vromStart, uintptr_t vromEnd, void* vramStart, void* vramEnd, void* allocatedRamAddr);
// ? func_800FC800(?);
// ? func_800FC83C(?);
// ? func_800FCAB4(?);
void SystemHeap_Init(void* start, u32 size);
void PadUtils_Init(Input* input);
void func_800FCB70(void);
void PadUtils_ResetPressRel(Input* input);
u32 PadUtils_CheckCurExact(Input* input, u16 value);
u32 PadUtils_CheckCur(Input* input, u16 key);
u32 PadUtils_CheckPressed(Input* input, u16 key);
u32 PadUtils_CheckReleased(Input* input, u16 key);
u16 PadUtils_GetCurButton(Input* input);
u16 PadUtils_GetPressButton(Input* input);
s8 PadUtils_GetCurX(Input* input);
s8 PadUtils_GetCurY(Input* input);
void PadUtils_SetRelXY(Input* input, s32 x, s32 y);
s8 PadUtils_GetRelXImpl(Input* input);
s8 PadUtils_GetRelYImpl(Input* input);
s8 PadUtils_GetRelX(Input* input);
s8 PadUtils_GetRelY(Input* input);
void PadUtils_UpdateRelXY(Input* input);
s32 PadSetup_Init(OSMesgQueue* mq, u8* outMask, OSContStatus* status);

s32 osPfsFreeBlocks(OSPfs* pfs, s32* leftoverBytes);
void guScale(Mtx* m, f32 x, f32 y, f32 z);
OSTask* _VirtualToPhysicalTask(OSTask* intp);
void osSpTaskLoad(OSTask* intp);
void osSpTaskStartGo(OSTask* tp);
void __osSiCreateAccessQueue(void);
void __osSiGetAccess(void);
void __osSiRelAccess(void);
s32 osContInit(OSMesgQueue* mq, u8* ctlBitfield, OSContStatus* status);
void __osContGetInitData(u8* ctlBitfield, OSContStatus* data);
void __osPackRequestData(u8 poll);
s32 osContStartReadData(OSMesgQueue* mq);
void osContGetReadData(OSContPad* contData);
void __osPackReadData(void);
void guPerspectiveF(f32 mf[4][4], u16* perspNorm, f32 fovy, f32 aspect, f32 near, f32 far, f32 scale);
void guPerspective(Mtx* m, u16* perspNorm, f32 fovy, f32 aspect, f32 near, f32 far, f32 scale);
s32 __osSpRawStartDma(s32 direction, void* devAddr, void* dramAddr, u32 size);
s32 __osSiRawStartDma(s32 dir, void* addr);
void osSpTaskYield(void);
s32 __osPfsGetNextPage(OSPfs* pfs, u8* bank, __OSInode* inode, __OSInodeUnit* page);
s32 osPfsReadWriteFile(OSPfs* pfs, s32 fileNo, u8 flag, s32 offset, s32 size, u8* data);
s32 __osPfsGetStatus(OSMesgQueue* queue, s32 channel);
void __osPfsRequestOneChannel(s32 channel, u8 cmd);
void __osPfsGetOneChannelData(s32 channel, OSContStatus* contData);
void guMtxIdentF(f32 mf[4][4]);
void guLookAtF(f32 mf[4][4], f32 xEye, f32 yEye, f32 zEye, f32 xAt, f32 yAt, f32 zAt, f32 xUp, f32 yUp, f32 zUp);
void guLookAt(Mtx*, f32 xEye, f32 yEye, f32 zEye, f32 xAt, f32 yAt, f32 zAt, f32 xUp, f32 yUp, f32 zUp);
s32 osPfsAllocateFile(OSPfs* pfs, u16 companyCode, u32 gameCode, u8* gameName, u8* extName, s32 fileSize, s32* fileNo);
s32 __osPfsDeclearPage(OSPfs* pfs, __OSInode* inode, s32 fileSizeInPages, s32* startPage, u8 bank, s32* decleared,
                       s32* finalPage);
s32 osStopTimer(OSTimer* timer);
u16 __osSumcalc(u8* ptr, s32 length);
s32 __osIdCheckSum(u16* ptr, u16* checkSum, u16* idSum);
s32 __osRepairPackId(OSPfs* pfs, __OSPackId* badid, __OSPackId* newid);
s32 __osCheckPackId(OSPfs* pfs, __OSPackId* check);
s32 __osGetId(OSPfs* pfs);
s32 __osCheckId(OSPfs* pfs);
s32 __osPfsRWInode(OSPfs* pfs, __OSInode* inode, u8 flag, u8 bank);
void guMtxL2F(f32 mf[4][4], Mtx* m);
s32 osPfsFindFile(OSPfs* pfs, u16 companyCode, u32 gameCode, u8* gameName, u8* extName, s32* fileNo);
s32 osAfterPreNMI(void);
s32 osContStartQuery(OSMesgQueue* mq);
void osContGetQuery(OSContStatus* data);
void guLookAtHiliteF(f32 mf[4][4], LookAt* l, Hilite* h, f32 xEye, f32 yEye, f32 zEye, f32 xAt, f32 yAt, f32 zAt,
                     f32 xUp, f32 yUp, f32 zUp, f32 xl1, f32 yl1, f32 zl1, f32 xl2, f32 yl2, f32 zl2, s32 hiliteWidth,
                     s32 hiliteHeight);
void guLookAtHilite(Mtx* m, LookAt* l, Hilite* h, f32 xEye, f32 yEye, f32 zEye, f32 xAt, f32 yAt, f32 zAt, f32 xUp,
                    f32 yUp, f32 zUp, f32 xl1, f32 yl1, f32 zl1, f32 xl2, f32 yl2, f32 zl2, s32 hiliteWidth,
                    s32 hiliteHeight);
u32 __osSpDeviceBusy(void);
void guMtxIdent(Mtx*);
void guPositionF(f32 mf[4][4], f32 rot, f32 pitch, f32 yaw, f32 scale, f32 x, f32 y, f32 z);
void guPosition(Mtx*, f32, f32, f32, f32, f32, f32, f32);
OSYieldResult osSpTaskYielded(OSTask* task);
void guRotateF(f32 m[4][4], f32 a, f32 x, f32 y, f32 z);
void guRotate(Mtx*, f32 a, f32 x, f32 y, f32 z);
s32 osAiSetFrequency(u32 frequency);
OSThread* __osGetActiveQueue(void);
void guNormalize(f32* x, f32* y, f32* z);
u32 osDpGetStatus(void);
void osDpSetStatus(u32 status);
s32 osPfsDeleteFile(OSPfs* pfs, u16 companyCode, u32 gameCode, u8* gameName, u8* extName);
s32 __osPfsReleasePages(OSPfs* pfs, __OSInode* inode, u8 initialPage, u8 bank, __OSInodeUnit* finalPage);
void guOrthoF(f32[4][4], f32, f32, f32, f32, f32, f32, f32);
void guOrtho(Mtx*, f32, f32, f32, f32, f32, f32, f32);
void osViSetEvent(OSMesgQueue* mq, OSMesg msg, u32 retraceCount);
s32 osPfsIsPlug(OSMesgQueue* mq, u8* pattern);
void __osPfsRequestData(u8 cmd);
void __osPfsGetInitData(u8* pattern, OSContStatus* contData);
void guS2DInitBg(uObjBg* bg);
s32 __osPfsSelectBank(OSPfs* pfs, u8 bank);
s32 osContSetCh(u8 ch);
s32 osPfsFileState(OSPfs* pfs, s32 fileNo, OSPfsState* state);
s32 osPfsInitPak(OSMesgQueue* queue, OSPfs* pfs, s32 channel);
s32 __osPfsCheckRamArea(OSPfs* pfs);
s32 osPfsChecker(OSPfs* pfs);
s32 func_80105788(OSPfs* pfs, __OSInodeCache* cache);
s32 func_80105A60(OSPfs* pfs, __OSInodeUnit fpage, __OSInodeCache* cache);
u32 osAiGetLength(void);
void guTranslate(Mtx* m, f32 x, f32 y, f32 z);
s32 __osContRamWrite(OSMesgQueue* mq, s32 channel, u16 address, u8* buffer, s32 force);
s32 __osContRamRead(OSMesgQueue* ctrlrqueue, s32 channel, u16 addr, u8* data);
u8 __osContAddressCrc(u16 addr);
u8 __osContDataCrc(u8* data);
s32 osSetTimer(OSTimer* timer, OSTime countdown, OSTime interval, OSMesgQueue* mq, OSMesg msg);
u32 __osSpGetStatus(void);
void __osSpSetStatus(u32 status);
void osWritebackDCacheAll(void);
OSThread* __osGetCurrFaultedThread(void);
void guMtxF2L(f32 mf[4][4], Mtx* m);
// ? __d_to_ll(?);
// ? __f_to_ll(?);
// ? __d_to_ull(?);
// ? __f_to_ull(?);
// ? __ll_to_d(?);
// ? __ll_to_f(?);
// ? __ull_to_d(?);
// ? __ull_to_f(?);
void* osViGetCurrentFramebuffer(void);
s32 __osSpSetPc(void* pc);
f32 absf(f32);

void Regs_InitData(PlayState* play);

void Setup_Init(GameState* thisx);
void Setup_Destroy(GameState* thisx);
void ConsoleLogo_Init(GameState* thisx);
void ConsoleLogo_Destroy(GameState* thisx);
void MapSelect_Init(GameState* thisx);
void MapSelect_Destroy(GameState* thisx);
void TitleSetup_Init(GameState* thisx);
void TitleSetup_Destroy(GameState* thisx);
void FileSelect_Init(GameState* thisx);
void FileSelect_Destroy(GameState* thisx);

#endif
