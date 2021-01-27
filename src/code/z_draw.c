#include "global.h"
#include "objects/object_gi_key/object_gi_key.h"
#include "objects/object_gi_jewel/object_gi_jewel.h"
#include "objects/object_gi_melody/object_gi_melody.h"
#include "objects/object_gi_heart/object_gi_heart.h"
#include "objects/object_gi_compass/object_gi_compass.h"
#include "objects/object_gi_bosskey/object_gi_bosskey.h"
#include "objects/object_gi_medal/object_gi_medal.h"
#include "objects/object_gi_nuts/object_gi_nuts.h"
#include "objects/object_gi_hearts/object_gi_hearts.h"
#include "objects/object_gi_arrowcase/object_gi_arrowcase.h"
#include "objects/object_gi_bombpouch/object_gi_bombpouch.h"
#include "objects/object_gi_bottle/object_gi_bottle.h"
#include "objects/object_gi_stick/object_gi_stick.h"
#include "objects/object_gi_map/object_gi_map.h"
#include "objects/object_gi_shield_1/object_gi_shield_1.h"
#include "objects/object_gi_magicpot/object_gi_magicpot.h"
#include "objects/object_gi_bomb_1/object_gi_bomb_1.h"
#include "objects/object_gi_purse/object_gi_purse.h"
#include "objects/object_gi_gerudo/object_gi_gerudo.h"
#include "objects/object_gi_arrow/object_gi_arrow.h"
#include "objects/object_gi_bomb_2/object_gi_bomb_2.h"
#include "objects/object_gi_egg/object_gi_egg.h"
#include "objects/object_gi_scale/object_gi_scale.h"
#include "objects/object_gi_shield_2/object_gi_shield_2.h"
#include "objects/object_gi_hookshot/object_gi_hookshot.h"
#include "objects/object_gi_ocarina/object_gi_ocarina.h"
#include "objects/object_gi_milk/object_gi_milk.h"
#include "objects/object_gi_pachinko/object_gi_pachinko.h"
#include "objects/object_gi_boomerang/object_gi_boomerang.h"
#include "objects/object_gi_bow/object_gi_bow.h"
#include "objects/object_gi_glasses/object_gi_glasses.h"
#include "objects/object_gi_liquid/object_gi_liquid.h"
#include "objects/object_gi_shield_3/object_gi_shield_3.h"
#include "objects/object_gi_letter/object_gi_letter.h"
#include "objects/object_gi_clothes/object_gi_clothes.h"
#include "objects/object_gi_bean/object_gi_bean.h"
#include "objects/object_gi_fish/object_gi_fish.h"
#include "objects/object_gi_saw/object_gi_saw.h"
#include "objects/object_gi_hammer/object_gi_hammer.h"
#include "objects/object_gi_grass/object_gi_grass.h"
#include "objects/object_gi_longsword/object_gi_longsword.h"
#include "objects/object_gi_niwatori/object_gi_niwatori.h"
#include "objects/object_gi_bottle_letter/object_gi_bottle_letter.h"
#include "objects/object_gi_ocarina_0/object_gi_ocarina_0.h"
#include "objects/object_gi_boots_2/object_gi_boots_2.h"
#include "objects/object_gi_seed/object_gi_seed.h"
#include "objects/object_gi_gloves/object_gi_gloves.h"
#include "objects/object_gi_coin/object_gi_coin.h"
#include "objects/object_gi_ki_tan_mask/object_gi_ki_tan_mask.h"
#include "objects/object_gi_redead_mask/object_gi_redead_mask.h"
#include "objects/object_gi_skj_mask/object_gi_skj_mask.h"
#include "objects/object_gi_rabit_mask/object_gi_rabit_mask.h"
#include "objects/object_gi_truth_mask/object_gi_truth_mask.h"
#include "objects/object_gi_eye_lotion/object_gi_eye_lotion.h"
#include "objects/object_gi_powder/object_gi_powder.h"
#include "objects/object_gi_mushroom/object_gi_mushroom.h"
#include "objects/object_gi_ticketstone/object_gi_ticketstone.h"
#include "objects/object_gi_brokensword/object_gi_brokensword.h"
#include "objects/object_gi_prescription/object_gi_prescription.h"
#include "objects/object_gi_bracelet/object_gi_bracelet.h"
#include "objects/object_gi_soldout/object_gi_soldout.h"
#include "objects/object_gi_frog/object_gi_frog.h"
#include "objects/object_gi_golonmask/object_gi_golonmask.h"
#include "objects/object_gi_zoramask/object_gi_zoramask.h"
#include "objects/object_gi_gerudomask/object_gi_gerudomask.h"
#include "objects/object_gi_hoverboots/object_gi_hoverboots.h"
#include "objects/object_gi_m_arrow/object_gi_m_arrow.h"
#include "objects/object_gi_sutaru/object_gi_sutaru.h"
#include "objects/object_gi_goddess/object_gi_goddess.h"
#include "objects/object_gi_fire/object_gi_fire.h"
#include "objects/object_gi_insect/object_gi_insect.h"
#include "objects/object_gi_butterfly/object_gi_butterfly.h"
#include "objects/object_gi_ghost/object_gi_ghost.h"
#include "objects/object_gi_soul/object_gi_soul.h"
#include "objects/object_gi_dekupouch/object_gi_dekupouch.h"
#include "objects/object_gi_rupy/object_gi_rupy.h"
#include "objects/object_gi_sword_1/object_gi_sword_1.h"

// "Get Item" Model Draw Functions
void func_800694E4(GlobalContext* globalCtx, s16 drawId);
void func_800695C0(GlobalContext* globalCtx, s16 drawId);
void func_8006969C(GlobalContext* globalCtx, s16 drawId);
void func_80069880(GlobalContext* globalCtx, s16 drawId);
void func_80069AC8(GlobalContext* globalCtx, s16 drawId);
void func_80069CF0(GlobalContext* globalCtx, s16 drawId);
void func_80069EB0(GlobalContext* globalCtx, s16 drawId);
void func_8006A060(GlobalContext* globalCtx, s16 drawId);
void func_8006A158(GlobalContext* globalCtx, s16 drawId);
void func_8006A2A0(GlobalContext* globalCtx, s16 drawId);
void func_8006A4B0(GlobalContext* globalCtx, s16 drawId);
void func_8006A5F0(GlobalContext* globalCtx, s16 drawId);
void func_8006A73C(GlobalContext* globalCtx, s16 drawId);
void func_8006A88C(GlobalContext* globalCtx, s16 drawId);
void func_8006A9CC(GlobalContext* globalCtx, s16 drawId);
void func_8006AAA8(GlobalContext* globalCtx, s16 drawId);
void func_8006ABEC(GlobalContext* globalCtx, s16 drawId);
void func_8006ACE4(GlobalContext* globalCtx, s16 drawId);
void func_8006AE40(GlobalContext* globalCtx, s16 drawId);
void func_8006AF9C(GlobalContext* globalCtx, s16 drawId);
void func_8006B124(GlobalContext* globalCtx, s16 drawId);
void func_8006B24C(GlobalContext* globalCtx, s16 drawId);
void func_8006B3C0(GlobalContext* globalCtx, s16 drawId);
void func_8006B54C(GlobalContext* globalCtx, s16 drawId);
void func_8006B6E4(GlobalContext* globalCtx, s16 drawId);
void func_8006B870(GlobalContext* globalCtx, s16 drawId);

typedef struct {
    /* 0x00 */ void (*drawFunc)(GlobalContext*, s16);
    /* 0x04 */ u32 dlists[8];
} DrawItemTableEntry; // size = 0x24

