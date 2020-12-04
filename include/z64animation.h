#ifndef _Z64_ANIMATION_H
#define _Z64_ANIMATION_H

#include "ultra64.h"
#include "z64dma.h"
#include "z64math.h"

extern u32 link_animetion_segment;
struct GlobalContext;
struct Actor;
struct SkelAnime;

#define LINK_ANIMATION_OFFSET(addr, offset) \
    (((u32)&_link_animetionSegmentRomStart) + ((u32)addr) - ((u32)&link_animetion_segment) + ((u32)offset))
#define LIMB_DONE 0xFF
#define ANIMATION_ENTRY_MAX 50
#define ANIM_FLAG_UPDATEXZ (1 << 1)
#define ANIM_FLAG_UPDATEY (1 << 4)

typedef enum {
    ANIMMODE_LOOP,
    ANIMMODE_LOOP_INTERP,
    ANIMMODE_STOP,
    ANIMMODE_STOP_INTERP,
    ANIMMODE_LOOP_PARTIAL,
    ANIMMODE_LOOP_PARTIAL_INTERP
} AnimationModes;

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

typedef struct {
    /* 0x00 */ Vec3s jointPos; // Root is position in model space, children are relative to parent
    /* 0x06 */ u8 child;
    /* 0x07 */ u8 sibling;
    /* 0x08 */ s32 unk_08; // Type of data contained in segment
    /* 0x0C */ UNK_PTR segment; // Segment address of data. Currently unclear what.
} SkinLimb; // size = 0x10

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

typedef struct {
    /* 0x00 */ s16 frameCount;
    /* 0x04 */ u32 segment;
} LinkAnimationHeader; // size = 0x8

typedef struct {
    /* 0x00 */ u16 x;
    /* 0x02 */ u16 y;
    /* 0x04 */ u16 z;
} JointIndex; // size = 0x06

typedef struct {
    /* 0x00 */ s16 frameCount;
    /* 0x04 */ s16* frameDataSeg; // "tbl"
    /* 0x08 */ JointIndex* jointIndexSeg; // "ref_tbl"
    /* 0x0C */ u16 limit;
} AnimationHeader; // size = 0x10

// Unused
typedef struct {
    /* 0x00 */ s16 xMax;
    /* 0x02 */ s16 x;
    /* 0x04 */ s16 yMax;
    /* 0x06 */ s16 y;
    /* 0x08 */ s16 zMax;
    /* 0x10 */ s16 z;
} JointKey; // size = 0x12

// Unused
typedef struct {
    /* 0x00 */ s16 frameCount;
    /* 0x02 */ s16 limbCount;
    /* 0x04 */ s16* frameDataSeg;
    /* 0x08 */ JointKey* jointKeySeg;
} AnimationHeader2; // size = 0xC

typedef s32 (*OverrideLimbDrawOpa)(struct GlobalContext* globalCtx, s32 limbIndex, Gfx** dList, Vec3f* pos, Vec3s* rot,
                                   void*);

typedef void (*PostLimbDrawOpa)(struct GlobalContext* globalCtx, s32 limbIndex, Gfx** dList, Vec3s* rot, void*);

typedef s32 (*OverrideLimbDraw)(struct GlobalContext* globalCtx, s32 limbIndex, Gfx** dList, Vec3f* pos, Vec3s* rot,
                                void*, Gfx** gfx);

typedef void (*PostLimbDraw)(struct GlobalContext* globalCtx, s32 limbIndex, Gfx** dList, Vec3s* rot, void*,
                             Gfx** gfx);

typedef enum {
    ANIMENTRY_LOADLINK,
    ANIMENTRY_COPYALL,
    ANIMENTRY_INTERP,
    ANIMENTRY_COPYTRUE,
    ANIMENTRY_COPYFALSE,
    ANIMENTRY_TYPE5
} AnimationType;

typedef struct {
    /* 0x000 */ DmaRequest req;
    /* 0x020 */ OSMesgQueue msgQueue;
    /* 0x038 */ OSMesg msg;
} AnimEntryLoadLinkData;

typedef struct {
    /* 0x000 */ u8 queueFlag;
    /* 0x001 */ u8 vecCount;
    /* 0x004 */ Vec3s* dst;
    /* 0x008 */ Vec3s* src;
} AnimEntryCopyAll;

typedef struct {
    /* 0x000 */ u8 queueFlag;
    /* 0x001 */ u8 limbCount;
    /* 0x004 */ Vec3s* base;
    /* 0x008 */ Vec3s* mod;
    /* 0x00C */ f32 weight;
} AnimEntryInterp;

typedef struct {
    /* 0x000 */ u8 queueFlag;
    /* 0x001 */ u8 vecCount;
    /* 0x004 */ Vec3s* dst;
    /* 0x008 */ Vec3s* src;
    /* 0x00C */ u8* copyFlag;
} AnimEntryCopyTrue;

