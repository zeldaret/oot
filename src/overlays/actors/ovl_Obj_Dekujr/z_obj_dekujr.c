/*
 * File: z_obj_dekujr.c
 * Overlay: ovl_Obj_Dekujr
 * Description: Deku Tree Sprout
 */

#include "z_obj_dekujr.h"

#define FLAGS 0x00000009

#define THIS ((ObjDekujr*)thisx)

void ObjDekujr_Init(Actor* thisx, GlobalContext* globalCtx);
void ObjDekujr_Destroy(Actor* thisx, GlobalContext* globalCtx);
void ObjDekujr_Update(Actor* thisx, GlobalContext* globalCtx);
void ObjDekujr_Draw(Actor* thisx, GlobalContext* globalCtx);

void func_80B925B8(ObjDekujr* this, GlobalContext* globalCtx);

const ActorInit Obj_Dekujr_InitVars = {
    ACTOR_OBJ_DEKUJR,
    ACTORTYPE_NPC,
    FLAGS,
    OBJECT_DEKUJR,
    sizeof(ObjDekujr),
    (ActorFunc)ObjDekujr_Init,
    (ActorFunc)ObjDekujr_Destroy,
    (ActorFunc)ObjDekujr_Update,
    (ActorFunc)ObjDekujr_Draw,
};

ColliderCylinderInit_Actor D_80B92A00 = {
    { NULL, 0x00, 0x00, 0x39, COLSHAPE_CYLINDER },
    { 0x02, { 0x00000000, 0x00, 0x00 }, { 0xFFCFFFFF, 0x00, 0x00 }, 0x00, 0x00, 0x01 },
    { 60, 80, 0, { 0, 0, 0 } },
};

extern Gfx D_060030D0[];
extern Gfx D_060032D8[];

void ObjDekujr_Init(Actor* thisx, GlobalContext* globalCtx) {
    ObjDekujr* this = THIS;
    s32 pad;

    if (gSaveContext.cutsceneIndex < 0xFFF0) {
        if (!LINK_IS_ADULT) {
            Actor_Kill(&this->actor);
            return;
        }
        this->unk_19C = 2;
        this->unk_19B = 0;
    } else {
        this->unk_19C = 0;
        this->unk_19B = 1;
    }
    if (!CHECK_QUEST_ITEM(QUEST_MEDALLION_FOREST)) {
        Actor_Kill(&this->actor);
    } else {
        ActorShape_Init(&this->actor.shape, 0.0f, NULL, 0.0f);
        Collider_InitCylinder(globalCtx, &this->collider);
        D_80B92A00.base.actor = thisx; // thisx required to match here
        Collider_SetCylinder_Actor(globalCtx, &this->collider, &D_80B92A00);
        this->actor.colChkInfo.mass = 0xFF;
        this->actor.textId = func_80037C30(globalCtx, 0xF);
        Actor_SetScale(&this->actor, 0.4f);
    }
}

void ObjDekujr_Destroy(Actor* thisx, GlobalContext* globalCtx) {
}

void func_80B92538(CsCmdActorAction* npcAction, Vec3f* actionPos) {
    actionPos->x = npcAction->startPos.x;
    actionPos->y = npcAction->startPos.y;
    actionPos->z = npcAction->startPos.z;
}

void func_80B92578(CsCmdActorAction* npcAction, Vec3f* arg1) {
    arg1->x = npcAction->endPos.x;
    arg1->y = npcAction->endPos.y;
    arg1->z = npcAction->endPos.z;
}

