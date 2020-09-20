/*
 * File: z_magic_dark.c
 * Overlay: ovl_Magic_Dark
 * Description: Nayru's Love
 */

#include "z_magic_dark.h"

#define FLAGS 0x02000010

#define THIS ((MagicDark*)thisx)

void MagicDark_Init(Actor* thisx, GlobalContext* globalCtx);
void MagicDark_Destroy(Actor* thisx, GlobalContext* globalCtx);
void MagicDark_Update(Actor* thisx, GlobalContext* globalCtx);
void MagicDark_Draw(Actor* thisx, GlobalContext* globalCtx);

void func_80B874E4(Actor* thisx, GlobalContext* globalCtx);
void func_80B8772C(GlobalContext* globalCtx, f32 a1);
void func_80B87A18(Actor* thisx, GlobalContext* globalCtx);

/*
const ActorInit Magic_Dark_InitVars = {
    ACTOR_MAGIC_DARK,
    ACTORTYPE_ITEMACTION,
    FLAGS,
    OBJECT_GAMEPLAY_KEEP,
    sizeof(MagicDark),
    (ActorFunc)MagicDark_Init,
    (ActorFunc)MagicDark_Destroy,
    (ActorFunc)MagicDark_Update,
    (ActorFunc)MagicDark_Draw,
};
*/

void MagicDark_Init(Actor* thisx, GlobalContext* globalCtx) {
    MagicDark* this = THIS;
    Player* player = PLAYER;

    if (LINK_IS_CHILD) {
        this->unk_15C = 0.4f;
    } else {
        this->unk_15C = 0.6f;
    }

    thisx->posRot.pos = player->actor.posRot.pos;
    Actor_SetScale(&this->actor, 0.0f);
    thisx->room = -1;

    if (gSaveContext.nayrusLoveTimer != 0) {
        thisx->update = func_80B874E4;
        thisx->draw = func_80B87A18;
        thisx->scale.x = thisx->scale.z = this->unk_15C * 1.6f;
        thisx->scale.y = this->unk_15C * 0.8f;
        this->unk_14C = 0;
        this->unk_14E = 0;
    } else {
        this->unk_14C = 0;
        gSaveContext.nayrusLoveTimer = 0;
    }
}

void MagicDark_Destroy(Actor* thisx, GlobalContext* globalCtx) {
    if (gSaveContext.nayrusLoveTimer == 0) {
        func_800876C8(globalCtx);
    }
}

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Magic_Dark/func_80B874E4.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Magic_Dark/func_80B8772C.s")

void MagicDark_Update(Actor* thisx, GlobalContext* globalCtx) {
    MagicDark* this = THIS;
    s32 pad;
    Player* player = PLAYER;

    func_8002F974(&this->actor, NA_SE_PL_MAGIC_SOUL_BALL - SFX_FLAG);
    if (this->unk_14C < 35) {
        func_80B8772C(globalCtx, this->unk_14C * (1 / 45.0f));
        Math_SmoothScaleMaxMinF(&thisx->scale.x, this->unk_15C * (1 / 12.000001f), 0.05f, 0.01f, 0.0001f);
        Actor_SetScale(&this->actor, thisx->scale.x);
    } else if (this->unk_14C < 55) {
        Actor_SetScale(&this->actor, thisx->scale.x * 0.9f);
        Math_SmoothScaleMaxMinF(&this->unk_154, player->bodyPartsPos[0].y, 0.5f, 3.0f, 1.0f);
        if (this->unk_14C >= 49) {
            func_80B8772C(globalCtx, (54 - this->unk_14C) * 0.2f);
        }
    } else {
        thisx->update = func_80B874E4;
        thisx->draw = func_80B87A18;
        thisx->scale.x = thisx->scale.z = this->unk_15C * 1.6f;
        thisx->scale.y = this->unk_15C * 0.8f;
        this->unk_14C = 0;
        this->unk_14E = 0;
    }
    this->unk_14C += 1;
}

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Magic_Dark/func_80B87A18.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Magic_Dark/MagicDark_Draw.s")
