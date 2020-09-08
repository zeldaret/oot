#include <ultra64.h>
#include <global.h>
#include <vt.h>

void func_800430A0(CollisionContext* colCtx, s32 bgId, Actor* actor) {
    MtxF prevSrp;
    MtxF prevSrpInv;
    MtxF curSrp;
    Vec3f pos;
    Vec3f tempPos;

    if (func_8003E934(bgId)) {
        SkinMatrix_SetScaleRotateYRPTranslate(
            &prevSrp, colCtx->dyna.bgActors[bgId].prevSrp.scale.x, colCtx->dyna.bgActors[bgId].prevSrp.scale.y,
            colCtx->dyna.bgActors[bgId].prevSrp.scale.z, colCtx->dyna.bgActors[bgId].prevSrp.rot.x,
            colCtx->dyna.bgActors[bgId].prevSrp.rot.y, colCtx->dyna.bgActors[bgId].prevSrp.rot.z,
            colCtx->dyna.bgActors[bgId].prevSrp.pos.x, colCtx->dyna.bgActors[bgId].prevSrp.pos.y,
            colCtx->dyna.bgActors[bgId].prevSrp.pos.z);
        if (SkinMatrix_Invert(&prevSrp, &prevSrpInv) != 2) {
            SkinMatrix_SetScaleRotateYRPTranslate(
                &curSrp, colCtx->dyna.bgActors[bgId].curSrp.scale.x, colCtx->dyna.bgActors[bgId].curSrp.scale.y,
                colCtx->dyna.bgActors[bgId].curSrp.scale.z, colCtx->dyna.bgActors[bgId].curSrp.rot.x,
                colCtx->dyna.bgActors[bgId].curSrp.rot.y, colCtx->dyna.bgActors[bgId].curSrp.rot.z,
                colCtx->dyna.bgActors[bgId].curSrp.pos.x, colCtx->dyna.bgActors[bgId].curSrp.pos.y,
                colCtx->dyna.bgActors[bgId].curSrp.pos.z);
            SkinMatrix_Vec3fMtxFMultXYZ(&prevSrpInv, &actor->posRot.pos, &tempPos);
            SkinMatrix_Vec3fMtxFMultXYZ(&curSrp, &tempPos, &pos);
            actor->posRot.pos = pos;
            if (32760.0f <= pos.x || pos.x <= -32760.0f || 32760.0f <= pos.y || pos.y <= -32760.0f ||
                32760.0f <= pos.z || pos.z <= -32760.0f) {

                osSyncPrintf(VT_FGCOL(RED));
                // @bug file and line are not passed to osSyncPrintf
                osSyncPrintf(
                    "BGCheckCollection_typicalActorPos():位置が妥当ではありません。\npos (%f,%f,%f) file:%s line:%d\n",
                    pos.x, pos.y, pos.z);
                // EUC-JP: 位置が妥当ではありません。 | Position is not valid
                osSyncPrintf(VT_RST);
            }
        }
    }
}

// Rotate actor
void func_800432A0(CollisionContext* colCtx, s32 bgId, Actor* actor) {
    if (func_8003E934(bgId)) {
        s16 rot = colCtx->dyna.bgActors[bgId].curSrp.rot.y - colCtx->dyna.bgActors[bgId].prevSrp.rot.y;

        if (actor->id == 0) {
            ((Player*)actor)->currentYaw += rot;
        }

        actor->shape.rot.y += rot;
        actor->posRot.rot.y += rot;
    }
}

void func_80043334(CollisionContext* colCtx, Actor* actor, s32 bgId) {
    if (func_8003E934(bgId)) {
        DynaPolyActor* dynaActor = func_8003EB84(colCtx, bgId);
        if (dynaActor != NULL) {
            func_800434A8(dynaActor);

            if ((actor->flags & 0x4000000) == 0x4000000) {
                func_80043538(dynaActor);
            }
        }
    }
}

// Transform actor's position
// `actor` is the actor to update
s32 func_800433A4(CollisionContext* colCtx, s32 bgId, Actor* actor) {
    s32 result = false;
    DynaPolyActor* dynaActor;

    if (func_8003E934(bgId) == false) {
        return false;
    }

    if ((colCtx->dyna.bgActorFlags[bgId] & 2) || !(colCtx->dyna.bgActorFlags[bgId] & 1)) {
        return false;
    }

    dynaActor = (DynaPolyActor*)func_8003EB84(colCtx, bgId);

    if (dynaActor == NULL) {
        return false;
    }

    if (dynaActor->unk_15C & 1) {
        func_800430A0(colCtx, bgId, actor);
        result = true;
    }

    if (dynaActor->unk_15C & 2) {
        func_800432A0(colCtx, bgId, actor);
        result = true;
    }

    return result;
}
