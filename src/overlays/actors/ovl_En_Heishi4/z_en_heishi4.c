#include "z_en_heishi4.h"
#include "vt.h"

#define FLAGS 0x00000009

#define THIS ((EnHeishi4*)thisx)

void EnHeishi4_Init(Actor* thisx, GlobalContext* globalCtx);
void EnHeishi4_Destroy(Actor* thisx, GlobalContext* globalCtx);
void EnHeishi4_Update(Actor* thisx, GlobalContext* globalCtx);
void EnHeishi4_Draw(Actor* thisx, GlobalContext* globalCtx);

void func_80A56544(EnHeishi4* this, GlobalContext* globalCtx);
void func_80A5673C(EnHeishi4* this, GlobalContext* globalCtx);
void func_80A56328(EnHeishi4* this, GlobalContext* globalCtx);
void func_80A563BC(EnHeishi4* this, GlobalContext* globalCtx);
void func_80A56B40(EnHeishi4* this, GlobalContext* globalCtx);
void func_80A56614(EnHeishi4* this, GlobalContext* globalCtx);
void func_80A56874(EnHeishi4* this, GlobalContext* globalCtx);
void func_80A56900(EnHeishi4* this, GlobalContext* globalCtx);
void func_80A56994(EnHeishi4* this, GlobalContext* globalCtx);
void func_80A56A50(EnHeishi4* this, GlobalContext* globalCtx);
void func_80A56ACC(EnHeishi4* this, GlobalContext* globalCtx);

const ActorInit En_Heishi4_InitVars = {
    ACTOR_EN_HEISHI4,
    ACTORTYPE_NPC,
    FLAGS,
    OBJECT_SD,
    sizeof(EnHeishi4),
    (ActorFunc)EnHeishi4_Init,
    (ActorFunc)EnHeishi4_Destroy,
    (ActorFunc)EnHeishi4_Update,
    (ActorFunc)EnHeishi4_Draw,
};

static u32 sFaceReactionSets[] = { 6, 7 };

static ColliderCylinderInit sCylinderInit = {
    { COLTYPE_UNK10, 0x00, 0x00, 0x39, 0x20, COLSHAPE_CYLINDER },
    { 0x00, { 0x00000000, 0x00, 0x00 }, { 0x00000000, 0x00, 0x00 }, 0x00, 0x00, 0x01 },
    { 33, 40, 0, { 0, 0, 0 } },
};

extern SkeletonHeader D_0600BAC8;
extern AnimationHeader D_0600C444;
extern AnimationHeader D_06005C30;
extern AnimationHeader D_0600C6C8;
extern AnimationHeader D_0600C374;

void EnHeishi4_Init(Actor* thisx, GlobalContext* globalCtx) {
    EnHeishi4* this = THIS;

    Actor_SetScale(thisx, 0.01f);
    this->type = thisx->params & 0xFF;
    thisx->colChkInfo.mass = 0xFF;
    this->pos = thisx->posRot.pos;
    thisx->unk_1F = 6;
    if (this->type == HEISHI4_AT_MARKET_DYING) {
        this->height = 30.0f;
        ActorShape_Init(&thisx->shape, 0.0f, NULL, 30.0f);
        SkelAnime_Init(globalCtx, &this->skelAnime, &D_0600BAC8, &D_0600C444, this->jointTable, this->morphTable, 17);
    } else {
        this->height = 60.0f;
        ActorShape_Init(&thisx->shape, 0.0f, ActorShadow_DrawFunc_Circle, 30.0f);
        SkelAnime_Init(globalCtx, &this->skelAnime, &D_0600BAC8, &D_06005C30, this->jointTable, this->morphTable, 17);
    }
    Collider_InitCylinder(globalCtx, &this->collider);
    Collider_SetCylinder(globalCtx, &this->collider, thisx, &sCylinderInit);
    this->collider.dim.yShift = 0;
    this->collider.dim.radius = 15;
    this->collider.dim.height = 70;
    switch (this->type) {
        case HEISHI4_AT_KAKRIKO_ENTRANCE:
        case HEISHI4_AT_IMPAS_HOUSE:
            this->actionFunc = func_80A56328;
            break;
        case HEISHI4_AT_MARKET_DYING:
            this->collider.dim.radius = 28;
            this->collider.dim.height = 5;
            this->actionFunc = func_80A5673C;
            break;
        case HEISHI4_AT_MARKET_NIGHT:
            this->actionFunc = func_80A56544;
            break;
    }
    this->unk_27C = ((thisx->params >> 8) & 0xFF);
    osSyncPrintf("\n\n");
    osSyncPrintf(VT_FGCOL(GREEN) " ☆☆☆☆☆ 兵士２セット完了！ ☆☆☆☆☆ %d\n" VT_RST, thisx->params);
    osSyncPrintf(VT_FGCOL(YELLOW) " ☆☆☆☆☆ 識別完了！\t    ☆☆☆☆☆ %d\n" VT_RST, this->type);
    osSyncPrintf(VT_FGCOL(PURPLE) " ☆☆☆☆☆ メッセージ完了！   ☆☆☆☆☆ %x\n\n" VT_RST, (thisx->params >> 8) & 0xF);
    osSyncPrintf("\n\n");
}

