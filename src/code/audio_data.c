#include "global.h"

// clang-format off
s16 gSawtoothWaveSample[] = {
    // Frequency of 1
    0,      1023,   2047,   3071,   4095,   5119,   6143,   7167,
    8191,   9215,   10239,  11263,  12287,  13311,  14335,  15359,
    16383,  17407,  18431,  19455,  20479,  21503,  22527,  23551,
    24575,  25599,  26623,  27647,  28671,  29695,  30719,  31743,
    -32767, -31743, -30719, -29695, -28671, -27647, -26623, -25599,
    -24575, -23551, -22527, -21503, -20479, -19455, -18431, -17407,
    -16383, -15359, -14335, -13311, -12287, -11263, -10239, -9215,
    -8191,  -7167,  -6143,  -5119,  -4095,  -3071,  -2047,  -1023,

    // Frequency of 2
    0,      2047,   4095,   6143,   8191,   10239,  12287,  14335,
    16383,  18431,  20479,  22527,  24575,  26623,  28671,  30719,
    -32767, -30719, -28671, -26623, -24575, -22527, -20479, -18431,
    -16383, -14335, -12287, -10239, -8191,  -6143,  -4095,  -2047,
    0,      2047,   4095,   6143,   8191,   10239,  12287,  14335,
    16383,  18431,  20479,  22527,  24575,  26623,  28671,  30719,
    -32767, -30719, -28671, -26623, -24575, -22527, -20479, -18431,
    -16383, -14335, -12287, -10239, -8191,  -6143,  -4095,  -2047,

    // Frequency of 4
    0,      4095,   8191,   12287,  16383,  20479,  24575,  28671,
    -32767, -28671, -24575, -20479, -16383, -12287, -8191,  -4095,
    0,      4095,   8191,   12287,  16383,  20479,  24575,  28671,
    -32767, -28671, -24575, -20479, -16383, -12287, -8191,  -4095,
    0,      4095,   8191,   12287,  16383,  20479,  24575,  28671,
    -32767, -28671, -24575, -20479, -16383, -12287, -8191,  -4095,
    0,      4095,   8191,   12287,  16383,  20479,  24575,  28671,
    -32767, -28671, -24575, -20479, -16383, -12287, -8191,  -4095,

    // Frequency of 8
    0,      8191,   16383,  24575,  -32767, -24575, -16383, -8191,
    0,      8191,   16383,  24575,  -32767, -24575, -16383, -8191,
    0,      8191,   16383,  24575,  -32767, -24575, -16383, -8191,
    0,      8191,   16383,  24575,  -32767, -24575, -16383, -8191,
    0,      8191,   16383,  24575,  -32767, -24575, -16383, -8191,
    0,      8191,   16383,  24575,  -32767, -24575, -16383, -8191,
    0,      8191,   16383,  24575,  -32767, -24575, -16383, -8191,
    0,      8191,   16383,  24575,  -32767, -24575, -16383, -8191,
};

s16 gTriangleWaveSample[] = {
    // Frequency of 1
    0,      2047,   4095,   6143,   8191,   10239,  12287,  14335,
    16383,  18431,  20479,  22527,  24575,  26623,  28671,  30719,
    32767,  30719,  28671,  26623,  24575,  22527,  20479,  18431,
    16383,  14335,  12287,  10239,  8191,   6143,   4095,   2047,
    0,      -2047,  -4095,  -6143,  -8191,  -10239, -12287, -14335,
    -16383, -18431, -20479, -22527, -24575, -26623, -28671, -30719,
    -32767, -30719, -28671, -26623, -24575, -22527, -20479, -18431,
    -16383, -14335, -12287, -10239, -8191,  -6143,  -4095,  -2047,

    // Frequency of 2
    0,      4095,   8191,   12287,  16383,  20479,  24575,  28671,
    32767,  28671,  24575,  20479,  16383,  12287,  8191,   4095,
    0,      -4095,  -8191,  -12287, -16383, -20479, -24575, -28671,
    -32767, -28671, -24575, -20479, -16383, -12287, -8191,  -4095,
    0,      4095,   8191,   12287,  16383,  20479,  24575,  28671,
    32767,  28671,  24575,  20479,  16383,  12287,  8191,   4095,
    0,      -4095,  -8191,  -12287, -16383, -20479, -24575, -28671,
    -32767, -28671, -24575, -20479, -16383, -12287, -8191,  -4095,

    // Frequency of 4
    0,      8191,   16383,  24575,  32767,  24575,  16383,  8191,
    0,      -8191,  -16383, -24575, -32767, -24575, -16383, -8191,
    0,      8191,   16383,  24575,  32767,  24575,  16383,  8191,
    0,      -8191,  -16383, -24575, -32767, -24575, -16383, -8191,
    0,      8191,   16383,  24575,  32767,  24575,  16383,  8191,
    0,      -8191,  -16383, -24575, -32767, -24575, -16383, -8191,
    0,      8191,   16383,  24575,  32767,  24575,  16383,  8191,
    0,      -8191,  -16383, -24575, -32767, -24575, -16383, -8191,

    // Frequency of 8
    0,      16383,  32767,  16383,  0,      -16383, -32767, -16383,
    0,      16383,  32767,  16383,  0,      -16383, -32767, -16383,
    0,      16383,  32767,  16383,  0,      -16383, -32767, -16383,
    0,      16383,  32767,  16383,  0,      -16383, -32767, -16383,
    0,      16383,  32767,  16383,  0,      -16383, -32767, -16383,
    0,      16383,  32767,  16383,  0,      -16383, -32767, -16383,
    0,      16383,  32767,  16383,  0,      -16383, -32767, -16383,
    0,      16383,  32767,  16383,  0,      -16383, -32767, -16383,
};

