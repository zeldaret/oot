/*
 * File: z_en_nwc.c
 * Overlay: ovl_En_Nwc
 * Description: Cluster of cucco chicks. Unfinished.
 */

#include "z_en_nwc.h"

#define FLAGS 0x00000030

#define THIS ((EnNwc*)thisx)

void EnNwc_Init(Actor* thisx, GlobalContext* globalCtx);
void EnNwc_Destroy(Actor* thisx, GlobalContext* globalCtx);
void EnNwc_Update(Actor* thisx, GlobalContext* globalCtx);
void EnNwc_Draw(Actor* thisx, GlobalContext* globalCtx);

void EnNwc_SetUpdate(EnNwc* this, EnNwcUpdateFunc updateFunc);
void EnNwc_ChickNoop(EnNwcChick* chick, EnNwc* this, GlobalContext* globalCtx);
void EnNwc_ChickBgCheck(EnNwcChick* chick, GlobalContext* globalCtx);
void EnNwc_ChickFall(EnNwcChick* chick, EnNwc* this, GlobalContext* globalCtx);
void EnNwc_UpdateChicks(EnNwc* this, GlobalContext* globalCtx);
void EnNwc_DrawChicks(EnNwc* this, GlobalContext* globalCtx);
void EnNwc_Idle(EnNwc* this, GlobalContext* globalCtx);

#define CHICK_BG_FLOOR (1 << 0)
#define CHICK_BG_WALL (1 << 1)

typedef enum { CHICK_NONE, CHICK_NORMAL } ChickTypes;

extern Gfx D_06000840[];
extern Gfx D_060008B0[];
extern Gfx D_06000BF0[];
extern Gfx D_06000C68[];
extern Gfx D_06000C88[];
extern Gfx D_06000CE0[];
extern Gfx D_06000D10[];
extern Gfx D_06000D50[];

const ActorInit En_Nwc_InitVars = {
    ACTOR_EN_NWC,
    ACTORTYPE_PROP,
    FLAGS,
    OBJECT_NWC,
    sizeof(EnNwc),
    (ActorFunc)EnNwc_Init,
    (ActorFunc)EnNwc_Destroy,
    (ActorFunc)EnNwc_Update,
    (ActorFunc)EnNwc_Draw,
};

static ColliderJntSphItemInit sJntSphElementInit = {
    { 0x01, { 0x00000000, 0x00, 0x00 }, { 0xFFCFFFFF, 0x00, 0x00 }, 0x00, 0x01, 0x00 },
    { 0, { { 0, 0, 0 }, 10 }, 100 },
};

static ColliderJntSphInit_Set3 sJntSphInit = {
    { COLTYPE_UNK3, 0x00, 0x09, 0x39, COLSHAPE_JNTSPH },
    16,
    NULL,
};

void EnNwc_SetUpdate(EnNwc* this, EnNwcUpdateFunc updateFunc) {
    this->updateFunc = updateFunc;
}

void EnNwc_ChickNoop(EnNwcChick* chick, EnNwc* this, GlobalContext* globalCtx) {
}

void EnNwc_ChickBgCheck(EnNwcChick* chick, GlobalContext* globalCtx) {
    CollisionPoly* outPoly;
    s32 bgId;
    Vec3f outPos;
    f32 dy;

    chick->bgFlags &= ~CHICK_BG_WALL & ~CHICK_BG_FLOOR;
    outPos.x = chick->pos.x;
    outPos.y = chick->pos.y;
    outPos.z = chick->pos.z;
    if (func_8003D464(&globalCtx->colCtx, &outPos, &chick->pos, &chick->lastPos, 10.0f, &chick->floorPoly, 20.0f)) {
        chick->bgFlags |= CHICK_BG_WALL;
    }
    //! @bug The use of outPos here is totally wrong. Even if it didn't get overwritten
    //       by the wall check, it should add an offset to the y-value so the raycast
    //       doesn't go through the floor and cause the chicks to ignore all floors.
    chick->floorY = func_8003C940(&globalCtx->colCtx, &outPoly, &bgId, &outPos);
    dy = chick->floorY - chick->pos.y;
    if ((0.0f <= dy) && (dy < 40.0f)) {
        chick->pos.y = chick->floorY;
        chick->bgFlags |= CHICK_BG_FLOOR;
    }
}

void EnNwc_ChickFall(EnNwcChick* chick, EnNwc* this, GlobalContext* globalCtx) {
    chick->velY -= 0.1f;
    if (chick->velY < -10.0f) {
        chick->velY = -10.0f;
    }
    chick->pos.y += chick->velY;
    EnNwc_ChickBgCheck(chick, globalCtx);
    if (chick) {} // Needed for matching. Possibly from remnant of unfinished code?
}

void EnNwc_UpdateChicks(EnNwc* this, GlobalContext* globalCtx) {
    static EnNwcChickFunc chickActionFuncs[] = { EnNwc_ChickNoop, EnNwc_ChickFall };
    EnNwcChick* chick = this->chicks;
    ColliderJntSphItem* element = this->collider.list;
    Vec3f prevChickPos;
    s32 i;
    f32 test;

    prevChickPos.y = 99999.9f;
    for (i = 0; i < this->count; i++, prevChickPos = chick->pos, chick++, element++) {
        Math_Vec3f_Copy(&chick->lastPos, &chick->pos);

        chickActionFuncs[chick->type](chick, this, globalCtx);

        element->dim.worldSphere.center.x = chick->pos.x;
        element->dim.worldSphere.center.y = chick->pos.y;
        element->dim.worldSphere.center.z = chick->pos.z;

        test = chick->pos.y - prevChickPos.y;
        if (fabsf(test) < 10.0f) {
            f32 dx = chick->pos.x - prevChickPos.x;
            f32 dz = chick->pos.z - prevChickPos.z;

            test = SQ(dx) + SQ(dz);
            if (test < SQ(10.0f)) {
                if (test != 0.0f) {
                    chick->pos.x += dx / sqrtf(test);
                    chick->pos.z += dz / sqrtf(test);
                } else {
                    chick->pos.x += 1.0f;
                    chick->pos.z += 1.0f;
                }
            }
        }
    }
}

