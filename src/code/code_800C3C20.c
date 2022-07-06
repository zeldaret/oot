#include "global.h"

u8 sSfxBankIds[] = {
    BANK_PLAYER, BANK_ITEM, BANK_ENV, BANK_ENEMY, BANK_SYSTEM, BANK_OCARINA, BANK_VOICE,
};

void AudioMgr_StopAllSfx(void) {
    volatile u8* bank;

    for (bank = &sSfxBankIds[0]; bank < (sSfxBankIds + ARRAY_COUNT(sSfxBankIds)); bank++) {
        Audio_StopSfxByBank(*bank);
    }
}
