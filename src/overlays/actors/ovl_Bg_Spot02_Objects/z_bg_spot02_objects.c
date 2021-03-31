#include "z_bg_spot02_objects.h"

#define FLAGS 0x00000030

#define THIS ((BgSpot02Objects*)thisx)

void BgSpot02Objects_Init(Actor* thisx, GlobalContext* globalCtx);
void BgSpot02Objects_Destroy(Actor* thisx, GlobalContext* globalCtx);
void BgSpot02Objects_Update(Actor* thisx, GlobalContext* globalCtx);
void BgSpot02Objects_Draw(Actor* thisx, GlobalContext* globalCtx);

void func_808ACCB8(Actor* thisx, GlobalContext* globalCtx);
void func_808AD450(Actor* thisx, GlobalContext* globalCtx);

void func_808AC8FC(BgSpot02Objects* this, GlobalContext* globalCtx);
void func_808AC908(BgSpot02Objects* this, GlobalContext* globalCtx);
void func_808ACA08(BgSpot02Objects* this, GlobalContext* globalCtx);
void func_808ACAFC(BgSpot02Objects* this, GlobalContext* globalCtx);
void func_808ACB58(BgSpot02Objects* this, GlobalContext* globalCtx);
void func_808ACC34(BgSpot02Objects* this, GlobalContext* globalCtx);
void func_808AD3D4(BgSpot02Objects* this, GlobalContext* globalCtx);

extern UNK_TYPE D_060013F0;
extern UNK_TYPE D_060126F0;
extern UNK_TYPE D_060128D8;
extern UNK_TYPE D_06012BA4;
extern UNK_TYPE D_06012D30;
extern UNK_TYPE D_060133EC;

s32 D_808AD850[] = { 0x060096B0, 0x0600A2B0, 0x0600AEB0, 0x0600BAB0, 0x0600C6B0, 0x0600D2B0,
                     0x0600DEB0, 0x0600EAB0, 0x0600F6B0, 0x060102B0, 0x06010EB0, 0x06011AB0 };

const ActorInit Bg_Spot02_Objects_InitVars = {
    ACTOR_BG_SPOT02_OBJECTS,
    ACTORCAT_BG,
    FLAGS,
    OBJECT_SPOT02_OBJECTS,
    sizeof(BgSpot02Objects),
    (ActorFunc)BgSpot02Objects_Init,
    (ActorFunc)BgSpot02Objects_Destroy,
    (ActorFunc)BgSpot02Objects_Update,
    (ActorFunc)BgSpot02Objects_Draw,
};

// static InitChainEntry sInitChain[]
InitChainEntry D_808AD8A0[] = {
    ICHAIN_VEC3F_DIV1000(scale, 100, ICHAIN_STOP),
};

// velocity and accel
Vec3f D_808AD8A4 = { 0x00000000, 0x00000000, 0x00000000 };

Gfx* D_808AD8B0[] = { 0x06012A50, 0x060127C0, 0x060130B0 };