void EnHeishi4_Destroy(Actor* thisx, GlobalContext* globalCtx) {
    EnHeishi4* this = THIS;

    Collider_DestroyCylinder(globalCtx, &this->collider);
}

void func_80A56328(EnHeishi4* this, GlobalContext* globalCtx) {
    f32 frames = Animation_GetLastFrame(&D_06005C30);

    Animation_Change(&this->skelAnime, &D_06005C30, 1.0f, 0.0f, (s16)frames, 0, -10.0f);
    this->actionFunc = func_80A563BC;
}

void func_80A563BC(EnHeishi4* this, GlobalContext* globalCtx) {
    s16 reactionOffset;

    this->unk_2B4 = 0;
    reactionOffset = this->type - 4;
    if (reactionOffset < 0) {
        reactionOffset = 0;
    }
    if (reactionOffset >= 3) {
        reactionOffset = 1;
    }
    if (Text_GetFaceReaction(globalCtx, sFaceReactionSets[reactionOffset]) != 0) {
        this->actor.textId = Text_GetFaceReaction(globalCtx, sFaceReactionSets[reactionOffset]);
        this->unk_2B4 = 1;
        this->actionFunc = func_80A56B40;
    } else {
        if (gSaveContext.eventChkInf[8] & 1) {
            this->actor.textId = 0x5065;
            this->actionFunc = func_80A56B40;
            return;
        }
        if (gSaveContext.eventChkInf[4] & 0x20) {
            this->actor.textId = 0x5068;
            this->actionFunc = func_80A56B40;
            return;
        }
        if (this->type == HEISHI4_AT_IMPAS_HOUSE) {
            if (this->unk_284 == 0) {
                this->actor.textId = 0x5079;
            } else {
                this->actor.textId = 0x507A;
            }
        } else if (!gSaveContext.nightFlag) {
            if (this->unk_284 == 0) {
                this->actor.textId = 0x5063;
            } else {
                this->actor.textId = 0x5064;
            }
        } else if (this->unk_284 == 0) {
            this->actor.textId = 0x5066;
        } else {
            this->actor.textId = 0x5067;
        }

        this->actionFunc = func_80A56B40;
    }
}

void func_80A56544(EnHeishi4* this, GlobalContext* globalCtx) {
    f32 frames = Animation_GetLastFrame(&D_06005C30);

    Animation_Change(&this->skelAnime, &D_06005C30, 1.0f, 0.0f, (s16)frames, 0, -10.0f);
    if (LINK_AGE_IN_YEARS != YEARS_CHILD) {
        osSyncPrintf(VT_FGCOL(GREEN) " ☆☆☆☆☆ ぎゃぁ！オトナだー ☆☆☆☆☆ \n" VT_RST);
        Actor_Kill(&this->actor);
    } else {
        this->actionFunc = func_80A56614;
    }
}

