#ifndef _Z64_ANIMATION_H
#define _Z64_ANIMATION_H

#include <ultra64.h>
#include <ultra64/gbi.h>
#include <z64dma.h>

#define LINK_ANIMETION_OFFSET(addr,offset) (((u32)&_link_animetionSegmentRomStart)+((u32)addr)-((u32)&link_animetion_segment)+((u32)offset))
#define LIMB_DONE 0xFF

struct GlobalContext;
struct Actor;

typedef struct
{
    /* 0x000 */ u32 limbs[1];   // One ore more limbs, index 0 is the root limb.
} SkelLimbTable; // Size >= 4

typedef struct
{
    /* 0x000 */ Vec3s translation;      // Translation relative to parent limb.  root limb is a tranlation for entire model.
    /* 0x006 */ u8 firstChildIndex;     // The first child's index into the limb table.
    /* 0x007 */ u8 nextLimbIndex;       // The parent limb's next limb index into the limb table.
    /* 0x008 */ Gfx* displayLists[1];   // Display lists for the limb. Index 0 is the normal display list, index 1 is the far model display list.
} SkelLimbEntry; // Size = 0xC or 0x10

typedef struct
{
    /* 0x000 */ u32 limbIndexSeg;   // Segment address of SkelLimbIndex.
    /* 0x004 */ u8 limbCount;       // Number of limbs in the model.
    /* 0x005 */ char pad[3];        // Padding.
    /* 0x008 */ u8 dListCount;      // Number of display lists in the model.
    /* 0x009 */ char pad2[3];       // Padding.
} SkelAnimeLimbHeader;  // Size = 0xC

typedef struct SkelAnime
{
    /* 0x00 */ u8 limbCount; // joint_Num
    /* 0x01 */ u8 unk_01; // state? 00 = loop 02 = don't loop ?
    /* 0x02 */ u8 dListCount;
    /* 0x03 */ s8 unk_03;
    /* 0x04 */ u32 limbIndex;
    /* 0x08 */ u32* animCurrent;
    /* 0x0C */ f32 unk_0C;
    /* 0x10 */ f32 animFrameCount; // ending frame?
    /* 0x14 */ f32 unk_14; // Loop frame?
    /* 0x18 */ f32 animCurrentFrame;
    /* 0x1C */ f32 animPlaybackSpeed;
    /* 0x20 */ Vec3s* actorDrawTbl; // now_joint
    /* 0x24 */ Vec3s* unk_24; // morf_joint
    /* 0x28 */ f32 unk_28;
    /* 0x2C */ f32 unk_2C;
    /* 0x30 */ s32 (*animUpdate)();
    /* 0x34 */ s8 unk_34;
    /* 0x35 */ u8 unk_35; // flags
    /* 0x36 */ s16 unk_36;
    /* 0x38 */ s16 unk_38;
    /* 0x3A */ s16 unk_3A;
    /* 0x3C */ s16 unk_3C;
    /* 0x3E */ s16 unk_3E;
    /* 0x40 */ s16 unk_40;
    /* 0x42 */ s16 unk_42;
} SkelAnime; // size = 0x44

typedef s16 AnimationRotationValue;

typedef struct
{
    /* 0x000 */ u16 x;
    /* 0x002 */ u16 y;
    /* 0x004 */ u16 z;
} AnimationRotationIndex; // size = 0x06

typedef struct
{
    /* 0x000 */ s16 frameCount;
    /* 0x002 */ s16 unk_02;
    /* 0x004 */ u32 rotationValueSeg; // referenced as tbl
    /* 0x008 */ u32 rotationIndexSeg; // referenced as ref_tbl
    /* 0x00C */ u16 limit;
    /* 0x00E */ char pad[2];
} AnimationHeader; // size = 0x10

typedef enum {
    ANIMATION_TYPE0,
    ANIMATION_TYPE1,
    ANIMATION_TYPE2,
    ANIMATION_TYPE3,
    ANIMATION_TYPE4,
    ANIMATION_TYPE5
} AnimationType;

