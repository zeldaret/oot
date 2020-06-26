#include "z_en_nb.h"

#define FLAGS 0x00000010

#define THIS ((EnNb*)thisx)

void EnNb_Init(Actor* thisx, GlobalContext* globalCtx);
void EnNb_Destroy(Actor* thisx, GlobalContext* globalCtx);
void EnNb_Update(Actor* thisx, GlobalContext* globalCtx);
void EnNb_Draw(Actor* thisx, GlobalContext* globalCtx);
s32 func_80AB0F04(Actor* thisx, GlobalContext* globalCtx);

s32 func_80AB0DA0(EnNb* this);
void func_80AB0FBC(EnNb* this, GlobalContext* globalCtx);
void func_80AB1040(EnNb* this, GlobalContext* globalCtx);
s32 EnNb_FrameUpdateMatrix(EnNb* this);
void func_80AB14A0(EnNb* this, AnimationHeader* animationHeader, u8 mode, f32 arg3, s32 arg4);
void func_80AB1650(EnNb* this, GlobalContext* globalCtx);
void func_80AB166C(EnNb* this, GlobalContext* globalCtx);
void func_80AB180C(EnNb* this, UNK_TYPE arg1);
void func_80AB1878(EnNb* this, GlobalContext* globalCtx);
void func_80AB18C4(EnNb* this, GlobalContext* globalCtx);
void func_80AB18E4(EnNb* this, GlobalContext* globalCtx);
void func_80AB1904(EnNb* this, GlobalContext* globalCtx);
void func_80AB197C(EnNb* this, GlobalContext* globalCtx);
void func_80AB19BC(EnNb* this, GlobalContext* globalCtx);
void func_80AB19FC(EnNb* this, GlobalContext* globalCtx);
void func_80AB1A74(void);
void func_80AB1A94(EnNb* this, GlobalContext* globalCtx);
void func_80AB1B14(EnNb* this, GlobalContext* globalCtx);
void func_80AB1B68(EnNb* this, GlobalContext* globalCtx);
void func_80AB1CBC(EnNb* this, GlobalContext* globalCtx);
void func_80AB1D54(EnNb* this, GlobalContext* globalCtx);
void func_80AB1D84(EnNb* this, GlobalContext* globalCtx);
void func_80AB1D84(EnNb* this, GlobalContext* globalCtx);
void func_80AB1DD8(EnNb* this, GlobalContext* globalCtx);
void func_80AB1E2C(EnNb* this, GlobalContext* globalCtx);
void func_80AB1FA4(EnNb* this, GlobalContext* globalCtx);
void func_80AB1FFC(EnNb* this, GlobalContext* globalCtx);
void func_80AB2030(EnNb* this, GlobalContext* globalCtx);
void func_80AB2148(EnNb* this, GlobalContext* globalCtx);
void func_80AB2180(EnNb* this, UNK_TYPE arg1);
void func_80AB22CC(EnNb* this, GlobalContext* globalCtx);
void func_80AB23A8(EnNb* this, GlobalContext* globalCtx);
void func_80AB23D8(EnNb* this, GlobalContext* globalCtx);
void func_80AB242C(EnNb* this, GlobalContext* globalCtx);
void func_80AB2484(EnNb* this, GlobalContext* globalCtx);

extern ColliderCylinderInit_Set3 D_80AB42E0;
extern AnimationHeader* D_06009694;
extern AnimationHeader* D_0600274C;
extern AnimationHeader* D_06002B4C;
extern AnimationHeader* D_06000410;
extern AnimationHeader* D_06001E7C;
extern AnimationHeader* D_06001350;
extern AnimationHeader* D_06001104;
extern AnimationHeader* D_06008BD0;
extern CutsceneData D_80AB431C[];
extern UNK_PTR D_80AB430C[];

/*
const ActorInit En_Nb_InitVars = {
    ACTOR_EN_NB,
    ACTORTYPE_NPC,
    FLAGS,
    OBJECT_NB,
    sizeof(EnNb),
    (ActorFunc)EnNb_Init,
    (ActorFunc)EnNb_Destroy,
    (ActorFunc)EnNb_Update,
    (ActorFunc)EnNb_Draw,
};
*/
#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Nb/func_80AB0D90.s")