void func_80A56614(EnHeishi4* this, GlobalContext* globalCtx) {
    s16 reactionOffset;

    reactionOffset = this->type - 4;
    this->unk_2B4 = 0;
    if (reactionOffset < 0) {
        reactionOffset = 0;
    }
    if (reactionOffset >= 3) {
        reactionOffset = 1;
    }
    if (Text_GetFaceReaction(globalCtx, sFaceReactionSets[reactionOffset]) != 0) {
        this->actor.textId = Text_GetFaceReaction(globalCtx, sFaceReactionSets[reactionOffset]);
        this->unk_2B4 = 1;
        this->actionFunc = func_80A56B40;
        return;
    }
    if (globalCtx->sceneNum == SCENE_MIHARIGOYA) {
        if (gSaveContext.nightFlag == 0) {
            this->actor.textId = 0x7004;
        } else {
            this->actor.textId = 0x709A;
        }
    } else if (globalCtx->sceneNum != SCENE_MARKET_NIGHT) {
        if (!gSaveContext.nightFlag) {
            this->actor.textId = 0x7002;
        } else {
            this->actor.textId = 0x7003;
        }
    } else {
        this->actor.textId = 0x7003;
    }

    this->actionFunc = func_80A56B40;
}

void func_80A5673C(EnHeishi4* this, GlobalContext* globalCtx) {
    if (gSaveContext.eventChkInf[4] & 0x20) {
        osSyncPrintf(VT_FGCOL(YELLOW) " ☆☆☆☆☆ マスターソード祝入手！ ☆☆☆☆☆ \n" VT_RST);
        Actor_Kill(&this->actor);
        return;
    }
    this->unk_284 = 0;
    if (gSaveContext.eventChkInf[8] & 1) {
        if (!(gSaveContext.infTable[6] & 0x1000)) {
            f32 frames = Animation_GetLastFrame(&D_0600C444);
            Animation_Change(&this->skelAnime, &D_0600C444, 1.0f, 0.0f, (s16)frames, 0, -10.0f);
            this->actor.textId = 0x7007;
            this->unk_282 = 5;
            this->unk_284 = 1;
            osSyncPrintf(VT_FGCOL(YELLOW) " ☆☆☆☆☆ デモ開始！ ☆☆☆☆☆ \n" VT_RST);
        } else {
            this->actor.textId = 0x7008;
            this->unk_282 = 6;
            osSyncPrintf(VT_FGCOL(BLUE) " ☆☆☆☆☆ 返事なし ☆☆☆☆☆ \n" VT_RST);
        }
        this->actionFunc = func_80A56874;
    } else {
        Actor_Kill(&this->actor);
    }
}

void func_80A56874(EnHeishi4* this, GlobalContext* globalCtx) {
    if (this->unk_284 != 0) {
        SkelAnime_Update(&this->skelAnime);
    }
    if (func_8002F194(&this->actor, globalCtx) != 0) {
        if (this->unk_284 == 0) {
            this->actionFunc = func_80A5673C;

        } else {
            this->actionFunc = func_80A56900;
        }
    } else {
        func_8002F2CC(&this->actor, globalCtx, 100.0f);
    }
}

void func_80A56900(EnHeishi4* this, GlobalContext* globalCtx) {
    f32 frames = Animation_GetLastFrame(&D_0600C6C8);

    Animation_Change(&this->skelAnime, &D_0600C6C8, 1.0f, 0.0f, (s16)frames, 0, -10.0f);
    this->actionFunc = func_80A56994;
}

void func_80A56994(EnHeishi4* this, GlobalContext* globalCtx) {
    SkelAnime_Update(&this->skelAnime);
    func_80038290(globalCtx, &this->actor, &this->unk_260.x, &this->unk_266.x, this->actor.posRot2.pos);
    if (this->unk_282 == func_8010BDBC(&globalCtx->msgCtx)) {
        if (func_80106BC8(globalCtx) != 0) {
            func_80106CCC(globalCtx);
            gSaveContext.infTable[6] |= 0x1000;
            func_8002DF54(globalCtx, NULL, 8);
            this->actionFunc = func_80A56A50;
        }
    }
}

void func_80A56A50(EnHeishi4* this, GlobalContext* globalCtx) {
    f32 frames = Animation_GetLastFrame(&D_0600C374);
    this->unk_288 = frames;
    Animation_Change(&this->skelAnime, &D_0600C374, 1.0f, 0.0f, frames, 2, -10.0f);
    this->actionFunc = func_80A56ACC;
}

