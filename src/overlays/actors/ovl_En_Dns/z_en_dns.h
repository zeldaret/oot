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

typedef u32 (*EnDnsCanBuyFunc)(struct EnDns*);
typedef void (*EnDnsPaymentFunc)(struct EnDns*);

typedef struct EnDnsPurchaseInfo {
    /* 0x00 */ s16 price;
    /* 0x02 */ s16 unk_2; // unused
    /* 0x04 */ s32 getItemId;
    /* 0x08 */ EnDnsCanBuyFunc canBuy;
    /* 0x0C */ EnDnsPaymentFunc payment;
} EnDnsPurchaseInfo;

typedef void (*EnDnsActionFunc)(struct EnDns*, struct PlayState*);

typedef struct EnDns {
    /* 0x0000 */ Actor actor;
    /* 0x14C */ SkelAnime skelAnime;
    /* 0x190 */ Vec3s jointTable[BUSINESS_SCRUB_LIMB_MAX];
    /* 0x1FC */ Vec3s morphTable[BUSINESS_SCRUB_LIMB_MAX];
    /* 0x268 */ EnDnsActionFunc actionFunc;
    /* 0x26C */ ColliderCylinder collider;
    /* 0x2B8 */ s16 timer;
    /* 0x2BA */ u8 animIndex;
    /* 0x2BB */ u8 isColliderEnabled;
    /* 0x2BC */ u8 runUpdBgCheckInfo;
    /* 0x2BD */ u8 spawnHeartsAfterBurrow;
    /* 0x2C0 */ EnDnsPurchaseInfo* purchaseInfo;
    /* 0x2C4 */ f32 floorY;
} EnDns; // size = 0x02C8

#endif