s32 func_80AB0DA0(EnNb* this) {
    s32 params = this->actor.params;
    return params & 0xFF;
}
#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Nb/func_80AB0DAC.s")

s32 func_80AB0F04(Actor* thisx, GlobalContext* globalCtx) {
    EnNb* this = THIS;
    Collider_InitCylinder(globalCtx, &this->collider);
    return Collider_SetCylinder_Set3(globalCtx, &this->collider, &this->actor, &D_80AB42E0);
}

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Nb/func_80AB0F50.s")

void EnNb_Destroy(Actor* thisx, GlobalContext* globalCtx) {
    EnNb* this = THIS;
    Collider_DestroyCylinder(globalCtx, &this->collider);
}

void func_80AB0FBC(EnNb* this, GlobalContext* globalCtx) {
    Player* player = PLAYER;

    this->struct_300.unk_18 = player->actor.posRot.pos;
    this->struct_300.unk_14 = kREG(16) + 9.0f;
    func_80034A14(&this->actor, &this->struct_300, kREG(17) + 0xC, 2);
}

void func_80AB1040(EnNb* this, GlobalContext* globalCtx) {
    Player* player = PLAYER;

    this->struct_300.unk_18 = player->actor.posRot.pos;
    this->struct_300.unk_14 = kREG(16) + 9.0f;
    func_80034A14(&this->actor, &this->struct_300, kREG(17) + 0xC, 4);
}

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Nb/func_80AB10C4.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Nb/func_80AB1164.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Nb/func_80AB11EC.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Nb/func_80AB1210.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Nb/func_80AB1284.s")

s32 EnNb_FrameUpdateMatrix(EnNb* this) {
    return SkelAnime_FrameUpdateMatrix(&this->skelAnime);
}

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Nb/func_80AB12EC.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Nb/func_80AB1310.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Nb/func_80AB1390.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Nb/func_80AB13D8.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Nb/func_80AB1420.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Nb/func_80AB14A0.s")

void func_80AB1530(EnNb* this, GlobalContext* globalCtx) {
    func_80AB14A0(this, &D_06009694, 0, 0, 0);
    this->actor.shape.unk_08 = -10000.0f;
}

void func_80AB1578(EnNb* this, GlobalContext* globalCtx) {
    Actor* thisx = &this->actor;
    f32 posX = thisx->posRot.pos.x;
    f32 posY = thisx->posRot.pos.y;
    f32 posZ = thisx->posRot.pos.z;

    Actor_SpawnAttached(&globalCtx->actorCtx, &this->actor, globalCtx, ACTOR_DOOR_WARP1, posX, posY, posZ, 0, 0, 0, 2);
}

void func_80AB15D4(EnNb* this, GlobalContext* globalCtx) {
    Player* player = PLAYER;
    f32 posX = player->actor.posRot.pos.x;
    f32 posY = player->actor.posRot.pos.y + 50.0f;
    f32 posZ = player->actor.posRot.pos.z;

    Actor_SpawnAttached(&globalCtx->actorCtx, &this->actor, globalCtx, ACTOR_DEMO_EFFECT, posX, posY, posZ, 0, 0, 0,
                        12);
    Item_Give(globalCtx, ITEM_MEDALLION_SPIRIT);
}

void func_80AB1650(EnNb* this, GlobalContext* globalCtx) {
    this->actor.shape.unk_08 += 83.333336f;
}

void func_80AB166C(EnNb* this, GlobalContext* globalCtx) {
    s32 pad[2];
    Player* player;
    s16 temp;

    if ((gSaveContext.chamberCutsceneNum == 3) && (gSaveContext.sceneSetupIndex < 4)) {
        player = PLAYER;
        this->action = 1;
        globalCtx->csCtx.segment = &D_80AB431C;
        gSaveContext.cutsceneTrigger = 2;
        Item_Give(globalCtx, ITEM_MEDALLION_SPIRIT);
        temp = this->actor.posRot.rot.y + 0x8000;
        player->actor.shape.rot.y = temp;
        player->actor.posRot.rot.y = temp;
    }
}

