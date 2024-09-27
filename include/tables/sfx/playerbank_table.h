#include "versions.h"
/**
 * Sfx Player Bank
 *
 * DEFINE_SFX should be used for all sfx define in the player bank from sequence 0
 *    - Argument 0: Channel name for sequence 0
 *    - Argument 1: Enum value for this sfx
 *    - Argument 2: Importance for deciding which sfx to prioritize. Higher values have greater importance
 *    - Argument 3: Slows the decay of volume with distance (a 2-bit number ranging from 0-3)
 *    - Argument 4: Applies increasingly random offsets to frequency (a 2-bit number ranging from 0-3)
 *    - Argument 5: Various flags to add properties to the sfx
 */
/* 0x800 */ DEFINE_SFX(CHAN_02A1, NA_SE_PL_WALK_GROUND, 0x20, 0, 2, SFX_FLAG_10)
/* 0x801 */ DEFINE_SFX(CHAN_02BD, NA_SE_PL_WALK_SAND, 0x20, 0, 2, SFX_FLAG_10)
/* 0x802 */ DEFINE_SFX(CHAN_02C9, NA_SE_PL_WALK_CONCRETE, 0x20, 0, 2, SFX_FLAG_10)
/* 0x803 */ DEFINE_SFX(CHAN_02D8, NA_SE_PL_WALK_DIRT, 0x20, 0, 2, SFX_FLAG_10)
/* 0x804 */ DEFINE_SFX(CHAN_02E8, NA_SE_PL_WALK_WATER0, 0x20, 0, 1, SFX_FLAG_10)
/* 0x805 */ DEFINE_SFX(CHAN_02F4, NA_SE_PL_WALK_WATER1, 0x20, 0, 1, SFX_FLAG_10)
/* 0x806 */ DEFINE_SFX(CHAN_0300, NA_SE_PL_WALK_WATER2, 0x20, 0, 1, SFX_FLAG_10)
/* 0x807 */ DEFINE_SFX(CHAN_0313, NA_SE_PL_WALK_MAGMA, 0x20, 0, 1, SFX_FLAG_10)
/* 0x808 */ DEFINE_SFX(CHAN_032D, NA_SE_PL_WALK_GRASS, 0x20, 0, 2, SFX_FLAG_10)
/* 0x809 */ DEFINE_SFX(CHAN_033D, NA_SE_PL_WALK_IRON, 0x20, 0, 1, SFX_FLAG_10)
/* 0x80A */ DEFINE_SFX(CHAN_0349, NA_SE_PL_WALK_LADDER, 0x20, 0, 2, SFX_FLAG_10)
/* 0x80B */ DEFINE_SFX(CHAN_0355, NA_SE_PL_WALK_GLASS, 0x20, 0, 0, SFX_FLAG_10)
/* 0x80C */ DEFINE_SFX(CHAN_0361, NA_SE_PL_WALK_WALL, 0x20, 0, 0, SFX_FLAG_10)
/* 0x80D */ DEFINE_SFX(CHAN_0376, NA_SE_PL_WALK_HEAVYBOOTS, 0x20, 0, 0, SFX_FLAG_10)
/* 0x80E */ DEFINE_SFX(CHAN_0380, NA_SE_PL_DUMMY_14, 0x20, 0, 0, SFX_FLAG_10)
/* 0x80F */ DEFINE_SFX(CHAN_038A, NA_SE_PL_WALK_ICE, 0x20, 0, 0, SFX_FLAG_10)
/* 0x810 */ DEFINE_SFX(CHAN_0396, NA_SE_PL_JUMP, 0x30, 0, 0, SFX_FLAG_10)
/* 0x811 */ DEFINE_SFX(CHAN_03C5, NA_SE_PL_JUMP_SAND, 0x30, 0, 0, SFX_FLAG_10)
/* 0x812 */ DEFINE_SFX(CHAN_03D9, NA_SE_PL_JUMP_CONCRETE, 0x30, 0, 0, SFX_FLAG_10)
/* 0x813 */ DEFINE_SFX(CHAN_03F2, NA_SE_PL_JUMP_DIRT, 0x30, 0, 0, SFX_FLAG_10)
/* 0x814 */ DEFINE_SFX(CHAN_0406, NA_SE_PL_JUMP_WATER0, 0x30, 0, 0, SFX_FLAG_10)
/* 0x815 */ DEFINE_SFX(CHAN_0418, NA_SE_PL_JUMP_WATER1, 0x30, 0, 0, SFX_FLAG_10)
/* 0x816 */ DEFINE_SFX(CHAN_042A, NA_SE_PL_JUMP_WATER2, 0x30, 0, 0, SFX_FLAG_10)
/* 0x817 */ DEFINE_SFX(CHAN_0443, NA_SE_PL_JUMP_MAGMA, 0x30, 0, 0, SFX_FLAG_10)
/* 0x818 */ DEFINE_SFX(CHAN_0465, NA_SE_PL_JUMP_GRASS, 0x30, 0, 0, SFX_FLAG_10)
/* 0x819 */ DEFINE_SFX(CHAN_0479, NA_SE_PL_JUMP_IRON, 0x30, 0, 0, SFX_FLAG_10)
/* 0x81A */ DEFINE_SFX(CHAN_048D, NA_SE_PL_JUMP_LADDER, 0x30, 0, 0, SFX_FLAG_10)
/* 0x81B */ DEFINE_SFX(CHAN_049F, NA_SE_PL_JUMP_GLASS, 0x30, 0, 0, SFX_FLAG_10)
/* 0x81C */ DEFINE_SFX(CHAN_02A1, NA_SE_PL_DUMMY28, 0x30, 0, 0, SFX_FLAG_10)
/* 0x81D */ DEFINE_SFX(CHAN_04B1, NA_SE_PL_JUMP_HEAVYBOOTS, 0x30, 0, 0, SFX_FLAG_10)
/* 0x81E */ DEFINE_SFX(CHAN_04D8, NA_SE_PL_DUMMY30, 0x30, 0, 0, SFX_FLAG_10)
/* 0x81F */ DEFINE_SFX(CHAN_04EA, NA_SE_PL_JUMP_ICE, 0x30, 0, 0, SFX_FLAG_10)
/* 0x820 */ DEFINE_SFX(CHAN_04FE, NA_SE_PL_LAND, 0x40, 0, 1, SFX_FLAG_10)
/* 0x821 */ DEFINE_SFX(CHAN_052D, NA_SE_PL_LAND_SAND, 0x40, 0, 1, SFX_FLAG_10)
/* 0x822 */ DEFINE_SFX(CHAN_053F, NA_SE_PL_LAND_CONCRETE, 0x40, 0, 1, SFX_FLAG_10)
/* 0x823 */ DEFINE_SFX(CHAN_0558, NA_SE_PL_LAND_DIRT, 0x40, 0, 1, SFX_FLAG_10)
/* 0x824 */ DEFINE_SFX(CHAN_056C, NA_SE_PL_LAND_WATER0, 0x40, 0, 1, SFX_FLAG_10)
/* 0x825 */ DEFINE_SFX(CHAN_057E, NA_SE_PL_LAND_WATER1, 0x40, 0, 1, SFX_FLAG_10)
/* 0x826 */ DEFINE_SFX(CHAN_0590, NA_SE_PL_LAND_WATER2, 0x40, 0, 1, SFX_FLAG_10)
/* 0x827 */ DEFINE_SFX(CHAN_05A9, NA_SE_PL_LAND_MAGMA, 0x40, 0, 1, SFX_FLAG_10)
/* 0x828 */ DEFINE_SFX(CHAN_05C9, NA_SE_PL_LAND_GRASS, 0x40, 0, 1, SFX_FLAG_10)
/* 0x829 */ DEFINE_SFX(CHAN_05DD, NA_SE_PL_LAND_IRON, 0x40, 0, 1, SFX_FLAG_10)
/* 0x82A */ DEFINE_SFX(CHAN_05F1, NA_SE_PL_LAND_LADDER, 0x40, 0, 1, SFX_FLAG_10)
/* 0x82B */ DEFINE_SFX(CHAN_0603, NA_SE_PL_LAND_GLASS, 0x40, 0, 1, SFX_FLAG_10)
/* 0x82C */ DEFINE_SFX(CHAN_02A1, NA_SE_PL_DUMMY_44, 0x40, 0, 1, SFX_FLAG_10)
/* 0x82D */ DEFINE_SFX(CHAN_0615, NA_SE_PL_LAND_HEAVYBOOTS, 0x40, 0, 1, SFX_FLAG_10)
/* 0x82E */ DEFINE_SFX(CHAN_0622, NA_SE_PL_DUMMY_46, 0x40, 0, 1, SFX_FLAG_10)
/* 0x82F */ DEFINE_SFX(CHAN_0632, NA_SE_PL_LAND_ICE, 0x40, 0, 1, SFX_FLAG_10)
/* 0x830 */ DEFINE_SFX(CHAN_0644, NA_SE_PL_SLIPDOWN, 0x30, 0, 2, 0)
/* 0x831 */ DEFINE_SFX(CHAN_0655, NA_SE_PL_CLIMB_CLIFF, 0x30, 0, 0, 0)
/* 0x832 */ DEFINE_SFX(CHAN_0662, NA_SE_PL_SIT_ON_HORSE, 0x30, 0, 0, 0)
/* 0x833 */ DEFINE_SFX(CHAN_066F, NA_SE_PL_GET_OFF_HORSE, 0x30, 0, 0, 0)
/* 0x834 */ DEFINE_SFX(CHAN_0680, NA_SE_PL_TAKE_OUT_SHIELD, 0x30, 0, 0, SFX_FLAG_10)
/* 0x835 */ DEFINE_SFX(CHAN_069D, NA_SE_PL_CHANGE_ARMS, 0x30, 0, 0, SFX_FLAG_10)
/* 0x836 */ DEFINE_SFX(CHAN_06BF, NA_SE_PL_CATCH_BOOMERANG, 0x30, 0, 0, SFX_FLAG_10)
/* 0x837 */ DEFINE_SFX(CHAN_06CD, NA_SE_PL_DUMMY_55, 0x30, 0, 1, 0)
/* 0x838 */ DEFINE_SFX(CHAN_06E1, NA_SE_PL_DUMMY_56, 0x30, 0, 1, 0)
/* 0x839 */ DEFINE_SFX(CHAN_06F2, NA_SE_PL_SWIM, 0x30, 0, 2, 0)
/* 0x83A */ DEFINE_SFX(CHAN_0706, NA_SE_PL_THROW, 0x30, 0, 0, SFX_FLAG_10)
/* 0x83B */ DEFINE_SFX(CHAN_0714, NA_SE_PL_BODY_BOUND, 0x30, 0, 0, SFX_FLAG_10)
/* 0x83C */ DEFINE_SFX(CHAN_0731, NA_SE_PL_ROLL, 0x40, 0, 0, SFX_FLAG_10)
/* 0x83D */ DEFINE_SFX(CHAN_0743, NA_SE_PL_SKIP, 0x30, 0, 0, SFX_FLAG_10)
/* 0x83E */ DEFINE_SFX(CHAN_0753, NA_SE_PL_BODY_HIT, 0x30, 2, 0, SFX_FLAG_10)
/* 0x83F */ DEFINE_SFX(CHAN_076A, NA_SE_PL_DAMAGE, 0x30, 0, 0, SFX_FLAG_10)
/* 0x840 */ DEFINE_SFX(CHAN_0796, NA_SE_PL_SLIP, 0x30, 0, 1, 0)
/* 0x841 */ DEFINE_SFX(CHAN_07A0, NA_SE_PL_SLIP_SAND, 0x30, 0, 1, 0)
/* 0x842 */ DEFINE_SFX(CHAN_07A7, NA_SE_PL_SLIP_CONCRETE, 0x30, 0, 1, 0)
/* 0x843 */ DEFINE_SFX(CHAN_07AE, NA_SE_PL_SLIP_DIRT, 0x30, 0, 1, 0)
/* 0x844 */ DEFINE_SFX(CHAN_07B5, NA_SE_PL_SLIP_WATER0, 0x30, 0, 1, 0)
/* 0x845 */ DEFINE_SFX(CHAN_07BC, NA_SE_PL_SLIP_WATER1, 0x30, 0, 1, 0)
/* 0x846 */ DEFINE_SFX(CHAN_07C3, NA_SE_PL_SLIP_WATER2, 0x30, 0, 1, 0)
/* 0x847 */ DEFINE_SFX(CHAN_07CA, NA_SE_PL_SLIP_MAGMA, 0x30, 0, 1, 0)
/* 0x848 */ DEFINE_SFX(CHAN_07D1, NA_SE_PL_SLIP_GRASS, 0x30, 0, 1, 0)
/* 0x849 */ DEFINE_SFX(CHAN_07D8, NA_SE_PL_SLIP_IRON, 0x30, 0, 1, 0)
/* 0x84A */ DEFINE_SFX(CHAN_07DF, NA_SE_PL_SLIP_LADDER, 0x30, 0, 1, 0)
/* 0x84B */ DEFINE_SFX(CHAN_07E6, NA_SE_PL_SLIP_GLASS, 0x30, 0, 1, 0)
/* 0x84C */ DEFINE_SFX(CHAN_02E8, NA_SE_PL_DUMMY76, 0x30, 0, 0, 0)
/* 0x84D */ DEFINE_SFX(CHAN_07DF, NA_SE_PL_SLIP_HEAVYBOOTS, 0x30, 0, 0, 0)
/* 0x84E */ DEFINE_SFX(CHAN_07ED, NA_SE_PL_DUMMY78, 0x30, 0, 0, 0)
/* 0x84F */ DEFINE_SFX(CHAN_07A7, NA_SE_PL_SLIP_ICE, 0x30, 0, 0, 0)
/* 0x850 */ DEFINE_SFX(CHAN_07F4, NA_SE_PL_BOUND, 0x80, 0, 0, 0)
/* 0x851 */ DEFINE_SFX(CHAN_0811, NA_SE_PL_BOUND_SAND, 0x80, 0, 0, 0)
/* 0x852 */ DEFINE_SFX(CHAN_081B, NA_SE_PL_BOUND_CONCRETE, 0x80, 0, 0, 0)
/* 0x853 */ DEFINE_SFX(CHAN_0825, NA_SE_PL_BOUND_DIRT, 0x80, 0, 0, 0)
/* 0x854 */ DEFINE_SFX(CHAN_082F, NA_SE_PL_BOUND_WATER0, 0x80, 0, 0, 0)
/* 0x855 */ DEFINE_SFX(CHAN_083B, NA_SE_PL_BOUND_WATER1, 0x80, 0, 0, 0)
/* 0x856 */ DEFINE_SFX(CHAN_0845, NA_SE_PL_BOUND_WATER2, 0x80, 0, 0, 0)
/* 0x857 */ DEFINE_SFX(CHAN_084F, NA_SE_PL_BOUND_MAGMA, 0x80, 0, 0, 0)
/* 0x858 */ DEFINE_SFX(CHAN_0859, NA_SE_PL_BOUND_GRASS, 0x80, 0, 0, 0)
/* 0x859 */ DEFINE_SFX(CHAN_0863, NA_SE_PL_BOUND_IRON, 0x80, 0, 0, 0)
/* 0x85A */ DEFINE_SFX(CHAN_086D, NA_SE_PL_BOUND_LADDER, 0x80, 0, 0, 0)
/* 0x85B */ DEFINE_SFX(CHAN_0877, NA_SE_PL_BOUND_WOOD, 0x80, 0, 0, 0)
/* 0x85C */ DEFINE_SFX(CHAN_02A1, NA_SE_PL_DUMMY_92, 0x80, 0, 0, 0)
/* 0x85D */ DEFINE_SFX(CHAN_086D, NA_SE_PL_BOUND_HEAVYBOOTS, 0x80, 0, 0, 0)
/* 0x85E */ DEFINE_SFX(CHAN_0882, NA_SE_PL_DUMMY_94, 0x80, 0, 0, 0)
/* 0x85F */ DEFINE_SFX(CHAN_088D, NA_SE_PL_BOUND_ICE, 0x80, 0, 0, 0)
/* 0x860 */ DEFINE_SFX(CHAN_0376, NA_SE_PL_DUMMY_96, 0x30, 0, 0, 0)
/* 0x861 */ DEFINE_SFX(CHAN_04B1, NA_SE_PL_DUMMY_97, 0x30, 0, 0, 0)
/* 0x862 */ DEFINE_SFX(CHAN_0615, NA_SE_PL_DUMMY_98, 0x30, 0, 0, 0)
/* 0x863 */ DEFINE_SFX(CHAN_0898, NA_SE_PL_FACE_UP, 0x30, 0, 0, 0)
/* 0x864 */ DEFINE_SFX(CHAN_08B7, NA_SE_PL_DIVE_BUBBLE, 0x30, 0, 0, 0)
/* 0x865 */ DEFINE_SFX(CHAN_08CA, NA_SE_PL_MOVE_BUBBLE, 0x30, 0, 0, 0)
/* 0x866 */ DEFINE_SFX(CHAN_08DC, NA_SE_PL_METALEFFECT_KID, 0x30, 0, 0, SFX_FLAG_10)
/* 0x867 */ DEFINE_SFX(CHAN_08E0, NA_SE_PL_METALEFFECT_ADULT, 0x30, 0, 0, SFX_FLAG_10)
/* 0x868 */ DEFINE_SFX(CHAN_08E4, NA_SE_PL_SPARK, 0x30, 0, 0, 0)
/* 0x869 */ DEFINE_SFX(CHAN_090A, NA_SE_PL_PULL_UP_PLANT, 0x30, 0, 0, 0)
/* 0x86A */ DEFINE_SFX(CHAN_091C, NA_SE_PL_PULL_UP_ROCK, 0x30, 0, 0, 0)
/* 0x86B */ DEFINE_SFX(CHAN_0940, NA_SE_PL_IN_BUBBLE, 0x30, 0, 0, 0)
/* 0x86C */ DEFINE_SFX(CHAN_0950, NA_SE_PL_PULL_UP_BIGROCK, 0x30, 3, 0, 0)
/* 0x86D */ DEFINE_SFX(CHAN_0959, NA_SE_PL_SWORD_CHARGE, 0x30, 0, 0, 0)
/* 0x86E */ DEFINE_SFX(CHAN_096A, NA_SE_PL_FREEZE, 0x30, 0, 0, 0)
/* 0x86F */ DEFINE_SFX(CHAN_0989, NA_SE_PL_PULL_UP_POT, 0x30, 0, 0, 0)
/* 0x870 */ DEFINE_SFX(CHAN_09A0, NA_SE_PL_KNOCK, 0x30, 0, 0, 0)
/* 0x871 */ DEFINE_SFX(CHAN_09AE, NA_SE_PL_CALM_HIT, 0x30, 0, 2, 0)
/* 0x872 */ DEFINE_SFX(CHAN_09BC, NA_SE_PL_CALM_PAT, 0x30, 0, 0, 0)
/* 0x873 */ DEFINE_SFX(CHAN_09CA, NA_SE_PL_SUBMERGE, 0x30, 0, 0, 0)
/* 0x874 */ DEFINE_SFX(CHAN_09E9, NA_SE_PL_FREEZE_S, 0x30, 3, 0, 0)
/* 0x875 */ DEFINE_SFX(CHAN_0A06, NA_SE_PL_ICE_BROKEN, 0x30, 1, 0, 0)
/* 0x876 */ DEFINE_SFX(CHAN_0A15, NA_SE_PL_SLIP_ICE_LELEL, 0x30, 0, 0, 0)
/* 0x877 */ DEFINE_SFX(CHAN_0A23, NA_SE_PL_PUT_OUT_ITEM, 0x30, 0, 0, 0)
/* 0x878 */ DEFINE_SFX(CHAN_0A36, NA_SE_PL_PULL_UP_WOODBOX, 0x30, 0, 0, 0)
/* 0x879 */ DEFINE_SFX(CHAN_0A40, NA_SE_PL_MAGIC_FIRE, 0x30, 0, 0, 0)
/* 0x87A */ DEFINE_SFX(CHAN_0A7B, NA_SE_PL_MAGIC_WIND_NORMAL, 0x30, 0, 0, 0)
/* 0x87B */ DEFINE_SFX(CHAN_0ABC, NA_SE_PL_MAGIC_WIND_WARP, 0x30, 0, 0, SFX_FLAG_13)
/* 0x87C */ DEFINE_SFX(CHAN_0AD8, NA_SE_PL_MAGIC_SOUL_NORMAL, 0x30, 0, 0, SFX_FLAG_11 | SFX_FLAG_10)
/* 0x87D */ DEFINE_SFX(CHAN_0B08, NA_SE_PL_ARROW_CHARGE_FIRE, 0x30, 0, 0, SFX_FLAG_10)
/* 0x87E */ DEFINE_SFX(CHAN_0B37, NA_SE_PL_ARROW_CHARGE_ICE, 0x30, 0, 0, SFX_FLAG_10)
/* 0x87F */ DEFINE_SFX(CHAN_0B5D, NA_SE_PL_ARROW_CHARGE_LIGHT, 0x30, 0, 0, SFX_FLAG_10)
/* 0x880 */ DEFINE_SFX(CHAN_0B79, NA_SE_PL_DUMMY_128, 0x20, 0, 2, 0)
/* 0x881 */ DEFINE_SFX(CHAN_0B96, NA_SE_PL_DUMMY_129, 0x20, 0, 2, 0)
/* 0x882 */ DEFINE_SFX(CHAN_0B9A, NA_SE_PL_DUMMY_130, 0x20, 0, 2, 0)
/* 0x883 */ DEFINE_SFX(CHAN_0B9E, NA_SE_PL_PULL_UP_RUTO, 0x20, 0, 2, 0)
/* 0x884 */ DEFINE_SFX(CHAN_0BA2, NA_SE_PL_DUMMY_132, 0x20, 0, 1, 0)
/* 0x885 */ DEFINE_SFX(CHAN_0BA6, NA_SE_PL_DUMMY_133, 0x20, 0, 1, 0)
/* 0x886 */ DEFINE_SFX(CHAN_0BAA, NA_SE_PL_DUMMY_134, 0x20, 0, 1, 0)
/* 0x887 */ DEFINE_SFX(CHAN_0BAE, NA_SE_PL_DUMMY_135, 0x20, 0, 1, 0)
/* 0x888 */ DEFINE_SFX(CHAN_0BB2, NA_SE_PL_DUMMY_136, 0x20, 0, 2, 0)
/* 0x889 */ DEFINE_SFX(CHAN_0BB6, NA_SE_PL_DUMMY_137, 0x20, 0, 2, 0)
/* 0x88A */ DEFINE_SFX(CHAN_0BBA, NA_SE_PL_DUMMY_138, 0x20, 0, 2, 0)
/* 0x88B */ DEFINE_SFX(CHAN_0BBE, NA_SE_PL_DUMMY_139, 0x20, 0, 0, 0)
/* 0x88C */ DEFINE_SFX(CHAN_0BC2, NA_SE_PL_DUMMY_140, 0x20, 0, 0, 0)
/* 0x88D */ DEFINE_SFX(CHAN_0376, NA_SE_PL_DUMMY_141, 0x20, 0, 0, 0)
/* 0x88E */ DEFINE_SFX(CHAN_02A1, NA_SE_PL_DUMMY_142, 0x20, 0, 0, 0)
/* 0x88F */ DEFINE_SFX(CHAN_0BC9, NA_SE_PL_DUMMY_143, 0x20, 0, 0, 0)
/* 0x890 */ DEFINE_SFX(CHAN_0BCD, NA_SE_PL_DUMMY_144, 0x30, 0, 0, 0)
/* 0x891 */ DEFINE_SFX(CHAN_0BED, NA_SE_PL_DUMMY_145, 0x30, 0, 0, 0)
/* 0x892 */ DEFINE_SFX(CHAN_0BF4, NA_SE_PL_DUMMY_146, 0x30, 0, 0, 0)
/* 0x893 */ DEFINE_SFX(CHAN_0BFB, NA_SE_PL_DUMMY_147, 0x30, 0, 0, 0)
/* 0x894 */ DEFINE_SFX(CHAN_0C02, NA_SE_PL_DUMMY_148, 0x30, 0, 0, 0)
/* 0x895 */ DEFINE_SFX(CHAN_0C09, NA_SE_PL_DUMMY_149, 0x30, 0, 0, 0)
/* 0x896 */ DEFINE_SFX(CHAN_0C0D, NA_SE_PL_DUMMY_150, 0x30, 0, 0, 0)
/* 0x897 */ DEFINE_SFX(CHAN_0C14, NA_SE_PL_DUMMY_151, 0x30, 0, 0, 0)
/* 0x898 */ DEFINE_SFX(CHAN_0C1B, NA_SE_PL_DUMMY_152, 0x30, 0, 0, 0)
/* 0x899 */ DEFINE_SFX(CHAN_0C22, NA_SE_PL_DUMMY_153, 0x30, 0, 0, 0)
/* 0x89A */ DEFINE_SFX(CHAN_0C29, NA_SE_PL_DUMMY_154, 0x30, 0, 0, 0)
/* 0x89B */ DEFINE_SFX(CHAN_0C30, NA_SE_PL_DUMMY_155, 0x30, 0, 0, 0)
/* 0x89C */ DEFINE_SFX(CHAN_02A1, NA_SE_PL_DUMMY_156, 0x30, 0, 0, 0)
/* 0x89D */ DEFINE_SFX(CHAN_04B1, NA_SE_PL_DUMMY_157, 0x30, 0, 0, 0)
/* 0x89E */ DEFINE_SFX(CHAN_02A1, NA_SE_PL_DUMMY_158, 0x30, 0, 0, 0)
/* 0x89F */ DEFINE_SFX(CHAN_0C37, NA_SE_PL_DUMMY_159, 0x30, 0, 0, 0)
/* 0x8A0 */ DEFINE_SFX(CHAN_0C3E, NA_SE_PL_DUMMY_160, 0x40, 0, 0, 0)
/* 0x8A1 */ DEFINE_SFX(CHAN_0C5C, NA_SE_PL_DUMMY_161, 0x40, 0, 0, 0)
/* 0x8A2 */ DEFINE_SFX(CHAN_0C63, NA_SE_PL_DUMMY_162, 0x40, 0, 0, 0)
/* 0x8A3 */ DEFINE_SFX(CHAN_0C6A, NA_SE_PL_DUMMY_163, 0x40, 0, 0, 0)
/* 0x8A4 */ DEFINE_SFX(CHAN_0C71, NA_SE_PL_DUMMY_164, 0x40, 0, 0, 0)
/* 0x8A5 */ DEFINE_SFX(CHAN_0C78, NA_SE_PL_DUMMY_165, 0x40, 0, 0, 0)
/* 0x8A6 */ DEFINE_SFX(CHAN_0C7C, NA_SE_PL_DUMMY_166, 0x40, 0, 0, 0)
/* 0x8A7 */ DEFINE_SFX(CHAN_0C83, NA_SE_PL_DUMMY_167, 0x40, 0, 0, 0)
/* 0x8A8 */ DEFINE_SFX(CHAN_0C8A, NA_SE_PL_DUMMY_168, 0x40, 0, 0, 0)
/* 0x8A9 */ DEFINE_SFX(CHAN_0C91, NA_SE_PL_DUMMY_169, 0x40, 0, 0, 0)
/* 0x8AA */ DEFINE_SFX(CHAN_0C98, NA_SE_PL_DUMMY_170, 0x40, 0, 0, 0)
/* 0x8AB */ DEFINE_SFX(CHAN_0C9F, NA_SE_PL_DUMMY_171, 0x40, 0, 0, 0)
/* 0x8AC */ DEFINE_SFX(CHAN_0B79, NA_SE_PL_DUMMY_172, 0x40, 0, 0, 0)
/* 0x8AD */ DEFINE_SFX(CHAN_0615, NA_SE_PL_DUMMY_173, 0x40, 0, 0, 0)
/* 0x8AE */ DEFINE_SFX(CHAN_02A1, NA_SE_PL_DUMMY_174, 0x40, 0, 0, 0)
/* 0x8AF */ DEFINE_SFX(CHAN_0CA6, NA_SE_PL_DUMMY_175, 0x40, 0, 0, 0)
/* 0x8B0 */ DEFINE_SFX(CHAN_0CAD, NA_SE_PL_CRAWL, 0x30, 0, 1, SFX_FLAG_10)
/* 0x8B1 */ DEFINE_SFX(CHAN_0CB8, NA_SE_PL_CRAWL_SAND, 0x30, 0, 1, SFX_FLAG_10)
/* 0x8B2 */ DEFINE_SFX(CHAN_0CC3, NA_SE_PL_CRAWL_CONCRETE, 0x30, 0, 1, SFX_FLAG_10)
/* 0x8B3 */ DEFINE_SFX(CHAN_0CCE, NA_SE_PL_CRAWL_DIRT, 0x30, 0, 1, SFX_FLAG_10)
/* 0x8B4 */ DEFINE_SFX(CHAN_0CD9, NA_SE_PL_CRAWL_WATER0, 0x30, 0, 1, SFX_FLAG_10)
/* 0x8B5 */ DEFINE_SFX(CHAN_0CE4, NA_SE_PL_DUMMY_181, 0x30, 0, 1, SFX_FLAG_10)
/* 0x8B6 */ DEFINE_SFX(CHAN_0CEF, NA_SE_PL_DUMMY_182, 0x30, 0, 1, SFX_FLAG_10)
/* 0x8B7 */ DEFINE_SFX(CHAN_0CFA, NA_SE_PL_DUMMY_183, 0x30, 0, 1, SFX_FLAG_10)
/* 0x8B8 */ DEFINE_SFX(CHAN_0D05, NA_SE_PL_DUMMY_184, 0x30, 0, 1, SFX_FLAG_10)
/* 0x8B9 */ DEFINE_SFX(CHAN_0D10, NA_SE_PL_DUMMY_185, 0x30, 0, 1, SFX_FLAG_10)
/* 0x8BA */ DEFINE_SFX(CHAN_0D1B, NA_SE_PL_DUMMY_186, 0x30, 0, 1, SFX_FLAG_10)
/* 0x8BB */ DEFINE_SFX(CHAN_0D26, NA_SE_PL_CRAWL_WOOD, 0x30, 0, 1, SFX_FLAG_10)
/* 0x8BC */ DEFINE_SFX(CHAN_02A1, NA_SE_PL_CRAWL_ICE, 0x30, 0, 1, SFX_FLAG_10)
/* 0x8BD */ DEFINE_SFX(CHAN_02A1, NA_SE_PL_DUMMY_189, 0x30, 0, 1, SFX_FLAG_10)
/* 0x8BE */ DEFINE_SFX(CHAN_02A1, NA_SE_PL_DUMMY_190, 0x30, 0, 1, SFX_FLAG_10)
/* 0x8BF */ DEFINE_SFX(CHAN_0D31, NA_SE_PL_DUMMY_191, 0x30, 0, 1, SFX_FLAG_10)
/* 0x8C0 */ DEFINE_SFX(CHAN_0D3C, NA_SE_PL_MAGIC_SOUL_FLASH, 0x30, 0, 0, SFX_FLAG_11 | SFX_FLAG_10)
/* 0x8C1 */ DEFINE_SFX(CHAN_0D43, NA_SE_PL_ROLL_DUST, 0x30, 0, 2, 0)
/* 0x8C2 */ DEFINE_SFX(CHAN_0D57, NA_SE_PL_DUMMY_192, 0x30, 0, 0, 0)
/* 0x8C3 */ DEFINE_SFX(CHAN_0D68, NA_SE_PL_MAGIC_SOUL_BALL, 0x30, 0, 0, 0)
/* 0x8C4 */ DEFINE_SFX(CHAN_0D7F, NA_SE_PL_SPIRAL_HEAL_BEAM, 0x30, 0, 0, 0)
/* 0x8C5 */ DEFINE_SFX(CHAN_07FC, NA_SE_PL_BOUND_NOWEAPON, 0x30, 0, 0, 0)
/* 0x8C6 */ DEFINE_SFX(CHAN_0DC9, NA_SE_PL_PLANT_GROW_UP, 0x30, 0, 0, 0)
/* 0x8C7 */ DEFINE_SFX(CHAN_0DA9, NA_SE_PL_PLANT_TALLER, 0x30, 0, 0, 0)
/* 0x8C8 */ DEFINE_SFX(CHAN_0DCE, NA_SE_PL_MAGIC_WIND_VANISH, 0x60, 2, 0, 0)
/* 0x8C9 */ DEFINE_SFX(CHAN_0DE3, NA_SE_PL_HOBBERBOOTS_LV, 0x30, 0, 0, 0)
/* 0x8CA */ DEFINE_SFX(CHAN_0DF9, NA_SE_PL_PLANT_MOVE, 0x30, 0, 0, 0)
/* 0x8CB */ DEFINE_SFX(CHAN_1C14, NA_SE_EV_WALL_MOVE_SP, 0x30, 0, 0, SFX_FLAG_11)
/* 0x8CC */ DEFINE_SFX(CHAN_02A1, NA_SE_PL_DUMMY_204, 0x30, 0, 0, 0)
/* 0x8CD */ DEFINE_SFX(CHAN_02A1, NA_SE_PL_DUMMY_205, 0x30, 0, 0, 0)
/* 0x8CE */ DEFINE_SFX(CHAN_02A1, NA_SE_PL_DUMMY_206, 0x30, 0, 0, 0)
/* 0x8CF */ DEFINE_SFX(CHAN_02A1, NA_SE_PL_DUMMY_207, 0x30, 0, 0, 0)
/* 0x8D0 */ DEFINE_SFX(CHAN_0E08, NA_SE_PL_SLIP_LEVEL, 0x30, 0, 0, 0)
/* 0x8D1 */ DEFINE_SFX(CHAN_0E18, NA_SE_PL_SLIP_SAND_LEVEL, 0x30, 0, 0, 0)
/* 0x8D2 */ DEFINE_SFX(CHAN_0E20, NA_SE_PL_SLIP_CONCRETE_LEVEL, 0x30, 0, 0, 0)
/* 0x8D3 */ DEFINE_SFX(CHAN_0E30, NA_SE_PL_SLIP_DIRT_LEVEL, 0x30, 0, 0, 0)
/* 0x8D4 */ DEFINE_SFX(CHAN_0E30, NA_SE_PL_SLIP_WATER0_LEVEL, 0x30, 0, 0, 0)
/* 0x8D5 */ DEFINE_SFX(CHAN_0E30, NA_SE_PL_SLIP_WATER1_LEVEL, 0x30, 0, 0, 0)
/* 0x8D6 */ DEFINE_SFX(CHAN_0E38, NA_SE_PL_SLIP_WATER2_LEVEL, 0x30, 0, 0, 0)
/* 0x8D7 */ DEFINE_SFX(CHAN_0E30, NA_SE_PL_SLIP_MAGMA_LEVEL, 0x30, 0, 0, 0)
/* 0x8D8 */ DEFINE_SFX(CHAN_0E48, NA_SE_PL_SLIP_GRASS_LEVEL, 0x30, 0, 0, 0)
/* 0x8D9 */ DEFINE_SFX(CHAN_0E08, NA_SE_PL_SLIP_IRON_LEVEL, 0x30, 0, 0, 0)
/* 0x8DA */ DEFINE_SFX(CHAN_0E50, NA_SE_PL_SLIP_GLASS_LEVEL, 0x30, 0, 0, 0)
/* 0x8DB */ DEFINE_SFX(CHAN_0E50, NA_SE_PL_SLIP_WOOD_LEVEL, 0x30, 0, 0, 0)
/* 0x8DC */ DEFINE_SFX(CHAN_02E8, NA_SE_PL_DUMMY_220, 0x30, 0, 0, 0)
/* 0x8DD */ DEFINE_SFX(CHAN_0E50, NA_SE_PL_DUMMY_221, 0x30, 0, 0, 0)
/* 0x8DE */ DEFINE_SFX(CHAN_0E60, NA_SE_PL_SLIP_HEAVYBOOTS_LEVEL, 0x30, 0, 0, 0)
/* 0x8DF */ DEFINE_SFX(CHAN_0E20, NA_SE_PL_SLIP_ICE_LEVEL, 0x30, 0, 0, 0)