s16 gSineWaveSample[] = {
    // Frequency of 1
    0,      3211,   6392,   9511,   12539,  15446,  18204,  20787,
    23169,  25329,  27244,  28897,  30272,  31356,  32137,  32609,
    32767,  32609,  32137,  31356,  30272,  28897,  27244,  25329,
    23169,  20787,  18204,  15446,  12539,  9511,   6392,   3211,
    0,      -3211,  -6392,  -9511,  -12539, -15446, -18204, -20787,
    -23169, -25329, -27244, -28897, -30272, -31356, -32137, -32609,
    -32767, -32609, -32137, -31356, -30272, -28897, -27244, -25329,
    -23169, -20787, -18204, -15446, -12539, -9511,  -6392,  -3211,

    // Frequency of 2
    0,      6392,   12539,  18204,  23169,  27244,  30272,  32137,
    32767,  32137,  30272,  27244,  23169,  18204,  12539,  6392,
    0,      -6392,  -12539, -18204, -23169, -27244, -30272, -32137,
    -32767, -32137, -30272, -27244, -23169, -18204, -12539, -6392,
    0,      6392,   12539,  18204,  23169,  27244,  30272,  32137,
    32767,  32137,  30272,  27244,  23169,  18204,  12539,  6392,
    0,      -6392,  -12539, -18204, -23169, -27244, -30272, -32137,
    -32767, -32137, -30272, -27244, -23169, -18204, -12539, -6392,

    // Frequency of 4
    0,      12539,  23169,  30272,  32767,  30272,  23169,  12539,
    0,      -12539, -23169, -30272, -32767, -30272, -23169, -12539,
    0,      12539,  23169,  30272,  32767,  30272,  23169,  12539,
    0,      -12539, -23169, -30272, -32767, -30272, -23169, -12539,
    0,      12539,  23169,  30272,  32767,  30272,  23169,  12539,
    0,      -12539, -23169, -30272, -32767, -30272, -23169, -12539,
    0,      12539,  23169,  30272,  32767,  30272,  23169,  12539,
    0,      -12539, -23169, -30272, -32767, -30272, -23169, -12539,

    // Frequency of 8
    0,      23169,  32767,  23169,  0,      -23169, -32767, -23169,
    0,      23169,  32767,  23169,  0,      -23169, -32767, -23169,
    0,      23169,  32767,  23169,  0,      -23169, -32767, -23169,
    0,      23169,  32767,  23169,  0,      -23169, -32767, -23169,
    0,      23169,  32767,  23169,  0,      -23169, -32767, -23169,
    0,      23169,  32767,  23169,  0,      -23169, -32767, -23169,
    0,      23169,  32767,  23169,  0,      -23169, -32767, -23169,
    0,      23169,  32767,  23169,  0,      -23169, -32767, -23169,
};

s16 gSquareWaveSample[] = {
    // Frequency of 1
    0,      0,      0,      0,      0,      0,      0,      0,
    0,      0,      0,      0,      0,      0,      0,      0,
    32767,  32767,  32767,  32767,  32767,  32767,  32767,  32767,
    32767,  32767,  32767,  32767,  32767,  32767,  32767,  32767,
    0,      0,      0,      0,      0,      0,      0,      0,
    0,      0,      0,      0,      0,      0,      0,      0,
    -32767, -32767, -32767, -32767, -32767, -32767, -32767, -32767,
    -32767, -32767, -32767, -32767, -32767, -32767, -32767, -32767,

    // Frequency of 2
    0,      0,      0,      0,      0,      0,      0,      0,
    32767,  32767,  32767,  32767,  32767,  32767,  32767,  32767,
    0,      0,      0,      0,      0,      0,      0,      0,
    -32767, -32767, -32767, -32767, -32767, -32767, -32767, -32767,
    0,      0,      0,      0,      0,      0,      0,      0,
    32767,  32767,  32767,  32767,  32767,  32767,  32767,  32767,
    0,      0,      0,      0,      0,      0,      0,      0,

    // Frequency of 4
    -32767, -32767, -32767, -32767, -32767, -32767, -32767, -32767,
    0,      0,      0,      0,      32767,  32767,  32767,  32767,
    0,      0,      0,      0,      -32767, -32767, -32767, -32767,
    0,      0,      0,      0,      32767,  32767,  32767,  32767,
    0,      0,      0,      0,      -32767, -32767, -32767, -32767,
    0,      0,      0,      0,      32767,  32767,  32767,  32767,
    0,      0,      0,      0,      -32767, -32767, -32767, -32767,
    0,      0,      0,      0,      32767,  32767,  32767,  32767,
    0,      0,      0,      0,      -32767, -32767, -32767, -32767,

    // Frequency of 8
    0,      0,      32767,  32767,  0,      0,      -32767, -32767,
    0,      0,      32767,  32767,  0,      0,      -32767, -32767,
    0,      0,      32767,  32767,  0,      0,      -32767, -32767,
    0,      0,      32767,  32767,  0,      0,      -32767, -32767,
    0,      0,      32767,  32767,  0,      0,      -32767, -32767,
    0,      0,      32767,  32767,  0,      0,      -32767, -32767,
    0,      0,      32767,  32767,  0,      0,      -32767, -32767,
    0,      0,      32767,  32767,  0,      0,      -32767, -32767,
};

s16 gWhiteNoiseSample[] = {
    // Frequency of 1
    0,      -25689, -25791, 27803,  -27568, -21030, 22174,  6298,
    27071,  -18531, 28649,  2284,   3380,   6890,   -12682, -21114,
    10000,  -24520, 32296,  12248,  15096,  15354,  -12021, -31545,
    -12929, 6388,   -11064, 30456,  -30316, -21999, 29691,  27649,
    0,      -27649, -29691, 21999,  30316,  -30457, 11064,  -6387,
    12929,  31544,  12021,  -15353, -15096, -12249, -32296, 24521,
    -10000, 21113,  12682,  -6889,  -3380,  -2285,  -28649, 18532,
    -27071, -6299,  -22174, 21031,  27568,  -27804, 25791,  25690,

    // Frequency of 2
    0,      -25791, -27568, 22174,  27071,  28649,  3380,   -12682,
    10000,  32296,  15096,  -12021, -12929, -11064, -30316, 29691,
    0,      -29691, 30316,  11064,  12929,  12021,  -15096, -32296,
    -10000, 12682,  -3380,  -28649, -27071, -22174, 27568,  25791,
    0,      -25791, -27568, 22174,  27071,  28649,  3380,   -12682,
    10000,  32296,  15096,  -12021, -12929, -11064, -30316, 29691,
    0,      -29691, 30316,  11064,  12929,  12021,  -15096, -32296,
    -10000, 12682,  -3380,  -28649, -27071, -22174, 27568,  25791,

    // Frequency of 4
    0,      -27568, 27071,  3380,   10000,  15096,  -12929, -30316,
    0,      30316,  12929,  -15096, -10000, -3380,  -27071, 27568,
    0,      -27568, 27071,  3380,   10000,  15096,  -12929, -30316,
    0,      30316,  12929,  -15096, -10000, -3380,  -27071, 27568,
    0,      -27568, 27071,  3380,   10000,  15096,  -12929, -30316,
    0,      30316,  12929,  -15096, -10000, -3380,  -27071, 27568,
    0,      -27568, 27071,  3380,   10000,  15096,  -12929, -30316,
    0,      30316,  12929,  -15096, -10000, -3380,  -27071, 27568,

    // Frequency of 8
    0,      27071,  10000,  -12929, 0,      12929,  -10000, -27071,
    0,      27071,  10000,  -12929, 0,      12929,  -10000, -27071,
    0,      27071,  10000,  -12929, 0,      12929,  -10000, -27071,
    0,      27071,  10000,  -12929, 0,      12929,  -10000, -27071,
    0,      27071,  10000,  -12929, 0,      12929,  -10000, -27071,
    0,      27071,  10000,  -12929, 0,      12929,  -10000, -27071,
    0,      27071,  10000,  -12929, 0,      12929,  -10000, -27071,
    0,      27071,  10000,  -12929, 0,      12929,  -10000, -27071,
};

