/*
 * File: z_en_dnt_demo.c
 * Overlay: ovl_En_Dnt_Demo
 * Description: Forest Stage minigame
 */

#include "z_en_dnt_demo.h"

#include "overlays/actors/ovl_En_Dnt_Jiji/z_en_dnt_jiji.h"
#include "overlays/actors/ovl_En_Dnt_Nomal/z_en_dnt_nomal.h"
#include "terminal.h"

#define FLAGS 0

typedef enum EnDntDemoResults {
    /* 0 */ DNT_LIKE,
    /* 1 */ DNT_HATE,
    /* 2 */ DNT_LOVE
} EnDntDemoResults;

void EnDntDemo_Init(Actor* thisx, PlayState* play2);
void EnDntDemo_Destroy(Actor* thisx, PlayState* play);
void EnDntDemo_Update(Actor* thisx, PlayState* play);

void EnDntDemo_Judge(EnDntDemo* this, PlayState* play);
void EnDntDemo_Results(EnDntDemo* this, PlayState* play);
void EnDntDemo_Prize(EnDntDemo* this, PlayState* play);

ActorProfile En_Dnt_Demo_Profile = {
    /**/ ACTOR_EN_DNT_DEMO,
    /**/ ACTORCAT_PROP,
    /**/ FLAGS,
    /**/ OBJECT_GAMEPLAY_KEEP,
    /**/ sizeof(EnDntDemo),
    /**/ EnDntDemo_Init,
    /**/ EnDntDemo_Destroy,
    /**/ EnDntDemo_Update,
    /**/ NULL,
};

//! @bug
//! This table is missing a column for the Mask of Truth, so it reads the first value of the next row. In the last row,
//! it reads the first entry of sResultValues (4), which is an invalid result. The scrubs have no reaction in this case.
static s16 sResultTable[8][7] = {
    /* Keaton    Skull     Spooky    Bunny     Goron      Zora     Gerudo         Truth   */
    { DNT_LIKE, DNT_HATE, DNT_LIKE, DNT_HATE, DNT_LOVE, DNT_LIKE, DNT_HATE }, /* DNT_HATE */
    { DNT_HATE, DNT_LIKE, DNT_HATE, DNT_LIKE, DNT_HATE, DNT_HATE, DNT_LOVE }, /* DNT_LOVE */
    { DNT_LOVE, DNT_HATE, DNT_HATE, DNT_HATE, DNT_LIKE, DNT_LIKE, DNT_LIKE }, /* DNT_HATE */
    { DNT_HATE, DNT_LOVE, DNT_HATE, DNT_HATE, DNT_HATE, DNT_HATE, DNT_LIKE }, /* DNT_LIKE */
    { DNT_LIKE, DNT_LIKE, DNT_LOVE, DNT_LIKE, DNT_LIKE, DNT_LIKE, DNT_HATE }, /* DNT_LIKE */
    { DNT_LIKE, DNT_LIKE, DNT_LIKE, DNT_LOVE, DNT_HATE, DNT_LOVE, DNT_LIKE }, /* DNT_HATE */
    { DNT_HATE, DNT_HATE, DNT_HATE, DNT_HATE, DNT_HATE, DNT_HATE, DNT_HATE }, /* DNT_LOVE */
    { DNT_LOVE, DNT_LOVE, DNT_LOVE, DNT_LOVE, DNT_LOVE, DNT_LOVE, DNT_LOVE }, /* INVALID  */
};

static s16 sResultValues[3][2] = {
    /* DNT_LIKE */ { DNT_SIGNAL_HIDE, DNT_ACTION_LOW_RUPEES },
    /* DNT_HATE */ { DNT_SIGNAL_HIDE, DNT_ACTION_ATTACK },
    /* DNT_LOVE */ { DNT_SIGNAL_DANCE, DNT_ACTION_DANCE },
};

static Vec3f sScrubPos[] = {
    { 3810.0f, -20.0f, 1010.0f }, { 3890.0f, -20.0f, 990.0f }, { 3730.0f, -20.0f, 950.0f },
    { 3840.0f, -20.0f, 930.0f },  { 3910.0f, -20.0f, 870.0f }, { 3780.0f, -20.0f, 860.0f },
    { 3710.0f, -20.0f, 840.0f },  { 3860.0f, -20.0f, 790.0f }, { 3750.0f, -20.0f, 750.0f },
};

void EnDntDemo_Destroy(Actor* thisx, PlayState* play) {
}

