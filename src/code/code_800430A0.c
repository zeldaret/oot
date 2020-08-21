#include <ultra64.h>
#include <global.h>
#include <vt.h>

void func_800430A0(CollisionContext* colCtx, s32 bgId, Actor* actor) {
    MtxF spD0;
    MtxF sp90;
    MtxF sp50;
    Vec3f pos;
    Vec3f sp38;

    if (func_8003E934(bgId)) {
        SkinMatrix_SetScaleRotateYRPTranslate(
            &spD0, colCtx->dyna.bgActors[bgId].srp1.scale.x, colCtx->dyna.bgActors[bgId].srp1.scale.y,
            colCtx->dyna.bgActors[bgId].srp1.scale.z, colCtx->dyna.bgActors[bgId].srp1.rot.x,
            colCtx->dyna.bgActors[bgId].srp1.rot.y, colCtx->dyna.bgActors[bgId].srp1.rot.z,
            colCtx->dyna.bgActors[bgId].srp1.pos.x, colCtx->dyna.bgActors[bgId].srp1.pos.y,
            colCtx->dyna.bgActors[bgId].srp1.pos.z);
        if (SkinMatrix_Invert(&spD0, &sp90) != 2) {
            SkinMatrix_SetScaleRotateYRPTranslate(
                &sp50, colCtx->dyna.bgActors[bgId].srp2.scale.x, colCtx->dyna.bgActors[bgId].srp2.scale.y,
                colCtx->dyna.bgActors[bgId].srp2.scale.z, colCtx->dyna.bgActors[bgId].srp2.rot.x,
                colCtx->dyna.bgActors[bgId].srp2.rot.y, colCtx->dyna.bgActors[bgId].srp2.rot.z,
                colCtx->dyna.bgActors[bgId].srp2.pos.x, colCtx->dyna.bgActors[bgId].srp2.pos.y,
                colCtx->dyna.bgActors[bgId].srp2.pos.z);
            SkinMatrix_Vec3fMtxFMultXYZ(&sp90, &actor->posRot.pos, &sp38);
            SkinMatrix_Vec3fMtxFMultXYZ(&sp50, &sp38, &pos);
            actor->posRot.pos = pos;
            if (32760.0f <= pos.x || pos.x <= -32760.0f || 32760.0f <= pos.y || pos.y <= -32760.0f ||
                32760.0f <= pos.z || (pos.z <= -32760.0f)) {

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

void func_800432A0(CollisionContext* colCtx, s32 bgId, Actor* actor) {
    if (func_8003E934(bgId) != 0) {
        s16 v1 = colCtx->dyna.bgActors[bgId].srp2.rot.y - colCtx->dyna.bgActors[bgId].srp1.rot.y;

        if (actor->id == 0) {
            ((Player*)actor)->currentYaw += v1;
        }

        actor->shape.rot.y += v1;
        actor->posRot.rot.y += v1;
    }
}

void func_80043334(CollisionContext* colCtx, Actor* actor, s32 bgId) {
    if (func_8003E934(bgId) != 0) {
        DynaPolyActor* dynaActor = func_8003EB84(colCtx, bgId);
        if (dynaActor != NULL) {
            func_800434A8(dynaActor);

            if ((actor->flags & 0x4000000) == 0x4000000) {
                func_80043538(dynaActor);
            }
        }
    }
}

s32 func_800433A4(CollisionContext* colCtx, s32 bgId, Actor* actor) {
    s32 result = false;
    DynaPolyActor* dynaActor;

    if (func_8003E934(bgId) == 0) {
        return false;
    }

    if ((colCtx->dyna.flags[bgId] & 2) || !(colCtx->dyna.flags[bgId] & 1)) {
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