typedef struct
{
    /* 0x000 */ DmaRequest req;
    /* 0x020 */ OSMesgQueue msgQueue;
    /* 0x038 */ OSMesg msg;
} AnimationEntryType0;

typedef struct
{
    /* 0x000 */ u8 unk_00;
    /* 0x001 */ u8 vecCount;
    /* 0x002 */ char pad[2];
    /* 0x004 */ Vec3s* dst;
    /* 0x008 */ Vec3s* src;
    /* 0x00C */ char unk_0C[0x30];
} AnimationEntryType1;

typedef struct
{
    /* 0x000 */ u8 unk_00;
    /* 0x001 */ u8 unk_01;
    /* 0x002 */ char pad[2];
    /* 0x004 */ Vec3s* unk_04;
    /* 0x008 */ Vec3s* unk_08;
    /* 0x00C */ f32 unk_0C;
    /* 0x010 */ char unk_10[0x2C];
} AnimationEntryType2;

typedef struct
{
    /* 0x000 */ u8 unk_00;
    /* 0x001 */ u8 vecCount;
    /* 0x002 */ char pad[2];
    /* 0x004 */ Vec3s* dst;
    /* 0x008 */ Vec3s* src;
    /* 0x00C */ u8* index;
    /* 0x010 */ char unk_10[0x2C];
} AnimationEntryType3;

typedef struct
{
    /* 0x000 */ u8 unk_00;
    /* 0x001 */ u8 vecCount;
    /* 0x002 */ char unk_02[0x2];
    /* 0x004 */ Vec3s* dst;
    /* 0x008 */ Vec3s* src;
    /* 0x00C */ u8* index;
    /* 0x010 */ char unk_10[0x2C];
} AnimationEntryType4;

typedef struct
{
    /* 0x000 */ struct Actor* actor;
    /* 0x004 */ SkelAnime* skelAnime;
    /* 0x008 */ f32 unk_08;
    /* 0x00C */ char unk_0C[0x30];
} AnimationEntryType5;

typedef struct
{
    /* 0x000 */ u8 raw[0x3C];
} AnimationEntryRaw;

typedef union
{
    AnimationEntryRaw raw;
    AnimationEntryType0 type0;
    AnimationEntryType1 type1;
    AnimationEntryType2 type2;
    AnimationEntryType3 type3;
    AnimationEntryType4 type4;
    AnimationEntryType5 type5;
} AnimationEntryType;

typedef struct
{
    /* 0x000 */ u8 type;
    /* 0x001 */ u8 unk_01;
    /* 0x002 */ char pad[2];
    /* 0x004 */ AnimationEntryType types;
} AnimationEntry; // size = 0x40

typedef struct AnimationContext
{
    s16 animationCount;
    char unk_02[2];
    AnimationEntry entries[0x32];
} AnimationContext;

typedef struct
{
    u16 frameCount;
    char pad[2];
    u32 animationSegAddress;
} LinkAnimetionEntry;

typedef s32 (*SkelAnime_LimbUpdateMatrix)(struct GlobalContext* globalCtx, s32 limbIndex, Gfx** dList,
             Vec3f* pos, Vec3s* rot, struct Actor* actor);

typedef void (*SkelAnime_LimbAppendDlist)(struct GlobalContext* globalCtx, s32 limbIndex, Gfx** dList,
                                          Vec3s* rot, struct Actor* actor);

typedef s32 (*SkelAnime_LimbUpdateMatrix2)(struct GlobalContext* globalCtx, s32 limbIndex, Gfx** dList,
             Vec3f* pos, Vec3s* rot, struct Actor* actor, Gfx** gfx);

typedef void (*SkelAnime_LimbAppendDlist2)(struct GlobalContext* globalCtx, s32 limbIndex, Gfx** dList,
                                          Vec3s* rot, struct Actor* actor, Gfx** gfx);

typedef void (*AnimationEntryCallback)(struct GlobalContext*, AnimationEntryType*);


extern u32 link_animetion_segment;

#endif