void func_80AB16FC(EnNb* this, GlobalContext* globalCtx) {
    CutsceneContext* csCtx = &globalCtx->csCtx;
    CsCmdActorAction* csCmdNPCAction;

    if (csCtx->state != 0) {
        csCmdNPCAction = csCtx->npcActions[1];
        if (csCmdNPCAction != NULL && csCmdNPCAction->action == 2) {
            this->action = 2;
            this->drawConfig = 1;
            func_80AB1578(this, globalCtx);
        }
    }
}

void func_80AB174C(EnNb* this) {
    if (this->actor.shape.unk_08 >= 0.0f) {
        this->action = 3;
        this->actor.shape.unk_08 = 0.0f;
    }
}

void func_80AB1778(EnNb* this, GlobalContext* globalCtx) {
    AnimationHeader* animation = &D_0600274C;
    CsCmdActorAction* csCmdNPCAction;

    if (globalCtx->csCtx.state != 0) {
        csCmdNPCAction = globalCtx->csCtx.npcActions[1];
        if (csCmdNPCAction != NULL && csCmdNPCAction->action == 3) {
            SkelAnime_ChangeAnim(&this->skelAnime, animation, 1.0f, 0.0f,
                                 SkelAnime_GetFrameCount(&animation->genericHeader), 2, 0.0f);
            this->action = 4;
        }
    }
}

void func_80AB180C(EnNb* this, UNK_TYPE arg1) {
    AnimationHeader* animation = &D_06002B4C;
    if (arg1 != 0) {
        SkelAnime_ChangeAnim(&this->skelAnime, animation, 1.0f, 0.0f,
                             SkelAnime_GetFrameCount(&animation->genericHeader), 0, 0.0f);
        this->action = 5;
    }
}

void func_80AB1878(EnNb* this, GlobalContext* globalCtx) {
    CsCmdActorAction* csCmdNPCAction;

    if (globalCtx->csCtx.state != 0) {
        csCmdNPCAction = globalCtx->csCtx.npcActions[6];
        if (csCmdNPCAction != NULL && csCmdNPCAction->action == 2) {
            this->action = 6;
            func_80AB15D4(this, globalCtx);
        }
    }
}

void func_80AB18C4(EnNb* this, GlobalContext* globalCtx) {
    func_80AB166C(this, globalCtx);
}

void func_80AB18E4(EnNb* this, GlobalContext* globalCtx) {
    func_80AB16FC(this, globalCtx);
}

void func_80AB1904(EnNb* this, GlobalContext* globalCtx) {
    func_80AB1650(this, globalCtx);
    EnNb_FrameUpdateMatrix(this);
    func_80AB1164(this);
    func_80AB174C(this);
}

void func_80AB193C(EnNb* this, GlobalContext* globalCtx) {
    func_80AB1284(this, globalCtx);
    EnNb_FrameUpdateMatrix(this);
    func_80AB1164(this);
    func_80AB1778(this, globalCtx);
}

void func_80AB197C(EnNb* this, GlobalContext* globalCtx) {
    UNK_TYPE something;
    func_80AB1284(this, globalCtx);
    something = EnNb_FrameUpdateMatrix(this);
    func_80AB1164(this);
    func_80AB180C(this, something);
}

void func_80AB19BC(EnNb* this, GlobalContext* globalCtx) {
    func_80AB1284(this, globalCtx);
    EnNb_FrameUpdateMatrix(this);
    func_80AB1164(this);
    func_80AB1878(this, globalCtx);
}

void func_80AB19FC(EnNb* this, GlobalContext* globalCtx) {
    func_80AB1284(this, globalCtx);
    EnNb_FrameUpdateMatrix(this);
    func_80AB1164(this);
}

void func_80AB1A2C(EnNb* this, GlobalContext* globalCtx) {
    func_80AB14A0(this, &D_06000410, 2, 0.0f, 0);
    this->action = 7;
    this->actor.shape.unk_14 = 0;
}

void func_80AB1A74(void) {
    func_800788CC(NA_SE_SY_WHITE_OUT_T);
}

