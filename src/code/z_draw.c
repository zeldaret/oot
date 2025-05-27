#include "gfx.h"
#include "gfx_setupdl.h"
#include "sys_matrix.h"
#include "z64draw.h"
#include "z64play.h"

#include "assets/objects/object_gi_key/object_gi_key.h"
#include "assets/objects/object_gi_jewel/object_gi_jewel.h"
#include "assets/objects/object_gi_melody/object_gi_melody.h"
#include "assets/objects/object_gi_heart/object_gi_heart.h"
#include "assets/objects/object_gi_compass/object_gi_compass.h"
#include "assets/objects/object_gi_bosskey/object_gi_bosskey.h"
#include "assets/objects/object_gi_medal/object_gi_medal.h"
#include "assets/objects/object_gi_nuts/object_gi_nuts.h"
#include "assets/objects/object_gi_hearts/object_gi_hearts.h"
#include "assets/objects/object_gi_arrowcase/object_gi_arrowcase.h"
#include "assets/objects/object_gi_bombpouch/object_gi_bombpouch.h"
#include "assets/objects/object_gi_bottle/object_gi_bottle.h"
#include "assets/objects/object_gi_stick/object_gi_stick.h"
#include "assets/objects/object_gi_map/object_gi_map.h"
#include "assets/objects/object_gi_shield_1/object_gi_shield_1.h"
#include "assets/objects/object_gi_magicpot/object_gi_magicpot.h"
#include "assets/objects/object_gi_bomb_1/object_gi_bomb_1.h"
#include "assets/objects/object_gi_purse/object_gi_purse.h"
#include "assets/objects/object_gi_gerudo/object_gi_gerudo.h"
#include "assets/objects/object_gi_arrow/object_gi_arrow.h"
#include "assets/objects/object_gi_bomb_2/object_gi_bomb_2.h"
#include "assets/objects/object_gi_egg/object_gi_egg.h"
#include "assets/objects/object_gi_scale/object_gi_scale.h"
#include "assets/objects/object_gi_shield_2/object_gi_shield_2.h"
#include "assets/objects/object_gi_hookshot/object_gi_hookshot.h"
#include "assets/objects/object_gi_ocarina/object_gi_ocarina.h"
#include "assets/objects/object_gi_milk/object_gi_milk.h"
#include "assets/objects/object_gi_pachinko/object_gi_pachinko.h"
#include "assets/objects/object_gi_boomerang/object_gi_boomerang.h"
#include "assets/objects/object_gi_bow/object_gi_bow.h"
#include "assets/objects/object_gi_glasses/object_gi_glasses.h"
#include "assets/objects/object_gi_liquid/object_gi_liquid.h"
#include "assets/objects/object_gi_shield_3/object_gi_shield_3.h"
#include "assets/objects/object_gi_letter/object_gi_letter.h"
#include "assets/objects/object_gi_clothes/object_gi_clothes.h"
#include "assets/objects/object_gi_bean/object_gi_bean.h"
#include "assets/objects/object_gi_fish/object_gi_fish.h"
#include "assets/objects/object_gi_saw/object_gi_saw.h"
#include "assets/objects/object_gi_hammer/object_gi_hammer.h"
#include "assets/objects/object_gi_grass/object_gi_grass.h"
#include "assets/objects/object_gi_longsword/object_gi_longsword.h"
#include "assets/objects/object_gi_niwatori/object_gi_niwatori.h"
#include "assets/objects/object_gi_bottle_letter/object_gi_bottle_letter.h"
#include "assets/objects/object_gi_ocarina_0/object_gi_ocarina_0.h"
#include "assets/objects/object_gi_boots_2/object_gi_boots_2.h"
#include "assets/objects/object_gi_seed/object_gi_seed.h"
#include "assets/objects/object_gi_gloves/object_gi_gloves.h"
#include "assets/objects/object_gi_coin/object_gi_coin.h"
#include "assets/objects/object_gi_ki_tan_mask/object_gi_ki_tan_mask.h"
#include "assets/objects/object_gi_redead_mask/object_gi_redead_mask.h"
#include "assets/objects/object_gi_skj_mask/object_gi_skj_mask.h"
#include "assets/objects/object_gi_rabit_mask/object_gi_rabit_mask.h"
#include "assets/objects/object_gi_truth_mask/object_gi_truth_mask.h"
#include "assets/objects/object_gi_eye_lotion/object_gi_eye_lotion.h"
#include "assets/objects/object_gi_powder/object_gi_powder.h"
#include "assets/objects/object_gi_mushroom/object_gi_mushroom.h"
#include "assets/objects/object_gi_ticketstone/object_gi_ticketstone.h"
#include "assets/objects/object_gi_brokensword/object_gi_brokensword.h"
#include "assets/objects/object_gi_prescription/object_gi_prescription.h"
#include "assets/objects/object_gi_bracelet/object_gi_bracelet.h"
#include "assets/objects/object_gi_soldout/object_gi_soldout.h"
#include "assets/objects/object_gi_frog/object_gi_frog.h"
#include "assets/objects/object_gi_golonmask/object_gi_golonmask.h"
#include "assets/objects/object_gi_zoramask/object_gi_zoramask.h"
#include "assets/objects/object_gi_gerudomask/object_gi_gerudomask.h"
#include "assets/objects/object_gi_hoverboots/object_gi_hoverboots.h"
#include "assets/objects/object_gi_m_arrow/object_gi_m_arrow.h"
#include "assets/objects/object_gi_sutaru/object_gi_sutaru.h"
#include "assets/objects/object_gi_goddess/object_gi_goddess.h"
#include "assets/objects/object_gi_fire/object_gi_fire.h"
#include "assets/objects/object_gi_insect/object_gi_insect.h"
#include "assets/objects/object_gi_butterfly/object_gi_butterfly.h"
#include "assets/objects/object_gi_ghost/object_gi_ghost.h"
#include "assets/objects/object_gi_soul/object_gi_soul.h"
#include "assets/objects/object_gi_dekupouch/object_gi_dekupouch.h"
#include "assets/objects/object_gi_rupy/object_gi_rupy.h"
#include "assets/objects/object_gi_sword_1/object_gi_sword_1.h"
#include "assets/objects/object_st/object_st.h"

// "Get Item" Model Draw Functions
void GetItem_DrawMaskOrBombchu(PlayState* play, s16 drawId);
void GetItem_DrawSoldOut(PlayState* play, s16 drawId);
void GetItem_DrawBlueFire(PlayState* play, s16 drawId);
void GetItem_DrawPoes(PlayState* play, s16 drawId);
void GetItem_DrawFairy(PlayState* play, s16 drawId);
void GetItem_DrawMirrorShield(PlayState* play, s16 drawId);
void GetItem_DrawSkullToken(PlayState* play, s16 drawId);
void GetItem_DrawEggOrMedallion(PlayState* play, s16 drawId);
void GetItem_DrawCompass(PlayState* play, s16 drawId);
void GetItem_DrawPotion(PlayState* play, s16 drawId);
void GetItem_DrawGoronSword(PlayState* play, s16 drawId);
void GetItem_DrawDekuNuts(PlayState* play, s16 drawId);
void GetItem_DrawRecoveryHeart(PlayState* play, s16 drawId);
void GetItem_DrawFish(PlayState* play, s16 drawId);
void GetItem_DrawOpa0(PlayState* play, s16 drawId);
void GetItem_DrawOpa0Xlu1(PlayState* play, s16 drawId);
void GetItem_DrawXlu01(PlayState* play, s16 drawId);
void GetItem_DrawOpa10Xlu2(PlayState* play, s16 drawId);
void GetItem_DrawMagicArrow(PlayState* play, s16 drawId);
void GetItem_DrawMagicSpell(PlayState* play, s16 drawId);
void GetItem_DrawOpa1023(PlayState* play, s16 drawId);
void GetItem_DrawOpa10Xlu32(PlayState* play, s16 drawId);
void GetItem_DrawSmallRupee(PlayState* play, s16 drawId);
void GetItem_DrawScale(PlayState* play, s16 drawId);
void GetItem_DrawBulletBag(PlayState* play, s16 drawId);
void GetItem_DrawWallet(PlayState* play, s16 drawId);

