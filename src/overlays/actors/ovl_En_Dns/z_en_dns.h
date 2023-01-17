#ifndef Z_EN_DNS_H
#define Z_EN_DNS_H

#include "ultra64.h"
#include "global.h"
#include "assets/objects/object_shopnuts/object_shopnuts.h"

#define EN_DNS_TYPE(thisx) ((thisx)->actor.params)
typedef enum {
    /*  0 */ EN_DNS_TYPE_DEKU_NUTS_5,
    /*  1 */ EN_DNS_TYPE_DEKU_STICKS_1,
    /*  2 */ EN_DNS_TYPE_HEART_PIECE,
    /*  3 */ EN_DNS_TYPE_DEKU_SEEDS_30,
    /*  4 */ EN_DNS_TYPE_DEKU_SHIELD,
    /*  5 */ EN_DNS_TYPE_BOMBS_5,
    /*  6 */ EN_DNS_TYPE_ARROWS_30,
    /*  7 */ EN_DNS_TYPE_RED_POTION,
    /*  8 */ EN_DNS_TYPE_GREEN_POTION,
    /*  9 */ EN_DNS_TYPE_STICK_UPGRADE,
    /* 10 */ EN_DNS_TYPE_NUT_UPGRADE,
} EnDnsType;

typedef enum {
    /*  0 */ CANBUY_RESULT_NEED_RUPEES,
    /*  1 */ CANBUY_RESULT_CAPACITY_FULL,
    /*  2 */ CANBUY_RESULT_NEW_ITEM,
    /*  3 */ CANBUY_RESULT_CANT_GET_NOW,
    /*  4 */ CANBUY_RESULT_SUCCESS,
} EnDnsCanBuyResult;

typedef enum {
    /* 0 */ EN_DNS_ANIM_IDLE,
    /* 1 */ EN_DNS_ANIM_BURROW,
    /* 2 */ EN_DNS_ANIM_IDLE_TRANSITION,
} EnDnsAnimation;

typedef enum {
    /* 0x00 */ EN_DNS_MESSAGE_CHOICE_OK,
    /* 0x01 */ EN_DNS_MESSAGE_CHOICE_NO_WAY,
} EnDnsMessageChoice;

struct EnDns;

typedef void (*EnDnsActionFunc)(struct EnDns*, PlayState*);
typedef u32 (*EnDnsCanBuyFunc)(struct EnDns*);
typedef void (*EnDnsPaymentFunc)(struct EnDns*);

typedef struct {
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
    /* 0x02BA */ u8 lastAnimation;
    /* 0x02BB */ u8 maintainCollider;
    /* 0x02BC */ u8 standOnGround;
    /* 0x02BD */ u8 dropCollectible;
    /* 0x02C0 */ DnsItemEntry* dnsItemEntry;
    /* 0x02C4 */ f32 yInitPos;
} EnDns; // size = 0x02C8

#endif
