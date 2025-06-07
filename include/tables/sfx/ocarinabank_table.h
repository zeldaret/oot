/**
 * Sfx Ocarina Bank
 *
 * DEFINE_SFX should be used for all sfx define in the ocarina bank from sequence 0
 *    - Argument 0: Channel name for sequence 0
 *    - Argument 1: Enum value for this sfx
 *    - Argument 2: Importance for deciding which sfx to prioritize. Higher values have greater importance
 *    - Argument 3: Slows the decay of volume with distance (a 2-bit number ranging from 0-3)
 *    - Argument 4: Applies increasingly random offsets to frequency (a 2-bit number ranging from 0-3)
 *    - Argument 5: Various flags to add properties to the sfx
 */
/* 0x5800 */ DEFINE_SFX(CHAN_5EF5, NA_SE_OC_OCARINA, 0x30, 0, 0, 0)
/* 0x5801 */ DEFINE_SFX(CHAN_5F69, NA_SE_OC_ABYSS, 0x30, 0, 0, SFX_FLAG_5)
/* 0x5802 */ DEFINE_SFX(CHAN_18C5, NA_SE_OC_DOOR_OPEN, 0x30, 2, 1, SFX_FLAG_10 | SFX_FLAG_9)
/* 0x5803 */ DEFINE_SFX(CHAN_5F65, NA_SE_OC_SECRET_WARP_IN, 0x30, 0, 0, 0)
/* 0x5804 */ DEFINE_SFX(CHAN_5F40, NA_SE_OC_SECRET_WARP_OUT, 0x30, 0, 0, 0)
/* 0x5805 */ DEFINE_SFX(CHAN_27AE, NA_SE_OC_SECRET_HOLE_OUT, 0x30, 0, 0, 0)
/* 0x5806 */ DEFINE_SFX(CHAN_5F96, NA_SE_OC_REVENGE, 0x30, 0, 0, 0)
/* 0x5807 */ DEFINE_SFX(CHAN_5EF5, NA_SE_OC_HINT_MOVIE, 0x30, 0, 0, 0)
