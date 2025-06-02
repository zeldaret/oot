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
void GetItem_DrawMaskOrBombchu(PlayState* play, s16 giDrawId);
void GetItem_DrawSoldOut(PlayState* play, s16 giDrawId);
void GetItem_DrawBlueFire(PlayState* play, s16 giDrawId);
void GetItem_DrawPoes(PlayState* play, s16 giDrawId);
void GetItem_DrawFairy(PlayState* play, s16 giDrawId);
void GetItem_DrawMirrorShield(PlayState* play, s16 giDrawId);
void GetItem_DrawSkullToken(PlayState* play, s16 giDrawId);
void GetItem_DrawEggOrMedallion(PlayState* play, s16 giDrawId);
void GetItem_DrawCompass(PlayState* play, s16 giDrawId);
void GetItem_DrawPotion(PlayState* play, s16 giDrawId);
void GetItem_DrawGoronSword(PlayState* play, s16 giDrawId);
void GetItem_DrawDekuNuts(PlayState* play, s16 giDrawId);
void GetItem_DrawRecoveryHeart(PlayState* play, s16 giDrawId);
void GetItem_DrawFish(PlayState* play, s16 giDrawId);
void GetItem_DrawOpa0(PlayState* play, s16 giDrawId);
void GetItem_DrawOpa0Xlu1(PlayState* play, s16 giDrawId);
void GetItem_DrawXlu01(PlayState* play, s16 giDrawId);
void GetItem_DrawOpa10Xlu2(PlayState* play, s16 giDrawId);
void GetItem_DrawMagicArrow(PlayState* play, s16 giDrawId);
void GetItem_DrawMagicSpell(PlayState* play, s16 giDrawId);
void GetItem_DrawOpa1023(PlayState* play, s16 giDrawId);
void GetItem_DrawOpa10Xlu32(PlayState* play, s16 giDrawId);
void GetItem_DrawSmallRupee(PlayState* play, s16 giDrawId);
void GetItem_DrawScale(PlayState* play, s16 giDrawId);
void GetItem_DrawBulletBag(PlayState* play, s16 giDrawId);
void GetItem_DrawWallet(PlayState* play, s16 giDrawId);

typedef struct DrawItemTableEntry {
    /* 0x00 */ void (*drawFunc)(PlayState*, s16);
    /* 0x04 */ Gfx* dlists[8];
} DrawItemTableEntry; // size = 0x24

