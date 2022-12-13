#include "ultra64.h"
#include "global.h"

#define DEFINE_SFX(_0, importance, distParam, randParam, flags)                \
    { importance, ((((distParam) << SFX_PARAM_01_SHIFT) & SFX_PARAM_01_MASK) | \
                   (((randParam) << SFX_PARAM_67_SHIFT) & SFX_PARAM_67_MASK) | (flags)) },

SfxParams sEnemyBankParams[] = {
#include "tables/sfx/enemybank_table.h"
};

SfxParams sPlayerBankParams[] = {
#include "tables/sfx/playerbank_table.h"
};

SfxParams sItemBankParams[] = {
#include "tables/sfx/itembank_table.h"
};

SfxParams sEnvBankParams[] = {
#include "tables/sfx/environmentbank_table.h"
};

SfxParams sSystemBankParams[] = {
#include "tables/sfx/systembank_table.h"
};

SfxParams sOcarinaBankParams[] = {
#include "tables/sfx/ocarinabank_table.h"
};

SfxParams sVoiceBankParams[] = {
#include "tables/sfx/voicebank_table.h"
};

#undef DEFINE_SFX

SfxParams* gSfxParams[7] = {
    sPlayerBankParams, sItemBankParams,    sEnvBankParams,   sEnemyBankParams,
    sSystemBankParams, sOcarinaBankParams, sVoiceBankParams,
};