#ifdef NON_MATCHING
void BgSpot02Objects_Init(Actor* thisx, GlobalContext* globalCtx) {
    BgSpot02Objects* this = THIS;

    u16 params;
    s32 localC = 0;

    DynaPolyInfo_SetActorMove(&this->dyna, 0);
    this->unk_16B = (u16)((((BgSpot02Objects *) thisx)->dyna.actor.params) >> 8);
    params = (this->dyna.actor.params & 0xFF);
    this->dyna.actor.params = (u16)(this->dyna.actor.params & 0xFF) & 0xFFFF;
    switch (params & 0xFFFF) {
        case 0:
            Actor_ProcessInitChain(&this->dyna.actor, D_808AD8A0);
            if (this->dyna.actor.params == 0) {
                if (Flags_GetSwitch(globalCtx, this->unk_16B) != 0) {
                    this->actionFunc = func_808AC8FC;
                    this->dyna.actor.posRot.pos.y += 255.0f;
                } else {
                    this->actionFunc = func_808ACAFC;
                }
                DynaPolyInfo_Alloc(&D_06012BA4, &localC);
            } else if (this->dyna.actor.params == 1) {
                this->actionFunc = func_808AC8FC;
                DynaPolyInfo_Alloc(&D_060128D8, &localC);
                this->dyna.actor.flags |= 0x400000;
            } else {
                if (globalCtx->sceneNum == SCENE_SPOT02) {
                    this->actionFunc = func_808AC908;
                } else {
                    this->actionFunc = func_808AC8FC;
                }
                DynaPolyInfo_Alloc(&D_060133EC, &localC);
            }
            this->dyna.dynaPolyId =
                DynaPolyInfo_RegisterActor(globalCtx, &globalCtx->colCtx.dyna, &this->dyna.actor, localC);
            if (((gSaveContext.eventChkInf[1] & 0x2000) && (globalCtx->sceneNum == SCENE_SPOT02) &&
                 (this->dyna.actor.params == 2)) ||
                (LINK_IS_ADULT && (this->dyna.actor.params == 1))) {
                Actor_Kill(&this->dyna.actor);
            }
            return;
        case 3:
            this->unk_16A = 0;
            Actor_ChangeType(globalCtx, &globalCtx->actorCtx, &this->dyna.actor, ACTORTYPE_ITEMACTION);
            this->actionFunc = func_808ACC34;
            this->dyna.actor.draw = func_808ACCB8;
            if (gSaveContext.eventChkInf[1] & 0x2000) {
                Actor_Kill(&this->dyna.actor);
            }
            return;
        case 4:
            this->timer = -0xC;
            this->unk_170 = 0xFFFF;
            Actor_ChangeType(globalCtx, &globalCtx->actorCtx, &this->dyna.actor, ACTORTYPE_ITEMACTION);
            this->actionFunc = func_808AD3D4;
            this->dyna.actor.draw = func_808AD450;
            return;
        case 1:
        case 2:
        default:
            return;
    }
}
#else
#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Bg_Spot02_Objects/BgSpot02Objects_Init.s")
#endif

void BgSpot02Objects_Destroy(Actor* thisx, GlobalContext* globalCtx) {
    BgSpot02Objects* this = THIS;
    DynaPolyInfo_Free(globalCtx, &globalCtx->colCtx.dyna, this->dyna.dynaPolyId);
}

void func_808AC8FC(BgSpot02Objects* this, GlobalContext* globalCtx) {
}

void func_808AC908(BgSpot02Objects* this, GlobalContext* globalCtx) {
    Vec3f vec1;

    if (globalCtx->csCtx.state != 0) {
        if (globalCtx->csCtx.npcActions[3] != NULL && globalCtx->csCtx.npcActions[3]->action == 2) {
            Audio_PlayActorSound2(&this->dyna.actor, NA_SE_EV_GRAVE_EXPLOSION);
            gSaveContext.eventChkInf[1] |= 0x2000;
            this->timer = 25;
            vec1.x = (Math_Sins(this->dyna.actor.shape.rot.y) * 50.0f) + this->dyna.actor.posRot.pos.x;
            vec1.y = this->dyna.actor.posRot.pos.y + 30.0f;
            vec1.z = (Math_Coss(this->dyna.actor.shape.rot.y) * 50.0f) + this->dyna.actor.posRot.pos.z;
            EffectSsBomb2_SpawnLayered(globalCtx, &vec1, &D_808AD8A4, &D_808AD8A4, 70, 30);
            this->actionFunc = func_808ACA08;
        }
    }
}

void func_808ACA08(BgSpot02Objects* this, GlobalContext* globalCtx) {
    Player* player = PLAYER;

    if (this->timer) {
        this->timer--;
    }

    if (this->timer == 20) {
        this->dyna.actor.draw = NULL;
        EffectSsHahen_SpawnBurst(globalCtx, &this->dyna.actor.posRot, 30.0f, 0, 25, 5, 40, OBJECT_SPOT02_OBJECTS, 20,
                                 &D_06012D30);
    } else if (this->timer == 0) {
        Actor_Kill(&this->dyna.actor);
    }
    if (globalCtx->csCtx.frames == 402) {
        if (LINK_IS_CHILD) {
            func_8002F7DC(&player->actor, NA_SE_VO_LI_DEMO_DAMAGE_KID);
        } else {
            func_8002F7DC(&player->actor, NA_SE_VO_LI_DEMO_DAMAGE);
        }
    }
}

void func_808ACAFC(BgSpot02Objects* this, GlobalContext* globalCtx) {
    if (Flags_GetSwitch(globalCtx, this->unk_16B) != 0) {
        Actor_SetHeight(&this->dyna.actor, 60.0f);
        func_80080480(globalCtx, &this->dyna.actor);
        this->actionFunc = func_808ACB58;
    }
}

