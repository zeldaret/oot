/*
 * File: z_demo_sa.c
 * Overlay: Demo_Sa
 * Description: Saria (Cutscene)
 */

#include "z_demo_sa.h"
#include "overlays/actors/ovl_En_Elf/z_en_elf.h"

#include "vt.h"

#define FLAGS 0x00000010

#define THIS ((DemoSa*)thisx)

void DemoSa_Init(Actor* thisx, GlobalContext* globalCtx);
void DemoSa_Destroy(Actor* thisx, GlobalContext* globalCtx);
void DemoSa_Update(Actor* thisx, GlobalContext* globalCtx);
void DemoSa_Draw(Actor* thisx, GlobalContext* globalCtx);

void func_8098EBB8(DemoSa* this, GlobalContext* globalCtx);
void func_8098EBD8(DemoSa* this, GlobalContext* globalCtx);
void func_8098EBF8(DemoSa* this, GlobalContext* globalCtx);
void func_8098EC28(DemoSa* this, GlobalContext* globalCtx);
void func_8098EC60(DemoSa* this, GlobalContext* globalCtx);
void func_8098EC94(DemoSa* this, GlobalContext* globalCtx);
void func_8098ECCC(DemoSa* this, GlobalContext* globalCtx);
void func_8098F0E8(DemoSa* this, GlobalContext* globalCtx);
void func_8098F118(DemoSa* this, GlobalContext* globalCtx);
void func_8098F16C(DemoSa* this, GlobalContext* globalCtx);
void func_8098F3F0(DemoSa* this, GlobalContext* globalCtx);
void func_8098F714(DemoSa* this, GlobalContext* globalCtx);
void func_8098F734(DemoSa* this, GlobalContext* globalCtx);
void func_8098F77C(DemoSa* this, GlobalContext* globalCtx);
void func_8098F7BC(DemoSa* this, GlobalContext* globalCtx);
void func_8098F7FC(DemoSa* this, GlobalContext* globalCtx);
void func_8098FC44(DemoSa* this, GlobalContext* globalCtx);
void func_8098FC64(DemoSa* this, GlobalContext* globalCtx);
void func_8098FC9C(DemoSa* this, GlobalContext* globalCtx);
void func_8098FCD4(DemoSa* this, GlobalContext* globalCtx);
void func_8098FD0C(DemoSa* this, GlobalContext* globalCtx);

void func_8098FEA8(DemoSa* this, GlobalContext* globalCtx);
void func_8098FEB4(DemoSa* this, GlobalContext* globalCtx);
void func_8098F1C0(DemoSa* this, GlobalContext* globalCtx);

static UNK_PTR D_809900E0[] = {
    0x06002F48, 0x06003C48, 0x06003848, 0x06004848, 0x06004E48,
};

static UNK_PTR D_809900F4[] = {
    0x06003588, 0x06004C48, 0x06003348, 0x06004448, 0x06004648,
};

static u32 D_80990108 = 0;

#include "z_demo_sa_cutscene_data.c" EARLY

static DemoSaActionFunc sActionFuncs[] = {
    func_8098EBB8, func_8098EBD8, func_8098EBF8, func_8098EC28, func_8098EC60, func_8098EC94, func_8098ECCC,
    func_8098F0E8, func_8098F118, func_8098F16C, func_8098F3F0, func_8098F714, func_8098F734, func_8098F77C,
    func_8098F7BC, func_8098F7FC, func_8098FC44, func_8098FC64, func_8098FC9C, func_8098FCD4, func_8098FD0C,
};

static DemoSaDrawFunc sDrawFuncs[] = {
    func_8098FEA8,
    func_8098FEB4,
    func_8098F1C0,
};

const ActorInit Demo_Sa_InitVars = {
    ACTOR_DEMO_SA,
    ACTORCAT_NPC,
    FLAGS,
    OBJECT_SA,
    sizeof(DemoSa),
    (ActorFunc)DemoSa_Init,
    (ActorFunc)DemoSa_Destroy,
    (ActorFunc)DemoSa_Update,
    (ActorFunc)DemoSa_Draw,
};

