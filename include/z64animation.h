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

// This flag seems like it was intended to be paired with `ANIM_FLAG_UPDATE_Y` to control
// XZ movement based on the current animation.
// However, this flag is not checked by the Skelanime system. XZ movement will always occur
// regardless of the current state of this flag, as long as the "Actor Move" Anim Task is in use.
// The name of this flag is speculative based on its usage in Player and in other actors.
//
// In practice, this flag only affects the scaling of Player's XZ position based on age.
#define ANIM_FLAG_UPDATE_XZ (1 << 0)

// Enables the movement of an actor in the Y-axis based on the current animation.
// This only has an effect if the "Actor Move" Anim Task is in use.
//
// This animation-driven movement does not replace "normal" movement from other sources
// such as speed/velocity and collisions. The actor should stop updating other sources of movement
// as required if they are preventing the animation from playing as intended.
// An option is to implement and use `ANIM_FLAG_OVERRIDE_MOVEMENT`.
#define ANIM_FLAG_UPDATE_Y (1 << 1)

// (player-only) Related to scaling an animation from/to child/adult
#define ANIM_FLAG_PLAYER_2 (1 << 2)

// (player-only) Call AnimTaskQueue_AddActorMove
#define ANIM_FLAG_PLAYER_SETMOVE (1 << 3)

//
#define ANIM_FLAG_NO_MOVE (1 << 4)

// Disables "normal" movement from sources like speed/velocity and collisions, which allows the
// animation to have full control over the actor's movement.
//
// Note that individual actors are responsible for implementing the functionality of this flag.
// In practice, Player is the only actor who implements this flag.
#define ANIM_FLAG_OVERRIDE_MOVEMENT (1 << 7)

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
 * Animation Task Queue
 */

typedef enum {
    /* 0 */ ANIMTASK_LOAD_PLAYER_FRAME,
    /* 1 */ ANIMTASK_COPY,
    /* 2 */ ANIMTASK_INTERP,
    /* 3 */ ANIMTASK_COPY_USING_MAP,
    /* 4 */ ANIMTASK_COPY_USING_MAP_INVERTED,
    /* 5 */ ANIMTASK_ACTOR_MOVE
} AnimTaskType;

typedef struct {
    /* 0x00 */ DmaRequest req;
    /* 0x20 */ OSMesgQueue msgQueue;
    /* 0x38 */ OSMesg msg;
} AnimTaskLoadPlayerFrame; // size = 0x3C

typedef struct {
    /* 0x00 */ u8 group;
    /* 0x01 */ u8 vecCount;
    /* 0x04 */ Vec3s* dest;
    /* 0x08 */ Vec3s* src;
} AnimTaskCopy; // size = 0xC

typedef struct {
    /* 0x00 */ u8 group;
    /* 0x01 */ u8 vecCount;
    /* 0x04 */ Vec3s* base;
    /* 0x08 */ Vec3s* mod;
    /* 0x0C */ f32 weight;
} AnimTaskInterp; // size = 0x10

typedef struct {
    /* 0x00 */ u8 group;
    /* 0x01 */ u8 vecCount;
    /* 0x04 */ Vec3s* dest;
    /* 0x08 */ Vec3s* src;
    /* 0x0C */ u8* limbCopyMap;
} AnimTaskCopyUsingMap; // size = 0x10

typedef struct {
    /* 0x00 */ u8 group;
    /* 0x01 */ u8 vecCount;
    /* 0x04 */ Vec3s* dest;
    /* 0x08 */ Vec3s* src;
    /* 0x0C */ u8* limbCopyMap;
} AnimTaskCopyUsingMapInverted; // size = 0x10

typedef struct {
    /* 0x00 */ struct Actor* actor;
    /* 0x04 */ struct SkelAnime* skelAnime;
    /* 0x08 */ f32 diffScaleY;
} AnimTaskActorMove; // size = 0xC

typedef union {
    AnimTaskLoadPlayerFrame loadPlayerFrame;
    AnimTaskCopy copy;
    AnimTaskInterp interp;
    AnimTaskCopyUsingMap copyUsingMap;
    AnimTaskCopyUsingMapInverted copyUsingMapInverted;
    AnimTaskActorMove actorMove;
} AnimTaskData; // size = 0x3C

typedef struct {
    /* 0x00 */ u8 type;
    /* 0x04 */ AnimTaskData data;
} AnimTask; // size = 0x40

#define ANIM_TASK_QUEUE_MAX 50

typedef struct AnimTaskQueue {
    s16 count;
    AnimTask tasks[ANIM_TASK_QUEUE_MAX];
} AnimTaskQueue; // size = 0xC84

void AnimTaskQueue_AddLoadPlayerFrame(struct PlayState* play, LinkAnimationHeader* animation, s32 frame, s32 limbCount,
                                      Vec3s* frameTable);
void AnimTaskQueue_AddCopy(struct PlayState* play, s32 vecCount, Vec3s* dest, Vec3s* src);
void AnimTaskQueue_AddInterp(struct PlayState* play, s32 vecCount, Vec3s* base, Vec3s* mod, f32 weight);
void AnimTaskQueue_AddCopyUsingMap(struct PlayState* play, s32 vecCount, Vec3s* dest, Vec3s* src, u8* limbCopyMap);
void AnimTaskQueue_AddCopyUsingMapInverted(struct PlayState* play, s32 vecCount, Vec3s* dest, Vec3s* src, u8* limbCopyMap);
void AnimTaskQueue_AddActorMove(struct PlayState* play, struct Actor* actor, SkelAnime* skelAnime, f32 moveDiffScaleY);

void AnimTaskQueue_SetNextGroup(struct PlayState* play);
void AnimTaskQueue_DisableTransformTasksForGroup(struct PlayState* play);

void AnimTaskQueue_Reset(AnimTaskQueue* animTaskQueue);
void AnimTaskQueue_Update(struct PlayState* play, AnimTaskQueue* animTaskQueue);

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
