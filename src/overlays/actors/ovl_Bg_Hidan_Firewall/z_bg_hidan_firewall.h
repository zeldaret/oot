#ifndef _Z_BG_HIDAN_FIREWALL_H_
#define _Z_BG_HIDAN_FIREWALL_H_

#include <ultra64.h>
#include <global.h>

struct BgHidanFirewall;

typedef void (*FirewallFunc)(struct BgHidanFirewall* this, GlobalContext* globalCtx);

typedef struct BgHidanFirewall
{
    /* 0x0000 */ Actor                 actor;
    /* 0x014C */ FirewallFunc          actionFunc; // idle, countdown, etc
    /* 0x0150 */ s16                   unk_150;
    /* 0x0154 */ ColliderCylinderMain* collider;
    /* 0x0158 */ char                  unk_158[0xC];
    /* 0x0164 */ u8                    unk_164;
    /* 0x0165 */ char                  unk_166[0x35];
    /* 0x019A */ Vec3s                 pos_19A;
} BgHidanFirewall; // size = 0x01A0

extern const ActorInit Bg_Hidan_Firewall_InitVars;

void BgHidanFirewall_Init(BgHidanFirewall* this, GlobalContext* globalCtx);
void BgHidanFirewall_Destroy(BgHidanFirewall* this, GlobalContext* globalCtx);
s32  func_80886728(BgHidanFirewall* this, GlobalContext* globalCtx);
void BgHidanFirewall_Wait(BgHidanFirewall* this, GlobalContext* globalCtx);
void BgHidanFirewall_Countdown(BgHidanFirewall* this, GlobalContext* globalCtx);
void func_80886810(BgHidanFirewall* this, GlobalContext* globalCtx);
void func_80886898(BgHidanFirewall* this, GlobalContext* globalCtx);
void func_808868FC(BgHidanFirewall* this, GlobalContext* globalCtx);
void BgHidanFirewall_Update(BgHidanFirewall* this, GlobalContext* globalCtx);
void func_80886B34(BgHidanFirewall* this, GlobalContext* globalCtx);

extern char D_80886CFC[8];
extern char D_80886D04[11 * 4];
extern void func_80061ED4();
extern char* D_80886D30; // "../z_bg_hidan_firewall.c
extern f32 D_80886D84;
extern f32 D_80886D88;
extern float D_80886D8C;
extern ColliderCylinderMain D_80886CD0;

#endif
