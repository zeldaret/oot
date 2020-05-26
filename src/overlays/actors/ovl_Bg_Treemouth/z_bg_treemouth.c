#include "z_bg_treemouth.h"

#define FLAGS 0x00000030

#define THIS ((BgTreemouth*)thisx)

void BgTreemouth_Init(Actor* thisx, GlobalContext* globalCtx);
void BgTreemouth_Destroy(Actor* thisx, GlobalContext* globalCtx);
void BgTreemouth_Update(Actor* thisx, GlobalContext* globalCtx);
void BgTreemouth_Draw(Actor* thisx, GlobalContext* globalCtx);

void func_808BC65C(BgTreemouth* this, GlobalContext* globalCtx);
void func_808BC6F8(BgTreemouth* this, GlobalContext* globalCtx);
void func_808BC80C(BgTreemouth* this, GlobalContext* globalCtx);
void func_808BC864(BgTreemouth* this, GlobalContext* globalCtx);
void func_808BCB8C(BgTreemouth* this, GlobalContext* globalCtx);
void func_808BC8B8(BgTreemouth* this, GlobalContext* globalCtx);
void func_808BC9EC(BgTreemouth* this, GlobalContext* globalCtx);
void func_808BCAF0(BgTreemouth* this, GlobalContext* globalCtx);

#include "z_bg_treemouth_cutscene_data.c"

const ActorInit Bg_Treemouth_InitVars = {
    ACTOR_BG_TREEMOUTH,
    ACTORTYPE_BG,
    FLAGS,
    OBJECT_SPOT04_OBJECTS,
    sizeof(BgTreemouth),
    (ActorFunc)BgTreemouth_Init,
    (ActorFunc)BgTreemouth_Destroy,
    (ActorFunc)BgTreemouth_Update,
    (ActorFunc)BgTreemouth_Draw,
};

static InitChainEntry initChain[] = {
    ICHAIN_U8(unk_1F, 5, ICHAIN_CONTINUE),     ICHAIN_VEC3F(scale, 1, ICHAIN_CONTINUE),
    ICHAIN_F32(unk_F4, 8000, ICHAIN_CONTINUE), ICHAIN_F32(unk_F8, 300, ICHAIN_CONTINUE),
    ICHAIN_F32(unk_FC, 300, ICHAIN_STOP),
};

// unused
u32 D_808BD9C4[] = {
    0xC52BA000, 0x44084000, 0x4592B000, 0xC525E000, 0x43120000, 0x458DB000,
};

extern u32 D_060009D0;
extern u32 D_06000E94;

void BgTreemouth_SetupAction(BgTreemouth* this, BgTreemouthActionFunc actionFunc) {
    this->actionFunc = actionFunc;
}

void BgTreemouth_Init(Actor* thisx, GlobalContext* globalCtx) {
    s32 pad;
    BgTreemouth* this = THIS;
    u32 localC = 0;

    Actor_ProcessInitChain(thisx, initChain);
    DynaPolyInfo_SetActorMove(&this->dyna, 0);
    DynaPolyInfo_Alloc(&D_06000E94, &localC);
    this->dyna.dynaPolyId = DynaPolyInfo_RegisterActor(globalCtx, &globalCtx->colCtx.dyna, thisx, localC);
    ActorShape_Init(&thisx->shape, 0.0f, NULL, 0.0f);
    Actor_SetHeight(thisx, 50.0f);

    if ((gSaveContext.sceneSetupIndex < 4) && (LINK_IS_CHILD)) {
        BgTreemouth_SetupAction(this, func_808BC8B8);
    } else {
        if ((LINK_IS_ADULT) || (gSaveContext.sceneSetupIndex == 7)) {
            this->unk_168 = 0.0f;
            BgTreemouth_SetupAction(this, func_808BCB8C);
        } else {
            this->unk_168 = 1.0f;
            BgTreemouth_SetupAction(this, func_808BC6F8);
        }
    }

    thisx->textId = 0x905;
}

