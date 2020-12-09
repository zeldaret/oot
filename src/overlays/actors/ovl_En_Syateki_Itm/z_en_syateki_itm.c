#include "z_en_syateki_itm.h"
#include "vt.h"
#include "overlays/actors/ovl_En_Syateki_Man/z_en_syateki_man.h"
#include "overlays/actors/ovl_En_Ex_Ruppy/z_en_ex_ruppy.h"
#include "overlays/actors/ovl_En_G_Switch/z_en_g_switch.h"

#define FLAGS 0x00000010

#define THIS ((EnSyatekiItm*)thisx)

void EnSyatekiItm_Init(Actor* thisx, GlobalContext* globalCtx);
void EnSyatekiItm_Destroy(Actor* thisx, GlobalContext* globalCtx);
void EnSyatekiItm_Update(Actor* thisx, GlobalContext* globalCtx);

void EnSyatekiItm_Idle(EnSyatekiItm* this, GlobalContext* globalCtx);
void EnSyatekiItm_StartRound(EnSyatekiItm* this, GlobalContext* globalCtx);
void EnSyatekiItm_SpawnTargets(EnSyatekiItm* this, GlobalContext* globalCtx);
void EnSyatekiItm_CheckTargets(EnSyatekiItm* this, GlobalContext* globalCtx);
void EnSyatekiItm_CleanupGame(EnSyatekiItm* this, GlobalContext* globalCtx);
void EnSyatekiItm_EndGame(EnSyatekiItm* this, GlobalContext* globalCtx);

const ActorInit En_Syateki_Itm_InitVars = {
    ACTOR_EN_SYATEKI_ITM,
    ACTORTYPE_PROP,
    FLAGS,
    OBJECT_GAMEPLAY_KEEP,
    sizeof(EnSyatekiItm),
    (ActorFunc)EnSyatekiItm_Init,
    (ActorFunc)EnSyatekiItm_Destroy,
    (ActorFunc)EnSyatekiItm_Update,
    NULL,
};

Vec3f D_80B10240 = { 0.0f, -10.0f, -270.0f };
Vec3f D_80B1024C = { -220.0f, 66.0f, -320.0f };
Vec3f D_80B10258 = { 260.0f, 66.0f, -320.0f };
Vec3f D_80B10264 = { 0.0f, -10.0f, -270.0f };
Vec3f D_80B10270 = { -220.0f, 66.0f, -320.0f };
Vec3f D_80B1027C = { 260.0f, 66.0f, -320.0f };
Vec3f D_80B10288 = { 260.0f, 100.0f, -320.0f };
Vec3f D_80B10294 = { 360.0f, 100.0f, -320.0f };
Vec3f D_80B102A0 = { -230.0f, 94.0f, -360.0f };
Vec3f D_80B102AC = { -400.0f, 94.0f, -360.0f };
Vec3f D_80B102B8 = { 0.0f, 53.0f, -270.0f };
Vec3f D_80B102C4 = { -60.0f, 63.0f, -320.0f };
Vec3f D_80B102D0 = { 60.0f, 63.0f, -320.0f };
Vec3f D_80B102DC = { 0.0f, 0.0f, 0.0f };
Vec3f D_80B102E8 = { -60.0f, 63.0f, -320.0f };
Vec3f D_80B102F4 = { 60.0f, 63.0f, -320.0f };
Vec3f D_80B10300 = { -230.0f, 0.0f, 0.0f };
Vec3f D_80B1030C = { -230.0f, 0.0f, 0.0f };
Vec3f D_80B10318 = { 260.0f, 0.0f, 0.0f };
Vec3f D_80B10324 = { 260.0f, 0.0f, 0.0f };
s16 D_80B10330[] = { 0, 1, 0, 1, 2, 2 };
static s16 sRupeeTypes[] = { 0, 1, 1, 0, 1, 1, 4, 4, 4, 4 };
static Vec3f sRupeePos[] = {
    { -40.0f, 0.0f, -90.0f }, { -20.0f, 0.0f, -90.0f }, { 0.0f, 0.0f, -90.0f },   { 20.0f, 0.0f, -90.0f },
    { 40.0f, 0.0f, -90.0f },  { -40.0f, 0.0f, -60.0f }, { -20.0f, 0.0f, -60.0f }, { 0.0f, 0.0f, -60.0f },
    { 20.0f, 0.0f, -60.0f },  { 40.0f, 0.0f, -60.0f },
};

