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
    MagicDark* this2 = this;
    Player* player = PLAYER;
    s16 nayruTemp;
    s16 nayru = gSaveContext.nayrusLoveTimer;
    u8 phi_a0;
    s32 temp_t2;

    if (globalCtx->msgCtx.msgMode == 0xD || globalCtx->msgCtx.msgMode == 0x11) {
        Actor_Kill(&this->actor);
        return;
    }
    if (nayru >= 1200) {
        player->invincibilityTimer = 0;
        gSaveContext.nayrusLoveTimer = 0;
        Actor_Kill(&this->actor);
        return;
    }
    player->invincibilityTimer = -100;
    this->actor.scale.x = this->actor.scale.z = this2->unk_15C;
    if (this->unk_14C < 20) {
        this->actor.scale.x = this->actor.scale.z = (1.6f - (this->unk_14C * 0.03f)) * this2->unk_15C;
        this->actor.scale.y = ((this2->unk_14C * 0.01f) + 0.8f) * this->unk_15C;
    } else {
        this->actor.scale.x = this->actor.scale.z = this->unk_15C;
        this->actor.scale.y = this2->unk_15C;
    }
    this->actor.scale.x *= 1.3f;
    this->actor.scale.z *= 1.3f;
    if (this2->unk_14C < 20) {
        phi_a0 = this->unk_14C * 12;
    } else {
        phi_a0 = 0xFF;
    }
    nayruTemp = nayru;
    if (nayruTemp >= 1180) {
        temp_t2 = 0x3CEB - (nayruTemp * 0xD);
        this->unk_14E = temp_t2;
        if ((nayruTemp & 1) != 0) {
            this->unk_14E = (temp_t2 & 0xFF) >> 1;
        }
    } else if (nayruTemp >= 1100) {
        this->unk_14E = (nayru * 128) + 127;
    } else {
        this->unk_14E = 0xFF;
    }
    if (phi_a0 < this->unk_14E) {
        this->unk_14E = phi_a0;
    }
    this->actor.posRot.rot.y += 1000;
    this->actor.shape.rot.y = func_8005A9F4(ACTIVE_CAM) + this->actor.posRot.rot.y;
    this->unk_14C += 1;
    gSaveContext.nayrusLoveTimer = nayru + 1;
    if (nayru < 1100) {
        func_8002F974(&this->actor, NA_SE_PL_MAGIC_SOUL_NORMAL);
    } else {
        func_8002F974(&this->actor, NA_SE_PL_MAGIC_SOUL_FLASH);
    }
}

// #pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Magic_Dark/func_80B874E4.s")

/*
void func_80B8772C(GlobalContext *globalCtx, f32 a1) {
    f32 temp_f0;
    f32 temp_f10;
    s32 temp_v0;
    s32 temp_v0_2;
    u8 temp_t0;
    void *temp_a1;
    void *temp_v1;
    void *temp_v1_2;
    void *temp_v1_3;
    f32 phi_f0;
    void *phi_v1;
    s32 phi_v0;
    void *phi_a1;
    f32 phi_f10;
    f32 phi_f0_2;
    void *phi_v1_2;
    s32 phi_v0_2;

    if (globalCtx->roomCtx.curRoom.unk_03 != 5) {
        if (a1 < 0.0f) {
            a1 = 0.0f;
        }
        if (a1 > 1.0f) {
            a1 = 1.0f;
        }
        phi_f0 = a1 - 0.2f;
        if (a1 < 0.2f) {
            phi_f0 = 0.0f;
        }
        *(s16*)(&globalCtx->envCtx.unk_98[6]) = (850.0f - *(f32*)(&globalCtx->envCtx.unk_C0[0xC])) * phi_f0;
        if (a1 == 0.0f) {
            phi_v1 = (void*)(&globalCtx->msgCtx.unk_128[0xDE00]);
            phi_v0 = 0;
            do {
                temp_v0 = phi_v0 + 1;
                temp_v1 = (void*)((s32)phi_v1 + 2);
                *(u16*)((s32)temp_v1 + 0xABA) = 0;
                phi_v1 = temp_v1;
                phi_v0 = temp_v0;
            } while (temp_v0 != 3);
            return;
        }
        temp_v1_2 = (void*)(&globalCtx->msgCtx.unk_128[0xDE00]);
        temp_f0 = a1 * 5.0f;
        temp_a1 = (void*)(&globalCtx->msgCtx.unk_128[0xDE00]);
        phi_a1 = temp_a1;
        phi_f0_2 = temp_f0;
        phi_v1_2 = temp_v1_2;
        phi_v0_2 = 0;
        if (1.0f < temp_f0) {
            phi_a1 = temp_a1;
            phi_f0_2 = 1.0f;
            phi_v1_2 = temp_v1_2;
            phi_v0_2 = 0;
        }

        do {
            temp_t0 = *(u8*)((s32)phi_a1 + 0xAF3);
            temp_f10 = (f32) temp_t0;
            phi_f10 = temp_f10;
            if (temp_t0 < 0) {
                phi_f10 = temp_f10 + 4294967296.0f;
            }
            temp_v0_2 = phi_v0_2 + 1;
            temp_v1_3 = (void*)((s32)phi_v1_2 + 2);
            *(s16*)((s32)temp_v1_3 + 0xABA) = 0 - (s32) (phi_f10 * phi_f0_2);
            phi_a1 = (void*)((s32)phi_a1 + 1);
            phi_v1_2 = temp_v1_3;
            phi_v0_2 = temp_v0_2;
        } while (temp_v0_2 != 3);
    }
}
*/

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Magic_Dark/func_80B8772C.s")

void MagicDark_Update(Actor* thisx, GlobalContext* globalCtx) {
    MagicDark* this = THIS;
    s32 pad;
    Player* player = PLAYER;

    func_8002F974(&this->actor, NA_SE_PL_MAGIC_SOUL_BALL);
    if (this->unk_14C < 35) {
        func_80B8772C(globalCtx, this->unk_14C * (1 / 45.0f));
        Math_SmoothScaleMaxMinF(&this->actor.scale.x, this->unk_15C * (1 / 12.000001f), 0.05f, 0.01f, 0.0001f);
        Actor_SetScale(&this->actor, this->actor.scale.x);
    } else if (this->unk_14C < 55) {
        Actor_SetScale(&this->actor, this->actor.scale.x * 0.9f);
        Math_SmoothScaleMaxMinF(&this->unk_154, *(f32*)(&player->unk_908[4]), 0.5f, 3.0f, 1.0f);
        if (this->unk_14C >= 49) {
            func_80B8772C(globalCtx, (54 - this->unk_14C) * 0.2f);
        }
    } else {
        this->actor.update = func_80B874E4;
        this->actor.draw = func_80B87A18;
        this->actor.scale.x =  this->actor.scale.z = this->unk_15C * 1.6f;
        // THIS needed below to match
        this->actor.scale.y = THIS->unk_15C * 0.8f;
        this->unk_14C = 0;
        this->unk_14E = 0;
    }
    this->unk_14C += 1;
}

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Magic_Dark/func_80B87A18.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Magic_Dark/MagicDark_Draw.s")
