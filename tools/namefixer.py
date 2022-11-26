#!/usr/bin/env python3

import os
import argparse

# all occurrences of keys will be replaced by associated value
simpleReplace = {
    "Math_Rand_":"Rand_",
    "ACTORTYPE":"ACTORCAT",
    "DistToLink":"DistToPlayer",
    "HitItem":"HitInfo",
    "ENTR_YDAN_BOSS": "ENTR_DEKU_TREE_BOSS",
    "ENTR_DDAN_BOSS": "ENTR_DODONGOS_CAVERN_BOSS",
    "ENTR_BDAN_BOSS": "ENTR_JABU_JABU_BOSS",
    "ENTR_MORIBOSSROOM": "ENTR_FOREST_TEMPLE_BOSS",
    "ENTR_FIRE_BS": "ENTR_FIRE_TEMPLE_BOSS",
    "ENTR_MIZUSIN_BS": "ENTR_WATER_TEMPLE_BOSS",
    "ENTR_JYASINBOSS": "ENTR_SPIRIT_TEMPLE_BOSS",
    "ENTR_HAKADAN_BS": "ENTR_SHADOW_TEMPLE_BOSS",
    "ENTR_GANON_BOSS": "ENTR_GANONDORF_BOSS",
    "ENTR_YDAN": "ENTR_DEKU_TREE",
    "ENTR_DDAN": "ENTR_DODONGOS_CAVERN",
    "ENTR_BDAN": "ENTR_JABU_JABU",
    "ENTR_BMORI1": "ENTR_FOREST_TEMPLE",
    "ENTR_HIDAN": "ENTR_FIRE_TEMPLE",
    "ENTR_MIZUSIN": "ENTR_WATER_TEMPLE",
    "ENTR_JYASINZOU": "ENTR_SPIRIT_TEMPLE",
    "ENTR_HAKADANCH": "ENTR_BOTTOM_OF_THE_WELL",
    "ENTR_HAKADAN": "ENTR_SHADOW_TEMPLE",
    "ENTR_ICE_DOUKUTO": "ENTR_ICE_CAVERN",
    "ENTR_MEN": "ENTR_GERUDO_TRAINING_GROUND",
    "ENTR_GERUDOWAY": "ENTR_THIEVES_HIDEOUT",
    "ENTR_GANONTIKA_SONOGO": "ENTR_INSIDE_GANONS_CASTLE_COLLAPSE",
    "ENTR_GANONTIKA": "ENTR_INSIDE_GANONS_CASTLE",
    "ENTR_GANON_SONOGO": "ENTR_GANONS_TOWER_COLLAPSE_INTERIOR",
    "ENTR_TAKARAYA": "ENTR_TREASURE_BOX_SHOP",
    "ENTR_GANON_FINAL": "ENTR_GANONS_TOWER_COLLAPSE_EXTERIOR",
    "ENTR_ENTRA_N": "ENTR_MARKET_ENTRANCE_NIGHT",
    "ENTR_ENTRA": "ENTR_MARKET_ENTRANCE_DAY",
    "ENTR_ENRUI": "ENTR_MARKET_ENTRANCE_RUINS",
    "ENTR_MARKET_ALLEY_N": "ENTR_BACK_ALLEY_NIGHT",
    "ENTR_MARKET_ALLEY": "ENTR_BACK_ALLEY_DAY",
    "ENTR_MARKET_DAY": "ENTR_MARKET_DAY",
    "ENTR_MARKET_NIGHT": "ENTR_MARKET_NIGHT",
    "ENTR_MARKET_RUINS": "ENTR_MARKET_RUINS",
    "ENTR_SHRINE_N": "ENTR_TEMPLE_OF_TIME_EXTERIOR_NIGHT",
    "ENTR_SHRINE_R": "ENTR_TEMPLE_OF_TIME_EXTERIOR_RUINS",
    "ENTR_SHRINE": "ENTR_TEMPLE_OF_TIME_EXTERIOR_DAY",
    "ENTR_KOKIRI_HOME3": "ENTR_TWINS_HOUSE",
    "ENTR_KOKIRI_HOME4": "ENTR_MIDOS_HOUSE",
    "ENTR_KOKIRI_HOME5": "ENTR_SARIAS_HOUSE",
    "ENTR_KOKIRI_HOME": "ENTR_KNOW_IT_ALL_BROS_HOUSE",
    "ENTR_KAKARIKO3": "ENTR_BACK_ALLEY_HOUSE",
    "ENTR_KAKARIKO": "ENTR_KAKARIKO_CENTER_GUEST_HOUSE",
    "ENTR_SHOP1": "ENTR_BAZAAR",
    "ENTR_KOKIRI_SHOP": "ENTR_KOKIRI_SHOP",
    "ENTR_GOLON": "ENTR_GORON_SHOP",
    "ENTR_ZOORA": "ENTR_ZORA_SHOP",
    "ENTR_DRAG": "ENTR_POTION_SHOP_KAKARIKO",
    "ENTR_ALLEY_SHOP": "ENTR_POTION_SHOP_MARKET",
    "ENTR_NIGHT_SHOP": "ENTR_BOMBCHU_SHOP",
    "ENTR_FACE_SHOP": "ENTR_HAPPY_MASK_SHOP",
    "ENTR_LINK_HOME": "ENTR_LINKS_HOUSE",
    "ENTR_IMPA": "ENTR_DOG_LADY_HOUSE",
    "ENTR_MALON_STABLE": "ENTR_STABLE",
    "ENTR_LABO": "ENTR_IMPAS_HOUSE",
    "ENTR_HYLIA_LABO": "ENTR_LAKESIDE_LABORATORY",
    "ENTR_TENT": "ENTR_CARPENTERS_TENT",
    "ENTR_HUT": "ENTR_GRAVEKEEPERS_HUT",
    "ENTR_DAIYOUSEI_IZUMI": "ENTR_GREAT_FAIRYS_FOUNTAIN_MAGIC",
    "ENTR_YOUSEI_IZUMI_TATE": "ENTR_FAIRYS_FOUNTAIN",
    "ENTR_YOUSEI_IZUMI_YOKO": "ENTR_GREAT_FAIRYS_FOUNTAIN_SPELLS",
    "ENTR_KAKUSIANA": "ENTR_GROTTOS",
    "ENTR_HAKAANA2": "ENTR_GRAVE_WITH_FAIRYS_FOUNTAIN",
    "ENTR_HAKAANA_OUKE": "ENTR_ROYAL_FAMILYS_TOMB",
    "ENTR_HAKAANA": "ENTR_REDEAD_GRAVE",
    "ENTR_SYATEKIJYOU": "ENTR_SHOOTING_GALLERY",
    "ENTR_TOKINOMA": "ENTR_TEMPLE_OF_TIME",
    "ENTR_KENJYANOMA": "ENTR_CHAMBER_OF_THE_SAGES",
    "ENTR_HAIRAL_NIWA_N": "ENTR_CASTLE_COURTYARD_GUARDS_NIGHT",
    "ENTR_HAIRAL_NIWA_": "ENTR_CASTLE_COURTYARD_GUARDS_DAY_",
    "ENTR_HIRAL_DEMO": "ENTR_CUTSCENE_MAP",
    "ENTR_HAKASITARELAY": "ENTR_WINDMILL_AND_DAMPES_GRAVE",
    "ENTR_TURIBORI": "ENTR_FISHING_POND",
    "ENTR_NAKANIWA": "ENTR_CASTLE_COURTYARD_ZELDA",
    "ENTR_BOWLING": "ENTR_BOMBCHU_BOWLING_ALLEY",
    "ENTR_SOUKO": "ENTR_LON_LON_BUILDINGS",
    "ENTR_MIHARIGOYA": "ENTR_MARKET_GUARD_HOUSE",
    "ENTR_MAHOUYA": "ENTR_POTION_SHOP_GRANNY",
    "ENTR_GANON_DEMO": "ENTR_GANON_BOSS",
    "ENTR_KINSUTA": "ENTR_HOUSE_OF_SKULLTULA",
    "ENTR_SPOT00": "ENTR_HYRULE_FIELD",
    "ENTR_SPOT01": "ENTR_KAKARIKO_VILLAGE",
    "ENTR_SPOT02": "ENTR_GRAVEYARD",
    "ENTR_SPOT03": "ENTR_ZORAS_RIVER",
    "ENTR_SPOT04": "ENTR_KOKIRI_FOREST",
    "ENTR_SPOT05": "ENTR_SACRED_FOREST_MEADOW",
    "ENTR_SPOT06": "ENTR_LAKE_HYLIA",
    "ENTR_SPOT07": "ENTR_ZORAS_DOMAIN",
    "ENTR_SPOT08": "ENTR_ZORAS_FOUNTAIN",
    "ENTR_SPOT09": "ENTR_GERUDO_VALLEY",
    "ENTR_SPOT10": "ENTR_LOST_WOODS",
    "ENTR_SPOT11": "ENTR_DESERT_COLOSSUS",
    "ENTR_SPOT12": "ENTR_GERUDOS_FORTRESS",
    "ENTR_SPOT13": "ENTR_HAUNTED_WASTELAND",
    "ENTR_SPOT15": "ENTR_HYRULE_CASTLE",
    "ENTR_SPOT16": "ENTR_DEATH_MOUNTAIN_TRAIL",
    "ENTR_SPOT17": "ENTR_DEATH_MOUNTAIN_CRATER",
    "ENTR_SPOT18": "ENTR_GORON_CITY",
    "ENTR_SPOT20": "ENTR_LON_LON_RANCH",
    "ENTR_GANON_TOU": "ENTR_OUTSIDE_GANONS_CASTLE",
    "ENTR_GANON_0": "ENTR_GANONS_TOWER_0",
    "ENTR_GANON_1": "ENTR_GANONS_TOWER_1",
    "ENTR_GANON_2": "ENTR_GANONS_TOWER_2",
}