typedef struct DrawItemTableEntry {
    /* 0x00 */ void (*drawFunc)(PlayState*, s16);
    /* 0x04 */ Gfx* dlists[8];
} DrawItemTableEntry; // size = 0x24

DrawItemTableEntry sDrawItemTable[] = {
    // bottle, OBJECT_GI_BOTTLE
    { GetItem_DrawOpa0Xlu1, { gGiBottleStopperDL, gGiBottleDL } },
    // small key, OBJECT_GI_KEY
    { GetItem_DrawOpa0, { gGiSmallKeyDL } },
    // minuet of forest, OBJECT_GI_MELODY
    { GetItem_DrawXlu01, { gGiMinuetColorDL, gGiSongNoteDL } },
    // bolero of fire, OBJECT_GI_MELODY
    { GetItem_DrawXlu01, { gGiBoleroColorDL, gGiSongNoteDL } },
    // serenade of water, OBJECT_GI_MELODY
    { GetItem_DrawXlu01, { gGiSerenadeColorDL, gGiSongNoteDL } },
    // requiem of spirit, OBJECT_GI_MELODY
    { GetItem_DrawXlu01, { gGiRequiemColorDL, gGiSongNoteDL } },
    // nocturne of shadow, OBJECT_GI_MELODY
    { GetItem_DrawXlu01, { gGiNocturneColorDL, gGiSongNoteDL } },
    // prelude of light, OBJECT_GI_MELODY
    { GetItem_DrawXlu01, { gGiPreludeColorDL, gGiSongNoteDL } },
    // recovery heart, OBJECT_GI_HEART
    { GetItem_DrawRecoveryHeart, { gGiRecoveryHeartDL } },
    // boss key, OBJECT_GI_BOSSKEY
    { GetItem_DrawOpa0Xlu1, { gGiBossKeyDL, gGiBossKeyGemDL } },
    // compass, OBJECT_GI_COMPASS
    { GetItem_DrawCompass, { gGiCompassDL, gGiCompassGlassDL } },
    // forest medallion, OBJECT_GI_MEDAL
    { GetItem_DrawEggOrMedallion, { gGiForestMedallionFaceDL, gGiMedallionDL } },
    // fire medallion, OBJECT_GI_MEDAL
    { GetItem_DrawEggOrMedallion, { gGiFireMedallionFaceDL, gGiMedallionDL } },
    // water medallion, OBJECT_GI_MEDAL
    { GetItem_DrawEggOrMedallion, { gGiWaterMedallionFaceDL, gGiMedallionDL } },
    // spirit medallion, OBJECT_GI_MEDAL
    { GetItem_DrawEggOrMedallion, { gGiSpiritMedallionFaceDL, gGiMedallionDL } },
    // shadow medallion, OBJECT_GI_MEDAL
    { GetItem_DrawEggOrMedallion, { gGiShadowMedallionFaceDL, gGiMedallionDL } },
    // light medallion, OBJECT_GI_MEDAL
    { GetItem_DrawEggOrMedallion, { gGiLightMedallionFaceDL, gGiMedallionDL } },
    // deku nuts, OBJECT_GI_NUTS
    { GetItem_DrawDekuNuts, { gGiNutDL } },
    // heart container, OBJECT_GI_HEARTS
    { GetItem_DrawXlu01, { gGiHeartBorderDL, gGiHeartContainerDL } },
    // heart piece, OBJECT_GI_HEARTS
    { GetItem_DrawXlu01, { gGiHeartBorderDL, gGiHeartPieceDL } },
    // quiver 30, OBJECT_GI_ARROWCASE
    { GetItem_DrawOpa1023, { gGiQuiverInnerDL, gGiQuiver30InnerColorDL, gGiQuiver30OuterColorDL, gGiQuiverOuterDL } },
    // quiver 40, OBJECT_GI_ARROWCASE
    { GetItem_DrawOpa1023, { gGiQuiverInnerDL, gGiQuiver40InnerColorDL, gGiQuiver40OuterColorDL, gGiQuiverOuterDL } },
    // quiver 50, OBJECT_GI_ARROWCASE
    { GetItem_DrawOpa1023, { gGiQuiverInnerDL, gGiQuiver50InnerColorDL, gGiQuiver50OuterColorDL, gGiQuiverOuterDL } },
    // bomb bag 20, OBJECT_GI_BOMBPOUCH
    { GetItem_DrawOpa1023, { gGiBombBagDL, gGiBombBag20BagColorDL, gGiBombBag20RingColorDL, gGiBombBagRingDL } },
    // bomb bag 30, OBJECT_GI_BOMBPOUCH
    { GetItem_DrawOpa1023, { gGiBombBagDL, gGiBombBag30BagColorDL, gGiBombBag30RingColorDL, gGiBombBagRingDL } },
    // bomb bag 40, OBJECT_GI_BOMBPOUCH
    { GetItem_DrawOpa1023, { gGiBombBagDL, gGiBombBag40BagColorDL, gGiBombBag40RingColorDL, gGiBombBagRingDL } },
    // stick, OBJECT_GI_STICK
    { GetItem_DrawOpa0, { gGiStickDL } },
    // dungeon map, OBJECT_GI_MAP
    { GetItem_DrawOpa0, { gGiDungeonMapDL } },
    // deku shield, OBJECT_GI_SHIELD_1
    { GetItem_DrawOpa0, { gGiDekuShieldDL } },
    // small magic jar, OBJECT_GI_MAGICPOT
    { GetItem_DrawOpa0, { gGiMagicJarSmallDL } },
    // large magic jar, OBJECT_GI_MAGICPOT
    { GetItem_DrawOpa0, { gGiMagicJarLargeDL } },
    // bombs, OBJECT_GI_BOMB_1
    { GetItem_DrawOpa0, { gGiBombDL } },
    // stone of agony, OBJECT_GI_MAP
    { GetItem_DrawOpa0, { gGiStoneOfAgonyDL } },
    // adult's wallet, OBJECT_GI_PURSE
    { GetItem_DrawWallet,
      { gGiWalletDL, gGiAdultWalletColorDL, gGiAdultWalletRupeeOuterColorDL, gGiWalletRupeeOuterDL,
        gGiAdultWalletStringColorDL, gGiWalletStringDL, gGiAdultWalletRupeeInnerColorDL, gGiWalletRupeeInnerDL } },
    // giant's wallet, OBJECT_GI_PURSE
    { GetItem_DrawWallet,
      { gGiWalletDL, gGiGiantsWalletColorDL, gGiGiantsWalletRupeeOuterColorDL, gGiWalletRupeeOuterDL,
        gGiGiantsWalletStringColorDL, gGiWalletStringDL, gGiGiantsWalletRupeeInnerColorDL, gGiWalletRupeeInnerDL } },
    // gerudo card, OBJECT_GI_GERUDO
    { GetItem_DrawOpa0, { gGiGerudoCardDL } },
    // arrows (small), OBJECT_GI_ARROW
    { GetItem_DrawOpa0, { gGiArrowSmallDL } },
    // arrows (medium), OBJECT_GI_ARROW
    { GetItem_DrawOpa0, { gGiArrowMediumDL } },
    // arrows (large), OBJECT_GI_ARROW
    { GetItem_DrawOpa0, { gGiArrowLargeDL } },
    // bombchus, OBJECT_GI_BOMB_2
    { GetItem_DrawMaskOrBombchu, { gGiBombchuDL } },
    // egg, OBJECT_GI_EGG
    { GetItem_DrawEggOrMedallion, { gGiEggMaterialDL, gGiEggDL } },
    // silver scale, OBJECT_GI_SCALE
    { GetItem_DrawScale, { gGiScaleWaterDL, gGiSilverScaleWaterColorDL, gGiSilverScaleColorDL, gGiScaleDL } },
    // gold scale, OBJECT_GI_SCALE
    { GetItem_DrawScale, { gGiScaleWaterDL, gGiGoldenScaleWaterColorDL, gGiGoldenScaleColorDL, gGiScaleDL } },
    // hylian shield, OBJECT_GI_SHIELD_2
    { GetItem_DrawOpa0, { gGiHylianShieldDL } },
    // hookshot, OBJECT_GI_HOOKSHOT
    { GetItem_DrawOpa0, { gGiHookshotDL } },
    // longshot, OBJECT_GI_HOOKSHOT
    { GetItem_DrawOpa0, { gGiLongshotDL } },
    // ocarina of time, OBJECT_GI_OCARINA
    { GetItem_DrawOpa0Xlu1, { gGiOcarinaTimeDL, gGiOcarinaTimeHolesDL } },
    // milk, OBJECT_GI_MILK
    { GetItem_DrawOpa0Xlu1, { gGiMilkBottleContentsDL, gGiMilkBottleDL } },
    // keaton mask, OBJECT_GI_KI_TAN_MASK
    { GetItem_DrawOpa0Xlu1, { gGiKeatonMaskDL, gGiKeatonMaskEyesDL } },
    // spooky mask, OBJECT_GI_REDEAD_MASK
    { GetItem_DrawOpa0, { gGiSpookyMaskDL } },
    // slingshot, OBJECT_GI_PACHINKO
    { GetItem_DrawOpa0, { gGiSlingshotDL } },
    // boomerang, OBJECT_GI_BOOMERANG
    { GetItem_DrawOpa0, { gGiBoomerangDL } },
    // bow, OBJECT_GI_BOW
    { GetItem_DrawOpa0, { gGiBowDL } },
    // lens, OBJECT_GI_GLASSES
    { GetItem_DrawOpa0Xlu1, { gGiLensDL, gGiLensGlassDL } },
    // green potion, OBJECT_GI_LIQUID
    { GetItem_DrawPotion,
      { gGiPotionPotDL, gGiGreenPotColorDL, gGiGreenLiquidColorDL, gGiPotionLiquidDL, gGiGreenPatternColorDL,
        gGiPotionPatternDL } },
    // red potion, OBJECT_GI_LIQUID
    { GetItem_DrawPotion,
      { gGiPotionPotDL, gGiRedPotColorDL, gGiRedLiquidColorDL, gGiPotionLiquidDL, gGiRedPatternColorDL,
        gGiPotionPatternDL } },
    // blue potion, OBJECT_GI_LIQUID
    { GetItem_DrawPotion,
      { gGiPotionPotDL, gGiBluePotColorDL, gGiBlueLiquidColorDL, gGiPotionLiquidDL, gGiBluePatternColorDL,
        gGiPotionPatternDL } },
    // mirror shield, OBJECT_GI_SHIELD_3
    { GetItem_DrawMirrorShield, { gGiMirrorShieldDL, gGiMirrorShieldSymbolDL } },
    // zelda's letter, OBJECT_GI_LETTER
    { GetItem_DrawOpa0Xlu1, { gGiLetterDL, gGiLetterWritingDL } },
    // goron tunic, OBJECT_GI_CLOTHES
    { GetItem_DrawOpa1023, { gGiTunicCollarDL, gGiGoronCollarColorDL, gGiGoronTunicColorDL, gGiTunicDL } },
    // zora tunic, OBJECT_GI_CLOTHES
    { GetItem_DrawOpa1023, { gGiTunicCollarDL, gGiZoraCollarColorDL, gGiZoraTunicColorDL, gGiTunicDL } },
    // beans, OBJECT_GI_BEAN
    { GetItem_DrawOpa0, { gGiBeanDL } },
    // fish, OBJECT_GI_FISH
    { GetItem_DrawFish, { gGiFishDL } },
    // saw, OBJECT_GI_SAW
    { GetItem_DrawOpa0, { gGiSawDL } },
    // hammer, OBJECT_GI_HAMMER
    { GetItem_DrawOpa0, { gGiHammerDL } },
    // grass, OBJECT_GI_GRASS
    { GetItem_DrawOpa0, { gGiGrassDL } },
    // biggorons sword, OBJECT_GI_LONGSWORD
    { GetItem_DrawGoronSword, { gGiBiggoronSwordDL } },
    // chicken, OBJECT_GI_NIWATORI
    { GetItem_DrawOpa10Xlu2, { gGiChickenDL, gGiChickenColorDL, gGiChickenEyesDL } },
    // ruto's letter, OBJECT_GI_BOTTLE_LETTER
    { GetItem_DrawOpa0Xlu1, { gGiLetterBottleContentsDL, gGiLetterBottleDL } },
    // fairy ocarina, OBJECT_GI_OCARINA_0
    { GetItem_DrawOpa0Xlu1, { gGiOcarinaFairyDL, gGiOcarinaFairyHolesDL } },
    // iron boots, OBJECT_GI_BOOTS_2
    { GetItem_DrawOpa0Xlu1, { gGiIronBootsDL, gGiIronBootsRivetsDL } },
    // seeds, OBJECT_GI_SEED
    { GetItem_DrawOpa0, { gGiSeedDL } },
    // silver gauntlets, OBJECT_GI_GLOVES
    { GetItem_DrawOpa10Xlu32,
      { gGiGauntletsDL, gGiSilverGauntletsColorDL, gGiGauntletsPlateDL, gGiSilverGauntletsPlateColorDL } },
    // golden gauntlets, OBJECT_GI_GLOVES
    { GetItem_DrawOpa10Xlu32,
      { gGiGauntletsDL, gGiGoldenGauntletsColorDL, gGiGauntletsPlateDL, gGiGoldenGauntletsPlateColorDL } },
    // yellow n coin, OBJECT_GI_COIN
    { GetItem_DrawOpa10Xlu2, { gGiCoinDL, gGiYellowCoinColorDL, gGiNDL } },
    // red n coin, OBJECT_GI_COIN
    { GetItem_DrawOpa10Xlu2, { gGiCoinDL, gGiRedCoinColorDL, gGiNDL } },
    // green n coin, OBJECT_GI_COIN
    { GetItem_DrawOpa10Xlu2, { gGiCoinDL, gGiGreenCoinColorDL, gGiNDL } },
    // blue n coin, OBJECT_GI_COIN
    { GetItem_DrawOpa10Xlu2, { gGiCoinDL, gGiBlueCoinColorDL, gGiNDL } },
    // skull mask, OBJECT_GI_SKJ_MASK
    { GetItem_DrawOpa0, { gGiSkullMaskDL } },
    // bunny hood OBJECT_GI_RABIT_MASK
    { GetItem_DrawOpa0Xlu1, { gGiBunnyHoodDL, gGiBunnyHoodEyesDL } },
    // mask of truth, OBJECT_GI_TRUTH_MASK
    { GetItem_DrawOpa0Xlu1, { gGiMaskOfTruthDL, gGiMaskOfTruthAccentsDL } },
    // eyedrops, OBJECT_GI_EYE_LOTION
    { GetItem_DrawOpa0Xlu1, { gGiEyeDropsCapDL, gGiEyeDropsBottleDL } },
    // odd potion, OBJECT_GI_POWDER
    { GetItem_DrawOpa0, { gGiOddPotionDL } },
    // odd mushroom, OBJECT_GI_MUSHROOM
    { GetItem_DrawOpa0, { gGiOddMushroomDL } },
    // claim check, OBJECT_GI_TICKETSTONE
    { GetItem_DrawOpa0Xlu1, { gGiClaimCheckDL, gGiClaimCheckWritingDL } },
    // broken goron's sword, OBJECT_GI_BROKENSWORD
    { GetItem_DrawGoronSword, { gGiBrokenGoronSwordDL } },
    // prescription, OBJECT_GI_PRESCRIPTION
    { GetItem_DrawOpa0Xlu1, { gGiPrescriptionDL, gGiPrescriptionWritingDL } },
    // goron bracelet, OBJECT_GI_BRACELET
    { GetItem_DrawOpa0, { gGiGoronBraceletDL } },
    // sold out, OBJECT_GI_SOLDOUT
    { GetItem_DrawSoldOut, { gGiSoldOutDL } },
    // frog, OBJECT_GI_FROG
    { GetItem_DrawOpa0Xlu1, { gGiFrogDL, gGiFrogEyesDL } },
    // goron mask, OBJECT_GI_GOLONMASK
    { GetItem_DrawMaskOrBombchu, { gGiGoronMaskDL } },
    // zora mask, OBJECT_GI_ZORAMASK
    { GetItem_DrawMaskOrBombchu, { gGiZoraMaskDL } },
    // gerudo mask, OBJECT_GI_GERUDOMASK
    { GetItem_DrawMaskOrBombchu, { gGiGerudoMaskDL } },
    // cojiro, OBJECT_GI_NIWATORI
    { GetItem_DrawOpa10Xlu2, { gGiChickenDL, gGiCojiroColorDL, gGiChickenEyesDL } },
    // hover boots, OBJECT_GI_HOVERBOOTS
    { GetItem_DrawOpa0, { gGiHoverBootsDL } },
    // fire arrows, OBJECT_GI_M_ARROW
    { GetItem_DrawMagicArrow, { gGiMagicArrowDL, gGiFireArrowColorDL, gGiArrowMagicDL } },
    // ice arrows, OBJECT_GI_M_ARROW
    { GetItem_DrawMagicArrow, { gGiMagicArrowDL, gGiIceArrowColorDL, gGiArrowMagicDL } },
    // light arrows, OBJECT_GI_M_ARROW
    { GetItem_DrawMagicArrow, { gGiMagicArrowDL, gGiLightArrowColorDL, gGiArrowMagicDL } },
    // skulltula token, OBJECT_GI_SUTARU
    { GetItem_DrawSkullToken, { gGiSkulltulaTokenDL, gGiSkulltulaTokenFlameDL } },
    // din's fire, OBJECT_GI_GODDESS
    { GetItem_DrawMagicSpell, { gGiMagicSpellDiamondDL, gGiDinsFireColorDL, gGiMagicSpellOrbDL } },
    // farore's wind, OBJECT_GI_GODDESS
    { GetItem_DrawMagicSpell, { gGiMagicSpellDiamondDL, gGiFaroresWindColorDL, gGiMagicSpellOrbDL } },
    // nayru's Love, OBJECT_GI_GODDESS
    { GetItem_DrawMagicSpell, { gGiMagicSpellDiamondDL, gGiNayrusLoveColorDL, gGiMagicSpellOrbDL } },
    // blue fire, OBJECT_GI_FIRE
    { GetItem_DrawBlueFire, { gGiBlueFireChamberstickDL, gGiBlueFireFlameDL } },
    // bugs, OBJECT_GI_INSECT
    { GetItem_DrawOpa0Xlu1, { gGiBugsContainerDL, gGiBugsGlassDL } },
    // butterfly, OBJECT_GI_BUTTERFLY
    { GetItem_DrawOpa0Xlu1, { gGiButterflyContainerDL, gGiButterflyGlassDL } },
    // poe, OBJECT_GI_GHOST
    { GetItem_DrawPoes,
      { gGiGhostContainerLidDL, gGiGhostContainerGlassDL, gGiGhostContainerContentsDL, gGiPoeColorDL } },
    // fairy, OBJECT_GI_SOUL
    { GetItem_DrawFairy, { gGiFairyContainerBaseCapDL, gGiFairyContainerGlassDL, gGiFairyContainerContentsDL } },
    // bullet bag 40, OBJECT_GI_DEKUPOUCH
    { GetItem_DrawBulletBag,
      { gGiBulletBagDL, gGiBulletBagColorDL, gGiBulletBagStringDL, gGiBulletBagStringColorDL, gGiBulletBagWritingDL } },
    // green rupee, OBJECT_GI_RUPY
    { GetItem_DrawSmallRupee,
      { gGiRupeeInnerDL, gGiGreenRupeeInnerColorDL, gGiRupeeOuterDL, gGiGreenRupeeOuterColorDL } },
    // blue rupee, OBJECT_GI_RUPY
    { GetItem_DrawSmallRupee,
      { gGiRupeeInnerDL, gGiBlueRupeeInnerColorDL, gGiRupeeOuterDL, gGiBlueRupeeOuterColorDL } },
    // red rupee, OBJECT_GI_RUPY
    { GetItem_DrawSmallRupee, { gGiRupeeInnerDL, gGiRedRupeeInnerColorDL, gGiRupeeOuterDL, gGiRedRupeeOuterColorDL } },
    // big poe, OBJECT_GI_GHOST
    { GetItem_DrawPoes,
      { gGiGhostContainerLidDL, gGiGhostContainerGlassDL, gGiGhostContainerContentsDL, gGiBigPoeColorDL } },
    // purple rupee, OBJECT_GI_RUPY
    { GetItem_DrawOpa10Xlu32,
      { gGiRupeeInnerDL, gGiPurpleRupeeInnerColorDL, gGiRupeeOuterDL, gGiPurpleRupeeOuterColorDL } },
    // gold rupee, OBJECT_GI_RUPY
    { GetItem_DrawOpa10Xlu32,
      { gGiRupeeInnerDL, gGiGoldRupeeInnerColorDL, gGiRupeeOuterDL, gGiGoldRupeeOuterColorDL } },
    // bullet bag 50, OBJECT_GI_DEKUPOUCH
    { GetItem_DrawBulletBag,
      { gGiBulletBagDL, gGiBulletBag50ColorDL, gGiBulletBagStringDL, gGiBulletBag50StringColorDL,
        gGiBulletBagWritingDL } },
    // kokiri sword, OBJECT_GI_SWORD_1
    { GetItem_DrawOpa0, { gGiKokiriSwordDL } },
    // gold skulltula token, OBJECT_ST
    { GetItem_DrawSkullToken, { gSkulltulaTokenDL, gSkulltulaTokenFlameDL } },
};

