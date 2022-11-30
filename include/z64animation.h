#ifndef Z64_ANIMATION_H
#define Z64_ANIMATION_H

#include "ultra64.h"
#include "z64dma.h"
#include "z64math.h"
#include "macros.h"

struct PlayState;
struct Actor;
struct SkelAnime;

/*
 * Skeletons and limbs
 */

#define LIMB_DONE 0xFF

typedef struct {
    /* 0x00 */ Vec3s jointPos; // Root is position in model space, children are relative to parent
    /* 0x06 */ u8 child;
    /* 0x07 */ u8 sibling;
    /* 0x08 */ Gfx* dList;
} StandardLimb; // size = 0xC

typedef struct {
    /* 0x00 */ Vec3s jointPos; // Root is position in model space, children are relative to parent
    /* 0x06 */ u8 child;
    /* 0x07 */ u8 sibling;
    /* 0x08 */ Gfx* dLists[2]; // Near and far
} LodLimb; // size = 0x10

// Model has limbs with only rigid meshes
typedef struct {
    /* 0x00 */ void** segment;
    /* 0x04 */ u8 limbCount;
} SkeletonHeader; // size = 0x8

// Model has limbs with flexible meshes
typedef struct {
    /* 0x00 */ SkeletonHeader sh;
    /* 0x08 */ u8 dListCount;
} FlexSkeletonHeader; // size = 0xC

/*
 * Animations
 */

// Index into the frame data table.
typedef struct {
    /* 0x00 */ u16 x;
    /* 0x02 */ u16 y;
    /* 0x04 */ u16 z;
} JointIndex; // size = 0x06

typedef struct {
    /* 0x00 */ s16 frameCount;
} AnimationHeaderCommon;

typedef struct {
    /* 0x00 */ AnimationHeaderCommon common;
    /* 0x04 */ void* segment;
} LinkAnimationHeader; // size = 0x8

typedef struct {
    /* 0x00 */ AnimationHeaderCommon common;
    /* 0x04 */ s16* frameData; // "tbl"
    /* 0x08 */ JointIndex* jointIndices; // "ref_tbl"
    /* 0x0C */ u16 staticIndexMax;
} AnimationHeader; // size = 0x10

/*
 * SkelAnime
 */

typedef enum {
    /* 0 */ ANIMMODE_LOOP,
    /* 1 */ ANIMMODE_LOOP_INTERP,
    /* 2 */ ANIMMODE_ONCE,
    /* 3 */ ANIMMODE_ONCE_INTERP,
    /* 4 */ ANIMMODE_LOOP_PARTIAL,
    /* 5 */ ANIMMODE_LOOP_PARTIAL_INTERP
} AnimationMode;

typedef enum {
    /* -1 */ ANIMTAPER_DECEL = -1,
    /*  0 */ ANIMTAPER_NONE,
    /*  1 */ ANIMTAPER_ACCEL
} AnimationTapers;

#define ANIM_FLAG_UPDATE_Y (1 << 1)
#define ANIM_FLAG_NO_MOVE (1 << 4)

typedef struct SkelAnime {
    /* 0x00 */ u8 limbCount; // Number of limbs in the skeleton
    /* 0x01 */ u8 mode; // See `AnimationMode`
    /* 0x02 */ u8 dListCount; // Number of display lists in a flexible skeleton
    /* 0x03 */ s8 taper; // Tapering to use when morphing between animations. Only used by Door_Warp1.
    /* 0x04 */ void** skeleton; // An array of pointers to limbs. Can be StandardLimb, LodLimb, or SkinLimb.
    /* 0x08 */ void* animation; // Can be an AnimationHeader or LinkAnimationHeader.
    /* 0x0C */ f32 startFrame; // In mode ANIMMODE_LOOP_PARTIAL*, start of partial loop.
    /* 0x10 */ f32 endFrame; // In mode ANIMMODE_ONCE*, Update returns true when curFrame is equal to this. In mode ANIMMODE_LOOP_PARTIAL*, end of partial loop.
    /* 0x14 */ f32 animLength; // Total number of frames in the current animation.
    /* 0x18 */ f32 curFrame; // Current frame in the animation
    /* 0x1C */ f32 playSpeed; // Multiplied by R_UPDATE_RATE / 3 to get the animation's frame rate.
    /* 0x20 */ Vec3s* jointTable; // Current translation of model and rotations of all limbs
    /* 0x24 */ Vec3s* morphTable; // Table of values used to morph between animations
    /* 0x28 */ f32 morphWeight; // Weight of the current animation morph as a fraction in [0,1]
    /* 0x2C */ f32 morphRate; // Reciprocal of the number of frames in the morph
    /* 0x30 */ union {
        s32 (*normal)(struct SkelAnime*); // Can be Loop, Partial loop, Play once, Morph, or Tapered morph
        s32 (*link)(struct PlayState*, struct SkelAnime*); // Can be Loop, Play once, or Morph
    } update;
    /* 0x34 */ s8 initFlags; // Flags used when initializing Link's skeleton
    /* 0x35 */ u8 moveFlags; // Flags used for animations that move the actor in worldspace.
    /* 0x36 */ s16 prevRot; // Previous rotation in worldspace.
    /* 0x38 */ Vec3s prevTransl; // Previous modelspace translation.
    /* 0x3E */ Vec3s baseTransl; // Base modelspace translation.
} SkelAnime; // size = 0x44