void func_80AB1A94(EnNb* this, GlobalContext* globalCtx) {
    Actor_SpawnAttached(&globalCtx->actorCtx, &this->actor, globalCtx, ACTOR_DEMO_6K, this->actor.posRot.pos.x,
                        kREG(21) + 22.0f + this->actor.posRot.pos.y, this->actor.posRot.pos.z, 0, 0, 0, 7);
}

void func_80AB1B14(EnNb* this, GlobalContext* globalCtx) {
    if (func_80AB1390(this, globalCtx, 4, 1)) {
        this->action = 8;
        this->drawConfig = 2;
        this->unk_284 = 0;
        this->actor.shape.unk_14 = 0;
        this->unk_280 = 0.0f;
        func_80AB1A74();
    }
}

void func_80AB1B68(EnNb* this, GlobalContext* globalCtx) {
    f32* unk_280 = &this->unk_280;
    s32 something;

    if (func_80AB1390(this, globalCtx, 4, 1)) {
        *unk_280 += 1.0f;
        if (*unk_280 >= kREG(5) + 10.0f) {
            this->action = 9;
            this->drawConfig = 1;
            *unk_280 = kREG(5) + 10.0f;
            this->unk_284 = 0xFF;
            this->actor.shape.unk_14 = 0xFF;
            return;
        }
    } else {
        *unk_280 -= 1.0f;
        if (*unk_280 <= 0.0f) {
            this->action = 7;
            this->drawConfig = 0;
            *unk_280 = 0.0f;
            this->unk_284 = 0;
            this->actor.shape.unk_14 = 0;
            return;
        }
    }

    something = (*unk_280 / (kREG(5) + 10.0f)) * 255.0f;
    this->unk_284 = something;
    this->actor.shape.unk_14 = something;
}

void func_80AB1CBC(EnNb* this, GlobalContext* globalCtx) {
    if (func_80AB13D8(this, globalCtx, 4, 1)) {
        this->action = 8;
        this->drawConfig = 2;
        this->unk_280 = kREG(5) + 10.0f;
        this->unk_284 = 0xFF;
        if (this->unk_288 == 0) {
            func_80AB1A94(this, globalCtx);
            this->unk_288 = 1;
        }

        this->actor.shape.unk_14 = 0xFF;
    }
}

void func_80AB1D54(EnNb* this, GlobalContext* globalCtx) {
    func_80AB1B14(this, globalCtx);
    func_80AB1210(this, globalCtx);
}

void func_80AB1D84(EnNb* this, GlobalContext* globalCtx) {
    func_80AB1284(this, globalCtx);
    EnNb_FrameUpdateMatrix(this);
    func_80AB1164(this);
    func_80AB1B68(this, globalCtx);
    func_80AB1210(this, globalCtx);
}

void func_80AB1DD8(EnNb* this, GlobalContext* globalCtx) {
    func_80AB1284(this, globalCtx);
    EnNb_FrameUpdateMatrix(this);
    func_80AB1164(this);
    func_80AB1CBC(this, globalCtx);
    func_80AB1210(this, globalCtx);
}

void func_80AB1E2C(EnNb* this, GlobalContext* globalCtx) {
    s32 pad[2];
    s16 temp = this->unk_274;
    UNK_PTR addr = D_80AB430C[temp];
    SkelAnime* skelAnime = &this->skelAnime;
    GraphicsContext* gfxCtx = globalCtx->state.gfxCtx;
    Gfx* dispRefs[4];

    Graph_OpenDisps(dispRefs, globalCtx->state.gfxCtx, "../z_en_nb_inKenjyanomaDemo02.c", 263);
    func_80093D84(globalCtx->state.gfxCtx);

    gSPSegment(gfxCtx->polyXlu.p++, 0x08, SEGMENTED_TO_VIRTUAL(addr));
    gSPSegment(gfxCtx->polyXlu.p++, 0x09, SEGMENTED_TO_VIRTUAL(addr));
    gDPSetEnvColor(gfxCtx->polyXlu.p++, 0x00, 0x00, 0x00, this->unk_284);
    gSPSegment(gfxCtx->polyXlu.p++, 0x0C, &D_80116280[0]);

    gfxCtx->polyXlu.p = SkelAnime_DrawSV2(globalCtx, skelAnime->skeleton, skelAnime->limbDrawTbl, skelAnime->dListCount,
                                          NULL, NULL, NULL, gfxCtx->polyXlu.p);
    Graph_CloseDisps(dispRefs, globalCtx->state.gfxCtx, "../z_en_nb_inKenjyanomaDemo02.c", 290);
}

