#include "global.h"

u8 sSfxBankIds[] = {
    BANK_PLAYER, BANK_ITEM, BANK_ENV, BANK_ENEMY, BANK_SYSTEM, BANK_OCARINA, BANK_VOICE,
};

void AudioMgr_StopAllSfx(void) {
    u8* bankIdPtr;

    for (bankIdPtr = &sSfxBankIds[0]; bankIdPtr < (sSfxBankIds + ARRAY_COUNT(sSfxBankIds)); bankIdPtr++) {
        Audio_StopSfxByBank(*bankIdPtr);
    }
}