// Sine White Noise?
s16 D_8012EA90[] = {
    // Frequency of 1
    0,      16316,  20148,  20257,  27209,  -32657, 29264,  27259,
    -29394, -21494, -26410, 30770,  30033,  29130,  20206,  14129,
    20000,  25677,  19024,  9146,   6921,   4506,   -5868,  -13122,
    -7858,  -1885,  -7042,  -14025, -11903, -8647,  -12346, -12396,
    0,      12396,  12346,  8647,   11903,  14024,  7042,   1886,
    7858,   13121,  5868,   -4505,  -6921,  -9147,  -19024, -25676,
    -20000, -14130, -20206, -29129, -30033, -30771, 26410,  21495,
    29394,  -27260, -29264, 32658,  -27209, -20258, -20148, -16315,

    // Frequency of 2
    0,      20148,  27209,  29264,  -29394, -26410, 30033,  20206,
    20000,  19024,  6921,   -5868,  -7858,  -7042,  -11903, -12346,
    0,      12346,  11903,  7042,   7858,   5868,   -6921,  -19024,
    -20000, -20206, -30033, 26410,  29394,  -29264, -27209, -20148,
    0,      20148,  27209,  29264,  -29394, -26410, 30033,  20206,
    20000,  19024,  6921,   -5868,  -7858,  -7042,  -11903, -12346,
    0,      12346,  11903,  7042,   7858,   5868,   -6921,  -19024,
    -20000, -20206, -30033, 26410,  29394,  -29264, -27209, -20148,

    // Frequency of 4
    0,      27209,  -29394, 30033,  20000,  6921,   -7858,  -11903,
    0,      11903,  7858,   -6921,  -20000, -30033, 29394,  -27209,
    0,      27209,  -29394, 30033,  20000,  6921,   -7858,  -11903,
    0,      11903,  7858,   -6921,  -20000, -30033, 29394,  -27209,
    0,      27209,  -29394, 30033,  20000,  6921,   -7858,  -11903,
    0,      11903,  7858,   -6921,  -20000, -30033, 29394,  -27209,
    0,      27209,  -29394, 30033,  20000,  6921,   -7858,  -11903,
    0,      11903,  7858,   -6921,  -20000, -30033, 29394,  -27209,

    // Frequency of 8
    0,      -29394, 20000,  -7858,  0,      7858,   -20000, 29394,
    0,      -29394, 20000,  -7858,  0,      7858,   -20000, 29394,
    0,      -29394, 20000,  -7858,  0,      7858,   -20000, 29394,
    0,      -29394, 20000,  -7858,  0,      7858,   -20000, 29394,
    0,      -29394, 20000,  -7858,  0,      7858,   -20000, 29394,
    0,      -29394, 20000,  -7858,  0,      7858,   -20000, 29394,
    0,      -29394, 20000,  -7858,  0,      7858,   -20000, 29394,
    0,      -29394, 20000,  -7858,  0,      7858,   -20000, 29394,
};

// Pulse Wave (duty cycle = 12.5%)
s16 gEighthPulseWaveSample[] = {
    // Frequency of 1
    0,      0,      0,      0,      0,      0, 0,      0,
    0,      0,      0,      0,      0,      0, 0,      0,
    32767,  32767,  32767,  32767,  0,      0, 0,      0,
    0,      0,      0,      0,      0,      0, 0,      0,
    0,      0,      0,      0,      0,      0, 0,      0,
    0,      0,      0,      0,      0,      0, 0,      0,
    -32767, -32767, -32767, -32767, 0,      0, 0,      0,
    0,      0,      0,      0,      0,      0, 0,      0,

    // Frequency of 2
    0,      0,      0,      0,      0,      0, 0,      0,
    32767,  32767,  0,      0,      0,      0, 0,      0,
    0,      0,      0,      0,      0,      0, 0,      0,
    -32767, -32767, 0,      0,      0,      0, 0,      0,
    0,      0,      0,      0,      0,      0, 0,      0,
    32767,  32767,  0,      0,      0,      0, 0,      0,
    0,      0,      0,      0,      0,      0, 0,      0,
    -32767, -32767, 0,      0,      0,      0, 0,      0,

    // Frequency of 4
    0,      0,      0,      0,      32767,  0, 0,      0,
    0,      0,      0,      0,      -32767, 0, 0,      0,
    0,      0,      0,      0,      32767,  0, 0,      0,
    0,      0,      0,      0,      -32767, 0, 0,      0,
    0,      0,      0,      0,      32767,  0, 0,      0,
    0,      0,      0,      0,      -32767, 0, 0,      0,
    0,      0,      0,      0,      32767,  0, 0,      0,
    0,      0,      0,      0,      -32767, 0, 0,      0,

    // Frequency of 8
    0,      0,      32767,  0,      0,      0, -32767, 0,
    0,      0,      32767,  0,      0,      0, -32767, 0,
    0,      0,      32767,  0,      0,      0, -32767, 0,
    0,      0,      32767,  0,      0,      0, -32767, 0,
    0,      0,      32767,  0,      0,      0, -32767, 0,
    0,      0,      32767,  0,      0,      0, -32767, 0,
    0,      0,      32767,  0,      0,      0, -32767, 0,
    0,      0,      32767,  0,      0,      0, -32767, 0,
};

// Pulse Wave (duty cycle = 25%)
s16 gQuarterPulseWaveSample[] = {
    // Frequency of 1
    0,      0,      0,      0,      0,      0,      0,      0,
    0,      0,      0,      0,      0,      0,      0,      0,
    32767,  32767,  32767,  32767,  32767,  32767,  32767,  32767,
    0,      0,      0,      0,      0,      0,      0,      0,
    0,      0,      0,      0,      0,      0,      0,      0,
    0,      0,      0,      0,      0,      0,      0,      0,
    -32767, -32767, -32767, -32767, -32767, -32767, -32767, -32767,
    0,      0,      0,      0,      0,      0,      0,      0,

    // Frequency of 2
    0,      0,      0,      0,      0,      0,      0,      0,
    32767,  32767,  32767,  32767,  0,      0,      0,      0,
    0,      0,      0,      0,      0,      0,      0,      0,
    -32767, -32767, -32767, -32767, 0,      0,      0,      0,
    0,      0,      0,      0,      0,      0,      0,      0,
    32767,  32767,  32767,  32767,  0,      0,      0,      0,
    0,      0,      0,      0,      0,      0,      0,      0,
    -32767, -32767, -32767, -32767, 0,      0,      0,      0,

    // Frequency of 4
    0,      0,      0,      0,      32767,  32767,  0,      0,
    0,      0,      0,      0,      -32767, -32767, 0,      0,
    0,      0,      0,      0,      32767,  32767,  0,      0,
    0,      0,      0,      0,      -32767, -32767, 0,      0,
    0,      0,      0,      0,      32767,  32767,  0,      0,
    0,      0,      0,      0,      -32767, -32767, 0,      0,
    0,      0,      0,      0,      32767,  32767,  0,      0,
    0,      0,      0,      0,      -32767, -32767, 0,      0,

    // Frequency of 8
    0,      0,      32767,  0,      0,      0,      -32767, 0,
    0,      0,      32767,  0,      0,      0,      -32767, 0,
    0,      0,      32767,  0,      0,      0,      -32767, 0,
    0,      0,      32767,  0,      0,      0,      -32767, 0,
    0,      0,      32767,  0,      0,      0,      -32767, 0,
    0,      0,      32767,  0,      0,      0,      -32767, 0,
    0,      0,      32767,  0,      0,      0,      -32767, 0,
    0,      0,      32767,  0,      0,      0,      -32767, 0,
};
// clang-format on