DrawItemTableEntry sDrawItemTable[] = {
    // bottle, OBJECT_GI_BOTTLE
    { func_8006AAA8, { gGiBottleStopperDL, gGiBottleDL } },
    // small key, OBJECT_GI_KEY
    { func_8006A9CC, { gGiSmallKeyDL } },
    // minuet of forest, OBJECT_GI_MELODY
    { func_8006ABEC, { gGiMinuetColorDL, gGiSongNoteDL } },
    // bolero of fire, OBJECT_GI_MELODY
    { func_8006ABEC, { gGiBoleroColorDL, gGiSongNoteDL } },
    // serenade of water, OBJECT_GI_MELODY
    { func_8006ABEC, { gGiSerenadeColorDL, gGiSongNoteDL } },
    // requiem of spirit, OBJECT_GI_MELODY
    { func_8006ABEC, { gGiRequiemColorDL, gGiSongNoteDL } },
    // nocturne of shadow, OBJECT_GI_MELODY
    { func_8006ABEC, { gGiNocturneColorDL, gGiSongNoteDL } },
    // prelude of light, OBJECT_GI_MELODY
    { func_8006ABEC, { gGiPreludeColorDL, gGiSongNoteDL } },
    // recovery heart, OBJECT_GI_HEART
    { func_8006A73C, { gGiRecoveryHeartDL } },
    // boss key, OBJECT_GI_BOSSKEY
    { func_8006AAA8, { gGiBossKeyDL, gGiBossKeyGemDL } },
    // compass, OBJECT_GI_COMPASS
    { func_8006A158, { gGiCompassDL, gGiCompassGlassDL } },
    // forest medallion, OBJECT_GI_MEDAL
    { func_8006A060, { gGiForestMedallionFaceDL, gGiMedallionDL } },
    // fire medallion, OBJECT_GI_MEDAL
    { func_8006A060, { gGiFireMedallionFaceDL, gGiMedallionDL } },
    // water medallion, OBJECT_GI_MEDAL
    { func_8006A060, { gGiWaterMedallionFaceDL, gGiMedallionDL } },
    // spirit medallion, OBJECT_GI_MEDAL
    { func_8006A060, { gGiSpiritMedallionFaceDL, gGiMedallionDL } },
    // shadow medallion, OBJECT_GI_MEDAL
    { func_8006A060, { gGiShadowMedallionFaceDL, gGiMedallionDL } },
    // light medallion, OBJECT_GI_MEDAL
    { func_8006A060, { gGiLightMedallionFaceDL, gGiMedallionDL } },
    // deku nuts, OBJECT_GI_NUTS
    { func_8006A5F0, { gGiNutDL } },
    // heart container, OBJECT_GI_HEARTS
    { func_8006ABEC, { gGiHeartBorderDL, gGiHeartContainerDL } },
    // heart piece, OBJECT_GI_HEARTS
    { func_8006ABEC, { gGiHeartBorderDL, gGiHeartPieceDL } },
    // quiver 30, OBJECT_GI_ARROWCASE
    { func_8006B124, { gGiQuiverInnerDL, gGiQuiver30InnerColorDL, gGiQuiver30OuterColorDL, gGiQuiverOuterDL } },
    // quiver 40, OBJECT_GI_ARROWCASE
    { func_8006B124, { gGiQuiverInnerDL, gGiQuiver40InnerColorDL, gGiQuiver40OuterColorDL, gGiQuiverOuterDL } },
    // quiver 50, OBJECT_GI_ARROWCASE
    { func_8006B124, { gGiQuiverInnerDL, gGiQuiver50InnerColorDL, gGiQuiver50OuterColorDL, gGiQuiverOuterDL } },
    // bomb bag 20, OBJECT_GI_BOMBPOUCH
    { func_8006B124, { gGiBombBagDL, gGiBombBag20BagColorDL, gGiBombBag20RingColorDL, gGiBombBagRingDL } },
    // bomb bag 30, OBJECT_GI_BOMBPOUCH
    { func_8006B124, { gGiBombBagDL, gGiBombBag30BagColorDL, gGiBombBag30RingColorDL, gGiBombBagRingDL } },
    // bomb bag 40, OBJECT_GI_BOMBPOUCH
    { func_8006B124, { gGiBombBagDL, gGiBombBag40BagColorDL, gGiBombBag40RingColorDL, gGiBombBagRingDL } },
    // stick, OBJECT_GI_STICK
    { func_8006A9CC, { gGiStickDL } },
    // dungeon map, OBJECT_GI_MAP
    { func_8006A9CC, { gGiDungeonMapDL } },
    // deku shield, OBJECT_GI_SHIELD_1
    { func_8006A9CC, { gGiDekuShieldDL } },
    // small magic jar, OBJECT_GI_MAGICPOT
    { func_8006A9CC, { gGiMagicJarSmallDL } },
    // large magic jar, OBJECT_GI_MAGICPOT
    { func_8006A9CC, { gGiMagicJarLargeDL } },
    // bombs, OBJECT_GI_BOMB_1
    { func_8006A9CC, { gGiBombDL } },
    // stone of agony, OBJECT_GI_MAP
    { func_8006A9CC, { gGiStoneOfAgonyDL } },
    // adult's wallet, OBJECT_GI_PURSE
    { func_8006B870,
      { gGiWalletDL, gGiAdultWalletColorDL, gGiAdultWalletRupeeOuterColorDL, gGiWalletRupeeOuterDL,
        gGiAdultWalletStringColorDL, gGiWalletStringDL, gGiAdultWalletRupeeInnerColorDL, gGiWalletRupeeInnerDL } },
    // giant's wallet, OBJECT_GI_PURSE
    { func_8006B870,
      { gGiWalletDL, gGiGiantsWalletColorDL, gGiGiantsWalletRupeeOuterColorDL, gGiWalletRupeeOuterDL,
        gGiGiantsWalletStringColorDL, gGiWalletStringDL, gGiGiantsWalletRupeeInnerColorDL, gGiWalletRupeeInnerDL } },
    // gerudo card, OBJECT_GI_GERUDO
    { func_8006A9CC, { gGiGerudoCardDL } },
    // arrows (small), OBJECT_GI_ARROW
    { func_8006A9CC, { gGiArrowSmallDL } },
    // arrows (medium), OBJECT_GI_ARROW
    { func_8006A9CC, { gGiArrowMediumDL } },
    // arrows (large), OBJECT_GI_ARROW
    { func_8006A9CC, { gGiArrowLargeDL } },
    // bombchus, OBJECT_GI_BOMB_2
    { func_800694E4, { gGiBombchuDL } },
    // egg, OBJECT_GI_EGG
    { func_8006A060, { gGiEggSetupDL, gGiEggDL } },
    // silver scale, OBJECT_GI_SCALE
    { func_8006B54C, { gGiScaleWaterDL, gGiSilverScaleWaterColorDL, gGiSilverScaleColorDL, gGiScaleDL } },
    // gold scale, OBJECT_GI_SCALE
    { func_8006B54C, { gGiScaleWaterDL, gGiGoldenScaleWaterColorDL, gGiGoldenScaleColorDL, gGiScaleDL } },
    // hylian shield, OBJECT_GI_SHIELD_2
    { func_8006A9CC, { gGiHylianShieldDL } },
    // hookshot, OBJECT_GI_HOOKSHOT
    { func_8006A9CC, { gGiHookshotDL } },
    // longshot, OBJECT_GI_HOOKSHOT
    { func_8006A9CC, { gGiLongshotDL } },
    // ocarina of time, OBJECT_GI_OCARINA
    { func_8006AAA8, { gGiOcarinaTimeDL, gGiOcarinaTimeHolesDL } },
    // milk, OBJECT_GI_MILK
    { func_8006AAA8, { gGiMilkBottleContentsDL, gGiMilkBottleDL } },
    // keaton mask, OBJECT_GI_KI_TAN_MASK
    { func_8006AAA8, { gGiKeatonMaskDL, gGiKeatonMaskEyesDL } },
    // spooky mask, OBJECT_GI_REDEAD_MASK
    { func_8006A9CC, { gGiSpookyMaskDL } },
    // slingshot, OBJECT_GI_PACHINKO
    { func_8006A9CC, { gGiSlingshotDL } },
    // boomerang, OBJECT_GI_BOOMERANG
    { func_8006A9CC, { gGiBoomerangDL } },
    // bow, OBJECT_GI_BOW
    { func_8006A9CC, { gGiBowDL } },
    // lens, OBJECT_GI_GLASSES
    { func_8006AAA8, { gGiLensDL, gGiLensGlassDL } },
    // green potion, OBJECT_GI_LIQUID
    { func_8006A2A0,
      { gGiPotionPotDL, gGiGreenPotColorDL, gGiGreenLiquidColorDL, gGiPotionLiquidDL, gGiGreenPatternColorDL,
        gGiPotionPatternDL } },
    // red potion, OBJECT_GI_LIQUID
    { func_8006A2A0,
      { gGiPotionPotDL, gGiRedPotColorDL, gGiRedLiquidColorDL, gGiPotionLiquidDL, gGiRedPatternColorDL,
        gGiPotionPatternDL } },
    // blue potion, OBJECT_GI_LIQUID
    { func_8006A2A0,
      { gGiPotionPotDL, gGiBluePotColorDL, gGiBlueLiquidColorDL, gGiPotionLiquidDL, gGiBluePatternColorDL,
        gGiPotionPatternDL } },
    // mirror shield, OBJECT_GI_SHIELD_3
    { func_80069CF0, { gGiMirrorShieldDL, gGiMirrorShieldSymbolDL } },
    // zelda's letter, OBJECT_GI_LETTER
    { func_8006AAA8, { gGiLetterDL, gGiLetterWritingDL } },
    // goron tunic, OBJECT_GI_CLOTHES
    { func_8006B124, { gGiTunicCollarDL, gGiGoronCollarColorDL, gGiGoronTunicColorDL, gGiTunicDL } },
    // zora tunic, OBJECT_GI_CLOTHES
    { func_8006B124, { gGiTunicCollarDL, gGiZoraCollarColorDL, gGiZoraTunicColorDL, gGiTunicDL } },
    // beans, OBJECT_GI_BEAN
    { func_8006A9CC, { gGiBeanDL } },
    // fish, OBJECT_GI_FISH
    { func_8006A88C, { gGiFishDL } },
    // saw, OBJECT_GI_SAW
    { func_8006A9CC, { gGiSawDL } },
    // hammer, OBJECT_GI_HAMMER
    { func_8006A9CC, { gGiHammerDL } },
    // grass, OBJECT_GI_GRASS
    { func_8006A9CC, { gGiGrassDL } },
    // biggorons sword, OBJECT_GI_LONGSWORD
    { func_8006A4B0, { gGiBiggoronSwordDL } },
    // chicken, OBJECT_GI_NIWATORI
    { func_8006ACE4, { gGiChickenDL, gGiChickenColorDL, gGiChickenEyesDL } },
    // ruto's letter, OBJECT_GI_BOTTLE_LETTER
    { func_8006AAA8, { gGiLetterBottleContentsDL, gGiLetterBottleDL } },
    // fairy ocarina, OBJECT_GI_OCARINA_0
    { func_8006AAA8, { gGiOcarinaFairyDL, gGiOcarinaFairyHolesDL } },
    // iron boots, OBJECT_GI_BOOTS_2
    { func_8006AAA8, { gGiIronBootsDL, gGiIronBootsRivetsDL } },
    // seeds, OBJECT_GI_SEED
    { func_8006A9CC, { gGiSeedDL } },
    // silver gauntlets, OBJECT_GI_GLOVES
    { func_8006B24C,
      { gGiGauntletsDL, gGiSilverGauntletsColorDL, gGiGauntletsPlateDL, gGiSilverGauntletsPlateColorDL } },
    // golden gauntlets, OBJECT_GI_GLOVES
    { func_8006B24C,
      { gGiGauntletsDL, gGiGoldenGauntletsColorDL, gGiGauntletsPlateDL, gGiGoldenGauntletsPlateColorDL } },
    // yellow n coin, OBJECT_GI_COIN
    { func_8006ACE4, { gGiCoinDL, gGiYellowCoinColorDL, gGiNDL } },
    // red n coin, OBJECT_GI_COIN
    { func_8006ACE4, { gGiCoinDL, gGiRedCoinColorDL, gGiNDL } },
    // green n coin, OBJECT_GI_COIN
    { func_8006ACE4, { gGiCoinDL, gGiGreenCoinColorDL, gGiNDL } },
    // blue n coin, OBJECT_GI_COIN
    { func_8006ACE4, { gGiCoinDL, gGiBlueCoinColorDL, gGiNDL } },
    // skull mask, OBJECT_GI_SKJ_MASK
    { func_8006A9CC, { gGiSkullMaskDL } },
    // bunny hood OBJECT_GI_RABIT_MASK
    { func_8006AAA8, { gGiBunnyHoodDL, gGiBunnyHoodEyesDL } },
    // mask of truth, OBJECT_GI_TRUTH_MASK
    { func_8006AAA8, { gGiMaskOfTruthDL, gGiMaskOfTruthAccentsDL } },
    // eyedrops, OBJECT_GI_EYE_LOTION
    { func_8006AAA8, { gGiEyeDropsCapDL, gGiEyeDropsBottleDL } },
    // odd potion, OBJECT_GI_POWDER
    { func_8006A9CC, { gGiOddPotionDL } },
    // odd mushroom, OBJECT_GI_MUSHROOM
    { func_8006A9CC, { gGiOddMushroomDL } },
    // claim check, OBJECT_GI_TICKETSTONE
    { func_8006AAA8, { gGiClaimCheckDL, gGiClaimCheckWritingDL } },
    // broken goron's sword, OBJECT_GI_BROKENSWORD
    { func_8006A4B0, { gGiBrokenGoronSwordDL } },
    // prescription, OBJECT_GI_PRESCRIPTION
    { func_8006AAA8, { gGiPrescriptionDL, gGiPrescriptionWritingDL } },
    // goron bracelet, OBJECT_GI_BRACELET
    { func_8006A9CC, { gGiGoronBraceletDL } },
    // sold out, OBJECT_GI_SOLDOUT
    { func_800695C0, { gGiSoldOutDL } },
    // frog, OBJECT_GI_FROG
    { func_8006AAA8, { gGiFrogDL, gGiFrogEyesDL } },
    // goron mask, OBJECT_GI_GOLONMASK
    { func_800694E4, { gGiGoronMaskDL } },
    // zora mask, OBJECT_GI_ZORAMASK
    { func_800694E4, { gGiZoraMaskDL } },
    // gerudo mask, OBJECT_GI_GERUDOMASK
    { func_800694E4, { gGiGerudoMaskDL } },
    // cojiro, OBJECT_GI_NIWATORI
    { func_8006ACE4, { gGiChickenDL, gGiCojiroColorDL, gGiChickenEyesDL } },
    // hover boots, OBJECT_GI_HOVERBOOTS
    { func_8006A9CC, { gGiHoverBootsDL } },
    // fire arrows, OBJECT_GI_M_ARROW
    { func_8006AE40, { gGiMagicArrowDL, gGiFireArrowColorDL, gGiArrowMagicDL } },
    // ice arrows, OBJECT_GI_M_ARROW
    { func_8006AE40, { gGiMagicArrowDL, gGiIceArrowColorDL, gGiArrowMagicDL } },
    // light arrows, OBJECT_GI_M_ARROW
    { func_8006AE40, { gGiMagicArrowDL, gGiLightArrowColorDL, gGiArrowMagicDL } },
    // skulltula token, OBJECT_GI_SUTARU
    { func_80069EB0, { gGiSkulltulaTokenDL, gGiSkulltulaTokenFlameDL } },
    // din's fire, OBJECT_GI_GODDESS
    { func_8006AF9C, { gGiMagicSpellDiamondDL, gGiDinsFireColorDL, gGiMagicSpellOrbDL } },
    // farore's wind, OBJECT_GI_GODDESS
    { func_8006AF9C, { gGiMagicSpellDiamondDL, gGiFaroresWindColorDL, gGiMagicSpellOrbDL } },
    // nayru's Love, OBJECT_GI_GODDESS
    { func_8006AF9C, { gGiMagicSpellDiamondDL, gGiNayrusLoveColorDL, gGiMagicSpellOrbDL } },
    // blue fire, OBJECT_GI_FIRE
    { func_8006969C, { gGiBlueFireChamberstickDL, gGiBlueFireFlameDL } },
    // bugs, OBJECT_GI_INSECT
    { func_8006AAA8, { gGiBugsContainerDL, gGiBugsGlassDL } },
    // butterfly, OBJECT_GI_BUTTERFLY
    { func_8006AAA8, { gGiButterflyContainerDL, gGiButterflyGlassDL } },
    // poe, OBJECT_GI_GHOST
    { func_80069880, { gGiGhostContainerLidDL, gGiGhostContainerGlassDL, gGiGhostContainerContentsDL, gGiPoeColorDL } },
    // fairy, OBJECT_GI_SOUL
    { func_80069AC8, { gGiFairyContainerBaseCapDL, gGiFairyContainerGlassDL, gGiFairyContainerContentsDL } },
    // bullet bag 40, OBJECT_GI_DEKUPOUCH
    { func_8006B6E4,
      { gGiBulletBagDL, gGiBulletBagColorDL, gGiBulletBagStringDL, gGiBulletBagStringColorDL, gGiBulletBagWritingDL } },
    // green rupee, OBJECT_GI_RUPY
    { func_8006B3C0, { gGiRupeeInnerDL, gGiGreenRupeeInnerColorDL, gGiRupeeOuterDL, gGiGreenRupeeOuterColorDL } },
    // blue rupee, OBJECT_GI_RUPY
    { func_8006B3C0, { gGiRupeeInnerDL, gGiBlueRupeeInnerColorDL, gGiRupeeOuterDL, gGiBlueRupeeOuterColorDL } },
    // red rupee, OBJECT_GI_RUPY
    { func_8006B3C0, { gGiRupeeInnerDL, gGiRedRupeeInnerColorDL, gGiRupeeOuterDL, gGiRedRupeeOuterColorDL } },
    // big poe, OBJECT_GI_GHOST
    { func_80069880,
      { gGiGhostContainerLidDL, gGiGhostContainerGlassDL, gGiGhostContainerContentsDL, gGiBigPoeColorDL } },
    // purple rupee, OBJECT_GI_RUPY
    { func_8006B24C, { gGiRupeeInnerDL, gGiPurpleRupeeInnerColorDL, gGiRupeeOuterDL, gGiPurpleRupeeOuterColorDL } },
    // gold rupee, OBJECT_GI_RUPY
    { func_8006B24C, { gGiRupeeInnerDL, gGiGoldRupeeInnerColorDL, gGiRupeeOuterDL, gGiGoldRupeeOuterColorDL } },
    // bullet bag 50, OBJECT_GI_DEKUPOUCH
    { func_8006B6E4,
      { gGiBulletBagDL, gGiBulletBag50ColorDL, gGiBulletBagStringDL, gGiBulletBag50StringColorDL,
        gGiBulletBagWritingDL } },
    // kokiri sword, OBJECT_GI_SWORD_1
    { func_8006A9CC, { gGiKokiriSwordDL } },
    // gold skulltula token, OBJECT_ST
    { func_80069EB0, { 0x06004DB0, 0x06004EB8 } }, // TODO symbols from this object
};