typedef struct {
    /* 0x000 */ u8 queueFlag;
    /* 0x001 */ u8 vecCount;
    /* 0x004 */ Vec3s* dst;
    /* 0x008 */ Vec3s* src;
    /* 0x00C */ u8* copyFlag;
} AnimEntryCopyFalse;

typedef struct {
    /* 0x000 */ struct Actor* actor;
    /* 0x004 */ struct SkelAnime* skelAnime;
    /* 0x008 */ f32 unk_08;
} AnimEntryType5;

typedef struct {
    /* 0x004 */ char raw[0x3C];
} AnimEntryRaw;

typedef union {
    AnimEntryRaw raw;
    AnimEntryLoadLinkData type0;
    AnimEntryCopyAll type1;
    AnimEntryInterp type2;
    AnimEntryCopyTrue type3;
    AnimEntryCopyFalse type4;
    AnimEntryType5 type5;
} AnimationEntryData;

typedef struct {
    /* 0x00 */ u8 type;
    /* 0x04 */ AnimationEntryData data;
} AnimationEntry; // size = 0x40

typedef struct AnimationContext {
    s16 animationCount;
    AnimationEntry entries[ANIMATION_ENTRY_MAX];
} AnimationContext;

typedef void (*AnimationEntryCallback)(struct GlobalContext* globalCtx, AnimationEntryData* data);

// fcurve_skelanime structs
typedef struct {
    /* 0x0000 */ u16 unk_00; // appears to be flags
    /* 0x0002 */ s16 unk_02;
    /* 0x0004 */ s16 unk_04;
    /* 0x0006 */ s16 unk_06;
    /* 0x0008 */ f32 unk_08;
} TransformData; // size = 0xC

typedef struct {
    /* 0x0000 */ u8* refIndex;
    /* 0x0004 */ TransformData* transformData;
    /* 0x0008 */ s16* copyValues;
    /* 0x000C */ s16 unk_0C;
    /* 0x000E */ s16 unk_10;
} TransformUpdateIndex; // size 0x10

typedef struct {
    /* 0x0000 */ u8 firstChildIdx;
    /* 0x0001 */ u8 nextLimbIdx;
    /* 0x0004 */ Gfx* dList[2];
} SkelCurveLimb; // size >= 0x8

typedef struct {
    /* 0x0000 */ SkelCurveLimb** limbs;
    /* 0x0004 */ u8 limbCount;
} SkelCurveLimbList; // size = 0x8

typedef struct {
    /* 0x0000 */ Vec3s scale;
    /* 0x0006 */ Vec3s rot;
    /* 0x000C */ Vec3s pos;
} LimbTransform; // size = 0x12

typedef struct {
    /* 0x0000 */ u8 limbCount;
    /* 0x0004 */ SkelCurveLimb** limbList;
    /* 0x0008 */ TransformUpdateIndex* transUpdIdx;
    /* 0x000C */ f32 unk_0C; // seems to be unused
    /* 0x0010 */ f32 animFinalFrame;
    /* 0x0014 */ f32 animSpeed;
    /* 0x0018 */ f32 animCurFrame;
    /* 0x001C */ LimbTransform* transforms;
} SkelAnimeCurve; // size = 0x20

typedef s32 (*OverrideCurveLimbDraw)(struct GlobalContext* globalCtx, SkelAnimeCurve* skelCuve, s32 limbIndex, void*);
typedef void (*PostCurveLimbDraw)(struct GlobalContext* globalCtx, SkelAnimeCurve* skelCuve, s32 limbIndex, void*);

typedef s32 (*AnimationUpdateFunc)();

typedef struct SkelAnime {
    /* 0x00 */ u8 limbCount; // "joint_Num"
    /* 0x01 */ u8 mode; // 0/1 repeat animation, 2/3 stop animation, >= 4 starts on frame 0 and plays once
    /* 0x02 */ u8 dListCount;
    /* 0x03 */ s8 unk_03;
    /* 0x04 */ void** skeleton; // An array of pointers to limbs. Can be StandardLimb, LodLimb or SkinLimb.
    /* 0x08 */ void* animation; // Can be an AnimationHeader or LinkAnimationHeader.
    /* 0x0C */ f32 firstFrame;
    /* 0x10 */ f32 lastFrame;
    /* 0x14 */ f32 animLength;
    /* 0x18 */ f32 curFrame;
    /* 0x1C */ f32 playSpeed;
    /* 0x20 */ Vec3s* jointTbl; // "now_joint"
    /* 0x24 */ Vec3s* morphTbl; // "morf_joint"
    /* 0x28 */ f32 morphWeight;
    /* 0x2C */ f32 morphRate;
    /* 0x30 */ AnimationUpdateFunc update;
    /* 0x34 */ s8 initFlags;
    /* 0x35 */ u8 flags;
    /* 0x36 */ s16 prevFrameRot;
    /* 0x38 */ Vec3s prevFramePos;
    /* 0x3E */ Vec3s unk_3E;
} SkelAnime; // size = 0x44

#endif
