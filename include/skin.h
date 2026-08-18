#ifndef SKIN_H
#define SKIN_H

#include "animation.h"

struct Actor;
struct GraphicsContext;
struct PlayState;

/**
 * Holds a compact version of a vertex used in the Skin system
 * It is used to initialise the Vtx used by an animated limb to common data
 * that is independent of limb
 */
typedef struct SkinVertex {
    /* 0x00 */ u16 index; // vertex buffer index
    /* 0x02 */ s16 s; // s and t are texture coordinates (also known as u and v)
    /* 0x04 */ s16 t;
    /* 0x06 */ s8 normX; // limb-space vertex normal
    /* 0x07 */ s8 normY;
    /* 0x08 */ s8 normZ;
    /* 0x09 */ u8 alpha;
} SkinVertex; // size = 0xA

/**
 * Describes a position displacement and a vertex weight to be applied to a limb at index `limbIndex`
 */
typedef struct SkinTransformation {
    /* 0x00 */ u8 limbIndex; // limb index from which to source the matrix
    /* 0x02 */ s16 x; // position in the limb space of limbIndex
    /* 0x04 */ s16 y;
    /* 0x06 */ s16 z;
    /* 0x08 */ u8 weight; // in 100th of a unit in model space
} SkinTransformation; // size = 0xA

typedef struct SkinLimbModif {
    /* 0x00 */ u16 vtxCount; // number of vertices in this modif entry
    /* 0x02 */ u16 transformCount; // number of transformations
    /* 0x04 */ u16 staticLimbTransformationIndex; // indicates where to find the limb-space normal, or if staticFlag where to also find the limb-space position
    /* 0x08 */ SkinVertex* skinVertices;
    /* 0x0C */ SkinTransformation* limbTransformations;
} SkinLimbModif; // size = 0x10

typedef struct SkinAnimatedLimbData {
    /* 0x00 */ u16 totalVtxCount; // total vertex count for all modif entries
    /* 0x02 */ u16 limbModifCount;
    /* 0x04 */ SkinLimbModif* limbModifications;
    /* 0x08 */ Gfx* dlist;
} SkinAnimatedLimbData; // size = 0xC

#define SKIN_LIMB_TYPE_ANIMATED 4
#define SKIN_LIMB_TYPE_NORMAL 11

typedef struct SkinLimb {
    /* 0x00 */ Vec3s jointPos; // Root is position in model space, children are relative to parent
    /* 0x06 */ u8 child;
    /* 0x07 */ u8 sibling;
    /* 0x08 */ s32 segmentType; // Type of data contained in segment
    /* 0x0C */ void* segment; // Gfx* if segmentType is SKIN_LIMB_TYPE_NORMAL, SkinAnimatedLimbData* if segmentType is SKIN_LIMB_TYPE_ANIMATED, NULL otherwise
} SkinLimb; // size = 0x10

typedef struct SkinLimbVtx {
    /* 0x000 */ u8 index; // alternates every draw cycle
    /* 0x004 */ Vtx* buf[2]; // number of vertices in buffer determined by `totalVtxCount`, vertices are in model space
} SkinLimbVtx; // size = 0xC

typedef struct Skin {
    /* 0x000 */ SkeletonHeader* skeletonHeader;
    /* 0x004 */ MtxF mtx; // model -> world matrix
    /* 0x044 */ s32 limbCount;
    /* 0x048 */ SkinLimbVtx* vtxTable; // double buffered list of vertices for each limb
    /* 0x04C */ SkelAnime skelAnime;
} Skin; // size = 0x90

typedef void (*SkinPostLimbDraw)(struct Actor*, struct PlayState*, Skin*);
typedef s32 (*SkinOverrideLimbDraw)(struct Actor*, struct PlayState*, s32, Skin*);

#define SKIN_DRAW_FLAG_CUSTOM_TRANSFORMS (1 << 0)
#define SKIN_DRAW_FLAG_CUSTOM_MATRIX     (1 << 1)

#define SKIN_TRANSFORM_IS_FHG 0x23

void Skin_UpdateVertices(MtxF* mtx, SkinVertex* skinVertices, SkinLimbModif* modifEntry, Vtx* vtxBuf, Vec3f* pos);
void Skin_DrawAnimatedLimb(struct GraphicsContext* gfxCtx, Skin* skin, s32 limbIndex, s32 staticFlag, s32 drawFlags);
void Skin_DrawLimb(struct GraphicsContext* gfxCtx, Skin* skin, s32 limbIndex, Gfx* dlistOverride, s32 drawFlags);
void Skin_DrawPT(struct Actor* actor, struct PlayState* play, Skin* skin, SkinPostLimbDraw postDraw, s32 setTranslation);
void Skin_DrawPOT(struct Actor* actor, struct PlayState* play, Skin* skin, SkinPostLimbDraw postDraw,
                   SkinOverrideLimbDraw overrideLimbDraw, s32 setTranslation);
void Skin_DrawPOTS(struct Actor* actor, struct PlayState* play, Skin* skin, SkinPostLimbDraw postDraw,
                   SkinOverrideLimbDraw overrideLimbDraw, s32 setTranslation, s32 staticFlag);
void Skin_DrawPOTSF(struct Actor* actor, struct PlayState* play, Skin* skin, SkinPostLimbDraw postDraw,
                   SkinOverrideLimbDraw overrideLimbDraw, s32 setTranslation, s32 staticFlag, s32 drawFlags);
void Skin_GetLimbPos(Skin* skin, s32 limbIndex, Vec3f* offset, Vec3f* dst);
void Skin_Init(struct PlayState* play, Skin* skin, SkeletonHeader* skeletonHeader, AnimationHeader* animationHeader);
void Skin_Free(struct PlayState* play, Skin* skin);
s32 Skin_ApplyAnimTransformations(Skin* skin, MtxF* limbMatrices, struct Actor* actor, s32 setTranslation);

#endif