// Init

BAD_RETURN(s32) SkelAnime_Init(struct PlayState* play, SkelAnime* skelAnime, SkeletonHeader* skeletonHeaderSeg,
                               AnimationHeader* animation, Vec3s* jointTable, Vec3s* morphTable, s32 limbCount);
BAD_RETURN(s32) SkelAnime_InitFlex(struct PlayState* play, SkelAnime* skelAnime, FlexSkeletonHeader* skeletonHeaderSeg,
                                   AnimationHeader* animation, Vec3s* jointTable, Vec3s* morphTable, s32 limbCount);
BAD_RETURN(s32) SkelAnime_InitSkin(struct PlayState* play, SkelAnime* skelAnime, SkeletonHeader* skeletonHeaderSeg,
                                   AnimationHeader* animation);

void SkelAnime_InitLink(struct PlayState* play, SkelAnime* skelAnime, FlexSkeletonHeader* skeletonHeaderSeg,
                        LinkAnimationHeader* animation, s32 flags, Vec3s* jointTable, Vec3s* morphTable,
                        s32 limbBufCount);

// Free

void SkelAnime_Free(SkelAnime* skelAnime, struct PlayState* play);

// Update

s32 SkelAnime_Update(SkelAnime* skelAnime);

// Draw

typedef s32 (*OverrideLimbDraw)(struct PlayState* play, s32 limbIndex, Gfx** dList, Vec3f* pos, Vec3s* rot, void*,
                                Gfx** gfx);
typedef void (*PostLimbDraw)(struct PlayState* play, s32 limbIndex, Gfx** dList, Vec3s* rot, void*, Gfx** gfx);

typedef s32 (*OverrideLimbDrawOpa)(struct PlayState* play, s32 limbIndex, Gfx** dList, Vec3f* pos, Vec3s* rot, void*);
typedef void (*PostLimbDrawOpa)(struct PlayState* play, s32 limbIndex, Gfx** dList, Vec3s* rot, void*);

Gfx* SkelAnime_Draw(struct PlayState* play, void** skeleton, Vec3s* jointTable, OverrideLimbDraw overrideLimbDraw,
                    PostLimbDraw postLimbDraw, void* arg, Gfx* gfx);
void SkelAnime_DrawOpa(struct PlayState* play, void** skeleton, Vec3s* jointTable, OverrideLimbDrawOpa overrideLimbDraw,
                       PostLimbDrawOpa postLimbDraw, void* arg);

Gfx* SkelAnime_DrawFlex(struct PlayState* play, void** skeleton, Vec3s* jointTable, s32 dListCount,
                        OverrideLimbDraw overrideLimbDraw, PostLimbDraw postLimbDraw, void* arg, Gfx* gfx);
void SkelAnime_DrawFlexOpa(struct PlayState* play, void** skeleton, Vec3s* jointTable, s32 dListCount,
                           OverrideLimbDrawOpa overrideLimbDraw, PostLimbDrawOpa postLimbDraw, void* arg);

void SkelAnime_DrawLod(struct PlayState* play, void** skeleton, Vec3s* jointTable, OverrideLimbDrawOpa overrideLimbDraw,
                       PostLimbDrawOpa postLimbDraw, void* arg, s32 lod);

void SkelAnime_DrawFlexLod(struct PlayState* play, void** skeleton, Vec3s* jointTable, s32 dListCount,
                           OverrideLimbDrawOpa overrideLimbDraw, PostLimbDrawOpa postLimbDraw, void* arg, s32 lod);

// Misc. operations

void SkelAnime_CopyFrameTable(SkelAnime* skelAnime, Vec3s* dst, Vec3s* src);
void SkelAnime_CopyFrameTableTrue(SkelAnime* skelAnime, Vec3s* dst, Vec3s* src, u8* copyFlag);
void SkelAnime_CopyFrameTableFalse(SkelAnime* skelAnime, Vec3s* dst, Vec3s* src, u8* copyFlag);

void SkelAnime_InterpFrameTable(s32 limbCount, Vec3s* dst, Vec3s* start, Vec3s* target, f32 weight);

