#include "global.h"

/**
 * Programs the operating frequency of the Audio DAC.
 *
 * @param frequency Target Playback frequency.
 * @return The actual playback frequency, or -1 if the supplied frequency cannot be used.
 */
s32 osAiSetFrequency(u32 frequency) {
    // Calculate the DAC sample period ("dperiod") (dperiod + 1 = vid_clock / frequency)
    f32 dacRateF = ((f32)osViClock / frequency) + 0.5f;
    u8 bitrate;
    u32 dacRate = dacRateF;

    // Upcoming division by 66. If dacRate is smaller than 2 * 66 = 132, bitrate will be 1 and AI_BITRATE_REG will be
    // programmed with 0, which results in no audio output. Return -1 to indicate an unusable frequency.
    if (dacRate < AI_MIN_DAC_RATE) {
        return -1;
    }

    // Calculate the largest "bitrate" (ABUS clock half period, "aclockhp") supported for this dacrate. These two
    // quantities must satisfy (dperiod + 1) >= 66 * (aclockhp + 1), here this is taken as equality.
    bitrate = (dacRate / 66);
    // Clamp to max value
    if (bitrate > AI_MAX_BIT_RATE) {
        bitrate = AI_MAX_BIT_RATE;
    }

    IO_WRITE(AI_DACRATE_REG, dacRate - 1);
    IO_WRITE(AI_BITRATE_REG, bitrate - 1);

    // Return the true playback frequency (frequency = vid_clock / (dperiod + 1)), which may differ from the target
    // frequency.
    return osViClock / (s32)dacRate;
}
