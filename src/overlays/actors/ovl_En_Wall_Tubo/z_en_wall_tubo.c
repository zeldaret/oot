/*
 * File: z_en_wall_tubo.c
 * Overlay: ovl_En_Wall_Tubo
 * Description: Bombchu Bowling Alley Wall 2
 */
// Bombchu Bowling Alley Bullseyes/Pits

#include "z_en_wall_tubo.h"
#include "vt.h"
#include "overlays/actors/ovl_En_Bom_Chu/z_en_bom_chu.h"
#include "overlays/actors/ovl_Bg_Bowl_Wall/z_bg_bowl_wall.h"

#define FLAGS 0x00000010

#define THIS ((EnWallTubo*)thisx)

void EnWallTubo_Init(Actor* thisx, GlobalContext* globalCtx);
void EnWallTubo_Destroy(Actor* thisx, GlobalContext* globalCtx);
void EnWallTubo_Update(Actor* thisx, GlobalContext* globalCtx);

void EnWallTubo_FindGirl(EnWallTubo* this, GlobalContext* globalCtx);
void EnWallTubo_DetectChu(EnWallTubo* this, GlobalContext* globalCtx);
void EnWallTubo_SetWallFall(EnWallTubo* this, GlobalContext* globalCtx);

const ActorInit En_Wall_Tubo_InitVars = {
    ACTOR_EN_WALL_TUBO,
    ACTORTYPE_PROP,
    FLAGS,
    OBJECT_GAMEPLAY_KEEP,
    sizeof(EnWallTubo),
    (ActorFunc)EnWallTubo_Init,
    (ActorFunc)EnWallTubo_Destroy,
    (ActorFunc)EnWallTubo_Update,
    NULL,
};

// #pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Wall_Tubo/EnWallTubo_Init.s")
void EnWallTubo_Init(Actor* thisx, GlobalContext* globalCtx) {
    EnWallTubo* this = THIS;

    osSyncPrintf("\n\n");
    osSyncPrintf(VT_FGCOL(YELLOW) "☆☆☆☆☆ 壁のツボ ☆☆☆☆☆ \n" VT_RST); // WALL TARGET
    this->unk_164 = this->actor.posRot.pos;
    this->actionFunc = EnWallTubo_FindGirl;
}

// #pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Wall_Tubo/EnWallTubo_Destroy.s")
void EnWallTubo_Destroy(Actor* thisx, GlobalContext* globalCtx) {
}

// #pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Wall_Tubo/func_80B2EE5C.s")
void EnWallTubo_FindGirl(EnWallTubo* this, GlobalContext* globalCtx) {
    Actor* lookForGirl;

    lookForGirl = globalCtx->actorCtx.actorList[ACTORTYPE_NPC].first;
    while (lookForGirl != NULL) {
        if (lookForGirl->id != ACTOR_EN_BOM_BOWL_MAN) {
            lookForGirl = lookForGirl->next;
        } else {
            this->chuGirl = (EnBomBowlMan*)lookForGirl;
            break;
        }
    }
    this->actionFunc = EnWallTubo_DetectChu;
}

