#include "z_en_zl4.h"

static CutsceneCameraDirection sCamDirections[] = {
    { { -490.0f, 120.0f, 0.0f }, { -440.0f, 117.0f, 0.0f }, 0, 45 },
    { { -484.0f, 122.0f, -29.0f }, { -480.0f, 116.0f, 18.0f }, 0, 80 },
    { { -413.0f, 136.0f, -72.0f }, { -403.0f, 141.0f, -89.0f }, 0, 25 },
    { { -454.0f, 120.0f, 0.0f }, { -434.0f, 121.0f, 0.0f }, 0, 20 },
    { { -453.0f, 107.0f, -13.0f }, { -440.0f, 102.0f, -25.0f }, 0, 40 },
    { { -454.0f, 105.0f, 50.0f }, { -453.0f, 105.0f, 66.0f }, 0, 60 },
    { { -496.0f, 119.0f, 0.0f }, { -443.0f, 115.0f, 0.0f }, 0, 45 },
    { { -482.0f, 119.0f, 0.0f }, { -440.0f, 115.0f, 0.0f }, 0, 30 },
    { { -551.0f, 119.0f, 7.0f }, { -587.0f, 115.0f, 14.0f }, 0, 25 },
    { { -489.0f, 129.0f, 0.0f }, { -470.0f, 128.0f, 0.0f }, 0, 40 },
    { { -525.0f, 126.0f, 0.0f }, { -509.0f, 126.0f, 0.0f }, 0, 10 },
    { { -491.0f, 120.0f, -7.0f }, { -509.0f, 115.0f, -7.0f }, 0, 75 },
    { { -485.0f, 119.0f, -35.0f }, { -484.0f, 116.0f, 15.0f }, 0, 45 },
    { { -484.0f, 123.0f, -6.0f }, { -435.0f, 122.0f, -11.0f }, 0, 45 },
};

