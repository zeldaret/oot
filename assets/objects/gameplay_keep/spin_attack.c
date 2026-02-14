#include "spin_attack.h"
#include "gfx.h"

u64 gSpinAttackFireTex[TEX_LEN(u64, gSpinAttackFireTex_WIDTH, gSpinAttackFireTex_HEIGHT, 8)] = {
#include "assets/objects/gameplay_keep/gSpinAttackFireTex.i8.inc.c"
};

u64 gSpinAttackMagicTex[TEX_LEN(u64, gSpinAttackMagicTex_WIDTH, gSpinAttackMagicTex_HEIGHT, 8)] = {
#include "assets/objects/gameplay_keep/gSpinAttackMagicTex.i8.inc.c"
};

Vtx gSpinAttack1Vtx[] = {
#include "assets/objects/gameplay_keep/gSpinAttack1Vtx.inc.c"
};

Vtx gSpinAttack2Vtx[] = {
#include "assets/objects/gameplay_keep/gSpinAttack2Vtx.inc.c"
};

Gfx gSpinAttack1DL[36] = {
#include "assets/objects/gameplay_keep/gSpinAttack1DL.inc.c"
};

Gfx gSpinAttack2DL[36] = {
#include "assets/objects/gameplay_keep/gSpinAttack2DL.inc.c"
};

Vtx gSpinAttack3Vtx[] = {
#include "assets/objects/gameplay_keep/gSpinAttack3Vtx.inc.c"
};

Vtx gSpinAttack4Vtx[] = {
#include "assets/objects/gameplay_keep/gSpinAttack4Vtx.inc.c"
};

Gfx gSpinAttack3DL[36] = {
#include "assets/objects/gameplay_keep/gSpinAttack3DL.inc.c"
};

Gfx gSpinAttack4DL[36] = {
#include "assets/objects/gameplay_keep/gSpinAttack4DL.inc.c"
};

u64 gSpinAttackCharging1Tex[TEX_LEN(u64, gSpinAttackCharging1Tex_WIDTH, gSpinAttackCharging1Tex_HEIGHT, 8)] = {
#include "assets/objects/gameplay_keep/gSpinAttackCharging1Tex.i8.inc.c"
};

u64 gSpinAttackCharging2Tex[TEX_LEN(u64, gSpinAttackCharging2Tex_WIDTH, gSpinAttackCharging2Tex_HEIGHT, 8)] = {
#include "assets/objects/gameplay_keep/gSpinAttackCharging2Tex.i8.inc.c"
};

Vtx gSpinAttackChargingVtx[] = {
#include "assets/objects/gameplay_keep/gSpinAttackChargingVtx.inc.c"
};

Gfx gSpinAttackChargingDL[29] = {
#include "assets/objects/gameplay_keep/gSpinAttackChargingDL.inc.c"
};
