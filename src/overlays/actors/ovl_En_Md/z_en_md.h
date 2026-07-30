#ifndef Z_EN_MD_H
#define Z_EN_MD_H

#include "ultra64.h"
#include "actor.h"
#include "assets/objects/object_md/object_md.h"

struct EnMd;

typedef void (*EnMdActionFunc)(struct EnMd*, struct PlayState*);

#define ENMD_GET_PATH_INDEX(this) PARAMS_GET_S(this->actor.params, 8, 8)
#define ENMD_GET_PATH_INDEX_NOSHIFT(this) PARAMS_GET_NOSHIFT(this->actor.params, 8, 8)

#define ENMD_PATH_NONE 0xFF

typedef struct EnMd {
    /* 0x000 */ Actor actor;
    /* 0x14C */ SkelAnime unk14C;
    /* 0x190 */ EnMdActionFunc unk190;
    /* 0x194 */ ColliderCylinder unk194;
    /* 0x1E0 */ NpcInteractInfo interactInfo;
    /* 0x208 */ u8 messageEntry;      // tracks message state changes, like with `BOX_BREAK` or `TEXTID`
    /* 0x209 */ u8 messageState;      // last known result of `Message_GetState`
    /* 0x20A */ u8 animSequenceEntry; // each one changes animation info and waits
    /* 0x20B */ u8 animSequence;
    /* 0x20C */ s16 unk20C;
    /* 0x20E */ s16 unk20E;
    /* 0x210 */ s16 unk210;
    /* 0x212 */ s16 unk212;
    /* 0x214 */ s16 fidgetTableY[MIDO_LIMB_MAX];
    /* 0x236 */ s16 fidgetTableZ[MIDO_LIMB_MAX];
    /* 0x258 */ Vec3s unk258[MIDO_LIMB_MAX];
    /* 0x2BE */ Vec3s unk2BE[MIDO_LIMB_MAX];
} EnMd; // size = 0x0324

#endif