s16* gWaveSamples[] = {
    gSawtoothWaveSample, gTriangleWaveSample,    gSineWaveSample,         gSquareWaveSample,       gWhiteNoiseSample,
    D_8012EA90,          gEighthPulseWaveSample, gQuarterPulseWaveSample, gQuarterPulseWaveSample,
};

f32 gBendPitchOneOctaveFrequencies[] = {
    0.5f,      0.5f,      0.502736f, 0.505488f, 0.508254f, 0.511036f, 0.513833f, 0.516645f, 0.519472f, 0.522315f,
    0.525174f, 0.528048f, 0.530938f, 0.533843f, 0.536765f, 0.539702f, 0.542656f, 0.545626f, 0.548612f, 0.551614f,
    0.554633f, 0.557669f, 0.560721f, 0.563789f, 0.566875f, 0.569977f, 0.573097f, 0.576233f, 0.579387f, 0.582558f,
    0.585746f, 0.588951f, 0.592175f, 0.595415f, 0.598674f, 0.60195f,  0.605245f, 0.608557f, 0.611888f, 0.615236f,
    0.618603f, 0.621989f, 0.625393f, 0.628815f, 0.632257f, 0.635717f, 0.639196f, 0.642694f, 0.646212f, 0.649748f,
    0.653304f, 0.65688f,  0.660475f, 0.664089f, 0.667724f, 0.671378f, 0.675052f, 0.678747f, 0.682461f, 0.686196f,
    0.689952f, 0.693727f, 0.697524f, 0.701341f, 0.70518f,  0.709039f, 0.712919f, 0.716821f, 0.720744f, 0.724689f,
    0.728655f, 0.732642f, 0.736652f, 0.740684f, 0.744737f, 0.748813f, 0.752911f, 0.757031f, 0.761175f, 0.76534f,
    0.769529f, 0.77374f,  0.777975f, 0.782232f, 0.786513f, 0.790818f, 0.795146f, 0.799497f, 0.803873f, 0.808272f,
    0.812696f, 0.817144f, 0.821616f, 0.826112f, 0.830633f, 0.835179f, 0.83975f,  0.844346f, 0.848966f, 0.853613f,
    0.858284f, 0.862982f, 0.867704f, 0.872453f, 0.877228f, 0.882029f, 0.886856f, 0.891709f, 0.89659f,  0.901496f,
    0.90643f,  0.911391f, 0.916379f, 0.921394f, 0.926436f, 0.931507f, 0.936604f, 0.94173f,  0.946884f, 0.952066f,
    0.957277f, 0.962516f, 0.967783f, 0.97308f,  0.978405f, 0.98376f,  0.989144f, 0.994557f, 1.0f,      1.005473f,
    1.010975f, 1.016508f, 1.022071f, 1.027665f, 1.033289f, 1.038944f, 1.04463f,  1.050347f, 1.056095f, 1.061875f,
    1.067687f, 1.07353f,  1.079405f, 1.085312f, 1.091252f, 1.097224f, 1.103229f, 1.109267f, 1.115337f, 1.121441f,
    1.127579f, 1.13375f,  1.139955f, 1.146193f, 1.152466f, 1.158773f, 1.165115f, 1.171491f, 1.177903f, 1.184349f,
    1.190831f, 1.197348f, 1.203901f, 1.210489f, 1.217114f, 1.223775f, 1.230473f, 1.237207f, 1.243978f, 1.250786f,
    1.257631f, 1.264514f, 1.271434f, 1.278392f, 1.285389f, 1.292423f, 1.299497f, 1.306608f, 1.313759f, 1.320949f,
    1.328178f, 1.335447f, 1.342756f, 1.350104f, 1.357493f, 1.364922f, 1.372392f, 1.379903f, 1.387455f, 1.395048f,
    1.402683f, 1.41036f,  1.418078f, 1.425839f, 1.433642f, 1.441488f, 1.449377f, 1.457309f, 1.465285f, 1.473304f,
    1.481367f, 1.489474f, 1.497626f, 1.505822f, 1.514063f, 1.522349f, 1.530681f, 1.539058f, 1.547481f, 1.55595f,
    1.564465f, 1.573027f, 1.581636f, 1.590292f, 1.598995f, 1.607746f, 1.616545f, 1.625392f, 1.634287f, 1.643231f,
    1.652224f, 1.661266f, 1.670358f, 1.6795f,   1.688691f, 1.697933f, 1.707225f, 1.716569f, 1.725963f, 1.735409f,
    1.744906f, 1.754456f, 1.764058f, 1.773712f, 1.783419f, 1.793179f, 1.802993f, 1.81286f,  1.822782f, 1.832757f,
    1.842788f, 1.852873f, 1.863013f, 1.873209f, 1.883461f, 1.893768f, 1.904132f, 1.914553f, 1.925031f, 1.935567f,
    1.946159f, 1.95681f,  1.96752f,  1.978287f, 1.989114f, 2.0f,
};

