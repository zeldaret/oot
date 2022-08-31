#include "global.h"
#include "vt.h"

/**
 * Update the `actor`'s position based on the dynapoly actor identified by `bgId`.
 */
void DynaPolyActor_UpdatePosition(CollisionContext* colCtx, s32 bgId, Actor* actor) {
    MtxF prevTransform;
    MtxF prevTransformInv;
    MtxF curTransform;
    Vec3f pos;
    Vec3f tempPos;

    if (DynaPoly_IsBgIdBgActor(bgId)) {

        SkinMatrix_SetTranslateRotateYXZScale(
            &prevTransform, colCtx->dyna.bgActors[bgId].prevTransform.scale.x,
            colCtx->dyna.bgActors[bgId].prevTransform.scale.y, colCtx->dyna.bgActors[bgId].prevTransform.scale.z,
            colCtx->dyna.bgActors[bgId].prevTransform.rot.x, colCtx->dyna.bgActors[bgId].prevTransform.rot.y,
            colCtx->dyna.bgActors[bgId].prevTransform.rot.z, colCtx->dyna.bgActors[bgId].prevTransform.pos.x,
            colCtx->dyna.bgActors[bgId].prevTransform.pos.y, colCtx->dyna.bgActors[bgId].prevTransform.pos.z);

        if (SkinMatrix_Invert(&prevTransform, &prevTransformInv) != 2) {

            SkinMatrix_SetTranslateRotateYXZScale(
                &curTransform, colCtx->dyna.bgActors[bgId].curTransform.scale.x,
                colCtx->dyna.bgActors[bgId].curTransform.scale.y, colCtx->dyna.bgActors[bgId].curTransform.scale.z,
                colCtx->dyna.bgActors[bgId].curTransform.rot.x, colCtx->dyna.bgActors[bgId].curTransform.rot.y,
                colCtx->dyna.bgActors[bgId].curTransform.rot.z, colCtx->dyna.bgActors[bgId].curTransform.pos.x,
                colCtx->dyna.bgActors[bgId].curTransform.pos.y, colCtx->dyna.bgActors[bgId].curTransform.pos.z);

            // Apply the movement of the dynapoly actor `bgId` over the last frame to the `actor` position
            // pos = curTransform * prevTransformInv * pos
            // Note (curTransform * prevTransformInv) represents the transform relative to the previous frame
            SkinMatrix_Vec3fMtxFMultXYZ(&prevTransformInv, &actor->world.pos, &tempPos);
            SkinMatrix_Vec3fMtxFMultXYZ(&curTransform, &tempPos, &pos);
            actor->world.pos = pos;

            if (BGCHECK_XYZ_ABSMAX <= pos.x || pos.x <= -BGCHECK_XYZ_ABSMAX || BGCHECK_XYZ_ABSMAX <= pos.y ||
                pos.y <= -BGCHECK_XYZ_ABSMAX || BGCHECK_XYZ_ABSMAX <= pos.z || pos.z <= -BGCHECK_XYZ_ABSMAX) {

                osSyncPrintf(VT_FGCOL(RED));
                //! @bug file and line are not passed to osSyncPrintf
                // "Position is not valid"
                osSyncPrintf(
                    "BGCheckCollection_typicalActorPos():位置が妥当ではありません。\npos (%f,%f,%f) file:%s line:%d\n",
                    pos.x, pos.y, pos.z);
                osSyncPrintf(VT_RST);
            }
        }
    }
}

/**
 * Update the `actor`'s Y rotation based on the dynapoly actor identified by `bgId`.
 */
void DynaPolyActor_UpdateRotationY(CollisionContext* colCtx, s32 bgId, Actor* actor) {
    if (DynaPoly_IsBgIdBgActor(bgId)) {
        s16 rotY = colCtx->dyna.bgActors[bgId].curTransform.rot.y - colCtx->dyna.bgActors[bgId].prevTransform.rot.y;

        if (actor->id == ACTOR_PLAYER) {
            ((Player*)actor)->currentYaw += rotY;
        }

        actor->shape.rot.y += rotY;
        actor->world.rot.y += rotY;
    }
}

void func_80043334(CollisionContext* colCtx, Actor* actor, s32 bgId) {
    if (DynaPoly_IsBgIdBgActor(bgId)) {
        DynaPolyActor* dynaActor = DynaPoly_GetActor(colCtx, bgId);
        if (dynaActor != NULL) {
            DynaPolyActor_SetActorOnTop(dynaActor);

            if (CHECK_FLAG_ALL(actor->flags, ACTOR_FLAG_26)) {
                func_80043538(dynaActor);
            }
        }
    }
}

/**
 * Update the `actor`'s position and Y rotation based on the dynapoly actor identified by `bgId`, according to the
 * dynapoly actor's move flags (see `DYNA_MOVE_POS` and others).
 */
s32 DynaPolyActor_UpdateTransform(CollisionContext* colCtx, s32 bgId, Actor* actor) {
    s32 result = false;
    DynaPolyActor* dynaActor;

    if (!DynaPoly_IsBgIdBgActor(bgId)) {
        return false;
    }

    if ((colCtx->dyna.bgActorFlags[bgId] & BGACTOR_1) || !(colCtx->dyna.bgActorFlags[bgId] & BGACTOR_IN_USE)) {
        return false;
    }

    dynaActor = DynaPoly_GetActor(colCtx, bgId);

    if (dynaActor == NULL) {
        return false;
    }

    if (dynaActor->moveFlags & DYNA_MOVE_POS) {
        DynaPolyActor_UpdatePosition(colCtx, bgId, actor);
        result = true;
    }

    if (dynaActor->moveFlags & DYNA_MOVE_ROT_Y) {
        DynaPolyActor_UpdateRotationY(colCtx, bgId, actor);
        result = true;
    }

    return result;
}