# all occurrences of keys will be replaced by associated value,
# if the occurence is the whole word
# for example, if there is a space before and an open parenthesis after,
# like for a function call: ` func_8002E4B4(`
wordReplace = {
    "SkelAnime_FrameUpdateMatrix":"SkelAnime_Update",
    "SkelAnime_ChangeAnimTransitionRepeat":"Animation_MorphToLoop",
    "SkelAnime_ChangeAnimDefaultRepeat":"Animation_PlayLoop",
    "SkelAnime_ChangeAnimPlaybackRepeat":"Animation_PlayLoopSetSpeed",
    "SkelAnime_ChangeAnimTransitionStop":"Animation_MorphToPlayOnce",
    "SkelAnime_ChangeAnimDefaultStop":"Animation_PlayOnce",
    "SkelAnime_ChangeAnimPlaybackStop":"Animation_PlayOnceSetSpeed",
    "SkelAnime_ChangeAnimImpl":"Animation_ChangeImpl",
    "SkelAnime_ChangeAnim":"Animation_Change",
    "SkelAnime_GetFrameCount":"Animation_GetLastFrame",
    "func_800A56C8":"Animation_OnFrame",
    "skelAnime.animCurrentFrame":"skelAnime.curFrame",
    "skelAnime.animPlaybackSpeed":"skelAnime.playSpeed",
    "skelAnime.initialFrame":"skelAnime.startFrame",
    "skelAnime.animFrameCount":"skelAnime.endFrame",
    "skelAnime.totalFrames":"skelAnime.animLength",
    "skelAnime.limbDrawTbl":"skelAnime.jointTable",
    "skelAnime.transitionDrawTbl":"skelAnime.morphTable",
    "skelAnime.transCurrentFrame":"skelAnime.morphWeight",
    "skelAnime.transitionStep":"skelAnime.morphRate",
    "skelAnime.flags":"skelAnime.moveFlags",
    "skelAnime.prevFrameRot":"skelAnime.prevRot",
    "skelAnime.prevFramePos":"skelAnime.prevTransl",
    "skelAnime.unk_3E":"skelAnime.baseTransl",
    "skelAnime.unk_03":"skelAnime.taper",
    "func_800CA540(":"Math_FactorialF(",
    "func_800CA63C(":"Math_Factorial(",
    "func_800CA6FC(":"Math_PowF(",
    "func_800CA720(":"Math_SinF(",
    "func_800CA774(":"Math_CosF(",
    "Math_atan2f(":"Math_FAtan2F(",
    "atan2f(":"Math_Atan2F(",
    "atan2s(":"Math_Atan2S(",
    "Math_Coss(":"Math_CosS(",
    "Math_Sins(":"Math_SinS(",
    "Math_ApproxUpdateScaledS(":"Math_ScaledStepToS(",
    "Math_ApproxS(":"Math_StepToS(",
    "Math_ApproxF(":"Math_StepToF(",
    "func_80077A90(":"Math_StepUntilAngleS(",
    "func_80077AF8(":"Math_StepUntilS(",
    "func_80077B58(":"Math_StepToAngleS(",
    "func_80077C1C(":"Math_StepUntilF(",
    "func_80077C6C(":"Math_AsymStepToF(",
    "Math_SmoothScaleMaxMinF(":"Math_SmoothStepToF(",
    "Math_SmoothScaleMaxF(":"Math_ApproachF(",
    "Math_SmoothDownscaleMaxF(":"Math_ApproachZeroF(",
    "func_800784D8(":"Math_SmoothStepToDegF(",
    "Math_SmoothScaleMaxMinS(":"Math_SmoothStepToS(",
    "Math_SmoothScaleMaxS(":"Math_ApproachS(",
    "Actor_SetHeight":"Actor_SetFocus",
    "func_8002E4B4":"Actor_UpdateBgCheckInfo",
    "func_8002BDB0":"Actor_SetFeetPos",
    "func_8002DA78":"Actor_WorldYawTowardActor",
    "func_8002DAC0":"Actor_WorldYawTowardPoint",
    "func_8002DB48":"Actor_WorldDistXYZToActor",
    "func_8002DB6C":"Actor_WorldDistXYZToPoint",
    "func_8002DAE0":"Actor_WorldPitchTowardActor",
    "func_8002DB28":"Actor_WorldPitchTowardPoint",
    "func_8002DB8C":"Actor_WorldDistXZToActor",
    "func_8002DBB0":"Actor_WorldDistXZToPoint",
    "func_8002EEE4":"Actor_GetFocus",
    "func_8002EF14":"Actor_GetWorld",
    "func_8002EF44":"Actor_GetWorldPosShapeRot",
    "actor.unk_1F":"actor.targetMode",
    "ICHAIN_U8(unk_1F":"ICHAIN_U8(targetMode",
    "actor.initPosRot":"actor.home",
    "actor.posRot.":"actor.world.",
    "actor.posRot2":"actor.focus",
    "actor.unk_4C":"actor.targetArrowOffset",
    "ICHAIN_F32(unk_4C":"ICHAIN_F32(targetArrowOffset",
    "actor.groundY":"actor.floorHeight",
    "actor.wallPolySource":"actor.wallBgId",
    "actor.floorPolySource":"actor.floorBgId",
    "actor.wallPolyRot":"actor.wallYaw",
    "yawTowardsLink":"yawTowardsPlayer",
    "colChkInfo.unk_10":"colChkInfo.cylRadius",
    "colChkInfo.unk_12":"colChkInfo.cylHeight",
    "colChkInfo.unk_14":"colChkInfo.cylYShift",
    "shape.unk_08":"shape.yOffset",
    "shape.shadowDrawFunc":"shape.shadowDraw",
    "shape.unk_10":"shape.shadowScale",
    "shape.unk_14":"shape.shadowAlpha",
    "actor.unk_CC":"actor.shape.feetPos",
    "actor.pos4":"actor.prevPos",
    "actor.unk_10C":"actor.isTargeted",
    "actor.unk_10D":"actor.targetPriority",
    "actor.dmgEffectTimer":"actor.colorFilterTimer",
    "actor.dmgEffectParams":"actor.colorFilterParams",
    "actor.unk_116":"actor.dropFlag",
    "actorCtx.actorList[":"actorCtx.actorLists[",
    "Actor_ChangeType":"Actor_ChangeCategory",
    "ActorShadow_DrawFunc_Squiggly":"ActorShadow_DrawHorse",
    "ActorShadow_DrawFunc_":"ActorShadow_Draw",
    "actor.type":"actor.category",
    ".body.":".info.",
    "bumper.unk_06":"bumper.hitPos",
    "base.list":"base.elements",
    "toucher.flags":"toucher.dmgFlags",
    "bumper.flags":"bumper.dmgFlags",
    "maskA ":"ocFlags1 ",
    "maskB ":"ocFlags2 ",
    ".base.type":".base.colType",
    "COLTYPE_UNK11":"COLTYPE_HARD",
    "COLTYPE_UNK12":"COLTYPE_WOOD",
    "COLTYPE_UNK13":"COLTYPE_TREE",
    "COLTYPE_METAL_SHIELD":"COLTYPE_METAL",
    "COLTYPE_UNK10":"COLTYPE_NONE",
    "COLTYPE_UNK":"COLTYPE_HIT",
    "info.flags":"info.elemtype",
    "ColliderBody":"ColliderInfo",
    "ColliderJntSphItem":"ColliderJntSphElement",
    "ColliderTrisItem":"ColliderTrisElement",
    "Collider_CylinderUpdate":"Collider_UpdateCylinder",
    "func_800628A4":"Collider_UpdateSpheres",
    "func_800627A0":"Collider_SetTrisVertices",
    "func_80062734":"Collider_SetQuadVertices",
    "func_80061ED4":"CollisionCheck_SetInfo",
    "func_80061EFC":"CollisionCheck_SetInfo2",
    "func_80061EB0":"CollisionCheck_SetInfoNoDamageTable",
    "func_8002E084": "Actor_IsFacingPlayer",
    "func_8002E0D0": "Actor_ActorAIsFacingActorB",
    "func_8002E12C": "Actor_IsFacingAndNearPlayer",
    "func_8002E1A8": "Actor_ActorAIsFacingAndNearActorB",
    "func_80033A84": "Actor_IsTargeted",
    "func_80033AB8": "Actor_OtherIsTargeted",
    "func_80035650": "Actor_SetDropFlag",
    "func_8003573C": "Actor_SetDropFlagJntSph",
    "func_80033780": "Actor_GetProjectileActor",
    "func_80033260": "Actor_SpawnFloorDustRing",
    "Actor_SpawnFloorDust": "Actor_SpawnFloorDustRing",
    "func_80032C7C": "Enemy_StartFinishingBlow",
    "actorCtx.unk_00": "actorCtx.freezeFlashTimer",
    "func_800339B8": "Actor_TestFloorInDirection",
    "Matrix_Reverse": "Matrix_Transpose",
    "func_800D20CC": "Matrix_MtxFToYXZRotS",
    "func_800D2264": "Matrix_MtxFToZYXRotS",
    "func_800D23FC": "Matrix_RotateAxis",
    "PLAYER": ("GET_PLAYER(play)", {"ignore": (-1, '"PLAYER"')}), # ignore "PLAYER" in sSfxBankNames
    "ACTIVE_CAM": "GET_ACTIVE_CAM(play)",
    "SkinMatrix_SetRotateRPY": "SkinMatrix_SetRotateZYX",
    "SkinMatrix_SetScaleRotateYRPTranslate": "SkinMatrix_SetScaleRotateYXZTranslate",
    "SkinMatrix_SetScaleRotateYXZTranslate": "SkinMatrix_SetTranslateRotateYXZScale",
    "SkinMatrix_SetRotateRPYTranslate": "SkinMatrix_SetRotateZYXTranslate",
    "SkinMatrix_SetRotateZYXTranslate": "SkinMatrix_SetTranslateRotateZYX",
    "Matrix_RotateRPY": "Matrix_RotateZYX",
    "Matrix_JointPosition": "Matrix_TranslateRotateZYX",
    "func_800D1694": "Matrix_SetTranslateRotateYXZ",
    "func_800D1FD4": "Matrix_ReplaceRotation",
    "func_800A7EC0": "SkinMatrix_SetRotateAxis",
    "func_800D2A34": "Matrix_SetTranslateUniformScaleMtxF",
    "func_800D2A98": "Matrix_SetTranslateUniformScaleMtx",
    "func_800D2CEC": "Matrix_SetTranslateScaleMtx2",
    "SCENE_YDAN": "SCENE_DEKU_TREE",
    "SCENE_DDAN": "SCENE_DODONGOS_CAVERN",
    "SCENE_BDAN": "SCENE_JABU_JABU",
    "SCENE_BMORI1": "SCENE_FOREST_TEMPLE",
    "SCENE_HIDAN": "SCENE_FIRE_TEMPLE",
    "SCENE_MIZUSIN": "SCENE_WATER_TEMPLE",
    "SCENE_JYASINZOU": "SCENE_SPIRIT_TEMPLE",
    "SCENE_HAKADAN": "SCENE_SHADOW_TEMPLE",
    "SCENE_HAKADANCH": "SCENE_BOTTOM_OF_THE_WELL",
    "SCENE_ICE_DOUKUTO": "SCENE_ICE_CAVERN",
    "SCENE_GANON": "SCENE_GANONS_TOWER",
    "SCENE_MEN": "SCENE_GERUDO_TRAINING_GROUND",
    "SCENE_GERUDOWAY": "SCENE_THIEVES_HIDEOUT",
    "SCENE_GANONTIKA": "SCENE_INSIDE_GANONS_CASTLE",
    "SCENE_GANON_SONOGO": "SCENE_GANONS_TOWER_COLLAPSE_INTERIOR",
    "SCENE_GANONTIKA_SONOGO": "SCENE_INSIDE_GANONS_CASTLE_COLLAPSE",
    "SCENE_TAKARAYA": "SCENE_TREASURE_BOX_SHOP",
    "SCENE_YDAN_BOSS": "SCENE_DEKU_TREE_BOSS",
    "SCENE_DDAN_BOSS": "SCENE_DODONGOS_CAVERN_BOSS",
    "SCENE_BDAN_BOSS": "SCENE_JABU_JABU_BOSS",
    "SCENE_MORIBOSSROOM": "SCENE_FOREST_TEMPLE_BOSS",
    "SCENE_FIRE_BS": "SCENE_FIRE_TEMPLE_BOSS",
    "SCENE_MIZUSIN_BS": "SCENE_WATER_TEMPLE_BOSS",
    "SCENE_JYASINBOSS": "SCENE_SPIRIT_TEMPLE_BOSS",
    "SCENE_HAKADAN_BS": "SCENE_SHADOW_TEMPLE_BOSS",
    "SCENE_GANON_BOSS": "SCENE_GANONDORF_BOSS",
    "SCENE_GANON_FINAL": "SCENE_GANONS_TOWER_COLLAPSE_EXTERIOR",
    "SCENE_ENTRA": "SCENE_MARKET_ENTRANCE_DAY",
    "SCENE_ENTRA_N": "SCENE_MARKET_ENTRANCE_NIGHT",
    "SCENE_ENRUI": "SCENE_MARKET_ENTRANCE_RUINS",
    "SCENE_MARKET_ALLEY": "SCENE_BACK_ALLEY_DAY",
    "SCENE_MARKET_ALLEY_N": "SCENE_BACK_ALLEY_NIGHT",
    "SCENE_MARKET_DAY": "SCENE_MARKET_DAY",
    "SCENE_MARKET_NIGHT": "SCENE_MARKET_NIGHT",
    "SCENE_MARKET_RUINS": "SCENE_MARKET_RUINS",
    "SCENE_SHRINE": "SCENE_TEMPLE_OF_TIME_EXTERIOR_DAY",
    "SCENE_SHRINE_N": "SCENE_TEMPLE_OF_TIME_EXTERIOR_NIGHT",
    "SCENE_SHRINE_R": "SCENE_TEMPLE_OF_TIME_EXTERIOR_RUINS",
    "SCENE_KOKIRI_HOME": "SCENE_KNOW_IT_ALL_BROS_HOUSE",
    "SCENE_KOKIRI_HOME3": "SCENE_TWINS_HOUSE",
    "SCENE_KOKIRI_HOME4": "SCENE_MIDOS_HOUSE",
    "SCENE_KOKIRI_HOME5": "SCENE_SARIAS_HOUSE",
    "SCENE_KAKARIKO": "SCENE_KAKARIKO_CENTER_GUEST_HOUSE",
    "SCENE_KAKARIKO3": "SCENE_BACK_ALLEY_HOUSE",
    "SCENE_SHOP1": "SCENE_BAZAAR",
    "SCENE_KOKIRI_SHOP": "SCENE_KOKIRI_SHOP",
    "SCENE_GOLON": "SCENE_GORON_SHOP",
    "SCENE_ZOORA": "SCENE_ZORA_SHOP",
    "SCENE_DRAG": "SCENE_POTION_SHOP_KAKARIKO",
    "SCENE_ALLEY_SHOP": "SCENE_POTION_SHOP_MARKET",
    "SCENE_NIGHT_SHOP": "SCENE_BOMBCHU_SHOP",
    "SCENE_FACE_SHOP": "SCENE_HAPPY_MASK_SHOP",
    "SCENE_LINK_HOME": "SCENE_LINKS_HOUSE",
    "SCENE_IMPA": "SCENE_DOG_LADY_HOUSE",
    "SCENE_MALON_STABLE": "SCENE_STABLE",
    "SCENE_LABO": "SCENE_IMPAS_HOUSE",
    "SCENE_HYLIA_LABO": "SCENE_LAKESIDE_LABORATORY",
    "SCENE_TENT": "SCENE_CARPENTERS_TENT",
    "SCENE_HUT": "SCENE_GRAVEKEEPERS_HUT",
    "SCENE_DAIYOUSEI_IZUMI": "SCENE_GREAT_FAIRYS_FOUNTAIN_MAGIC",
    "SCENE_YOUSEI_IZUMI_TATE": "SCENE_FAIRYS_FOUNTAIN",
    "SCENE_YOUSEI_IZUMI_YOKO": "SCENE_GREAT_FAIRYS_FOUNTAIN_SPELLS",
    "SCENE_KAKUSIANA": "SCENE_GROTTOS",
    "SCENE_HAKAANA": "SCENE_REDEAD_GRAVE",
    "SCENE_HAKAANA2": "SCENE_GRAVE_WITH_FAIRYS_FOUNTAIN",
    "SCENE_HAKAANA_OUKE": "SCENE_ROYAL_FAMILYS_TOMB",
    "SCENE_SYATEKIJYOU": "SCENE_SHOOTING_GALLERY",
    "SCENE_TOKINOMA": "SCENE_TEMPLE_OF_TIME",
    "SCENE_KENJYANOMA": "SCENE_CHAMBER_OF_THE_SAGES",
    "SCENE_HAIRAL_NIWA": "SCENE_CASTLE_COURTYARD_GUARDS_DAY",
    "SCENE_HAIRAL_NIWA_N": "SCENE_CASTLE_COURTYARD_GUARDS_NIGHT",
    "SCENE_HIRAL_DEMO": "SCENE_CUTSCENE_MAP",
    "SCENE_HAKASITARELAY": "SCENE_WINDMILL_AND_DAMPES_GRAVE",
    "SCENE_TURIBORI": "SCENE_FISHING_POND",
    "SCENE_NAKANIWA": "SCENE_CASTLE_COURTYARD_ZELDA",
    "SCENE_BOWLING": "SCENE_BOMBCHU_BOWLING_ALLEY",
    "SCENE_SOUKO": "SCENE_LON_LON_BUILDINGS",
    "SCENE_MIHARIGOYA": "SCENE_MARKET_GUARD_HOUSE",
    "SCENE_MAHOUYA": "SCENE_POTION_SHOP_GRANNY",
    "SCENE_GANON_DEMO": "SCENE_GANON_BOSS",
    "SCENE_KINSUTA": "SCENE_HOUSE_OF_SKULLTULA",
    "SCENE_SPOT00": "SCENE_HYRULE_FIELD",
    "SCENE_SPOT01": "SCENE_KAKARIKO_VILLAGE",
    "SCENE_SPOT02": "SCENE_GRAVEYARD",
    "SCENE_SPOT03": "SCENE_ZORAS_RIVER",
    "SCENE_SPOT04": "SCENE_KOKIRI_FOREST",
    "SCENE_SPOT05": "SCENE_SACRED_FOREST_MEADOW",
    "SCENE_SPOT06": "SCENE_LAKE_HYLIA",
    "SCENE_SPOT07": "SCENE_ZORAS_DOMAIN",
    "SCENE_SPOT08": "SCENE_ZORAS_FOUNTAIN",
    "SCENE_SPOT09": "SCENE_GERUDO_VALLEY",
    "SCENE_SPOT10": "SCENE_LOST_WOODS",
    "SCENE_SPOT11": "SCENE_DESERT_COLOSSUS",
    "SCENE_SPOT12": "SCENE_GERUDOS_FORTRESS",
    "SCENE_SPOT13": "SCENE_HAUNTED_WASTELAND",
    "SCENE_SPOT15": "SCENE_HYRULE_CASTLE",
    "SCENE_SPOT16": "SCENE_DEATH_MOUNTAIN_TRAIL",
    "SCENE_SPOT17": "SCENE_DEATH_MOUNTAIN_CRATER",
    "SCENE_SPOT18": "SCENE_GORON_CITY",
    "SCENE_SPOT20": "SCENE_LON_LON_RANCH",
    "SCENE_GANON_TOU": "SCENE_OUTSIDE_GANONS_CASTLE",
    "SDC_SPOT00": "SDC_HYRULE_FIELD",
    "SDC_SPOT01": "SDC_KAKARIKO_VILLAGE",
    "SDC_SPOT03": "SDC_ZORAS_RIVER",
    "SDC_SPOT04": "SDC_KOKIRI_FOREST",
    "SDC_SPOT06": "SDC_LAKE_HYLIA",
    "SDC_SPOT07": "SDC_ZORAS_DOMAIN",
    "SDC_SPOT08": "SDC_ZORAS_FOUNTAIN",
    "SDC_SPOT09": "SDC_GERUDO_VALLEY",
    "SDC_SPOT10": "SDC_LOST_WOODS",
    "SDC_SPOT11": "SDC_DESERT_COLOSSUS",
    "SDC_SPOT12": "SDC_GERUDOS_FORTRESS",
    "SDC_SPOT13": "SDC_HAUNTED_WASTELAND",
    "SDC_SPOT15": "SDC_HYRULE_CASTLE",
    "SDC_SPOT16": "SDC_DEATH_MOUNTAIN_TRAIL",
    "SDC_SPOT17": "SDC_DEATH_MOUNTAIN_CRATER",
    "SDC_SPOT18": "SDC_GORON_CITY",
    "SDC_SPOT20": "SDC_LON_LON_RANCH",
    "SDC_HIDAN": "SDC_FIRE_TEMPLE",
    "SDC_YDAN": "SDC_DEKU_TREE",
    "SDC_DDAN": "SDC_DODONGOS_CAVERN",
    "SDC_BDAN": "SDC_JABU_JABU",
    "SDC_BMORI1": "SDC_FOREST_TEMPLE",
    "SDC_MIZUSIN": "SDC_WATER_TEMPLE",
    "SDC_HAKADAN": "SDC_SHADOW_TEMPLE",
    "SDC_JYASINZOU": "SDC_SPIRIT_TEMPLE",
    "SDC_GANONTIKA": "SDC_INSIDE_GANONS_CASTLE",
    "SDC_MEN": "SDC_GERUDO_TRAINING_GROUND",
    "SDC_YDAN_BOSS": "SDC_DEKU_TREE_BOSS",
    "SDC_MIZUSIN_BS": "SDC_WATER_TEMPLE_BOSS",
    "SDC_TOKINOMA": "SDC_TEMPLE_OF_TIME",
    "SDC_KAKUSIANA": "SDC_GROTTOS",
    "SDC_KENJYANOMA": "SDC_CHAMBER_OF_THE_SAGES",
    "SDC_GREAT_FAIRY_FOUNTAIN": "SDC_GREAT_FAIRYS_FOUNTAIN",
    "SDC_SYATEKIJYOU": "SDC_SHOOTING_GALLERY",
    "SDC_HAIRAL_NIWA": "SDC_CASTLE_COURTYARD_GUARDS",
    "SDC_GANON_CASTLE_EXTERIOR": "SDC_OUTSIDE_GANONS_CASTLE",
    "SDC_ICE_DOUKUTO": "SDC_ICE_CAVERN",
    "SDC_GANON_FINAL": "SDC_GANONS_TOWER_COLLAPSE_EXTERIOR",
    "SDC_FAIRY_FOUNTAIN": "SDC_FAIRYS_FOUNTAIN",
    "SDC_GERUDOWAY": "SDC_THIEVES_HIDEOUT",
    "SDC_BOWLING": "SDC_BOMBCHU_BOWLING_ALLEY",
    "SDC_HAKAANA_OUKE": "SDC_ROYAL_FAMILYS_TOMB",
    "SDC_HYLIA_LABO": "SDC_LAKESIDE_LABORATORY",
    "SDC_SOUKO": "SDC_LON_LON_BUILDINGS",
    "SDC_MIHARIGOYA": "SDC_MARKET_GUARD_HOUSE",
    "SDC_MAHOUYA": "SDC_POTION_SHOP_GRANNY",
    "SDC_TURIBORI": "SDC_FISHING_POND",
    "SDC_GANON_SONOGO": "SDC_GANONS_TOWER_COLLAPSE_INTERIOR",
    "SDC_GANONTIKA_SONOGO": "SDC_INSIDE_GANONS_CASTLE_COLLAPSE",
    "ENTR_HAIRAL_NIWA": "ENTR_CASTLE_COURTYARD_GUARDS_DAY",
}