void DemoSa_Destroy(Actor* thisx, GlobalContext* globalCtx) {
    DemoSa* this = THIS;

    SkelAnime_Free(&this->skelAnime, globalCtx);
}

extern AnimationHeader D_06001334;
extern AnimationHeader D_060021D8;
extern Gfx D_06007B80[];
extern FlexSkeletonHeader D_0600B1A0;
extern AnimationHeader D_0600DF80;
extern AnimationHeader D_0600E500;
extern AnimationHeader D_0600F580;
extern AnimationHeader D_0600FCE0;
extern AnimationHeader D_0600FFD4;
extern AnimationHeader D_0601113C;
extern AnimationHeader D_060135EC;
extern AnimationHeader D_06013CD8;
extern AnimationHeader D_060140BC;

void func_8098E480(DemoSa* this) {
    s32 pad[2];
    s16* unk_190 = &this->unk_190;
    s16* unk_192 = &this->unk_192;

    if (DECR(*unk_192) == 0) {
        *unk_192 = Rand_S16Offset(0x3C, 0x3C);
    }

    *unk_190 = *unk_192;
    if (*unk_190 >= 3) {
        *unk_190 = 0;
    }
}

void func_8098E508(DemoSa* this, s16 arg1) {
    this->unk_190 = arg1;
}

void func_8098E51C(DemoSa* this, s16 arg1) {
    this->unk_194 = arg1;
}

void func_8098E530(DemoSa* this) {
    this->action = 7;
    this->drawConfig = 0;
    this->alpha = 0;
    this->unk_1A8 = 0;
    this->actor.shape.shadowAlpha = 0;
    this->unk_1A0 = 0.0f;
}

void func_8098E554(DemoSa* this, GlobalContext* globalCtx) {
    u32* something = &D_80990108;

    if (globalCtx->csCtx.state == 0) {
        if (*something != 0) {
            if (this->actor.params == 2) {
                func_8098E530(this);
            }
            *something = 0;
        }
    } else if (*something == 0) {
        *something = 1;
    }
}

void func_8098E5C8(DemoSa* this, GlobalContext* globalCtx) {
    Actor_UpdateBgCheckInfo(globalCtx, &this->actor, 75.0f, 30.0f, 30.0f, 5);
}

s32 DemoSa_FrameUpdateMatrix(DemoSa* this) {
    SkelAnime_Update(&this->skelAnime);
}

CsCmdActorAction* DemoSa_GetNpcAction(GlobalContext* globalCtx, s32 idx) {
    if (globalCtx->csCtx.state != 0) {
        return globalCtx->csCtx.npcActions[idx];
    }
    return NULL;
}

s32 func_8098E654(DemoSa* this, GlobalContext* globalCtx, u16 arg2, s32 arg3) {
    CsCmdActorAction* npcAction = DemoSa_GetNpcAction(globalCtx, arg3);

    if ((npcAction != NULL) && (npcAction->action == arg2)) {
        return 1;
    }
    return 0;
}

s32 func_8098E6A0(DemoSa* this, GlobalContext* globalCtx, u16 arg2, s32 arg3) {
    CsCmdActorAction* npcAction = DemoSa_GetNpcAction(globalCtx, arg3);

    if ((npcAction != NULL) && (npcAction->action != arg2)) {
        return 1;
    }
    return 0;
}

void func_8098E6EC(DemoSa* this, GlobalContext* globalCtx, s32 actionIdx) {
    CsCmdActorAction* npcAction = DemoSa_GetNpcAction(globalCtx, actionIdx);

    if (npcAction != NULL) {
        this->actor.world.pos.x = npcAction->startPos.x;
        this->actor.world.pos.y = npcAction->startPos.y;
        this->actor.world.pos.z = npcAction->startPos.z;
        this->actor.world.rot.y = this->actor.shape.rot.y = npcAction->rot.y;
    }
}

