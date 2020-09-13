#ifndef _Z_BOSS_GOMA_H_
#define _Z_BOSS_GOMA_H_

#include <ultra64.h>
#include <global.h>

struct BossGoma;

typedef void(*BossGomaActionFunc)(struct BossGoma*, GlobalContext*);

typedef struct BossGoma {
    /* 0x0000 */ Actor actor;
    SkelAnime nok14C;
    BossGomaActionFunc nok190;
    s16 nok194;
    s16 nok196;
    s16 nok198;
    s16 nok19A;
    s16 nok19C;
    s16 nok19E;
    s16 nok1A0;
    s16 nok1A2;
    s16 nok1A4[3];
    s16 nok1AA[4];
    s16 nok1B2;
    s16 nok1B4;
    s16 nok1B6;
    s16 nok1B8;
    s16 nok1BA;
    s16 nok1BC;
    s16 nok1BE;
    s16 nok1C0;
    s16 nok1C2;
    s16 nok1C4;
    s16 nok1C6;
    char unk1C8_[0x8];
    s16 nok1D0;
    s16 nok1D2;
    s16 nok1D4;
    s16 nok1D6;
    char unk1D8_[0x10];
    f32 nok1E8[4]; // length?
    f32 nok1F8;
    f32 nok1FC;
    f32 nok200;
    f32 nok204[3];
    f32 nok210[3];
    f32 nok21C;
    f32 nok220;
    f32 nok224;
    f32 nok228;
    f32 nok22C;
    char unk230_[0x30];
    Vec3f nok260;
    Vec3f nok26C;
    Vec3f nok278;
    Vec3f nok284;
    Vec3f nok290;
    Vec3f nok29C;
    Vec3f nok2A8[0x55];// length 85/86 ?
    char unk6A4[0xB4];
    u8 nok758[0x5A];// length 0x5A ?
    char unk7B2_[0xA];
    ColliderJntSph nok7BC;
    ColliderJntSphItem nok7DC[13];
} BossGoma; // size = 0x0B1C

extern const ActorInit Boss_Goma_InitVars;

#endif