static CutsceneCameraPoint D_80B5EC70[] = {
    { 0, 0, 20, 80.79987f, { -484, 122, -29 } },  { 0, 0, 20, 80.79987f, { -484, 122, -29 } },
    { 0, 0, 20, 80.79987f, { -484, 122, -29 } },  { 0, 0, 20, 80.79987f, { -452, 121, -21 } },
    { 0, 0, 20, 80.79987f, { -452, 121, -21 } },  { 0, 0, 20, 80.79987f, { -452, 121, -21 } },
    { -1, 0, 20, 80.79987f, { -452, 121, -21 } }, { -1, 0, 30, 80.79987f, { -452, 121, -21 } },
};
static CutsceneCameraPoint D_80B5ECF0[] = {
    { 0, 0, 0, 80.79987f, { -480, 116, 18 } },  { 0, 0, 0, 80.79987f, { -480, 116, 18 } },
    { 0, 0, 0, 80.79987f, { -480, 116, 18 } },  { 0, 0, 0, 80.79987f, { -480, 116, 18 } },
    { 0, 0, 0, 80.79987f, { -480, 116, 18 } },  { 0, 0, 0, 80.79987f, { -480, 116, 18 } },
    { -1, 0, 0, 80.79987f, { -480, 116, 18 } }, { -1, 0, 0, 80.79987f, { -480, 116, 18 } },
};
static CutsceneCameraPoint D_80B5ED70[] = {
    { 0, 0, 20, 45.200058f, { -439, 116, 0 } }, { 0, 0, 20, 45.200058f, { -439, 116, 0 } },
    { 0, 0, 20, 50.60008f, { -433, 116, 0 } },  { 0, 0, 20, 55.600098f, { -431, 116, 0 } },
    { 0, 0, 20, 60.000114f, { -427, 116, 0 } }, { 0, 0, 20, 65.000114f, { -424, 116, 0 } },
    { 0, 0, 20, 70.800026f, { -422, 116, 0 } }, { 0, 0, 20, 75.59995f, { -419, 115, 0 } },
    { -1, 0, 20, 75.59995f, { -419, 116, 0 } }, { -1, 0, 30, 75.59995f, { -419, 115, 0 } },
};
static CutsceneCameraPoint D_80B5EE10[] = {
    { 0, 0, 0, 60.400116f, { -480, 114, 0 } }, { 0, 0, 0, 45.200058f, { -480, 114, 0 } },
    { 0, 0, 0, 45.200058f, { -474, 114, 0 } }, { 0, 0, 0, 50.60008f, { -472, 114, 0 } },
    { 0, 0, 0, 55.600098f, { -468, 114, 0 } }, { 0, 0, 0, 60.000114f, { -465, 114, 0 } },
    { 0, 0, 0, 65.000114f, { -463, 114, 0 } }, { 0, 0, 0, 70.800026f, { -460, 114, 0 } },
    { -1, 0, 0, 75.59995f, { -460, 114, 0 } }, { -1, 0, 0, 75.59995f, { -460, 114, 0 } },
};
static CutsceneCameraPoint D_80B5EEB0[] = {
    { 0, 0, 25, 60.000114f, { -116, 50, 469 } },  { 0, 0, 25, 60.000114f, { -116, 50, 469 } },
    { 0, 0, 25, 60.000114f, { -118, 50, 467 } },  { 0, 0, 25, 60.000114f, { -120, 50, 465 } },
    { 0, 0, 25, 60.000114f, { -123, 50, 464 } },  { 0, 0, 25, 60.000114f, { -126, 50, 463 } },
    { 0, 0, 25, 60.000114f, { -129, 50, 462 } },  { 0, 0, 25, 60.000114f, { -131, 50, 462 } },
    { 0, 0, 25, 60.000114f, { -134, 50, 463 } },  { 0, 0, 25, 60.000114f, { -137, 50, 464 } },
    { 0, 0, 25, 60.000114f, { -140, 50, 466 } },  { 0, 0, 25, 60.000114f, { -140, 50, 466 } },
    { -1, 0, 25, 60.000114f, { -140, 50, 466 } }, { -1, 0, 25, 60.000114f, { -140, 50, 466 } },
};
static CutsceneCameraPoint D_80B5EF90[] = {
    { 0, 0, 0, 20.399963f, { -130, 50, 480 } },  { 0, 0, 0, 60.000114f, { -130, 50, 480 } },
    { 0, 0, 0, 60.000114f, { -130, 50, 480 } },  { 0, 0, 0, 60.000114f, { -130, 50, 480 } },
    { 0, 0, 0, 60.000114f, { -130, 50, 480 } },  { 0, 0, 0, 60.000114f, { -130, 50, 480 } },
    { 0, 0, 0, 60.000114f, { -130, 50, 480 } },  { 0, 0, 0, 60.000114f, { -130, 50, 480 } },
    { 0, 0, 0, 60.000114f, { -130, 50, 480 } },  { 0, 0, 0, 60.000114f, { -130, 50, 480 } },
    { 0, 0, 0, 60.000114f, { -130, 50, 480 } },  { 0, 0, 0, 60.000114f, { -130, 50, 480 } },
    { -1, 0, 0, 60.000114f, { -130, 50, 480 } }, { -1, 0, 0, 60.000114f, { -130, 50, 480 } },
};
static CutsceneCameraPoint D_80B5F070[] = {
    { 0, 0, 30, 20.799965f, { -427, 116, 4 } },   { 0, 0, 30, 20.799965f, { -426, 115, 4 } },
    { 0, 0, 30, 20.799965f, { -429, 115, 7 } },   { 0, 0, 30, 20.799965f, { -428, 114, 12 } },
    { 0, 0, 30, 20.799965f, { -430, 114, 14 } },  { 0, 0, 30, 20.799965f, { -430, 114, 14 } },
    { 0, 0, 30, 20.799965f, { -430, 114, 14 } },  { -1, 0, 30, 20.799965f, { -430, 112, 14 } },
    { -1, 0, 30, 20.799965f, { -430, 112, 14 } },
};
static CutsceneCameraPoint D_80B5F100[] = {
    { 0, 0, 0, 20.799965f, { -389, 109, 36 } },  { 0, 0, 0, 20.799965f, { -389, 109, 36 } },
    { 0, 0, 0, 20.799965f, { -389, 109, 36 } },  { 0, 0, 0, 20.799965f, { -389, 109, 36 } },
    { 0, 0, 0, 20.799965f, { -389, 109, 36 } },  { 0, 0, 0, 20.799965f, { -389, 109, 36 } },
    { 0, 0, 0, 20.799965f, { -389, 109, 36 } },  { -1, 0, 0, 20.799965f, { -389, 109, 36 } },
    { -1, 0, 0, 20.799965f, { -389, 109, 36 } },
};
static CutsceneCameraPoint D_80B5F190[] = {
    { 0, 0, 30, 45.0f, { -496, 119, 0 } },     { 0, 0, 30, 45.0f, { -496, 119, 0 } },
    { 0, 0, 30, 45.0f, { -496, 119, 0 } },     { 0, 0, 15, 45.0f, { -496, 119, 0 } },
    { 0, 0, 15, 45.80006f, { -471, 122, 0 } }, { 0, 0, 15, 45.80006f, { -395, 139, 0 } },
    { 0, 0, 15, 45.80006f, { -193, 183, 0 } }, { 0, 0, 15, 45.80006f, { 29, 232, 0 } },
    { 0, 0, 30, 45.80006f, { 360, 304, 0 } },  { 0, 0, 30, 45.80006f, { 429, 328, 0 } },
    { 0, 0, 30, 45.80006f, { 429, 328, 0 } },  { 0, 0, 30, 45.80006f, { 429, 328, 0 } },
    { 0, 0, 30, 45.80006f, { 429, 328, 0 } },  { -1, 0, 30, 45.80006f, { 429, 328, 0 } },
    { -1, 0, 30, 45.80006f, { 429, 328, 0 } },
};
static CutsceneCameraPoint D_80B5F280[] = {
    { 0, 0, 0, 45.0f, { -443, 115, 0 } },     { 0, 0, 0, 45.0f, { -443, 115, 0 } },
    { 0, 0, 0, 45.0f, { -443, 115, 0 } },     { 0, 0, 0, 45.0f, { -443, 115, 0 } },
    { 0, 0, 0, 45.80006f, { -420, 133, 0 } }, { 0, 0, 0, 45.80006f, { -344, 150, 0 } },
    { 0, 0, 0, 45.80006f, { -143, 194, 0 } }, { 0, 0, 0, 45.80006f, { 80, 243, 0 } },
    { 0, 0, 0, 45.80006f, { 412, 315, 0 } },  { 0, 0, 0, 45.80006f, { 482, 332, 0 } },
    { 0, 0, 0, 45.80006f, { 482, 332, 0 } },  { 0, 0, 0, 45.80006f, { 482, 332, 0 } },
    { 0, 0, 0, 45.80006f, { 482, 332, 0 } },  { -1, 0, 0, 45.80006f, { 482, 332, 0 } },
    { -1, 0, 0, 45.80006f, { 482, 332, 0 } },
};
static CutsceneCameraPoint D_80B5F370[] = {
    { 0, 0, 25, 60.600117f, { 66, 404, 425 } },  { 0, 0, 25, 60.400116f, { 66, 404, 425 } },
    { 0, 0, 25, 55.600098f, { 66, 404, 426 } },  { 0, 0, 25, 55.200096f, { 63, 373, 413 } },
    { 0, 0, 25, 50.400078f, { 26, 353, 408 } },  { 0, 0, 25, 50.400078f, { 17, 325, 397 } },
    { 0, 0, 25, 45.40006f, { 17, 326, 397 } },   { 0, 0, 25, 45.200058f, { -136, 177, 259 } },
    { 0, 0, 25, 40.40004f, { -258, 111, 169 } }, { 0, 0, 25, 40.20004f, { -377, 108, 65 } },
    { 0, 0, 25, 35.20002f, { -377, 108, 65 } },  { 0, 0, 25, 35.20002f, { -377, 108, 65 } },
    { -1, 0, 30, 30.2f, { -376, 108, 65 } },     { -1, 0, 30, 30.2f, { -376, 108, 65 } },
};
static CutsceneCameraPoint D_80B5F450[] = {
    { 0, 0, 0, 45.80006f, { 29, 383, 445 } }, { 0, 0, 0, 45.80006f, { 29, 383, 445 } },
    { 0, 0, 0, 45.80006f, { 29, 383, 445 } }, { 0, 0, 0, 45.80006f, { 29, 383, 445 } },
    { 0, 0, 0, 45.80006f, { 29, 383, 445 } }, { 0, 0, 0, 45.80006f, { 49, 347, 424 } },
    { 0, 0, 0, 45.80006f, { 49, 347, 424 } }, { 0, 0, 0, 30.2f, { -103, 192, 286 } },
    { 0, 0, 0, 30.2f, { -224, 113, 198 } },   { 0, 0, 0, 30.2f, { -345, 109, 96 } },
    { 0, 0, 0, 30.2f, { -345, 109, 96 } },    { 0, 0, 0, 30.2f, { -345, 109, 96 } },
    { -1, 0, 0, 30.2f, { -345, 109, 96 } },   { -1, 0, 0, 30.2f, { -345, 109, 96 } },
};
static CutsceneCameraPoint D_80B5F530[] = {
    { 0, 0, 10, 30.0f, { -482, 119, 0 } },       { 0, 0, 10, 30.0f, { -482, 119, 0 } },
    { 0, 0, 10, 30.0f, { -482, 119, 0 } },       { 0, 0, 10, 30.800003f, { -482, 119, 0 } },
    { 0, 0, 10, 30.800003f, { -482, 119, 0 } },  { 0, 0, 10, 30.800003f, { -462, 126, 0 } },
    { 0, 0, 30, 30.800003f, { -395, 150, 0 } },  { 0, 0, 30, 30.800003f, { -395, 150, 0 } },
    { -1, 0, 30, 30.800003f, { -395, 150, 0 } }, { -1, 0, 30, 30.800003f, { -395, 150, 0 } },
};
static CutsceneCameraPoint D_80B5F5D0[] = {
    { 0, 0, 0, 30.0f, { -440, 115, 0 } },       { 0, 0, 0, 30.0f, { -440, 115, 0 } },
    { 0, 0, 0, 30.0f, { -440, 115, 0 } },       { 0, 0, 0, 30.800003f, { -440, 115, 0 } },
    { 0, 0, 0, 30.800003f, { -440, 115, 0 } },  { 0, 0, 0, 30.800003f, { -423, 142, 0 } },
    { 0, 0, 0, 30.800003f, { -358, 171, 0 } },  { 0, 0, 0, 30.800003f, { -358, 171, 0 } },
    { -1, 0, 0, 30.800003f, { -358, 171, 0 } }, { -1, 0, 0, 30.800003f, { -358, 171, 0 } },
};
static CutsceneCameraPoint D_80B5F670[] = {
    { 0, 0, 30, 25.0f, { -551, 119, 7 } },   { 0, 0, 30, 25.0f, { -551, 119, 7 } },
    { 0, 0, 15, 25.0f, { -551, 119, 7 } },   { 0, 0, 15, 60.0f, { -485, 120, -7 } },
    { 0, 0, 30, 60.0f, { -485, 120, -7 } },  { 0, 0, 30, 60.0f, { -485, 120, -7 } },
    { 0, 0, 30, 60.0f, { -485, 118, -5 } },  { -1, 0, 30, 60.0f, { -485, 119, -6 } },
    { -1, 0, 30, 60.0f, { -485, 119, -6 } },
};
static CutsceneCameraPoint D_80B5F700[] = {
    { 0, 0, 0, 45.200058f, { -587, 115, 14 } }, { 0, 0, 0, 25.400097f, { -587, 115, 14 } },
    { 0, 0, 0, 25.400097f, { -587, 115, 14 } }, { 0, 0, 0, 60.20023f, { -521, 117, -1 } },
    { 0, 0, 0, 60.20023f, { -521, 117, -1 } },  { 0, 0, 0, 60.20023f, { -521, 117, -1 } },
    { 0, 0, 0, 60.20023f, { -521, 117, -1 } },  { -1, 0, 0, 60.20023f, { -521, 116, 0 } },
    { -1, 0, 0, 60.19925f, { -521, 116, 0 } },
};
static CutsceneCameraPoint D_80B5F790[] = {
    { 0, 0, 30, 60.000114f, { 75, 52, 50 } },   { 0, 0, 30, 60.000114f, { 75, 52, 48 } },
    { 0, 0, 60, 60.000114f, { 74, 52, 45 } },   { 0, 0, 60, 60.000114f, { 49, 51, -43 } },
    { 0, 0, 30, 60.000114f, { 49, 51, -43 } },  { 0, 0, 30, 60.000114f, { 49, 51, -43 } },
    { -1, 0, 30, 60.000114f, { 49, 51, -43 } }, { -1, 0, 30, 60.000114f, { 49, 51, -43 } },
};
static CutsceneCameraPoint D_80B5F810[] = {
    { 0, 0, 0, 60.000114f, { 90, 52, 53 } },   { 0, 0, 0, 60.000114f, { 90, 52, 50 } },
    { 0, 0, 0, 60.000114f, { 90, 52, 45 } },   { 0, 0, 0, 60.000114f, { 65, 51, -44 } },
    { 0, 0, 0, 60.000114f, { 65, 51, -44 } },  { 0, 0, 0, 60.000114f, { 65, 51, -44 } },
    { -1, 0, 0, 60.000114f, { 65, 51, -44 } }, { -1, 0, 0, 60.000114f, { 65, 51, -44 } },
};
static CutsceneCameraPoint D_80B5F890[] = {
    { 0, 0, 31, 60.000114f, { -449, 121, -19 } },  { 0, 0, 30, 60.000114f, { -449, 121, -19 } },
    { 0, 0, 30, 60.000114f, { -449, 121, -19 } },  { 0, 0, 30, 60.000114f, { -456, 110, -17 } },
    { 0, 0, 30, 60.000114f, { -456, 110, -17 } },  { 0, 0, 30, 60.000114f, { -456, 110, -17 } },
    { -1, 0, 30, 60.000114f, { -456, 110, -17 } }, { -1, 0, 30, 60.000114f, { -456, 110, -17 } },
};
static CutsceneCameraPoint D_80B5F910[] = {
    { 0, 0, 0, 60.000114f, { -441, 107, -22 } },  { 0, 0, 0, 60.000114f, { -441, 107, -22 } },
    { 0, 0, 0, 60.000114f, { -441, 107, -22 } },  { 0, 0, 0, 60.000114f, { -441, 107, -22 } },
    { 0, 0, 0, 60.000114f, { -441, 107, -22 } },  { 0, 0, 0, 60.000114f, { -441, 107, -22 } },
    { -1, 0, 0, 60.000114f, { -441, 107, -22 } }, { -1, 0, 0, 60.000114f, { -441, 107, -22 } },
};
static CutsceneCameraPoint D_80B5F990[] = {
    { 0, 0, 30, 20.799965f, { -331, 110, -91 } }, { 0, 0, 30, 20.799965f, { -331, 110, -91 } },
    { 0, 0, 30, 20.799965f, { -331, 110, -91 } }, { 0, 0, 30, 20.799965f, { -511, 121, 7 } },
    { 0, 0, 30, 20.799965f, { -511, 121, 7 } },   { 0, 0, 30, 20.799965f, { -511, 121, 7 } },
    { -1, 0, 30, 20.799965f, { -511, 121, 7 } },  { -1, 0, 30, 20.799965f, { -511, 121, 7 } },
};
static CutsceneCameraPoint D_80B5FA10[] = {
    { 0, 0, 0, 20.799965f, { -369, 110, -70 } }, { 0, 0, 0, 20.799965f, { -369, 110, -70 } },
    { 0, 0, 0, 20.799965f, { -369, 110, -70 } }, { 0, 0, 0, 20.799965f, { -549, 124, 29 } },
    { 0, 0, 0, 20.799965f, { -549, 124, 29 } },  { 0, 0, 0, 20.799965f, { -549, 124, 29 } },
    { -1, 0, 0, 20.799965f, { -549, 124, 29 } }, { -1, 0, 0, 20.799965f, { -549, 124, 29 } },
};

static CutsceneCameraMove sActiveCamMove[] = {
    { D_80B5EC70, D_80B5ECF0, 0 }, { D_80B5ED70, D_80B5EE10, 0 }, { D_80B5EEB0, D_80B5EF90, 0 },
    { D_80B5F070, D_80B5F100, 0 }, { D_80B5F190, D_80B5F280, 0 }, { D_80B5F370, D_80B5F450, 0 },
    { D_80B5F530, D_80B5F5D0, 0 }, { D_80B5F670, D_80B5F700, 0 }, { D_80B5F790, D_80B5F810, 0 },
    { D_80B5F890, D_80B5F910, 0 }, { D_80B5F990, D_80B5FA10, 0 },
};
