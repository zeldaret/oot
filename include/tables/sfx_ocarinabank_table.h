/**
 * Sfx Ocarina Bank
 *
 * DEFINE_SFX should be used for all sfx define in the ocarina bank from sequence 0
 *    - Argument 1: Enum value for this sfx
 *    - Argument 2: Importance for deciding which sfx to prioritize
 *    - Argument 3: A 2-bit numer (0-3) that slows the decay of volume with distance
 *    - Argument 4: A 2-bit number (0-3) for increasingly random offsets for frequency
 *    - Argument 5: Various flags to add properties to the sfx
 *
 * WARNING: entries must align with the table defined for the ocarina bank in sequence 0
 */
/* 0x5800 */ DEFINE_SFX(NA_SE_OC_OCARINA, 0x30, 0, 0, 0)
/* 0x5801 */ DEFINE_SFX(NA_SE_OC_ABYSS, 0x30, 0, 0, SFX_FLAG_5)
/* 0x5802 */ DEFINE_SFX(NA_SE_OC_DOOR_OPEN, 0x30, 2, 1, SFX_FLAG_10 | SFX_FLAG_9)
/* 0x5803 */ DEFINE_SFX(NA_SE_OC_SECRET_WARP_IN, 0x30, 0, 0, 0)
/* 0x5804 */ DEFINE_SFX(NA_SE_OC_SECRET_WARP_OUT, 0x30, 0, 0, 0)
/* 0x5805 */ DEFINE_SFX(NA_SE_OC_SECRET_HOLE_OUT, 0x30, 0, 0, 0)
/* 0x5806 */ DEFINE_SFX(NA_SE_OC_REVENGE, 0x30, 0, 0, 0)
/* 0x5807 */ DEFINE_SFX(NA_SE_OC_HINT_MOVIE, 0x30, 0, 0, 0)
