/*
 * File: z_en_jsjutan.c
 * Overlay: ovl_En_Jsjutan
 * Description: Magic carpet man carpet
 */

#include "z_en_jsjutan.h"

#define FLAGS 0x00000009

#define THIS ((EnJsjutan*)thisx)

void EnJsjutan_Init(Actor* thisx, GlobalContext* globalCtx);
void EnJsjutan_Destroy(Actor* thisx, GlobalContext* globalCtx);
void EnJsjutan_Update(Actor *thisx, GlobalContext* globalCtx);
void EnJsjutan_Draw(Actor *thisx, GlobalContext* globalCtx);

extern CollisionHeader D_80A8E400;

/*
const ActorInit En_Jsjutan_InitVars = {
    ACTOR_EN_JSJUTAN,
    ACTORCAT_NPC,
    FLAGS,
    OBJECT_GAMEPLAY_KEEP,
    sizeof(EnJsjutan),
    (ActorFunc)EnJsjutan_Init,
    (ActorFunc)EnJsjutan_Destroy,
    (ActorFunc)EnJsjutan_Update,
    (ActorFunc)EnJsjutan_Draw,
};
*/

void EnJsjutan_Init(Actor *thisx, GlobalContext *globalCtx) {
    EnJsjutan* this = THIS;
    s32 pad;
    CollisionHeader* header = NULL;

    this->dyna.actor.flags = this->dyna.actor.flags & ~1;
    DynaPolyActor_Init(&this->dyna, DPM_UNK);
    CollisionHeader_GetVirtual(&D_80A8E400, &header);
    this->dyna.bgId = DynaPoly_SetBgActor(globalCtx, &globalCtx->colCtx.dyna, thisx, header);
    Actor_SetScale(thisx, 0.02f);
    this->unk_164 = 1;
    this->unk_16C = 100.0f;
}

void EnJsjutan_Destroy(Actor *thisx, GlobalContext *globalCtx) {
    EnJsjutan* this = THIS;

    DynaPoly_DeleteBgActor(globalCtx, &globalCtx->colCtx.dyna, this->dyna.bgId);
}

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Jsjutan/func_80A89860.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Jsjutan/func_80A89A6C.s")

#ifdef NON_MATCHING
void EnJsjutan_Update(Actor *thisx, GlobalContext *globalCtx) {
    EnJsjutan* this = THIS;

    this->dyna.actor.shape.rot.x = Math_SinS((((((((globalCtx->gameplayFrames * 4) - globalCtx->gameplayFrames) * 0x10) - globalCtx->gameplayFrames) * 8) - globalCtx->gameplayFrames) * 8)) * 300.0f;
    this->dyna.actor.shape.rot.z = Math_CosS((((((((((globalCtx->gameplayFrames * 8) - globalCtx->gameplayFrames) * 8) - globalCtx->gameplayFrames) * 4) - globalCtx->gameplayFrames) * 4) - globalCtx->gameplayFrames) * 4)) * 300.0f;
}
#else
#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Jsjutan/EnJsjutan_Update.s")
#endif