void SkelAnime_UpdateTranslation(SkelAnime* skelAnime, Vec3f* diff, s16 angle);

/*
 * Play animations
 */

void Animation_Change(SkelAnime* skelAnime, AnimationHeader* animation, f32 playSpeed, f32 startFrame, f32 endFrame,
                      u8 mode, f32 morphFrames);
void Animation_ChangeImpl(SkelAnime* skelAnime, AnimationHeader* animation, f32 playSpeed, f32 startFrame, f32 endFrame,
                          u8 mode, f32 morphFrames, s8 taper);

void Animation_PlayOnce(SkelAnime* skelAnime, AnimationHeader* animation);
void Animation_PlayOnceSetSpeed(SkelAnime* skelAnime, AnimationHeader* animation, f32 playSpeed);
void Animation_MorphToPlayOnce(SkelAnime* skelAnime, AnimationHeader* animation, f32 morphFrames);

void Animation_PlayLoop(SkelAnime* skelAnime, AnimationHeader* animation);
void Animation_PlayLoopSetSpeed(SkelAnime* skelAnime, AnimationHeader* animation, f32 playSpeed);
void Animation_MorphToLoop(SkelAnime* skelAnime, AnimationHeader* animation, f32 morphFrames);

void Animation_EndLoop(SkelAnime* skelAnime);
void Animation_Reverse(SkelAnime* skelAnime);
void Animation_SetMorph(struct PlayState* play, SkelAnime* skelAnime, f32 morphFrames);

typedef struct {
    /* 0x00 */ AnimationHeader* animation;
    /* 0x04 */ f32 playSpeed;
    /* 0x08 */ f32 startFrame;
    /* 0x0C */ f32 frameCount;
    /* 0x10 */ u8 mode;
    /* 0x14 */ f32 morphFrames;
} AnimationInfo; // size = 0x18

void Animation_ChangeByInfo(SkelAnime* skelAnime, AnimationInfo* animationInfo, s32 index);

typedef struct {
    /* 0x00 */ AnimationHeader* animation;
    /* 0x04 */ f32 frameCount;
    /* 0x08 */ u8 mode;
    /* 0x0C */ f32 morphFrames;
} AnimationFrameCountInfo; // size = 0x10

typedef struct {
    /* 0x00 */ AnimationHeader* animation;
    /* 0x04 */ f32 playSpeed;
    /* 0x08 */ u8 mode;
    /* 0x0C */ f32 morphFrames;
} AnimationSpeedInfo; // size = 0x10

typedef struct {
    /* 0x00 */ AnimationHeader* animation;
    /* 0x04 */ u8 mode;
    /* 0x08 */ f32 morphFrames;
} AnimationMinimalInfo; // size = 0xC

/*
 * Animation helpers
 */

s32 Animation_OnFrame(SkelAnime* skelAnime, f32 frame);
s16 Animation_GetLength(void* animation);
s16 Animation_GetLastFrame(void* animation);

/*
 * Animation requests
 */

typedef enum {
    /* 0 */ ANIMENTRY_LOADFRAME,
    /* 1 */ ANIMENTRY_COPYALL,
    /* 2 */ ANIMENTRY_INTERP,
    /* 3 */ ANIMENTRY_COPYTRUE,
    /* 4 */ ANIMENTRY_COPYFALSE,
    /* 5 */ ANIMENTRY_MOVEACTOR
} AnimationType;

typedef struct {
    /* 0x000 */ DmaRequest req;
    /* 0x020 */ OSMesgQueue msgQueue;
    /* 0x038 */ OSMesg msg;
} AnimEntryLoadFrame; // size = 0x3C

typedef struct {
    /* 0x000 */ u8 queueFlag;
    /* 0x001 */ u8 vecCount;
    /* 0x004 */ Vec3s* dst;
    /* 0x008 */ Vec3s* src;
} AnimEntryCopyAll; // size = 0xC

typedef struct {
    /* 0x000 */ u8 queueFlag;
    /* 0x001 */ u8 vecCount;
    /* 0x004 */ Vec3s* base;
    /* 0x008 */ Vec3s* mod;
    /* 0x00C */ f32 weight;
} AnimEntryInterp; // size = 0x10

typedef struct {
    /* 0x000 */ u8 queueFlag;
    /* 0x001 */ u8 vecCount;
    /* 0x004 */ Vec3s* dst;
    /* 0x008 */ Vec3s* src;
    /* 0x00C */ u8* copyFlag;
} AnimEntryCopyTrue; // size = 0x10

typedef struct {
    /* 0x000 */ u8 queueFlag;
    /* 0x001 */ u8 vecCount;
    /* 0x004 */ Vec3s* dst;
    /* 0x008 */ Vec3s* src;
    /* 0x00C */ u8* copyFlag;
} AnimEntryCopyFalse; // size = 0x10

