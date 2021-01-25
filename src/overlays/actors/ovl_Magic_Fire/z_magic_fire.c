/*
 * File: z_magic_fire.c
 * Overlay: ovl_Magic_Fire
 * Description: Din's Fire
 */

#include "z_magic_fire.h"

#define FLAGS 0x02000010

#define THIS ((MagicFire*)thisx)

void MagicFire_Init(Actor* thisx, GlobalContext* globalCtx);
void MagicFire_Destroy(Actor* thisx, GlobalContext* globalCtx);
void MagicFire_Update(Actor* thisx, GlobalContext* globalCtx);
void MagicFire_Draw(Actor* thisx, GlobalContext* globalCtx);

void func_80B88E3C(Actor* thisx, GlobalContext* globalCtx);

extern ColliderCylinderInit D_80B8AF50;
extern InitChainEntry D_80B8AF7C[];
/*
const ActorInit Magic_Fire_InitVars = {
    ACTOR_MAGIC_FIRE,
    ACTORCAT_ITEMACTION,
    FLAGS,
    OBJECT_GAMEPLAY_KEEP,
    sizeof(MagicFire),
    (ActorFunc)MagicFire_Init,
    (ActorFunc)MagicFire_Destroy,
    (ActorFunc)MagicFire_Update,
    (ActorFunc)MagicFire_Draw,
};

static ColliderCylinderInit D_80B8AF50 = {
    {
        COLTYPE_NONE,
        AT_ON | AT_TYPE_PLAYER,
        AC_NONE,
        OC1_NONE,
        OC2_TYPE_1,
        COLSHAPE_CYLINDER,
    },
    {
        ELEMTYPE_UNK0,
        { 0x00020000, 0x00, 0x01 },
        { 0x00000000, 0x00, 0x00 },
        TOUCH_ON | TOUCH_SFX_NONE,
        BUMP_NONE,
        OCELEM_NONE,
    },
    { 9, 9, 0, { 0, 0, 0 } },
};
*/
void MagicFire_Init(Actor *thisx, GlobalContext *globalCtx) {
    MagicFire* this = THIS;

    Actor_ProcessInitChain(&this->actor, D_80B8AF7C);
    this->unk1A4 = 0;
    this->unk1A6 = 0;
    this->unk1A8 = 0;
    this->unk198 = -3.0f;
    Actor_SetScale(&this->actor, 0.0f);
    Collider_InitCylinder(globalCtx, &this->collider);
    Collider_SetCylinder(globalCtx, &this->collider, &this->actor, &D_80B8AF50);
    Collider_UpdateCylinder(thisx, &this->collider);
    this->actor.update = &func_80B88E3C;
    this->unk1A8 = 20;
    this->actor.room = -1;
}

void MagicFire_Destroy(Actor* thisx, GlobalContext* globalCtx) {
    func_800876C8(globalCtx);
}

void func_80B88E3C(Actor* thisx, GlobalContext* globalCtx) {
    MagicFire* this = THIS;
    Player* player = PLAYER;

    if ((globalCtx->msgCtx.msgMode == 0xD) || (globalCtx->msgCtx.msgMode == 0x11)) {
        Actor_Kill(&this->actor);
        return;
    }
    if (this->unk1A8 > 0) {
        this->unk1A8--;
    } else {
        this->actor.update = &MagicFire_Update;
        func_8002F7DC(&player->actor, NA_SE_PL_MAGIC_FIRE);
    }
    this->actor.world.pos = player->actor.world.pos;
}