void func_8098E76C(DemoSa* this, AnimationHeader* animHeaderSeg, u8 arg2, f32 transitionRate, s32 arg4) {
    s32 pad[2];
    f32 frameCount = Animation_GetLastFrame(animHeaderSeg);
    f32 playbackSpeed;
    f32 unk0;
    f32 fc;

    if (arg4 == 0) {
        unk0 = 0.0f;
        fc = frameCount;
        playbackSpeed = 1.0f;
    } else {
        fc = 0.0f;
        unk0 = frameCount;
        playbackSpeed = -1.0f;
    }

    Animation_Change(&this->skelAnime, animHeaderSeg, playbackSpeed, unk0, fc, arg2, transitionRate);
}

void func_8098E7FC(DemoSa* this, GlobalContext* globalCtx) {
    SkelAnime_InitFlex(globalCtx, &this->skelAnime, &D_0600B1A0, &D_060021D8, NULL, NULL, 0);
    this->actor.shape.yOffset = -10000.0f;
    func_8098E508(this, 1);
    func_8098E51C(this, 0);
}

void func_8098E86C(DemoSa* this, GlobalContext* globalCtx) {
    Vec3f* world = &this->actor.world.pos;
    f32 posX = world->x;
    f32 posY = world->y;
    f32 posZ = world->z;

    Actor_SpawnAsChild(&globalCtx->actorCtx, &this->actor, globalCtx, ACTOR_DOOR_WARP1, posX, posY, posZ, 0, 0, 0, 2);
}

void func_8098E8C8(DemoSa* this, GlobalContext* globalCtx) {
    Player* player = PLAYER;
    f32 posX = player->actor.world.pos.x;
    f32 posY = player->actor.world.pos.y + 80.0f;
    f32 posZ = player->actor.world.pos.z;

    Actor_SpawnAsChild(&globalCtx->actorCtx, &this->actor, globalCtx, ACTOR_DEMO_EFFECT, posX, posY, posZ, 0, 0, 0,
                       0xB);
    Item_Give(globalCtx, ITEM_MEDALLION_FOREST);
}

void func_8098E944(DemoSa* this, GlobalContext* globalCtx) {
    this->actor.shape.yOffset += (250.0f / 3.0f);
}

void func_8098E960(DemoSa* this, GlobalContext* globalCtx) {
    s32 pad[2];
    Player* player;

    if ((gSaveContext.chamberCutsceneNum == 0) && (gSaveContext.sceneSetupIndex < 4)) {
        player = PLAYER;
        this->action = 1;
        globalCtx->csCtx.segment = D_8099010C;
        gSaveContext.cutsceneTrigger = 2;
        Item_Give(globalCtx, ITEM_MEDALLION_FOREST);
        player->actor.world.rot.y = player->actor.shape.rot.y = this->actor.world.rot.y + 0x8000;
    }
}

void func_8098E9EC(DemoSa* this, GlobalContext* globalCtx) {
    CsCmdActorAction* npcAction;

    if (globalCtx->csCtx.state != 0) {
        npcAction = globalCtx->csCtx.npcActions[4];
        if ((npcAction != NULL) && (npcAction->action == 2)) {
            this->action = 2;
            this->drawConfig = 1;
            func_8098E86C(this, globalCtx);
        }
    }
}

void func_8098EA3C(DemoSa* this) {
    if (this->actor.shape.yOffset >= 0.0f) {
        this->action = 3;
        this->actor.shape.yOffset = 0.0f;
    }
}

void func_8098EA68(DemoSa* this, GlobalContext* globalCtx) {
    CsCmdActorAction* npcAction;

    if (globalCtx->csCtx.state != 0) {
        npcAction = globalCtx->csCtx.npcActions[4];
        if ((npcAction != NULL) && (npcAction->action == 3)) {
            Animation_Change(&this->skelAnime, &D_0600DF80, 1.0f, 0.0f, Animation_GetLastFrame(&D_0600DF80),
                             ANIMMODE_ONCE, -4.0f);
            this->action = 4;
        }
    }
}

void func_8098EB00(DemoSa* this, s32 arg1) {
    if (arg1 != 0) {
        Animation_Change(&this->skelAnime, &D_0600E500, 1.0f, 0.0f, Animation_GetLastFrame(&D_0600E500), ANIMMODE_LOOP,
                         0.0f);
        this->action = 5;
    }
}

