/*
 * File: z_en_yabusame_mark.c
 * Overlay: ovl_En_Yabusame_Mark
 * Description: Horseback Archery Target (arrow hitbox)
 */

#include "z_en_yabusame_mark.h"
#include "vt.h"

#define FLAGS 0x00000000

#define THIS ((EnYabusameMark*)thisx)

void EnYabusameMark_Init(Actor* thisx, GlobalContext* globalCtx);
void EnYabusameMark_Destroy(Actor* thisx, GlobalContext* globalCtx);
void EnYabusameMark_Update(Actor* thisx, GlobalContext* globalCtx);
void func_80B42F74(EnYabusameMark* this, GlobalContext *globalCtx);

// D_80B434F0
static ColliderQuadInit sQuadInit = {
    { COLTYPE_NONE, AT_NONE, AC_ON | AC_TYPE_PLAYER, OC1_NONE, OC2_TYPE_2, COLSHAPE_QUAD, },
    { ELEMTYPE_UNK0, { 0x00000000, 0x00, 0x00 }, { 0x0001F824, 0x00, 0x00 }, TOUCH_NONE | TOUCH_SFX_NORMAL, BUMP_ON, OCELEM_NONE, },
    { { { 0.0f, 0.0f, 0.0f }, { 0.0f, 0.0f, 0.0f }, { 0.0f, 0.0f, 0.0f }, { 0.0f, 0.0f, 0.0f } } },
};

const ActorInit En_Yabusame_Mark_InitVars = {
	ACTOR_EN_YABUSAME_MARK,
	ACTORCAT_PROP,
	FLAGS,
	OBJECT_GAMEPLAY_KEEP,
	sizeof(EnYabusameMark),
	(ActorFunc)EnYabusameMark_Init,
	(ActorFunc)EnYabusameMark_Destroy,
	(ActorFunc)EnYabusameMark_Update,
	NULL,
};

Vec3f D_80B43560[] = {
	{70.0f, 70.0f, 0.0f},
	{70.0f, -70.0f, 0.0f},
	{-70.0f, 70.0f, 0.0f},
	{-70.0f, -70.0f, 0.0f},
	{90.0f, 130.0f, -120.0f},
	{-25.0f, -80.0f, -130.0f},
	{90.0f, 130.0f, 120.0f},
	{-25.0f, -80.0, 130.0f},
	{115.0f, 160.0f, -150.0f},
	{-50.0f, -140.0f, -160.0f},
	{115.0f, 160.0f, 150.0f},
	{-50.0f, -140.0f, 160.0f},
};

// s32 D_80B435F0 = 0x45536000;
// s32 D_80B435F4 = 0x44D8C000;
// s32 D_80B435F8[] = {0xC59A9000, 0x45520000, 0x44D8C000, 0x43F78000, 0x458D2800, 0x44D24000, 0xC4DE6000, 0x458D2800, 0x44D24000, 0xC52FD000, 0x458D5000, 0x44D7E000, 0xC50F8000};

Vec3f D_80B435F0[] = {
	{3382.0f, 1734.0f, -4946.0f}, // small, furthest from entrance
	{3360.0f, 1734.0f,   495.0f}, // small, closest to entrance
	{4517.0f, 1682.0f, -1779.0f}, // medium, on the right
	{4517.0f, 1682.0f, -2813.0f}, // medium, on the left
	{4522.0f, 1727.0f, -2296.0f}, // large in the center
};


// s32 D_80B4362C[] = {0x41A00000, 0x42200000, 0x42700000, 0x44424000, 0x42200000, 0x42A00000, 0x42F00000, 0x44424000, 0x42200000, 0x42F00000, 0x43200000, 0x44424000};

typedef struct {
	/* 0x00 */ f32 unk_0; // first ring
	/* 0x04 */ f32 unk_4; // second ring
	/* 0x08 */ f32 unk_8; // outside edge
	/* 0x0C */ f32 unk_C;
} unknownStruct; // size = 0x10

unknownStruct D_80B4362C[] = {
	{ 20.0f, 40.0f, 60.0f, 777.0f},
	{ 40.0f, 80.0f, 120.0f, 777.0f},
	{ 40.0f, 120.0f, 160.0f, 777.0f},
};

// f32 D_80B4362C[] = {
// 	20.0f, 40.0f, 60.0f, 777.0f,
// 	40.0f, 80.0f, 120.0f, 777.0f,
// 	40.0f, 120.0f, 160.0f, 777.0f,
// };