/**
 * Draw "Get Item" Model
 * Calls the corresponding draw function for the given draw ID
 */
void GetItem_Draw(PlayState* play, s16 drawId) {
    sDrawItemTable[drawId].drawFunc(play, drawId);
}

// All remaining functions in this file are draw functions referenced in the table and called by the function above

void GetItem_DrawMaskOrBombchu(PlayState* play, s16 drawId) {
    s32 pad;

    OPEN_DISPS(play->state.gfxCtx, "../z_draw.c", 556);

    Gfx_SetupDL_26Opa(play->state.gfxCtx);
    MATRIX_FINALIZE_AND_LOAD(POLY_OPA_DISP++, play->state.gfxCtx, "../z_draw.c", 560);
    gSPDisplayList(POLY_OPA_DISP++, sDrawItemTable[drawId].dlists[0]);

    CLOSE_DISPS(play->state.gfxCtx, "../z_draw.c", 565);
}

void GetItem_DrawSoldOut(PlayState* play, s16 drawId) {
    s32 pad;

    OPEN_DISPS(play->state.gfxCtx, "../z_draw.c", 572);

    POLY_XLU_DISP = Gfx_SetupDL(POLY_XLU_DISP, SETUPDL_5);
    MATRIX_FINALIZE_AND_LOAD(POLY_XLU_DISP++, play->state.gfxCtx, "../z_draw.c", 576);
    gSPDisplayList(POLY_XLU_DISP++, sDrawItemTable[drawId].dlists[0]);

    CLOSE_DISPS(play->state.gfxCtx, "../z_draw.c", 581);
}