void func_808ACB58(BgSpot02Objects* this, GlobalContext* globalCtx) {
    if (Math_ApproxF(&this->dyna.actor.posRot.pos.y, this->dyna.actor.initPosRot.pos.y + 255.0f, 1.0f) != 0) {
        Audio_PlayActorSound2(&this->dyna.actor, NA_SE_EV_STONEDOOR_STOP);
        this->actionFunc = func_808AC8FC;
    } else {
        func_8002F974(&this->dyna.actor, NA_SE_EV_WALL_MOVE_SP - SFX_FLAG);
    }
}

void BgSpot02Objects_Update(Actor* thisx, GlobalContext* globalCtx) {
    BgSpot02Objects* this = THIS;
    this->actionFunc(this, globalCtx);
}

#ifdef NON_MATCHING
void BgSpot02Objects_Draw(Actor* thisx, GlobalContext* globalCtx) {
    BgSpot02Objects* this = THIS;
    Gfx_DrawDListOpa(globalCtx, D_808AD8B0[this->dyna.actor.params]);
}
#else
#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Bg_Spot02_Objects/BgSpot02Objects_Draw.s")
#endif

void func_808ACC34(BgSpot02Objects* this, GlobalContext* globalCtx) {
    if (globalCtx->csCtx.state != 0 && globalCtx->csCtx.npcActions[0] != NULL &&
        globalCtx->csCtx.npcActions[0]->action == 2) {
        this->unk_16A++;
        if (this->unk_16A >= 12) {
            Actor_Kill(&this->dyna.actor);
        }
    }
    
    if (globalCtx->csCtx.frames == 245 || globalCtx->csCtx.frames == 351) {
        func_800788CC(NA_SE_EV_LIGHTNING);
    }
}

void func_808ACCB8(Actor* thisx, GlobalContext* globalCtx) {
    BgSpot02Objects* this = THIS;
    f32 pad;
    f32 pad2;
    u8 redPrim; // does not match with Color_RGB8/Color_RGBA8
    u8 greenPrim;
    u8 bluePrim;
    u8 redEnv;
    u8 greenEnv;
    u8 blueEnv;

    OPEN_DISPS(globalCtx->state.gfxCtx, "../z_bg_spot02_objects.c", 600);
    if (globalCtx->csCtx.state != 0 && globalCtx->csCtx.npcActions[0] != NULL &&
        globalCtx->csCtx.npcActions[0]->action == 2) {
        if (this->unk_16A < 5) {
            pad = (this->unk_16A / 5.0f);
            redPrim = greenPrim = bluePrim = 255;
            redEnv = 100.0f + 155.0f * pad;
            greenEnv = 255;
            blueEnv = 255.0f - 155.0f * pad;
        } else {
            pad = ((this->unk_16A - 5) / 7.0f);
            redPrim = 255.0f - (255.0f * pad);
            greenPrim = 255.0f - (55.0f * pad);
            bluePrim = 255.0f - (255.0f * pad);
            redEnv = 255.0f - (105.0f * pad);
            greenEnv = 255.0f - (255.0f * pad);
            blueEnv = 100.0f + (100.0f * pad);
        }

        Matrix_Translate(globalCtx->csCtx.npcActions[0]->startPos.x, globalCtx->csCtx.npcActions[0]->startPos.y,
                         globalCtx->csCtx.npcActions[0]->startPos.z, MTXMODE_NEW);
        Matrix_RotateX(globalCtx->csCtx.npcActions[0]->urot.x * (M_PI / (f32)0x8000), MTXMODE_APPLY);
        Matrix_RotateY(globalCtx->csCtx.npcActions[0]->urot.y * (M_PI / (f32)0x8000), MTXMODE_APPLY);
        Matrix_RotateZ(globalCtx->csCtx.npcActions[0]->urot.z * (M_PI / (f32)0x8000), MTXMODE_APPLY);
        Matrix_Scale(1.0f, 1.0f, 1.0f, MTXMODE_APPLY);
        func_80093D84(globalCtx->state.gfxCtx);

        gDPPipeSync(POLY_XLU_DISP++);
        gDPSetPrimColor(POLY_XLU_DISP++, 0, 0, redPrim, greenPrim, bluePrim, 255);
        gDPSetEnvColor(POLY_XLU_DISP++, redEnv, greenEnv, blueEnv, 255);
        gSPMatrix(POLY_XLU_DISP++, Matrix_NewMtx(globalCtx->state.gfxCtx, "../z_bg_spot02_objects.c", 679),
                  G_MTX_NOPUSH | G_MTX_LOAD | G_MTX_MODELVIEW);
        gSPSegment(POLY_XLU_DISP++, 0x08, SEGMENTED_TO_VIRTUAL(D_808AD850[this->unk_16A]));
        gDPPipeSync(POLY_XLU_DISP++);
        gSPDisplayList(POLY_XLU_DISP++, &D_060126F0);
        gDPPipeSync(POLY_XLU_DISP++);
    }
    CLOSE_DISPS(globalCtx->state.gfxCtx, "../z_bg_spot02_objects.c", 692);
}