DrawItemTableEntry sDrawItemTable[] = {
    // GID_BOTTLE_EMPTY
    { GetItem_DrawOpa0Xlu1, { gGiBottleStopperDL, gGiBottleDL } },
    // GID_SMALL_KEY
    { GetItem_DrawOpa0, { gGiSmallKeyDL } },
    // GID_SONG_MINUET
    { GetItem_DrawXlu01, { gGiMinuetColorDL, gGiSongNoteDL } },
    // GID_SONG_BOLERO
    { GetItem_DrawXlu01, { gGiBoleroColorDL, gGiSongNoteDL } },
    // GID_SONG_SERENADE
    { GetItem_DrawXlu01, { gGiSerenadeColorDL, gGiSongNoteDL } },
    // GID_SONG_REQUIEM
    { GetItem_DrawXlu01, { gGiRequiemColorDL, gGiSongNoteDL } },
    // GID_SONG_NOCTURNE
    { GetItem_DrawXlu01, { gGiNocturneColorDL, gGiSongNoteDL } },
    // GID_SONG_PRELUDE
    { GetItem_DrawXlu01, { gGiPreludeColorDL, gGiSongNoteDL } },
    // GID_RECOVERY_HEART
    { GetItem_DrawRecoveryHeart, { gGiRecoveryHeartDL } },
    // GID_BOSS_KEY
    { GetItem_DrawOpa0Xlu1, { gGiBossKeyDL, gGiBossKeyGemDL } },
    // GID_COMPASS
    { GetItem_DrawCompass, { gGiCompassDL, gGiCompassGlassDL } },
    // GID_MEDALLION_FOREST
    { GetItem_DrawEggOrMedallion, { gGiForestMedallionFaceDL, gGiMedallionDL } },
    // GID_MEDALLION_FIRE
    { GetItem_DrawEggOrMedallion, { gGiFireMedallionFaceDL, gGiMedallionDL } },
    // GID_MEDALLION_WATER
    { GetItem_DrawEggOrMedallion, { gGiWaterMedallionFaceDL, gGiMedallionDL } },
    // GID_MEDALLION_SPIRIT
    { GetItem_DrawEggOrMedallion, { gGiSpiritMedallionFaceDL, gGiMedallionDL } },
    // GID_MEDALLION_SHADOW
    { GetItem_DrawEggOrMedallion, { gGiShadowMedallionFaceDL, gGiMedallionDL } },
    // GID_MEDALLION_LIGHT
    { GetItem_DrawEggOrMedallion, { gGiLightMedallionFaceDL, gGiMedallionDL } },
    // GID_DEKU_NUTS
    { GetItem_DrawDekuNuts, { gGiNutDL } },
    // GID_HEART_CONTAINER
    { GetItem_DrawXlu01, { gGiHeartBorderDL, gGiHeartContainerDL } },
    // GID_HEART_PIECE
    { GetItem_DrawXlu01, { gGiHeartBorderDL, gGiHeartPieceDL } },
    // GID_QUIVER_30
    { GetItem_DrawOpa1023, { gGiQuiverInnerDL, gGiQuiver30InnerColorDL, gGiQuiver30OuterColorDL, gGiQuiverOuterDL } },
    // GID_QUIVER_40
    { GetItem_DrawOpa1023, { gGiQuiverInnerDL, gGiQuiver40InnerColorDL, gGiQuiver40OuterColorDL, gGiQuiverOuterDL } },
    // GID_QUIVER_50
    { GetItem_DrawOpa1023, { gGiQuiverInnerDL, gGiQuiver50InnerColorDL, gGiQuiver50OuterColorDL, gGiQuiverOuterDL } },
    // GID_BOMB_BAG_20
    { GetItem_DrawOpa1023, { gGiBombBagDL, gGiBombBag20BagColorDL, gGiBombBag20RingColorDL, gGiBombBagRingDL } },
    // GID_BOMB_BAG_30
    { GetItem_DrawOpa1023, { gGiBombBagDL, gGiBombBag30BagColorDL, gGiBombBag30RingColorDL, gGiBombBagRingDL } },
    // GID_BOMB_BAG_40
    { GetItem_DrawOpa1023, { gGiBombBagDL, gGiBombBag40BagColorDL, gGiBombBag40RingColorDL, gGiBombBagRingDL } },
    // GID_DEKU_STICK
    { GetItem_DrawOpa0, { gGiStickDL } },
    // GID_DUNGEON_MAP
    { GetItem_DrawOpa0, { gGiDungeonMapDL } },
    // GID_SHIELD_DEKU
    { GetItem_DrawOpa0, { gGiDekuShieldDL } },
    // GID_MAGIC_JAR_SMALL
    { GetItem_DrawOpa0, { gGiMagicJarSmallDL } },
    // GID_MAGIC_JAR_LARGE
    { GetItem_DrawOpa0, { gGiMagicJarLargeDL } },
    // GID_BOMB
    { GetItem_DrawOpa0, { gGiBombDL } },
    // GID_STONE_OF_AGONY
    { GetItem_DrawOpa0, { gGiStoneOfAgonyDL } },
    // GID_WALLET_ADULT
    { GetItem_DrawWallet,
      { gGiWalletDL, gGiAdultWalletColorDL, gGiAdultWalletRupeeOuterColorDL, gGiWalletRupeeOuterDL,
        gGiAdultWalletStringColorDL, gGiWalletStringDL, gGiAdultWalletRupeeInnerColorDL, gGiWalletRupeeInnerDL } },
    // GID_WALLET_GIANT
    { GetItem_DrawWallet,
      { gGiWalletDL, gGiGiantsWalletColorDL, gGiGiantsWalletRupeeOuterColorDL, gGiWalletRupeeOuterDL,
        gGiGiantsWalletStringColorDL, gGiWalletStringDL, gGiGiantsWalletRupeeInnerColorDL, gGiWalletRupeeInnerDL } },
    // GID_GERUDOS_CARD
    { GetItem_DrawOpa0, { gGiGerudoCardDL } },
    // GID_ARROWS_5
    { GetItem_DrawOpa0, { gGiArrowSmallDL } },
    // GID_ARROWS_10
    { GetItem_DrawOpa0, { gGiArrowMediumDL } },
    // GID_ARROWS_30
    { GetItem_DrawOpa0, { gGiArrowLargeDL } },
    // GID_BOMBCHU
    { GetItem_DrawMaskOrBombchu, { gGiBombchuDL } },
    // GID_EGG
    { GetItem_DrawEggOrMedallion, { gGiEggMaterialDL, gGiEggDL } },
    // GID_SCALE_SILVER
    { GetItem_DrawScale, { gGiScaleWaterDL, gGiSilverScaleWaterColorDL, gGiSilverScaleColorDL, gGiScaleDL } },
    // GID_SCALE_GOLDEN
    { GetItem_DrawScale, { gGiScaleWaterDL, gGiGoldenScaleWaterColorDL, gGiGoldenScaleColorDL, gGiScaleDL } },
    // GID_SHIELD_HYLIAN
    { GetItem_DrawOpa0, { gGiHylianShieldDL } },
    // GID_HOOKSHOT
    { GetItem_DrawOpa0, { gGiHookshotDL } },
    // GID_LONGSHOT
    { GetItem_DrawOpa0, { gGiLongshotDL } },
    // GID_OCARINA_OF_TIME
    { GetItem_DrawOpa0Xlu1, { gGiOcarinaTimeDL, gGiOcarinaTimeHolesDL } },
    // GID_BOTTLE_MILK_FULL
    { GetItem_DrawOpa0Xlu1, { gGiMilkBottleContentsDL, gGiMilkBottleDL } },
    // GID_MASK_KEATON
    { GetItem_DrawOpa0Xlu1, { gGiKeatonMaskDL, gGiKeatonMaskEyesDL } },
    // GID_MASK_SPOOKY
    { GetItem_DrawOpa0, { gGiSpookyMaskDL } },
    // GID_SLINGSHOT
    { GetItem_DrawOpa0, { gGiSlingshotDL } },
    // GID_BOOMERANG
    { GetItem_DrawOpa0, { gGiBoomerangDL } },
    // GID_BOW
    { GetItem_DrawOpa0, { gGiBowDL } },
    // GID_LENS_OF_TRUTH
    { GetItem_DrawOpa0Xlu1, { gGiLensDL, gGiLensGlassDL } },
    // GID_BOTTLE_POTION_GREEN
    { GetItem_DrawPotion,
      { gGiPotionPotDL, gGiGreenPotColorDL, gGiGreenLiquidColorDL, gGiPotionLiquidDL, gGiGreenPatternColorDL,
        gGiPotionPatternDL } },
    // GID_BOTTLE_POTION_RED
    { GetItem_DrawPotion,
      { gGiPotionPotDL, gGiRedPotColorDL, gGiRedLiquidColorDL, gGiPotionLiquidDL, gGiRedPatternColorDL,
        gGiPotionPatternDL } },
    // GID_BOTTLE_POTION_BLUE
    { GetItem_DrawPotion,
      { gGiPotionPotDL, gGiBluePotColorDL, gGiBlueLiquidColorDL, gGiPotionLiquidDL, gGiBluePatternColorDL,
        gGiPotionPatternDL } },
    // GID_SHIELD_MIRROR
    { GetItem_DrawMirrorShield, { gGiMirrorShieldDL, gGiMirrorShieldSymbolDL } },
    // GID_ZELDAS_LETTER
    { GetItem_DrawOpa0Xlu1, { gGiLetterDL, gGiLetterWritingDL } },
    // GID_TUNIC_GORON
    { GetItem_DrawOpa1023, { gGiTunicCollarDL, gGiGoronCollarColorDL, gGiGoronTunicColorDL, gGiTunicDL } },
    // GID_TUNIC_ZORA
    { GetItem_DrawOpa1023, { gGiTunicCollarDL, gGiZoraCollarColorDL, gGiZoraTunicColorDL, gGiTunicDL } },
    // GID_MAGIC_BEAN
    { GetItem_DrawOpa0, { gGiBeanDL } },
    // GID_FISH
    { GetItem_DrawFish, { gGiFishDL } },
    // GID_POACHERS_SAW
    { GetItem_DrawOpa0, { gGiSawDL } },
    // GID_HAMMER
    { GetItem_DrawOpa0, { gGiHammerDL } },
    // GID_GRASS
    { GetItem_DrawOpa0, { gGiGrassDL } },
    // GID_SWORD_BIGGORON
    { GetItem_DrawGoronSword, { gGiBiggoronSwordDL } },
    // GID_CUCCO
    { GetItem_DrawOpa10Xlu2, { gGiChickenDL, gGiChickenColorDL, gGiChickenEyesDL } },
    // GID_BOTTLE_RUTOS_LETTER
    { GetItem_DrawOpa0Xlu1, { gGiLetterBottleContentsDL, gGiLetterBottleDL } },
    // GID_OCARINA_FAIRY
    { GetItem_DrawOpa0Xlu1, { gGiOcarinaFairyDL, gGiOcarinaFairyHolesDL } },
    // GID_BOOTS_IRON
    { GetItem_DrawOpa0Xlu1, { gGiIronBootsDL, gGiIronBootsRivetsDL } },
    // GID_DEKU_SEEDS
    { GetItem_DrawOpa0, { gGiSeedDL } },
    // GID_SILVER_GAUNTLETS
    { GetItem_DrawOpa10Xlu32,
      { gGiGauntletsDL, gGiSilverGauntletsColorDL, gGiGauntletsPlateDL, gGiSilverGauntletsPlateColorDL } },
    // GID_GOLD_GAUNTLETS
    { GetItem_DrawOpa10Xlu32,
      { gGiGauntletsDL, gGiGoldenGauntletsColorDL, gGiGauntletsPlateDL, gGiGoldenGauntletsPlateColorDL } },
    // GID_NCOIN_YELLOW
    { GetItem_DrawOpa10Xlu2, { gGiCoinDL, gGiYellowCoinColorDL, gGiNDL } },
    // GID_NCOIN_RED
    { GetItem_DrawOpa10Xlu2, { gGiCoinDL, gGiRedCoinColorDL, gGiNDL } },
    // GID_NCOIN_GREEN
    { GetItem_DrawOpa10Xlu2, { gGiCoinDL, gGiGreenCoinColorDL, gGiNDL } },
    // GID_NCOIN_BLUE
    { GetItem_DrawOpa10Xlu2, { gGiCoinDL, gGiBlueCoinColorDL, gGiNDL } },
    // GID_MASK_SKULL
    { GetItem_DrawOpa0, { gGiSkullMaskDL } },
    // GID_MASK_BUNNY_HOOD
    { GetItem_DrawOpa0Xlu1, { gGiBunnyHoodDL, gGiBunnyHoodEyesDL } },
    // GID_MASK_TRUTH
    { GetItem_DrawOpa0Xlu1, { gGiMaskOfTruthDL, gGiMaskOfTruthAccentsDL } },
    // GID_EYE_DROPS
    { GetItem_DrawOpa0Xlu1, { gGiEyeDropsCapDL, gGiEyeDropsBottleDL } },
    // GID_ODD_POTION
    { GetItem_DrawOpa0, { gGiOddPotionDL } },
    // GID_ODD_MUSHROOM
    { GetItem_DrawOpa0, { gGiOddMushroomDL } },
    // GID_CLAIM_CHECK
    { GetItem_DrawOpa0Xlu1, { gGiClaimCheckDL, gGiClaimCheckWritingDL } },
    // GID_BROKEN_GORONS_SWORD
    { GetItem_DrawGoronSword, { gGiBrokenGoronSwordDL } },
    // GID_PRESCRIPTION
    { GetItem_DrawOpa0Xlu1, { gGiPrescriptionDL, gGiPrescriptionWritingDL } },
    // GID_GORONS_BRACELET
    { GetItem_DrawOpa0, { gGiGoronBraceletDL } },
    // GID_SOLDOUT
    { GetItem_DrawSoldOut, { gGiSoldOutDL } },
    // GID_EYEBALL_FROG
    { GetItem_DrawOpa0Xlu1, { gGiFrogDL, gGiFrogEyesDL } },
    // GID_MASK_GORON
    { GetItem_DrawMaskOrBombchu, { gGiGoronMaskDL } },
    // GID_MASK_ZORA
    { GetItem_DrawMaskOrBombchu, { gGiZoraMaskDL } },
    // GID_MASK_GERUDO
    { GetItem_DrawMaskOrBombchu, { gGiGerudoMaskDL } },
    // GID_COJIRO
    { GetItem_DrawOpa10Xlu2, { gGiChickenDL, gGiCojiroColorDL, gGiChickenEyesDL } },
    // GID_BOOTS_HOVER
    { GetItem_DrawOpa0, { gGiHoverBootsDL } },
    // GID_ARROW_FIRE
    { GetItem_DrawMagicArrow, { gGiMagicArrowDL, gGiFireArrowColorDL, gGiArrowMagicDL } },
    // GID_ARROW_ICE
    { GetItem_DrawMagicArrow, { gGiMagicArrowDL, gGiIceArrowColorDL, gGiArrowMagicDL } },
    // GID_ARROW_LIGHT
    { GetItem_DrawMagicArrow, { gGiMagicArrowDL, gGiLightArrowColorDL, gGiArrowMagicDL } },
    // GID_SKULL_TOKEN
    { GetItem_DrawSkullToken, { gGiSkulltulaTokenDL, gGiSkulltulaTokenFlameDL } },
    // GID_DINS_FIRE
    { GetItem_DrawMagicSpell, { gGiMagicSpellDiamondDL, gGiDinsFireColorDL, gGiMagicSpellOrbDL } },
    // GID_FARORES_WIND
    { GetItem_DrawMagicSpell, { gGiMagicSpellDiamondDL, gGiFaroresWindColorDL, gGiMagicSpellOrbDL } },
    // GID_NAYRUS_LOVE
    { GetItem_DrawMagicSpell, { gGiMagicSpellDiamondDL, gGiNayrusLoveColorDL, gGiMagicSpellOrbDL } },
    // GID_BLUE_FIRE
    { GetItem_DrawBlueFire, { gGiBlueFireChamberstickDL, gGiBlueFireFlameDL } },
    // GID_BUG
    { GetItem_DrawOpa0Xlu1, { gGiBugsContainerDL, gGiBugsGlassDL } },
    // GID_BUTTERFLY
    { GetItem_DrawOpa0Xlu1, { gGiButterflyContainerDL, gGiButterflyGlassDL } },
    // GID_POE
    { GetItem_DrawPoes,
      { gGiGhostContainerLidDL, gGiGhostContainerGlassDL, gGiGhostContainerContentsDL, gGiPoeColorDL } },
    // GID_FAIRY
    { GetItem_DrawFairy, { gGiFairyContainerBaseCapDL, gGiFairyContainerGlassDL, gGiFairyContainerContentsDL } },
    // GID_BULLET_BAG
    { GetItem_DrawBulletBag,
      { gGiBulletBagDL, gGiBulletBagColorDL, gGiBulletBagStringDL, gGiBulletBagStringColorDL, gGiBulletBagWritingDL } },
    // GID_RUPEE_GREEN
    { GetItem_DrawSmallRupee,
      { gGiRupeeInnerDL, gGiGreenRupeeInnerColorDL, gGiRupeeOuterDL, gGiGreenRupeeOuterColorDL } },
    // GID_RUPEE_BLUE
    { GetItem_DrawSmallRupee,
      { gGiRupeeInnerDL, gGiBlueRupeeInnerColorDL, gGiRupeeOuterDL, gGiBlueRupeeOuterColorDL } },
    // GID_RUPEE_RED
    { GetItem_DrawSmallRupee, { gGiRupeeInnerDL, gGiRedRupeeInnerColorDL, gGiRupeeOuterDL, gGiRedRupeeOuterColorDL } },
    // GID_BIG_POE
    { GetItem_DrawPoes,
      { gGiGhostContainerLidDL, gGiGhostContainerGlassDL, gGiGhostContainerContentsDL, gGiBigPoeColorDL } },
    // GID_RUPEE_PURPLE
    { GetItem_DrawOpa10Xlu32,
      { gGiRupeeInnerDL, gGiPurpleRupeeInnerColorDL, gGiRupeeOuterDL, gGiPurpleRupeeOuterColorDL } },
    // GID_RUPEE_GOLD
    { GetItem_DrawOpa10Xlu32,
      { gGiRupeeInnerDL, gGiGoldRupeeInnerColorDL, gGiRupeeOuterDL, gGiGoldRupeeOuterColorDL } },
    // GID_BULLET_BAG_50
    { GetItem_DrawBulletBag,
      { gGiBulletBagDL, gGiBulletBag50ColorDL, gGiBulletBagStringDL, gGiBulletBag50StringColorDL,
        gGiBulletBagWritingDL } },
    // GID_SWORD_KOKIRI
    { GetItem_DrawOpa0, { gGiKokiriSwordDL } },
    // GID_SKULL_TOKEN_2
    { GetItem_DrawSkullToken, { gSkulltulaTokenDL, gSkulltulaTokenFlameDL } },
};

