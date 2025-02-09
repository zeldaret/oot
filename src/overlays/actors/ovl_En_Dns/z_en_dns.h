#ifndef Z_EN_DNS_H
#define Z_EN_DNS_H

#include "ultra64.h"
#include "z64actor.h"
#include "assets/objects/object_shopnuts/object_shopnuts.h"

typedef enum BusinessScrubLimb {
    /* 0x00 */ BUSINESS_SCRUB_LIMB_NONE,
    /* 0x01 */ BUSINESS_SCRUB_LIMB_ROOT,
    /* 0x02 */ BUSINESS_SCRUB_LIMB_LEFT_THIGH,
    /* 0x03 */ BUSINESS_SCRUB_LIMB_LEFT_SHIN,
    /* 0x04 */ BUSINESS_SCRUB_LIMB_LEFT_FOOT,
    /* 0x05 */ BUSINESS_SCRUB_LIMB_RIGHT_THIGH,
    /* 0x06 */ BUSINESS_SCRUB_LIMB_RIGHT_SHIN,
    /* 0x07 */ BUSINESS_SCRUB_LIMB_RIGHT_FOOT,
    /* 0x08 */ BUSINESS_SCRUB_LIMB_TOP_LEAF,
    /* 0x09 */ BUSINESS_SCRUB_LIMB_NOSE,
    /* 0x0A */ BUSINESS_SCRUB_LIMB_LEFT_UPPER_ARM,
    /* 0x0B */ BUSINESS_SCRUB_LIMB_LEFT_FOREARM,
    /* 0x0C */ BUSINESS_SCRUB_LIMB_LEFT_HAND,
    /* 0x0D */ BUSINESS_SCRUB_LIMB_RIGHT_UPPER_ARM,
    /* 0x0E */ BUSINESS_SCRUB_LIMB_RIGHT_FOREARM,
    /* 0x0F */ BUSINESS_SCRUB_LIMB_RIGHT_HAND,
    /* 0x10 */ BUSINESS_SCRUB_LIMB_EYES,
    /* 0x11 */ BUSINESS_SCRUB_LIMB_BODY,
    /* 0x12 */ BUSINESS_SCRUB_LIMB_MAX
} BusinessScrubLimb;

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

typedef void (*EnDnsActionFunc)(struct EnDns*, struct PlayState*);
typedef u32 (*EnDnsCanBuyFunc)(struct EnDns*);
typedef void (*EnDnsPaymentFunc)(struct EnDns*);

typedef struct DnsItemEntry {
    /* 0x00 */ s16 itemPrice;
    /* 0x02 */ u16 itemAmount;
    /* 0x04 */ s32 getItemId;
    /* 0x08 */ EnDnsCanBuyFunc canBuy;
    /* 0x0C */ EnDnsPaymentFunc payment;
} DnsItemEntry; // size = 0x10

typedef struct EnDns {
    /* 0x0000 */ Actor actor;
    /* 0x014C */ SkelAnime skelAnime;
    /* 0x0190 */ Vec3s jointTable[BUSINESS_SCRUB_LIMB_MAX];
    /* 0x01FC */ Vec3s morphTable[BUSINESS_SCRUB_LIMB_MAX];
    /* 0x0268 */ EnDnsActionFunc actionFunc;
    /* 0x026C */ ColliderCylinder collider;
    /* 0x02B8 */ s16 dustTimer;
    /* 0x02BA */ u8 animIndex; // set but not read
    /* 0x02BB */ u8 isColliderEnabled;
    /* 0x02BC */ u8 standOnGround;
    /* 0x02BD */ u8 dropCollectible;
    /* 0x02C0 */ DnsItemEntry* dnsItemEntry;
    /* 0x02C4 */ f32 yInitPos;
} EnDns; // size = 0x02C8

#endif
