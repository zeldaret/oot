/*
 * File: z_en_takara_man.c
 * Overlay: ovl_En_Takara_Man
 * Description: Treasure Chest Game Man
 */

#include "z_en_takara_man.h"
#include "vt.h"

#define FLAGS 0x08000039

#define THIS ((EnTakaraMan*)thisx)

void EnTakaraMan_Init(Actor* thisx, GlobalContext* globalCtx);
void EnTakaraMan_Destroy(Actor* thisx, GlobalContext* globalCtx);
void EnTakaraMan_Update(Actor* thisx, GlobalContext* globalCtx);
void EnTakaraMan_Draw(Actor* thisx, GlobalContext* globalCtx);

void func_80B176E0(EnTakaraMan* this, GlobalContext* globalCtx);
void func_80B1778C(EnTakaraMan* this, GlobalContext* globalCtx);
void func_80B17B14(EnTakaraMan* this, GlobalContext* globalCtx);
void func_80B17934(EnTakaraMan* this, GlobalContext* globalCtx);
void func_80B17A6C(EnTakaraMan* this, GlobalContext* globalCtx);
void func_80B17AC4(EnTakaraMan* this, GlobalContext* globalCtx);

const ActorInit En_Takara_Man_InitVars = {
    ACTOR_EN_TAKARA_MAN,
    ACTORCAT_NPC,
    FLAGS,
    OBJECT_TS,
    sizeof(EnTakaraMan),
    (ActorFunc)EnTakaraMan_Init,
    (ActorFunc)EnTakaraMan_Destroy,
    (ActorFunc)EnTakaraMan_Update,
    (ActorFunc)EnTakaraMan_Draw,
};

static u8 sTakaraIsInitialized = false;

extern FlexSkeletonHeader D_06004FE0;
extern AnimationHeader D_06000498;

void EnTakaraMan_Destroy(Actor* thisx, GlobalContext* globalCtx) {
}

void EnTakaraMan_Init(Actor* thisx, GlobalContext* globalCtx) {
    EnTakaraMan* this = THIS;

    if (sTakaraIsInitialized) {
        Actor_Kill(&this->actor);
        osSyncPrintf(VT_FGCOL(GREEN) "☆☆☆☆☆ もういてる原 ☆☆☆☆☆ \n" VT_RST); // "Already initialized"
        return;
    }

    sTakaraIsInitialized = true;
    osSyncPrintf("\n\n");
    osSyncPrintf(VT_FGCOL(PURPLE) "☆☆☆☆☆ ばぅん！ ☆☆☆☆☆ %x\n" VT_RST,
                 globalCtx->actorCtx.flags.chest); // "Bun! %x" (needs a better translation)
    globalCtx->actorCtx.flags.chest = 0;
    gSaveContext.inventory.dungeonKeys[gSaveContext.mapIndex] = -1;
    SkelAnime_InitFlex(globalCtx, &this->skelAnime, &D_06004FE0, &D_06000498, this->jointTable, this->morphTable, 10);
    thisx->focus.pos = thisx->world.pos;
    this->pos = thisx->world.pos;
    thisx->world.pos.x = 133.0f;
    thisx->world.pos.y = -12.0f;
    thisx->world.pos.z = 102.0f;
    Actor_SetScale(&this->actor, 0.013f);
    this->height = 90.0f;
    this->originalRoomNum = thisx->room;
    thisx->room = -1;
    thisx->world.rot.y = thisx->shape.rot.y = -0x4E20;
    thisx->targetMode = 1;
    this->actionFunc = func_80B176E0;
}

void func_80B176E0(EnTakaraMan* this, GlobalContext* globalCtx) {
    f32 frameCount = Animation_GetLastFrame(&D_06000498);

    Animation_Change(&this->skelAnime, &D_06000498, 1.0f, 0.0f, (s16)frameCount, ANIMMODE_LOOP, -10.0f);
    if (!this->unk_214) {
        this->actor.textId = 0x6D;
        this->dialogState = 4;
    }
    this->actionFunc = func_80B1778C;
}

void func_80B1778C(EnTakaraMan* this, GlobalContext* globalCtx) {
    s16 absYawDiff;
    s16 yawDiff;

    SkelAnime_Update(&this->skelAnime);
    if (func_8002F194(&this->actor, globalCtx) && this->dialogState != 6) {
        if (!this->unk_214) {
            this->actionFunc = func_80B17934;
        } else {
            this->actionFunc = func_80B17B14;
        }
    } else {
        yawDiff = this->actor.yawTowardsPlayer - this->actor.shape.rot.y;
        if (globalCtx->roomCtx.curRoom.num == 6 && !this->unk_21A) {
            this->actor.textId = 0x6E;
            this->unk_21A = 1;
            this->dialogState = 6;
        }

        if (!this->unk_21A && this->unk_214) {
            if (Flags_GetSwitch(globalCtx, 0x32)) {
                this->actor.textId = 0x84;
                this->dialogState = 5;
            } else {
                this->actor.textId = 0x704C;
                this->dialogState = 6;
            }
        }

        absYawDiff = ABS(yawDiff);
        if (absYawDiff < 0x4300) {
            if (globalCtx->roomCtx.curRoom.num != this->originalRoomNum) {
                this->actor.flags &= ~1;
                this->unk_218 = 0;
            } else {
                if (!this->unk_218) {
                    this->actor.flags |= 1;
                    this->unk_218 = 1;
                }
                func_8002F2CC(&this->actor, globalCtx, 100.0f);
            }
        }
    }
}