/**
 * Draw "Get Item" Model
 * Calls the corresponding draw function for the given draw ID
 */
void GetItem_Draw(PlayState* play, s16 giDrawId) {
    sDrawItemTable[giDrawId].drawFunc(play, giDrawId);
}

// All remaining functions in this file are draw functions referenced in the table and called by the function above

void GetItem_DrawMaskOrBombchu(PlayState* play, s16 giDrawId) {
    s32 pad;

    OPEN_DISPS(play->state.gfxCtx, "../z_draw.c", 556);

    Gfx_SetupDL_26Opa(play->state.gfxCtx);
    MATRIX_FINALIZE_AND_LOAD(POLY_OPA_DISP++, play->state.gfxCtx, "../z_draw.c", 560);
    gSPDisplayList(POLY_OPA_DISP++, sDrawItemTable[giDrawId].dlists[0]);

    CLOSE_DISPS(play->state.gfxCtx, "../z_draw.c", 565);
}

void GetItem_DrawSoldOut(PlayState* play, s16 giDrawId) {
    s32 pad;

    OPEN_DISPS(play->state.gfxCtx, "../z_draw.c", 572);

    POLY_XLU_DISP = Gfx_SetupDL(POLY_XLU_DISP, SETUPDL_5);
    MATRIX_FINALIZE_AND_LOAD(POLY_XLU_DISP++, play->state.gfxCtx, "../z_draw.c", 576);
    gSPDisplayList(POLY_XLU_DISP++, sDrawItemTable[giDrawId].dlists[0]);

    CLOSE_DISPS(play->state.gfxCtx, "../z_draw.c", 581);
}