void BgTreemouth_Destroy(Actor* thisx, GlobalContext* globalCtx) {
    BgTreemouth* this = THIS;

    DynaPolyInfo_Free(globalCtx, &globalCtx->colCtx.dyna, this->dyna.dynaPolyId);
}

void func_808BC65C(BgTreemouth* this, GlobalContext* globalCtx) {
    CsCmdActorAction* actorAction;

    if ((globalCtx->csCtx.state != 0)) {
        actorAction = globalCtx->csCtx.npcActions[0];
        if (actorAction != NULL) {
            if (actorAction->action == 2) {
                BgTreemouth_SetupAction(this, func_808BC80C);
            } else if (actorAction->action == 3) {
                Audio_PlaySoundGeneral(NA_SE_EV_WOODDOOR_OPEN, &D_801333D4, 4, &D_801333E0, &D_801333E0, &D_801333E8);
                BgTreemouth_SetupAction(this, func_808BC6F8);
            }
        }
    }
}

void func_808BC6F8(BgTreemouth* this, GlobalContext* globalCtx) {
    Vec3f sp34;

    if (this->unk_168 < 1.0f) {
        this->unk_168 += 0.01f;
    } else {
        this->unk_168 = 1.0f;
    }

    if ((gSaveContext.sceneSetupIndex == 6) && (globalCtx->csCtx.frames >= 0x2BD) && (!(globalCtx->state.frames & 7))) {
        sp34.x = (Math_Rand_ZeroOne() * 1158.0f) + 3407.0f;
        sp34.y = 970.0f;
        sp34.z = (Math_Rand_ZeroOne() * 2026.0f) + -2163.0f;
        func_800297A4(globalCtx, &sp34, 0x3F4CCCCD, 0, 0x32, 0x1E, 1, -1, 0xA, 0);
    }
}

void func_808BC80C(BgTreemouth* this, GlobalContext* globalCtx) {
    this->unk_168 += 0.05f;
    if (this->unk_168 >= 0.8f) {
        BgTreemouth_SetupAction(this, func_808BC864);
    }
}

void func_808BC864(BgTreemouth* this, GlobalContext* globalCtx) {
    this->unk_168 -= 0.03f;
    if (this->unk_168 <= 0.0f) {
        BgTreemouth_SetupAction(this, func_808BC65C);
    }
}

void func_808BC8B8(BgTreemouth* this, GlobalContext* globalCtx) {
    if ((!(Flags_GetEventChkInf(5))) || (LINK_IS_ADULT)) {
        if (LINK_IS_CHILD) {
            if (Flags_GetEventChkInf(0xC)) {
                if (func_8002E12C(&this->dyna.actor, 1658.0f, 0x7530)) {
                    this->dyna.actor.flags |= 1;
                    if (this->dyna.actor.unk_10C != 0) {
                        this->dyna.actor.flags &= ~1;
                        globalCtx->csCtx.segment = D_808BD2A0;
                        gSaveContext.cutsceneTrigger = 1;
                        BgTreemouth_SetupAction(this, func_808BC9EC);
                    }
                }
            } else if (func_8002E12C(&this->dyna.actor, 1658.0f, 0x4E20)) {
                Flags_SetEventChkInf(0xC);
                globalCtx->csCtx.segment = D_808BCE20;
                gSaveContext.cutsceneTrigger = 1;
                BgTreemouth_SetupAction(this, func_808BC9EC);
            }
        }
    } else {
        this->unk_168 = 1.0f;
    }
}