void func_8098EB6C(DemoSa* this, GlobalContext* globalCtx) {
    CsCmdActorAction* npcAction;

    if (globalCtx->csCtx.state != 0) {
        npcAction = globalCtx->csCtx.npcActions[6];
        if ((npcAction != NULL) && (npcAction->action == 2)) {
            this->action = 6;
            func_8098E8C8(this, globalCtx);
        }
    }
}

void func_8098EBB8(DemoSa* this, GlobalContext* globalCtx) {
    func_8098E960(this, globalCtx);
}

void func_8098EBD8(DemoSa* this, GlobalContext* globalCtx) {
    func_8098E9EC(this, globalCtx);
}

void func_8098EBF8(DemoSa* this, GlobalContext* globalCtx) {
    func_8098E944(this, globalCtx);
    DemoSa_FrameUpdateMatrix(this);
    func_8098EA3C(this);
}

void func_8098EC28(DemoSa* this, GlobalContext* globalCtx) {
    func_8098E5C8(this, globalCtx);
    DemoSa_FrameUpdateMatrix(this);
    func_8098EA68(this, globalCtx);
}

void func_8098EC60(DemoSa* this, GlobalContext* globalCtx) {
    func_8098E5C8(this, globalCtx);
    func_8098EB00(this, DemoSa_FrameUpdateMatrix(this));
}

void func_8098EC94(DemoSa* this, GlobalContext* globalCtx) {
    func_8098E5C8(this, globalCtx);
    DemoSa_FrameUpdateMatrix(this);
    func_8098EB6C(this, globalCtx);
}

void func_8098ECCC(DemoSa* this, GlobalContext* globalCtx) {
    func_8098E5C8(this, globalCtx);
    DemoSa_FrameUpdateMatrix(this);
}

void func_8098ECF4(DemoSa* this, GlobalContext* globalCtx) {
    s32 pad[2];
    SkelAnime* skelAnime = &this->skelAnime;
    f32 frameCount = Animation_GetLastFrame(&D_06001334);

    SkelAnime_InitFlex(globalCtx, skelAnime, &D_0600B1A0, NULL, NULL, NULL, 0);
    Animation_Change(skelAnime, &D_06001334, 1.0f, 0.0f, frameCount, ANIMMODE_ONCE, 0.0f);
    this->action = 7;
    this->actor.shape.shadowAlpha = 0;
    func_8098E508(this, 2);
    func_8098E51C(this, 2);
}

void func_8098EDB0(DemoSa* this) {
    f32 curFrame = this->skelAnime.curFrame;

    if ((this->skelAnime.mode == 2) && (curFrame >= 32.0f)) {
        func_8098E508(this, 1);
        func_8098E51C(this, 0);
    }
}

void func_8098EE08(void) {
    func_800788CC(NA_SE_SY_WHITE_OUT_T);
}

void func_8098EE28(DemoSa* this, GlobalContext* globalCtx) {
    Actor_SpawnAsChild(&globalCtx->actorCtx, &this->actor, globalCtx, ACTOR_DEMO_6K, this->actor.world.pos.x,
                       (kREG(23) + 25.0f) + this->actor.world.pos.y, this->actor.world.pos.z, 0, 0, 0, 4);
}

void func_8098EEA8(DemoSa* this, GlobalContext* globalCtx) {
    if (func_8098E654(this, globalCtx, 4, 4)) {
        this->action = 8;
        this->drawConfig = 2;
        this->alpha = 0;
        this->actor.shape.shadowAlpha = 0;
        this->unk_1A0 = 0.0f;
        func_8098EE08();
    }
}