/**
 * Draw "Get Item" Model
 * Calls the corresponding draw function for the given draw ID
 */
void func_800694A0(GlobalContext* globalCtx, s16 drawId) {
    sDrawItemTable[drawId].drawFunc(globalCtx, drawId);
}

// All remaining functions in this file are draw functions referenced in the table and called by the function above

void func_800694E4(GlobalContext* globalCtx, s16 drawId) {
    s32 pad;

    OPEN_DISPS(globalCtx->state.gfxCtx, "../z_draw.c", 556);

    func_80093BA8(globalCtx->state.gfxCtx);
    gSPMatrix(POLY_OPA_DISP++, Matrix_NewMtx(globalCtx->state.gfxCtx, "../z_draw.c", 560),
              G_MTX_MODELVIEW | G_MTX_LOAD);
    gSPDisplayList(POLY_OPA_DISP++, sDrawItemTable[drawId].dlists[0]);

    CLOSE_DISPS(globalCtx->state.gfxCtx, "../z_draw.c", 565);
}

void func_800695C0(GlobalContext* globalCtx, s16 drawId) {
    s32 pad;

    OPEN_DISPS(globalCtx->state.gfxCtx, "../z_draw.c", 572);

    POLY_XLU_DISP = Gfx_CallSetupDL(POLY_XLU_DISP, 5);
    gSPMatrix(POLY_XLU_DISP++, Matrix_NewMtx(globalCtx->state.gfxCtx, "../z_draw.c", 576),
              G_MTX_MODELVIEW | G_MTX_LOAD);
    gSPDisplayList(POLY_XLU_DISP++, sDrawItemTable[drawId].dlists[0]);

    CLOSE_DISPS(globalCtx->state.gfxCtx, "../z_draw.c", 581);
}

