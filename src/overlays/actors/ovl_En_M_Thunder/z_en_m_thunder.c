#include "z_en_m_thunder.h"

#define FLAGS 0x00000000

#define THIS ((EnMThunder*)thisx)

void EnMThunder_Init(Actor* thisx, GlobalContext* globalCtx);
void EnMThunder_Destroy(Actor* thisx, GlobalContext* globalCtx);
void EnMThunder_Update(Actor* thisx, GlobalContext* globalCtx);
void EnMThunder_Draw(Actor* thisx, GlobalContext* globalCtx);

void func_80A9F314(GlobalContext* globalCtx, f32 arg1);
void func_80A9F408(EnMThunder* this, GlobalContext* globalCtx);
void func_80A9F9B4(EnMThunder* this, GlobalContext* globalCtx);

const ActorInit En_M_Thunder_InitVars = {
    ACTOR_EN_M_THUNDER,
    ACTORTYPE_ITEMACTION,
    FLAGS,
    OBJECT_GAMEPLAY_KEEP,
    sizeof(EnMThunder),
    (ActorFunc)EnMThunder_Init,
    (ActorFunc)EnMThunder_Destroy,
    (ActorFunc)EnMThunder_Update,
    (ActorFunc)EnMThunder_Draw,
};

// D_80AA0420 sCylinderInit
ColliderCylinderInit D_80AA0420 = {
    { COLTYPE_UNK10, 0x09, 0x00, 0x00, 0x10, COLSHAPE_CYLINDER },
    { 0x02, { 0x00000001, 0x00, 0x00 }, { 0xFFCFFFFF, 0x00, 0x00 }, 0x19, 0x01, 0x01 },
    { 200, 200, 0, { 0, 0, 0 } },
};

u32 D_80AA044C[] = { 0x01000000, 0x00400000, 0x00800000 };

u32 D_80AA0458[] = { 0x08000000, 0x02000000, 0x04000000 };

u16 D_80AA0464[] = { 0x182F, 0x182E, 0x182F, 0x182E };

f32 D_80AA046C[] = { 0.1f, 0.15f, 0.2f, 0.25f, 0.3f, 0.25f, 0.2f, 0.15f }; //, 0x00000000
// glabel D_80AA046C
//  .word 0x3DCCCCCD, 0x3E19999A, 0x3E4CCCCD, 0x3E800000, 0x3E99999A, 0x3E800000, 0x3E4CCCCD, 0x3E19999A, 0x00000000

extern UNK_TYPE D_04012570;
extern UNK_TYPE D_04012690;
extern UNK_TYPE D_04012AF0;
extern UNK_TYPE D_04012C10;
extern UNK_TYPE D_04013610;

// #pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_M_Thunder/func_80A9EFE0.s")
// Setup action
void func_80A9EFE0(EnMThunder* this, EnMThunderActionFunc actionFunc) {
    this->actionFunc = actionFunc;
}

// #pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_M_Thunder/EnMThunder_Init.s")
void EnMThunder_Init(Actor* thisx, GlobalContext* globalCtx2) {
    GlobalContext* globalCtx = globalCtx2;
    EnMThunder* this = THIS;

    Player* player = PLAYER;

    Collider_InitCylinder(globalCtx, &this->collider);
    Collider_SetCylinder(globalCtx, &this->collider, &this->actor, &D_80AA0420);
    this->unk_1C7 = (this->actor.params & 0xFF) - 1;
    Lights_PointNoGlowSetInfo(&this->unk_19C, this->actor.posRot.pos.x, this->actor.posRot.pos.y,
                              this->actor.posRot.pos.z, 0xFF, 0xFF, 0xFF, 0);
    this->unk_198 = LightContext_InsertLight(globalCtx, &globalCtx->lightCtx, &this->unk_19C);
    this->collider.dim.radius = 0;
    this->collider.dim.height = 0x28;
    this->collider.dim.yShift = -0x14;
    this->unk_1C4 = 8;
    this->unk_1B4 = 0.0f;
    this->actor.posRot.pos = player->bodyPartsPos[0];
    this->unk_1AC = 0.0f;
    this->unk_1BC = 0.0f;
    this->actor.shape.rot.y = player->actor.shape.rot.y + 0x8000;
    this->actor.room = -1;
    Actor_SetScale(&this->actor, 0.1f);
    this->unk_1CA = 0;

    if (player->stateFlags2 & 0x20000) {

        if (!gSaveContext.magicAcquired || gSaveContext.unk_13F0 ||
            (((this->actor.params & 0xFF00) >> 8) &&
             !(func_80087708(globalCtx, (this->actor.params & 0xFF00) >> 8, 0)))) {
            Audio_PlaySoundGeneral(NA_SE_IT_ROLLING_CUT, &player->actor.projectedPos, 4, &D_801333E0, &D_801333E0,
                                   &D_801333E8);
            Audio_PlaySoundGeneral(NA_SE_IT_SWORD_SWING_HARD, &player->actor.projectedPos, 4, &D_801333E0, &D_801333E0,
                                   &D_801333E8);
            Actor_Kill(&this->actor);
            return;
        }

        player->stateFlags2 &= ~0x20000;
        this->unk_1CA = 1;
        this->collider.body.toucher.flags = D_80AA044C[this->unk_1C7];
        this->unk_1C6 = 1;
        this->unk_1C9 = ((this->unk_1C7 == 1) ? 2 : 4);
        func_80A9EFE0(this, func_80A9F9B4);
        this->unk_1C4 = 8;
        Audio_PlaySoundGeneral(NA_SE_IT_ROLLING_CUT_LV1, &player->actor.projectedPos, 4, &D_801333E0, &D_801333E0,
                               &D_801333E8);
        this->unk_1AC = 1.0f;
    } else {
        func_80A9EFE0(this, func_80A9F408);
    }
    this->actor.child = NULL;
}