void func_8098EEFC(DemoSa* this, GlobalContext* globalCtx) {
    s32 alpha = 255;
    f32* unk_1A0 = &this->unk_1A0;

    if (func_8098E654(this, globalCtx, 4, 4)) {
        *unk_1A0 += 1.0f;
        if ((kREG(5) + 10.0f) <= *unk_1A0) {
            this->action = 9;
            this->drawConfig = 1;
            *unk_1A0 = kREG(5) + 10.0f;
            this->alpha = alpha;
            this->actor.shape.shadowAlpha = alpha;
            return;
        }
    } else {
        *unk_1A0 -= 1.0f;
        if (*unk_1A0 <= 0.0f) {
            this->action = 7;
            this->drawConfig = 0;
            *unk_1A0 = 0.0f;
            this->alpha = 0;
            this->actor.shape.shadowAlpha = 0;
            return;
        }
    }
    this->actor.shape.shadowAlpha = this->alpha = (*unk_1A0 / (kREG(5) + 10.0f)) * 255.0f;
}

void func_8098F050(DemoSa* this, GlobalContext* globalCtx) {
    if (func_8098E6A0(this, globalCtx, 4, 4)) {
        this->action = 8;
        this->drawConfig = 2;
        this->unk_1A0 = kREG(5) + 10.0f;
        this->alpha = 255;
        if (this->unk_1A8 == 0) {
            func_8098EE28(this, globalCtx);
            this->unk_1A8 = 1;
        }
        this->actor.shape.shadowAlpha = 0xFF;
    }
}

void func_8098F0E8(DemoSa* this, GlobalContext* globalCtx) {
    func_8098EEA8(this, globalCtx);
    func_8098E554(this, globalCtx);
}

void func_8098F118(DemoSa* this, GlobalContext* globalCtx) {
    func_8098E5C8(this, globalCtx);
    DemoSa_FrameUpdateMatrix(this);
    func_8098E480(this);
    func_8098EEFC(this, globalCtx);
    func_8098E554(this, globalCtx);
}

void func_8098F16C(DemoSa* this, GlobalContext* globalCtx) {
    func_8098E5C8(this, globalCtx);
    DemoSa_FrameUpdateMatrix(this);
    func_8098EDB0(this);
    func_8098F050(this, globalCtx);
    func_8098E554(this, globalCtx);
}

void func_8098F1C0(DemoSa* this, GlobalContext* globalCtx) {
    s32 pad[2];
    s16 unk_190 = this->unk_190;
    UNK_PTR sp78 = D_809900E0[unk_190];
    s16 unk_194 = this->unk_194;
    s32 pad2;
    UNK_PTR sp6C = D_809900F4[unk_194];
    SkelAnime* skelAnime = &this->skelAnime;

    OPEN_DISPS(globalCtx->state.gfxCtx, "../z_demo_sa_inKenjyanomaDemo02.c", 296);

    func_80093D84(globalCtx->state.gfxCtx);

    gSPSegment(POLY_XLU_DISP++, 0x08, SEGMENTED_TO_VIRTUAL(sp78));
    gSPSegment(POLY_XLU_DISP++, 0x09, SEGMENTED_TO_VIRTUAL(sp78));
    gSPSegment(POLY_XLU_DISP++, 0x0A, SEGMENTED_TO_VIRTUAL(sp6C));
    gDPSetEnvColor(POLY_XLU_DISP++, 0, 0, 0, this->alpha);
    gSPSegment(POLY_XLU_DISP++, 0x0C, D_80116280);

    POLY_XLU_DISP = SkelAnime_DrawFlex(globalCtx, skelAnime->skeleton, skelAnime->jointTable, skelAnime->dListCount,
                                       NULL, NULL, NULL, POLY_XLU_DISP);

    CLOSE_DISPS(globalCtx->state.gfxCtx, "../z_demo_sa_inKenjyanomaDemo02.c", 325);
}

void func_8098F390(DemoSa* this, GlobalContext* globalCtx) {
    SkelAnime_InitFlex(globalCtx, &this->skelAnime, &D_0600B1A0, &D_060021D8, NULL, NULL, 0);
    this->action = 10;
    this->drawConfig = 1;
}

void func_8098F3F0(DemoSa* this, GlobalContext* globalCtx) {
    func_8098E5C8(this, globalCtx);
    DemoSa_FrameUpdateMatrix(this);
    func_8098E480(this);
}

