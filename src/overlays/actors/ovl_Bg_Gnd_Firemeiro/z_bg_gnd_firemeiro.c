/*
 * File: z_bg_gnd_firemeiro.c
 * Overlay: ovl_Bg_Gnd_Firemeiro
 * Description: Sinking lava platform (Ganon's Castle)
 */

#include "z_bg_gnd_firemeiro.h"
#include "objects/object_demo_kekkai/object_demo_kekkai.h"

#define FLAGS 0x00000030

#define THIS ((BgGndFiremeiro*)thisx)

void BgGndFiremeiro_Init(Actor* thisx, GlobalContext* globalCtx);
void BgGndFiremeiro_Destroy(Actor* thisx, GlobalContext* globalCtx);
void BgGndFiremeiro_Update(Actor* thisx, GlobalContext* globalCtx);
void BgGndFiremeiro_Draw(Actor* thisx, GlobalContext* globalCtx);

void func_808795AC(BgGndFiremeiro* this, GlobalContext* globalCtx);
void func_80879668(BgGndFiremeiro* this, GlobalContext* globalCtx);
void func_80879808(BgGndFiremeiro* this, GlobalContext* globalCtx);

const ActorInit Bg_Gnd_Firemeiro_InitVars = {
    ACTOR_BG_GND_FIREMEIRO,
    ACTORCAT_PROP,
    FLAGS,
    OBJECT_DEMO_KEKKAI,
    sizeof(BgGndFiremeiro),
    (ActorFunc)BgGndFiremeiro_Init,
    (ActorFunc)BgGndFiremeiro_Destroy,
    (ActorFunc)BgGndFiremeiro_Update,
    (ActorFunc)BgGndFiremeiro_Draw,
};

// #pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Bg_Gnd_Firemeiro/BgGndFiremeiro_Init.s")
void BgGndFiremeiro_Init(Actor* thisx, GlobalContext* globalCtx) {
    s32 pad;
    BgGndFiremeiro* this = THIS;
    CollisionHeader* colHeader = NULL;

    ActorShape_Init(&thisx->shape, 0.0f, NULL, 0.0f);
    Actor_SetScale(thisx, 0.1f);
    this->unk_164 = this->dyna.actor.world.pos;

    if (this->dyna.actor.params == 0) {
        DynaPolyActor_Init(&this->dyna, DPM_UNK);
        CollisionHeader_GetVirtual(&gFireTrialPlatformCol, &colHeader);
        this->dyna.bgId = DynaPoly_SetBgActor(globalCtx, &globalCtx->colCtx.dyna, &this->dyna.actor, colHeader);
        this->actionFunc = func_80879808;
    }
}

// #pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Bg_Gnd_Firemeiro/BgGndFiremeiro_Destroy.s")
void BgGndFiremeiro_Destroy(Actor* thisx, GlobalContext* globalCtx) {
    BgGndFiremeiro* this = THIS;

    if (this->dyna.actor.params == 0) {
        if (globalCtx) {}
        DynaPoly_DeleteBgActor(globalCtx, &globalCtx->colCtx.dyna, this->dyna.bgId);
    }
}

// #pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Bg_Gnd_Firemeiro/func_808795AC.s")
void func_808795AC(BgGndFiremeiro* this, GlobalContext* globalCtx) {
    f32 temp_f2 = this->unk_164.y - 150.0f;

    if (func_8004356C(&this->dyna)) {
        this->unk_170 = 10;
    }

    if (temp_f2 < this->dyna.actor.world.pos.y) {
        this->dyna.actor.world.pos.y -= 0.5f;

        if (this->dyna.actor.world.pos.y < temp_f2) {
            this->dyna.actor.world.pos.y = temp_f2;
        }

        func_8002F948(&this->dyna.actor, NA_SE_EV_ROLL_STAND_2 - SFX_FLAG);
    }

    if (this->unk_170 > 0) {
        this->unk_170--;
    } else {
        this->actionFunc = func_80879808;
    }
}

// #pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Bg_Gnd_Firemeiro/func_80879668.s")
void func_80879668(BgGndFiremeiro* this, GlobalContext* globalCtx) {
    s32 pad;
    f32 phi_f2;

    if (func_8004356C(&this->dyna)) {
        if (this->unk_170 > 0) {
            this->unk_170--;

            phi_f2 = ((this->unk_170 & 1) ? 2.0f : -2.0f);

            this->dyna.actor.world.pos = this->unk_164;
            this->dyna.actor.world.pos.x += phi_f2 * Math_SinS(this->unk_170 * 0x2FFF);
            this->dyna.actor.world.pos.z += phi_f2 * Math_CosS(this->unk_170 * 0x2FFF);
            this->dyna.actor.world.pos.y += Math_CosS(this->unk_170 * 0x7FFF);

            if (!(this->unk_170 % 4)) {
                Audio_PlayActorSound2(&this->dyna.actor, 0x2838);
            }
        } else {
            this->unk_170 = (u16)0xA;
            this->dyna.actor.world.pos = this->unk_164;
            this->actionFunc = func_808795AC;
        }
    } else {
        this->dyna.actor.world.pos = this->unk_164;
        this->actionFunc = func_80879808;
    }
}

// #pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Bg_Gnd_Firemeiro/func_80879808.s")
void func_80879808(BgGndFiremeiro* this, GlobalContext* globalCtx) {
    Player* player = PLAYER;
    BgGndFiremeiro* this2 = this;

    if ((player->currentBoots != PLAYER_BOOTS_HOVER) && func_8004356C(&this->dyna)) {
        if (this2->dyna.actor.world.pos.y < this->unk_164.y) {
            this->actionFunc = func_808795AC;
            this->unk_170 = 20;
        } else {
            this->actionFunc = func_80879668;
            this->unk_170 = 20;
        }
    } else {
        if (this2->dyna.actor.world.pos.y < this->unk_164.y) {
            this2->dyna.actor.world.pos.y += 2.0f;
            if (this->unk_164.y < this->dyna.actor.world.pos.y) {
                this->dyna.actor.world.pos.y = this->unk_164.y;
            }
        }
    }
}

// #pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Bg_Gnd_Firemeiro/BgGndFiremeiro_Update.s")
void BgGndFiremeiro_Update(Actor* thisx, GlobalContext* globalCtx) {
    BgGndFiremeiro* this = THIS;

    this->actionFunc(this, globalCtx);
}

// #pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Bg_Gnd_Firemeiro/BgGndFiremeiro_Draw.s")
void BgGndFiremeiro_Draw(Actor* thisx, GlobalContext* globalCtx) {
    OPEN_DISPS(globalCtx->state.gfxCtx, "../z_bg_gnd_firemeiro.c", 280);
    func_800943C8(globalCtx->state.gfxCtx);

    gSPMatrix(POLY_OPA_DISP++, Matrix_NewMtx(globalCtx->state.gfxCtx, "../z_bg_gnd_firemeiro.c", 282),
              G_MTX_NOPUSH | G_MTX_LOAD | G_MTX_MODELVIEW);
    gSPDisplayList(POLY_OPA_DISP++, gFireTrialPlatformDL);

    CLOSE_DISPS(globalCtx->state.gfxCtx, "../z_bg_gnd_firemeiro.c", 285);
}