void EnDntDemo_Init(Actor* thisx, PlayState* play2) {
    PlayState* play = play2;
    EnDntDemo* this = (EnDntDemo*)thisx;
    s32 i;
    s32 pad;

    PRINTF("\n\n");
    // "Deku Scrub mask show start"
    PRINTF(VT_FGCOL(GREEN) "☆☆☆☆☆ デグナッツお面品評会開始 ☆☆☆☆☆ \n" VT_RST);
    for (i = 0; i < 9; i++) {
        this->scrubPos[i] = sScrubPos[i];
        this->scrubs[i] = (EnDntNomal*)Actor_SpawnAsChild(&play->actorCtx, &this->actor, play, ACTOR_EN_DNT_NOMAL,
                                                          this->scrubPos[i].x, this->scrubPos[i].y, this->scrubPos[i].z,
                                                          0, 0, 0, i + ENDNTNOMAL_STAGE);
        if (this->scrubs[i] != NULL) {
            // "zako zako" [small fries]
            PRINTF(VT_FGCOL(GREEN) "☆☆☆☆☆ ザコザコ ☆☆☆☆☆ %x\n" VT_RST, this->scrubs[i]);
        }
    }

    this->leaderPos.x = 4050.0f;
    this->leaderPos.y = -20.0f;
    this->leaderPos.z = 1000.0f;
    this->leader = (EnDntJiji*)Actor_SpawnAsChild(&play->actorCtx, &this->actor, play, ACTOR_EN_DNT_JIJI,
                                                  this->leaderPos.x, this->leaderPos.y, this->leaderPos.z, 0, 0, 0, 0);
    if (this->leader != NULL) {
        // "jiji jiji jiji jiji jiji" [onomatopoeia for the scrub sound?]
        PRINTF(VT_FGCOL(GREEN) "☆☆☆☆☆ じじじじじじじじじじい ☆☆☆☆☆ %x\n" VT_RST, this->leader);
    }
    this->subCamId = SUB_CAM_ID_DONE;
    this->actor.flags &= ~ACTOR_FLAG_ATTENTION_ENABLED;
    this->actionFunc = EnDntDemo_Judge;
}