void func_80AB1FA4(EnNb* this, GlobalContext* globalCtx) {
    func_80AB14A0(this, &D_06001E7C, 0, 0.0f, 0);
    this->action = 10;
    this->actor.shape.unk_14 = 0;
    gSaveContext.eventChkInf[9] |= 32;
}

void func_80AB1FFC(EnNb* this, GlobalContext* globalCtx) {
    if (globalCtx->csCtx.frames == 3) {
        func_80078914(&this->actor.projectedPos, NA_SE_VO_NB_CRY_0);
    }
}

void func_80AB2030(EnNb* this, GlobalContext* globalCtx) {
    if (globalCtx->csCtx.frames == 420) {
        func_80078914(&this->actor.projectedPos, NA_SE_VO_NB_AGONY);
    }
}

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Nb/func_80AB2064.s")

void func_80AB2148(EnNb* this, GlobalContext* globalCtx) {
    func_80AB1310(this, globalCtx, 1);
    this->action = 10;
    this->drawConfig = 0;
    this->actor.shape.unk_14 = 0;
}

void func_80AB2180(EnNb* this, UNK_TYPE arg1) {
    AnimationHeader* animation = &D_06001350;
    if (arg1 != 0) {
        SkelAnime_ChangeAnim(&this->skelAnime, animation, 1.0f, 0.0f,
                             SkelAnime_GetFrameCount(&animation->genericHeader), 0, 0.0f);
    }
}

void func_80AB21E0(EnNb* this) {
    AnimationHeader* animation = &D_06001E7C;
    SkelAnime_ChangeAnim(&this->skelAnime, animation, 1.0f, 0.0f, SkelAnime_GetFrameCount(&animation->genericHeader), 0,
                         -8.0f);
    this->action = 11;
    this->drawConfig = 1;
}

void func_80AB2254(EnNb* this) {
    AnimationHeader* animation = &D_06001104;
    SkelAnime_ChangeAnim(&this->skelAnime, animation, 1.0f, 0.0f, SkelAnime_GetFrameCount(&animation->genericHeader), 2,
                         -8.0f);
    this->action = 12;
    this->drawConfig = 1;
}

void func_80AB22CC(EnNb* this, GlobalContext* globalCtx) {
    CsCmdActorAction* csCmdNPCAction = func_80AB12EC(globalCtx, 1);
    s32 action;
    s32 unk_28C;

    if (csCmdNPCAction != NULL) {
        action = csCmdNPCAction->action;
        unk_28C = this->unk_28C;
        if (action != unk_28C) {
            switch (action) {
                case 1:
                    func_80AB2148(this, globalCtx);
                    break;
                case 7:
                    func_80AB21E0(this);
                    break;
                case 8:
                    func_80AB2254(this);
                    break;
                case 9:
                    Actor_Kill(&this->actor);
                    break;
                default:
                    osSyncPrintf("En_Nb_Kidnap_Check_DemoMode:そんな動作は無い!!!!!!!!\n");
                    break;
            }
            this->unk_28C = action;
        }
    }
}

void func_80AB23A8(EnNb* this, GlobalContext* globalCtx) {
    func_80AB1FFC(this, globalCtx);
    func_80AB22CC(this, globalCtx);
}

void func_80AB23D8(EnNb* this, GlobalContext* globalCtx) {
    func_80AB1FFC(this, globalCtx);
    func_80AB2030(this, globalCtx);
    func_80AB1164(this);
    EnNb_FrameUpdateMatrix(this);
    func_80AB22CC(this, globalCtx);
}

void func_80AB242C(EnNb* this, GlobalContext* globalCtx) {
    UNK_TYPE something;

    func_80AB1164(this, globalCtx);
    something = EnNb_FrameUpdateMatrix(this);
    func_80AB2180(this, something);
    func_80AB2064(this, globalCtx);
    func_80AB22CC(this, globalCtx);
}

