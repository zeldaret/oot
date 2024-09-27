#include "versions.h"
/**
 * Sfx System Bank
 *
 * DEFINE_SFX should be used for all sfx define in the system bank from sequence 0
 *    - Argument 0: Channel name for sequence 0
 *    - Argument 1: Enum value for this sfx
 *    - Argument 2: Importance for deciding which sfx to prioritize. Higher values have greater importance
 *    - Argument 3: Slows the decay of volume with distance (a 2-bit number ranging from 0-3)
 *    - Argument 4: Applies increasingly random offsets to frequency (a 2-bit number ranging from 0-3)
 *    - Argument 5: Various flags to add properties to the sfx
 */
/* 0x4800 */ DEFINE_SFX(CHAN_57B9, NA_SE_SY_WIN_OPEN, 0xC0, 0, 0, 0)
/* 0x4801 */ DEFINE_SFX(CHAN_57F6, NA_SE_SY_WIN_CLOSE, 0xC0, 0, 0, 0)
/* 0x4802 */ DEFINE_SFX(CHAN_5833, NA_SE_SY_CORRECT_CHIME, 0xB0, 0, 0, SFX_FLAG_5)
/* 0x4803 */ DEFINE_SFX(CHAN_5861, NA_SE_SY_GET_RUPY, 0x30, 0, 0, 0)
/* 0x4804 */ DEFINE_SFX(CHAN_5880, NA_SE_SY_MESSAGE_WOMAN, 0x30, 0, 0, 0)
/* 0x4805 */ DEFINE_SFX(CHAN_588E, NA_SE_SY_MESSAGE_MAN, 0x30, 0, 0, 0)
/* 0x4806 */ DEFINE_SFX(CHAN_588E, NA_SE_SY_ERROR, 0x50, 0, 0, 0)
/* 0x4807 */ DEFINE_SFX(CHAN_589F, NA_SE_SY_TRE_BOX_APPEAR, 0x30, 0, 0, SFX_FLAG_5)
/* 0x4808 */ DEFINE_SFX(CHAN_58E9, NA_SE_SY_DECIDE, 0x30, 0, 0, 0)
/* 0x4809 */ DEFINE_SFX(CHAN_5933, NA_SE_SY_CURSOR, 0x30, 0, 0, 0)
/* 0x480A */ DEFINE_SFX(CHAN_5948, NA_SE_SY_CANCEL, 0x30, 0, 0, 0)
/* 0x480B */ DEFINE_SFX(CHAN_596D, NA_SE_SY_HP_RECOVER, 0x30, 0, 0, 0)
/* 0x480C */ DEFINE_SFX(CHAN_598D, NA_SE_SY_ATTENTION_ON, 0x20, 0, 0, 0)
/* 0x480D */ DEFINE_SFX(CHAN_5A02, NA_SE_SY_DUMMY_13, 0x30, 0, 0, 0)
/* 0x480E */ DEFINE_SFX(CHAN_59A9, NA_SE_SY_DUMMY_14, 0x30, 0, 0, 0)
/* 0x480F */ DEFINE_SFX(CHAN_59CB, NA_SE_SY_LOCK_OFF, 0x30, 0, 0, 0)
/* 0x4810 */ DEFINE_SFX(CHAN_59E5, NA_SE_SY_LOCK_ON_HUMAN, 0x28, 0, 0, 0)
/* 0x4811 */ DEFINE_SFX(CHAN_5A02, NA_SE_SY_DUMMY_17, 0x30, 0, 0, 0)
/* 0x4812 */ DEFINE_SFX(CHAN_5A1B, NA_SE_SY_DUMMY_18, 0x30, 0, 0, 0)
/* 0x4813 */ DEFINE_SFX(CHAN_5A34, NA_SE_SY_CAMERA_ZOOM_UP, 0x30, 0, 0, 0)
/* 0x4814 */ DEFINE_SFX(CHAN_5A47, NA_SE_SY_CAMERA_ZOOM_DOWN, 0x30, 0, 0, 0)
/* 0x4815 */ DEFINE_SFX(CHAN_5A34, NA_SE_SY_DUMMY_21, 0x30, 0, 0, 0)
/* 0x4816 */ DEFINE_SFX(CHAN_5A34, NA_SE_SY_DUMMY_22, 0x30, 0, 0, 0)
/* 0x4817 */ DEFINE_SFX(CHAN_5A5A, NA_SE_SY_ATTENTION_ON_OLD, 0x30, 0, 0, 0)
/* 0x4818 */ DEFINE_SFX(CHAN_5A64, NA_SE_SY_MESSAGE_PASS, 0x18, 0, 0, 0)
/* 0x4819 */ DEFINE_SFX(CHAN_5A72, NA_SE_SY_WARNING_COUNT_N, 0x2C, 0, 0, 0)
/* 0x481A */ DEFINE_SFX(CHAN_5A86, NA_SE_SY_WARNING_COUNT_E, 0x2C, 0, 0, 0)
/* 0x481B */ DEFINE_SFX(CHAN_5AA5, NA_SE_SY_HITPOINT_ALARM, 0x20, 0, 0, 0)
/* 0x481C */ DEFINE_SFX(CHAN_5AB7, NA_SE_SY_DUMMY_28, 0x30, 0, 0, 0)
/* 0x481D */ DEFINE_SFX(CHAN_5AB7, NA_SE_SY_DEMO_CUT, 0x30, 0, 0, 0)
/* 0x481E */ DEFINE_SFX(CHAN_5AD8, NA_SE_SY_NAVY_CALL, 0x30, 0, 0, 0)
/* 0x481F */ DEFINE_SFX(CHAN_5AF7, NA_SE_SY_GAUGE_UP, 0x30, 0, 0, 0)
/* 0x4820 */ DEFINE_SFX(CHAN_5B22, NA_SE_SY_DUMMY_32, 0x30, 0, 0, 0)
/* 0x4821 */ DEFINE_SFX(CHAN_5B3C, NA_SE_SY_DUMMY_33, 0x30, 0, 0, 0)
/* 0x4822 */ DEFINE_SFX(CHAN_5B54, NA_SE_SY_DUMMY_34, 0x30, 0, 0, 0)
/* 0x4823 */ DEFINE_SFX(CHAN_5B5B, NA_SE_SY_PIECE_OF_HEART, 0x30, 0, 0, 0)
/* 0x4824 */ DEFINE_SFX(CHAN_5B9C, NA_SE_SY_GET_ITEM, 0x30, 0, 0, 0)
/* 0x4825 */ DEFINE_SFX(CHAN_5BBE, NA_SE_SY_WIN_SCROLL_LEFT, 0x30, 0, 0, 0)
/* 0x4826 */ DEFINE_SFX(CHAN_5BE8, NA_SE_SY_WIN_SCROLL_RIGHT, 0x30, 0, 0, 0)
/* 0x4827 */ DEFINE_SFX(CHAN_5BFA, NA_SE_SY_OCARINA_ERROR, 0x20, 0, 0, 0)
/* 0x4828 */ DEFINE_SFX(CHAN_5C07, NA_SE_SY_CAMERA_ZOOM_UP_2, 0x30, 0, 0, 0)
/* 0x4829 */ DEFINE_SFX(CHAN_5C1E, NA_SE_SY_CAMERA_ZOOM_DOWN_2, 0x30, 0, 0, 0)
/* 0x482A */ DEFINE_SFX(CHAN_5C35, NA_SE_SY_GLASSMODE_ON, 0x30, 0, 0, 0)
/* 0x482B */ DEFINE_SFX(CHAN_5C46, NA_SE_SY_GLASSMODE_OFF, 0x30, 0, 0, 0)
/* 0x482C */ DEFINE_SFX(CHAN_5C57, NA_SE_SY_FOUND, 0x60, 0, 0, 0)
/* 0x482D */ DEFINE_SFX(CHAN_5C64, NA_SE_SY_HIT_SOUND, 0x30, 0, 0, 0)
/* 0x482E */ DEFINE_SFX(CHAN_5C7A, NA_SE_SY_MESSAGE_END, 0x30, 0, 0, 0)
/* 0x482F */ DEFINE_SFX(CHAN_5C94, NA_SE_SY_RUPY_COUNT, 0x30, 0, 0, 0)
/* 0x4830 */ DEFINE_SFX(CHAN_5CAD, NA_SE_SY_LOCK_ON, 0x30, 0, 0, 0)
/* 0x4831 */ DEFINE_SFX(CHAN_5CB9, NA_SE_SY_GET_BOXITEM, 0x30, 0, 0, 0)
/* 0x4832 */ DEFINE_SFX(CHAN_5CD3, NA_SE_SY_WHITE_OUT_L, 0x30, 0, 0, 0)
/* 0x4833 */ DEFINE_SFX(CHAN_5CFC, NA_SE_SY_WHITE_OUT_S, 0x30, 0, 0, 0)
/* 0x4834 */ DEFINE_SFX(CHAN_5D1F, NA_SE_SY_WHITE_OUT_T, 0x30, 0, 0, 0)
/* 0x4835 */ DEFINE_SFX(CHAN_5D40, NA_SE_SY_START_SHOT, 0x30, 0, 0, 0)
/* 0x4836 */ DEFINE_SFX(CHAN_5D57, NA_SE_SY_METRONOME, 0x30, 0, 0, 0)
/* 0x4837 */ DEFINE_SFX(CHAN_5D61, NA_SE_SY_ATTENTION_URGENCY, 0x30, 0, 0, 0)
/* 0x4838 */ DEFINE_SFX(CHAN_5D6B, NA_SE_SY_METRONOME_LV, 0x30, 0, 0, 0)
/* 0x4839 */ DEFINE_SFX(CHAN_5D76, NA_SE_SY_FSEL_CURSOR, 0x30, 0, 0, 0)
/* 0x483A */ DEFINE_SFX(CHAN_5D9E, NA_SE_SY_FSEL_DECIDE_S, 0x30, 0, 0, 0)
/* 0x483B */ DEFINE_SFX(CHAN_5DBB, NA_SE_SY_FSEL_DECIDE_L, 0x30, 0, 0, 0)
/* 0x483C */ DEFINE_SFX(CHAN_5DDB, NA_SE_SY_FSEL_CLOSE, 0x30, 0, 0, 0)
/* 0x483D */ DEFINE_SFX(CHAN_5DF3, NA_SE_SY_FSEL_ERROR, 0x30, 0, 0, 0)
/* 0x483E */ DEFINE_SFX(CHAN_5E0A, NA_SE_SY_SET_FIRE_ARROW, 0x30, 0, 0, 0)
/* 0x483F */ DEFINE_SFX(CHAN_5E14, NA_SE_SY_SET_ICE_ARROW, 0x30, 0, 0, 0)
/* 0x4840 */ DEFINE_SFX(CHAN_5E1E, NA_SE_SY_SET_LIGHT_ARROW, 0x30, 0, 0, 0)
/* 0x4841 */ DEFINE_SFX(CHAN_5E28, NA_SE_SY_SYNTH_MAGIC_ARROW, 0x30, 0, 0, 0)
/* 0x4842 */ DEFINE_SFX(CHAN_5E31, NA_SE_SY_METRONOME_2, 0x30, 0, 0, 0)
/* 0x4843 */ DEFINE_SFX(CHAN_5E3D, NA_SE_SY_KINSTA_MARK_APPEAR, 0x30, 0, 0, 0)
/* 0x4844 */ DEFINE_SFX(CHAN_5E6B, NA_SE_SY_FIVE_COUNT_LUPY, 0x30, 0, 0, 0)
/* 0x4845 */ DEFINE_SFX(CHAN_5E88, NA_SE_SY_CARROT_RECOVER, 0x30, 0, 0, 0)
/* 0x4846 */ DEFINE_SFX(CHAN_5D57, NA_SE_EV_FAIVE_LUPY_COUNT, 0x30, 0, 0, 0)
/* 0x4847 */ DEFINE_SFX(CHAN_5D61, NA_SE_SY_DUMMY_71, 0x30, 0, 0, 0)