void GetItem_DrawBlueFire(PlayState* play, s16 giDrawId) {
    s32 pad;

    OPEN_DISPS(play->state.gfxCtx, "../z_draw.c", 588);

    Gfx_SetupDL_25Opa(play->state.gfxCtx);
    MATRIX_FINALIZE_AND_LOAD(POLY_OPA_DISP++, play->state.gfxCtx, "../z_draw.c", 592);
    gSPDisplayList(POLY_OPA_DISP++, sDrawItemTable[giDrawId].dlists[0]);

    Gfx_SetupDL_25Xlu(play->state.gfxCtx);
    gSPSegment(POLY_XLU_DISP++, 0x08,
               Gfx_TwoTexScroll(play->state.gfxCtx, G_TX_RENDERTILE, 0 * (play->state.frames * 0),
                                0 * (play->state.frames * 0), 16, 32, 1, 1 * (play->state.frames * 1),
                                1 * -(play->state.frames * 8), 16, 32));
    Matrix_Push();
    Matrix_Translate(-8.0f, -2.0f, 0.0f, MTXMODE_APPLY);
    Matrix_ReplaceRotation(&play->billboardMtxF);
    MATRIX_FINALIZE_AND_LOAD(POLY_XLU_DISP++, play->state.gfxCtx, "../z_draw.c", 615);
    gSPDisplayList(POLY_XLU_DISP++, sDrawItemTable[giDrawId].dlists[1]);
    Matrix_Pop();

    CLOSE_DISPS(play->state.gfxCtx, "../z_draw.c", 621);
}