void func_80B925B8(ObjDekujr* this, GlobalContext* globalCtx) {
    CsCmdActorAction* csCmdNPCAction;
    Vec3f sp40;
    Vec3f sp34;
    Vec3f velocity = { 0.0f, 0.0f, 0.0f };
    f32 actionLength;
    f32 gravity;

    if (globalCtx->csCtx.state == 0) {
        this->unk_19C = 2;
        this->unk_19B = 0;
    } else {
        if (globalCtx->csCtx.frames == 0x15F) {
            Audio_PlayActorSound2(&this->actor, NA_SE_EV_COME_UP_DEKU_JR);
        }
        csCmdNPCAction = globalCtx->csCtx.npcActions[1];
        if (csCmdNPCAction != NULL) {
            func_80B92538(csCmdNPCAction, &sp40);
            func_80B92578(csCmdNPCAction, &sp34);
            if (this->unk_19C == 0) {
                this->actor.posRot.pos = sp40;
                this->unk_19C = 1;
            }
            this->actor.shape.rot.x = csCmdNPCAction->urot.x;
            this->actor.shape.rot.y = csCmdNPCAction->urot.y;
            this->actor.shape.rot.z = csCmdNPCAction->urot.z;
            this->actor.velocity = velocity;
            if (csCmdNPCAction->endFrame >= globalCtx->csCtx.frames) {
                actionLength = csCmdNPCAction->endFrame - csCmdNPCAction->startFrame;
                this->actor.velocity.x = (sp34.x - sp40.x) / actionLength;
                gravity = this->actor.gravity;
                this->actor.velocity.y = (sp34.y - sp40.y) / actionLength;
                this->actor.velocity.y += gravity;
                if (this->actor.velocity.y < this->actor.minVelocityY) {
                    this->actor.velocity.y = this->actor.minVelocityY;
                }
                this->actor.velocity.z = (sp34.z - sp40.z) / actionLength;
            }
        }
    }
}

void ObjDekujr_Update(Actor* thisx, GlobalContext* globalCtx) {
    ObjDekujr* this = THIS;
    s32 pad;

    Collider_CylinderUpdate(&this->actor, &this->collider);
    CollisionCheck_SetOC(globalCtx, &globalCtx->colChkCtx, &this->collider.base);
    if ((gSaveContext.cutsceneIndex >= 0xFFF0) && (this->unk_19B == 0)) {
        this->unk_19C = 0;
        this->unk_19B = 1;
    }
    if (this->unk_19B == 1) {
        func_80B925B8(this, globalCtx);
        this->actor.posRot.pos.x += this->actor.velocity.x;
        this->actor.posRot.pos.y += this->actor.velocity.y;
        this->actor.posRot.pos.z += this->actor.velocity.z;
    } else {
        func_80037D98(globalCtx, &this->actor, 0xF, &this->unk_1A0);
        Actor_SetHeight(&this->actor, 40.0f);
    }
}

void ObjDekujr_Draw(Actor* thisx, GlobalContext* globalCtx) {
    ObjDekujr* this = THIS;
    u32 frameCount;
    GraphicsContext* gfxCtx = globalCtx->state.gfxCtx;
    Gfx* dispRefs[3];

    Graph_OpenDisps(dispRefs, globalCtx->state.gfxCtx, "../z_obj_dekujr.c", 370);
    func_80093D18(globalCtx->state.gfxCtx);
    func_80093D84(globalCtx->state.gfxCtx);

    gSPMatrix(gfxCtx->polyOpa.p++, Matrix_NewMtx(globalCtx->state.gfxCtx, "../z_obj_dekujr.c", 379),
              G_MTX_NOPUSH | G_MTX_LOAD | G_MTX_MODELVIEW);
    gSPDisplayList(gfxCtx->polyOpa.p++, &D_060030D0);

    frameCount = globalCtx->state.frames;
    gSPSegment(
        gfxCtx->polyXlu.p++, 0x08,
        Gfx_TwoTexScroll(globalCtx->state.gfxCtx, 0, frameCount % 128, 0, 32, 32, 1, frameCount % 128, 0, 32, 32));
    gSPMatrix(gfxCtx->polyXlu.p++, Matrix_NewMtx(globalCtx->state.gfxCtx, "../z_obj_dekujr.c", 399),
              G_MTX_NOPUSH | G_MTX_LOAD | G_MTX_MODELVIEW);
    gSPDisplayList(gfxCtx->polyXlu.p++, &D_060032D8);
    Graph_CloseDisps(dispRefs, globalCtx->state.gfxCtx, "../z_obj_dekujr.c", 409);
}
