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
void func_80B8772C(MagicDark* this, GlobalContext* globalCtx);
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

    if (gSaveContext.linkAge != 0) {
        this->unk_15C = 0.4f;
    } else {
        this->unk_15C = 0.6f;
    }

    this->actor.posRot.pos = player->actor.posRot.pos;
    Actor_SetScale(&this->actor, 0.0f);
    this->actor.room = -1;

    if (gSaveContext.nayrusLoveTimer != 0) {
        this->actor.update = func_80B874E4;
        this->actor.draw = func_80B87A18;
        this->actor.scale.x = this->actor.scale.z = this->unk_15C * 1.6f;
        // THIS needed below to match
        this->actor.scale.y = THIS->unk_15C * 0.8f;
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

void func_80B874E4(Actor* thisx, GlobalContext* globalCtx) {
    MagicDark* this = THIS;
    Player* player = PLAYER;
    u8 temp_t2;
    s32 phi_a0;

    if (globalCtx->msgCtx.msgMode == 0xD || globalCtx->msgCtx.msgMode == 0x11) {
        Actor_Kill(&this->actor);
        return;
    }
    if (gSaveContext.nayrusLoveTimer >= 1200) {
        player->invincibilityTimer = 0;
        gSaveContext.nayrusLoveTimer = 0;
        Actor_Kill(&this->actor);
        return;
    }
    player->invincibilityTimer = -100;
    this->actor.scale.z = this->unk_15C;
    this->actor.scale.x = this->unk_15C;
    if (this->unk_14C < 20) {
        this->actor.scale.x = this->actor.scale.z = (1.6f - (this->unk_14C * 0.03f)) * this->unk_15C;
        this->actor.scale.y = ((this->unk_14C * 0.01f) + 0.8f) * this->unk_15C;
    } else {
        this->actor.scale.z = this->unk_15C;
        this->actor.scale.x = this->unk_15C;
        this->actor.scale.y = this->unk_15C;
    }
    this->actor.scale.x = this->actor.scale.x * 1.3f;
    this->actor.scale.z = this->actor.scale.z * 1.3f;
    phi_a0 = 0xFF;
    if (this->unk_14C < 20) {
        phi_a0 = (this->unk_14C * 0xC) & 0xFF;
    }
    if (gSaveContext.nayrusLoveTimer >= 1180) {
        temp_t2 = 0x3CEB - (gSaveContext.nayrusLoveTimer * 0xD);
        this->unk_14E = temp_t2;
        if ((gSaveContext.nayrusLoveTimer & 1) != 0) {
            this->unk_14E = (s32)(temp_t2 & 0xFF) >> 1;
        }
    } else {
        if (gSaveContext.nayrusLoveTimer >= 1100) {
            this->unk_14E = (gSaveContext.nayrusLoveTimer << 7) + 0x7F;
        } else {
            this->unk_14E = 0xFF;
        }
    }
    if (phi_a0 < this->unk_14E) {
        this->unk_14E = phi_a0;
    }
    this->actor.posRot.rot.y += 1000;
    this->actor.shape.rot.y =
        func_8005A9F4(globalCtx->cameraPtrs[globalCtx->activeCamera]) + this->actor.posRot.rot.y;
    this->unk_14C += 1;
    gSaveContext.nayrusLoveTimer += 1;
    if (gSaveContext.nayrusLoveTimer < 1100) {
        func_8002F974(&this->actor, NA_SE_PL_MAGIC_SOUL_NORMAL);
    } else {
        func_8002F974(&this->actor, NA_SE_PL_MAGIC_SOUL_FLASH);
    }
}

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Magic_Dark/func_80B8772C.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Magic_Dark/MagicDark_Update.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Magic_Dark/func_80B87A18.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Magic_Dark/MagicDark_Draw.s")