void GetItem_DrawPoes(PlayState* play, s16 giDrawId) {
    s32 pad;

    OPEN_DISPS(play->state.gfxCtx, "../z_draw.c", 628);

    Gfx_SetupDL_25Opa(play->state.gfxCtx);
    MATRIX_FINALIZE_AND_LOAD(POLY_OPA_DISP++, play->state.gfxCtx, "../z_draw.c", 632);
    gSPDisplayList(POLY_OPA_DISP++, sDrawItemTable[giDrawId].dlists[0]);

    Gfx_SetupDL_25Xlu(play->state.gfxCtx);
    MATRIX_FINALIZE_AND_LOAD(POLY_XLU_DISP++, play->state.gfxCtx, "../z_draw.c", 641);
    gSPDisplayList(POLY_XLU_DISP++, sDrawItemTable[giDrawId].dlists[1]);
    gSPSegment(POLY_XLU_DISP++, 0x08,
               Gfx_TwoTexScroll(play->state.gfxCtx, G_TX_RENDERTILE, 0 * (play->state.frames * 0),
                                0 * (play->state.frames * 0), 16, 32, 1, 1 * (play->state.frames * 1),
                                1 * -(play->state.frames * 6), 16, 32));
    Matrix_Push();
    Matrix_ReplaceRotation(&play->billboardMtxF);
    MATRIX_FINALIZE_AND_LOAD(POLY_XLU_DISP++, play->state.gfxCtx, "../z_draw.c", 656);
    gSPDisplayList(POLY_XLU_DISP++, sDrawItemTable[giDrawId].dlists[3]);
    gSPDisplayList(POLY_XLU_DISP++, sDrawItemTable[giDrawId].dlists[2]);
    Matrix_Pop();

    CLOSE_DISPS(play->state.gfxCtx, "../z_draw.c", 663);
}

void GetItem_DrawFairy(PlayState* play, s16 giDrawId) {
    s32 pad;

    OPEN_DISPS(play->state.gfxCtx, "../z_draw.c", 670);

    Gfx_SetupDL_25Opa(play->state.gfxCtx);
    MATRIX_FINALIZE_AND_LOAD(POLY_OPA_DISP++, play->state.gfxCtx, "../z_draw.c", 674);
    gSPDisplayList(POLY_OPA_DISP++, sDrawItemTable[giDrawId].dlists[0]);

    Gfx_SetupDL_25Xlu(play->state.gfxCtx);
    MATRIX_FINALIZE_AND_LOAD(POLY_XLU_DISP++, play->state.gfxCtx, "../z_draw.c", 683);
    gSPDisplayList(POLY_XLU_DISP++, sDrawItemTable[giDrawId].dlists[1]);
    gSPSegment(POLY_XLU_DISP++, 0x08,
               Gfx_TwoTexScroll(play->state.gfxCtx, G_TX_RENDERTILE, 0 * (play->state.frames * 0),
                                0 * (play->state.frames * 0), 32, 32, 1, 1 * (play->state.frames * 1),
                                1 * -(play->state.frames * 6), 32, 32));
    Matrix_Push();
    Matrix_ReplaceRotation(&play->billboardMtxF);
    MATRIX_FINALIZE_AND_LOAD(POLY_XLU_DISP++, play->state.gfxCtx, "../z_draw.c", 698);
    gSPDisplayList(POLY_XLU_DISP++, sDrawItemTable[giDrawId].dlists[2]);
    Matrix_Pop();

    CLOSE_DISPS(play->state.gfxCtx, "../z_draw.c", 704);
}

void GetItem_DrawMirrorShield(PlayState* play, s16 giDrawId) {
    s32 pad;

    OPEN_DISPS(play->state.gfxCtx, "../z_draw.c", 712);

    Gfx_SetupDL_25Opa(play->state.gfxCtx);
    gSPSegment(POLY_OPA_DISP++, 0x08,
               Gfx_TwoTexScroll(play->state.gfxCtx, G_TX_RENDERTILE, 0 * (play->state.frames * 0) % 256,
                                1 * (play->state.frames * 2) % 256, 64, 64, 1, 0 * (play->state.frames * 0) % 128,
                                1 * (play->state.frames * 1) % 128, 32, 32));
    MATRIX_FINALIZE_AND_LOAD(POLY_OPA_DISP++, play->state.gfxCtx, "../z_draw.c", 723);
    gSPDisplayList(POLY_OPA_DISP++, sDrawItemTable[giDrawId].dlists[0]);

    Gfx_SetupDL_25Xlu(play->state.gfxCtx);
    MATRIX_FINALIZE_AND_LOAD(POLY_XLU_DISP++, play->state.gfxCtx, "../z_draw.c", 730);
    gSPDisplayList(POLY_XLU_DISP++, sDrawItemTable[giDrawId].dlists[1]);

    CLOSE_DISPS(play->state.gfxCtx, "../z_draw.c", 735);
}

void GetItem_DrawSkullToken(PlayState* play, s16 giDrawId) {
    s32 pad;

    OPEN_DISPS(play->state.gfxCtx, "../z_draw.c", 742);

    Gfx_SetupDL_25Opa(play->state.gfxCtx);
    MATRIX_FINALIZE_AND_LOAD(POLY_OPA_DISP++, play->state.gfxCtx, "../z_draw.c", 746);
    gSPDisplayList(POLY_OPA_DISP++, sDrawItemTable[giDrawId].dlists[0]);

    Gfx_SetupDL_25Xlu(play->state.gfxCtx);
    gSPSegment(POLY_XLU_DISP++, 0x08,
               Gfx_TwoTexScroll(play->state.gfxCtx, G_TX_RENDERTILE, 0 * (play->state.frames * 0),
                                1 * -(play->state.frames * 5), 32, 32, 1, 0 * (play->state.frames * 0),
                                0 * (play->state.frames * 0), 32, 64));
    MATRIX_FINALIZE_AND_LOAD(POLY_XLU_DISP++, play->state.gfxCtx, "../z_draw.c", 760);
    gSPDisplayList(POLY_XLU_DISP++, sDrawItemTable[giDrawId].dlists[1]);

    CLOSE_DISPS(play->state.gfxCtx, "../z_draw.c", 765);
}

void GetItem_DrawEggOrMedallion(PlayState* play, s16 giDrawId) {
    DrawItemTableEntry* entry = &sDrawItemTable[giDrawId];

    OPEN_DISPS(play->state.gfxCtx, "../z_draw.c", 772);

    Gfx_SetupDL_26Opa(play->state.gfxCtx);
    MATRIX_FINALIZE_AND_LOAD(POLY_OPA_DISP++, play->state.gfxCtx, "../z_draw.c", 776);
    gSPDisplayList(POLY_OPA_DISP++, entry->dlists[0]);
    gSPDisplayList(POLY_OPA_DISP++, entry->dlists[1]);

    CLOSE_DISPS(play->state.gfxCtx, "../z_draw.c", 783);
}