// s32 D_80B4362C[] = {
// 	{ 20.0f, 40.0f, 60.0f, 777.0f},
// 	{ 40.0f, 80.0f, 120.0f, 777.0f},
// 	{ 40.0f, 120.0f, 160.0f, 777.0f},
// };

Vec3f D_80B4365C = { 0.0f, 0.0f, 0.0f };
Vec3f D_80B43668 = { 0.0f, 0.0f, 0.0f };

//#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Yabusame_Mark/EnYabusameMark_Destroy.s")
void EnYabusameMark_Destroy(Actor* thisx, GlobalContext* globalCtx) {
	EnYabusameMark* this = THIS;

	Collider_DestroyQuad(globalCtx, &this->collider);
}

//#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Yabusame_Mark/EnYabusameMark_Init.s")
void EnYabusameMark_Init(Actor* thisx, GlobalContext* globalCtx) {
	EnYabusameMark* this = THIS;

	osSyncPrintf("\n\n");
	osSyncPrintf(VT_FGCOL(GREEN) "☆☆☆☆☆ やぶさめまと ☆☆☆☆☆ %x\n" VT_RST, this->actor.params);
	this->actor.flags &= -2;
	this->typeIndex = this->actor.params;
	this->actor.targetMode = 5;
	osSyncPrintf(VT_FGCOL(GREEN) "☆☆☆☆☆ 種類インデックス \t   ☆☆☆☆☆ %d\n" VT_RST, this->typeIndex);
	switch(this->typeIndex) {
		case 0:
			this->subType = 0;
			if (this->actor.world.pos.z > 0.0f) {
				this->subType = 1;
			}
			break;
		case 1:
			this->subType = 2;
			if (this->actor.world.pos.z < -2000.0f) {
				this->subType = 3;
			}
			break;
		case 2:
			this->subType = 4;
			break;
	}

	Collider_InitQuad(globalCtx, &this->collider);
	Collider_SetQuad(globalCtx, &this->collider, &this->actor, &sQuadInit);
	this->unk_154 = this->actor.world.pos;
	this->actor.flags |= 0x10;
	if (gSaveContext.sceneSetupIndex != 4) {
		Actor_Kill(&this->actor);
		return;
	}
	osSyncPrintf(VT_FGCOL(PURPLE) "☆☆☆☆☆ 種類       ☆☆☆☆☆ %d\n" VT_RST, this->typeIndex);
	osSyncPrintf(VT_FGCOL(CYAN) "☆☆☆☆☆ さらに分類 ☆☆☆☆☆ %d\n" VT_RST, this->subType);
	this->actionFunc = func_80B42F74;
}