void func_8006969C(GlobalContext* globalCtx, s16 drawId) {
    s32 pad;

    OPEN_DISPS(globalCtx->state.gfxCtx, "../z_draw.c", 588);

    func_80093D18(globalCtx->state.gfxCtx);
    gSPMatrix(POLY_OPA_DISP++, Matrix_NewMtx(globalCtx->state.gfxCtx, "../z_draw.c", 592),
              G_MTX_MODELVIEW | G_MTX_LOAD);
    gSPDisplayList(POLY_OPA_DISP++, sDrawItemTable[drawId].dlists[0]);

    func_80093D84(globalCtx->state.gfxCtx);
    gSPSegment(POLY_XLU_DISP++, 0x08,
               Gfx_TwoTexScroll(globalCtx->state.gfxCtx, 0, 0 * (globalCtx->state.frames * 0),
                                0 * (globalCtx->state.frames * 0), 16, 32, 1, 1 * (globalCtx->state.frames * 1),
                                1 * -(globalCtx->state.frames * 8), 16, 32));
    Matrix_Push();
    Matrix_Translate(-8.0f, -2.0f, 0.0f, MTXMODE_APPLY);
    func_800D1FD4(&globalCtx->mf_11DA0);
    gSPMatrix(POLY_XLU_DISP++, Matrix_NewMtx(globalCtx->state.gfxCtx, "../z_draw.c", 615),
              G_MTX_MODELVIEW | G_MTX_LOAD);
    gSPDisplayList(POLY_XLU_DISP++, sDrawItemTable[drawId].dlists[1]);
    Matrix_Pull();

    CLOSE_DISPS(globalCtx->state.gfxCtx, "../z_draw.c", 621);
}

