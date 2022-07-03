#include "global.h"

u8 sSfxBankIds[] = {
    BANK_PLAYER, BANK_ITEM, BANK_ENV, BANK_ENEMY, BANK_SYSTEM, BANK_OCARINA, BANK_VOICE,
};

void AudioMgr_StopAllSfx(void) {
    u32 i;

    for (i = 0; (u32)(i < ARRAY_COUNT(sSfxBankIds)); i++) {
        Audio_StopSfxByBank(sSfxBankIds[i]);
    }
}