void func_808AD3D4(BgSpot02Objects* this, GlobalContext* globalCtx) {
    if (globalCtx->csCtx.state != 0 && globalCtx->csCtx.npcActions[2] != NULL &&
        globalCtx->csCtx.npcActions[2]->action == 2) {
        if (this->timer == 2) {
            Audio_PlayActorSound2(&this->dyna.actor, NA_SE_IT_EXPLOSION_ICE);
        }
        if (this->timer < 32) {
            this->timer++;
        } else {
            Actor_Kill(&this->dyna.actor);
        }
    }
}

#ifdef NON_MATCHING
void func_808AD450(Actor* thisx, GlobalContext* globalCtx) {
    // u16 action;
    BgSpot02Objects* this = THIS;
    u16 temp_v1;
    s8 pad;
    s8 pad2;
    f32 interpolated;

    OPEN_DISPS(globalCtx->state.gfxCtx, "../z_bg_spot02_objects.c", 736);
    if (globalCtx->csCtx.state != 0 && globalCtx->csCtx.npcActions[2] != NULL) {
        temp_v1 = globalCtx->csCtx.npcActions[2]->urot.z * 0.00549325f;

        if (this->unk_170 != temp_v1) {
            if (this->unk_170 == 0xFFFF) {
                this->unk_170 = temp_v1;
                this->unk_172 = temp_v1;
            } else {
                this->unk_172 = this->unk_170;
                this->unk_170 = temp_v1;
            }
        }

        interpolated = func_8006F93C(globalCtx->csCtx.npcActions[2]->endFrame,
                                     globalCtx->csCtx.npcActions[2]->startFrame, globalCtx->csCtx.frames);
        if ((globalCtx->csCtx.npcActions[2]->action & 0xFFFF) == 2) {
            Matrix_Translate(globalCtx->csCtx.npcActions[2]->startPos.x, globalCtx->csCtx.npcActions[2]->startPos.y,
                             globalCtx->csCtx.npcActions[2]->startPos.z, MTXMODE_NEW);
            Matrix_RotateX(globalCtx->csCtx.npcActions[2]->urot.x * (M_PI / (f32)0x8000), MTXMODE_APPLY);
            Matrix_RotateY(globalCtx->csCtx.npcActions[2]->urot.y * (M_PI / (f32)0x8000), MTXMODE_APPLY);
            Matrix_Scale(0.9f, 0.9f, (((this->unk_170 - this->unk_172) * interpolated) + this->unk_172) * 0.1f,
                         MTXMODE_APPLY); // interpolation between unk_170 and unk_172
            func_80093D84(globalCtx->state.gfxCtx);

            gDPPipeSync(POLY_XLU_DISP++);
            gDPSetPrimColor(POLY_XLU_DISP++, 0, 0, 255, 255, 170, 128);
            gDPSetEnvColor(POLY_XLU_DISP++, 150, 120, 0, 128);
            gSPMatrix(POLY_XLU_DISP++, Matrix_NewMtx(globalCtx->state.gfxCtx, "../z_bg_spot02_objects.c", 795),
                      G_MTX_NOPUSH | G_MTX_LOAD | G_MTX_MODELVIEW);
            gSPSegment(POLY_XLU_DISP++, 0x08,
                       Gfx_TwoTexScroll(globalCtx->state.gfxCtx, 0, 2 * this->timer, (-3) * this->timer, 32, 64, 1,
                                        4 * this->timer, (-6) * this->timer, 32, 64));
            gDPPipeSync(POLY_XLU_DISP++);
            gSPDisplayList(POLY_XLU_DISP++, &D_060013F0);
            gDPPipeSync(POLY_XLU_DISP++);
        }
    }
    CLOSE_DISPS(globalCtx->state.gfxCtx, "../z_bg_spot02_objects.c", 818);
}
#else
#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Bg_Spot02_Objects/func_808AD450.s")
#endif