void EnSyatekiItm_Init(Actor* thisx, GlobalContext* globalCtx2) {
    GlobalContext* globalCtx = globalCtx2;
    EnSyatekiItm* this = THIS;
    s32 i;

    this->man = (EnSyatekiMan*)Actor_SpawnAsChild(&globalCtx->actorCtx, &this->actor, globalCtx, ACTOR_EN_SYATEKI_MAN,
                                                  140.0f, 0.0f, 255.0f, 0, -0x4000, 0, 0);
    if (this->man == NULL) {
        // Spawn error
        osSyncPrintf(VT_FGCOL(GREEN) "☆☆☆☆☆ エラー原 ☆☆☆☆ \n" VT_RST);
        Actor_Kill(&this->actor);
        return;
    }
    for (i = 0; i < 10; i++) {
        this->markers[i] = (EnExRuppy*)Actor_SpawnAsChild(&globalCtx->actorCtx, &this->actor, globalCtx, 0x131,
                                                         sRupeePos[i].x, sRupeePos[i].y, sRupeePos[i].z, 0, 0, 0, 4);
        if (this->markers[i] == NULL) {
            // Second spawn error
            osSyncPrintf(VT_FGCOL(YELLOW) "☆☆☆☆☆ エラー原セカンド ☆☆☆☆ \n" VT_RST);
            Actor_Kill(&this->actor);
            return;
        }
        this->markers[i]->colorIdx = sRupeeTypes[i];
    }
    this->actionFunc = EnSyatekiItm_Idle;
}

void EnSyatekiItm_Destroy(Actor* thisx, GlobalContext* globalCtx) {
}

void EnSyatekiItm_Idle(EnSyatekiItm* this, GlobalContext* globalCtx) {
    s32 i;
    Player* player = PLAYER;

    if (this->signal == ENSYATEKI_START) {
        player->actor.posRot.pos.x = -12.0f;
        player->actor.posRot.pos.y = 20.0f;
        player->actor.posRot.pos.z = 182.0f;
        player->currentYaw = player->actor.posRot.rot.y = player->actor.shape.rot.y = 0x7F03;
        player->actor.posRot.rot.x = player->actor.shape.rot.x = player->actor.posRot.rot.z =
            player->actor.shape.rot.z = 0;
        func_8008EF44(globalCtx, 15);
        this->roundNum = this->hitCount = 0;
        for (i = 0; i < 6; i++) {
            this->roundFlags[i] = false;
        }
        for (i = 0; i < 10; i++) {
            this->markers[i]->galleryFlag = false;
        }
        this->actionFunc = EnSyatekiItm_StartRound;
    }
}

#ifndef NON_MATCHING
// roundFlags[i] should be recalculated after the while loop
void EnSyatekiItm_StartRound(EnSyatekiItm* this, GlobalContext* globalCtx) {
    s32 i;
    s32 j;
    Player* player = PLAYER;

    if (this->unkTimer == 0) {
        if (gSaveContext.linkAge == 0) {
            for (i = 0, j = 0; i < 6; i++) {
                if (this->roundFlags[i]) {
                    j++;
                }
            }
            if (j >= 6) {
                player->actor.freezeTimer = 10;
                this->signal = ENSYATEKI_END;
                this->actionFunc = EnSyatekiItm_CleanupGame;
                return;
            }
            i = Math_Rand_ZeroFloat(5.99f);
            while (this->roundFlags[i]) {
                i = Math_Rand_ZeroFloat(5.99f);
            }
            this->roundNum = i + 1;
            this->roundFlags[i] = true;
        } else {
            this->roundNum++;
            if (this->roundNum > 6) {
                player->actor.freezeTimer = 10;
                this->signal = ENSYATEKI_END;
                this->actionFunc = EnSyatekiItm_CleanupGame;
                return;
            }
        }

        this->timer = (this->roundNum == 1) ? 50 : 30;

        func_80078884(NA_SE_SY_FOUND);
        this->actionFunc = EnSyatekiItm_SpawnTargets;
    }
}
#else
#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Syateki_Itm/func_80B0F944.s")
#endif