void func_8098F420(DemoSa* this, GlobalContext* globalCtx) {
    SkelAnime_InitFlex(globalCtx, &this->skelAnime, &D_0600B1A0, &D_0600FFD4, NULL, NULL, 0);
    this->action = 11;
    this->drawConfig = 0;
    this->actor.shape.shadowAlpha = 0;
}

void func_8098F480(DemoSa* this) {
    s32 alpha = 255;
    f32* unk_1A0 = &this->unk_1A0;
    f32 temp_f0;

    *unk_1A0 += 1.0f;
    temp_f0 = kREG(17) + 10.0f;

    if (temp_f0 <= *unk_1A0) {
        this->actor.shape.shadowAlpha = this->alpha = alpha;
    } else {
        this->actor.shape.shadowAlpha = this->alpha = (*unk_1A0 / temp_f0) * 255.0f;
    }
}

void func_8098F50C(DemoSa* this, GlobalContext* globalCtx) {
    func_8098E6EC(this, globalCtx, 4);
    this->action = 12;
    this->drawConfig = 2;
}

void func_8098F544(DemoSa* this) {
    if (this->unk_1A0 >= kREG(17) + 10.0f) {
        this->action = 13;
        this->drawConfig = 1;
    }
}

void func_8098F590(DemoSa* this) {
    func_8098E76C(this, &D_0600F580, 2, -8.0f, 0);
    this->action = 14;
}

void func_8098F5D0(DemoSa* this) {
    func_8098E76C(this, &D_0600FCE0, 2, 0.0f, 0);
    this->action = 15;
}

void func_8098F610(DemoSa* this, s32 arg1) {
    if (arg1 != 0) {
        func_8098E76C(this, &D_0600FFD4, 0, 0.0f, 0);
        this->action = 13;
    }
}

void func_8098F654(DemoSa* this, GlobalContext* globalCtx) {
    s32 unk_1AC;
    s32 action;
    CsCmdActorAction* npcAction = DemoSa_GetNpcAction(globalCtx, 4);

    if (npcAction != NULL) {
        action = npcAction->action;
        unk_1AC = this->unk_1AC;
        if (action != unk_1AC) {
            switch (action) {
                case 7:
                    func_8098F50C(this, globalCtx);
                    break;
                case 8:
                    func_8098F590(this);
                    break;
                case 9:
                    func_8098F5D0(this);
                    break;
                default:
                    osSyncPrintf("Demo_Sa_inEnding_Check_DemoMode:そんな動作は無い!!!!!!!!\n");
            }
            this->unk_1AC = action;
        }
    }
}

void func_8098F714(DemoSa* this, GlobalContext* globalCtx) {
    func_8098F654(this, globalCtx);
}

void func_8098F734(DemoSa* this, GlobalContext* globalCtx) {
    func_8098E5C8(this, globalCtx);
    DemoSa_FrameUpdateMatrix(this);
    func_8098E480(this);
    func_8098F480(this);
    func_8098F544(this);
}

void func_8098F77C(DemoSa* this, GlobalContext* globalCtx) {
    func_8098E5C8(this, globalCtx);
    DemoSa_FrameUpdateMatrix(this);
    func_8098E480(this);
    func_8098F654(this, globalCtx);
}

void func_8098F7BC(DemoSa* this, GlobalContext* globalCtx) {
    func_8098E5C8(this, globalCtx);
    DemoSa_FrameUpdateMatrix(this);
    func_8098E480(this);
    func_8098F654(this, globalCtx);
}

void func_8098F7FC(DemoSa* this, GlobalContext* globalCtx) {
    s32 sp1C;

    func_8098E5C8(this, globalCtx);
    sp1C = DemoSa_FrameUpdateMatrix(this);
    func_8098E480(this);
    func_8098F610(this, sp1C);
}

void func_8098F83C(DemoSa* this, GlobalContext* globalCtx) {
    Vec3f* thisPos = &this->actor.world.pos;

    SkelAnime_InitFlex(globalCtx, &this->skelAnime, &D_0600B1A0, &D_0601113C, NULL, NULL, 0);
    Actor_SpawnAsChild(&globalCtx->actorCtx, &this->actor, globalCtx, ACTOR_EN_ELF, thisPos->x, thisPos->y, thisPos->z,
                       0, 0, 0, FAIRY_KOKIRI);
    this->action = 16;
    this->drawConfig = 0;
    this->actor.shape.shadowAlpha = 0;
    func_8098E508(this, 4);
    func_8098E51C(this, 2);
}