void GetItem_DrawBlueFire(PlayState* play, s16 drawId) {
    s32 pad;

    OPEN_DISPS(play->state.gfxCtx, "../z_draw.c", 588);

    Gfx_SetupDL_25Opa(play->state.gfxCtx);
    MATRIX_FINALIZE_AND_LOAD(POLY_OPA_DISP++, play->state.gfxCtx, "../z_draw.c", 592);
    gSPDisplayList(POLY_OPA_DISP++, sDrawItemTable[drawId].dlists[0]);

    Gfx_SetupDL_25Xlu(play->state.gfxCtx);
    gSPSegment(POLY_XLU_DISP++, 0x08,
               Gfx_TwoTexScroll(play->state.gfxCtx, G_TX_RENDERTILE, 0 * (play->state.frames * 0),
                                0 * (play->state.frames * 0), 16, 32, 1, 1 * (play->state.frames * 1),
                                1 * -(play->state.frames * 8), 16, 32));
    Matrix_Push();
    Matrix_Translate(-8.0f, -2.0f, 0.0f, MTXMODE_APPLY);
    Matrix_ReplaceRotation(&play->billboardMtxF);
    MATRIX_FINALIZE_AND_LOAD(POLY_XLU_DISP++, play->state.gfxCtx, "../z_draw.c", 615);
    gSPDisplayList(POLY_XLU_DISP++, sDrawItemTable[drawId].dlists[1]);
    Matrix_Pop();

    CLOSE_DISPS(play->state.gfxCtx, "../z_draw.c", 621);
}