f32 gBendPitchTwoSemitonesFrequencies[] = {
    0.890899f, 0.890899f, 0.89171f,  0.892521f, 0.893333f, 0.894146f, 0.89496f,  0.895774f, 0.89659f,  0.897406f,
    0.898222f, 0.89904f,  0.899858f, 0.900677f, 0.901496f, 0.902317f, 0.903138f, 0.90396f,  0.904783f, 0.905606f,
    0.90643f,  0.907255f, 0.908081f, 0.908907f, 0.909734f, 0.910562f, 0.911391f, 0.91222f,  0.91305f,  0.913881f,
    0.914713f, 0.915545f, 0.916379f, 0.917213f, 0.918047f, 0.918883f, 0.919719f, 0.920556f, 0.921394f, 0.922232f,
    0.923072f, 0.923912f, 0.924752f, 0.925594f, 0.926436f, 0.927279f, 0.928123f, 0.928968f, 0.929813f, 0.93066f,
    0.931507f, 0.932354f, 0.933203f, 0.934052f, 0.934902f, 0.935753f, 0.936604f, 0.937457f, 0.93831f,  0.939164f,
    0.940019f, 0.940874f, 0.94173f,  0.942587f, 0.943445f, 0.944304f, 0.945163f, 0.946023f, 0.946884f, 0.947746f,
    0.948608f, 0.949472f, 0.950336f, 0.951201f, 0.952066f, 0.952933f, 0.9538f,   0.954668f, 0.955537f, 0.956406f,
    0.957277f, 0.958148f, 0.95902f,  0.959893f, 0.960766f, 0.961641f, 0.962516f, 0.963392f, 0.964268f, 0.965146f,
    0.966024f, 0.966903f, 0.967783f, 0.968664f, 0.969546f, 0.970428f, 0.971311f, 0.972195f, 0.97308f,  0.973965f,
    0.974852f, 0.975739f, 0.976627f, 0.977516f, 0.978405f, 0.979296f, 0.980187f, 0.981079f, 0.981972f, 0.982865f,
    0.98376f,  0.984655f, 0.985551f, 0.986448f, 0.987346f, 0.988244f, 0.989144f, 0.990044f, 0.990945f, 0.991847f,
    0.992749f, 0.993653f, 0.994557f, 0.995462f, 0.996368f, 0.997275f, 0.998182f, 0.999091f, 1.0f,      1.00091f,
    1.001821f, 1.002733f, 1.003645f, 1.004559f, 1.005473f, 1.006388f, 1.007304f, 1.00822f,  1.009138f, 1.010056f,
    1.010975f, 1.011896f, 1.012816f, 1.013738f, 1.014661f, 1.015584f, 1.016508f, 1.017433f, 1.018359f, 1.019286f,
    1.020214f, 1.021142f, 1.022071f, 1.023002f, 1.023933f, 1.024864f, 1.025797f, 1.026731f, 1.027665f, 1.0286f,
    1.029536f, 1.030473f, 1.031411f, 1.03235f,  1.033289f, 1.03423f,  1.035171f, 1.036113f, 1.037056f, 1.038f,
    1.038944f, 1.03989f,  1.040836f, 1.041783f, 1.042731f, 1.04368f,  1.04463f,  1.045581f, 1.046532f, 1.047485f,
    1.048438f, 1.049392f, 1.050347f, 1.051303f, 1.05226f,  1.053217f, 1.054176f, 1.055135f, 1.056095f, 1.057056f,
    1.058018f, 1.058981f, 1.059945f, 1.06091f,  1.061875f, 1.062842f, 1.063809f, 1.064777f, 1.065746f, 1.066716f,
    1.067687f, 1.068658f, 1.069631f, 1.070604f, 1.071578f, 1.072554f, 1.07353f,  1.074507f, 1.075485f, 1.076463f,
    1.077443f, 1.078424f, 1.079405f, 1.080387f, 1.08137f,  1.082355f, 1.08334f,  1.084325f, 1.085312f, 1.0863f,
    1.087289f, 1.088278f, 1.089268f, 1.09026f,  1.091252f, 1.092245f, 1.093239f, 1.094234f, 1.09523f,  1.096226f,
    1.097224f, 1.098223f, 1.099222f, 1.100222f, 1.101224f, 1.102226f, 1.103229f, 1.104233f, 1.105238f, 1.106244f,
    1.10725f,  1.108258f, 1.109267f, 1.110276f, 1.111287f, 1.112298f, 1.11331f,  1.114323f, 1.115337f, 1.116352f,
    1.117368f, 1.118385f, 1.119403f, 1.120422f, 1.121441f, 1.122462f,
};