void func_8098F8F8(DemoSa* this) {
    s32 alpha = 255;
    f32* unk_1A0 = &this->unk_1A0;
    f32 temp_f0;

    *unk_1A0 += 1.0f;
    temp_f0 = kREG(17) + 10.0f;

    if (temp_f0 <= *unk_1A0) {
        this->actor.shape.shadowAlpha = this->alpha = alpha;
    } else {
        this->actor.shape.shadowAlpha = this->alpha = (*unk_1A0 / temp_f0) * 255.0f;
    }
}

void func_8098F984(DemoSa* this) {
    this->action = 16;
    this->drawConfig = 0;
    this->actor.shape.shadowAlpha = 0;
}

void func_8098F998(DemoSa* this, GlobalContext* globalCtx) {
    if (this->unk_1AC == 4) {
        func_8098E6EC(this, globalCtx, 1);
        this->action = 17;
        this->drawConfig = 2;
        this->unk_1B0 = 0;
        this->actor.shape.shadowAlpha = 0;
    } else {
        func_8098E76C(this, &D_0601113C, 0, 0.0f, 0);
        this->action = 18;
        this->drawConfig = 1;
        this->unk_1B0 = 0;
        this->actor.shape.shadowAlpha = 0xFF;
    }
    func_8098E508(this, 4);
}

void func_8098FA2C(DemoSa* this) {
    if (this->unk_1A0 >= kREG(17) + 10.0f) {
        this->action = 18;
        this->drawConfig = 1;
        this->unk_1B0 = 0;
        this->actor.shape.shadowAlpha = 0xFF;
    }
}

void func_8098FA84(DemoSa* this) {
    func_8098E76C(this, &D_060140BC, 0, 0.0f, 0);
    this->action = 19;
    this->drawConfig = 1;
    this->unk_1B0 = 1;
    this->actor.shape.shadowAlpha = 0xFF;
    func_8098E508(this, 2);
}

void func_8098FAE0(DemoSa* this) {
    func_8098E76C(this, &D_060135EC, 2, -8.0f, 0);
    this->action = 20;
    this->drawConfig = 1;
    this->unk_1B0 = 1;
    this->actor.shape.shadowAlpha = 0xFF;
}

void func_8098FB34(DemoSa* this, s32 arg1) {
    if (arg1 != 0) {
        func_8098E76C(this, &D_06013CD8, 0, 0, 0);
    }
}

void func_8098FB68(DemoSa* this, GlobalContext* globalCtx) {
    s32 unk_1AC;
    s32 action;
    CsCmdActorAction* npcAction = DemoSa_GetNpcAction(globalCtx, 1);

    if (npcAction != NULL) {
        action = npcAction->action;
        unk_1AC = this->unk_1AC;
        if (action != unk_1AC) {
            switch (action) {
                case 4:
                    func_8098F984(this);
                    break;
                case 12:
                    func_8098F998(this, globalCtx);
                    break;
                case 13:
                    func_8098FA84(this);
                    break;
                case 14:
                    func_8098FAE0(this);
                    break;
                default:
                    osSyncPrintf("Demo_Sa_inPresent_Check_DemoMode:そんな動作は無い!!!!!!!!\n");
            }
            this->unk_1AC = action;
        }
    }
}

void func_8098FC44(DemoSa* this, GlobalContext* globalCtx) {
    func_8098FB68(this, globalCtx);
}

void func_8098FC64(DemoSa* this, GlobalContext* globalCtx) {
    func_8098E5C8(this, globalCtx);
    DemoSa_FrameUpdateMatrix(this);
    func_8098F8F8(this);
    func_8098FA2C(this);
}

void func_8098FC9C(DemoSa* this, GlobalContext* globalCtx) {
    func_8098E5C8(this, globalCtx);
    DemoSa_FrameUpdateMatrix(this);
    func_8098FB68(this, globalCtx);
}