#ifndef NON_MATCHING
// strange saved register behavior near the first if block
void EnSyatekiItm_SpawnTargets(EnSyatekiItm* this, GlobalContext* globalCtx) {
    Player* player = PLAYER;
    Vec3f zeroVec = {0.0f, 0.0f, 0.0f};
    s32 i;
    s32 roundIdx;

    if (globalCtx->shootingGalleryAmmo == -1) {
        player->actor.freezeTimer = 10;
        this->signal = ENSYATEKI_END;
        this->actionFunc = EnSyatekiItm_CleanupGame;
        return;
    }
    if (this->timer == 0) {
        for (i = 0; i < 2; i++) {
            Math_Vec3f_Copy(&this->targetHome[i], &zeroVec);
            Math_Vec3f_Copy(&this->targetFinal[i], &zeroVec);
            this->targets[i] = NULL;
        }
        this->numTargets = 2;
        this->curMarkers[0] = this->curMarkers[1] = NULL;
        roundIdx = this->roundNum - 1;

        switch (roundIdx) {
            case 0:
                Math_Vec3f_Copy(&this->targetHome[0], &D_80B10240);
                Math_Vec3f_Copy(&this->targetFinal[0], &D_80B102B8);
                this->curMarkers[0] = this->markers[0];
                this->numTargets = 1;
                break;
            case 1:
                Math_Vec3f_Copy(&this->targetHome[0], &D_80B1024C);
                Math_Vec3f_Copy(&this->targetHome[1], &D_80B10258);
                Math_Vec3f_Copy(&this->targetFinal[0], &D_80B102C4);
                Math_Vec3f_Copy(&this->targetFinal[1], &D_80B102D0);
                this->curMarkers[0] = this->markers[1];
                this->curMarkers[1] = this->markers[2];
                break;
            case 2:
                Math_Vec3f_Copy(&this->targetHome[0], &D_80B10264);
                Math_Vec3f_Copy(&this->targetFinal[0], &D_80B102DC);
                this->curMarkers[0] = this->markers[3];
                this->numTargets = 1;
                break;
            case 3:
                Math_Vec3f_Copy(&this->targetHome[0], &D_80B10270);
                Math_Vec3f_Copy(&this->targetHome[1], &D_80B1027C);
                Math_Vec3f_Copy(&this->targetFinal[0], &D_80B102E8);
                Math_Vec3f_Copy(&this->targetFinal[1], &D_80B102F4);
                this->curMarkers[0] = this->markers[4];
                this->curMarkers[1] = this->markers[5];
                break;
            case 4:
                Math_Vec3f_Copy(&this->targetHome[0], &D_80B10288);
                Math_Vec3f_Copy(&this->targetHome[1], &D_80B10294);
                Math_Vec3f_Copy(&this->targetFinal[0], &D_80B10300);
                Math_Vec3f_Copy(&this->targetFinal[1], &D_80B1030C);
                this->curMarkers[0] = this->markers[6];
                this->curMarkers[1] = this->markers[7];
                break;
            case 5:
                Math_Vec3f_Copy(&this->targetHome[0], &D_80B102A0);
                Math_Vec3f_Copy(&this->targetHome[1], &D_80B102AC);
                Math_Vec3f_Copy(&this->targetFinal[0], &D_80B10318);
                Math_Vec3f_Copy(&this->targetFinal[1], &D_80B10324);
                this->curMarkers[0] = this->markers[8];
                this->curMarkers[1] = this->markers[9];
                break;
        }
        
        for (i = 0; i < this->numTargets; i++) {
            this->targets[i] = (EnGSwitch*)Actor_SpawnAsChild(&globalCtx->actorCtx, &this->actor, globalCtx,
                                                              ACTOR_EN_G_SWITCH, this->targetHome[i].x, this->targetHome[i].y,
                                                              this->targetHome[i].z, 0, 0, 0, (ENGSWITCH_TARGET_RUPEE << 0xC) | 0x3F);
            if (this->targets[i] == NULL) {
                // Rupee spawn error
                osSyncPrintf(VT_FGCOL(GREEN) "☆☆☆☆☆ ルピーでエラー原 ☆☆☆☆ \n" VT_RST);
                Actor_Kill(&this->actor);
                return;
            }
            this->targets[i]->index = i;
            this->targets[i]->colorIdx = D_80B10330[roundIdx];
            Math_Vec3f_Copy(&this->targets[i]->targetPos, &this->targetFinal[i]);
            switch (roundIdx) {
                case 1:
                    if (i == 1) {
                        this->targets[i]->delayTimer = 60;
                    }
                    break;
                case 2:
                    this->targets[i]->actor.velocity.y = 15.0f;
                    this->targets[i]->actor.gravity = -1.0f;
                    this->targets[i]->moveMode = GSWITCH_THROW;
                    break;
                case 4:
                    this->targets[i]->actor.velocity.x = -5.0f;
                    this->targets[i]->moveMode = GSWITCH_LEFT;
                    break;
                case 5:
                    this->targets[i]->actor.velocity.x = 7.0f;
                    this->targets[i]->moveMode = GSWITCH_RIGHT;
                    break;
            }
        }
        this->targetState[0] = this->targetState[1] = ENSYATEKIHIT_NONE;
        this->actionFunc = EnSyatekiItm_CheckTargets;
    }
}
#else
Vec3f D_80B103C8 = { 0.0f, 0.0f, 0.0f };
#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Syateki_Itm/func_80B0FABC.s")
#endif