void func_80B17934(EnTakaraMan* this, GlobalContext* globalCtx) {
    if (this->dialogState == func_8010BDBC(&globalCtx->msgCtx) && func_80106BC8(globalCtx)) {
        switch (globalCtx->msgCtx.choiceIndex) {
            case 0: // Yes
                if (gSaveContext.rupees >= 10) {
                    func_80106CCC(globalCtx);
                    Rupees_ChangeBy(-10);
                    this->unk_214 = 1;
                    this->actor.parent = NULL;
                    func_8002F434(&this->actor, globalCtx, GI_DOOR_KEY, 2000.0f, 1000.0f);
                    this->actionFunc = func_80B17A6C;
                } else {
                    func_80106CCC(globalCtx);
                    this->actor.textId = 0x85;
                    func_8010B720(globalCtx, this->actor.textId);
                    this->dialogState = 5;
                    this->actionFunc = func_80B17B14;
                }
                break;
            case 1: // No
                func_80106CCC(globalCtx);
                this->actor.textId = 0x2D;
                func_8010B720(globalCtx, this->actor.textId);
                this->dialogState = 5;
                this->actionFunc = func_80B17B14;
                break;
        }
    }
}

void func_80B17A6C(EnTakaraMan* this, GlobalContext* globalCtx) {
    if (Actor_HasParent(&this->actor, globalCtx)) {
        this->actionFunc = func_80B17AC4;
    } else {
        func_8002F434(&this->actor, globalCtx, GI_DOOR_KEY, 2000.0f, 1000.0f);
    }
}

void func_80B17AC4(EnTakaraMan* this, GlobalContext* globalCtx) {
    if (func_8010BDBC(&globalCtx->msgCtx) == 6 && func_80106BC8(globalCtx)) {
        this->actionFunc = func_80B176E0;
    }
}

void func_80B17B14(EnTakaraMan* this, GlobalContext* globalCtx) {
    if (this->dialogState == func_8010BDBC(&globalCtx->msgCtx) && func_80106BC8(globalCtx)) {
        func_80106CCC(globalCtx);
        this->actionFunc = func_80B176E0;
    }
}

void EnTakaraMan_Update(Actor* thisx, GlobalContext* globalCtx) {
    EnTakaraMan* this = THIS;

    if (this->eyeTimer != 0) {
        this->eyeTimer--;
    }

    Actor_SetFocus(&this->actor, this->height);
    func_80038290(globalCtx, &this->actor, &this->unk_22C, &this->unk_232, this->actor.focus.pos);
    if (this->eyeTimer == 0) {
        this->eyeTextureIdx++;
        if (this->eyeTextureIdx >= 2) {
            this->eyeTextureIdx = 0;
            this->eyeTimer = (s16)Rand_ZeroFloat(60.0f) + 20;
        }
    }
    this->unk_212++;
    this->actionFunc(this, globalCtx);
}

s32 EnTakaraMan_OverrideLimbDraw(GlobalContext* globalCtx, s32 limbIndex, Gfx** dList, Vec3f* pos, Vec3s* rot,
                                 void* thisx) {
    EnTakaraMan* this = THIS;

    if (limbIndex == 1) {
        rot->x += this->unk_232.y;
    }
    if (limbIndex == 8) {
        rot->x += this->unk_22C.y;
        rot->z += this->unk_22C.z;
    }
    return false;
}

void EnTakaraMan_Draw(Actor* thisx, GlobalContext* globalCtx) {
    static UNK_PTR sTakaraEyeTextures[] = {
        0x06000970,
        0x06000D70,
    };

    EnTakaraMan* this = THIS;

    OPEN_DISPS(globalCtx->state.gfxCtx, "../z_en_takara_man.c", 528);

    func_80093D18(globalCtx->state.gfxCtx);
    gSPSegment(POLY_OPA_DISP++, 0x08, SEGMENTED_TO_VIRTUAL(sTakaraEyeTextures[this->eyeTextureIdx]));
    SkelAnime_DrawFlexOpa(globalCtx, this->skelAnime.skeleton, this->skelAnime.jointTable, this->skelAnime.dListCount,
                          EnTakaraMan_OverrideLimbDraw, NULL, this);

    CLOSE_DISPS(globalCtx->state.gfxCtx, "../z_en_takara_man.c", 544);
}