f32 gPitchFrequencies[] = {
    /* 0x00 */ 0.105112f,   // PITCH_A0
    /* 0x01 */ 0.111362f,   // PITCH_BFLAT0
    /* 0x02 */ 0.117984f,   // PITCH_B0
    /* 0x03 */ 0.125f,      // PITCH_C1
    /* 0x04 */ 0.132433f,   // PITCH_DFLAT1
    /* 0x05 */ 0.140308f,   // PITCH_D1
    /* 0x06 */ 0.148651f,   // PITCH_EFLAT1
    /* 0x07 */ 0.15749f,    // PITCH_E1
    /* 0x08 */ 0.166855f,   // PITCH_F1
    /* 0x09 */ 0.176777f,   // PITCH_GFLAT1
    /* 0x0A */ 0.187288f,   // PITCH_G1
    /* 0x0B */ 0.198425f,   // PITCH_AFLAT1
    /* 0x0C */ 0.210224f,   // PITCH_A1
    /* 0x0D */ 0.222725f,   // PITCH_BFLAT1
    /* 0x0E */ 0.235969f,   // PITCH_B1
    /* 0x0F */ 0.25f,       // PITCH_C2
    /* 0x10 */ 0.264866f,   // PITCH_DFLAT2
    /* 0x11 */ 0.280616f,   // PITCH_D2
    /* 0x12 */ 0.297302f,   // PITCH_EFLAT2
    /* 0x13 */ 0.31498f,    // PITCH_E2
    /* 0x14 */ 0.33371f,    // PITCH_F2
    /* 0x15 */ 0.353553f,   // PITCH_GFLAT2
    /* 0x16 */ 0.374577f,   // PITCH_G2
    /* 0x17 */ 0.39685f,    // PITCH_AFLAT2
    /* 0x18 */ 0.420448f,   // PITCH_A2
    /* 0x19 */ 0.445449f,   // PITCH_BFLAT2
    /* 0x1A */ 0.471937f,   // PITCH_B2
    /* 0x1B */ 0.5f,        // PITCH_C3
    /* 0x1C */ 0.529732f,   // PITCH_DFLAT3
    /* 0x1D */ 0.561231f,   // PITCH_D3
    /* 0x1E */ 0.594604f,   // PITCH_EFLAT3
    /* 0x1F */ 0.629961f,   // PITCH_E3
    /* 0x20 */ 0.66742f,    // PITCH_F3
    /* 0x21 */ 0.707107f,   // PITCH_GFLAT3
    /* 0x22 */ 0.749154f,   // PITCH_G3
    /* 0x23 */ 0.793701f,   // PITCH_AFLAT3
    /* 0x24 */ 0.840897f,   // PITCH_A3
    /* 0x25 */ 0.890899f,   // PITCH_BFLAT3
    /* 0x26 */ 0.943875f,   // PITCH_B3
    /* 0x27 */ 1.0f,        // PITCH_C4 (Middle C)
    /* 0x28 */ 1.059463f,   // PITCH_DFLAT4
    /* 0x29 */ 1.122462f,   // PITCH_D4
    /* 0x2A */ 1.189207f,   // PITCH_EFLAT4
    /* 0x2B */ 1.259921f,   // PITCH_E4
    /* 0x2C */ 1.33484f,    // PITCH_F4
    /* 0x2D */ 1.414214f,   // PITCH_GFLAT4
    /* 0x2E */ 1.498307f,   // PITCH_G4
    /* 0x2F */ 1.587401f,   // PITCH_AFLAT4
    /* 0x30 */ 1.681793f,   // PITCH_A4
    /* 0x31 */ 1.781798f,   // PITCH_BFLAT4
    /* 0x32 */ 1.887749f,   // PITCH_B4
    /* 0x33 */ 2.0f,        // PITCH_C5
    /* 0x34 */ 2.118926f,   // PITCH_DFLAT5
    /* 0x35 */ 2.244924f,   // PITCH_D5
    /* 0x36 */ 2.378414f,   // PITCH_EFLAT5
    /* 0x37 */ 2.519842f,   // PITCH_E5
    /* 0x38 */ 2.66968f,    // PITCH_F5
    /* 0x39 */ 2.828428f,   // PITCH_GFLAT5
    /* 0x3A */ 2.996615f,   // PITCH_G5
    /* 0x3B */ 3.174803f,   // PITCH_AFLAT5
    /* 0x3C */ 3.363586f,   // PITCH_A5
    /* 0x3D */ 3.563596f,   // PITCH_BFLAT5
    /* 0x3E */ 3.775498f,   // PITCH_B5
    /* 0x3F */ 4.0f,        // PITCH_C6
    /* 0x40 */ 4.237853f,   // PITCH_DFLAT6
    /* 0x41 */ 4.489849f,   // PITCH_D6
    /* 0x42 */ 4.756829f,   // PITCH_EFLAT6
    /* 0x43 */ 5.039685f,   // PITCH_E6
    /* 0x44 */ 5.33936f,    // PITCH_F6
    /* 0x45 */ 5.656855f,   // PITCH_GFLAT6
    /* 0x46 */ 5.993229f,   // PITCH_G6
    /* 0x47 */ 6.349606f,   // PITCH_AFLAT6
    /* 0x48 */ 6.727173f,   // PITCH_A6
    /* 0x49 */ 7.127192f,   // PITCH_BFLAT6
    /* 0x4A */ 7.550996f,   // PITCH_B6
    /* 0x4B */ 8.0f,        // PITCH_C7
    /* 0x4C */ 8.475705f,   // PITCH_DFLAT7
    /* 0x4D */ 8.979697f,   // PITCH_D7
    /* 0x4E */ 9.513658f,   // PITCH_EFLAT7
    /* 0x4F */ 10.07937f,   // PITCH_E7
    /* 0x50 */ 10.6787205f, // PITCH_F7
    /* 0x51 */ 11.31371f,   // PITCH_GFLAT7
    /* 0x52 */ 11.986459f,  // PITCH_G7
    /* 0x53 */ 12.699211f,  // PITCH_AFLAT7
    /* 0x54 */ 13.454346f,  // PITCH_A7
    /* 0x55 */ 14.254383f,  // PITCH_BFLAT7
    /* 0x56 */ 15.101993f,  // PITCH_B7
    /* 0x57 */ 16.0f,       // PITCH_C8
    /* 0x58 */ 16.95141f,   // PITCH_DFLAT8
    /* 0x59 */ 17.959395f,  // PITCH_D8
    /* 0x5A */ 19.027315f,  // PITCH_EFLAT8
    /* 0x5B */ 20.15874f,   // PITCH_E8
    /* 0x5C */ 21.35744f,   // PITCH_F8
    /* 0x5D */ 22.62742f,   // PITCH_GFLAT8
    /* 0x5E */ 23.972918f,  // PITCH_G8
    /* 0x5F */ 25.398422f,  // PITCH_AFLAT8
    /* 0x60 */ 26.908691f,  // PITCH_A8
    /* 0x61 */ 28.508766f,  // PITCH_BFLAT8
    /* 0x62 */ 30.203985f,  // PITCH_B8
    /* 0x63 */ 32.0f,       // PITCH_C9
    /* 0x64 */ 33.90282f,   // PITCH_DFLAT9
    /* 0x65 */ 35.91879f,   // PITCH_D9
    /* 0x66 */ 38.05463f,   // PITCH_EFLAT9
    /* 0x67 */ 40.31748f,   // PITCH_E9
    /* 0x68 */ 42.71488f,   // PITCH_F9
    /* 0x69 */ 45.25484f,   // PITCH_GFLAT9
    /* 0x6A */ 47.945835f,  // PITCH_G9
    /* 0x6B */ 50.796845f,  // PITCH_AFLAT9
    /* 0x6C */ 53.817383f,  // PITCH_A9
    /* 0x6D */ 57.017532f,  // PITCH_BFLAT9
    /* 0x6E */ 60.40797f,   // PITCH_B9
    /* 0x6F */ 64.0f,       // PITCH_C10
    /* 0x70 */ 67.80564f,   // PITCH_DFLAT10
    /* 0x71 */ 71.83758f,   // PITCH_D10
    /* 0x72 */ 76.10926f,   // PITCH_EFLAT10
    /* 0x73 */ 80.63496f,   // PITCH_E10
    /* 0x74 */ 85.42976f,   // PITCH_F10
    /* 0x75 */ 0.055681f,   // PITCH_BFLATNEG1
    /* 0x76 */ 0.058992f,   // PITCH_BNEG1
    /* 0x77 */ 0.0625f,     // PITCH_C0
    /* 0x78 */ 0.066216f,   // PITCH_DFLAT0
    /* 0x79 */ 0.070154f,   // PITCH_D0
    /* 0x7A */ 0.074325f,   // PITCH_EFLAT0
    /* 0x7B */ 0.078745f,   // PITCH_E0
    /* 0x7C */ 0.083427f,   // PITCH_F0
    /* 0x7D */ 0.088388f,   // PITCH_GFLAT0
    /* 0x7E */ 0.093644f,   // PITCH_G0
    /* 0x7F */ 0.099213f,   // PITCH_AFLAT0
};

u8 gDefaultShortNoteVelocityTable[] = {
    12, 25, 38, 51, 57, 64, 71, 76, 83, 89, 96, 102, 109, 115, 121, 127,
};

u8 gDefaultShortNoteGateTimeTable[] = {
    229, 203, 177, 151, 139, 126, 113, 100, 87, 74, 61, 48, 36, 23, 10, 0,
};

