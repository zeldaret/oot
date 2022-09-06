#include "global.h"

void BgActor_Init(BgActor* bgActor, s32 flags) {
    bgActor->bgId = -1;
    bgActor->unk_15C = flags;
    bgActor->interactFlags = 0;
    bgActor->unk_150 = 0.0f;
    bgActor->unk_154 = 0.0f;
}

void BgActor_UnsetAllInteractFlags(BgActor* bgActor) {
    bgActor->interactFlags = 0;
}

void BgActor_SetActorOnTop(BgActor* bgActor) {
    bgActor->interactFlags |= DYNA_INTERACT_ACTOR_ON_TOP;
}

void BgActor_SetPlayerOnTop(BgActor* bgActor) {
    bgActor->interactFlags |= DYNA_INTERACT_PLAYER_ON_TOP;
}

void DynaPoly_SetPlayerOnTop(CollisionContext* colCtx, s32 floorBgId) {
    BgActor* bgActor = DynaPoly_GetActor(colCtx, floorBgId);

    if (bgActor != NULL) {
        BgActor_SetPlayerOnTop(bgActor);
    }
}

void BgActor_SetPlayerAbove(BgActor* bgActor) {
    bgActor->interactFlags |= DYNA_INTERACT_PLAYER_ABOVE;
}

void DynaPoly_SetPlayerAbove(CollisionContext* colCtx, s32 floorBgId) {
    BgActor* bgActor = DynaPoly_GetActor(colCtx, floorBgId);

    if (bgActor != NULL) {
        BgActor_SetPlayerAbove(bgActor);
    }
}

void func_80043538(BgActor* bgActor) {
    bgActor->interactFlags |= DYNA_INTERACT_3;
}

s32 BgActor_IsActorOnTop(BgActor* bgActor) {
    if (bgActor->interactFlags & DYNA_INTERACT_ACTOR_ON_TOP) {
        return true;
    } else {
        return false;
    }
}

s32 BgActor_IsPlayerOnTop(BgActor* bgActor) {
    if (bgActor->interactFlags & DYNA_INTERACT_PLAYER_ON_TOP) {
        return true;
    } else {
        return false;
    }
}

s32 BgActor_IsPlayerAbove(BgActor* bgActor) {
    if (bgActor->interactFlags & DYNA_INTERACT_PLAYER_ABOVE) {
        return true;
    } else {
        return false;
    }
}

s32 func_800435B4(BgActor* bgActor) {
    if (bgActor->interactFlags & DYNA_INTERACT_3) {
        return true;
    } else {
        return false;
    }
}

s32 func_800435D8(PlayState* play, BgActor* bgActor, s16 arg2, s16 arg3, s16 arg4) {
    Vec3f posA;
    Vec3f posB;
    Vec3f posResult;
    f32 sin = Math_SinS(bgActor->unk_158);
    f32 cos = Math_CosS(bgActor->unk_158);
    s32 bgId;
    CollisionPoly* poly;
    f32 a2;
    f32 a3;
    f32 sign = (0.0f <= bgActor->unk_150) ? 1.0f : -1.0f;

    a2 = (f32)arg2 - 0.1f;
    posA.x = bgActor->actor.world.pos.x + (a2 * cos);
    posA.y = bgActor->actor.world.pos.y + arg4;
    posA.z = bgActor->actor.world.pos.z - (a2 * sin);

    a3 = (f32)arg3 - 0.1f;
    posB.x = sign * a3 * sin + posA.x;
    posB.y = posA.y;
    posB.z = sign * a3 * cos + posA.z;

    if (BgCheck_EntityLineTest3(&play->colCtx, &posA, &posB, &posResult, &poly, true, false, false, true, &bgId,
                                &bgActor->actor, 0.0f)) {
        return false;
    }
    posA.x = (bgActor->actor.world.pos.x * 2) - posA.x;
    posA.z = (bgActor->actor.world.pos.z * 2) - posA.z;
    posB.x = sign * a3 * sin + posA.x;
    posB.z = sign * a3 * cos + posA.z;
    if (BgCheck_EntityLineTest3(&play->colCtx, &posA, &posB, &posResult, &poly, true, false, false, true, &bgId,
                                &bgActor->actor, 0.0f)) {
        return false;
    }
    return true;
}