// #pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Wall_Tubo/EnWallTubo_DetectChu.s")
void EnWallTubo_DetectChu(EnWallTubo* this, GlobalContext* globalCtx) {
    EnBomChu* chu;
    // EnBomBowlMan* temp_a2;
    s32 pad; // Either goes here, or at the bottom if we retain the temp_a2
    Vec3f effectAccel = { 0.0f, 0.1f, 0.0f }; // D_80B2F340
    Vec3f effectVelocity = { 0.0f, 0.0f, 0.0f }; // D_80B2F34C
    Vec3f dpos;
    s16 quakeIndex;

    // temp_a2 = this->girl;
    // temp = temp_a2->unk_258;
    if (this->chuGirl->minigamePlayStatus != 0) {
        if (globalCtx->cameraPtrs[0]->setting == 0x15) {
            chu = (EnBomChu*)globalCtx->actorCtx.actorList[ACTORTYPE_EXPLOSIVES].first;
            while (chu != NULL) {
                if ((&chu->actor == &this->actor) || (chu->actor.id != ACTOR_EN_BOM_CHU)) {
                    chu = (EnBomChu*)chu->actor.next;
                    continue;
                }
                dpos.x = chu->actor.posRot.pos.x - this->actor.posRot.pos.x;
                dpos.y = chu->actor.posRot.pos.y - this->actor.posRot.pos.y;
                dpos.z = chu->actor.posRot.pos.z - this->actor.posRot.pos.z;
                if (((fabsf(dpos.x) < 40.0f) || (BREG(2))) && ((fabsf(dpos.y) < 40.0f) || (BREG(2))) &&
                    (fabsf(dpos.z) < 40.0f || (BREG(2)))) {
                    this->chuGirl->wallStatus[this->actor.params] = 1; // or replace with temp_a2
                    chu->unk_150 = 2;
                    func_80078884(NA_SE_SY_TRE_BOX_APPEAR);
                    this->timer = 60;
                    EffectSsBomb2_SpawnLayered(globalCtx, &this->explosionCenter, &effectVelocity, &effectAccel, 200, 40);
                    quakeIndex = Quake_Add(globalCtx->cameraPtrs[globalCtx->activeCamera], 1);
                    Quake_SetSpeed(quakeIndex, 0x7FFF);
                    Quake_SetQuakeValues(quakeIndex, 100, 0, 0, 0);
                    Quake_SetCountdown(quakeIndex, 100);
                    this->actionFunc = EnWallTubo_SetWallFall;
                    break;
                } else {
                    chu = (EnBomChu*)chu->actor.next;
                }
            }
        }
    }
}

// #pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Wall_Tubo/func_80B2F0B8.s")
void EnWallTubo_SetWallFall(EnWallTubo* this, GlobalContext* globalCtx) {
    BgBowlWall* wall;
    Vec3f effectAccel = { 0.0f, 0.1f, 0.0f }; // D_80B2F358
    Vec3f effectVelocity = { 0.0f, 0.0f, 0.0f }; // D_80B2F364
    Vec3f effectPos;

    if ((globalCtx->gameplayFrames & 1) == 0) {
        effectPos.x = Math_Rand_CenteredFloat(300.0f) + this->explosionCenter.x;
        effectPos.y = Math_Rand_CenteredFloat(300.0f) + this->explosionCenter.y;
        effectPos.z = this->explosionCenter.z;
        EffectSsBomb2_SpawnLayered(globalCtx, &effectPos, &effectVelocity, &effectAccel, 100, 30);
        EffectSsHahen_SpawnBurst(globalCtx, &effectPos, 10.0f, 0, 50, 15, 3, -1, 10, 0);
        Audio_PlayActorSound2(&this->actor, NA_SE_IT_BOMB_EXPLOSION);
    }
    if (this->timer == 0) {
        wall = (BgBowlWall*)this->actor.parent;
        if ((wall != NULL) && (wall->dyna.actor.update != 0)) {
            wall->isHit = 1;
            osSyncPrintf(VT_FGCOL(GREEN) "☆☆☆☆ やった原！ ☆☆☆☆☆ \n" VT_RST);
            osSyncPrintf(VT_FGCOL(YELLOW) "☆☆☆☆ やった原！ ☆☆☆☆☆ \n" VT_RST);
            osSyncPrintf(VT_FGCOL(BLUE) "☆☆☆☆ やった原！ ☆☆☆☆☆ \n" VT_RST);
            osSyncPrintf(VT_FGCOL(PURPLE) "☆☆☆☆ やった原！ ☆☆☆☆☆ \n" VT_RST);
            osSyncPrintf(VT_FGCOL(CYAN) "☆☆☆☆ やった原！ ☆☆☆☆☆ \n" VT_RST);
            //  YOU DID IT FIELD! (repeated 5 times)
        }
        Actor_Kill(&this->actor);
    }
}

// #pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Wall_Tubo/EnWallTubo_Update.s")
void EnWallTubo_Update(Actor* thisx, GlobalContext* globalCtx) {
    EnWallTubo* this = THIS;

    if (this->timer != 0) {
        this->timer--;
    }
    this->actionFunc(this, globalCtx);
    if (BREG(0)) {
        DebugDisplay_AddObject(this->actor.posRot.pos.x, this->actor.posRot.pos.y, this->actor.posRot.pos.z,
                               this->actor.posRot.rot.x, this->actor.posRot.rot.y, this->actor.posRot.rot.z, 1.0f, 1.0f,
                               1.0f, 0, 0, 0xFF, 0xFF, 4, globalCtx->state.gfxCtx);
    }
}
