#include <ultra64.h>
#include <global.h>

#pragma GLOBAL_ASM("asm/non_matchings/code/code_800430A0/func_800430A0.s")

void func_800432A0(CollisionContext* colCtx, s32 bgId, Actor* actor) {
    if (func_8003E934(bgId) != 0) {
        s16 v1 = colCtx->dyna.bgActors[bgId].srp2.rot.y - colCtx->dyna.bgActors[bgId].srp1.rot.y;

        if (actor->id == ACTOR_PLAYER) {
            ((Player*)actor)->unk_83C += v1;
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
    s32 sp24 = 0;
    DynaPolyActor* dynaActor;

    if (func_8003E934(bgId) == 0) {
        return 0;
    }

    if ((colCtx->dyna.flags[bgId] & 2) || !(colCtx->dyna.flags[bgId] & 1)) {
        return 0;
    }

    dynaActor = func_8003EB84(colCtx, bgId);

    if (dynaActor == NULL) {
        return 0;
    }

    if (dynaActor->unk_15C & 1) {
        func_800430A0(colCtx, bgId, actor);
        sp24 = 1;
    }

    if (dynaActor->unk_15C & 2) {
        func_800432A0(colCtx, bgId, actor);
        sp24 = 1;
    }

    return sp24;
}