EnvelopePoint gDefaultEnvelope[] = {
    { 1, 32000 },
    { 1000, 32000 },
    { ADSR_HANG, 0 },
    { ADSR_DISABLE, 0 },
};

NoteSubEu gZeroNoteSub = { 0 };

NoteSubEu gDefaultNoteSub = {
    { 1, 1, 0, 0, 0, 0, 0, 0 }, { 0 }, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
};

u16 gHeadsetPanQuantization[64] = {
    30 * sizeof(s16),
    29 * sizeof(s16),
    28 * sizeof(s16),
    27 * sizeof(s16),
    26 * sizeof(s16),
    25 * sizeof(s16),
    24 * sizeof(s16),
    23 * sizeof(s16),
    22 * sizeof(s16),
    21 * sizeof(s16),
    20 * sizeof(s16),
    19 * sizeof(s16),
    18 * sizeof(s16),
    17 * sizeof(s16),
    16 * sizeof(s16),
    15 * sizeof(s16),
    14 * sizeof(s16),
    13 * sizeof(s16),
    12 * sizeof(s16),
    11 * sizeof(s16),
    10 * sizeof(s16),
    9 * sizeof(s16),
    8 * sizeof(s16),
    7 * sizeof(s16),
    6 * sizeof(s16),
    5 * sizeof(s16),
    4 * sizeof(s16),
    3 * sizeof(s16),
    2 * sizeof(s16),
    1 * sizeof(s16),
    0,
    0,
    0,
    0,
    0,
    0,
    0,
    0,
    0,
    0,
    0,
    0,
    0,
    0,
    0,
    0,
    0,
    0,
    0,
    0,
    0,
    0,
    0,
    0,
    0,
    0,
    0,
    0,
    0,
    0,
    0,
    0,
    0,
    0,
};

s32 D_8012FBA4 = 0;

// clang-format off
s16 D_8012FBA8[] = {
    0, 0, 0, 0,   0, 0, 0, 0,
    0, 0, 0, 0,   0, 0, 0, 0,
    0, 0, 0, 0,   0, 0, 0, 0,
    0, 0, 0, 0,   0, 0, 0, 0,
    0, 0, 0, 500, 0, 0, 0, 0,
    0, 0, 0, 500, 0, 0, 0, 0,
    0, 0, 0, 500, 0, 0, 0, 0,
    0, 0, 0, 500, 0, 0, 0, 0,
};
// clang-format on

f32 gHeadsetPanVolume[] = {
    1.0f,      0.995386f, 0.990772f, 0.986157f, 0.981543f, 0.976929f, 0.972315f, 0.967701f, 0.963087f, 0.958472f,
    0.953858f, 0.949244f, 0.94463f,  0.940016f, 0.935402f, 0.930787f, 0.926173f, 0.921559f, 0.916945f, 0.912331f,
    0.907717f, 0.903102f, 0.898488f, 0.893874f, 0.88926f,  0.884646f, 0.880031f, 0.875417f, 0.870803f, 0.866189f,
    0.861575f, 0.856961f, 0.852346f, 0.847732f, 0.843118f, 0.838504f, 0.83389f,  0.829276f, 0.824661f, 0.820047f,
    0.815433f, 0.810819f, 0.806205f, 0.801591f, 0.796976f, 0.792362f, 0.787748f, 0.783134f, 0.77852f,  0.773906f,
    0.769291f, 0.764677f, 0.760063f, 0.755449f, 0.750835f, 0.74622f,  0.741606f, 0.736992f, 0.732378f, 0.727764f,
    0.72315f,  0.718535f, 0.713921f, 0.709307f, 0.70537f,  0.70211f,  0.69885f,  0.695591f, 0.692331f, 0.689071f,
    0.685811f, 0.682551f, 0.679291f, 0.676031f, 0.672772f, 0.669512f, 0.666252f, 0.662992f, 0.659732f, 0.656472f,
    0.653213f, 0.649953f, 0.646693f, 0.643433f, 0.640173f, 0.636913f, 0.633654f, 0.630394f, 0.627134f, 0.623874f,
    0.620614f, 0.617354f, 0.614094f, 0.610835f, 0.607575f, 0.604315f, 0.601055f, 0.597795f, 0.594535f, 0.591276f,
    0.588016f, 0.584756f, 0.581496f, 0.578236f, 0.574976f, 0.571717f, 0.568457f, 0.565197f, 0.561937f, 0.558677f,
    0.555417f, 0.552157f, 0.548898f, 0.545638f, 0.542378f, 0.539118f, 0.535858f, 0.532598f, 0.529339f, 0.526079f,
    0.522819f, 0.519559f, 0.516299f, 0.513039f, 0.50978f,  0.50652f,  0.50326f,  0.5f,
};

f32 gStereoPanVolume[] = {
    0.707f,    0.716228f, 0.725457f, 0.734685f, 0.743913f, 0.753142f, 0.76237f,  0.771598f, 0.780827f, 0.790055f,
    0.799283f, 0.808512f, 0.81774f,  0.826968f, 0.836197f, 0.845425f, 0.854654f, 0.863882f, 0.87311f,  0.882339f,
    0.891567f, 0.900795f, 0.910024f, 0.919252f, 0.92848f,  0.937709f, 0.946937f, 0.956165f, 0.965394f, 0.974622f,
    0.98385f,  0.993079f, 0.997693f, 0.988465f, 0.979236f, 0.970008f, 0.960779f, 0.951551f, 0.942323f, 0.933095f,
    0.923866f, 0.914638f, 0.905409f, 0.896181f, 0.886953f, 0.877724f, 0.868496f, 0.859268f, 0.850039f, 0.840811f,
    0.831583f, 0.822354f, 0.813126f, 0.803898f, 0.794669f, 0.785441f, 0.776213f, 0.766984f, 0.757756f, 0.748528f,
    0.739299f, 0.730071f, 0.720843f, 0.711614f, 0.695866f, 0.673598f, 0.651331f, 0.629063f, 0.606795f, 0.584528f,
    0.56226f,  0.539992f, 0.517724f, 0.495457f, 0.473189f, 0.450921f, 0.428654f, 0.406386f, 0.384118f, 0.36185f,
    0.339583f, 0.317315f, 0.295047f, 0.27278f,  0.250512f, 0.228244f, 0.205976f, 0.183709f, 0.161441f, 0.139173f,
    0.116905f, 0.094638f, 0.07237f,  0.050102f, 0.027835f, 0.005567f, 0.00835f,  0.019484f, 0.030618f, 0.041752f,
    0.052886f, 0.06402f,  0.075154f, 0.086287f, 0.097421f, 0.108555f, 0.119689f, 0.130823f, 0.141957f, 0.153091f,
    0.164224f, 0.175358f, 0.186492f, 0.197626f, 0.20876f,  0.219894f, 0.231028f, 0.242161f, 0.253295f, 0.264429f,
    0.275563f, 0.286697f, 0.297831f, 0.308965f, 0.320098f, 0.331232f, 0.342366f, 0.3535f,
};