// #pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_M_Thunder/EnMThunder_Destroy.s")
void EnMThunder_Destroy(Actor* thisx, GlobalContext* globalCtx) {
    EnMThunder* this = THIS;

    if (this->unk_1CA != 0) {
        func_800876C8(globalCtx);
    }
    Collider_DestroyCylinder(globalCtx, &this->collider);
    func_80A9F314(globalCtx, 0.0f);
    LightContext_RemoveLight(globalCtx, &globalCtx->lightCtx, this->unk_198);
}

// #pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_M_Thunder/func_80A9F314.s")
void func_80A9F314(GlobalContext* globalCtx, f32 arg1) {
    func_800773A8(globalCtx, arg1, 850.0f, 0.2f, 0.0f);
}

// #pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_M_Thunder/func_80A9F350.s")
void func_80A9F350(EnMThunder* this, GlobalContext* globalCtx) {
    Player* player = PLAYER;

    if (player->stateFlags2 & 0x20000) {
        if (player->swordAnimation >= 0x18) {
            Audio_PlaySoundGeneral(NA_SE_IT_ROLLING_CUT, &player->actor.projectedPos, 4, &D_801333E0, &D_801333E0,
                                   &D_801333E8);
            Audio_PlaySoundGeneral(NA_SE_IT_SWORD_SWING_HARD, &player->actor.projectedPos, 4, &D_801333E0, &D_801333E0,
                                   &D_801333E8);
        }
        Actor_Kill(&this->actor);
        return;
    }
    if ((player->stateFlags1 & 0x1000) == 0) {
        Actor_Kill(&this->actor);
    }
}

void func_800F4254(Vec3f *pos, u8 arg1);
// #pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_M_Thunder/func_80A9F408.s")
void func_80A9F408(EnMThunder* this, GlobalContext* globalCtx) {
    Player* player = PLAYER;
    struct Actor* phi_t0;
    
    phi_t0 = this->actor.child;
    this->unk_1B8 = player->unk_858;
    this->actor.posRot.pos = player->bodyPartsPos[0];
    this->actor.shape.rot.y = player->actor.shape.rot.y + 0x8000;
    
    if (this->unk_1CA == 0) {
        
        if (player->unk_858 >= 0.1f) {
            if ((gSaveContext.unk_13F0) || (((this->actor.params & 0xFF00) >> 8) &&
                                            !(func_80087708(globalCtx, (this->actor.params & 0xFF00) >> 8, 4)))) {
                
                func_80A9F350(this, globalCtx);
                func_80A9EFE0(this, func_80A9F350);
                this->unk_1C8 = 0;
                this->unk_1BC = 0.0;
                this->unk_1AC = 0.0f;
                return;
            }
            this->unk_1CA = 1;
        }
    }
    
    if (player->unk_858 >= 0.1f) {
        func_800AA000(0.0f, (s32)(player->unk_858 * 150.0f) & 0xFF, 2, (s32)(player->unk_858 * 150.0f) & 0xFF );
    }

    if (player->stateFlags2 & 0x20000) {
        if ((phi_t0 != NULL) && (phi_t0->update != NULL)) {
            phi_t0->parent = NULL;
        }

        if (player->unk_858 <= 0.15f) {
            if ((player->unk_858 >= 0.1f) && (player->swordAnimation >= 0x18)) {
                Audio_PlaySoundGeneral(NA_SE_IT_ROLLING_CUT, &player->actor.projectedPos, 4, &D_801333E0, &D_801333E0,
                                       &D_801333E8);
                Audio_PlaySoundGeneral(NA_SE_IT_SWORD_SWING_HARD, &player->actor.projectedPos, 4, &D_801333E0,
                                       &D_801333E0, &D_801333E8);
            }
            Actor_Kill(&this->actor);
            return;
        } else {
            player->stateFlags2 &= ~0x20000;
            if ((this->actor.params & 0xFF00) >> 8) {
                gSaveContext.unk_13F0 = 1;
            }
            if (player->unk_858 < 0.85f) {
                
                this->collider.body.toucher.flags = D_80AA044C[this->unk_1C7];
                this->unk_1C6 = 1;
                this->unk_1C9 = ( (this->unk_1C7 == 1) ? 2 : 4 );
            } else {
                this->collider.body.toucher.flags = D_80AA0458[this->unk_1C7];
                this->unk_1C6 = 0;
                this->unk_1C9 = ( (this->unk_1C7 == 1) ? 4 : 8 );
            }
            
            func_80A9EFE0(this, func_80A9F9B4);
            this->unk_1C4 = 8;
            Audio_PlaySoundGeneral(D_80AA0464[this->unk_1C6], &player->actor.projectedPos, 4, &D_801333E0,
                                   &D_801333E0, &D_801333E8);
            this->unk_1AC = 1.0f;
            return;
        }
    }
    if ((player->stateFlags1 & 0x1000) == 0) {
        if (this->actor.child != NULL) {
            this->actor.child->parent = NULL;
        }
        Actor_Kill(&this->actor);
        return;
    }
    
    if (player->unk_858 > 0.15f) {
        this->unk_1C8 = 0xFF;
        if (this->actor.child == 0) {
            Actor_SpawnAsChild(&globalCtx->actorCtx, &this->actor, globalCtx, ACTOR_EFF_DUST, this->actor.posRot.pos.x,
                               this->actor.posRot.pos.y, this->actor.posRot.pos.z, 0, this->actor.shape.rot.y, 0,
                               this->unk_1C7 + 2);
        }
        this->unk_1BC += ((((player->unk_858 - 0.15f) * 1.5f) - this->unk_1BC) * 0.5f);
        
    } else if (player->unk_858 > .1f) {
        this->unk_1C8 = (s32)((player->unk_858 - .1f) * 255.0f * 20.0f);
        this->unk_1AC = (player->unk_858 - .1f) * 10.0f;
    } else {
        this->unk_1C8 = 0;
    }
    
    if (player->unk_858 > 0.85f) {
        func_800F4254(&player->actor.projectedPos, 2);
    } else if (player->unk_858 > 0.15f) {
        func_800F4254(&player->actor.projectedPos, 1);
    } else if (player->unk_858 > 0.1f) {
        func_800F4254(&player->actor.projectedPos, 0);
    }
    
    if (Gameplay_InCsMode(globalCtx)) {
        Actor_Kill(&this->actor);
    }
}

