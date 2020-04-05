#ifndef _Z_BG_HIDAN_FIREWALL_H_
#define _Z_BG_HIDAN_FIREWALL_H_

#include <ultra64.h>
#include <global.h>

struct BgHidanFirewall;

typedef void FirewallFunc(struct BgHidanFirewall* this, GlobalContext* globalCtx);

typedef struct BgHidanFirewall
{
    /* 0x0000 */ Actor                 actor;
    /* 0x014C */ FirewallFunc*         actionFunc; // idle, countdown, etc
    /* 0x0150 */ s16                   unk_150;
    /* 0x0154 */ ColliderCylinderMain  collider;
} BgHidanFirewall; // size = 0x01A0

extern const ActorInit Bg_Hidan_Firewall_InitVars;

void BgHidanFirewall_Init(BgHidanFirewall* this, GlobalContext* globalCtx);
void BgHidanFirewall_Destroy(BgHidanFirewall* this, GlobalContext* globalCtx);
s32  BgHidanFirewall_Proximity(BgHidanFirewall* this, GlobalContext* globalCtx);
void BgHidanFirewall_Wait(BgHidanFirewall* this, GlobalContext* globalCtx);
void BgHidanFirewall_Countdown(BgHidanFirewall* this, GlobalContext* globalCtx);
void BgHidanFirewall_Erupt(BgHidanFirewall* this, GlobalContext* globalCtx);
void func_80886898(BgHidanFirewall* this, GlobalContext* globalCtx);
void func_808868FC(BgHidanFirewall* this, GlobalContext* globalCtx);
void BgHidanFirewall_Update(BgHidanFirewall* this, GlobalContext* globalCtx);
void BgHidanFirewall_Draw(BgHidanFirewall* this, GlobalContext* globalCtx);

extern ColliderCylinderMain D_80886CD0;
extern SubActor98Init D_80886CFC;
extern u32 D_80886D04[11];
extern f32 D_80886D84;
extern f32 D_80886D88;
extern float D_80886D8C;
extern u32 D_0600DA80;
extern char D_80886D30;
extern char* D_80886D4C;
extern char* D_80886D68;

#endif