typedef struct {
    /* 0x000 */ struct Actor* actor;
    /* 0x004 */ struct SkelAnime* skelAnime;
    /* 0x008 */ f32 unk_08;
} AnimEntryMoveActor; // size = 0xC

typedef union {
    AnimEntryLoadFrame load;
    AnimEntryCopyAll copy;
    AnimEntryInterp interp;
    AnimEntryCopyTrue copy1;
    AnimEntryCopyFalse copy0;
    AnimEntryMoveActor move;
} AnimationEntryData; // size = 0x3C

typedef struct {
    /* 0x00 */ u8 type;
    /* 0x04 */ AnimationEntryData data;
} AnimationEntry; // size = 0x40

#define ANIMATION_ENTRY_MAX 50

typedef struct AnimationContext {
    s16 animationCount;
    AnimationEntry entries[ANIMATION_ENTRY_MAX];
} AnimationContext; // size = 0xC84

void AnimationContext_SetLoadFrame(struct PlayState* play, LinkAnimationHeader* animation, s32 frame, s32 limbCount,
                                   Vec3s* frameTable);
void AnimationContext_SetCopyAll(struct PlayState* play, s32 vecCount, Vec3s* dst, Vec3s* src);
void AnimationContext_SetCopyTrue(struct PlayState* play, s32 vecCount, Vec3s* dst, Vec3s* src, u8* copyFlag);
void AnimationContext_SetCopyFalse(struct PlayState* play, s32 vecCount, Vec3s* dst, Vec3s* src, u8* copyFlag);
void AnimationContext_SetInterp(struct PlayState* play, s32 vecCount, Vec3s* base, Vec3s* mod, f32 weight);
void AnimationContext_SetMoveActor(struct PlayState* play, struct Actor* actor, SkelAnime* skelAnime, f32 arg3);

void AnimationContext_SetNextQueue(struct PlayState* play);
void AnimationContext_DisableQueue(struct PlayState* play);

void AnimationContext_Reset(AnimationContext* animationCtx);
void AnimationContext_Update(struct PlayState* play, AnimationContext* animationCtx);

/*
 * Link animations
 */

// Update

s32 LinkAnimation_Update(struct PlayState* play, SkelAnime* skelAnime);

void LinkAnimation_SetUpdateFunction(SkelAnime* skelAnime);
void LinkAnimation_AnimateFrame(struct PlayState* play, SkelAnime* skelAnime);

// Play animations

void LinkAnimation_Change(struct PlayState* play, SkelAnime* skelAnime, LinkAnimationHeader* animation, f32 playSpeed,
                          f32 startFrame, f32 endFrame, u8 mode, f32 morphFrames);

void LinkAnimation_PlayOnce(struct PlayState* play, SkelAnime* skelAnime, LinkAnimationHeader* animation);
void LinkAnimation_PlayOnceSetSpeed(struct PlayState* play, SkelAnime* skelAnime, LinkAnimationHeader* animation,
                                    f32 playSpeed);

void LinkAnimation_PlayLoop(struct PlayState* play, SkelAnime* skelAnime, LinkAnimationHeader* animation);
void LinkAnimation_PlayLoopSetSpeed(struct PlayState* play, SkelAnime* skelAnime, LinkAnimationHeader* animation,
                                    f32 playSpeed);

void LinkAnimation_EndLoop(SkelAnime* skelAnime);

// Misc. operations

void LinkAnimation_CopyJointToMorph(struct PlayState* play, SkelAnime* skelAnime);
void LinkAnimation_CopyMorphToJoint(struct PlayState* play, SkelAnime* skelAnime);
void LinkAnimation_LoadToMorph(struct PlayState* play, SkelAnime* skelAnime, LinkAnimationHeader* animation, f32 frame);
void LinkAnimation_LoadToJoint(struct PlayState* play, SkelAnime* skelAnime, LinkAnimationHeader* animation, f32 frame);
void LinkAnimation_InterpJointMorph(struct PlayState* play, SkelAnime* skelAnime, f32 weight);
void LinkAnimation_BlendToJoint(struct PlayState* play, SkelAnime* skelAnime, LinkAnimationHeader* animation1,
                                f32 frame1, LinkAnimationHeader* animation2, f32 frame2, f32 blendWeight,
                                Vec3s* blendTable);
void LinkAnimation_BlendToMorph(struct PlayState* play, SkelAnime* skelAnime, LinkAnimationHeader* animation1,
                                f32 frame1, LinkAnimationHeader* animation2, f32 frame2, f32 blendWeight,
                                Vec3s* blendTable);

s32 LinkAnimation_OnFrame(SkelAnime* skelAnime, f32 frame);

#endif