void func_80AB2484(EnNb* this, GlobalContext* globalCtx) {
    AnimationHeader* animation = &D_06008BD0;
    func_80AB14A0(this, animation, 0, 0.0f, 0);
    this->action = 13;
    this->actor.shape.unk_14 = 0;
}

void func_80AB24CC(EnNb* this, GlobalContext* globalCtx) {
    Vec3f* projectedPos = &this->actor.projectedPos;
    s32 pad;

    if (globalCtx->csCtx.frames == 548) {
        func_80078914(projectedPos, NA_SE_VO_NB_CRY_0);
        func_80078914(projectedPos, NA_SE_EN_FANTOM_HIT_THUNDER);
    }
}

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Nb/func_80AB250C.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Nb/func_80AB2570.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Nb/func_80AB25BC.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Nb/func_80AB2610.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Nb/func_80AB2688.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Nb/func_80AB26C8.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Nb/func_80AB26DC.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Nb/func_80AB2774.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Nb/func_80AB27F0.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Nb/func_80AB285C.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Nb/func_80AB28DC.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Nb/func_80AB2948.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Nb/func_80AB29C8.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Nb/func_80AB2A28.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Nb/func_80AB2A68.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Nb/func_80AB2AE8.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Nb/func_80AB2AFC.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Nb/func_80AB2BF8.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Nb/func_80AB2C18.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Nb/func_80AB2C60.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Nb/func_80AB2CCC.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Nb/func_80AB2D38.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Nb/func_80AB2D9C.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Nb/func_80AB2E1C.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Nb/func_80AB2E70.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Nb/func_80AB2FC0.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Nb/func_80AB2FE4.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Nb/func_80AB3150.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Nb/func_80AB319C.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Nb/func_80AB3228.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Nb/func_80AB3260.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Nb/func_80AB32AC.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Nb/func_80AB32EC.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Nb/func_80AB3320.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Nb/func_80AB33C0.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Nb/func_80AB33E0.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Nb/func_80AB3428.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Nb/func_80AB3468.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Nb/func_80AB34A8.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Nb/func_80AB359C.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Nb/func_80AB3660.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Nb/func_80AB3684.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Nb/func_80AB36DC.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Nb/func_80AB378C.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Nb/func_80AB37E0.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Nb/func_80AB3838.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Nb/func_80AB38AC.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Nb/func_80AB3914.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Nb/func_80AB3A7C.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Nb/func_80AB3B04.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Nb/func_80AB3B7C.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Nb/func_80AB3BC8.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Nb/func_80AB3C1C.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Nb/func_80AB3C74.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Nb/func_80AB3CD4.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Nb/func_80AB3D34.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Nb/func_80AB3DB0.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Nb/func_80AB3E10.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Nb/EnNb_Update.s")

extern SkeletonHeader D_060181C8;
#ifdef NON_MATCHING
// same non-matching in func_800BC5E0
void EnNb_Init(Actor* thisx, GlobalContext* globalCtx) {
    EnNb* this = THIS;

    ActorShape_Init(&thisx->shape, 0.0f, ActorShadow_DrawFunc_Circle, 30.0f);
    func_80AB0F04(this, globalCtx);
    SkelAnime_InitSV(globalCtx, &this->skelAnime, &D_060181C8, NULL, this->limbDrawTable, this->transitionDrawTable,
                     19);
    switch (func_80AB0DA0(this)) {
        case 2:
            func_80AB1A2C(this, globalCtx);
            break;
        case 3:
            func_80AB1FA4(this, globalCtx);
            break;
        case 4:
            func_80AB2484(this, globalCtx);
            break;
        case 5:
            func_80AB3150(this, globalCtx);
            break;
        case 6:
            func_80AB34A8(this, globalCtx);
            break;
        default:
            func_80AB1530(this, globalCtx);
    }
}
#else
#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Nb/EnNb_Init.s")
#endif

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Nb/func_80AB3FE8.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Nb/func_80AB4074.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Nb/func_80AB4100.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Nb/func_80AB410C.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Nb/EnNb_Draw.s")