void EnNwc_DrawChicks(EnNwc* this, GlobalContext* globalCtx) {
    s32 i;
    Gfx* dList1;
    Gfx* dList2;
    Gfx* dList3;
    MtxF floorMat;
    EnNwcChick* chick;

    OPEN_DISPS(globalCtx->state.gfxCtx, "../z_en_nwc.c", 316);
    func_80093C80(globalCtx);

    dList1 = POLY_XLU_DISP;
    dList2 = dList1 + 3 * this->count + 1;
    dList3 = dList2 + 2 * this->count + 1;

    gSPDisplayList(dList1++, D_06000840);
    gSPDisplayList(dList2++, D_06000BF0);
    gSPDisplayList(dList3++, D_06000C88);

    chick = this->chicks;
    for (i = 0; i < this->count; i++, chick++) {
        if (chick->type != CHICK_NONE) {
            Mtx* mtx;

            func_800D1694(chick->pos.x, chick->pos.y + chick->height, chick->pos.z, &chick->rot);
            Matrix_Scale(0.01f, 0.01f, 0.01f, MTXMODE_APPLY);
            mtx = Matrix_NewMtx(globalCtx->state.gfxCtx, "../z_en_nwc.c", 346);
            gDPSetEnvColor(dList1++, 0, 100, 255, 255);
            gSPMatrix(dList1++, mtx, G_MTX_NOPUSH | G_MTX_LOAD | G_MTX_MODELVIEW);
            gSPDisplayList(dList1++, D_060008B0);
            gSPMatrix(dList2++, mtx, G_MTX_NOPUSH | G_MTX_LOAD | G_MTX_MODELVIEW);
            gSPDisplayList(dList2++, D_06000C68);
            gSPMatrix(dList3++, mtx, G_MTX_NOPUSH | G_MTX_LOAD | G_MTX_MODELVIEW);
            gSPDisplayList(dList3++, D_06000CE0);
        }
    }

    chick = this->chicks;
    POLY_XLU_DISP = dList3;
    func_80094044(globalCtx->state.gfxCtx);
    gSPDisplayList(POLY_XLU_DISP++, D_06000D10);

    for (i = 0; i < this->count; i++, chick++) {
        if ((chick->type != CHICK_NONE) && (chick->floorPoly != NULL)) {
            func_80038A28(chick->floorPoly, chick->pos.x, chick->floorY, chick->pos.z, &floorMat);
            Matrix_Put(&floorMat);
            Matrix_RotateY(chick->rot.y * (M_PI / 0x8000), MTXMODE_APPLY);
            Matrix_Scale(1.0f, 1.0f, 1.0f, MTXMODE_APPLY);
            gSPMatrix(POLY_XLU_DISP++, Matrix_NewMtx(globalCtx->state.gfxCtx, "../z_en_nwc.c", 388),
                      G_MTX_NOPUSH | G_MTX_LOAD | G_MTX_MODELVIEW);
            gSPDisplayList(POLY_XLU_DISP++, D_06000D50);
        }
    }
    CLOSE_DISPS(globalCtx->state.gfxCtx, "../z_en_nwc.c", 395);
}

void EnNwc_Init(Actor* thisx, GlobalContext* globalCtx) {
    s32 pad;
    EnNwc* this = THIS;
    ColliderJntSphItemInit elementInits[16];
    ColliderJntSphItemInit* element;
    EnNwcChick* chick;
    s32 i;

    element = sJntSphInit.list = elementInits;
    for (i = 0; i < 16; i++, element++) {
        *element = sJntSphElementInit;
    }

    Collider_InitJntSph(globalCtx, &this->collider);
    Collider_SetJntSph_Set3(globalCtx, &this->collider, &this->actor, &sJntSphInit);
    this->count = 16;
    chick = this->chicks;
    for (i = 0; i < this->count; i++, chick++) {
        chick->type = CHICK_NORMAL;
        chick->pos.x = thisx->posRot.pos.x + ((Rand_ZeroOne() * 100.0f) - 50.0f);
        chick->pos.y = thisx->posRot.pos.y + 20.0f;
        chick->pos.z = thisx->posRot.pos.z + ((Rand_ZeroOne() * 100.0f) - 50.0f);
        chick->height = 5;
    }
    EnNwc_SetUpdate(this, EnNwc_Idle);
}

void EnNwc_Destroy(Actor* thisx, GlobalContext* globalCtx) {
    s32 pad;
    EnNwc* this = THIS;

    Collider_FreeJntSph(globalCtx, &this->collider);
}

void EnNwc_Idle(EnNwc* this, GlobalContext* globalCtx) {
    EnNwc_UpdateChicks(this, globalCtx);
}

void EnNwc_Update(Actor* thisx, GlobalContext* globalCtx) {
    s32 pad;
    EnNwc* this = THIS;

    this->updateFunc(this, globalCtx);
    CollisionCheck_SetAC(globalCtx, &globalCtx->colChkCtx, &this->collider.base);
}

void EnNwc_Draw(Actor* thisx, GlobalContext* globalCtx) {
    s32 pad;
    EnNwc* this = THIS;

    EnNwc_DrawChicks(this, globalCtx);
}
