#include <global.h>
#include <ultra64/hardware.h>

s32 osAiSetFrequency(u32 frequency) {
    u32 dacrate;
    u8 bitrate;
    f32 dacrateF;

    dacrateF = ((f32)osViClock / frequency) + 0.5f;
    dacrate = dacrateF;

    if (dacrate < 132) {
        return -1;
    }

    bitrate = (dacrate / 66);
    if (bitrate > 16) {
        bitrate = 16;
    }

    HW_REG(AI_DACRATE_REG, u32) = dacrate - 1;
    HW_REG(AI_BITRATE_REG, u32) = bitrate - 1;
    return osViClock / (s32)dacrate;
}