void func_80069880(GlobalContext* globalCtx, s16 drawId) {
    s32 pad;

    OPEN_DISPS(globalCtx->state.gfxCtx, "../z_draw.c", 628);

    func_80093D18(globalCtx->state.gfxCtx);
    gSPMatrix(POLY_OPA_DISP++, Matrix_NewMtx(globalCtx->state.gfxCtx, "../z_draw.c", 632),
              G_MTX_MODELVIEW | G_MTX_LOAD);
    gSPDisplayList(POLY_OPA_DISP++, sDrawItemTable[drawId].dlists[0]);

    func_80093D84(globalCtx->state.gfxCtx);
    gSPMatrix(POLY_XLU_DISP++, Matrix_NewMtx(globalCtx->state.gfxCtx, "../z_draw.c", 641),
              G_MTX_MODELVIEW | G_MTX_LOAD);
    gSPDisplayList(POLY_XLU_DISP++, sDrawItemTable[drawId].dlists[1]);
    gSPSegment(POLY_XLU_DISP++, 0x08,
               Gfx_TwoTexScroll(globalCtx->state.gfxCtx, 0, 0 * (globalCtx->state.frames * 0),
                                0 * (globalCtx->state.frames * 0), 16, 32, 1, 1 * (globalCtx->state.frames * 1),
                                1 * -(globalCtx->state.frames * 6), 16, 32));
    Matrix_Push();
    func_800D1FD4(&globalCtx->mf_11DA0);
    gSPMatrix(POLY_XLU_DISP++, Matrix_NewMtx(globalCtx->state.gfxCtx, "../z_draw.c", 656),
              G_MTX_MODELVIEW | G_MTX_LOAD);
    gSPDisplayList(POLY_XLU_DISP++, sDrawItemTable[drawId].dlists[3]);
    gSPDisplayList(POLY_XLU_DISP++, sDrawItemTable[drawId].dlists[2]);
    Matrix_Pull();

    CLOSE_DISPS(globalCtx->state.gfxCtx, "../z_draw.c", 663);
}

void func_80069AC8(GlobalContext* globalCtx, s16 drawId) {
    s32 pad;

    OPEN_DISPS(globalCtx->state.gfxCtx, "../z_draw.c", 670);

    func_80093D18(globalCtx->state.gfxCtx);
    gSPMatrix(POLY_OPA_DISP++, Matrix_NewMtx(globalCtx->state.gfxCtx, "../z_draw.c", 674),
              G_MTX_MODELVIEW | G_MTX_LOAD);
    gSPDisplayList(POLY_OPA_DISP++, sDrawItemTable[drawId].dlists[0]);

    func_80093D84(globalCtx->state.gfxCtx);
    gSPMatrix(POLY_XLU_DISP++, Matrix_NewMtx(globalCtx->state.gfxCtx, "../z_draw.c", 683),
              G_MTX_MODELVIEW | G_MTX_LOAD);
    gSPDisplayList(POLY_XLU_DISP++, sDrawItemTable[drawId].dlists[1]);
    gSPSegment(POLY_XLU_DISP++, 0x08,
               Gfx_TwoTexScroll(globalCtx->state.gfxCtx, 0, 0 * (globalCtx->state.frames * 0),
                                0 * (globalCtx->state.frames * 0), 32, 32, 1, 1 * (globalCtx->state.frames * 1),
                                1 * -(globalCtx->state.frames * 6), 32, 32));
    Matrix_Push();
    func_800D1FD4(&globalCtx->mf_11DA0);
    gSPMatrix(POLY_XLU_DISP++, Matrix_NewMtx(globalCtx->state.gfxCtx, "../z_draw.c", 698),
              G_MTX_MODELVIEW | G_MTX_LOAD);
    gSPDisplayList(POLY_XLU_DISP++, sDrawItemTable[drawId].dlists[2]);
    Matrix_Pull();

    CLOSE_DISPS(globalCtx->state.gfxCtx, "../z_draw.c", 704);
}

// Mirror Shield
void func_80069CF0(GlobalContext* globalCtx, s16 drawId) {
    s32 pad;

    OPEN_DISPS(globalCtx->state.gfxCtx, "../z_draw.c", 712);

    func_80093D18(globalCtx->state.gfxCtx);
    gSPSegment(POLY_OPA_DISP++, 0x08,
               Gfx_TwoTexScroll(globalCtx->state.gfxCtx, 0, 0 * (globalCtx->state.frames * 0) % 256,
                                1 * (globalCtx->state.frames * 2) % 256, 64, 64, 1,
                                0 * (globalCtx->state.frames * 0) % 128, 1 * (globalCtx->state.frames * 1) % 128, 32,
                                32));
    gSPMatrix(POLY_OPA_DISP++, Matrix_NewMtx(globalCtx->state.gfxCtx, "../z_draw.c", 723),
              G_MTX_MODELVIEW | G_MTX_LOAD);
    gSPDisplayList(POLY_OPA_DISP++, sDrawItemTable[drawId].dlists[0]);

    func_80093D84(globalCtx->state.gfxCtx);
    gSPMatrix(POLY_XLU_DISP++, Matrix_NewMtx(globalCtx->state.gfxCtx, "../z_draw.c", 730),
              G_MTX_MODELVIEW | G_MTX_LOAD);
    gSPDisplayList(POLY_XLU_DISP++, sDrawItemTable[drawId].dlists[1]);

    CLOSE_DISPS(globalCtx->state.gfxCtx, "../z_draw.c", 735);
}

void func_80069EB0(GlobalContext* globalCtx, s16 drawId) {
    s32 pad;

    OPEN_DISPS(globalCtx->state.gfxCtx, "../z_draw.c", 742);

    func_80093D18(globalCtx->state.gfxCtx);
    gSPMatrix(POLY_OPA_DISP++, Matrix_NewMtx(globalCtx->state.gfxCtx, "../z_draw.c", 746),
              G_MTX_MODELVIEW | G_MTX_LOAD);
    gSPDisplayList(POLY_OPA_DISP++, sDrawItemTable[drawId].dlists[0]);

    func_80093D84(globalCtx->state.gfxCtx);
    gSPSegment(POLY_XLU_DISP++, 0x08,
               Gfx_TwoTexScroll(globalCtx->state.gfxCtx, 0, 0 * (globalCtx->state.frames * 0),
                                1 * -(globalCtx->state.frames * 5), 32, 32, 1, 0 * (globalCtx->state.frames * 0),
                                0 * (globalCtx->state.frames * 0), 32, 64));
    gSPMatrix(POLY_XLU_DISP++, Matrix_NewMtx(globalCtx->state.gfxCtx, "../z_draw.c", 760),
              G_MTX_MODELVIEW | G_MTX_LOAD);
    gSPDisplayList(POLY_XLU_DISP++, sDrawItemTable[drawId].dlists[1]);

    CLOSE_DISPS(globalCtx->state.gfxCtx, "../z_draw.c", 765);
}

