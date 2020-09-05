#include <ultra64.h>
#include <global.h>
#include <vt.h>

void func_800430A0(CollisionContext* colCtx, s32 bgId, Actor* actor) {
    MtxF srp1;
    MtxF srp1Inv;
    MtxF srp2;
    Vec3f pos;
    Vec3f tempPos;

    if (func_8003E934(bgId)) {
        SkinMatrix_SetScaleRotateYRPTranslate(
            &srp1, colCtx->dyna.bgActors[bgId].srp1.scale.x, colCtx->dyna.bgActors[bgId].srp1.scale.y,
            colCtx->dyna.bgActors[bgId].srp1.scale.z, colCtx->dyna.bgActors[bgId].srp1.rot.x,
            colCtx->dyna.bgActors[bgId].srp1.rot.y, colCtx->dyna.bgActors[bgId].srp1.rot.z,
            colCtx->dyna.bgActors[bgId].srp1.pos.x, colCtx->dyna.bgActors[bgId].srp1.pos.y,
            colCtx->dyna.bgActors[bgId].srp1.pos.z);
        if (SkinMatrix_Invert(&srp1, &srp1Inv) != 2) {
            SkinMatrix_SetScaleRotateYRPTranslate(
                &srp2, colCtx->dyna.bgActors[bgId].srp2.scale.x, colCtx->dyna.bgActors[bgId].srp2.scale.y,
                colCtx->dyna.bgActors[bgId].srp2.scale.z, colCtx->dyna.bgActors[bgId].srp2.rot.x,
                colCtx->dyna.bgActors[bgId].srp2.rot.y, colCtx->dyna.bgActors[bgId].srp2.rot.z,
                colCtx->dyna.bgActors[bgId].srp2.pos.x, colCtx->dyna.bgActors[bgId].srp2.pos.y,
                colCtx->dyna.bgActors[bgId].srp2.pos.z);
            SkinMatrix_Vec3fMtxFMultXYZ(&srp1Inv, &actor->posRot.pos, &tempPos);
            SkinMatrix_Vec3fMtxFMultXYZ(&srp2, &tempPos, &pos);
            actor->posRot.pos = pos;
            if (32760.0f <= pos.x || pos.x <= -32760.0f || 32760.0f <= pos.y || pos.y <= -32760.0f ||
                32760.0f <= pos.z || pos.z <= -32760.0f) {

                osSyncPrintf(VT_FGCOL(RED));
                // @bug file and line are not passed to osSyncPrintf
                osSyncPrintf(
                    "BGCheckCollection_typicalActorPos():位置が妥当ではありません。\npos (%f,%f,%f) file:%s line:%d\n",
                    pos.x, pos.y, pos.z);
                // 位置が妥当ではありません。 | Position is not valid
                osSyncPrintf(VT_RST);
            }
        }
    }
}

//Rotate actor
void func_800432A0(CollisionContext* colCtx, s32 bgId, Actor* actor) {
    if (func_8003E934(bgId)) {
        s16 rot = colCtx->dyna.bgActors[bgId].srp2.rot.y - colCtx->dyna.bgActors[bgId].srp1.rot.y;

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