void GetItem_DrawPoes(PlayState* play, s16 drawId) {
    s32 pad;

    OPEN_DISPS(play->state.gfxCtx, "../z_draw.c", 628);

    Gfx_SetupDL_25Opa(play->state.gfxCtx);
    MATRIX_FINALIZE_AND_LOAD(POLY_OPA_DISP++, play->state.gfxCtx, "../z_draw.c", 632);
    gSPDisplayList(POLY_OPA_DISP++, sDrawItemTable[drawId].dlists[0]);

    Gfx_SetupDL_25Xlu(play->state.gfxCtx);
    MATRIX_FINALIZE_AND_LOAD(POLY_XLU_DISP++, play->state.gfxCtx, "../z_draw.c", 641);
    gSPDisplayList(POLY_XLU_DISP++, sDrawItemTable[drawId].dlists[1]);
    gSPSegment(POLY_XLU_DISP++, 0x08,
               Gfx_TwoTexScroll(play->state.gfxCtx, G_TX_RENDERTILE, 0 * (play->state.frames * 0),
                                0 * (play->state.frames * 0), 16, 32, 1, 1 * (play->state.frames * 1),
                                1 * -(play->state.frames * 6), 16, 32));
    Matrix_Push();
    Matrix_ReplaceRotation(&play->billboardMtxF);
    MATRIX_FINALIZE_AND_LOAD(POLY_XLU_DISP++, play->state.gfxCtx, "../z_draw.c", 656);
    gSPDisplayList(POLY_XLU_DISP++, sDrawItemTable[drawId].dlists[3]);
    gSPDisplayList(POLY_XLU_DISP++, sDrawItemTable[drawId].dlists[2]);
    Matrix_Pop();

    CLOSE_DISPS(play->state.gfxCtx, "../z_draw.c", 663);
}

void GetItem_DrawFairy(PlayState* play, s16 drawId) {
    s32 pad;

    OPEN_DISPS(play->state.gfxCtx, "../z_draw.c", 670);

    Gfx_SetupDL_25Opa(play->state.gfxCtx);
    MATRIX_FINALIZE_AND_LOAD(POLY_OPA_DISP++, play->state.gfxCtx, "../z_draw.c", 674);
    gSPDisplayList(POLY_OPA_DISP++, sDrawItemTable[drawId].dlists[0]);

    Gfx_SetupDL_25Xlu(play->state.gfxCtx);
    MATRIX_FINALIZE_AND_LOAD(POLY_XLU_DISP++, play->state.gfxCtx, "../z_draw.c", 683);
    gSPDisplayList(POLY_XLU_DISP++, sDrawItemTable[drawId].dlists[1]);
    gSPSegment(POLY_XLU_DISP++, 0x08,
               Gfx_TwoTexScroll(play->state.gfxCtx, G_TX_RENDERTILE, 0 * (play->state.frames * 0),
                                0 * (play->state.frames * 0), 32, 32, 1, 1 * (play->state.frames * 1),
                                1 * -(play->state.frames * 6), 32, 32));
    Matrix_Push();
    Matrix_ReplaceRotation(&play->billboardMtxF);
    MATRIX_FINALIZE_AND_LOAD(POLY_XLU_DISP++, play->state.gfxCtx, "../z_draw.c", 698);
    gSPDisplayList(POLY_XLU_DISP++, sDrawItemTable[drawId].dlists[2]);
    Matrix_Pop();

    CLOSE_DISPS(play->state.gfxCtx, "../z_draw.c", 704);
}