/*
void EnJsjutan_Draw(EnJsjutan *this, GlobalContext *globalCtx) {
    struct Actor *sp78;
    Gfx *sp64;
    Gfx *sp5C;
    void *sp2C;
    void *sp28;
    Gfx *temp_v0_10;
    Gfx *temp_v0_11;
    Gfx *temp_v0_12;
    Gfx *temp_v0_13;
    Gfx *temp_v0_14;
    Gfx *temp_v0_15;
    Gfx *temp_v0_3;
    Gfx *temp_v0_4;
    Gfx *temp_v0_5;
    Gfx *temp_v0_6;
    Gfx *temp_v0_7;
    Gfx *temp_v0_8;
    Gfx *temp_v0_9;
    GraphicsContext *temp_a1;
    GraphicsContext *temp_s1;
    f32 temp_f8;
    s16 temp_v0_2;
    struct Actor *temp_v0;
    s16 phi_v0;

    temp_v0 = this->dyna.actor.parent;
    temp_a1 = globalCtx->state.gfxCtx;
    sp78 = temp_v0;
    temp_s1 = temp_a1;
    Graph_OpenDisps(&sp64, temp_a1, (const char *) "../z_en_jsjutan.c", 0x2BD);
    if (this->dyna.actor.params == 1) {
        this->dyna.actor.world.pos.x = temp_v0->world.pos.x;
        this->dyna.actor.world.pos.y = temp_v0->world.pos.y;
        this->dyna.actor.world.pos.z = temp_v0->world.pos.z;
        this->unk168 = (f32) this->dyna.actor.world.pos.y;
        if (this->unk175 == 0) {
            this->unk175 = (u8)1U;
            func_80A89860(this, globalCtx);
        }
    } else if (this->unk175 == 0) {
        this->unk175 = (u8)1U;
        sp78 = temp_v0;
        this->dyna.actor.world.pos.x = (Math_SinS(temp_v0->shape.rot.y) * 60.0f) + temp_v0->world.pos.x;
        this->dyna.actor.world.pos.y = (temp_v0->world.pos.y + 5.0f) - 10.0f;
        temp_f8 = Math_CosS(temp_v0->shape.rot.y) * 60.0f;
        this->unk168 = (f32) this->dyna.actor.world.pos.y;
        this->dyna.actor.world.pos.z = temp_f8 + temp_v0->world.pos.z;
        func_80A89860(this, globalCtx);
    }
    func_80A89A6C(this, globalCtx);
    if (this->unk_164 != 0) {
        this->unk_164 = 0;
        phi_v0 = (u16)0;
loop_7:
        if (*(&D_80A8AA98 + (phi_v0 * 2)) != 0) {
            *(&D_80A8E610 + phi_v0) = (u8)0xFF;
        } else {
            *(&D_80A8E610 + phi_v0) = (u8)0;
        }
        temp_v0_2 = phi_v0 + 1;
        phi_v0 = temp_v0_2;
        if ((s32) temp_v0_2 < 0x800) {
            goto loop_7;
        }
    }
    func_80093D18(globalCtx->state.gfxCtx);
    temp_v0_3 = temp_s1->polyOpa.p;
    temp_s1->polyOpa.p = temp_v0_3 + 8;
    temp_v0_3->words.w0 = 0xFA000000;
    temp_v0_3->words.w1 = (s32) this->unk_16C & 0xFF;
    Matrix_Translate(this->dyna.actor.world.pos.x, 3.0f, (bitwise f32) (bitwise s32) this->dyna.actor.world.pos.z, (u8)0U);
    Matrix_Scale(this->dyna.actor.scale.x, 1.0f, (bitwise f32) (bitwise s32) this->dyna.actor.scale.z, (u8)1U);
    temp_v0_4 = temp_s1->polyOpa.p;
    temp_s1->polyOpa.p = temp_v0_4 + 8;
    temp_v0_4->words.w0 = 0xDA380003;
    sp5C = temp_v0_4;
    sp5C->words.w1 = Matrix_NewMtx(globalCtx->state.gfxCtx, (char *) "../z_en_jsjutan.c", 0x30E);
    temp_v0_5 = temp_s1->polyOpa.p;
    temp_s1->polyOpa.p = temp_v0_5 + 8;
    temp_v0_5->words.w1 = (u32) &D_80A8D618;
    temp_v0_5->words.w0 = 0xDE000000;
    temp_v0_6 = temp_s1->polyOpa.p;
    temp_s1->polyOpa.p = temp_v0_6 + 8;
    temp_v0_6->words.w1 = 0;
    temp_v0_6->words.w0 = 0xE7000000;
    if ((globalCtx->gameplayFrames & 1) != 0) {
        temp_v0_7 = temp_s1->polyOpa.p;
        temp_s1->polyOpa.p = temp_v0_7 + 8;
        temp_v0_7->words.w1 = (u32) &D_80A8BA98;
        temp_v0_7->words.w0 = 0xDB060030;
    } else {
        temp_v0_8 = temp_s1->polyOpa.p;
        temp_s1->polyOpa.p = temp_v0_8 + 8;
        temp_v0_8->words.w1 = (u32) &D_80A8C398;
        temp_v0_8->words.w0 = 0xDB060030;
    }
    temp_v0_9 = temp_s1->polyOpa.p;
    temp_s1->polyOpa.p = temp_v0_9 + 8;
    temp_v0_9->words.w1 = (u32) &D_80A8D688;
    temp_v0_9->words.w0 = 0xDE000000;
    sp28 = globalCtx + 0x10000;
    sp2C = &D_80A8D688;
    func_80093D18(globalCtx->state.gfxCtx);
    Matrix_Translate(this->dyna.actor.world.pos.x, this->unk168 + 3.0f, (bitwise f32) (bitwise s32) this->dyna.actor.world.pos.z, (u8)0U);
    Matrix_Scale(this->dyna.actor.scale.x, this->dyna.actor.scale.y, (bitwise f32) (bitwise s32) this->dyna.actor.scale.z, (u8)1U);
    temp_v0_10 = temp_s1->polyOpa.p;
    temp_s1->polyOpa.p = temp_v0_10 + 8;
    temp_v0_10->words.w0 = 0xDA380003;
    temp_v0_10->words.w1 = Matrix_NewMtx(globalCtx->state.gfxCtx, (char *) "../z_en_jsjutan.c", 0x325);
    temp_v0_11 = temp_s1->polyOpa.p;
    temp_s1->polyOpa.p = temp_v0_11 + 8;
    temp_v0_11->words.w0 = 0xDE000000;
    temp_v0_11->words.w1 = (u32) &D_80A8D598;
    temp_v0_12 = temp_s1->polyOpa.p;
    temp_s1->polyOpa.p = temp_v0_12 + 8;
    temp_v0_12->words.w1 = 0;
    temp_v0_12->words.w0 = 0xE7000000;
    if ((sp28->unk1DE4 & 1) != 0) {
        temp_v0_13 = temp_s1->polyOpa.p;
        temp_s1->polyOpa.p = temp_v0_13 + 8;
        temp_v0_13->words.w1 = (u32) &D_80A8CC98;
        temp_v0_13->words.w0 = 0xDB060030;
    } else {
        temp_v0_14 = temp_s1->polyOpa.p;
        temp_s1->polyOpa.p = temp_v0_14 + 8;
        temp_v0_14->words.w1 = (u32) &D_80A8DAB8;
        temp_v0_14->words.w0 = 0xDB060030;
    }
    temp_v0_15 = temp_s1->polyOpa.p;
    temp_s1->polyOpa.p = temp_v0_15 + 8;
    temp_v0_15->words.w0 = 0xDE000000;
    temp_v0_15->words.w1 = (u32) sp2C;
    Graph_CloseDisps(&sp64, globalCtx->state.gfxCtx, (const char *) "../z_en_jsjutan.c", 0x337);
}
*/
#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Jsjutan/EnJsjutan_Draw.s")
