#ifndef _INITVARS_H_
#define _INITVARS_H_

extern EffectSsInit Effect_Ss_Dust_InitVars;
extern EffectSsInit Effect_Ss_KiraKira_InitVars;
extern EffectSsInit Effect_Ss_Bomb_InitVars;
extern EffectSsInit Effect_Ss_Bomb2_InitVars;
extern EffectSsInit Effect_Ss_Blast_InitVars;
extern EffectSsInit Effect_Ss_G_Spk_InitVars;
extern EffectSsInit Effect_Ss_D_Fire_InitVars;
extern EffectSsInit Effect_Ss_Bubble_InitVars;
extern EffectSsInit Effect_Ss_G_Ripple_InitVars;
extern EffectSsInit Effect_Ss_G_Splash_InitVars;
extern EffectSsInit Effect_Ss_G_Magma_InitVars;
extern EffectSsInit Effect_Ss_G_Fire_InitVars;
extern EffectSsInit Effect_Ss_Lightning_InitVars;
extern EffectSsInit Effect_Ss_Dt_Bubble_InitVars;
extern EffectSsInit Effect_Ss_Hahen_InitVars;
extern EffectSsInit Effect_Ss_Stick_InitVars;
extern EffectSsInit Effect_Ss_Sibuki_InitVars;
extern EffectSsInit Effect_Ss_Sibuki2_InitVars;
extern EffectSsInit Effect_Ss_G_Magma2_InitVars;
extern EffectSsInit Effect_Ss_Stone1_InitVars;
extern EffectSsInit Effect_Ss_HitMark_InitVars;
extern EffectSsInit Effect_Ss_Fhg_Flash_InitVars;
extern EffectSsInit Effect_Ss_K_Fire_InitVars;
extern EffectSsInit Effect_Ss_Solder_Srch_Ball_InitVars;
extern EffectSsInit Effect_Ss_Kakera_InitVars;
extern EffectSsInit Effect_Ss_Ice_Piece_InitVars;
extern EffectSsInit Effect_Ss_En_Ice_InitVars;
extern EffectSsInit Effect_Ss_Fire_Tail_InitVars;
extern EffectSsInit Effect_Ss_En_Fire_InitVars;
extern EffectSsInit Effect_Ss_Extra_InitVars;
extern EffectSsInit Effect_Ss_Fcircle_InitVars;
extern EffectSsInit Effect_Ss_Dead_Db_InitVars;
extern EffectSsInit Effect_Ss_Dead_Dd_InitVars;
extern EffectSsInit Effect_Ss_Dead_Ds_InitVars;
extern EffectSsInit Effect_Ss_Dead_Sound_InitVars;
extern EffectSsInit Effect_Ss_Ice_Smoke_InitVars;

#define DEFINE_ACTOR(name, _1, _2) extern ActorInit name##_InitVars;
#define DEFINE_ACTOR_INTERNAL(name, _1, _2) extern ActorInit name##_InitVars;
#define DEFINE_ACTOR_UNSET(_0)

#include "tables/actor_table.h"

#undef DEFINE_ACTOR
#undef DEFINE_ACTOR_INTERNAL
#undef DEFINE_ACTOR_UNSET

#endif