void GetItem_DrawMirrorShield(PlayState* play, s16 drawId) {
    s32 pad;

    OPEN_DISPS(play->state.gfxCtx, "../z_draw.c", 712);

    Gfx_SetupDL_25Opa(play->state.gfxCtx);
    gSPSegment(POLY_OPA_DISP++, 0x08,
               Gfx_TwoTexScroll(play->state.gfxCtx, G_TX_RENDERTILE, 0 * (play->state.frames * 0) % 256,
                                1 * (play->state.frames * 2) % 256, 64, 64, 1, 0 * (play->state.frames * 0) % 128,
                                1 * (play->state.frames * 1) % 128, 32, 32));
    MATRIX_FINALIZE_AND_LOAD(POLY_OPA_DISP++, play->state.gfxCtx, "../z_draw.c", 723);
    gSPDisplayList(POLY_OPA_DISP++, sDrawItemTable[drawId].dlists[0]);

    Gfx_SetupDL_25Xlu(play->state.gfxCtx);
    MATRIX_FINALIZE_AND_LOAD(POLY_XLU_DISP++, play->state.gfxCtx, "../z_draw.c", 730);
    gSPDisplayList(POLY_XLU_DISP++, sDrawItemTable[drawId].dlists[1]);

    CLOSE_DISPS(play->state.gfxCtx, "../z_draw.c", 735);
}

void GetItem_DrawSkullToken(PlayState* play, s16 drawId) {
    s32 pad;

    OPEN_DISPS(play->state.gfxCtx, "../z_draw.c", 742);

    Gfx_SetupDL_25Opa(play->state.gfxCtx);
    MATRIX_FINALIZE_AND_LOAD(POLY_OPA_DISP++, play->state.gfxCtx, "../z_draw.c", 746);
    gSPDisplayList(POLY_OPA_DISP++, sDrawItemTable[drawId].dlists[0]);

    Gfx_SetupDL_25Xlu(play->state.gfxCtx);
    gSPSegment(POLY_XLU_DISP++, 0x08,
               Gfx_TwoTexScroll(play->state.gfxCtx, G_TX_RENDERTILE, 0 * (play->state.frames * 0),
                                1 * -(play->state.frames * 5), 32, 32, 1, 0 * (play->state.frames * 0),
                                0 * (play->state.frames * 0), 32, 64));
    MATRIX_FINALIZE_AND_LOAD(POLY_XLU_DISP++, play->state.gfxCtx, "../z_draw.c", 760);
    gSPDisplayList(POLY_XLU_DISP++, sDrawItemTable[drawId].dlists[1]);

    CLOSE_DISPS(play->state.gfxCtx, "../z_draw.c", 765);
}

void GetItem_DrawEggOrMedallion(PlayState* play, s16 drawId) {
    DrawItemTableEntry* entry = &sDrawItemTable[drawId];

    OPEN_DISPS(play->state.gfxCtx, "../z_draw.c", 772);

    Gfx_SetupDL_26Opa(play->state.gfxCtx);
    MATRIX_FINALIZE_AND_LOAD(POLY_OPA_DISP++, play->state.gfxCtx, "../z_draw.c", 776);
    gSPDisplayList(POLY_OPA_DISP++, entry->dlists[0]);
    gSPDisplayList(POLY_OPA_DISP++, entry->dlists[1]);

    CLOSE_DISPS(play->state.gfxCtx, "../z_draw.c", 783);
}

void GetItem_DrawCompass(PlayState* play, s16 drawId) {
    s32 pad;

    OPEN_DISPS(play->state.gfxCtx, "../z_draw.c", 811);

    Gfx_SetupDL_25Opa(play->state.gfxCtx);
    MATRIX_FINALIZE_AND_LOAD(POLY_OPA_DISP++, play->state.gfxCtx, "../z_draw.c", 815);
    gSPDisplayList(POLY_OPA_DISP++, sDrawItemTable[drawId].dlists[0]);

    POLY_XLU_DISP = Gfx_SetupDL(POLY_XLU_DISP, SETUPDL_5);
    MATRIX_FINALIZE_AND_LOAD(POLY_XLU_DISP++, play->state.gfxCtx, "../z_draw.c", 822);
    gSPDisplayList(POLY_XLU_DISP++, sDrawItemTable[drawId].dlists[1]);

    CLOSE_DISPS(play->state.gfxCtx, "../z_draw.c", 827);
}

void GetItem_DrawPotion(PlayState* play, s16 drawId) {
    s32 pad;

    OPEN_DISPS(play->state.gfxCtx, "../z_draw.c", 834);

    Gfx_SetupDL_25Opa(play->state.gfxCtx);
    gSPSegment(POLY_OPA_DISP++, 0x08,
               Gfx_TwoTexScroll(play->state.gfxCtx, G_TX_RENDERTILE, -1 * (play->state.frames * 1),
                                1 * (play->state.frames * 1), 32, 32, 1, -1 * (play->state.frames * 1),
                                1 * (play->state.frames * 1), 32, 32));
    MATRIX_FINALIZE_AND_LOAD(POLY_OPA_DISP++, play->state.gfxCtx, "../z_draw.c", 845);
    gSPDisplayList(POLY_OPA_DISP++, sDrawItemTable[drawId].dlists[1]);
    gSPDisplayList(POLY_OPA_DISP++, sDrawItemTable[drawId].dlists[0]);
    gSPDisplayList(POLY_OPA_DISP++, sDrawItemTable[drawId].dlists[2]);
    gSPDisplayList(POLY_OPA_DISP++, sDrawItemTable[drawId].dlists[3]);

    Gfx_SetupDL_25Xlu(play->state.gfxCtx);
    MATRIX_FINALIZE_AND_LOAD(POLY_XLU_DISP++, play->state.gfxCtx, "../z_draw.c", 855);
    gSPDisplayList(POLY_XLU_DISP++, sDrawItemTable[drawId].dlists[4]);
    gSPDisplayList(POLY_XLU_DISP++, sDrawItemTable[drawId].dlists[5]);

    CLOSE_DISPS(play->state.gfxCtx, "../z_draw.c", 861);
}

void GetItem_DrawGoronSword(PlayState* play, s16 drawId) {
    s32 pad;

    OPEN_DISPS(play->state.gfxCtx, "../z_draw.c", 868);

    Gfx_SetupDL_25Opa(play->state.gfxCtx);
    gSPSegment(POLY_OPA_DISP++, 0x08,
               Gfx_TwoTexScroll(play->state.gfxCtx, G_TX_RENDERTILE, 1 * (play->state.frames * 1),
                                0 * (play->state.frames * 1), 32, 32, 1, 0 * (play->state.frames * 1),
                                0 * (play->state.frames * 1), 32, 32));
    MATRIX_FINALIZE_AND_LOAD(POLY_OPA_DISP++, play->state.gfxCtx, "../z_draw.c", 878);
    gSPDisplayList(POLY_OPA_DISP++, sDrawItemTable[drawId].dlists[0]);

    CLOSE_DISPS(play->state.gfxCtx, "../z_draw.c", 883);
}

void GetItem_DrawDekuNuts(PlayState* play, s16 drawId) {
    s32 pad;

    OPEN_DISPS(play->state.gfxCtx, "../z_draw.c", 890);

    Gfx_SetupDL_25Opa(play->state.gfxCtx);
    gSPSegment(POLY_OPA_DISP++, 0x08,
               Gfx_TwoTexScroll(play->state.gfxCtx, G_TX_RENDERTILE, 1 * (play->state.frames * 6),
                                1 * (play->state.frames * 6), 32, 32, 1, 1 * (play->state.frames * 6),
                                1 * (play->state.frames * 6), 32, 32));
    MATRIX_FINALIZE_AND_LOAD(POLY_OPA_DISP++, play->state.gfxCtx, "../z_draw.c", 901);
    gSPDisplayList(POLY_OPA_DISP++, sDrawItemTable[drawId].dlists[0]);

    CLOSE_DISPS(play->state.gfxCtx, "../z_draw.c", 906);
}

