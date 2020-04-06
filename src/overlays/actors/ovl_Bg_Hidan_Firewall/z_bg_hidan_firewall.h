#ifndef _Z_BG_HIDAN_FIREWALL_H_
#define _Z_BG_HIDAN_FIREWALL_H_

#include <ultra64.h>
#include <global.h>

struct BgHidanFirewall;

typedef void FirewallFunc(struct BgHidanFirewall* this, GlobalContext* globalCtx);

typedef struct BgHidanFirewall
{
    /* 0x0000 */ Actor                 actor;
    /* 0x014C */ FirewallFunc*         actionFunc;
    /* 0x0150 */ s16                   unk_150;
    /* 0x0154 */ ColliderCylinderMain  collider;
} BgHidanFirewall; // size = 0x01A0

void BgHidanFirewall_Init(BgHidanFirewall* this, GlobalContext* globalCtx);
void BgHidanFirewall_Destroy(BgHidanFirewall* this, GlobalContext* globalCtx);
s32  BgHidanFirewall_Proximity(BgHidanFirewall* this, GlobalContext* globalCtx);
void BgHidanFirewall_Wait(BgHidanFirewall* this, GlobalContext* globalCtx);
void BgHidanFirewall_Countdown(BgHidanFirewall* this, GlobalContext* globalCtx);
void BgHidanFirewall_Erupt(BgHidanFirewall* this, GlobalContext* globalCtx);
void BgHidanFirewall_Collide(BgHidanFirewall* this, GlobalContext* globalCtx);
void BgHidanFirewall_ColliderFollowPlayer(BgHidanFirewall* this, GlobalContext* globalCtx);
void BgHidanFirewall_Update(BgHidanFirewall* this, GlobalContext* globalCtx);
void BgHidanFirewall_Draw(BgHidanFirewall* this, GlobalContext* globalCtx);

extern u32 D_0600DA80;

#endif
