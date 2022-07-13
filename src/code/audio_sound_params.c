#include "ultra64.h"
#include "global.h"

#define DEFINE_SFX(_0, importance, distParam, randParam, flags)                \
    { importance, ((((distParam) << SFX_PARAM_01_SHIFT) & SFX_PARAM_01_MASK) | \
                   (((randParam) << SFX_PARAM_67_SHIFT) & SFX_PARAM_67_MASK) | (flags)) },

SoundParams sEnemyBankParams[] = {
#include "tables/sfx/enemybank_table.h"
};

SoundParams sPlayerBankParams[] = {
#include "tables/sfx/playerbank_table.h"
};

SoundParams sItemBankParams[] = {
#include "tables/sfx/itembank_table.h"
};

SoundParams sEnvBankParams[] = {
#include "tables/sfx/environmentbank_table.h"
};

SoundParams sSystemBankParams[] = {
#include "tables/sfx/systembank_table.h"
};

SoundParams sOcarinaBankParams[] = {
#include "tables/sfx/ocarinabank_table.h"
};

SoundParams sVoiceBankParams[] = {
#include "tables/sfx/voicebank_table.h"
};

#undef DEFINE_SFX

SoundParams* gSoundParams[7] = {
    sPlayerBankParams, sItemBankParams,    sEnvBankParams,   sEnemyBankParams,
    sSystemBankParams, sOcarinaBankParams, sVoiceBankParams,
};