void GetItem_DrawRecoveryHeart(PlayState* play, s16 drawId) {
    s32 pad;

    OPEN_DISPS(play->state.gfxCtx, "../z_draw.c", 913);

    Gfx_SetupDL_25Xlu(play->state.gfxCtx);
    gSPSegment(POLY_XLU_DISP++, 0x08,
               Gfx_TwoTexScroll(play->state.gfxCtx, G_TX_RENDERTILE, 0 * (play->state.frames * 1),
                                1 * -(play->state.frames * 3), 32, 32, 1, 0 * (play->state.frames * 1),
                                1 * -(play->state.frames * 2), 32, 32));
    MATRIX_FINALIZE_AND_LOAD(POLY_XLU_DISP++, play->state.gfxCtx, "../z_draw.c", 924);
    gSPDisplayList(POLY_XLU_DISP++, sDrawItemTable[drawId].dlists[0]);

    CLOSE_DISPS(play->state.gfxCtx, "../z_draw.c", 929);
}

void GetItem_DrawFish(PlayState* play, s16 drawId) {
    s32 pad;

    OPEN_DISPS(play->state.gfxCtx, "../z_draw.c", 936);

    Gfx_SetupDL_25Xlu(play->state.gfxCtx);
    gSPSegment(POLY_XLU_DISP++, 0x08,
               Gfx_TwoTexScroll(play->state.gfxCtx, G_TX_RENDERTILE, 0 * (play->state.frames * 0),
                                1 * (play->state.frames * 1), 32, 32, 1, 0 * (play->state.frames * 0),
                                1 * (play->state.frames * 1), 32, 32));
    MATRIX_FINALIZE_AND_LOAD(POLY_XLU_DISP++, play->state.gfxCtx, "../z_draw.c", 947);
    gSPDisplayList(POLY_XLU_DISP++, sDrawItemTable[drawId].dlists[0]);

    CLOSE_DISPS(play->state.gfxCtx, "../z_draw.c", 952);
}

void GetItem_DrawOpa0(PlayState* play, s16 drawId) {
    s32 pad;

    OPEN_DISPS(play->state.gfxCtx, "../z_draw.c", 959);

    Gfx_SetupDL_25Opa(play->state.gfxCtx);
    MATRIX_FINALIZE_AND_LOAD(POLY_OPA_DISP++, play->state.gfxCtx, "../z_draw.c", 963);
    gSPDisplayList(POLY_OPA_DISP++, sDrawItemTable[drawId].dlists[0]);

    CLOSE_DISPS(play->state.gfxCtx, "../z_draw.c", 968);
}

void GetItem_DrawOpa0Xlu1(PlayState* play, s16 drawId) {
    s32 pad;

    OPEN_DISPS(play->state.gfxCtx, "../z_draw.c", 975);

    Gfx_SetupDL_25Opa(play->state.gfxCtx);
    MATRIX_FINALIZE_AND_LOAD(POLY_OPA_DISP++, play->state.gfxCtx, "../z_draw.c", 979);
    gSPDisplayList(POLY_OPA_DISP++, sDrawItemTable[drawId].dlists[0]);

    Gfx_SetupDL_25Xlu(play->state.gfxCtx);
    MATRIX_FINALIZE_AND_LOAD(POLY_XLU_DISP++, play->state.gfxCtx, "../z_draw.c", 986);
    gSPDisplayList(POLY_XLU_DISP++, sDrawItemTable[drawId].dlists[1]);

    CLOSE_DISPS(play->state.gfxCtx, "../z_draw.c", 991);
}

void GetItem_DrawXlu01(PlayState* play, s16 drawId) {
    DrawItemTableEntry* entry = &sDrawItemTable[drawId];

    OPEN_DISPS(play->state.gfxCtx, "../z_draw.c", 998);

    Gfx_SetupDL_25Xlu(play->state.gfxCtx);
    MATRIX_FINALIZE_AND_LOAD(POLY_XLU_DISP++, play->state.gfxCtx, "../z_draw.c", 1002);
    gSPDisplayList(POLY_XLU_DISP++, entry->dlists[0]);
    gSPDisplayList(POLY_XLU_DISP++, entry->dlists[1]);

    CLOSE_DISPS(play->state.gfxCtx, "../z_draw.c", 1008);
}

void GetItem_DrawOpa10Xlu2(PlayState* play, s16 drawId) {
    s32 pad;

    OPEN_DISPS(play->state.gfxCtx, "../z_draw.c", 1015);

    Gfx_SetupDL_25Opa(play->state.gfxCtx);
    MATRIX_FINALIZE_AND_LOAD(POLY_OPA_DISP++, play->state.gfxCtx, "../z_draw.c", 1019);
    gSPDisplayList(POLY_OPA_DISP++, sDrawItemTable[drawId].dlists[1]);
    gSPDisplayList(POLY_OPA_DISP++, sDrawItemTable[drawId].dlists[0]);

    Gfx_SetupDL_25Xlu(play->state.gfxCtx);
    MATRIX_FINALIZE_AND_LOAD(POLY_XLU_DISP++, play->state.gfxCtx, "../z_draw.c", 1027);
    gSPDisplayList(POLY_XLU_DISP++, sDrawItemTable[drawId].dlists[2]);

    CLOSE_DISPS(play->state.gfxCtx, "../z_draw.c", 1032);
}

void GetItem_DrawMagicArrow(PlayState* play, s16 drawId) {
    s32 pad;

    OPEN_DISPS(play->state.gfxCtx, "../z_draw.c", 1039);

    Gfx_SetupDL_25Opa(play->state.gfxCtx);
    MATRIX_FINALIZE_AND_LOAD(POLY_OPA_DISP++, play->state.gfxCtx, "../z_draw.c", 1043);
    gSPDisplayList(POLY_OPA_DISP++, sDrawItemTable[drawId].dlists[0]);

    Gfx_SetupDL_25Xlu(play->state.gfxCtx);
    MATRIX_FINALIZE_AND_LOAD(POLY_XLU_DISP++, play->state.gfxCtx, "../z_draw.c", 1050);
    gSPDisplayList(POLY_XLU_DISP++, sDrawItemTable[drawId].dlists[1]);
    gSPDisplayList(POLY_XLU_DISP++, sDrawItemTable[drawId].dlists[2]);

    CLOSE_DISPS(play->state.gfxCtx, "../z_draw.c", 1056);
}

void GetItem_DrawMagicSpell(PlayState* play, s16 drawId) {
    s32 pad;

    OPEN_DISPS(play->state.gfxCtx, "../z_draw.c", 1063);

    Gfx_SetupDL_25Xlu(play->state.gfxCtx);
    gSPSegment(POLY_XLU_DISP++, 0x08,
               Gfx_TwoTexScroll(play->state.gfxCtx, G_TX_RENDERTILE, 1 * (play->state.frames * 2),
                                1 * -(play->state.frames * 6), 32, 32, 1, 1 * (play->state.frames * 1),
                                -1 * (play->state.frames * 2), 32, 32));
    MATRIX_FINALIZE_AND_LOAD(POLY_XLU_DISP++, play->state.gfxCtx, "../z_draw.c", 1074);
    gSPDisplayList(POLY_XLU_DISP++, sDrawItemTable[drawId].dlists[0]);
    gSPDisplayList(POLY_XLU_DISP++, sDrawItemTable[drawId].dlists[1]);
    gSPDisplayList(POLY_XLU_DISP++, sDrawItemTable[drawId].dlists[2]);

    CLOSE_DISPS(play->state.gfxCtx, "../z_draw.c", 1081);
}