void func_8006A060(GlobalContext* globalCtx, s16 drawId) {
    s32 pad;

    OPEN_DISPS(globalCtx->state.gfxCtx, "../z_draw.c", 772);

    func_80093BA8(globalCtx->state.gfxCtx);
    gSPMatrix(POLY_OPA_DISP++, Matrix_NewMtx(globalCtx->state.gfxCtx, "../z_draw.c", 776),
              G_MTX_MODELVIEW | G_MTX_LOAD);
    gSPDisplayList(POLY_OPA_DISP++, sDrawItemTable[drawId].dlists[0]);
    gSPDisplayList(POLY_OPA_DISP++, sDrawItemTable[drawId].dlists[1]);

    CLOSE_DISPS(globalCtx->state.gfxCtx, "../z_draw.c", 783);
}

void func_8006A158(GlobalContext* globalCtx, s16 drawId) {
    s32 pad;

    OPEN_DISPS(globalCtx->state.gfxCtx, "../z_draw.c", 811);

    func_80093D18(globalCtx->state.gfxCtx);
    gSPMatrix(POLY_OPA_DISP++, Matrix_NewMtx(globalCtx->state.gfxCtx, "../z_draw.c", 815),
              G_MTX_MODELVIEW | G_MTX_LOAD);
    gSPDisplayList(POLY_OPA_DISP++, sDrawItemTable[drawId].dlists[0]);

    POLY_XLU_DISP = Gfx_CallSetupDL(POLY_XLU_DISP, 5);
    gSPMatrix(POLY_XLU_DISP++, Matrix_NewMtx(globalCtx->state.gfxCtx, "../z_draw.c", 822),
              G_MTX_MODELVIEW | G_MTX_LOAD);
    gSPDisplayList(POLY_XLU_DISP++, sDrawItemTable[drawId].dlists[1]);

    CLOSE_DISPS(globalCtx->state.gfxCtx, "../z_draw.c", 827);
}

void func_8006A2A0(GlobalContext* globalCtx, s16 drawId) {
    s32 pad;

    OPEN_DISPS(globalCtx->state.gfxCtx, "../z_draw.c", 834);

    func_80093D18(globalCtx->state.gfxCtx);
    gSPSegment(POLY_OPA_DISP++, 0x08,
               Gfx_TwoTexScroll(globalCtx->state.gfxCtx, 0, -1 * (globalCtx->state.frames * 1),
                                1 * (globalCtx->state.frames * 1), 32, 32, 1, -1 * (globalCtx->state.frames * 1),
                                1 * (globalCtx->state.frames * 1), 32, 32));
    gSPMatrix(POLY_OPA_DISP++, Matrix_NewMtx(globalCtx->state.gfxCtx, "../z_draw.c", 845),
              G_MTX_MODELVIEW | G_MTX_LOAD);
    gSPDisplayList(POLY_OPA_DISP++, sDrawItemTable[drawId].dlists[1]);
    gSPDisplayList(POLY_OPA_DISP++, sDrawItemTable[drawId].dlists[0]);
    gSPDisplayList(POLY_OPA_DISP++, sDrawItemTable[drawId].dlists[2]);
    gSPDisplayList(POLY_OPA_DISP++, sDrawItemTable[drawId].dlists[3]);

    func_80093D84(globalCtx->state.gfxCtx);
    gSPMatrix(POLY_XLU_DISP++, Matrix_NewMtx(globalCtx->state.gfxCtx, "../z_draw.c", 855),
              G_MTX_MODELVIEW | G_MTX_LOAD);
    gSPDisplayList(POLY_XLU_DISP++, sDrawItemTable[drawId].dlists[4]);
    gSPDisplayList(POLY_XLU_DISP++, sDrawItemTable[drawId].dlists[5]);

    CLOSE_DISPS(globalCtx->state.gfxCtx, "../z_draw.c", 861);
}

void func_8006A4B0(GlobalContext* globalCtx, s16 drawId) {
    s32 pad;

    OPEN_DISPS(globalCtx->state.gfxCtx, "../z_draw.c", 868);

    func_80093D18(globalCtx->state.gfxCtx);
    gSPSegment(POLY_OPA_DISP++, 0x08,
               Gfx_TwoTexScroll(globalCtx->state.gfxCtx, 0, 1 * (globalCtx->state.frames * 1),
                                0 * (globalCtx->state.frames * 1), 32, 32, 1, 0 * (globalCtx->state.frames * 1),
                                0 * (globalCtx->state.frames * 1), 32, 32));
    gSPMatrix(POLY_OPA_DISP++, Matrix_NewMtx(globalCtx->state.gfxCtx, "../z_draw.c", 878),
              G_MTX_MODELVIEW | G_MTX_LOAD);
    gSPDisplayList(POLY_OPA_DISP++, sDrawItemTable[drawId].dlists[0]);

    CLOSE_DISPS(globalCtx->state.gfxCtx, "../z_draw.c", 883);
}

void func_8006A5F0(GlobalContext* globalCtx, s16 drawId) {
    s32 pad;

    OPEN_DISPS(globalCtx->state.gfxCtx, "../z_draw.c", 890);

    func_80093D18(globalCtx->state.gfxCtx);
    gSPSegment(POLY_OPA_DISP++, 0x08,
               Gfx_TwoTexScroll(globalCtx->state.gfxCtx, 0, 1 * (globalCtx->state.frames * 6),
                                1 * (globalCtx->state.frames * 6), 32, 32, 1, 1 * (globalCtx->state.frames * 6),
                                1 * (globalCtx->state.frames * 6), 32, 32));
    gSPMatrix(POLY_OPA_DISP++, Matrix_NewMtx(globalCtx->state.gfxCtx, "../z_draw.c", 901),
              G_MTX_MODELVIEW | G_MTX_LOAD);
    gSPDisplayList(POLY_OPA_DISP++, sDrawItemTable[drawId].dlists[0]);

    CLOSE_DISPS(globalCtx->state.gfxCtx, "../z_draw.c", 906);
}

void func_8006A73C(GlobalContext* globalCtx, s16 drawId) {
    s32 pad;

    OPEN_DISPS(globalCtx->state.gfxCtx, "../z_draw.c", 913);

    func_80093D84(globalCtx->state.gfxCtx);
    gSPSegment(POLY_XLU_DISP++, 0x08,
               Gfx_TwoTexScroll(globalCtx->state.gfxCtx, 0, 0 * (globalCtx->state.frames * 1),
                                1 * -(globalCtx->state.frames * 3), 32, 32, 1, 0 * (globalCtx->state.frames * 1),
                                1 * -(globalCtx->state.frames * 2), 32, 32));
    gSPMatrix(POLY_XLU_DISP++, Matrix_NewMtx(globalCtx->state.gfxCtx, "../z_draw.c", 924),
              G_MTX_MODELVIEW | G_MTX_LOAD);
    gSPDisplayList(POLY_XLU_DISP++, sDrawItemTable[drawId].dlists[0]);

    CLOSE_DISPS(globalCtx->state.gfxCtx, "../z_draw.c", 929);
}