// #pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Yabusame_Mark/func_80B42F74.s")
void func_80B42F74(EnYabusameMark *this, GlobalContext *globalCtx)
{
	Vec3f effectAccel;
	Vec3f effectVelocity;
	Vec3f arrowHitPos;
	Vec3f distanceFromCenter;
	f32 scoreDistance100;
	f32 scoreDistance60;
	f32 scoreDistance30;
	s32 scoreIndex;

	effectAccel = D_80B4365C;
	effectVelocity = D_80B43668;

	if (this->collider.base.acFlags & 2)
	{
		this->collider.base.acFlags &= ~2;

		arrowHitPos.x = this->collider.info.bumper.hitPos.x;
		arrowHitPos.y = this->collider.info.bumper.hitPos.y;
		arrowHitPos.z = this->collider.info.bumper.hitPos.z;

		effectVelocity.y = 15.0f;

		EffectSsHitMark_SpawnCustomScale(globalCtx, 0, 700, &arrowHitPos);

		scoreIndex = 2;

		distanceFromCenter.x = fabsf(D_80B435F0[this->subType].x - arrowHitPos.x);
		distanceFromCenter.y = fabsf(D_80B435F0[this->subType].y - arrowHitPos.y);
		distanceFromCenter.z = fabsf(D_80B435F0[this->subType].z - arrowHitPos.z);

		scoreDistance100 = D_80B4362C[this->typeIndex].unk_0;
		scoreDistance60 = D_80B4362C[this->typeIndex].unk_4;
		scoreDistance30 = D_80B4362C[this->typeIndex].unk_8;

		if (distanceFromCenter.x > scoreDistance100 ||
			distanceFromCenter.y > scoreDistance100 ||
			distanceFromCenter.z > scoreDistance100)
		{
			scoreIndex = 1;
			if (distanceFromCenter.x > scoreDistance60 ||
				distanceFromCenter.y > scoreDistance60 ||
				distanceFromCenter.z > scoreDistance60)
			{
				scoreIndex = 0;
			}
			if (distanceFromCenter.x > scoreDistance30 ||
				distanceFromCenter.y > scoreDistance30 ||
				distanceFromCenter.z > scoreDistance30)
			{
				return;
			}
		}

		osSyncPrintf("\n\n");
		osSyncPrintf(VT_FGCOL(GREEN)  "☆☆☆☆☆ posＸ ☆☆☆☆☆ %f\n" VT_RST, arrowHitPos.x);
		osSyncPrintf(VT_FGCOL(GREEN)  "☆☆☆☆☆ posＹ ☆☆☆☆☆ %f\n" VT_RST, arrowHitPos.y);
		osSyncPrintf(VT_FGCOL(GREEN)  "☆☆☆☆☆ posＺ ☆☆☆☆☆ %f\n" VT_RST, arrowHitPos.z);
		osSyncPrintf(VT_FGCOL(YELLOW) "☆☆☆☆☆ hitＸ ☆☆☆☆☆ %f\n" VT_RST, D_80B435F0[this->subType].x);
		osSyncPrintf(VT_FGCOL(YELLOW) "☆☆☆☆☆ hitＹ ☆☆☆☆☆ %f\n" VT_RST, D_80B435F0[this->subType].y);
		osSyncPrintf(VT_FGCOL(YELLOW) "☆☆☆☆☆ hitＺ ☆☆☆☆☆ %f\n" VT_RST, D_80B435F0[this->subType].z);
		osSyncPrintf(VT_FGCOL(PURPLE) "☆☆☆☆☆ 小    ☆☆☆☆☆ %f\n" VT_RST, scoreDistance100);
		osSyncPrintf(VT_FGCOL(PURPLE) "☆☆☆☆☆ 大    ☆☆☆☆☆ %f\n" VT_RST, scoreDistance60);
		osSyncPrintf(VT_FGCOL(PURPLE) "☆☆☆☆☆ point ☆☆☆☆☆ %d\n" VT_RST, scoreIndex);
		osSyncPrintf("\n\n");

		if (scoreIndex == 2)
		{
			func_800F5C64(0x922);
		}
		if (scoreIndex == 1)
		{
			func_800F8D04(NA_SE_SY_TRE_BOX_APPEAR);
			func_80078884(NA_SE_SY_TRE_BOX_APPEAR);
		}
		if (scoreIndex == 0)
		{
			func_80078884(NA_SE_SY_DECIDE);
		}
		EffectSsExtra_Spawn(globalCtx, &arrowHitPos, &effectVelocity, &effectAccel, 5, scoreIndex);
	}
}

//#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Yabusame_Mark/EnYabusameMark_Update.s")
void EnYabusameMark_Update(Actor* thisx, GlobalContext* globalCtx) {
	EnYabusameMark* this = THIS;
	Vec3f* vectorArray;
	u32 arrayIndex;

	this->actionFunc(this, globalCtx);
	arrayIndex = this->typeIndex * 4;
	vectorArray = &D_80B43560[arrayIndex];

	this->unk_160.x = vectorArray[0].x + this->actor.world.pos.x;
	this->unk_160.y = vectorArray[0].y + this->actor.world.pos.y;
	this->unk_160.z = vectorArray[0].z + this->actor.world.pos.z;
	this->unk_16C.x = vectorArray[1].x + this->actor.world.pos.x;
	this->unk_16C.y = vectorArray[1].y + this->actor.world.pos.y;
	this->unk_16C.z = vectorArray[1].z + this->actor.world.pos.z;
	this->unk_178.x = vectorArray[2].x + this->actor.world.pos.x;
	this->unk_178.y = vectorArray[2].y + this->actor.world.pos.y;
	this->unk_178.z = vectorArray[2].z + this->actor.world.pos.z;
	this->unk_184.x = vectorArray[3].x + this->actor.world.pos.x;
	this->unk_184.y = vectorArray[3].y + this->actor.world.pos.y;
	this->unk_184.z = vectorArray[3].z + this->actor.world.pos.z;

	Collider_SetQuadVertices(&this->collider, &this->unk_160, &this->unk_16C, &this->unk_178, &this->unk_184);
	CollisionCheck_SetAC(globalCtx, &globalCtx->colChkCtx, &this->collider.base);
	if (BREG(0)) {
		DebugDisplay_AddObject(this->actor.world.pos.x, this->actor.world.pos.y, this->actor.world.pos.z, this->actor.world.rot.x, this->actor.world.rot.y, this->actor.world.rot.z, 1.0f, 1.0f, 1.0f, 0, 0xFF, 0, 0xFF, 4, globalCtx->state.gfxCtx);
	}
}
