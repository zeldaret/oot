#ifndef Z_EN_DNS_H
#define Z_EN_DNS_H

#include "ultra64.h"
#include "global.h"
#include "assets/objects/object_shopnuts/object_shopnuts.h"

#define EN_DNS_TYPE(thisx) ((thisx)->actor.params)
typedef enum {
    /*  0 */ EN_DNS_TYPE_NUTS,
    /*  1 */ EN_DNS_TYPE_STICKS,
    /*  2 */ EN_DNS_TYPE_HEART,
    /*  3 */ EN_DNS_TYPE_SEEDS,
    /*  4 */ EN_DNS_TYPE_SHIELD,
    /*  5 */ EN_DNS_TYPE_BOMBS,
    /*  6 */ EN_DNS_TYPE_ARROWS,
    /*  7 */ EN_DNS_TYPE_RED_POT,
    /*  8 */ EN_DNS_TYPE_GREEN_POT,
    /*  9 */ EN_DNS_TYPE_STICK_UPG,
    /* 10 */ EN_DNS_TYPE_NUT_UPG,
} EnDnsType;

typedef enum {
    /*  0 */ EN_DNS_DIALOG_TYPE_NO_RUPEES,
    /*  1 */ EN_DNS_DIALOG_TYPE_NO_CAPACITY,
    /*  2 */ EN_DNS_DIALOG_TYPE_NEW_ITEM,
    /*  3 */ EN_DNS_DIALOG_TYPE_NO_ITEM,
    /*  4 */ EN_DNS_DIALOG_TYPE_SUCCESS,
} EnDnsDialogType;

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
typedef u32 (*EnDnsDialogPathFunc)(struct EnDns*);
typedef void (*EnDnsItemPaymentFunc)(struct EnDns*);

typedef struct {
    /* 0x00 */ s16 itemPrice;
    /* 0x02 */ u16 itemAmount;
    /* 0x04 */ s32 getItemId;
    /* 0x08 */ EnDnsDialogPathFunc dialogPath;
    /* 0x0C */ EnDnsItemPaymentFunc itemPayment;
} DnsItemEntry; // size = 0x10

typedef struct EnDns {
    /* 0x0000 */ Actor actor;
    /* 0x014C */ SkelAnime skelAnime;
    /* 0x0190 */ Vec3s jointTable[BIZ_SCRUB_LIMB_MAX];
    /* 0x01FC */ Vec3s morphTable[BIZ_SCRUB_LIMB_MAX];
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