void func_8006A88C(GlobalContext* globalCtx, s16 drawId) {
    s32 pad;

    OPEN_DISPS(globalCtx->state.gfxCtx, "../z_draw.c", 936);

    func_80093D84(globalCtx->state.gfxCtx);
    gSPSegment(POLY_XLU_DISP++, 0x08,
               Gfx_TwoTexScroll(globalCtx->state.gfxCtx, 0, 0 * (globalCtx->state.frames * 0),
                                1 * (globalCtx->state.frames * 1), 32, 32, 1, 0 * (globalCtx->state.frames * 0),
                                1 * (globalCtx->state.frames * 1), 32, 32));
    gSPMatrix(POLY_XLU_DISP++, Matrix_NewMtx(globalCtx->state.gfxCtx, "../z_draw.c", 947),
              G_MTX_MODELVIEW | G_MTX_LOAD);
    gSPDisplayList(POLY_XLU_DISP++, sDrawItemTable[drawId].dlists[0]);

    CLOSE_DISPS(globalCtx->state.gfxCtx, "../z_draw.c", 952);
}

// several, opa0 / DrawSimple
void func_8006A9CC(GlobalContext* globalCtx, s16 drawId) {
    s32 pad;

    OPEN_DISPS(globalCtx->state.gfxCtx, "../z_draw.c", 959);

    func_80093D18(globalCtx->state.gfxCtx);
    gSPMatrix(POLY_OPA_DISP++, Matrix_NewMtx(globalCtx->state.gfxCtx, "../z_draw.c", 963),
              G_MTX_MODELVIEW | G_MTX_LOAD);
    gSPDisplayList(POLY_OPA_DISP++, sDrawItemTable[drawId].dlists[0]);

    CLOSE_DISPS(globalCtx->state.gfxCtx, "../z_draw.c", 968);
}

// several, opa0 xlu1 / DrawWithTranslucentOverlay
void func_8006AAA8(GlobalContext* globalCtx, s16 drawId) {
    s32 pad;

    OPEN_DISPS(globalCtx->state.gfxCtx, "../z_draw.c", 975);

    func_80093D18(globalCtx->state.gfxCtx);
    gSPMatrix(POLY_OPA_DISP++, Matrix_NewMtx(globalCtx->state.gfxCtx, "../z_draw.c", 979),
              G_MTX_MODELVIEW | G_MTX_LOAD);
    gSPDisplayList(POLY_OPA_DISP++, sDrawItemTable[drawId].dlists[0]);

    func_80093D84(globalCtx->state.gfxCtx);
    gSPMatrix(POLY_XLU_DISP++, Matrix_NewMtx(globalCtx->state.gfxCtx, "../z_draw.c", 986),
              G_MTX_MODELVIEW | G_MTX_LOAD);
    gSPDisplayList(POLY_XLU_DISP++, sDrawItemTable[drawId].dlists[1]);

    CLOSE_DISPS(globalCtx->state.gfxCtx, "../z_draw.c", 991);
}

void func_8006ABEC(GlobalContext* globalCtx, s16 drawId) {
    s32 pad;

    OPEN_DISPS(globalCtx->state.gfxCtx, "../z_draw.c", 998);

    func_80093D84(globalCtx->state.gfxCtx);
    gSPMatrix(POLY_XLU_DISP++, Matrix_NewMtx(globalCtx->state.gfxCtx, "../z_draw.c", 1002),
              G_MTX_MODELVIEW | G_MTX_LOAD);
    gSPDisplayList(POLY_XLU_DISP++, sDrawItemTable[drawId].dlists[0]);
    gSPDisplayList(POLY_XLU_DISP++, sDrawItemTable[drawId].dlists[1]);

    CLOSE_DISPS(globalCtx->state.gfxCtx, "../z_draw.c", 1008);
}

void func_8006ACE4(GlobalContext* globalCtx, s16 drawId) {
    s32 pad;

    OPEN_DISPS(globalCtx->state.gfxCtx, "../z_draw.c", 1015);

    func_80093D18(globalCtx->state.gfxCtx);
    gSPMatrix(POLY_OPA_DISP++, Matrix_NewMtx(globalCtx->state.gfxCtx, "../z_draw.c", 1019),
              G_MTX_MODELVIEW | G_MTX_LOAD);
    gSPDisplayList(POLY_OPA_DISP++, sDrawItemTable[drawId].dlists[1]);
    gSPDisplayList(POLY_OPA_DISP++, sDrawItemTable[drawId].dlists[0]);

    func_80093D84(globalCtx->state.gfxCtx);
    gSPMatrix(POLY_XLU_DISP++, Matrix_NewMtx(globalCtx->state.gfxCtx, "../z_draw.c", 1027),
              G_MTX_MODELVIEW | G_MTX_LOAD);
    gSPDisplayList(POLY_XLU_DISP++, sDrawItemTable[drawId].dlists[2]);

    CLOSE_DISPS(globalCtx->state.gfxCtx, "../z_draw.c", 1032);
}

void func_8006AE40(GlobalContext* globalCtx, s16 drawId) {
    s32 pad;

    OPEN_DISPS(globalCtx->state.gfxCtx, "../z_draw.c", 1039);

    func_80093D18(globalCtx->state.gfxCtx);
    gSPMatrix(POLY_OPA_DISP++, Matrix_NewMtx(globalCtx->state.gfxCtx, "../z_draw.c", 1043),
              G_MTX_MODELVIEW | G_MTX_LOAD);
    gSPDisplayList(POLY_OPA_DISP++, sDrawItemTable[drawId].dlists[0]);

    func_80093D84(globalCtx->state.gfxCtx);
    gSPMatrix(POLY_XLU_DISP++, Matrix_NewMtx(globalCtx->state.gfxCtx, "../z_draw.c", 1050),
              G_MTX_MODELVIEW | G_MTX_LOAD);
    gSPDisplayList(POLY_XLU_DISP++, sDrawItemTable[drawId].dlists[1]);
    gSPDisplayList(POLY_XLU_DISP++, sDrawItemTable[drawId].dlists[2]);

    CLOSE_DISPS(globalCtx->state.gfxCtx, "../z_draw.c", 1056);
}

void func_8006AF9C(GlobalContext* globalCtx, s16 drawId) {
    s32 pad;

    OPEN_DISPS(globalCtx->state.gfxCtx, "../z_draw.c", 1063);

    func_80093D84(globalCtx->state.gfxCtx);
    gSPSegment(POLY_XLU_DISP++, 0x08,
               Gfx_TwoTexScroll(globalCtx->state.gfxCtx, 0, 1 * (globalCtx->state.frames * 2),
                                1 * -(globalCtx->state.frames * 6), 32, 32, 1, 1 * (globalCtx->state.frames * 1),
                                -1 * (globalCtx->state.frames * 2), 32, 32));
    gSPMatrix(POLY_XLU_DISP++, Matrix_NewMtx(globalCtx->state.gfxCtx, "../z_draw.c", 1074),
              G_MTX_MODELVIEW | G_MTX_LOAD);
    gSPDisplayList(POLY_XLU_DISP++, sDrawItemTable[drawId].dlists[0]);
    gSPDisplayList(POLY_XLU_DISP++, sDrawItemTable[drawId].dlists[1]);
    gSPDisplayList(POLY_XLU_DISP++, sDrawItemTable[drawId].dlists[2]);

    CLOSE_DISPS(globalCtx->state.gfxCtx, "../z_draw.c", 1081);
}