void EnDntDemo_Judge(EnDntDemo* this, PlayState* play) {
    s16 delay;
    s16 reaction;
    s16 rand9;
    s16 maskIdx;
    s16 resultIdx;
    u8 ignore;
    s32 i;

    if (this->leaderSignal != DNT_SIGNAL_NONE) {
        for (i = 0; i < 9; i++) {
            this->scrubs[i]->stageSignal = this->leaderSignal;
            this->scrubs[i]->action = this->action;
            this->scrubs[i]->stagePrize = DNT_PRIZE_NONE;
        }
        if (this->leader->isSolid) {
            this->leader->stageSignal = DNT_LEADER_SIGNAL_BURROW;
        }
        this->leaderSignal = DNT_SIGNAL_NONE;
        this->actionFunc = EnDntDemo_Results;
    } else if ((this->actor.xzDistToPlayer > 30.0f) || (Player_GetMask(play) == 0)) {
        this->debugArrowTimer++;
        if (this->subCamId != SUB_CAM_ID_DONE) {
            this->subCamId = SUB_CAM_ID_DONE;
        }
        if (this->judgeTimer != 0) {
            for (i = 0; i < 9; i++) {
                this->scrubs[i]->stageSignal = DNT_SIGNAL_HIDE;
            }
            this->judgeTimer = 0;
        }
    } else {
        if ((Player_GetMask(play) != 0) && (this->subCamId == SUB_CAM_ID_DONE)) {
            this->subCamId = OnePointCutscene_Init(play, 2220, -99, &this->scrubs[3]->actor, CAM_ID_MAIN);
        }
        this->debugArrowTimer = 0;
        if (this->judgeTimer == 40) {
            for (i = 0; i < 9; i++) {
                this->scrubs[i]->stageSignal = DNT_SIGNAL_LOOK;
            }
        }
        if (this->judgeTimer > 40) {
            // "gera gera" [onomatopoeia for loud giggling]
            PRINTF(VT_FGCOL(RED) "☆☆☆☆☆ げらげら ☆☆☆☆☆ \n" VT_RST);
            func_800F436C(&this->actor.projectedPos, NA_SE_EV_CROWD - SFX_FLAG, 2.0f);
        }
        if (this->judgeTimer < 120) {
            this->judgeTimer++;
        } else {
            ignore = false;
            reaction = DNT_SIGNAL_NONE;
            delay = 0;
            switch (Player_GetMask(play)) {
                case PLAYER_MASK_SKULL:
                    if (!GET_ITEMGETINF(ITEMGETINF_FOREST_STAGE_STICK_UPGRADE)) {
                        reaction = DNT_SIGNAL_CELEBRATE;
                        this->prize = DNT_PRIZE_STICK;
                        SEQCMD_PLAY_SEQUENCE(SEQ_PLAYER_BGM_MAIN, 0, 0, NA_BGM_SARIA_THEME);
                        break;
                    }
                    FALLTHROUGH;
                case PLAYER_MASK_TRUTH:
                    if (!GET_ITEMGETINF(ITEMGETINF_FOREST_STAGE_NUT_UPGRADE) &&
                        (Player_GetMask(play) != PLAYER_MASK_SKULL)) {
                        Audio_PlaySfxGeneral(NA_SE_SY_TRE_BOX_APPEAR, &gSfxDefaultPos, 4, &gSfxDefaultFreqAndVolScale,
                                             &gSfxDefaultFreqAndVolScale, &gSfxDefaultReverb);
                        this->prize = DNT_PRIZE_NUTS;
                        this->leader->stageSignal = DNT_LEADER_SIGNAL_UP;
                        reaction = DNT_SIGNAL_LOOK;
                        if (this->subCamId != SUB_CAM_ID_DONE) {
                            this->subCamId = SUB_CAM_ID_DONE;
                            reaction = DNT_SIGNAL_LOOK;
                            OnePointCutscene_Init(play, 2340, -99, &this->leader->actor, CAM_ID_MAIN);
                        }
                        break;
                    }
                    FALLTHROUGH;
                case PLAYER_MASK_KEATON:
                case PLAYER_MASK_SPOOKY:
                case PLAYER_MASK_BUNNY:
                case PLAYER_MASK_GORON:
                case PLAYER_MASK_ZORA:
                case PLAYER_MASK_GERUDO:
                    rand9 = Rand_ZeroFloat(8.99f);
                    // fake match, possible alternative is `maskIdx = Player_GetMask(play); maskIdx--;` on one line
                    maskIdx = (s16)Player_GetMask(play) - 1;
                    if (rand9 == 8) {
                        ignore = true;
                        delay = 8;
                        reaction = DNT_SIGNAL_HIDE;
                        // "Special!"
                        PRINTF(VT_FGCOL(GREEN) "☆☆☆☆☆ 特別！ ☆☆☆☆☆ \n" VT_RST);
                    } else {
                        if (maskIdx >= PLAYER_MASK_MAX - 1) {
                            // "This is dangerous!"
                            PRINTF(VT_FGCOL(GREEN) "☆☆☆☆☆ ヤバいよこれ！ ☆☆☆☆☆ \n" VT_RST);
                            PRINTF(VT_FGCOL(YELLOW) "☆☆☆☆☆ ヤバいよこれ！ ☆☆☆☆☆ \n" VT_RST);
                            PRINTF(VT_FGCOL(MAGENTA) "☆☆☆☆☆ ヤバいよこれ！ ☆☆☆☆☆ \n" VT_RST);
                            PRINTF(VT_FGCOL(CYAN) "☆☆☆☆☆ ヤバいよこれ！ ☆☆☆☆☆ \n" VT_RST);
                            maskIdx = Rand_ZeroFloat(7.99f);
                        }

                        resultIdx = sResultTable[rand9][maskIdx];
                        reaction = sResultValues[resultIdx][0];
                        this->action = sResultValues[resultIdx][1];
                        switch (this->action) {
                            case DNT_ACTION_LOW_RUPEES:
                                SEQCMD_PLAY_SEQUENCE(SEQ_PLAYER_BGM_MAIN, 0, 0, NA_BGM_COURTYARD);
                                break;
                            case DNT_ACTION_ATTACK:
                                if (this->subCamId != SUB_CAM_ID_DONE) {
                                    this->subCamId = SUB_CAM_ID_DONE;
                                    OnePointCutscene_Init(play, 2350, -99, &this->scrubs[3]->actor, CAM_ID_MAIN);
                                }
                                SEQCMD_PLAY_SEQUENCE(SEQ_PLAYER_BGM_MAIN, 0, 8, NA_BGM_ENEMY);
                                break;
                            case DNT_ACTION_DANCE:
                                SEQCMD_PLAY_SEQUENCE(SEQ_PLAYER_BGM_MAIN, 0, 0, NA_BGM_SHOP);
                                break;
                        }
                        PRINTF("\n\n");
                        // "Each index 1"
                        PRINTF(VT_FGCOL(GREEN) "☆☆☆☆☆ 各インデックス１ ☆☆☆☆☆ %d\n" VT_RST, rand9);
                        // "Each index 2"
                        PRINTF(VT_FGCOL(GREEN) "☆☆☆☆☆ 各インデックス２ ☆☆☆☆☆ %d\n" VT_RST, maskIdx);
                        // "Each index 3"
                        PRINTF(VT_FGCOL(GREEN) "☆☆☆☆☆ 各インデックス３ ☆☆☆☆☆ %d\n" VT_RST, resultIdx);
                        PRINTF("\n");
                        // "What kind of evaluation?"
                        PRINTF(VT_FGCOL(YELLOW) "☆☆☆☆☆ どういう評価？  ☆☆☆☆☆☆ %d\n" VT_RST, reaction);
                        // "What kind of action?"
                        PRINTF(VT_FGCOL(MAGENTA) "☆☆☆☆☆ どういうアクション？  ☆☆☆ %d\n" VT_RST, this->action);
                        PRINTF("\n\n");
                        break;
                    }
            }
            if (reaction != DNT_SIGNAL_NONE) {
                for (i = 0; i < 9; i++) {
                    if (delay != 0) {
                        this->scrubs[i]->timer3 = delay * i;
                    }
                    this->scrubs[i]->action = this->action;
                    this->scrubs[i]->stageSignal = reaction;
                    this->scrubs[i]->ignore = ignore;
                    if (this->prize != DNT_PRIZE_NONE) {
                        this->scrubs[i]->timer1 = 300;
                        this->scrubs[i]->stagePrize = this->prize;
                        this->scrubs[i]->targetPos = this->leader->actor.world.pos;
                        if (this->prize == DNT_PRIZE_NUTS) {
                            this->leader->stageSignal = DNT_LEADER_SIGNAL_UP;
                        }
                        if (this->prize == DNT_PRIZE_STICK) {
                            this->leader->timer = 300;
                        }
                    }
                }
                this->actionFunc = EnDntDemo_Results;
            }
        }
    }
}