void GetItem_DrawOpa1023(PlayState* play, s16 drawId) {
    s32 pad;

    OPEN_DISPS(play->state.gfxCtx, "../z_draw.c", 1088);

    Gfx_SetupDL_25Opa(play->state.gfxCtx);
    MATRIX_FINALIZE_AND_LOAD(POLY_OPA_DISP++, play->state.gfxCtx, "../z_draw.c", 1092);
    gSPDisplayList(POLY_OPA_DISP++, sDrawItemTable[drawId].dlists[1]);
    gSPDisplayList(POLY_OPA_DISP++, sDrawItemTable[drawId].dlists[0]);
    gSPDisplayList(POLY_OPA_DISP++, sDrawItemTable[drawId].dlists[2]);
    gSPDisplayList(POLY_OPA_DISP++, sDrawItemTable[drawId].dlists[3]);

    CLOSE_DISPS(play->state.gfxCtx, "../z_draw.c", 1100);
}

void GetItem_DrawOpa10Xlu32(PlayState* play, s16 drawId) {
    s32 pad;

    OPEN_DISPS(play->state.gfxCtx, "../z_draw.c", 1108);

    Gfx_SetupDL_25Opa(play->state.gfxCtx);
    MATRIX_FINALIZE_AND_LOAD(POLY_OPA_DISP++, play->state.gfxCtx, "../z_draw.c", 1112);
    gSPDisplayList(POLY_OPA_DISP++, sDrawItemTable[drawId].dlists[1]);
    gSPDisplayList(POLY_OPA_DISP++, sDrawItemTable[drawId].dlists[0]);

    Gfx_SetupDL_25Xlu(play->state.gfxCtx);
    MATRIX_FINALIZE_AND_LOAD(POLY_XLU_DISP++, play->state.gfxCtx, "../z_draw.c", 1120);
    gSPDisplayList(POLY_XLU_DISP++, sDrawItemTable[drawId].dlists[3]);
    gSPDisplayList(POLY_XLU_DISP++, sDrawItemTable[drawId].dlists[2]);

    CLOSE_DISPS(play->state.gfxCtx, "../z_draw.c", 1126);
}

void GetItem_DrawSmallRupee(PlayState* play, s16 drawId) {
    s32 pad;

    OPEN_DISPS(play->state.gfxCtx, "../z_draw.c", 1133);

    Matrix_Scale(0.7f, 0.7f, 0.7f, MTXMODE_APPLY);

    Gfx_SetupDL_25Opa(play->state.gfxCtx);
    MATRIX_FINALIZE_AND_LOAD(POLY_OPA_DISP++, play->state.gfxCtx, "../z_draw.c", 1140);
    gSPDisplayList(POLY_OPA_DISP++, sDrawItemTable[drawId].dlists[1]);
    gSPDisplayList(POLY_OPA_DISP++, sDrawItemTable[drawId].dlists[0]);

    Gfx_SetupDL_25Xlu(play->state.gfxCtx);
    MATRIX_FINALIZE_AND_LOAD(POLY_XLU_DISP++, play->state.gfxCtx, "../z_draw.c", 1148);
    gSPDisplayList(POLY_XLU_DISP++, sDrawItemTable[drawId].dlists[3]);
    gSPDisplayList(POLY_XLU_DISP++, sDrawItemTable[drawId].dlists[2]);

    CLOSE_DISPS(play->state.gfxCtx, "../z_draw.c", 1154);
}

void GetItem_DrawScale(PlayState* play, s16 drawId) {
    s32 pad;

    OPEN_DISPS(play->state.gfxCtx, "../z_draw.c", 1162);

    Gfx_SetupDL_25Xlu(play->state.gfxCtx);
    gSPSegment(POLY_XLU_DISP++, 0x08,
               Gfx_TwoTexScroll(play->state.gfxCtx, G_TX_RENDERTILE, 1 * (play->state.frames * 2),
                                -1 * (play->state.frames * 2), 64, 64, 1, 1 * (play->state.frames * 4),
                                1 * -(play->state.frames * 4), 32, 32));
    MATRIX_FINALIZE_AND_LOAD(POLY_XLU_DISP++, play->state.gfxCtx, "../z_draw.c", 1173);
    gSPDisplayList(POLY_XLU_DISP++, sDrawItemTable[drawId].dlists[2]);
    gSPDisplayList(POLY_XLU_DISP++, sDrawItemTable[drawId].dlists[3]);
    gSPDisplayList(POLY_XLU_DISP++, sDrawItemTable[drawId].dlists[1]);
    gSPDisplayList(POLY_XLU_DISP++, sDrawItemTable[drawId].dlists[0]);

    CLOSE_DISPS(play->state.gfxCtx, "../z_draw.c", 1181);
}

void GetItem_DrawBulletBag(PlayState* play, s16 drawId) {
    DrawItemTableEntry* entry = &sDrawItemTable[drawId];

    OPEN_DISPS(play->state.gfxCtx, "../z_draw.c", 1188);

    Gfx_SetupDL_25Opa(play->state.gfxCtx);
    MATRIX_FINALIZE_AND_LOAD(POLY_OPA_DISP++, play->state.gfxCtx, "../z_draw.c", 1192);
    gSPDisplayList(POLY_OPA_DISP++, entry->dlists[1]);
    gSPDisplayList(POLY_OPA_DISP++, entry->dlists[0]);

    Gfx_SetupDL_25Xlu(play->state.gfxCtx);
    MATRIX_FINALIZE_AND_LOAD(POLY_XLU_DISP++, play->state.gfxCtx, "../z_draw.c", 1200);
    gSPDisplayList(POLY_XLU_DISP++, entry->dlists[2]);
    gSPDisplayList(POLY_XLU_DISP++, entry->dlists[3]);
    gSPDisplayList(POLY_XLU_DISP++, entry->dlists[4]);

    CLOSE_DISPS(play->state.gfxCtx, "../z_draw.c", 1207);
}

void GetItem_DrawWallet(PlayState* play, s16 drawId) {
    s32 pad;

    OPEN_DISPS(play->state.gfxCtx, "../z_draw.c", 1214);

    Gfx_SetupDL_25Opa(play->state.gfxCtx);
    MATRIX_FINALIZE_AND_LOAD(POLY_OPA_DISP++, play->state.gfxCtx, "../z_draw.c", 1218);
    gSPDisplayList(POLY_OPA_DISP++, sDrawItemTable[drawId].dlists[1]);
    gSPDisplayList(POLY_OPA_DISP++, sDrawItemTable[drawId].dlists[0]);
    gSPDisplayList(POLY_OPA_DISP++, sDrawItemTable[drawId].dlists[2]);
    gSPDisplayList(POLY_OPA_DISP++, sDrawItemTable[drawId].dlists[3]);
    gSPDisplayList(POLY_OPA_DISP++, sDrawItemTable[drawId].dlists[4]);
    gSPDisplayList(POLY_OPA_DISP++, sDrawItemTable[drawId].dlists[5]);
    gSPDisplayList(POLY_OPA_DISP++, sDrawItemTable[drawId].dlists[6]);
    gSPDisplayList(POLY_OPA_DISP++, sDrawItemTable[drawId].dlists[7]);

    CLOSE_DISPS(play->state.gfxCtx, "../z_draw.c", 1230);
}