void func_8098FCD4(DemoSa* this, GlobalContext* globalCtx) {
    func_8098E5C8(this, globalCtx);
    DemoSa_FrameUpdateMatrix(this);
    func_8098FB68(this, globalCtx);
}

void func_8098FD0C(DemoSa* this, GlobalContext* globalCtx) {
    func_8098E5C8(this, globalCtx);
    func_8098FB34(this, DemoSa_FrameUpdateMatrix(this));
    func_8098FB68(this, globalCtx);
}

void DemoSa_Update(Actor* thisx, GlobalContext* globalCtx) {
    DemoSa* this = THIS;

    if (this->action < 0 || this->action >= 21 || sActionFuncs[this->action] == NULL) {
        osSyncPrintf(VT_FGCOL(RED) "メインモードがおかしい!!!!!!!!!!!!!!!!!!!!!!!!!\n" VT_RST);
        return;
    }
    sActionFuncs[this->action](this, globalCtx);
}

void DemoSa_Init(Actor* thisx, GlobalContext* globalCtx) {
    DemoSa* this = THIS;

    ActorShape_Init(&this->actor.shape, 0.0f, ActorShadow_DrawCircle, 30.0f);

    switch (this->actor.params) {
        case 2:
            func_8098ECF4(this, globalCtx);
            break;
        case 3:
            func_8098F390(this, globalCtx);
            break;
        case 4:
            func_8098F420(this, globalCtx);
            break;
        case 5:
            func_8098F83C(this, globalCtx);
            break;
        default:
            func_8098E7FC(this, globalCtx);
    }
}

s32 DemoSa_OverrideLimbDraw(GlobalContext* globalCtx, s32 limbIndex, Gfx** dList, Vec3f* pos, Vec3s* rot, void* thisx) {
    DemoSa* this = THIS;

    if ((limbIndex == 15) && (this->unk_1B0 != 0)) {
        *dList = D_06007B80;
    }
    return false;
}

void func_8098FEA8(DemoSa* this, GlobalContext* globalCtx) {
}

void func_8098FEB4(DemoSa* this, GlobalContext* globalCtx) {
    s32 pad[2];
    s16 unk_190 = this->unk_190;
    UNK_PTR sp70 = D_809900E0[unk_190];
    s32 pad2;
    s16 unk_194 = this->unk_194;
    UNK_PTR sp64 = D_809900F4[unk_194];
    SkelAnime* skelAnime = &this->skelAnime;

    OPEN_DISPS(globalCtx->state.gfxCtx, "../z_demo_sa.c", 602);

    func_80093D18(globalCtx->state.gfxCtx);

    gSPSegment(POLY_OPA_DISP++, 0x08, SEGMENTED_TO_VIRTUAL(sp70));
    gSPSegment(POLY_OPA_DISP++, 0x09, SEGMENTED_TO_VIRTUAL(sp70));
    gSPSegment(POLY_OPA_DISP++, 0x0A, SEGMENTED_TO_VIRTUAL(sp64));
    gDPSetEnvColor(POLY_OPA_DISP++, 0, 0, 0, 255);
    gSPSegment(POLY_OPA_DISP++, 0x0C, &D_80116280[2]);

    SkelAnime_DrawFlexOpa(globalCtx, skelAnime->skeleton, skelAnime->jointTable, skelAnime->dListCount,
                          DemoSa_OverrideLimbDraw, NULL, &this->actor);

    CLOSE_DISPS(globalCtx->state.gfxCtx, "../z_demo_sa.c", 626);
}

void DemoSa_Draw(Actor* thisx, GlobalContext* globalCtx) {
    DemoSa* this = THIS;

    if (this->drawConfig < 0 || this->drawConfig >= 3 || sDrawFuncs[this->drawConfig] == NULL) {
        osSyncPrintf(VT_FGCOL(RED) "描画モードがおかしい!!!!!!!!!!!!!!!!!!!!!!!!!\n" VT_RST);
        return;
    }
    sDrawFuncs[this->drawConfig](this, globalCtx);
}
