#include <ultra64.h>
#include <global.h>

extern ParticleOverlay sParticleOverlayTable[37];

void Effect_SS_Delete(LoadedParticleEntry* particle);

#pragma GLOBAL_ASM("asm/non_matchings/code/z_effect_soft_sprite/func_800272B0.s")

void Effect_SS_Clear(GlobalContext* globalCtx) {
    u32 i;
    LoadedParticleEntry* iter;
    ParticleOverlay* iter2;
    void* addr;

    EffectSS2Info.data_table = NULL;
    EffectSS2Info.searchIndex = 0;
    EffectSS2Info.size = 0;

    for (iter = EffectSS2Info.data_table; iter < EffectSS2Info.data_table + EffectSS2Info.size; iter++) {
        Effect_SS_Delete(iter);
    }

    // Free memory from loaded particle overlays
    iter2 = &sParticleOverlayTable[0];
    for (i = 0; i < ARRAY_COUNT(sParticleOverlayTable); i++) {
        addr = iter2->loadedRamAddr;

        if (addr != NULL) {
            ZeldaArena_FreeDebug(addr, D_801357DC, 337);
        }

        (iter2++)->loadedRamAddr = NULL;
    }
}

void Effect_SS_Delete(LoadedParticleEntry* particle) {
    if (particle->flags & 2) {
        func_800F89E8(particle);
    }

    if (particle->flags & 4) {
        func_800F89E8(&particle->unk_2C);
    }

    Effect_SS_ResetEntry(particle);
}

void Effect_SS_ResetEntry(LoadedParticleEntry* particle) {
    u32 i;

    particle->type = 0x25;
    particle->acceleration.z = 0;
    particle->acceleration.y = 0;
    particle->acceleration.x = 0;
    particle->velocity.z = 0;
    particle->velocity.y = 0;
    particle->velocity.x = 0;
    particle->unk_34 = 0;
    particle->unk_30 = 0;
    particle->unk_2C = 0;
    particle->position.z = 0;
    particle->position.y = 0;
    particle->position.x = 0;
    particle->life = -1;
    particle->flags = 0;
    particle->priority = 128;
    particle->draw = NULL;
    particle->update = NULL;
    particle->unk_38 = 0;
    particle->unk_3C = 0;

    for (i = 0; i != 13; i++) {
        particle->unk_40[i] = 0;
    }
}

#pragma GLOBAL_ASM("asm/non_matchings/code/z_effect_soft_sprite/func_800275D0.s")

#pragma GLOBAL_ASM("asm/non_matchings/code/z_effect_soft_sprite/func_80027704.s")

#pragma GLOBAL_ASM("asm/non_matchings/code/z_effect_soft_sprite/func_80027798.s")

void Effect_SS_UpdateParticle(GlobalContext* globalCtx, s32 index) {
    LoadedParticleEntry* particle = &EffectSS2Info.data_table[index];

    if (particle->update != NULL) {
        particle->velocity.x += particle->acceleration.x;
        particle->velocity.y += particle->acceleration.y;
        particle->velocity.z += particle->acceleration.z;

        particle->position.x += particle->velocity.x;
        particle->position.y += particle->velocity.y;
        particle->position.z += particle->velocity.z;

        particle->update(globalCtx, index, particle);
    }
}

void Effect_SS_UpdateAllParticles(GlobalContext* globalCtx) {
    s32 i;

    for (i = 0; i < EffectSS2Info.size; i++) {
        if (EffectSS2Info.data_table[i].life > -1) {
            EffectSS2Info.data_table[i].life--;

            if (EffectSS2Info.data_table[i].life < 0) {
                Effect_SS_Delete(&EffectSS2Info.data_table[i]);
            }
        }

        if (EffectSS2Info.data_table[i].life > -1) {
            Effect_SS_UpdateParticle(globalCtx, i);
        }
    }
}

void Effect_SS_DrawParticle(GlobalContext* globalCtx, s32 index) {
    LoadedParticleEntry* particle = &EffectSS2Info.data_table[index];

    if (particle->draw != NULL) {
        particle->draw(globalCtx, index, particle);
    }
}

#pragma GLOBAL_ASM("asm/non_matchings/code/z_effect_soft_sprite/func_80027BDC.s")

s16 func_80027DD4(s16 arg0, s16 arg1, s32 arg2) {
    s16 ret = !arg2 ? arg1 : (arg0 + (s32)((f32)(arg1 - arg0) / arg2));
    return ret;
}

s16 func_80027E34(s16 a0, s16 a1, f32 a2) {
    return (a1 - a0) * a2 + a0;
}

u8 func_80027E84(u8 a0, u8 a1, f32 a2) {
    return a2 * ((f32)a1 - (f32)a0) + a0;
}