void GetItem_DrawCompass(PlayState* play, s16 giDrawId) {
    s32 pad;

    OPEN_DISPS(play->state.gfxCtx, "../z_draw.c", 811);

    Gfx_SetupDL_25Opa(play->state.gfxCtx);
    MATRIX_FINALIZE_AND_LOAD(POLY_OPA_DISP++, play->state.gfxCtx, "../z_draw.c", 815);
    gSPDisplayList(POLY_OPA_DISP++, sDrawItemTable[giDrawId].dlists[0]);

    POLY_XLU_DISP = Gfx_SetupDL(POLY_XLU_DISP, SETUPDL_5);
    MATRIX_FINALIZE_AND_LOAD(POLY_XLU_DISP++, play->state.gfxCtx, "../z_draw.c", 822);
    gSPDisplayList(POLY_XLU_DISP++, sDrawItemTable[giDrawId].dlists[1]);

    CLOSE_DISPS(play->state.gfxCtx, "../z_draw.c", 827);
}

void GetItem_DrawPotion(PlayState* play, s16 giDrawId) {
    s32 pad;

    OPEN_DISPS(play->state.gfxCtx, "../z_draw.c", 834);

    Gfx_SetupDL_25Opa(play->state.gfxCtx);
    gSPSegment(POLY_OPA_DISP++, 0x08,
               Gfx_TwoTexScroll(play->state.gfxCtx, G_TX_RENDERTILE, -1 * (play->state.frames * 1),
                                1 * (play->state.frames * 1), 32, 32, 1, -1 * (play->state.frames * 1),
                                1 * (play->state.frames * 1), 32, 32));
    MATRIX_FINALIZE_AND_LOAD(POLY_OPA_DISP++, play->state.gfxCtx, "../z_draw.c", 845);
    gSPDisplayList(POLY_OPA_DISP++, sDrawItemTable[giDrawId].dlists[1]);
    gSPDisplayList(POLY_OPA_DISP++, sDrawItemTable[giDrawId].dlists[0]);
    gSPDisplayList(POLY_OPA_DISP++, sDrawItemTable[giDrawId].dlists[2]);
    gSPDisplayList(POLY_OPA_DISP++, sDrawItemTable[giDrawId].dlists[3]);

    Gfx_SetupDL_25Xlu(play->state.gfxCtx);
    MATRIX_FINALIZE_AND_LOAD(POLY_XLU_DISP++, play->state.gfxCtx, "../z_draw.c", 855);
    gSPDisplayList(POLY_XLU_DISP++, sDrawItemTable[giDrawId].dlists[4]);
    gSPDisplayList(POLY_XLU_DISP++, sDrawItemTable[giDrawId].dlists[5]);

    CLOSE_DISPS(play->state.gfxCtx, "../z_draw.c", 861);
}

void GetItem_DrawGoronSword(PlayState* play, s16 giDrawId) {
    s32 pad;

    OPEN_DISPS(play->state.gfxCtx, "../z_draw.c", 868);

    Gfx_SetupDL_25Opa(play->state.gfxCtx);
    gSPSegment(POLY_OPA_DISP++, 0x08,
               Gfx_TwoTexScroll(play->state.gfxCtx, G_TX_RENDERTILE, 1 * (play->state.frames * 1),
                                0 * (play->state.frames * 1), 32, 32, 1, 0 * (play->state.frames * 1),
                                0 * (play->state.frames * 1), 32, 32));
    MATRIX_FINALIZE_AND_LOAD(POLY_OPA_DISP++, play->state.gfxCtx, "../z_draw.c", 878);
    gSPDisplayList(POLY_OPA_DISP++, sDrawItemTable[giDrawId].dlists[0]);

    CLOSE_DISPS(play->state.gfxCtx, "../z_draw.c", 883);
}

void GetItem_DrawDekuNuts(PlayState* play, s16 giDrawId) {
    s32 pad;

    OPEN_DISPS(play->state.gfxCtx, "../z_draw.c", 890);

    Gfx_SetupDL_25Opa(play->state.gfxCtx);
    gSPSegment(POLY_OPA_DISP++, 0x08,
               Gfx_TwoTexScroll(play->state.gfxCtx, G_TX_RENDERTILE, 1 * (play->state.frames * 6),
                                1 * (play->state.frames * 6), 32, 32, 1, 1 * (play->state.frames * 6),
                                1 * (play->state.frames * 6), 32, 32));
    MATRIX_FINALIZE_AND_LOAD(POLY_OPA_DISP++, play->state.gfxCtx, "../z_draw.c", 901);
    gSPDisplayList(POLY_OPA_DISP++, sDrawItemTable[giDrawId].dlists[0]);

    CLOSE_DISPS(play->state.gfxCtx, "../z_draw.c", 906);
}

void GetItem_DrawRecoveryHeart(PlayState* play, s16 giDrawId) {
    s32 pad;

    OPEN_DISPS(play->state.gfxCtx, "../z_draw.c", 913);

    Gfx_SetupDL_25Xlu(play->state.gfxCtx);
    gSPSegment(POLY_XLU_DISP++, 0x08,
               Gfx_TwoTexScroll(play->state.gfxCtx, G_TX_RENDERTILE, 0 * (play->state.frames * 1),
                                1 * -(play->state.frames * 3), 32, 32, 1, 0 * (play->state.frames * 1),
                                1 * -(play->state.frames * 2), 32, 32));
    MATRIX_FINALIZE_AND_LOAD(POLY_XLU_DISP++, play->state.gfxCtx, "../z_draw.c", 924);
    gSPDisplayList(POLY_XLU_DISP++, sDrawItemTable[giDrawId].dlists[0]);

    CLOSE_DISPS(play->state.gfxCtx, "../z_draw.c", 929);
}

