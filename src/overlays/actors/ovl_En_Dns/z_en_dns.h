#ifndef Z_EN_DNS_H
#define Z_EN_DNS_H

#include "ultra64.h"
#include "actor.h"
#include "assets/objects/object_shopnuts/object_shopnuts.h"

#define DNS_GET_TYPE(thisx) ((thisx)->params)

typedef enum EnDnsType {
    /*  0 */ DNS_TYPE_DEKU_NUTS_5,
    /*  1 */ DNS_TYPE_DEKU_STICKS_1,
    /*  2 */ DNS_TYPE_HEART_PIECE,
    /*  3 */ DNS_TYPE_DEKU_SEEDS_30,
    /*  4 */ DNS_TYPE_DEKU_SHIELD,
    /*  5 */ DNS_TYPE_BOMBS_5,
    /*  6 */ DNS_TYPE_ARROWS_30,
    /*  7 */ DNS_TYPE_RED_POTION,
    /*  8 */ DNS_TYPE_GREEN_POTION,
    /*  9 */ DNS_TYPE_DEKU_STICK_UPGRADE,
    /* 10 */ DNS_TYPE_DEKU_NUT_UPGRADE
} EnDnsType;

typedef enum EnDnsCanBuyResult {
    /*  0 */ DNS_CANBUY_RESULT_NEED_RUPEES,
    /*  1 */ DNS_CANBUY_RESULT_CAPACITY_FULL,
    /*  2 */ DNS_CANBUY_RESULT_SUCCESS_NEW_ITEM,
    /*  3 */ DNS_CANBUY_RESULT_CANT_GET_NOW,
    /*  4 */ DNS_CANBUY_RESULT_SUCCESS
} EnDnsCanBuyResult;

typedef enum EnDnsAnimation {
    /*  0 */ DNS_ANIM_IDLE,
    /*  1 */ DNS_ANIM_BURROW,
    /*  2 */ DNS_ANIM_IDLE_TRANSITION
} EnDnsAnimation;

struct EnDns;

typedef struct EnDnsPurchaseInfo {
    /* 0x00 */ s16 price;
    /* 0x02 */ s16 unk_2; // unused
    /* 0x04 */ s32 gid;
    /* 0x08 */ u32 (*canBuy)(struct EnDns*);
    /* 0x0C */ void (*payment)(struct EnDns*);
} EnDnsPurchaseInfo;

typedef struct EnDns {
    /* 0x0000 */ Actor actor;
    /* 0x14C */ SkelAnime unk14C;
    /* 0x190 */ Vec3s unk190[BUSINESS_SCRUB_LIMB_MAX];
    /* 0x1FC */ Vec3s unk1FC[BUSINESS_SCRUB_LIMB_MAX];
    /* 0x268 */ void (*unk268)(struct EnDns*, struct PlayState*);
    /* 0x26C */ ColliderCylinder unk26C;
    /* 0x2B8 */ s16 unk2B8;
    /* 0x2BA */ u8 animIndex;
    /* 0x2BB */ u8 isColliderEnabled;
    /* 0x2BC */ u8 unk2BC;
    /* 0x2BD */ u8 unk2BD;
    /* 0x2C0 */ EnDnsPurchaseInfo* unk2C0;
    /* 0x2C4 */ f32 unk2C4;
} EnDns; // size = 0x02C8

#endif