f32 gDefaultPanVolume[] = {
    1.0f,      0.999924f, 0.999694f, 0.999312f, 0.998776f, 0.998088f, 0.997248f, 0.996254f, 0.995109f, 0.993811f,
    0.992361f, 0.990759f, 0.989006f, 0.987101f, 0.985045f, 0.982839f, 0.980482f, 0.977976f, 0.97532f,  0.972514f,
    0.96956f,  0.966457f, 0.963207f, 0.959809f, 0.956265f, 0.952574f, 0.948737f, 0.944755f, 0.940629f, 0.936359f,
    0.931946f, 0.92739f,  0.922692f, 0.917853f, 0.912873f, 0.907754f, 0.902497f, 0.897101f, 0.891567f, 0.885898f,
    0.880093f, 0.874153f, 0.868079f, 0.861873f, 0.855535f, 0.849066f, 0.842467f, 0.835739f, 0.828884f, 0.821901f,
    0.814793f, 0.807561f, 0.800204f, 0.792725f, 0.785125f, 0.777405f, 0.769566f, 0.76161f,  0.753536f, 0.745348f,
    0.737045f, 0.72863f,  0.720103f, 0.711466f, 0.70272f,  0.693867f, 0.684908f, 0.675843f, 0.666676f, 0.657406f,
    0.648036f, 0.638567f, 0.629f,    0.619337f, 0.609579f, 0.599728f, 0.589785f, 0.579752f, 0.56963f,  0.559421f,
    0.549126f, 0.538748f, 0.528287f, 0.517745f, 0.507124f, 0.496425f, 0.485651f, 0.474802f, 0.46388f,  0.452888f,
    0.441826f, 0.430697f, 0.419502f, 0.408243f, 0.396921f, 0.385538f, 0.374097f, 0.362598f, 0.351044f, 0.339436f,
    0.327776f, 0.316066f, 0.304308f, 0.292503f, 0.280653f, 0.268761f, 0.256827f, 0.244854f, 0.232844f, 0.220798f,
    0.208718f, 0.196606f, 0.184465f, 0.172295f, 0.160098f, 0.147877f, 0.135634f, 0.12337f,  0.111087f, 0.098786f,
    0.086471f, 0.074143f, 0.061803f, 0.049454f, 0.037097f, 0.024734f, 0.012368f, 0.0f,
};

s16 gLowPassFilterData[16 * 8] = {
    /* 0x0 */ 0,     0,     0,    32767, 0,    0,     0,     0, // Identity filter (delta function)
    /* 0x1 */ 3854,  4188,  4398, 4469,  4398, 4188,  3854,  3416,
    /* 0x2 */ 3415,  4314,  4915, 5126,  4915, 4314,  3415,  2351,
    /* 0x3 */ 2636,  4433,  5762, 6252,  5762, 4433,  2636,  849,
    /* 0x4 */ 1334,  4196,  6646, 7609,  6646, 4196,  1334,  -802,
    /* 0x5 */ -265,  3421,  7292, 8944,  7292, 3421,  -265,  -1863,
    /* 0x6 */ -1558, 2065,  7146, 9546,  7146, 2065,  -1558, -1682,
    /* 0x7 */ -2353, 726,   7441, 11028, 7441, 726,   -2353, -697,
    /* 0x8 */ -2252, -693,  7121, 11962, 7121, -693,  -2252, 668,
    /* 0x9 */ -1373, -1819, 6299, 12298, 6299, -1819, -1373, 1484,
    /* 0xA */ -213,  -2740, 5843, 13680, 5843, -2740, -213,  1494,
    /* 0xB */ 980,   -3081, 4883, 14286, 4883, -3081, 980,   590,
    /* 0xC */ 1769,  -2973, 3866, 14981, 3866, -2973, 1769,  -568,
    /* 0xD */ 2023,  -2554, 2911, 16397, 2911, -2554, 2023,  -1391,
    /* 0xE */ 1766,  -1918, 2016, 19800, 2016, -1918, 1766,  -1564,
    /* 0xF */ 841,   -853,  863,  26829, 863,  -853,  841,   -820,
};

s16 gHighPassFilterData[15 * 8] = {
    /* 0x0 */ -289,  -291,  -289,  30736, -289,  -291,  -289,  -290,
    /* 0x1 */ -464,  -467,  -467,  29506, -467,  -467,  -464,  -463,
    /* 0x2 */ -662,  -670,  -672,  28101, -672,  -670,  -662,  -656,
    /* 0x3 */ -839,  -855,  -861,  26830, -861,  -855,  -839,  -822,
    /* 0x4 */ -996,  -1024, -1038, 25685, -1038, -1024, -996,  -963,
    /* 0x5 */ -1184, -1236, -1266, 24272, -1266, -1236, -1184, -1118,
    /* 0x6 */ -1357, -1450, -1506, 22900, -1506, -1450, -1357, -1238,
    /* 0x7 */ -1514, -1680, -1784, 21498, -1784, -1680, -1514, -1307,
    /* 0x8 */ -1613, -1877, -2048, 20390, -2048, -1877, -1613, -1298,
    /* 0x9 */ -1657, -2185, -2559, 18869, -2559, -2185, -1657, -1093,
    /* 0xA */ -1524, -2395, -3078, 18030, -3078, -2395, -1524, -739,
    /* 0xB */ -1253, -2504, -3621, 17642, -3621, -2504, -1253, -367,
    /* 0xC */ -525,  -2367, -4732, 17517, -4732, -2367, -525,  0,
    /* 0xD */ -34,   -1762, -5706, 17503, -5706, -1762, -34,   -258,
    /* 0xE */ -772,  -3,    -6985, 17240, -6985, -3,    -772,  -3,
};

s16 D_80130418[8 * 8] = {
    /* 0x0 */ 0,      6392,   12539,  18204,  23169,  27244,  30272,  32137,
    /* 0x1 */ 32767,  32137,  30272,  27244,  23169,  18204,  12539,  6392,
    /* 0x2 */ 0,      -3211,  -6392,  -9511,  -12539, -15446, -18204, -20787,
    /* 0x3 */ -23169, -25329, -27244, -28897, -30272, -31356, -32137, -32609,
    /* 0x4 */ -32767, -32609, -32137, -31356, -30272, -28897, -27244, -25329,
    /* 0x5 */ -23169, -25329, -27244, -28897, -30272, -31356, -32137, -32609,
    /* 0x6 */ -32767, -32609, -32137, -31356, -30272, -28897, -27244, -25329,
    /* 0x7 */ -23169, -20787, -18204, -15446, -12539, -9511,  -6392,  -3211,
};