void EnDntDemo_Results(EnDntDemo* this, PlayState* play) {
    s32 i;
    s16 offsetAngle;
    Vec3f leaderPos;
    f32 offsetDist;

    if (this->leaderSignal != DNT_SIGNAL_NONE) {
        for (i = 0; i < 9; i++) {
            this->scrubs[i]->action = this->action;
            this->scrubs[i]->stageSignal = this->leaderSignal;
            this->scrubs[i]->stagePrize = DNT_PRIZE_NONE;
        }
        if (this->leader->action == DNT_LEADER_ACTION_UP) {
            this->leader->stageSignal = DNT_LEADER_SIGNAL_BURROW;
        } else if (this->leader->unburrow) {
            this->leader->stageSignal = DNT_LEADER_SIGNAL_RETURN;
        } else {
            this->leader->action = DNT_LEADER_ACTION_ATTACK;
        }
        this->leader->timer = 0;
        this->leaderSignal = this->action = DNT_SIGNAL_NONE;
        this->actionFunc = EnDntDemo_Prize;
    } else if (this->prize == DNT_PRIZE_STICK) {
        for (i = 0; i < 9; i++) {
            offsetAngle = -this->leader->actor.shape.rot.y;
            leaderPos = this->leader->actor.world.pos;

            if (!(i & 1)) {
                offsetAngle -= 0x59D8;
            }
            offsetDist = ((i + 1) * 20.0f) + 20.0f;
            this->scrubs[i]->timer2 = 10;
            this->scrubs[i]->targetPos.x = leaderPos.x + Math_SinS(offsetAngle) * offsetDist;
            this->scrubs[i]->targetPos.y = leaderPos.y;
            this->scrubs[i]->targetPos.z = leaderPos.z + Math_CosS(offsetAngle) * offsetDist;
        }
    }
}

void EnDntDemo_Prize(EnDntDemo* this, PlayState* play) {
    s32 i;

    if (this->leaderSignal != DNT_SIGNAL_NONE) {
        for (i = 0; i < 9; i++) {
            this->scrubs[i]->action = this->action;
            this->scrubs[i]->stageSignal = this->leaderSignal;
            this->scrubs[i]->stagePrize = DNT_PRIZE_NONE;
        }
        this->leaderSignal = this->action = DNT_SIGNAL_NONE;
    }
}

void EnDntDemo_Update(Actor* thisx, PlayState* play) {
    s32 pad;
    EnDntDemo* this = (EnDntDemo*)thisx;

    if (this->unkTimer2 != 0) {
        this->unkTimer2--;
    }
    if (this->unkTimer1 != 0) {
        this->unkTimer1--;
    }
    this->actionFunc(this, play);

    if (DEBUG_FEATURES && BREG(0) != 0) {
        if (this->debugArrowTimer != 0) {
            if (!(this->debugArrowTimer & 1)) {
                DebugDisplay_AddObject(this->actor.world.pos.x, this->actor.world.pos.y, this->actor.world.pos.z,
                                       this->actor.world.rot.x, this->actor.world.rot.y, this->actor.world.rot.z, 1.0f,
                                       1.0f, 1.0f, 120, 120, 0, 255, 4, play->state.gfxCtx);
            }
        } else {
            DebugDisplay_AddObject(this->actor.world.pos.x, this->actor.world.pos.y, this->actor.world.pos.z,
                                   this->actor.world.rot.x, this->actor.world.rot.y, this->actor.world.rot.z, 1.0f,
                                   1.0f, 1.0f, 255, 255, 255, 255, 4, play->state.gfxCtx);
        }
    }
}
