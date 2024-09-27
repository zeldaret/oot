#include "versions.h"
/**
 * Sfx Enemy Bank
 *
 * DEFINE_SFX should be used for all sfx define in the enemy bank from sequence 0
 *    - Argument 0: Channel name for sequence 0
 *    - Argument 1: Enum value for this sfx
 *    - Argument 2: Importance for deciding which sfx to prioritize. Higher values have greater importance
 *    - Argument 3: Slows the decay of volume with distance (a 2-bit number ranging from 0-3)
 *    - Argument 4: Applies increasingly random offsets to frequency (a 2-bit number ranging from 0-3)
 *    - Argument 5: Various flags to add properties to the sfx
 */
/* 0x3800 */ DEFINE_SFX(CHAN_3544, NA_SE_EN_DODO_J_WALK, 0x18, 0, 0, 0)
/* 0x3801 */ DEFINE_SFX(CHAN_3555, NA_SE_EN_DODO_J_CRY, 0x30, 0, 0, 0)
/* 0x3802 */ DEFINE_SFX(CHAN_355F, NA_SE_EN_DODO_J_FIRE, 0x30, 0, 0, 0)
/* 0x3803 */ DEFINE_SFX(CHAN_356B, NA_SE_EN_DODO_J_DAMAGE, 0x38, 1, 0, 0)
/* 0x3804 */ DEFINE_SFX(CHAN_3583, NA_SE_EN_DODO_J_DEAD, 0x40, 1, 0, 0)
/* 0x3805 */ DEFINE_SFX(CHAN_35A0, NA_SE_EN_DODO_K_CRY, 0x30, 3, 0, 0)
/* 0x3806 */ DEFINE_SFX(CHAN_3E44, NA_SE_EN_DODO_K_DAMAGE, 0x38, 3, 0, 0)
/* 0x3807 */ DEFINE_SFX(CHAN_3D7E, NA_SE_EN_DODO_K_DEAD, 0x40, 3, 0, 0)
/* 0x3808 */ DEFINE_SFX(CHAN_35B6, NA_SE_EN_DODO_K_WALK, 0x30, 2, 0, 0)
/* 0x3809 */ DEFINE_SFX(CHAN_35CE, NA_SE_EN_DODO_K_FIRE, 0x30, 3, 0, 0)
/* 0x380A */ DEFINE_SFX(CHAN_365A, NA_SE_EN_GOMA_WALK, 0x30, 2, 0, 0)
/* 0x380B */ DEFINE_SFX(CHAN_371F, NA_SE_EN_GOMA_HIGH, 0x20, 1, 2, 0)
/* 0x380C */ DEFINE_SFX(CHAN_366D, NA_SE_EN_GOMA_CLIM, 0x30, 3, 0, 0)
/* 0x380D */ DEFINE_SFX(CHAN_35E9, NA_SE_EN_GOMA_DOWN, 0x30, 3, 0, 0)
/* 0x380E */ DEFINE_SFX(CHAN_37FB, NA_SE_EN_GOMA_CRY1, 0x38, 3, 0, 0)
/* 0x380F */ DEFINE_SFX(CHAN_3849, NA_SE_EN_GOMA_CRY2, 0x30, 3, 0, 0)
/* 0x3810 */ DEFINE_SFX(CHAN_381C, NA_SE_EN_GOMA_DAM1, 0x30, 3, 0, 0)
/* 0x3811 */ DEFINE_SFX(CHAN_3732, NA_SE_EN_GOMA_DAM2, 0x38, 3, 0, 0)
/* 0x3812 */ DEFINE_SFX(CHAN_3E7F, NA_SE_EN_GOMA_DEAD, 0x40, 3, 0, 0)
/* 0x3813 */ DEFINE_SFX(CHAN_3680, NA_SE_EN_GOMA_UNARI, 0x20, 0, 0, SFX_FLAG_13)
/* 0x3814 */ DEFINE_SFX(CHAN_3767, NA_SE_EN_GOMA_BJR_EGG1, 0x28, 3, 0, 0)
/* 0x3815 */ DEFINE_SFX(CHAN_35DF, NA_SE_EN_GOMA_BJR_EGG2, 0x28, 3, 0, 0)
/* 0x3816 */ DEFINE_SFX(CHAN_3697, NA_SE_EN_GOMA_BJR_WALK, 0x20, 2, 0, 0)
/* 0x3817 */ DEFINE_SFX(CHAN_36A5, NA_SE_EN_GOMA_BJR_CRY, 0x28, 3, 0, 0)
/* 0x3818 */ DEFINE_SFX(CHAN_36B3, NA_SE_EN_GOMA_BJR_DAM1, 0x38, 3, 0, 0)
/* 0x3819 */ DEFINE_SFX(CHAN_36D2, NA_SE_EN_GOMA_BJR_DAM2, 0x30, 3, 0, 0)
/* 0x381A */ DEFINE_SFX(CHAN_36F9, NA_SE_EN_GOMA_BJR_DEAD, 0x40, 3, 0, 0)
/* 0x381B */ DEFINE_SFX(CHAN_3D68, NA_SE_EN_GOMA_DEMO_EYE, 0x30, 3, 0, 0)
/* 0x381C */ DEFINE_SFX(CHAN_3F3E, NA_SE_EN_GOMA_LAST, 0x30, 3, 0, 0)
/* 0x381D */ DEFINE_SFX(CHAN_402B, NA_SE_EN_GOMA_UNARI2, 0x30, 3, 0, 0)
/* 0x381E */ DEFINE_SFX(CHAN_4906, NA_SE_EN_GOMA_FAINT, 0x30, 3, 0, 0)
/* 0x381F */ DEFINE_SFX(CHAN_4C1B, NA_SE_EN_GOMA_BJR_FREEZE, 0x30, 3, 0, 0)
/* 0x3820 */ DEFINE_SFX(CHAN_37C0, NA_SE_EN_DODO_M_CRY, 0x30, 0, 0, 0)
/* 0x3821 */ DEFINE_SFX(CHAN_37E3, NA_SE_EN_DODO_M_DEAD, 0x40, 1, 0, 0)
/* 0x3822 */ DEFINE_SFX(CHAN_3858, NA_SE_EN_DODO_M_MOVE, 0x18, 0, 0, 0)
/* 0x3823 */ DEFINE_SFX(CHAN_3862, NA_SE_EN_DODO_M_DOWN, 0x14, 0, 0, 0)
/* 0x3824 */ DEFINE_SFX(CHAN_38A2, NA_SE_EN_DODO_M_UP, 0x14, 0, 0, 0)
/* 0x3825 */ DEFINE_SFX(CHAN_5443, NA_SE_EN_GANON_THROW_MASIC, 0x30, 3, 0, 0)
/* 0x3826 */ DEFINE_SFX(CHAN_38C7, NA_SE_EN_DODO_M_EAT, 0x30, 0, 0, 0)
/* 0x3827 */ DEFINE_SFX(CHAN_544A, NA_SE_EN_GANON_DD_THUNDER, 0x44, 3, 0, 0)
/* 0x3828 */ DEFINE_SFX(CHAN_39B9, NA_SE_EN_RIZA_ONGND, 0x18, 0, 0, 0)
/* 0x3829 */ DEFINE_SFX(CHAN_4040, NA_SE_EN_RIZA_CRY, 0x30, 2, 0, 0)
/* 0x382A */ DEFINE_SFX(CHAN_4061, NA_SE_EN_RIZA_ATTACK, 0x32, 2, 0, 0)
/* 0x382B */ DEFINE_SFX(CHAN_38EC, NA_SE_EN_RIZA_DAMAGE, 0x38, 1, 0, 0)
/* 0x382C */ DEFINE_SFX(CHAN_3916, NA_SE_EN_RIZA_WARAU, 0x20, 0, 0, 0)
/* 0x382D */ DEFINE_SFX(CHAN_3924, NA_SE_EN_RIZA_DEAD, 0x40, 1, 0, 0)
/* 0x382E */ DEFINE_SFX(CHAN_39AD, NA_SE_EN_RIZA_WALK, 0x18, 0, 0, 0)
/* 0x382F */ DEFINE_SFX(CHAN_39C8, NA_SE_EN_RIZA_JUMP, 0x28, 0, 0, 0)
/* 0x3830 */ DEFINE_SFX(CHAN_5477, NA_SE_EN_STALKID_WALK, 0x18, 0, 0, 0)
/* 0x3831 */ DEFINE_SFX(CHAN_5481, NA_SE_EN_STALKID_ATTACK, 0x30, 0, 0, 0)
/* 0x3832 */ DEFINE_SFX(CHAN_396B, NA_SE_EN_STALKID_DAMAGE, 0x38, 1, 0, 0)
/* 0x3833 */ DEFINE_SFX(CHAN_39A0, NA_SE_EN_STALKID_DEAD, 0x40, 1, 0, 0)
/* 0x3834 */ DEFINE_SFX(CHAN_4D26, NA_SE_EN_FLOORMASTER_SLIDING, 0x14, 0, 0, 0)
/* 0x3835 */ DEFINE_SFX(CHAN_502F, NA_SE_EN_TEKU_WALK_WATER, 0x18, 0, 2, 0)
/* 0x3836 */ DEFINE_SFX(CHAN_535D, NA_SE_EN_LIGHT_ARROW_HIT, 0x38, 2, 0, 0)
/* 0x3837 */ DEFINE_SFX(CHAN_53EA, NA_SE_EN_TUBOOCK_FLY, 0x30, 0, 0, 0)
/* 0x3838 */ DEFINE_SFX(CHAN_38DF, NA_SE_EN_STAL_WARAU, 0x28, 1, 0, 0)
/* 0x3839 */ DEFINE_SFX(CHAN_3A70, NA_SE_EN_STAL_SAKEBI, 0x30, 0, 0, 0)
/* 0x383A */ DEFINE_SFX(CHAN_394E, NA_SE_EN_STAL_DAMAGE, 0x38, 1, 0, 0)
/* 0x383B */ DEFINE_SFX(CHAN_3974, NA_SE_EN_STAL_DEAD, 0x40, 1, 0, 0)
/* 0x383C */ DEFINE_SFX(CHAN_5529, NA_SE_EN_WOLFOS_APPEAR, 0x30, 0, 0, 0)
/* 0x383D */ DEFINE_SFX(CHAN_38D1, NA_SE_EN_STAL_WALK, 0x18, 0, 0, 0)
/* 0x383E */ DEFINE_SFX(CHAN_5572, NA_SE_EN_WOLFOS_CRY, 0x20, 0, 0, 0)
/* 0x383F */ DEFINE_SFX(CHAN_5537, NA_SE_EN_WOLFOS_ATTACK, 0x30, 0, 0, 0)
/* 0x3840 */ DEFINE_SFX(CHAN_379B, NA_SE_EN_FFLY_ATTACK, 0x30, 0, 0, 0)
/* 0x3841 */ DEFINE_SFX(CHAN_37AB, NA_SE_EN_FFLY_FLY, 0x20, 1, 0, 0)
/* 0x3842 */ DEFINE_SFX(CHAN_3C04, NA_SE_EN_FFLY_DEAD, 0x40, 1, 0, 0)
/* 0x3843 */ DEFINE_SFX(CHAN_5548, NA_SE_EN_WOLFOS_DAMAGE, 0x38, 1, 0, 0)
/* 0x3844 */ DEFINE_SFX(CHAN_39FE, NA_SE_EN_AMOS_WALK, 0x30, 0, 0, 0)
/* 0x3845 */ DEFINE_SFX(CHAN_3A0C, NA_SE_EN_AMOS_WAVE, 0x30, 0, 0, 0)
/* 0x3846 */ DEFINE_SFX(CHAN_3A40, NA_SE_EN_AMOS_DEAD, 0x40, 1, 0, 0)
/* 0x3847 */ DEFINE_SFX(CHAN_3A93, NA_SE_EN_AMOS_DAMAGE, 0x38, 1, 0, 0)
/* 0x3848 */ DEFINE_SFX(CHAN_3A59, NA_SE_EN_AMOS_VOICE, 0x20, 0, 0, 0)
/* 0x3849 */ DEFINE_SFX(CHAN_5451, NA_SE_EN_SHELL_MOUTH, 0x30, 0, 0, 0)
/* 0x384A */ DEFINE_SFX(CHAN_3BAB, NA_SE_EN_SHELL_DEAD, 0x40, 1, 0, 0)
/* 0x384B */ DEFINE_SFX(CHAN_555D, NA_SE_EN_WOLFOS_DEAD, 0x40, 1, 0, 0)
/* 0x384C */ DEFINE_SFX(CHAN_3AA8, NA_SE_EN_DODO_K_COLI, 0x30, 3, 0, 0)
/* 0x384D */ DEFINE_SFX(CHAN_3AD5, NA_SE_EN_DODO_K_COLI2, 0x30, 0, 0, SFX_FLAG_13)
/* 0x384E */ DEFINE_SFX(CHAN_3AF4, NA_SE_EN_DODO_K_ROLL, 0x30, 3, 0, 0)
/* 0x384F */ DEFINE_SFX(CHAN_3B09, NA_SE_EN_DODO_K_BREATH, 0x30, 3, 0, 0)
/* 0x3850 */ DEFINE_SFX(CHAN_3B23, NA_SE_EN_DODO_K_DRINK, 0x30, 3, 0, 0)
/* 0x3851 */ DEFINE_SFX(CHAN_3B34, NA_SE_EN_DODO_K_DOWN, 0x30, 3, 0, 0)
/* 0x3852 */ DEFINE_SFX(CHAN_3D3D, NA_SE_EN_DODO_K_OTAKEBI, 0x30, 3, 0, 0)
/* 0x3853 */ DEFINE_SFX(CHAN_3DCF, NA_SE_EN_DODO_K_END, 0x30, 3, 0, 0)
/* 0x3854 */ DEFINE_SFX(CHAN_3E00, NA_SE_EN_DODO_K_LAST, 0x30, 3, 0, 0)
/* 0x3855 */ DEFINE_SFX(CHAN_3E17, NA_SE_EN_DODO_K_LAVA, 0x30, 3, 0, 0)
/* 0x3856 */ DEFINE_SFX(CHAN_4202, NA_SE_EN_GANON_FLOAT, 0x18, 3, 0, 0)
/* 0x3857 */ DEFINE_SFX(CHAN_53F0, NA_SE_EN_GANON_DARKWAVE_M, 0x30, 3, 0, 0)
/* 0x3858 */ DEFINE_SFX(CHAN_3B50, NA_SE_EN_DODO_J_BREATH, 0x28, 0, 0, 0)
/* 0x3859 */ DEFINE_SFX(CHAN_408D, NA_SE_EN_DODO_J_TAIL, 0x30, 0, 0, 0)
/* 0x385A */ DEFINE_SFX(CHAN_531C, NA_SE_EN_WOLFOS_WALK, 0x18, 0, 0, 0)
/* 0x385B */ DEFINE_SFX(CHAN_38C7, NA_SE_EN_DODO_J_EAT, 0x30, 0, 0, 0)
/* 0x385C */ DEFINE_SFX(CHAN_3B5C, NA_SE_EN_DEKU_MOUTH, 0x28, 0, 0, 0)
/* 0x385D */ DEFINE_SFX(CHAN_3B66, NA_SE_EN_DEKU_ATTACK, 0x30, 0, 0, 0)
/* 0x385E */ DEFINE_SFX(CHAN_3B76, NA_SE_EN_DEKU_DAMAGE, 0x38, 1, 0, 0)
/* 0x385F */ DEFINE_SFX(CHAN_3B8E, NA_SE_EN_DEKU_DEAD, 0x40, 1, 0, 0)
/* 0x3860 */ DEFINE_SFX(CHAN_3BBD, NA_SE_EN_DEKU_JR_MOUTH, 0x28, 0, 0, 0)
/* 0x3861 */ DEFINE_SFX(CHAN_3BC7, NA_SE_EN_DEKU_JR_ATTACK, 0x30, 0, 0, 0)
/* 0x3862 */ DEFINE_SFX(CHAN_3BD7, NA_SE_EN_DEKU_JR_DEAD, 0x40, 1, 0, 0)
/* 0x3863 */ DEFINE_SFX(CHAN_3BF3, NA_SE_EN_DEKU_SCRAPE, 0x14, 0, 0, 0)
/* 0x3864 */ DEFINE_SFX(CHAN_3C1C, NA_SE_EN_TAIL_FLY, 0x30, 0, 0, 0)
/* 0x3865 */ DEFINE_SFX(CHAN_3C2C, NA_SE_EN_TAIL_CRY, 0x20, 0, 0, 0)
/* 0x3866 */ DEFINE_SFX(CHAN_3C3A, NA_SE_EN_TAIL_DEAD, 0x40, 1, 0, 0)
/* 0x3867 */ DEFINE_SFX(CHAN_41F6, NA_SE_EN_GANON_SPARK, 0x30, 3, 0, 0)
/* 0x3868 */ DEFINE_SFX(CHAN_3C71, NA_SE_EN_STALTU_DOWN, 0x30, 0, 0, 0)
/* 0x3869 */ DEFINE_SFX(CHAN_3C56, NA_SE_EN_STALTU_UP, 0x30, 0, 0, 0)
/* 0x386A */ DEFINE_SFX(CHAN_3C8C, NA_SE_EN_STALTU_LAUGH, 0x20, 0, 0, 0)
/* 0x386B */ DEFINE_SFX(CHAN_3FD0, NA_SE_EN_STALTU_DAMAGE, 0x38, 1, 0, 0)
/* 0x386C */ DEFINE_SFX(CHAN_3E6B, NA_SE_EN_STAL_JUMP, 0x20, 0, 0, 0)
/* 0x386D */ DEFINE_SFX(CHAN_3F53, NA_SE_EN_TEKU_DAMAGE, 0x38, 1, 0, 0)
/* 0x386E */ DEFINE_SFX(CHAN_3F6E, NA_SE_EN_TEKU_DEAD, 0x40, 1, 0, 0)
/* 0x386F */ DEFINE_SFX(CHAN_3C9F, NA_SE_EN_TEKU_WALK, 0x14, 0, 0, 0)
/* 0x3870 */ DEFINE_SFX(CHAN_3CA9, NA_SE_EN_PO_KANTERA, 0x30, 3, 0, 0)
/* 0x3871 */ DEFINE_SFX(CHAN_3CBC, NA_SE_EN_PO_FLY, 0x20, 1, 0, 0)
/* 0x3872 */ DEFINE_SFX(CHAN_3CCF, NA_SE_EN_PO_AWAY, 0x20, 1, 0, 0)
/* 0x3873 */ DEFINE_SFX(CHAN_3CF6, NA_SE_EN_PO_APPEAR, 0x30, 2, 0, 0)
/* 0x3874 */ DEFINE_SFX(CHAN_3CE0, NA_SE_EN_PO_DISAPPEAR, 0x30, 2, 0, 0)
/* 0x3875 */ DEFINE_SFX(CHAN_3D09, NA_SE_EN_PO_DAMAGE, 0x38, 2, 0, 0)
/* 0x3876 */ DEFINE_SFX(CHAN_3D23, NA_SE_EN_PO_DEAD, 0x40, 2, 0, 0)
/* 0x3877 */ DEFINE_SFX(CHAN_40A3, NA_SE_EN_PO_DEAD2, 0x40, 2, 0, 0)
/* 0x3878 */ DEFINE_SFX(CHAN_401A, NA_SE_EN_EXTINCT, 0x14, 1, 2, 0)
/* 0x3879 */ DEFINE_SFX(CHAN_3612, NA_SE_EN_GOLON_LAND_BIG, 0x34, 0, 0, 0)
/* 0x387A */ DEFINE_SFX(CHAN_3629, NA_SE_EN_RIZA_DOWN, 0x40, 0, 0, 0)
/* 0x387B */ DEFINE_SFX(CHAN_3648, NA_SE_EN_DODO_M_GND, 0x20, 0, 0, 0)
/* 0x387C */ DEFINE_SFX(CHAN_3ECF, NA_SE_EN_NUTS_UP, 0x28, 0, 0, 0)
/* 0x387D */ DEFINE_SFX(CHAN_3EE2, NA_SE_EN_NUTS_DOWN, 0x28, 0, 0, 0)
/* 0x387E */ DEFINE_SFX(CHAN_3EF5, NA_SE_EN_NUTS_THROW, 0x30, 0, 0, 0)
/* 0x387F */ DEFINE_SFX(CHAN_3F05, NA_SE_EN_NUTS_WALK, 0x14, 0, 0, 0)
/* 0x3880 */ DEFINE_SFX(CHAN_3F12, NA_SE_EN_NUTS_DAMAGE, 0x38, 1, 0, 0)
/* 0x3881 */ DEFINE_SFX(CHAN_3F29, NA_SE_EN_NUTS_DEAD, 0x40, 1, 0, 0)
/* 0x3882 */ DEFINE_SFX(CHAN_4966, NA_SE_EN_NUTS_FAINT, 0x20, 0, 0, 0)
/* 0x3883 */ DEFINE_SFX(CHAN_4C03, NA_SE_EN_PO_BIG_GET, 0x30, 3, 0, 0)
/* 0x3884 */ DEFINE_SFX(CHAN_3FEC, NA_SE_EN_STALTU_ROLL, 0x30, 0, 0, 0)
/* 0x3885 */ DEFINE_SFX(CHAN_4001, NA_SE_EN_STALWALL_DEAD, 0x40, 1, 0, 0)
/* 0x3886 */ DEFINE_SFX(CHAN_4BCE, NA_SE_EN_PO_SISTER_DEAD, 0x40, 3, 0, 0)
/* 0x3887 */ DEFINE_SFX(CHAN_4C53, NA_SE_EN_BARI_SPLIT, 0x40, 1, 0, 0)
/* 0x3888 */ DEFINE_SFX(CHAN_5135, NA_SE_EN_TEKU_REVERSE, 0x28, 1, 0, 0)
/* 0x3889 */ DEFINE_SFX(CHAN_35E9, NA_SE_EN_VALVAISA_LAND2, 0x30, 3, 0, 0)
/* 0x388A */ DEFINE_SFX(CHAN_43EA, NA_SE_EN_TEKU_LAND_WATER, 0x20, 0, 0, 0)
/* 0x388B */ DEFINE_SFX(CHAN_4929, NA_SE_EN_LAST_DAMAGE, 0x38, 1, 0, 0)
/* 0x388C */ DEFINE_SFX(CHAN_497B, NA_SE_EN_STALWALL_ROLL, 0x30, 0, 0, 0)
/* 0x388D */ DEFINE_SFX(CHAN_4996, NA_SE_EN_STALWALL_DASH, 0x30, 0, 0, 0)
/* 0x388E */ DEFINE_SFX(CHAN_5013, NA_SE_EN_TEKU_JUMP_WATER, 0x20, 0, 0, 0)
/* 0x388F */ DEFINE_SFX(CHAN_5021, NA_SE_EN_TEKU_LAND_WATER2, 0x20, 0, 0, 0)
/* 0x3890 */ DEFINE_SFX(CHAN_40B8, NA_SE_EN_FALL_AIM, 0x38, 0, 0, SFX_FLAG_13)
/* 0x3891 */ DEFINE_SFX(CHAN_40C8, NA_SE_EN_FALL_UP, 0x30, 3, 0, 0)
/* 0x3892 */ DEFINE_SFX(CHAN_5089, NA_SE_EN_FALL_CATCH, 0x30, 0, 0, SFX_FLAG_13)
/* 0x3893 */ DEFINE_SFX(CHAN_3767, NA_SE_EN_FALL_LAND, 0x30, 0, 0, 0)
/* 0x3894 */ DEFINE_SFX(CHAN_40DB, NA_SE_EN_FALL_WALK, 0x14, 0, 0, 0)
/* 0x3895 */ DEFINE_SFX(CHAN_40EB, NA_SE_EN_FALL_DAMAGE, 0x38, 1, 0, 0)
/* 0x3896 */ DEFINE_SFX(CHAN_4104, NA_SE_EN_FALL_DEAD, 0x40, 1, 0, 0)
/* 0x3897 */ DEFINE_SFX(CHAN_55D2, NA_SE_EN_KAICHO_FLUTTER, 0x14, 0, 0, 0)
/* 0x3898 */ DEFINE_SFX(CHAN_411D, NA_SE_EN_BIRI_FLY, 0x20, 0, 0, 0)
/* 0x3899 */ DEFINE_SFX(CHAN_4132, NA_SE_EN_BIRI_JUMP, 0x20, 0, 0, 0)
/* 0x389A */ DEFINE_SFX(CHAN_415D, NA_SE_EN_BIRI_SPARK, 0x30, 0, 0, 0)
/* 0x389B */ DEFINE_SFX(CHAN_4184, NA_SE_EN_BIRI_DEAD, 0x40, 1, 0, 0)
/* 0x389C */ DEFINE_SFX(CHAN_41BC, NA_SE_EN_BIRI_BUBLE, 0x40, 1, 0, 0)
/* 0x389D */ DEFINE_SFX(CHAN_4C09, NA_SE_EN_BARI_ROLL, 0x30, 0, 0, 0)
/* 0x389E */ DEFINE_SFX(CHAN_4C1B, NA_SE_EN_GOMA_JR_FREEZE, 0x34, 1, 0, 0)
/* 0x389F */ DEFINE_SFX(CHAN_4C2D, NA_SE_EN_BARI_DEAD, 0x40, 1, 0, 0)
/* 0x38A0 */ DEFINE_SFX(CHAN_4236, NA_SE_EN_GANON_FIRE, 0x30, 3, 0, 0)
/* 0x38A1 */ DEFINE_SFX(CHAN_41CF, NA_SE_EN_FANTOM_TRANSFORM, 0x30, 2, 0, 0)
/* 0x38A2 */ DEFINE_SFX(CHAN_41E9, NA_SE_EN_FANTOM_THUNDER, 0x30, 0, 0, SFX_FLAG_13)
/* 0x38A3 */ DEFINE_SFX(CHAN_41F6, NA_SE_EN_FANTOM_SPARK, 0x20, 3, 1, 0)
/* 0x38A4 */ DEFINE_SFX(CHAN_4202, NA_SE_EN_FANTOM_FLOAT, 0x20, 2, 0, 0)
/* 0x38A5 */ DEFINE_SFX(CHAN_420E, NA_SE_EN_FANTOM_MASIC1, 0x30, 3, 0, 0)
/* 0x38A6 */ DEFINE_SFX(CHAN_421A, NA_SE_EN_FANTOM_MASIC2, 0x30, 3, 0, 0)
/* 0x38A7 */ DEFINE_SFX(CHAN_4236, NA_SE_EN_FANTOM_FIRE, 0x30, 3, 0, 0)
/* 0x38A8 */ DEFINE_SFX(CHAN_425D, NA_SE_EN_FANTOM_HIT_THUNDER, 0x38, 3, 0, 0)
/* 0x38A9 */ DEFINE_SFX(CHAN_4268, NA_SE_EN_FANTOM_ATTACK, 0x30, 0, 0, SFX_FLAG_13)
/* 0x38AA */ DEFINE_SFX(CHAN_4278, NA_SE_EN_FANTOM_STICK, 0x30, 3, 0, 0)
/* 0x38AB */ DEFINE_SFX(CHAN_429B, NA_SE_EN_FANTOM_EYE, 0x30, 2, 0, 0)
/* 0x38AC */ DEFINE_SFX(CHAN_42C0, NA_SE_EN_FANTOM_LAST, 0x30, 0, 0, SFX_FLAG_13)
/* 0x38AD */ DEFINE_SFX(CHAN_42B2, NA_SE_EN_FANTOM_THUNDER_GND, 0x30, 3, 0, 0)
/* 0x38AE */ DEFINE_SFX(CHAN_42F5, NA_SE_EN_FANTOM_DAMAGE, 0x38, 3, 0, 0)
/* 0x38AF */ DEFINE_SFX(CHAN_432C, NA_SE_EN_FANTOM_DEAD, 0x40, 3, 0, 0)
/* 0x38B0 */ DEFINE_SFX(CHAN_4378, NA_SE_EN_FANTOM_LAUGH, 0x30, 3, 0, 0)
/* 0x38B1 */ DEFINE_SFX(CHAN_435E, NA_SE_EN_FANTOM_DAMAGE2, 0x30, 3, 0, 0)
/* 0x38B2 */ DEFINE_SFX(CHAN_4226, NA_SE_EN_FANTOM_VOICE, 0x30, 3, 0, SFX_FLAG_10)
/* 0x38B3 */ DEFINE_SFX(CHAN_557C, NA_SE_EN_KAICHO_DAMAGE, 0x38, 1, 0, 0)
/* 0x38B4 */ DEFINE_SFX(CHAN_4A65, NA_SE_EN_GANON_ATTACK_DEMO, 0x30, 3, 0, 0)
/* 0x38B5 */ DEFINE_SFX(CHAN_4D16, NA_SE_EN_GANON_FIRE_DEMO, 0x30, 3, 0, 0)
/* 0x38B6 */ DEFINE_SFX(CHAN_55A6, NA_SE_EN_KAICHO_CRY, 0x20, 0, 0, 0)
/* 0x38B7 */ DEFINE_SFX(CHAN_55B9, NA_SE_EN_KAICHO_ATTACK, 0x34, 0, 0, 0)
/* 0x38B8 */ DEFINE_SFX(CHAN_4385, NA_SE_EN_MORIBLIN_WALK, 0x18, 1, 0, 0)
/* 0x38B9 */ DEFINE_SFX(CHAN_43A7, NA_SE_EN_MORIBLIN_SLIDE, 0x20, 0, 0, SFX_FLAG_13)
/* 0x38BA */ DEFINE_SFX(CHAN_445B, NA_SE_EN_MORIBLIN_ATTACK, 0x30, 0, 0, SFX_FLAG_13)
/* 0x38BB */ DEFINE_SFX(CHAN_446C, NA_SE_EN_MORIBLIN_VOICE, 0x14, 3, 0, 0)
/* 0x38BC */ DEFINE_SFX(CHAN_4488, NA_SE_EN_MORIBLIN_SPEAR_AT, 0x28, 3, 0, 0)
/* 0x38BD */ DEFINE_SFX(CHAN_447C, NA_SE_EN_MORIBLIN_SPEAR_NORM, 0x28, 3, 0, 0)
/* 0x38BE */ DEFINE_SFX(CHAN_44B2, NA_SE_EN_MORIBLIN_DEAD, 0x40, 3, 0, 0)
/* 0x38BF */ DEFINE_SFX(CHAN_4396, NA_SE_EN_MORIBLIN_DASH, 0x30, 3, 0, 0)
/* 0x38C0 */ DEFINE_SFX(CHAN_43F8, NA_SE_EN_OCTAROCK_ROCK, 0x20, 0, 0, 0)
/* 0x38C1 */ DEFINE_SFX(CHAN_43DC, NA_SE_EN_OCTAROCK_FLOAT, 0x14, 0, 0, 0)
/* 0x38C2 */ DEFINE_SFX(CHAN_43B6, NA_SE_EN_OCTAROCK_JUMP, 0x30, 0, 0, 0)
/* 0x38C3 */ DEFINE_SFX(CHAN_43EA, NA_SE_EN_OCTAROCK_LAND, 0x30, 0, 0, 0)
/* 0x38C4 */ DEFINE_SFX(CHAN_43C4, NA_SE_EN_OCTAROCK_SINK, 0x28, 0, 0, 0)
/* 0x38C5 */ DEFINE_SFX(CHAN_43D2, NA_SE_EN_OCTAROCK_BUBLE, 0x28, 0, 0, 0)
/* 0x38C6 */ DEFINE_SFX(CHAN_46EF, NA_SE_EN_OCTAROCK_DEAD1, 0x40, 1, 0, 0)
/* 0x38C7 */ DEFINE_SFX(CHAN_46D7, NA_SE_EN_OCTAROCK_DEAD2, 0x40, 1, 0, 0)
/* 0x38C8 */ DEFINE_SFX(CHAN_37AB, NA_SE_EN_BUBLE_WING, 0x20, 0, 0, 0)
/* 0x38C9 */ DEFINE_SFX(CHAN_4406, NA_SE_EN_BUBLE_MOUTH, 0x20, 0, 0, 0)
/* 0x38CA */ DEFINE_SFX(CHAN_441B, NA_SE_EN_BUBLE_LAUGH, 0x14, 0, 0, 0)
/* 0x38CB */ DEFINE_SFX(CHAN_4BBC, NA_SE_EN_BUBLE_BITE, 0x30, 0, 0, 0)
/* 0x38CC */ DEFINE_SFX(CHAN_4429, NA_SE_EN_BUBLE_UP, 0x30, 0, 0, 0)
/* 0x38CD */ DEFINE_SFX(CHAN_4442, NA_SE_EN_BUBLE_DOWN, 0x30, 0, 0, 0)
/* 0x38CE */ DEFINE_SFX(CHAN_4B8D, NA_SE_EN_BUBLE_DEAD, 0x40, 1, 0, 0)
/* 0x38CF */ DEFINE_SFX(CHAN_355F, NA_SE_EN_BUBLEFALL_FIRE, 0x30, 0, 0, 0)
/* 0x38D0 */ DEFINE_SFX(CHAN_4593, NA_SE_EN_VALVAISA_APPEAR, 0x30, 3, 0, 0)
/* 0x38D1 */ DEFINE_SFX(CHAN_44DB, NA_SE_EN_VALVAISA_ROAR, 0x30, 3, 0, 0)
/* 0x38D2 */ DEFINE_SFX(CHAN_3732, NA_SE_EN_VALVAISA_MAHI1, 0x30, 3, 0, 0)
/* 0x38D3 */ DEFINE_SFX(CHAN_4517, NA_SE_EN_VALVAISA_MAHI2, 0x30, 3, 0, 0)
/* 0x38D4 */ DEFINE_SFX(CHAN_4541, NA_SE_EN_VALVAISA_KNOCKOUT, 0x30, 3, 0, 0)
/* 0x38D5 */ DEFINE_SFX(CHAN_381C, NA_SE_EN_VALVAISA_DAMAGE1, 0x38, 3, 0, 0)
/* 0x38D6 */ DEFINE_SFX(CHAN_4555, NA_SE_EN_VALVAISA_DAMAGE2, 0x38, 3, 0, 0)
/* 0x38D7 */ DEFINE_SFX(CHAN_44C7, NA_SE_EN_VALVAISA_ROCK, 0x30, 3, 0, 0)
/* 0x38D8 */ DEFINE_SFX(CHAN_45B4, NA_SE_EN_VALVAISA_SW_NAIL, 0x30, 3, 0, 0)
/* 0x38D9 */ DEFINE_SFX(CHAN_3E7F, NA_SE_EN_VALVAISA_DEAD, 0x40, 3, 0, 0)
/* 0x38DA */ DEFINE_SFX(CHAN_3E00, NA_SE_EN_VALVAISA_BURN, 0x30, 3, 0, 0)
/* 0x38DB */ DEFINE_SFX(CHAN_35CE, NA_SE_EN_VALVAISA_FIRE, 0x30, 3, 0, 0)
/* 0x38DC */ DEFINE_SFX(CHAN_4184, NA_SE_EN_BARI_DAMAGE, 0x38, 1, 0, 0)
/* 0x38DD */ DEFINE_SFX(CHAN_3648, NA_SE_EN_MOFER_CORE_LAND, 0x28, 3, 0, 0)
/* 0x38DE */ DEFINE_SFX(CHAN_47BB, NA_SE_EN_MOFER_CORE_MOVE_WT, 0x28, 3, 2, 0)
/* 0x38DF */ DEFINE_SFX(CHAN_502F, NA_SE_EN_MOFER_CORE_SMJUMP, 0x28, 2, 2, 0)
/* 0x38E0 */ DEFINE_SFX(CHAN_522F, NA_SE_EN_MONBLIN_GNDWAVE, 0x30, 3, 0, 0)
/* 0x38E1 */ DEFINE_SFX(CHAN_4496, NA_SE_EN_MONBLIN_HAM_DOWN, 0x30, 0, 0, SFX_FLAG_13)
/* 0x38E2 */ DEFINE_SFX(CHAN_44A4, NA_SE_EN_MONBLIN_HAM_UP, 0x30, 0, 0, SFX_FLAG_13)
/* 0x38E3 */ DEFINE_SFX(CHAN_4BB2, NA_SE_EN_BUBLE_DAMAGE, 0x38, 1, 0, 0)
/* 0x38E4 */ DEFINE_SFX(CHAN_45C2, NA_SE_EN_REDEAD_CRY, 0x20, 0, 0, 0)
/* 0x38E5 */ DEFINE_SFX(CHAN_45D2, NA_SE_EN_REDEAD_AIM, 0x34, 0, 0, 0)
/* 0x38E6 */ DEFINE_SFX(CHAN_45E9, NA_SE_EN_REDEAD_DAMAGE, 0x38, 1, 0, 0)
/* 0x38E7 */ DEFINE_SFX(CHAN_45FF, NA_SE_EN_REDEAD_DEAD, 0x40, 1, 0, 0)
/* 0x38E8 */ DEFINE_SFX(CHAN_463C, NA_SE_EN_REDEAD_ATTACK, 0x34, 0, 0, SFX_FLAG_13)
/* 0x38E9 */ DEFINE_SFX(CHAN_5466, NA_SE_EN_NYU_MOVE, 0x20, 0, 0, 0)
/* 0x38EA */ DEFINE_SFX(CHAN_56A2, NA_SE_EN_NYU_HIT_STOP, 0x38, 0, 0, 0)
/* 0x38EB */ DEFINE_SFX(CHAN_5591, NA_SE_EN_KAICHO_DEAD, 0x40, 1, 0, 0)
/* 0x38EC */ DEFINE_SFX(CHAN_461A, NA_SE_EN_PO_LAUGH, 0x30, 3, 0, 0)
/* 0x38ED */ DEFINE_SFX(CHAN_4673, NA_SE_EN_PO_CRY, 0x30, 2, 0, 0)
/* 0x38EE */ DEFINE_SFX(CHAN_462B, NA_SE_EN_PO_ROLL, 0x30, 2, 0, 0)
/* 0x38EF */ DEFINE_SFX(CHAN_465F, NA_SE_EN_PO_LAUGH2, 0x38, 3, 0, 0)
/* 0x38F0 */ DEFINE_SFX(CHAN_4681, NA_SE_EN_MOFER_APPEAR, 0x30, 3, 0, 0)
/* 0x38F1 */ DEFINE_SFX(CHAN_4695, NA_SE_EN_MOFER_ATTACK, 0x32, 3, 0, 0)
/* 0x38F2 */ DEFINE_SFX(CHAN_46AD, NA_SE_EN_MOFER_WAVE, 0x34, 3, 0, 0)
/* 0x38F3 */ DEFINE_SFX(CHAN_46C7, NA_SE_EN_MOFER_CATCH, 0x34, 3, 0, 0)
/* 0x38F4 */ DEFINE_SFX(CHAN_4734, NA_SE_EN_MOFER_CUT, 0x30, 3, 0, 0)
/* 0x38F5 */ DEFINE_SFX(CHAN_4705, NA_SE_EN_MOFER_MOVE_DEMO, 0x30, 3, 0, 0)
/* 0x38F6 */ DEFINE_SFX(CHAN_471A, NA_SE_EN_MOFER_BUBLE_DEMO, 0x30, 3, 0, 0)
/* 0x38F7 */ DEFINE_SFX(CHAN_5013, NA_SE_EN_MOFER_CORE_JUMP, 0x28, 2, 2, 0)
/* 0x38F8 */ DEFINE_SFX(CHAN_4754, NA_SE_EN_MOFER_DEAD, 0x40, 3, 0, 0)
/* 0x38F9 */ DEFINE_SFX(CHAN_493B, NA_SE_EN_MOFER_LASTVOICE, 0x40, 3, 0, 0)
/* 0x38FA */ DEFINE_SFX(CHAN_47A8, NA_SE_EN_MOFER_CORE_ROLL, 0x30, 3, 0, 0)
/* 0x38FB */ DEFINE_SFX(CHAN_420E, NA_SE_EN_MOFER_CORE_FLY, 0x30, 3, 0, 0)
/* 0x38FC */ DEFINE_SFX(CHAN_47FC, NA_SE_EN_GOLON_WAKE_UP, 0x20, 0, 0, 0)
/* 0x38FD */ DEFINE_SFX(CHAN_4806, NA_SE_EN_GOLON_SIT_DOWN, 0x20, 0, 0, 0)
/* 0x38FE */ DEFINE_SFX(CHAN_56B0, NA_SE_EN_CHICKEN_FLUTTER, 0x30, 0, 0, 0)
/* 0x38FF */ DEFINE_SFX(CHAN_4D08, NA_SE_EN_DEKU_WAKEUP, 0x20, 0, 2, 0)
/* 0x3900 */ DEFINE_SFX(CHAN_47D3, NA_SE_EN_DEADHAND_BITE, 0x30, 3, 0, 0)
/* 0x3901 */ DEFINE_SFX(CHAN_47EC, NA_SE_EN_DEADHAND_WALK, 0x18, 3, 0, 0)
/* 0x3902 */ DEFINE_SFX(CHAN_4813, NA_SE_EN_DEADHAND_GRIP, 0x34, 3, 0, 0)
/* 0x3903 */ DEFINE_SFX(CHAN_4EBC, NA_SE_EN_DEADHAND_HAND_AT, 0x30, 3, 0, 0)
/* 0x3904 */ DEFINE_SFX(CHAN_4839, NA_SE_EN_DAIOCTA_MAHI, 0x38, 3, 0, 0)
/* 0x3905 */ DEFINE_SFX(CHAN_485E, NA_SE_EN_DAIOCTA_SPLASH, 0x18, 3, 0, 0)
/* 0x3906 */ DEFINE_SFX(CHAN_4875, NA_SE_EN_DAIOCTA_VOICE, 0x30, 0, 0, SFX_FLAG_13)
/* 0x3907 */ DEFINE_SFX(CHAN_4886, NA_SE_EN_DAIOCTA_DAMAGE, 0x38, 3, 0, 0)
/* 0x3908 */ DEFINE_SFX(CHAN_48B2, NA_SE_EN_DAIOCTA_SINK, 0x30, 3, 0, 0)
/* 0x3909 */ DEFINE_SFX(CHAN_48D5, NA_SE_EN_DAIOCTA_DEAD, 0x40, 3, 0, 0)
/* 0x390A */ DEFINE_SFX(CHAN_48F2, NA_SE_EN_DAIOCTA_DEAD2, 0x40, 0, 0, SFX_FLAG_13)
/* 0x390B */ DEFINE_SFX(CHAN_41E9, NA_SE_EN_GANON_HIT_THUNDER, 0x38, 3, 0, 0)
/* 0x390C */ DEFINE_SFX(CHAN_49B1, NA_SE_EN_TWINROBA_APPEAR_MS, 0x30, 0, 0, SFX_FLAG_13)
/* 0x390D */ DEFINE_SFX(CHAN_49C8, NA_SE_EN_TWINROBA_TRANSFORM, 0x30, 3, 0, 0)
/* 0x390E */ DEFINE_SFX(CHAN_49E6, NA_SE_EN_TWINROBA_MS_FIRE, 0x30, 3, 0, 0)
/* 0x390F */ DEFINE_SFX(CHAN_49FF, NA_SE_EN_TWINROBA_FIRE_EXP, 0x30, 3, 0, 0)
/* 0x3910 */ DEFINE_SFX(CHAN_4B3E, NA_SE_EN_TWINROBA_POWERUP, 0x30, 3, 0, 0)
/* 0x3911 */ DEFINE_SFX(CHAN_4A22, NA_SE_EN_TWINROBA_SHOOT_FREEZE, 0x30, 3, 0, 0)
/* 0x3912 */ DEFINE_SFX(CHAN_4A4C, NA_SE_EN_TWINROBA_MS_FREEZE, 0x30, 3, 0, 0)
/* 0x3913 */ DEFINE_SFX(CHAN_4AB3, NA_SE_EN_TWINROBA_MASIC_SET, 0x30, 2, 0, 0)
/* 0x3914 */ DEFINE_SFX(CHAN_4826, NA_SE_EN_TWINROBA_CUTBODY, 0x30, 3, 0, 0)
/* 0x3915 */ DEFINE_SFX(CHAN_3AA8, NA_SE_EN_GANON_HIT_GND_IMP, 0x30, 3, 0, 0)
/* 0x3916 */ DEFINE_SFX(CHAN_4AE7, NA_SE_EN_TWINROBA_DAMAGE_VOICE, 0x38, 0, 0, SFX_FLAG_13)
/* 0x3917 */ DEFINE_SFX(CHAN_424B, NA_SE_EN_TWINROBA_REFL_FIRE, 0x38, 3, 0, 0)
/* 0x3918 */ DEFINE_SFX(CHAN_4A39, NA_SE_EN_TWINROBA_REFL_FREEZE, 0x38, 3, 0, 0)
/* 0x3919 */ DEFINE_SFX(CHAN_4826, NA_SE_EN_GANON_CUTBODY, 0x38, 3, 0, 0)
/* 0x391A */ DEFINE_SFX(CHAN_4AF4, NA_SE_EN_TWINROBA_YOUNG_DAMAGE, 0x38, 0, 0, SFX_FLAG_13)
/* 0x391B */ DEFINE_SFX(CHAN_4B01, NA_SE_EN_TWINROBA_YOUNG_DEAD, 0x40, 0, 0, SFX_FLAG_13)
/* 0x391C */ DEFINE_SFX(CHAN_55E0, NA_SE_EN_GOLON_EYE_BIG, 0x18, 0, 0, 0)
/* 0x391D */ DEFINE_SFX(CHAN_55EC, NA_SE_EN_GOLON_GOOD_BIG, 0x30, 3, 0, 0)
/* 0x391E */ DEFINE_SFX(CHAN_4B18, NA_SE_EN_TWINROBA_FB_FLY, 0x30, 2, 0, 0)
/* 0x391F */ DEFINE_SFX(CHAN_4FE8, NA_SE_EN_TWINROBA_FLY, 0x20, 2, 0, 0)
/* 0x3920 */ DEFINE_SFX(CHAN_4FFB, NA_SE_EN_TWINROBA_UNARI, 0x24, 3, 0, 0)
/* 0x3921 */ DEFINE_SFX(CHAN_462B, NA_SE_EN_TWINROBA_ROLL, 0x28, 3, 0, 0)
/* 0x3922 */ DEFINE_SFX(CHAN_4236, NA_SE_EN_TWINROBA_SHOOT_FIRE, 0x30, 3, 0, 0)
/* 0x3923 */ DEFINE_SFX(CHAN_421A, NA_SE_EN_TWINROBA_THROW_MASIC, 0x30, 3, 0, 0)
/* 0x3924 */ DEFINE_SFX(CHAN_4AC3, NA_SE_EN_DARUNIA_HIT_BREAST, 0x30, 0, 0, 0)
/* 0x3925 */ DEFINE_SFX(CHAN_4AD6, NA_SE_EN_DARUNIA_HIT_LINK, 0x30, 0, 0, 0)
/* 0x3926 */ DEFINE_SFX(CHAN_4F7F, NA_SE_EN_OWL_FLUTTER, 0x30, 0, 0, 0)
/* 0x3927 */ DEFINE_SFX(CHAN_3612, NA_SE_EN_VALVAISA_LAND, 0x30, 3, 0, 0)
/* 0x3928 */ DEFINE_SFX(CHAN_4B49, NA_SE_EN_IRONNACK_WALK, 0x18, 1, 0, 0)
/* 0x3929 */ DEFINE_SFX(CHAN_4B67, NA_SE_EN_IRONNACK_SWING_AXE, 0x34, 3, 0, 0)
/* 0x392A */ DEFINE_SFX(CHAN_4C05, NA_SE_EN_IRONNACK_ARMOR_DEMO, 0x30, 3, 0, 0)
/* 0x392B */ DEFINE_SFX(CHAN_4D74, NA_SE_EN_IRONNACK_STAGGER_DEMO, 0x30, 3, 0, 0)
/* 0x392C */ DEFINE_SFX(CHAN_4D8B, NA_SE_EN_IRONNACK_ARMOR_OFF_DEMO, 0x34, 3, 0, 0)
/* 0x392D */ DEFINE_SFX(CHAN_4D57, NA_SE_EN_IRONNACK_ARMOR_LAND1_DEMO, 0x30, 3, 0, 0)
/* 0x392E */ DEFINE_SFX(CHAN_4D34, NA_SE_EN_IRONNACK_ARMOR_LAND2_DEMO, 0x30, 3, 0, 0)
/* 0x392F */ DEFINE_SFX(CHAN_4D53, NA_SE_EN_IRONNACK_ARMOR_LAND3_DEMO, 0x30, 3, 0, 0)
/* 0x3930 */ DEFINE_SFX(CHAN_4C5D, NA_SE_EN_FLOORMASTER_ATTACK, 0x30, 1, 0, 0)
/* 0x3931 */ DEFINE_SFX(CHAN_4C6E, NA_SE_EN_FLOORMASTER_SM_WALK, 0x14, 0, 0, 0)
/* 0x3932 */ DEFINE_SFX(CHAN_4C7C, NA_SE_EN_FLOORMASTER_SM_DEAD, 0x40, 1, 0, 0)
/* 0x3933 */ DEFINE_SFX(CHAN_4C95, NA_SE_EN_FLOORMASTER_RESTORE, 0x30, 1, 0, 0)
/* 0x3934 */ DEFINE_SFX(CHAN_4CA7, NA_SE_EN_FLOORMASTER_EXPAND, 0x30, 1, 0, 0)
/* 0x3935 */ DEFINE_SFX(CHAN_4CBD, NA_SE_EN_FLOORMASTER_SPLIT, 0x30, 1, 0, 0)
/* 0x3936 */ DEFINE_SFX(CHAN_4CC6, NA_SE_EN_FLOORMASTER_SM_STICK, 0x38, 3, 0, 0)
/* 0x3937 */ DEFINE_SFX(CHAN_4CE0, NA_SE_EN_FLOORMASTER_SM_LAND, 0x30, 0, 0, 0)
/* 0x3938 */ DEFINE_SFX(CHAN_4DA4, NA_SE_EN_IRONNACK_WAVE_DEMO, 0x30, 3, 0, 0)
/* 0x3939 */ DEFINE_SFX(CHAN_4DC1, NA_SE_EN_IRONNACK_FINGER_DEMO, 0x30, 3, 0, 0)
/* 0x393A */ DEFINE_SFX(CHAN_53A8, NA_SE_EN_IRONNACK_ARMOR_HIT, 0x38, 3, 0, 0)
/* 0x393B */ DEFINE_SFX(CHAN_4826, NA_SE_EN_NUTS_CUTBODY, 0x38, 3, 0, 0)
/* 0x393C */ DEFINE_SFX(CHAN_4DCD, NA_SE_EN_BALINADE_LEVEL, 0x30, 2, 0, 0)
/* 0x393D */ DEFINE_SFX(CHAN_4DE2, NA_SE_EN_BALINADE_DAMAGE, 0x38, 3, 0, 0)
/* 0x393E */ DEFINE_SFX(CHAN_4E23, NA_SE_EN_BALINADE_FAINT, 0x38, 3, 0, 0)
/* 0x393F */ DEFINE_SFX(CHAN_4E3E, NA_SE_EN_BALINADE_BREAK, 0x30, 3, 2, 0)
/* 0x3940 */ DEFINE_SFX(CHAN_4E59, NA_SE_EN_BALINADE_DEAD, 0x38, 3, 0, 0)
/* 0x3941 */ DEFINE_SFX(CHAN_4E8D, NA_SE_EN_BALINADE_STICK, 0x30, 3, 0, 0)
/* 0x3942 */ DEFINE_SFX(CHAN_4EA8, NA_SE_EN_BALINADE_THUNDER, 0x34, 3, 0, 0)
/* 0x3943 */ DEFINE_SFX(CHAN_415D, NA_SE_EN_BALINADE_BL_SPARK, 0x20, 2, 0, 0)
/* 0x3944 */ DEFINE_SFX(CHAN_4184, NA_SE_EN_BALINADE_BL_DEAD, 0x34, 3, 0, 0)
#if OOT_VERSION < PAL_1_0 || PLATFORM_GC
/* 0x3945 */ DEFINE_SFX(CHAN_4E86, NA_SE_EN_BALINADE_BREAK2, 0x30, 3, 0, 0)
#else
/* 0x3945 */ DEFINE_SFX(CHAN_4E86, NA_SE_EN_BALINADE_BREAK2, 0x34, 3, 0, 0)
#endif
/* 0x3946 */ DEFINE_SFX(CHAN_425D, NA_SE_EN_BALINADE_HIT_RINK, 0x38, 3, 0, 0)
/* 0x3947 */ DEFINE_SFX(CHAN_3AF4, NA_SE_EN_GANON_WAVE_GND, 0x20, 3, 0, 0)
/* 0x3948 */ DEFINE_SFX(CHAN_4F03, NA_SE_EN_AWA_BOUND, 0x14, 0, 0, 0)
/* 0x3949 */ DEFINE_SFX(CHAN_4EE0, NA_SE_EN_AWA_BREAK, 0x20, 1, 0, 0)
/* 0x394A */ DEFINE_SFX(CHAN_503D, NA_SE_EN_BROB_WAVE, 0x30, 3, 0, 0)
/* 0x394B */ DEFINE_SFX(CHAN_43F8, NA_SE_EN_NYU_DEAD, 0x40, 1, 0, 0)
/* 0x394C */ DEFINE_SFX(CHAN_3F9A, NA_SE_EN_EIER_DAMAGE, 0x38, 1, 0, 0)
/* 0x394D */ DEFINE_SFX(CHAN_3FAC, NA_SE_EN_EIER_DEAD, 0x40, 1, 0, 0)
/* 0x394E */ DEFINE_SFX(CHAN_4F17, NA_SE_EN_EIER_FLUTTER, 0x20, 0, 0, 0)
/* 0x394F */ DEFINE_SFX(CHAN_4F28, NA_SE_EN_EIER_FLY, 0x20, 0, 0, 0)
/* 0x3950 */ DEFINE_SFX(CHAN_4F5D, NA_SE_EN_SHADEST_TAIKO_LOW, 0x30, 3, 0, 0)
/* 0x3951 */ DEFINE_SFX(CHAN_4F6E, NA_SE_EN_SHADEST_TAIKO_HIGH, 0x30, 3, 0, 0)
/* 0x3952 */ DEFINE_SFX(CHAN_5055, NA_SE_EN_SHADEST_CLAP, 0x30, 3, 0, 0)
/* 0x3953 */ DEFINE_SFX(CHAN_4EBC, NA_SE_EN_SHADEST_FLY_ATTACK, 0x30, 3, 0, 0)
/* 0x3954 */ DEFINE_SFX(CHAN_4FB5, NA_SE_EN_PIHAT_UP, 0x28, 2, 0, 0)
/* 0x3955 */ DEFINE_SFX(CHAN_4F92, NA_SE_EN_PIHAT_FLY, 0x30, 0, 0, 0)
/* 0x3956 */ DEFINE_SFX(CHAN_4FC3, NA_SE_EN_PIHAT_DAMAGE, 0x38, 1, 0, 0)
/* 0x3957 */ DEFINE_SFX(CHAN_4FAF, NA_SE_EN_PIHAT_LAND, 0x28, 2, 0, 0)
/* 0x3958 */ DEFINE_SFX(CHAN_4EBC, NA_SE_EN_BALINADE_HAND_DOWN, 0x30, 3, 0, 0)
/* 0x3959 */ DEFINE_SFX(CHAN_4ECE, NA_SE_EN_BALINADE_HAND_UP, 0x30, 3, 0, 0)
/* 0x395A */ DEFINE_SFX(CHAN_4FC3, NA_SE_EN_BALINADE_HAND_DAMAGE, 0x38, 3, 0, 0)
/* 0x395B */ DEFINE_SFX(CHAN_4E0E, NA_SE_EN_BALINADE_HAND_DEAD, 0x40, 3, 0, 0)
/* 0x395C */ DEFINE_SFX(CHAN_3697, NA_SE_EN_GOMA_JR_WALK, 0x14, 0, 0, 0)
/* 0x395D */ DEFINE_SFX(CHAN_36A5, NA_SE_EN_GOMA_JR_CRY, 0x30, 0, 0, 0)
/* 0x395E */ DEFINE_SFX(CHAN_36B3, NA_SE_EN_GOMA_JR_DAM1, 0x38, 1, 0, 0)
/* 0x395F */ DEFINE_SFX(CHAN_36D2, NA_SE_EN_GOMA_JR_DAM2, 0x30, 1, 0, 0)
/* 0x3960 */ DEFINE_SFX(CHAN_36F9, NA_SE_EN_GOMA_JR_DEAD, 0x40, 1, 0, 0)
/* 0x3961 */ DEFINE_SFX(CHAN_3767, NA_SE_EN_GOMA_EGG1, 0x28, 0, 0, 0)
/* 0x3962 */ DEFINE_SFX(CHAN_35DF, NA_SE_EN_GOMA_EGG2, 0x28, 0, 0, 0)
/* 0x3963 */ DEFINE_SFX(CHAN_417E, NA_SE_EN_GANON_BODY_SPARK, 0x30, 2, 0, 0)
/* 0x3964 */ DEFINE_SFX(CHAN_5064, NA_SE_EN_SHADEST_HAND_WAVE, 0x30, 3, 0, 0)
/* 0x3965 */ DEFINE_SFX(CHAN_5089, NA_SE_EN_SHADEST_CATCH, 0x30, 3, 0, 0)
/* 0x3966 */ DEFINE_SFX(CHAN_3612, NA_SE_EN_SHADEST_LAND, 0x30, 3, 0, 0)
/* 0x3967 */ DEFINE_SFX(CHAN_5072, NA_SE_EN_SHADEST_HAND_FLY, 0x30, 3, 0, 0)
/* 0x3968 */ DEFINE_SFX(CHAN_50B1, NA_SE_EN_SHADEST_SHAKEHAND, 0x30, 0, 0, SFX_FLAG_13)
/* 0x3969 */ DEFINE_SFX(CHAN_50C2, NA_SE_EN_SHADEST_DAMAGE, 0x38, 3, 0, 0)
/* 0x396A */ DEFINE_SFX(CHAN_50E1, NA_SE_EN_SHADEST_DAMAGE_HAND, 0x38, 3, 0, 0)
/* 0x396B */ DEFINE_SFX(CHAN_50E9, NA_SE_EN_SHADEST_DISAPPEAR, 0x30, 3, 0, 0)
/* 0x396C */ DEFINE_SFX(CHAN_4A65, NA_SE_EN_GANON_CHARGE_MASIC, 0x30, 3, 0, 0)
/* 0x396D */ DEFINE_SFX(CHAN_4EA8, NA_SE_EN_GANON_THROW_BIG, 0x34, 3, 0, 0)
/* 0x396E */ DEFINE_SFX(CHAN_5259, NA_SE_EN_SHADEST_FREEZE, 0x38, 3, 0, 0)
/* 0x396F */ DEFINE_SFX(CHAN_5264, NA_SE_EN_SHADEST_DEAD, 0x40, 3, 0, 0)
/* 0x3970 */ DEFINE_SFX(CHAN_5111, NA_SE_EN_BIMOS_ROLL_HEAD, 0x10, 0, 0, 0)
/* 0x3971 */ DEFINE_SFX(CHAN_5101, NA_SE_EN_BIMOS_LAZER, 0x34, 0, 0, 0)
/* 0x3972 */ DEFINE_SFX(CHAN_5121, NA_SE_EN_BIMOS_LAZER_GND, 0x18, 0, 0, 0)
/* 0x3973 */ DEFINE_SFX(CHAN_512D, NA_SE_EN_BIMOS_AIM, 0x30, 0, 0, 0)
/* 0x3974 */ DEFINE_SFX(CHAN_514F, NA_SE_EN_BUBLEWALK_WALK, 0x14, 0, 0, 0)
/* 0x3975 */ DEFINE_SFX(CHAN_5164, NA_SE_EN_BUBLEWALK_AIM, 0x34, 0, 0, 0)
/* 0x3976 */ DEFINE_SFX(CHAN_5135, NA_SE_EN_BUBLEWALK_REVERSE, 0x28, 1, 0, 0)
/* 0x3977 */ DEFINE_SFX(CHAN_419C, NA_SE_EN_BUBLEWALK_DAMAGE, 0x38, 1, 0, 0)
/* 0x3978 */ DEFINE_SFX(CHAN_517A, NA_SE_EN_BUBLEWALK_DEAD, 0x40, 1, 0, 0)
/* 0x3979 */ DEFINE_SFX(CHAN_5196, NA_SE_EN_YUKABYUN_FLY, 0x30, 0, 0, 0)
/* 0x397A */ DEFINE_SFX(CHAN_5204, NA_SE_EN_FLAME_DAMAGE, 0x38, 3, 0, 0)
/* 0x397B */ DEFINE_SFX(CHAN_4FE8, NA_SE_EN_TWINROBA_FLY_DEMO, 0x20, 0, 0, 0)
/* 0x397C */ DEFINE_SFX(CHAN_51BA, NA_SE_EN_FLAME_KICK, 0x20, 2, 0, 0)
/* 0x397D */ DEFINE_SFX(CHAN_522F, NA_SE_EN_FLAME_RUN, 0x30, 2, 0, 0)
/* 0x397E */ DEFINE_SFX(CHAN_51C4, NA_SE_EN_FLAME_ROLL, 0x30, 3, 0, 0)
/* 0x397F */ DEFINE_SFX(CHAN_51DD, NA_SE_EN_FLAME_MAN_RUN, 0x30, 3, 0, 0)
/* 0x3980 */ DEFINE_SFX(CHAN_51EB, NA_SE_EN_FLAME_MAN_DAMAGE, 0x38, 3, 0, 0)
/* 0x3981 */ DEFINE_SFX(CHAN_5208, NA_SE_EN_FLAME_LAUGH, 0x30, 3, 0, 0)
/* 0x3982 */ DEFINE_SFX(CHAN_3BF3, NA_SE_EN_FLAME_MAN_SLIDE, 0x20, 0, 0, SFX_FLAG_13)
/* 0x3983 */ DEFINE_SFX(CHAN_4593, NA_SE_EN_FLAME_FIRE_ATTACK, 0x30, 3, 0, 0)
/* 0x3984 */ DEFINE_SFX(CHAN_5242, NA_SE_EN_PIHAT_SM_FLY, 0x30, 0, 0, 0)
/* 0x3985 */ DEFINE_SFX(CHAN_3C04, NA_SE_EN_PIHAT_SM_DEAD, 0x40, 1, 0, 0)
/* 0x3986 */ DEFINE_SFX(CHAN_38BA, NA_SE_EN_RIVA_APPEAR, 0x30, 0, 0, 0)
/* 0x3987 */ DEFINE_SFX(CHAN_38AF, NA_SE_EN_AKINDONUTS_HIDE, 0x20, 0, 0, 0)
/* 0x3988 */ DEFINE_SFX(CHAN_381C, NA_SE_EN_RIVA_DAMAGE, 0x38, 1, 0, 0)
/* 0x3989 */ DEFINE_SFX(CHAN_52E7, NA_SE_EN_RIVA_DEAD, 0x40, 1, 0, 0)
/* 0x398A */ DEFINE_SFX(CHAN_503D, NA_SE_EN_RIVA_MOVE, 0x30, 0, 0, 0)
/* 0x398B */ DEFINE_SFX(CHAN_39A9, NA_SE_EN_FLAME_MAN_SURP, 0x30, 0, 0, SFX_FLAG_13)
/* 0x398C */ DEFINE_SFX(CHAN_528C, NA_SE_EN_SHADEST_LAST, 0x30, 3, 0, 0)
/* 0x398D */ DEFINE_SFX(CHAN_52AC, NA_SE_EN_SHADEST_MOVE, 0x30, 2, 0, 0)
/* 0x398E */ DEFINE_SFX(CHAN_52CC, NA_SE_EN_SHADEST_PRAY, 0x30, 3, 0, 0)
/* 0x398F */ DEFINE_SFX(CHAN_44FE, NA_SE_EN_MGANON_ROAR, 0x30, 3, 0, 0)
/* 0x3990 */ DEFINE_SFX(CHAN_514F, NA_SE_EN_LIKE_WALK, 0x18, 0, 0, 0)
/* 0x3991 */ DEFINE_SFX(CHAN_46C7, NA_SE_EN_LIKE_UNARI, 0x28, 0, 0, 0)
/* 0x3992 */ DEFINE_SFX(CHAN_3B23, NA_SE_EN_LIKE_DRINK, 0x34, 0, 0, 0)
/* 0x3993 */ DEFINE_SFX(CHAN_3D68, NA_SE_EN_LIKE_EAT, 0x34, 0, 0, 0)
/* 0x3994 */ DEFINE_SFX(CHAN_3EF5, NA_SE_EN_LIKE_THROW, 0x34, 0, 0, 0)
/* 0x3995 */ DEFINE_SFX(CHAN_381C, NA_SE_EN_LIKE_DAMAGE, 0x38, 1, 0, 0)
/* 0x3996 */ DEFINE_SFX(CHAN_52D9, NA_SE_EN_LIKE_DEAD, 0x40, 1, 0, 0)
/* 0x3997 */ DEFINE_SFX(CHAN_53DD, NA_SE_EN_MGANON_SWORD, 0x30, 3, 0, 0)
/* 0x3998 */ DEFINE_SFX(CHAN_52F5, NA_SE_EN_GERUDOFT_ATTACK, 0x30, 0, 0, 0)
/* 0x3999 */ DEFINE_SFX(CHAN_5302, NA_SE_EN_GERUDOFT_DAMAGE, 0x38, 1, 0, 0)
/* 0x399A */ DEFINE_SFX(CHAN_530F, NA_SE_EN_GERUDOFT_DEAD, 0x40, 1, 0, 0)
/* 0x399B */ DEFINE_SFX(CHAN_4576, NA_SE_EN_MGANON_DAMAGE, 0x38, 3, 0, 0)
/* 0x399C */ DEFINE_SFX(CHAN_355F, NA_SE_EN_ANUBIS_FIRE, 0x30, 0, 0, 0)
/* 0x399D */ DEFINE_SFX(CHAN_534B, NA_SE_EN_ANUBIS_FIREBOMB, 0x30, 0, 0, 0)
/* 0x399E */ DEFINE_SFX(CHAN_550D, NA_SE_EN_MGANON_DEAD1, 0x40, 3, 0, 0)
/* 0x399F */ DEFINE_SFX(CHAN_532A, NA_SE_EN_ANUBIS_DEAD, 0x40, 2, 0, 0)
/* 0x39A0 */ DEFINE_SFX(CHAN_531C, NA_SE_EN_MUSI_LAND, 0x18, 0, 0, 0)
/* 0x39A1 */ DEFINE_SFX(CHAN_54B4, NA_SE_EN_MGANON_DEAD2, 0x44, 3, 0, 0)
/* 0x39A2 */ DEFINE_SFX(CHAN_4F3C, NA_SE_EN_EIER_ATTACK, 0x34, 0, 0, 0)
/* 0x39A3 */ DEFINE_SFX(CHAN_4F4E, NA_SE_EN_EIER_CRY, 0x18, 0, 0, 0)
/* 0x39A4 */ DEFINE_SFX(CHAN_4A22, NA_SE_EN_FREEZAD_BREATH, 0x30, 0, 0, 0)
/* 0x39A5 */ DEFINE_SFX(CHAN_5375, NA_SE_EN_FREEZAD_DAMAGE, 0x38, 1, 0, 0)
/* 0x39A6 */ DEFINE_SFX(CHAN_537F, NA_SE_EN_FREEZAD_DEAD, 0x40, 1, 0, 0)
/* 0x39A7 */ DEFINE_SFX(CHAN_5397, NA_SE_EN_DEADHAND_LAUGH, 0x18, 3, 0, 0)
/* 0x39A8 */ DEFINE_SFX(CHAN_5389, NA_SE_EN_DEADHAND_HIDE, 0x30, 3, 0, 0)
/* 0x39A9 */ DEFINE_SFX(CHAN_4321, NA_SE_EN_DEADHAND_DAMAGE, 0x38, 3, 0, 0)
/* 0x39AA */ DEFINE_SFX(CHAN_3B8E, NA_SE_EN_DEADHAND_HAND_DEAD, 0x38, 3, 0, 0)
/* 0x39AB */ DEFINE_SFX(CHAN_4353, NA_SE_EN_DEADHAND_DEAD, 0x40, 3, 0, 0)
/* 0x39AC */ DEFINE_SFX(CHAN_53D2, NA_SE_EN_IRONNACK_BREAK_PILLAR2, 0x30, 3, 0, 0)
/* 0x39AD */ DEFINE_SFX(CHAN_53B9, NA_SE_EN_IRONNACK_BREAK_PILLAR, 0x36, 3, 0, 0)
/* 0x39AE */ DEFINE_SFX(CHAN_53D6, NA_SE_EN_IRONNACK_HIT_GND, 0x34, 3, 0, 0)
/* 0x39AF */ DEFINE_SFX(CHAN_5490, NA_SE_EN_MGANON_BREATH, 0x28, 2, 2, 0)
/* 0x39B0 */ DEFINE_SFX(CHAN_5403, NA_SE_EN_TWINROBA_LAUGH, 0x30, 3, 0, 0)
/* 0x39B1 */ DEFINE_SFX(CHAN_5403, NA_SE_EN_TWINROBA_LAUGH2, 0x30, 3, 0, 0)
/* 0x39B2 */ DEFINE_SFX(CHAN_5403, NA_SE_EN_DUMMY434, 0x30, 0, 0, 0)
/* 0x39B3 */ DEFINE_SFX(CHAN_5403, NA_SE_EN_TWINROBA_SHOOT_VOICE, 0x30, 3, 0, 0)
/* 0x39B4 */ DEFINE_SFX(CHAN_5403, NA_SE_EN_TWINROBA_SENSE, 0x30, 3, 0, 0)
/* 0x39B5 */ DEFINE_SFX(CHAN_5403, NA_SE_EN_TWINROBA_DIE, 0x30, 3, 0, 0)
/* 0x39B6 */ DEFINE_SFX(CHAN_5403, NA_SE_EN_DUMMY438, 0x30, 0, 0, 0)
/* 0x39B7 */ DEFINE_SFX(CHAN_5403, NA_SE_EN_TWINROBA_YOUNG_DAMAGE2, 0x30, 0, 0, SFX_FLAG_13)
/* 0x39B8 */ DEFINE_SFX(CHAN_5403, NA_SE_EN_TWINROBA_YOUNG_SHOOTVC, 0x30, 0, 0, SFX_FLAG_13)
/* 0x39B9 */ DEFINE_SFX(CHAN_5403, NA_SE_EN_TWINROBA_YOUNG_LAUGH, 0x30, 0, 0, SFX_FLAG_13)
/* 0x39BA */ DEFINE_SFX(CHAN_5403, NA_SE_EN_DUMMY442, 0x30, 0, 0, 0)
/* 0x39BB */ DEFINE_SFX(CHAN_5403, NA_SE_EN_TWINROBA_YOUNG_WINK, 0x30, 0, 0, SFX_FLAG_13)
/* 0x39BC */ DEFINE_SFX(CHAN_5403, NA_SE_EN_DUMMY444, 0x30, 0, 0, 0)
/* 0x39BD */ DEFINE_SFX(CHAN_5403, NA_SE_EN_DUMMY445, 0x30, 0, 0, 0)
/* 0x39BE */ DEFINE_SFX(CHAN_5403, NA_SE_EN_IRONNACK_DAMAGE, 0x28, 3, 0, 0)
/* 0x39BF */ DEFINE_SFX(CHAN_5403, NA_SE_EN_IRONNACK_DASH, 0x30, 3, 0, 0)
/* 0x39C0 */ DEFINE_SFX(CHAN_5403, NA_SE_EN_IRONNACK_DEAD, 0x40, 3, 0, 0)
/* 0x39C1 */ DEFINE_SFX(CHAN_5403, NA_SE_EN_IRONNACK_PULLOUT, 0x30, 3, 0, 0)
/* 0x39C2 */ DEFINE_SFX(CHAN_5403, NA_SE_EN_IRONNACK_WAKEUP, 0x30, 3, 0, 0)
/* 0x39C3 */ DEFINE_SFX(CHAN_5403, NA_SE_EN_DUMMY451, 0x30, 0, 0, 0)
/* 0x39C4 */ DEFINE_SFX(CHAN_5403, NA_SE_EN_DUMMY452, 0x30, 0, 0, 0)
/* 0x39C5 */ DEFINE_SFX(CHAN_5403, NA_SE_EN_DUMMY453, 0x30, 0, 0, 0)
/* 0x39C6 */ DEFINE_SFX(CHAN_5403, NA_SE_EN_GERUDOFT_BREATH, 0x20, 0, 0, 0)
/* 0x39C7 */ DEFINE_SFX(CHAN_5403, NA_SE_EN_GANON_LAUGH, 0x20, 3, 0, 0)
/* 0x39C8 */ DEFINE_SFX(CHAN_5403, NA_SE_EN_GANON_VOICE_DEMO, 0x30, 3, 0, 0)
/* 0x39C9 */ DEFINE_SFX(CHAN_5403, NA_SE_EN_GANON_THROW, 0x30, 3, 0, 0)
/* 0x39CA */ DEFINE_SFX(CHAN_5403, NA_SE_EN_GANON_AT_RETURN, 0x30, 3, 0, 0)
/* 0x39CB */ DEFINE_SFX(CHAN_5403, NA_SE_EN_GANON_HIT_GND, 0x30, 3, 0, 0)
/* 0x39CC */ DEFINE_SFX(CHAN_5403, NA_SE_EN_GANON_DAMAGE1, 0x38, 3, 0, 0)
/* 0x39CD */ DEFINE_SFX(CHAN_5403, NA_SE_EN_GANON_DAMAGE2, 0x38, 3, 0, 0)
/* 0x39CE */ DEFINE_SFX(CHAN_5403, NA_SE_EN_GANON_DOWN, 0x20, 3, 0, 0)
/* 0x39CF */ DEFINE_SFX(CHAN_5403, NA_SE_EN_GANON_RESTORE, 0x30, 3, 0, 0)
/* 0x39D0 */ DEFINE_SFX(CHAN_5403, NA_SE_EN_GANON_DEAD, 0x44, 3, 0, 0)
/* 0x39D1 */ DEFINE_SFX(CHAN_5403, NA_SE_EN_GANON_BREATH, 0x30, 3, 2, 0)
/* 0x39D2 */ DEFINE_SFX(CHAN_5403, NA_SE_EN_GANON_TOKETU, 0x30, 3, 0, 0)
/* 0x39D3 */ DEFINE_SFX(CHAN_5403, NA_SE_EN_GANON_CASBREAK, 0x30, 3, 0, 0)
/* 0x39D4 */ DEFINE_SFX(CHAN_5403, NA_SE_EN_GANON_BIGMASIC, 0x34, 3, 0, 0)
/* 0x39D5 */ DEFINE_SFX(CHAN_5403, NA_SE_EN_GANON_DARKWAVE, 0x30, 3, 0, 0)
/* 0x39D6 */ DEFINE_SFX(CHAN_5403, NA_SE_EN_FANTOM_ST_LAUGH, 0x30, 3, 0, 0)
/* 0x39D7 */ DEFINE_SFX(CHAN_3612, NA_SE_EN_MGANON_WALK, 0x20, 2, 0, 0)
/* 0x39D8 */ DEFINE_SFX(CHAN_5389, NA_SE_EN_MGANON_STAND, 0x30, 3, 0, 0)
/* 0x39D9 */ DEFINE_SFX(CHAN_55FD, NA_SE_EN_MGANON_UNARI, 0x20, 3, 0, 0)
/* 0x39DA */ DEFINE_SFX(CHAN_5615, NA_SE_EN_STALGOLD_ROLL, 0x30, 0, 0, 0)
/* 0x39DB */ DEFINE_SFX(CHAN_503D, NA_SE_EN_KDOOR_WAVE, 0x30, 2, 0, 0)
/* 0x39DC */ DEFINE_SFX(CHAN_39FE, NA_SE_EN_KDOOR_HIT, 0x40, 2, 0, 0)
/* 0x39DD */ DEFINE_SFX(CHAN_53D2, NA_SE_EN_KDOOR_BREAK, 0x40, 3, 0, 0)
/* 0x39DE */ DEFINE_SFX(CHAN_39FE, NA_SE_EN_KDOOR_HIT_GND, 0x34, 2, 0, 0)
/* 0x39DF */ DEFINE_SFX(CHAN_563C, NA_SE_EN_MGANON_SWDIMP, 0x30, 3, 0, 0)
/* 0x39E0 */ DEFINE_SFX(CHAN_4EBC, NA_SE_EN_STALTU_WAVE, 0x30, 0, 0, 0)
/* 0x39E1 */ DEFINE_SFX(CHAN_564F, NA_SE_EN_STALTU_DOWN_SET, 0x30, 0, 0, 0)
/* 0x39E2 */ DEFINE_SFX(CHAN_4CA7, NA_SE_EN_DUMMY482, 0x30, 1, 0, 0)
/* 0x39E3 */ DEFINE_SFX(CHAN_3648, NA_SE_EN_GOMA_BJR_LAND, 0x34, 3, 0, 0)
/* 0x39E4 */ DEFINE_SFX(CHAN_38D1, NA_SE_EN_GOMA_BJR_LAND2, 0x24, 3, 0, 0)
/* 0x39E5 */ DEFINE_SFX(CHAN_3648, NA_SE_EN_GOMA_JR_LAND, 0x34, 1, 0, 0)
/* 0x39E6 */ DEFINE_SFX(CHAN_38D1, NA_SE_EN_GOMA_JR_LAND2, 0x20, 0, 0, 0)
/* 0x39E7 */ DEFINE_SFX(CHAN_5659, NA_SE_EN_TWINROBA_FIGHT, 0x30, 3, 0, 0)
/* 0x39E8 */ DEFINE_SFX(CHAN_567A, NA_SE_EN_PO_BIG_CRY, 0x30, 0, 0, 0)
/* 0x39E9 */ DEFINE_SFX(CHAN_388D, NA_SE_EN_MUSI_SINK, 0x08, 1, 0, 0)
/* 0x39EA */ DEFINE_SFX(CHAN_3FE8, NA_SE_EN_STALGOLD_UP_CRY, 0x30, 1, 0, 0)
/* 0x39EB */ DEFINE_SFX(CHAN_568E, NA_SE_EN_GOLON_CRY, 0x30, 3, 0, 0)
/* 0x39EC */ DEFINE_SFX(CHAN_381C, NA_SE_EN_MOFER_CORE_DAMAGE, 0x38, 3, 0, 0)
/* 0x39ED */ DEFINE_SFX(CHAN_43EA, NA_SE_EN_DAIOCTA_LAND_WATER, 0x20, 0, 0, SFX_FLAG_13)
/* 0x39EE */ DEFINE_SFX(CHAN_5389, NA_SE_EN_RIVA_BIG_APPEAR, 0x34, 3, 0, 0)
/* 0x39EF */ DEFINE_SFX(CHAN_3612, NA_SE_EN_MONBLIN_HAM_LAND, 0x34, 0, 0, SFX_FLAG_13)
/* 0x39F0 */ DEFINE_SFX(CHAN_3895, NA_SE_EN_MUSI_WALK, 0x08, 0, 0, 0)
/* 0x39F1 */ DEFINE_SFX(CHAN_4A22, NA_SE_EN_MIMICK_BREATH, 0x40, 3, 0, 0)
/* 0x39F2 */ DEFINE_SFX(CHAN_3C8C, NA_SE_EN_STALWALL_LAUGH, 0x34, 3, 0, 0)