void func_80A56ACC(EnHeishi4* this, GlobalContext* globalCtx) {
    f32 currentFrame = this->skelAnime.curFrame;

    SkelAnime_Update(&this->skelAnime);
    if (this->unk_288 <= currentFrame) {
        func_8002DF54(globalCtx, NULL, 7);
        this->actionFunc = func_80A5673C;
    }
}

void func_80A56B40(EnHeishi4* this, GlobalContext* globalCtx) {
    s16 reactionOffset;

    SkelAnime_Update(&this->skelAnime);
    reactionOffset = (this->type - 4);
    if (reactionOffset < 0) {
        reactionOffset = 0;
    }
    if (reactionOffset >= 3) {
        reactionOffset = 1;
    }
    if (Text_GetFaceReaction(globalCtx, sFaceReactionSets[reactionOffset]) != 0) {
        if (this->unk_2B4 == 0) {
            if ((this->type == HEISHI4_AT_KAKRIKO_ENTRANCE) || (this->type == HEISHI4_AT_IMPAS_HOUSE)) {
                this->actionFunc = func_80A563BC;
                return;
            }
            if (this->type == HEISHI4_AT_MARKET_NIGHT) {
                this->actionFunc = func_80A56614;
                return;
            }
        }
    } else {
        if (this->unk_2B4 != 0) {
            if ((this->type == HEISHI4_AT_KAKRIKO_ENTRANCE) || (this->type == HEISHI4_AT_IMPAS_HOUSE)) {
                this->actionFunc = func_80A563BC;
                return;
            }
            if (this->type == HEISHI4_AT_MARKET_NIGHT) {
                this->actionFunc = func_80A56614;
                return;
            }
        }
    }
    if (func_8002F194(&this->actor, globalCtx) != 0) {
        if ((this->type == HEISHI4_AT_KAKRIKO_ENTRANCE) || (this->type == HEISHI4_AT_IMPAS_HOUSE)) {
            this->unk_284 = 1;
            this->actionFunc = func_80A563BC;
            return;
        }
        if (this->type == HEISHI4_AT_MARKET_NIGHT) {
            this->actionFunc = func_80A56614;
            return;
        }
    }
    func_8002F2F4(&this->actor, globalCtx);
}

void EnHeishi4_Update(Actor* thisx, GlobalContext* globalCtx) {
    EnHeishi4* this = THIS;
    s32 pad;
    Player* player = PLAYER;

    thisx->posRot.pos.x = this->pos.x;
    thisx->posRot.pos.y = this->pos.y;
    thisx->posRot.pos.z = this->pos.z;
    Actor_SetHeight(thisx, this->height);
    if (this->type != HEISHI4_AT_MARKET_DYING) {
        this->unk_28C.unk_18 = player->actor.posRot.pos;
        if (LINK_IS_CHILD) {
            this->unk_28C.unk_18.y = (player->actor.posRot.pos.y - 10.0f);
        }
        func_80034A14(thisx, &this->unk_28C, 2, 4);
        this->unk_260 = this->unk_28C.unk_08;
        this->unk_266 = this->unk_28C.unk_0E;
    }
    this->unk_27E += 1;
    this->actionFunc(this, globalCtx);
    Actor_MoveForward(thisx);
    func_8002E4B4(globalCtx, thisx, 10.0f, 10.0f, 30.0f, 0x1D);
    Collider_CylinderUpdate(&this->actor, &this->collider);
    CollisionCheck_SetOC(globalCtx, &globalCtx->colChkCtx, &this->collider);
}

s32 EnHeishi_OverrideLimbDraw(GlobalContext* globalCtx, s32 limbIndex, Gfx** dList, Vec3f* pos, Vec3s* rot,
                              void* thisx) {
    EnHeishi4* this = THIS;

    if (limbIndex == 9) {
        rot->x += this->unk_266.y;
    }
    if (limbIndex == 16) {
        rot->x += this->unk_260.y;
        rot->z += this->unk_260.z;
    }
    return false;
}

void EnHeishi4_Draw(Actor* thisx, GlobalContext* globalCtx) {
    EnHeishi4* this = THIS;

    func_80093D18(globalCtx->state.gfxCtx);
    SkelAnime_DrawOpa(globalCtx, this->skelAnime.skeleton, this->skelAnime.jointTable, EnHeishi_OverrideLimbDraw, NULL,
                      this);
}