void func_8006B124(GlobalContext* globalCtx, s16 drawId) {
    s32 pad;

    OPEN_DISPS(globalCtx->state.gfxCtx, "../z_draw.c", 1088);

    func_80093D18(globalCtx->state.gfxCtx);
    gSPMatrix(POLY_OPA_DISP++, Matrix_NewMtx(globalCtx->state.gfxCtx, "../z_draw.c", 1092),
              G_MTX_MODELVIEW | G_MTX_LOAD);
    gSPDisplayList(POLY_OPA_DISP++, sDrawItemTable[drawId].dlists[1]);
    gSPDisplayList(POLY_OPA_DISP++, sDrawItemTable[drawId].dlists[0]);
    gSPDisplayList(POLY_OPA_DISP++, sDrawItemTable[drawId].dlists[2]);
    gSPDisplayList(POLY_OPA_DISP++, sDrawItemTable[drawId].dlists[3]);

    CLOSE_DISPS(globalCtx->state.gfxCtx, "../z_draw.c", 1100);
}

void func_8006B24C(GlobalContext* globalCtx, s16 drawId) {
    s32 pad;

    OPEN_DISPS(globalCtx->state.gfxCtx, "../z_draw.c", 1108);

    func_80093D18(globalCtx->state.gfxCtx);
    gSPMatrix(POLY_OPA_DISP++, Matrix_NewMtx(globalCtx->state.gfxCtx, "../z_draw.c", 1112),
              G_MTX_MODELVIEW | G_MTX_LOAD);
    gSPDisplayList(POLY_OPA_DISP++, sDrawItemTable[drawId].dlists[1]);
    gSPDisplayList(POLY_OPA_DISP++, sDrawItemTable[drawId].dlists[0]);

    func_80093D84(globalCtx->state.gfxCtx);
    gSPMatrix(POLY_XLU_DISP++, Matrix_NewMtx(globalCtx->state.gfxCtx, "../z_draw.c", 1120),
              G_MTX_MODELVIEW | G_MTX_LOAD);
    gSPDisplayList(POLY_XLU_DISP++, sDrawItemTable[drawId].dlists[3]);
    gSPDisplayList(POLY_XLU_DISP++, sDrawItemTable[drawId].dlists[2]);

    CLOSE_DISPS(globalCtx->state.gfxCtx, "../z_draw.c", 1126);
}

void func_8006B3C0(GlobalContext* globalCtx, s16 drawId) {
    s32 pad;

    OPEN_DISPS(globalCtx->state.gfxCtx, "../z_draw.c", 1133);

    Matrix_Scale(0.7f, 0.7f, 0.7f, MTXMODE_APPLY);

    func_80093D18(globalCtx->state.gfxCtx);
    gSPMatrix(POLY_OPA_DISP++, Matrix_NewMtx(globalCtx->state.gfxCtx, "../z_draw.c", 1140),
              G_MTX_MODELVIEW | G_MTX_LOAD);
    gSPDisplayList(POLY_OPA_DISP++, sDrawItemTable[drawId].dlists[1]);
    gSPDisplayList(POLY_OPA_DISP++, sDrawItemTable[drawId].dlists[0]);

    func_80093D84(globalCtx->state.gfxCtx);
    gSPMatrix(POLY_XLU_DISP++, Matrix_NewMtx(globalCtx->state.gfxCtx, "../z_draw.c", 1148),
              G_MTX_MODELVIEW | G_MTX_LOAD);
    gSPDisplayList(POLY_XLU_DISP++, sDrawItemTable[drawId].dlists[3]);
    gSPDisplayList(POLY_XLU_DISP++, sDrawItemTable[drawId].dlists[2]);

    CLOSE_DISPS(globalCtx->state.gfxCtx, "../z_draw.c", 1154);
}

void func_8006B54C(GlobalContext* globalCtx, s16 drawId) {
    s32 pad;

    OPEN_DISPS(globalCtx->state.gfxCtx, "../z_draw.c", 1162);

    func_80093D84(globalCtx->state.gfxCtx);
    gSPSegment(POLY_XLU_DISP++, 0x08,
               Gfx_TwoTexScroll(globalCtx->state.gfxCtx, 0, 1 * (globalCtx->state.frames * 2),
                                -1 * (globalCtx->state.frames * 2), 64, 64, 1, 1 * (globalCtx->state.frames * 4),
                                1 * -(globalCtx->state.frames * 4), 32, 32));
    gSPMatrix(POLY_XLU_DISP++, Matrix_NewMtx(globalCtx->state.gfxCtx, "../z_draw.c", 1173),
              G_MTX_MODELVIEW | G_MTX_LOAD);
    gSPDisplayList(POLY_XLU_DISP++, sDrawItemTable[drawId].dlists[2]);
    gSPDisplayList(POLY_XLU_DISP++, sDrawItemTable[drawId].dlists[3]);
    gSPDisplayList(POLY_XLU_DISP++, sDrawItemTable[drawId].dlists[1]);
    gSPDisplayList(POLY_XLU_DISP++, sDrawItemTable[drawId].dlists[0]);

    CLOSE_DISPS(globalCtx->state.gfxCtx, "../z_draw.c", 1181);
}

void func_8006B6E4(GlobalContext* globalCtx, s16 drawId) {
    s32 pad;

    OPEN_DISPS(globalCtx->state.gfxCtx, "../z_draw.c", 1188);

    func_80093D18(globalCtx->state.gfxCtx);
    gSPMatrix(POLY_OPA_DISP++, Matrix_NewMtx(globalCtx->state.gfxCtx, "../z_draw.c", 1192),
              G_MTX_MODELVIEW | G_MTX_LOAD);
    gSPDisplayList(POLY_OPA_DISP++, sDrawItemTable[drawId].dlists[1]);
    gSPDisplayList(POLY_OPA_DISP++, sDrawItemTable[drawId].dlists[0]);

    func_80093D84(globalCtx->state.gfxCtx);
    gSPMatrix(POLY_XLU_DISP++, Matrix_NewMtx(globalCtx->state.gfxCtx, "../z_draw.c", 1200),
              G_MTX_MODELVIEW | G_MTX_LOAD);
    gSPDisplayList(POLY_XLU_DISP++, sDrawItemTable[drawId].dlists[2]);
    gSPDisplayList(POLY_XLU_DISP++, sDrawItemTable[drawId].dlists[3]);
    gSPDisplayList(POLY_XLU_DISP++, sDrawItemTable[drawId].dlists[4]);

    CLOSE_DISPS(globalCtx->state.gfxCtx, "../z_draw.c", 1207);
}

void func_8006B870(GlobalContext* globalCtx, s16 drawId) {
    s32 pad;

    OPEN_DISPS(globalCtx->state.gfxCtx, "../z_draw.c", 1214);

    func_80093D18(globalCtx->state.gfxCtx);
    gSPMatrix(POLY_OPA_DISP++, Matrix_NewMtx(globalCtx->state.gfxCtx, "../z_draw.c", 1218),
              G_MTX_MODELVIEW | G_MTX_LOAD);
    gSPDisplayList(POLY_OPA_DISP++, sDrawItemTable[drawId].dlists[1]);
    gSPDisplayList(POLY_OPA_DISP++, sDrawItemTable[drawId].dlists[0]);
    gSPDisplayList(POLY_OPA_DISP++, sDrawItemTable[drawId].dlists[2]);
    gSPDisplayList(POLY_OPA_DISP++, sDrawItemTable[drawId].dlists[3]);
    gSPDisplayList(POLY_OPA_DISP++, sDrawItemTable[drawId].dlists[4]);
    gSPDisplayList(POLY_OPA_DISP++, sDrawItemTable[drawId].dlists[5]);
    gSPDisplayList(POLY_OPA_DISP++, sDrawItemTable[drawId].dlists[6]);
    gSPDisplayList(POLY_OPA_DISP++, sDrawItemTable[drawId].dlists[7]);

    CLOSE_DISPS(globalCtx->state.gfxCtx, "../z_draw.c", 1230);
}