void GetItem_DrawFish(PlayState* play, s16 giDrawId) {
    s32 pad;

    OPEN_DISPS(play->state.gfxCtx, "../z_draw.c", 936);

    Gfx_SetupDL_25Xlu(play->state.gfxCtx);
    gSPSegment(POLY_XLU_DISP++, 0x08,
               Gfx_TwoTexScroll(play->state.gfxCtx, G_TX_RENDERTILE, 0 * (play->state.frames * 0),
                                1 * (play->state.frames * 1), 32, 32, 1, 0 * (play->state.frames * 0),
                                1 * (play->state.frames * 1), 32, 32));
    MATRIX_FINALIZE_AND_LOAD(POLY_XLU_DISP++, play->state.gfxCtx, "../z_draw.c", 947);
    gSPDisplayList(POLY_XLU_DISP++, sDrawItemTable[giDrawId].dlists[0]);

    CLOSE_DISPS(play->state.gfxCtx, "../z_draw.c", 952);
}

void GetItem_DrawOpa0(PlayState* play, s16 giDrawId) {
    s32 pad;

    OPEN_DISPS(play->state.gfxCtx, "../z_draw.c", 959);

    Gfx_SetupDL_25Opa(play->state.gfxCtx);
    MATRIX_FINALIZE_AND_LOAD(POLY_OPA_DISP++, play->state.gfxCtx, "../z_draw.c", 963);
    gSPDisplayList(POLY_OPA_DISP++, sDrawItemTable[giDrawId].dlists[0]);

    CLOSE_DISPS(play->state.gfxCtx, "../z_draw.c", 968);
}

void GetItem_DrawOpa0Xlu1(PlayState* play, s16 giDrawId) {
    s32 pad;

    OPEN_DISPS(play->state.gfxCtx, "../z_draw.c", 975);

    Gfx_SetupDL_25Opa(play->state.gfxCtx);
    MATRIX_FINALIZE_AND_LOAD(POLY_OPA_DISP++, play->state.gfxCtx, "../z_draw.c", 979);
    gSPDisplayList(POLY_OPA_DISP++, sDrawItemTable[giDrawId].dlists[0]);

    Gfx_SetupDL_25Xlu(play->state.gfxCtx);
    MATRIX_FINALIZE_AND_LOAD(POLY_XLU_DISP++, play->state.gfxCtx, "../z_draw.c", 986);
    gSPDisplayList(POLY_XLU_DISP++, sDrawItemTable[giDrawId].dlists[1]);

    CLOSE_DISPS(play->state.gfxCtx, "../z_draw.c", 991);
}

void GetItem_DrawXlu01(PlayState* play, s16 giDrawId) {
    DrawItemTableEntry* entry = &sDrawItemTable[giDrawId];

    OPEN_DISPS(play->state.gfxCtx, "../z_draw.c", 998);

    Gfx_SetupDL_25Xlu(play->state.gfxCtx);
    MATRIX_FINALIZE_AND_LOAD(POLY_XLU_DISP++, play->state.gfxCtx, "../z_draw.c", 1002);
    gSPDisplayList(POLY_XLU_DISP++, entry->dlists[0]);
    gSPDisplayList(POLY_XLU_DISP++, entry->dlists[1]);

    CLOSE_DISPS(play->state.gfxCtx, "../z_draw.c", 1008);
}

void GetItem_DrawOpa10Xlu2(PlayState* play, s16 giDrawId) {
    s32 pad;

    OPEN_DISPS(play->state.gfxCtx, "../z_draw.c", 1015);

    Gfx_SetupDL_25Opa(play->state.gfxCtx);
    MATRIX_FINALIZE_AND_LOAD(POLY_OPA_DISP++, play->state.gfxCtx, "../z_draw.c", 1019);
    gSPDisplayList(POLY_OPA_DISP++, sDrawItemTable[giDrawId].dlists[1]);
    gSPDisplayList(POLY_OPA_DISP++, sDrawItemTable[giDrawId].dlists[0]);

    Gfx_SetupDL_25Xlu(play->state.gfxCtx);
    MATRIX_FINALIZE_AND_LOAD(POLY_XLU_DISP++, play->state.gfxCtx, "../z_draw.c", 1027);
    gSPDisplayList(POLY_XLU_DISP++, sDrawItemTable[giDrawId].dlists[2]);

    CLOSE_DISPS(play->state.gfxCtx, "../z_draw.c", 1032);
}

void GetItem_DrawMagicArrow(PlayState* play, s16 giDrawId) {
    s32 pad;

    OPEN_DISPS(play->state.gfxCtx, "../z_draw.c", 1039);

    Gfx_SetupDL_25Opa(play->state.gfxCtx);
    MATRIX_FINALIZE_AND_LOAD(POLY_OPA_DISP++, play->state.gfxCtx, "../z_draw.c", 1043);
    gSPDisplayList(POLY_OPA_DISP++, sDrawItemTable[giDrawId].dlists[0]);

    Gfx_SetupDL_25Xlu(play->state.gfxCtx);
    MATRIX_FINALIZE_AND_LOAD(POLY_XLU_DISP++, play->state.gfxCtx, "../z_draw.c", 1050);
    gSPDisplayList(POLY_XLU_DISP++, sDrawItemTable[giDrawId].dlists[1]);
    gSPDisplayList(POLY_XLU_DISP++, sDrawItemTable[giDrawId].dlists[2]);

    CLOSE_DISPS(play->state.gfxCtx, "../z_draw.c", 1056);
}

void GetItem_DrawMagicSpell(PlayState* play, s16 giDrawId) {
    s32 pad;

    OPEN_DISPS(play->state.gfxCtx, "../z_draw.c", 1063);

    Gfx_SetupDL_25Xlu(play->state.gfxCtx);
    gSPSegment(POLY_XLU_DISP++, 0x08,
               Gfx_TwoTexScroll(play->state.gfxCtx, G_TX_RENDERTILE, 1 * (play->state.frames * 2),
                                1 * -(play->state.frames * 6), 32, 32, 1, 1 * (play->state.frames * 1),
                                -1 * (play->state.frames * 2), 32, 32));
    MATRIX_FINALIZE_AND_LOAD(POLY_XLU_DISP++, play->state.gfxCtx, "../z_draw.c", 1074);
    gSPDisplayList(POLY_XLU_DISP++, sDrawItemTable[giDrawId].dlists[0]);
    gSPDisplayList(POLY_XLU_DISP++, sDrawItemTable[giDrawId].dlists[1]);
    gSPDisplayList(POLY_XLU_DISP++, sDrawItemTable[giDrawId].dlists[2]);

    CLOSE_DISPS(play->state.gfxCtx, "../z_draw.c", 1081);
}