void func_808BC9EC(BgTreemouth* this, GlobalContext* globalCtx) {
    Player* player = PLAYER;

    if (globalCtx->csCtx.state == 3) {
        if (func_8002E12C(&this->dyna.actor, 350.0f, 0x7530)) {
            player->actor.posRot.pos.x = 3827.0f;
            player->actor.posRot.pos.y = -161.0f;
            player->actor.posRot.pos.z = -1142.0f;
        }

        globalCtx->csCtx.frames = 0;
        globalCtx->csCtx.unk_18 = 0xFFFF;
        D_8015FCC0 = 0xFFFF;
        D_8015FCC2 = 0xFFFF;
        D_8015FCC4 = 0xFFFF;
        globalCtx->csCtx.unk_1A = 0;
        globalCtx->csCtx.unk_1B = 0;
        globalCtx->csCtx.state = 2;

        if (globalCtx->msgCtx.choiceIndex == 0) {
            globalCtx->csCtx.segment = D_808BD520;
            Flags_SetEventChkInf(5);
            BgTreemouth_SetupAction(this, func_808BCAF0);
        } else {
            globalCtx->csCtx.segment = D_808BD790;
            globalCtx->csCtx.frames = 0;
            BgTreemouth_SetupAction(this, func_808BC8B8);
        }
    }
}

void func_808BCAF0(BgTreemouth* this, GlobalContext* globalCtx) {
    CsCmdActorAction* actorAction;

    if (globalCtx->csCtx.state != 0) {
        actorAction = globalCtx->csCtx.npcActions[0];
        if (actorAction != NULL) {
            if (actorAction->action == 2) {
                BgTreemouth_SetupAction(this, func_808BC80C);
            } else if (actorAction->action == 3) {
                Audio_PlaySoundGeneral(NA_SE_EV_WOODDOOR_OPEN, &D_801333D4, 4, &D_801333E0, &D_801333E0, &D_801333E8);
                BgTreemouth_SetupAction(this, func_808BC6F8);
            }
        }
    }
}

void func_808BCB8C(BgTreemouth* this, GlobalContext* globalCtx) {
}

void BgTreemouth_Update(Actor* thisx, GlobalContext* globalCtx) {
    BgTreemouth* this = THIS;
    f32 unk_168;

    this->actionFunc(this, globalCtx);
    unk_168 = this->unk_168;
    thisx->posRot.pos.x = (unk_168 * -160.0f) + 4029.0f;
    thisx->posRot.pos.y = (unk_168 * -399.0f) + 136.0f;
    thisx->posRot.pos.z = (unk_168 * 92.0f) + -1255.0f;
}

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Bg_Treemouth/BgTreemouth_Draw.s")
/*void BgTreemouth_Draw(Actor *thisx, GlobalContext *globalCtx) {
    GraphicsContext* gfxCtx = globalCtx->state.gfxCtx;
    Gfx* dispRefs[4];
    u32 phi_t1;

    Graph_OpenDisps(dispRefs, globalCtx->state.gfxCtx, "../z_bg_treemouth.c", 893);
    func_80093D18(globalCtx->state.gfxCtx);
    if ((gSaveContext.sceneSetupIndex < 4) || (LINK_IS_ADULT)) {
        phi_t1 = 0x1F4;
        if (gSaveContext.eventChkInf[0] & 0x800) {
            phi_t1 = 0x866;
        }
    }

    if (gSaveContext.sceneSetupIndex == 6) {
        phi_t1 = (globalCtx->unk_11D30[0] + 0x1F4) & 0xFFFF;
    }

    gDPSetEnvColor(gfxCtx->polyOpa.p++, 0x00, 0x00, 0x00, ((u32)(phi_t1 * 0.1f) | 0x80808000));
    gSPMatrix(gfxCtx->polyOpa.p++, Matrix_NewMtx(globalCtx->state.gfxCtx, "../z_bg_treemouth.c", 932),
              G_MTX_NOPUSH | G_MTX_LOAD | G_MTX_MODELVIEW);
    gSPDisplayList(gfxCtx->polyOpa.p++, &D_060009D0);

    Graph_CloseDisps(dispRefs, globalCtx->state.gfxCtx, "../z_bg_treemouth.c", 937);
}*/