void MagicFire_Update(Actor *thisx, GlobalContext *globalCtx) {
    MagicFire* this = THIS;
    Player* player = PLAYER;
    s32 pad;
    if (1) {}

    this->actor.world.pos = player->actor.world.pos;
    if ((globalCtx->msgCtx.msgMode == 0xD) || (globalCtx->msgCtx.msgMode == 0x11)) {
        Actor_Kill(&this->actor);
        return;
    }
    if (this->unk1A4 == 1) {
        this->collider.info.toucher.damage = this->unk1A8 + 25;
    } else if (this->unk1A4 == 2) {
        this->collider.info.toucher.damage = this->unk1A8;
    }
    Collider_UpdateCylinder(&this->actor, &this->collider);
    this->collider.dim.radius = (this->actor.scale.x * 325.0f);
    this->collider.dim.height = (this->actor.scale.y * 450.0f);
    this->collider.dim.yShift = (this->actor.scale.y * -225.0f);
    CollisionCheck_SetAT(globalCtx, &globalCtx->colChkCtx, &this->collider.base);

    switch(this->unk1A4){
        case 0:
            this->unk1A8 = 30;
            this->actor.scale.x = this->actor.scale.y = this->actor.scale.z = 0.0f;
            this->actor.world.rot.x = this->actor.world.rot.y = this->actor.world.rot.z = 0;
            this->actor.shape.rot.x = this->actor.shape.rot.y = this->actor.shape.rot.z = 0;
            this->unk198 = 0.0f;
            this->unk1A0 = 0.08f;
            this->unk1A4++;
            break;
        case 1:
            Math_StepToF(&this->unk198, 1.0f, 1.0f/30.0f);
            if (this->unk1A8 > 0) {
                Math_SmoothStepToF(&this->actor.scale.x, 0.4f, this->unk1A0, 0.1f, 0.001f);
                this->actor.scale.y = this->actor.scale.z = this->actor.scale.x;
            } else {
                this->unk1A8 = 25;
                this->unk1A4++;
            }
            break;
        case 2:
            if (this->unk1A8 <= 0){
                this->unk1A8 = 15;
                this->unk1A4++;
                this->unk1A0 = 0.05f;
            }
            break;
        case 3:
            this->unk198 -= 0.06722689f; // 8/119 ?
            this->actor.scale.x += this->unk1A0;
            this->actor.scale.y += this->unk1A0;
            this->actor.scale.z += this->unk1A0;
            if (this->unk198 <= 0.0f) {
                this->unk1A4 = 0;
                Actor_Kill(&this->actor);
            }
            break;
    }
    switch (this->unk1A6){
        case 0:
            if (this->unk1AA <= 0){
                this->unk1AA = 20;
                this->unk1A6 = 1;
            }
            break;
        case 1:
            this->unk19C = 1.0f - (this->unk1AA / 20.0f);
            if (this->unk1AA <= 0) {
                this->unk1AA = 45;
                this->unk1A6 = 2;
            }
            break;
        case 2:
            if (this->unk1AA <= 0) {
                this->unk1AA = 5;
                this->unk1A6 = 3;
            }
            break;
        case 3:
            this->unk19C = (this->unk1AA / 5.0f);
            if (this->unk1AA <= 0) {
                this->unk1A6 = 4;
            }
            break;
    }

    if (this->unk1A8 > 0) {
        this->unk1A8--;
    }
    if (this->unk1AA > 0) {
        this->unk1AA--;
    }
}

extern Gfx D_80B89900[];
extern Gfx D_80B8ADC0[];
extern Gfx D_80B8ADE8[];
extern s8 D_80B8AF80[];
extern u32 D_80B8AFA4[];
extern u32 D_80B8AFBC[];

typedef struct{
    s32 w1;
    s32 w2;
    s32 w3;
    s8 b1;
    s8 b2;
    s8 b3;
    s8 b4;
}WeirdStruct;

extern WeirdStruct D_80B8A900[];