// #pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_M_Thunder/func_80A9F938.s")
void func_80A9F938(EnMThunder* this, GlobalContext* globalCtx) {
    if (this->unk_1C4 < 2) {
        if (this->unk_1C8 < 0x28) {
            this->unk_1C8 = 0;
        } else {
            this->unk_1C8 -= 0x28;
        }
    }
    this->unk_1B4 += 2.0f * this->unk_1B0;
    if (this->unk_1BC < this->unk_1AC) {
        this->unk_1BC += ((this->unk_1AC - this->unk_1BC) * 0.1f);
    } else {
        this->unk_1BC = this->unk_1AC;
    }
}

// #pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_M_Thunder/func_80A9F9B4.s")
void func_80A9F9B4(EnMThunder* this, GlobalContext* globalCtx) {
    Player* player = PLAYER;

    if (Math_ApproxF(&this->unk_1AC, 0.0f, 0.0625f)) {
        Actor_Kill(&this->actor);
    } else {
        Math_SmoothScaleMaxMinF(&this->actor.scale.x, (s32)this->unk_1C9, 0.6f, 0.8f, 0.0f);
        Actor_SetScale(&this->actor, this->actor.scale.x);
        this->collider.dim.radius = (this->actor.scale.x * 25.0f);
        Collider_CylinderUpdate(&this->actor, &this->collider);
        CollisionCheck_SetAT(globalCtx, &globalCtx->colChkCtx, &this->collider.base);
    }

    if (this->unk_1C4 > 0) {
        this->actor.posRot.pos.x = player->bodyPartsPos[0].x;
        this->actor.posRot.pos.z = player->bodyPartsPos[0].z;
        this->unk_1C4--;
    }

    if (this->unk_1AC > 0.6f) {
        this->unk_1B0 = 1.0f;
    } else {
        this->unk_1B0 = this->unk_1AC * 1.6666666f;
    }

    func_80A9F938(this, globalCtx);

    if (Gameplay_InCsMode(globalCtx)) {
        Actor_Kill(&this->actor);
    }
}

// #pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_M_Thunder/EnMThunder_Update.s")
void EnMThunder_Update(Actor* thisx, GlobalContext* globalCtx) {
    EnMThunder* this = THIS;

    f32 temp_f0;
    s32 temp_v0;

    this->actionFunc(this, globalCtx);
    func_80A9F314(globalCtx, this->unk_1BC);
    temp_f0 = this->unk_1AC;
    temp_v0 = (u32)(temp_f0 * 255.0f) & 0xFF;
    Lights_PointNoGlowSetInfo(&this->unk_19C, this->actor.posRot.pos.x, this->actor.posRot.pos.y,
                              this->actor.posRot.pos.z, temp_v0, temp_v0, (u32)(temp_f0 * 100.0f),
                              (s32)(temp_f0 * 800.0f));
}

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_M_Thunder/EnMThunder_Draw.s")