void GetItem_DrawOpa1023(PlayState* play, s16 giDrawId) {
    s32 pad;

    OPEN_DISPS(play->state.gfxCtx, "../z_draw.c", 1088);

    Gfx_SetupDL_25Opa(play->state.gfxCtx);
    MATRIX_FINALIZE_AND_LOAD(POLY_OPA_DISP++, play->state.gfxCtx, "../z_draw.c", 1092);
    gSPDisplayList(POLY_OPA_DISP++, sDrawItemTable[giDrawId].dlists[1]);
    gSPDisplayList(POLY_OPA_DISP++, sDrawItemTable[giDrawId].dlists[0]);
    gSPDisplayList(POLY_OPA_DISP++, sDrawItemTable[giDrawId].dlists[2]);
    gSPDisplayList(POLY_OPA_DISP++, sDrawItemTable[giDrawId].dlists[3]);

    CLOSE_DISPS(play->state.gfxCtx, "../z_draw.c", 1100);
}

void GetItem_DrawOpa10Xlu32(PlayState* play, s16 giDrawId) {
    s32 pad;

    OPEN_DISPS(play->state.gfxCtx, "../z_draw.c", 1108);

    Gfx_SetupDL_25Opa(play->state.gfxCtx);
    MATRIX_FINALIZE_AND_LOAD(POLY_OPA_DISP++, play->state.gfxCtx, "../z_draw.c", 1112);
    gSPDisplayList(POLY_OPA_DISP++, sDrawItemTable[giDrawId].dlists[1]);
    gSPDisplayList(POLY_OPA_DISP++, sDrawItemTable[giDrawId].dlists[0]);

    Gfx_SetupDL_25Xlu(play->state.gfxCtx);
    MATRIX_FINALIZE_AND_LOAD(POLY_XLU_DISP++, play->state.gfxCtx, "../z_draw.c", 1120);
    gSPDisplayList(POLY_XLU_DISP++, sDrawItemTable[giDrawId].dlists[3]);
    gSPDisplayList(POLY_XLU_DISP++, sDrawItemTable[giDrawId].dlists[2]);

    CLOSE_DISPS(play->state.gfxCtx, "../z_draw.c", 1126);
}

void GetItem_DrawSmallRupee(PlayState* play, s16 giDrawId) {
    s32 pad;

    OPEN_DISPS(play->state.gfxCtx, "../z_draw.c", 1133);

    Matrix_Scale(0.7f, 0.7f, 0.7f, MTXMODE_APPLY);

    Gfx_SetupDL_25Opa(play->state.gfxCtx);
    MATRIX_FINALIZE_AND_LOAD(POLY_OPA_DISP++, play->state.gfxCtx, "../z_draw.c", 1140);
    gSPDisplayList(POLY_OPA_DISP++, sDrawItemTable[giDrawId].dlists[1]);
    gSPDisplayList(POLY_OPA_DISP++, sDrawItemTable[giDrawId].dlists[0]);

    Gfx_SetupDL_25Xlu(play->state.gfxCtx);
    MATRIX_FINALIZE_AND_LOAD(POLY_XLU_DISP++, play->state.gfxCtx, "../z_draw.c", 1148);
    gSPDisplayList(POLY_XLU_DISP++, sDrawItemTable[giDrawId].dlists[3]);
    gSPDisplayList(POLY_XLU_DISP++, sDrawItemTable[giDrawId].dlists[2]);

    CLOSE_DISPS(play->state.gfxCtx, "../z_draw.c", 1154);
}

void GetItem_DrawScale(PlayState* play, s16 giDrawId) {
    s32 pad;

    OPEN_DISPS(play->state.gfxCtx, "../z_draw.c", 1162);

    Gfx_SetupDL_25Xlu(play->state.gfxCtx);
    gSPSegment(POLY_XLU_DISP++, 0x08,
               Gfx_TwoTexScroll(play->state.gfxCtx, G_TX_RENDERTILE, 1 * (play->state.frames * 2),
                                -1 * (play->state.frames * 2), 64, 64, 1, 1 * (play->state.frames * 4),
                                1 * -(play->state.frames * 4), 32, 32));
    MATRIX_FINALIZE_AND_LOAD(POLY_XLU_DISP++, play->state.gfxCtx, "../z_draw.c", 1173);
    gSPDisplayList(POLY_XLU_DISP++, sDrawItemTable[giDrawId].dlists[2]);
    gSPDisplayList(POLY_XLU_DISP++, sDrawItemTable[giDrawId].dlists[3]);
    gSPDisplayList(POLY_XLU_DISP++, sDrawItemTable[giDrawId].dlists[1]);
    gSPDisplayList(POLY_XLU_DISP++, sDrawItemTable[giDrawId].dlists[0]);

    CLOSE_DISPS(play->state.gfxCtx, "../z_draw.c", 1181);
}

void GetItem_DrawBulletBag(PlayState* play, s16 giDrawId) {
    DrawItemTableEntry* entry = &sDrawItemTable[giDrawId];

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

void GetItem_DrawWallet(PlayState* play, s16 giDrawId) {
    s32 pad;

    OPEN_DISPS(play->state.gfxCtx, "../z_draw.c", 1214);

    Gfx_SetupDL_25Opa(play->state.gfxCtx);
    MATRIX_FINALIZE_AND_LOAD(POLY_OPA_DISP++, play->state.gfxCtx, "../z_draw.c", 1218);
    gSPDisplayList(POLY_OPA_DISP++, sDrawItemTable[giDrawId].dlists[1]);
    gSPDisplayList(POLY_OPA_DISP++, sDrawItemTable[giDrawId].dlists[0]);
    gSPDisplayList(POLY_OPA_DISP++, sDrawItemTable[giDrawId].dlists[2]);
    gSPDisplayList(POLY_OPA_DISP++, sDrawItemTable[giDrawId].dlists[3]);
    gSPDisplayList(POLY_OPA_DISP++, sDrawItemTable[giDrawId].dlists[4]);
    gSPDisplayList(POLY_OPA_DISP++, sDrawItemTable[giDrawId].dlists[5]);
    gSPDisplayList(POLY_OPA_DISP++, sDrawItemTable[giDrawId].dlists[6]);
    gSPDisplayList(POLY_OPA_DISP++, sDrawItemTable[giDrawId].dlists[7]);

    CLOSE_DISPS(play->state.gfxCtx, "../z_draw.c", 1230);
}