void EnSyatekiItm_CheckTargets(EnSyatekiItm* this, GlobalContext* globalCtx) {
    Player* player = PLAYER;
    s32 i;
    s16 j;

    if (globalCtx->shootingGalleryAmmo == -1) {
        player->actor.freezeTimer = 10;
        this->signal = ENSYATEKI_END;
        this->actionFunc = EnSyatekiItm_CleanupGame;
    } else {
        for (i = 0, j = 0; i < 2; i++) {
            if (this->targetState[i] != ENSYATEKIHIT_NONE) {
                if (this->targetState[i] == ENSYATEKIHIT_HIT) {
                    this->curMarkers[i]->galleryFlag = true;
                }
                j++;
            }
        }
        if (j == this->numTargets) {
            this->actionFunc = EnSyatekiItm_StartRound;
        }
    }
}

void EnSyatekiItm_CleanupGame(EnSyatekiItm* this, GlobalContext* globalCtx) {
    s32 i;

    for (i = 0; i < 2; i++) {
        if ((this->targetState[i] == ENSYATEKIHIT_NONE) && (this->targets[i] != NULL)) {
            Actor_Kill(&this->targets[i]->actor);
        }
    }
    this->actionFunc = EnSyatekiItm_EndGame;
}

void EnSyatekiItm_EndGame(EnSyatekiItm* this, GlobalContext* globalCtx) {
    Player* player = PLAYER;

    player->actor.freezeTimer = 10;
    if (this->signal == ENSYATEKI_RESULTS) {
        this->signal = ENSYATEKI_NONE;
        this->actionFunc = EnSyatekiItm_Idle;
    }
    if (this->signal == ENSYATEKI_START) {
        // 1 frame attack and defense!
        osSyncPrintf(VT_FGCOL(RED) "☆☆☆☆☆ １フレームの攻防！ ☆☆☆☆ \n" VT_RST);
        osSyncPrintf(VT_FGCOL(RED) "☆☆☆☆☆ １フレームの攻防！ ☆☆☆☆ \n" VT_RST);
        osSyncPrintf(VT_FGCOL(RED) "☆☆☆☆☆ １フレームの攻防！ ☆☆☆☆ \n" VT_RST);
        osSyncPrintf(VT_FGCOL(RED) "☆☆☆☆☆ １フレームの攻防！ ☆☆☆☆ \n" VT_RST);
        osSyncPrintf(VT_FGCOL(RED) "☆☆☆☆☆ １フレームの攻防！ ☆☆☆☆ \n" VT_RST);
        osSyncPrintf(VT_FGCOL(RED) "☆☆☆☆☆ １フレームの攻防！ ☆☆☆☆ \n" VT_RST);
        osSyncPrintf(VT_FGCOL(RED) "☆☆☆☆☆ １フレームの攻防！ ☆☆☆☆ \n" VT_RST);
        osSyncPrintf(VT_FGCOL(RED) "☆☆☆☆☆ １フレームの攻防！ ☆☆☆☆ \n" VT_RST);
        osSyncPrintf(VT_FGCOL(RED) "☆☆☆☆☆ １フレームの攻防！ ☆☆☆☆ \n" VT_RST);
        osSyncPrintf(VT_FGCOL(RED) "☆☆☆☆☆ １フレームの攻防！ ☆☆☆☆ \n" VT_RST);
        this->signal = ENSYATEKI_NONE;
        this->actionFunc = EnSyatekiItm_Idle;
    }
}

void EnSyatekiItm_Update(Actor* thisx, GlobalContext* globalCtx) {
    s32 pad;
    EnSyatekiItm* this = THIS;

    this->actionFunc(this, globalCtx);

    if (this->timer != 0) {
        this->timer--;
    }
    if (this->unkTimer != 0) {
        this->unkTimer--;
    }
    if (BREG(0)) {
        DebugDisplay_AddObject(this->actor.posRot.pos.x, this->actor.posRot.pos.y, this->actor.posRot.pos.z,
                               this->actor.posRot.rot.x, this->actor.posRot.rot.y, this->actor.posRot.rot.z, 1.0f, 1.0f,
                               1.0f, 0xFF, 0, 0, 255, 4, globalCtx->state.gfxCtx);
    }
}