# [a-zA-Z0-9_]
def is_word_char(c):
    return (c >= 'a' and c <= 'z') or (c >= 'A' and c <= 'Z') or (c >= '0' and c <= '9') or c == '_'

def replace_single(file):
    with open(file, 'r', encoding = 'utf-8') as infile:
        srcdata = infile.read()

    changesCount = 0

    for old, new in simpleReplace.items():
        # replace `old` with `new`
        if old in srcdata:
            changesCount += 1
            print(old, "->", new)
            srcdata = srcdata.replace(old, new)

    for old, new in wordReplace.items():
        # `new` can be a tuple where the first element is what to replace `old` with,
        # and the second element is a dict containing "custom behavior" properties.
        if isinstance(new, tuple):
            custom_behavior = True
            new, custom_behavior_data = new
            # The "ignore" data is a tuple where the first element is an offset relative to
            # where `old` was found, and the string from that index must differ from the
            # tuple's second element for the replacement to be done.
            custom_behavior_ignore_data = custom_behavior_data.get("ignore")
            custom_behavior_ignore = custom_behavior_ignore_data is not None
            if custom_behavior_ignore:
                custom_behavior_ignore_offset, custom_behavior_ignore_match = custom_behavior_ignore_data
        else:
            custom_behavior = False
        # replace `old` with `new` if the occurence of `old` is the whole word
        oldStartIdx = srcdata.find(old)
        if oldStartIdx >= 0:
            old_start_as_word = is_word_char(old[0])
            old_end_as_word = is_word_char(old[-1])
            replaceCount = 0
            while oldStartIdx >= 0:
                replace = True
                if old_start_as_word:
                    if oldStartIdx == 0:
                        pass
                    elif is_word_char(srcdata[oldStartIdx-1]):
                        replace = False
                if old_end_as_word:
                    oldEndIdx = oldStartIdx + len(old)
                    if oldEndIdx >= len(srcdata):
                        pass
                    elif is_word_char(srcdata[oldEndIdx]):
                        replace = False
                if replace and custom_behavior and custom_behavior_ignore:
                    if srcdata[oldStartIdx + custom_behavior_ignore_offset:].startswith(custom_behavior_ignore_match):
                        replace = False
                if replace:
                    srcdata = srcdata[:oldStartIdx] + new + srcdata[oldEndIdx:]
                    replaceCount += 1
                oldStartIdx = srcdata.find(old, oldStartIdx + len(new))
            if replaceCount > 0:
                changesCount += 1
                print(old, "->", new)

    if changesCount > 0:
        print('Changed', changesCount, 'entry' if changesCount == 1 else 'entries', 'in', file)
        with open(file, 'w', encoding = 'utf-8', newline = '\n') as outfile:
            outfile.write(srcdata)

def replace_all(repo):
    for subdir, dirs, files in os.walk(repo + os.sep + 'src'):
        for filename in files:
            if filename.endswith('.c'):
                file = subdir + os.sep + filename
                replace_single(file)
    for subdir, dirs, files in os.walk(repo + os.sep + 'asm' + os.sep + 'non_matchings'):
        for filename in files:
            if filename.endswith('.s'):
                file = subdir + os.sep + filename
                replace_single(file)

parser = argparse.ArgumentParser(description='Apply function renames to a file')
parser.add_argument('file', help="source file to be processed. use . to process the whole repo")

if __name__ == "__main__":
    args = parser.parse_args()
    if args.file == '.':
        replace_all(os.curdir)
    else:
        replace_single(args.file)