void MagicFire_Draw(Actor *thisx, GlobalContext *globalCtx) {
    MagicFire* this = THIS;
    s8 temp_v1;
    s8 *phi_v0;
    u32 *phi_v0_2;
    u32 gameplayFrames = globalCtx->gameplayFrames;

    if (this->unk1A4 > 0) {
        OPEN_DISPS(globalCtx->state.gfxCtx, "../z_magic_fire.c", 682);
        POLY_XLU_DISP = func_800937C0(POLY_XLU_DISP);
        gDPSetPrimColor(POLY_XLU_DISP++, 0, 0, (s8)(s32)(this->unk19C * 60.0f), (s8)(s32)(20.0f * this->unk19C), (s8)(s32)(0.0f), (s8)(s32)(120.0f * this->unk19C));
        gDPSetAlphaDither(POLY_XLU_DISP++, G_AD_DISABLE);
        gDPSetColorDither(POLY_XLU_DISP++, G_CD_DISABLE);
        gDPFillRectangle(POLY_XLU_DISP++, 0, 0, 319, 239);
        func_80093D84(globalCtx->state.gfxCtx);
        gDPSetPrimColor(POLY_XLU_DISP++, 0, 0x80, 0xFF, 0xC8, 0x00, (this->unk198 * 255.0f));
        gDPSetEnvColor(POLY_XLU_DISP++, 0xFF, 0x00, 0x00, (this->unk198 * 255.0f));
        Matrix_Scale(0.15f, 0.15f, 0.15f, 1U);
        gSPMatrix(POLY_XLU_DISP++, Matrix_NewMtx(globalCtx->state.gfxCtx, "../z_magic_fire.c", 715), G_MTX_NOPUSH | G_MTX_LOAD | G_MTX_MODELVIEW);
        gDPPipeSync(POLY_XLU_DISP++);
        gSPTexture(POLY_XLU_DISP++, 0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON);
        gDPSetTextureLUT(POLY_XLU_DISP++, G_TT_NONE);
        gDPSetTextureImage(POLY_XLU_DISP++, G_IM_FMT_I, G_IM_SIZ_16b, 1, D_80B89900);
        gDPSetTile(POLY_XLU_DISP++, G_IM_FMT_I, G_IM_SIZ_16b, 0, 0x0000, G_TX_LOADTILE, 0, G_TX_NOMIRROR | G_TX_WRAP, 6, G_TX_NOLOD, G_TX_NOMIRROR | G_TX_WRAP, 6, 15);
        gDPLoadSync(POLY_XLU_DISP++);
        gDPLoadBlock(POLY_XLU_DISP++, G_TX_LOADTILE, 0, 0, 2047, 256);
        gDPPipeSync(POLY_XLU_DISP++);
        gDPSetTile(POLY_XLU_DISP++, G_IM_FMT_I, G_IM_SIZ_8b, 8, 0x0000, G_TX_RENDERTILE, 0, G_TX_NOMIRROR | G_TX_WRAP, 6, G_TX_NOLOD, G_TX_NOMIRROR | G_TX_WRAP, 6, 15);
        gDPSetTileSize(POLY_XLU_DISP++, G_TX_RENDERTILE, 0, 0, 0x00FC, 0x00FC);
        gDPSetTile(POLY_XLU_DISP++, G_IM_FMT_I, G_IM_SIZ_8b, 8, 0x0000, 1, 0, G_TX_NOMIRROR | G_TX_WRAP, 6, 14, G_TX_NOMIRROR | G_TX_WRAP, 6, 14);
        gDPSetTileSize(POLY_XLU_DISP++, 1, 0, 0, 0x00FC, 0x00FC);
        gSPDisplayList(POLY_XLU_DISP++, D_80B8ADC0);
        gSPDisplayList(POLY_XLU_DISP++, Gfx_TwoTexScroll(globalCtx->state.gfxCtx, 0, (gameplayFrames*2) % 512, 511 - ((gameplayFrames * 5) % 512), 0x40, 0x40, 1, (gameplayFrames*2) % 256, 255 - ((gameplayFrames * 20) % 256), 0x20, 0x20));
        SPDisplayList(POLY_XLU_DISP++, D_80B8ADE8);
        CLOSE_DISPS(globalCtx->state.gfxCtx, "../z_magic_fire.c", 750);

        for (phi_v0 = &D_80B8AF80; (u32)phi_v0 < (u32)&D_80B8AFA4; phi_v0++){
            D_80B8A900[*phi_v0].b4 = (s8)(s32)(this->unk198 * 255.0f);
            // loop increase by 1
        }
        temp_v1 = (s8)(s32)(this->unk198 * 76.0f);
        
        for (phi_v0_2 = &D_80B8AFA4; (u32)phi_v0_2 < (u32)&D_80B8AFBC; phi_v0_2++){
            // loop increase by 4
            D_80B8A900[*phi_v0_2].b4 = temp_v1;
            D_80B8A900[*(phi_v0_2-3)].b4 = temp_v1;
            D_80B8A900[*(phi_v0_2-2)].b4 = temp_v1;
            D_80B8A900[*(phi_v0_2-1)].b4 = temp_v1;
        }
    }
}


//#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Magic_Fire/MagicFire_Draw.s")
