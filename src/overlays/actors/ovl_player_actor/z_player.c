/*
 * File: z_player.c
 * Overlay: ovl_player_actor
 * Description: Link
 */

#include <ultra64.h>
#include <global.h>

#include "overlays/actors/ovl_En_Boom/z_en_boom.h"
#include "overlays/actors/ovl_En_Box/z_en_box.h"
#include "overlays/actors/ovl_Bg_Heavy_Block/z_bg_heavy_block.h"

#define THIS ((Player*)thisx)

void func_8083399C(GlobalContext* globalCtx, Player* this, s8 actionParam);
s32 func_80834A2C(Player* this, GlobalContext* globalCtx);
s32 func_80834B5C(Player* this, GlobalContext* globalCtx);
s32 func_80834C74(Player* this, GlobalContext* globalCtx);
s32 func_808351D4(Player* this, GlobalContext* globalCtx);
s32 func_808353D8(Player* this, GlobalContext* globalCtx);
s32 func_80835588(Player* this, GlobalContext* globalCtx);
s32 func_808356E8(Player* this, GlobalContext* globalCtx);
s32 func_80835800(Player* this, GlobalContext* globalCtx);
s32 func_80835884(Player* this, GlobalContext* globalCtx);
s32 func_808358F0(Player* this, GlobalContext* globalCtx);
s32 func_808359FC(Player* this, GlobalContext* globalCtx);
s32 func_80835B60(Player* this, GlobalContext* globalCtx);
s32 func_80835C08(Player* this, GlobalContext* globalCtx);
void func_80835F44(GlobalContext* globalCtx, Player* this, s32 item);
void func_80839F90(Player* this, GlobalContext* globalCtx);
s32 func_8083C61C(GlobalContext* globalCtx, Player* this);
void func_80840450(Player* this, GlobalContext* globalCtx);
void func_808407CC(Player* this, GlobalContext* globalCtx);
void func_80840BC8(Player* this, GlobalContext* globalCtx);
void func_80840DE4(Player* this, GlobalContext* globalCtx);
void func_808414F8(Player* this, GlobalContext* globalCtx);
void func_8084170C(Player* this, GlobalContext* globalCtx);
void func_808417FC(Player* this, GlobalContext* globalCtx);
void func_8084193C(Player* this, GlobalContext* globalCtx);
void func_80841BA8(Player* this, GlobalContext* globalCtx);
void func_80842180(Player* this, GlobalContext* globalCtx);
void func_8084227C(Player* this, GlobalContext* globalCtx);
void func_8084279C(Player* this, GlobalContext* globalCtx);
void func_808423EC(Player* this, GlobalContext* globalCtx);
void func_8084251C(Player* this, GlobalContext* globalCtx);
void func_80843188(Player* this, GlobalContext* globalCtx);
void func_808435C4(Player* this, GlobalContext* globalCtx);
void func_8084370C(Player* this, GlobalContext* globalCtx);
void func_8084377C(Player* this, GlobalContext* globalCtx);
void func_80843954(Player* this, GlobalContext* globalCtx);
void func_80843A38(Player* this, GlobalContext* globalCtx);
void func_80843CEC(Player* this, GlobalContext* globalCtx);
void func_8084411C(Player* this, GlobalContext* globalCtx);
void func_80844708(Player* this, GlobalContext* globalCtx);
void func_80844A44(Player* this, GlobalContext* globalCtx);
void func_80844AF4(Player* this, GlobalContext* globalCtx);
void func_80844E68(Player* this, GlobalContext* globalCtx);
void func_80845000(Player* this, GlobalContext* globalCtx);
void func_80845308(Player* this, GlobalContext* globalCtx);
void func_80845668(Player* this, GlobalContext* globalCtx);
void func_808458D0(Player* this, GlobalContext* globalCtx);
void func_80845CA4(Player* this, GlobalContext* globalCtx);
void func_80845EF8(Player* this, GlobalContext* globalCtx);
void func_80846050(Player* this, GlobalContext* globalCtx);
void func_80846120(Player* this, GlobalContext* globalCtx);
void func_80846260(Player* this, GlobalContext* globalCtx);
void func_80846358(Player* this, GlobalContext* globalCtx);
void func_80846408(Player* this, GlobalContext* globalCtx);
void func_808464B0(Player* this, GlobalContext* globalCtx);
void func_8084B530(Player* this, GlobalContext* globalCtx);
void func_80846578(Player* this, GlobalContext* globalCtx);
void func_8084B1D8(Player* this, GlobalContext* globalCtx);
void func_8084B78C(Player* this, GlobalContext* globalCtx);
void func_8084B898(Player* this, GlobalContext* globalCtx);
void func_8084B9E4(Player* this, GlobalContext* globalCtx);
void func_8084BBE4(Player* this, GlobalContext* globalCtx);
void func_8084BDFC(Player* this, GlobalContext* globalCtx);
void func_8084BF1C(Player* this, GlobalContext* globalCtx);
void func_80848F9C(Player* this, GlobalContext* globalCtx, Input* input);
void func_8084C5F8(Player* this, GlobalContext* globalCtx);
void func_8084C760(Player* this, GlobalContext* globalCtx);
void func_8084C81C(Player* this, GlobalContext* globalCtx);
void func_8084CC98(Player* this, GlobalContext* globalCtx);
void func_8084D3E4(Player* this, GlobalContext* globalCtx);
void func_8084D610(Player* this, GlobalContext* globalCtx);
void func_8084D7C4(Player* this, GlobalContext* globalCtx);
void func_8084D84C(Player* this, GlobalContext* globalCtx);
void func_8084DAB4(Player* this, GlobalContext* globalCtx);
void func_8084DC48(Player* this, GlobalContext* globalCtx);
void func_8084E1EC(Player* this, GlobalContext* globalCtx);
void func_8084E30C(Player* this, GlobalContext* globalCtx);
void func_8084E368(Player* this, GlobalContext* globalCtx);
void func_8084E3C4(Player* this, GlobalContext* globalCtx);
void func_8084E604(Player* this, GlobalContext* globalCtx);
void func_8084E6D4(Player* this, GlobalContext* globalCtx);
void func_8084E9AC(Player* this, GlobalContext* globalCtx);
void func_8084EAC0(Player* this, GlobalContext* globalCtx);
void func_8084ECA4(Player* this, GlobalContext* globalCtx);
void func_8084EED8(Player* this, GlobalContext* globalCtx);
void func_8084EFC0(Player* this, GlobalContext* globalCtx);
void func_8084F104(Player* this, GlobalContext* globalCtx);
void func_8084F390(Player* this, GlobalContext* globalCtx);
void func_8084F608(Player* this, GlobalContext* globalCtx);
void func_8084F698(Player* this, GlobalContext* globalCtx);
void func_8084F710(Player* this, GlobalContext* globalCtx);
void func_8084F88C(Player* this, GlobalContext* globalCtx);
void func_8084F9A0(Player* this, GlobalContext* globalCtx);
void func_8084F9C0(Player* this, GlobalContext* globalCtx);
void func_8084FA54(Player* this, GlobalContext* globalCtx);
void func_8084FB10(Player* this, GlobalContext* globalCtx);
void func_8084FBF4(Player* this, GlobalContext* globalCtx);
s32 func_8084FCAC(Player* this, GlobalContext* globalCtx);
void func_8084FF7C(Player* this);
void func_8085002C(Player* this);
s32 func_80850224(Player* this, GlobalContext* globalCtx);
void func_808502D0(Player* this, GlobalContext* globalCtx);
void func_808505DC(Player* this, GlobalContext* globalCtx);
void func_8085063C(Player* this, GlobalContext* globalCtx);
void func_8085076C(Player* this, GlobalContext* globalCtx);
void func_808507F4(Player* this, GlobalContext* globalCtx);
void func_80850AEC(Player* this, GlobalContext* globalCtx);
void func_80850C68(Player* this, GlobalContext* globalCtx);
void func_80850E84(Player* this, GlobalContext* globalCtx);
void func_80852280(GlobalContext* globalCtx, Player* this, CsCmdActorAction* arg2);
void func_80852944(GlobalContext* globalCtx, Player* this, CsCmdActorAction* arg2);
void func_808529D0(GlobalContext* globalCtx, Player* this, CsCmdActorAction* arg2);
void func_80852E14(Player* this, GlobalContext* globalCtx);
s32 func_80852EC8(GlobalContext* globalCtx);
s32 func_80852EFC(GlobalContext* globalCtx);
s32 func_80852F38(GlobalContext* globalCtx, Player* this);
s32 func_80852FFC(GlobalContext* globalCtx, Actor* actor, s32 action);
void func_80853080(Player* this, GlobalContext* globalCtx);
s32 func_808530E0(GlobalContext* globalCtx, s32 damage);
void func_80853148(GlobalContext* globalCtx, Actor* actor);

typedef struct {
    /* 0x00 */ u8 itemId;
    /* 0x01 */ u8 field;
    /* 0x02 */ s8 gi;
    /* 0x03 */ u8 textId;
    /* 0x04 */ u16 objectId;
} GetItemEntry; // size = 0x06

typedef struct {
    /* 0x00 */ s16 id;
    /* 0x02 */ s16 params;
} BottleActorInfo; // size = 0x04

typedef struct {
    /* 0x00 */ u16 unk_00;
    /* 0x02 */ s16 unk_02;
} struct_80832924; // size = 0x04

typedef struct {
    /* 0x00 */ u8 item;
    /* 0x02 */ s16 actorId;
} struct_80854188; // size = 0x04

typedef struct {
    /* 0x00 */ LinkAnimetionEntry* anim;
    /* 0x04 */ u8 unk_04;
} struct_808540F4; // size = 0x08

typedef struct {
    /* 0x00 */ LinkAnimetionEntry* unk_00;
    /* 0x04 */ LinkAnimetionEntry* unk_04;
    /* 0x08 */ LinkAnimetionEntry* unk_08;
    /* 0x0C */ u8 unk_0C;
    /* 0x0D */ u8 unk_0D;
} struct_80854190; // size = 0x10

typedef struct {
    /* 0x00 */ Vec3f pos;
    /* 0x0C */ s16 yaw;
} struct_808382DC; // size = 0x10

typedef struct {
    /* 0x00 */ LinkAnimetionEntry* unk_00;
    /* 0x04 */ LinkAnimetionEntry* unk_04;
    /* 0x08 */ u8 unk_08;
    /* 0x09 */ u8 unk_09;
} struct_80854554; // size = 0x0C

typedef struct {
    /* 0x00 */ LinkAnimetionEntry* anim;
    /* 0x04 */ f32 unk_04;
    /* 0x04 */ f32 unk_08;
} struct_80854578; // size = 0x0C

typedef struct {
    /* 0x00 */ s8 unk_00;
    /* 0x01 */ u8 unk_01;
    /* 0x02 */ u8 unk_02;
    /* 0x03 */ u8 unk_03;
    /* 0x04 */ u16 unk_04;
} struct_80854600; // size = 0x06

typedef struct {
    /* 0x00 */ s16 unk_00;
    /* 0x02 */ u8 unk_02;
    /* 0x03 */ u8 unk_03;
    /* 0x04 */ u8 unk_04;
} struct_80854A04; // size = 0x06

typedef struct {
    /* 0x00 */ s8 type;
    /* 0x04 */ union {
        void (*func)(GlobalContext* globalCtx, Player* this, CsCmdActorAction* arg2);
        LinkAnimetionEntry* anim;
    };
} struct_80854B18; // size = 0x08

// .data
extern u8 D_80853410[];
extern AgeProperties D_80853428[];
extern u32 D_808535D0;
extern f32 D_808535D4;
extern s16 D_808535D8;
extern s16 D_808535DC;
extern s32 D_808535E0;
extern s32 D_808535E4;
extern f32 D_808535E8;
extern f32 D_808535EC;
extern u32 D_808535F0;
extern u32 D_808535F4;
extern s16 D_808535F8;
extern s16 D_808535FC;
extern f32 D_80853600;
extern s32 D_80853604;
extern s32 D_80853608;
extern s32 D_8085360C;
extern s16 D_80853610;
extern s32 D_80853614;
extern s32 D_80853618;
extern u16 D_8085361C[];
extern GetItemEntry D_80853624[];
extern LinkAnimetionEntry* D_80853914[];
extern LinkAnimetionEntry* D_8085392C[];
extern LinkAnimetionEntry* D_80853944[];
extern LinkAnimetionEntry* D_8085395C[];
extern LinkAnimetionEntry* D_80853974[];
extern LinkAnimetionEntry* D_8085398C[];
extern LinkAnimetionEntry* D_808539EC[];
extern LinkAnimetionEntry* D_808539A4[];
extern LinkAnimetionEntry* D_808539BC[];
extern LinkAnimetionEntry* D_80853A04[];
extern LinkAnimetionEntry* D_80853A1C[];
extern LinkAnimetionEntry* D_80853A34[];
extern LinkAnimetionEntry* D_80853A4C[];
extern LinkAnimetionEntry* D_80853A64[];
extern LinkAnimetionEntry* D_80853A7C[];
extern LinkAnimetionEntry* D_80853A94[];
extern LinkAnimetionEntry* D_80853AAC[];
extern LinkAnimetionEntry* D_80853AC4[];
extern LinkAnimetionEntry* D_80853ADC[];
extern LinkAnimetionEntry* D_80853AF4[];
extern LinkAnimetionEntry* D_80853B0C[];
extern LinkAnimetionEntry* D_80853B24[];
extern LinkAnimetionEntry* D_80853B3C[];
extern LinkAnimetionEntry* D_80853B54[];
extern LinkAnimetionEntry* D_80853B6C[];
extern LinkAnimetionEntry* D_80853B9C[];
extern LinkAnimetionEntry* D_80853B84[];
extern LinkAnimetionEntry* D_80853BB4[];
extern LinkAnimetionEntry* D_80853BCC[];
extern LinkAnimetionEntry* D_80853BE4[];
extern LinkAnimetionEntry* D_80853BFC[];
extern LinkAnimetionEntry* D_80853C14[];
extern LinkAnimetionEntry* D_80853C2C[];
extern LinkAnimetionEntry* D_80853C44[];
extern LinkAnimetionEntry* D_80853C5C[];
extern LinkAnimetionEntry* D_80853C74[];
extern LinkAnimetionEntry* D_80853C8C[];
extern LinkAnimetionEntry* D_80853CA4[];
extern LinkAnimetionEntry* D_80853CBC[];
extern LinkAnimetionEntry* D_80853CD4[];
extern LinkAnimetionEntry* D_80853CEC[];
extern LinkAnimetionEntry* D_80853D04[];
extern LinkAnimetionEntry* D_80853D1C[];
extern LinkAnimetionEntry* D_80853D34[];
extern LinkAnimetionEntry* D_80853D4C[][3];
extern LinkAnimetionEntry* D_80853D7C[];
extern struct_80832924* D_80853E4C[];
extern u8 D_80853E7C[];
extern s8 D_80853E9C[];
extern UNK_PTR D_80853EDC[];
extern void (*D_80853FE8[])(GlobalContext* globalCtx, Player* this);
extern struct_808540F4 D_808540F4[];
extern s8 D_80854164[][6];
extern struct_80854188 D_80854188[];
extern struct_80854190 D_80854190[];
extern Vec3f D_8085451C;
extern LinkAnimetionEntry* D_80854350[2];
extern LinkAnimetionEntry* D_80854358[2];
extern LinkAnimetionEntry* D_80854360[2];
extern LinkAnimetionEntry* D_80854368[2];
extern LinkAnimetionEntry* D_80854370[2];
extern LinkAnimetionEntry* D_80854378[2];
extern u8 D_80854380[2];
extern u8 D_80854384[2];
extern u16 D_80854388[];
extern u8 D_80854390[];
extern u16 D_80854398[];
extern u8 D_808543A0[];
extern LinkAnimetionEntry* D_808543A4[];
extern LinkAnimetionEntry* D_808543B4[];
extern LinkAnimetionEntry* D_808543AC[];
extern LinkAnimetionEntry* D_808543BC[];
extern LinkAnimetionEntry* D_808543C4[];
extern LinkAnimetionEntry* D_808543CC[];
extern LinkAnimetionEntry* D_808543D4[];
extern u16 D_808543DC[];
extern s8 D_808543E0[];
extern s8 D_808543E8[];
extern s8 D_808543F4[];
extern s8 D_80854400[];
extern s8 D_80854408[];
extern s8 D_80854414[];
extern s8 D_80854418[];
extern s8 D_80854424[];
extern s8 D_80854430[];
extern s8 D_80854440[];
extern s8 D_80854444[];
extern s32 (*D_80854448[])(Player* this, GlobalContext* globalCtx);
extern s8 D_80854480[];
extern s8 D_80854484[];
extern u32 D_80854488[][2];
extern LinkAnimetionEntry* D_808544B0[];
extern struct_808382DC D_808544D4;
extern struct_808382DC D_808544E4;
extern u8 D_808544F4[];
extern s16 D_808544F8[];
extern u8 D_80854514[];
extern u8 D_80854528[];
extern LinkAnimetionEntry* D_80854548[];
extern struct_80854554 D_80854554[];
extern Vec3f D_8085456C;
extern struct_80854578 D_80854578[2];
extern LinkAnimetionEntry* D_80854590[];
extern Vec3f D_808545B4;
extern Vec3f D_808545C0;
extern LinkAnimetionEntry* D_808545CC[];
extern struct_80832924 D_808545DC[];
extern Vec3f D_808545E4;
extern struct_80832924 D_808545F0[];
extern struct_80854600 D_80854600[];
extern struct_80832924 D_8085460C[];
extern struct_80832924 D_8085461C[];
extern ColliderCylinderInit D_80854624;
extern ColliderQuadInit D_80854650;
extern ColliderQuadInit D_808546A0;
extern u8 D_808546F0[];
extern Vec3f D_808546F4;
extern s16 D_80854700[];
extern InitChainEntry D_80854708[];
extern EffectBlureInit2 D_8085470C;
extern Vec3s D_80854730;
extern void (*D_80854738[])(GlobalContext* globalCtx, Player* this);
extern Vec3f D_80854778;
extern f32 D_80854784[];
extern u8 D_80854790[];
extern Vec3f D_80854798;
extern Vec3f D_808547A4;
extern Vec3f D_808547B0;
extern Color_RGBA8_n D_808547BC;
extern Color_RGBA8_n D_808547C0;
extern s8 D_808547C4[];
extern Vec3f D_80854814;
extern f32 D_80854820[];
extern f32 D_8085482C[];
extern Vec3f D_80854838;
extern Gfx* D_80854840[];
extern Vec3s D_80854864;
extern s32 D_8085486C;
extern struct_80832924 D_80854870[];
extern struct_80832924 D_80854878[];
extern Vec3f D_80854880;
extern Vec3f D_8085488C;
extern struct_80832924 D_808548A8[];
extern struct_80832924 D_808548B4[];
extern struct_80832924 D_808548D8[];
extern Vec3f D_808548FC[];
extern Vec3f D_80854914[];
extern Vec3f D_8085492C[];
extern LinkAnimetionEntry* D_8085493C[];
extern LinkAnimetionEntry* D_80854960[];
extern LinkAnimetionEntry* D_8085498C[];
extern u8 D_80854998[2][2];
extern Vec3s D_8085499C;
extern struct_80832924 D_808549A4[];
extern struct_80832924 D_808549C4[];
extern struct_80832924 D_808549D0[];
extern s16 D_808549D4[];
extern struct_80832924 D_808549E0[];
extern struct_80832924 D_808549F0[];
extern struct_80832924 D_808549F4[];
extern u8 D_808549D7[]; // fake symbol
extern struct_80854A04 D_80854A04[];
extern Vec3f D_80854A1C;
extern BottleActorInfo D_80854A28[];
extern struct_80832924 D_80854A34[];
extern struct_80832924 D_80854A3C[];
extern Vec3f D_80854A40;
extern Vec3f D_80854A4C;
extern LinkAnimetionEntry* D_80854A58[];
extern LinkAnimetionEntry* D_80854A64[];
extern LinkAnimetionEntry* D_80854A70[];
extern u8 D_80854A7C[];
extern struct_80832924 D_80854A80[];
extern struct_80832924 D_80854A8C[][2];
extern void (*D_80854AA4[])(GlobalContext* globalCtx, Player* this, LinkAnimetionEntry* anim);
extern struct_80854B18 D_80854B18[];
extern struct_80854B18 D_80854E50[];
extern struct_80832924 D_80855188[];
extern Vec3f D_80855198;
extern struct_80832924 D_808551A4[];
extern struct_80832924 D_808551AC[];
extern struct_80832924 D_808551B4[];
extern struct_80832924 D_808551B8[];
extern struct_80832924 D_808551BC[];
extern struct_80832924 D_808551C8[];
extern struct_80832924 D_808551D8[];
extern struct_80832924 D_808551E0[];
extern struct_80832924 D_808551E8[];
extern struct_80832924 D_808551F0[];
extern struct_80832924 D_808551F8[];
extern void (*D_808551FC[])(Player* this, GlobalContext* globalCtx);
extern LinkAnimetionEntry* D_80855208[];
extern Vec3s D_80855210[2][2];
extern Vec3f D_80855228;
extern Color_RGB8 D_80855234;
extern Color_RGB8 D_80855238;

// .bss
extern s32 D_80858AA0;
extern s32 D_80858AA4;
extern Vec3f D_80858AA8;
extern Input* D_80858AB4;

// external segments
extern LinkAnimetionEntry D_04002340;
extern LinkAnimetionEntry D_04002378;
extern LinkAnimetionEntry D_04002400;
extern LinkAnimetionEntry D_04002408;
extern LinkAnimetionEntry D_04002420;
extern LinkAnimetionEntry D_04002428;
extern LinkAnimetionEntry D_04002430;
extern LinkAnimetionEntry D_04002468;
extern LinkAnimetionEntry D_040024E8;
extern LinkAnimetionEntry D_040024F8;
extern LinkAnimetionEntry D_04002538;
extern LinkAnimetionEntry D_040025F8;
extern LinkAnimetionEntry D_04002600;
extern LinkAnimetionEntry D_04002608;
extern LinkAnimetionEntry D_04002618;
extern LinkAnimetionEntry D_04002620;
extern LinkAnimetionEntry D_04002628;
extern LinkAnimetionEntry D_04002630;
extern LinkAnimetionEntry D_04002638;
extern LinkAnimetionEntry D_04002650;
extern LinkAnimetionEntry D_04002660;
extern LinkAnimetionEntry D_04002668;
extern LinkAnimetionEntry D_04002670;
extern LinkAnimetionEntry D_04002688;
extern LinkAnimetionEntry D_04002698;
extern LinkAnimetionEntry D_040026A0;
extern LinkAnimetionEntry D_040026B0;
extern LinkAnimetionEntry D_040026B8;
extern LinkAnimetionEntry D_040026E8;
extern LinkAnimetionEntry D_04002700;
extern LinkAnimetionEntry D_04002708;
extern LinkAnimetionEntry D_04002770;
extern LinkAnimetionEntry D_04002780;
extern LinkAnimetionEntry D_04002788;
extern LinkAnimetionEntry D_040027D0;
extern LinkAnimetionEntry D_04002830;
extern LinkAnimetionEntry D_04002838;
extern LinkAnimetionEntry D_04002860;
extern LinkAnimetionEntry D_04002878;
extern LinkAnimetionEntry D_04002908;
extern LinkAnimetionEntry D_04002AC8;
extern LinkAnimetionEntry D_04002C00;
extern LinkAnimetionEntry D_04002C08;
extern LinkAnimetionEntry D_04002C18;
extern LinkAnimetionEntry D_04002C20;
extern LinkAnimetionEntry D_04002C30;
extern LinkAnimetionEntry D_04002C38;
extern LinkAnimetionEntry D_04002C90;
extern LinkAnimetionEntry D_04002C98;
extern LinkAnimetionEntry D_04002CA0;
extern LinkAnimetionEntry D_04002D28;
extern LinkAnimetionEntry D_04002D38;
extern LinkAnimetionEntry D_04002D40;
extern LinkAnimetionEntry D_04002D48;
extern LinkAnimetionEntry D_04002D68;
extern LinkAnimetionEntry D_04002D80;
extern LinkAnimetionEntry D_04002D88;
extern LinkAnimetionEntry D_04002DA0;
extern LinkAnimetionEntry D_04002DA8;
extern LinkAnimetionEntry D_04002DB0;
extern LinkAnimetionEntry D_04002DB8;
extern LinkAnimetionEntry D_04002DC0;
extern LinkAnimetionEntry D_04002DD0;
extern LinkAnimetionEntry D_04002DF0;
extern LinkAnimetionEntry D_04002DF8;
extern LinkAnimetionEntry D_04002E10;
extern LinkAnimetionEntry D_04002E48;
extern LinkAnimetionEntry D_04002E90;
extern LinkAnimetionEntry D_04002EC8;
extern LinkAnimetionEntry D_04002F00;
extern LinkAnimetionEntry D_04002F08;
extern LinkAnimetionEntry D_04002F10;
extern LinkAnimetionEntry D_04002F28;
extern LinkAnimetionEntry D_04002F30;
extern LinkAnimetionEntry D_04002F40;
extern LinkAnimetionEntry D_04002F58;
extern LinkAnimetionEntry D_04002F60;
extern LinkAnimetionEntry D_04002F68;
extern LinkAnimetionEntry D_04002F98;
extern LinkAnimetionEntry D_04002FA0;
extern LinkAnimetionEntry D_04002FD0;
extern LinkAnimetionEntry D_04002FE0;
extern LinkAnimetionEntry D_04003000;
extern LinkAnimetionEntry D_04003020;
extern LinkAnimetionEntry D_04003040;
extern LinkAnimetionEntry D_04003048;
extern LinkAnimetionEntry D_04003050;
extern LinkAnimetionEntry D_04003060;
extern LinkAnimetionEntry D_04003068;
extern LinkAnimetionEntry D_04003070;
extern LinkAnimetionEntry D_04003098;
extern LinkAnimetionEntry D_040030A0;
extern LinkAnimetionEntry D_040030A8;
extern LinkAnimetionEntry D_040030E0;
extern LinkAnimetionEntry D_040030F0;
extern LinkAnimetionEntry D_040030F8;
extern LinkAnimetionEntry D_04003100;
extern LinkAnimetionEntry D_04003108;
extern LinkAnimetionEntry D_04003120;
extern LinkAnimetionEntry D_04003128;
extern LinkAnimetionEntry D_04003148;
extern LinkAnimetionEntry D_04003150;
extern LinkAnimetionEntry D_04003158;
extern LinkAnimetionEntry D_04003160;
extern LinkAnimetionEntry D_040031A0;
extern LinkAnimetionEntry D_040031A8;
extern LinkAnimetionEntry D_04003298;
extern LinkAnimetionEntry D_040032B0;
extern LinkAnimetionEntry D_040032B8;
extern LinkAnimetionEntry D_040032C0;
extern LinkAnimetionEntry D_040032C8;
extern LinkAnimetionEntry D_040032D0;
extern LinkAnimetionEntry D_040032D8;
extern LinkAnimetionEntry D_040032E0;
extern LinkAnimetionEntry D_040032E8;
extern LinkAnimetionEntry D_040032F0;
extern LinkAnimetionEntry D_04003300;
extern LinkAnimetionEntry D_04003308;
extern LinkAnimetionEntry D_04003310;
extern LinkAnimetionEntry D_04003318;
extern LinkAnimetionEntry D_04003320;
extern LinkAnimetionEntry D_04003328;
extern LinkAnimetionEntry D_04003330;
extern LinkAnimetionEntry D_04003380;
extern LinkAnimetionEntry D_04003390;
extern LinkAnimetionEntry D_040033A0;
extern LinkAnimetionEntry D_040033B0;
extern LinkAnimetionEntry D_040033B8;
extern LinkAnimetionEntry D_040033C8;
extern Gfx D_04037E30[];
extern Gfx D_04033EE0[];

// return type can't be void due to regalloc in func_8084FCAC
s32 func_80832210(Player* this) {
    this->actor.speedXZ = 0.0f;
    this->linearVelocity = 0.0f;
}

// return type can't be void due to regalloc in func_8083F72C
s32 func_80832224(Player* this) {
    func_80832210(this);
    this->unk_6AD = 0;
}

s32 func_8083224C(GlobalContext* globalCtx) {
    Player* this = PLAYER;
    return (this->actor.flags & 0x100) == 0x100;
}

void func_80832264(GlobalContext* globalCtx, Player* this, LinkAnimetionEntry* anim) {
    SkelAnime_ChangeLinkAnimDefaultStop(globalCtx, &this->skelAnime, anim);
}

void func_80832284(GlobalContext* globalCtx, Player* this, LinkAnimetionEntry* anim) {
    SkelAnime_ChangeLinkAnimDefaultRepeat(globalCtx, &this->skelAnime, anim);
}

void func_808322A4(GlobalContext* globalCtx, Player* this, LinkAnimetionEntry* anim) {
    SkelAnime_ChangeLinkAnimPlaybackRepeat(globalCtx, &this->skelAnime, anim, 2.0f / 3.0f);
}

void func_808322D0(GlobalContext* globalCtx, Player* this, LinkAnimetionEntry* anim) {
    SkelAnime_ChangeLinkAnimPlaybackStop(globalCtx, &this->skelAnime, anim, 2.0f / 3.0f);
}

void func_808322FC(Player* this) {
    this->actor.shape.rot.y += this->skelAnime.limbDrawTbl[1].y;
    this->skelAnime.limbDrawTbl[1].y = 0;
}

void func_80832318(Player* this) {
    this->stateFlags2 &= ~0x20000;
    this->swordState = 0;
    this->swordDimensions.active = this->unk_8D0.active = this->unk_8EC.active = 0;
}

void func_80832340(GlobalContext* globalCtx, Player* this) {
    Camera* camera;

    if (this->unk_46C != -1) {
        camera = globalCtx->cameraPtrs[this->unk_46C];
        if ((camera != NULL) && (camera->unk_168 == 0x44C)) {
            func_800803F0(globalCtx, this->unk_46C);
            this->unk_46C = -1;
        }
    }

    this->stateFlags2 &= ~0xC00;
}

void func_808323B4(GlobalContext* globalCtx, Player* this) {
    Actor* heldActor = this->heldActor;

    if ((heldActor != NULL) && !func_8008F104(this)) {
        this->actor.child = NULL;
        this->heldActor = NULL;
        this->interactRangeActor = NULL;
        heldActor->parent = NULL;
        this->stateFlags1 &= ~0x800;
    }

    if (func_8008F29C(this) >= 0) {
        func_8083399C(globalCtx, this, 0);
        this->unk_152 = 0xFE;
    }
}

void func_80832440(GlobalContext* globalCtx, Player* this) {
    if ((this->stateFlags1 & 0x800) && (this->heldActor == NULL)) {
        if (this->interactRangeActor != NULL) {
            if (this->getItemId == 0) {
                this->stateFlags1 &= ~0x800;
                this->interactRangeActor = NULL;
            }
        } else {
            this->stateFlags1 &= ~0x800;
        }
    }

    func_80832318(this);
    this->unk_6AD = 0;
    func_80832340(globalCtx, this);
    func_8005B1A4(Gameplay_GetCamera(globalCtx, 0));
    this->unk_844 = 0;
    this->stateFlags1 &= ~0x306000;
    this->stateFlags2 &= ~0x40090;
    this->actor.shape.rot.x = 0;
    this->actor.shape.unk_08 = 0.0f;
    this->unk_845 = this->unk_844;
}

s32 func_80832528(GlobalContext* globalCtx, Player* this) {
    if (this->heldItemActionParam >= 2) {
        func_80835F44(globalCtx, this, ITEM_NONE);
        return 1;
    } else {
        return 0;
    }
}

void func_80832564(GlobalContext* globalCtx, Player* this) {
    func_80832440(globalCtx, this);
    func_808323B4(globalCtx, this);
}

s32 func_80832594(Player* this, s32 arg1, s32 arg2) {
    s16 temp = this->unk_A80 - D_808535D8;

    this->unk_850 += arg1 + (s16)(ABS(temp) * fabsf(D_808535D4) * 2.5415802156203426e-06f);

    if (D_80858AB4->press.in.button & (A_BUTTON | B_BUTTON)) {
        this->unk_850 += 5;
    }

    return this->unk_850 > arg2;
}

void func_80832630(GlobalContext* globalCtx) {
    if (globalCtx->actorCtx.unk_00 == 0) {
        globalCtx->actorCtx.unk_00 = 1;
    }
}

void func_8083264C(Player* this, s32 arg1, s32 arg2, s32 arg3, s32 arg4) {
    if (this->actor.type == ACTORTYPE_PLAYER) {
        func_800AA000(arg4, arg1, arg2, arg3);
    }
}

void func_80832698(Player* this, u16 sfxId) {
    if (this->actor.type == ACTORTYPE_PLAYER) {
        func_8002F7DC(&this->actor, sfxId + this->ageProperties->unk_92);
    } else {
        func_800F4190(&this->actor.projectedPos, sfxId);
    }
}

void func_808326F0(Player* this) {
    u16* entry = &D_8085361C[0];
    s32 i;

    for (i = 0; i < 4; i++) {
        func_800F8D04(*entry + this->ageProperties->unk_92);
        entry++;
    }
}

u16 func_8083275C(Player* this, u16 sfxId) {
    return sfxId + this->unk_89E;
}

void func_80832770(Player* this, u16 sfxId) {
    func_8002F7DC(&this->actor, func_8083275C(this, sfxId));
}

u16 func_808327A4(Player* this, u16 sfxId) {
    return sfxId + this->unk_89E + this->ageProperties->unk_94;
}

void func_808327C4(Player* this, u16 sfxId) {
    func_8002F7DC(&this->actor, func_808327A4(this, sfxId));
}

void func_808327F8(Player* this, f32 arg1) {
    s32 sfxId;

    if (this->currentBoots == 1) {
        sfxId = NA_SE_PL_WALK_HEAVYBOOTS;
    } else {
        sfxId = func_808327A4(this, NA_SE_PL_WALK_GROUND);
    }

    func_800F4010(&this->actor.projectedPos, sfxId, arg1);
}

void func_80832854(Player* this) {
    s32 sfxId;

    if (this->currentBoots == 1) {
        sfxId = NA_SE_PL_JUMP_HEAVYBOOTS;
    } else {
        sfxId = func_808327A4(this, NA_SE_PL_JUMP);
    }

    func_8002F7DC(&this->actor, sfxId);
}

void func_808328A0(Player* this) {
    s32 sfxId;

    if (this->currentBoots == 1) {
        sfxId = NA_SE_PL_LAND_HEAVYBOOTS;
    } else {
        sfxId = func_808327A4(this, NA_SE_PL_LAND);
    }

    func_8002F7DC(&this->actor, sfxId);
}

void func_808328EC(Player* this, u16 sfxId) {
    func_8002F7DC(&this->actor, sfxId);
    this->stateFlags2 |= 8;
}

void func_80832924(Player* this, struct_80832924* arg1) {
    s32 temp1;
    s32 temp2;
    u32 cont;
    s32 pad;

    do {
        temp1 = ABS(arg1->unk_02);
        temp2 = temp1 & 0x7800;
        if (func_800A4530(&this->skelAnime, fabsf(temp1 & 0x7FF))) {
            if (temp2 == 0x800) {
                func_8002F7DC(&this->actor, arg1->unk_00);
            } else if (temp2 == 0x1000) {
                func_80832770(this, arg1->unk_00);
            } else if (temp2 == 0x1800) {
                func_808327C4(this, arg1->unk_00);
            } else if (temp2 == 0x2000) {
                func_80832698(this, arg1->unk_00);
            } else if (temp2 == 0x2800) {
                func_808328A0(this);
            } else if (temp2 == 0x3000) {
                func_808327F8(this, 6.0f);
            } else if (temp2 == 0x3800) {
                func_80832854(this);
            } else if (temp2 == 0x4000) {
                func_808327F8(this, 0.0f);
            } else if (temp2 == 0x4800) {
                func_800F4010(&this->actor.projectedPos, this->ageProperties->unk_94 + NA_SE_PL_WALK_LADDER, 0.0f);
            }
        }
        cont = (arg1->unk_02 >= 0);
        arg1++;
    } while (cont);
}

void func_80832B0C(GlobalContext* globalCtx, Player* this, LinkAnimetionEntry* anim) {
    SkelAnime_ChangeLinkAnim(globalCtx, &this->skelAnime, anim, 1.0f, 0.0f,
                             SkelAnime_GetFrameCount(&anim->genericHeader), 2, -6.0f);
}

void func_80832B78(GlobalContext* globalCtx, Player* this, LinkAnimetionEntry* anim) {
    SkelAnime_ChangeLinkAnim(globalCtx, &this->skelAnime, anim, 2.0f / 3.0f, 0.0f,
                             SkelAnime_GetFrameCount(&anim->genericHeader), 2, -6.0f);
}

void func_80832BE8(GlobalContext* globalCtx, Player* this, LinkAnimetionEntry* anim) {
    SkelAnime_ChangeLinkAnim(globalCtx, &this->skelAnime, anim, 1.0f, 0.0f, 0.0f, 0, -6.0f);
}

void func_80832C2C(GlobalContext* globalCtx, Player* this, LinkAnimetionEntry* anim) {
    SkelAnime_ChangeLinkAnim(globalCtx, &this->skelAnime, anim, 1.0f, 0.0f, 0.0f, 2, 0.0f);
}

void func_80832C6C(GlobalContext* globalCtx, Player* this, LinkAnimetionEntry* anim) {
    SkelAnime_ChangeLinkAnim(globalCtx, &this->skelAnime, anim, 1.0f, 0.0f, 0.0f, 0, -16.0f);
}

s32 func_80832CB0(GlobalContext* globalCtx, Player* this, LinkAnimetionEntry* anim) {
    if (func_800A3BC0(globalCtx, &this->skelAnime)) {
        func_80832284(globalCtx, this, anim);
        return 1;
    } else {
        return 0;
    }
}

void func_80832CFC(Player* this) {
    this->skelAnime.prevFramePos = this->skelAnime.unk_3E;
    this->skelAnime.prevFrameRot = this->actor.shape.rot.y;
}

void func_80832D20(Player* this) {
    func_80832CFC(this);
    this->skelAnime.prevFramePos.x *= this->ageProperties->unk_08;
    this->skelAnime.prevFramePos.y *= this->ageProperties->unk_08;
    this->skelAnime.prevFramePos.z *= this->ageProperties->unk_08;
}

void func_80832DB0(Player* this) {
    this->skelAnime.limbDrawTbl[1].y = 0;
}

void func_80832DBC(Player* this) {
    if (this->skelAnime.flags != 0) {
        func_808322FC(this);
        this->skelAnime.limbDrawTbl[0].x = this->skelAnime.unk_3E.x;
        this->skelAnime.limbDrawTbl[0].z = this->skelAnime.unk_3E.z;
        if (this->skelAnime.flags & 8) {
            if (this->skelAnime.flags & 2) {
                this->skelAnime.limbDrawTbl[0].y = this->skelAnime.prevFramePos.y;
            }
        } else {
            this->skelAnime.limbDrawTbl[0].y = this->skelAnime.unk_3E.y;
        }
        func_80832CFC(this);
        this->skelAnime.flags = 0;
    }
}

void func_80832E48(Player* this, s32 flags) {
    Vec3f sp1C;

    this->skelAnime.flags = flags;
    this->skelAnime.prevFramePos = this->skelAnime.unk_3E;
    func_800A54FC(&this->skelAnime, &sp1C, this->actor.shape.rot.y);

    if (flags & 1) {
        if (LINK_IS_CHILD) {
            sp1C.x *= 0.64f;
            sp1C.z *= 0.64f;
        }
        this->actor.posRot.pos.x += sp1C.x * this->actor.scale.x;
        this->actor.posRot.pos.z += sp1C.z * this->actor.scale.z;
    }

    if (flags & 2) {
        if (!(flags & 4)) {
            sp1C.y *= this->ageProperties->unk_08;
        }
        this->actor.posRot.pos.y += sp1C.y * this->actor.scale.y;
    }

    func_808322FC(this);
}

void func_80832F54(GlobalContext* globalCtx, Player* this, s32 flags) {
    if (flags & 0x200) {
        func_80832D20(this);
    } else if ((flags & 0x100) || (this->skelAnime.flags != 0)) {
        func_80832CFC(this);
    } else {
        this->skelAnime.prevFramePos = this->skelAnime.limbDrawTbl[0];
        this->skelAnime.prevFrameRot = this->actor.shape.rot.y;
    }

    this->skelAnime.flags = flags;
    func_80832210(this);
    func_800A3310(globalCtx);
}

void func_80832FFC(GlobalContext* globalCtx, Player* this, LinkAnimetionEntry* anim, s32 flags, f32 playbackSpeed) {
    SkelAnime_ChangeLinkAnimPlaybackStop(globalCtx, &this->skelAnime, anim, playbackSpeed);
    func_80832F54(globalCtx, this, flags);
}

void func_8083303C(GlobalContext* globalCtx, Player* this, LinkAnimetionEntry* anim, s32 flags) {
    func_80832FFC(globalCtx, this, anim, flags, 1.0f);
}

void func_80833064(GlobalContext* globalCtx, Player* this, LinkAnimetionEntry* anim, s32 flags) {
    func_80832FFC(globalCtx, this, anim, flags, 2.0f / 3.0f);
}

void func_8083308C(GlobalContext* globalCtx, Player* this, LinkAnimetionEntry* anim) {
    func_80833064(globalCtx, this, anim, 0x1C);
}

void func_808330AC(GlobalContext* globalCtx, Player* this, LinkAnimetionEntry* anim, s32 flags, f32 playbackSpeed) {
    SkelAnime_ChangeLinkAnimPlaybackRepeat(globalCtx, &this->skelAnime, anim, playbackSpeed);
    func_80832F54(globalCtx, this, flags);
}

void func_808330EC(GlobalContext* globalCtx, Player* this, LinkAnimetionEntry* anim, s32 flags) {
    func_808330AC(globalCtx, this, anim, flags, 1.0f);
}

void func_80833114(GlobalContext* globalCtx, Player* this, LinkAnimetionEntry* anim, s32 flags) {
    func_808330AC(globalCtx, this, anim, flags, 2.0f / 3.0f);
}

void func_8083313C(GlobalContext* globalCtx, Player* this, LinkAnimetionEntry* anim) {
    func_80833114(globalCtx, this, anim, 0x1C);
}

void func_8083315C(GlobalContext* globalCtx, Player* this) {
    s8 phi_v1;
    s8 phi_v0;

    this->unk_A7C = D_808535D4;
    this->unk_A80 = D_808535D8;

    func_80077D10(&D_808535D4, &D_808535D8, D_80858AB4);

    D_808535DC = func_8005A948(ACTIVE_CAM) + D_808535D8;

    this->unk_846 = (this->unk_846 + 1) % 4;

    if (D_808535D4 < 55.0f) {
        phi_v0 = -1;
        phi_v1 = -1;
    } else {
        phi_v1 = (u16)(D_808535D8 + 0x2000) >> 9;
        phi_v0 = (u16)((s16)(D_808535DC - this->actor.shape.rot.y) + 0x2000) >> 14;
    }

    this->unk_847[this->unk_846] = phi_v1;
    this->unk_84B[this->unk_846] = phi_v0;
}

void func_8083328C(GlobalContext* globalCtx, Player* this, LinkAnimetionEntry* linkAnim) {
    SkelAnime_ChangeLinkAnimPlaybackStop(globalCtx, &this->skelAnime, linkAnim, D_808535E8);
}

s32 func_808332B8(Player* this) {
    return (this->stateFlags1 & 0x8000000) && (this->currentBoots != 1);
}

s32 func_808332E4(Player* this) {
    return (this->stateFlags1 & 0x1000000);
}

void func_808332F4(Player* this, GlobalContext* globalCtx) {
    GetItemEntry* giEntry = &D_80853624[this->getItemId - 1];
    this->unk_862 = ABS(giEntry->gi);
}

LinkAnimetionEntry* func_80833338(Player* this) {
    return D_80853914[this->unk_15B];
}

s32 func_80833350(Player* this) {
    LinkAnimetionEntry** entry;
    s32 i;

    if (func_80833338(this) != this->skelAnime.linkAnimetionSeg) {
        entry = &D_80853D7C[0];
        for (i = 0; i < 28; i++) {
            if (this->skelAnime.linkAnimetionSeg == *entry) {
                return i + 1;
            }
            entry++;
        }
        return 0;
    }

    return -1;
}

void func_808333FC(Player* this, s32 arg1) {
    if (D_80853E7C[arg1] != 0) {
        func_80832924(this, D_80853E4C[D_80853E7C[arg1]]);
    }
}

LinkAnimetionEntry* func_80833438(Player* this) {
    if (this->unk_890 != 0) {
        return D_8085395C[this->unk_15B];
    } else if (!(this->stateFlags1 & 0x28000000) && (this->currentBoots == 1)) {
        return D_80853974[this->unk_15B];
    } else {
        return D_80853944[this->unk_15B];
    }
}

s32 func_808334B4(Player* this) {
    return func_808332E4(this) && (this->unk_834 != 0);
}

LinkAnimetionEntry* func_808334E4(Player* this) {
    if (func_808334B4(this)) {
        return &D_04002638;
    } else {
        return D_808539A4[this->unk_15B];
    }
}

LinkAnimetionEntry* func_80833528(Player* this) {
    if (func_808334B4(this)) {
        return &D_04002630;
    } else {
        return D_8085398C[this->unk_15B];
    }
}

LinkAnimetionEntry* func_8083356C(Player* this) {
    if (func_8002DD78(this)) {
        return &D_040026E8;
    } else {
        return D_80853B3C[this->unk_15B];
    }
}

LinkAnimetionEntry* func_808335B0(Player* this) {
    if (func_808334B4(this)) {
        return &D_04002620;
    } else {
        return D_80853B6C[this->unk_15B];
    }
}

LinkAnimetionEntry* func_808335F4(Player* this) {
    if (func_808334B4(this)) {
        return &D_04002618;
    } else {
        return D_80853B54[this->unk_15B];
    }
}

void func_80833638(Player* this, UNK_PTR arg1) {
    this->unk_82C = arg1;
    this->unk_836 = 0;
    this->unk_830 = 0.0f;
    func_808326F0(this);
}

void func_80833664(GlobalContext* globalCtx, Player* this, s8 actionParam) {
    LinkAnimetionEntry* current = this->skelAnime.linkAnimetionSeg;
    LinkAnimetionEntry** iter = &D_80853914[this->unk_15B];
    u32 i;

    this->stateFlags1 &= ~0x1000008;

    for (i = 0; i < 45; i++) {
        if (current == *iter) {
            break;
        }
        iter += 6;
    }

    func_8083399C(globalCtx, this, actionParam);

    if (i < 45) {
        this->skelAnime.linkAnimetionSeg = D_80853914[i * 6 + this->unk_15B];
    }
}

s8 func_80833724(s32 item) {
    if (item >= 0xFE) {
        return 0;
    } else if (item == 0xFC) {
        return 1;
    } else if (item == ITEM_FISHING_POLE) {
        return 2;
    } else {
        return D_80853E9C[item];
    }
}

void func_80833770(GlobalContext* globalCtx, Player* this) {
}

void func_8083377C(GlobalContext* globalCtx, Player* this) {
    this->stickLength = 1.0f;
}

void func_80833790(GlobalContext* globalCtx, Player* this) {
}

void func_8083379C(GlobalContext* globalCtx, Player* this) {
    this->stateFlags1 |= 8;
    if (this->heldItemActionParam != 0xF) {
        this->stickFlameTimer = -1;
    } else {
        this->stickFlameTimer = -2;
    }
}

void func_808337D4(GlobalContext* globalCtx, Player* this) {
    s32 sp4C;
    struct_80854188* sp48;
    Actor* sp44;

    if (this->stateFlags1 & 0x800) {
        func_80832528(globalCtx, this);
        return;
    }

    sp4C = func_8008F29C(this);
    sp48 = &D_80854188[sp4C];

    sp44 = Actor_SpawnAsChild(&globalCtx->actorCtx, &this->actor, globalCtx, sp48->actorId, this->actor.posRot.pos.x,
                              this->actor.posRot.pos.y, this->actor.posRot.pos.z, 0, this->actor.shape.rot.y, 0, 0);
    if (sp44 != NULL) {
        if ((sp4C != 0) && (globalCtx->bombchuBowlingAmmo != 0)) {
            globalCtx->bombchuBowlingAmmo--;
            if (globalCtx->bombchuBowlingAmmo == 0) {
                globalCtx->bombchuBowlingAmmo = -1;
            }
        } else {
            Inventory_ChangeAmmo(sp48->item, -1);
        }

        this->interactRangeActor = sp44;
        this->heldActor = sp44;
        this->getItemId = 0;
        this->unk_3BC.y = sp44->shape.rot.y - this->actor.shape.rot.y;
        this->stateFlags1 |= 0x800;
    }
}

void func_80833910(GlobalContext* globalCtx, Player* this) {
    this->stateFlags1 |= 8;
    this->stickFlameTimer = -3;
    this->heldActor =
        Actor_SpawnAsChild(&globalCtx->actorCtx, &this->actor, globalCtx, ACTOR_ARMS_HOOK, this->actor.posRot.pos.x,
                           this->actor.posRot.pos.y, this->actor.posRot.pos.z, 0, this->actor.shape.rot.y, 0, 0);
}

void func_80833984(GlobalContext* globalCtx, Player* this) {
    this->stateFlags1 |= 0x1000000;
}

void func_8083399C(GlobalContext* globalCtx, Player* this, s8 actionParam) {
    this->stickFlameTimer = 0;
    this->stickLength = 0.0f;
    this->unk_858 = 0.0f;
    this->heldItemActionParam = this->unk_154 = actionParam;
    this->unk_158 = this->unk_159;
    this->stateFlags1 &= ~0x1000008;
    D_80853FE8[actionParam](globalCtx, this);
    func_8008EC04(this, this->unk_158);
}

void func_80833A20(Player* this, s32 arg1) {
    u16 itemSfx;
    u16 voiceSfx;

    if (this->swordState == 0) {
        if ((this->heldItemActionParam == 5) && (gSaveContext.swordHealth > 0.0f)) {
            itemSfx = NA_SE_IT_HAMMER_SWING;
        } else {
            itemSfx = NA_SE_IT_SWORD_SWING;
        }

        voiceSfx = NA_SE_VO_LI_SWORD_N;
        if (this->heldItemActionParam == 7) {
            itemSfx = NA_SE_IT_HAMMER_SWING;
        } else if (this->swordAnimation >= 0x18) {
            itemSfx = 0;
            voiceSfx = NA_SE_VO_LI_SWORD_L;
        } else if (this->unk_845 >= 3) {
            itemSfx = NA_SE_IT_SWORD_SWING_HARD;
            voiceSfx = NA_SE_VO_LI_SWORD_L;
        }

        if (itemSfx != 0) {
            func_808328EC(this, itemSfx);
        }

        if ((this->swordAnimation < 0x10) || (this->swordAnimation >= 0x14)) {
            func_80832698(this, voiceSfx);
        }
    }

    this->swordState = arg1;
}

s32 func_80833B2C(Player* this) {
    if (this->stateFlags1 & 0x40030000) {
        return 1;
    } else {
        return 0;
    }
}

s32 func_80833B54(Player* this) {
    if ((this->unk_664 != NULL) && ((this->unk_664->flags & 5) == 5)) {
        this->stateFlags1 |= 0x10;
        return 1;
    }

    if (this->stateFlags1 & 0x10) {
        this->stateFlags1 &= ~0x10;
        if (this->linearVelocity == 0.0f) {
            this->currentYaw = this->actor.shape.rot.y;
        }
    }

    return 0;
}

s32 func_80833BCC(Player* this) {
    return func_8008E9C4(this) || func_80833B2C(this);
}

s32 func_80833C04(Player* this) {
    return func_80833B54(this) || func_80833B2C(this);
}

void func_80833C3C(Player* this) {
    this->unk_870 = this->unk_874 = 0.0f;
}

s32 func_80833C50(Player* this, s32 item) {
    if ((item < 0xFE) && (func_80833724(item) == this->unk_154)) {
        return 1;
    } else {
        return 0;
    }
}

s32 func_80833C98(s32 item1, s32 actionParam) {
    if ((item1 < 0xFE) && (func_80833724(item1) == actionParam)) {
        return 1;
    } else {
        return 0;
    }
}

s32 func_80833CDC(GlobalContext* globalCtx, s32 arg1) {
    if (arg1 >= 4) {
        return ITEM_NONE;
    } else if (globalCtx->bombchuBowlingAmmo != 0) {
        return (globalCtx->bombchuBowlingAmmo > 0) ? ITEM_BOMBCHU : ITEM_NONE;
    } else if (arg1 == 0) {
        return (gSaveContext.buttonStatus[0] == BTN_DISABLED)
                   ? ITEM_NONE
                   : (gSaveContext.equips.buttonItems[0] == ITEM_SWORD_KNIFE) ? ITEM_SWORD_BGS
                                                                              : gSaveContext.equips.buttonItems[0];
    } else if (arg1 == 1) {
        return (gSaveContext.buttonStatus[1] != BTN_DISABLED) ? gSaveContext.equips.buttonItems[1] : ITEM_NONE;
    } else if (arg1 == 2) {
        return (gSaveContext.buttonStatus[2] != BTN_DISABLED) ? gSaveContext.equips.buttonItems[2] : ITEM_NONE;
    } else {
        return (gSaveContext.buttonStatus[3] != BTN_DISABLED) ? gSaveContext.equips.buttonItems[3] : ITEM_NONE;
    }
}

void func_80833DF8(Player* this, GlobalContext* globalCtx) {
    s32 maskActionParam;
    s32 temp;
    s32 i;

    if (this->currentMask != 0) {
        maskActionParam = this->currentMask + 0x39;
        if (!func_80833C98((gSaveContext.buttonStatus[1] != BTN_DISABLED) ? gSaveContext.equips.buttonItems[1]
                                                                          : ITEM_NONE,
                           maskActionParam) &&
            !func_80833C98((gSaveContext.buttonStatus[2] != BTN_DISABLED) ? gSaveContext.equips.buttonItems[2]
                                                                          : ITEM_NONE,
                           maskActionParam) &&
            !func_80833C98((gSaveContext.buttonStatus[3] != BTN_DISABLED) ? gSaveContext.equips.buttonItems[3]
                                                                          : ITEM_NONE,
                           maskActionParam)) {
            this->currentMask = 0;
        }
    }

    if (!(this->stateFlags1 & 0x20000800) && !func_8008F128(this)) {
        if (this->unk_154 >= 2) {
            if (!func_80833C50(this, (gSaveContext.buttonStatus[0] == BTN_DISABLED)
                                         ? ITEM_NONE
                                         : (gSaveContext.equips.buttonItems[0] == ITEM_SWORD_KNIFE)
                                               ? ITEM_SWORD_BGS
                                               : gSaveContext.equips.buttonItems[0]) &&
                !func_80833C50(this, (gSaveContext.buttonStatus[1] != BTN_DISABLED) ? gSaveContext.equips.buttonItems[1]
                                                                                    : ITEM_NONE) &&
                !func_80833C50(this, (gSaveContext.buttonStatus[2] != BTN_DISABLED) ? gSaveContext.equips.buttonItems[2]
                                                                                    : ITEM_NONE) &&
                !func_80833C50(this, (gSaveContext.buttonStatus[3] != BTN_DISABLED) ? gSaveContext.equips.buttonItems[3]
                                                                                    : ITEM_NONE)) {
                func_80835F44(globalCtx, this, ITEM_NONE);
                return;
            }
        }

        for (i = 0; i < 4; i++) {
            if (CHECK_PAD(D_80858AB4->press, D_80854388[i])) {
                break;
            }
        }

        temp = func_80833CDC(globalCtx, i);
        if (temp >= 0xFE) {
            for (i = 0; i < 4; i++) {
                if (CHECK_PAD(D_80858AB4->cur, D_80854388[i])) {
                    break;
                }
            }

            temp = func_80833CDC(globalCtx, i);
            if ((temp < 0xFE) && (func_80833724(temp) == this->heldItemActionParam)) {
                D_80853618 = true;
            }
        } else {
            this->heldItemCButtonIdx = i;
            func_80835F44(globalCtx, this, temp);
        }
    }
}

#ifdef NON_MATCHING
// ordering and deduplication differences
void func_808340DC(Player* this, GlobalContext* globalCtx) {
    LinkAnimetionEntry* sp4C;
    f32 phi_f2;
    f32 phi_f12;
    f32 phi_f14;
    f32 phi_f0;
    s32 sp38;
    s8 sp37;
    s32 temp;

    sp37 = func_80833724(this->unk_152);
    func_80833638(this, func_80834A2C);

    temp = D_80125C98[this->unk_159][0];
    sp38 = D_80854164[D_80125C98[this->unk_158][0]][temp];
    if ((sp37 == 0x1E) || (sp37 == 0x14) ||
        ((sp37 == 0) && ((this->heldItemActionParam == 0x1E) || (this->heldItemActionParam == 0x14)))) {
        sp38 = (sp37 == 0) ? -13 : 13;
    }

    this->unk_15A = ABS(sp38);

    sp4C = D_808540F4[this->unk_15A].anim;
    if ((sp4C == &D_04002F30) && (this->currentShield == 0)) {
        sp4C = &D_04002F40;
    }

    phi_f2 = SkelAnime_GetFrameCount(&sp4C->genericHeader);

    if (sp38 >= 0) {
        phi_f12 = 0.0f;
        phi_f14 = phi_f2;
        phi_f0 = 1.2f;
    } else {
        phi_f12 = phi_f2;
        phi_f14 = 0.0f;
        phi_f0 = -1.2f;
    }

    if (sp37 != 0) {
        phi_f0 *= 2.0f;
    }

    SkelAnime_ChangeLinkAnim(globalCtx, &this->skelAnime2, sp4C, phi_f0, phi_f12, phi_f14, 2, 0.0f);

    this->stateFlags1 &= ~0x100;
}
#else
#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_player_actor/func_808340DC.s")
#endif

void func_80834298(Player* this, GlobalContext* globalCtx) {
    if ((this->actor.type == ACTORTYPE_PLAYER) && !(this->stateFlags1 & 0x100) &&
        ((this->heldItemActionParam == this->unk_154) || (this->stateFlags1 & 0x400000)) &&
        (gSaveContext.health != 0) && (globalCtx->csCtx.state == 0) && (this->action == 0) &&
        (globalCtx->unk_11E5C == 0) && (globalCtx->activeCamera == 0) && (globalCtx->sceneLoadFlag != 0x14) &&
        (gSaveContext.timer1State != 10)) {
        func_80833DF8(this, globalCtx);
    }

    if (this->stateFlags1 & 0x100) {
        func_808340DC(this, globalCtx);
    }
}

s32 func_80834380(GlobalContext* globalCtx, Player* this, s32* arg2, s32* arg3) {
    if (LINK_IS_ADULT) {
        *arg2 = ITEM_BOW;
        if (this->stateFlags1 & 0x800000) {
            *arg3 = 1;
        } else {
            *arg3 = this->heldItemActionParam - 6;
        }
    } else {
        *arg2 = ITEM_SLINGSHOT;
        *arg3 = 9;
    }

    if (gSaveContext.minigameState == 1) {
        return globalCtx->interfaceCtx.hbaAmmo;
    } else if (globalCtx->unk_11E5C != 0) {
        return globalCtx->unk_11E5C;
    } else {
        return AMMO(*arg2);
    }
}

s32 func_8083442C(Player* this, GlobalContext* globalCtx) {
    s32 sp54;
    s32 sp50;
    s32 temp;

    if ((this->heldItemActionParam >= 9) && (this->heldItemActionParam < 0xF) && (gSaveContext.unk_13F0 != 0)) {
        func_80078884(NA_SE_SY_ERROR);
    } else {
        func_80833638(this, func_808351D4);
        this->stateFlags1 |= 0x200;
        this->unk_834 = 14;

        if (this->stickFlameTimer >= 0) {
            func_8002F7DC(&this->actor, D_80854398[ABS(this->stickFlameTimer) - 1]);
            if (!func_8008F104(this) && (func_80834380(globalCtx, this, &sp54, &sp50) > 0)) {
                temp = sp50 - 3;
                if (this->stickFlameTimer >= 0) {
                    if ((temp >= 0) && (temp < 3) && !func_80087708(globalCtx, D_808543A0[temp], 0)) {
                        sp50 = 2;
                    }
                    this->heldActor = Actor_SpawnAsChild(&globalCtx->actorCtx, &this->actor, globalCtx, ACTOR_EN_ARROW,
                                                         this->actor.posRot.pos.x, this->actor.posRot.pos.y,
                                                         this->actor.posRot.pos.z, 0, this->actor.shape.rot.y, 0, sp50);
                }
            }
        }
        return 1;
    }

    return 0;
}

void func_80834594(GlobalContext* globalCtx, Player* this) {
    if (this->heldItemActionParam != 0) {
        if (func_8008F2BC(this, this->heldItemActionParam) >= 0) {
            func_808328EC(this, NA_SE_IT_SWORD_PUTAWAY);
        } else {
            func_808328EC(this, NA_SE_PL_CHANGE_ARMS);
        }
    }

    func_80835F44(globalCtx, this, this->unk_152);

    if (func_8008F2BC(this, this->heldItemActionParam) >= 0) {
        func_808328EC(this, NA_SE_IT_SWORD_PICKOUT);
    } else if (this->heldItemActionParam != 0) {
        func_808328EC(this, NA_SE_PL_CHANGE_ARMS);
    }
}

void func_80834644(GlobalContext* globalCtx, Player* this) {
    if (func_80834A2C == this->unk_82C) {
        func_80834594(globalCtx, this);
    }

    func_80833638(this, D_80853EDC[this->heldItemActionParam]);
    this->unk_834 = 0;
    this->unk_6AC = 0;
    func_808323B4(globalCtx, this);
    this->stateFlags1 &= ~0x100;
}

LinkAnimetionEntry* func_808346C4(GlobalContext* globalCtx, Player* this) {
    func_80833638(this, func_80834B5C);
    func_808323B4(globalCtx, this);
    if (this->unk_870 < 0.5f) {
        return D_808543A4[func_8008F1A0(this)];
    } else {
        return D_808543AC[func_8008F1A0(this)];
    }
}

s32 func_80834758(GlobalContext* globalCtx, Player* this) {
    LinkAnimetionEntry* anim;
    f32 frame;

    if (!(this->stateFlags1 & 0x20C00000) && (globalCtx->unk_11E5C == 0) &&
        (this->heldItemActionParam == this->unk_154) && (this->currentShield != 0) && !func_8008E9D0(this) &&
        func_80833BCC(this) && CHECK_PAD(D_80858AB4->cur, R_TRIG)) {
        anim = func_808346C4(globalCtx, this);
        frame = SkelAnime_GetFrameCount(&anim->genericHeader);
        SkelAnime_ChangeLinkAnim(globalCtx, &this->skelAnime2, anim, 1.0f, frame, frame, 2, 0.0f);
        func_8002F7DC(&this->actor, NA_SE_IT_SHIELD_POSTURE);
        return 1;
    } else {
        return 0;
    }
}

s32 func_8083485C(Player* this, GlobalContext* globalCtx) {
    if (func_80834758(globalCtx, this)) {
        return 1;
    } else {
        return 0;
    }
}

void func_80834894(Player* this) {
    func_80833638(this, func_80834C74);
    if (this->unk_154 < 0) {
        func_8008EC70(this);
    }
    SkelAnime_AnimReverse(&this->skelAnime2);
    func_8002F7DC(&this->actor, NA_SE_IT_SHIELD_REMOVE);
}

void func_808348EC(GlobalContext* globalCtx, Player* this) {
    struct_808540F4* ptr = &D_808540F4[this->unk_15A];
    f32 phi_f0;

    phi_f0 = ptr->unk_04;
    phi_f0 = (this->skelAnime2.animPlaybackSpeed < 0.0f) ? phi_f0 - 1.0f : phi_f0;

    if (func_800A4530(&this->skelAnime2, phi_f0)) {
        func_80834594(globalCtx, this);
    }

    func_80833B54(this);
}

s32 func_8083499C(Player* this, GlobalContext* globalCtx) {
    if (this->stateFlags1 & 0x100) {
        func_808340DC(this, globalCtx);
    } else {
        return 0;
    }

    return 1;
}

s32 func_808349DC(Player* this, GlobalContext* globalCtx) {
    if (func_80834758(globalCtx, this) || func_8083499C(this, globalCtx)) {
        return 1;
    } else {
        return 0;
    }
}

s32 func_80834A2C(Player* this, GlobalContext* globalCtx) {
    if (func_800A3BC0(globalCtx, &this->skelAnime2) ||
        ((func_80833724(this->unk_152) == this->heldItemActionParam) &&
         (D_80853614 = (D_80853614 || ((this->unk_15B != 3) && (globalCtx->unk_11E5C == 0)))))) {
        func_80833638(this, D_80853EDC[this->heldItemActionParam]);
        this->unk_834 = 0;
        this->unk_6AC = 0;
        D_80853618 = D_80853614;
        return this->unk_82C(this, globalCtx);
    }

    if (func_80833350(this) != 0) {
        func_808348EC(globalCtx, this);
        func_80832264(globalCtx, this, func_80833338(this));
        this->unk_6AC = 0;
    } else {
        func_808348EC(globalCtx, this);
    }

    return 1;
}

s32 func_80834B5C(Player* this, GlobalContext* globalCtx) {
    func_800A3BC0(globalCtx, &this->skelAnime2);

    if (!CHECK_PAD(D_80858AB4->cur, R_TRIG)) {
        func_80834894(this);
        return 1;
    } else {
        this->stateFlags1 |= 0x400000;
        func_8008EA40(this);
        return 1;
    }
}

s32 func_80834BD4(Player* this, GlobalContext* globalCtx) {
    LinkAnimetionEntry* anim;
    f32 frame;

    if (func_800A3BC0(globalCtx, &this->skelAnime2)) {
        anim = func_808346C4(globalCtx, this);
        frame = SkelAnime_GetFrameCount(&anim->genericHeader);
        SkelAnime_ChangeLinkAnim(globalCtx, &this->skelAnime2, anim, 1.0f, frame, frame, 2, 0.0f);
    }

    this->stateFlags1 |= 0x400000;
    func_8008EA40(this);

    return 1;
}

s32 func_80834C74(Player* this, GlobalContext* globalCtx) {
    D_80853614 = D_80853618;

    if (D_80853614 || func_800A3BC0(globalCtx, &this->skelAnime2)) {
        func_80833638(this, D_80853EDC[this->heldItemActionParam]);
        SkelAnime_ChangeLinkAnimDefaultRepeat(globalCtx, &this->skelAnime2, D_80853914[this->unk_15B]);
        this->unk_6AC = 0;
        this->unk_82C(this, globalCtx);
        return 0;
    }

    return 1;
}

s32 func_80834D2C(Player* this, GlobalContext* globalCtx) {
    LinkAnimetionEntry* anim;

    if (this->heldItemActionParam != 0x14) {
        if (!func_8083442C(this, globalCtx)) {
            return 0;
        }

        if (!func_8008F104(this)) {
            anim = &D_040026A0;
        } else {
            anim = &D_04002CA0;
        }
        SkelAnime_ChangeLinkAnimDefaultStop(globalCtx, &this->skelAnime2, anim);
    } else {
        func_80833638(this, func_80835884);
        this->unk_834 = 10;
        SkelAnime_ChangeLinkAnimDefaultStop(globalCtx, &this->skelAnime2, &D_04002628);
    }

    if (this->stateFlags1 & 0x800000) {
        func_80832284(globalCtx, this, &D_04003380);
    } else if ((this->actor.bgCheckFlags & 1) && !func_80833B54(this)) {
        func_80832284(globalCtx, this, D_80853914[this->unk_15B]);
    }

    return 1;
}

s32 func_80834E44(GlobalContext* globalCtx) {
    return (globalCtx->unk_11E5C > 0) && CHECK_PAD(D_80858AB4->press, B_BUTTON);
}

s32 func_80834E7C(GlobalContext* globalCtx) {
    return (globalCtx->unk_11E5C != 0) &&
           ((globalCtx->unk_11E5C < 0) ||
            (D_80858AB4->cur.in.button & (A_BUTTON | B_BUTTON | U_CBUTTONS | L_CBUTTONS | R_CBUTTONS | D_CBUTTONS)));
}

s32 func_80834EB8(Player* this, GlobalContext* globalCtx) {
    if ((this->unk_6AD == 0) || (this->unk_6AD == 2)) {
        if (func_80833BCC(this) || (func_8005A470(Gameplay_GetCamera(globalCtx, 0), 7) == 0)) {
            return 1;
        }
        this->unk_6AD = 2;
    }

    return 0;
}

s32 func_80834F2C(Player* this, GlobalContext* globalCtx) {
    if ((this->unk_42C == 0) && !(this->stateFlags1 & 0x2000000)) {
        if (D_80853614 || func_80834E44(globalCtx)) {
            if (func_80834D2C(this, globalCtx)) {
                return func_80834EB8(this, globalCtx);
            }
        }
    }

    return 0;
}

s32 func_80834FBC(Player* this) {
    if (this->actor.child != NULL) {
        if (this->heldActor == NULL) {
            this->heldActor = this->actor.child;
            func_8083264C(this, 0xFF, 0xA, 0xFA, 0);
            func_8002F7DC(&this->actor, NA_SE_IT_HOOKSHOT_RECEIVE);
        }
        return 1;
    }

    return 0;
}

s32 func_8083501C(Player* this, GlobalContext* globalCtx) {
    if (this->stickFlameTimer >= 0) {
        this->stickFlameTimer = -this->stickFlameTimer;
    }

    if ((!func_8008F104(this) || func_80834FBC(this)) && !func_80834758(globalCtx, this) &&
        !func_80834F2C(this, globalCtx)) {
        return 0;
    }

    return 1;
}

s32 func_808350A4(GlobalContext* globalCtx, Player* this) {
    s32 sp34;
    s32 sp30;

    if (this->heldActor != NULL) {
        if (!func_8008F104(this)) {
            func_80834380(globalCtx, this, &sp34, &sp30);
            if (gSaveContext.minigameState == 1) {
                globalCtx->interfaceCtx.hbaAmmo--;
            } else if (globalCtx->unk_11E5C != 0) {
                globalCtx->unk_11E5C--;
            } else {
                Inventory_ChangeAmmo(sp34, -1);
            }
            if (globalCtx->unk_11E5C == 1) {
                globalCtx->unk_11E5C = -10;
            }
            func_8083264C(this, 0x96, 0x0A, 0x96, 0);
        } else {
            func_8083264C(this, 0xFF, 0x14, 0x96, 0);
        }

        this->unk_A73 = 4;
        this->heldActor->parent = NULL;
        this->actor.child = NULL;
        this->heldActor = NULL;
        return 1;
    }

    return 0;
}

s32 func_808351D4(Player* this, GlobalContext* globalCtx) {
    s32 sp2C;

    if (!func_8008F104(this)) {
        sp2C = 0;
    } else {
        sp2C = 1;
    }

    Math_ApproxUpdateScaledS(&this->unk_6C0, 1200, 400);
    this->unk_6AE |= 0x100;

    if ((this->unk_836 == 0) && (func_80833350(this) == 0) && (this->skelAnime.linkAnimetionSeg == &D_040026E8)) {
        SkelAnime_ChangeLinkAnimDefaultStop(globalCtx, &this->skelAnime2, D_808543CC[sp2C]);
        this->unk_836 = -1;
    } else if (func_800A3BC0(globalCtx, &this->skelAnime2)) {
        SkelAnime_ChangeLinkAnimDefaultRepeat(globalCtx, &this->skelAnime2, D_808543D4[sp2C]);
        this->unk_836 = 1;
    } else if (this->unk_836 == 1) {
        this->unk_836 = 2;
    }

    if (this->unk_834 > 10) {
        this->unk_834--;
    }

    func_80834EB8(this, globalCtx);

    if ((this->unk_836 > 0) && ((this->stickFlameTimer < 0) || (!D_80853618 && !func_80834E7C(globalCtx)))) {
        func_80833638(this, func_808353D8);
        if (this->stickFlameTimer >= 0) {
            if (sp2C == 0) {
                if (!func_808350A4(globalCtx, this)) {
                    func_8002F7DC(&this->actor, D_808543DC[ABS(this->stickFlameTimer) - 1]);
                }
            } else if (this->actor.bgCheckFlags & 1) {
                func_808350A4(globalCtx, this);
            }
        }
        this->unk_834 = 10;
        func_80832210(this);
    } else {
        this->stateFlags1 |= 0x200;
    }

    return 1;
}

s32 func_808353D8(Player* this, GlobalContext* globalCtx) {
    func_800A3BC0(globalCtx, &this->skelAnime2);

    if (func_8008F104(this) && !func_80834FBC(this)) {
        return 1;
    }

    if (!func_80834758(globalCtx, this) &&
        (D_80853614 || ((this->stickFlameTimer < 0) && D_80853618) || func_80834E44(globalCtx))) {
        this->stickFlameTimer = ABS(this->stickFlameTimer);
        if (func_8083442C(this, globalCtx)) {
            if (func_8008F104(this)) {
                this->unk_836 = 1;
            } else {
                SkelAnime_ChangeLinkAnimDefaultStop(globalCtx, &this->skelAnime2, &D_040026B8);
            }
        }
    } else {
        if (this->unk_834 != 0) {
            this->unk_834--;
        }
        if (func_80833BCC(this) || (this->unk_6AD != 0) || (this->stateFlags1 & 0x100000)) {
            if (this->unk_834 == 0) {
                this->unk_834++;
            }
            return 1;
        }
        if (func_8008F104(this)) {
            func_80833638(this, func_8083501C);
        } else {
            func_80833638(this, func_80835588);
            SkelAnime_ChangeLinkAnimDefaultStop(globalCtx, &this->skelAnime2, &D_040026B0);
        }
        this->unk_834 = 0;
    }

    return 1;
}

s32 func_80835588(Player* this, GlobalContext* globalCtx) {
    if (!(this->actor.bgCheckFlags & 1) || func_800A3BC0(globalCtx, &this->skelAnime2)) {
        func_80833638(this, func_8083501C);
    }

    return 1;
}

void func_808355DC(Player* this) {
    this->stateFlags1 |= 0x20000;
    if (!(this->skelAnime.flags & 0x80) && (this->actor.bgCheckFlags & 0x200) && (D_80853608 < 0x2000)) {
        this->currentYaw = this->actor.shape.rot.y = this->actor.wallPolyRot + 0x8000;
    }
    this->targetYaw = this->actor.shape.rot.y;
}

s32 func_80835644(GlobalContext* globalCtx, Player* this, Actor* arg2) {
    if (arg2 == NULL) {
        func_80832564(globalCtx, this);
        func_80839F90(this, globalCtx);
        return 1;
    }

    return 0;
}

void func_80835688(Player* this, GlobalContext* globalCtx) {
    if (!func_80835644(globalCtx, this, this->heldActor)) {
        func_80833638(this, func_808356E8);
        SkelAnime_ChangeLinkAnimDefaultRepeat(globalCtx, &this->skelAnime2, &D_04002E10);
    }
}

s32 func_808356E8(Player* this, GlobalContext* globalCtx) {
    Actor* heldActor = this->heldActor;

    if (heldActor == NULL) {
        func_80834644(globalCtx, this);
    }

    if (func_80834758(globalCtx, this)) {
        return 1;
    }

    if (this->stateFlags1 & 0x800) {
        if (func_800A3BC0(globalCtx, &this->skelAnime2)) {
            SkelAnime_ChangeLinkAnimDefaultRepeat(globalCtx, &this->skelAnime2, &D_04002E10);
        }
        if ((heldActor->id == ACTOR_EN_NIW) && (this->actor.velocity.y <= 0.0f)) {
            this->actor.minVelocityY = -2.0f;
            this->actor.gravity = -0.5f;
            this->dropY = this->actor.posRot.pos.y;
        }
        return 1;
    }

    return func_8083485C(this, globalCtx);
}

void func_808357E8(Player* this, Gfx** dLists) {
    this->unk_164 = &dLists[gSaveContext.linkAge];
}

s32 func_80835800(Player* this, GlobalContext* globalCtx) {
    if (func_80834758(globalCtx, this)) {
        return 1;
    }

    if (this->stateFlags1 & 0x2000000) {
        func_80833638(this, func_80835B60);
    } else if (func_80834F2C(this, globalCtx)) {
        return 1;
    }

    return 0;
}

s32 func_80835884(Player* this, GlobalContext* globalCtx) {
    if (func_800A3BC0(globalCtx, &this->skelAnime2)) {
        func_80833638(this, func_808358F0);
        SkelAnime_ChangeLinkAnimDefaultRepeat(globalCtx, &this->skelAnime2, &D_04002638);
    }
    func_80834EB8(this, globalCtx);

    return 1;
}

s32 func_808358F0(Player* this, GlobalContext* globalCtx) {
    LinkAnimetionEntry* sp2C = this->skelAnime.linkAnimetionSeg;

    if ((func_808334E4(this) == sp2C) || (func_80833528(this) == sp2C) || (func_808335B0(this) == sp2C) ||
        (func_808335F4(this) == sp2C)) {
        SkelAnime_LoadAnimationType1(globalCtx, this->skelAnime.limbCount, this->skelAnime2.limbDrawTbl,
                                     this->skelAnime.limbDrawTbl);
    } else {
        func_800A3BC0(globalCtx, &this->skelAnime2);
    }

    func_80834EB8(this, globalCtx);

    if (!D_80853618) {
        func_80833638(this, func_808359FC);
        SkelAnime_ChangeLinkAnimDefaultStop(globalCtx, &this->skelAnime2,
                                            (this->unk_870 < 0.5f) ? &D_04002608 : &D_04002600);
    }

    return 1;
}

s32 func_808359FC(Player* this, GlobalContext* globalCtx) {
    if (func_800A3BC0(globalCtx, &this->skelAnime2)) {
        func_80833638(this, func_80835B60);
        this->unk_834 = 0;
    } else if (func_800A4530(&this->skelAnime2, 6.0f)) {
        f32 posX = (Math_Sins(this->actor.shape.rot.y) * 10.0f) + this->actor.posRot.pos.x;
        f32 posZ = (Math_Coss(this->actor.shape.rot.y) * 10.0f) + this->actor.posRot.pos.z;
        s32 yaw = (this->unk_664 != NULL) ? this->actor.shape.rot.y + 14000 : this->actor.shape.rot.y;
        EnBoom* boomerang =
            (EnBoom*)Actor_Spawn(&globalCtx->actorCtx, globalCtx, ACTOR_EN_BOOM, posX, this->actor.posRot.pos.y + 30.0f,
                                 posZ, this->actor.posRot2.rot.x, yaw, 0, 0);
        this->unk_688 = &boomerang->actor;
        if (boomerang != NULL) {
            boomerang->moveTo = this->unk_664;
            boomerang->returnTimer = 20;
            this->stateFlags1 |= 0x2000000;
            if (!func_8008E9C4(this)) {
                func_808355DC(this);
            }
            this->unk_A73 = 4;
            func_8002F7DC(&this->actor, NA_SE_IT_BOOMERANG_THROW);
            func_80832698(this, NA_SE_VO_LI_SWORD_N);
        }
    }

    return 1;
}

s32 func_80835B60(Player* this, GlobalContext* globalCtx) {
    s32 phi_return;

    if (func_80834758(globalCtx, this)) {
        return 1;
    }

    if (!(this->stateFlags1 & 0x2000000)) {
        func_80833638(this, func_80835C08);
        SkelAnime_ChangeLinkAnimDefaultStop(globalCtx, &this->skelAnime2, &D_040025F8);
        func_808357E8(this, D_80125EF8);
        func_8002F7DC(&this->actor, NA_SE_PL_CATCH_BOOMERANG);
        func_80832698(this, NA_SE_VO_LI_SWORD_N);
        return 1;
    }

    return 0;
}

s32 func_80835C08(Player* this, GlobalContext* globalCtx) {
    if (!func_80835800(this, globalCtx) && func_800A3BC0(globalCtx, &this->skelAnime2)) {
        func_80833638(this, func_80835800);
    }

    return 1;
}

s32 func_80835C58(GlobalContext* globalCtx, Player* this, PlayerActionFunc actionFunc, s32 arg3) {
    if (actionFunc == this->actionFunc) {
        return 0;
    }

    if (func_8084E3C4 == this->actionFunc) {
        func_800ED858(0);
        this->stateFlags2 &= ~0x3000000;
    } else if (func_808507F4 == this->actionFunc) {
        func_80832340(globalCtx, this);
    }

    this->actionFunc = actionFunc;

    if ((this->unk_154 != this->heldItemActionParam) && (!(arg3 & 1) || !(this->stateFlags1 & 0x400000))) {
        func_8008EC70(this);
    }

    if (!(arg3 & 1) && (!(this->stateFlags1 & 0x800))) {
        func_80834644(globalCtx, this);
        this->stateFlags1 &= ~0x400000;
    }

    func_80832DBC(this);
    this->stateFlags1 &= ~0xB4000044;
    this->stateFlags2 &= ~0x18080000;
    this->unk_692 &= ~0x8A;
    this->unk_84F = 0;
    this->unk_850 = 0;
    this->unk_6AC = 0;
    func_808326F0(this);

    return 1;
}

void func_80835DAC(GlobalContext* globalCtx, Player* this, PlayerActionFunc actionFunc, s32 arg3) {
    s32 temp;

    temp = this->skelAnime.flags;
    this->skelAnime.flags = 0;
    func_80835C58(globalCtx, this, actionFunc, arg3);
    this->skelAnime.flags = temp;
}

void func_80835DE4(GlobalContext* globalCtx, Player* this, PlayerActionFunc actionFunc, s32 arg3) {
    s32 temp;

    if (this->unk_154 >= 0) {
        temp = this->unk_154;
        this->unk_154 = this->heldItemActionParam;
        func_80835C58(globalCtx, this, actionFunc, arg3);
        this->unk_154 = temp;
        func_8008EB2C(this, func_8008E9F8(this, this->unk_154));
    }
}

void func_80835E44(GlobalContext* globalCtx, s16 arg1) {
    if (!func_800C0CB8(globalCtx)) {
        if (arg1 == 0x2F) {
            Interface_ChangeAlpha(2);
        }
    } else {
        func_8005A77C(Gameplay_GetCamera(globalCtx, 0), arg1);
    }
}

void func_80835EA4(GlobalContext* globalCtx, s32 arg1) {
    func_80835E44(globalCtx, 0x38);
    Camera_SetCameraData(Gameplay_GetCamera(globalCtx, 0), 4, 0, 0, arg1, 0, 0);
}

void func_80835EFC(Player* this) {
    Actor* heldActor;

    if (func_8008F104(this)) {
        heldActor = this->heldActor;
        if (heldActor != NULL) {
            Actor_Kill(heldActor);
            this->actor.child = NULL;
            this->heldActor = NULL;
        }
    }
}

void func_80835F44(GlobalContext* globalCtx, Player* this, s32 item) {
    s8 actionParam;
    s32 temp;
    s32 sp1C;

    actionParam = func_80833724(item);

    if (((this->heldItemActionParam == this->unk_154) &&
         (!(this->stateFlags1 & 0x400000) || (func_8008F158(actionParam) != 0) || (actionParam == 0))) ||
        ((this->unk_154 < 0) && ((func_8008F158(actionParam) != 0) || (actionParam == 0)))) {
        if ((actionParam == 0) || !(this->stateFlags1 & 0x8000000) ||
            ((this->actor.bgCheckFlags & 1) && ((actionParam == 0x10) || (actionParam == 0x11)))) {
            if ((globalCtx->bombchuBowlingAmmo == 0) &&
                (((actionParam == 6) && (AMMO(ITEM_STICK) == 0)) || ((actionParam == 0x2E) && (AMMO(ITEM_BEAN) == 0)) ||
                 (temp = func_8008F270(this, actionParam),
                  ((temp >= 0) && ((AMMO(D_80854188[temp].item) == 0) ||
                                   (globalCtx->actorCtx.actorList[ACTORTYPE_EXPLOSIVES].length >= 3)))))) {
                func_80078884(NA_SE_SY_ERROR);
            } else if (actionParam == 0x42) {
                if (func_80087708(globalCtx, 0, 3)) {
                    if (globalCtx->actorCtx.unk_03 != 0) {
                        func_800304B0(globalCtx);
                    } else {
                        globalCtx->actorCtx.unk_03 = 1;
                    }
                    func_80078884((globalCtx->actorCtx.unk_03 != 0) ? NA_SE_SY_GLASSMODE_ON : NA_SE_SY_GLASSMODE_OFF);
                } else {
                    func_80078884(NA_SE_SY_ERROR);
                }
            } else if (actionParam == 0x1B) {
                if (AMMO(ITEM_NUT) != 0) {
                    func_8083C61C(globalCtx, this);
                } else {
                    func_80078884(NA_SE_SY_ERROR);
                }
            } else if (temp = func_8008F0D8(this, actionParam), (temp >= 0)) {
                if (((actionParam == 0x18) && (gSaveContext.respawn[RESPAWN_MODE_TOP].data > 0)) ||
                    ((gSaveContext.unk_13F4 != 0) && (gSaveContext.unk_13F0 == 0) &&
                     (gSaveContext.magic >= D_80854390[temp]))) {
                    this->unk_154 = actionParam;
                    this->unk_6AD = 4;
                    return;
                } else {
                    func_80078884(NA_SE_SY_ERROR);
                }
            } else if (actionParam > 0x39) {
                if (this->currentMask != 0) {
                    this->currentMask = 0;
                } else {
                    this->currentMask = actionParam - 0x39;
                }
                func_808328EC(this, NA_SE_PL_CHANGE_ARMS);
            } else if (((actionParam >= 0x1C) && (actionParam < 0x1E)) || (actionParam >= 0x1F)) {
                if (!func_8008E9C4(this) || ((actionParam >= 0x25) && (actionParam < 0x2B))) {
                    func_8002D53C(globalCtx, &globalCtx->actorCtx.titleCtx);
                    this->unk_6AD = 4;
                    this->unk_154 = actionParam;
                }
            } else if ((actionParam != this->heldItemActionParam) ||
                       ((this->heldActor == 0) && (func_8008F270(this, actionParam) >= 0))) {
                this->unk_159 = func_8008E9F8(this, actionParam);
                sp1C = D_80125C98[this->unk_159][0];
                if ((this->heldItemActionParam >= 0) && (func_8008F0D8(this, actionParam) < 0) &&
                    (item != this->unk_152) && (D_80854164[D_80125C98[this->unk_158][0]][sp1C] != 0)) {
                    this->unk_152 = item;
                    this->stateFlags1 |= 0x100;
                } else {
                    func_80835EFC(this);
                    func_808323B4(globalCtx, this);
                    func_80833664(globalCtx, this, actionParam);
                }
            } else {
                D_80853614 = D_80853618 = true;
            }
        }
    }
}

void func_80836448(GlobalContext* globalCtx, Player* this, LinkAnimetionEntry* anim) {
    s32 sp2C = func_808332B8(this);

    func_80832564(globalCtx, this);

    func_80835C58(globalCtx, this, sp2C ? func_8084E368 : func_80843CEC, 0);

    this->stateFlags1 |= 0x80;

    func_80832264(globalCtx, this, anim);
    if (anim == &D_04002878) {
        this->skelAnime.animFrameCount = 84.0f;
    }

    func_80832224(this);
    func_80832698(this, NA_SE_VO_LI_DOWN);

    if (this->actor.type == ACTORTYPE_PLAYER) {
        func_800F47BC();
        if (Inventory_ConsumeFairy(globalCtx)) {
            globalCtx->unk_10A20 = 20;
            this->unk_84F = 1;
        } else {
            globalCtx->unk_10A20 = 1;
            func_800F6AB0(0);
            func_800F5C64(0x20);
            gSaveContext.seqIndex = 0xFF;
            gSaveContext.nightSeqIndex = 0xFF;
        }

        func_800800F8(globalCtx, 0x264E, sp2C ? 120 : 60, &this->actor, 0);
        ShrinkWindow_SetVal(0x20);
    }
}

s32 func_808365C8(Player* this) {
    return (!(func_808458D0 == this->actionFunc) ||
            ((this->stateFlags1 & 0x100) && ((this->unk_152 == 0xFC) || (this->unk_152 == 0xFF)))) &&
           (!(func_80834A2C == this->unk_82C) || (func_80833724(this->unk_152) == this->heldItemActionParam));
}

s32 func_80836670(Player* this, GlobalContext* globalCtx) {
    if (!(this->stateFlags1 & 0x800000) && (this->actor.parent != NULL) && func_8008F104(this)) {
        func_80835C58(globalCtx, this, func_80850AEC, 1);
        this->unk_692 |= 0x80;
        func_80832264(globalCtx, this, &D_04002C90);
        func_80832F54(globalCtx, this, 0x9B);
        func_80832224(this);
        this->currentYaw = this->actor.shape.rot.y;
        this->actor.bgCheckFlags &= ~1;
        this->unk_893 = 0;
        this->unk_6AE |= 0x43;
        func_80832698(this, NA_SE_VO_LI_LASH);
        return 1;
    }

    if (func_808365C8(this)) {
        func_80834298(this, globalCtx);
        if (func_8084E604 == this->actionFunc) {
            return 1;
        }
    }

    if (!this->unk_82C(this, globalCtx)) {
        return 0;
    }

    if (this->unk_830 != 0.0f) {
        if ((func_80833350(this) == 0) || (this->linearVelocity != 0.0f)) {
            SkelAnime_LoadAnimationType4(globalCtx, this->skelAnime.limbCount, this->skelAnime2.limbDrawTbl,
                                         this->skelAnime.limbDrawTbl, D_80853410);
        }
        Math_ApproxF(&this->unk_830, 0.0f, 0.25f);
        SkelAnime_LoadAnimationType2(globalCtx, this->skelAnime.limbCount, this->skelAnime.limbDrawTbl,
                                     this->skelAnime2.limbDrawTbl, 1.0f - this->unk_830);
    } else if ((func_80833350(this) == 0) || (this->linearVelocity != 0.0f)) {
        SkelAnime_LoadAnimationType3(globalCtx, this->skelAnime.limbCount, this->skelAnime.limbDrawTbl,
                                     this->skelAnime2.limbDrawTbl, D_80853410);
    } else {
        SkelAnime_LoadAnimationType1(globalCtx, this->skelAnime.limbCount, this->skelAnime.limbDrawTbl,
                                     this->skelAnime2.limbDrawTbl);
    }

    return 1;
}

s32 func_80836898(GlobalContext* globalCtx, Player* this, PlayerFuncA74 func) {
    this->unk_A74 = func;
    func_80835C58(globalCtx, this, func_808458D0, 0);
    this->stateFlags2 |= 0x40;
    return func_80832528(globalCtx, this);
}

void func_808368EC(Player* this, GlobalContext* globalCtx) {
    s16 previousYaw = this->actor.shape.rot.y;

    if (!(this->stateFlags2 & 0x60)) {
        if ((this->unk_664 != NULL) &&
            ((globalCtx->actorCtx.targetCtx.unk_4B != 0) || (this->actor.type != ACTORTYPE_PLAYER))) {
            Math_ApproxUpdateScaledS(&this->actor.shape.rot.y,
                                     Math_Vec3f_Yaw(&this->actor.posRot.pos, &this->unk_664->posRot2.pos), 4000);
        } else if ((this->stateFlags1 & 0x20000) && !(this->stateFlags2 & 0x60)) {
            Math_ApproxUpdateScaledS(&this->actor.shape.rot.y, this->targetYaw, 4000);
        }
    } else if (!(this->stateFlags2 & 0x40)) {
        Math_ApproxUpdateScaledS(&this->actor.shape.rot.y, this->currentYaw, 2000);
    }

    this->unk_87C = this->actor.shape.rot.y - previousYaw;
}

s32 func_808369C8(s16* pValue, s16 arg1, s16 arg2, s16 arg3, s16 arg4, s16 arg5) {
    s16 temp1;
    s16 temp2;
    s16 temp3;

    temp1 = temp2 = arg4 - *pValue;
    temp2 = CLAMP(temp2, -arg5, arg5);
    *pValue += (s16)(temp1 - temp2);

    Math_ApproxUpdateScaledS(pValue, arg1, arg2);

    temp3 = *pValue;
    if (*pValue < -arg3) {
        *pValue = -arg3;
    } else if (*pValue > arg3) {
        *pValue = arg3;
    }
    return temp3 - *pValue;
}

s32 func_80836AB8(Player* this, s32 arg1) {
    s16 sp36;
    s16 var;

    var = this->actor.shape.rot.y;
    if (arg1 != 0) {
        var = this->actor.posRot2.rot.y;
        this->unk_6BC = this->actor.posRot2.rot.x;
        this->unk_6AE |= 0x41;
    } else {
        func_808369C8(
            &this->unk_6BC,
            func_808369C8(&this->unk_6B6, this->actor.posRot2.rot.x, 600, 10000, this->actor.posRot2.rot.x, 0), 200,
            4000, this->unk_6B6, 10000);
        sp36 = this->actor.posRot2.rot.y - var;
        func_808369C8(&sp36, 0, 200, 24000, this->unk_6BE, 8000);
        var = this->actor.posRot2.rot.y - sp36;
        func_808369C8(&this->unk_6B8, sp36 - this->unk_6BE, 200, 8000, sp36, 8000);
        func_808369C8(&this->unk_6BE, sp36, 200, 8000, this->unk_6B8, 8000);
        this->unk_6AE |= 0xD9;
    }

    return var;
}

void func_80836BEC(Player* this, GlobalContext* globalCtx) {
    s32 sp1C = 0;
    s32 zTrigPressed = CHECK_PAD(D_80858AB4->cur, Z_TRIG);
    Actor* actorToTarget;
    s32 pad;
    s32 holdTarget;
    s32 cond;

    if (!zTrigPressed) {
        this->stateFlags1 &= ~0x40000000;
    }

    if ((globalCtx->csCtx.state != 0) || (this->action != 0) || (this->stateFlags1 & 0x20000080) ||
        (this->unk_692 & 0x80)) {
        this->unk_66C = 0;
    } else if (zTrigPressed || (this->stateFlags2 & 0x2000) || (this->unk_684 != 0)) {
        if (this->unk_66C <= 5) {
            this->unk_66C = 5;
        } else {
            this->unk_66C--;
        }
    } else if (this->stateFlags1 & 0x20000) {
        this->unk_66C = 0;
    } else if (this->unk_66C != 0) {
        this->unk_66C--;
    }

    if (this->unk_66C >= 6) {
        sp1C = 1;
    }

    cond = func_8083224C(globalCtx);
    if (cond || (this->unk_66C != 0) || (this->stateFlags1 & 0x2001000)) {
        if (!cond) {
            if (!(this->stateFlags1 & 0x2000000) &&
                ((this->heldItemActionParam != 2) || (this->stickFlameTimer == 0)) &&
                CHECK_PAD(D_80858AB4->press, Z_TRIG)) {

                if (this->actor.type == ACTORTYPE_PLAYER) {
                    actorToTarget = globalCtx->actorCtx.targetCtx.arrowPointedActor;
                } else {
                    actorToTarget = &PLAYER->actor;
                }

                holdTarget = (gSaveContext.zTargetingSetting != 0) || (this->actor.type != ACTORTYPE_PLAYER);
                this->stateFlags1 |= 0x8000;

                if ((actorToTarget != NULL) && !(actorToTarget->flags & 0x8000000)) {
                    if ((actorToTarget == this->unk_664) && (this->actor.type == ACTORTYPE_PLAYER)) {
                        actorToTarget = globalCtx->actorCtx.targetCtx.unk_94;
                    }

                    if (actorToTarget != this->unk_664) {
                        if (!holdTarget) {
                            this->stateFlags2 |= 0x2000;
                        }
                        this->unk_664 = actorToTarget;
                        this->unk_66C = 15;
                        this->stateFlags2 &= ~0x200002;
                    } else {
                        if (!holdTarget) {
                            func_8008EDF0(this);
                        }
                    }

                    this->stateFlags1 &= ~0x40000000;
                } else {
                    if (!(this->stateFlags1 & 0x40020000)) {
                        func_808355DC(this);
                    }
                }
            }

            if (this->unk_664 != NULL) {
                if ((this->actor.type == ACTORTYPE_PLAYER) && (this->unk_664 != this->unk_684) &&
                    func_8002F0C8(this->unk_664, this, sp1C)) {
                    func_8008EDF0(this);
                    this->stateFlags1 |= 0x40000000;
                } else if (this->unk_664 != NULL) {
                    this->unk_664->unk_10D = 40;
                }
            } else if (this->unk_684 != NULL) {
                this->unk_664 = this->unk_684;
            }
        }

        if (this->unk_664 != NULL) {
            this->stateFlags1 &= ~0x30000;
            if ((this->stateFlags1 & 0x800) || ((this->unk_664->flags & 5) != 5)) {
                this->stateFlags1 |= 0x10000;
            }
        } else {
            if (this->stateFlags1 & 0x20000) {
                this->stateFlags2 &= ~0x2000;
            } else {
                func_8008EE08(this);
            }
        }
    } else {
        func_8008EE08(this);
    }
}

s32 func_80836FAC(GlobalContext* globalCtx, Player* this, f32* arg2, s16* arg3, f32 arg4) {
    f32 temp_f2;
    f32 temp_f0;
    f32 temp_f14;
    f32 temp_f12;

    if ((this->unk_6AD != 0) || (globalCtx->sceneLoadFlag == 0x14) || (this->stateFlags1 & 1)) {
        *arg2 = 0.0f;
        *arg3 = this->actor.shape.rot.y;
    } else {
        *arg2 = D_808535D4;
        *arg3 = D_808535D8;

        if (arg4 != 0.0f) {
            *arg2 -= 20.0f;
            if (*arg2 < 0.0f) {
                *arg2 = 0.0f;
            } else {
                temp_f2 = 1.0f - Math_Coss(*arg2 * 450.0f);
                *arg2 = ((temp_f2 * temp_f2) * 30.0f) + 7.0f;
            }
        } else {
            *arg2 *= 0.8f;
        }

        if (D_808535D4 != 0.0f) {
            temp_f0 = Math_Sins(this->unk_898);
            temp_f12 = this->unk_880;
            temp_f14 = CLAMP(temp_f0, 0.0f, 0.6f);

            if (this->unk_6C4 != 0.0f) {
                temp_f12 = temp_f12 - (this->unk_6C4 * 0.008f);
                if (temp_f12 < 2.0f) {
                    temp_f12 = 2.0f;
                }
            }

            *arg2 = (*arg2 * 0.14f) - (8.0f * temp_f14 * temp_f14);
            *arg2 = CLAMP(*arg2, 0.0f, temp_f12);

            return 1;
        }
    }

    return 0;
}

s32 func_8083721C(Player* this) {
    return Math_ApproxF(&this->linearVelocity, 0.0f, REG(43) / 100.0f);
}

s32 func_80837268(Player* this, f32* arg1, s16* arg2, f32 arg3, GlobalContext* globalCtx) {
    if (!func_80836FAC(globalCtx, this, arg1, arg2, arg3)) {
        *arg2 = this->actor.shape.rot.y;

        if (this->unk_664 != NULL) {
            if ((globalCtx->actorCtx.targetCtx.unk_4B != 0) && !(this->stateFlags2 & 0x40)) {
                *arg2 = Math_Vec3f_Yaw(&this->actor.posRot.pos, &this->unk_664->posRot2.pos);
                return 0;
            }
        } else if (func_80833B2C(this)) {
            *arg2 = this->targetYaw;
        }

        return 0;
    } else {
        *arg2 += func_8005A948(ACTIVE_CAM);
        return 1;
    }
}

s32 func_80837348(GlobalContext* globalCtx, Player* this, s8* arg2, s32 arg3) {
    s32 i;

    if (!(this->stateFlags1 & 0x20000081)) {
        if (arg3 != 0) {
            D_808535E0 = func_80836670(this, globalCtx);
            if (func_8084E604 == this->actionFunc) {
                return 1;
            }
        }

        if (func_8008F128(this)) {
            this->unk_6AE |= 0x41;
            return 1;
        }

        if (!(this->stateFlags1 & 0x100) && (func_80834A2C != this->unk_82C)) {
            while (*arg2 >= 0) {
                if (D_80854448[*arg2](this, globalCtx)) {
                    return 1;
                }
                arg2++;
            }

            if (D_80854448[-*arg2](this, globalCtx)) {
                return 1;
            }
        }
    }

    return 0;
}

s32 func_808374A0(GlobalContext* globalCtx, Player* this, SkelAnime* skelAnime, f32 arg3) {
    f32 sp24;
    s16 sp22;

    if ((skelAnime->animFrameCount - arg3) <= skelAnime->animCurrentFrame) {
        if (func_80837348(globalCtx, this, D_80854418, 1)) {
            return 0;
        }

        if (func_80837268(this, &sp24, &sp22, 0.018f, globalCtx)) {
            return 1;
        }
    }

    return -1;
}

void func_80837530(GlobalContext* globalCtx, Player* this, s32 arg2) {
    if (arg2 != 0) {
        this->unk_858 = 0.0f;
    } else {
        this->unk_858 = 0.5f;
    }

    this->stateFlags1 |= 0x1000;

    if (this->actor.type == ACTORTYPE_PLAYER) {
        Actor_Spawn(&globalCtx->actorCtx, globalCtx, ACTOR_EN_M_THUNDER, this->unk_908[0].x, this->unk_908[0].y,
                    this->unk_908[0].z, 0, 0, 0, func_8008F180(this) | arg2);
    }
}

s32 func_808375D8(Player* this) {
    s8 sp3C[4];
    s8* iter;
    s8* iter2;
    s8 temp1;
    s8 temp2;
    s32 i;

    if ((this->heldItemActionParam == 6) || func_8008F1CC(this)) {
        return 0;
    }

    iter = &this->unk_847[0];
    iter2 = &sp3C[0];
    for (i = 0; i < 4; i++, iter++, iter2++) {
        if ((*iter2 = *iter) < 0) {
            return 0;
        }
        *iter2 *= 2;
    }

    temp1 = sp3C[0] - sp3C[1];
    if (ABS(temp1) < 10) {
        return 0;
    }

    iter2 = &sp3C[1];
    for (i = 1; i < 3; i++, iter2++) {
        temp2 = *iter2 - *(iter2 + 1);
        if ((ABS(temp2) < 10) || (temp2 * temp1 < 0)) {
            return 0;
        }
    }

    return 1;
}

void func_80837704(GlobalContext* globalCtx, Player* this) {
    LinkAnimetionEntry* anim;

    if ((this->swordAnimation >= 4) && (this->swordAnimation < 8)) {
        anim = D_80854358[func_8008F1A0(this)];
    } else {
        anim = D_80854350[func_8008F1A0(this)];
    }

    func_80832318(this);
    SkelAnime_ChangeLinkAnim(globalCtx, &this->skelAnime, anim, 1.0f, 8.0f,
                             SkelAnime_GetFrameCount(&anim->genericHeader), 2, -9.0f);
    func_80837530(globalCtx, this, 0x200);
}

void func_808377DC(GlobalContext* globalCtx, Player* this) {
    func_80835C58(globalCtx, this, func_80844E68, 1);
    func_80837704(globalCtx, this);
}

s32 func_80837818(Player* this) {
    s32 sp1C;
    s32 sp18;

    sp1C = this->unk_84B[this->unk_846];
    if (this->heldItemActionParam == 7) {
        if (sp1C < 0) {
            sp1C = 0;
        }
        sp18 = D_80854484[sp1C];
        this->unk_845 = 0;
    } else {
        if (func_808375D8(this)) {
            sp18 = 24;
        } else {
            if (sp1C < 0) {
                if (func_80833BCC(this)) {
                    sp18 = 0;
                } else {
                    sp18 = 4;
                }
            } else {
                sp18 = D_80854480[sp1C];
                if (sp18 == 12) {
                    this->stateFlags2 |= 0x40000000;
                    if (!func_80833BCC(this)) {
                        sp18 = 0;
                    }
                }
            }
            if (this->heldItemActionParam == 6) {
                sp18 = 0;
            }
        }
        if (func_8008F1A0(this)) {
            sp18++;
        }
    }

    return sp18;
}

void func_80837918(Player* this, s32 quadIndex, u32 flags) {
    this->quads[quadIndex].body.toucher.flags = flags;
    if (flags == 2) {
        this->quads[quadIndex].body.toucherFlags = 0x15;
    } else {
        this->quads[quadIndex].body.toucherFlags = 5;
    }
}

void func_80837948(GlobalContext* globalCtx, Player* this, s32 arg2) {
    s32 pad;
    u32 flags;
    s32 temp;

    func_80835C58(globalCtx, this, func_808502D0, 0);
    this->unk_844 = 8;
    if ((arg2 < 0x12) || (arg2 >= 0x14)) {
        func_80832318(this);
    }

    if ((arg2 != this->swordAnimation) || !(this->unk_845 < 3)) {
        this->unk_845 = 0;
    }

    this->unk_845++;
    if (this->unk_845 >= 3) {
        arg2 += 2;
    }

    this->swordAnimation = arg2;

    func_808322D0(globalCtx, this, D_80854190[arg2].unk_00);
    if ((arg2 != 16) && (arg2 != 17)) {
        func_80832F54(globalCtx, this, 0x209);
    }

    this->currentYaw = this->actor.shape.rot.y;

    if (func_8008F1CC(this)) {
        temp = 1;
    } else {
        temp = func_8008F180(this) - 1;
    }

    if ((arg2 >= 16) && (arg2 < 20)) {
        flags = D_80854488[temp][1];
    } else {
        flags = D_80854488[temp][0];
    }

    func_80837918(this, 0, flags);
    func_80837918(this, 1, flags);
}

void func_80837AE0(Player* this, s32 arg1) {
    if (this->invincibilityTimer >= 0) {
        this->invincibilityTimer = arg1;
        this->unk_88F = 0;
    }
}

void func_80837AFC(Player* this, s32 arg1) {
    if (this->invincibilityTimer > arg1) {
        this->invincibilityTimer = arg1;
    }
    this->unk_88F = 0;
}

s32 func_80837B18(GlobalContext* globalCtx, Player* this, s32 damage) {
    if ((this->invincibilityTimer != 0) || (this->actor.type != ACTORTYPE_PLAYER)) {
        return 1;
    }

    return Health_ChangeBy(globalCtx, damage);
}

void func_80837B60(Player* this) {
    this->skelAnime.prevFramePos = this->skelAnime.limbDrawTbl[0];
    func_80832E48(this, 3);
}

void func_80837B9C(Player* this, GlobalContext* globalCtx) {
    func_80835C58(globalCtx, this, func_8084411C, 0);
    func_80832284(globalCtx, this, &D_04003040);
    this->unk_850 = 1;
    if (this->unk_6AD != 3) {
        this->unk_6AD = 0;
    }
}

void func_80837C0C(GlobalContext* globalCtx, Player* this, s32 arg2, f32 arg3, f32 arg4, s16 arg5, s32 arg6) {
    LinkAnimetionEntry* sp2C;
    LinkAnimetionEntry** sp28;

    sp2C = NULL;
    if (this->stateFlags1 & 0x2000) {
        func_80837B60(this);
    }

    this->unk_890 = 0;

    func_8002F7DC(&this->actor, NA_SE_PL_DAMAGE);

    if (!func_80837B18(globalCtx, this, 0 - this->actor.colChkInfo.damage)) {
        this->stateFlags2 &= ~0x80;
        if (!(this->actor.bgCheckFlags & 1) && !(this->stateFlags1 & 0x8000000)) {
            func_80837B9C(this, globalCtx);
        }
        return;
    }

    func_80837AE0(this, arg6);

    if (arg2 == 3) {
        func_80835C58(globalCtx, this, func_8084FB10, 0);
        sp2C = &D_04002FD0;
        func_80832224(this);
        func_8083264C(this, 0xFF, 0xA, 0x28, 0);
        func_8002F7DC(&this->actor, NA_SE_PL_FREEZE_S);
        func_80832698(this, NA_SE_VO_LI_FREEZE);
    } else if (arg2 == 4) {
        func_80835C58(globalCtx, this, func_8084FBF4, 0);
        func_8083264C(this, 0xFF, 0x50, 0x96, 0);
        func_808322A4(globalCtx, this, &D_04002F00);
        func_80832224(this);
        this->unk_850 = 20;
    } else {
        arg5 -= this->actor.shape.rot.y;
        if (this->stateFlags1 & 0x8000000) {
            func_80835C58(globalCtx, this, func_8084E30C, 0);
            func_8083264C(this, 0xB4, 0x14, 0x32, 0);
            this->linearVelocity = 4.0f;
            this->actor.velocity.y = 0.0f;
            sp2C = &D_04003320;
            func_80832698(this, NA_SE_VO_LI_DAMAGE_S);
        } else if ((arg2 == 1) || (arg2 == 2) || !(this->actor.bgCheckFlags & 1) || (this->stateFlags1 & 0x206000)) {
            func_80835C58(globalCtx, this, func_8084377C, 0);
            this->unk_692 |= 2;
            func_8083264C(this, 0xFF, 0x14, 0x96, 0);
            func_80832224(this);

            if (arg2 == 2) {
                this->unk_850 = 4;
                this->actor.speedXZ = 3.0f;
                this->linearVelocity = 3.0f;
                this->actor.velocity.y = 6.0f;
                func_80832C2C(globalCtx, this, D_8085395C[this->unk_15B]);
                func_80832698(this, NA_SE_VO_LI_DAMAGE_S);
            } else {
                this->actor.speedXZ = arg3;
                this->linearVelocity = arg3;
                this->actor.velocity.y = arg4;
                if (ABS(arg5) > 0x4000) {
                    sp2C = &D_04002F58;
                } else {
                    sp2C = &D_04002DB0;
                }
                if ((this->actor.type != ACTORTYPE_PLAYER) && (this->actor.colChkInfo.health == 0)) {
                    func_80832698(this, NA_SE_VO_BL_DOWN);
                } else {
                    func_80832698(this, NA_SE_VO_LI_FALL_L);
                }
            }

            this->unk_893 = 0;
            this->actor.bgCheckFlags &= ~1;
        } else {
            if ((this->linearVelocity > 4.0f) && !func_8008E9C4(this)) {
                this->unk_890 = 20;
                func_8083264C(this, 0x78, 0x14, 0xA, 0);
                func_80832698(this, NA_SE_VO_LI_DAMAGE_S);
                return;
            }

            sp28 = D_808544B0;
            func_80835C58(globalCtx, this, func_8084370C, 0);
            func_80833C3C(this);
            if (this->actor.colChkInfo.damage < 5) {
                func_8083264C(this, 0x78, 0x14, 0xA, 0);
            } else {
                func_8083264C(this, 0xB4, 0x14, 0x64, 0);
                this->linearVelocity = 23.0f;
                sp28 += 4;
            }
            if (ABS(arg5) <= 0x4000) {
                sp28 += 2;
            }
            if (func_8008E9C4(this)) {
                sp28 += 1;
            }
            sp2C = *sp28;
            func_80832698(this, NA_SE_VO_LI_DAMAGE_S);
        }

        this->actor.shape.rot.y += arg5;
        this->currentYaw = this->actor.shape.rot.y;
        this->actor.posRot.rot.y = this->actor.shape.rot.y;
        if (ABS(arg5) > 0x4000) {
            this->actor.shape.rot.y += 0x8000;
        }
    }

    func_80832564(globalCtx, this);
    this->stateFlags1 |= 0x4000000;

    if (sp2C != NULL) {
        func_808322D0(globalCtx, this, sp2C);
    }
}

s32 func_80838144(s32 arg0) {
    s32 temp = arg0 - 2;

    if ((temp >= 0) && (temp < 2)) {
        return temp;
    } else {
        return -1;
    }
}

s32 func_8083816C(s32 arg0) {
    return (arg0 == 4) || (arg0 == 7) || (arg0 == 0xC);
}

void func_8083819C(Player* this, GlobalContext* globalCtx) {
    if (this->currentShield == 1) {
        Actor_Spawn(&globalCtx->actorCtx, globalCtx, ACTOR_ITEM_SHIELD, this->actor.posRot.pos.x,
                    this->actor.posRot.pos.y, this->actor.posRot.pos.z, 0, 0, 0, 1);
        Inventory_DeleteEquipment(globalCtx, EQUIP_SHIELD);
        func_8010B680(globalCtx, 0x305F, NULL); // "Your shield is gone!"
    }
}

void func_8083821C(Player* this) {
    s32 i;

    // clang-format off
    for (i = 0; i < 18; i++) { this->unk_A61[i] = Math_Rand_S16Offset(0, 200); }
    // clang-format on

    this->unk_A60 = 1;
}

void func_80838280(Player* this) {
    if (this->actor.colChkInfo.acHitEffect == 1) {
        func_8083821C(this);
    }
    func_80832698(this, NA_SE_VO_LI_FALL_L);
}

void func_808382BC(Player* this) {
    if ((this->invincibilityTimer >= 0) && (this->invincibilityTimer < 20)) {
        this->invincibilityTimer = 20;
    }
}

#ifdef NON_MATCHING
// matches but requires local .data
s32 func_808382DC(Player* this, GlobalContext* globalCtx) {
    s32 pad;
    s32 sp68 = 0;
    s32 sp64;
    struct_808382DC* sp60;

    if (this->unk_A86 != 0) {
        if (!func_8008E8DC(globalCtx, this)) {
            func_808530E0(globalCtx, -0x10);
            this->unk_A86 = 0;
        }
    } else {
        sp68 = ((Player_GetCameraYOffset(this) - 8.0f) < (this->unk_6C4 * this->actor.scale.y));

        if (sp68 || (this->actor.bgCheckFlags & 0x100) || (D_808535E4 == 9) || (this->stateFlags2 & 0x80000000)) {
            func_80832698(this, NA_SE_VO_LI_DAMAGE_S);
            if (sp68) {
                Gameplay_TriggerRespawn(globalCtx);
                func_800994A0(globalCtx);
            } else {
                if (((globalCtx->sceneNum == SCENE_BMORI1) && (globalCtx->roomCtx.curRoom.num == 15)) ||
                    ((globalCtx->sceneNum == SCENE_HAKADAN) && (globalCtx->roomCtx.curRoom.num == 10))) {
                    if (globalCtx->sceneNum == SCENE_BMORI1) {
                        sp60 = &D_808544D4;
                    } else {
                        sp60 = &D_808544E4;
                    }
                    Gameplay_SetupRespawnPoint(globalCtx, RESPAWN_MODE_DOWN, 0xDFF);
                    gSaveContext.respawn[RESPAWN_MODE_DOWN].pos = sp60->pos;
                    gSaveContext.respawn[RESPAWN_MODE_DOWN].yaw = sp60->yaw;
                }

                Gameplay_TriggerVoidOut(globalCtx);
            }

            func_80832698(this, NA_SE_VO_LI_TAKEN_AWAY);
            globalCtx->unk_11DE9 = 1;
            func_80078884(NA_SE_OC_ABYSS);
        } else if ((this->unk_8A1 != 0) && ((this->unk_8A1 >= 2) || (this->invincibilityTimer == 0))) {
            u8 sp5C[] = { 2, 1, 1 }; // D_808544D0

            func_80838280(this);

            if (this->unk_8A1 == 3) {
                this->unk_891 = 40;
            }

            this->actor.colChkInfo.damage += this->unk_8A0;
            func_80837C0C(globalCtx, this, sp5C[this->unk_8A1 - 1], this->unk_8A4, this->unk_8A8, this->unk_8A2, 0x14);
        } else {
            sp64 = (this->quads[2].base.acFlags & 0x80) != 0;

            if (sp64 || ((this->invincibilityTimer < 0) && (this->cylinder.base.acFlags & 2) &&
                         (this->cylinder.body.atHit != NULL) && (this->cylinder.body.atHit->atFlags & 0x20000000))) {
                func_8083264C(this, 0xB4, 0x14, 0x64, 0);

                if (!func_8008E9D0(this)) {
                    if (this->invincibilityTimer >= 0) {
                        LinkAnimetionEntry* anim;
                        s32 sp54 = func_80843188 == this->actionFunc;

                        if (!func_808332B8(this)) {
                            func_80835C58(globalCtx, this, func_808435C4, 0);
                        }

                        if (!(this->unk_84F = sp54)) {
                            func_80833638(this, func_80834BD4);

                            if (this->unk_870 < 0.5f) {
                                anim = D_808543BC[func_8008F1A0(this)];
                            } else {
                                anim = D_808543B4[func_8008F1A0(this)];
                            }
                            SkelAnime_ChangeLinkAnimDefaultStop(globalCtx, &this->skelAnime2, anim);
                        } else {
                            func_80832264(globalCtx, this, D_808543C4[func_8008F1A0(this)]);
                        }
                    }

                    if (!(this->stateFlags1 & 0x206000)) {
                        this->linearVelocity = -18.0f;
                        this->currentYaw = this->actor.shape.rot.y;
                    }
                }

                if (sp64 && (this->quads[2].body.acHitItem->toucher.effect == 1)) {
                    func_8083819C(this, globalCtx);
                }

                return 0;
            }

            if ((this->unk_A87 != 0) || (this->invincibilityTimer > 0) || (this->stateFlags1 & 0x4000000) ||
                (this->action != 0) || (this->quads[0].base.atFlags & 2) || (this->quads[1].base.atFlags & 2)) {
                return 0;
            }

            if (this->cylinder.base.acFlags & 2) {
                Actor* ac = this->cylinder.base.ac;
                s32 sp4C;

                if (ac->flags & 0x1000000) {
                    func_8002F7DC(&this->actor, NA_SE_PL_BODY_HIT);
                }

                if (this->stateFlags1 & 0x8000000) {
                    sp4C = 0;
                } else if (this->actor.colChkInfo.acHitEffect == 2) {
                    sp4C = 3;
                } else if (this->actor.colChkInfo.acHitEffect == 3) {
                    sp4C = 4;
                } else if (this->actor.colChkInfo.acHitEffect == 4) {
                    sp4C = 1;
                } else {
                    func_80838280(this);
                    sp4C = 0;
                }

                func_80837C0C(globalCtx, this, sp4C, 4.0f, 5.0f, func_8002DA78(ac, &this->actor), 0x14);
            } else if (this->invincibilityTimer != 0) {
                return 0;
            } else {
                s32 sp48 = func_80838144(D_808535E4);

                if (((this->actor.wallPoly != NULL) &&
                     func_80042108(&globalCtx->colCtx, this->actor.wallPoly, this->actor.wallPolySource)) ||
                    ((sp48 >= 0) &&
                     func_80042108(&globalCtx->colCtx, this->actor.floorPoly, this->actor.floorPolySource) &&
                     (this->unk_A79 >= D_808544F4[sp48])) ||
                    ((sp48 >= 0) && ((this->currentTunic != 1) || (this->unk_A79 >= D_808544F4[sp48])))) {
                    this->unk_A79 = 0;
                    this->actor.colChkInfo.damage = 4;
                    func_80837C0C(globalCtx, this, 0, 4.0f, 5.0f, this->actor.shape.rot.y, 0x14);
                } else {
                    return 0;
                }
            }
        }
    }

    return 1;
}
#else
#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_player_actor/func_808382DC.s")
#endif

void func_80838940(Player* this, LinkAnimetionEntry* anim, f32 arg2, GlobalContext* globalCtx, u16 sfxId) {
    func_80835C58(globalCtx, this, func_8084411C, 1);
    if (anim != NULL) {
        func_808322D0(globalCtx, this, anim);
    }
    this->actor.velocity.y = arg2 * D_808535E8;
    this->unk_893 = 0;
    this->actor.bgCheckFlags &= ~1;
    func_80832854(this);
    func_80832698(this, sfxId);
    this->stateFlags1 |= 0x40000;
}

void func_808389E8(Player* this, LinkAnimetionEntry* anim, f32 arg2, GlobalContext* globalCtx) {
    func_80838940(this, anim, arg2, globalCtx, NA_SE_VO_LI_SWORD_N);
}

s32 func_80838A14(Player* this, GlobalContext* globalCtx) {
    s32 sp3C;
    LinkAnimetionEntry* sp38;
    f32 sp34;
    f32 temp;
    f32 sp2C;
    f32 sp28;
    f32 sp24;

    if (!(this->stateFlags1 & 0x800) && (this->unk_88C >= 2) &&
        (!(this->stateFlags1 & 0x8000000) || (this->ageProperties->unk_14 > this->ledgeDistance))) {
        sp3C = 0;

        if (func_808332B8(this)) {
            if (this->actor.waterY < 50.0f) {
                if ((this->unk_88C < 2) || (this->ledgeDistance > this->ageProperties->unk_10)) {
                    return 0;
                }
            } else if ((this->currentBoots != 1) || (this->unk_88C > 2)) {
                return 0;
            }
        } else if (!(this->actor.bgCheckFlags & 1) ||
                   ((this->ageProperties->unk_14 <= this->ledgeDistance) && (this->stateFlags1 & 0x8000000))) {
            return 0;
        }

        if ((this->actor.wallPolySource != 50) && (D_808535F0 & 0x40)) {
            if (this->unk_88D >= 6) {
                this->stateFlags2 |= 4;
                if (CHECK_PAD(D_80858AB4->press, A_BUTTON)) {
                    sp3C = 1;
                }
            }
        } else if ((this->unk_88D >= 6) || CHECK_PAD(D_80858AB4->press, A_BUTTON)) {
            sp3C = 1;
        }

        if (sp3C != 0) {
            func_80835C58(globalCtx, this, func_80845668, 0);
            this->stateFlags1 |= 0x40000;
            sp34 = this->ledgeDistance;
            if (this->ageProperties->unk_14 <= sp34) {
                sp38 = &D_04002D48;
                this->linearVelocity = 1.0f;
            } else {
                sp2C = this->actor.wallPoly->norm.x * (1.0f / 32767.0f);
                sp28 = this->actor.wallPoly->norm.z * (1.0f / 32767.0f);
                sp24 = this->wallDistance + 0.5f;

                this->stateFlags1 |= 0x4000;

                if (func_808332B8(this)) {
                    sp38 = &D_040032E8;
                    sp34 -= (60.0f * this->ageProperties->unk_08);
                    this->stateFlags1 &= ~0x8000000;
                } else if (this->ageProperties->unk_18 <= sp34) {
                    sp38 = &D_04002D40;
                    sp34 -= (59.0f * this->ageProperties->unk_08);
                } else {
                    sp38 = &D_04002D38;
                    sp34 -= (41.0f * this->ageProperties->unk_08);
                }

                this->actor.shape.unk_08 -= sp34 * 100.0f;
                this->actor.posRot.pos.x -= sp24 * sp2C;
                this->actor.posRot.pos.y += this->ledgeDistance;
                this->actor.posRot.pos.z -= sp24 * sp28;
                func_80832224(this);
            }

            this->actor.bgCheckFlags |= 1;
            SkelAnime_ChangeLinkAnimPlaybackStop(globalCtx, &this->skelAnime, sp38, 1.3f);
            func_800A3310(globalCtx);
            this->actor.shape.rot.y = this->currentYaw = this->actor.wallPolyRot + 0x8000;
            return 1;
        }
    } else if ((this->actor.bgCheckFlags & 1) && (this->unk_88C == 1) && (this->unk_88D >= 3)) {
        temp = (this->ledgeDistance * 0.08f) + 5.5f;
        func_808389E8(this, &D_04002FE0, temp, globalCtx);
        this->linearVelocity = 2.5f;
        return 1;
    }

    return 0;
}

void func_80838E70(GlobalContext* globalCtx, Player* this, f32 arg2, s16 arg3) {
    func_80835C58(globalCtx, this, func_80845CA4, 0);
    func_80832440(globalCtx, this);
    this->unk_84F = 1;
    this->unk_850 = 1;
    this->unk_450.x = (Math_Sins(arg3) * arg2) + this->actor.posRot.pos.x;
    this->unk_450.z = (Math_Coss(arg3) * arg2) + this->actor.posRot.pos.z;
    func_80832264(globalCtx, this, func_80833338(this));
}

void func_80838F18(GlobalContext* globalCtx, Player* this) {
    func_80835C58(globalCtx, this, func_8084D610, 0);
    func_80832C6C(globalCtx, this, &D_04003328);
}

void func_80838F5C(GlobalContext* globalCtx, Player* this) {
    func_80835C58(globalCtx, this, func_8084F88C, 0);
    this->stateFlags1 |= 0xA0000000;
    func_8005A77C(Gameplay_GetCamera(globalCtx, 0), 0x21);
}

s32 func_80838FB8(GlobalContext* globalCtx, Player* this) {
    if ((globalCtx->sceneLoadFlag == 0) && (this->stateFlags1 & 0x80000000)) {
        func_80838F5C(globalCtx, this);
        func_80832284(globalCtx, this, &D_04003040);
        func_80832698(this, NA_SE_VO_LI_FALL_S);
        func_800788CC(NA_SE_OC_SECRET_WARP_IN);
        return 1;
    }

    return 0;
}

s32 func_80839034(GlobalContext* globalCtx, Player* this, CollisionPoly* arg2, u32 arg3) {
    s32 sp3C;
    s32 temp;
    s32 sp34;
    f32 linearVel;
    s32 yaw;

    if (1) {} // Necessary to match

    if (this->actor.type == ACTORTYPE_PLAYER) {
        sp3C = 0;

        if (!(this->stateFlags1 & 0x80) && (globalCtx->sceneLoadFlag == 0) && (this->action == 0) &&
            !(this->stateFlags1 & 1) &&
            (((arg2 != NULL) && (sp3C = func_80041D28(&globalCtx->colCtx, arg2, arg3), sp3C != 0)) ||
             (func_8083816C(D_808535E4) && (this->unk_A7A == 12)))) {

            sp34 = this->unk_A84 - (s32)this->actor.posRot.pos.y;
            if (!(this->stateFlags1 & 0x28800000) && !(this->actor.bgCheckFlags & 1) && (sp34 < 100) &&
                (D_80853600 > 100.0f)) {
                return 0;
            }

            if (sp3C == 0) {
                Gameplay_TriggerVoidOut(globalCtx);
                func_800994A0(globalCtx);
            } else {
                globalCtx->nextEntranceIndex = globalCtx->setupExitList[sp3C - 1];
                if (globalCtx->nextEntranceIndex == 0x7FFF) {
                    gSaveContext.respawnFlag = 2;
                    globalCtx->nextEntranceIndex = gSaveContext.respawn[RESPAWN_MODE_RETURN].entranceIndex;
                    globalCtx->fadeTransition = 3;
                    gSaveContext.nextTransition = 3;
                } else if (globalCtx->nextEntranceIndex >= 0x7FF9) {
                    globalCtx->nextEntranceIndex =
                        D_808544F8[D_80854514[globalCtx->nextEntranceIndex - 0x7FF9] + globalCtx->curSpawn];
                    func_800994A0(globalCtx);
                } else {
                    if (func_80041F7C(&globalCtx->colCtx, arg2, arg3) == 2) {
                        gSaveContext.respawn[RESPAWN_MODE_DOWN].entranceIndex = globalCtx->nextEntranceIndex;
                        Gameplay_TriggerVoidOut(globalCtx);
                        gSaveContext.respawnFlag = -2;
                    }
                    gSaveContext.unk_13C3 = 1;
                    func_800994A0(globalCtx);
                }
                globalCtx->sceneLoadFlag = 0x14;
            }

            if (!(this->stateFlags1 & 0x20800000) && !(this->stateFlags2 & 0x40000) && !func_808332B8(this) &&
                (temp = func_80041D4C(&globalCtx->colCtx, arg2, arg3), (temp != 10)) &&
                ((sp34 < 100) || (this->actor.bgCheckFlags & 1))) {
                if (temp == 11) {
                    func_800788CC(0x5805);
                    func_800F6964(5);
                    gSaveContext.seqIndex = 0xFF;
                    gSaveContext.nightSeqIndex = 0xFF;
                } else {
                    linearVel = this->linearVelocity;
                    if (linearVel < 0.0f) {
                        this->actor.posRot.rot.y += 0x8000;
                        linearVel = -linearVel;
                    }

                    if (linearVel > R_RUN_SPEED_LIMIT / 100.0f) {
                        gSaveContext.unk_13BC = R_RUN_SPEED_LIMIT / 100.0f;
                    } else {
                        gSaveContext.unk_13BC = linearVel;
                    }

                    if (D_808535F4 != 0) {
                        yaw = D_808535FC;
                    } else {
                        yaw = this->actor.posRot.rot.y;
                    }
                    func_80838E70(globalCtx, this, 400.0f, yaw);
                }
            } else {
                if (!(this->actor.bgCheckFlags & 1)) {
                    func_80832210(this);
                }
            }

            this->stateFlags1 |= 0x20000001;
            func_80835E44(globalCtx, 0x2F);
            return 1;
        } else {
            if (globalCtx->sceneLoadFlag == 0) {
                if ((this->actor.posRot.pos.y < -4000.0f) ||
                    (((this->unk_A7A == 5) || (this->unk_A7A == 12)) &&
                     ((D_80853600 < 100.0f) || (this->fallY > 400.0f) ||
                      ((globalCtx->sceneNum != SCENE_HAKADAN) && (this->fallY > 200.0f)))) ||
                    ((globalCtx->sceneNum == SCENE_GANON_FINAL) && (this->fallY > 320.0f))) {
                    if (this->actor.bgCheckFlags & 1) {
                        if (this->unk_A7A == 5) {
                            Gameplay_TriggerRespawn(globalCtx);
                        } else {
                            Gameplay_TriggerVoidOut(globalCtx);
                        }
                        globalCtx->fadeTransition = 4;
                        func_80078884(NA_SE_OC_ABYSS);
                    } else {
                        func_80838F5C(globalCtx, this);
                        this->unk_850 = 9999;
                        if (this->unk_A7A == 5) {
                            this->unk_84F = -1;
                        } else {
                            this->unk_84F = 1;
                        }
                    }
                }

                this->unk_A84 = this->actor.posRot.pos.y;
            }
        }
    }

    return 0;
}

void func_808395DC(Player* this, Vec3f* arg1, Vec3f* arg2, Vec3f* arg3) {
    f32 cos = Math_Coss(this->actor.shape.rot.y);
    f32 sin = Math_Sins(this->actor.shape.rot.y);

    arg3->x = arg1->x + ((arg2->x * cos) + (arg2->z * sin));
    arg3->y = arg1->y + arg2->y;
    arg3->z = arg1->z + ((arg2->z * cos) - (arg2->x * sin));
}

Actor* func_80839680(GlobalContext* globalCtx, Player* this, Vec3f* arg2, Vec3f* arg3, s32 type) {
    Vec3f pos;

    func_808395DC(this, arg2, arg3, &pos);
    return Actor_Spawn(&globalCtx->actorCtx, globalCtx, ACTOR_EN_ELF, pos.x, pos.y, pos.z, 0, 0, 0, type);
}

f32 func_808396F4(GlobalContext* globalCtx, Player* this, Vec3f* arg2, Vec3f* arg3, CollisionPoly** arg4, s32* arg5) {
    func_808395DC(this, &this->actor.posRot.pos, arg2, arg3);
    func_8003C940(&globalCtx->colCtx, arg4, arg5, arg3);
}

f32 func_8083973C(GlobalContext* globalCtx, Player* this, Vec3f* arg2, Vec3f* arg3) {
    CollisionPoly* sp24;
    s32 sp20;

    return func_808396F4(globalCtx, this, arg2, arg3, &sp24, &sp20);
}

s32 func_80839768(GlobalContext* globalCtx, Player* this, Vec3f* arg2, CollisionPoly** arg3, u32* arg4, Vec3f* arg5) {
    Vec3f sp44;
    Vec3f sp38;

    sp44.x = this->actor.posRot.pos.x;
    sp44.y = this->actor.posRot.pos.y + arg2->y;
    sp44.z = this->actor.posRot.pos.z;
    func_808395DC(this, &this->actor.posRot.pos, arg2, &sp38);
    return func_8003DE84(&globalCtx->colCtx, &sp44, &sp38, arg5, arg3, 1, 0, 0, 1, arg4);
}

s32 func_80839800(Player* this, GlobalContext* globalCtx) {
    s32 pad1;
    DoorActor* door;
    s32 sp7C;
    f32 sp78;
    f32 sp74;
    s32 pad2;
    f32 sp6C;
    s32 pad3;
    s32 frontRoom;
    Actor* attached;
    LinkAnimetionEntry* sp5C;
    CollisionPoly* sp58;
    Vec3f sp4C;

    if ((this->unk_42C != 0) &&
        (!(this->stateFlags1 & 0x800) || ((this->heldActor != NULL) && (this->heldActor->id == ACTOR_EN_RU1)))) {
        if (CHECK_PAD(D_80858AB4->press, A_BUTTON) || (func_8084F9A0 == this->actionFunc)) {
            door = this->unk_430;

            if (this->unk_42C < 0) {
                door->actor.textId = 0xD0; // "It won't open!"
                func_80853148(globalCtx, &door->actor);
                return 0;
            }

            sp7C = this->unk_42D;
            sp78 = Math_Coss(door->actor.shape.rot.y);
            sp74 = Math_Sins(door->actor.shape.rot.y);

            if (this->unk_42C == 2) {
                this->currentYaw = door->actor.initPosRot.rot.y;
                if (sp7C > 0) {
                    this->currentYaw -= 0x8000;
                }
                this->actor.shape.rot.y = this->currentYaw;

                if (this->linearVelocity <= 0.0f) {
                    this->linearVelocity = 0.1f;
                }

                func_80838E70(globalCtx, this, 50.0f, this->actor.shape.rot.y);

                this->unk_84F = 0;
                this->unk_447 = this->unk_42C;
                this->stateFlags1 |= 0x20000000;

                this->unk_450.x = this->actor.posRot.pos.x + ((sp7C * 20.0f) * sp74);
                this->unk_450.z = this->actor.posRot.pos.z + ((sp7C * 20.0f) * sp78);
                this->unk_45C.x = this->actor.posRot.pos.x + ((sp7C * -120.0f) * sp74);
                this->unk_45C.z = this->actor.posRot.pos.z + ((sp7C * -120.0f) * sp78);

                door->unk_164 = 1;
                func_80832224(this);

                if (this->unk_42E != 0) {
                    this->unk_850 = 0;
                    func_80832B0C(globalCtx, this, func_80833338(this));
                    this->skelAnime.animFrameCount = 0.0f;
                } else {
                    this->linearVelocity = 0.1f;
                }

                if (door->actor.type == ACTORTYPE_DOOR) {
                    this->unk_46A =
                        globalCtx->transitionActorList[(u16)door->actor.params >> 10].sides[(sp7C > 0) ? 0 : 1].effects;
                    func_800304B0(globalCtx);
                }
            } else {
                door->unk_190 = (sp7C < 0.0f) ? ((LINK_IS_ADULT) ? 0 : 1) : ((LINK_IS_ADULT) ? 2 : 3);

                if (door->unk_190 == 0) {
                    sp5C = D_808539EC[this->unk_15B];
                } else if (door->unk_190 == 1) {
                    sp5C = D_80853A04[this->unk_15B];
                } else if (door->unk_190 == 2) {
                    sp5C = D_80853A1C[this->unk_15B];
                } else {
                    sp5C = D_80853A34[this->unk_15B];
                }

                func_80835C58(globalCtx, this, func_80845EF8, 0);
                func_80832528(globalCtx, this);

                if (sp7C < 0) {
                    this->actor.shape.rot.y = door->actor.shape.rot.y;
                } else {
                    this->actor.shape.rot.y = door->actor.shape.rot.y - 0x8000;
                }

                this->currentYaw = this->actor.shape.rot.y;

                sp6C = (sp7C * 22.0f);
                this->actor.posRot.pos.x = door->actor.posRot.pos.x + sp6C * sp74;
                this->actor.posRot.pos.z = door->actor.posRot.pos.z + sp6C * sp78;

                func_8083328C(globalCtx, this, sp5C);
                if (this->unk_42E != 0) {
                    this->skelAnime.animFrameCount = 0.0f;
                }
                func_80832224(this);
                func_80832F54(globalCtx, this, 0x28F);

                if (door->actor.parent != NULL) {
                    sp7C = -sp7C;
                }

                door->unk_191 = 1;

                if (this->unk_42C != 3) {
                    this->stateFlags1 |= 0x20000000;
                    func_800304B0(globalCtx);
                    if (((door->actor.params >> 7) & 7) == 3) {
                        sp4C.x = door->actor.posRot.pos.x - (sp6C * sp74);
                        sp4C.y = door->actor.posRot.pos.y + 10.0f;
                        sp4C.z = door->actor.posRot.pos.z - (sp6C * sp78);
                        func_8003C890(&globalCtx->colCtx, &sp58, &sp4C);
                        if (func_80839034(globalCtx, this, sp58, 50)) {
                            gSaveContext.unk_13BC = 2.0f;
                            gSaveContext.unk_13C0 = NA_SE_OC_DOOR_OPEN;
                        }
                    } else {
                        func_8005AD40(Gameplay_GetCamera(globalCtx, 0), &door->actor,
                                      globalCtx->transitionActorList[(u16)door->actor.params >> 10]
                                          .sides[(sp7C > 0) ? 0 : 1]
                                          .effects,
                                      0, 38.0f * D_808535EC, 26.0f * D_808535EC, 10.0f * D_808535EC);
                    }
                }
            }

            if ((this->unk_42C != 3) && (door->actor.type == ACTORTYPE_DOOR)) {
                frontRoom =
                    globalCtx->transitionActorList[(u16)door->actor.params >> 10].sides[(sp7C > 0) ? 0 : 1].room;
                if ((frontRoom >= 0) && (frontRoom != globalCtx->roomCtx.curRoom.num)) {
                    func_8009728C(globalCtx, &globalCtx->roomCtx, frontRoom);
                }
            }

            door->actor.room = globalCtx->roomCtx.curRoom.num;

            if (((attached = door->actor.child) != NULL) || ((attached = door->actor.parent) != NULL)) {
                attached->room = globalCtx->roomCtx.curRoom.num;
            }

            return 1;
        }
    }

    return 0;
}

void func_80839E88(Player* this, GlobalContext* globalCtx) {
    LinkAnimetionEntry* anim;

    func_80835C58(globalCtx, this, func_80840450, 1);

    if (this->unk_870 < 0.5f) {
        anim = func_808334E4(this);
        this->unk_870 = 0.0f;
    } else {
        anim = func_80833528(this);
        this->unk_870 = 1.0f;
    }

    this->unk_874 = this->unk_870;
    func_80832284(globalCtx, this, anim);
    this->currentYaw = this->actor.shape.rot.y;
}

void func_80839F30(Player* this, GlobalContext* globalCtx) {
    func_80835C58(globalCtx, this, func_808407CC, 1);
    func_80832B0C(globalCtx, this, func_80833338(this));
    this->currentYaw = this->actor.shape.rot.y;
}

void func_80839F90(Player* this, GlobalContext* globalCtx) {
    if (func_8008E9C4(this)) {
        func_80839E88(this, globalCtx);
    } else if (func_80833B2C(this)) {
        func_80839F30(this, globalCtx);
    } else {
        func_80853080(this, globalCtx);
    }
}

void func_80839FFC(Player* this, GlobalContext* globalCtx) {
    PlayerActionFunc actionFunc;

    if (func_8008E9C4(this)) {
        actionFunc = func_80840450;
    } else if (func_80833B2C(this)) {
        actionFunc = func_808407CC;
    } else {
        actionFunc = func_80840BC8;
    }

    func_80835C58(globalCtx, this, actionFunc, 1);
}

void func_8083A060(Player* this, GlobalContext* globalCtx) {
    func_80839FFC(this, globalCtx);
    if (func_8008E9C4(this)) {
        this->unk_850 = 1;
    }
}

void func_8083A098(Player* this, LinkAnimetionEntry* anim, GlobalContext* globalCtx) {
    func_8083A060(this, globalCtx);
    func_8083328C(globalCtx, this, anim);
}

s32 func_8083A0D4(Player* this) {
    return (this->interactRangeActor != NULL) && (this->heldActor == NULL);
}

void func_8083A0F4(GlobalContext* globalCtx, Player* this) {
    if (func_8083A0D4(this)) {
        Actor* interactRangeActor = this->interactRangeActor;
        s32 interactActorId = interactRangeActor->id;

        if (interactActorId == ACTOR_BG_TOKI_SWD) {
            this->interactRangeActor->parent = &this->actor;
            func_80835C58(globalCtx, this, func_8084F608, 0);
            this->stateFlags1 |= 0x20000000;
        } else {
            LinkAnimetionEntry* anim;

            if (interactActorId == ACTOR_BG_HEAVY_BLOCK) {
                func_80835C58(globalCtx, this, func_80846120, 0);
                this->stateFlags1 |= 0x20000000;
                anim = &D_04002F98;
            } else if ((interactActorId == ACTOR_EN_ISHI) && ((interactRangeActor->params & 0xF) == 1)) {
                func_80835C58(globalCtx, this, func_80846260, 0);
                anim = &D_040032B0;
            } else if (((interactActorId == ACTOR_EN_BOMBF) || (interactActorId == ACTOR_EN_KUSA)) &&
                       (func_8008F034() <= 0)) {
                func_80835C58(globalCtx, this, func_80846408, 0);
                this->actor.posRot.pos.x =
                    (Math_Sins(interactRangeActor->yawTowardsLink) * 20.0f) + interactRangeActor->posRot.pos.x;
                this->actor.posRot.pos.z =
                    (Math_Coss(interactRangeActor->yawTowardsLink) * 20.0f) + interactRangeActor->posRot.pos.z;
                this->currentYaw = this->actor.shape.rot.y = interactRangeActor->yawTowardsLink + 0x8000;
                anim = &D_04003060;
            } else {
                func_80835C58(globalCtx, this, func_80846050, 0);
                anim = D_80853A4C[this->unk_15B];
            }

            func_80832264(globalCtx, this, anim);
        }
    } else {
        func_80839F90(this, globalCtx);
        this->stateFlags1 &= ~0x800;
    }
}

void func_8083A2F8(GlobalContext* globalCtx, Player* this) {
    func_80835DAC(globalCtx, this, func_8084B530, 0);
    this->stateFlags1 |= 0x20000040;
    if (this->actor.textId != 0) {
        func_8010B680(globalCtx, this->actor.textId, this->naviTargetActor);
        this->unk_664 = this->naviTargetActor;
    }
}

void func_8083A360(GlobalContext* globalCtx, Player* this) {
    func_80835DAC(globalCtx, this, func_8084CC98, 0);
}

void func_8083A388(GlobalContext* globalCtx, Player* this) {
    func_80835C58(globalCtx, this, func_8084B78C, 0);
}

void func_8083A3B0(GlobalContext* globalCtx, Player* this) {
    s32 sp1C = this->unk_850;
    s32 sp18 = this->unk_84F;

    func_80835DAC(globalCtx, this, func_8084BF1C, 0);
    this->actor.velocity.y = 0.0f;

    this->unk_850 = sp1C;
    this->unk_84F = sp18;
}

void func_8083A40C(GlobalContext* globalCtx, Player* this) {
    func_80835DAC(globalCtx, this, func_8084C760, 0);
}

void func_8083A434(GlobalContext* globalCtx, Player* this) {
    func_80835DAC(globalCtx, this, func_8084E6D4, 0);

    this->stateFlags1 |= 0x20000400;

    if (this->getItemId == GI_HEART_CONTAINER_2) {
        this->unk_850 = 20;
    } else if (this->getItemId >= 0) {
        this->unk_850 = 1;
    } else {
        this->getItemId = -this->getItemId;
    }
}

s32 func_8083A4A8(Player* this, GlobalContext* globalCtx) {
    s16 yawDiff;
    LinkAnimetionEntry* anim;
    f32 temp;

    yawDiff = this->currentYaw - this->actor.shape.rot.y;

    if ((ABS(yawDiff) < 0x1000) && (this->linearVelocity > 4.0f)) {
        anim = &D_04003148;
    } else {
        anim = &D_04002FE0;
    }

    if (this->linearVelocity > (IREG(66) / 100.0f)) {
        temp = IREG(67) / 100.0f;
    } else {
        temp = (IREG(68) / 100.0f) + ((IREG(69) * this->linearVelocity) / 1000.0f);
    }

    func_80838940(this, anim, temp, globalCtx, NA_SE_VO_LI_AUTO_JUMP);
    this->unk_850 = 1;

    return 1;
}

void func_8083A5C4(GlobalContext* globalCtx, Player* this, CollisionPoly* arg2, f32 arg3, LinkAnimetionEntry* arg4) {
    f32 sp24 = arg2->norm.x * (1.0f / 32767.0f);
    f32 sp20 = arg2->norm.z * (1.0f / 32767.0f);

    func_80835C58(globalCtx, this, func_8084BBE4, 0);
    func_80832564(globalCtx, this);
    func_80832264(globalCtx, this, arg4);
    this->actor.posRot.pos.x -= (arg3 + 1.0f) * sp24;
    this->actor.posRot.pos.z -= (arg3 + 1.0f) * sp20;
    this->actor.shape.rot.y = this->currentYaw = atan2s(sp20, sp24);
    func_80832224(this);
    func_80832CFC(this);
}

#ifdef NON_MATCHING
// regalloc differences
s32 func_8083A6AC(Player* this, GlobalContext* globalCtx) {
    CollisionPoly* sp84;
    u32 sp80;
    Vec3f sp74;
    Vec3f sp68;
    f32 temp1;
    f32 temp2;

    if ((this->actor.waterY < -80.0f) && (ABS(this->unk_898) < 2730) && (ABS(this->unk_89A) < 2730)) {
        sp74.x = this->actor.pos4.x - this->actor.posRot.pos.x;
        sp74.z = this->actor.pos4.z - this->actor.posRot.pos.z;

        temp1 = sqrtf(SQ(sp74.x) + SQ(sp74.z));
        if (temp1 != 0.0f) {
            temp2 = 5.0f / temp1;
        } else {
            temp2 = 0.0f;
        }

        sp74.x = this->actor.pos4.x + (sp74.x * temp2);
        sp74.y = this->actor.posRot.pos.y;
        sp74.z = this->actor.pos4.z + (sp74.z * temp2);

        if (func_8003DE84(&globalCtx->colCtx, &this->actor.posRot.pos, &sp74, &sp68, &sp84, 1, 0, 0, 1, &sp80) &&
            (ABS(sp84->norm.y) < 600)) {
            f32 normY = sp84->norm.y;
            LinkAnimetionEntry* anim;
            f32 sp54;
            s32 sp50;

            sp54 = Math3D_UDistPlaneToPos(sp84->norm.x * (1.0f / 32767.0f), normY * (1.0f / 32767.0f),
                                          sp84->norm.z * (1.0f / 32767.0f), sp84->dist, &this->actor.posRot.pos);

            sp50 = D_80853604 == 6;
            if (!sp50 && (func_80041DB8(&globalCtx->colCtx, sp84, sp80) & 8)) {
                sp50 = 1;
            }

            if (sp50) {
                anim = &D_04002D88;
            } else {
                anim = &D_04002F10;
            }
            func_8083A5C4(globalCtx, this, sp84, sp54, anim);

            if (sp50) {
                func_80836898(globalCtx, this, func_8083A3B0);
                this->currentYaw += 0x8000;
                this->actor.shape.rot.y = this->currentYaw;
                this->stateFlags1 |= 0x200000;
                func_80832F54(globalCtx, this, 0x9F);
                this->unk_850 = -1;
                this->unk_84F = sp50;
            } else {
                this->stateFlags1 |= 0x2000;
                this->stateFlags1 &= ~0x20000;
            }

            func_8002F7DC(&this->actor, NA_SE_PL_SLIPDOWN);
            func_80832698(this, NA_SE_VO_LI_HANG);
            return 1;
        }
    }

    return 0;
}
#else
#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_player_actor/func_8083A6AC.s")
#endif

void func_8083A9B8(Player* this, LinkAnimetionEntry* anim, GlobalContext* globalCtx) {
    func_80835C58(globalCtx, this, func_8084BDFC, 0);
    SkelAnime_ChangeLinkAnimPlaybackStop(globalCtx, &this->skelAnime, anim, 1.3f);
}

void func_8083AA10(Player* this, GlobalContext* globalCtx) {
    s32 sp5C;
    CollisionPoly* sp58;
    s32 sp54;
    UNK_TYPE sp50;
    Vec3f sp44;
    f32 sp40;
    f32 sp3C;

    this->fallY = this->dropY - (s32)this->actor.posRot.pos.y;
    if (!(this->stateFlags1 & 0x28000000) && !(this->actor.bgCheckFlags & 1)) {
        if (!func_80838FB8(globalCtx, this)) {
            if (D_80853604 == 8) {
                this->actor.posRot.pos.x = this->actor.pos4.x;
                this->actor.posRot.pos.z = this->actor.pos4.z;
                return;
            }

            if (!(this->unk_692 & 2) && !(this->skelAnime.flags & 0x80) && (func_8084411C != this->actionFunc) &&
                (func_80844A44 != this->actionFunc)) {
                if ((D_80853604 == 7) || (this->swordState != 0)) {
                    Math_Vec3f_Copy(&this->actor.posRot.pos, &this->actor.pos4);
                    func_80832210(this);
                    return;
                }

                if (this->unk_893 != 0) {
                    this->actor.velocity.y = 1.0f;
                    D_80853604 = 9;
                    return;
                }

                sp5C = (s16)(this->currentYaw - this->actor.shape.rot.y);
                func_80835C58(globalCtx, this, func_8084411C, 1);
                func_80832440(globalCtx, this);

                this->unk_89E = this->unk_A82;
                if ((this->actor.bgCheckFlags & 4) && !(this->stateFlags1 & 0x8000000) && (D_80853604 != 6) &&
                    (D_80853604 != 9) && (D_80853600 > 20.0f) && (this->swordState == 0) && (ABS(sp5C) < 0x2000) &&
                    (this->linearVelocity > 3.0f)) {
                    if ((D_80853604 == 11) && !(this->stateFlags1 & 0x800)) {
                        sp40 = func_808396F4(globalCtx, this, &D_8085451C, &sp44, &sp58, &sp54);
                        sp3C = this->actor.posRot.pos.y;
                        if (func_8004213C(globalCtx, &globalCtx->colCtx, sp44.x, sp44.z, &sp3C, &sp50) &&
                            ((sp3C - sp40) > 50.0f)) {
                            func_808389E8(this, &D_04003158, 6.0f, globalCtx);
                            func_80835C58(globalCtx, this, func_80844A44, 0);
                            return;
                        }
                    }
                    func_8083A4A8(this, globalCtx);
                    return;
                }

                if ((D_80853604 == 9) || (D_80853600 <= this->ageProperties->unk_34) ||
                    !func_8083A6AC(this, globalCtx)) {
                    func_80832284(globalCtx, this, &D_04003040);
                    return;
                }
            }
        }
    } else {
        this->dropY = this->actor.posRot.pos.y;
    }
}

s32 func_8083AD4C(GlobalContext* globalCtx, Player* this) {
    s32 sp1C;

    if (this->unk_6AD == 2) {
        if (func_8002DD6C(this)) {
            if (LINK_IS_ADULT) {
                sp1C = 7;
            } else {
                sp1C = 11;
            }
        } else {
            sp1C = 10;
        }
    } else {
        sp1C = 6;
    }

    return func_8005A444(Gameplay_GetCamera(globalCtx, 0), sp1C);
}

s32 func_8083ADD4(GlobalContext* globalCtx, Player* this) {
    if (this->unk_6AD == 3) {
        func_80835C58(globalCtx, this, func_80852E14, 0);
        if (this->unk_46A != 0) {
            this->stateFlags1 |= 0x20000000;
        }
        func_80832318(this);
        return 1;
    } else {
        return 0;
    }
}

void func_8083AE40(Player* this, s16 objectId) {
    s32 pad;
    u32 size;

    if (objectId != 0) {
        this->giObjectLoading = true;
        osCreateMesgQueue(&this->giObjectLoadQueue, &this->giObjectLoadMsg, 1);

        size = gObjectTable[objectId].vromEnd - gObjectTable[objectId].vromStart;

        LOG_HEX("size", size, "../z_player.c", 9090);
        if (size > 1024 * 8) {
            __assert("size <= 1024 * 8", "../z_player.c", 9091);
        }

        if (gObjectTable[objectId].vromEnd) {} // Necessary to match

        DmaMgr_SendRequest2(&this->giObjectDmaRequest, (u32)this->giObjectSegment, gObjectTable[objectId].vromStart,
                            size, 0, &this->giObjectLoadQueue, NULL, "../z_player.c", 9099);
    }
}

void func_8083AF44(GlobalContext* globalCtx, Player* this, s32 arg2) {
    func_80835DE4(globalCtx, this, func_808507F4, 0);
    this->unk_84F = arg2 - 3;
    func_80087708(globalCtx, D_80854390[arg2], 4);
    SkelAnime_ChangeLinkAnimPlaybackStop(globalCtx, &this->skelAnime, &D_04002D28, 0.83f);

    if (arg2 == 5) {
        this->unk_46C = func_800800F8(globalCtx, 1100, -101, NULL, 0);
    } else {
        func_80835EA4(globalCtx, 10);
    }
}

void func_8083B010(Player* this) {
    this->actor.posRot2.rot.x = this->actor.posRot2.rot.z = this->unk_6B6 = this->unk_6B8 = this->unk_6BA =
        this->unk_6BC = this->unk_6BE = this->unk_6C0 = 0;
    this->actor.posRot2.rot.y = this->actor.shape.rot.y;
}

s32 func_8083B040(Player* this, GlobalContext* globalCtx) {
    s32 sp2C;
    s32 sp28;
    GetItemEntry* giEntry;
    Actor* naviTargetActor;

    if ((this->unk_6AD != 0) &&
        (func_808332B8(this) || (this->actor.bgCheckFlags & 1) || (this->stateFlags1 & 0x800000))) {
        if (!func_8083ADD4(globalCtx, this)) {
            if (this->unk_6AD == 4) {
                sp2C = func_8008F0D8(this, this->unk_154);
                if (sp2C >= 0) {
                    if ((sp2C != 3) || (gSaveContext.respawn[RESPAWN_MODE_TOP].data <= 0)) {
                        func_8083AF44(globalCtx, this, sp2C);
                    } else {
                        func_80835C58(globalCtx, this, func_8085063C, 1);
                        this->stateFlags1 |= 0x30000000;
                        func_80832264(globalCtx, this, func_80833338(this));
                        func_80835EA4(globalCtx, 4);
                    }

                    func_80832224(this);
                    return 1;
                }

                sp2C = this->unk_154 - 0x2B;
                if ((sp2C >= 0) ||
                    (sp28 = func_8008F224(this, this->unk_154) - 1,
                     ((sp28 >= 0) && (sp28 < 6) &&
                      ((this->unk_154 >= 0x23) || ((this->naviTargetActor != NULL) &&
                                                   (((this->unk_154 == 0x22) && (this->exchangeItemId == 0x1B)) ||
                                                    (this->exchangeItemId == 0x19))))))) {
                    if ((globalCtx->actorCtx.titleCtx.delayB == 0) && (globalCtx->actorCtx.titleCtx.unk_C == 0)) {
                        func_80835DE4(globalCtx, this, func_8084F104, 0);

                        if (sp2C >= 0) {
                            giEntry = &D_80853624[D_80854528[sp2C] - 1];
                            func_8083AE40(this, giEntry->objectId);
                        }

                        this->stateFlags1 |= 0x30000040;

                        if (sp2C >= 0) {
                            sp2C = sp2C + 1;
                        } else {
                            sp2C = sp28 + 0x18;
                        }

                        naviTargetActor = this->naviTargetActor;
                        if ((naviTargetActor != NULL) &&
                            ((this->exchangeItemId == sp2C) || (this->exchangeItemId == 0x19) ||
                             ((this->exchangeItemId == 0x1B) && (this->unk_154 == 0x23)) ||
                             ((this->exchangeItemId == 4) && (this->unk_154 == 0x21))) &&
                            ((this->exchangeItemId != 4) || (this->unk_154 == 0x2E))) {
                            if (this->exchangeItemId == 4) {
                                Inventory_ChangeAmmo(ITEM_BEAN, -1);
                                func_80835DE4(globalCtx, this, func_8084279C, 0);
                                this->stateFlags1 |= 0x20000000;
                                this->unk_850 = 0x50;
                                this->unk_84F = -1;
                            }
                            naviTargetActor->flags |= 0x100;
                            this->unk_664 = this->naviTargetActor;
                        } else if (sp2C == 0x1D) {
                            this->unk_84F = 1;
                            this->actor.textId =
                                0x4005; // "It looks like there is something already inside this bottle..."
                            func_80835EA4(globalCtx, 1);
                        } else {
                            this->unk_84F = 2;
                            this->actor.textId = 0xCF; // "It looks like this item doesn't work here..."
                            func_80835EA4(globalCtx, 4);
                        }

                        this->actor.flags |= 0x100;
                        this->exchangeItemId = sp2C;

                        if (this->unk_84F < 0) {
                            func_80832B0C(globalCtx, this, D_80853C14[this->unk_15B]);
                        } else {
                            func_80832264(globalCtx, this, D_80854548[this->unk_84F]);
                        }

                        func_80832224(this);
                    }
                    return 1;
                }

                sp2C = func_8008F224(this, this->unk_154);
                if (sp2C >= 0) {
                    if (sp2C == 0xC) {
                        func_80835DE4(globalCtx, this, func_8084EED8, 0);
                        func_808322D0(globalCtx, this, &D_04002650);
                        func_80835EA4(globalCtx, 3);
                    } else if ((sp2C > 0) && (sp2C < 4)) {
                        func_80835DE4(globalCtx, this, func_8084EFC0, 0);
                        func_808322D0(globalCtx, this, &D_04002688);
                        func_80835EA4(globalCtx, (sp2C == 1) ? 1 : 5);
                    } else {
                        func_80835DE4(globalCtx, this, func_8084EAC0, 0);
                        func_80832B78(globalCtx, this, &D_04002668);
                        func_80835EA4(globalCtx, 2);
                    }
                } else {
                    func_80835DE4(globalCtx, this, func_8084E3C4, 0);
                    func_808322D0(globalCtx, this, &D_040030A0);
                    this->stateFlags2 |= 0x8000000;
                    func_80835EA4(globalCtx, (this->unk_6A8 != 0) ? 0x5B : 0x5A);
                    if (this->unk_6A8 != 0) {
                        this->stateFlags2 |= 0x2000000;
                        Camera_SetParam(Gameplay_GetCamera(globalCtx, 0), 8, this->unk_6A8);
                    }
                }
            } else if (func_8083AD4C(globalCtx, this)) {
                if (!(this->stateFlags1 & 0x800000)) {
                    func_80835C58(globalCtx, this, func_8084B1D8, 1);
                    this->unk_850 = 13;
                    func_8083B010(this);
                }
                this->stateFlags1 |= 0x100000;
                func_80078884(NA_SE_SY_CAMERA_ZOOM_UP);
                func_80832210(this);
                return 1;
            } else {
                this->unk_6AD = 0;
                func_80078884(NA_SE_SY_ERROR);
                return 0;
            }

            this->stateFlags1 |= 0x30000000;
        }

        func_80832224(this);
        return 1;
    }

    return 0;
}

s32 func_8083B644(Player* this, GlobalContext* globalCtx) {
    Actor* sp34 = this->naviTargetActor;
    Actor* sp30 = this->unk_664;
    Actor* sp2C = NULL;
    s32 sp28 = 0;
    s32 sp24;

    sp24 = (sp30 != NULL) && (((sp30->flags & 0x40001) == 0x40001) || (sp30->naviEnemyId != 0xFF));

    if (sp24 || (this->naviMessageId != 0)) {
        sp28 = (this->naviMessageId < 0) && ((ABS(this->naviMessageId) & 0xFF00) != 0x200);
        if (sp28 || !sp24) {
            sp2C = this->navi;
            if (sp28) {
                sp30 = NULL;
                sp34 = NULL;
            }
        } else {
            sp2C = sp30;
        }
    }

    if ((sp34 != NULL) || (sp2C != NULL)) {
        if ((sp30 == NULL) || (sp30 == sp34) || (sp30 == sp2C)) {
            if (!(this->stateFlags1 & 0x800) ||
                ((this->heldActor != NULL) && (sp28 || (sp34 == this->heldActor) || (sp2C == this->heldActor) ||
                                               ((sp34 != NULL) && (sp34->flags & 0x10000))))) {
                if ((this->actor.bgCheckFlags & 1) || (this->stateFlags1 & 0x800000) ||
                    (func_808332B8(this) && !(this->stateFlags2 & 0x400))) {

                    if (sp34 != NULL) {
                        this->stateFlags2 |= 2;
                        if (CHECK_PAD(D_80858AB4->press, A_BUTTON) || (sp34->flags & 0x10000)) {
                            sp2C = NULL;
                        } else if (sp2C == NULL) {
                            return 0;
                        }
                    }

                    if (sp2C != NULL) {
                        if (!sp28) {
                            this->stateFlags2 |= 0x200000;
                        }

                        if (!CHECK_PAD(D_80858AB4->press, U_CBUTTONS) && !sp28) {
                            return 0;
                        }

                        sp34 = sp2C;
                        this->naviTargetActor = NULL;

                        if (sp28 || !sp24) {
                            if (this->naviMessageId >= 0) {
                                sp2C->textId = this->naviMessageId;
                            } else {
                                sp2C->textId = -this->naviMessageId;
                            }
                        } else {
                            if (sp2C->naviEnemyId != 0xFF) {
                                sp2C->textId = sp2C->naviEnemyId + 0x600;
                            }
                        }
                    }

                    this->currentMask = D_80858AA4;
                    func_80853148(globalCtx, sp34);
                    return 1;
                }
            }
        }
    }

    return 0;
}

s32 func_8083B8F4(Player* this, GlobalContext* globalCtx) {
    if (!(this->stateFlags1 & 0x800800) && func_8005A470(Gameplay_GetCamera(globalCtx, 0), 6)) {
        if ((this->actor.bgCheckFlags & 1) ||
            (func_808332B8(this) && (this->actor.waterY < this->ageProperties->unk_2C))) {
            this->unk_6AD = 1;
            return 1;
        }
    }

    return 0;
}

s32 func_8083B998(Player* this, GlobalContext* globalCtx) {
    if (this->unk_6AD != 0) {
        func_8083B040(this, globalCtx);
        return 1;
    }

    if ((this->unk_664 != NULL) &&
        (((this->unk_664->flags & 0x40001) == 0x40001) || (this->unk_664->naviEnemyId != 0xFF))) {
        this->stateFlags2 |= 0x200000;
    } else if ((this->naviMessageId == 0) && !func_8008E9C4(this) && CHECK_PAD(D_80858AB4->press, U_CBUTTONS) &&
               (YREG(15) != 0x10) && (YREG(15) != 0x20) && !func_8083B8F4(this, globalCtx)) {
        func_80078884(NA_SE_SY_ERROR);
    }

    return 0;
}

void func_8083BA90(GlobalContext* globalCtx, Player* this, s32 arg2, f32 arg3, f32 arg4) {
    func_80837948(globalCtx, this, arg2);
    func_80835C58(globalCtx, this, func_80844AF4, 0);
    this->unk_692 |= 2;
    this->currentYaw = this->actor.shape.rot.y;
    this->linearVelocity = arg3;
    this->actor.velocity.y = arg4;
    this->actor.bgCheckFlags &= ~1;
    this->unk_893 = 0;
    func_80832854(this);
    func_80832698(this, NA_SE_VO_LI_SWORD_L);
}

s32 func_8083BB20(Player* this) {
    if (!(this->stateFlags1 & 0x400000) && (func_8008F180(this) != 0)) {
        if (D_80853614 || ((this->actor.type != ACTORTYPE_PLAYER) && CHECK_PAD(D_80858AB4->press, B_BUTTON))) {
            return 1;
        }
    }

    return 0;
}

s32 func_8083BBA0(Player* this, GlobalContext* globalCtx) {
    if (func_8083BB20(this) && (D_808535E4 != 7)) {
        func_8083BA90(globalCtx, this, 0x11, 3.0f, 4.5f);
        return 1;
    }

    return 0;
}

void func_8083BC04(Player* this, GlobalContext* globalCtx) {
    func_80835C58(globalCtx, this, func_80844708, 0);
    SkelAnime_ChangeLinkAnimPlaybackStop(globalCtx, &this->skelAnime, D_80853A94[this->unk_15B], 1.25f * D_808535E8);
}

s32 func_8083BC7C(Player* this, GlobalContext* globalCtx) {
    if ((this->unk_84B[this->unk_846] == 0) && (D_808535E4 != 7)) {
        func_8083BC04(this, globalCtx);
        return 1;
    }

    return 0;
}

#ifdef NON_MATCHING
// stack alloc differences
void func_8083BCD0(Player* this, GlobalContext* globalCtx, s32 arg2) {
    s32 temp1 = arg2;

    func_80838940(this, D_80853D4C[temp1][0], !(temp1 & 1) ? 5.8f : 3.5f, globalCtx, NA_SE_VO_LI_SWORD_N);

    if (1) {}

    this->unk_850 = 1;
    this->unk_84F = temp1;
    this->currentYaw = this->actor.shape.rot.y + (temp1 << 0xE);
    this->linearVelocity = !(temp1 & 1) ? 6.0f : 8.5f;
    this->stateFlags2 |= 0x80000;

    func_8002F7DC(&this->actor, ((temp1 << 0xE) == 0x8000) ? NA_SE_PL_ROLL : NA_SE_PL_SKIP);
}
#else
#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_player_actor/func_8083BCD0.s")
#endif

s32 func_8083BDBC(Player* this, GlobalContext* globalCtx) {
    s32 sp2C;

    if (CHECK_PAD(D_80858AB4->press, A_BUTTON) && (globalCtx->roomCtx.curRoom.unk_03 != 2) && (D_808535E4 != 7) &&
        (func_80041F7C(&globalCtx->colCtx, this->actor.floorPoly, this->actor.floorPolySource) != 1)) {
        sp2C = this->unk_84B[this->unk_846];

        if (sp2C <= 0) {
            if (func_80833BCC(this)) {
                if (this->actor.type != ACTORTYPE_PLAYER) {
                    if (sp2C < 0) {
                        func_808389E8(this, &D_04002FE0, REG(69) / 100.0f, globalCtx);
                    } else {
                        func_8083BC04(this, globalCtx);
                    }
                } else {
                    if (func_8008F180(this) && func_808365C8(this)) {
                        func_8083BA90(globalCtx, this, 0x11, 5.0f, 5.0f);
                    } else {
                        func_8083BC04(this, globalCtx);
                    }
                }
                return 1;
            }
        } else {
            func_8083BCD0(this, globalCtx, sp2C);
            return 1;
        }
    }

    return 0;
}

void func_8083BF50(Player* this, GlobalContext* globalCtx) {
    LinkAnimetionEntry* anim;
    f32 sp30;

    sp30 = this->unk_868 - 3.0f;
    if (sp30 < 0.0f) {
        sp30 += 29.0f;
    }

    if (sp30 < 14.0f) {
        anim = D_80853AC4[this->unk_15B];
        sp30 = 11.0f - sp30;
        if (sp30 < 0.0f) {
            sp30 = 1.375f * -sp30;
        }
        sp30 /= 11.0f;
    } else {
        anim = D_80853ADC[this->unk_15B];
        sp30 = 26.0f - sp30;
        if (sp30 < 0.0f) {
            sp30 = 2 * -sp30;
        }
        sp30 /= 12.0f;
    }

    SkelAnime_ChangeLinkAnim(globalCtx, &this->skelAnime, anim, 1.0f, 0.0f,
                             SkelAnime_GetFrameCount(&anim->genericHeader), 2, 4.0f * sp30);
    this->currentYaw = this->actor.shape.rot.y;
}

void func_8083C0B8(Player* this, GlobalContext* globalCtx) {
    func_80839FFC(this, globalCtx);
    func_8083BF50(this, globalCtx);
}

void func_8083C0E8(Player* this, GlobalContext* globalCtx) {
    func_80835C58(globalCtx, this, func_80840BC8, 1);
    func_80832264(globalCtx, this, func_80833338(this));
    this->currentYaw = this->actor.shape.rot.y;
}

void func_8083C148(Player* this, GlobalContext* globalCtx) {
    if (!(this->unk_692 & 0x80)) {
        func_8083B010(this);
        if (this->stateFlags1 & 0x8000000) {
            func_80838F18(globalCtx, this);
        } else {
            func_80839F90(this, globalCtx);
        }
        if (this->unk_6AD < 4) {
            this->unk_6AD = 0;
        }
    }

    this->stateFlags1 &= ~0x106000;
}

s32 func_8083C1DC(Player* this, GlobalContext* globalCtx) {
    if (!func_80833B54(this) && (D_808535E0 == 0) && !(this->stateFlags1 & 0x800000) &&
        CHECK_PAD(D_80858AB4->press, A_BUTTON)) {
        if (func_8083BC7C(this, globalCtx)) {
            return 1;
        }
        if ((this->unk_837 == 0) && (this->heldItemActionParam >= 3)) {
            func_80835F44(globalCtx, this, ITEM_NONE);
        } else {
            this->stateFlags2 ^= 0x100000;
        }
    }

    return 0;
}

s32 func_8083C2B0(Player* this, GlobalContext* globalCtx) {
    LinkAnimetionEntry* anim;
    f32 frame;

    if ((globalCtx->unk_11E5C == 0) && (this->currentShield != 0) && CHECK_PAD(D_80858AB4->cur, R_TRIG) &&
        (func_8008E9D0(this) || (!func_80833B2C(this) && (this->unk_664 == NULL)))) {
        func_80832318(this);
        func_808323B4(globalCtx, this);

        if (func_80835C58(globalCtx, this, func_80843188, 0)) {
            this->stateFlags1 |= 0x400000;

            if (func_8008E9D0(this) == 0) {
                func_8008EA40(this);
                anim = D_80853AF4[this->unk_15B];
            } else {
                anim = &D_04002400;
            }

            if (anim != this->skelAnime.linkAnimetionSeg) {
                if (func_8008E9C4(this) != 0) {
                    this->unk_86C = 1.0f;
                } else {
                    this->unk_86C = 0.0f;
                    func_80833C3C(this);
                }
                this->unk_6BC = this->unk_6BE = this->unk_6C0 = 0;
            }

            frame = SkelAnime_GetFrameCount(&anim->genericHeader);
            SkelAnime_ChangeLinkAnim(globalCtx, &this->skelAnime, anim, 1.0f, frame, frame, 2, 0.0f);

            if (func_8008E9D0(this) != 0) {
                func_80832F54(globalCtx, this, 4);
            }

            func_8002F7DC(&this->actor, NA_SE_IT_SHIELD_POSTURE);
        }

        return 1;
    }

    return 0;
}

s32 func_8083C484(Player* this, f32* arg1, s16* arg2) {
    s16 yaw = this->currentYaw - *arg2;

    if (ABS(yaw) > 0x6000) {
        if (func_8083721C(this)) {
            *arg1 = 0.0f;
            *arg2 = this->currentYaw;
        } else {
            return 1;
        }
    }

    return 0;
}

void func_8083C50C(Player* this) {
    if ((this->unk_844 > 0) && !CHECK_PAD(D_80858AB4->cur, B_BUTTON)) {
        this->unk_844 = -this->unk_844;
    }
}

s32 func_8083C544(Player* this, GlobalContext* globalCtx) {
    if (CHECK_PAD(D_80858AB4->cur, B_BUTTON)) {
        if (!(this->stateFlags1 & 0x400000) && func_8008F180(this) && (this->unk_844 == 1) &&
            (this->heldItemActionParam != 6)) {
            if ((this->heldItemActionParam != 5) || (gSaveContext.swordHealth > 0.0f)) {
                func_808377DC(globalCtx, this);
                return 1;
            }
        }
    } else {
        func_8083C50C(this);
    }

    return 0;
}

s32 func_8083C61C(GlobalContext* globalCtx, Player* this) {
    if ((globalCtx->roomCtx.curRoom.unk_03 != 2) && (this->actor.bgCheckFlags & 1) && (AMMO(ITEM_NUT) != 0)) {
        func_80835C58(globalCtx, this, func_8084E604, 0);
        func_80832264(globalCtx, this, &D_04003048);
        this->unk_6AD = 0;
        return 1;
    }

    return 0;
}

s32 func_8083C6B8(GlobalContext* globalCtx, Player* this) {
    Vec3f sp24;

    if (D_80853614) {
        if (func_8008F250(this) >= 0) {
            func_80835C58(globalCtx, this, func_8084ECA4, 0);
            if (this->actor.waterY > 12.0f) {
                this->unk_850 = 1;
            }
            func_808322D0(globalCtx, this, D_80854554[this->unk_850].unk_00);
            func_8002F7DC(&this->actor, NA_SE_IT_SWORD_SWING);
            func_80832698(this, NA_SE_VO_LI_AUTO_JUMP);
            return 1;
        }

        if (this->heldItemActionParam == 2) {
            sp24 = this->actor.posRot.pos;
            sp24.y += 50.0f;
            if (!(this->actor.bgCheckFlags & 1) || (this->actor.posRot.pos.z > 1300.0f) ||
                func_8003E30C(&globalCtx->colCtx, &sp24, 20.0f)) {
                func_80078884(NA_SE_SY_ERROR);
                return 0;
            }
            func_80835C58(globalCtx, this, func_80850C68, 0);
            this->stickFlameTimer = 1;
            func_80832210(this);
            func_80832264(globalCtx, this, &D_04002C30);
            return 1;
        } else {
            return 0;
        }
    }

    return 0;
}

void func_8083C858(Player* this, GlobalContext* globalCtx) {
    PlayerActionFunc actionFunc;

    if (func_80833BCC(this)) {
        actionFunc = func_8084227C;
    } else {
        actionFunc = func_80842180;
    }

    func_80835C58(globalCtx, this, actionFunc, 1);
    func_80832BE8(globalCtx, this, D_80853944[this->unk_15B]);
    this->unk_89C = 0;
    this->unk_864 = this->unk_868 = 0.0f;
}

void func_8083C8DC(Player* this, GlobalContext* globalCtx, s16 arg2) {
    this->actor.shape.rot.y = this->currentYaw = arg2;
    func_8083C858(this, globalCtx);
}

s32 func_8083C910(GlobalContext* globalCtx, Player* this, f32 arg2) {
    UNK_TYPE sp2C;
    f32 sp28;

    sp28 = this->actor.posRot.pos.y;
    if (func_8004213C(globalCtx, &globalCtx->colCtx, this->actor.posRot.pos.x, this->actor.posRot.pos.z, &sp28,
                      &sp2C) != 0) {
        sp28 -= this->actor.posRot.pos.y;
        if (this->ageProperties->unk_24 <= sp28) {
            func_80835C58(globalCtx, this, func_8084D7C4, 0);
            func_80832C6C(globalCtx, this, &D_040032F0);
            this->stateFlags1 |= 0x28000000;
            this->unk_850 = 20;
            this->linearVelocity = 2.0f;
            func_8008E750(globalCtx, this);
            return 0;
        }
    }

    func_80838E70(globalCtx, this, arg2, this->actor.shape.rot.y);
    this->stateFlags1 |= 0x20000000;
    return 1;
}

void func_8083CA20(GlobalContext* globalCtx, Player* this) {
    if (func_8083C910(globalCtx, this, 180.0f)) {
        this->unk_850 = -20;
    }
}

void func_8083CA54(GlobalContext* globalCtx, Player* this) {
    this->linearVelocity = 2.0f;
    gSaveContext.unk_13BC = 2.0f;
    if (func_8083C910(globalCtx, this, 120.0f)) {
        this->unk_850 = -15;
    }
}

void func_8083CA9C(GlobalContext* globalCtx, Player* this) {
    if (gSaveContext.unk_13BC < 0.1f) {
        gSaveContext.unk_13BC = 0.1f;
    }

    this->linearVelocity = gSaveContext.unk_13BC;
    if (func_8083C910(globalCtx, this, 800.0f)) {
        this->unk_850 = -80 / this->linearVelocity;
        if (this->unk_850 < -20) {
            this->unk_850 = -20;
        }
    }
}

void func_8083CB2C(Player* this, s16 yaw, GlobalContext* globalCtx) {
    func_80835C58(globalCtx, this, func_808414F8, 1);
    func_800A41FC(globalCtx, &this->skelAnime);
    this->unk_864 = this->unk_868 = 0.0f;
    this->currentYaw = yaw;
}

void func_8083CB94(Player* this, GlobalContext* globalCtx) {
    func_80835C58(globalCtx, this, func_80840DE4, 1);
    func_80832BE8(globalCtx, this, D_8085392C[this->unk_15B]);
}

void func_8083CBF0(Player* this, s16 yaw, GlobalContext* globalCtx) {
    func_80835C58(globalCtx, this, func_808423EC, 1);
    SkelAnime_ChangeLinkAnim(globalCtx, &this->skelAnime, &D_040024F8, 2.2f, 0.0f,
                             SkelAnime_GetFrameCount(&D_040024F8.genericHeader), 2, -6.0f);
    this->linearVelocity = 8.0f;
    this->currentYaw = yaw;
}

void func_8083CC9C(Player* this, GlobalContext* globalCtx) {
    func_80835C58(globalCtx, this, func_8084193C, 1);
    func_80832BE8(globalCtx, this, D_80853B6C[this->unk_15B]);
    this->unk_868 = 0.0f;
}

void func_8083CD00(Player* this, GlobalContext* globalCtx) {
    func_80835C58(globalCtx, this, func_8084251C, 1);
    SkelAnime_ChangeLinkAnimPlaybackStop(globalCtx, &this->skelAnime, &D_040024E8, 2.0f);
}

void func_8083CD54(GlobalContext* globalCtx, Player* this, s16 yaw) {
    this->currentYaw = yaw;
    func_80835C58(globalCtx, this, func_80841BA8, 1);
    this->unk_87E = 1200;
    this->unk_87E *= D_808535E8;
    SkelAnime_ChangeLinkAnim(globalCtx, &this->skelAnime, D_80853B84[this->unk_15B], 1.0f, 0.0f, 0.0f, 0, -6.0f);
}

void func_8083CE0C(Player* this, GlobalContext* globalCtx) {
    LinkAnimetionEntry* anim;

    func_80835C58(globalCtx, this, func_80840BC8, 1);

    if (this->unk_870 < 0.5f) {
        anim = D_80853BB4[this->unk_15B];
    } else {
        anim = D_80853B9C[this->unk_15B];
    }
    func_80832264(globalCtx, this, anim);

    this->currentYaw = this->actor.shape.rot.y;
}

void func_8083CEAC(Player* this, GlobalContext* globalCtx) {
    func_80835C58(globalCtx, this, func_80840450, 1);
    func_80832B0C(globalCtx, this, D_808539BC[this->unk_15B]);
    this->unk_850 = 1;
}

void func_8083CF10(Player* this, GlobalContext* globalCtx) {
    if (this->linearVelocity != 0.0f) {
        func_8083C858(this, globalCtx);
    } else {
        func_8083CE0C(this, globalCtx);
    }
}

void func_8083CF5C(Player* this, GlobalContext* globalCtx) {
    if (this->linearVelocity != 0.0f) {
        func_8083C858(this, globalCtx);
    } else {
        func_80839F90(this, globalCtx);
    }
}

s32 func_8083CFA8(GlobalContext* globalCtx, Player* this, f32 arg2, s32 arg3) {
    f32 sp3C = fabsf(arg2);
    UNK_TYPE sp38;
    f32 sp34;
    Vec3f sp28;
    s32 temp;

    if (sp3C > 2.0f) {
        sp28.x = this->unk_908[0].x;
        sp28.z = this->unk_908[0].z;
        sp34 = this->actor.posRot.pos.y;
        if (func_8004213C(globalCtx, &globalCtx->colCtx, sp28.x, sp28.z, &sp34, &sp38)) {
            if ((sp34 - this->actor.posRot.pos.y) < 100.0f) {
                temp = (sp3C <= 10.0f) ? 0 : 1;
                sp28.y = sp34;
                func_8002949C(globalCtx, &sp28, 0, 0, temp, arg3);
                return 1;
            }
        }
    }

    return 0;
}

void func_8083D0A8(GlobalContext* globalCtx, Player* this, f32 arg2) {
    this->stateFlags1 |= 0x40000;
    this->stateFlags1 &= ~0x8000000;

    func_80832340(globalCtx, this);
    if (func_8083CFA8(globalCtx, this, arg2, 500)) {
        func_8002F7DC(&this->actor, NA_SE_EV_JUMP_OUT_WATER);
    }

    func_8008E750(globalCtx, this);
}

s32 func_8083D12C(GlobalContext* globalCtx, Player* this, Input* arg2) {
    if (!(this->stateFlags1 & 0x400) && !(this->stateFlags2 & 0x400)) {
        if ((arg2 == NULL) ||
            (CHECK_PAD(arg2->press, A_BUTTON) && (ABS(this->unk_6C2) < 12000) && (this->currentBoots != 1))) {
            func_80835C58(globalCtx, this, func_8084DC48, 0);
            func_80832264(globalCtx, this, &D_04003308);
            this->unk_6C2 = 0;
            this->stateFlags2 |= 0x400;
            this->actor.velocity.y = 0.0f;
            if (arg2 != NULL) {
                this->stateFlags2 |= 0x800;
                func_8002F7DC(&this->actor, NA_SE_PL_DIVE_BUBBLE);
            }
            return 1;
        }
    }

    if ((this->stateFlags1 & 0x400) || (this->stateFlags2 & 0x400)) {
        if (this->actor.velocity.y > 0.0f) {
            if (this->actor.waterY < this->ageProperties->unk_30) {
                this->stateFlags2 &= ~0x400;
                if (arg2 != NULL) {
                    func_80835C58(globalCtx, this, func_8084E1EC, 1);
                    if (this->stateFlags1 & 0x400) {
                        this->stateFlags1 |= 0x20000C00;
                    }
                    this->unk_850 = 2;
                }
                func_80832340(globalCtx, this);
                func_80832B0C(globalCtx, this, (this->stateFlags1 & 0x800) ? &D_04003318 : &D_04003300);
                if (func_8083CFA8(globalCtx, this, this->actor.velocity.y, 500)) {
                    func_8002F7DC(&this->actor, NA_SE_PL_FACE_UP);
                }
                return 1;
            }
        }
    }

    return 0;
}

void func_8083D330(GlobalContext* globalCtx, Player* this) {
    func_80832284(globalCtx, this, &D_040032F0);
    this->unk_6C2 = 16000;
    this->unk_850 = 1;
}

void func_8083D36C(GlobalContext* globalCtx, Player* this) {
    if ((this->currentBoots != 1) || !(this->actor.bgCheckFlags & 1)) {
        func_80832564(globalCtx, this);
        if ((this->currentBoots != 1) && (this->stateFlags2 & 0x400)) {
            this->stateFlags2 &= ~0x400;
            func_8083D12C(globalCtx, this, 0);
            this->unk_84F = 1;
        } else if (func_80844A44 == this->actionFunc) {
            func_80835C58(globalCtx, this, func_8084DC48, 0);
            func_8083D330(globalCtx, this);
        } else {
            func_80835C58(globalCtx, this, func_8084D610, 1);
            func_80832B0C(globalCtx, this, (this->actor.bgCheckFlags & 1) ? &D_04003330 : &D_040032E0);
        }
    }

    if (!(this->stateFlags1 & 0x8000000) || (this->actor.waterY < this->ageProperties->unk_2C)) {
        if (func_8083CFA8(globalCtx, this, this->actor.velocity.y, 500)) {
            func_8002F7DC(&this->actor, NA_SE_EV_DIVE_INTO_WATER);
            if (this->fallY > 800.0f) {
                func_80832698(this, NA_SE_VO_LI_CLIMB_END);
            }
        }
    }

    this->stateFlags1 |= 0x8000000;
    this->stateFlags2 |= 0x400;
    this->stateFlags1 &= ~0xC0000;
    this->unk_854 = 0.0f;

    func_8008E750(globalCtx, this);
}

void func_8083D53C(GlobalContext* globalCtx, Player* this) {
    if (this->actor.waterY < this->ageProperties->unk_2C) {
        func_800F67A0(0);
        this->unk_840 = 0;
    } else {
        func_800F67A0(32);
        if (this->unk_840 < 300) {
            this->unk_840++;
        }
    }

    if ((func_80845668 != this->actionFunc) && (func_8084BDFC != this->actionFunc)) {
        if (this->ageProperties->unk_2C < this->actor.waterY) {
            if (!(this->stateFlags1 & 0x8000000) ||
                (!((this->currentBoots == 1) && (this->actor.bgCheckFlags & 1)) &&
                 (func_8084E30C != this->actionFunc) && (func_8084E368 != this->actionFunc) &&
                 (func_8084D610 != this->actionFunc) && (func_8084D84C != this->actionFunc) &&
                 (func_8084DAB4 != this->actionFunc) && (func_8084DC48 != this->actionFunc) &&
                 (func_8084E1EC != this->actionFunc) && (func_8084D7C4 != this->actionFunc))) {
                func_8083D36C(globalCtx, this);
                return;
            }
        } else if ((this->stateFlags1 & 0x8000000) && (this->actor.waterY < this->ageProperties->unk_24)) {
            if ((this->skelAnime.flags == 0) && (this->currentBoots != 1)) {
                func_8083CD54(globalCtx, this, this->actor.shape.rot.y);
            }
            func_8083D0A8(globalCtx, this, this->actor.velocity.y);
        }
    }
}

void func_8083D6EC(GlobalContext* globalCtx, Player* this) {
    Vec3f sp5C;
    f32 temp1;
    f32 temp2;
    f32 temp3;
    f32 temp4;

    this->actor.minVelocityY = -20.0f;
    this->actor.gravity = REG(68) / 100.0f;

    if (func_8083816C(D_808535E4)) {
        temp1 = fabsf(this->linearVelocity) * 20.0f;
        temp3 = 0.0f;

        if (D_808535E4 == 4) {
            if (this->unk_6C4 > 1300.0f) {
                temp2 = this->unk_6C4;
            } else {
                temp2 = 1300.0f;
            }
            if (this->currentBoots == 2) {
                temp1 += temp1;
            } else if (this->currentBoots == 1) {
                temp1 *= 0.3f;
            }
        } else {
            temp2 = 20000.0f;
            if (this->currentBoots != 2) {
                temp1 += temp1;
            } else if ((D_808535E4 == 7) || (this->currentBoots == 1)) {
                temp1 = 0;
            }
        }

        if (this->currentBoots != 2) {
            temp3 = (temp2 - this->unk_6C4) * 0.02f;
            temp3 = CLAMP(temp3, 0.0f, 300.0f);
            if (this->currentBoots == 1) {
                temp3 += temp3;
            }
        }

        this->unk_6C4 += temp3 - temp1;
        this->unk_6C4 = CLAMP(this->unk_6C4, 0.0f, temp2);

        this->actor.gravity -= this->unk_6C4 * 0.004f;
    } else {
        this->unk_6C4 = 0.0f;
    }

    if (this->actor.bgCheckFlags & 0x20) {
        if (this->actor.waterY < 50.0f) {
            temp4 = fabsf(this->unk_908[0].x - this->unk_A88.x) + fabsf(this->unk_908[0].y - this->unk_A88.y) +
                    fabsf(this->unk_908[0].z - this->unk_A88.z);
            if (temp4 > 4.0f) {
                temp4 = 4.0f;
            }
            this->unk_854 += temp4;

            if (this->unk_854 > 15.0f) {
                this->unk_854 = 0.0f;
                sp5C.x = (Math_Rand_ZeroOne() * 10.0f) + this->actor.posRot.pos.x;
                sp5C.y = this->actor.posRot.pos.y + this->actor.waterY;
                sp5C.z = (Math_Rand_ZeroOne() * 10.0f) + this->actor.posRot.pos.z;
                func_80029444(globalCtx, &sp5C, 100, 500, 0);
                if ((this->linearVelocity > 4.0f) && !func_808332B8(this) &&
                    ((this->actor.posRot.pos.y + this->actor.waterY) < this->unk_908[0].y)) {
                    func_8083CFA8(globalCtx, this, 20.0f,
                                  (fabsf(this->linearVelocity) * 50.0f) + (this->actor.waterY * 5.0f));
                }
            }
        }

        if (this->actor.waterY > 40.0f) {
            s32 sp48 = 0;
            s32 sp44;

            if ((this->actor.velocity.y > -1.0f) || (this->actor.bgCheckFlags & 1)) {
                if (Math_Rand_ZeroOne() < 0.2f) {
                    sp48 = 1;
                }
            } else {
                sp48 = this->actor.velocity.y * -2.0f;
            }

            for (sp44 = 0; sp44 < sp48; sp44++) {
                func_800293E4(globalCtx, &this->actor.posRot.pos, 20.0f, 10.0f, 20.0f, 0.13f);
            }
        }
    }
}

s32 func_8083DB98(Player* this, s32 arg1) {
    Actor* unk_664 = this->unk_664;
    Vec3f sp30;
    s16 sp2E;
    s16 sp2C;

    sp30.x = this->actor.posRot.pos.x;
    sp30.y = this->unk_908[7].y + 3.0f;
    sp30.z = this->actor.posRot.pos.z;
    sp2E = Math_Vec3f_Pitch(&sp30, &unk_664->posRot2.pos);
    sp2C = Math_Vec3f_Yaw(&sp30, &unk_664->posRot2.pos);
    Math_SmoothScaleMaxMinS(&this->actor.posRot2.rot.y, sp2C, 4, 10000, 0);
    Math_SmoothScaleMaxMinS(&this->actor.posRot2.rot.x, sp2E, 4, 10000, 0);
    this->unk_6AE |= 2;

    return func_80836AB8(this, arg1);
}

void func_8083DC54(Player* this, GlobalContext* globalCtx) {
    s16 sp46;
    s16 temp2;
    f32 temp1;
    Vec3f sp34;

    if (this->unk_664 != NULL) {
        if (func_8002DD78(this) || func_808334B4(this)) {
            func_8083DB98(this, 1);
        } else {
            func_8083DB98(this, 0);
        }
        return;
    }

    if (D_808535E4 == 11) {
        Math_SmoothScaleMaxMinS(&this->actor.posRot2.rot.x, -20000, 10, 4000, 800);
    } else {
        sp46 = 0;
        temp1 = func_8083973C(globalCtx, this, &D_8085456C, &sp34);
        if (temp1 > -32000.0f) {
            temp2 = atan2s(40.0f, this->actor.posRot.pos.y - temp1);
            sp46 = CLAMP(temp2, -4000, 4000);
        }
        this->actor.posRot2.rot.y = this->actor.shape.rot.y;
        Math_SmoothScaleMaxMinS(&this->actor.posRot2.rot.x, sp46, 14, 4000, 30);
    }

    func_80836AB8(this, func_8002DD78(this) || func_808334B4(this));
}

void func_8083DDC8(Player* this, GlobalContext* globalCtx) {
    s16 temp1;
    s16 temp2;

    if (!func_8002DD78(this) && !func_808334B4(this) && (this->linearVelocity > 5.0f)) {
        temp1 = this->linearVelocity * 200.0f;
        temp2 = (s16)(this->currentYaw - this->actor.shape.rot.y) * this->linearVelocity * 0.1f;
        temp1 = CLAMP(temp1, -4000, 4000);
        temp2 = CLAMP(-temp2, -4000, 4000);
        Math_ApproxUpdateScaledS(&this->unk_6BC, temp1, 900);
        this->unk_6B6 = -(f32)this->unk_6BC * 0.5f;
        Math_ApproxUpdateScaledS(&this->unk_6BA, temp2, 300);
        Math_ApproxUpdateScaledS(&this->unk_6C0, temp2, 200);
        this->unk_6AE |= 0x168;
    } else {
        func_8083DC54(this, globalCtx);
    }
}

void func_8083DF68(Player* this, f32 arg1, s16 arg2) {
    func_80077C6C(&this->linearVelocity, arg1, REG(19) / 100.0f, 1.5f);
    Math_ApproxUpdateScaledS(&this->currentYaw, arg2, REG(27));
}

void func_8083DFE0(Player* this, f32* arg1, s16* arg2) {
    s16 yawDiff = this->currentYaw - *arg2;

    if (this->swordState == 0) {
        this->linearVelocity = CLAMP(this->linearVelocity, -(R_RUN_SPEED_LIMIT / 100.0f), (R_RUN_SPEED_LIMIT / 100.0f));
    }

    if (ABS(yawDiff) > 0x6000) {
        if (Math_ApproxF(&this->linearVelocity, 0.0f, 1.0f)) {
            this->currentYaw = *arg2;
        }
    } else {
        func_80077C6C(&this->linearVelocity, *arg1, 0.05f, 0.1f);
        Math_ApproxUpdateScaledS(&this->currentYaw, *arg2, 200);
    }
}

s32 func_8083E0FC(Player* this, GlobalContext* globalCtx) {
    HorseActor* ride;
    f32 unk_04;
    f32 unk_08;
    f32 sp38;
    f32 sp34;
    s32 temp;

    ride = this->rideActor;
    if ((ride != NULL) && CHECK_PAD(D_80858AB4->press, A_BUTTON)) {
        sp38 = Math_Coss(ride->actor.shape.rot.y);
        sp34 = Math_Sins(ride->actor.shape.rot.y);
        func_80836898(globalCtx, this, func_8083A360);
        this->stateFlags1 |= 0x800000;
        this->actor.bgCheckFlags &= ~0x20;
        if (this->unk_43C < 0) {
            temp = 0;
        } else {
            temp = 1;
        }
        unk_04 = D_80854578[temp].unk_04;
        unk_08 = D_80854578[temp].unk_08;
        this->actor.posRot.pos.x = ride->actor.posRot.pos.x + ride->unk_258.x + ((unk_04 * sp38) + (unk_08 * sp34));
        this->actor.posRot.pos.z = ride->actor.posRot.pos.z + ride->unk_258.z + ((unk_08 * sp38) - (unk_04 * sp34));
        this->unk_878 = ride->actor.posRot.pos.y - this->actor.posRot.pos.y;
        this->currentYaw = this->actor.shape.rot.y = ride->actor.shape.rot.y;
        func_8002DECC(globalCtx, this, ride);
        func_80832264(globalCtx, this, D_80854578[temp].anim);
        func_80832F54(globalCtx, this, 0x9B);
        this->actor.parent = &this->rideActor->actor;
        func_80832224(this);
        func_800304B0(globalCtx);
        return 1;
    }

    return 0;
}

void func_8083E298(CollisionPoly* arg0, Vec3f* arg1, s16* arg2) {
    arg1->x = arg0->norm.x * (1.0f / 32767.0f);
    arg1->y = arg0->norm.y * (1.0f / 32767.0f);
    arg1->z = arg0->norm.z * (1.0f / 32767.0f);
    *arg2 = atan2s(arg1->z, arg1->x);
}

s32 func_8083E318(GlobalContext* globalCtx, Player* this, CollisionPoly* arg2) {
    s32 pad;
    s16 sp4A;
    Vec3f sp3C;
    s16 sp3A;
    f32 temp1;
    f32 temp2;
    s16 temp3;

    if (!func_8008E8DC(globalCtx, this) && (func_8084F390 != this->actionFunc) &&
        (func_80041F7C(&globalCtx->colCtx, arg2, this->actor.floorPolySource) == 1)) {
        sp4A = atan2s(this->actor.velocity.z, this->actor.velocity.x);
        func_8083E298(arg2, &sp3C, &sp3A);
        temp3 = sp3A - sp4A;

        if (ABS(temp3) > 16000) {
            temp1 = (1.0f - sp3C.y) * 40.0f;
            temp2 = (temp1 * temp1) * 0.015f;
            if (temp2 < 1.2f) {
                temp2 = 1.2f;
            }
            this->fanWindDirection = sp3A;
            Math_ApproxF(&this->fanWindSpeed, temp1, temp2);
        } else {
            func_80835C58(globalCtx, this, func_8084F390, 0);
            func_80832564(globalCtx, this);
            if (D_80853610 >= 0) {
                this->unk_84F = 1;
            }
            func_80832BE8(globalCtx, this, D_80854590[this->unk_84F]);
            this->linearVelocity = sqrtf(SQ(this->actor.velocity.x) + SQ(this->actor.velocity.z));
            this->currentYaw = sp4A;
            return 1;
        }
    }

    return 0;
}

void func_8083E4C4(GlobalContext* globalCtx, Player* this, GetItemEntry* giEntry) {
    s32 sp1C = giEntry->field & 0x1F;

    if (!(giEntry->field & 0x80)) {
        Item_DropCollectible(globalCtx, &this->actor.posRot.pos, sp1C | 0x8000);
        if ((sp1C != 4) && (sp1C != 8) && (sp1C != 9) && (sp1C != 0xA) && (sp1C != 0) && (sp1C != 1) && (sp1C != 2) &&
            (sp1C != 0x14) && (sp1C != 0x13)) {
            Item_Give(globalCtx, giEntry->itemId);
        }
    } else {
        Item_Give(globalCtx, giEntry->itemId);
    }

    func_80078884((this->getItemId < 0) ? NA_SE_SY_GET_BOXITEM : NA_SE_SY_GET_ITEM);
}

s32 func_8083E5A8(Player* this, GlobalContext* globalCtx) {
    Actor* interactedActor;

    if (iREG(67) || (((interactedActor = this->interactRangeActor) != NULL) &&
                     func_8002D53C(globalCtx, &globalCtx->actorCtx.titleCtx))) {
        if (iREG(67) || (this->getItemId > 0)) {
            if (iREG(67)) {
                this->getItemId = iREG(68);
            }

            if (this->getItemId < 0x7E) {
                GetItemEntry* giEntry = &D_80853624[this->getItemId - 1];
                if ((interactedActor != &this->actor) && !iREG(67)) {
                    interactedActor->parent = &this->actor;
                }

                iREG(67) = false;

                if ((Item_CheckObtainability(giEntry->itemId) == ITEM_NONE) || (globalCtx->sceneNum == SCENE_BOWLING)) {
                    func_808323B4(globalCtx, this);
                    func_8083AE40(this, giEntry->objectId);

                    if (!(this->stateFlags2 & 0x400) || (this->currentBoots == 1)) {
                        func_80836898(globalCtx, this, func_8083A434);
                        func_808322D0(globalCtx, this, &D_04002788);
                        func_80835EA4(globalCtx, 9);
                    }

                    this->stateFlags1 |= 0x20000C00;
                    func_80832224(this);
                    return 1;
                }

                func_8083E4C4(globalCtx, this, giEntry);
                this->getItemId = 0;
            }
        } else if (CHECK_PAD(D_80858AB4->press, A_BUTTON) && !(this->stateFlags1 & 0x800) &&
                   !(this->stateFlags2 & 0x400)) {
            if (this->getItemId != 0) {
                GetItemEntry* giEntry = &D_80853624[-this->getItemId - 1];
                EnBox* chest = (EnBox*)interactedActor;

                if (giEntry->itemId != ITEM_NONE) {
                    if (((Item_CheckObtainability(giEntry->itemId) == ITEM_NONE) && (giEntry->field & 0x40)) ||
                        ((Item_CheckObtainability(giEntry->itemId) != ITEM_NONE) && (giEntry->field & 0x20))) {
                        this->getItemId = -GI_RUPEE_BLUE;
                        giEntry = &D_80853624[GI_RUPEE_BLUE - 1];
                    }
                }

                func_80836898(globalCtx, this, func_8083A434);
                this->stateFlags1 |= 0x20000C00;
                func_8083AE40(this, giEntry->objectId);
                this->actor.posRot.pos.x =
                    chest->actor.posRot.pos.x - (Math_Sins(chest->actor.shape.rot.y) * 29.434299469f);
                this->actor.posRot.pos.z =
                    chest->actor.posRot.pos.z - (Math_Coss(chest->actor.shape.rot.y) * 29.434299469f);
                this->currentYaw = this->actor.shape.rot.y = chest->actor.shape.rot.y;
                func_80832224(this);

                if ((giEntry->itemId != ITEM_NONE) && (giEntry->gi >= 0) &&
                    (Item_CheckObtainability(giEntry->itemId) == ITEM_NONE)) {
                    func_808322D0(globalCtx, this, this->ageProperties->unk_98);
                    func_80832F54(globalCtx, this, 0x28F);
                    chest->unk_1F4 = 1;
                    func_8005A77C(Gameplay_GetCamera(globalCtx, 0), 0x28);
                } else {
                    func_80832264(globalCtx, this, &D_04002DF8);
                    chest->unk_1F4 = -1;
                }

                return 1;
            }

            if ((this->heldActor == NULL) || func_8008F104(this)) {
                if ((interactedActor->id == ACTOR_BG_TOKI_SWD) && LINK_IS_ADULT) {
                    s32 sp24 = this->unk_154;
                    this->unk_154 = 0;
                    this->unk_15B = 0;
                    this->heldItemActionParam = this->unk_154;
                    func_80836898(globalCtx, this, func_8083A0F4);
                    if (sp24 == 3) {
                        this->unk_159 = func_8008E9F8(this, 1);
                        func_8083399C(globalCtx, this, 1);
                    } else {
                        func_80835F44(globalCtx, this, 0xFC);
                    }
                } else {
                    s32 temp = func_8008F034();
                    if ((interactedActor->id == ACTOR_EN_ISHI) && ((interactedActor->params & 0xF) == 1) &&
                        (temp < 2)) {
                        return 0;
                    }
                    func_80836898(globalCtx, this, func_8083A0F4);
                }

                func_80832224(this);
                this->stateFlags1 |= 0x800;
                return 1;
            }
        }
    }

    return 0;
}

void func_8083EA94(Player* this, GlobalContext* globalCtx) {
    func_80835C58(globalCtx, this, func_80846578, 1);
    func_80832264(globalCtx, this, D_80853BCC[this->unk_15B]);
}

s32 func_8083EAF0(Player* this, Actor* actor) {
    if ((actor != NULL) && !(actor->flags & 0x800000) &&
        ((this->linearVelocity < 1.1f) || (actor->id == ACTOR_EN_BOM_CHU))) {
        return 0;
    }

    return 1;
}

s32 func_8083EB44(Player* this, GlobalContext* globalCtx) {
    if ((this->stateFlags1 & 0x800) && (this->heldActor != NULL) &&
        (D_80858AB4->press.in.button & (A_BUTTON | B_BUTTON | L_CBUTTONS | R_CBUTTONS | D_CBUTTONS))) {
        if (!func_80835644(globalCtx, this, this->heldActor)) {
            if (!func_8083EAF0(this, this->heldActor)) {
                func_80835C58(globalCtx, this, func_808464B0, 1);
                func_80832264(globalCtx, this, D_80853BE4[this->unk_15B]);
            } else {
                func_8083EA94(this, globalCtx);
            }
        }
        return 1;
    }

    return 0;
}

#ifdef NON_MATCHING
// loop codegen differences
s32 func_8083EC18(Player* this, GlobalContext* globalCtx, u32 arg2) {
    if (this->ledgeDistance >= 79.0f) {
        if (!(this->stateFlags1 & 0x8000000) || (this->currentBoots == 1) ||
            (this->actor.waterY < this->ageProperties->unk_2C)) {
            s32 sp8C = (arg2 & 8) ? 2 : 0;

            if ((sp8C != 0) || (arg2 & 2) ||
                func_80041E4C(&globalCtx->colCtx, this->actor.wallPoly, this->actor.wallPolySource)) {
                s32 i;
                CollisionPoly* sp84 = this->actor.wallPoly;
                f32 sp80;
                f32 sp7C;
                f32 phi_f12;
                f32 phi_f14;
                Vec3f sp50[3];
                f32 phi_f20;
                f32 sp48;

                phi_f20 = phi_f12 = 0.0f;

                if (sp8C != 0) {
                    sp80 = this->actor.posRot.pos.x;
                    sp7C = this->actor.posRot.pos.z;
                } else {
                    func_80038C78(sp84, this->actor.wallPolySource, &globalCtx->colCtx, &sp50);

                    sp80 = phi_f12 = sp50[0].x;
                    sp7C = phi_f14 = sp50[0].z;
                    phi_f20 = sp50[0].y;
                    for (i = 1; i < 3; i++) {
                        if (sp80 > sp50[i].x) {
                            sp80 = sp50[i].x;
                        } else if (phi_f12 < sp50[i].x) {
                            phi_f12 = sp50[i].x;
                        }

                        if (sp7C > sp50[i].z) {
                            sp7C = sp50[i].z;
                        } else if (phi_f14 < sp50[i].z) {
                            phi_f14 = sp50[i].z;
                        }

                        if (phi_f20 > sp50[i].y) {
                            phi_f20 = sp50[i].y;
                        }
                    }

                    sp80 = (sp80 + phi_f12) * 0.5f;
                    sp7C = (sp7C + phi_f14) * 0.5f;

                    phi_f12 = ((this->actor.posRot.pos.x - sp80) * (sp84->norm.z * (1.0f / 32767.0f))) -
                              ((this->actor.posRot.pos.z - sp7C) * (sp84->norm.x * (1.0f / 32767.0f)));
                    sp48 = this->actor.posRot.pos.y - phi_f20;

                    phi_f20 = ((f32)(s32)((sp48 / 15.000000223517418) + 0.5) * 15.000000223517418) - sp48;
                    phi_f12 = fabsf(phi_f12);
                }

                if (phi_f12 < 8.0f) {
                    f32 sp3C = sp84->norm.x * (1.0f / 32767.0f);
                    f32 sp38 = sp84->norm.z * (1.0f / 32767.0f);
                    f32 sp34 = this->wallDistance;
                    LinkAnimetionEntry* sp30;

                    func_80836898(globalCtx, this, func_8083A3B0);
                    this->stateFlags1 |= 0x200000;
                    this->stateFlags1 &= ~0x8000000;

                    if ((sp8C != 0) || (arg2 & 2)) {
                        if ((this->unk_84F = sp8C) != 0) {
                            if (this->actor.bgCheckFlags & 1) {
                                sp30 = &D_04002D80;
                            } else {
                                sp30 = &D_04002D68;
                            }
                            sp34 = (this->ageProperties->unk_38 - 1.0f) - sp34;
                        } else {
                            sp30 = this->ageProperties->unk_A4;
                            sp34 = sp34 - 1.0f;
                        }
                        this->unk_850 = -2;
                        this->actor.posRot.pos.y += phi_f20;
                        this->actor.shape.rot.y = this->currentYaw = this->actor.wallPolyRot + 0x8000;
                    } else {
                        sp30 = this->ageProperties->unk_A8;
                        this->unk_850 = -4;
                        this->actor.shape.rot.y = this->currentYaw = this->actor.wallPolyRot;
                    }

                    this->actor.posRot.pos.x = (sp34 * sp3C) + sp80;
                    this->actor.posRot.pos.z = (sp34 * sp38) + sp7C;
                    func_80832224(this);
                    Math_Vec3f_Copy(&this->actor.pos4, &this->actor.posRot.pos);
                    func_80832264(globalCtx, this, sp30);
                    func_80832F54(globalCtx, this, 0x9F);

                    return 1;
                }
            }
        }
    }

    return 0;
}
#else
s32 func_8083EC18(Player* this, GlobalContext* globalCtx, u32 arg2);
#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_player_actor/func_8083EC18.s")
#endif

void func_8083F070(Player* this, LinkAnimetionEntry* anim, GlobalContext* globalCtx) {
    func_80835DAC(globalCtx, this, func_8084C5F8, 0);
    SkelAnime_ChangeLinkAnimPlaybackStop(globalCtx, &this->skelAnime, anim, (4.0f / 3.0f));
}

#ifdef NON_MATCHING
// single regalloc difference
s32 func_8083F0C8(Player* this, GlobalContext* globalCtx, u32 arg2) {
    CollisionPoly* wallPoly;
    Vec3f sp50[3];
    f32 sp4C;
    f32 phi_f2;
    f32 sp44;
    f32 phi_f12;
    s32 i;

    if (LINK_IS_CHILD && !(this->stateFlags1 & 0x8000000) && (arg2 & 0x30)) {
        wallPoly = this->actor.wallPoly;
        func_80038C78(wallPoly, this->actor.wallPolySource, &globalCtx->colCtx, &sp50);

        sp4C = phi_f2 = sp50[0].x;
        sp44 = phi_f12 = sp50[0].z;
        for (i = 1; i < 3; i++) {
            if (sp4C > sp50[i].x) {
                sp4C = sp50[i].x;
            } else if (phi_f2 < sp50[i].x) {
                phi_f2 = sp50[i].x;
            }

            if (sp44 > sp50[i].z) {
                sp44 = sp50[i].z;
            } else if (phi_f12 < sp50[i].z) {
                phi_f12 = sp50[i].z;
            }
        }

        sp4C = (sp4C + phi_f2) * 0.5f;
        sp44 = (sp44 + phi_f12) * 0.5f;

        if (fabsf(((this->actor.posRot.pos.x - sp4C) * (wallPoly->norm.z * (1.0f / 32767.0f))) -
                  ((this->actor.posRot.pos.z - sp44) * (wallPoly->norm.x * (1.0f / 32767.0f)))) < 8.0f) {

            this->stateFlags2 |= 0x10000;

            if (CHECK_PAD(D_80858AB4->press, A_BUTTON)) {
                f32 sp38 = wallPoly->norm.x * (1.0f / 32767.0f);
                f32 sp34 = wallPoly->norm.z * (1.0f / 32767.0f);
                f32 sp30 = this->wallDistance;

                func_80836898(globalCtx, this, func_8083A40C);
                this->stateFlags2 |= 0x40000;
                this->actor.shape.rot.y = this->currentYaw = this->actor.wallPolyRot + 0x8000;
                this->actor.posRot.pos.x = sp4C + (sp30 * sp38);
                this->actor.posRot.pos.z = sp44 + (sp30 * sp34);
                func_80832224(this);
                this->actor.pos4 = this->actor.posRot.pos;
                func_80832264(globalCtx, this, &D_04002708);
                func_80832F54(globalCtx, this, 0x9D);

                return 1;
            }
        }
    }

    return 0;
}
#else
#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_player_actor/func_8083F0C8.s")
#endif

s32 func_8083F360(GlobalContext* globalCtx, Player* this, f32 arg1, f32 arg2, f32 arg3, f32 arg4) {
    CollisionPoly* wallPoly;
    u32 sp78;
    Vec3f sp6C;
    Vec3f sp60;
    Vec3f sp54;
    f32 yawCos;
    f32 yawSin;
    s32 temp;
    f32 temp1;
    f32 temp2;

    yawCos = Math_Coss(this->actor.shape.rot.y);
    yawSin = Math_Sins(this->actor.shape.rot.y);

    sp6C.x = this->actor.posRot.pos.x + (arg4 * yawSin);
    sp6C.z = this->actor.posRot.pos.z + (arg4 * yawCos);
    sp60.x = this->actor.posRot.pos.x + (arg3 * yawSin);
    sp60.z = this->actor.posRot.pos.z + (arg3 * yawCos);
    sp60.y = sp6C.y = this->actor.posRot.pos.y + arg1;

    if (func_8003DE84(&globalCtx->colCtx, &sp6C, &sp60, &sp54, &this->actor.wallPoly, 1, 0, 0, 1, &sp78)) {
        wallPoly = this->actor.wallPoly;
        this->actor.bgCheckFlags |= 0x200;
        this->actor.wallPolySource = sp78;
        D_808535F0 = func_80041DB8(&globalCtx->colCtx, wallPoly, sp78);
        temp1 = wallPoly->norm.x * (1.0f / 32767.0f);
        temp2 = wallPoly->norm.z * (1.0f / 32767.0f);
        temp = atan2s(-temp2, -temp1);
        Math_ApproxUpdateScaledS(&this->actor.shape.rot.y, temp, 800);
        this->currentYaw = this->actor.shape.rot.y;
        this->actor.posRot.pos.x = sp54.x - (Math_Sins(this->actor.shape.rot.y) * arg2);
        this->actor.posRot.pos.z = sp54.z - (Math_Coss(this->actor.shape.rot.y) * arg2);
        return 1;
    }

    this->actor.bgCheckFlags &= ~0x200;
    return 0;
}

s32 func_8083F524(GlobalContext* globalCtx, Player* this) {
    return func_8083F360(globalCtx, this, 26.0f, this->ageProperties->unk_38 + 5.0f, 30.0f, 0.0f);
}

s32 func_8083F570(Player* this, GlobalContext* globalCtx) {
    s16 temp;

    if ((this->linearVelocity != 0.0f) && (this->actor.bgCheckFlags & 8) && (D_808535F0 & 0x30)) {
        temp = this->actor.shape.rot.y - this->actor.wallPolyRot;
        if (this->linearVelocity < 0.0f) {
            temp += 0x8000;
        }

        if (ABS(temp) > 0x4000) {
            func_80835C58(globalCtx, this, func_8084C81C, 0);
            if (this->linearVelocity > 0.0f) {
                this->actor.shape.rot.y = this->actor.wallPolyRot + 0x8000;
                func_80832264(globalCtx, this, &D_04002700);
                func_80832F54(globalCtx, this, 0x9D);
                func_800800F8(globalCtx, 0x2581, 999, NULL, 0);
            } else {
                this->actor.shape.rot.y = this->actor.wallPolyRot;
                SkelAnime_ChangeLinkAnim(globalCtx, &this->skelAnime, &D_04002708, -1.0f,
                                         SkelAnime_GetFrameCount(&D_04002708.genericHeader), 0.0f, 2, 0.0f);
                func_80832F54(globalCtx, this, 0x9D);
                func_800800F8(globalCtx, 0x2582, 999, NULL, 0);
            }
            this->currentYaw = this->actor.shape.rot.y;
            func_80832210(this);
            return 1;
        }
    }

    return 0;
}

void func_8083F72C(Player* this, LinkAnimetionEntry* anim, GlobalContext* globalCtx) {
    if (!func_80836898(globalCtx, this, func_8083A388)) {
        func_80835C58(globalCtx, this, func_8084B78C, 0);
    }
    func_80832264(globalCtx, this, anim);
    func_80832224(this);
    this->actor.shape.rot.y = this->currentYaw = this->actor.wallPolyRot + 0x8000;
}

s32 func_8083F7BC(Player* this, GlobalContext* globalCtx) {
    DynaPolyActor* wallPolyActor;

    if (!(this->stateFlags1 & 0x800) && (this->actor.bgCheckFlags & 0x200) && (D_80853608 < 0x3000)) {
        if (((this->linearVelocity > 0.0f) && func_8083EC18(this, globalCtx, D_808535F0)) ||
            func_8083F0C8(this, globalCtx, D_808535F0)) {
            return 1;
        }

        if (!func_808332B8(this) && ((this->linearVelocity == 0.0f) || !(this->stateFlags2 & 4)) &&
            (D_808535F0 & 0x40) && (this->actor.bgCheckFlags & 1) && (this->ledgeDistance >= 39.0f)) {
            this->stateFlags2 |= 1;
            if (CHECK_PAD(D_80858AB4->cur, A_BUTTON)) {
                if ((this->actor.wallPolySource != 50) &&
                    ((wallPolyActor = DynaPolyInfo_GetActor(&globalCtx->colCtx, this->actor.wallPolySource)) != NULL)) {
                    if (wallPolyActor->actor.id == ACTOR_BG_HEAVY_BLOCK) {
                        if (func_8008F034() < 3) {
                            return 0;
                        }
                        func_80836898(globalCtx, this, func_8083A0F4);
                        this->stateFlags1 |= 0x800;
                        this->interactRangeActor = &wallPolyActor->actor;
                        this->getItemId = 0;
                        this->currentYaw = this->actor.wallPolyRot + 0x8000;
                        func_80832224(this);
                        return 1;
                    } else {
                        this->unk_3C4 = &wallPolyActor->actor;
                    }
                } else {
                    this->unk_3C4 = NULL;
                }
                func_8083F72C(this, &D_040030F8, globalCtx);
                return 1;
            }
        }
    }

    return 0;
}

s32 func_8083F9D0(GlobalContext* globalCtx, Player* this) {
    DynaPolyActor* wallPolyActor;

    if ((this->actor.bgCheckFlags & 0x200) && ((this->stateFlags2 & 0x10) || CHECK_PAD(D_80858AB4->cur, A_BUTTON))) {
        wallPolyActor = NULL;

        if (this->actor.wallPolySource != 50) {
            wallPolyActor = DynaPolyInfo_GetActor(&globalCtx->colCtx, this->actor.wallPolySource);
        }

        if (&wallPolyActor->actor == this->unk_3C4) {
            if (this->stateFlags2 & 0x10) {
                return 1;
            } else {
                return 0;
            }
        }
    }

    func_80839FFC(this, globalCtx);
    func_80832264(globalCtx, this, &D_04003100);
    this->stateFlags2 &= ~0x10;
    return 1;
}

void func_8083FAB8(Player* this, GlobalContext* globalCtx) {
    func_80835C58(globalCtx, this, func_8084B898, 0);
    this->stateFlags2 |= 0x10;
    func_80832264(globalCtx, this, &D_040030F0);
}

void func_8083FB14(Player* this, GlobalContext* globalCtx) {
    func_80835C58(globalCtx, this, func_8084B9E4, 0);
    this->stateFlags2 |= 0x10;
    func_80832264(globalCtx, this, D_80853C5C[this->unk_15B]);
}

void func_8083FB7C(Player* this, GlobalContext* globalCtx) {
    this->stateFlags1 &= ~0x8200000;
    func_80837B9C(this, globalCtx);
    this->linearVelocity = -0.4f;
}

s32 func_8083FBC0(Player* this, GlobalContext* globalCtx) {
    if (!CHECK_PAD(D_80858AB4->press, A_BUTTON) && (this->actor.bgCheckFlags & 0x200) &&
        ((D_808535F0 & 8) || (D_808535F0 & 2) ||
         func_80041E4C(&globalCtx->colCtx, this->actor.wallPoly, this->actor.wallPolySource))) {
        return 0;
    }

    func_8083FB7C(this, globalCtx);
    func_80832698(this, NA_SE_VO_LI_AUTO_JUMP);
    return 1;
}

s32 func_8083FC68(Player* this, f32 arg1, s16 arg2) {
    f32 sp1C = (s16)(arg2 - this->actor.shape.rot.y);
    f32 temp;

    if (this->unk_664 != NULL) {
        func_8083DB98(this, func_8002DD78(this) || func_808334B4(this));
    }

    temp = fabsf(sp1C) / 32768.0f;

    if (arg1 > (((temp * temp) * 50.0f) + 6.0f)) {
        return 1;
    } else if (arg1 > (((1.0f - temp) * 10.0f) + 6.8f)) {
        return -1;
    }

    return 0;
}

s32 func_8083FD78(Player* this, f32* arg1, s16* arg2, GlobalContext* globalCtx) {
    s16 sp2E = *arg2 - this->targetYaw;
    u16 sp2C = ABS(sp2E);

    if ((func_8002DD78(this) || func_808334B4(this)) && (this->unk_664 == NULL)) {
        *arg1 *= Math_Sins(sp2C);

        if (*arg1 != 0.0f) {
            *arg2 = (((sp2E >= 0) ? 1 : -1) << 0xE) + this->actor.shape.rot.y;
        } else {
            *arg2 = this->actor.shape.rot.y;
        }

        if (this->unk_664 != NULL) {
            func_8083DB98(this, 1);
        } else {
            Math_SmoothScaleMaxMinS(&this->actor.posRot2.rot.x, D_80858AB4->rel.in.y * 240.0f, 14, 4000, 30);
            func_80836AB8(this, 1);
        }
    } else {
        if (this->unk_664 != NULL) {
            return func_8083FC68(this, *arg1, *arg2);
        } else {
            func_8083DC54(this, globalCtx);
            if ((*arg1 != 0.0f) && (sp2C < 6000)) {
                return 1;
            } else if (*arg1 > Math_Sins((0x4000 - (sp2C >> 1))) * 200.0f) {
                return -1;
            }
        }
    }

    return 0;
}

s32 func_8083FFB8(Player* this, f32* arg1, s16* arg2) {
    s16 temp1 = *arg2 - this->actor.shape.rot.y;
    u16 temp2 = ABS(temp1);
    f32 temp3 = Math_Coss(temp2);

    *arg1 *= temp3;

    if (*arg1 != 0.0f) {
        if (temp3 > 0) {
            return 1;
        } else {
            return -1;
        }
    }

    return 0;
}

s32 func_80840058(Player* this, f32* arg1, s16* arg2, GlobalContext* globalCtx) {
    func_8083DC54(this, globalCtx);

    if ((*arg1 != 0.0f) || (ABS(this->unk_87C) > 400)) {
        s16 temp1 = *arg2 - func_8005A948(ACTIVE_CAM);
        u16 temp2 = (ABS(temp1) - 0x2000) & 0xFFFF;

        if ((temp2 < 0x4000) || (this->unk_87C != 0)) {
            return -1;
        } else {
            return 1;
        }
    }

    return 0;
}

void func_80840138(Player* this, f32 arg1, s16 arg2) {
    s16 temp = arg2 - this->actor.shape.rot.y;

    if (arg1 > 0.0f) {
        if (temp < 0) {
            this->unk_874 = 0.0f;
        } else {
            this->unk_874 = 1.0f;
        }
    }

    Math_ApproxF(&this->unk_870, this->unk_874, 0.3f);
}

void func_808401B0(GlobalContext* globalCtx, Player* this) {
    func_800A431C(globalCtx, &this->skelAnime, func_808334E4(this), this->unk_868, func_80833528(this), this->unk_868,
                  this->unk_870, this->unk_318);
}

s32 func_8084021C(f32 arg0, f32 arg1, f32 arg2, f32 arg3) {
    f32 temp;

    if ((arg3 == 0.0f) && (arg1 > 0.0f)) {
        arg3 = arg2;
    }

    temp = (arg0 + arg1) - arg3;

    if (((temp * arg1) >= 0.0f) && (((temp - arg1) * arg1) < 0.0f)) {
        return 1;
    }

    return 0;
}

void func_8084029C(Player* this, f32 arg1) {
    f32 updateScale = R_UPDATE_RATE * 0.5f;

    arg1 *= updateScale;
    if (arg1 < -7.25) {
        arg1 = -7.25;
    } else if (arg1 > 7.25f) {
        arg1 = 7.25f;
    }

    if (1) {}

    if ((this->currentBoots == 2) && !(this->actor.bgCheckFlags & 1) && (this->unk_893 != 0)) {
        func_8002F8F0(&this->actor, NA_SE_PL_HOBBERBOOTS_LV - SFX_FLAG);
    } else if (func_8084021C(this->unk_868, arg1, 29.0f, 10.0f) || func_8084021C(this->unk_868, arg1, 29.0f, 24.0f)) {
        func_808327F8(this, this->linearVelocity);
        if (this->linearVelocity > 4.0f) {
            this->stateFlags2 |= 8;
        }
    }

    this->unk_868 += arg1;

    if (this->unk_868 < 0.0f) {
        this->unk_868 += 29.0f;
    } else if (this->unk_868 >= 29.0f) {
        this->unk_868 -= 29.0f;
    }
}

void func_80840450(Player* this, GlobalContext* globalCtx) {
    f32 sp44;
    s16 sp42;
    s32 temp1;
    u32 temp2;
    s16 temp3;
    s32 temp4;

    if (this->unk_692 & 8) {
        if (func_8008F180(this)) {
            this->stateFlags2 |= 0x60;
        } else {
            this->unk_692 &= ~8;
        }
    }

    if (this->unk_850 != 0) {
        if (func_800A3BC0(globalCtx, &this->skelAnime)) {
            func_80832DBC(this);
            func_80832284(globalCtx, this, func_808334E4(this));
            this->unk_850 = 0;
            this->unk_692 &= ~8;
        }
        func_80833C3C(this);
    } else {
        func_808401B0(globalCtx, this);
    }

    func_8083721C(this);

    if (!func_80837348(globalCtx, this, D_808543E0, 1)) {
        if (!func_80833B54(this) && (!func_80833B2C(this) || (func_80834B5C != this->unk_82C))) {
            func_8083CF10(this, globalCtx);
            return;
        }

        func_80837268(this, &sp44, &sp42, 0.0f, globalCtx);

        temp1 = func_8083FC68(this, sp44, sp42);

        if (temp1 > 0) {
            func_8083C8DC(this, globalCtx, sp42);
            return;
        }

        if (temp1 < 0) {
            func_8083CBF0(this, sp42, globalCtx);
            return;
        }

        if (sp44 > 4.0f) {
            func_8083CC9C(this, globalCtx);
            return;
        }

        func_8084029C(this, (this->linearVelocity * 0.3f) + 1.0f);
        func_80840138(this, sp44, sp42);

        temp2 = this->unk_868;
        if ((temp2 < 6) || ((temp2 - 0xE) < 6)) {
            Math_ApproxF(&this->linearVelocity, 0.0f, 1.5f);
            return;
        }

        temp3 = sp42 - this->currentYaw;
        temp4 = ABS(temp3);

        if (temp4 > 0x4000) {
            if (Math_ApproxF(&this->linearVelocity, 0.0f, 1.5f)) {
                this->currentYaw = sp42;
            }
            return;
        }

        func_80077C6C(&this->linearVelocity, sp44 * 0.3f, 2.0f, 1.5f);

        if (!(this->unk_692 & 8)) {
            Math_ApproxUpdateScaledS(&this->currentYaw, sp42, temp4 * 0.1f);
        }
    }
}

void func_808407CC(Player* this, GlobalContext* globalCtx) {
    f32 sp3C;
    s16 sp3A;
    s32 temp1;
    s16 temp2;
    s32 temp3;

    if (func_800A3BC0(globalCtx, &this->skelAnime)) {
        func_80832DBC(this);
        func_80832264(globalCtx, this, func_80833338(this));
    }

    func_8083721C(this);

    if (!func_80837348(globalCtx, this, D_808543E8, 1)) {
        if (func_80833B54(this)) {
            func_8083CEAC(this, globalCtx);
            return;
        }

        if (!func_80833B2C(this)) {
            func_80835DAC(globalCtx, this, func_80840BC8, 1);
            this->currentYaw = this->actor.shape.rot.y;
            return;
        }

        if (func_80834B5C == this->unk_82C) {
            func_8083CEAC(this, globalCtx);
            return;
        }

        func_80837268(this, &sp3C, &sp3A, 0.0f, globalCtx);

        temp1 = func_8083FD78(this, &sp3C, &sp3A, globalCtx);

        if (temp1 > 0) {
            func_8083C8DC(this, globalCtx, sp3A);
            return;
        }

        if (temp1 < 0) {
            func_8083CB2C(this, sp3A, globalCtx);
            return;
        }

        if (sp3C > 4.9f) {
            func_8083CC9C(this, globalCtx);
            func_80833C3C(this);
            return;
        }
        if (sp3C != 0.0f) {
            func_8083CB94(this, globalCtx);
            return;
        }

        temp2 = sp3A - this->actor.shape.rot.y;
        temp3 = ABS(temp2);

        if (temp3 > 800) {
            func_8083CD54(globalCtx, this, sp3A);
        }
    }
}

#ifdef NON_MATCHING
// regalloc differences
void func_808409CC(GlobalContext* globalCtx, Player* this) {
    LinkAnimetionEntry* anim;
    LinkAnimetionEntry** animPtr;
    s32 heathIsCritical;
    s32 sp38;
    s32 sp34;

    if ((this->unk_664 != NULL) ||
        (!(heathIsCritical = Health_IsCritical()) && ((this->unk_6AC = (this->unk_6AC + 1) & 1) != 0))) {
        this->stateFlags2 &= ~0x10000000;
        anim = func_80833338(this);
    } else {
        this->stateFlags2 |= 0x10000000;
        if (this->stateFlags1 & 0x800) {
            anim = func_80833338(this);
        } else {
            sp38 = globalCtx->roomCtx.curRoom.unk_02;
            if (heathIsCritical) {
                if (this->unk_6AC >= 0) {
                    sp38 = 7;
                    this->unk_6AC = -1;
                } else {
                    sp38 = 8;
                }
            } else {
                sp34 = Math_Rand_ZeroOne() * 5.0f;
                if (sp34 < 4) {
                    if (((sp34 != 0) && (sp34 != 3)) ||
                        ((this->unk_15D == 10) && ((sp34 == 3) || func_8008F180(this)))) {
                        if ((sp34 == 0) && func_8008F1A0(this)) {
                            sp34 = 4;
                        }
                        sp38 = sp34 + 9;
                    }
                }
            }
            animPtr = &D_80853D7C[sp38 * 2];
            if (this->unk_15B != 1) {
                animPtr++;
            }
            anim = *animPtr;
        }
    }

    SkelAnime_ChangeLinkAnim(globalCtx, &this->skelAnime, anim, (2.0f / 3.0f) * D_808535E8, 0.0f,
                             SkelAnime_GetFrameCount(&anim->genericHeader), 2, -6.0f);
}
#else
#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_player_actor/func_808409CC.s")
#endif

void func_80840BC8(Player* this, GlobalContext* globalCtx) {
    s32 sp44;
    s32 sp40;
    f32 sp3C;
    s16 sp3A;
    s16 temp_v1;

    sp44 = func_80833350(this);
    sp40 = func_800A3BC0(globalCtx, &this->skelAnime);

    if (sp44 > 0) {
        func_808333FC(this, sp44 - 1);
    }

    if (sp40 != 0) {
        if (this->unk_850 != 0) {
            if (DECR(this->unk_850) == 0) {
                this->skelAnime.animFrameCount = this->skelAnime.totalFrames - 1.0f;
            }
            this->skelAnime.limbDrawTbl->y = (this->skelAnime.limbDrawTbl->y + ((this->unk_850 & 1) * 0x50)) - 0x28;
        } else {
            func_80832DBC(this);
            func_808409CC(globalCtx, this);
        }
    }

    func_8083721C(this);

    if (this->unk_850 == 0) {
        if (!func_80837348(globalCtx, this, D_80854418, 1)) {
            if (func_80833B54(this)) {
                func_8083CEAC(this, globalCtx);
                return;
            }

            if (func_80833B2C(this)) {
                func_80839F30(this, globalCtx);
                return;
            }

            func_80837268(this, &sp3C, &sp3A, 0.018f, globalCtx);

            if (sp3C != 0.0f) {
                func_8083C8DC(this, globalCtx, sp3A);
                return;
            }

            temp_v1 = sp3A - this->actor.shape.rot.y;
            if (ABS(temp_v1) > 800) {
                func_8083CD54(globalCtx, this, sp3A);
                return;
            }

            Math_ApproxUpdateScaledS(&this->actor.shape.rot.y, sp3A, 1200);
            this->currentYaw = this->actor.shape.rot.y;
            if (func_80833338(this) == this->skelAnime.linkAnimetionSeg) {
                func_8083DC54(this, globalCtx);
            }
        }
    }
}

void func_80840DE4(Player* this, GlobalContext* globalCtx) {
    f32 frames;
    f32 coeff;
    f32 sp44;
    s16 sp42;
    s32 temp1;
    s16 temp2;
    s32 temp3;
    s32 direction;

    this->skelAnime.mode = 0;
    func_800A3B8C(&this->skelAnime);
    this->skelAnime.linkAnimetionSeg = func_8083356C(this);

    if (this->skelAnime.linkAnimetionSeg == &D_040026E8) {
        frames = 24.0f;
        coeff = -(MREG(95) / 100.0f);
    } else {
        frames = 29.0f;
        coeff = MREG(95) / 100.0f;
    }

    this->skelAnime.totalFrames = frames;
    this->skelAnime.animFrameCount = frames - 1.0f;

    if ((s16)(this->currentYaw - this->actor.shape.rot.y) >= 0) {
        direction = 1;
    } else {
        direction = -1;
    }

    this->skelAnime.animPlaybackSpeed = direction * (this->linearVelocity * coeff);

    func_800A3BC0(globalCtx, &this->skelAnime);

    if (func_800A4530(&this->skelAnime, 0.0f) || func_800A4530(&this->skelAnime, frames * 0.5f)) {
        func_808327F8(this, this->linearVelocity);
    }

    if (!func_80837348(globalCtx, this, D_808543F4, 1)) {
        if (func_80833B54(this)) {
            func_8083CEAC(this, globalCtx);
            return;
        }

        if (!func_80833B2C(this)) {
            func_80853080(this, globalCtx);
            return;
        }

        func_80837268(this, &sp44, &sp42, 0.0f, globalCtx);
        temp1 = func_8083FD78(this, &sp44, &sp42, globalCtx);

        if (temp1 > 0) {
            func_8083C8DC(this, globalCtx, sp42);
            return;
        }

        if (temp1 < 0) {
            func_8083CB2C(this, sp42, globalCtx);
            return;
        }

        if (sp44 > 4.9f) {
            func_8083CC9C(this, globalCtx);
            func_80833C3C(this);
            return;
        }

        if ((sp44 == 0.0f) && (this->linearVelocity == 0.0f)) {
            func_80839F30(this, globalCtx);
            return;
        }

        temp2 = sp42 - this->currentYaw;
        temp3 = ABS(temp2);

        if (temp3 > 0x4000) {
            if (Math_ApproxF(&this->linearVelocity, 0.0f, 1.5f)) {
                this->currentYaw = sp42;
            }
            return;
        }

        func_80077C6C(&this->linearVelocity, sp44 * 0.4f, 1.5f, 1.5f);
        Math_ApproxUpdateScaledS(&this->currentYaw, sp42, temp3 * 0.1f);
    }
}

void func_80841138(Player* this, GlobalContext* globalCtx) {
    f32 temp1;
    f32 temp2;

    if (this->unk_864 < 1.0f) {
        temp1 = R_UPDATE_RATE * 0.5f;
        func_8084029C(this, REG(35) / 1000.0f);
        func_800A42A0(globalCtx, &this->skelAnime, D_80853BFC[this->unk_15B], this->unk_868);
        this->unk_864 += 1 * temp1;
        if (this->unk_864 >= 1.0f) {
            this->unk_864 = 1.0f;
        }
        temp1 = this->unk_864;
    } else {
        temp2 = this->linearVelocity - (REG(48) / 100.0f);
        if (temp2 < 0.0f) {
            temp1 = 1.0f;
            func_8084029C(this, (REG(35) / 1000.0f) + ((REG(36) / 1000.0f) * this->linearVelocity));
            func_800A42A0(globalCtx, &this->skelAnime, D_80853BFC[this->unk_15B], this->unk_868);
        } else {
            temp1 = (REG(37) / 1000.0f) * temp2;
            if (temp1 < 1.0f) {
                func_8084029C(this, (REG(35) / 1000.0f) + ((REG(36) / 1000.0f) * this->linearVelocity));
            } else {
                temp1 = 1.0f;
                func_8084029C(this, 1.2f + ((REG(38) / 1000.0f) * temp2));
            }
            func_800A425C(globalCtx, &this->skelAnime, D_80853BFC[this->unk_15B], this->unk_868);
            func_800A42A0(globalCtx, &this->skelAnime, &D_04002DD0, this->unk_868 * 0.551724135876f);
        }
    }

    if (temp1 < 1.0f) {
        func_800A42E4(globalCtx, &this->skelAnime, 1.0f - temp1);
    }
}

void func_8084140C(Player* this, GlobalContext* globalCtx) {
    func_80835C58(globalCtx, this, func_8084170C, 1);
    func_80832B0C(globalCtx, this, &D_04002DA0);
}

s32 func_80841458(Player* this, f32* arg1, s16* arg2, GlobalContext* globalCtx) {
    if (this->linearVelocity > 6.0f) {
        func_8084140C(this, globalCtx);
        return 1;
    }

    if (*arg1 != 0.0f) {
        if (func_8083721C(this)) {
            *arg1 = 0.0f;
            *arg2 = this->currentYaw;
        } else {
            return 1;
        }
    }

    return 0;
}

void func_808414F8(Player* this, GlobalContext* globalCtx) {
    f32 sp34;
    s16 sp32;
    s32 sp2C;
    s16 sp2A;

    func_80841138(this, globalCtx);

    if (!func_80837348(globalCtx, this, D_80854400, 1)) {
        if (!func_80833C04(this)) {
            func_8083C8DC(this, globalCtx, this->currentYaw);
            return;
        }

        func_80837268(this, &sp34, &sp32, 0.0f, globalCtx);
        sp2C = func_8083FD78(this, &sp34, &sp32, globalCtx);

        if (sp2C >= 0) {
            if (!func_80841458(this, &sp34, &sp32, globalCtx)) {
                if (sp2C != 0) {
                    func_8083C858(this, globalCtx);
                    return;
                }
                if (sp34 > 4.9f) {
                    func_8083CC9C(this, globalCtx);
                } else {
                    func_8083CB94(this, globalCtx);
                }
            }
        } else {
            sp2A = sp32 - this->currentYaw;
            func_80077C6C(&this->linearVelocity, sp34 * 1.5f, 1.5f, 2.0f);
            Math_ApproxUpdateScaledS(&this->currentYaw, sp32, sp2A * 0.1f);
            if ((sp34 == 0.0f) && (this->linearVelocity == 0.0f)) {
                func_80839F30(this, globalCtx);
            }
        }
    }
}

void func_808416C0(Player* this, GlobalContext* globalCtx) {
    func_80835C58(globalCtx, this, func_808417FC, 1);
    func_80832264(globalCtx, this, &D_04002DA8);
}

void func_8084170C(Player* this, GlobalContext* globalCtx) {
    s32 sp34;
    f32 sp30;
    s16 sp2E;

    sp34 = func_800A3BC0(globalCtx, &this->skelAnime);
    func_8083721C(this);
    if (!func_80837348(globalCtx, this, D_80854400, 1)) {
        func_80837268(this, &sp30, &sp2E, 0.0f, globalCtx);
        if (this->linearVelocity == 0.0f) {
            this->currentYaw = this->actor.shape.rot.y;
            if (func_8083FD78(this, &sp30, &sp2E, globalCtx) > 0) {
                func_8083C858(this, globalCtx);
            } else if ((sp30 != 0.0f) || (sp34 != 0)) {
                func_808416C0(this, globalCtx);
            }
        }
    }
}

void func_808417FC(Player* this, GlobalContext* globalCtx) {
    s32 sp1C;

    sp1C = func_800A3BC0(globalCtx, &this->skelAnime);
    if (!func_80837348(globalCtx, this, D_80854400, 1)) {
        if (sp1C != 0) {
            func_80839F30(this, globalCtx);
        }
    }
}

void func_80841860(GlobalContext* globalCtx, Player* this) {
    s32 pad;
    LinkAnimetionEntry* sp38;
    LinkAnimetionEntry* sp34;
    f32 frame;

    sp38 = D_80853914[this->unk_15B + 0x90];
    sp34 = D_80853914[this->unk_15B + 0x96];
    this->skelAnime.linkAnimetionSeg = sp38;

    func_8084029C(this, (REG(30) / 1000.0f) + ((REG(32) / 1000.0f) * this->linearVelocity));

    frame = this->unk_868 * 0.551724135876f;
    func_800A431C(globalCtx, &this->skelAnime, sp34, frame, sp38, frame, this->unk_870, this->unk_318);
}

void func_8084193C(Player* this, GlobalContext* globalCtx) {
    f32 sp3C;
    s16 sp3A;
    s32 temp1;
    s16 temp2;
    s32 temp3;

    func_80841860(globalCtx, this);

    if (!func_80837348(globalCtx, this, D_80854408, 1)) {
        if (!func_80833C04(this)) {
            func_8083C858(this, globalCtx);
            return;
        }

        func_80837268(this, &sp3C, &sp3A, 0.0f, globalCtx);

        if (func_80833B2C(this)) {
            temp1 = func_8083FD78(this, &sp3C, &sp3A, globalCtx);
        } else {
            temp1 = func_8083FC68(this, sp3C, sp3A);
        }

        if (temp1 > 0) {
            func_8083C858(this, globalCtx);
            return;
        }

        if (temp1 < 0) {
            if (func_80833B2C(this)) {
                func_8083CB2C(this, sp3A, globalCtx);
            } else {
                func_8083CBF0(this, sp3A, globalCtx);
            }
            return;
        }

        if ((this->linearVelocity < 3.6f) && (sp3C < 4.0f)) {
            if (!func_8008E9C4(this) && func_80833B2C(this)) {
                func_8083CB94(this, globalCtx);
            } else {
                func_80839F90(this, globalCtx);
            }
            return;
        }

        func_80840138(this, sp3C, sp3A);

        temp2 = sp3A - this->currentYaw;
        temp3 = ABS(temp2);

        if (temp3 > 0x4000) {
            if (Math_ApproxF(&this->linearVelocity, 0.0f, 3.0f) != 0) {
                this->currentYaw = sp3A;
            }
            return;
        }

        sp3C *= 0.9f;
        func_80077C6C(&this->linearVelocity, sp3C, 2.0f, 3.0f);
        Math_ApproxUpdateScaledS(&this->currentYaw, sp3A, temp3 * 0.1f);
    }
}

void func_80841BA8(Player* this, GlobalContext* globalCtx) {
    f32 sp34;
    s16 sp32;

    func_800A3BC0(globalCtx, &this->skelAnime);

    if (func_8008F1A0(this)) {
        SkelAnime_LoadLinkAnimetion(globalCtx, func_80833338(this), 0, this->skelAnime.limbCount,
                                    this->skelAnime.transitionDrawTbl);
        SkelAnime_LoadAnimationType3(globalCtx, this->skelAnime.limbCount, this->skelAnime.limbDrawTbl,
                                     this->skelAnime.transitionDrawTbl, D_80853410);
    }

    func_80837268(this, &sp34, &sp32, 0.018f, globalCtx);

    if (!func_80837348(globalCtx, this, D_80854414, 1)) {
        if (sp34 != 0.0f) {
            this->actor.shape.rot.y = sp32;
            func_8083C858(this, globalCtx);
        } else if (Math_ApproxUpdateScaledS(&this->actor.shape.rot.y, sp32, this->unk_87E)) {
            func_8083C0E8(this, globalCtx);
        }
        this->currentYaw = this->actor.shape.rot.y;
    }
}

void func_80841CC4(Player* this, s32 arg1, GlobalContext* globalCtx) {
    LinkAnimetionEntry* anim;
    s16 target;
    f32 rate;

    if (ABS(D_80853610) < 3640) {
        target = 0;
    } else {
        target = CLAMP(D_80853610, -10922, 10922);
    }

    Math_ApproxUpdateScaledS(&this->unk_89C, target, 400);

    if ((this->unk_15B == 3) || ((this->unk_89C == 0) && (this->unk_6C4 <= 0.0f))) {
        if (arg1 == 0) {
            func_800A42A0(globalCtx, &this->skelAnime, D_8085392C[this->unk_15B], this->unk_868);
        } else {
            func_800A425C(globalCtx, &this->skelAnime, D_8085392C[this->unk_15B], this->unk_868);
        }
        return;
    }

    if (this->unk_89C != 0) {
        rate = this->unk_89C / 10922.0f;
    } else {
        rate = this->unk_6C4 * 0.0006f;
    }

    rate *= fabsf(this->linearVelocity) * 0.5f;

    if (rate > 1.0f) {
        rate = 1.0f;
    }

    if (rate < 0.0f) {
        anim = &D_04002E48;
        rate = -rate;
    } else {
        anim = &D_04002E90;
    }

    if (arg1 == 0) {
        func_800A431C(globalCtx, &this->skelAnime, D_8085392C[this->unk_15B], this->unk_868, anim, this->unk_868, rate,
                      this->unk_318);
    } else {
        func_800A43B8(globalCtx, &this->skelAnime, D_8085392C[this->unk_15B], this->unk_868, anim, this->unk_868, rate,
                      this->unk_318);
    }
}

void func_80841EE4(Player* this, GlobalContext* globalCtx) {
    f32 temp1;
    f32 temp2;

    if (this->unk_864 < 1.0f) {
        temp1 = R_UPDATE_RATE * 0.5f;
        func_8084029C(this, REG(35) / 1000.0f);
        func_800A42A0(globalCtx, &this->skelAnime, D_8085392C[this->unk_15B], this->unk_868);
        this->unk_864 += 1 * temp1;
        if (this->unk_864 >= 1.0f) {
            this->unk_864 = 1.0f;
        }
        temp1 = this->unk_864;
    } else {
        temp2 = this->linearVelocity - (REG(48) / 100.0f);
        if (temp2 < 0.0f) {
            temp1 = 1.0f;
            func_8084029C(this, (REG(35) / 1000.0f) + ((REG(36) / 1000.0f) * this->linearVelocity));
            func_80841CC4(this, 0, globalCtx);
        } else {
            temp1 = (REG(37) / 1000.0f) * temp2;
            if (temp1 < 1.0f) {
                func_8084029C(this, (REG(35) / 1000.0f) + ((REG(36) / 1000.0f) * this->linearVelocity));
            } else {
                temp1 = 1.0f;
                func_8084029C(this, 1.2f + ((REG(38) / 1000.0f) * temp2));
            }
            func_80841CC4(this, 1, globalCtx);
            func_800A42A0(globalCtx, &this->skelAnime, func_80833438(this), this->unk_868 * 0.689655185f);
        }
    }

    if (temp1 < 1.0f) {
        func_800A42E4(globalCtx, &this->skelAnime, 1.0f - temp1);
    }
}

void func_80842180(Player* this, GlobalContext* globalCtx) {
    f32 sp2C;
    s16 sp2A;

    this->stateFlags2 |= 0x20;
    func_80841EE4(this, globalCtx);

    if (!func_80837348(globalCtx, this, D_80854424, 1)) {
        if (func_80833C04(this)) {
            func_8083C858(this, globalCtx);
            return;
        }

        func_80837268(this, &sp2C, &sp2A, 0.018f, globalCtx);

        if (!func_8083C484(this, &sp2C, &sp2A)) {
            func_8083DF68(this, sp2C, sp2A);
            func_8083DDC8(this, globalCtx);
            if ((this->linearVelocity == 0.0f) && (sp2C == 0.0f)) {
                func_8083C0B8(this, globalCtx);
            }
        }
    }
}

void func_8084227C(Player* this, GlobalContext* globalCtx) {
    f32 sp2C;
    s16 sp2A;

    this->stateFlags2 |= 0x20;
    func_80841EE4(this, globalCtx);

    if (!func_80837348(globalCtx, this, D_80854430, 1)) {
        if (!func_80833C04(this)) {
            func_8083C858(this, globalCtx);
            return;
        }

        func_80837268(this, &sp2C, &sp2A, 0.0f, globalCtx);

        if (!func_8083C484(this, &sp2C, &sp2A)) {
            if ((func_80833B2C(this) && (sp2C != 0.0f) && (func_8083FD78(this, &sp2C, &sp2A, globalCtx) <= 0)) ||
                (!func_80833B2C(this) && (func_8083FC68(this, sp2C, sp2A) <= 0))) {
                func_80839F90(this, globalCtx);
                return;
            }

            func_8083DF68(this, sp2C, sp2A);
            func_8083DDC8(this, globalCtx);
            if ((this->linearVelocity == 0) && (sp2C == 0)) {
                func_80839F90(this, globalCtx);
            }
        }
    }
}

void func_808423EC(Player* this, GlobalContext* globalCtx) {
    s32 sp34;
    f32 sp30;
    s16 sp2E;

    sp34 = func_800A3BC0(globalCtx, &this->skelAnime);

    if (!func_80837348(globalCtx, this, D_80854408, 1)) {
        if (!func_80833C04(this)) {
            func_8083C858(this, globalCtx);
            return;
        }

        func_80837268(this, &sp30, &sp2E, 0.0f, globalCtx);

        if ((this->skelAnime.transCurrentFrame == 0.0f) && (this->skelAnime.animCurrentFrame > 5.0f)) {
            func_8083721C(this);
            if ((this->skelAnime.animCurrentFrame > 10.0f) && (func_8083FC68(this, sp30, sp2E) < 0)) {
                func_8083CBF0(this, sp2E, globalCtx);
                return;
            }

            if (sp34 != 0) {
                func_8083CD00(this, globalCtx);
            }
        }
    }
}

void func_8084251C(Player* this, GlobalContext* globalCtx) {
    s32 sp34;
    f32 sp30;
    s16 sp2E;

    sp34 = func_800A3BC0(globalCtx, &this->skelAnime);

    func_8083721C(this);

    if (!func_80837348(globalCtx, this, D_80854440, 1)) {
        func_80837268(this, &sp30, &sp2E, 0.0f, globalCtx);

        if (this->linearVelocity == 0.0f) {
            this->currentYaw = this->actor.shape.rot.y;
            if (func_8083FC68(this, sp30, sp2E) > 0) {
                func_8083C858(this, globalCtx);
                return;
            }

            if ((sp30 != 0.0f) || (sp34 != 0)) {
                func_80839F90(this, globalCtx);
            }
        }
    }
}

void func_8084260C(Vec3f* src, Vec3f* dest, f32 arg2, f32 arg3, f32 arg4) {
    dest->x = (Math_Rand_ZeroOne() * arg3) + src->x;
    dest->y = (Math_Rand_ZeroOne() * arg4) + (src->y + arg2);
    dest->z = (Math_Rand_ZeroOne() * arg3) + src->z;
}

s32 func_8084269C(GlobalContext* globalCtx, Player* this) {
    Vec3f sp2C;

    if ((this->unk_89E == 0) || (this->unk_89E == 1)) {
        func_8084260C(&this->actor.unk_CC[0], &sp2C, this->actor.groundY - this->actor.unk_CC[0].y, 7.0f, 5.0f);
        func_800286CC(globalCtx, &sp2C, &D_808545B4, &D_808545C0, 50, 30);
        func_8084260C(&this->actor.unk_CC[1], &sp2C, this->actor.groundY - this->actor.unk_CC[1].y, 7.0f, 5.0f);
        func_800286CC(globalCtx, &this->actor.unk_CC[1], &D_808545B4, &D_808545C0, 50, 30);
        return 1;
    }

    return 0;
}

void func_8084279C(Player* this, GlobalContext* globalCtx) {
    func_80832CB0(globalCtx, this, D_80853C2C[this->unk_15B]);

    if (DECR(this->unk_850) == 0) {
        if (!func_8083B040(this, globalCtx)) {
            func_8083A098(this, D_80853C44[this->unk_15B], globalCtx);
        }

        this->actor.flags &= ~0x100;
        func_8005B1A4(Gameplay_GetCamera(globalCtx, 0));
    }
}

s32 func_8084285C(Player* this, f32 arg1, f32 arg2, f32 arg3) {
    if ((arg1 <= this->skelAnime.animCurrentFrame) && (this->skelAnime.animCurrentFrame <= arg3)) {
        func_80833A20(this, (arg2 <= this->skelAnime.animCurrentFrame) ? 1 : -1);
        return 1;
    }

    func_80832318(this);
    return 0;
}

s32 func_808428D8(Player* this, GlobalContext* globalCtx) {
    if (!func_8008E9D0(this) && func_8008F180(this) && D_80853614) {
        func_80832264(globalCtx, this, &D_04002EC8);
        this->unk_84F = 1;
        this->swordAnimation = 0xC;
        this->currentYaw = this->actor.shape.rot.y + this->unk_6BE;
        return 1;
    }

    return 0;
}

s32 func_80842964(Player* this, GlobalContext* globalCtx) {
    return func_8083B040(this, globalCtx) || func_8083B644(this, globalCtx) || func_8083E5A8(this, globalCtx);
}

void func_808429B4(GlobalContext* globalCtx, s32 speed, s32 y, s32 countdown) {
    s32 quakeIdx = Quake_Add(Gameplay_GetCamera(globalCtx, 0), 3);
    Quake_SetSpeed(quakeIdx, speed);
    Quake_SetQuakeValues(quakeIdx, y, 0, 0, 0);
    Quake_SetCountdown(quakeIdx, countdown);
}

void func_80842A28(GlobalContext* globalCtx, Player* this) {
    func_808429B4(globalCtx, 27767, 7, 20);
    globalCtx->actorCtx.unk_02 = 4;
    func_8083264C(this, 0xFF, 0x14, 0x96, 0);
    func_8002F7DC(&this->actor, NA_SE_IT_HAMMER_HIT);
}

void func_80842A88(GlobalContext* globalCtx, Player* this) {
    Inventory_ChangeAmmo(ITEM_STICK, -1);
    func_80835F44(globalCtx, this, ITEM_NONE);
}

s32 func_80842AC4(GlobalContext* globalCtx, Player* this) {
    if ((this->heldItemActionParam == 6) && (this->stickLength > 0.5f)) {
        if (AMMO(ITEM_STICK) != 0) {
            func_800298EC(globalCtx, &this->unk_908[15], this->actor.shape.rot.y + 0x8000);
            this->stickLength = 0.5f;
            func_80842A88(globalCtx, this);
            func_8002F7DC(&this->actor, NA_SE_IT_WOODSTICK_BROKEN);
        }
        return 1;
    }

    return 0;
}

s32 func_80842B7C(GlobalContext* globalCtx, Player* this) {
    if (this->heldItemActionParam == 5) {
        if ((gSaveContext.bgsFlag == 0) && (gSaveContext.swordHealth > 0.0f)) {
            if ((gSaveContext.swordHealth -= 1.0f) <= 0.0f) {
                func_800298EC(globalCtx, &this->unk_908[15], this->actor.shape.rot.y + 0x8000);
                func_800849EC(globalCtx);
                func_8002F7DC(&this->actor, NA_SE_IT_MAJIN_SWORD_BROKEN);
            }
        }
        return 1;
    }

    return 0;
}

void func_80842CF0(GlobalContext* globalCtx, Player* this) {
    func_80842AC4(globalCtx, this);
    func_80842B7C(globalCtx, this);
}

void func_80842D20(GlobalContext* globalCtx, Player* this) {
    s32 pad;
    s32 sp28;

    if (func_80843188 != this->actionFunc) {
        func_80832440(globalCtx, this);
        func_80835C58(globalCtx, this, func_808505DC, 0);
        if (func_8008E9C4(this)) {
            sp28 = 2;
        } else {
            sp28 = 0;
        }
        func_808322D0(globalCtx, this, D_808545CC[func_8008F1A0(this) + sp28]);
    }

    func_8083264C(this, 0xB4, 0x14, 0x64, 0);
    this->linearVelocity = -18.0f;
    func_80842CF0(globalCtx, this);
}

s32 func_80842DF4(GlobalContext* globalCtx, Player* this) {
    f32 phi_f2;
    CollisionPoly* sp78;
    u32 sp74;
    Vec3f sp68;
    Vec3f sp5C;
    Vec3f sp50;
    s32 temp1;
    s32 sp48;

    if (this->swordState > 0) {
        if (this->swordAnimation < 0x18) {
            if (!(this->quads[0].base.atFlags & 4) && !(this->quads[1].base.atFlags & 4)) {
                if (this->skelAnime.animCurrentFrame >= 2.0f) {
                    phi_f2 =
                        Math_Vec3f_DistXYZAndStoreDiff(&this->swordDimensions.tip, &this->swordDimensions.base, &sp50);
                    if (phi_f2 != 0.0f) {
                        phi_f2 = (phi_f2 + 10.0f) / phi_f2;
                    }
                    sp68.x = this->swordDimensions.tip.x + (sp50.x * phi_f2);
                    sp68.y = this->swordDimensions.tip.y + (sp50.y * phi_f2);
                    sp68.z = this->swordDimensions.tip.z + (sp50.z * phi_f2);
                    if ((func_8003DE84(&globalCtx->colCtx, &sp68, &this->swordDimensions.tip, &sp5C, &sp78, 1, 0, 0, 1,
                                       &sp74) != 0) &&
                        (func_8004200C(&globalCtx->colCtx, sp78, sp74) == 0) &&
                        (func_80041D4C(&globalCtx->colCtx, sp78, sp74) != 6) &&
                        (func_8002F9EC(globalCtx, &this->actor, sp78, sp74, &sp5C) == 0)) {

                        if (this->heldItemActionParam == 7) {
                            func_80832630(globalCtx);
                            func_80842A28(globalCtx, this);
                            func_80842D20(globalCtx, this);
                            return 1;
                        }

                        if (this->linearVelocity >= 0.0f) {
                            sp48 = func_80041F10(&globalCtx->colCtx, sp78, sp74);

                            if (sp48 == 0xA) {
                                func_80062E14(globalCtx, &sp5C, &this->actor.projectedPos);
                            } else {
                                func_80062CD4(globalCtx, &sp5C);
                                if (sp48 == 0xB) {
                                    func_8002F7DC(&this->actor, NA_SE_IT_WALL_HIT_SOFT);
                                } else {
                                    func_8002F7DC(&this->actor, NA_SE_IT_WALL_HIT_HARD);
                                }
                            }

                            func_80842CF0(globalCtx, this);
                            this->linearVelocity = -14.0f;
                            func_8083264C(this, 0xB4, 0x14, 0x64, 0);
                        }
                    }
                }
            } else {
                func_80842D20(globalCtx, this);
                func_80832630(globalCtx);
                return 1;
            }
        }

        temp1 = (this->quads[0].base.atFlags & 2) || (this->quads[1].base.atFlags & 2);

        if (temp1) {
            if (this->swordAnimation < 0x18) {
                Actor* at = this->quads[temp1 ? 1 : 0].base.at;

                if ((at != NULL) && (at->id != ACTOR_EN_KANBAN)) {
                    func_80832630(globalCtx);
                }
            }

            if ((func_80842AC4(globalCtx, this) == 0) && (this->heldItemActionParam != 7)) {
                func_80842B7C(globalCtx, this);
                if (this->actor.colChkInfo.atHitEffect == 1) {
                    this->actor.colChkInfo.damage = 8;
                    func_80837C0C(globalCtx, this, 4, 0.0f, 0.0f, this->actor.shape.rot.y, 20);
                    return 1;
                }
            }
        }
    }

    return 0;
}

void func_80843188(Player* this, GlobalContext* globalCtx) {
    f32 sp54;
    f32 sp50;
    s16 sp4E;
    s16 sp4C;
    s16 sp4A;
    s16 sp48;
    s16 sp46;
    f32 sp40;

    if (func_800A3BC0(globalCtx, &this->skelAnime)) {
        if (func_8008E9D0(this) == 0) {
            func_80832284(globalCtx, this, D_80853B0C[this->unk_15B]);
        }
        this->unk_850 = 1;
        this->unk_84F = 0;
    }

    if (func_8008E9D0(this) == 0) {
        this->stateFlags1 |= 0x400000;
        func_80836670(this, globalCtx);
        this->stateFlags1 &= ~0x400000;
    }

    func_8083721C(this);

    if (this->unk_850 != 0) {
        sp54 = D_80858AB4->rel.in.y * 100;
        sp50 = D_80858AB4->rel.in.x * -120;
        sp4E = this->actor.shape.rot.y - func_8005A948(ACTIVE_CAM);

        sp40 = Math_Coss(sp4E);
        sp4C = (Math_Sins(sp4E) * sp50) + (sp54 * sp40);
        sp40 = Math_Coss(sp4E);
        sp4A = (sp50 * sp40) - (Math_Sins(sp4E) * sp54);

        if (sp4C > 3500) {
            sp4C = 3500;
        }

        sp48 = ABS(sp4C - this->actor.posRot2.rot.x) * 0.25f;
        if (sp48 < 100) {
            sp48 = 100;
        }

        sp46 = ABS(sp4A - this->unk_6BE) * 0.25f;
        if (sp46 < 50) {
            sp46 = 50;
        }

        Math_ApproxUpdateScaledS(&this->actor.posRot2.rot.x, sp4C, sp48);
        this->unk_6BC = this->actor.posRot2.rot.x;
        Math_ApproxUpdateScaledS(&this->unk_6BE, sp4A, sp46);

        if (this->unk_84F != 0) {
            if (!func_80842DF4(globalCtx, this)) {
                if (this->skelAnime.animCurrentFrame < 2.0f) {
                    func_80833A20(this, 1);
                }
            } else {
                this->unk_850 = 1;
                this->unk_84F = 0;
            }
        } else if (!func_80842964(this, globalCtx)) {
            if (func_8083C2B0(this, globalCtx)) {
                func_808428D8(this, globalCtx);
            } else {
                this->stateFlags1 &= ~0x400000;
                func_80832318(this);
                if (func_8008E9D0(this) != 0) {
                    func_8083A060(this, globalCtx);
                    SkelAnime_ChangeLinkAnim(globalCtx, &this->skelAnime, &D_04002400, 1.0f,
                                             SkelAnime_GetFrameCount(&D_04002400.genericHeader), 0.0f, 2, 0.0f);
                    func_80832F54(globalCtx, this, 4);
                } else {
                    if (this->unk_154 < 0) {
                        func_8008EC70(this);
                    }
                    func_8083A098(this, D_80853B24[this->unk_15B], globalCtx);
                }
                func_8002F7DC(&this->actor, NA_SE_IT_SHIELD_REMOVE);
                return;
            }
        } else {
            return;
        }
    }

    this->stateFlags1 |= 0x400000;
    func_8008EA40(this);
    this->unk_6AE |= 0xC1;
}

void func_808435C4(Player* this, GlobalContext* globalCtx) {
    s32 temp;
    LinkAnimetionEntry* anim;
    f32 frames;

    func_8083721C(this);

    if (this->unk_84F == 0) {
        D_808535E0 = func_80836670(this, globalCtx);
        if ((func_80834B5C == this->unk_82C) || (func_808374A0(globalCtx, this, &this->skelAnime2, 4.0f) > 0)) {
            func_80835C58(globalCtx, this, func_80840450, 1);
        }
    } else {
        temp = func_808374A0(globalCtx, this, &this->skelAnime, 4.0f);
        if ((temp != 0) && ((temp > 0) || func_800A3BC0(globalCtx, &this->skelAnime))) {
            func_80835C58(globalCtx, this, func_80843188, 1);
            this->stateFlags1 |= 0x400000;
            func_8008EA40(this);
            anim = D_80853AF4[this->unk_15B];
            frames = SkelAnime_GetFrameCount(&anim->genericHeader);
            SkelAnime_ChangeLinkAnim(globalCtx, &this->skelAnime, anim, 1.0f, frames, frames, 2, 0.0f);
        }
    }
}

void func_8084370C(Player* this, GlobalContext* globalCtx) {
    s32 sp1C;

    func_8083721C(this);

    sp1C = func_808374A0(globalCtx, this, &this->skelAnime, 16.0f);
    if ((sp1C != 0) && (func_800A3BC0(globalCtx, &this->skelAnime) || (sp1C > 0))) {
        func_80839F90(this, globalCtx);
    }
}

void func_8084377C(Player* this, GlobalContext* globalCtx) {
    this->stateFlags2 |= 0x60;
    func_808382BC(this);

    if (!(this->stateFlags1 & 0x20000000) && (this->unk_850 == 0) && (this->unk_8A1 != 0)) {
        s16 temp = this->actor.shape.rot.y - this->unk_8A2;

        this->currentYaw = this->actor.shape.rot.y = this->unk_8A2;
        this->linearVelocity = this->unk_8A4;

        if (ABS(temp) > 0x4000) {
            this->actor.shape.rot.y = this->unk_8A2 + 0x8000;
        }

        if (this->actor.velocity.y < 0.0f) {
            this->actor.gravity = 0.0f;
            this->actor.velocity.y = 0.0f;
        }
    }

    if (func_800A3BC0(globalCtx, &this->skelAnime) && (this->actor.bgCheckFlags & 1)) {
        if (this->unk_850 != 0) {
            this->unk_850--;
            if (this->unk_850 == 0) {
                func_80853080(this, globalCtx);
            }
        } else if ((this->stateFlags1 & 0x20000000) || (!(this->cylinder.base.acFlags & 2) && (this->unk_8A1 == 0))) {
            if (this->stateFlags1 & 0x20000000) {
                this->unk_850++;
            } else {
                func_80835C58(globalCtx, this, func_80843954, 0);
                this->stateFlags1 |= 0x4000000;
            }
            func_80832264(globalCtx, this, (this->currentYaw != this->actor.shape.rot.y) ? &D_04002F60 : &D_04002DB8);
            func_80832698(this, NA_SE_VO_LI_FREEZE);
        }
    }

    if (this->actor.bgCheckFlags & 2) {
        func_80832770(this, NA_SE_PL_BOUND);
    }
}

void func_80843954(Player* this, GlobalContext* globalCtx) {
    this->stateFlags2 |= 0x60;
    func_808382BC(this);

    func_8083721C(this);

    if (func_800A3BC0(globalCtx, &this->skelAnime) && (this->linearVelocity == 0.0f)) {
        if (this->stateFlags1 & 0x20000000) {
            this->unk_850++;
        } else {
            func_80835C58(globalCtx, this, func_80843A38, 0);
            this->stateFlags1 |= 0x4000000;
        }

        func_808322D0(globalCtx, this, (this->currentYaw != this->actor.shape.rot.y) ? &D_04002F68 : &D_04002DC0);
        this->currentYaw = this->actor.shape.rot.y;
    }
}

void func_80843A38(Player* this, GlobalContext* globalCtx) {
    s32 sp24;

    this->stateFlags2 |= 0x20;
    func_808382BC(this);

    if (this->stateFlags1 & 0x20000000) {
        func_800A3BC0(globalCtx, &this->skelAnime);
    } else {
        sp24 = func_808374A0(globalCtx, this, &this->skelAnime, 16.0f);
        if ((sp24 != 0) && (func_800A3BC0(globalCtx, &this->skelAnime) || (sp24 > 0))) {
            func_80839F90(this, globalCtx);
        }
    }

    func_80832924(this, D_808545DC);
}

void func_80843AE8(GlobalContext* globalCtx, Player* this) {
    if (this->unk_850 != 0) {
        if (this->unk_850 > 0) {
            this->unk_850--;
            if (this->unk_850 == 0) {
                if (this->stateFlags1 & 0x8000000) {
                    SkelAnime_ChangeLinkAnim(globalCtx, &this->skelAnime, &D_04003328, 1.0f, 0.0f,
                                             SkelAnime_GetFrameCount(&D_04003328.genericHeader), 2, -16.0f);
                } else {
                    SkelAnime_ChangeLinkAnim(globalCtx, &this->skelAnime, &D_04002878, 1.0f, 99.0f,
                                             SkelAnime_GetFrameCount(&D_04002878.genericHeader), 2, 0.0f);
                }
                gSaveContext.healthAccumulator = 0x140;
                this->unk_850 = -1;
            }
        } else if (gSaveContext.healthAccumulator == 0) {
            this->stateFlags1 &= ~0x80;
            if (this->stateFlags1 & 0x8000000) {
                func_80838F18(globalCtx, this);
            } else {
                func_80853080(this, globalCtx);
            }
            this->unk_A87 = 20;
            func_80837AFC(this, -20);
            func_800F47FC();
        }
    } else if (this->unk_84F != 0) {
        this->unk_850 = 60;
        func_80839680(globalCtx, this, &this->actor.posRot.pos, &D_808545E4, 5);
        func_8002F7DC(&this->actor, NA_SE_EV_FIATY_HEAL - SFX_FLAG);
        func_800800F8(globalCtx, 0x26B4, 125, &this->actor, 0);
    } else if (globalCtx->unk_10A20 == 2) {
        globalCtx->unk_10A20 = 3;
    }
}

void func_80843CEC(Player* this, GlobalContext* globalCtx) {
    if (this->currentTunic != 1) {
        if ((globalCtx->roomCtx.curRoom.unk_02 == 3) || (D_808535E4 == 9) ||
            ((func_80838144(D_808535E4) >= 0) &&
             !func_80042108(&globalCtx->colCtx, this->actor.floorPoly, this->actor.floorPolySource))) {
            func_8083821C(this);
        }
    }

    func_8083721C(this);

    if (func_800A3BC0(globalCtx, &this->skelAnime)) {
        if (this->actor.type == ACTORTYPE_PLAYER) {
            func_80843AE8(globalCtx, this);
        }
        return;
    }

    if (this->skelAnime.linkAnimetionSeg == &D_04002878) {
        func_80832924(this, D_808545F0);
    } else if (this->skelAnime.linkAnimetionSeg == &D_04002F08) {
        if (func_800A4530(&this->skelAnime, 88.0f)) {
            func_80832770(this, NA_SE_PL_BOUND);
        }
    }
}

void func_80843E14(Player* this, u16 sfxId) {
    func_80832698(this, sfxId);
    if ((this->heldActor != NULL) && (this->heldActor->id == ACTOR_EN_RU1)) {
        Audio_PlayActorSound2(this->heldActor, NA_SE_VO_RT_FALL);
    }
}

s32 func_80843E64(GlobalContext* globalCtx, Player* this) {
    s32 sp34;
    s32 sp30;

    if ((D_808535E4 == 6) || (D_808535E4 == 9)) {
        sp34 = 0;
    } else {
        sp34 = this->fallY;
    }

    Math_ApproxF(&this->linearVelocity, 0.0f, 1.0f);

    this->stateFlags1 &= ~0xC0000;

    if (sp34 >= 400) {
        struct_80854600* sp28;

        if (this->fallY < 800) {
            sp30 = 0;
        } else {
            sp30 = 1;
        }

        sp28 = &D_80854600[sp30];

        if (func_808530E0(globalCtx, sp28->unk_00)) {
            return -1;
        }

        func_80837AE0(this, 40);
        func_808429B4(globalCtx, 32967, 2, 30);
        func_8083264C(this, sp28->unk_01, sp28->unk_02, sp28->unk_03, 0);
        func_8002F7DC(&this->actor, NA_SE_PL_BODY_HIT);
        func_80832698(this, sp28->unk_04);
        return sp30 + 1;
    }

    if (sp34 > 200) {
        sp34 *= 2;

        if (sp34 > 0xFF) {
            sp34 = 0xFF;
        }

        func_8083264C(this, (u8)sp34, (u8)(sp34 * 0.1f), (u8)sp34, 0);

        if (D_808535E4 == 6) {
            func_80832698(this, NA_SE_VO_LI_CLIMB_END);
        }
    }

    func_808328A0(this);

    return 0;
}

void func_8084409C(GlobalContext* globalCtx, Player* this, f32 speedXZ, f32 velocityY) {
    Actor* heldActor = this->heldActor;

    if (!func_80835644(globalCtx, this, heldActor)) {
        heldActor->posRot.rot.y = this->actor.shape.rot.y;
        heldActor->speedXZ = speedXZ;
        heldActor->velocity.y = velocityY;
        func_80834644(globalCtx, this);
        func_8002F7DC(&this->actor, NA_SE_PL_THROW);
        func_80832698(this, NA_SE_VO_LI_SWORD_N);
    }
}

void func_8084411C(Player* this, GlobalContext* globalCtx) {
    f32 sp4C;
    s16 sp4A;

    if (gSaveContext.respawn[RESPAWN_MODE_TOP].data > 40) {
        this->actor.gravity = 0.0f;
    } else if (func_8008E9C4(this)) {
        this->actor.gravity = -1.2f;
    }

    func_80837268(this, &sp4C, &sp4A, 0.0f, globalCtx);

    if (!(this->actor.bgCheckFlags & 1)) {
        if (this->stateFlags1 & 0x800) {
            Actor* heldActor = this->heldActor;
            if (!func_80835644(globalCtx, this, heldActor) && (heldActor->id == ACTOR_EN_NIW) &&
                (D_80858AB4->press.in.button & (A_BUTTON | B_BUTTON | L_CBUTTONS | R_CBUTTONS | D_CBUTTONS))) {
                func_8084409C(globalCtx, this, this->linearVelocity + 2.0f, this->actor.velocity.y + 2.0f);
            }
        }

        func_800A3BC0(globalCtx, &this->skelAnime);

        if (!(this->stateFlags2 & 0x80000)) {
            func_8083DFE0(this, &sp4C, &sp4A);
        }

        func_80836670(this, globalCtx);

        if (((this->stateFlags2 & 0x80000) && (this->unk_84F == 2)) || !func_8083BBA0(this, globalCtx)) {
            if (this->actor.velocity.y < 0.0f) {
                if (this->unk_850 >= 0) {
                    if ((this->actor.bgCheckFlags & 8) || (this->unk_850 == 0) || (this->fallY > 0)) {
                        if ((D_80853600 > 800.0f) || (this->stateFlags1 & 4)) {
                            func_80843E14(this, NA_SE_VO_LI_FALL_S);
                            this->stateFlags1 &= ~4;
                        }
                        SkelAnime_ChangeLinkAnim(globalCtx, &this->skelAnime, &D_04003020, 1.0f, 0.0f, 0.0f, 2, 8.0f);
                        this->unk_850 = -1;
                    }
                } else {
                    if ((this->unk_850 == -1) && (this->fallY > 120.0f) && (D_80853600 > 280.0f)) {
                        this->unk_850 = -2;
                        func_80843E14(this, NA_SE_VO_LI_FALL_L);
                    }

                    if ((this->actor.bgCheckFlags & 0x200) && !(this->stateFlags2 & 0x80000) &&
                        !(this->stateFlags1 & 0x8000800) && (this->linearVelocity > 0.0f)) {
                        if ((this->ledgeDistance >= 150.0f) && (this->unk_84B[this->unk_846] == 0)) {
                            func_8083EC18(this, globalCtx, D_808535F0);
                        } else if ((this->unk_88C >= 2) && (this->ledgeDistance < 150.0f) &&
                                   (((this->actor.posRot.pos.y - this->actor.groundY) + this->ledgeDistance) >
                                    (70.0f * this->ageProperties->unk_08))) {
                            func_800A3310(globalCtx);
                            if (this->stateFlags1 & 4) {
                                func_80832698(this, NA_SE_VO_LI_HOOKSHOT_HANG);
                            } else {
                                func_80832698(this, NA_SE_VO_LI_HANG);
                            }
                            this->actor.posRot.pos.y += this->ledgeDistance;
                            func_8083A5C4(globalCtx, this, this->actor.wallPoly, this->wallDistance,
                                          D_80853CBC[this->unk_15B]);
                            this->actor.shape.rot.y = this->currentYaw += 0x8000;
                            this->stateFlags1 |= 0x2000;
                        }
                    }
                }
            }
        }
    } else {
        LinkAnimetionEntry* anim = D_80853A64[this->unk_15B];
        s32 sp3C;

        if (this->stateFlags2 & 0x80000) {
            if (func_8008E9C4(this)) {
                anim = D_80853D4C[this->unk_84F][2];
            } else {
                anim = D_80853D4C[this->unk_84F][1];
            }
        } else if (this->skelAnime.linkAnimetionSeg == &D_04003148) {
            anim = &D_04003150;
        } else if (func_8008E9C4(this)) {
            anim = &D_04002538;
            func_80833C3C(this);
        } else if (this->fallY <= 80) {
            anim = D_80853A7C[this->unk_15B];
        } else if ((this->fallY < 800) && (this->unk_84B[this->unk_846] == 0) && !(this->stateFlags1 & 0x800)) {
            func_8083BC04(this, globalCtx);
            return;
        }

        sp3C = func_80843E64(globalCtx, this);

        if (sp3C > 0) {
            func_8083A098(this, D_80853A64[this->unk_15B], globalCtx);
            this->skelAnime.animFrameCount = 8.0f;
            if (sp3C == 1) {
                this->unk_850 = 10;
            } else {
                this->unk_850 = 20;
            }
        } else if (sp3C == 0) {
            func_8083A098(this, anim, globalCtx);
        }
    }
}

void func_80844708(Player* this, GlobalContext* globalCtx) {
    Actor* cylinderOc;
    s32 temp;
    s32 sp44;
    DynaPolyActor* wallPolyActor;
    s32 pad;
    f32 sp38;
    s16 sp36;

    this->stateFlags2 |= 0x20;

    cylinderOc = NULL;
    sp44 = func_800A3BC0(globalCtx, &this->skelAnime);

    if (func_800A4530(&this->skelAnime, 8.0f)) {
        func_80837AFC(this, -10);
    }

    if (func_80842964(this, globalCtx) == 0) {
        if (this->unk_850 != 0) {
            Math_ApproxF(&this->linearVelocity, 0.0f, 2.0f);
            temp = func_808374A0(globalCtx, this, &this->skelAnime, 5.0f);
            if ((temp != 0) && ((temp > 0) || sp44)) {
                func_8083A060(this, globalCtx);
            }
        } else {
            if (this->linearVelocity >= 7.0f) {
                if (((this->actor.bgCheckFlags & 0x200) && (D_8085360C < 0x2000)) ||
                    ((this->cylinder.base.maskA & 2) &&
                     (cylinderOc = this->cylinder.base.oc,
                      ((cylinderOc->id == ACTOR_EN_WOOD02) &&
                       (ABS((s16)(this->actor.posRot.rot.y - cylinderOc->yawTowardsLink)) > 0x6000))))) {

                    if (cylinderOc != NULL) {
                        cylinderOc->initPosRot.rot.y = 1;
                    } else if (this->actor.wallPolySource != 50) {
                        wallPolyActor = DynaPolyInfo_GetActor(&globalCtx->colCtx, this->actor.wallPolySource);
                        if ((wallPolyActor != NULL) && (wallPolyActor->actor.id == ACTOR_OBJ_KIBAKO2)) {
                            wallPolyActor->actor.initPosRot.rot.z = 1;
                        }
                    }

                    func_80832264(globalCtx, this, D_80853AAC[this->unk_15B]);
                    this->linearVelocity = -this->linearVelocity;
                    func_808429B4(globalCtx, 33267, 3, 12);
                    func_8083264C(this, 0xFF, 0x14, 0x96, 0);
                    func_8002F7DC(&this->actor, NA_SE_PL_BODY_HIT);
                    func_80832698(this, NA_SE_VO_LI_CLIMB_END);
                    this->unk_850 = 1;
                    return;
                }
            }

            if ((this->skelAnime.animCurrentFrame < 15.0f) || !func_80850224(this, globalCtx)) {
                if (this->skelAnime.animCurrentFrame >= 20.0f) {
                    func_8083A060(this, globalCtx);
                    return;
                }

                func_80837268(this, &sp38, &sp36, 0.018f, globalCtx);

                sp38 *= 1.5f;
                if ((sp38 < 3.0f) || (this->unk_84B[this->unk_846] != 0)) {
                    sp38 = 3.0f;
                }

                func_8083DF68(this, sp38, this->actor.shape.rot.y);

                if (func_8084269C(globalCtx, this)) {
                    func_8002F8F0(&this->actor, NA_SE_PL_ROLL_DUST - SFX_FLAG);
                }

                func_80832924(this, D_8085460C);
            }
        }
    }
}

void func_80844A44(Player* this, GlobalContext* globalCtx) {
    this->stateFlags2 |= 0x20;

    if (func_800A3BC0(globalCtx, &this->skelAnime)) {
        func_80832284(globalCtx, this, &D_04003160);
    }

    Math_ApproxF(&this->linearVelocity, 0.0f, 0.05f);

    if (this->actor.bgCheckFlags & 1) {
        this->actor.colChkInfo.damage = 0x10;
        func_80837C0C(globalCtx, this, 1, 4.0f, 5.0f, this->actor.shape.rot.y, 20);
    }
}

void func_80844AF4(Player* this, GlobalContext* globalCtx) {
    f32 sp2C;
    s16 sp2A;

    this->stateFlags2 |= 0x20;

    this->actor.gravity = -1.2f;
    func_800A3BC0(globalCtx, &this->skelAnime);

    if (!func_80842DF4(globalCtx, this)) {
        func_8084285C(this, 6.0f, 7.0f, 99.0f);

        if (!(this->actor.bgCheckFlags & 1)) {
            func_80837268(this, &sp2C, &sp2A, 0.0f, globalCtx);
            func_8083DFE0(this, &sp2C, &this->currentYaw);
            return;
        }

        if (func_80843E64(globalCtx, this) >= 0) {
            this->swordAnimation += 2;
            func_80837948(globalCtx, this, this->swordAnimation);
            this->unk_845 = 3;
            func_808328A0(this);
        }
    }
}

s32 func_80844BE4(Player* this, GlobalContext* globalCtx) {
    s32 temp;

    if (func_8083ADD4(globalCtx, this)) {
        this->stateFlags2 |= 0x20000;
    } else {
        if (!CHECK_PAD(D_80858AB4->cur, B_BUTTON)) {
            if ((this->unk_858 >= 0.85f) || func_808375D8(this)) {
                temp = D_80854384[func_8008F1A0(this)];
            } else {
                temp = D_80854380[func_8008F1A0(this)];
            }

            func_80837948(globalCtx, this, temp);
            func_80837AFC(this, -8);

            this->stateFlags2 |= 0x20000;
            if (this->unk_84B[this->unk_846] == 0) {
                this->stateFlags2 |= 0x40000000;
            }
        } else {
            return 0;
        }
    }

    return 1;
}

void func_80844CF8(Player* this, GlobalContext* globalCtx) {
    func_80835C58(globalCtx, this, func_80845000, 1);
}

void func_80844D30(Player* this, GlobalContext* globalCtx) {
    func_80835C58(globalCtx, this, func_80845308, 1);
}

void func_80844D68(Player* this, GlobalContext* globalCtx) {
    func_80839FFC(this, globalCtx);
    func_80832318(this);
    func_80832B0C(globalCtx, this, D_80854368[func_8008F1A0(this)]);
    this->currentYaw = this->actor.shape.rot.y;
}

void func_80844DC8(Player* this, GlobalContext* globalCtx) {
    func_80835C58(globalCtx, this, func_80844E68, 1);
    this->unk_868 = 0.0f;
    func_80832284(globalCtx, this, D_80854360[func_8008F1A0(this)]);
    this->unk_850 = 1;
}

void func_80844E3C(Player* this) {
    Math_ApproxF(&this->unk_858, 1.0f, 0.02f);
}

void func_80844E68(Player* this, GlobalContext* globalCtx) {
    f32 sp34;
    s16 sp32;
    s32 temp;

    this->stateFlags1 |= 0x1000;

    if (func_800A3BC0(globalCtx, &this->skelAnime)) {
        func_80832DBC(this);
        func_808355DC(this);
        this->stateFlags1 &= ~0x20000;
        func_80832284(globalCtx, this, D_80854360[func_8008F1A0(this)]);
        this->unk_850 = -1;
    }

    func_8083721C(this);

    if (!func_80842964(this, globalCtx) && (this->unk_850 != 0)) {
        func_80844E3C(this);

        if (this->unk_850 < 0) {
            if (this->unk_858 >= 0.1f) {
                this->unk_845 = 0;
                this->unk_850 = 1;
            } else if (!CHECK_PAD(D_80858AB4->cur, B_BUTTON)) {
                func_80844D68(this, globalCtx);
            }
        } else if (!func_80844BE4(this, globalCtx)) {
            func_80837268(this, &sp34, &sp32, 0.0f, globalCtx);

            temp = func_80840058(this, &sp34, &sp32, globalCtx);
            if (temp > 0) {
                func_80844CF8(this, globalCtx);
            } else if (temp < 0) {
                func_80844D30(this, globalCtx);
            }
        }
    }
}

void func_80845000(Player* this, GlobalContext* globalCtx) {
    s16 temp1;
    s32 temp2;
    f32 sp5C;
    f32 sp58;
    f32 sp54;
    s16 sp52;
    s32 temp4;
    s16 temp5;
    s32 sp44;

    temp1 = this->currentYaw - this->actor.shape.rot.y;
    temp2 = ABS(temp1);

    sp5C = fabsf(this->linearVelocity);
    sp58 = sp5C * 1.5f;

    this->stateFlags1 |= 0x1000;

    if (sp58 < 1.5f) {
        sp58 = 1.5f;
    }

    sp58 = ((temp2 < 0x4000) ? -1.0f : 1.0f) * sp58;

    func_8084029C(this, sp58);

    sp58 = CLAMP(sp5C * 0.5f, 0.5f, 1.0f);

    func_800A431C(globalCtx, &this->skelAnime, D_80854360[func_8008F1A0(this)], 0.0f, D_80854370[func_8008F1A0(this)],
                  this->unk_868 * 0.7241379022598267f, sp58, this->unk_318);

    if (!func_80842964(this, globalCtx) && !func_80844BE4(this, globalCtx)) {
        func_80844E3C(this);
        func_80837268(this, &sp54, &sp52, 0.0f, globalCtx);

        temp4 = func_80840058(this, &sp54, &sp52, globalCtx);

        if (temp4 < 0) {
            func_80844D30(this, globalCtx);
            return;
        }

        if (temp4 == 0) {
            sp54 = 0.0f;
            sp52 = this->currentYaw;
        }

        temp5 = sp52 - this->currentYaw;
        sp44 = ABS(temp5);

        if (sp44 > 0x4000) {
            if (Math_ApproxF(&this->linearVelocity, 0.0f, 1.0f)) {
                this->currentYaw = sp52;
            }
            return;
        }

        func_80077C6C(&this->linearVelocity, sp54 * 0.2f, 1.0f, 0.5f);
        Math_ApproxUpdateScaledS(&this->currentYaw, sp52, sp44 * 0.1f);

        if ((sp54 == 0.0f) && (this->linearVelocity == 0.0f)) {
            func_80844DC8(this, globalCtx);
        }
    }
}

void func_80845308(Player* this, GlobalContext* globalCtx) {
    f32 sp5C;
    f32 sp58;
    f32 sp54;
    s16 sp52;
    s32 temp4;
    s16 temp5;
    s32 sp44;

    sp5C = fabsf(this->linearVelocity);

    this->stateFlags1 |= 0x1000;

    if (sp5C == 0.0f) {
        sp5C = ABS(this->unk_87C) * 0.0015f;
        if (sp5C < 400.0f) {
            sp5C = 0.0f;
        }
        func_8084029C(this, ((this->unk_87C >= 0) ? 1 : -1) * sp5C);
    } else {
        sp58 = sp5C * 1.5f;
        if (sp58 < 1.5f) {
            sp58 = 1.5f;
        }
        func_8084029C(this, sp58);
    }

    sp58 = CLAMP(sp5C * 0.5f, 0.5f, 1.0f);

    func_800A431C(globalCtx, &this->skelAnime, D_80854360[func_8008F1A0(this)], 0.0f, D_80854378[func_8008F1A0(this)],
                  this->unk_868 * 0.7241379022598267f, sp58, this->unk_318);

    if (!func_80842964(this, globalCtx) && !func_80844BE4(this, globalCtx)) {
        func_80844E3C(this);
        func_80837268(this, &sp54, &sp52, 0.0f, globalCtx);

        temp4 = func_80840058(this, &sp54, &sp52, globalCtx);

        if (temp4 > 0) {
            func_80844CF8(this, globalCtx);
            return;
        }

        if (temp4 == 0) {
            sp54 = 0.0f;
            sp52 = this->currentYaw;
        }

        temp5 = sp52 - this->currentYaw;
        sp44 = ABS(temp5);

        if (sp44 > 0x4000) {
            if (Math_ApproxF(&this->linearVelocity, 0.0f, 1.0f)) {
                this->currentYaw = sp52;
            }
            return;
        }

        func_80077C6C(&this->linearVelocity, sp54 * 0.2f, 1.0f, 0.5f);
        Math_ApproxUpdateScaledS(&this->currentYaw, sp52, sp44 * 0.1f);

        if ((sp54 == 0.0f) && (this->linearVelocity == 0.0f) && (sp5C == 0.0f)) {
            func_80844DC8(this, globalCtx);
        }
    }
}

void func_80845668(Player* this, GlobalContext* globalCtx) {
    s32 sp3C;
    f32 temp1;
    s32 temp2;
    f32 temp3;

    this->stateFlags2 |= 0x20;
    sp3C = func_800A3BC0(globalCtx, &this->skelAnime);

    if (this->skelAnime.linkAnimetionSeg == &D_04002D48) {
        this->linearVelocity = 1.0f;

        if (func_800A4530(&this->skelAnime, 8.0f)) {
            temp1 = this->ledgeDistance;

            if (temp1 > this->ageProperties->unk_0C) {
                temp1 = this->ageProperties->unk_0C;
            }

            if (this->stateFlags1 & 0x8000000) {
                temp1 *= 0.085f;
            } else {
                temp1 *= 0.072f;
            }

            if (LINK_IS_CHILD) {
                temp1 += 1.0f;
            }

            func_80838940(this, NULL, temp1, globalCtx, NA_SE_VO_LI_AUTO_JUMP);
            this->unk_850 = -1;
            return;
        }
    } else {
        temp2 = func_808374A0(globalCtx, this, &this->skelAnime, 4.0f);

        if (temp2 == 0) {
            this->stateFlags1 &= ~0x44000;
            return;
        }

        if ((sp3C != 0) || (temp2 > 0)) {
            func_8083C0E8(this, globalCtx);
            this->stateFlags1 &= ~0x44000;
            return;
        }

        temp3 = 0.0f;

        if (this->skelAnime.linkAnimetionSeg == &D_040032E8) {
            if (func_800A4530(&this->skelAnime, 30.0f)) {
                func_8083D0A8(globalCtx, this, 10.0f);
            }
            temp3 = 50.0f;
        } else if (this->skelAnime.linkAnimetionSeg == &D_04002D40) {
            temp3 = 30.0f;
        } else if (this->skelAnime.linkAnimetionSeg == &D_04002D38) {
            temp3 = 16.0f;
        }

        if (func_800A4530(&this->skelAnime, temp3)) {
            func_808328A0(this);
            func_80832698(this, NA_SE_VO_LI_CLIMB_END);
        }

        if ((this->skelAnime.linkAnimetionSeg == &D_04002D38) || (this->skelAnime.animCurrentFrame > 5.0f)) {
            if (this->unk_850 == 0) {
                func_80832854(this);
                this->unk_850 = 1;
            }
            Math_ApproxF(&this->actor.shape.unk_08, 0.0f, 150.0f);
        }
    }
}

void func_808458D0(Player* this, GlobalContext* globalCtx) {
    this->stateFlags2 |= 0x60;
    func_800A3BC0(globalCtx, &this->skelAnime);

    if (((this->stateFlags1 & 0x800) && (this->heldActor != NULL) && (this->getItemId == 0)) ||
        !func_80836670(this, globalCtx)) {
        this->unk_A74(globalCtx, this);
    }
}

#ifdef NON_MATCHING
// regalloc differences
s32 func_80845964(GlobalContext* globalCtx, Player* this, CsCmdActorAction* arg2, f32 arg3, s16 arg4, s32 arg5) {
    if ((arg5 != 0) && (this->linearVelocity == 0.0f)) {
        return func_800A3BC0(globalCtx, &this->skelAnime);
    }

    if (arg5 != 2) {
        f32 sp34 = R_UPDATE_RATE * 0.5f;
        f32 selfDistX = arg2->endPos.x - this->actor.posRot.pos.x;
        f32 selfDistZ = arg2->endPos.z - this->actor.posRot.pos.z;
        f32 sp28 = sqrtf(SQ(selfDistX) + SQ(selfDistZ)) / sp34;
        s32 sp24 = (arg2->endFrame - globalCtx->csCtx.frames) + 1;

        arg4 = atan2s(selfDistX, selfDistZ);

        if (arg5 == 1) {
            f32 distX = arg2->endPos.x - arg2->startPos.x;
            f32 distZ = arg2->endPos.z - arg2->startPos.z;
            s32 temp = (((sqrtf(SQ(distX) + SQ(distZ)) / sp34) / (arg2->endFrame - arg2->startFrame)) / 1.5f) * 4.0f;

            if (temp >= sp24) {
                arg4 = this->actor.shape.rot.y;
                arg3 = 0.0f;
            } else {
                arg3 = sp28 / ((sp24 - temp) + 1);
            }
        } else {
            arg3 = sp28 / sp24;
        }
    }

    this->stateFlags2 |= 0x20;
    func_80841EE4(this, globalCtx);
    func_8083DF68(this, arg3, arg4);

    if ((arg3 == 0.0f) && (this->linearVelocity == 0.0f)) {
        func_8083BF50(this, globalCtx);
    }

    return 0;
}
#else
s32 func_80845964(GlobalContext* globalCtx, Player* this, CsCmdActorAction* arg2, f32 arg3, s16 arg4, s32 arg5);
#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_player_actor/func_80845964.s")
#endif

s32 func_80845BA0(GlobalContext* arg0, Player* arg1, f32* arg2, s32 arg3) {
    f32 dx = arg1->unk_450.x - arg1->actor.posRot.pos.x;
    f32 dz = arg1->unk_450.z - arg1->actor.posRot.pos.z;
    s32 sp2C = sqrtf(SQ(dx) + SQ(dz));
    s16 yaw = Math_Vec3f_Yaw(&arg1->actor.posRot.pos, &arg1->unk_450);

    if (sp2C < arg3) {
        *arg2 = 0.0f;
        yaw = arg1->actor.shape.rot.y;
    }

    if (func_80845964(arg0, arg1, NULL, *arg2, yaw, 2)) {
        return 0;
    }

    return sp2C;
}

s32 func_80845C68(GlobalContext* globalCtx, s32 arg1) {
    if (arg1 == 0) {
        Gameplay_SetupRespawnPoint(globalCtx, RESPAWN_MODE_DOWN, 0xDFF);
    }
    gSaveContext.respawn[RESPAWN_MODE_DOWN].data = 0;
    return arg1;
}

void func_80845CA4(Player* this, GlobalContext* globalCtx) {
    f32 sp3C;
    s32 temp;
    f32 sp34;
    s32 sp30;
    s32 pad;

    if (!func_8083B040(this, globalCtx)) {
        if (this->unk_850 == 0) {
            func_800A3BC0(globalCtx, &this->skelAnime);

            if (DECR(this->unk_42E) == 0) {
                this->linearVelocity = 0.1f;
                this->unk_850 = 1;
            }
        } else if (this->unk_84F == 0) {
            sp3C = 5.0f * D_808535E8;

            if (func_80845BA0(globalCtx, this, &sp3C, -1) < 30) {
                this->unk_84F = 1;
                this->stateFlags1 |= 0x20000000;
                this->unk_450.x = this->unk_45C.x;
                this->unk_450.z = this->unk_45C.z;
            }
        } else {
            sp34 = 5.0f;
            sp30 = 20;

            if (this->stateFlags1 & 1) {
                sp34 = gSaveContext.unk_13BC;
                if (D_808535F4 != 0) {
                    this->unk_450.x = (Math_Sins(D_808535FC) * 400.0f) + this->actor.posRot.pos.x;
                    this->unk_450.z = (Math_Coss(D_808535FC) * 400.0f) + this->actor.posRot.pos.z;
                }
            } else if (this->unk_850 < 0) {
                this->unk_850++;
                sp34 = gSaveContext.unk_13BC;
                sp30 = -1;
            }

            temp = func_80845BA0(globalCtx, this, &sp34, sp30);

            if ((this->unk_850 == 0) ||
                ((temp == 0) && (this->linearVelocity == 0.0f) && (Gameplay_GetCamera(globalCtx, 0)->unk_14C & 0x10))) {
                func_8005B1A4(Gameplay_GetCamera(globalCtx, 0));
                func_80845C68(globalCtx, gSaveContext.respawn[RESPAWN_MODE_DOWN].data);
                if (!func_8083B644(this, globalCtx)) {
                    func_8083CF5C(this, globalCtx);
                }
            }
        }
    }

    if (this->stateFlags1 & 0x800) {
        func_80836670(this, globalCtx);
    }
}

void func_80845EF8(Player* this, GlobalContext* globalCtx) {
    s32 sp2C;

    this->stateFlags2 |= 0x20;
    sp2C = func_800A3BC0(globalCtx, &this->skelAnime);

    func_80836670(this, globalCtx);

    if (sp2C) {
        if (this->unk_850 == 0) {
            if (DECR(this->unk_42E) == 0) {
                this->unk_850 = 1;
                this->skelAnime.animFrameCount = this->skelAnime.totalFrames - 1.0f;
            }
        } else {
            func_8083C0E8(this, globalCtx);
            if (globalCtx->roomCtx.prevRoom.num >= 0) {
                func_80097534(globalCtx, &globalCtx->roomCtx);
            }
            func_8005B1A4(Gameplay_GetCamera(globalCtx, 0));
            Gameplay_SetupRespawnPoint(globalCtx, 0, 0xDFF);
        }
        return;
    }

    if (!(this->stateFlags1 & 0x20000000) && func_800A4530(&this->skelAnime, 15.0f)) {
        globalCtx->unk_11D54(this, globalCtx);
    }
}

void func_80846050(Player* this, GlobalContext* globalCtx) {
    Actor* interactRangeActor;

    func_8083721C(this);

    if (func_800A3BC0(globalCtx, &this->skelAnime)) {
        func_80839F90(this, globalCtx);
        func_80835688(this, globalCtx);
        return;
    }

    if (func_800A4530(&this->skelAnime, 4.0f)) {
        interactRangeActor = this->interactRangeActor;
        if (!func_80835644(globalCtx, this, interactRangeActor)) {
            this->heldActor = interactRangeActor;
            this->actor.child = interactRangeActor;
            interactRangeActor->parent = &this->actor;
            interactRangeActor->bgCheckFlags &= 0xFF00;
            this->unk_3BC.y = interactRangeActor->shape.rot.y - this->actor.shape.rot.y;
        }
        return;
    }

    Math_ApproxUpdateScaledS(&this->unk_3BC.y, 0, 4000);
}

void func_80846120(Player* this, GlobalContext* globalCtx) {
    if (func_800A3BC0(globalCtx, &this->skelAnime) && ((this->unk_850++ <= 20) ^ 1)) {
        if (!func_8083B040(this, globalCtx)) {
            func_8083A098(this, &D_04002FA0, globalCtx);
        }
        return;
    }

    if (func_800A4530(&this->skelAnime, 41.0f)) {
        BgHeavyBlock* heavyBlock = (BgHeavyBlock*)this->interactRangeActor;
        this->heldActor = &heavyBlock->dyna.actor;
        this->actor.child = &heavyBlock->dyna.actor;
        heavyBlock->dyna.actor.parent = &this->actor;
        func_8002DBD0(&heavyBlock->dyna.actor, &heavyBlock->unk_164, &this->unk_3B0);
        return;
    }

    if (func_800A4530(&this->skelAnime, 229.0f)) {
        Actor* heldActor = this->heldActor;
        heldActor->speedXZ = Math_Sins(heldActor->shape.rot.x) * 40.0f;
        heldActor->velocity.y = Math_Coss(heldActor->shape.rot.x) * 40.0f;
        heldActor->gravity = -2.0f;
        heldActor->minVelocityY = -30.0f;
        func_808323B4(globalCtx, this);
        return;
    }

    func_80832924(this, D_8085461C);
}

void func_80846260(Player* this, GlobalContext* globalCtx) {
    func_8083721C(this);

    if (func_800A3BC0(globalCtx, &this->skelAnime)) {
        func_80832284(globalCtx, this, &D_040032C0);
        this->unk_850 = 1;
        return;
    }

    if (this->unk_850 == 0) {
        if (func_800A4530(&this->skelAnime, 27.0f)) {
            Actor* interactRangeActor = this->interactRangeActor;
            this->heldActor = interactRangeActor;
            this->actor.child = interactRangeActor;
            interactRangeActor->parent = &this->actor;
            return;
        }

        if (func_800A4530(&this->skelAnime, 25.0f)) {
            func_80832698(this, NA_SE_VO_LI_SWORD_L);
            return;
        }

    } else if (D_80858AB4->press.in.button & (A_BUTTON | B_BUTTON | L_CBUTTONS | R_CBUTTONS | D_CBUTTONS)) {
        func_80835C58(globalCtx, this, func_80846358, 1);
        func_80832264(globalCtx, this, &D_040032B8);
    }
}

void func_80846358(Player* this, GlobalContext* globalCtx) {
    if (func_800A3BC0(globalCtx, &this->skelAnime)) {
        func_80839F90(this, globalCtx);
        return;
    }

    if (func_800A4530(&this->skelAnime, 6.0f)) {
        Actor* heldActor = this->heldActor;
        heldActor->posRot.rot.y = this->actor.shape.rot.y;
        heldActor->speedXZ = 10.0f;
        heldActor->velocity.y = 20.0f;
        func_80834644(globalCtx, this);
        func_8002F7DC(&this->actor, NA_SE_PL_THROW);
        func_80832698(this, NA_SE_VO_LI_SWORD_N);
    }
}

void func_80846408(Player* this, GlobalContext* globalCtx) {
    if (func_800A3BC0(globalCtx, &this->skelAnime)) {
        func_80832284(globalCtx, this, &D_04003070);
        this->unk_850 = 15;
        return;
    }

    if (this->unk_850 != 0) {
        this->unk_850--;
        if (this->unk_850 == 0) {
            func_8083A098(this, &D_04003068, globalCtx);
            this->stateFlags1 &= ~0x800;
            func_80832698(this, NA_SE_VO_LI_DAMAGE_S);
        }
    }
}

void func_808464B0(Player* this, GlobalContext* globalCtx) {
    func_8083721C(this);

    if (func_800A3BC0(globalCtx, &this->skelAnime)) {
        func_80839F90(this, globalCtx);
        return;
    }

    if (func_800A4530(&this->skelAnime, 4.0f)) {
        Actor* heldActor = this->heldActor;
        if (!func_80835644(globalCtx, this, heldActor)) {
            heldActor->velocity.y = 0.0f;
            heldActor->speedXZ = 0.0f;
            func_80834644(globalCtx, this);
            if (heldActor->id == ACTOR_EN_BOM_CHU) {
                func_8083B8F4(this, globalCtx);
            }
        }
    }
}

void func_80846578(Player* this, GlobalContext* globalCtx) {
    f32 sp34;
    s16 sp32;

    func_8083721C(this);

    if (func_800A3BC0(globalCtx, &this->skelAnime) ||
        ((this->skelAnime.animCurrentFrame >= 8.0f) && func_80837268(this, &sp34, &sp32, 0.018f, globalCtx))) {
        func_80839F90(this, globalCtx);
        return;
    }

    if (func_800A4530(&this->skelAnime, 3.0f)) {
        func_8084409C(globalCtx, this, this->linearVelocity + 8.0f, 12.0f);
    }
}

void func_8084663C(Actor* thisx, GlobalContext* globalCtx) {
}

void func_80846648(GlobalContext* globalCtx, Player* this) {
    this->actor.update = func_8084663C;
    this->actor.draw = NULL;
}

void func_80846660(GlobalContext* globalCtx, Player* this) {
    func_80835C58(globalCtx, this, func_8084F710, 0);
    if ((globalCtx->sceneNum == SCENE_SPOT06) && (gSaveContext.sceneSetupIndex >= 4)) {
        this->unk_84F = 1;
    }
    this->stateFlags1 |= 0x20000000;
    SkelAnime_ChangeLinkAnim(globalCtx, &this->skelAnime, &D_04003298, 2.0f / 3.0f, 0.0f, 24.0f, 2, 0.0f);
    this->actor.posRot.pos.y += 800.0f;
}

void func_80846720(GlobalContext* globalCtx, Player* this, s32 arg2) {
    s32 sp24;
    s32 sp20;
    s32 age;

    age = gSaveContext.linkAge;
    sp24 = D_808546F0[age];
    sp20 = D_80853E9C[sp24];

    func_80835EFC(this);
    func_808323B4(globalCtx, this);

    this->unk_152 = sp24;
    this->unk_159 = func_8008E9F8(this, sp20);

    func_8083399C(globalCtx, this, sp20);
    func_80834644(globalCtx, this);

    if (arg2 != 0) {
        func_8002F7DC(&this->actor, NA_SE_IT_SWORD_PICKOUT);
    }
}

void func_808467D4(GlobalContext* globalCtx, Player* this) {
    func_80835C58(globalCtx, this, func_8084E9AC, 0);
    this->stateFlags1 |= 0x20000000;
    Math_Vec3f_Copy(&this->actor.posRot.pos, &D_808546F4);
    this->currentYaw = this->actor.shape.rot.y = -0x8000;
    SkelAnime_ChangeLinkAnim(globalCtx, &this->skelAnime, this->ageProperties->unk_A0, 2.0f / 3.0f, 0.0f, 0.0f, 2,
                             0.0f);
    func_80832F54(globalCtx, this, 0x28F);
    if (LINK_IS_ADULT) {
        func_80846720(globalCtx, this, 0);
    }
    this->unk_850 = 20;
}

void func_808468A8(GlobalContext* globalCtx, Player* this) {
    func_80835C58(globalCtx, this, func_8084F9A0, 0);
    func_80832F54(globalCtx, this, 0x9B);
}

void func_808468E8(GlobalContext* globalCtx, Player* this) {
    func_808389E8(this, &D_04002FE0, 12.0f, globalCtx);
    func_80835C58(globalCtx, this, func_8084F9C0, 0);
    this->stateFlags1 |= 0x20000000;
    this->dropY = this->actor.posRot.pos.y;
    func_800800F8(globalCtx, 0x13F6, 40, &this->actor, 0);
}

void func_80846978(GlobalContext* globalCtx, Player* this) {
    func_80837C0C(globalCtx, this, 1, 2.0f, 2.0f, this->actor.shape.rot.y + 0x8000, 0);
}

void func_808469BC(GlobalContext* globalCtx, Player* this) {
    func_80835C58(globalCtx, this, func_8084F698, 0);
    this->actor.draw = NULL;
    this->stateFlags1 |= 0x20000000;
}

Actor* func_80846A00(GlobalContext* globalCtx, Player* this, s32 arg2) {
    return Actor_Spawn(&globalCtx->actorCtx, globalCtx, D_80854700[arg2], this->actor.posRot.pos.x,
                       this->actor.posRot.pos.y, this->actor.posRot.pos.z, 0, 0, 0, 0);
}

void func_80846A68(GlobalContext* globalCtx, Player* this) {
    this->actor.draw = NULL;
    func_80835C58(globalCtx, this, func_8085076C, 0);
    this->stateFlags1 |= 0x20000000;
}

void func_80846AAC(Player* this, GlobalContext* globalCtx, SkeletonHeader* skelHeader) {
    this->ageProperties = &D_80853428[gSaveContext.linkAge];
    Actor_ProcessInitChain(&this->actor, D_80854708);
    this->swordEffectIndex = TOTAL_EFFECT_COUNT;
    this->currentYaw = this->actor.posRot.rot.y;
    func_80834644(globalCtx, this);
    SkelAnime_InitLinkAnimetion(globalCtx, &this->skelAnime, skelHeader, D_80853914[this->unk_15B], 9, this->unk_1F8,
                                this->unk_288, 22);
    this->skelAnime.unk_3E = D_80854730;
    SkelAnime_InitLinkAnimetion(globalCtx, &this->skelAnime2, skelHeader, func_80833338(this), 9, this->unk_70C,
                                this->unk_79C, 22);
    this->skelAnime2.unk_3E = D_80854730;
    Effect_Add(globalCtx, &this->swordEffectIndex, EFFECT_BLURE2, 0, 0, &D_8085470C);
    ActorShape_Init(&this->actor.shape, 0.0f, ActorShadow_DrawFunc_Teardrop, this->ageProperties->unk_04);
    this->unk_46C = -1;
    Collider_InitCylinder(globalCtx, &this->cylinder);
    Collider_SetCylinder(globalCtx, &this->cylinder, &this->actor, &D_80854624);
    Collider_InitQuad(globalCtx, &this->quads[0]);
    Collider_SetQuad(globalCtx, &this->quads[0], &this->actor, &D_80854650);
    Collider_InitQuad(globalCtx, &this->quads[1]);
    Collider_SetQuad(globalCtx, &this->quads[1], &this->actor, &D_80854650);
    Collider_InitQuad(globalCtx, &this->quads[2]);
    Collider_SetQuad(globalCtx, &this->quads[2], &this->actor, &D_808546A0);
}

#ifdef NON_MATCHING
// mostly regalloc differences
void Player_Init(Actor* thisx, GlobalContext* globalCtx) {
    s32 age;
    Player* this = THIS;
    Scene* scene = globalCtx->loadedScene;
    s32 temp;
    u8 temp2;
    s32 sp50;
    s32 sp4C;
    s32 initMode;
    s16 params;
    u16 unk_13C0;

    globalCtx->unk_11E5C = globalCtx->bombchuBowlingAmmo = 0;

    globalCtx->unk_11D3C = func_80846AAC;
    globalCtx->unk_11D40 = func_80848F9C;
    globalCtx->unk_11D44 = func_80852EC8;
    globalCtx->unk_11D48 = func_80852EFC;
    globalCtx->unk_11D4C = func_80852F38;
    globalCtx->unk_11D50 = func_80852FFC;
    globalCtx->unk_11D54 = func_80853080;
    globalCtx->unk_11D58 = func_808530E0;
    globalCtx->unk_11D5C = func_80853148;

    this->actor.room = -1;
    this->ageProperties = &D_80853428[gSaveContext.linkAge];
    this->unk_154 = this->heldItemActionParam = -1;
    this->unk_152 = ITEM_NONE;

    func_80835F44(globalCtx, this, ITEM_NONE);
    func_8008ECAC(globalCtx, this);
    this->unk_153 = this->currentBoots;
    func_80846AAC(this, globalCtx, D_80125B70[age = gSaveContext.linkAge]);
    this->giObjectSegment = (void*)(((u32)ZeldaArena_MallocDebug(0x3008, "../z_player.c", 17175) + 8) & ~0xF);

    sp50 = gSaveContext.respawnFlag;

    if (sp50 != 0) {
        if (sp50 == -3) {
            this->actor.params = gSaveContext.respawn[RESPAWN_MODE_RETURN].playerParams;
        } else {
            if ((sp50 == 1) || (sp50 == -1)) {
                this->unk_A86 = -2;
            }

            temp = sp50 - 1;
            if (sp50 < 0) {
                sp4C = 0;
            } else {
                sp4C = temp;
                Math_Vec3f_Copy(&this->actor.posRot.pos, &gSaveContext.respawn[sp50 - 1].pos);
                Math_Vec3f_Copy(&this->actor.initPosRot.pos, &this->actor.posRot.pos);
                Math_Vec3f_Copy(&this->actor.pos4, &this->actor.posRot.pos);
                this->dropY = this->actor.posRot.pos.y;
                this->currentYaw = this->actor.shape.rot.y = gSaveContext.respawn[temp].yaw;
                this->actor.params = gSaveContext.respawn[temp].playerParams;
            }

            globalCtx->actorCtx.flags.tempSwch = gSaveContext.respawn[sp4C].tempSwchFlags & 0xFFFFFF;
            globalCtx->actorCtx.flags.tempCollect = gSaveContext.respawn[sp4C].tempCollectFlags;
        }
    }

    if ((sp50 == 0) || (sp50 < -1)) {
        if ((scene->titleFile.vromStart != scene->titleFile.vromEnd) && (gSaveContext.unk_13C7 != 0) &&
            (gSaveContext.sceneSetupIndex < 4) &&
            (gEntranceTable[gSaveContext.entranceIndex + gSaveContext.sceneSetupIndex].field & 0x4000) &&
            ((globalCtx->sceneNum != SCENE_DDAN) || (gSaveContext.eventChkInf[11] & 1)) &&
            ((globalCtx->sceneNum != SCENE_NIGHT_SHOP) || (gSaveContext.eventChkInf[2] & 0x20))) {
            TitleCard_InitPlaceName(globalCtx, &globalCtx->actorCtx.titleCtx, this->giObjectSegment, 0xA0, 0x78, 0x90,
                                    0x18, 0x14);
        }
        gSaveContext.unk_13C7 = 1;
    }

    if (sp50 == 2) {
        temp2 = 1;
    } else {
        temp2 = 0;
    }

    if (func_80845C68(globalCtx, temp2) == 0) {
        params = this->actor.params;
        gSaveContext.respawn[RESPAWN_MODE_DOWN].playerParams = (params & 0xFF) | 0xD00;
    }

    gSaveContext.respawn[RESPAWN_MODE_DOWN].data = 1;

    if (globalCtx->sceneNum <= SCENE_GANONTIKA_SONOGO) {
        gSaveContext.infTable[26] |= gBitFlags[globalCtx->sceneNum];
    }

    initMode = (this->actor.params & 0xF00) >> 8;
    if ((initMode == 5) || (initMode == 6)) {
        if (gSaveContext.cutsceneIndex >= 0xFFF0) {
            initMode = 13;
        }
    }

    D_80854738[initMode](globalCtx, this);

    if (initMode != 0) {
        if ((gSaveContext.gameMode == 0) || (gSaveContext.gameMode == 3)) {
            this->navi = func_80839680(globalCtx, this, &this->actor.posRot.pos, &D_80854778, 0);
            if (gSaveContext.dogParams != 0) {
                gSaveContext.dogParams |= 0x8000;
            }
        }
    }

    if (gSaveContext.nayrusLoveTimer != 0) {
        gSaveContext.unk_13F0 = 3;
        func_80846A00(globalCtx, this, 1);
        this->unk_692 &= ~0x40;
    }

    if (gSaveContext.unk_13C0 != 0) {
        unk_13C0 = gSaveContext.unk_13C0;
        Audio_PlayActorSound2(&this->actor, unk_13C0);
        gSaveContext.unk_13C0 = 0;
    }

    Map_SavePlayerInitialInfo(globalCtx);
    MREG(64) = 0;
}
#else
#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_player_actor/Player_Init.s")
#endif

void func_808471F4(s16* pValue) {
    s16 step;

    step = (ABS(*pValue) * 100.0f) / 1000.0f;
    step = CLAMP(step, 400, 4000);

    Math_ApproxUpdateScaledS(pValue, 0, step);
}

void func_80847298(Player* this) {
    s16 sp26;

    if (!(this->unk_6AE & 2)) {
        sp26 = this->actor.posRot2.rot.y - this->actor.shape.rot.y;
        func_808471F4(&sp26);
        this->actor.posRot2.rot.y = this->actor.shape.rot.y + sp26;
    }

    if (!(this->unk_6AE & 1)) {
        func_808471F4(&this->actor.posRot2.rot.x);
    }

    if (!(this->unk_6AE & 8)) {
        func_808471F4(&this->unk_6B6);
    }

    if (!(this->unk_6AE & 0x40)) {
        func_808471F4(&this->unk_6BC);
    }

    if (!(this->unk_6AE & 4)) {
        func_808471F4(&this->actor.posRot2.rot.z);
    }

    if (!(this->unk_6AE & 0x10)) {
        func_808471F4(&this->unk_6B8);
    }

    if (!(this->unk_6AE & 0x20)) {
        func_808471F4(&this->unk_6BA);
    }

    if (!(this->unk_6AE & 0x80)) {
        if (this->unk_6B0 != 0) {
            func_808471F4(&this->unk_6B0);
        } else {
            func_808471F4(&this->unk_6BE);
        }
    }

    if (!(this->unk_6AE & 0x100)) {
        func_808471F4(&this->unk_6C0);
    }

    this->unk_6AE = 0;
}

void func_808473D4(GlobalContext* globalCtx, Player* this) {
    if ((func_8010BDBC(&globalCtx->msgCtx) == 0) && (this->actor.type == ACTORTYPE_PLAYER)) {
        Actor* heldActor = this->heldActor;
        Actor* interactRangeActor = this->interactRangeActor;
        s32 sp24;
        s32 sp20 = this->unk_84B[this->unk_846];
        s32 sp1C = func_808332B8(this);
        s32 doAction = 0xA;

        if (!func_8008E8DC(globalCtx, this)) {
            if (this->stateFlags1 & 0x100000) {
                doAction = 3;
            } else if ((this->heldItemActionParam == 2) && (this->stickFlameTimer != 0)) {
                if (this->stickFlameTimer == 2) {
                    doAction = 0x14;
                }
            } else if ((func_8084E3C4 != this->actionFunc) && !(this->stateFlags2 & 0x40000)) {
                if ((this->unk_42C != 0) &&
                    (!(this->stateFlags1 & 0x800) || ((heldActor != NULL) && (heldActor->id == ACTOR_EN_RU1)))) {
                    doAction = 4;
                } else if ((!(this->stateFlags1 & 0x800) || (heldActor == NULL)) && (interactRangeActor != NULL) &&
                           ((!sp1C && (this->getItemId == 0)) ||
                            ((this->getItemId < 0) && !(this->stateFlags1 & 0x8000000)))) {
                    if (this->getItemId < 0) {
                        doAction = 4;
                    } else if ((interactRangeActor->id == ACTOR_BG_TOKI_SWD) && (gSaveContext.linkAge == 0)) {
                        doAction = 0xC;
                    } else {
                        doAction = 0x11;
                    }
                } else if (!sp1C && (this->stateFlags2 & 1)) {
                    doAction = 0x11;
                } else if ((this->stateFlags2 & 4) || (!(this->stateFlags1 & 0x800000) && (this->rideActor != NULL))) {
                    doAction = 0xB;
                } else if ((this->stateFlags1 & 0x800000) &&
                           !((((this->rideActor->unk_14C == 5) || (this->rideActor->unk_14C == 0) ||
                               (this->rideActor->unk_14C == 6)) &&
                              !(this->rideActor->unk_1F0 & 0x80000) && !(this->rideActor->unk_1F0 & 0x2000000))
                                 ? true
                                 : false) &&
                           (func_8084D3E4 != this->actionFunc)) {
                    if ((this->stateFlags2 & 2) && (this->naviTargetActor != NULL)) {
                        if (this->naviTargetActor->type == ACTORTYPE_NPC) {
                            doAction = 0xF;
                        } else {
                            doAction = 1;
                        }
                    } else if (!func_8002DD78(this) && !(this->stateFlags1 & 0x100000)) {
                        doAction = 8;
                    }
                } else if ((this->stateFlags2 & 2) && (this->naviTargetActor != NULL)) {
                    if (this->naviTargetActor->type == ACTORTYPE_NPC) {
                        doAction = 0xF;
                    } else {
                        doAction = 1;
                    }
                } else if ((this->stateFlags1 & 0x202000) ||
                           ((this->stateFlags1 & 0x800000) && (this->stateFlags2 & 0x400000))) {
                    doAction = 0xD;
                } else if (this->stateFlags2 & 0x10000) {
                    doAction = 2;
                } else if ((this->stateFlags1 & 0x800) && (this->getItemId == 0) && (heldActor != NULL)) {
                    if ((this->actor.bgCheckFlags & 1) || (heldActor->id == ACTOR_EN_NIW)) {
                        if (func_8083EAF0(this, heldActor) == 0) {
                            doAction = 0xC;
                        } else {
                            doAction = 9;
                        }
                    }
                } else if (!(this->stateFlags1 & 0x8000000) && func_8083A0D4(this) && (this->getItemId < 0x7E)) {
                    doAction = 0x11;
                } else if (this->stateFlags2 & 0x800) {
                    sp24 = (D_80854784[CUR_UPG_VALUE(UPG_SCALE)] - this->actor.waterY) / 40.0f;
                    sp24 = CLAMP(sp24, 0, 7);
                    doAction = D_80854790[sp24];
                } else if (sp1C && !(this->stateFlags2 & 0x400)) {
                    doAction = 7;
                } else if (!sp1C && (!(this->stateFlags1 & 0x400000) || func_80833BCC(this) || !func_8008E9D0(this))) {
                    if ((!(this->stateFlags1 & 0x4000) && (sp20 <= 0) &&
                         (func_8008E9C4(this) ||
                          ((D_808535E4 != 7) &&
                           (func_80833B2C(this) || ((globalCtx->roomCtx.curRoom.unk_03 != 2) &&
                                                    !(this->stateFlags1 & 0x400000) && (sp20 == 0))))))) {
                        doAction = 0;
                    } else if ((globalCtx->roomCtx.curRoom.unk_03 != 2) && func_80833BCC(this) && (sp20 > 0)) {
                        doAction = 5;
                    } else if ((this->heldItemActionParam >= 3) ||
                               ((this->stateFlags2 & 0x100000) &&
                                (globalCtx->actorCtx.targetCtx.arrowPointedActor == NULL))) {
                        doAction = 0x13;
                    }
                }
            }
        }

        if (doAction != 0x13) {
            this->unk_837 = 20;
        } else if (this->unk_837 != 0) {
            doAction = 0xA;
            this->unk_837--;
        }

        Interface_SetDoAction(globalCtx, doAction);

        if (this->stateFlags2 & 0x200000) {
            if (this->unk_664 != 0) {
                Interface_SetNaviCall(globalCtx, 0x1E);
            } else {
                Interface_SetNaviCall(globalCtx, 0x1D);
            }
            Interface_SetNaviCall(globalCtx, 0x1E);
        } else {
            Interface_SetNaviCall(globalCtx, 0x1F);
        }
    }
}

s32 func_80847A78(Player* this) {
    s32 cond;

    if ((this->currentBoots == 2) && (this->unk_893 != 0)) {
        this->unk_893--;
    } else {
        this->unk_893 = 0;
    }

    cond = (this->currentBoots == 2) &&
           ((this->actor.waterY >= 0.0f) || (func_80838144(D_808535E4) >= 0) || func_8083816C(D_808535E4));

    if (cond && (this->actor.bgCheckFlags & 1) && (this->unk_893 != 0)) {
        this->actor.bgCheckFlags &= ~1;
    }

    if (this->actor.bgCheckFlags & 1) {
        if (!cond) {
            this->unk_893 = 0x13;
        }
        return 0;
    }

    D_808535E4 = 0;
    this->unk_898 = this->unk_89A = D_80853610 = 0;

    return 1;
}

#ifdef NON_MATCHING
// regalloc and stack usage differences
void func_80847BA0(GlobalContext* globalCtx, Player* this) {
    u8 spC7 = 0;
    CollisionPoly* spC0;
    Vec3f spB4;
    f32 spB0;
    f32 spAC;
    f32 spA8;
    u32 spA4;

    D_80853604 = this->unk_A7A;

    if (this->stateFlags2 & 0x40000) {
        spB0 = 10.0f;
        spAC = 15.0f;
        spA8 = 30.0f;
    } else {
        spB0 = this->ageProperties->unk_38;
        spAC = 26.0f;
        spA8 = this->ageProperties->unk_00;
    }

    if (this->stateFlags1 & 0xA0000000) {
        if (this->stateFlags1 & 0x80000000) {
            this->actor.bgCheckFlags &= ~1;
            spA4 = 0x38;
        } else if ((this->stateFlags1 & 1) && ((this->unk_A84 - (s32)this->actor.posRot.pos.y) >= 100)) {
            spA4 = 0x39;
        } else if (!(this->stateFlags1 & 1) &&
                   ((func_80845EF8 == this->actionFunc) || (func_80845CA4 == this->actionFunc))) {
            this->actor.bgCheckFlags &= ~0x208;
            spA4 = 0x3C;
        } else {
            spA4 = 0x3F;
        }
    } else {
        spA4 = 0x3F;
    }

    if (this->unk_692 & 1) {
        spA4 &= ~6;
    }

    if (spA4 & 4) {
        this->unk_692 |= 0x10;
    }

    Math_Vec3f_Copy(&spB4, &this->actor.posRot.pos);
    func_8002E4B4(globalCtx, &this->actor, spAC, spB0, spA8, spA4);

    if (this->actor.bgCheckFlags & 0x10) {
        this->actor.velocity.y = 0.0f;
    }

    D_80853600 = this->actor.posRot.pos.y - this->actor.groundY;
    D_808535F4 = 0;

    spC0 = this->actor.floorPoly;
    if (spC0 != NULL) {
        this->unk_A7A = func_80041EA4(&globalCtx->colCtx, spC0, this->actor.floorPolySource);
        this->unk_A82 = this->unk_89E;

        if (this->actor.bgCheckFlags & 0x20) {
            if (this->actor.waterY < 20.0f) {
                this->unk_89E = 4;
            } else {
                this->unk_89E = 5;
            }
        } else {
            if (this->stateFlags2 & 0x200) {
                this->unk_89E = 1;
            } else {
                this->unk_89E = func_80041F34(&globalCtx->colCtx, spC0, this->actor.floorPolySource);
            }
        }

        if (this->actor.type == ACTORTYPE_PLAYER) {
            func_800F66DC(func_80041FC4(&globalCtx->colCtx, spC0, this->actor.floorPolySource));

            if (this->actor.floorPolySource == 50) {
                func_80074CE8(globalCtx, func_80041FA0(&globalCtx->colCtx, spC0, this->actor.floorPolySource));
            } else {
                func_80043508(&globalCtx->colCtx, this->actor.floorPolySource);
            }
        }

        D_808535F4 = func_800420C0(&globalCtx->colCtx, spC0, this->actor.floorPolySource);
        if (D_808535F4 != 0) {
            D_808535F8 = func_80042084(&globalCtx->colCtx, spC0, this->actor.floorPolySource);
            if (((D_808535F8 == 0) && (this->actor.waterY > 20.0f) && (this->currentBoots != 1)) ||
                ((D_808535F8 != 0) && (this->actor.bgCheckFlags & 1))) {
                D_808535FC = func_800420E4(&globalCtx->colCtx, spC0, this->actor.floorPolySource) << 10;
            } else {
                D_808535F4 = 0;
            }
        }
    }

    func_80839034(globalCtx, this, spC0, this->actor.floorPolySource);

    this->actor.bgCheckFlags &= ~0x200;

    if (this->actor.bgCheckFlags & 8) {
        CollisionPoly* spA0;
        u32 sp9C;
        s16 sp9A;
        f32 temp1;

        D_80854798.y = 18.0f;
        D_80854798.z = this->ageProperties->unk_38 + 10.0f;

        if (!(this->stateFlags2 & 0x40000) && func_80839768(globalCtx, this, &D_80854798, &spA0, &sp9C, &D_80858AA8)) {
            this->actor.bgCheckFlags |= 0x200;
            if (this->actor.wallPoly != spA0) {
                this->actor.wallPoly = spA0;
                this->actor.wallPolySource = sp9C;
                this->actor.wallPolyRot = atan2s(spA0->norm.z, spA0->norm.x);
            }
        }

        sp9A = this->actor.shape.rot.y - (s16)(this->actor.wallPolyRot + 0x8000);

        D_808535F0 = func_80041DB8(&globalCtx->colCtx, this->actor.wallPoly, this->actor.wallPolySource);

        D_80853608 = ABS(sp9A);

        sp9A = this->currentYaw - (s16)(this->actor.wallPolyRot + 0x8000);

        D_8085360C = ABS(sp9A);

        temp1 = D_8085360C * 0.00008f;
        if (!(this->actor.bgCheckFlags & 1) || (temp1 >= 1.0f)) {
            this->unk_880 = R_RUN_SPEED_LIMIT / 100.0f;
        } else {
            if ((this->unk_880 = (R_RUN_SPEED_LIMIT / 100.0f) * temp1) < 0.1f) {
                this->unk_880 = 0.1f;
            }
        }

        if ((this->actor.bgCheckFlags & 0x200) && (D_80853608 < 0x3000)) {
            CollisionPoly* wallPoly = this->actor.wallPoly; // sp+0x90

            if (ABS(wallPoly->norm.y) < 600) {
                f32 sp8C = wallPoly->norm.x * (1.0f / 32767.0f);
                f32 sp88 = wallPoly->norm.y * (1.0f / 32767.0f);
                f32 sp84 = wallPoly->norm.z * (1.0f / 32767.0f);
                f32 temp2;
                CollisionPoly* sp7C;
                CollisionPoly* sp78;
                u32 sp74;
                Vec3f sp68;
                f32 sp64;
                f32 sp60;
                s32 temp3;

                this->wallDistance = Math3D_UDistPlaneToPos(sp8C, sp88, sp84, wallPoly->dist, &this->actor.posRot.pos);
                temp2 = this->wallDistance + 10.0f;
                sp68.x = this->actor.posRot.pos.x - (temp2 * sp8C);
                sp68.z = this->actor.posRot.pos.z - (temp2 * sp84);
                sp68.y = this->actor.posRot.pos.y + this->ageProperties->unk_0C;
                sp64 = func_8003C890(&globalCtx->colCtx, &sp7C, &sp68);
                this->ledgeDistance = sp64 - this->actor.posRot.pos.y;

                if ((this->ledgeDistance < 18.0f) ||
                    func_8003D7A0(&globalCtx->colCtx, &sp60, &this->actor.posRot.pos,
                                  (sp64 - this->actor.posRot.pos.y) + 20.0f, &sp78, &sp74, &this->actor)) {
                    this->ledgeDistance = 399.96002f;
                } else {
                    D_80854798.y = (sp64 + 5.0f) - this->actor.posRot.pos.y;

                    if (func_80839768(globalCtx, this, &D_80854798, &sp78, &sp74, &D_80858AA8) &&
                        (temp3 = this->actor.wallPolyRot - atan2s(sp78->norm.z, sp78->norm.x), ABS(temp3) < 0x4000) &&
                        !func_80041E18(&globalCtx->colCtx, sp78, sp74)) {
                        this->ledgeDistance = 399.96002f;
                    } else if (func_80041DE4(&globalCtx->colCtx, wallPoly, this->actor.wallPolySource) == 0) {
                        if (this->ageProperties->unk_1C <= this->ledgeDistance) {
                            if (ABS(sp7C->norm.y) > 28000) {
                                if (this->ageProperties->unk_14 <= this->ledgeDistance) {
                                    spC7 = 4;
                                } else if (this->ageProperties->unk_18 <= this->ledgeDistance) {
                                    spC7 = 3;
                                } else {
                                    spC7 = 2;
                                }
                            }
                        } else {
                            spC7 = 1;
                        }
                    }
                }
            }
        }
    } else {
        this->unk_880 = R_RUN_SPEED_LIMIT / 100.0f;
        this->unk_88D = 0;
        this->ledgeDistance = 0.0f;
    }

    if (spC7 == this->unk_88C) {
        if ((this->linearVelocity != 0.0f) && (this->unk_88D < 100)) {
            this->unk_88D++;
        }
    } else {
        this->unk_88C = spC7;
        this->unk_88D = 0;
    }

    if (this->actor.bgCheckFlags & 1) {
        D_808535E4 = func_80041D4C(&globalCtx->colCtx, spC0, this->actor.floorPolySource);

        if (!func_80847A78(this)) {
            f32 sp58;
            f32 sp54;
            f32 sp50;
            f32 sp4C;
            s32 pad;
            f32 sp44;

            if (this->actor.floorPolySource != 50) {
                func_800434C8(&globalCtx->colCtx, this->actor.floorPolySource);
            }

            sp58 = spC0->norm.x * (1.0f / 32767.0f);
            sp54 = 1.0f / (spC0->norm.y * (1.0f / 32767.0f));
            sp50 = spC0->norm.z * (1.0f / 32767.0f);

            sp4C = Math_Sins(this->currentYaw);
            sp44 = Math_Coss(this->currentYaw);

            this->unk_898 = atan2s(1.0f, (-(sp58 * sp4C) - (sp50 * sp44)) * sp54);
            this->unk_89A = atan2s(1.0f, (-(sp58 * sp44) - (sp50 * sp4C)) * sp54);

            sp4C = Math_Sins(this->actor.shape.rot.y);
            sp44 = Math_Coss(this->actor.shape.rot.y);

            D_80853610 = atan2s(1.0f, (-(sp58 * sp4C) - (sp50 * sp44)) * sp54);

            func_8083E318(globalCtx, this, spC0);
        }
    } else {
        func_80847A78(this);
    }

    if (this->unk_A7B == D_808535E4) {
        this->unk_A79++;
    } else {
        this->unk_A7B = D_808535E4;
        this->unk_A79 = 0;
    }
}
#else
#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_player_actor/func_80847BA0.s")
#endif

void func_808486A8(GlobalContext* globalCtx, Player* this) {
    u8 sp27;
    s32 pad;
    Actor* unk_664;
    s32 sp18;

    if (this->actor.type == ACTORTYPE_PLAYER) {
        sp27 = 0;

        if (this->action != 0) {
            func_8005A444(Gameplay_GetCamera(globalCtx, 0), 0);
        } else if (!(this->stateFlags1 & 0x100000)) {
            if ((this->actor.parent != NULL) && (this->unk_692 & 0x80)) {
                sp18 = 9;
                Camera_SetParam(Gameplay_GetCamera(globalCtx, 0), 8, this->actor.parent);
            } else if (func_8084377C == this->actionFunc) {
                sp18 = 0x12;
            } else if (this->stateFlags2 & 0x100) {
                sp18 = 0x13;
            } else if ((unk_664 = this->unk_664) != NULL) {
                if ((this->actor.flags & 0x100) == 0x100) {
                    sp18 = 3;
                } else if (this->stateFlags1 & 0x10000) {
                    if (this->stateFlags1 & 0x2000000) {
                        sp18 = 0x14;
                    } else {
                        sp18 = 2;
                    }
                } else {
                    sp18 = 4;
                }
                Camera_SetParam(Gameplay_GetCamera(globalCtx, 0), 8, unk_664);
            } else if (this->stateFlags1 & 0x1000) {
                sp18 = 0x11;
            } else if (this->stateFlags1 & 0x2000000) {
                sp18 = 0x14;
                Camera_SetParam(Gameplay_GetCamera(globalCtx, 0), 8, this->unk_688);
            } else if (this->stateFlags1 & 0x6000) {
                if (func_80833B2C(this)) {
                    sp18 = 0xF;
                } else {
                    sp18 = 0xE;
                }
            } else if (this->stateFlags1 & 0x40020000) {
                if (func_8002DD78(this) || func_808334B4(this)) {
                    sp18 = 8;
                } else if (this->stateFlags1 & 0x200000) {
                    sp18 = 0xC;
                } else {
                    sp18 = 1;
                }
            } else if (this->stateFlags1 & 0x240000) {
                if ((func_80845668 == this->actionFunc) || (this->stateFlags1 & 0x200000)) {
                    sp18 = 5;
                } else {
                    sp18 = 0xD;
                }
            } else if (this->stateFlags1 & 0x80000) {
                sp18 = 0x10;
            } else if ((this->swordState != 0) && (this->swordAnimation >= 0) && (this->swordAnimation < 0x18)) {
                sp18 = 0x12;
            } else {
                sp18 = 0;
                if ((this->linearVelocity == 0.0f) &&
                    (!(this->stateFlags1 & 0x800000) || (this->rideActor->actor.speedXZ == 0.0f))) {
                    sp27 = 2;
                }
            }

            func_8005A444(Gameplay_GetCamera(globalCtx, 0), sp18);
        } else {
            sp27 = 2;
        }

        if (globalCtx->actorCtx.targetCtx.unk_90 != NULL) {
            sp27 = 1;
            func_800F6114(sqrtf(globalCtx->actorCtx.targetCtx.unk_90->xyzDistFromLinkSq));
        }

        if (globalCtx->sceneNum != SCENE_TURIBORI) {
            func_800F5E90(sp27);
        }
    }
}

void func_80848A04(GlobalContext* globalCtx, Player* this) {
    f32 temp;

    if (this->stickLength == 0.0f) {
        func_80835F44(globalCtx, this, 0xFF);
        return;
    }

    temp = 1.0f;
    if (DECR(this->stickFlameTimer) == 0) {
        Inventory_ChangeAmmo(ITEM_STICK, -1);
        this->stickFlameTimer = 1;
        temp = 0.0f;
        this->stickLength = temp;
    } else if (this->stickFlameTimer > 200) {
        temp = (210 - this->stickFlameTimer) / 10.0f;
    } else if (this->stickFlameTimer < 20) {
        temp = this->stickFlameTimer / 20.0f;
        this->stickLength = temp;
    }

    func_8002836C(globalCtx, &this->swordDimensions.tip, &D_808547A4, &D_808547B0, &D_808547BC, &D_808547C0,
                  temp * 200.0f, 0, 8);
}

void func_80848B44(GlobalContext* globalCtx, Player* this) {
    Vec3f sp3C;
    Vec3f* sp38;
    s32 sp34;

    this->unk_891--;
    this->unk_892 += this->unk_891;

    if (this->unk_892 > 20) {
        sp34 = this->unk_891 * 2;

        this->unk_892 -= 20;

        if (sp34 >= 0x29) {
            sp34 = 0x28;
        }

        sp38 = this->unk_908 + (s32)Math_Rand_ZeroFloat(17.9f);
        sp3C.x = (Math_Rand_CenteredFloat(5.0f) + sp38->x) - this->actor.posRot.pos.x;
        sp3C.y = (Math_Rand_CenteredFloat(5.0f) + sp38->y) - this->actor.posRot.pos.y;
        sp3C.z = (Math_Rand_CenteredFloat(5.0f) + sp38->z) - this->actor.posRot.pos.z;

        EffectSsFhgFlash_Spawn2(globalCtx, &this->actor, &sp3C, sp34, 1);
        func_8002F8F0(&this->actor, NA_SE_PL_SPARK - SFX_FLAG);
    }
}

#ifdef NON_MATCHING
// regalloc differences
void func_80848C74(GlobalContext* globalCtx, Player* this) {
    f32 phi_f14;
    f32 phi_f0;
    s32 phi_s2;
    s32 temp_t0;
    s32 frame;
    u8* phi_s0;
    s32 i;
    s32 sp58;
    s32 sp54;

    if (this->currentTunic == 1) {
        sp54 = 20;
    } else {
        sp54 = (s32)(this->linearVelocity * 0.4f) + 1;
    }

    phi_s2 = false;
    phi_s0 = this->unk_A61;

    if (this->stateFlags2 & 8) {
        sp58 = 100;
    } else {
        sp58 = 0;
    }

    func_8083819C(this, globalCtx);

    for (i = 0; i < 18; i++, phi_s0++) {
        temp_t0 = *phi_s0 - (sp58 + sp54);
        if (*phi_s0 <= (sp58 + sp54)) {
            *phi_s0 = 0;
        } else {
            phi_s2 = true;
            *phi_s0 = temp_t0;
            if (*phi_s0 > 20.0f) {
                phi_f0 = (*phi_s0 - 20.0f) * 0.01f;
                phi_f14 = CLAMP(phi_f0, 0.19999999f, 0.2f);
            } else {
                phi_f14 = *phi_s0 * 0.01f;
            }
            phi_f0 = (*phi_s0 - 25.0f) * 0.02f;
            phi_f0 = CLAMP(phi_f0, 0.0f, 1.0f);
            func_8002A484(globalCtx, phi_f14, i, phi_f0);
        }
        if (1) {}
    }

    if (phi_s2) {
        func_8002F7DC(&this->actor, NA_SE_EV_TORCH - SFX_FLAG);

        if (globalCtx->sceneNum == SCENE_JYASINBOSS) {
            frame = 0;
        } else {
            frame = 7;
        }

        if ((frame & globalCtx->gameplayFrames) == 0) {
            func_808530E0(globalCtx, -1);
        }
        return;
    }

    this->unk_A60 = 0;
}
#else
#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_player_actor/func_80848C74.s")
#endif

void func_80848EF8(Player* this) {
    if (CHECK_QUEST_ITEM(QUEST_STONE_OF_AGONY)) {
        f32 temp = 200000.0f - (this->unk_6A4 * 5.0f);
        if (temp < 0.0f) {
            temp = 0.0f;
        }

        this->unk_6A0 += temp;
        if (this->unk_6A0 > 4000000.0f) {
            this->unk_6A0 = 0.0f;
            func_8083264C(this, 0x78, 0x14, 0xA, 0);
        }
    }
}

#ifdef NON_MATCHING
// stack alloc differences
void func_80848F9C(Player* this, GlobalContext* globalCtx, Input* input) {
    s32 pad;

    D_80858AB4 = input;

    if (this->unk_A86 < 0) {
        this->unk_A86++;
        if (this->unk_A86 == 0) {
            this->unk_A86 = 1;
            func_80078884(NA_SE_OC_REVENGE);
        }
    }

    Math_Vec3f_Copy(&this->actor.pos4, &this->actor.initPosRot.pos);

    if (this->unk_A73 != 0) {
        this->unk_A73--;
    }

    if (this->unk_88E != 0) {
        this->unk_88E--;
    }

    if (this->unk_A87 != 0) {
        this->unk_A87--;
    }

    if (this->invincibilityTimer < 0) {
        this->invincibilityTimer++;
    } else if (this->invincibilityTimer > 0) {
        this->invincibilityTimer--;
    }

    if (this->unk_890 != 0) {
        this->unk_890--;
    }

    func_808473D4(globalCtx, this);
    func_80836BEC(this, globalCtx);

    if ((this->heldItemActionParam == 6) && (this->stickFlameTimer != 0)) {
        func_80848A04(globalCtx, this);
    } else if ((this->heldItemActionParam == 2) && (this->stickFlameTimer < 0)) {
        this->stickFlameTimer++;
    }

    if (this->unk_891 != 0) {
        func_80848B44(globalCtx, this);
    }

    if (this->unk_A60 != 0) {
        func_80848C74(globalCtx, this);
    }

    if ((this->unk_692 & 0x40) && (gSaveContext.nayrusLoveTimer != 0) && (gSaveContext.unk_13F0 == 0)) {
        gSaveContext.unk_13F0 = 3;
        func_80846A00(globalCtx, this, 1);
        this->unk_692 &= ~0x40;
    }

    if (this->stateFlags2 & 0x8000) {
        if (!(this->actor.bgCheckFlags & 1)) {
            func_80832210(this);
            Actor_MoveForward(&this->actor);
        }

        func_80847BA0(globalCtx, this);
    } else {
        f32 temp_f0;
        f32 phi_f12;

        if (this->currentBoots != this->unk_153) {
            if (this->currentBoots == 1) {
                if (this->stateFlags1 & 0x8000000) {
                    func_80832340(globalCtx, this);
                    if (this->ageProperties->unk_2C < this->actor.waterY) {
                        this->stateFlags2 |= 0x400;
                    }
                }
            } else {
                if (this->stateFlags1 & 0x8000000) {
                    if ((this->unk_153 == 1) || (this->actor.bgCheckFlags & 1)) {
                        func_8083D36C(globalCtx, this);
                        this->stateFlags2 &= ~0x400;
                    }
                }
            }

            this->unk_153 = this->currentBoots;
        }

        if ((this->actor.parent == NULL) && (this->stateFlags1 & 0x800000)) {
            this->actor.parent = &this->rideActor->actor;
            func_8083A360(globalCtx, this);
            this->stateFlags1 |= 0x800000;
            func_80832264(globalCtx, this, &D_040033B8);
            func_80832F54(globalCtx, this, 0x9B);
            this->unk_850 = 99;
        }

        if (this->unk_844 == 0) {
            this->unk_845 = 0;
        } else if (this->unk_844 < 0) {
            this->unk_844++;
        } else {
            this->unk_844--;
        }

        Math_ApproxUpdateScaledS(&this->unk_6C2, 0, 400);
        func_80032CB4(this->unk_3A8, 20, 80, 6);

        this->actor.shape.unk_06 = this->unk_3A8[0] + ((globalCtx->gameplayFrames & 32) ? 0 : 3);

        if (this->currentMask == 4) {
            func_8085002C(this);
        }

        if (func_8002DD6C(this) != 0) {
            func_8084FF7C(this);
        }

        if (!(this->skelAnime.flags & 0x80)) {
            if (((this->actor.bgCheckFlags & 1) && (D_808535E4 == 5) && (this->currentBoots != 1)) ||
                ((this->currentBoots == 2) && !(this->stateFlags1 & 0x28000000))) {
                f32 sp70 = this->linearVelocity;
                s16 sp6E = this->currentYaw;
                s16 yawDiff = this->actor.posRot.rot.y - sp6E;
                s32 pad;

                if ((ABS(yawDiff) > 0x6000) && (this->actor.speedXZ != 0.0f)) {
                    sp70 = 0.0f;
                    sp6E += 0x8000;
                }

                if (Math_ApproxF(&this->actor.speedXZ, sp70, 0.35f) && (sp70 == 0.0f)) {
                    this->actor.posRot.rot.y = this->currentYaw;
                }

                if (this->linearVelocity != 0.0f) {
                    s32 phi_v0;

                    phi_v0 = (fabsf(this->linearVelocity) * 700.0f) - (fabsf(this->actor.speedXZ) * 100.0f);
                    phi_v0 = CLAMP(phi_v0, 0, 1350);

                    Math_ApproxUpdateScaledS(&this->actor.posRot.rot.y, sp6E, phi_v0);
                }

                if ((this->linearVelocity == 0.0f) && (this->actor.speedXZ != 0.0f)) {
                    func_800F4138(&this->actor.projectedPos, 0xD0, this->actor.speedXZ);
                }
            } else {
                this->actor.speedXZ = this->linearVelocity;
                this->actor.posRot.rot.y = this->currentYaw;
            }

            func_8002D868(&this->actor);

            if ((this->fanWindSpeed != 0.0f) && !func_8008E988(globalCtx) && !(this->stateFlags1 & 0x206000) &&
                (func_80845668 != this->actionFunc) && (func_808507F4 != this->actionFunc)) {
                this->actor.velocity.x += this->fanWindSpeed * Math_Sins(this->fanWindDirection);
                this->actor.velocity.z += this->fanWindSpeed * Math_Coss(this->fanWindDirection);
            }

            func_8002D7EC(&this->actor);
            func_80847BA0(globalCtx, this);
        } else {
            D_808535E4 = 0;
            this->unk_A7A = 0;

            if (!(this->stateFlags1 & 1) && (this->stateFlags1 & 0x800000)) {
                HorseActor* ride = this->rideActor;
                CollisionPoly* sp5C;
                u32 sp58;
                Vec3f sp4C;

                if (!(ride->actor.bgCheckFlags & 1)) {
                    func_808396F4(globalCtx, this, &D_80854814, &sp4C, &sp5C, &sp58);
                } else {
                    sp5C = ride->actor.floorPoly;
                    sp58 = ride->actor.floorPolySource;
                }

                if ((sp5C != NULL) && func_80839034(globalCtx, this, sp5C, sp58)) {
                    if (DREG(25) != 0) {
                        DREG(25) = 0;
                    } else {
                        AREG(6) = 1;
                    }
                }
            }

            D_808535F4 = 0;
            this->fanWindSpeed = 0.0f;
        }

        if ((D_808535F4 != 0) && (this->currentBoots != 1)) {
            f32 sp48;

            D_808535F4--;

            if (D_808535F8 == 0) {
                sp48 = D_80854820[D_808535F4];

                if (!(this->stateFlags1 & 0x8000000)) {
                    sp48 *= 0.25f;
                }
            } else {
                sp48 = D_8085482C[D_808535F4];
            }

            Math_ApproxF(&this->fanWindSpeed, sp48, sp48 * 0.1f);

            Math_ApproxUpdateScaledS(&this->fanWindDirection, D_808535FC,
                                     ((this->stateFlags1 & 0x8000000) ? 400.0f : 800.0f) * sp48);
        } else if (this->fanWindSpeed != 0.0f) {
            Math_ApproxF(&this->fanWindSpeed, 0.0f, (this->stateFlags1 & 0x8000000) ? 0.5f : 1.0f);
        }

        if (!func_8008E8DC(globalCtx, this) && !(this->stateFlags2 & 0x40000)) {
            func_8083D53C(globalCtx, this);

            if ((this->actor.type == ACTORTYPE_PLAYER) && (gSaveContext.health == 0)) {
                if (this->stateFlags1 & 0x206000) {
                    func_80832440(globalCtx, this);
                    func_80837B9C(this, globalCtx);
                } else if ((this->actor.bgCheckFlags & 1) || (this->stateFlags1 & 0x8000000)) {
                    func_80836448(globalCtx, this,
                                  func_808332B8(this) ? &D_04003310 : (this->unk_891 != 0) ? &D_04002F08 : &D_04002878);
                }
            } else {
                if ((this->actor.parent == NULL) &&
                    ((globalCtx->sceneLoadFlag == 0x14) || (this->unk_A87 != 0) || !func_808382DC(this, globalCtx))) {
                    func_8083AA10(this, globalCtx);
                } else {
                    this->dropY = this->actor.posRot.pos.y;
                }
                func_80848EF8(this);
            }
        }

        if ((globalCtx->csCtx.state != 0) && (this->action != 6) && !(this->stateFlags1 & 0x800000) &&
            !(this->stateFlags2 & 0x80) && (this->actor.type == ACTORTYPE_PLAYER)) {
            if ((globalCtx->csCtx.linkAction != NULL) && (D_808547C4[globalCtx->csCtx.linkAction->action] != 0)) {
                func_8002DF54(globalCtx, NULL, 6);
                func_80832210(this);
            } else if ((this->action == 0) && !(this->stateFlags2 & 0x400) && (globalCtx->csCtx.state != 3)) {
                func_8002DF54(globalCtx, NULL, 0x31);
                func_80832210(this);
            }
        }

        if (this->action != 0) {
            if ((this->action != 7) || !(this->stateFlags1 & 0x4206000)) {
                this->unk_6AD = 3;
            } else if (func_80852E14 != this->actionFunc) {
                func_80852944(globalCtx, this, NULL);
            }
        } else {
            this->unk_445 = 0;
        }

        func_8083D6EC(globalCtx, this);

        if ((this->unk_664 == NULL) && (this->naviMessageId == 0)) {
            this->stateFlags2 &= ~0x200002;
        }

        this->stateFlags1 &= ~0x401202;
        this->stateFlags2 &= ~0x441536D;
        this->unk_692 &= ~0x10;

        func_80847298(this);
        func_8083315C(globalCtx, this);

        if (this->stateFlags1 & 0x8000000) {
            D_808535E8 = 0.5f;
        } else {
            D_808535E8 = 1.0f;
        }

        D_808535EC = 1.0f / D_808535E8;
        D_80853614 = D_80853618 = 0;
        D_80858AA4 = this->currentMask;

        if (!(this->unk_692 & 4)) {
            this->actionFunc(this, globalCtx);
        }

        func_808486A8(globalCtx, this);

        if (this->skelAnime.flags & 8) {
            SkelAnime_LoadAnimationType5(globalCtx, &this->actor, &this->skelAnime,
                                         (this->skelAnime.flags & 4) ? 1.0f : this->ageProperties->unk_08);
        }

        func_808368EC(this, globalCtx);

        if ((this->actor.flags & 0x100) == 0x100) {
            this->targetActorDistance = 0.0f;
        } else {
            this->naviTargetActor = NULL;
            this->targetActorDistance = FLT_MAX;
            this->exchangeItemId = 0;
        }

        if (!(this->stateFlags1 & 0x800)) {
            this->interactRangeActor = NULL;
            this->getItemDirection = 0x6000;
        }

        if (this->actor.parent == NULL) {
            this->rideActor = NULL;
        }

        this->naviMessageId = 0;

        if (!(this->stateFlags2 & 0x2000000)) {
            this->unk_6A8 = NULL;
        }

        this->stateFlags2 &= ~0x800000;
        this->unk_6A4 = FLT_MAX;

        temp_f0 = this->actor.posRot.pos.y - this->actor.pos4.y;

        this->unk_42C = 0;
        this->unk_8A1 = 0;
        this->unk_684 = NULL;

        phi_f12 = ((this->unk_908[6].y + this->unk_908[3].y) * 0.5f) + temp_f0;
        temp_f0 += this->unk_908[7].y + 10.0f;

        this->cylinder.dim.height = temp_f0 - phi_f12;

        if (this->cylinder.dim.height < 0) {
            phi_f12 = temp_f0;
            this->cylinder.dim.height = -this->cylinder.dim.height;
        }

        this->cylinder.dim.yShift = phi_f12 - this->actor.posRot.pos.y;

        if (this->stateFlags1 & 0x400000) {
            this->cylinder.dim.height = this->cylinder.dim.height * 0.8f;
        }

        Collider_CylinderUpdate(&this->actor, &this->cylinder);

        if (!(this->stateFlags2 & 0x4000)) {
            if (!(this->stateFlags1 & 0x806080)) {
                CollisionCheck_SetOC(globalCtx, &globalCtx->colChkCtx, &this->cylinder);
            }

            if (!(this->stateFlags1 & 0x4000080) && (this->invincibilityTimer <= 0)) {
                CollisionCheck_SetAC(globalCtx, &globalCtx->colChkCtx, &this->cylinder);

                if (this->invincibilityTimer < 0) {
                    CollisionCheck_SetAT(globalCtx, &globalCtx->colChkCtx, &this->cylinder);
                }
            }
        }

        func_800A32F4(globalCtx);
    }

    Math_Vec3f_Copy(&this->actor.initPosRot.pos, &this->actor.posRot.pos);
    Math_Vec3f_Copy(&this->unk_A88, this->unk_908);

    if (this->stateFlags1 & 0x30000080) {
        this->actor.colChkInfo.mass = 0xFF;
    } else {
        this->actor.colChkInfo.mass = 50;
    }

    this->unk_692 &= ~4;

    Collider_CylinderSetAC(globalCtx, &this->cylinder);
    Collider_QuadSetAT(globalCtx, &this->quads[0]);
    Collider_QuadSetAT(globalCtx, &this->quads[1]);
    Collider_QuadSetAC(globalCtx, &this->quads[2]);
    Collider_QuadSetAT(globalCtx, &this->quads[2]);
}
#else
#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_player_actor/func_80848F9C.s")
#endif

#ifdef NON_MATCHING
// matches besides bss reordering
void Player_Update(Actor* thisx, GlobalContext* globalCtx) {
    static Vec3f D_80858AB8;
    Player* this = THIS;
    s32 dogParams;
    s32 pad;
    Input sp44;
    Actor* dog;

    if (func_8084FCAC(this, globalCtx)) {
        if (gSaveContext.dogParams < 0) {
            if (Object_GetIndex(&globalCtx->objectCtx, OBJECT_DOG) < 0) {
                gSaveContext.dogParams = 0;
            } else {
                gSaveContext.dogParams &= 0x7FFF;
                func_808395DC(this, &this->actor.posRot.pos, &D_80854838, &D_80858AB8);
                dogParams = gSaveContext.dogParams;
                dog = Actor_Spawn(&globalCtx->actorCtx, globalCtx, ACTOR_EN_DOG, D_80858AB8.x, D_80858AB8.y,
                                  D_80858AB8.z, 0, this->actor.shape.rot.y, 0, dogParams | 0x8000);
                if (dog != NULL) {
                    dog->room = 0;
                }
            }
        }

        if ((this->interactRangeActor != NULL) && (this->interactRangeActor->update == NULL)) {
            this->interactRangeActor = NULL;
        }

        if ((this->heldActor != NULL) && (this->heldActor->update == NULL)) {
            func_808323B4(globalCtx, this);
        }

        if (this->stateFlags1 & 0x20000020) {
            bzero(&sp44, sizeof(Input));
        } else {
            sp44 = globalCtx->state.input[0];
            if (this->unk_88E != 0) {
                sp44.cur.in.button &= ~(A_BUTTON | B_BUTTON | U_CBUTTONS);
                sp44.press.in.button &= ~(A_BUTTON | B_BUTTON | U_CBUTTONS);
            }
        }

        func_80848F9C(this, globalCtx, &sp44);
    }

    MREG(52) = this->actor.posRot.pos.x;
    MREG(53) = this->actor.posRot.pos.y;
    MREG(54) = this->actor.posRot.pos.z;
    MREG(55) = this->actor.posRot.rot.y;
}
#else
#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_player_actor/Player_Update.s")
#endif

extern s16 D_80858AC8[8];

#ifdef NON_MATCHING
// matches but requires local .data
void func_8084A0E8(GlobalContext* globalCtx, Player* player, s32 arg2, Gfx* dList, void* arg4) {
    static s32 D_8085486C = 255;
    GraphicsContext* gfxCtx;
    Gfx* dispRefs[4];

    gfxCtx = globalCtx->state.gfxCtx;
    Graph_OpenDisps(dispRefs, globalCtx->state.gfxCtx, "../z_player.c", 19228);

    gSPSegment(gfxCtx->polyOpa.p++, 0x0C, dList);
    gSPSegment(gfxCtx->polyXlu.p++, 0x0C, dList);

    func_8008F470(globalCtx, player->skelAnime.skeleton, player->skelAnime.limbDrawTbl, player->skelAnime.dListCount,
                  arg2, player->currentTunic, player->currentBoots, player->actor.shape.unk_06, arg4, func_80090D20,
                  &player->actor);

    if ((arg4 == func_80090014) && (player->currentMask != 0)) {
        Mtx* sp70 = Graph_Alloc(globalCtx->state.gfxCtx, 2 * sizeof(Mtx));

        if (player->currentMask == 4) {
            Vec3s sp68;

            gSPSegment(gfxCtx->polyOpa.p++, 0x0B, sp70);

            sp68.x = D_80858AC8[1] + 0x3E2;
            sp68.y = D_80858AC8[2] + 0xDBE;
            sp68.z = D_80858AC8[0] - 0x348A;
            func_800D1694(97.0f, -1203.0f, -240.0f, &sp68);
            Matrix_ToMtx(sp70++, "../z_player.c", 19273);

            sp68.x = D_80858AC8[1] - 0x3E2;
            sp68.y = -0xDBE - D_80858AC8[2];
            sp68.z = D_80858AC8[0] - 0x348A;
            func_800D1694(97.0f, -1203.0f, 240.0f, &sp68);
            Matrix_ToMtx(sp70, "../z_player.c", 19279);
        }

        gSPDisplayList(gfxCtx->polyOpa.p++, D_80854840[player->currentMask]);
    }

    if ((player->currentBoots == 2) && !(player->actor.bgCheckFlags & 1) && !(player->stateFlags1 & 0x800000) &&
        (player->unk_893 != 0)) {
        s32 sp5C;
        s32 unk_893 = player->unk_893;

        if (player->unk_893 < 0x13) {
            if (unk_893 >= 0xF) {
                D_8085486C = (0x13 - unk_893) * 51.0f;
            } else if (unk_893 < 0x13) {
                sp5C = unk_893;

                if (sp5C > 9) {
                    sp5C = 9;
                }

                D_8085486C = (-sp5C * 4) + 0x24;
                D_8085486C = D_8085486C * D_8085486C;
                D_8085486C = (s32)((Math_Coss(D_8085486C) * 100.0f) + 100.0f) + 55.0f;
                D_8085486C = D_8085486C * (sp5C * 0.11111111f);
            }

            func_800D1694(player->actor.posRot.pos.x, player->actor.posRot.pos.y + 2.0f, player->actor.posRot.pos.z,
                          &D_80854864);
            Matrix_Scale(4.0f, 4.0f, 4.0f, MTXMODE_APPLY);

            gSPMatrix(gfxCtx->polyXlu.p++, Matrix_NewMtx(globalCtx->state.gfxCtx, "../z_player.c", 19317),
                      G_MTX_NOPUSH | G_MTX_LOAD | G_MTX_MODELVIEW);
            gSPSegment(gfxCtx->polyXlu.p++, 0x08,
                       Gfx_TwoTexScroll(globalCtx->state.gfxCtx, 0, 0, 0, 16, 32, 1, 0,
                                        (globalCtx->gameplayFrames * -15) % 128, 16, 32));
            gDPSetPrimColor(gfxCtx->polyXlu.p++, 0x80, 0x80, 255, 255, 255, D_8085486C);
            gDPSetEnvColor(gfxCtx->polyXlu.p++, 120, 90, 30, 128);
            gSPDisplayList(gfxCtx->polyXlu.p++, D_04037E30);
        }
    }

    Graph_CloseDisps(dispRefs, globalCtx->state.gfxCtx, "../z_player.c", 19328);
}
#else
#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_player_actor/func_8084A0E8.s")
#endif

void Player_Draw(Actor* thisx, GlobalContext* globalCtx) {
    s32 pad;
    Player* this = THIS;

    if (1) {} // Necessary to match

    OPEN_DISPS(globalCtx->state.gfxCtx, "../z_player.c", 19346);

    if (!(this->stateFlags2 & 0x20000000)) {
        void* sp90 = func_80090014;
        s32 sp8C;
        s32 pad2;

        if ((this->action != 0) || (func_8008E9C4(this) && 0) || (this->actor.projectedPos.z < 160.0f)) {
            sp8C = 0;
        } else {
            sp8C = 1;
        }

        func_80093C80(globalCtx);
        func_80093D84(globalCtx->state.gfxCtx);

        if (this->invincibilityTimer > 0) {
            this->unk_88F += CLAMP(50 - this->invincibilityTimer, 8, 40);
            oGfxCtx->polyOpa.p = Gfx_SetFog2(oGfxCtx->polyOpa.p, 0xFF, 0x00, 0x00, 0x00, 0,
                                             4000 - (s32)(Math_Coss(this->unk_88F * 256) * 2000.0f));
        }

        func_8002EBCC(&this->actor, globalCtx, 0);
        func_8002ED80(&this->actor, globalCtx, 0);

        if (this->unk_6AD != 0) {
            Vec3f sp7C;
            SkinMatrix_Vec3fMtxFMultXYZ(&globalCtx->mf_11D60, &this->actor.posRot2.pos, &sp7C);
            if (sp7C.z < -4.0f) {
                sp90 = func_800902F0;
            }
        } else if (this->stateFlags2 & 0x40000) {
            if (this->actor.projectedPos.z < 0.0f) {
                sp90 = func_80090440;
            }
        }

        if (this->stateFlags2 & 0x4000000) {
            f32 sp78 = ((u16)(globalCtx->gameplayFrames * 600) * M_PI) / 0x8000;
            f32 sp74 = ((u16)(globalCtx->gameplayFrames * 1000) * M_PI) / 0x8000;
            Matrix_Push();
            this->actor.scale.y = -this->actor.scale.y;
            func_800D1694(this->actor.posRot.pos.x,
                          (this->actor.groundY + (this->actor.groundY - this->actor.posRot.pos.y)) +
                              (this->actor.shape.unk_08 * this->actor.scale.y),
                          this->actor.posRot.pos.z, &this->actor.shape.rot);
            Matrix_Scale(this->actor.scale.x, this->actor.scale.y, this->actor.scale.z, MTXMODE_APPLY);
            Matrix_RotateX(sp78, MTXMODE_APPLY);
            Matrix_RotateY(sp74, MTXMODE_APPLY);
            Matrix_Scale(1.1f, 0.95f, 1.05f, MTXMODE_APPLY);
            Matrix_RotateY(-sp74, MTXMODE_APPLY);
            Matrix_RotateX(-sp78, MTXMODE_APPLY);
            func_8084A0E8(globalCtx, this, sp8C, D_80125FA8, sp90);
            this->actor.scale.y = -this->actor.scale.y;
            Matrix_Pull();
        }

        gSPClearGeometryMode(oGfxCtx->polyOpa.p++, G_CULL_BOTH);
        gSPClearGeometryMode(oGfxCtx->polyXlu.p++, G_CULL_BOTH);

        func_8084A0E8(globalCtx, this, sp8C, D_80125F98, sp90);

        if (this->invincibilityTimer > 0) {
            oGfxCtx->polyOpa.p = func_800BC8A0(globalCtx, oGfxCtx->polyOpa.p);
        }

        if (this->stateFlags2 & 0x4000) {
            f32 sp68 = (this->unk_84F >> 1) * 22.0f;

            gSPSegment(oGfxCtx->polyXlu.p++, 0x08,
                       Gfx_TwoTexScroll(globalCtx->state.gfxCtx, 0, 0, (0 - globalCtx->gameplayFrames) % 128, 32, 32, 1,
                                        0, (globalCtx->gameplayFrames * -2) % 128, 32, 32));

            Matrix_Scale(sp68, sp68, sp68, MTXMODE_APPLY);
            gSPMatrix(oGfxCtx->polyXlu.p++, Matrix_NewMtx(globalCtx->state.gfxCtx, "../z_player.c", 19459),
                      G_MTX_NOPUSH | G_MTX_LOAD | G_MTX_MODELVIEW);
            gDPSetEnvColor(oGfxCtx->polyXlu.p++, 0, 50, 100, 255);
            gSPDisplayList(oGfxCtx->polyXlu.p++, D_04033EE0);
        }

        if (this->unk_862 > 0) {
            func_800909B4(globalCtx, this);
        }
    }

    CLOSE_DISPS(globalCtx->state.gfxCtx, "../z_player.c", 19473);
}

void Player_Destroy(Actor* thisx, GlobalContext* globalCtx) {
    Player* this = THIS;

    Effect_Delete(globalCtx, this->swordEffectIndex);

    Collider_DestroyCylinder(globalCtx, &this->cylinder);
    Collider_DestroyQuad(globalCtx, &this->quads[0]);
    Collider_DestroyQuad(globalCtx, &this->quads[1]);
    Collider_DestroyQuad(globalCtx, &this->quads[2]);

    func_800876C8(globalCtx);

    gSaveContext.linkAge = globalCtx->linkAgeOnLoad;
}

#ifdef NON_MATCHING
s16 func_8084ABD8(GlobalContext* globalCtx, Player* this, s32 arg2, s16 arg3) {
    s32 temp1;
    s16 temp2;
    s32 sp2C;

    if (!func_8002DD78(this) && !func_808334B4(this) && (arg2 == 0)) {
        arg2 = (s16)(D_80858AB4->rel.in.y * 240.0f);
        Math_SmoothScaleMaxMinS(&this->actor.posRot2.rot.x, arg2, 14, 4000, 30);

        arg2 = (s16)(D_80858AB4->rel.in.x * -16.0f);
        arg2 = CLAMP(arg2, -3000, 3000);
        this->actor.posRot2.rot.y += arg2;
    } else {
        arg2 = (this->stateFlags1 & 0x800000) ? 3500 : 14000;
        sp2C = (D_80858AB4->rel.in.y >= 0) ? 1 : -1;
        temp1 = (1.0f - Math_Coss(D_80858AB4->rel.in.y * 200)) * 1500.0f;
        this->actor.posRot2.rot.x += temp1 * sp2C;
        this->actor.posRot2.rot.x = CLAMP(this->actor.posRot2.rot.x, -arg2, arg2);

        temp2 = this->actor.posRot2.rot.y - this->actor.shape.rot.y;
        sp2C = (D_80858AB4->rel.in.x >= 0) ? 1 : -1;
        temp1 = (1.0f - Math_Coss(D_80858AB4->rel.in.x * 200)) * -1500.0f;
        temp2 += temp1 * sp2C;
        this->actor.posRot2.rot.y = CLAMP(temp2, -0x4AAA, 0x4AAA) + this->actor.shape.rot.y;
    }

    this->unk_6AE |= 2;
    return func_80836AB8(this, (globalCtx->unk_11E5C != 0) || func_8002DD78(this) || func_808334B4(this)) - arg3;
}
#else
s16 func_8084ABD8(GlobalContext* globalCtx, Player* this, s32 arg2, s16 arg3);
#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_player_actor/func_8084ABD8.s")
#endif

void func_8084AEEC(Player* this, f32* arg1, f32 arg2, s16 arg3) {
    f32 temp1;
    f32 temp2;

    temp1 = this->skelAnime.animCurrentFrame - 10.0f;

    temp2 = (R_RUN_SPEED_LIMIT / 100.0f) * 0.8f;
    if (*arg1 > temp2) {
        *arg1 = temp2;
    }

    if ((0.0f < temp1) && (temp1 < 10.0f)) {
        temp1 *= 6.0f;
    } else {
        temp1 = 0.0f;
        arg2 = 0.0f;
    }

    func_80077C6C(arg1, arg2 * 0.8f, temp1, (fabsf(*arg1) * 0.02f) + 0.05f);
    Math_ApproxUpdateScaledS(&this->currentYaw, arg3, 1600);
}

void func_8084B000(Player* this) {
    f32 phi_f18;
    f32 phi_f16;
    f32 phi_f14;
    f32 waterY;

    phi_f14 = -5.0f;

    phi_f16 = this->ageProperties->unk_28;
    if (this->actor.velocity.y < 0.0f) {
        phi_f16 += 1.0f;
    }

    if (this->actor.waterY < phi_f16) {
        if (this->actor.velocity.y <= 0.0f) {
            phi_f16 = 0.0f;
        } else {
            phi_f16 = this->actor.velocity.y * 0.5f;
        }
        phi_f18 = -0.1f - phi_f16;
    } else {
        if (!(this->stateFlags1 & 0x80) && (this->currentBoots == 1) && (this->actor.velocity.y >= -3.0f)) {
            phi_f18 = -0.2f;
        } else {
            phi_f14 = 2.0f;
            if (this->actor.velocity.y >= 0.0f) {
                phi_f16 = 0.0f;
            } else {
                phi_f16 = this->actor.velocity.y * -0.3f;
            }
            phi_f18 = phi_f16 + 0.1f;
        }

        waterY = this->actor.waterY;
        if (waterY > 100.0f) {
            this->stateFlags2 |= 0x400;
        }
    }

    this->actor.velocity.y += phi_f18;

    if (((this->actor.velocity.y - phi_f14) * phi_f18) > 0) {
        this->actor.velocity.y = phi_f14;
    }

    this->actor.gravity = 0.0f;
}

void func_8084B158(GlobalContext* globalCtx, Player* this, Input* input, f32 arg3) {
    f32 phi_f0;

    if ((input != NULL) && (input->press.in.button & (A_BUTTON | B_BUTTON))) {
        phi_f0 = 1.0f;
    } else {
        phi_f0 = 0.5f;
    }

    phi_f0 *= arg3;

    if (phi_f0 < 1.0f) {
        phi_f0 = 1.0f;
    }

    this->skelAnime.animPlaybackSpeed = phi_f0;
    func_800A3BC0(globalCtx, &this->skelAnime);
}

void func_8084B1D8(Player* this, GlobalContext* globalCtx) {
    if (this->stateFlags1 & 0x8000000) {
        func_8084B000(this);
        func_8084AEEC(this, &this->linearVelocity, 0, this->actor.shape.rot.y);
    } else {
        func_8083721C(this);
    }

    if ((this->unk_6AD == 2) && (func_8002DD6C(this) || func_808332E4(this))) {
        func_80836670(this, globalCtx);
    }

    if ((this->action != 0) || (this->unk_6AD == 0) || (this->unk_6AD >= 4) || func_80833B54(this) ||
        (this->unk_664 != NULL) || !func_8083AD4C(globalCtx, this) ||
        (((this->unk_6AD == 2) && ((D_80858AB4->press.in.button & (A_BUTTON | B_BUTTON | R_TRIG)) ||
                                   func_80833B2C(this) || (!func_8002DD78(this) && !func_808334B4(this)))) ||
         ((this->unk_6AD == 1) && (D_80858AB4->press.in.button & (A_BUTTON | B_BUTTON | R_TRIG | U_CBUTTONS |
                                                                  L_CBUTTONS | R_CBUTTONS | D_CBUTTONS))))) {
        func_8083C148(this, globalCtx);
        func_80078884(NA_SE_SY_CAMERA_ZOOM_UP);
    } else if ((DECR(this->unk_850) == 0) || (this->unk_6AD != 2)) {
        if (func_8008F128(this) != 0) {
            this->unk_6AE |= 0x43;
        } else {
            this->actor.shape.rot.y = func_8084ABD8(globalCtx, this, 0, 0);
        }
    }

    this->currentYaw = this->actor.shape.rot.y;
}

s32 func_8084B3CC(GlobalContext* globalCtx, Player* this) {
    if (globalCtx->unk_11E5C != 0) {
        func_80832564(globalCtx, this);
        func_80835C58(globalCtx, this, func_8084FA54, 0);

        if (!func_8002DD6C(this) || func_8008F104(this)) {
            func_80835F44(globalCtx, this, 3);
        }

        this->stateFlags1 |= 0x100000;
        func_80832264(globalCtx, this, func_80833338(this));
        func_80832210(this);
        func_8083B010(this);
        return 1;
    }

    return 0;
}

void func_8084B498(Player* this) {
    // clang-format off
    if (INV_CONTENT(ITEM_OCARINA_FAIRY) == ITEM_OCARINA_FAIRY) { this->unk_154 = 0x1C; } else { this->unk_154 = 0x1D; }
    // clang-format on
}

s32 func_8084B4D4(GlobalContext* globalCtx, Player* this) {
    if (this->unk_692 & 0x20) {
        this->unk_692 &= ~0x20;
        func_8084B498(this);
        this->unk_6AD = 4;
        func_8083B040(this, globalCtx);
        return 1;
    }

    return 0;
}

void func_8084B530(Player* this, GlobalContext* globalCtx) {
    this->stateFlags2 |= 0x20;
    func_80836670(this, globalCtx);

    if (func_8010BDBC(&globalCtx->msgCtx) == 2) {
        this->actor.flags &= ~0x100;

        if ((this->naviTargetActor->flags & 5) != 5) {
            this->stateFlags2 &= ~0x2000;
        }

        func_8005B1A4(Gameplay_GetCamera(globalCtx, 0));

        if (!func_8084B4D4(globalCtx, this) && !func_8084B3CC(globalCtx, this) && !func_8083ADD4(globalCtx, this)) {
            if ((this->naviTargetActor != this->interactRangeActor) || !func_8083E5A8(this, globalCtx)) {
                if (this->stateFlags1 & 0x800000) {
                    s32 sp24 = this->unk_850;
                    func_8083A360(globalCtx, this);
                    this->unk_850 = sp24;
                } else if (func_808332B8(this)) {
                    func_80838F18(globalCtx, this);
                } else {
                    func_80853080(this, globalCtx);
                }
            }
        }

        this->unk_88E = 10;
        return;
    }

    if (this->stateFlags1 & 0x800000) {
        func_8084CC98(this, globalCtx);
    } else if (func_808332B8(this)) {
        func_8084D610(this, globalCtx);
    } else if (!func_8008E9C4(this) && func_800A3BC0(globalCtx, &this->skelAnime)) {
        if (this->skelAnime.flags != 0) {
            func_80832DBC(this);
            if ((this->naviTargetActor->type == 4) && (this->heldItemActionParam != 2)) {
                func_808322D0(globalCtx, this, &D_040031A0);
            } else {
                func_80832284(globalCtx, this, func_80833338(this));
            }
        } else {
            func_808322A4(globalCtx, this, &D_040031A8);
        }
    }

    if (this->unk_664 != NULL) {
        this->currentYaw = this->actor.shape.rot.y = func_8083DB98(this, 0);
    }
}

void func_8084B78C(Player* this, GlobalContext* globalCtx) {
    f32 sp34;
    s16 sp32;
    s32 temp;

    this->stateFlags2 |= 0x141;
    func_8083F524(globalCtx, this);

    if (func_800A3BC0(globalCtx, &this->skelAnime)) {
        if (!func_8083F9D0(globalCtx, this)) {
            func_80837268(this, &sp34, &sp32, 0.0f, globalCtx);
            temp = func_8083FFB8(this, &sp34, &sp32);
            if (temp > 0) {
                func_8083FAB8(this, globalCtx);
            } else if (temp < 0) {
                func_8083FB14(this, globalCtx);
            }
        }
    }
}

void func_8084B840(GlobalContext* globalCtx, Player* this, f32 arg2) {
    if (this->actor.wallPolySource != 50) {
        DynaPolyActor* dynaActor = DynaPolyInfo_GetActor(&globalCtx->colCtx, this->actor.wallPolySource);
        if (dynaActor != NULL) {
            func_8002DFA4(dynaActor, arg2, this->actor.posRot.rot.y);
        }
    }
}

void func_8084B898(Player* this, GlobalContext* globalCtx) {
    f32 sp34;
    s16 sp32;
    s32 temp;

    this->stateFlags2 |= 0x141;

    if (func_80832CB0(globalCtx, this, &D_04003108)) {
        this->unk_850 = 1;
    } else if (this->unk_850 == 0) {
        if (func_800A4530(&this->skelAnime, 11.0f)) {
            func_80832698(this, NA_SE_VO_LI_PUSH);
        }
    }

    func_80832924(this, D_80854870);
    func_8083F524(globalCtx, this);

    if (!func_8083F9D0(globalCtx, this)) {
        func_80837268(this, &sp34, &sp32, 0.0f, globalCtx);
        temp = func_8083FFB8(this, &sp34, &sp32);
        if (temp < 0) {
            func_8083FB14(this, globalCtx);
        } else if (temp == 0) {
            func_8083F72C(this, &D_040030E0, globalCtx);
        } else {
            this->stateFlags2 |= 0x10;
        }
    }

    if (this->stateFlags2 & 0x10) {
        func_8084B840(globalCtx, this, 2.0f);
        this->linearVelocity = 2.0f;
    }
}

void func_8084B9E4(Player* this, GlobalContext* globalCtx) {
    LinkAnimetionEntry* anim;
    f32 sp70;
    s16 sp6E;
    s32 temp1;
    Vec3f sp5C;
    f32 temp2;
    CollisionPoly* sp54;
    u32 sp50;
    Vec3f sp44;
    Vec3f sp38;

    anim = D_80853C74[this->unk_15B];
    this->stateFlags2 |= 0x141;

    if (func_80832CB0(globalCtx, this, anim)) {
        this->unk_850 = 1;
    } else {
        if (this->unk_850 == 0) {
            if (func_800A4530(&this->skelAnime, 11.0f)) {
                func_80832698(this, NA_SE_VO_LI_PUSH);
            }
        } else {
            func_80832924(this, D_80854878);
        }
    }

    func_8083F524(globalCtx, this);

    if (!func_8083F9D0(globalCtx, this)) {
        func_80837268(this, &sp70, &sp6E, 0.0f, globalCtx);
        temp1 = func_8083FFB8(this, &sp70, &sp6E);
        if (temp1 > 0) {
            func_8083FAB8(this, globalCtx);
        } else if (temp1 == 0) {
            func_8083F72C(this, D_80853C8C[this->unk_15B], globalCtx);
        } else {
            this->stateFlags2 |= 0x10;
        }
    }

    if (this->stateFlags2 & 0x10) {
        temp2 = func_8083973C(globalCtx, this, &D_80854880, &sp5C) - this->actor.posRot.pos.y;
        if (fabsf(temp2) < 20.0f) {
            sp44.x = this->actor.posRot.pos.x;
            sp44.z = this->actor.posRot.pos.z;
            sp44.y = sp5C.y;
            if (func_8003DE84(&globalCtx->colCtx, &sp44, &sp5C, &sp38, &sp54, 1, 0, 0, 1, &sp50) == 0) {
                func_8084B840(globalCtx, this, -2.0f);
                return;
            }
        }
        this->stateFlags2 &= ~0x10;
    }
}

void func_8084BBE4(Player* this, GlobalContext* globalCtx) {
    f32 sp3C;
    s16 sp3A;
    LinkAnimetionEntry* anim;
    f32 temp;

    this->stateFlags2 |= 0x40;

    if (func_800A3BC0(globalCtx, &this->skelAnime)) {
        // clang-format off
        anim = (this->unk_84F > 0) ? &D_04002F28 : D_80853CD4[this->unk_15B]; func_80832284(globalCtx, this, anim);
        // clang-format on
    } else if (this->unk_84F == 0) {
        if (this->skelAnime.linkAnimetionSeg == &D_04002F10) {
            temp = 11.0f;
        } else {
            temp = 1.0f;
        }

        if (func_800A4530(&this->skelAnime, temp)) {
            func_80832770(this, NA_SE_PL_WALK_GROUND);
            if (this->skelAnime.linkAnimetionSeg == &D_04002F10) {
                this->unk_84F = 1;
            } else {
                this->unk_84F = -1;
            }
        }
    }

    Math_ApproxUpdateScaledS(&this->actor.shape.rot.y, this->currentYaw, 0x800);

    if (this->unk_84F != 0) {
        func_80837268(this, &sp3C, &sp3A, 0.0f, globalCtx);
        if (this->unk_847[this->unk_846] >= 0) {
            if (this->unk_84F > 0) {
                anim = D_80853CA4[this->unk_15B];
            } else {
                anim = D_80853CEC[this->unk_15B];
            }
            func_8083A9B8(this, anim, globalCtx);
            return;
        }

        if (CHECK_PAD(D_80858AB4->cur, A_BUTTON) || (this->actor.shape.unk_15 != 0)) {
            func_80837B60(this);
            if (this->unk_84F < 0) {
                this->linearVelocity = -0.8f;
            } else {
                this->linearVelocity = 0.8f;
            }
            func_80837B9C(this, globalCtx);
            this->stateFlags1 &= ~0x6000;
        }
    }
}

void func_8084BDFC(Player* this, GlobalContext* globalCtx) {
    this->stateFlags2 |= 0x40;

    if (func_800A3BC0(globalCtx, &this->skelAnime)) {
        func_80832E48(this, 1);
        func_8083C0E8(this, globalCtx);
        return;
    }

    if (func_800A4530(&this->skelAnime, this->skelAnime.animFrameCount - 6.0f)) {
        func_808328A0(this);
    } else if (func_800A4530(&this->skelAnime, this->skelAnime.animFrameCount - 34.0f)) {
        this->stateFlags1 &= ~0x6000;
        func_8002F7DC(&this->actor, NA_SE_PL_CLIMB_CLIFF);
        func_80832698(this, NA_SE_VO_LI_CLIMB_END);
    }
}

void func_8084BEE4(Player* this) {
    func_8002F7DC(&this->actor, (this->unk_84F != 0) ? NA_SE_PL_WALK_WALL : NA_SE_PL_WALK_LADDER);
}

#ifdef NON_MATCHING
// matches but requires local .data
void func_8084BF1C(Player* this, GlobalContext* globalCtx) {
    static Vec3f D_8085488C = { 0.0f, 0.0f, 26.0f };
    s32 sp84;
    s32 sp80;
    f32 phi_f0;
    f32 phi_f2;
    Vec3f sp6C;
    s32 sp68;
    Vec3f sp5C;
    f32 temp_f0;
    LinkAnimetionEntry* sp54;
    LinkAnimetionEntry* sp50;

    sp84 = D_80858AB4->rel.in.y;
    sp80 = D_80858AB4->rel.in.x;

    this->dropY = this->actor.posRot.pos.y;
    this->stateFlags2 |= 0x40;

    if ((this->unk_84F != 0) && (ABS(sp84) < ABS(sp80))) {
        phi_f0 = ABS(sp80) * 0.0325f;
        sp84 = 0;
    } else {
        phi_f0 = ABS(sp84) * 0.05f;
        sp80 = 0;
    }

    if (phi_f0 < 1.0f) {
        phi_f0 = 1.0f;
    } else if (phi_f0 > 3.35f) {
        phi_f0 = 3.35f;
    }

    if (this->skelAnime.animPlaybackSpeed >= 0.0f) {
        phi_f2 = 1.0f;
    } else {
        phi_f2 = -1.0f;
    }

    this->skelAnime.animPlaybackSpeed = phi_f2 * phi_f0;

    if (this->unk_850 >= 0) {
        if ((this->actor.wallPoly != NULL) && (this->actor.wallPolySource != 50)) {
            DynaPolyActor* wallPolyActor = DynaPolyInfo_GetActor(&globalCtx->colCtx, this->actor.wallPolySource);
            if (wallPolyActor != NULL) {
                Math_Vec3f_Diff(&wallPolyActor->actor.posRot.pos, &wallPolyActor->actor.pos4, &sp6C);
                Math_Vec3f_Sum(&this->actor.posRot.pos, &sp6C, &this->actor.posRot.pos);
            }
        }

        func_8002E4B4(globalCtx, &this->actor, 26.0f, 6.0f, this->ageProperties->unk_00, 7);
        func_8083F360(globalCtx, this, 26.0f, this->ageProperties->unk_3C, 50.0f, -20.0f);
    }

    if ((this->unk_850 < 0) || !func_8083FBC0(this, globalCtx)) {
        if (func_800A3BC0(globalCtx, &this->skelAnime) != 0) {
            if (this->unk_850 < 0) {
                this->unk_850 = ABS(this->unk_850) & 1;
                return;
            }

            if (sp84 != 0) {
                sp68 = this->unk_84F + this->unk_850;

                if (sp84 > 0) {
                    D_8085488C.y = this->ageProperties->unk_40;
                    temp_f0 = func_8083973C(globalCtx, this, &D_8085488C, &sp5C);
                    if (this->actor.posRot.pos.y < temp_f0) {
                        if (this->unk_84F != 0) {
                            this->actor.posRot.pos.y = temp_f0;
                            this->stateFlags1 &= ~0x200000;
                            func_8083A5C4(globalCtx, this, this->actor.wallPoly, this->ageProperties->unk_3C,
                                          &D_04003000);
                            this->currentYaw += 0x8000;
                            this->actor.shape.rot.y = this->currentYaw;
                            func_8083A9B8(this, &D_04003000, globalCtx);
                            this->stateFlags1 |= 0x4000;
                        } else {
                            func_8083F070(this, this->ageProperties->unk_CC[this->unk_850], globalCtx);
                        }
                    } else {
                        this->skelAnime.prevFramePos = this->ageProperties->unk_4A[sp68];
                        func_80832264(globalCtx, this, this->ageProperties->unk_AC[sp68]);
                    }
                } else {
                    sp68 ^= 1;
                    if ((this->actor.posRot.pos.y - this->actor.groundY) < 15.0f) {
                        if (this->unk_84F != 0) {
                            func_8083FB7C(this, globalCtx);
                        } else {
                            if (this->unk_850 != 0) {
                                this->skelAnime.prevFramePos = this->ageProperties->unk_44;
                            }
                            func_8083F070(this, this->ageProperties->unk_C4[this->unk_850], globalCtx);
                            this->unk_850 = 1;
                        }
                    } else {
                        this->skelAnime.prevFramePos = this->ageProperties->unk_62[sp68];
                        sp54 = this->ageProperties->unk_AC[sp68];
                        SkelAnime_ChangeLinkAnim(globalCtx, &this->skelAnime, sp54, -1.0f,
                                                 SkelAnime_GetFrameCount(&sp54->genericHeader), 0.0f, 2, 0.0f);
                    }
                }

                this->unk_850 ^= 1;
            } else {
                if ((this->unk_84F != 0) && (sp80 != 0)) {
                    sp50 = this->ageProperties->unk_BC[this->unk_850];
                    if (sp80 > 0) {
                        this->skelAnime.prevFramePos = this->ageProperties->unk_7A[this->unk_850];
                        func_80832264(globalCtx, this, sp50);
                    } else {
                        this->skelAnime.prevFramePos = this->ageProperties->unk_86[this->unk_850];
                        SkelAnime_ChangeLinkAnim(globalCtx, &this->skelAnime, sp50, -1.0f,
                                                 SkelAnime_GetFrameCount(&sp50->genericHeader), 0.0f, 2, 0.0f);
                    }
                } else {
                    this->stateFlags2 |= 0x1000;
                }
            }

            return;
        }
    }

    if (this->unk_850 < 0) {
        if (((this->unk_850 == -2) &&
             (func_800A4530(&this->skelAnime, 14.0f) || func_800A4530(&this->skelAnime, 29.0f))) ||
            ((this->unk_850 == -4) &&
             (func_800A4530(&this->skelAnime, 22.0f) || func_800A4530(&this->skelAnime, 35.0f) ||
              func_800A4530(&this->skelAnime, 49.0f) || func_800A4530(&this->skelAnime, 55.0f)))) {
            func_8084BEE4(this);
        }
        return;
    }

    if (func_800A4530(&this->skelAnime, (this->skelAnime.animPlaybackSpeed > 0.0f) ? 20.0f : 0.0f)) {
        func_8084BEE4(this);
    }
}
#else
#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_player_actor/func_8084BF1C.s")
#endif

extern f32 D_80854898[2];
extern f32 D_808548A0[2];

void func_8084C5F8(Player* this, GlobalContext* globalCtx) {
    s32 temp;
    f32* sp38;
    CollisionPoly* sp34;
    s32 sp30;
    Vec3f sp24;

    this->stateFlags2 |= 0x40;

    temp = func_808374A0(globalCtx, this, &this->skelAnime, 4.0f);

    if (temp == 0) {
        this->stateFlags1 &= ~0x200000;
        return;
    }

    if ((temp > 0) || func_800A3BC0(globalCtx, &this->skelAnime)) {
        func_8083C0E8(this, globalCtx);
        this->stateFlags1 &= ~0x200000;
        return;
    }

    sp38 = D_80854898;

    if (this->unk_850 != 0) {
        func_80832924(this, D_808548A8);
        sp38 = D_808548A0;
    }

    if (func_800A4530(&this->skelAnime, sp38[0]) || func_800A4530(&this->skelAnime, sp38[1])) {
        sp24.x = this->actor.posRot.pos.x;
        sp24.y = this->actor.posRot.pos.y + 20.0f;
        sp24.z = this->actor.posRot.pos.z;
        if (func_8003C940(&globalCtx->colCtx, &sp34, &sp30, &sp24) != 0.0f) {
            this->unk_89E = func_80041F10(&globalCtx->colCtx, sp34, sp30);
            func_808328A0(this);
        }
    }
}

void func_8084C760(Player* this, GlobalContext* globalCtx) {
    this->stateFlags2 |= 0x40;

    if (func_800A3BC0(globalCtx, &this->skelAnime)) {
        if (!(this->stateFlags1 & 1)) {
            if (this->skelAnime.flags != 0) {
                this->skelAnime.flags = 0;
                return;
            }

            if (!func_8083F570(this, globalCtx)) {
                this->linearVelocity = D_80858AB4->rel.in.y * 0.03f;
            }
        }
        return;
    }

    func_80832924(this, D_808548B4);
}

void func_8084C81C(Player* this, GlobalContext* globalCtx) {
    this->stateFlags2 |= 0x40;

    if (func_800A3BC0(globalCtx, &this->skelAnime)) {
        func_8083C0E8(this, globalCtx);
        this->stateFlags2 &= ~0x40000;
        return;
    }

    func_80832924(this, D_808548D8);
}

s32 func_8084C89C(GlobalContext* globalCtx, Player* this, s32 arg2, f32* arg3) {
    Actor* rideActor;
    f32 sp50;
    f32 sp4C;
    Vec3f sp40;
    Vec3f sp34;
    CollisionPoly* sp30;
    u32 sp2C;

    rideActor = &this->rideActor->actor;
    sp50 = rideActor->posRot.pos.y + 20.0f;
    sp4C = rideActor->posRot.pos.y - 20.0f;

    *arg3 = func_8083973C(globalCtx, this, &D_808548FC[arg2], &sp40);

    return (sp4C < *arg3) && (*arg3 < sp50) &&
           !func_80839768(globalCtx, this, &D_80854914[arg2], &sp30, &sp2C, &sp34) &&
           !func_80839768(globalCtx, this, &D_8085492C[arg2], &sp30, &sp2C, &sp34);
}

s32 func_8084C9BC(Player* this, GlobalContext* globalCtx) {
    HorseActor* rideActor;
    s32 sp38;
    f32 sp34;

    rideActor = this->rideActor;

    if (this->unk_850 < 0) {
        this->unk_850 = 99;
    } else {
        sp38 = (this->unk_43C < 0) ? 0 : 1;
        if (!func_8084C89C(globalCtx, this, sp38, &sp34)) {
            sp38 ^= 1;
            if (!func_8084C89C(globalCtx, this, sp38, &sp34)) {
                return 0;
            } else {
                this->unk_43C = -this->unk_43C;
            }
        }

        if ((globalCtx->csCtx.state == 0) && (globalCtx->transitionMode == 0)) {

            if (((rideActor->unk_1F0 & 0x40) ? true : false) ||
                ((((rideActor->unk_14C == 5) || (rideActor->unk_14C == 0) || (rideActor->unk_14C == 6)) &&
                  !(rideActor->unk_1F0 & 0x80000) && !(rideActor->unk_1F0 & 0x2000000))
                     ? true
                     : false)) {

                this->stateFlags2 |= 0x400000;

                if (((rideActor->unk_1F0 & 0x40) ? true : false) ||
                    (((((rideActor->unk_14C == 5) || (rideActor->unk_14C == 0) || (rideActor->unk_14C == 6)) &&
                       !(rideActor->unk_1F0 & 0x80000) && !(rideActor->unk_1F0 & 0x2000000))
                          ? true
                          : false) &&
                     CHECK_PAD(D_80858AB4->press, A_BUTTON))) {

                    rideActor->actor.child = NULL;
                    func_80835DAC(globalCtx, this, func_8084D3E4, 0);
                    this->unk_878 = sp34 - rideActor->actor.posRot.pos.y;
                    func_80832264(globalCtx, this, (this->unk_43C < 0) ? &D_04003390 : &D_040033A0);

                    return 1;
                }
            }
        }
    }

    return 0;
}

void func_8084CBF4(Player* this, f32 arg1, f32 arg2) {
    f32 temp;
    f32 dir;

    if ((this->unk_878 != 0.0f) && (arg2 <= this->skelAnime.animCurrentFrame)) {
        if (arg1 < fabsf(this->unk_878)) {
            if (this->unk_878 >= 0.0f) {
                dir = 1;
            } else {
                dir = -1;
            }
            temp = dir * arg1;
        } else {
            temp = this->unk_878;
        }
        this->actor.posRot.pos.y += temp;
        this->unk_878 -= temp;
    }
}

void func_8084CC98(Player* this, GlobalContext* globalCtx) {
    HorseActor* rideActor;
    u8* arr;

    rideActor = this->rideActor;
    this->stateFlags2 |= 0x40;

    func_8084CBF4(this, 1.0f, 10.0f);

    if (this->unk_850 == 0) {
        if (func_800A3BC0(globalCtx, &this->skelAnime)) {
            this->skelAnime.linkAnimetionSeg = &D_040033B8;
            this->unk_850 = 99;
            return;
        }

        arr = D_80854998[(this->unk_43C < 0) ? 0 : 1];

        if (func_800A4530(&this->skelAnime, arr[0])) {
            func_8002F7DC(&this->actor, NA_SE_PL_CLIMB_CLIFF);
            return;
        }

        if (func_800A4530(&this->skelAnime, arr[1])) {
            func_8002DE74(globalCtx, this);
            func_8002F7DC(&this->actor, NA_SE_PL_SIT_ON_HORSE);
            return;
        }

        return;
    }

    func_8002DE74(globalCtx, this);
    this->skelAnime.prevFramePos = D_8085499C;

    if ((rideActor->unk_210 != this->unk_850) && ((rideActor->unk_210 >= 2) || (this->unk_850 >= 2))) {
        if ((this->unk_850 = rideActor->unk_210) < 2) {
            f32 rand = Math_Rand_ZeroOne();
            s32 temp = 0;

            this->unk_850 = 1;

            if (rand < 0.1f) {
                temp = 2;
            } else if (rand < 0.2f) {
                temp = 1;
            }
            func_80832264(globalCtx, this, D_8085498C[temp]);
        } else {
            this->skelAnime.linkAnimetionSeg = D_8085493C[this->unk_850];
            SkelAnime_SetTransition(globalCtx, &this->skelAnime, 8.0f);
            if (this->unk_850 < 4) {
                func_80834644(globalCtx, this);
                this->unk_84F = 0;
            }
        }
    }

    if (this->unk_850 == 1) {
        if ((D_808535E0 != 0) || func_8083224C(globalCtx)) {
            func_80832264(globalCtx, this, &D_040033C8);
        } else if (func_800A3BC0(globalCtx, &this->skelAnime)) {
            this->unk_850 = 99;
        } else if (this->skelAnime.linkAnimetionSeg == &D_040033B8) {
            func_80832924(this, D_808549A4);
        }
    } else {
        this->skelAnime.animCurrentFrame = rideActor->unk_214;
        func_800A3C9C(globalCtx, &this->skelAnime);
    }

    SkelAnime_LoadAnimationType1(globalCtx, this->skelAnime.limbCount, this->skelAnime.transitionDrawTbl,
                                 this->skelAnime.limbDrawTbl);

    if ((globalCtx->csCtx.state != 0) || (this->action != 0)) {
        if (this->action == 7) {
            this->action = 0;
        }
        this->unk_6AD = 0;
        this->unk_84F = 0;
    } else if ((this->unk_850 < 2) || (this->unk_850 >= 4)) {
        D_808535E0 = func_80836670(this, globalCtx);
        if (D_808535E0 != 0) {
            this->unk_84F = 0;
        }
    }

    this->actor.posRot.pos.x = rideActor->actor.posRot.pos.x + rideActor->unk_258.x;
    this->actor.posRot.pos.y = (rideActor->actor.posRot.pos.y + rideActor->unk_258.y) - 27.0f;
    this->actor.posRot.pos.z = rideActor->actor.posRot.pos.z + rideActor->unk_258.z;
    this->currentYaw = this->actor.shape.rot.y = rideActor->actor.shape.rot.y;

    if ((this->action != 0) ||
        (!func_8083224C(globalCtx) && ((rideActor->actor.speedXZ != 0.0f) || !func_8083B644(this, globalCtx)) &&
         !func_8083C1DC(this, globalCtx))) {
        if (D_808535E0 == 0) {
            if (this->unk_84F != 0) {
                if (func_800A3BC0(globalCtx, &this->skelAnime2)) {
                    rideActor->unk_1F0 &= ~0x100;
                    this->unk_84F = 0;
                }

                if (this->skelAnime2.linkAnimetionSeg == &D_040033B0) {
                    if (func_800A4530(&this->skelAnime2, 23.0f)) {
                        func_8002F7DC(&this->actor, NA_SE_IT_LASH);
                        func_80832698(this, NA_SE_VO_LI_LASH);
                    }
                    SkelAnime_LoadAnimationType1(globalCtx, this->skelAnime.limbCount, this->skelAnime.limbDrawTbl,
                                                 this->skelAnime2.limbDrawTbl);
                } else {
                    if (func_800A4530(&this->skelAnime2, 10.0f)) {
                        func_8002F7DC(&this->actor, NA_SE_IT_LASH);
                        func_80832698(this, NA_SE_VO_LI_LASH);
                    }
                    SkelAnime_LoadAnimationType3(globalCtx, this->skelAnime.limbCount, this->skelAnime.limbDrawTbl,
                                                 this->skelAnime2.limbDrawTbl, D_80853410);
                }
            } else {
                LinkAnimetionEntry* anim = NULL;

                if ((rideActor->unk_1F0 & 0x200) ? true : false) {
                    anim = &D_040033B0;
                } else if ((rideActor->unk_1F0 & 0x100) ? true : false) {
                    if ((this->unk_850 >= 2) && (this->unk_850 != 99)) {
                        anim = D_80854960[this->unk_850];
                    }
                }

                if (anim != NULL) {
                    SkelAnime_ChangeLinkAnimDefaultStop(globalCtx, &this->skelAnime2, anim);
                    this->unk_84F = 1;
                }
            }
        }

        if (this->stateFlags1 & 0x100000) {
            if (!func_8083AD4C(globalCtx, this) || (D_80858AB4->press.in.button & A_BUTTON) || func_80833BCC(this)) {
                this->unk_6AD = 0;
                this->stateFlags1 &= ~0x100000;
            } else {
                this->unk_6BE = func_8084ABD8(globalCtx, this, 1, -5000) - this->actor.shape.rot.y;
                this->unk_6BE += 5000;
                this->unk_6B0 = -5000;
            }
            return;
        }

        if ((this->action != 0) || (!func_8084C9BC(this, globalCtx) && !func_8083B040(this, globalCtx))) {
            if (this->unk_664 != NULL) {
                if (func_8002DD78(this) != 0) {
                    this->unk_6BE = func_8083DB98(this, 1) - this->actor.shape.rot.y;
                    this->unk_6BE = CLAMP(this->unk_6BE, -0x4AAA, 0x4AAA);
                    this->actor.posRot2.rot.y = this->actor.shape.rot.y + this->unk_6BE;
                    this->unk_6BE += 5000;
                    this->unk_6AE |= 0x80;
                } else {
                    func_8083DB98(this, 0);
                }
            } else {
                if (func_8002DD78(this) != 0) {
                    this->unk_6BE = func_8084ABD8(globalCtx, this, 1, -5000) - this->actor.shape.rot.y;
                    this->unk_6BE += 5000;
                    this->unk_6B0 = -5000;
                }
            }
        }
    }
}

void func_8084D3E4(Player* this, GlobalContext* globalCtx) {
    this->stateFlags2 |= 0x40;
    func_8084CBF4(this, 1.0f, 10.0f);

    if (func_800A3BC0(globalCtx, &this->skelAnime)) {
        Actor* rideActor = &this->rideActor->actor;

        func_8083C0E8(this, globalCtx);
        this->stateFlags1 &= ~0x800000;
        this->actor.parent = NULL;
        AREG(6) = 0;

        if (Flags_GetEventChkInf(0x18) || (DREG(1) != 0)) {
            gSaveContext.horseData.pos.x = rideActor->posRot.pos.x;
            gSaveContext.horseData.pos.y = rideActor->posRot.pos.y;
            gSaveContext.horseData.pos.z = rideActor->posRot.pos.z;
            gSaveContext.horseData.angle = rideActor->shape.rot.y;
        }
    } else {
        func_8005A77C(Gameplay_GetCamera(globalCtx, 0), 1);

        if (this->unk_43C < 0) {
            D_808549C4[0].unk_02 = 0x2828;
        } else {
            D_808549C4[0].unk_02 = 0x281D;
        }
        func_80832924(this, D_808549C4);
    }
}

void func_8084D530(Player* this, f32* arg1, f32 arg2, s16 arg3) {
    func_8084AEEC(this, arg1, arg2, arg3);
    func_80832924(this, D_808549D0);
}

void func_8084D574(GlobalContext* globalCtx, Player* this, s16 arg2) {
    func_80835C58(globalCtx, this, func_8084D84C, 0);
    this->actor.shape.rot.y = this->currentYaw = arg2;
    func_80832C6C(globalCtx, this, &D_040032F0);
}

void func_8084D5CC(GlobalContext* globalCtx, Player* this) {
    func_80835C58(globalCtx, this, func_8084DAB4, 0);
    func_80832C6C(globalCtx, this, &D_040032F0);
}

void func_8084D610(Player* this, GlobalContext* globalCtx) {
    f32 sp34;
    s16 sp32;

    func_80832CB0(globalCtx, this, &D_04003328);
    func_8084B000(this);

    if (!func_8083224C(globalCtx) && !func_80837348(globalCtx, this, D_80854444, 1) &&
        !func_8083D12C(globalCtx, this, D_80858AB4)) {
        if (this->unk_6AD != 1) {
            this->unk_6AD = 0;
        }

        if (this->currentBoots == 1) {
            sp34 = 0.0f;
            sp32 = this->actor.shape.rot.y;
            if (this->actor.bgCheckFlags & 1) {
                func_8083A098(this, D_80853A7C[this->unk_15B], globalCtx);
                func_808328A0(this);
            }
        } else {
            func_80837268(this, &sp34, &sp32, 0.0f, globalCtx);

            if (sp34 != 0.0f) {
                s16 temp = this->actor.shape.rot.y - sp32;
                if ((ABS(temp) > 0x6000) && !Math_ApproxF(&this->linearVelocity, 0.0f, 1.0f)) {
                    return;
                }

                if (func_80833C04(this)) {
                    func_8084D5CC(globalCtx, this);
                } else {
                    func_8084D574(globalCtx, this, sp32);
                }
            }
        }

        func_8084AEEC(this, &this->linearVelocity, sp34, sp32);
    }
}

void func_8084D7C4(Player* this, GlobalContext* globalCtx) {
    if (!func_8083B040(this, globalCtx)) {
        this->stateFlags2 |= 0x20;

        func_8084B158(globalCtx, this, NULL, this->linearVelocity);
        func_8084B000(this);

        if (DECR(this->unk_850) == 0) {
            func_80838F18(globalCtx, this);
        }
    }
}

void func_8084D84C(Player* this, GlobalContext* globalCtx) {
    f32 sp34;
    s16 sp32;
    s16 temp;

    this->stateFlags2 |= 0x20;

    func_8084B158(globalCtx, this, D_80858AB4, this->linearVelocity);
    func_8084B000(this);

    if (!func_80837348(globalCtx, this, D_80854444, 1) && !func_8083D12C(globalCtx, this, D_80858AB4)) {
        func_80837268(this, &sp34, &sp32, 0.0f, globalCtx);

        temp = this->actor.shape.rot.y - sp32;
        if ((sp34 == 0.0f) || (ABS(temp) > 0x6000) || (this->currentBoots == 1)) {
            func_80838F18(globalCtx, this);
        } else if (func_80833C04(this)) {
            func_8084D5CC(globalCtx, this);
        }

        func_8084D530(this, &this->linearVelocity, sp34, sp32);
    }
}

s32 func_8084D980(GlobalContext* globalCtx, Player* this, f32* arg2, s16* arg3) {
    LinkAnimetionEntry* anim;
    s16 temp1;
    s32 temp2;

    temp1 = this->currentYaw - *arg3;

    if (ABS(temp1) > 0x6000) {
        anim = &D_04003328;
        if (Math_ApproxF(&this->linearVelocity, 0.0f, 1.0f)) {
            this->currentYaw = *arg3;
        } else {
            *arg2 = 0.0f;
            *arg3 = this->currentYaw;
        }
    } else {
        temp2 = func_8083FD78(this, arg2, arg3, globalCtx);
        if (temp2 > 0) {
            anim = &D_040032F0;
        } else if (temp2 < 0) {
            anim = &D_040032D8;
        } else if ((temp1 = this->actor.shape.rot.y - *arg3) > 0) {
            anim = &D_040032D0;
        } else {
            anim = &D_040032C8;
        }
    }

    if (anim != this->skelAnime.linkAnimetionSeg) {
        func_80832C6C(globalCtx, this, anim);
        return 1;
    }

    return 0;
}

void func_8084DAB4(Player* this, GlobalContext* globalCtx) {
    f32 sp2C;
    s16 sp2A;

    func_8084B158(globalCtx, this, D_80858AB4, this->linearVelocity);
    func_8084B000(this);

    if (!func_80837348(globalCtx, this, D_80854444, 1) && !func_8083D12C(globalCtx, this, D_80858AB4)) {
        func_80837268(this, &sp2C, &sp2A, 0.0f, globalCtx);

        if (sp2C == 0.0f) {
            func_80838F18(globalCtx, this);
        } else if (!func_80833C04(this)) {
            func_8084D574(globalCtx, this, sp2A);
        } else {
            func_8084D980(globalCtx, this, &sp2C, &sp2A);
        }

        func_8084D530(this, &this->linearVelocity, sp2C, sp2A);
    }
}

void func_8084DBC4(GlobalContext* globalCtx, Player* this, f32 arg2) {
    f32 sp2C;
    s16 sp2A;

    func_80837268(this, &sp2C, &sp2A, 0.0f, globalCtx);
    func_8084AEEC(this, &this->linearVelocity, sp2C * 0.5f, sp2A);
    func_8084AEEC(this, &this->actor.velocity.y, arg2, this->currentYaw);
}

void func_8084DC48(Player* this, GlobalContext* globalCtx) {
    f32 sp2C;

    this->stateFlags2 |= 0x20;
    this->actor.gravity = 0.0f;
    func_80836670(this, globalCtx);

    if (!func_8083B040(this, globalCtx)) {
        if (this->currentBoots == 1) {
            func_80838F18(globalCtx, this);
            return;
        }

        if (this->unk_84F == 0) {
            if (this->unk_850 == 0) {
                if (func_800A3BC0(globalCtx, &this->skelAnime) ||
                    ((this->skelAnime.animCurrentFrame >= 22.0f) && !CHECK_PAD(D_80858AB4->cur, A_BUTTON))) {
                    func_8083D330(globalCtx, this);
                } else if (func_800A4530(&this->skelAnime, 20.0f) != 0) {
                    this->actor.velocity.y = -2.0f;
                }
                func_8083721C(this);
                return;
            }

            func_8084B158(globalCtx, this, D_80858AB4, this->actor.velocity.y);
            this->unk_6C2 = 16000;

            if (CHECK_PAD(D_80858AB4->cur, A_BUTTON) && !func_8083E5A8(this, globalCtx) &&
                !(this->actor.bgCheckFlags & 1) && (this->actor.waterY < D_80854784[CUR_UPG_VALUE(UPG_SCALE)])) {
                func_8084DBC4(globalCtx, this, -2.0f);
            } else {
                this->unk_84F++;
                func_80832C6C(globalCtx, this, &D_04003328);
            }
        } else if (this->unk_84F == 1) {
            func_800A3BC0(globalCtx, &this->skelAnime);
            func_8084B000(this);
            if (this->unk_6C2 < 10000) {
                this->unk_84F++;
                this->unk_850 = this->actor.waterY;
                func_80832C6C(globalCtx, this, &D_040032F0);
            }
        } else if (!func_8083D12C(globalCtx, this, D_80858AB4)) {
            sp2C = (this->unk_850 * 0.018f) + 4.0f;
            if (this->stateFlags1 & 0x800) {
                D_80858AB4 = NULL;
            }
            func_8084B158(globalCtx, this, D_80858AB4, fabsf(this->actor.velocity.y));
            Math_ApproxUpdateScaledS(&this->unk_6C2, -10000, 800);
            if (sp2C > 8.0f) {
                sp2C = 8.0f;
            }
            func_8084DBC4(globalCtx, this, sp2C);
        }
    }
}

void func_8084DF6C(GlobalContext* globalCtx, Player* this) {
    this->unk_862 = 0;
    this->stateFlags1 &= ~0xC00;
    this->getItemId = 0;
    func_8005B1A4(Gameplay_GetCamera(globalCtx, 0));
}

void func_8084DFAC(GlobalContext* globalCtx, Player* this) {
    func_8084DF6C(globalCtx, this);
    func_808322FC(this);
    func_8083C0E8(this, globalCtx);
    this->currentYaw = this->actor.shape.rot.y;
}

s32 func_8084DFF4(GlobalContext* globalCtx, Player* this) {
    GetItemEntry* giEntry;
    s32 temp1;
    s32 temp2;

    if (this->getItemId == 0) {
        return 1;
    }

    if (this->unk_84F == 0) {
        giEntry = &D_80853624[this->getItemId - 1];
        this->unk_84F = 1;

        func_8010B680(globalCtx, giEntry->textId, &this->actor);
        Item_Give(globalCtx, giEntry->itemId);

        if (((this->getItemId >= GI_RUPEE_GREEN) && (this->getItemId <= GI_RUPEE_RED)) ||
            ((this->getItemId >= GI_RUPEE_PURPLE) && (this->getItemId <= GI_RUPEE_GOLD)) ||
            ((this->getItemId >= GI_RUPEE_GREEN_LOSE) && (this->getItemId <= GI_RUPEE_PURPLE_LOSE)) ||
            (this->getItemId == GI_HEART)) {
            Audio_PlaySoundGeneral(NA_SE_SY_GET_BOXITEM, &D_801333D4, 4, &D_801333E0, &D_801333E0, &D_801333E8);
        } else {
            if ((this->getItemId == GI_HEART_CONTAINER_2) || (this->getItemId == GI_HEART_CONTAINER) ||
                ((this->getItemId == GI_HEART_PIECE) && ((gSaveContext.questItems & 0xF0000000) == 0x40000000))) {
                temp1 = 0x924;
            } else {
                temp1 = temp2 = (this->getItemId == GI_HEART_PIECE) ? 0x39 : 0x922;
            }
            func_800F5C64(temp1);
        }
    } else {
        if (func_8010BDBC(&globalCtx->msgCtx) == 2) {
            if (this->getItemId == GI_GAUNTLETS_SILVER) {
                globalCtx->nextEntranceIndex = 0x0123;
                globalCtx->sceneLoadFlag = 0x14;
                gSaveContext.nextCutsceneIndex = 0xFFF1;
                globalCtx->fadeTransition = 0xF;
                this->stateFlags1 &= ~0x20000000;
                func_80852FFC(globalCtx, NULL, 8);
            }
            this->getItemId = 0;
        }
    }

    return 0;
}

void func_8084E1EC(Player* this, GlobalContext* globalCtx) {
    this->stateFlags2 |= 0x20;

    if (func_800A3BC0(globalCtx, &this->skelAnime)) {
        if (!(this->stateFlags1 & 0x400) || func_8084DFF4(globalCtx, this)) {
            func_8084DF6C(globalCtx, this);
            func_80838F18(globalCtx, this);
            func_80832340(globalCtx, this);
        }
    } else {
        if ((this->stateFlags1 & 0x400) && func_800A4530(&this->skelAnime, 10.0f)) {
            func_808332F4(this, globalCtx);
            func_80832340(globalCtx, this);
            func_80835EA4(globalCtx, 8);
        } else if (func_800A4530(&this->skelAnime, 5.0f)) {
            func_80832698(this, NA_SE_VO_LI_BREATH_DRINK);
        }
    }

    func_8084B000(this);
    func_8084AEEC(this, &this->linearVelocity, 0.0f, this->actor.shape.rot.y);
}

void func_8084E30C(Player* this, GlobalContext* globalCtx) {
    func_8084B000(this);

    if (func_800A3BC0(globalCtx, &this->skelAnime)) {
        func_80838F18(globalCtx, this);
    }

    func_8084AEEC(this, &this->linearVelocity, 0.0f, this->actor.shape.rot.y);
}

void func_8084E368(Player* this, GlobalContext* globalCtx) {
    func_8084B000(this);

    if (func_800A3BC0(globalCtx, &this->skelAnime)) {
        func_80843AE8(globalCtx, this);
    }

    func_8084AEEC(this, &this->linearVelocity, 0.0f, this->actor.shape.rot.y);
}

void func_8084E3C4(Player* this, GlobalContext* globalCtx) {
    if (func_800A3BC0(globalCtx, &this->skelAnime)) {
        func_808322A4(globalCtx, this, &D_040030A8);
        this->unk_850 = 1;
        if (this->stateFlags2 & 0x2800000) {
            this->stateFlags2 |= 0x1000000;
        } else {
            func_8010BD58(globalCtx, 1);
        }
        return;
    }

    if (this->unk_850 == 0) {
        return;
    }

    if (globalCtx->msgCtx.unk_E3EE == 4) {
        func_8005B1A4(Gameplay_GetCamera(globalCtx, 0));
        if ((this->naviTargetActor != NULL) && (this->naviTargetActor == this->unk_6A8)) {
            func_80853148(globalCtx, this->naviTargetActor);
        } else if (this->naviMessageId < 0) {
            this->naviTargetActor = this->navi;
            this->navi->textId = -this->naviMessageId;
            func_80853148(globalCtx, this->naviTargetActor);
        } else if (!func_8083B040(this, globalCtx)) {
            func_8083A098(this, &D_04003098, globalCtx);
        }
        this->stateFlags2 &= ~0x3800000;
        this->unk_6A8 = NULL;
    } else if (globalCtx->msgCtx.unk_E3EE == 2) {
        gSaveContext.respawn[RESPAWN_MODE_RETURN].entranceIndex = D_808549D4[globalCtx->msgCtx.unk_E3EC];
        gSaveContext.respawn[RESPAWN_MODE_RETURN].playerParams = 0x5FF;
        gSaveContext.respawn[RESPAWN_MODE_RETURN].data = globalCtx->msgCtx.unk_E3EC;
        this->action = 0;
        this->stateFlags1 &= ~0x20000000;
        func_80852FFC(globalCtx, NULL, 8);
        globalCtx->mainCamera.unk_14C &= ~8;
        this->stateFlags1 |= 0x30000000;
        this->stateFlags2 |= 0x8000000;
        if (Actor_Spawn(&globalCtx->actorCtx, globalCtx, ACTOR_DEMO_KANKYO, 0.0f, 0.0f, 0.0f, 0, 0, 0, 0xF) == NULL) {
            func_800776E4(globalCtx);
        }
        gSaveContext.seqIndex = 0xFF;
        gSaveContext.nightSeqIndex = 0xFF;
    }
}

void func_8084E604(Player* this, GlobalContext* globalCtx) {
    if (func_800A3BC0(globalCtx, &this->skelAnime)) {
        func_8083A098(this, &D_04003050, globalCtx);
    } else if (func_800A4530(&this->skelAnime, 3.0f)) {
        Inventory_ChangeAmmo(ITEM_NUT, -1);
        Actor_Spawn(&globalCtx->actorCtx, globalCtx, ACTOR_EN_ARROW, this->unk_908[15].x, this->unk_908[15].y,
                    this->unk_908[15].z, 4000, this->actor.shape.rot.y, 0, 0xA);
        func_80832698(this, NA_SE_VO_LI_SWORD_N);
    }

    func_8083721C(this);
}

void func_8084E6D4(Player* this, GlobalContext* globalCtx) {
    s32 cond;

    if (func_800A3BC0(globalCtx, &this->skelAnime)) {
        if (this->unk_850 != 0) {
            if (this->unk_850 >= 2) {
                this->unk_850--;
            }

            if (func_8084DFF4(globalCtx, this) && (this->unk_850 == 1)) {
                cond = ((this->naviTargetActor != NULL) && (this->exchangeItemId < 0)) || (this->unk_692 & 0x20);

                if (cond || (gSaveContext.healthAccumulator == 0)) {
                    if (cond) {
                        func_8084DF6C(globalCtx, this);
                        this->exchangeItemId = 0;

                        if (func_8084B4D4(globalCtx, this) == 0) {
                            func_80853148(globalCtx, this->naviTargetActor);
                        }
                    } else {
                        func_8084DFAC(globalCtx, this);
                    }
                }
            }
        } else {
            func_80832DBC(this);

            if (this->getItemId == GI_ICE_TRAP) {
                this->stateFlags1 &= ~0xC00;

                if (this->getItemId != GI_ICE_TRAP) {
                    Actor_Spawn(&globalCtx->actorCtx, globalCtx, ACTOR_EN_CLEAR_TAG, this->actor.posRot.pos.x,
                                this->actor.posRot.pos.y + 100.0f, this->actor.posRot.pos.z, 0, 0, 0, 0);
                    func_8083C0E8(this, globalCtx);
                } else {
                    this->actor.colChkInfo.damage = 0;
                    func_80837C0C(globalCtx, this, 3, 0.0f, 0.0f, 0, 20);
                }
                return;
            }

            if (this->skelAnime.linkAnimetionSeg == &D_04002DF8) {
                func_808322D0(globalCtx, this, &D_04002788);
            } else {
                func_808322D0(globalCtx, this, &D_04002780);
            }

            this->unk_850 = 2;
            func_80835EA4(globalCtx, 9);
        }
    } else {
        if (this->unk_850 == 0) {
            if (LINK_IS_CHILD) {
                func_80832924(this, D_808549E0);
            }
            return;
        }

        if (this->skelAnime.linkAnimetionSeg == &D_04002788) {
            Math_ApproxUpdateScaledS(&this->actor.shape.rot.y, func_8005A9F4(ACTIVE_CAM) + 0x8000, 4000);
        }

        if (func_800A4530(&this->skelAnime, 21.0f)) {
            func_808332F4(this, globalCtx);
        }
    }
}

void func_8084E988(Player* this) {
    func_80832924(this, D_808549F0);
}

void func_8084E9AC(Player* this, GlobalContext* globalCtx) {
    if (func_800A3BC0(globalCtx, &this->skelAnime)) {
        if (this->unk_84F == 0) {
            if (DECR(this->unk_850) == 0) {
                this->unk_84F = 1;
                this->skelAnime.animFrameCount = this->skelAnime.totalFrames - 1.0f;
            }
        } else {
            func_8083C0E8(this, globalCtx);
        }
    } else {
        if (LINK_IS_ADULT && func_800A4530(&this->skelAnime, 158.0f)) {
            func_80832698(this, NA_SE_VO_LI_SWORD_N);
            return;
        }

        if (LINK_IS_CHILD) {
            func_80832924(this, D_808549F4);
        } else {
            func_8084E988(this);
        }
    }
}

void func_8084EAC0(Player* this, GlobalContext* globalCtx) {
    s32 phi_v1;
    s32 sp28;

    if (func_800A3BC0(globalCtx, &this->skelAnime)) {
        if (this->unk_850 == 0) {
            if (this->unk_154 == 0x22) {
                phi_v1 = Math_Rand_S16Offset(-1, 3);

                if (phi_v1 == 0) {
                    phi_v1 = 3;
                }

                if ((phi_v1 < 0) && (gSaveContext.health <= 0x10)) {
                    phi_v1 = 3;
                }

                if (phi_v1 < 0) {
                    Health_ChangeBy(globalCtx, -0x10);
                } else {
                    gSaveContext.healthAccumulator = phi_v1 * 0x10;
                }
            } else {
                sp28 = D_808549D7[this->unk_154];

                if (sp28 & 1) {
                    gSaveContext.healthAccumulator = 0x140;
                }
                if (sp28 & 2) {
                    func_80087680(globalCtx);
                }
                if (sp28 & 4) {
                    gSaveContext.healthAccumulator = 0x50;
                }
            }

            func_808322A4(globalCtx, this, &D_04002670);
            this->unk_850 = 1;
            return;
        }

        func_8083C0E8(this, globalCtx);
        func_8005B1A4(Gameplay_GetCamera(globalCtx, 0));
    } else if (this->unk_850 == 1) {
        if ((gSaveContext.healthAccumulator == 0) && (gSaveContext.unk_13F0 != 9)) {
            func_80832B78(globalCtx, this, &D_04002660);
            this->unk_850 = 2;
            func_8008ED9C(globalCtx, this, ITEM_BOTTLE, 0x1E);
        }
        func_80832698(this, NA_SE_VO_LI_DRINK - SFX_FLAG);
    } else if ((this->unk_850 == 2) && func_800A4530(&this->skelAnime, 29.0f)) {
        func_80832698(this, NA_SE_VO_LI_BREATH_DRINK);
    }
}

void func_8084ECA4(Player* this, GlobalContext* globalCtx) {
    struct_80854554* sp24;
    struct_80854A04* entry;
    s32 temp;
    s32 i;

    sp24 = &D_80854554[this->unk_850];
    func_8083721C(this);

    if (func_800A3BC0(globalCtx, &this->skelAnime)) {
        if (this->unk_84F != 0) {
            if (this->unk_850 == 0) {
                func_8010B680(globalCtx, D_80854A04[this->unk_84F - 1].unk_04, &this->actor);
                func_800F5C64(0x922);
                this->unk_850 = 1;
            } else if (func_8010BDBC(&globalCtx->msgCtx) == 2) {
                this->unk_84F = 0;
                func_8005B1A4(Gameplay_GetCamera(globalCtx, 0));
            }
        } else {
            func_8083C0E8(this, globalCtx);
        }
    } else {
        if (this->unk_84F == 0) {
            temp = this->skelAnime.animCurrentFrame - sp24->unk_08;
            if (temp >= 0) {
                if (sp24->unk_09 >= temp) {
                    if (this->unk_850 != 0) {
                        if (temp == 0) {
                            func_8002F7DC(&this->actor, NA_SE_IT_SCOOP_UP_WATER);
                        }
                    }

                    if (this->interactRangeActor != NULL) {
                        entry = &D_80854A04[0];
                        for (i = 0; i < 4; i++, entry++) {
                            if (this->interactRangeActor->id == entry->unk_00) {
                                break;
                            }
                        }

                        if (i < 4) {
                            this->unk_84F = i + 1;
                            this->unk_850 = 0;
                            this->stateFlags1 |= 0x30000000;
                            this->interactRangeActor->parent = &this->actor;
                            func_8008ED9C(globalCtx, this, entry->unk_02, ABS(entry->unk_03));
                            func_808322D0(globalCtx, this, sp24->unk_04);
                            func_80835EA4(globalCtx, 4);
                        }
                    }
                }
            }
        }
    }

    if (this->skelAnime.animCurrentFrame <= 7.0f) {
        this->stateFlags1 |= 2;
    }
}

void func_8084EED8(Player* this, GlobalContext* globalCtx) {
    if (func_800A3BC0(globalCtx, &this->skelAnime)) {
        func_8083C0E8(this, globalCtx);
        func_8005B1A4(Gameplay_GetCamera(globalCtx, 0));
        return;
    } else if (func_800A4530(&this->skelAnime, 37.0f)) {
        func_80839680(globalCtx, this, &this->unk_3B0, &D_80854A1C, 1);
        func_8008ED9C(globalCtx, this, ITEM_BOTTLE, 0x1E);
        func_8002F7DC(&this->actor, NA_SE_EV_BOTTLE_CAP_OPEN);
        func_8002F7DC(&this->actor, NA_SE_EV_FIATY_HEAL - SFX_FLAG);
        return;
    } else if (func_800A4530(&this->skelAnime, 47.0f)) {
        gSaveContext.healthAccumulator = 0x140;
    }
}

void func_8084EFC0(Player* this, GlobalContext* globalCtx) {
    func_8083721C(this);

    if (func_800A3BC0(globalCtx, &this->skelAnime)) {
        func_8083C0E8(this, globalCtx);
        func_8005B1A4(Gameplay_GetCamera(globalCtx, 0));
    } else if (func_800A4530(&this->skelAnime, 76.0f)) {
        BottleActorInfo* actorInfo = &D_80854A28[this->unk_154 - 0x1F];
        Actor_Spawn(&globalCtx->actorCtx, globalCtx, actorInfo->id,
                    (Math_Sins(this->actor.shape.rot.y) * 5.0f) + this->unk_3B0.x, this->unk_3B0.y,
                    (Math_Coss(this->actor.shape.rot.y) * 5.0f) + this->unk_3B0.z, 0x4000, this->actor.shape.rot.y, 0,
                    actorInfo->params);
        func_8008ED9C(globalCtx, this, ITEM_BOTTLE, 0x1E);
    } else {
        func_80832924(this, D_80854A34);
    }
}

void func_8084F104(Player* this, GlobalContext* globalCtx) {
    this->stateFlags2 |= 0x20;

    if (func_800A3BC0(globalCtx, &this->skelAnime)) {
        if (this->unk_850 < 0) {
            func_8083C0E8(this, globalCtx);
        } else if (this->exchangeItemId == 0) {
            Actor* naviTargetActor = this->naviTargetActor;
            this->unk_862 = 0;
            if (naviTargetActor->textId != 0xFFFF) {
                this->actor.flags |= 0x100;
            }
            func_80853148(globalCtx, naviTargetActor);
        } else {
            GetItemEntry* giEntry = &D_80853624[D_80854528[this->exchangeItemId - 1] - 1];

            if (this->unk_154 >= 0x2B) {
                if (giEntry->gi >= 0) {
                    this->unk_862 = giEntry->gi;
                } else {
                    this->unk_862 = -giEntry->gi;
                }
            }

            if (this->unk_850 == 0) {
                func_8010B680(globalCtx, this->actor.textId, &this->actor);
                if ((this->unk_154 == 0x2D) || (this->unk_154 == 0x30)) {
                    func_8002F7DC(&this->actor, NA_SE_EV_CHICKEN_CRY_M);
                }
                this->unk_850 = 1;
            } else if (func_8010BDBC(&globalCtx->msgCtx) == 2) {
                this->actor.flags &= ~0x100;
                this->unk_862 = 0;

                if (this->unk_84F == 1) {
                    func_80832264(globalCtx, this, &D_04002698);
                    this->unk_850 = -1;
                } else {
                    func_8083C0E8(this, globalCtx);
                }

                func_8005B1A4(Gameplay_GetCamera(globalCtx, 0));
            }
        }
    } else if (this->unk_850 >= 0) {
        func_80832924(this, D_80854A3C);
    }

    if ((this->unk_84F == 0) && (this->unk_664 != NULL)) {
        this->currentYaw = this->actor.shape.rot.y = func_8083DB98(this, 0);
    }
}

void func_8084F308(Player* this, GlobalContext* globalCtx) {
    this->stateFlags2 |= 0x60;

    if (func_800A3BC0(globalCtx, &this->skelAnime)) {
        func_80832284(globalCtx, this, &D_04003128);
    }

    if (func_80832594(this, 0, 100)) {
        func_80839F90(this, globalCtx);
        this->stateFlags2 &= ~0x80;
    }
}

void func_8084F390(Player* this, GlobalContext* globalCtx) {
    CollisionPoly* floorPoly;
    f32 sp50;
    f32 sp4C;
    f32 sp48;
    s16 sp46;
    s16 sp44;
    Vec3f sp38;

    this->stateFlags2 |= 0x60;
    func_800A3BC0(globalCtx, &this->skelAnime);
    func_8084269C(globalCtx, this);
    func_800F4138(&this->actor.projectedPos, NA_SE_PL_SLIP_LEVEL - SFX_FLAG, this->actor.speedXZ);

    if (func_8083B040(this, globalCtx) == 0) {
        floorPoly = this->actor.floorPoly;

        if (floorPoly == NULL) {
            func_80837B9C(this, globalCtx);
            return;
        }

        func_8083E298(floorPoly, &sp38, &sp46);

        sp44 = sp46;
        if (this->unk_84F != 0) {
            sp44 = sp46 + 0x8000;
        }

        if (this->linearVelocity < 0) {
            sp46 += 0x8000;
        }

        sp50 = (1.0f - sp38.y) * 40.0f;
        sp50 = CLAMP(sp50, 0, 10.0f);
        sp4C = (sp50 * sp50) * 0.015f;
        sp48 = sp38.y * 0.01f;

        if (func_80041F7C(&globalCtx->colCtx, floorPoly, this->actor.floorPolySource) != 1) {
            sp50 = 0;
            sp48 = sp38.y * 10.0f;
        }

        if (sp4C < 1.0f) {
            sp4C = 1.0f;
        }

        if (func_80077C6C(&this->linearVelocity, sp50, sp4C, sp48) && (sp50 == 0)) {
            LinkAnimetionEntry* anim;
            if (this->unk_84F == 0) {
                anim = D_80853D04[this->unk_15B];
            } else {
                anim = D_80853D1C[this->unk_15B];
            }
            func_8083A098(this, anim, globalCtx);
        }

        Math_SmoothScaleMaxMinS(&this->currentYaw, sp46, 10, 4000, 800);
        Math_ApproxUpdateScaledS(&this->actor.shape.rot.y, sp44, 2000);
    }
}

void func_8084F608(Player* this, GlobalContext* globalCtx) {
    if (DECR(this->unk_850) == 0) {
        if (func_8083ADD4(globalCtx, this)) {
            func_80852280(globalCtx, this, NULL);
            func_80835C58(globalCtx, this, func_80852E14, 0);
            func_80852E14(this, globalCtx);
        }
    }
}

void func_8084F698(Player* this, GlobalContext* globalCtx) {
    func_80835C58(globalCtx, this, func_8084F608, 0);
    this->unk_850 = 40;
    Actor_Spawn(&globalCtx->actorCtx, globalCtx, ACTOR_DEMO_KANKYO, 0.0f, 0.0f, 0.0f, 0, 0, 0, 0x10);
}

void func_8084F710(Player* this, GlobalContext* globalCtx) {
    s32 pad;

    if ((this->unk_84F != 0) && (globalCtx->csCtx.frames < 0x131)) {
        this->actor.gravity = 0.0f;
        this->actor.velocity.y = 0.0f;
    } else if (D_80853600 < 150.0f) {
        if (func_800A3BC0(globalCtx, &this->skelAnime)) {
            if (this->unk_850 == 0) {
                if (this->actor.bgCheckFlags & 1) {
                    this->skelAnime.animFrameCount = this->skelAnime.totalFrames - 1.0f;
                    func_808328A0(this);
                    this->unk_850 = 1;
                }
            } else {
                if ((globalCtx->sceneNum == SCENE_SPOT04) && func_8083ADD4(globalCtx, this)) {
                    return;
                }
                func_80853080(this, globalCtx);
            }
        }
        Math_SmoothScaleMaxMinF(&this->actor.velocity.y, 2.0f, 0.3f, 8.0f, 0.5f);
    }

    if ((globalCtx->sceneNum == SCENE_KENJYANOMA) && func_8083ADD4(globalCtx, this)) {
        return;
    }

    if ((globalCtx->csCtx.state != 0) && (globalCtx->csCtx.linkAction != NULL)) {
        f32 sp28 = this->actor.posRot.pos.y;
        func_808529D0(globalCtx, this, globalCtx->csCtx.linkAction);
        this->actor.posRot.pos.y = sp28;
    }
}

void func_8084F88C(Player* this, GlobalContext* globalCtx) {
    func_800A3BC0(globalCtx, &this->skelAnime);

    if (((this->unk_850++ <= 8) ^ 1) && (globalCtx->sceneLoadFlag == 0)) {
        if (this->unk_84F != 0) {
            if (globalCtx->sceneNum == 9) {
                Gameplay_TriggerRespawn(globalCtx);
                globalCtx->nextEntranceIndex = 0x0088;
            } else if (this->unk_84F < 0) {
                Gameplay_TriggerRespawn(globalCtx);
            } else {
                Gameplay_TriggerVoidOut(globalCtx);
            }
            globalCtx->fadeTransition = 4;
            func_80078884(NA_SE_OC_ABYSS);
        } else {
            globalCtx->fadeTransition = 2;
            gSaveContext.nextTransition = 2;
            gSaveContext.seqIndex = 0xFF;
            gSaveContext.nightSeqIndex = 0xFF;
        }
        globalCtx->sceneLoadFlag = 0x14;
    }
}

void func_8084F9A0(Player* this, GlobalContext* globalCtx) {
    func_80839800(this, globalCtx);
}

void func_8084F9C0(Player* this, GlobalContext* globalCtx) {
    this->actor.gravity = -1.0f;
    func_800A3BC0(globalCtx, &this->skelAnime);

    if (this->actor.velocity.y < 0.0f) {
        func_80837B9C(this, globalCtx);
    } else if (this->actor.velocity.y < 6.0f) {
        Math_ApproxF(&this->linearVelocity, 3.0f, 0.5f);
    }
}

void func_8084FA54(Player* this, GlobalContext* globalCtx) {
    this->unk_6AD = 2;

    func_8083AD4C(globalCtx, this);
    func_800A3BC0(globalCtx, &this->skelAnime);
    func_80836670(this, globalCtx);

    this->unk_6BE = func_8084ABD8(globalCtx, this, 1, 0) - this->actor.shape.rot.y;
    this->unk_6AE |= 0x80;

    if (globalCtx->unk_11E5C < 0) {
        globalCtx->unk_11E5C++;
        if (globalCtx->unk_11E5C == 0) {
            func_8083C148(this, globalCtx);
        }
    }
}

void func_8084FB10(Player* this, GlobalContext* globalCtx) {
    if (this->unk_84F >= 0) {
        if (this->unk_84F < 6) {
            this->unk_84F++;
        }

        if (func_80832594(this, 1, 100)) {
            this->unk_84F = -1;
            func_80029FAC(globalCtx, &this->actor.posRot.pos, this->actor.scale.x);
            func_8002F7DC(&this->actor, NA_SE_PL_ICE_BROKEN);
        } else {
            this->stateFlags2 |= 0x4000;
        }

        if ((globalCtx->gameplayFrames % 4) == 0) {
            func_808530E0(globalCtx, -1);
        }
    } else {
        if (func_800A3BC0(globalCtx, &this->skelAnime)) {
            func_80839F90(this, globalCtx);
            func_80837AFC(this, -20);
        }
    }
}

void func_8084FBF4(Player* this, GlobalContext* globalCtx) {
    func_800A3BC0(globalCtx, &this->skelAnime);
    func_808382BC(this);

    if (((this->unk_850 % 25) != 0) || func_80837B18(globalCtx, this, -1)) {
        if (DECR(this->unk_850) == 0) {
            func_80839F90(this, globalCtx);
        }
    }

    this->unk_891 = 40;
    func_8002F8F0(&this->actor, 0x600C + this->ageProperties->unk_92);
}

s32 func_8084FCAC(Player* this, GlobalContext* globalCtx) {
    D_80858AB4 = &globalCtx->state.input[0];

    if ((CHECK_PAD(D_80858AB4->cur, A_BUTTON | L_TRIG | R_TRIG) && CHECK_PAD(D_80858AB4->press, B_BUTTON)) ||
        (CHECK_PAD(D_80858AB4->cur, L_TRIG) && CHECK_PAD(D_80858AB4->press, R_JPAD))) {
        D_808535D0 ^= 1;
        if (D_808535D0) {
            func_8005A444(Gameplay_GetCamera(globalCtx, 0), 8);
        }
    }

    if (D_808535D0) {
        f32 speed;

        if (CHECK_PAD(D_80858AB4->cur, R_TRIG)) {
            speed = 100.0f;
        } else {
            speed = 20.0f;
        }

        func_8006375C(3, 2, "DEBUG MODE");

        if (!CHECK_PAD(D_80858AB4->cur, L_TRIG)) {
            if (CHECK_PAD(D_80858AB4->cur, B_BUTTON)) {
                this->actor.posRot.pos.y += speed;
            } else if (CHECK_PAD(D_80858AB4->cur, A_BUTTON)) {
                this->actor.posRot.pos.y -= speed;
            }

            if (D_80858AB4->cur.in.button & (U_JPAD | L_JPAD | D_JPAD | R_JPAD)) {
                s16 angle;
                s16 temp;

                angle = temp = func_8005A948(ACTIVE_CAM);

                if (CHECK_PAD(D_80858AB4->cur, D_JPAD)) {
                    angle = temp + 0x8000;
                } else if (CHECK_PAD(D_80858AB4->cur, L_JPAD)) {
                    angle = temp + 0x4000;
                } else if (CHECK_PAD(D_80858AB4->cur, R_JPAD)) {
                    angle = temp - 0x4000;
                }

                this->actor.posRot.pos.x += speed * Math_Sins(angle);
                this->actor.posRot.pos.z += speed * Math_Coss(angle);
            }
        }

        func_80832210(this);

        this->actor.gravity = 0.0f;
        this->actor.velocity.z = 0.0f;
        this->actor.velocity.y = 0.0f;
        this->actor.velocity.x = 0.0f;

        if (CHECK_PAD(D_80858AB4->cur, L_TRIG) && CHECK_PAD(D_80858AB4->press, L_JPAD)) {
            Flags_SetTempClear(globalCtx, globalCtx->roomCtx.curRoom.num);
        }

        Math_Vec3f_Copy(&this->actor.initPosRot.pos, &this->actor.posRot.pos);

        return 0;
    }

    return 1;
}

void func_8084FF7C(Player* this) {
    this->unk_858 += this->stickLength;
    this->stickLength -= this->unk_858 * 5.0f;
    this->stickLength *= 0.3f;

    if (ABS(this->stickLength) < 0.00001f) {
        this->stickLength = 0.0f;
        if (ABS(this->unk_858) < 0.00001f) {
            this->unk_858 = 0.0f;
        }
    }
}

#ifdef NON_MATCHING
// minor ordering and regalloc differences
void func_8085002C(Player* this) {
    s32 pad;
    s16 sp2A;
    s16 sp28;
    s16 sp26;

    D_80858AC8[3] -= D_80858AC8[3] >> 3;
    D_80858AC8[4] -= D_80858AC8[4] >> 3;
    D_80858AC8[3] += -D_80858AC8[0] >> 2;
    D_80858AC8[4] += -D_80858AC8[1] >> 2;

    sp26 = this->actor.posRot.rot.y - this->actor.shape.rot.y;

    sp28 = this->actor.speedXZ * -200.0f * Math_Coss(sp26) * (Math_Rand_CenteredFloat(2.0f) + 10.0f);
    sp2A = this->actor.speedXZ * 100.0f * Math_Sins(sp26) * (Math_Rand_CenteredFloat(2.0f) + 10.0f);

    D_80858AC8[3] += sp28 >> 2;
    D_80858AC8[4] += sp2A >> 2;

    if (D_80858AC8[3] > 6000) {
        D_80858AC8[3] = 6000;
    } else if (D_80858AC8[3] < -6000) {
        D_80858AC8[3] = -6000;
    }

    if (D_80858AC8[4] > 6000) {
        D_80858AC8[4] = 6000;
    } else if (D_80858AC8[4] < -6000) {
        D_80858AC8[4] = -6000;
    }

    D_80858AC8[0] += D_80858AC8[3];
    D_80858AC8[1] += D_80858AC8[4];

    if (D_80858AC8[0] < 0) {
        D_80858AC8[2] = D_80858AC8[0] >> 1;
    } else {
        D_80858AC8[2] = 0;
    }
}
#else
#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_player_actor/func_8085002C.s")
#endif

s32 func_80850224(Player* this, GlobalContext* globalCtx) {
    s32 sp24;

    if (func_8083C6B8(globalCtx, this) == 0) {
        if (func_8083BB20(this) != 0) {
            sp24 = func_80837818(this);
            func_80837948(globalCtx, this, sp24);

            if (sp24 >= 0x18) {
                this->stateFlags2 |= 0x20000;
                func_80837530(globalCtx, this, 0);
                return 1;
            }
        } else {
            return 0;
        }
    }

    return 1;
}

void func_808502D0(Player* this, GlobalContext* globalCtx) {
    struct_80854190* sp44 = &D_80854190[this->swordAnimation];

    this->stateFlags2 |= 0x20;

    if (!func_80842DF4(globalCtx, this)) {
        func_8084285C(this, 0.0f, sp44->unk_0C, sp44->unk_0D);

        if ((this->stateFlags2 & 0x40000000) && (this->heldItemActionParam != 7) &&
            func_800A4530(&this->skelAnime, 0.0f)) {
            this->linearVelocity = 15.0f;
            this->stateFlags2 &= ~0x40000000;
        }

        if (this->linearVelocity > 12.0f) {
            func_8084269C(globalCtx, this);
        }

        Math_ApproxF(&this->linearVelocity, 0.0f, 5.0f);
        func_8083C50C(this);

        if (func_800A3BC0(globalCtx, &this->skelAnime)) {
            if (!func_80850224(this, globalCtx)) {
                u8 sp43 = this->skelAnime.flags;
                LinkAnimetionEntry* sp3C;

                if (func_8008E9C4(this)) {
                    sp3C = sp44->unk_08;
                } else {
                    sp3C = sp44->unk_04;
                }

                func_80832318(this);
                this->skelAnime.flags = 0;

                if ((sp3C == &D_04002908) && (this->unk_15B != 3)) {
                    sp3C = &D_04002AC8;
                }

                func_8083A098(this, sp3C, globalCtx);

                this->skelAnime.flags = sp43;
                this->unk_692 |= 8;
            }
        } else if (this->heldItemActionParam == 7) {
            if ((this->swordAnimation == 0x16) || (this->swordAnimation == 0x13)) {
                Vec3f sp30;
                f32 sp2C;

                sp30.y = func_8083973C(globalCtx, this, &D_80854A40, &sp30);
                sp2C = this->actor.posRot.pos.y - sp30.y;

                Math_ApproxUpdateScaledS(&this->actor.posRot2.rot.x, atan2s(45.0f, sp2C), 800);
                func_80836AB8(this, 1);

                if ((((this->swordAnimation == 0x16) && func_800A4530(&this->skelAnime, 7.0f)) ||
                     ((this->swordAnimation == 0x13) && func_800A4530(&this->skelAnime, 2.0f))) &&
                    (sp2C > -40.0f) && (sp2C < 40.0f)) {
                    func_80842A28(globalCtx, this);
                    func_80029024(globalCtx, &sp30, &D_80854A4C, &D_80854A4C);
                }
            }
        }
    }
}

void func_808505DC(Player* this, GlobalContext* globalCtx) {
    func_800A3BC0(globalCtx, &this->skelAnime);
    func_8083721C(this);

    if (this->skelAnime.animCurrentFrame >= 6.0f) {
        func_80839FFC(this, globalCtx);
    }
}

void func_8085063C(Player* this, GlobalContext* globalCtx) {
    this->stateFlags2 |= 0x20;

    func_800A3BC0(globalCtx, &this->skelAnime);
    func_80836670(this, globalCtx);

    if (this->unk_850 == 0) {
        func_8010B680(globalCtx, 0x3B, &this->actor);
        this->unk_850 = 1;
        return;
    }

    if (func_8010BDBC(&globalCtx->msgCtx) == 2) {
        s32 respawnData = gSaveContext.respawn[RESPAWN_MODE_TOP].data;

        if (globalCtx->msgCtx.choiceIndex == 0) {
            gSaveContext.respawnFlag = 3;
            globalCtx->sceneLoadFlag = 0x14;
            globalCtx->nextEntranceIndex = gSaveContext.respawn[RESPAWN_MODE_TOP].entranceIndex;
            globalCtx->fadeTransition = 5;
            func_80088AF0(globalCtx);
            return;
        }

        if (globalCtx->msgCtx.choiceIndex == 1) {
            gSaveContext.respawn[RESPAWN_MODE_TOP].data = -respawnData;
            gSaveContext.fw.set = 0;
            func_80078914(&gSaveContext.respawn[RESPAWN_MODE_TOP].pos, NA_SE_PL_MAGIC_WIND_VANISH);
        }

        func_80853080(this, globalCtx);
        func_8005B1A4(Gameplay_GetCamera(globalCtx, 0));
    }
}

void func_8085076C(Player* this, GlobalContext* globalCtx) {
    s32 respawnData = gSaveContext.respawn[RESPAWN_MODE_TOP].data;

    if (this->unk_850 > 20) {
        this->actor.draw = Player_Draw;
        this->actor.posRot.pos.y += 60.0f;
        func_80837B9C(this, globalCtx);
        return;
    }

    if (this->unk_850++ == 20) {
        gSaveContext.respawn[RESPAWN_MODE_TOP].data = respawnData + 1;
        func_80078914(&gSaveContext.respawn[RESPAWN_MODE_TOP].pos, NA_SE_PL_MAGIC_WIND_WARP);
    }
}

void func_808507F4(Player* this, GlobalContext* globalCtx) {
    if (func_800A3BC0(globalCtx, &this->skelAnime)) {
        if (this->unk_84F < 0) {
            if ((this->unk_154 == 0x19) || (gSaveContext.unk_13F0 == 0)) {
                func_80839FFC(this, globalCtx);
                func_8005B1A4(Gameplay_GetCamera(globalCtx, 0));
            }
        } else {
            if (this->unk_850 == 0) {
                SkelAnime_ChangeLinkAnimPlaybackStop(globalCtx, &this->skelAnime, D_80854A58[this->unk_84F], 0.83f);

                if (func_80846A00(globalCtx, this, this->unk_84F) != NULL) {
                    this->stateFlags1 |= 0x30000000;
                    if ((this->unk_84F != 0) || (gSaveContext.respawn[RESPAWN_MODE_TOP].data <= 0)) {
                        gSaveContext.unk_13F0 = 1;
                    }
                } else {
                    func_800876C8(globalCtx);
                }
            } else {
                SkelAnime_ChangeLinkAnimPlaybackRepeat(globalCtx, &this->skelAnime, D_80854A64[this->unk_84F], 0.83f);

                if (this->unk_84F == 0) {
                    this->unk_850 = -10;
                }
            }

            this->unk_850++;
        }
    } else {
        if (this->unk_850 < 0) {
            this->unk_850++;

            if (this->unk_850 == 0) {
                gSaveContext.respawn[RESPAWN_MODE_TOP].data = 1;
                Gameplay_SetupRespawnPoint(globalCtx, RESPAWN_MODE_TOP, 0x6FF);
                gSaveContext.fw.set = 1;
                gSaveContext.fw.pos.x = gSaveContext.respawn[RESPAWN_MODE_DOWN].pos.x;
                gSaveContext.fw.pos.y = gSaveContext.respawn[RESPAWN_MODE_DOWN].pos.y;
                gSaveContext.fw.pos.z = gSaveContext.respawn[RESPAWN_MODE_DOWN].pos.z;
                gSaveContext.fw.yaw = gSaveContext.respawn[RESPAWN_MODE_DOWN].yaw;
                gSaveContext.fw.playerParams = 0x6FF;
                gSaveContext.fw.entranceIndex = gSaveContext.respawn[RESPAWN_MODE_DOWN].entranceIndex;
                gSaveContext.fw.roomIndex = gSaveContext.respawn[RESPAWN_MODE_DOWN].roomIndex;
                gSaveContext.fw.tempSwchFlags = gSaveContext.respawn[RESPAWN_MODE_DOWN].tempSwchFlags;
                gSaveContext.fw.tempCollectFlags = gSaveContext.respawn[RESPAWN_MODE_DOWN].tempCollectFlags;
                this->unk_850 = 2;
            }
        } else if (this->unk_84F >= 0) {
            if (this->unk_850 == 0) {
                func_80832924(this, D_80854A80);
            } else if (this->unk_850 == 1) {
                func_80832924(this, D_80854A8C[this->unk_84F]);
                if ((this->unk_84F == 2) && func_800A4530(&this->skelAnime, 30.0f)) {
                    this->stateFlags1 &= ~0x30000000;
                }
            } else if (D_80854A7C[this->unk_84F] < this->unk_850++) {
                SkelAnime_ChangeLinkAnimPlaybackStop(globalCtx, &this->skelAnime, D_80854A70[this->unk_84F], 0.83f);
                this->currentYaw = this->actor.shape.rot.y;
                this->unk_84F = -1;
            }
        }
    }

    func_8083721C(this);
}

void func_80850AEC(Player* this, GlobalContext* globalCtx) {
    f32 temp;

    this->stateFlags2 |= 0x20;

    if (func_800A3BC0(globalCtx, &this->skelAnime)) {
        func_80832284(globalCtx, this, &D_04002C98);
    }

    Math_Vec3f_Sum(&this->actor.posRot.pos, &this->actor.velocity, &this->actor.posRot.pos);

    if (func_80834FBC(this) != 0) {
        Math_Vec3f_Copy(&this->actor.pos4, &this->actor.posRot.pos);
        func_80847BA0(globalCtx, this);

        temp = this->actor.posRot.pos.y - this->actor.groundY;
        if (temp > 20.0f) {
            temp = 20.0f;
        }

        this->actor.posRot.rot.x = this->actor.shape.rot.x = 0;
        this->actor.posRot.pos.y -= temp;
        this->linearVelocity = 1.0f;
        this->actor.velocity.y = 0.0f;
        func_80837B9C(this, globalCtx);
        this->stateFlags2 &= ~0x400;
        this->actor.bgCheckFlags |= 1;
        this->stateFlags1 |= 4;
        return;
    }

    if ((this->skelAnime.linkAnimetionSeg != &D_04002C90) || (4.0f <= this->skelAnime.animCurrentFrame)) {
        this->actor.gravity = 0.0f;
        Math_ApproxUpdateScaledS(&this->actor.shape.rot.x, this->actor.posRot.rot.x, 0x800);
        func_8083264C(this, 0x64, 2, 0x64, 0);
    }
}

#ifdef NON_MATCHING
// matches besides bss reordering
void func_80850C68(Player* this, GlobalContext* globalCtx) {
    static Vec3s D_80858AD8[25];
    f32 updateScale;

    if ((this->unk_850 != 0) && ((this->unk_858 != 0.0f) || (this->stickLength != 0.0f))) {
        updateScale = R_UPDATE_RATE * 0.5f;
        this->skelAnime.animCurrentFrame += this->skelAnime.animPlaybackSpeed * updateScale;
        if (this->skelAnime.animCurrentFrame >= this->skelAnime.totalFrames) {
            this->skelAnime.animCurrentFrame -= this->skelAnime.totalFrames;
        }
        func_800A431C(globalCtx, &this->skelAnime, &D_04002C38, this->skelAnime.animCurrentFrame,
                      (this->unk_858 < 0.0f) ? &D_04002C18 : &D_04002C20, 5.0f, fabsf(this->unk_858), this->unk_318);
        func_800A43B8(globalCtx, &this->skelAnime, &D_04002C38, this->skelAnime.animCurrentFrame,
                      (this->stickLength < 0.0f) ? &D_04002C18 : &D_04002C20, 5.0f, fabsf(this->stickLength),
                      D_80858AD8);
        func_800A42E4(globalCtx, &this->skelAnime, 0.5f);
    } else if (func_800A3BC0(globalCtx, &this->skelAnime)) {
        this->stickFlameTimer = 2;
        func_80832284(globalCtx, this, &D_04002C38);
        this->unk_850 = 1;
    }

    func_8083721C(this);

    if (this->stickFlameTimer == 0) {
        func_80853080(this, globalCtx);
    } else if (this->stickFlameTimer == 3) {
        func_80835C58(globalCtx, this, func_80850E84, 0);
        func_80832B0C(globalCtx, this, &D_04002C00);
    }
}
#else
#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_player_actor/func_80850C68.s")
#endif

void func_80850E84(Player* this, GlobalContext* globalCtx) {
    if (func_800A3BC0(globalCtx, &this->skelAnime) && (this->stickFlameTimer == 0)) {
        func_8083A098(this, &D_04002C08, globalCtx);
    }
}

void func_80850ED8(GlobalContext* globalCtx, Player* this, LinkAnimetionEntry* anim) {
    func_80832DB0(this);
    func_80832B0C(globalCtx, this, anim);
    func_80832210(this);
}

void func_80850F1C(GlobalContext* globalCtx, Player* this, LinkAnimetionEntry* anim) {
    func_80832DB0(this);
    SkelAnime_ChangeLinkAnim(globalCtx, &this->skelAnime, anim, (2.0f / 3.0f), 0.0f,
                             SkelAnime_GetFrameCount(&anim->genericHeader), 2, -8.0f);
    func_80832210(this);
}

void func_80850F9C(GlobalContext* globalCtx, Player* this, LinkAnimetionEntry* anim) {
    func_80832DB0(this);
    SkelAnime_ChangeLinkAnim(globalCtx, &this->skelAnime, anim, (2.0f / 3.0f), 0.0f, 0.0f, 0, -8.0f);
    func_80832210(this);
}

void func_80851008(GlobalContext* globalCtx, Player* this, LinkAnimetionEntry* anim) {
    func_80832210(this);
}

void func_80851030(GlobalContext* globalCtx, Player* this, LinkAnimetionEntry* anim) {
    func_80850ED8(globalCtx, this, anim);
}

void func_80851050(GlobalContext* globalCtx, Player* this, LinkAnimetionEntry* anim) {
    func_80832DB0(this);
    func_80832C2C(globalCtx, this, anim);
    func_80832210(this);
}

void func_80851094(GlobalContext* globalCtx, Player* this, LinkAnimetionEntry* anim) {
    func_80850F1C(globalCtx, this, anim);
}

void func_808510B4(GlobalContext* globalCtx, Player* this, LinkAnimetionEntry* anim) {
    func_80850F9C(globalCtx, this, anim);
}

void func_808510D4(GlobalContext* globalCtx, Player* this, LinkAnimetionEntry* anim) {
    func_8083308C(globalCtx, this, anim);
}

void func_808510F4(GlobalContext* globalCtx, Player* this, LinkAnimetionEntry* anim) {
    func_8083303C(globalCtx, this, anim, 0x9C);
}

void func_80851114(GlobalContext* globalCtx, Player* this, LinkAnimetionEntry* anim) {
    func_8083313C(globalCtx, this, anim);
}

void func_80851134(GlobalContext* globalCtx, Player* this, LinkAnimetionEntry* anim) {
    func_808330EC(globalCtx, this, anim, 0x9C);
}

void func_80851154(GlobalContext* globalCtx, Player* this, LinkAnimetionEntry* anim) {
    func_80832264(globalCtx, this, anim);
}

void func_80851174(GlobalContext* globalCtx, Player* this, LinkAnimetionEntry* anim) {
    func_80832284(globalCtx, this, anim);
}

void func_80851194(GlobalContext* globalCtx, Player* this, LinkAnimetionEntry* anim) {
    func_808322D0(globalCtx, this, anim);
}

void func_808511B4(GlobalContext* globalCtx, Player* this, LinkAnimetionEntry* anim) {
    func_808322A4(globalCtx, this, anim);
}

void func_808511D4(GlobalContext* globalCtx, Player* this, LinkAnimetionEntry* anim) {
    func_800A3BC0(globalCtx, &this->skelAnime);
}

void func_808511FC(GlobalContext* globalCtx, Player* this, LinkAnimetionEntry* anim) {
    if (func_800A3BC0(globalCtx, &this->skelAnime)) {
        func_80850F9C(globalCtx, this, anim);
        this->unk_850 = 1;
    }
}

void func_80851248(GlobalContext* globalCtx, Player* this, LinkAnimetionEntry* anim) {
    if (func_800A3BC0(globalCtx, &this->skelAnime)) {
        func_80832DBC(this);
        func_808322A4(globalCtx, this, anim);
    }
}

void func_80851294(GlobalContext* globalCtx, Player* this, LinkAnimetionEntry* anim) {
    if (func_800A3BC0(globalCtx, &this->skelAnime)) {
        func_8083313C(globalCtx, this, anim);
        this->unk_850 = 1;
    }
}

void func_808512E0(GlobalContext* globalCtx, Player* this, struct_80832924* arg2) {
    func_800A3BC0(globalCtx, &this->skelAnime);
    func_80832924(this, arg2);
}

void func_80851314(Player* this) {
    if ((this->unk_448 == NULL) || (this->unk_448->update == NULL)) {
        this->unk_448 = NULL;
    }

    this->unk_664 = this->unk_448;

    if (this->unk_664 != NULL) {
        this->actor.shape.rot.y = func_8083DB98(this, 0);
    }
}

void func_80851368(GlobalContext* globalCtx, Player* this, CsCmdActorAction* arg2) {
    this->stateFlags1 |= 0x8000000;
    this->stateFlags2 |= 0x400;
    this->stateFlags1 &= ~0xC0000;

    func_80832284(globalCtx, this, &D_040032F0);
}

void func_808513BC(GlobalContext* globalCtx, Player* this, CsCmdActorAction* arg2) {
    this->actor.gravity = 0.0f;

    if (this->unk_84F == 0) {
        if (func_8083D12C(globalCtx, this, NULL)) {
            this->unk_84F = 1;
        } else {
            func_8084B158(globalCtx, this, NULL, fabsf(this->actor.velocity.y));
            Math_ApproxUpdateScaledS(&this->unk_6C2, -10000, 800);
            func_8084AEEC(this, &this->actor.velocity.y, 4.0f, this->currentYaw);
        }
        return;
    }

    if (func_800A3BC0(globalCtx, &this->skelAnime)) {
        if (this->unk_84F == 1) {
            func_80832C6C(globalCtx, this, &D_04003328);
        } else {
            func_80832284(globalCtx, this, &D_04003328);
        }
    }

    func_8084B000(this);
    func_8084AEEC(this, &this->linearVelocity, 0.0f, this->actor.shape.rot.y);
}

void func_808514C0(GlobalContext* globalCtx, Player* this, CsCmdActorAction* arg2) {
    func_80851314(this);

    if (func_808332B8(this)) {
        func_808513BC(globalCtx, this, 0);
        return;
    }

    func_800A3BC0(globalCtx, &this->skelAnime);

    if (func_8008F128(this) || (this->stateFlags1 & 0x800)) {
        func_80836670(this, globalCtx);
        return;
    }

    if ((this->interactRangeActor != NULL) && (this->interactRangeActor->textId == 0xFFFF)) {
        func_8083E5A8(this, globalCtx);
    }
}

void func_8085157C(GlobalContext* globalCtx, Player* this, CsCmdActorAction* arg2) {
    func_800A3BC0(globalCtx, &this->skelAnime);
}

void func_808515A4(GlobalContext* globalCtx, Player* this, CsCmdActorAction* arg2) {
    LinkAnimetionEntry* sp34;

    if (func_808332B8(this)) {
        func_80851368(globalCtx, this, 0);
        return;
    }

    sp34 = D_80853D34[this->unk_15B];

    if ((this->unk_446 == 6) || (this->unk_446 == 0x2E)) {
        func_80832264(globalCtx, this, sp34);
    } else {
        func_80832DB0(this);
        SkelAnime_ChangeLinkAnim(globalCtx, &this->skelAnime, sp34, (2.0f / 3.0f), 0.0f,
                                 SkelAnime_GetFrameCount(&sp34->genericHeader), 0, -4.0f);
    }

    func_80832210(this);
}

void func_80851688(GlobalContext* globalCtx, Player* this, CsCmdActorAction* arg2) {
    if (func_8084B3CC(globalCtx, this) == 0) {
        if ((this->action == 0x31) && (globalCtx->csCtx.state == 0)) {
            func_8002DF54(globalCtx, NULL, 7);
            return;
        }

        if (func_808332B8(this) != 0) {
            func_808513BC(globalCtx, this, 0);
            return;
        }

        func_800A3BC0(globalCtx, &this->skelAnime);

        if (func_8008F128(this) || (this->stateFlags1 & 0x800)) {
            func_80836670(this, globalCtx);
        }
    }
}

void func_80851750(GlobalContext* globalCtx, Player* this, CsCmdActorAction* arg2) {
    func_800A3BC0(globalCtx, &this->skelAnime);
    func_80832924(this, D_80855188);
}

f32 func_80851788(GlobalContext* globalCtx, Player* this, CsCmdActorAction* arg2) {
    this->stateFlags1 &= ~0x2000000;

    this->currentYaw = this->actor.shape.rot.y = this->actor.posRot.rot.y =
        Math_Vec3f_Yaw(&this->actor.posRot.pos, &this->unk_450);

    if (this->linearVelocity <= 0.0f) {
        this->linearVelocity = 0.1f;
    } else if (this->linearVelocity > 2.5f) {
        this->linearVelocity = 2.5f;
    }
}

void func_80851828(GlobalContext* globalCtx, Player* this, CsCmdActorAction* arg2) {
    f32 sp1C = 2.5f;

    func_80845BA0(globalCtx, this, &sp1C, 10);

    if (globalCtx->sceneNum == SCENE_BDAN_BOSS) {
        if (this->unk_850 == 0) {
            if (func_8010BDBC(&globalCtx->msgCtx) == 0) {
                return;
            }
        } else {
            if (func_8010BDBC(&globalCtx->msgCtx) != 0) {
                return;
            }
        }
    }

    this->unk_850++;
    if (this->unk_850 > 20) {
        this->action = 0xB;
    }
}

void func_808518DC(GlobalContext* globalCtx, Player* this, CsCmdActorAction* arg2) {
    func_8083CEAC(this, globalCtx);
}

void func_8085190C(GlobalContext* globalCtx, Player* this, CsCmdActorAction* arg2) {
    func_80851314(this);

    if (this->unk_850 != 0) {
        if (func_800A3BC0(globalCtx, &this->skelAnime)) {
            func_80832284(globalCtx, this, func_808334E4(this));
            this->unk_850 = 0;
        }

        func_80833C3C(this);
    } else {
        func_808401B0(globalCtx, this);
    }
}

void func_80851998(GlobalContext* globalCtx, Player* this, CsCmdActorAction* arg2) {
    func_80845964(globalCtx, this, arg2, 0.0f, 0, 0);
}

void func_808519C0(GlobalContext* globalCtx, Player* this, CsCmdActorAction* arg2) {
    func_80845964(globalCtx, this, arg2, 0.0f, 0, 1);
}

void func_808519EC(GlobalContext* globalCtx, Player* this, CsCmdActorAction* arg2) {
    Math_Vec3f_Copy(&this->actor.posRot.pos, &D_80855198);
    this->actor.shape.rot.y = -0x8000;
    func_808322D0(globalCtx, this, this->ageProperties->unk_9C);
    func_80832F54(globalCtx, this, 0x28F);
}

void func_80851A50(GlobalContext* globalCtx, Player* this, CsCmdActorAction* arg2) {
    struct_80832924* sp2C;
    Gfx** phi_v0;

    func_800A3BC0(globalCtx, &this->skelAnime);

    if (((LINK_IS_ADULT) && func_800A4530(&this->skelAnime, 70.0f)) ||
        ((LINK_IS_CHILD) && func_800A4530(&this->skelAnime, 87.0f))) {
        sp2C = &D_808551A4[gSaveContext.linkAge];
        this->interactRangeActor->parent = &this->actor;

        if (LINK_IS_CHILD) {
            phi_v0 = D_80125DE8;
        } else {
            phi_v0 = D_80125E18;
        }
        this->unk_164 = &phi_v0[gSaveContext.linkAge];

        func_8002F7DC(&this->actor, sp2C->unk_00);
        if (LINK_IS_CHILD) {
            func_80832698(this, sp2C->unk_02);
        }
    } else if (LINK_IS_ADULT) {
        if (func_800A4530(&this->skelAnime, 66.0f)) {
            func_80832698(this, NA_SE_VO_LI_SWORD_L);
        }
    } else {
        func_80832924(this, D_808551AC);
    }
}

void func_80851B90(GlobalContext* globalCtx, Player* this, CsCmdActorAction* arg2) {
    SkelAnime_ChangeLinkAnim(globalCtx, &this->skelAnime, &D_04002860, -(2.0f / 3.0f), 12.0f, 12.0f, 2, 0.0f);
}

void func_80851BE8(GlobalContext* globalCtx, Player* this, CsCmdActorAction* arg2) {
    func_800A3BC0(globalCtx, &this->skelAnime);

    this->unk_850++;
    if (this->unk_850 >= 180) {
        if (this->unk_850 == 180) {
            SkelAnime_ChangeLinkAnim(globalCtx, &this->skelAnime, &D_04003298, (2.0f / 3.0f), 10.0f,
                                     SkelAnime_GetFrameCount(&D_04003298.genericHeader), 2, -8.0f);
        }
        func_80832924(this, D_808551B4);
    }
}

void func_80851CA4(GlobalContext* globalCtx, Player* this, CsCmdActorAction* arg2) {
    if (func_800A3BC0(globalCtx, &this->skelAnime) && (this->unk_850 == 0) && (this->actor.bgCheckFlags & 1)) {
        func_80832264(globalCtx, this, &D_04002DB8);
        this->unk_850 = 1;
    }

    if (this->unk_850 != 0) {
        func_8083721C(this);
    }
}

void func_80851D2C(GlobalContext* globalCtx, Player* this, CsCmdActorAction* arg2) {
    func_80850F1C(globalCtx, this, &D_040030A0);
    func_8084B498(this);
    func_8008EB2C(this, func_8008E9F8(this, this->unk_154));
}

void func_80851D80(GlobalContext* globalCtx, Player* this, CsCmdActorAction* arg2) {
    func_800A3BC0(globalCtx, &this->skelAnime);

    if (func_800A4530(&this->skelAnime, 6.0f)) {
        func_80846720(globalCtx, this, 0);
    } else {
        func_80832924(this, D_808551B8);
    }
}

void func_80851DEC(GlobalContext* globalCtx, Player* this, CsCmdActorAction* arg2) {
    func_800A3BC0(globalCtx, &this->skelAnime);
    Math_ApproxS(&this->actor.shape.unk_06, 0, 1);
}

void func_80851E28(GlobalContext* globalCtx, Player* this, CsCmdActorAction* arg2) {
    func_800A3BC0(globalCtx, &this->skelAnime);
    Math_ApproxS(&this->actor.shape.unk_06, 2, 1);
}

void func_80851E64(GlobalContext* globalCtx, Player* this, CsCmdActorAction* arg2) {
    func_80833064(globalCtx, this, &D_04003318, 0x98);
}

void func_80851E90(GlobalContext* globalCtx, Player* this, CsCmdActorAction* arg2) {
    func_8083303C(globalCtx, this, &D_04002408, 0x9C);
    func_80832698(this, NA_SE_VO_LI_GROAN);
}

void func_80851ECC(GlobalContext* globalCtx, Player* this, CsCmdActorAction* arg2) {
    if (func_800A3BC0(globalCtx, &this->skelAnime)) {
        func_808330EC(globalCtx, this, &D_04002428, 0x9C);
    }
}

void func_80851F14(GlobalContext* globalCtx, Player* this, LinkAnimetionEntry* anim, struct_80832924* arg3) {
    if (func_800A3BC0(globalCtx, &this->skelAnime)) {
        func_808322A4(globalCtx, this, anim);
        this->unk_850 = 1;
    } else if (this->unk_850 == 0) {
        func_80832924(this, arg3);
    }
}

void func_80851F84(GlobalContext* globalCtx, Player* this, CsCmdActorAction* arg2) {
    this->actor.shape.shadowDrawFunc = NULL;
    func_80851134(globalCtx, this, &D_04002420);
}

void func_80851FB0(GlobalContext* globalCtx, Player* this, CsCmdActorAction* arg2) {
    if (func_800A3BC0(globalCtx, &this->skelAnime)) {
        func_808330EC(globalCtx, this, &D_04002430, 0x9C);
        this->unk_850 = 1;
    } else if (this->unk_850 == 0) {
        func_80832924(this, D_808551BC);
        if (func_800A4530(&this->skelAnime, 240.0f)) {
            this->actor.shape.shadowDrawFunc = ActorShadow_DrawFunc_Teardrop;
        }
    }
}

void func_80852048(GlobalContext* globalCtx, Player* this, CsCmdActorAction* arg2) {
    func_800A3BC0(globalCtx, &this->skelAnime);
    func_80832924(this, D_808551C8);
}

void func_80852080(GlobalContext* globalCtx, Player* this, CsCmdActorAction* arg2) {
    func_80833064(globalCtx, this, &D_04002340, 0x9D);
    func_80832698(this, NA_SE_VO_LI_FALL_L);
}

#ifdef NON_MATCHING
void func_808520BC(GlobalContext* globalCtx, Player* this, CsCmdActorAction* arg2) {
    f32 startX = arg2->startPos.x;
    f32 endX = arg2->endPos.x;
    f32 startY = arg2->startPos.y;
    f32 endY = arg2->endPos.y;
    f32 startZ = arg2->startPos.z;
    f32 endZ = arg2->endPos.z;
    f32 sp4 = (f32)(globalCtx->csCtx.frames - arg2->startFrame) / (f32)(arg2->endFrame - arg2->startFrame);

    this->actor.posRot.pos.x = (endX - startX) * sp4 + startX;
    this->actor.posRot.pos.y = (endY - startY) * sp4 + startY;
    this->actor.posRot.pos.z = (endZ - startZ) * sp4 + startZ;
}
#else
void func_808520BC(GlobalContext* globalCtx, Player* this, CsCmdActorAction* arg2);
#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_player_actor/func_808520BC.s")
#endif

void func_80852174(GlobalContext* globalCtx, Player* this, CsCmdActorAction* arg2) {
    func_808520BC(globalCtx, this, arg2);
    func_800A3BC0(globalCtx, &this->skelAnime);
    func_80832924(this, D_808551D8);
}

void func_808521B8(GlobalContext* globalCtx, Player* this, CsCmdActorAction* arg2) {
    if (arg2 != NULL) {
        func_808520BC(globalCtx, this, arg2);
    }
    func_800A3BC0(globalCtx, &this->skelAnime);
}

void func_808521F4(GlobalContext* globalCtx, Player* this, CsCmdActorAction* arg2) {
    func_80832B0C(globalCtx, this, D_80853D34[this->unk_15B]);
    func_80832210(this);
}

void func_80852234(GlobalContext* globalCtx, Player* this, CsCmdActorAction* arg2) {
    func_800A3BC0(globalCtx, &this->skelAnime);
}

void func_8085225C(GlobalContext* globalCtx, Player* this, CsCmdActorAction* arg2) {
    func_80832F54(globalCtx, this, 0x98);
}

void func_80852280(GlobalContext* globalCtx, Player* this, CsCmdActorAction* arg2) {
    this->actor.draw = &Player_Draw;
}

void func_80852298(GlobalContext* globalCtx, Player* this, CsCmdActorAction* arg2) {
    if (func_800A3BC0(globalCtx, &this->skelAnime)) {
        func_8083313C(globalCtx, this, &D_04002378);
        this->unk_850 = 1;
    } else if (this->unk_850 == 0) {
        if (func_800A4530(&this->skelAnime, 10.0f)) {
            func_80846720(globalCtx, this, 1);
        }
    }
}

void func_80852328(GlobalContext* globalCtx, Player* this, CsCmdActorAction* arg2) {
    func_80851F14(globalCtx, this, &D_04002770, D_808551E0);
}

void func_80852358(GlobalContext* globalCtx, Player* this, CsCmdActorAction* arg2) {
    func_80851F14(globalCtx, this, &D_04002830, D_808551E8);
}

void func_80852388(GlobalContext* globalCtx, Player* this, CsCmdActorAction* arg2) {
    if (func_800A3BC0(globalCtx, &this->skelAnime)) {
        func_808322A4(globalCtx, this, &D_04002468);
        this->unk_850 = 1;
    }

    if ((this->unk_850 != 0) && (globalCtx->csCtx.frames >= 900)) {
        this->unk_15D = 0;
    } else {
        this->unk_15D = 0xFF;
    }
}

void func_80852414(GlobalContext* globalCtx, Player* this, LinkAnimetionEntry* anim, struct_80832924* arg3) {
    func_80851294(globalCtx, this, anim);
    if (this->unk_850 == 0) {
        func_80832924(this, arg3);
    }
}

void func_80852450(GlobalContext* globalCtx, Player* this, CsCmdActorAction* arg2) {
    func_80852414(globalCtx, this, &D_04002378, D_808551F0);
}

void func_80852480(GlobalContext* globalCtx, Player* this, CsCmdActorAction* arg2) {
    func_80852414(globalCtx, this, &D_040027D0, D_808551F8);
}

void func_808524B0(GlobalContext* globalCtx, Player* this, CsCmdActorAction* arg2) {
    func_80837704(globalCtx, this);
}

void func_808524D0(GlobalContext* globalCtx, Player* this, CsCmdActorAction* arg2) {
    D_80858AB4->press.in.button |= B_BUTTON;
    func_80844E68(this, globalCtx);
}

void func_80852514(GlobalContext* globalCtx, Player* this, CsCmdActorAction* arg2) {
    func_80844E68(this, globalCtx);
}

void func_80852544(GlobalContext* globalCtx, Player* this, CsCmdActorAction* arg2) {
}

void func_80852554(GlobalContext* globalCtx, Player* this, CsCmdActorAction* arg2) {
}

void func_80852564(GlobalContext* globalCtx, Player* this, CsCmdActorAction* arg2) {
    this->unk_692 |= 2;
    this->linearVelocity = 2.0f;
    this->actor.velocity.y = -1.0f;
    func_80832264(globalCtx, this, &D_04002DB0);
    func_80832698(this, NA_SE_VO_LI_FALL_L);
}

void func_808525C0(GlobalContext* globalCtx, Player* this, CsCmdActorAction* arg2) {
    D_808551FC[this->unk_850](this, globalCtx);
}

void func_80852608(GlobalContext* globalCtx, Player* this, CsCmdActorAction* arg2) {
    func_80846720(globalCtx, this, 0);
    func_808322D0(globalCtx, this, &D_04002838);
}

void func_80852648(GlobalContext* globalCtx, Player* this, CsCmdActorAction* arg2) {
    func_800A3BC0(globalCtx, &this->skelAnime);

    if (func_800A4530(&this->skelAnime, 10.0f)) {
        this->heldItemActionParam = this->unk_154 = 0;
        this->unk_152 = ITEM_NONE;
        this->unk_158 = this->unk_159 = func_8008E9F8(this, 0);
        this->unk_164 = D_80125E08;
        Inventory_ChangeEquipment(EQUIP_SWORD, 2);
        gSaveContext.equips.buttonItems[0] = ITEM_SWORD_MASTER;
        Inventory_DeleteEquipment(globalCtx, 0);
    }
}

void func_808526EC(GlobalContext* globalCtx, Player* this, CsCmdActorAction* arg2) {
    s32 age = gSaveContext.linkAge;
    Vec3f sp40;
    Vec3f sp34;
    Vec3s* ptr;

    func_80851294(globalCtx, this, D_80855208[age]);

    if (this->unk_15D != 0xFF) {
        this->unk_15D = 0xFF;
        return;
    }

    ptr = D_80855210[gSaveContext.linkAge];
    sp34.x = ptr[0].x + Math_Rand_CenteredFloat(ptr[1].x);
    sp34.y = ptr[0].y + Math_Rand_CenteredFloat(ptr[1].y);
    sp34.z = ptr[0].z + Math_Rand_CenteredFloat(ptr[1].z);
    SkinMatrix_Vec3fMtxFMultXYZ(&this->mf_A20, &sp34, &sp40);

    func_80028BB0(globalCtx, &sp40, &D_80855228, &D_80855228, &D_80855234, &D_80855238, 600, -10);
}

void func_8085283C(GlobalContext* globalCtx, Player* this, CsCmdActorAction* arg2) {
    if (func_800A3BC0(globalCtx, &this->skelAnime)) {
        func_80852944(globalCtx, this, arg2);
    } else if (this->unk_850 == 0) {
        Item_Give(globalCtx, ITEM_SWORD_MASTER);
        func_80846720(globalCtx, this, 0);
    } else {
        func_8084E988(this);
    }
}

void func_808528C8(GlobalContext* globalCtx, Player* this, CsCmdActorAction* arg2) {
    if (func_800A3BC0(globalCtx, &this->skelAnime)) {
        func_8084285C(this, 0.0f, 99.0f, this->skelAnime.animFrameCount - 8.0f);
    }

    if (this->heldItemActionParam != 3) {
        func_80846720(globalCtx, this, 1);
    }
}

void func_80852944(GlobalContext* globalCtx, Player* this, CsCmdActorAction* arg2) {
    if (func_808332B8(this)) {
        func_80838F18(globalCtx, this);
        func_80832340(globalCtx, this);
    } else {
        func_8083C148(this, globalCtx);
        if (!func_8083B644(this, globalCtx)) {
            func_8083E5A8(this, globalCtx);
        }
    }

    this->action = 0;
    this->unk_6AD = 0;
}

void func_808529D0(GlobalContext* globalCtx, Player* this, CsCmdActorAction* arg2) {
    this->actor.posRot.pos.x = arg2->startPos.x;
    this->actor.posRot.pos.y = arg2->startPos.y;
    if ((globalCtx->sceneNum == SCENE_SPOT04) && LINK_IS_CHILD) {
        this->actor.posRot.pos.y -= 1.0f;
    }
    this->actor.posRot.pos.z = arg2->startPos.z;
    this->currentYaw = this->actor.shape.rot.y = arg2->rot.y;
}

void func_80852A54(GlobalContext* globalCtx, Player* this, CsCmdActorAction* arg2) {
    f32 dx = arg2->startPos.x - (s32)this->actor.posRot.pos.x;
    f32 dy = arg2->startPos.y - (s32)this->actor.posRot.pos.y;
    f32 dz = arg2->startPos.z - (s32)this->actor.posRot.pos.z;
    f32 dist = sqrtf(SQ(dx) + SQ(dy) + SQ(dz));
    s16 yawDiff = arg2->rot.y - this->actor.shape.rot.y;

    if ((this->linearVelocity == 0.0f) && ((dist > 50.0f) || (ABS(yawDiff) > 0x4000))) {
        func_808529D0(globalCtx, this, arg2);
    }

    this->skelAnime.flags = 0;
    func_80832DB0(this);
}

void func_80852B4C(GlobalContext* globalCtx, Player* this, CsCmdActorAction* arg2, struct_80854B18* arg3) {
    if (arg3->type > 0) {
        D_80854AA4[arg3->type](globalCtx, this, arg3->anim);
    } else if (arg3->type < 0) {
        arg3->func(globalCtx, this, arg2);
    }

    if ((D_80858AA0 & 4) && !(this->skelAnime.flags & 4)) {
        this->skelAnime.transitionDrawTbl[0].y /= this->ageProperties->unk_08;
        D_80858AA0 = 0;
    }
}

void func_80852C0C(GlobalContext* globalCtx, Player* this, s32 action) {
    if ((action != 1) && (action != 8) && (action != 0x31) && (action != 7)) {
        func_808323B4(globalCtx, this);
    }
}

void func_80852C50(GlobalContext* globalCtx, Player* this, CsCmdActorAction* arg2) {
    CsCmdActorAction* sp2C = globalCtx->csCtx.linkAction;
    s32 pad;
    s32 sp24;

    if (globalCtx->csCtx.state == 3) {
        func_8002DF54(globalCtx, NULL, 7);
        this->unk_446 = 0;
        func_80832210(this);
        return;
    }

    if (sp2C == NULL) {
        this->actor.flags &= ~0x40;
        return;
    }

    if (this->unk_446 != sp2C->action) {
        sp24 = D_808547C4[sp2C->action];
        if (sp24 >= 0) {
            if ((sp24 == 3) || (sp24 == 4)) {
                func_80852A54(globalCtx, this, sp2C);
            } else {
                func_808529D0(globalCtx, this, sp2C);
            }
        }
        D_80858AA0 = this->skelAnime.flags;

        func_80832DBC(this);
        osSyncPrintf("TOOL MODE=%d\n", sp24);
        func_80852C0C(globalCtx, this, ABS(sp24));
        func_80852B4C(globalCtx, this, sp2C, &D_80854B18[ABS(sp24)]);

        this->unk_850 = 0;
        this->unk_84F = 0;
        this->unk_446 = sp2C->action;
    }

    sp24 = D_808547C4[this->unk_446];
    func_80852B4C(globalCtx, this, sp2C, &D_80854E50[ABS(sp24)]);
}

void func_80852E14(Player* this, GlobalContext* globalCtx) {
    if (this->action != this->unk_445) {
        D_80858AA0 = this->skelAnime.flags;
        func_80832DBC(this);
        this->unk_445 = this->action;
        osSyncPrintf("DEMO MODE=%d\n", this->action);
        func_80852C0C(globalCtx, this, this->action);
        func_80852B4C(globalCtx, this, NULL, &D_80854B18[this->action]);
    }

    func_80852B4C(globalCtx, this, NULL, &D_80854E50[this->action]);
}

s32 func_80852EC8(GlobalContext* globalCtx) {
    Player* this = PLAYER;

    return (func_8084EFC0 == this->actionFunc) && (this->unk_154 == 0x1F);
}

s32 func_80852EFC(GlobalContext* globalCtx) {
    Player* this = PLAYER;

    func_80832564(globalCtx, this);
    func_80835F44(globalCtx, this, ITEM_FISHING_POLE);
    return 1;
}

s32 func_80852F38(GlobalContext* globalCtx, Player* this) {
    if (!func_8008E8DC(globalCtx, this) && (this->invincibilityTimer >= 0) && !func_8008F128(this) &&
        !(this->unk_692 & 0x80)) {
        func_80832564(globalCtx, this);
        func_80835C58(globalCtx, this, func_8084F308, 0);
        func_80832264(globalCtx, this, &D_04003120);
        this->stateFlags2 |= 0x80;
        func_80832224(this);
        func_80832698(this, NA_SE_VO_LI_HELD);
        return 1;
    }

    return 0;
}

s32 func_80852FFC(GlobalContext* globalCtx, Actor* actor, s32 action) {
    Player* this = PLAYER;

    if (!func_8008E8DC(globalCtx, this)) {
        func_80832564(globalCtx, this);
        func_80835C58(globalCtx, this, func_80852E14, 0);
        this->action = action;
        this->unk_448 = actor;
        func_80832224(this);
        return 1;
    }

    return 0;
}

void func_80853080(Player* this, GlobalContext* globalCtx) {
    func_80835C58(globalCtx, this, func_80840BC8, 1);
    func_80832B0C(globalCtx, this, func_80833338(this));
    this->currentYaw = this->actor.shape.rot.y;
}

s32 func_808530E0(GlobalContext* globalCtx, s32 damage) {
    Player* this = PLAYER;

    if (!func_8008E8DC(globalCtx, this) && !func_80837B18(globalCtx, this, damage)) {
        this->stateFlags2 &= ~0x80;
        return 1;
    }

    return 0;
}

void func_80853148(GlobalContext* globalCtx, Actor* actor) {
    Player* this = PLAYER;
    s32 pad;

    if ((this->naviTargetActor != NULL) || (actor == this->navi) || ((actor->flags & 0x40001) == 0x40001)) {
        actor->flags |= 0x100;
    }

    this->naviTargetActor = actor;
    this->exchangeItemId = 0;

    if (actor->textId == 0xFFFF) {
        func_8002DF54(globalCtx, actor, 1);
        actor->flags |= 0x100;
        func_80832528(globalCtx, this);
    } else {
        if (this->actor.flags & 0x100) {
            this->actor.textId = 0;
        } else {
            this->actor.flags |= 0x100;
            this->actor.textId = actor->textId;
        }

        if (this->stateFlags1 & 0x800000) {
            s32 sp24 = this->unk_850;
            func_80832528(globalCtx, this);
            func_8083A2F8(globalCtx, this);
            this->unk_850 = sp24;
        } else {
            if (func_808332B8(this)) {
                func_80836898(globalCtx, this, func_8083A2F8);
                func_80832C6C(globalCtx, this, &D_04003328);
            } else if ((actor->type != ACTORTYPE_NPC) || (this->heldItemActionParam == 2)) {
                func_8083A2F8(globalCtx, this);
                if (!func_8008E9C4(this)) {
                    if ((actor != this->navi) && (actor->xzDistFromLink < 40.0f)) {
                        func_808322D0(globalCtx, this, &D_04002DF0);
                    } else {
                        func_80832284(globalCtx, this, func_80833338(this));
                    }
                }
            } else {
                func_80836898(globalCtx, this, func_8083A2F8);
                func_808322D0(globalCtx, this, (actor->xzDistFromLink < 40.0f) ? &D_04002DF0 : &D_040031A0);
            }

            if (this->skelAnime.linkAnimetionSeg == &D_04002DF0) {
                func_80832F54(globalCtx, this, 0x19);
            }

            func_80832224(this);
        }

        this->stateFlags1 |= 0x20000040;
    }

    if ((this->navi == this->naviTargetActor) && ((this->naviTargetActor->textId & 0xFF00) != 0x200)) {
        this->navi->flags |= 0x100;
        func_80835EA4(globalCtx, 0xB);
    }
}
