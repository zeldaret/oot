#include "ultra64.h"
#include "z64.h"
#include "macros.h"
#include "gameplay_keep.h"
#include "assets/misc/link_animetion/link_animetion.h"

u64 gHilite1Tex[] = {
#include "assets/objects/gameplay_keep/hilite_1.rgba16.inc.c"
};

u64 gHilite2Tex[] = {
#include "assets/objects/gameplay_keep/hilite_2.rgba16.inc.c"
};

u64 gHylianShieldDesignTex[] = {
#include "assets/objects/gameplay_keep/hylian_shield_design.rgba16.inc.c"
};

u64 gOcarinaofTimeDesignTex[] = {
#include "assets/objects/gameplay_keep/ocarina_of_time_design.rgba16.inc.c"
};

u64 gBottleGlassTex[] = {
#include "assets/objects/gameplay_keep/bottle_glass.rgba16.inc.c"
};

u64 gDekuStickTex[] = {
#include "assets/objects/gameplay_keep/deku_stick.i8.inc.c"
};

u64 gLinkHairTex[] = {
#include "assets/objects/gameplay_keep/link_hair.rgba16.inc.c"
};

u64 gLinkTunic1Tex[] = {
#include "assets/objects/gameplay_keep/link_tunic_1.i8.inc.c"
};

u64 gLinkTunic2Tex[] = {
#include "assets/objects/gameplay_keep/link_tunic_2.i8.inc.c"
};

u64 gLinkTunic3Tex[] = {
#include "assets/objects/gameplay_keep/link_tunic_3.i8.inc.c"
};

Vec3s gLinkPauseChildJointTable[] = {
    {    -37,   2346,     93 },
    {      0,  11995,      0 },
    { -16385,   -305, -16333 },
    {      0,     51,     12 },
    {   3761,   2263,   -384 },
    {      0,      0,   3786 },
    {   1594,   1384, -18344 },
    {  -2288,  -2428,  -1562 },
    {      0,      0,   3219 },
    {  -2148,     -5, -16840 },
    {  15365,  -1708,  15611 },
    {   1761,   8365,  17711 },
    {      0,      0,  18859 },
    {      0,      0,      0 },
    {  -9392,  -9579,  28686 },
    {      0,      0,  -7093 },
    {  -2748,    685, -14092 },
    {    213,   6553, -32212 },
    {      0,      0,  -1877 },
    {   3267,   3309, -16090 },
    { -18101,  25946,  -2670 },
    {   -104,      0,      0 },
    {      0,      0,      0 },
    {      0,      0,      0 }
};

Vec3s gLinkPauseChildDekuShieldJointTable[] = {
    {    -37,   2346,     93 },
    {      0,      0,      0 },
    { -16385,   -305, -16333 },
    {      0,     51,     12 },
    {   3772,   2035,   -691 },
    {      0,      0,   4065 },
    {   1594,   1384, -18344 },
    {  -2642,  -1922,   1479 },
    {      0,      0,      0 },
    {  -2148,     -5, -16840 },
    {  19142,    330,  15619 },
    {     18,   2734,  17602 },
    {      0,      0,  19902 },
    {      0,      0,      0 },
    { -11942,  -3370, -28056 },
    {      0,      0,  -7093 },
    {  -2634,  -1046, -20439 },
    {  -5943,   8897, -31239 },
    {      0,      0, -18149 },
    {   5367,   4005, -18767 },
    { -16384,  27240,   -730 },
    {   -104,      0,      0 },
    {      0,      0,      0 },
    {      0,      0,      0 }
};

Vec3s gLinkPauseAdultBgsJointTable[] = {
    {    112,   3506,   -156 },
    {      0,   7927,      0 },
    { -18104,    728, -17116 },
    {      0,      0,      0 },
    {   5584,   2893,   -779 },
    {      0,      0,   2813 },
    {   2710,   1166, -16888 },
    {  -2057,  -3191,  -2192 },
    {      0,      0,   4577 },
    {  -2215,  -1317, -18974 },
    {  22897,   -947,  17702 },
    {   1386,   9779,  19889 },
    {      0,      0,  19902 },
    {      0,      0,      0 },
    {  11423,  -1937,  26391 },
    {      0,      0, -15854 },
    { -16991, -26137,  13708 },
    {  -6976,  -2831,  26031 },
    {      0,      0,  -4798 },
    {   4441,    221, -18986 },
    { -19499,  27753,   -227 },
    {      0,      0,      0 },
    {      0,      0,      0 },
    {      0,      0,      0 }
};

Vec3s gLinkPauseAdultJointTable[] = {
    {     37,   3529,      0 },
    {      0,      0,      0 },
    { -18104,    728, -17116 },
    {      0,      0,      0 },
    {   3114,   1725,  -1243 },
    {      0,      0,   2607 },
    {   2184,   1320, -17823 },
    {  -2001,  -2988,  -3620 },
    {      0,      0,   5024 },
    {  -1665,  -1220, -18352 },
    {  23087,   -313,  16384 },
    {   -474,   5888,  18054 },
    {      0,      0,  19902 },
    {      0,      0,      0 },
    {  -2318,  -1154,  30091 },
    {      0,      0,  -5945 },
    {    124,   -489, -19513 },
    {   5893,   3955, -26617 },
    {      0,      0,  -5319 },
    {   5865,   3517, -16725 },
    { -15534,  27097,   2355 },
    {      0,      0,      0 },
    {      0,      0,      0 },
    {      0,      0,      0 }
};

Vec3s gLinkPauseAdultShieldJointTable[] = {
    {     37,   3529,      0 },
    {      0,      0,      0 },
    { -18104,    728, -17116 },
    {      0,      0,      0 },
    {   3114,   1725,  -1243 },
    {      0,      0,   2607 },
    {   2184,   1320, -17823 },
    {  -2001,  -2988,  -3620 },
    {      0,      0,   5024 },
    {  -1665,  -1220, -18352 },
    {  23087,   -313,  16384 },
    {   -474,   5888,  18054 },
    {      0,      0,  19902 },
    {      0,      0,      0 },
    {  -2318,  -1154,  30091 },
    {      0,      0,  -5945 },
    {    124,   -489, -19513 },
    {   5893,   3955, -26617 },
    {      0,      0, -19192 },
    {   5865,   3517, -16725 },
    { -15534,  27097,   2355 },
    {      0,      0,      0 },
    {      0,      0,      0 },
    {      0,      0,      0 }
};

LinkAnimationHeader gPlayerAnim_002310 = { 
    { 51 }, gPlayerAnimData_00D710
};

LinkAnimationHeader gPlayerAnim_002318 = { 
    { 133 }, gPlayerAnimData_00F1D0
};

LinkAnimationHeader gPlayerAnim_002320 = { 
    { 33 }, gPlayerAnimData_013770
};

LinkAnimationHeader gPlayerAnim_002328 = { 
    { 55 }, gPlayerAnimData_0148C0
};

LinkAnimationHeader gPlayerAnim_002330 = { 
    { 100 }, gPlayerAnimData_016590
};

LinkAnimationHeader gPlayerAnim_002338 = { 
    { 100 }, gPlayerAnimData_0199F0
};

LinkAnimationHeader gPlayerAnim_002340 = { 
    { 40 }, gPlayerAnimData_01CE50
};

LinkAnimationHeader gPlayerAnim_002348 = { 
    { 40 }, gPlayerAnimData_01E340
};

LinkAnimationHeader gPlayerAnim_002350 = { 
    { 20 }, gPlayerAnimData_01F830
};

LinkAnimationHeader gPlayerAnim_002358 = { 
    { 20 }, gPlayerAnimData_0202B0
};

LinkAnimationHeader gPlayerAnim_002360 = { 
    { 110 }, gPlayerAnimData_020D30
};

LinkAnimationHeader gPlayerAnim_002368 = { 
    { 35 }, gPlayerAnimData_0246D0
};

LinkAnimationHeader gPlayerAnim_002370 = { 
    { 25 }, gPlayerAnimData_025930
};

LinkAnimationHeader gPlayerAnim_002378 = { 
    { 20 }, gPlayerAnimData_026650
};

LinkAnimationHeader gPlayerAnim_002380 = { 
    { 15 }, gPlayerAnimData_0270D0
};

LinkAnimationHeader gPlayerAnim_002388 = { 
    { 55 }, gPlayerAnimData_0278B0
};

LinkAnimationHeader gPlayerAnim_002390 = { 
    { 30 }, gPlayerAnimData_029580
};

LinkAnimationHeader gPlayerAnim_002398 = { 
    { 30 }, gPlayerAnimData_02A540
};

LinkAnimationHeader gPlayerAnim_0023A0 = { 
    { 30 }, gPlayerAnimData_02B500
};

LinkAnimationHeader gPlayerAnim_0023A8 = { 
    { 51 }, gPlayerAnimData_02C4C0
};

LinkAnimationHeader gPlayerAnim_0023B0 = { 
    { 78 }, gPlayerAnimData_02DF80
};

LinkAnimationHeader gPlayerAnim_0023B8 = { 
    { 30 }, gPlayerAnimData_030860
};

LinkAnimationHeader gPlayerAnim_0023C0 = { 
    { 35 }, gPlayerAnimData_031820
};

LinkAnimationHeader gPlayerAnim_0023C8 = { 
    { 36 }, gPlayerAnimData_032A80
};

LinkAnimationHeader gPlayerAnim_0023D0 = { 
    { 35 }, gPlayerAnimData_033D60
};

LinkAnimationHeader gPlayerAnim_0023D8 = { 
    { 36 }, gPlayerAnimData_034FC0
};

LinkAnimationHeader gPlayerAnim_0023E0 = { 
    { 30 }, gPlayerAnimData_0362A0
};

LinkAnimationHeader gPlayerAnim_0023E8 = { 
    { 50 }, gPlayerAnimData_037260
};

LinkAnimationHeader gPlayerAnim_0023F0 = { 
    { 21 }, gPlayerAnimData_038C90
};

LinkAnimationHeader gPlayerAnim_0023F8 = { 
    { 21 }, gPlayerAnimData_039790
};

LinkAnimationHeader gPlayerAnim_002400 = { 
    { 5 }, gPlayerAnimData_03A290
};

LinkAnimationHeader gPlayerAnim_002408 = { 
    { 55 }, gPlayerAnimData_03A530
};

LinkAnimationHeader gPlayerAnim_002410 = { 
    { 365 }, gPlayerAnimData_03C200
};

LinkAnimationHeader gPlayerAnim_002418 = { 
    { 110 }, gPlayerAnimData_048110
};

LinkAnimationHeader gPlayerAnim_002420 = { 
    { 80 }, gPlayerAnimData_04BAB0
};

LinkAnimationHeader gPlayerAnim_002428 = { 
    { 30 }, gPlayerAnimData_04E490
};

LinkAnimationHeader gPlayerAnim_002430 = { 
    { 30 }, gPlayerAnimData_04F450
};

LinkAnimationHeader gPlayerAnim_002438 = { 
    { 20 }, gPlayerAnimData_050410
};

LinkAnimationHeader gPlayerAnim_002440 = { 
    { 60 }, gPlayerAnimData_050E90
};

LinkAnimationHeader gPlayerAnim_002448 = { 
    { 45 }, gPlayerAnimData_052E00
};

LinkAnimationHeader gPlayerAnim_002450 = { 
    { 45 }, gPlayerAnimData_054590
};

LinkAnimationHeader gPlayerAnim_002458 = { 
    { 90 }, gPlayerAnimData_055D20
};

LinkAnimationHeader gPlayerAnim_002460 = { 
    { 90 }, gPlayerAnimData_058C40
};

LinkAnimationHeader gPlayerAnim_002468 = { 
    { 45 }, gPlayerAnimData_05BB60
};

LinkAnimationHeader gPlayerAnim_002470 = { 
    { 60 }, gPlayerAnimData_05D2F0
};

LinkAnimationHeader gPlayerAnim_002478 = { 
    { 11 }, gPlayerAnimData_05F260
};

LinkAnimationHeader gPlayerAnim_002480 = { 
    { 16 }, gPlayerAnimData_05F830
};

LinkAnimationHeader gPlayerAnim_002488 = { 
    { 11 }, gPlayerAnimData_060090
};

LinkAnimationHeader gPlayerAnim_002490 = { 
    { 18 }, gPlayerAnimData_060660
};

LinkAnimationHeader gPlayerAnim_002498 = { 
    { 10 }, gPlayerAnimData_060FD0
};

LinkAnimationHeader gPlayerAnim_0024A0 = { 
    { 11 }, gPlayerAnimData_061510
};

LinkAnimationHeader gPlayerAnim_0024A8 = { 
    { 9 }, gPlayerAnimData_061AE0
};

LinkAnimationHeader gPlayerAnim_0024B0 = { 
    { 13 }, gPlayerAnimData_061FA0
};

LinkAnimationHeader gPlayerAnim_0024B8 = { 
    { 12 }, gPlayerAnimData_062670
};

LinkAnimationHeader gPlayerAnim_0024C0 = { 
    { 8 }, gPlayerAnimData_062CC0
};

LinkAnimationHeader gPlayerAnim_0024C8 = { 
    { 15 }, gPlayerAnimData_0630F0
};

LinkAnimationHeader gPlayerAnim_0024D0 = { 
    { 18 }, gPlayerAnimData_0638D0
};

LinkAnimationHeader gPlayerAnim_0024D8 = { 
    { 19 }, gPlayerAnimData_064240
};

LinkAnimationHeader gPlayerAnim_0024E0 = { 
    { 34 }, gPlayerAnimData_064C40
};

LinkAnimationHeader gPlayerAnim_0024E8 = { 
    { 18 }, gPlayerAnimData_065E10
};

LinkAnimationHeader gPlayerAnim_0024F0 = { 
    { 16 }, gPlayerAnimData_066780
};

LinkAnimationHeader gPlayerAnim_0024F8 = { 
    { 16 }, gPlayerAnimData_066FE0
};

LinkAnimationHeader gPlayerAnim_002500 = { 
    { 16 }, gPlayerAnimData_067840
};

LinkAnimationHeader gPlayerAnim_002508 = { 
    { 16 }, gPlayerAnimData_0680A0
};

LinkAnimationHeader gPlayerAnim_002510 = { 
    { 8 }, gPlayerAnimData_068900
};

LinkAnimationHeader gPlayerAnim_002518 = { 
    { 8 }, gPlayerAnimData_068D30
};

LinkAnimationHeader gPlayerAnim_002520 = { 
    { 7 }, gPlayerAnimData_069160
};

LinkAnimationHeader gPlayerAnim_002528 = { 
    { 16 }, gPlayerAnimData_069510
};

LinkAnimationHeader gPlayerAnim_002530 = { 
    { 13 }, gPlayerAnimData_069D70
};

LinkAnimationHeader gPlayerAnim_002538 = { 
    { 21 }, gPlayerAnimData_06A440
};

LinkAnimationHeader gPlayerAnim_002540 = { 
    { 19 }, gPlayerAnimData_06AF40
};

LinkAnimationHeader gPlayerAnim_002548 = { 
    { 9 }, gPlayerAnimData_06B940
};

LinkAnimationHeader gPlayerAnim_002550 = { 
    { 32 }, gPlayerAnimData_06BE00
};

LinkAnimationHeader gPlayerAnim_002558 = { 
    { 15 }, gPlayerAnimData_06CEC0
};

LinkAnimationHeader gPlayerAnim_002560 = { 
    { 14 }, gPlayerAnimData_06D6A0
};

LinkAnimationHeader gPlayerAnim_002568 = { 
    { 16 }, gPlayerAnimData_06DE00
};

LinkAnimationHeader gPlayerAnim_002570 = { 
    { 16 }, gPlayerAnimData_06E660
};

LinkAnimationHeader gPlayerAnim_002578 = { 
    { 3 }, gPlayerAnimData_06FDF0
};

LinkAnimationHeader gPlayerAnim_002580 = { 
    { 3 }, gPlayerAnimData_06FF90
};

LinkAnimationHeader gPlayerAnim_002588 = { 
    { 3 }, gPlayerAnimData_070130
};

LinkAnimationHeader gPlayerAnim_002590 = { 
    { 29 }, gPlayerAnimData_06EEC0
};

LinkAnimationHeader gPlayerAnim_002598 = { 
    { 5 }, gPlayerAnimData_0702D0
};

LinkAnimationHeader gPlayerAnim_0025A0 = { 
    { 31 }, gPlayerAnimData_070570
};

LinkAnimationHeader gPlayerAnim_0025A8 = { 
    { 16 }, gPlayerAnimData_0715B0
};

LinkAnimationHeader gPlayerAnim_0025B0 = { 
    { 9 }, gPlayerAnimData_071E10
};

LinkAnimationHeader gPlayerAnim_0025B8 = { 
    { 3 }, gPlayerAnimData_073200
};

LinkAnimationHeader gPlayerAnim_0025C0 = { 
    { 3 }, gPlayerAnimData_0733A0
};

LinkAnimationHeader gPlayerAnim_0025C8 = { 
    { 3 }, gPlayerAnimData_073540
};

LinkAnimationHeader gPlayerAnim_0025D0 = { 
    { 29 }, gPlayerAnimData_0722D0
};

LinkAnimationHeader gPlayerAnim_0025D8 = { 
    { 5 }, gPlayerAnimData_0736E0
};

LinkAnimationHeader gPlayerAnim_0025E0 = { 
    { 31 }, gPlayerAnimData_073980
};

LinkAnimationHeader gPlayerAnim_0025E8 = { 
    { 16 }, gPlayerAnimData_0749C0
};

LinkAnimationHeader gPlayerAnim_0025F0 = { 
    { 9 }, gPlayerAnimData_075220
};

LinkAnimationHeader gPlayerAnim_0025F8 = { 
    { 20 }, gPlayerAnimData_0756E0
};

LinkAnimationHeader gPlayerAnim_002600 = { 
    { 20 }, gPlayerAnimData_076AD0
};

LinkAnimationHeader gPlayerAnim_002608 = { 
    { 20 }, gPlayerAnimData_077550
};

LinkAnimationHeader gPlayerAnim_002610 = { 
    { 18 }, gPlayerAnimData_076160
};

LinkAnimationHeader gPlayerAnim_002618 = { 
    { 16 }, gPlayerAnimData_077FD0
};

LinkAnimationHeader gPlayerAnim_002620 = { 
    { 16 }, gPlayerAnimData_078830
};

LinkAnimationHeader gPlayerAnim_002628 = { 
    { 6 }, gPlayerAnimData_079090
};

LinkAnimationHeader gPlayerAnim_002630 = { 
    { 29 }, gPlayerAnimData_0793C0
};

LinkAnimationHeader gPlayerAnim_002638 = { 
    { 29 }, gPlayerAnimData_07A2F0
};

LinkAnimationHeader gPlayerAnim_002640 = { 
    { 44 }, gPlayerAnimData_07B220
};

LinkAnimationHeader gPlayerAnim_002648 = { 
    { 13 }, gPlayerAnimData_07C930
};

LinkAnimationHeader gPlayerAnim_002650 = { 
    { 131 }, gPlayerAnimData_07D000
};

LinkAnimationHeader gPlayerAnim_002658 = { 
    { 126 }, gPlayerAnimData_0814A0
};

LinkAnimationHeader gPlayerAnim_002660 = { 
    { 50 }, gPlayerAnimData_0856A0
};

LinkAnimationHeader gPlayerAnim_002668 = { 
    { 47 }, gPlayerAnimData_0870D0
};

LinkAnimationHeader gPlayerAnim_002670 = { 
    { 9 }, gPlayerAnimData_088970
};

LinkAnimationHeader gPlayerAnim_002678 = { 
    { 44 }, gPlayerAnimData_088E30
};

LinkAnimationHeader gPlayerAnim_002680 = { 
    { 21 }, gPlayerAnimData_08A540
};

LinkAnimationHeader gPlayerAnim_002688 = { 
    { 120 }, gPlayerAnimData_08B040
};

LinkAnimationHeader gPlayerAnim_002690 = { 
    { 100 }, gPlayerAnimData_08EF10
};

LinkAnimationHeader gPlayerAnim_002698 = { 
    { 20 }, gPlayerAnimData_092370
};

LinkAnimationHeader gPlayerAnim_0026A0 = { 
    { 9 }, gPlayerAnimData_092DF0
};

LinkAnimationHeader gPlayerAnim_0026A8 = { 
    { 3 }, gPlayerAnimData_0932B0
};

LinkAnimationHeader gPlayerAnim_0026B0 = { 
    { 16 }, gPlayerAnimData_093450
};

LinkAnimationHeader gPlayerAnim_0026B8 = { 
    { 8 }, gPlayerAnimData_093CB0
};

LinkAnimationHeader gPlayerAnim_0026C0 = { 
    { 66 }, gPlayerAnimData_0940E0
};

LinkAnimationHeader gPlayerAnim_0026C8 = { 
    { 5 }, gPlayerAnimData_096370
};

LinkAnimationHeader gPlayerAnim_0026D0 = { 
    { 31 }, gPlayerAnimData_096610
};

LinkAnimationHeader gPlayerAnim_0026D8 = { 
    { 18 }, gPlayerAnimData_097650
};

LinkAnimationHeader gPlayerAnim_0026E0 = { 
    { 19 }, gPlayerAnimData_097FC0
};

LinkAnimationHeader gPlayerAnim_0026E8 = { 
    { 24 }, gPlayerAnimData_0989C0
};

LinkAnimationHeader gPlayerAnim_0026F0 = { 
    { 9 }, gPlayerAnimData_099650
};

LinkAnimationHeader gPlayerAnim_0026F8 = { 
    { 100 }, gPlayerAnimData_099B10
};

LinkAnimationHeader gPlayerAnim_002700 = { 
    { 71 }, gPlayerAnimData_09CF70
};

LinkAnimationHeader gPlayerAnim_002708 = { 
    { 80 }, gPlayerAnimData_09F4A0
};

LinkAnimationHeader gPlayerAnim_002710 = { 
    { 51 }, gPlayerAnimData_0A1E80
};

LinkAnimationHeader gPlayerAnim_002718 = { 
    { 133 }, gPlayerAnimData_0A3940
};

LinkAnimationHeader gPlayerAnim_002720 = { 
    { 90 }, gPlayerAnimData_0A7EE0
};

LinkAnimationHeader gPlayerAnim_002728 = { 
    { 35 }, gPlayerAnimData_0AAE00
};

LinkAnimationHeader gPlayerAnim_002730 = { 
    { 40 }, gPlayerAnimData_0AC060
};

LinkAnimationHeader gPlayerAnim_002738 = { 
    { 25 }, gPlayerAnimData_0AD550
};

LinkAnimationHeader gPlayerAnim_002740 = { 
    { 20 }, gPlayerAnimData_0AE270
};

LinkAnimationHeader gPlayerAnim_002748 = { 
    { 100 }, gPlayerAnimData_0AECF0
};

LinkAnimationHeader gPlayerAnim_002750 = { 
    { 100 }, gPlayerAnimData_0B2150
};

LinkAnimationHeader gPlayerAnim_002758 = { 
    { 100 }, gPlayerAnimData_0B55B0
};

LinkAnimationHeader gPlayerAnim_002760 = { 
    { 100 }, gPlayerAnimData_0B8A10
};

LinkAnimationHeader gPlayerAnim_002768 = { 
    { 45 }, gPlayerAnimData_0BE850
};

LinkAnimationHeader gPlayerAnim_002770 = { 
    { 30 }, gPlayerAnimData_0BFFE0
};

LinkAnimationHeader gPlayerAnim_002778 = { 
    { 80 }, gPlayerAnimData_0BBE70
};

LinkAnimationHeader gPlayerAnim_002780 = { 
    { 22 }, gPlayerAnimData_0C0FA0
};

LinkAnimationHeader gPlayerAnim_002788 = { 
    { 22 }, gPlayerAnimData_0C1B30
};

LinkAnimationHeader gPlayerAnim_002790 = { 
    { 46 }, gPlayerAnimData_0C26C0
};

LinkAnimationHeader gPlayerAnim_002798 = { 
    { 20 }, gPlayerAnimData_0C3EE0
};

LinkAnimationHeader gPlayerAnim_0027A0 = { 
    { 10 }, gPlayerAnimData_0C4960
};

LinkAnimationHeader gPlayerAnim_0027A8 = { 
    { 100 }, gPlayerAnimData_0C4EA0
};

LinkAnimationHeader gPlayerAnim_0027B0 = { 
    { 20 }, gPlayerAnimData_0C8300
};

LinkAnimationHeader gPlayerAnim_0027B8 = { 
    { 85 }, gPlayerAnimData_0C8D80
};

LinkAnimationHeader gPlayerAnim_0027C0 = { 
    { 25 }, gPlayerAnimData_0CBA00
};

LinkAnimationHeader gPlayerAnim_0027C8 = { 
    { 20 }, gPlayerAnimData_0CC720
};

LinkAnimationHeader gPlayerAnim_0027D0 = { 
    { 20 }, gPlayerAnimData_0CD1A0
};

LinkAnimationHeader gPlayerAnim_0027D8 = { 
    { 15 }, gPlayerAnimData_0CDC20
};

LinkAnimationHeader gPlayerAnim_0027E0 = { 
    { 20 }, gPlayerAnimData_0CE400
};

LinkAnimationHeader gPlayerAnim_0027E8 = { 
    { 10 }, gPlayerAnimData_0CEE80
};

LinkAnimationHeader gPlayerAnim_0027F0 = { 
    { 20 }, gPlayerAnimData_0CF3C0
};

LinkAnimationHeader gPlayerAnim_0027F8 = { 
    { 35 }, gPlayerAnimData_0CFE40
};

LinkAnimationHeader gPlayerAnim_002800 = { 
    { 15 }, gPlayerAnimData_0D10A0
};

LinkAnimationHeader gPlayerAnim_002808 = { 
    { 20 }, gPlayerAnimData_0D1880
};

LinkAnimationHeader gPlayerAnim_002810 = { 
    { 28 }, gPlayerAnimData_0D2300
};

LinkAnimationHeader gPlayerAnim_002818 = { 
    { 35 }, gPlayerAnimData_0D31B0
};

LinkAnimationHeader gPlayerAnim_002820 = { 
    { 20 }, gPlayerAnimData_0D4410
};

LinkAnimationHeader gPlayerAnim_002828 = { 
    { 70 }, gPlayerAnimData_0D4E90
};

LinkAnimationHeader gPlayerAnim_002830 = { 
    { 35 }, gPlayerAnimData_0D7340
};

LinkAnimationHeader gPlayerAnim_002838 = { 
    { 80 }, gPlayerAnimData_0D85A0
};

LinkAnimationHeader gPlayerAnim_002840 = { 
    { 11 }, gPlayerAnimData_0DAF80
};

LinkAnimationHeader gPlayerAnim_002848 = { 
    { 30 }, gPlayerAnimData_0DB550
};

LinkAnimationHeader gPlayerAnim_002850 = { 
    { 10 }, gPlayerAnimData_0DC510
};

LinkAnimationHeader gPlayerAnim_002858 = { 
    { 30 }, gPlayerAnimData_0DCA50
};

LinkAnimationHeader gPlayerAnim_002860 = { 
    { 70 }, gPlayerAnimData_0DDA10
};

LinkAnimationHeader gPlayerAnim_002868 = { 
    { 15 }, gPlayerAnimData_0DFEC0
};

LinkAnimationHeader gPlayerAnim_002870 = { 
    { 25 }, gPlayerAnimData_0E06A0
};

LinkAnimationHeader gPlayerAnim_002878 = { 
    { 230 }, gPlayerAnimData_0E13C0
};

LinkAnimationHeader gPlayerAnim_002880 = { 
    { 6 }, gPlayerAnimData_0E8C30
};

LinkAnimationHeader gPlayerAnim_002888 = { 
    { 13 }, gPlayerAnimData_0E8F60
};

LinkAnimationHeader gPlayerAnim_002890 = { 
    { 9 }, gPlayerAnimData_0E9630
};

LinkAnimationHeader gPlayerAnim_002898 = { 
    { 16 }, gPlayerAnimData_0E9AF0
};

LinkAnimationHeader gPlayerAnim_0028A0 = { 
    { 6 }, gPlayerAnimData_0EA350
};

LinkAnimationHeader gPlayerAnim_0028A8 = { 
    { 11 }, gPlayerAnimData_0EA680
};

LinkAnimationHeader gPlayerAnim_0028B0 = { 
    { 6 }, gPlayerAnimData_0EAC50
};

LinkAnimationHeader gPlayerAnim_0028B8 = { 
    { 17 }, gPlayerAnimData_0EAF80
};

LinkAnimationHeader gPlayerAnim_0028C0 = { 
    { 5 }, gPlayerAnimData_0EB870
};

LinkAnimationHeader gPlayerAnim_0028C8 = { 
    { 9 }, gPlayerAnimData_0EBB10
};

LinkAnimationHeader gPlayerAnim_0028D0 = { 
    { 8 }, gPlayerAnimData_0EBFD0
};

LinkAnimationHeader gPlayerAnim_0028D8 = { 
    { 11 }, gPlayerAnimData_0EC400
};

LinkAnimationHeader gPlayerAnim_0028E0 = { 
    { 3 }, gPlayerAnimData_0EC9D0
};

LinkAnimationHeader gPlayerAnim_0028E8 = { 
    { 10 }, gPlayerAnimData_0ECB70
};

LinkAnimationHeader gPlayerAnim_0028F0 = { 
    { 9 }, gPlayerAnimData_0ED0B0
};

LinkAnimationHeader gPlayerAnim_0028F8 = { 
    { 13 }, gPlayerAnimData_0ED570
};

LinkAnimationHeader gPlayerAnim_002900 = { 
    { 10 }, gPlayerAnimData_0EDC40
};

LinkAnimationHeader gPlayerAnim_002908 = { 
    { 19 }, gPlayerAnimData_0EE180
};

LinkAnimationHeader gPlayerAnim_002910 = { 
    { 9 }, gPlayerAnimData_0EEB80
};

LinkAnimationHeader gPlayerAnim_002918 = { 
    { 21 }, gPlayerAnimData_0EF040
};

LinkAnimationHeader gPlayerAnim_002920 = { 
    { 16 }, gPlayerAnimData_0EFB40
};

LinkAnimationHeader gPlayerAnim_002928 = { 
    { 35 }, gPlayerAnimData_0F03A0
};

LinkAnimationHeader gPlayerAnim_002930 = { 
    { 15 }, gPlayerAnimData_0F1600
};

LinkAnimationHeader gPlayerAnim_002938 = { 
    { 21 }, gPlayerAnimData_0F1DE0
};

LinkAnimationHeader gPlayerAnim_002940 = { 
    { 16 }, gPlayerAnimData_0F28E0
};

LinkAnimationHeader gPlayerAnim_002948 = { 
    { 12 }, gPlayerAnimData_0F3140
};

LinkAnimationHeader gPlayerAnim_002950 = { 
    { 7 }, gPlayerAnimData_0F3790
};

LinkAnimationHeader gPlayerAnim_002958 = { 
    { 8 }, gPlayerAnimData_0F3F70
};

LinkAnimationHeader gPlayerAnim_002960 = { 
    { 8 }, gPlayerAnimData_0F3B40
};

LinkAnimationHeader gPlayerAnim_002968 = { 
    { 5 }, gPlayerAnimData_0F43A0
};

LinkAnimationHeader gPlayerAnim_002970 = { 
    { 9 }, gPlayerAnimData_0F4640
};

LinkAnimationHeader gPlayerAnim_002978 = { 
    { 9 }, gPlayerAnimData_0F4B00
};

LinkAnimationHeader gPlayerAnim_002980 = { 
    { 15 }, gPlayerAnimData_0F4FC0
};

LinkAnimationHeader gPlayerAnim_002988 = { 
    { 7 }, gPlayerAnimData_0F57A0
};

LinkAnimationHeader gPlayerAnim_002990 = { 
    { 8 }, gPlayerAnimData_0F5F80
};

LinkAnimationHeader gPlayerAnim_002998 = { 
    { 8 }, gPlayerAnimData_0F5B50
};

LinkAnimationHeader gPlayerAnim_0029A0 = { 
    { 5 }, gPlayerAnimData_0F63B0
};

LinkAnimationHeader gPlayerAnim_0029A8 = { 
    { 12 }, gPlayerAnimData_0F6650
};

LinkAnimationHeader gPlayerAnim_0029B0 = { 
    { 7 }, gPlayerAnimData_0F6CA0
};

LinkAnimationHeader gPlayerAnim_0029B8 = { 
    { 18 }, gPlayerAnimData_0F7050
};

LinkAnimationHeader gPlayerAnim_0029C0 = { 
    { 17 }, gPlayerAnimData_0F79C0
};

LinkAnimationHeader gPlayerAnim_0029C8 = { 
    { 12 }, gPlayerAnimData_0F82B0
};

LinkAnimationHeader gPlayerAnim_0029D0 = { 
    { 15 }, gPlayerAnimData_0F8900
};

LinkAnimationHeader gPlayerAnim_0029D8 = { 
    { 12 }, gPlayerAnimData_0F9490
};

LinkAnimationHeader gPlayerAnim_0029E0 = { 
    { 7 }, gPlayerAnimData_0F90E0
};

LinkAnimationHeader gPlayerAnim_0029E8 = { 
    { 20 }, gPlayerAnimData_0F9AE0
};

LinkAnimationHeader gPlayerAnim_0029F0 = { 
    { 20 }, gPlayerAnimData_0FA560
};

LinkAnimationHeader gPlayerAnim_0029F8 = { 
    { 3 }, gPlayerAnimData_0FAFE0
};

LinkAnimationHeader gPlayerAnim_002A00 = { 
    { 5 }, gPlayerAnimData_0FB180
};

LinkAnimationHeader gPlayerAnim_002A08 = { 
    { 9 }, gPlayerAnimData_0FB420
};

LinkAnimationHeader gPlayerAnim_002A10 = { 
    { 31 }, gPlayerAnimData_0FB8E0
};

LinkAnimationHeader gPlayerAnim_002A18 = { 
    { 31 }, gPlayerAnimData_0FC920
};

LinkAnimationHeader gPlayerAnim_002A20 = { 
    { 20 }, gPlayerAnimData_0FD960
};

LinkAnimationHeader gPlayerAnim_002A28 = { 
    { 10 }, gPlayerAnimData_0FE3E0
};

LinkAnimationHeader gPlayerAnim_002A30 = { 
    { 21 }, gPlayerAnimData_0FF420
};

LinkAnimationHeader gPlayerAnim_002A38 = { 
    { 21 }, gPlayerAnimData_0FE920
};

LinkAnimationHeader gPlayerAnim_002A40 = { 
    { 20 }, gPlayerAnimData_0FFF20
};

LinkAnimationHeader gPlayerAnim_002A48 = { 
    { 10 }, gPlayerAnimData_1009A0
};

LinkAnimationHeader gPlayerAnim_002A50 = { 
    { 10 }, gPlayerAnimData_100EE0
};

LinkAnimationHeader gPlayerAnim_002A58 = { 
    { 12 }, gPlayerAnimData_101420
};

LinkAnimationHeader gPlayerAnim_002A60 = { 
    { 11 }, gPlayerAnimData_101A70
};

LinkAnimationHeader gPlayerAnim_002A68 = { 
    { 32 }, gPlayerAnimData_102040
};

LinkAnimationHeader gPlayerAnim_002A70 = { 
    { 20 }, gPlayerAnimData_103100
};

LinkAnimationHeader gPlayerAnim_002A78 = { 
    { 20 }, gPlayerAnimData_103B80
};

LinkAnimationHeader gPlayerAnim_002A80 = { 
    { 5 }, gPlayerAnimData_104600
};

LinkAnimationHeader gPlayerAnim_002A88 = { 
    { 9 }, gPlayerAnimData_104CD0
};

LinkAnimationHeader gPlayerAnim_002A90 = { 
    { 8 }, gPlayerAnimData_1048A0
};

LinkAnimationHeader gPlayerAnim_002A98 = { 
    { 6 }, gPlayerAnimData_105190
};

LinkAnimationHeader gPlayerAnim_002AA0 = { 
    { 19 }, gPlayerAnimData_1054C0
};

LinkAnimationHeader gPlayerAnim_002AA8 = { 
    { 4 }, gPlayerAnimData_105EC0
};

LinkAnimationHeader gPlayerAnim_002AB0 = { 
    { 9 }, gPlayerAnimData_1060E0
};

LinkAnimationHeader gPlayerAnim_002AB8 = { 
    { 10 }, gPlayerAnimData_1065A0
};

LinkAnimationHeader gPlayerAnim_002AC0 = { 
    { 19 }, gPlayerAnimData_106AE0
};

LinkAnimationHeader gPlayerAnim_002AC8 = { 
    { 20 }, gPlayerAnimData_1074E0
};

LinkAnimationHeader gPlayerAnim_002AD0 = { 
    { 39 }, gPlayerAnimData_107F60
};

LinkAnimationHeader gPlayerAnim_002AD8 = { 
    { 21 }, gPlayerAnimData_1093D0
};

LinkAnimationHeader gPlayerAnim_002AE0 = { 
    { 11 }, gPlayerAnimData_10A4A0
};

LinkAnimationHeader gPlayerAnim_002AE8 = { 
    { 11 }, gPlayerAnimData_109ED0
};

LinkAnimationHeader gPlayerAnim_002AF0 = { 
    { 34 }, gPlayerAnimData_10AA70
};

LinkAnimationHeader gPlayerAnim_002AF8 = { 
    { 15 }, gPlayerAnimData_10BC40
};

LinkAnimationHeader gPlayerAnim_002B00 = { 
    { 21 }, gPlayerAnimData_10C420
};

LinkAnimationHeader gPlayerAnim_002B08 = { 
    { 11 }, gPlayerAnimData_10D4F0
};

LinkAnimationHeader gPlayerAnim_002B10 = { 
    { 11 }, gPlayerAnimData_10CF20
};

LinkAnimationHeader gPlayerAnim_002B18 = { 
    { 13 }, gPlayerAnimData_10E190
};

LinkAnimationHeader gPlayerAnim_002B20 = { 
    { 13 }, gPlayerAnimData_10DAC0
};

LinkAnimationHeader gPlayerAnim_002B28 = { 
    { 13 }, gPlayerAnimData_10E860
};

LinkAnimationHeader gPlayerAnim_002B30 = { 
    { 16 }, gPlayerAnimData_10EF30
};

LinkAnimationHeader gPlayerAnim_002B38 = { 
    { 20 }, gPlayerAnimData_10F790
};

LinkAnimationHeader gPlayerAnim_002B40 = { 
    { 20 }, gPlayerAnimData_110210
};

LinkAnimationHeader gPlayerAnim_002B48 = { 
    { 20 }, gPlayerAnimData_110C90
};

LinkAnimationHeader gPlayerAnim_002B50 = { 
    { 20 }, gPlayerAnimData_111710
};

LinkAnimationHeader gPlayerAnim_002B58 = { 
    { 16 }, gPlayerAnimData_112190
};

LinkAnimationHeader gPlayerAnim_002B60 = { 
    { 16 }, gPlayerAnimData_1129F0
};

LinkAnimationHeader gPlayerAnim_002B68 = { 
    { 29 }, gPlayerAnimData_113250
};

LinkAnimationHeader gPlayerAnim_002B70 = { 
    { 5 }, gPlayerAnimData_114180
};

LinkAnimationHeader gPlayerAnim_002B78 = { 
    { 16 }, gPlayerAnimData_114420
};

LinkAnimationHeader gPlayerAnim_002B80 = { 
    { 6 }, gPlayerAnimData_114C80
};

LinkAnimationHeader gPlayerAnim_002B88 = { 
    { 16 }, gPlayerAnimData_114FB0
};

LinkAnimationHeader gPlayerAnim_002B90 = { 
    { 22 }, gPlayerAnimData_115810
};

LinkAnimationHeader gPlayerAnim_002B98 = { 
    { 5 }, gPlayerAnimData_1163A0
};

LinkAnimationHeader gPlayerAnim_002BA0 = { 
    { 14 }, gPlayerAnimData_116640
};

LinkAnimationHeader gPlayerAnim_002BA8 = { 
    { 6 }, gPlayerAnimData_116DA0
};

LinkAnimationHeader gPlayerAnim_002BB0 = { 
    { 6 }, gPlayerAnimData_1170D0
};

LinkAnimationHeader gPlayerAnim_002BB8 = { 
    { 13 }, gPlayerAnimData_117400
};

LinkAnimationHeader gPlayerAnim_002BC0 = { 
    { 29 }, gPlayerAnimData_117AD0
};

LinkAnimationHeader gPlayerAnim_002BC8 = { 
    { 13 }, gPlayerAnimData_118A00
};

LinkAnimationHeader gPlayerAnim_002BD0 = { 
    { 29 }, gPlayerAnimData_1190D0
};

LinkAnimationHeader gPlayerAnim_002BD8 = { 
    { 22 }, gPlayerAnimData_11A000
};

LinkAnimationHeader gPlayerAnim_002BE0 = { 
    { 89 }, gPlayerAnimData_11AB90
};

LinkAnimationHeader gPlayerAnim_002BE8 = { 
    { 11 }, gPlayerAnimData_11DA30
};

LinkAnimationHeader gPlayerAnim_002BF0 = { 
    { 11 }, gPlayerAnimData_11E000
};

LinkAnimationHeader gPlayerAnim_002BF8 = { 
    { 29 }, gPlayerAnimData_11E5D0
};

LinkAnimationHeader gPlayerAnim_002C00 = { 
    { 51 }, gPlayerAnimData_11F500
};

LinkAnimationHeader gPlayerAnim_002C08 = { 
    { 10 }, gPlayerAnimData_120FC0
};

LinkAnimationHeader gPlayerAnim_002C10 = { 
    { 6 }, gPlayerAnimData_121500
};

LinkAnimationHeader gPlayerAnim_002C18 = { 
    { 6 }, gPlayerAnimData_121830
};

LinkAnimationHeader gPlayerAnim_002C20 = { 
    { 6 }, gPlayerAnimData_121B60
};

LinkAnimationHeader gPlayerAnim_002C28 = { 
    { 6 }, gPlayerAnimData_121E90
};

LinkAnimationHeader gPlayerAnim_002C30 = { 
    { 50 }, gPlayerAnimData_1221C0
};

LinkAnimationHeader gPlayerAnim_002C38 = { 
    { 41 }, gPlayerAnimData_123BF0
};

LinkAnimationHeader gPlayerAnim_002C40 = { 
    { 11 }, gPlayerAnimData_125170
};

LinkAnimationHeader gPlayerAnim_002C48 = { 
    { 23 }, gPlayerAnimData_126350
};

LinkAnimationHeader gPlayerAnim_002C50 = { 
    { 23 }, gPlayerAnimData_125740
};

LinkAnimationHeader gPlayerAnim_002C58 = { 
    { 20 }, gPlayerAnimData_126F60
};

LinkAnimationHeader gPlayerAnim_002C60 = { 
    { 20 }, gPlayerAnimData_1279E0
};

LinkAnimationHeader gPlayerAnim_002C68 = { 
    { 20 }, gPlayerAnimData_128460
};

LinkAnimationHeader gPlayerAnim_002C70 = { 
    { 12 }, gPlayerAnimData_128EE0
};

LinkAnimationHeader gPlayerAnim_002C78 = { 
    { 23 }, gPlayerAnimData_12A140
};

LinkAnimationHeader gPlayerAnim_002C80 = { 
    { 23 }, gPlayerAnimData_129530
};

LinkAnimationHeader gPlayerAnim_002C88 = { 
    { 72 }, gPlayerAnimData_12AD50
};

LinkAnimationHeader gPlayerAnim_002C90 = { 
    { 9 }, gPlayerAnimData_12D300
};

LinkAnimationHeader gPlayerAnim_002C98 = { 
    { 21 }, gPlayerAnimData_12D7C0
};

LinkAnimationHeader gPlayerAnim_002CA0 = { 
    { 9 }, gPlayerAnimData_12E2C0
};

LinkAnimationHeader gPlayerAnim_002CA8 = { 
    { 18 }, gPlayerAnimData_12E780
};

LinkAnimationHeader gPlayerAnim_002CB0 = { 
    { 18 }, gPlayerAnimData_12F0F0
};

LinkAnimationHeader gPlayerAnim_002CB8 = { 
    { 24 }, gPlayerAnimData_12FA60
};

LinkAnimationHeader gPlayerAnim_002CC0 = { 
    { 69 }, gPlayerAnimData_1306F0
};

LinkAnimationHeader gPlayerAnim_002CC8 = { 
    { 9 }, gPlayerAnimData_132B10
};

LinkAnimationHeader gPlayerAnim_002CD0 = { 
    { 82 }, gPlayerAnimData_132FD0
};

LinkAnimationHeader gPlayerAnim_002CD8 = { 
    { 28 }, gPlayerAnimData_135AC0
};

LinkAnimationHeader gPlayerAnim_002CE0 = { 
    { 60 }, gPlayerAnimData_136970
};

LinkAnimationHeader gPlayerAnim_002CE8 = { 
    { 25 }, gPlayerAnimData_1388E0
};

LinkAnimationHeader gPlayerAnim_002CF0 = { 
    { 60 }, gPlayerAnimData_139600
};

LinkAnimationHeader gPlayerAnim_002CF8 = { 
    { 56 }, gPlayerAnimData_13B570
};

LinkAnimationHeader gPlayerAnim_002D00 = { 
    { 9 }, gPlayerAnimData_13D2C0
};

LinkAnimationHeader gPlayerAnim_002D08 = { 
    { 32 }, gPlayerAnimData_13D780
};

LinkAnimationHeader gPlayerAnim_002D10 = { 
    { 52 }, gPlayerAnimData_13E840
};

LinkAnimationHeader gPlayerAnim_002D18 = { 
    { 29 }, gPlayerAnimData_140380
};

LinkAnimationHeader gPlayerAnim_002D20 = { 
    { 49 }, gPlayerAnimData_1412B0
};

LinkAnimationHeader gPlayerAnim_002D28 = { 
    { 43 }, gPlayerAnimData_142C60
};

LinkAnimationHeader gPlayerAnim_002D30 = { 
    { 44 }, gPlayerAnimData_1442F0
};

LinkAnimationHeader gPlayerAnim_002D38 = { 
    { 28 }, gPlayerAnimData_145A00
};

LinkAnimationHeader gPlayerAnim_002D40 = { 
    { 45 }, gPlayerAnimData_1468B0
};

LinkAnimationHeader gPlayerAnim_002D48 = { 
    { 10 }, gPlayerAnimData_148040
};

LinkAnimationHeader gPlayerAnim_002D50 = { 
    { 50 }, gPlayerAnimData_148580
};

LinkAnimationHeader gPlayerAnim_002D58 = { 
    { 10 }, gPlayerAnimData_149FB0
};

LinkAnimationHeader gPlayerAnim_002D60 = { 
    { 10 }, gPlayerAnimData_14A4F0
};

LinkAnimationHeader gPlayerAnim_002D68 = { 
    { 30 }, gPlayerAnimData_14AA30
};

LinkAnimationHeader gPlayerAnim_002D70 = { 
    { 21 }, gPlayerAnimData_14B9F0
};

LinkAnimationHeader gPlayerAnim_002D78 = { 
    { 21 }, gPlayerAnimData_14C4F0
};

LinkAnimationHeader gPlayerAnim_002D80 = { 
    { 30 }, gPlayerAnimData_14CFF0
};

LinkAnimationHeader gPlayerAnim_002D88 = { 
    { 15 }, gPlayerAnimData_14DFB0
};

LinkAnimationHeader gPlayerAnim_002D90 = { 
    { 21 }, gPlayerAnimData_14E790
};

LinkAnimationHeader gPlayerAnim_002D98 = { 
    { 21 }, gPlayerAnimData_14F290
};

LinkAnimationHeader gPlayerAnim_002DA0 = { 
    { 12 }, gPlayerAnimData_14FD90
};

LinkAnimationHeader gPlayerAnim_002DA8 = { 
    { 12 }, gPlayerAnimData_1503E0
};

LinkAnimationHeader gPlayerAnim_002DB0 = { 
    { 6 }, gPlayerAnimData_150A30
};

LinkAnimationHeader gPlayerAnim_002DB8 = { 
    { 14 }, gPlayerAnimData_150D60
};

LinkAnimationHeader gPlayerAnim_002DC0 = { 
    { 36 }, gPlayerAnimData_1514C0
};

LinkAnimationHeader gPlayerAnim_002DC8 = { 
    { 16 }, gPlayerAnimData_1527A0
};

LinkAnimationHeader gPlayerAnim_002DD0 = { 
    { 16 }, gPlayerAnimData_153000
};

LinkAnimationHeader gPlayerAnim_002DD8 = { 
    { 8 }, gPlayerAnimData_153C90
};

LinkAnimationHeader gPlayerAnim_002DE0 = { 
    { 8 }, gPlayerAnimData_153860
};

LinkAnimationHeader gPlayerAnim_002DE8 = { 
    { 29 }, gPlayerAnimData_1540C0
};

LinkAnimationHeader gPlayerAnim_002DF0 = { 
    { 13 }, gPlayerAnimData_154FF0
};

LinkAnimationHeader gPlayerAnim_002DF8 = { 
    { 50 }, gPlayerAnimData_1556C0
};

LinkAnimationHeader gPlayerAnim_002E00 = { 
    { 36 }, gPlayerAnimData_1570F0
};

LinkAnimationHeader gPlayerAnim_002E08 = { 
    { 17 }, gPlayerAnimData_1583D0
};

LinkAnimationHeader gPlayerAnim_002E10 = { 
    { 55 }, gPlayerAnimData_158CC0
};

LinkAnimationHeader gPlayerAnim_002E18 = { 
    { 20 }, gPlayerAnimData_15A990
};

LinkAnimationHeader gPlayerAnim_002E20 = { 
    { 10 }, gPlayerAnimData_15B410
};

LinkAnimationHeader gPlayerAnim_002E28 = { 
    { 10 }, gPlayerAnimData_15B950
};

LinkAnimationHeader gPlayerAnim_002E30 = { 
    { 20 }, gPlayerAnimData_15BE90
};

LinkAnimationHeader gPlayerAnim_002E38 = { 
    { 54 }, gPlayerAnimData_15C910
};

LinkAnimationHeader gPlayerAnim_002E40 = { 
    { 54 }, gPlayerAnimData_15E560
};

LinkAnimationHeader gPlayerAnim_002E48 = { 
    { 29 }, gPlayerAnimData_1601B0
};

LinkAnimationHeader gPlayerAnim_002E50 = { 
    { 27 }, gPlayerAnimData_1610E0
};

LinkAnimationHeader gPlayerAnim_002E58 = { 
    { 28 }, gPlayerAnimData_161F10
};

LinkAnimationHeader gPlayerAnim_002E60 = { 
    { 56 }, gPlayerAnimData_162DC0
};

LinkAnimationHeader gPlayerAnim_002E68 = { 
    { 56 }, gPlayerAnimData_164B10
};

LinkAnimationHeader gPlayerAnim_002E70 = { 
    { 30 }, gPlayerAnimData_166860
};

LinkAnimationHeader gPlayerAnim_002E78 = { 
    { 56 }, gPlayerAnimData_167820
};

LinkAnimationHeader gPlayerAnim_002E80 = { 
    { 21 }, gPlayerAnimData_16A4A0
};

LinkAnimationHeader gPlayerAnim_002E88 = { 
    { 21 }, gPlayerAnimData_16AFA0
};

LinkAnimationHeader gPlayerAnim_002E90 = { 
    { 29 }, gPlayerAnimData_169570
};

LinkAnimationHeader gPlayerAnim_002E98 = { 
    { 20 }, gPlayerAnimData_16BAA0
};

LinkAnimationHeader gPlayerAnim_002EA0 = { 
    { 2 }, gPlayerAnimData_16C520
};

LinkAnimationHeader gPlayerAnim_002EA8 = { 
    { 5 }, gPlayerAnimData_16C630
};

LinkAnimationHeader gPlayerAnim_002EB0 = { 
    { 5 }, gPlayerAnimData_16C8D0
};

LinkAnimationHeader gPlayerAnim_002EB8 = { 
    { 5 }, gPlayerAnimData_16CB70
};

LinkAnimationHeader gPlayerAnim_002EC0 = { 
    { 9 }, gPlayerAnimData_16CE10
};

LinkAnimationHeader gPlayerAnim_002EC8 = { 
    { 5 }, gPlayerAnimData_16D2D0
};

LinkAnimationHeader gPlayerAnim_002ED0 = { 
    { 20 }, gPlayerAnimData_16D570
};

LinkAnimationHeader gPlayerAnim_002ED8 = { 
    { 20 }, gPlayerAnimData_16DFF0
};

LinkAnimationHeader gPlayerAnim_002EE0 = { 
    { 10 }, gPlayerAnimData_16EA70
};

LinkAnimationHeader gPlayerAnim_002EE8 = { 
    { 19 }, gPlayerAnimData_16EFB0
};

LinkAnimationHeader gPlayerAnim_002EF0 = { 
    { 19 }, gPlayerAnimData_16F9B0
};

LinkAnimationHeader gPlayerAnim_002EF8 = { 
    { 19 }, gPlayerAnimData_1703B0
};

LinkAnimationHeader gPlayerAnim_002F00 = { 
    { 26 }, gPlayerAnimData_170DB0
};

LinkAnimationHeader gPlayerAnim_002F08 = { 
    { 113 }, gPlayerAnimData_171B50
};

LinkAnimationHeader gPlayerAnim_002F10 = { 
    { 37 }, gPlayerAnimData_175680
};

LinkAnimationHeader gPlayerAnim_002F18 = { 
    { 86 }, gPlayerAnimData_1769E0
};

LinkAnimationHeader gPlayerAnim_002F20 = { 
    { 61 }, gPlayerAnimData_1796F0
};

LinkAnimationHeader gPlayerAnim_002F28 = { 
    { 61 }, gPlayerAnimData_17B6E0
};

LinkAnimationHeader gPlayerAnim_002F30 = { 
    { 20 }, gPlayerAnimData_17D6D0
};

LinkAnimationHeader gPlayerAnim_002F38 = { 
    { 20 }, gPlayerAnimData_17E150
};

LinkAnimationHeader gPlayerAnim_002F40 = { 
    { 20 }, gPlayerAnimData_17EBD0
};

LinkAnimationHeader gPlayerAnim_002F48 = { 
    { 20 }, gPlayerAnimData_1800D0
};

LinkAnimationHeader gPlayerAnim_002F50 = { 
    { 20 }, gPlayerAnimData_17F650
};

LinkAnimationHeader gPlayerAnim_002F58 = { 
    { 5 }, gPlayerAnimData_180B50
};

LinkAnimationHeader gPlayerAnim_002F60 = { 
    { 12 }, gPlayerAnimData_180DF0
};

LinkAnimationHeader gPlayerAnim_002F68 = { 
    { 39 }, gPlayerAnimData_181440
};

LinkAnimationHeader gPlayerAnim_002F70 = { 
    { 16 }, gPlayerAnimData_1828B0
};

LinkAnimationHeader gPlayerAnim_002F78 = { 
    { 8 }, gPlayerAnimData_183540
};

LinkAnimationHeader gPlayerAnim_002F80 = { 
    { 8 }, gPlayerAnimData_183110
};

LinkAnimationHeader gPlayerAnim_002F88 = { 
    { 47 }, gPlayerAnimData_183970
};

LinkAnimationHeader gPlayerAnim_002F90 = { 
    { 11 }, gPlayerAnimData_185210
};

LinkAnimationHeader gPlayerAnim_002F98 = { 
    { 252 }, gPlayerAnimData_1857E0
};

LinkAnimationHeader gPlayerAnim_002FA0 = { 
    { 19 }, gPlayerAnimData_18DBD0
};

LinkAnimationHeader gPlayerAnim_002FA8 = { 
    { 20 }, gPlayerAnimData_18E5D0
};

LinkAnimationHeader gPlayerAnim_002FB0 = { 
    { 20 }, gPlayerAnimData_18F050
};

LinkAnimationHeader gPlayerAnim_002FB8 = { 
    { 28 }, gPlayerAnimData_18FAD0
};

LinkAnimationHeader gPlayerAnim_002FC0 = { 
    { 28 }, gPlayerAnimData_190980
};

LinkAnimationHeader gPlayerAnim_002FC8 = { 
    { 28 }, gPlayerAnimData_191830
};

LinkAnimationHeader gPlayerAnim_002FD0 = { 
    { 16 }, gPlayerAnimData_1926E0
};

LinkAnimationHeader gPlayerAnim_002FD8 = { 
    { 12 }, gPlayerAnimData_193400
};

LinkAnimationHeader gPlayerAnim_002FE0 = { 
    { 9 }, gPlayerAnimData_192F40
};

LinkAnimationHeader gPlayerAnim_002FE8 = { 
    { 18 }, gPlayerAnimData_193A50
};

LinkAnimationHeader gPlayerAnim_002FF0 = { 
    { 18 }, gPlayerAnimData_1943C0
};

LinkAnimationHeader gPlayerAnim_002FF8 = { 
    { 38 }, gPlayerAnimData_194D30
};

LinkAnimationHeader gPlayerAnim_003000 = { 
    { 38 }, gPlayerAnimData_196120
};

LinkAnimationHeader gPlayerAnim_003008 = { 
    { 73 }, gPlayerAnimData_197510
};

LinkAnimationHeader gPlayerAnim_003010 = { 
    { 72 }, gPlayerAnimData_199B50
};

LinkAnimationHeader gPlayerAnim_003018 = { 
    { 36 }, gPlayerAnimData_19C100
};

LinkAnimationHeader gPlayerAnim_003020 = { 
    { 21 }, gPlayerAnimData_19D3E0
};

LinkAnimationHeader gPlayerAnim_003028 = { 
    { 21 }, gPlayerAnimData_19DEE0
};

LinkAnimationHeader gPlayerAnim_003030 = { 
    { 32 }, gPlayerAnimData_19E9E0
};

LinkAnimationHeader gPlayerAnim_003038 = { 
    { 32 }, gPlayerAnimData_19FAA0
};

LinkAnimationHeader gPlayerAnim_003040 = { 
    { 20 }, gPlayerAnimData_1A0B60
};

LinkAnimationHeader gPlayerAnim_003048 = { 
    { 12 }, gPlayerAnimData_1A15E0
};

LinkAnimationHeader gPlayerAnim_003050 = { 
    { 19 }, gPlayerAnimData_1A1C30
};

LinkAnimationHeader gPlayerAnim_003058 = { 
    { 20 }, gPlayerAnimData_1A2630
};

LinkAnimationHeader gPlayerAnim_003060 = { 
    { 9 }, gPlayerAnimData_1A30B0
};

LinkAnimationHeader gPlayerAnim_003068 = { 
    { 7 }, gPlayerAnimData_1A3570
};

LinkAnimationHeader gPlayerAnim_003070 = { 
    { 5 }, gPlayerAnimData_1A3920
};

LinkAnimationHeader gPlayerAnim_003078 = { 
    { 20 }, gPlayerAnimData_1A3BC0
};

LinkAnimationHeader gPlayerAnim_003080 = { 
    { 20 }, gPlayerAnimData_1A4640
};

LinkAnimationHeader gPlayerAnim_003088 = { 
    { 20 }, gPlayerAnimData_1A50C0
};

LinkAnimationHeader gPlayerAnim_003090 = { 
    { 20 }, gPlayerAnimData_1A5B40
};

LinkAnimationHeader gPlayerAnim_003098 = { 
    { 12 }, gPlayerAnimData_1A65C0
};

LinkAnimationHeader gPlayerAnim_0030A0 = { 
    { 12 }, gPlayerAnimData_1A6C10
};

LinkAnimationHeader gPlayerAnim_0030A8 = { 
    { 68 }, gPlayerAnimData_1A7260
};

LinkAnimationHeader gPlayerAnim_0030B0 = { 
    { 16 }, gPlayerAnimData_1A9600
};

LinkAnimationHeader gPlayerAnim_0030B8 = { 
    { 16 }, gPlayerAnimData_1A9E60
};

LinkAnimationHeader gPlayerAnim_0030C0 = { 
    { 16 }, gPlayerAnimData_1AA6C0
};

LinkAnimationHeader gPlayerAnim_0030C8 = { 
    { 16 }, gPlayerAnimData_1AAF20
};

LinkAnimationHeader gPlayerAnim_0030D0 = { 
    { 31 }, gPlayerAnimData_1AB780
};

LinkAnimationHeader gPlayerAnim_0030D8 = { 
    { 31 }, gPlayerAnimData_1AC7C0
};

LinkAnimationHeader gPlayerAnim_0030E0 = { 
    { 16 }, gPlayerAnimData_1AD800
};

LinkAnimationHeader gPlayerAnim_0030E8 = { 
    { 19 }, gPlayerAnimData_1AE060
};

LinkAnimationHeader gPlayerAnim_0030F0 = { 
    { 16 }, gPlayerAnimData_1AEA60
};

LinkAnimationHeader gPlayerAnim_0030F8 = { 
    { 10 }, gPlayerAnimData_1AF2C0
};

LinkAnimationHeader gPlayerAnim_003100 = { 
    { 11 }, gPlayerAnimData_1AF800
};

LinkAnimationHeader gPlayerAnim_003108 = { 
    { 31 }, gPlayerAnimData_1AFDD0
};

LinkAnimationHeader gPlayerAnim_003110 = { 
    { 21 }, gPlayerAnimData_1B0E10
};

LinkAnimationHeader gPlayerAnim_003118 = { 
    { 15 }, gPlayerAnimData_1B1910
};

LinkAnimationHeader gPlayerAnim_003120 = { 
    { 9 }, gPlayerAnimData_1B20F0
};

LinkAnimationHeader gPlayerAnim_003128 = { 
    { 11 }, gPlayerAnimData_1B25B0
};

LinkAnimationHeader gPlayerAnim_003130 = { 
    { 20 }, gPlayerAnimData_1B2B80
};

LinkAnimationHeader gPlayerAnim_003138 = { 
    { 20 }, gPlayerAnimData_1B3600
};

LinkAnimationHeader gPlayerAnim_003140 = { 
    { 20 }, gPlayerAnimData_1B4080
};

LinkAnimationHeader gPlayerAnim_003148 = { 
    { 13 }, gPlayerAnimData_1B4B00
};

LinkAnimationHeader gPlayerAnim_003150 = { 
    { 19 }, gPlayerAnimData_1B51D0
};

LinkAnimationHeader gPlayerAnim_003158 = { 
    { 31 }, gPlayerAnimData_1B5BD0
};

LinkAnimationHeader gPlayerAnim_003160 = { 
    { 13 }, gPlayerAnimData_1B6C10
};

LinkAnimationHeader gPlayerAnim_003168 = { 
    { 16 }, gPlayerAnimData_1B72E0
};

LinkAnimationHeader gPlayerAnim_003170 = { 
    { 16 }, gPlayerAnimData_1B7B40
};

LinkAnimationHeader gPlayerAnim_003178 = { 
    { 16 }, gPlayerAnimData_1B92D0
};

LinkAnimationHeader gPlayerAnim_003180 = { 
    { 16 }, gPlayerAnimData_1B9B30
};

LinkAnimationHeader gPlayerAnim_003188 = { 
    { 29 }, gPlayerAnimData_1B83A0
};

LinkAnimationHeader gPlayerAnim_003190 = { 
    { 29 }, gPlayerAnimData_1BA390
};

LinkAnimationHeader gPlayerAnim_003198 = { 
    { 38 }, gPlayerAnimData_1BB2C0
};

LinkAnimationHeader gPlayerAnim_0031A0 = { 
    { 7 }, gPlayerAnimData_1BC6B0
};

LinkAnimationHeader gPlayerAnim_0031A8 = { 
    { 34 }, gPlayerAnimData_1BCA60
};

LinkAnimationHeader gPlayerAnim_0031B0 = { 
    { 15 }, gPlayerAnimData_1BDC30
};

LinkAnimationHeader gPlayerAnim_0031B8 = { 
    { 36 }, gPlayerAnimData_1BE410
};

LinkAnimationHeader gPlayerAnim_0031C0 = { 
    { 21 }, gPlayerAnimData_1BF6F0
};

LinkAnimationHeader gPlayerAnim_0031C8 = { 
    { 21 }, gPlayerAnimData_1C01F0
};

LinkAnimationHeader gPlayerAnim_0031D0 = { 
    { 10 }, gPlayerAnimData_1C0CF0
};

LinkAnimationHeader gPlayerAnim_0031D8 = { 
    { 19 }, gPlayerAnimData_1C1230
};

LinkAnimationHeader gPlayerAnim_0031E0 = { 
    { 19 }, gPlayerAnimData_1C1C30
};

LinkAnimationHeader gPlayerAnim_0031E8 = { 
    { 19 }, gPlayerAnimData_1C2630
};

LinkAnimationHeader gPlayerAnim_0031F0 = { 
    { 6 }, gPlayerAnimData_1C5ED0
};

LinkAnimationHeader gPlayerAnim_0031F8 = { 
    { 6 }, gPlayerAnimData_1C6200
};

LinkAnimationHeader gPlayerAnim_003200 = { 
    { 184 }, gPlayerAnimData_1C6530
};

LinkAnimationHeader gPlayerAnim_003208 = { 
    { 187 }, gPlayerAnimData_1CC580
};

LinkAnimationHeader gPlayerAnim_003210 = { 
    { 200 }, gPlayerAnimData_1D2770
};

LinkAnimationHeader gPlayerAnim_003218 = { 
    { 13 }, gPlayerAnimData_1D9020
};

LinkAnimationHeader gPlayerAnim_003220 = { 
    { 29 }, gPlayerAnimData_1D96F0
};

LinkAnimationHeader gPlayerAnim_003228 = { 
    { 13 }, gPlayerAnimData_1DA620
};

LinkAnimationHeader gPlayerAnim_003230 = { 
    { 29 }, gPlayerAnimData_1DACF0
};

LinkAnimationHeader gPlayerAnim_003238 = { 
    { 89 }, gPlayerAnimData_1C3030
};

LinkAnimationHeader gPlayerAnim_003240 = { 
    { 89 }, gPlayerAnimData_1DBC20
};

LinkAnimationHeader gPlayerAnim_003248 = { 
    { 184 }, gPlayerAnimData_1DEAC0
};

LinkAnimationHeader gPlayerAnim_003250 = { 
    { 187 }, gPlayerAnimData_1E4B10
};

LinkAnimationHeader gPlayerAnim_003258 = { 
    { 200 }, gPlayerAnimData_1EAD00
};

LinkAnimationHeader gPlayerAnim_003260 = { 
    { 112 }, gPlayerAnimData_1F15B0
};

LinkAnimationHeader gPlayerAnim_003268 = { 
    { 29 }, gPlayerAnimData_1F5050
};

LinkAnimationHeader gPlayerAnim_003270 = { 
    { 11 }, gPlayerAnimData_1F5F80
};

LinkAnimationHeader gPlayerAnim_003278 = { 
    { 11 }, gPlayerAnimData_1F6550
};

LinkAnimationHeader gPlayerAnim_003280 = { 
    { 11 }, gPlayerAnimData_1F6B20
};

LinkAnimationHeader gPlayerAnim_003288 = { 
    { 11 }, gPlayerAnimData_1F70F0
};

LinkAnimationHeader gPlayerAnim_003290 = { 
    { 29 }, gPlayerAnimData_1F76C0
};

LinkAnimationHeader gPlayerAnim_003298 = { 
    { 45 }, gPlayerAnimData_1F85F0
};

LinkAnimationHeader gPlayerAnim_0032A0 = { 
    { 80 }, gPlayerAnimData_1F9D80
};

LinkAnimationHeader gPlayerAnim_0032A8 = { 
    { 13 }, gPlayerAnimData_1FC760
};

LinkAnimationHeader gPlayerAnim_0032B0 = { 
    { 80 }, gPlayerAnimData_1FCE30
};

LinkAnimationHeader gPlayerAnim_0032B8 = { 
    { 31 }, gPlayerAnimData_1FF810
};

LinkAnimationHeader gPlayerAnim_0032C0 = { 
    { 71 }, gPlayerAnimData_200850
};

LinkAnimationHeader gPlayerAnim_0032C8 = { 
    { 34 }, gPlayerAnimData_202D80
};

LinkAnimationHeader gPlayerAnim_0032D0 = { 
    { 34 }, gPlayerAnimData_203F50
};

LinkAnimationHeader gPlayerAnim_0032D8 = { 
    { 39 }, gPlayerAnimData_205120
};

LinkAnimationHeader gPlayerAnim_0032E0 = { 
    { 27 }, gPlayerAnimData_206590
};

LinkAnimationHeader gPlayerAnim_0032E8 = { 
    { 66 }, gPlayerAnimData_2082F0
};

LinkAnimationHeader gPlayerAnim_0032F0 = { 
    { 29 }, gPlayerAnimData_2073C0
};

LinkAnimationHeader gPlayerAnim_0032F8 = { 
    { 20 }, gPlayerAnimData_20A580
};

LinkAnimationHeader gPlayerAnim_003300 = { 
    { 32 }, gPlayerAnimData_20B000
};

LinkAnimationHeader gPlayerAnim_003308 = { 
    { 50 }, gPlayerAnimData_20C0C0
};

LinkAnimationHeader gPlayerAnim_003310 = { 
    { 178 }, gPlayerAnimData_20DAF0
};

LinkAnimationHeader gPlayerAnim_003318 = { 
    { 12 }, gPlayerAnimData_213820
};

LinkAnimationHeader gPlayerAnim_003320 = { 
    { 10 }, gPlayerAnimData_213E70
};

LinkAnimationHeader gPlayerAnim_003328 = { 
    { 46 }, gPlayerAnimData_2143B0
};

LinkAnimationHeader gPlayerAnim_003330 = { 
    { 10 }, gPlayerAnimData_215BD0
};

LinkAnimationHeader gPlayerAnim_003338 = { 
    { 24 }, gPlayerAnimData_216110
};

LinkAnimationHeader gPlayerAnim_003340 = { 
    { 24 }, gPlayerAnimData_216DA0
};

LinkAnimationHeader gPlayerAnim_003348 = { 
    { 23 }, gPlayerAnimData_217A30
};

LinkAnimationHeader gPlayerAnim_003350 = { 
    { 30 }, gPlayerAnimData_218640
};

LinkAnimationHeader gPlayerAnim_003358 = { 
    { 29 }, gPlayerAnimData_219600
};

LinkAnimationHeader gPlayerAnim_003360 = { 
    { 29 }, gPlayerAnimData_21A530
};

LinkAnimationHeader gPlayerAnim_003368 = { 
    { 33 }, gPlayerAnimData_21B460
};

LinkAnimationHeader gPlayerAnim_003370 = { 
    { 65 }, gPlayerAnimData_21C5B0
};

LinkAnimationHeader gPlayerAnim_003378 = { 
    { 35 }, gPlayerAnimData_21FA20
};

LinkAnimationHeader gPlayerAnim_003380 = { 
    { 35 }, gPlayerAnimData_21E7C0
};

LinkAnimationHeader gPlayerAnim_003388 = { 
    { 35 }, gPlayerAnimData_220C80
};

LinkAnimationHeader gPlayerAnim_003390 = { 
    { 65 }, gPlayerAnimData_221EE0
};

LinkAnimationHeader gPlayerAnim_003398 = { 
    { 70 }, gPlayerAnimData_2240F0
};

LinkAnimationHeader gPlayerAnim_0033A0 = { 
    { 48 }, gPlayerAnimData_2265A0
};

LinkAnimationHeader gPlayerAnim_0033A8 = { 
    { 74 }, gPlayerAnimData_227EC0
};

LinkAnimationHeader gPlayerAnim_0033B0 = { 
    { 75 }, gPlayerAnimData_22A580
};

LinkAnimationHeader gPlayerAnim_0033B8 = { 
    { 208 }, gPlayerAnimData_22CCD0
};

LinkAnimationHeader gPlayerAnim_0033C0 = { 
    { 195 }, gPlayerAnimData_2339B0
};

LinkAnimationHeader gPlayerAnim_0033C8 = { 
    { 30 }, gPlayerAnimData_239FD0
};

LinkAnimationHeader gPlayerAnim_0033D0 = { 
    { 36 }, gPlayerAnimData_23AF90
};

LinkAnimationHeader gPlayerAnim_0033D8 = { 
    { 24 }, gPlayerAnimData_23C270
};

LinkAnimationHeader gPlayerAnim_0033E0 = { 
    { 90 }, gPlayerAnimData_23CF00
};

LinkAnimationHeader gPlayerAnim_0033E8 = { 
    { 100 }, gPlayerAnimData_23FE20
};

LinkAnimationHeader gPlayerAnim_0033F0 = { 
    { 138 }, gPlayerAnimData_243280
};

LinkAnimationHeader gPlayerAnim_0033F8 = { 
    { 35 }, gPlayerAnimData_247AC0
};

LinkAnimationHeader gPlayerAnim_003400 = { 
    { 25 }, gPlayerAnimData_248D20
};

LinkAnimationHeader gPlayerAnim_003408 = { 
    { 90 }, gPlayerAnimData_249A40
};

LinkAnimationHeader gPlayerAnim_003410 = { 
    { 100 }, gPlayerAnimData_24C960
};

LinkAnimationHeader gPlayerAnim_003418 = { 
    { 93 }, gPlayerAnimData_24FDC0
};

LinkAnimationHeader gPlayerAnim_003420 = { 
    { 70 }, gPlayerAnimData_252E70
};

LinkAnimationHeader gPlayerAnim_003428 = { 
    { 108 }, gPlayerAnimData_255320
};

LinkAnimationHeader gPlayerAnim_003430 = { 
    { 138 }, gPlayerAnimData_258BB0
};

LinkAnimationHeader gPlayerAnim_003438 = { 
    { 45 }, gPlayerAnimData_25D3F0
};

LinkAnimationHeader gPlayerAnim_003440 = { 
    { 20 }, gPlayerAnimData_25EB80
};

LinkAnimationHeader gPlayerAnim_003448 = { 
    { 20 }, gPlayerAnimData_25F600
};

LinkAnimationHeader gPlayerAnim_003450 = { 
    { 50 }, gPlayerAnimData_260080
};

LinkAnimationHeader gPlayerAnim_003458 = { 
    { 30 }, gPlayerAnimData_261AB0
};

LinkAnimationHeader gPlayerAnim_003460 = { 
    { 50 }, gPlayerAnimData_262A70
};

LinkAnimationHeader gPlayerAnim_003468 = { 
    { 45 }, gPlayerAnimData_2644A0
};

LinkAnimationHeader gPlayerAnim_003470 = { 
    { 20 }, gPlayerAnimData_000000
};

LinkAnimationHeader gPlayerAnim_003478 = { 
    { 20 }, gPlayerAnimData_000A80
};

LinkAnimationHeader gPlayerAnim_003480 = { 
    { 15 }, gPlayerAnimData_001500
};

LinkAnimationHeader gPlayerAnim_003488 = { 
    { 24 }, gPlayerAnimData_001CE0
};

LinkAnimationHeader gPlayerAnim_003490 = { 
    { 15 }, gPlayerAnimData_002970
};

LinkAnimationHeader gPlayerAnim_003498 = { 
    { 26 }, gPlayerAnimData_003150
};

LinkAnimationHeader gPlayerAnim_0034A0 = { 
    { 20 }, gPlayerAnimData_003EF0
};

LinkAnimationHeader gPlayerAnim_0034A8 = { 
    { 20 }, gPlayerAnimData_004970
};

LinkAnimationHeader gPlayerAnim_0034B0 = { 
    { 10 }, gPlayerAnimData_0053F0
};

LinkAnimationHeader gPlayerAnim_0034B8 = { 
    { 30 }, gPlayerAnimData_005930
};

LinkAnimationHeader gPlayerAnim_0034C0 = { 
    { 30 }, gPlayerAnimData_0068F0
};

LinkAnimationHeader gPlayerAnim_0034C8 = { 
    { 35 }, gPlayerAnimData_0078B0
};

LinkAnimationHeader gPlayerAnim_0034D0 = { 
    { 40 }, gPlayerAnimData_008B10
};

LinkAnimationHeader gPlayerAnim_0034D8 = { 
    { 20 }, gPlayerAnimData_00A000
};

LinkAnimationHeader gPlayerAnim_0034E0 = { 
    { 25 }, gPlayerAnimData_00AA80
};

LinkAnimationHeader gPlayerAnim_0034E8 = { 
    { 20 }, gPlayerAnimData_00B7A0
};

LinkAnimationHeader gPlayerAnim_0034F0 = { 
    { 40 }, gPlayerAnimData_00C220
};

u8 gameplay_keep_possiblePadding_0034F8[] = {
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 
};

Vtx gameplay_keepVtx_003500[] = {
#include "assets/objects/gameplay_keep/gameplay_keepVtx_003500.vtx.inc"
};

Gfx gDebugPyramidDL[] = {
    gsSPVertex(gameplay_keepVtx_003500, 12, 0),
    gsSP2Triangles(0, 1, 2, 0, 3, 4, 5, 0),
    gsSP2Triangles(3, 4, 5, 0, 6, 7, 8, 0),
    gsSP2Triangles(6, 7, 8, 0, 9, 10, 11, 0),
    gsSP1Triangle(9, 10, 11, 0),
    gsSPEndDisplayList(),
};

u64 gDebugCircleTex[] = {
#include "assets/objects/gameplay_keep/debug_circle.i8.inc.c"
};

u64 gDebugBallTex[] = {
#include "assets/objects/gameplay_keep/debug_ball.i8.inc.c"
};

u64 gDebugCursorTex[] = {
#include "assets/objects/gameplay_keep/debug_cursor.i8.inc.c"
};

u64 gDebugCrossTex[] = {
#include "assets/objects/gameplay_keep/debug_cross.i8.inc.c"
};

Gfx gDebugArrowDL[] = {
    gsSPVertex(gameplay_keepVtx_003A50, 32, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 3, 1, 0),
    gsSP2Triangles(4, 5, 6, 0, 4, 7, 5, 0),
    gsSP2Triangles(8, 9, 10, 0, 8, 11, 9, 0),
    gsSP2Triangles(12, 13, 14, 0, 12, 14, 15, 0),
    gsSP2Triangles(16, 17, 18, 0, 16, 18, 19, 0),
    gsSP2Triangles(20, 21, 22, 0, 23, 24, 25, 0),
    gsSP2Triangles(26, 23, 25, 0, 24, 26, 25, 0),
    gsSP2Triangles(27, 28, 29, 0, 30, 31, 29, 0),
    gsSPVertex(&gameplay_keepVtx_003A50[32], 4, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsSPEndDisplayList(),
};

Vtx gameplay_keepVtx_003A50[] = {
#include "assets/objects/gameplay_keep/gameplay_keepVtx_003A50.vtx.inc"
};

Gfx gDebugCameraDL[] = {
    gsSPVertex(gameplay_keepVtx_003D08, 32, 0),
    gsSP2Triangles(0, 1, 2, 0, 1, 3, 2, 0),
    gsSP2Triangles(3, 4, 2, 0, 5, 0, 2, 0),
    gsSP2Triangles(4, 6, 2, 0, 6, 5, 2, 0),
    gsSP2Triangles(7, 8, 9, 0, 8, 10, 11, 0),
    gsSP2Triangles(8, 11, 12, 0, 7, 10, 8, 0),
    gsSP2Triangles(13, 14, 15, 0, 13, 15, 16, 0),
    gsSP2Triangles(17, 18, 19, 0, 17, 20, 18, 0),
    gsSP2Triangles(21, 22, 23, 0, 22, 24, 23, 0),
    gsSP2Triangles(25, 26, 23, 0, 26, 27, 23, 0),
    gsSP2Triangles(27, 28, 29, 0, 30, 31, 29, 0),
    gsSPVertex(&gameplay_keepVtx_003D08[32], 8, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsSP2Triangles(4, 5, 6, 0, 4, 6, 7, 0),
    gsSPEndDisplayList(),
};

Vtx gameplay_keepVtx_003D08[] = {
#include "assets/objects/gameplay_keep/gameplay_keepVtx_003D08.vtx.inc"
};

Gfx gDebugCheckeredFloorDL[] = {
    gsDPPipeSync(),
    gsDPSetTextureLUT(G_TT_NONE),
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsDPLoadTextureBlock_4b(gDebugCheckeredFloorTex, G_IM_FMT_IA, 32, 32, 0, G_TX_NOMIRROR | G_TX_WRAP, G_TX_NOMIRROR |
                            G_TX_WRAP, 5, 5, G_TX_NOLOD, G_TX_NOLOD),
    gsDPSetCombineLERP(TEXEL0, 0, SHADE, 0, 0, 0, 0, TEXEL0, COMBINED, 0, PRIMITIVE, 0, 0, 0, 0, COMBINED),
    gsDPSetRenderMode(G_RM_FOG_SHADE_A, G_RM_AA_ZB_XLU_SURF2),
    gsSPClearGeometryMode(G_TEXTURE_GEN | G_TEXTURE_GEN_LINEAR),
    gsSPSetGeometryMode(G_CULL_BACK | G_FOG | G_LIGHTING),
    gsDPSetPrimColor(0, 0, 255, 255, 255, 255),
    gsSPVertex(&gameplay_keepVtx_003D08[40], 4, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsSPEndDisplayList(),
};

u64 gDebugCheckeredFloorTex[] = {
#include "assets/objects/gameplay_keep/debug_checkered_floor.ia4.inc.c"
};

Vtx gameplay_keepVtx_004258[] = {
#include "assets/objects/gameplay_keep/gameplay_keepVtx_004258.vtx.inc"
};

Gfx gDebugSpriteDL[] = {
    gsSPVertex(gameplay_keepVtx_004258, 4, 0),
    gsSP2Triangles(0, 2, 1, 0, 1, 2, 3, 0),
    gsSPEndDisplayList(),
};

s16 sArrow1AnimFrameData[] = {
    0x0000, 0x4000, 0x0000, 0xE89F, 0xD0D3, 0xB8AC, 0xA039, 0x878A, 0x6EAE, 0x55B5, 0x3CAD, 0x23A6, 0x0AB0, 0xF1DA, 
    0xD934, 0xC0CD, 0xA8B4, 0x90F9, 0x79AB, 0x62D9, 0x4C93, 0x36E9, 0x21EA, 0x0DA5, 0xFA2A, 0xE787, 0xD76E, 0xD56F, 
    0xDEB7, 0xED0E, 0xFA3A, 0x0000, 
};

JointIndex sArrow1AnimJointIndices[] = {
    { 0x0000, 0x0000, 0x0000 },
    { 0x0002, 0x0000, 0x0000 },
    { 0x0000, 0x0000, 0x0000 },
    { 0x0000, 0x0001, 0x0000 },
    { 0x0000, 0x0000, 0x0000 },
};

AnimationHeader gArrow1Anim = { 
    { 30 }, sArrow1AnimFrameData,
    sArrow1AnimJointIndices, 2
};

s16 sArrow2AnimFrameData[] = {
    0x0000, 0x4000, 0x3AA1, 0x3047, 0x2997, 0x3818, 0x50AB, 0x507F, 0x3C3A, 0x2F4C, 0x37DC, 0x43E1, 0x484F, 0x3B90, 
    0x3CA2, 0x4367, 0x3DE4, 0x4000, 0x400C, 0x3F0F, 0x3FF6, 0x0000, 
};

JointIndex sArrow2AnimJointIndices[] = {
    { 0x0000, 0x0000, 0x0000 },
    { 0x0000, 0x0000, 0x0000 },
    { 0x0000, 0x0000, 0x0000 },
    { 0x0000, 0x0001, 0x0000 },
    { 0x0000, 0x0000, 0x0000 },
};

AnimationHeader gArrow2Anim = { 
    { 20 }, sArrow2AnimFrameData,
    sArrow2AnimJointIndices, 1
};

u8 gameplay_keep_possiblePadding_00437C[] = {
    0x00, 0x00, 0x00, 0x00, 
};

u64 gArrowShaftTex[] = {
#include "assets/objects/gameplay_keep/arrow_shaft.rgba16.inc.c"
};

u64 gArrowFletchingTex[] = {
#include "assets/objects/gameplay_keep/arrow_fletching.rgba16.inc.c"
};

Vtx gameplay_keepVtx_005780[] = {
#include "assets/objects/gameplay_keep/gameplay_keepVtx_005780.vtx.inc"
};

Gfx gArrowNearDL[] = {
    gsDPPipeSync(),
    gsDPSetTextureLUT(G_TT_NONE),
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsDPLoadTextureBlock(gArrowShaftTex, G_IM_FMT_RGBA, G_IM_SIZ_16b, 16, 128, 0, G_TX_NOMIRROR | G_TX_WRAP,
                         G_TX_NOMIRROR | G_TX_WRAP, 4, 7, G_TX_NOLOD, G_TX_NOLOD),
    gsDPSetCombineLERP(TEXEL0, 0, SHADE, 0, 0, 0, 0, 1, COMBINED, 0, PRIMITIVE, 0, 0, 0, 0, COMBINED),
    gsDPSetRenderMode(G_RM_FOG_SHADE_A, G_RM_AA_ZB_OPA_SURF2),
    gsSPClearGeometryMode(G_TEXTURE_GEN | G_TEXTURE_GEN_LINEAR),
    gsSPSetGeometryMode(G_CULL_BACK | G_FOG | G_LIGHTING),
    gsDPSetPrimColor(0, 0, 255, 255, 255, 255),
    gsSPVertex(gameplay_keepVtx_005780, 18, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 3, 1, 0),
    gsSP2Triangles(4, 3, 0, 0, 4, 5, 3, 0),
    gsSP2Triangles(6, 2, 1, 0, 6, 7, 2, 0),
    gsSP2Triangles(8, 9, 10, 0, 8, 11, 9, 0),
    gsSP2Triangles(6, 8, 7, 0, 6, 11, 8, 0),
    gsSP2Triangles(4, 9, 5, 0, 4, 10, 9, 0),
    gsSP2Triangles(12, 13, 14, 0, 12, 15, 13, 0),
    gsSP2Triangles(12, 16, 15, 0, 12, 17, 16, 0),
    gsDPPipeSync(),
    gsDPLoadTextureBlock(gArrowFletchingTex, G_IM_FMT_RGBA, G_IM_SIZ_16b, 32, 16, 0, G_TX_MIRROR | G_TX_WRAP,
                         G_TX_MIRROR | G_TX_WRAP, 5, 4, G_TX_NOLOD, G_TX_NOLOD),
    gsDPSetCombineLERP(TEXEL0, 0, SHADE, 0, 0, 0, 0, TEXEL0, COMBINED, 0, PRIMITIVE, 0, 0, 0, 0, COMBINED),
    gsDPSetRenderMode(G_RM_FOG_SHADE_A, G_RM_AA_ZB_TEX_EDGE2),
    gsSPClearGeometryMode(G_CULL_BACK),
    gsSPVertex(&gameplay_keepVtx_005780[18], 8, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsSP2Triangles(4, 5, 6, 0, 4, 7, 5, 0),
    gsDPPipeSync(),
    gsSPTexture(0x07D0, 0x09C4, 0, G_TX_RENDERTILE, G_ON),
    gsDPLoadTextureBlock(gHilite2Tex, G_IM_FMT_RGBA, G_IM_SIZ_16b, 32, 32, 0, G_TX_MIRROR | G_TX_WRAP, G_TX_MIRROR |
                         G_TX_WRAP, 5, 5, 1, 1),
    gsDPSetCombineLERP(TEXEL0, 0, SHADE, 0, 0, 0, 0, 1, COMBINED, 0, PRIMITIVE, 0, 0, 0, 0, COMBINED),
    gsDPSetRenderMode(G_RM_FOG_SHADE_A, G_RM_AA_ZB_OPA_SURF2),
    gsSPSetGeometryMode(G_CULL_BACK | G_TEXTURE_GEN | G_TEXTURE_GEN_LINEAR),
    gsDPSetPrimColor(0, 0, 255, 255, 255, 255),
    gsSPVertex(&gameplay_keepVtx_005780[26], 3, 0),
    gsSP1Triangle(0, 1, 2, 0),
    gsSPVertex(&gameplay_keepVtx_005780[29], 21, 0),
    gsSP2Triangles(0, 1, 2, 0, 3, 4, 5, 0),
    gsSP2Triangles(6, 5, 4, 0, 7, 8, 9, 0),
    gsSP2Triangles(10, 11, 12, 0, 13, 14, 6, 0),
    gsSP2Triangles(5, 13, 3, 0, 15, 16, 17, 0),
    gsSP1Triangle(18, 19, 20, 0),
    gsSPEndDisplayList(),
};

Vtx gameplay_keepVtx_005C80[] = {
#include "assets/objects/gameplay_keep/gameplay_keepVtx_005C80.vtx.inc"
};

Gfx gArrowFarDL[] = {
    gsDPPipeSync(),
    gsDPSetTextureLUT(G_TT_NONE),
    gsSPTexture(0x07D0, 0x09C4, 0, G_TX_RENDERTILE, G_ON),
    gsDPLoadTextureBlock(gHilite2Tex, G_IM_FMT_RGBA, G_IM_SIZ_16b, 32, 32, 0, G_TX_MIRROR | G_TX_WRAP, G_TX_MIRROR |
                         G_TX_WRAP, 5, 5, 1, 1),
    gsDPSetCombineLERP(TEXEL0, 0, SHADE, 0, 0, 0, 0, 1, COMBINED, 0, PRIMITIVE, 0, 0, 0, 0, COMBINED),
    gsDPSetRenderMode(G_RM_FOG_SHADE_A, G_RM_AA_ZB_OPA_SURF2),
    gsSPSetGeometryMode(G_CULL_BACK | G_FOG | G_LIGHTING | G_TEXTURE_GEN | G_TEXTURE_GEN_LINEAR),
    gsDPSetPrimColor(0, 0, 255, 255, 255, 255),
    gsSPVertex(gameplay_keepVtx_005C80, 3, 0),
    gsSP1Triangle(0, 1, 2, 0),
    gsSPVertex(&gameplay_keepVtx_005C80[3], 9, 0),
    gsSP2Triangles(0, 1, 2, 0, 3, 4, 5, 0),
    gsSP1Triangle(6, 7, 8, 0),
    gsDPPipeSync(),
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsDPLoadTextureBlock(gArrowFletchingTex, G_IM_FMT_RGBA, G_IM_SIZ_16b, 32, 16, 0, G_TX_MIRROR | G_TX_WRAP,
                         G_TX_MIRROR | G_TX_WRAP, 5, 4, G_TX_NOLOD, G_TX_NOLOD),
    gsDPSetCombineLERP(TEXEL0, 0, SHADE, 0, 0, 0, 0, TEXEL0, COMBINED, 0, PRIMITIVE, 0, 0, 0, 0, COMBINED),
    gsDPSetRenderMode(G_RM_FOG_SHADE_A, G_RM_AA_ZB_TEX_EDGE2),
    gsSPClearGeometryMode(G_CULL_BACK | G_TEXTURE_GEN | G_TEXTURE_GEN_LINEAR),
    gsDPSetPrimColor(0, 0, 255, 255, 255, 255),
    gsSPVertex(&gameplay_keepVtx_005C80[12], 4, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 3, 1, 0),
    gsSPVertex(&gameplay_keepVtx_005C80[16], 4, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 3, 1, 0),
    gsDPPipeSync(),
    gsDPLoadTextureBlock(gArrowShaftTex, G_IM_FMT_RGBA, G_IM_SIZ_16b, 16, 128, 0, G_TX_NOMIRROR | G_TX_WRAP,
                         G_TX_NOMIRROR | G_TX_WRAP, 4, 7, G_TX_NOLOD, G_TX_NOLOD),
    gsDPSetCombineLERP(TEXEL0, 0, SHADE, 0, 0, 0, 0, 1, COMBINED, 0, PRIMITIVE, 0, 0, 0, 0, COMBINED),
    gsDPSetRenderMode(G_RM_FOG_SHADE_A, G_RM_AA_ZB_OPA_SURF2),
    gsSPSetGeometryMode(G_CULL_BACK),
    gsSPVertex(&gameplay_keepVtx_005C80[20], 6, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 3, 1, 0),
    gsSP2Triangles(4, 5, 0, 0, 5, 3, 0, 0),
    gsSP2Triangles(2, 5, 4, 0, 2, 1, 5, 0),
    gsSPEndDisplayList(),
};

LodLimb gArrowSkelLimbsLimb_005FC0 = { 
    { 0, 0, 0 }, 0x01, LIMB_DONE,
    { NULL, NULL }
};

LodLimb gArrowSkelLimbsLimb_005FD0 = { 
    { -1, 0, 998 }, 0x02, LIMB_DONE,
    { NULL, NULL }
};

LodLimb gArrowSkelLimbsLimb_005FE0 = { 
    { 0, 0, 0 }, 0x03, LIMB_DONE,
    { NULL, NULL }
};

LodLimb gArrowSkelLimbsLimb_005FF0 = { 
    { 0, 0, 0 }, LIMB_DONE, LIMB_DONE,
    { gArrowNearDL, gArrowFarDL }
};

void* gArrowSkelLimbs[] = {
    &gArrowSkelLimbsLimb_005FC0,
    &gArrowSkelLimbsLimb_005FD0,
    &gArrowSkelLimbsLimb_005FE0,
    &gArrowSkelLimbsLimb_005FF0,
};

SkeletonHeader gArrowSkel = { 
    gArrowSkelLimbs, ARRAY_COUNT(gArrowSkelLimbs)
};

u8 gameplay_keep_possiblePadding_006018[] = {
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 
};

u64 gUnknownEffBlureTex[] = {
#include "assets/objects/gameplay_keep/unknown_eff_blure.i8.inc.c"
};

u64 gBombBodyTex[] = {
#include "assets/objects/gameplay_keep/bomb_body.ia8.inc.c"
};

Vtx gameplay_keepVtx_007820[] = {
#include "assets/objects/gameplay_keep/gameplay_keepVtx_007820.vtx.inc"
};

Gfx gBombBodyDL[] = {
    gsDPPipeSync(),
    gsDPSetTextureLUT(G_TT_NONE),
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsDPLoadTextureBlock(gBombBodyTex, G_IM_FMT_IA, G_IM_SIZ_8b, 64, 64, 0, G_TX_MIRROR | G_TX_WRAP, G_TX_MIRROR |
                         G_TX_WRAP, 6, 6, G_TX_NOLOD, G_TX_NOLOD),
    gsDPSetCombineLERP(1, 0, PRIMITIVE, TEXEL0, 0, 0, 0, TEXEL0, 0, 0, 0, COMBINED, 0, 0, 0, COMBINED),
    gsDPSetRenderMode(G_RM_FOG_SHADE_A, G_RM_AA_ZB_TEX_EDGE2),
    gsSPClearGeometryMode(G_LIGHTING | G_TEXTURE_GEN | G_TEXTURE_GEN_LINEAR),
    gsSPSetGeometryMode(G_CULL_BACK | G_FOG),
    gsSPVertex(gameplay_keepVtx_007820, 4, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsSPEndDisplayList(),
};

u8 gameplay_keep_possiblePadding_0078E8[] = {
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 
};

u64 gBombCapTex[] = {
#include "assets/objects/gameplay_keep/bomb_cap.rgba16.inc.c"
};

Vtx gameplay_keepVtx_007970[] = {
#include "assets/objects/gameplay_keep/gameplay_keepVtx_007970.vtx.inc"
};

Gfx gBombCapDL[] = {
    gsDPPipeSync(),
    gsDPSetTextureLUT(G_TT_NONE),
    gsSPTexture(0x03E8, 0x03E8, 0, G_TX_RENDERTILE, G_ON),
    gsDPLoadTextureBlock(gBombCapTex, G_IM_FMT_RGBA, G_IM_SIZ_16b, 8, 8, 0, G_TX_MIRROR | G_TX_WRAP, G_TX_MIRROR |
                         G_TX_WRAP, 3, 3, G_TX_NOLOD, G_TX_NOLOD),
    gsDPSetCombineLERP(TEXEL0, 0, SHADE, 0, 0, 0, 0, 1, COMBINED, 0, PRIMITIVE, 0, 0, 0, 0, COMBINED),
    gsDPSetRenderMode(G_RM_FOG_SHADE_A, G_RM_AA_ZB_OPA_SURF2),
    gsSPSetGeometryMode(G_CULL_BACK | G_FOG | G_LIGHTING | G_TEXTURE_GEN | G_TEXTURE_GEN_LINEAR),
    gsDPSetPrimColor(0, 0, 255, 255, 255, 255),
    gsSPVertex(gameplay_keepVtx_007970, 4, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsSPVertex(&gameplay_keepVtx_007970[4], 10, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsSP2Triangles(3, 2, 4, 0, 3, 4, 5, 0),
    gsSP2Triangles(5, 4, 6, 0, 5, 6, 7, 0),
    gsSP2Triangles(7, 6, 8, 0, 7, 8, 9, 0),
    gsSP2Triangles(8, 6, 4, 0, 8, 4, 2, 0),
    gsSP1Triangle(8, 2, 1, 0),
    gsSPEndDisplayList(),
};

u64 gBombchuBodyTex[] = {
#include "assets/objects/gameplay_keep/bombchu_body.rgba16.inc.c"
};

Vtx gameplay_keepVtx_007B90[] = {
#include "assets/objects/gameplay_keep/gameplay_keepVtx_007B90.vtx.inc"
};

Gfx gBombchuDL[] = {
    gsDPPipeSync(),
    gsDPSetTextureLUT(G_TT_NONE),
    gsSPTexture(0x0190, 0x0190, 0, G_TX_RENDERTILE, G_ON),
    gsDPLoadTextureBlock(gBombchuBodyTex, G_IM_FMT_RGBA, G_IM_SIZ_16b, 8, 8, 0, G_TX_MIRROR | G_TX_WRAP, G_TX_MIRROR |
                         G_TX_WRAP, 3, 3, 15, 15),
    gsDPSetCombineLERP(TEXEL0, 0, SHADE, 0, 0, 0, 0, 1, COMBINED, 0, PRIMITIVE, 0, 0, 0, 0, COMBINED),
    gsDPSetRenderMode(G_RM_FOG_SHADE_A, G_RM_AA_ZB_OPA_SURF2),
    gsSPSetGeometryMode(G_CULL_BACK | G_FOG | G_LIGHTING | G_TEXTURE_GEN | G_TEXTURE_GEN_LINEAR),
    gsDPSetPrimColor(0, 0, 255, 255, 255, 255),
    gsSPVertex(gameplay_keepVtx_007B90, 3, 0),
    gsSP1Triangle(0, 1, 2, 0),
    gsSPVertex(&gameplay_keepVtx_007B90[3], 14, 0),
    gsSP2Triangles(0, 1, 2, 0, 2, 3, 4, 0),
    gsSP2Triangles(2, 5, 6, 0, 7, 8, 2, 0),
    gsSP2Triangles(4, 9, 10, 0, 11, 12, 2, 0),
    gsSP2Triangles(2, 12, 13, 0, 2, 6, 11, 0),
    gsSP1Triangle(13, 0, 2, 0),
    gsDPPipeSync(),
    gsSPTexture(0, 0, 0, G_TX_RENDERTILE, G_OFF),
    gsDPSetCombineLERP(ENVIRONMENT, 0, PRIMITIVE, 0, 0, 0, 0, 1, 0, 0, 0, COMBINED, 0, 0, 0, COMBINED),
    gsDPSetRenderMode(G_RM_PASS, G_RM_AA_ZB_OPA_SURF2),
    gsSPClearGeometryMode(G_FOG | G_LIGHTING | G_TEXTURE_GEN | G_TEXTURE_GEN_LINEAR),
    gsSPVertex(&gameplay_keepVtx_007B90[17], 15, 0),
    gsSP2Triangles(0, 1, 2, 0, 1, 3, 2, 0),
    gsSP2Triangles(3, 0, 2, 0, 4, 5, 6, 0),
    gsSP2Triangles(7, 4, 6, 0, 6, 8, 7, 0),
    gsSP2Triangles(7, 8, 9, 0, 10, 4, 7, 0),
    gsSP2Triangles(11, 5, 4, 0, 9, 12, 13, 0),
    gsSP2Triangles(9, 14, 12, 0, 9, 11, 14, 0),
    gsSP2Triangles(9, 6, 5, 0, 9, 5, 11, 0),
    gsSP1Triangle(9, 8, 6, 0),
    gsDPPipeSync(),
    gsDPSetCombineLERP(0, 0, 0, PRIMITIVE, 0, 0, 0, 1, 0, 0, 0, COMBINED, 0, 0, 0, COMBINED),
    gsDPSetRenderMode(G_RM_FOG_SHADE_A, G_RM_AA_ZB_OPA_SURF2),
    gsSPSetGeometryMode(G_FOG),
    gsDPSetPrimColor(0, 0, 188, 75, 0, 255),
    gsSPVertex(&gameplay_keepVtx_007B90[32], 8, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsSP2Triangles(4, 5, 6, 0, 4, 6, 7, 0),
    gsSPEndDisplayList(),
};

u8 gameplay_keep_possiblePadding_007F78[] = {
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 
};

u64 gEffBombExplosion1Tex[] = {
#include "assets/objects/gameplay_keep/eff_bomb_explosion_1.ia16.inc.c"
};

u64 gEffBombExplosion2Tex[] = {
#include "assets/objects/gameplay_keep/eff_bomb_explosion_2.ia16.inc.c"
};

u64 gEffBombExplosion3Tex[] = {
#include "assets/objects/gameplay_keep/eff_bomb_explosion_3.ia16.inc.c"
};

u64 gEffBombExplosion4Tex[] = {
#include "assets/objects/gameplay_keep/eff_bomb_explosion_4.ia16.inc.c"
};

u64 gEffBombExplosion5Tex[] = {
#include "assets/objects/gameplay_keep/eff_bomb_explosion_5.ia16.inc.c"
};

u64 gEffBombExplosion6Tex[] = {
#include "assets/objects/gameplay_keep/eff_bomb_explosion_6.ia16.inc.c"
};

u64 gEffBombExplosion7Tex[] = {
#include "assets/objects/gameplay_keep/eff_bomb_explosion_7.ia16.inc.c"
};

u64 gEffBombExplosion8Tex[] = {
#include "assets/objects/gameplay_keep/eff_bomb_explosion_8.ia16.inc.c"
};

Gfx gEffBombExplosion1DL[] = {
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsDPSetRenderMode(G_RM_ZB_CLD_SURF, G_RM_ZB_CLD_SURF2),
    gsDPSetCombineLERP(PRIMITIVE, ENVIRONMENT, TEXEL0, ENVIRONMENT, PRIMITIVE, 0, TEXEL0, 0, PRIMITIVE, ENVIRONMENT,
                       TEXEL0, ENVIRONMENT, PRIMITIVE, 0, TEXEL0, 0),
    gsDPLoadTextureBlock(0x08000000, G_IM_FMT_IA, G_IM_SIZ_16b, 32, 32, 0, G_TX_NOMIRROR | G_TX_CLAMP, G_TX_NOMIRROR |
                         G_TX_CLAMP, 6, 5, G_TX_NOLOD, G_TX_NOLOD),
    gsSPVertex(gameplay_keepVtx_00C058, 4, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsSPEndDisplayList(),
};

Gfx gEffBombExplosion2DL[] = {
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsDPSetRenderMode(G_RM_ZB_CLD_SURF, G_RM_ZB_CLD_SURF2),
    gsDPSetCombineLERP(PRIMITIVE, ENVIRONMENT, TEXEL0, ENVIRONMENT, PRIMITIVE, 0, TEXEL0, 0, PRIMITIVE, ENVIRONMENT,
                       TEXEL0, ENVIRONMENT, PRIMITIVE, 0, TEXEL0, 0),
    gsDPLoadTextureBlock(0x08000000, G_IM_FMT_IA, G_IM_SIZ_16b, 32, 32, 0, G_TX_NOMIRROR | G_TX_CLAMP, G_TX_NOMIRROR |
                         G_TX_CLAMP, 6, 5, G_TX_NOLOD, G_TX_NOLOD),
    gsSPEndDisplayList(),
};

Gfx gEffBombExplosion3DL[] = {
    gsSPVertex(gameplay_keepVtx_00C058, 4, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsSPEndDisplayList(),
};

Vtx gameplay_keepVtx_00C058[] = {
#include "assets/objects/gameplay_keep/gameplay_keepVtx_00C058.vtx.inc"
};

u8 gameplay_keep_possiblePadding_00C098[] = {
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 
};

Vtx gameplay_keepVtx_00C0A0[] = {
#include "assets/objects/gameplay_keep/gameplay_keepVtx_00C0A0.vtx.inc"
};

Gfx gEffFragments1DL[] = {
    gsDPPipeSync(),
    gsDPSetTextureLUT(G_TT_NONE),
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsDPLoadTextureBlock(gWitheredLeafTex, G_IM_FMT_RGBA, G_IM_SIZ_16b, 16, 16, 0, G_TX_MIRROR | G_TX_CLAMP, G_TX_MIRROR
                         | G_TX_CLAMP, 4, 4, G_TX_NOLOD, G_TX_NOLOD),
    gsDPSetCombineLERP(TEXEL0, 0, SHADE, 0, TEXEL0, 0, PRIMITIVE, 0, COMBINED, 0, PRIMITIVE, 0, 0, 0, 0, COMBINED),
    gsDPSetRenderMode(G_RM_FOG_SHADE_A, G_RM_AA_ZB_TEX_EDGE2),
    gsSPClearGeometryMode(G_CULL_BACK | G_TEXTURE_GEN | G_TEXTURE_GEN_LINEAR),
    gsSPSetGeometryMode(G_LIGHTING),
    gsDPSetPrimColor(0, 0, 255, 255, 255, 255),
    gsSPVertex(gameplay_keepVtx_00C0A0, 3, 0),
    gsSP1Triangle(0, 1, 2, 0),
    gsSPEndDisplayList(),
};

u64 gWitheredLeafTex[] = {
#include "assets/objects/gameplay_keep/withered_leaf.rgba16.inc.c"
};

Vtx gameplay_keepVtx_00C360[] = {
#include "assets/objects/gameplay_keep/gameplay_keepVtx_00C360.vtx.inc"
};

Gfx gUnknownBlankDL[] = {
    gsSPEndDisplayList(),
};

Gfx gBoomerangDL[] = {
    gsDPPipeSync(),
    gsSPTexture(0x0800, 0x0800, 0, G_TX_RENDERTILE, G_ON),
    gsDPLoadTextureBlock(gHilite2Tex, G_IM_FMT_RGBA, G_IM_SIZ_16b, 32, 32, 0, G_TX_MIRROR | G_TX_WRAP, G_TX_MIRROR |
                         G_TX_WRAP, 5, 5, G_TX_NOLOD, G_TX_NOLOD),
    gsDPLoadMultiBlock(gUnknownCircle4Tex, 0x0100, 1, G_IM_FMT_I, G_IM_SIZ_8b, 16, 16, 0, G_TX_NOMIRROR | G_TX_WRAP,
                       G_TX_NOMIRROR | G_TX_WRAP, G_TX_NOMASK, G_TX_NOMASK, G_TX_NOLOD, G_TX_NOLOD),
    gsDPSetCombineLERP(TEXEL0, 0, SHADE, 0, TEXEL0, 0, SHADE, 0, 1, COMBINED, TEXEL0, COMBINED, 1, COMBINED, TEXEL0,
                       COMBINED),
    gsDPSetRenderMode(G_RM_FOG_SHADE_A, G_RM_AA_ZB_OPA_SURF2),
    gsSPSetGeometryMode(G_CULL_BACK | G_LIGHTING | G_TEXTURE_GEN | G_TEXTURE_GEN_LINEAR),
    gsDPSetPrimColor(0, 0, 243, 0, 97, 255),
    gsSPVertex(gameplay_keepVtx_00C360, 32, 0),
    gsSP2Triangles(0, 1, 2, 0, 3, 4, 5, 0),
    gsSP2Triangles(6, 7, 8, 0, 9, 10, 11, 0),
    gsSP2Triangles(12, 13, 14, 0, 15, 16, 17, 0),
    gsSP2Triangles(18, 19, 20, 0, 21, 22, 23, 0),
    gsSP2Triangles(24, 25, 26, 0, 27, 28, 29, 0),
    gsSPVertex(&gameplay_keepVtx_00C360[30], 6, 0),
    gsSP2Triangles(0, 1, 2, 0, 3, 4, 5, 0),
    gsDPPipeSync(),
    gsSPTexture(0, 0, 0, G_TX_RENDERTILE, G_OFF),
    gsDPSetCombineLERP(SHADE, 0, PRIMITIVE, 0, SHADE, 0, PRIMITIVE, 0, 0, 0, 0, COMBINED, 0, 0, 0, COMBINED),
    gsDPSetRenderMode(G_RM_FOG_SHADE_A, G_RM_AA_ZB_OPA_SURF2),
    gsSPClearGeometryMode(G_TEXTURE_GEN | G_TEXTURE_GEN_LINEAR),
    gsDPSetPrimColor(0, 0, 255, 255, 0, 255),
    gsSPVertex(&gameplay_keepVtx_00C360[36], 15, 0),
    gsSP2Triangles(0, 1, 2, 0, 1, 3, 2, 0),
    gsSP2Triangles(3, 4, 2, 0, 5, 6, 7, 0),
    gsSP2Triangles(8, 9, 10, 0, 7, 9, 8, 0),
    gsSP2Triangles(8, 10, 11, 0, 2, 4, 12, 0),
    gsSP2Triangles(4, 3, 8, 0, 8, 3, 13, 0),
    gsSP2Triangles(13, 3, 1, 0, 4, 8, 12, 0),
    gsSP2Triangles(2, 12, 0, 0, 7, 6, 9, 0),
    gsSP2Triangles(11, 10, 14, 0, 14, 10, 6, 0),
    gsSP2Triangles(5, 14, 6, 0, 11, 14, 5, 0),
    gsSP2Triangles(0, 13, 1, 0, 6, 10, 9, 0),
    gsSPEndDisplayList(),
};

Gfx gBoomerangRefDL[] = {
    gsSPDisplayList(gBoomerangDL),
    gsSPEndDisplayList(),
};

u8 gameplay_keep_possiblePadding_00C818[] = {
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 
};

Gfx gCompassArrowDL[] = {
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_OFF),
    gsSPClearGeometryMode(G_CULL_BACK),
    gsSPVertex(gameplay_keepVtx_00C848, 3, 0),
    gsSP1Triangle(0, 1, 2, 0),
    gsSPEndDisplayList(),
};

Vtx gameplay_keepVtx_00C848[] = {
#include "assets/objects/gameplay_keep/gameplay_keepVtx_00C848.vtx.inc"
};

u8 gameplay_keep_possiblePadding_00C878[] = {
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 
};

Vtx gameplay_keepVtx_00C880[] = {
#include "assets/objects/gameplay_keep/gameplay_keepVtx_00C880.vtx.inc"
};

Gfx gZTargetArrowDL[] = {
    gsDPPipeSync(),
    gsDPSetTextureLUT(G_TT_NONE),
    gsSPTexture(0x03E8, 0x2710, 0, G_TX_RENDERTILE, G_ON),
    gsDPLoadTextureBlock(gHilite3Tex, G_IM_FMT_I, G_IM_SIZ_8b, 8, 8, 0, G_TX_MIRROR | G_TX_WRAP, G_TX_MIRROR |
                         G_TX_WRAP, 3, 3, G_TX_NOLOD, 4),
    gsDPSetCombineLERP(TEXEL0, 0, PRIMITIVE, 0, 0, 0, 0, 1, TEXEL0, 0, PRIMITIVE, 0, 0, 0, 0, COMBINED),
    gsDPSetRenderMode(G_RM_AA_OPA_SURF, G_RM_AA_OPA_SURF2),
    gsSPSetGeometryMode(G_CULL_BACK | G_LIGHTING | G_TEXTURE_GEN | G_TEXTURE_GEN_LINEAR),
    gsSPVertex(gameplay_keepVtx_00C880, 4, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsSPVertex(&gameplay_keepVtx_00C880[4], 32, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsSP2Triangles(4, 2, 1, 0, 5, 6, 7, 0),
    gsSP2Triangles(5, 7, 8, 0, 8, 7, 9, 0),
    gsSP2Triangles(8, 9, 10, 0, 9, 7, 6, 0),
    gsSP2Triangles(11, 12, 13, 0, 11, 13, 14, 0),
    gsSP2Triangles(15, 16, 17, 0, 15, 17, 18, 0),
    gsSP2Triangles(19, 17, 12, 0, 19, 12, 20, 0),
    gsSP2Triangles(12, 17, 13, 0, 21, 22, 23, 0),
    gsSP2Triangles(24, 23, 22, 0, 24, 22, 25, 0),
    gsSP2Triangles(26, 22, 27, 0, 26, 27, 28, 0),
    gsSP2Triangles(29, 21, 23, 0, 29, 23, 30, 0),
    gsSPVertex(&gameplay_keepVtx_00C880[35], 12, 0),
    gsSP2Triangles(0, 1, 2, 0, 3, 2, 1, 0),
    gsSP2Triangles(3, 1, 4, 0, 4, 1, 0, 0),
    gsSP2Triangles(4, 0, 5, 0, 6, 7, 8, 0),
    gsSP2Triangles(9, 7, 6, 0, 9, 6, 10, 0),
    gsSP2Triangles(11, 8, 7, 0, 11, 7, 9, 0),
    gsSPEndDisplayList(),
};

u64 gHilite3Tex[] = {
#include "assets/objects/gameplay_keep/hilite_3.i8.inc.c"
};

Vtx gameplay_keepVtx_00CCC0[] = {
#include "assets/objects/gameplay_keep/gameplay_keepVtx_00CCC0.vtx.inc"
};

Gfx gEffFragments2DL[] = {
    gsDPPipeSync(),
    gsSPTexture(0, 0, 0, G_TX_RENDERTILE, G_OFF),
    gsSPSetGeometryMode(G_CULL_BACK | G_LIGHTING),
    gsSPVertex(gameplay_keepVtx_00CCC0, 12, 0),
    gsSP2Triangles(0, 1, 2, 0, 3, 4, 5, 0),
    gsSP2Triangles(6, 7, 8, 0, 9, 10, 11, 0),
    gsSPEndDisplayList(),
};

u8 gameplay_keep_possiblePadding_00CDB8[] = {
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 
};

u64 gSelectionCursorTex[] = {
#include "assets/objects/gameplay_keep/selection_cursor.ia4.inc.c"
};

u64 gControlStickTex[] = {
#include "assets/objects/gameplay_keep/control_stick.ia8.inc.c"
};

u64 gArrowCursorTex[] = {
#include "assets/objects/gameplay_keep/arrow_cursor.ia8.inc.c"
};

Vtx gameplay_keepVtx_00D0C0[] = {
#include "assets/objects/gameplay_keep/gameplay_keepVtx_00D0C0.vtx.inc"
};

Gfx gUnusedRockFragmentDL[] = {
    gsDPPipeSync(),
    gsDPSetTextureLUT(G_TT_NONE),
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsDPLoadTextureBlock(gRockFragment2Tex, G_IM_FMT_RGBA, G_IM_SIZ_16b, 32, 32, 0, G_TX_NOMIRROR | G_TX_WRAP,
                         G_TX_NOMIRROR | G_TX_WRAP, 5, 5, G_TX_NOLOD, G_TX_NOLOD),
    gsDPSetCombineLERP(TEXEL0, 0, SHADE, 0, 0, 0, 0, TEXEL0, COMBINED, 0, PRIMITIVE, 0, 0, 0, 0, COMBINED),
    gsDPSetRenderMode(G_RM_FOG_SHADE_A, G_RM_AA_ZB_OPA_SURF2),
    gsSPClearGeometryMode(G_TEXTURE_GEN | G_TEXTURE_GEN_LINEAR),
    gsSPSetGeometryMode(G_CULL_BACK | G_LIGHTING),
    gsDPSetPrimColor(0, 0, 255, 255, 255, 255),
    gsSPVertex(gameplay_keepVtx_00D0C0, 4, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsDPPipeSync(),
    gsDPLoadTextureBlock(gRockFragment1Tex, G_IM_FMT_RGBA, G_IM_SIZ_16b, 32, 32, 0, G_TX_NOMIRROR | G_TX_WRAP,
                         G_TX_NOMIRROR | G_TX_WRAP, 5, 5, G_TX_NOLOD, G_TX_NOLOD),
    gsSPVertex(&gameplay_keepVtx_00D0C0[4], 20, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsSP2Triangles(4, 5, 6, 0, 4, 6, 7, 0),
    gsSP2Triangles(8, 9, 10, 0, 8, 10, 11, 0),
    gsSP2Triangles(12, 13, 14, 0, 12, 14, 15, 0),
    gsSP2Triangles(16, 17, 18, 0, 16, 18, 19, 0),
    gsSPEndDisplayList(),
};

Gfx gBoulderFragmentsDL[] = {
    gsDPPipeSync(),
    gsDPSetRenderMode(AA_EN | Z_CMP | Z_UPD | IM_RD | CVG_DST_CLAMP | ZMODE_INTER | CVG_X_ALPHA | ALPHA_CVG_SEL |
                      G_RM_FOG_SHADE_A, AA_EN | Z_CMP | Z_UPD | IM_RD | CVG_DST_CLAMP | ZMODE_INTER | CVG_X_ALPHA |
                      ALPHA_CVG_SEL | GBL_c2(G_BL_CLR_IN, G_BL_A_IN, G_BL_CLR_MEM, G_BL_1MA)),
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsDPPipeSync(),
    gsDPSetCombineLERP(TEXEL0, 0, PRIMITIVE, 0, TEXEL0, 0, PRIMITIVE, 0, COMBINED, 0, SHADE, 0, TEXEL1, 0,
                       PRIM_LOD_FRAC, COMBINED),
    gsDPLoadTextureBlock(gRockFragment2Tex, G_IM_FMT_RGBA, G_IM_SIZ_16b, 32, 32, 0, G_TX_NOMIRROR | G_TX_WRAP,
                         G_TX_NOMIRROR | G_TX_WRAP, 5, 5, G_TX_NOLOD, G_TX_NOLOD),
    gsSPSetGeometryMode(G_CULL_BACK),
    gsSPSetGeometryMode(G_LIGHTING),
    gsSPSetGeometryMode(G_SHADING_SMOOTH),
    gsSPVertex(gameplay_keepVtx_00D418, 12, 0),
    gsSP2Triangles(0, 1, 2, 0, 2, 1, 3, 0),
    gsSP2Triangles(3, 4, 2, 0, 2, 5, 6, 0),
    gsSP2Triangles(2, 6, 0, 0, 4, 5, 2, 0),
    gsSP2Triangles(6, 5, 7, 0, 7, 5, 4, 0),
    gsSP2Triangles(6, 8, 0, 0, 7, 8, 6, 0),
    gsSP2Triangles(4, 9, 7, 0, 10, 11, 9, 0),
    gsSP2Triangles(9, 11, 7, 0, 9, 4, 3, 0),
    gsSP2Triangles(9, 3, 10, 0, 3, 1, 10, 0),
    gsSP2Triangles(8, 11, 10, 0, 10, 1, 0, 0),
    gsSP2Triangles(0, 8, 10, 0, 7, 11, 8, 0),
    gsSPEndDisplayList(),
};

Vtx gameplay_keepVtx_00D418[] = {
#include "assets/objects/gameplay_keep/gameplay_keepVtx_00D418.vtx.inc"
};

u8 gameplay_keep_possiblePadding_00D4D8[] = {
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 
};

u64 gRockFragment1Tex[] = {
#include "assets/objects/gameplay_keep/rock_fragment_1.rgba16.inc.c"
};

u64 gRockFragment2Tex[] = {
#include "assets/objects/gameplay_keep/rock_fragment_2.rgba16.inc.c"
};

s16 sDoor1AnimFrameData[] = {
    0x0000, 0xC000, 0x0000, 0x0000, 0x0000, 0x0000, 0x0000, 0x0000, 0x0000, 0x0000, 0x0000, 0x0000, 0x0000, 0x0000, 
    0x0000, 0x0000, 0x0000, 0x0000, 0x0000, 0x0000, 0x0000, 0x0000, 0x0000, 0x0000, 0x0000, 0x0000, 0x0000, 0x0000, 
    0x0000, 0xFFAE, 0xFEF3, 0xFDC2, 0xFC0D, 0xF900, 0xF512, 0xF226, 0xF0B1, 0xEFBF, 0xEF17, 0xEE81, 0xEDC2, 0xECC8, 
    0xEBDA, 0xEB37, 0xEA8E, 0xE9B2, 0xE8CF, 0xE7E3, 0xE6ED, 0xE5ED, 0xE4D8, 0xE3AB, 0xE271, 0xE130, 0xDFF4, 0xDEC3, 
    0xDDA9, 0xDCAC, 0xDBD7, 0xDB33, 0xDB42, 0xDB51, 0xDB61, 0xDB70, 0xDB7F, 0xDB8E, 0xDB9E, 0xDBAD, 0xDBBC, 0xDDC2, 
    0xE043, 0xE329, 0xE65B, 0xE9C4, 0xED4C, 0xF0DC, 0xF45D, 0xF7B8, 0xFAD6, 0xFDA1, 0x0000, 0x0000, 0x0000, 0x0000, 
    0x0000, 0x0000, 0x0000, 0x0000, 0x0000, 0x0000, 
};

JointIndex sDoor1AnimJointIndices[] = {
    { 0x0000, 0x0000, 0x0000 },
    { 0x0000, 0x0000, 0x0000 },
    { 0x0001, 0x0000, 0x0000 },
    { 0x0000, 0x0000, 0x0002 },
    { 0x0000, 0x0000, 0x0000 },
};

AnimationHeader gDoor1Anim = { 
    { 88 }, sDoor1AnimFrameData,
    sDoor1AnimJointIndices, 2
};

u8 gameplay_keep_possiblePadding_00E5C4[] = {
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 
};

s16 sDoor2AnimFrameData[] = {
    0x0000, 0xC000, 0x0000, 0x0000, 0x0000, 0x0000, 0x0000, 0x0000, 0x0000, 0x0000, 0x0000, 0x0000, 0x0000, 0x0000, 
    0x0000, 0x0000, 0x0000, 0x0000, 0x0000, 0x0000, 0x0000, 0x0000, 0x0000, 0x0000, 0x0000, 0xFFA7, 0xFF09, 0xFE39, 
    0xFD4C, 0xFC53, 0xFB62, 0xFA8D, 0xF9EA, 0xF96B, 0xF8EF, 0xF853, 0xF777, 0xF639, 0xF2E7, 0xEEB6, 0xEB6C, 0xE85E, 
    0xE611, 0xE46A, 0xE300, 0xE1E0, 0xE117, 0xE0B3, 0xE0A9, 0xE0DD, 0xE143, 0xE1D1, 0xE27B, 0xE335, 0xE3F5, 0xE586, 
    0xE766, 0xE8A5, 0xE9C1, 0xEAE1, 0xEC2F, 0xEDB2, 0xEF52, 0xF106, 0xF2C8, 0xF490, 0xF655, 0xF811, 0xF9BB, 0xFB4C, 
    0xFCBD, 0xFE06, 0xFF1F, 0x0000, 0x0000, 0x0000, 0x0000, 0x0000, 0x0000, 0x0000, 0x0000, 0x0000, 0x0000, 0x0000, 
    0x0000, 0x0000, 0x0000, 0x0000, 
};

JointIndex sDoor2AnimJointIndices[] = {
    { 0x0000, 0x0000, 0x0000 },
    { 0x0000, 0x0000, 0x0000 },
    { 0x0001, 0x0000, 0x0000 },
    { 0x0000, 0x0000, 0x0002 },
    { 0x0000, 0x0000, 0x0000 },
};

AnimationHeader gDoor2Anim = { 
    { 85 }, sDoor2AnimFrameData,
    sDoor2AnimJointIndices, 2
};

s16 sDoor3AnimFrameData[] = {
    0x0000, 0xC000, 0x0000, 0x0000, 0x0000, 0x0000, 0x0000, 0x0000, 0x0000, 0x0000, 0x0000, 0x0000, 0x0000, 0x0000, 
    0x0000, 0x0000, 0x0000, 0x0000, 0x0000, 0x0000, 0x0000, 0x0000, 0x0000, 0x0000, 0x0000, 0x0000, 0x0000, 0xFEB0, 
    0xFC16, 0xF8C9, 0xF561, 0xF276, 0xEFF6, 0xED6C, 0xEAE2, 0xE85F, 0xE5EB, 0xE390, 0xE154, 0xDF41, 0xDD5E, 0xDCA1, 
    0xDD03, 0xDD16, 0xDC61, 0xDB5C, 0xD9FE, 0xD763, 0xD54F, 0xD51D, 0xD56E, 0xD618, 0xD6F0, 0xD7F4, 0xD939, 0xDAB0, 
    0xDC4A, 0xDD97, 0xDF2B, 0xE285, 0xECEC, 0xF1B8, 0xF6A1, 0xFAE4, 0xFE4B, 0xFFCE, 0x0017, 0x0000, 
};

JointIndex sDoor3AnimJointIndices[] = {
    { 0x0000, 0x0000, 0x0000 },
    { 0x0000, 0x0000, 0x0000 },
    { 0x0001, 0x0000, 0x0000 },
    { 0x0000, 0x0000, 0x0002 },
    { 0x0000, 0x0000, 0x0000 },
};

AnimationHeader gDoor3Anim = { 
    { 66 }, sDoor3AnimFrameData,
    sDoor3AnimJointIndices, 2
};

u8 gameplay_keep_possiblePadding_00E768[] = {
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 
};

Vtx gameplay_keepVtx_00E770[] = {
#include "assets/objects/gameplay_keep/gameplay_keepVtx_00E770.vtx.inc"
};

Gfx gDoorFrameDL[] = {
    gsDPPipeSync(),
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsDPLoadTextureBlock(gWoodenDoorTex, G_IM_FMT_RGBA, G_IM_SIZ_16b, 32, 64, 0, G_TX_MIRROR | G_TX_WRAP, G_TX_MIRROR |
                         G_TX_WRAP, 5, 6, G_TX_NOLOD, G_TX_NOLOD),
    gsDPSetCombineMode(G_CC_MODULATEIA_PRIM, G_CC_PASS2),
    gsDPSetPrimColor(0, 0, 170, 170, 170, 255),
    gsSPVertex(&gameplay_keepVtx_00E770[68], 8, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 3, 1, 0),
    gsSP2Triangles(4, 1, 5, 0, 4, 2, 1, 0),
    gsSP2Triangles(0, 6, 3, 0, 0, 7, 6, 0),
    gsSP2Triangles(6, 4, 5, 0, 6, 7, 4, 0),
    gsSPEndDisplayList(),
};

Gfx gDoorLeftDL[] = {
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsDPLoadTextureBlock(gWoodenDoorTex, G_IM_FMT_RGBA, G_IM_SIZ_16b, 32, 64, 0, G_TX_MIRROR | G_TX_WRAP, G_TX_MIRROR |
                         G_TX_WRAP, 5, 6, G_TX_NOLOD, G_TX_NOLOD),
    gsDPSetCombineMode(G_CC_MODULATEIA_PRIM, G_CC_PASS2),
    gsSPClearGeometryMode(G_LIGHTING | G_TEXTURE_GEN | G_TEXTURE_GEN_LINEAR),
    gsSPSetGeometryMode(G_CULL_BACK),
    gsDPSetPrimColor(0, 0, 170, 170, 170, 255),
    gsSPVertex(gameplay_keepVtx_00E770, 4, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsDPPipeSync(),
    gsSPTexture(0, 0, 0, G_TX_RENDERTILE, G_OFF),
    gsDPSetCombineMode(G_CC_PRIMITIVE, G_CC_PASS2),
    gsDPSetPrimColor(0, 0, 187, 187, 0, 255),
    gsSPVertex(&gameplay_keepVtx_00E770[4], 6, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsSP2Triangles(0, 3, 4, 0, 0, 4, 5, 0),
    gsDPPipeSync(),
    gsDPSetPrimColor(0, 0, 53, 53, 0, 255),
    gsSPVertex(&gameplay_keepVtx_00E770[10], 4, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsDPPipeSync(),
    gsDPSetPrimColor(0, 0, 174, 174, 0, 255),
    gsSPVertex(&gameplay_keepVtx_00E770[14], 4, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsDPPipeSync(),
    gsDPSetPrimColor(0, 0, 93, 93, 0, 255),
    gsSPVertex(&gameplay_keepVtx_00E770[18], 8, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsSP2Triangles(4, 5, 6, 0, 4, 6, 7, 0),
    gsDPPipeSync(),
    gsDPSetPrimColor(0, 0, 134, 134, 0, 255),
    gsSPVertex(&gameplay_keepVtx_00E770[26], 8, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsSP2Triangles(4, 5, 6, 0, 4, 6, 7, 0),
    gsSPDisplayList(gDoorFrameDL),
    gsSPEndDisplayList(),
};

Gfx gDoorRightDL[] = {
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsDPLoadTextureBlock(gWoodenDoorTex, G_IM_FMT_RGBA, G_IM_SIZ_16b, 32, 64, 0, G_TX_MIRROR | G_TX_WRAP, G_TX_MIRROR |
                         G_TX_WRAP, 5, 6, G_TX_NOLOD, G_TX_NOLOD),
    gsDPSetCombineMode(G_CC_MODULATEIA_PRIM, G_CC_PASS2),
    gsDPSetPrimColor(0, 0, 170, 170, 170, 255),
    gsSPVertex(&gameplay_keepVtx_00E770[34], 4, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsDPPipeSync(),
    gsSPTexture(0, 0, 0, G_TX_RENDERTILE, G_OFF),
    gsDPSetCombineMode(G_CC_PRIMITIVE, G_CC_PASS2),
    gsDPSetPrimColor(0, 0, 187, 187, 0, 255),
    gsSPVertex(&gameplay_keepVtx_00E770[38], 6, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsSP2Triangles(0, 3, 4, 0, 0, 4, 5, 0),
    gsDPPipeSync(),
    gsDPSetPrimColor(0, 0, 53, 53, 0, 255),
    gsSPVertex(&gameplay_keepVtx_00E770[44], 4, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsDPPipeSync(),
    gsDPSetPrimColor(0, 0, 174, 174, 0, 255),
    gsSPVertex(&gameplay_keepVtx_00E770[48], 4, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsDPPipeSync(),
    gsDPSetPrimColor(0, 0, 93, 93, 0, 255),
    gsSPVertex(&gameplay_keepVtx_00E770[52], 8, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsSP2Triangles(4, 5, 6, 0, 4, 6, 7, 0),
    gsDPPipeSync(),
    gsDPSetPrimColor(0, 0, 134, 134, 0, 255),
    gsSPVertex(&gameplay_keepVtx_00E770[60], 8, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsSP2Triangles(4, 5, 6, 0, 4, 6, 7, 0),
    gsSPDisplayList(gDoorFrameDL),
    gsSPEndDisplayList(),
};

u64 gWoodenDoorTex[] = {
#include "assets/objects/gameplay_keep/wooden_door.rgba16.inc.c"
};

StandardLimb gDoorSkelLimbsLimb_00FF38 = { 
    { 0, 0, 0 }, 0x01, LIMB_DONE,
    NULL
};

StandardLimb gDoorSkelLimbsLimb_00FF44 = { 
    { -2700, 0, 0 }, 0x02, LIMB_DONE,
    NULL
};

StandardLimb gDoorSkelLimbsLimb_00FF50 = { 
    { 0, 0, 0 }, 0x03, LIMB_DONE,
    NULL
};

StandardLimb gDoorSkelLimbsLimb_00FF5C = { 
    { 0, 0, 0 }, LIMB_DONE, LIMB_DONE,
    gDoorLeftDL
};

void* gDoorSkelLimbs[] = {
    &gDoorSkelLimbsLimb_00FF38,
    &gDoorSkelLimbsLimb_00FF44,
    &gDoorSkelLimbsLimb_00FF50,
    &gDoorSkelLimbsLimb_00FF5C,
};

SkeletonHeader gDoorSkel = { 
    gDoorSkelLimbs, ARRAY_COUNT(gDoorSkelLimbs)
};

s16 sDoor4AnimFrameData[] = {
    0x0000, 0xC000, 0x0000, 0x0000, 0x0000, 0x0000, 0x0000, 0x0000, 0x0000, 0x0000, 0x0000, 0x0000, 0x0000, 0x0000, 
    0x0000, 0x0000, 0x0000, 0x0000, 0x0000, 0x0000, 0x0000, 0x0000, 0xFE4E, 0xFAF1, 0xF6BC, 0xF284, 0xED1E, 0xE732, 
    0xE455, 0xE3FA, 0xE3AC, 0xE36B, 0xE336, 0xE30A, 0xE2E8, 0xE2CC, 0xE2B6, 0xE2A4, 0xE295, 0xE288, 0xE27A, 0xE26B, 
    0xE258, 0xE242, 0xE242, 0xE242, 0xE242, 0xE242, 0xE242, 0xE242, 0xE3AC, 0xE59E, 0xE723, 0xE8B8, 0xEA58, 0xEC01, 
    0xEDB0, 0xEF61, 0xF112, 0xF2BF, 0xF465, 0xF601, 0xF790, 0xF90F, 0xFA7A, 0xFBCE, 0xFD09, 0xFE27, 0xFF25, 0x0000, 
    0xFFA6, 0xFF4B, 0xFF22, 0xFF6C, 0xFFB6, 0x0000, 
};

JointIndex sDoor4AnimJointIndices[] = {
    { 0x0000, 0x0000, 0x0000 },
    { 0x0000, 0x0000, 0x0000 },
    { 0x0001, 0x0000, 0x0000 },
    { 0x0000, 0x0000, 0x0002 },
    { 0x0000, 0x0000, 0x0000 },
};

AnimationHeader gDoor4Anim = { 
    { 74 }, sDoor4AnimFrameData,
    sDoor4AnimJointIndices, 2
};

u8 gameplay_keep_possiblePadding_010048[] = {
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 
};

Gfx gEffDustDL[] = {
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsDPLoadTextureBlock(0x08000000, G_IM_FMT_I, G_IM_SIZ_8b, 32, 32, 0, G_TX_NOMIRROR | G_TX_CLAMP, G_TX_NOMIRROR |
                         G_TX_CLAMP, 5, 5, G_TX_NOLOD, G_TX_NOLOD),
    gsSPVertex(gameplay_keepVtx_0100A8, 4, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsSPEndDisplayList(),
};

Vtx gameplay_keepVtx_0100A8[] = {
#include "assets/objects/gameplay_keep/gameplay_keepVtx_0100A8.vtx.inc"
};

u8 gameplay_keep_possiblePadding_0100E8[] = {
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 
};

Vtx gameplay_keepVtx_0100F0[] = {
#include "assets/objects/gameplay_keep/gameplay_keepVtx_0100F0.vtx.inc"
};

Gfx gEffFlash1DL[] = {
    gsDPPipeSync(),
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsDPLoadTextureBlock(gFlashTex, G_IM_FMT_I, G_IM_SIZ_8b, 64, 64, 0, G_TX_MIRROR | G_TX_CLAMP, G_TX_MIRROR |
                         G_TX_CLAMP, 6, 6, G_TX_NOLOD, G_TX_NOLOD),
    gsDPSetCombineLERP(TEXEL0, PRIMITIVE, PRIM_LOD_FRAC, TEXEL0, TEXEL0, 0, PRIMITIVE, 0, PRIMITIVE, ENVIRONMENT,
                       COMBINED, ENVIRONMENT, 0, 0, 0, COMBINED),
    gsDPSetOtherMode(G_AD_NOTPATTERN | G_CD_DISABLE | G_CK_NONE | G_TC_FILT | G_TF_BILERP | G_TT_NONE | G_TL_TILE |
                     G_TD_CLAMP | G_TP_PERSP | G_CYC_2CYCLE | G_PM_NPRIMITIVE, G_AC_THRESHOLD | G_ZS_PIXEL | G_RM_PASS |
                     G_RM_ZB_CLD_SURF2),
    gsSPClearGeometryMode(G_CULL_BACK | G_FOG | G_LIGHTING | G_TEXTURE_GEN | G_TEXTURE_GEN_LINEAR),
    gsSPVertex(gameplay_keepVtx_0100F0, 4, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsSPEndDisplayList(),
};

Gfx gEffFlash2DL[] = {
    gsDPPipeSync(),
    gsDPSetTextureLUT(G_TT_NONE),
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsDPLoadTextureBlock(gFlashTex, G_IM_FMT_I, G_IM_SIZ_8b, 64, 64, 0, G_TX_MIRROR | G_TX_CLAMP, G_TX_MIRROR |
                         G_TX_CLAMP, 6, 6, G_TX_NOLOD, G_TX_NOLOD),
    gsDPSetCombineLERP(TEXEL0, PRIMITIVE, PRIM_LOD_FRAC, TEXEL0, TEXEL0, 0, PRIMITIVE, 0, PRIMITIVE, ENVIRONMENT,
                       COMBINED, ENVIRONMENT, 0, 0, 0, COMBINED),
    gsDPSetOtherMode(G_AD_NOTPATTERN | G_CD_DISABLE | G_CK_NONE | G_TC_FILT | G_TF_BILERP | G_TT_NONE | G_TL_TILE |
                     G_TD_CLAMP | G_TP_PERSP | G_CYC_2CYCLE | G_PM_NPRIMITIVE, G_AC_THRESHOLD | G_ZS_PIXEL | G_RM_PASS |
                     G_RM_CLD_SURF2),
    gsSPClearGeometryMode(G_CULL_BACK | G_FOG | G_LIGHTING | G_TEXTURE_GEN | G_TEXTURE_GEN_LINEAR),
    gsSPVertex(gameplay_keepVtx_0100F0, 4, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsSPEndDisplayList(),
};

u64 gFlashTex[] = {
#include "assets/objects/gameplay_keep/flash.i8.inc.c"
};

u8 gameplay_keep_possiblePadding_011228[] = {
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 
};

u64 gTorchFlameTex[] = {
#include "assets/objects/gameplay_keep/torch_flame.i8.inc.c"
};

u64 gEffUnknown1Tex[] = {
#include "assets/objects/gameplay_keep/eff_unknown_1.i8.inc.c"
};

Vtx gameplay_keepVtx_012230[] = {
#include "assets/objects/gameplay_keep/gameplay_keepVtx_012230.vtx.inc"
};

Gfx gSpinAttack1DL[] = {
    gsDPPipeSync(),
    gsDPSetTextureLUT(G_TT_NONE),
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsDPLoadTextureBlock(gTorchFlameTex, G_IM_FMT_I, G_IM_SIZ_8b, 64, 32, 0, G_TX_NOMIRROR | G_TX_WRAP, G_TX_NOMIRROR |
                         G_TX_WRAP, 6, 5, G_TX_NOLOD, G_TX_NOLOD),
    gsDPLoadMultiBlock(gEffUnknown1Tex, 0x0100, 1, G_IM_FMT_I, G_IM_SIZ_8b, 64, 32, 0, G_TX_NOMIRROR | G_TX_WRAP,
                       G_TX_NOMIRROR | G_TX_WRAP, 6, 5, 13, 14),
    gsDPSetCombineLERP(TEXEL1, PRIMITIVE, ENV_ALPHA, TEXEL0, TEXEL1, 1, ENVIRONMENT, TEXEL0, PRIMITIVE, ENVIRONMENT,
                       COMBINED, ENVIRONMENT, COMBINED, 0, PRIMITIVE, 0),
    gsDPSetRenderMode(G_RM_PASS, G_RM_ZB_CLD_SURF2),
    gsSPClearGeometryMode(G_CULL_BACK | G_FOG | G_LIGHTING | G_TEXTURE_GEN | G_TEXTURE_GEN_LINEAR),
    gsDPSetEnvColor(0, 0, 255, 128),
    gsSPDisplayList(0x08000000),
    gsSPVertex(gameplay_keepVtx_012230, 26, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsSP2Triangles(1, 4, 5, 0, 1, 5, 2, 0),
    gsSP2Triangles(4, 6, 7, 0, 4, 7, 5, 0),
    gsSP2Triangles(6, 8, 9, 0, 6, 9, 7, 0),
    gsSP2Triangles(8, 10, 11, 0, 8, 11, 9, 0),
    gsSP2Triangles(10, 12, 13, 0, 10, 13, 11, 0),
    gsSP2Triangles(12, 14, 15, 0, 12, 15, 13, 0),
    gsSP2Triangles(14, 16, 17, 0, 14, 17, 15, 0),
    gsSP2Triangles(16, 18, 19, 0, 16, 19, 17, 0),
    gsSP2Triangles(20, 21, 22, 0, 20, 22, 23, 0),
    gsSP2Triangles(21, 24, 25, 0, 21, 25, 22, 0),
    gsSP2Triangles(24, 3, 25, 0, 24, 0, 3, 0),
    gsSPEndDisplayList(),
};

Gfx gSpinAttack2DL[] = {
    gsDPPipeSync(),
    gsDPSetTextureLUT(G_TT_NONE),
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsDPLoadTextureBlock(gTorchFlameTex, G_IM_FMT_I, G_IM_SIZ_8b, 64, 32, 0, G_TX_NOMIRROR | G_TX_WRAP, G_TX_NOMIRROR |
                         G_TX_WRAP, 6, 5, G_TX_NOLOD, G_TX_NOLOD),
    gsDPLoadMultiBlock(gEffUnknown1Tex, 0x0100, 1, G_IM_FMT_I, G_IM_SIZ_8b, 64, 32, 0, G_TX_NOMIRROR | G_TX_WRAP,
                       G_TX_NOMIRROR | G_TX_WRAP, 6, 5, 13, 14),
    gsDPSetCombineLERP(TEXEL1, PRIMITIVE, ENV_ALPHA, TEXEL0, TEXEL1, 1, ENVIRONMENT, TEXEL0, PRIMITIVE, ENVIRONMENT,
                       COMBINED, ENVIRONMENT, COMBINED, 0, PRIMITIVE, 0),
    gsDPSetRenderMode(G_RM_PASS, G_RM_ZB_CLD_SURF2),
    gsSPClearGeometryMode(G_CULL_BACK | G_FOG | G_LIGHTING | G_TEXTURE_GEN | G_TEXTURE_GEN_LINEAR),
    gsDPSetEnvColor(0, 100, 255, 128),
    gsSPDisplayList(0x08000000),
    gsSPVertex(&gameplay_keepVtx_012230[26], 26, 0),
    gsSP2Triangles(0, 1, 2, 0, 3, 2, 4, 0),
    gsSP2Triangles(3, 0, 2, 0, 5, 4, 6, 0),
    gsSP2Triangles(5, 3, 4, 0, 7, 8, 9, 0),
    gsSP2Triangles(7, 10, 8, 0, 11, 9, 12, 0),
    gsSP2Triangles(11, 7, 9, 0, 13, 12, 14, 0),
    gsSP2Triangles(13, 11, 12, 0, 15, 14, 16, 0),
    gsSP2Triangles(15, 13, 14, 0, 17, 16, 18, 0),
    gsSP2Triangles(17, 15, 16, 0, 19, 18, 20, 0),
    gsSP2Triangles(19, 17, 18, 0, 21, 20, 22, 0),
    gsSP2Triangles(21, 19, 20, 0, 23, 22, 24, 0),
    gsSP2Triangles(23, 21, 22, 0, 25, 24, 1, 0),
    gsSP2Triangles(25, 23, 24, 0, 0, 25, 1, 0),
    gsSPEndDisplayList(),
};

Vtx gameplay_keepVtx_0127B0[] = {
#include "assets/objects/gameplay_keep/gameplay_keepVtx_0127B0.vtx.inc"
};

Gfx gSpinAttack3DL[] = {
    gsDPPipeSync(),
    gsDPSetTextureLUT(G_TT_NONE),
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsDPLoadTextureBlock(gTorchFlameTex, G_IM_FMT_I, G_IM_SIZ_8b, 64, 32, 0, G_TX_NOMIRROR | G_TX_WRAP, G_TX_NOMIRROR |
                         G_TX_WRAP, 6, 5, G_TX_NOLOD, G_TX_NOLOD),
    gsDPLoadMultiBlock(gEffUnknown1Tex, 0x0100, 1, G_IM_FMT_I, G_IM_SIZ_8b, 64, 32, 0, G_TX_NOMIRROR | G_TX_WRAP,
                       G_TX_NOMIRROR | G_TX_WRAP, 6, 5, 13, 14),
    gsDPSetCombineLERP(TEXEL1, PRIMITIVE, ENV_ALPHA, TEXEL0, TEXEL1, 1, ENVIRONMENT, TEXEL0, PRIMITIVE, ENVIRONMENT,
                       COMBINED, ENVIRONMENT, COMBINED, 0, PRIMITIVE, 0),
    gsDPSetRenderMode(G_RM_PASS, G_RM_ZB_CLD_SURF2),
    gsSPClearGeometryMode(G_CULL_BACK | G_FOG | G_LIGHTING | G_TEXTURE_GEN | G_TEXTURE_GEN_LINEAR),
    gsDPSetEnvColor(255, 0, 0, 128),
    gsSPDisplayList(0x08000000),
    gsSPVertex(gameplay_keepVtx_0127B0, 26, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsSP2Triangles(1, 4, 5, 0, 1, 5, 2, 0),
    gsSP2Triangles(4, 6, 7, 0, 4, 7, 5, 0),
    gsSP2Triangles(6, 8, 9, 0, 6, 9, 7, 0),
    gsSP2Triangles(8, 10, 11, 0, 8, 11, 9, 0),
    gsSP2Triangles(10, 12, 13, 0, 10, 13, 11, 0),
    gsSP2Triangles(12, 14, 15, 0, 12, 15, 13, 0),
    gsSP2Triangles(14, 16, 17, 0, 14, 17, 15, 0),
    gsSP2Triangles(16, 18, 19, 0, 16, 19, 17, 0),
    gsSP2Triangles(20, 21, 22, 0, 20, 22, 23, 0),
    gsSP2Triangles(21, 24, 25, 0, 21, 25, 22, 0),
    gsSP2Triangles(24, 3, 25, 0, 24, 0, 3, 0),
    gsSPEndDisplayList(),
};

Gfx gSpinAttack4DL[] = {
    gsDPPipeSync(),
    gsDPSetTextureLUT(G_TT_NONE),
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsDPLoadTextureBlock(gTorchFlameTex, G_IM_FMT_I, G_IM_SIZ_8b, 64, 32, 0, G_TX_NOMIRROR | G_TX_WRAP, G_TX_NOMIRROR |
                         G_TX_WRAP, 6, 5, G_TX_NOLOD, G_TX_NOLOD),
    gsDPLoadMultiBlock(gEffUnknown1Tex, 0x0100, 1, G_IM_FMT_I, G_IM_SIZ_8b, 64, 32, 0, G_TX_NOMIRROR | G_TX_WRAP,
                       G_TX_NOMIRROR | G_TX_WRAP, 6, 5, 13, 14),
    gsDPSetCombineLERP(TEXEL1, PRIMITIVE, ENV_ALPHA, TEXEL0, TEXEL1, 1, ENVIRONMENT, TEXEL0, PRIMITIVE, ENVIRONMENT,
                       COMBINED, ENVIRONMENT, COMBINED, 0, PRIMITIVE, 0),
    gsDPSetRenderMode(G_RM_PASS, G_RM_ZB_CLD_SURF2),
    gsSPClearGeometryMode(G_CULL_BACK | G_FOG | G_LIGHTING | G_TEXTURE_GEN | G_TEXTURE_GEN_LINEAR),
    gsDPSetEnvColor(255, 100, 0, 128),
    gsSPDisplayList(0x08000000),
    gsSPVertex(&gameplay_keepVtx_0127B0[26], 26, 0),
    gsSP2Triangles(0, 1, 2, 0, 3, 2, 4, 0),
    gsSP2Triangles(3, 0, 2, 0, 5, 4, 6, 0),
    gsSP2Triangles(5, 3, 4, 0, 7, 8, 9, 0),
    gsSP2Triangles(7, 10, 8, 0, 11, 9, 12, 0),
    gsSP2Triangles(11, 7, 9, 0, 13, 12, 14, 0),
    gsSP2Triangles(13, 11, 12, 0, 15, 14, 16, 0),
    gsSP2Triangles(15, 13, 14, 0, 17, 16, 18, 0),
    gsSP2Triangles(17, 15, 16, 0, 19, 18, 20, 0),
    gsSP2Triangles(19, 17, 18, 0, 21, 20, 22, 0),
    gsSP2Triangles(21, 19, 20, 0, 23, 22, 24, 0),
    gsSP2Triangles(23, 21, 22, 0, 25, 24, 1, 0),
    gsSP2Triangles(25, 23, 24, 0, 0, 25, 1, 0),
    gsSPEndDisplayList(),
};

u64 gFlameWall1Tex[] = {
#include "assets/objects/gameplay_keep/flame_wall_1.i8.inc.c"
};

u64 gFlameWall2Tex[] = {
#include "assets/objects/gameplay_keep/flame_wall_2.i8.inc.c"
};

Vtx gameplay_keepVtx_013530[] = {
#include "assets/objects/gameplay_keep/gameplay_keepVtx_013530.vtx.inc"
};

Gfx gSpinAttackChargingDL[] = {
    gsDPPipeSync(),
    gsDPSetTextureLUT(G_TT_NONE),
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsDPLoadTextureBlock(gFlameWall1Tex, G_IM_FMT_I, G_IM_SIZ_8b, 32, 32, 0, G_TX_NOMIRROR | G_TX_WRAP, G_TX_MIRROR |
                         G_TX_WRAP, 5, 5, G_TX_NOLOD, G_TX_NOLOD),
    gsDPLoadMultiBlock(gFlameWall2Tex, 0x0100, 1, G_IM_FMT_I, G_IM_SIZ_8b, 32, 32, 0, G_TX_NOMIRROR | G_TX_WRAP,
                       G_TX_MIRROR | G_TX_WRAP, 5, 5, 14, 14),
    gsDPSetCombineLERP(TEXEL1, PRIMITIVE, ENV_ALPHA, TEXEL0, TEXEL1, 1, ENVIRONMENT, TEXEL0, PRIMITIVE, ENVIRONMENT,
                       COMBINED, ENVIRONMENT, COMBINED, 0, PRIMITIVE, 0),
    gsDPSetRenderMode(G_RM_PASS, G_RM_ZB_CLD_SURF2),
    gsSPClearGeometryMode(G_CULL_BACK | G_FOG | G_LIGHTING | G_TEXTURE_GEN | G_TEXTURE_GEN_LINEAR),
    gsSPDisplayList(0x09000000),
    gsSPVertex(gameplay_keepVtx_013530, 14, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsSP2Triangles(4, 5, 1, 0, 4, 1, 0, 0),
    gsSP2Triangles(6, 7, 5, 0, 6, 5, 4, 0),
    gsSP2Triangles(8, 9, 10, 0, 11, 12, 9, 0),
    gsSP2Triangles(11, 9, 8, 0, 3, 2, 12, 0),
    gsSP2Triangles(3, 12, 11, 0, 8, 10, 13, 0),
    gsSPEndDisplayList(),
};

u8 gameplay_keep_possiblePadding_0136F8[] = {
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 
};

u64 gEffUnknown2Tex[] = {
#include "assets/objects/gameplay_keep/eff_unknown_2.i8.inc.c"
};

u64 gEffUnknown3Tex[] = {
#include "assets/objects/gameplay_keep/eff_unknown_3.i8.inc.c"
};

Vtx gameplay_keepVtx_014700[] = {
#include "assets/objects/gameplay_keep/gameplay_keepVtx_014700.vtx.inc"
};

Gfx gUnusedBeamBladeDL[] = {
    gsDPPipeSync(),
    gsDPSetTextureLUT(G_TT_NONE),
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsDPLoadTextureBlock(gEffUnknown2Tex, G_IM_FMT_I, G_IM_SIZ_8b, 32, 64, 0, G_TX_NOMIRROR | G_TX_WRAP, G_TX_MIRROR |
                         G_TX_WRAP, 5, 6, 15, G_TX_NOLOD),
    gsDPLoadMultiBlock(gEffUnknown3Tex, 0x0100, 1, G_IM_FMT_I, G_IM_SIZ_8b, 32, 64, 0, G_TX_NOMIRROR | G_TX_WRAP,
                       G_TX_NOMIRROR | G_TX_WRAP, 5, 6, G_TX_NOLOD, 1),
    gsDPSetCombineLERP(TEXEL1, PRIMITIVE, ENV_ALPHA, TEXEL0, TEXEL1, 1, ENVIRONMENT, TEXEL0, PRIMITIVE, ENVIRONMENT,
                       COMBINED, ENVIRONMENT, COMBINED, 0, PRIMITIVE, 0),
    gsDPSetRenderMode(G_RM_PASS, G_RM_AA_ZB_XLU_SURF2),
    gsSPClearGeometryMode(G_CULL_BACK | G_FOG | G_LIGHTING | G_TEXTURE_GEN | G_TEXTURE_GEN_LINEAR),
    gsSPDisplayList(0x08000000),
    gsSPVertex(gameplay_keepVtx_014700, 32, 0),
    gsSP2Triangles(0, 1, 2, 0, 1, 3, 2, 0),
    gsSP2Triangles(3, 4, 2, 0, 5, 6, 7, 0),
    gsSP2Triangles(5, 8, 6, 0, 9, 10, 7, 0),
    gsSP2Triangles(8, 11, 12, 0, 8, 13, 11, 0),
    gsSP2Triangles(11, 14, 12, 0, 15, 16, 17, 0),
    gsSP2Triangles(18, 19, 17, 0, 15, 20, 21, 0),
    gsSP2Triangles(20, 22, 21, 0, 22, 23, 21, 0),
    gsSP2Triangles(20, 24, 25, 0, 20, 26, 24, 0),
    gsSP2Triangles(27, 28, 25, 0, 26, 29, 30, 0),
    gsSP1Triangle(26, 31, 29, 0),
    gsSPVertex(&gameplay_keepVtx_014700[32], 12, 0),
    gsSP2Triangles(0, 1, 2, 0, 3, 4, 5, 0),
    gsSP2Triangles(4, 6, 5, 0, 7, 8, 5, 0),
    gsSP1Triangle(9, 10, 11, 0),
    gsSPEndDisplayList(),
};

u8 gameplay_keep_possiblePadding_014AE8[] = {
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 
};

s16 sFairyAnimFrameData[] = {
    0x0000, 0xE7EE, 0x9812, 0x4AAB, 0x50E4, 0x58E4, 0x5AF7, 0x58E4, 0x4AAB, 0x50E4, 0x58E4, 0x59C7, 0x58E4, 0x3555, 
    0x2F1C, 0x271C, 0x2509, 0x271C, 0x3555, 0x2F1C, 0x271C, 0x2639, 0x271C, 0x4AAB, 0x50FA, 0x58E4, 0x5AE0, 0x58E4, 
    0x4AAB, 0x50E4, 0x58E4, 0x59C7, 0x58E4, 0x3555, 0x2F06, 0x271C, 0x2520, 0x271C, 0x3555, 0x2F1C, 0x271C, 0x2639, 
    0x271C, 0x0000, 
};

JointIndex sFairyAnimJointIndices[] = {
    { 0x0000, 0x0000, 0x0000 },
    { 0x0000, 0x0000, 0x0000 },
    { 0x0001, 0x0000, 0x0000 },
    { 0x0000, 0x0000, 0x0003 },
    { 0x0000, 0x0000, 0x0000 },
    { 0x0001, 0x0000, 0x0000 },
    { 0x0000, 0x0000, 0x000D },
    { 0x0000, 0x0000, 0x0000 },
    { 0x0000, 0x0000, 0x0000 },
    { 0x0002, 0x0000, 0x0000 },
    { 0x0000, 0x0000, 0x0017 },
    { 0x0000, 0x0000, 0x0000 },
    { 0x0002, 0x0000, 0x0000 },
    { 0x0000, 0x0000, 0x0021 },
    { 0x0000, 0x0000, 0x0000 },
};

AnimationHeader gFairyAnim = { 
    { 10 }, sFairyAnimFrameData,
    sFairyAnimJointIndices, 3
};

u8 gameplay_keep_possiblePadding_014BB4[] = {
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 
};

u64 gFairyWingTex[] = {
#include "assets/objects/gameplay_keep/fairy_wing.i8.inc.c"
};

Vtx gameplay_keepVtx_0153C0[] = {
#include "assets/objects/gameplay_keep/gameplay_keepVtx_0153C0.vtx.inc"
};

Gfx gFairyWing1DL[] = {
    gsDPPipeSync(),
    gsDPSetTextureLUT(G_TT_NONE),
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsDPLoadTextureBlock(gFairyWingTex, G_IM_FMT_I, G_IM_SIZ_8b, 32, 64, 0, G_TX_NOMIRROR | G_TX_CLAMP, G_TX_NOMIRROR |
                         G_TX_CLAMP, 5, 6, G_TX_NOLOD, G_TX_NOLOD),
    gsDPSetCombineLERP(0, 0, 0, PRIMITIVE, TEXEL0, 0, PRIMITIVE, 0, 0, 0, 0, PRIMITIVE, TEXEL0, 0, PRIMITIVE, 0),
    gsDPSetRenderMode(G_RM_ZB_CLD_SURF, G_RM_ZB_CLD_SURF2),
    gsSPClearGeometryMode(G_CULL_BACK | G_FOG | G_LIGHTING | G_TEXTURE_GEN | G_TEXTURE_GEN_LINEAR),
    gsDPSetPrimColor(0, 0, 210, 210, 255, 255),
    gsSPVertex(gameplay_keepVtx_0153C0, 4, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsSPEndDisplayList(),
};

Vtx gameplay_keepVtx_015488[] = {
#include "assets/objects/gameplay_keep/gameplay_keepVtx_015488.vtx.inc"
};

Gfx gFairyWing2DL[] = {
    gsDPPipeSync(),
    gsDPSetTextureLUT(G_TT_NONE),
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsDPLoadTextureBlock(gFairyWingTex, G_IM_FMT_I, G_IM_SIZ_8b, 32, 64, 0, G_TX_NOMIRROR | G_TX_CLAMP, G_TX_NOMIRROR |
                         G_TX_CLAMP, 5, 6, G_TX_NOLOD, G_TX_NOLOD),
    gsDPSetCombineLERP(0, 0, 0, PRIMITIVE, TEXEL0, 0, PRIMITIVE, 0, 0, 0, 0, PRIMITIVE, TEXEL0, 0, PRIMITIVE, 0),
    gsDPSetRenderMode(G_RM_ZB_CLD_SURF, G_RM_ZB_CLD_SURF2),
    gsSPClearGeometryMode(G_CULL_BACK | G_FOG | G_LIGHTING | G_TEXTURE_GEN | G_TEXTURE_GEN_LINEAR),
    gsDPSetPrimColor(0, 0, 210, 210, 255, 255),
    gsSPVertex(gameplay_keepVtx_015488, 4, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsSPEndDisplayList(),
};

Vtx gameplay_keepVtx_015550[] = {
#include "assets/objects/gameplay_keep/gameplay_keepVtx_015550.vtx.inc"
};

Gfx gFairyWing3DL[] = {
    gsDPPipeSync(),
    gsDPSetTextureLUT(G_TT_NONE),
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsDPLoadTextureBlock(gFairyWingTex, G_IM_FMT_I, G_IM_SIZ_8b, 32, 64, 0, G_TX_NOMIRROR | G_TX_CLAMP, G_TX_NOMIRROR |
                         G_TX_CLAMP, 5, 6, G_TX_NOLOD, G_TX_NOLOD),
    gsDPSetCombineLERP(0, 0, 0, PRIMITIVE, TEXEL0, 0, PRIMITIVE, 0, 0, 0, 0, PRIMITIVE, TEXEL0, 0, PRIMITIVE, 0),
    gsDPSetRenderMode(G_RM_ZB_CLD_SURF, G_RM_ZB_CLD_SURF2),
    gsSPClearGeometryMode(G_CULL_BACK | G_FOG | G_LIGHTING | G_TEXTURE_GEN | G_TEXTURE_GEN_LINEAR),
    gsDPSetPrimColor(0, 0, 210, 210, 255, 255),
    gsSPVertex(gameplay_keepVtx_015550, 4, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsSPEndDisplayList(),
};

Vtx gameplay_keepVtx_015618[] = {
#include "assets/objects/gameplay_keep/gameplay_keepVtx_015618.vtx.inc"
};

Gfx gFairyWing4DL[] = {
    gsDPPipeSync(),
    gsDPSetTextureLUT(G_TT_NONE),
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsDPLoadTextureBlock(gFairyWingTex, G_IM_FMT_I, G_IM_SIZ_8b, 32, 64, 0, G_TX_NOMIRROR | G_TX_CLAMP, G_TX_NOMIRROR |
                         G_TX_CLAMP, 5, 6, G_TX_NOLOD, G_TX_NOLOD),
    gsDPSetCombineLERP(0, 0, 0, PRIMITIVE, TEXEL0, 0, PRIMITIVE, 0, 0, 0, 0, PRIMITIVE, TEXEL0, 0, PRIMITIVE, 0),
    gsDPSetRenderMode(G_RM_ZB_CLD_SURF, G_RM_ZB_CLD_SURF2),
    gsSPClearGeometryMode(G_CULL_BACK | G_FOG | G_LIGHTING | G_TEXTURE_GEN | G_TEXTURE_GEN_LINEAR),
    gsDPSetPrimColor(0, 0, 210, 210, 255, 255),
    gsSPVertex(gameplay_keepVtx_015618, 4, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsSPEndDisplayList(),
};

Vtx gameplay_keepVtx_0156E0[] = {
#include "assets/objects/gameplay_keep/gameplay_keepVtx_0156E0.vtx.inc"
};

Gfx gGlowCircleTextureLoadDL[] = {
    gsDPLoadTextureBlock(gCircleGlowLTex, G_IM_FMT_I, G_IM_SIZ_8b, 32, 64, 0, G_TX_MIRROR | G_TX_WRAP, G_TX_MIRROR |
                         G_TX_WRAP, 5, 6, G_TX_NOLOD, G_TX_NOLOD),
    gsSPEndDisplayList(),
};

Gfx gGlowCircleDL[] = {
    gsSPMatrix(0x01000000, G_MTX_NOPUSH | G_MTX_MUL | G_MTX_MODELVIEW),
    gsSPVertex(gameplay_keepVtx_0156E0, 4, 0),
    gsSP2Triangles(2, 1, 0, 0, 3, 2, 0, 0),
    gsSPEndDisplayList(),
};

Gfx gGlowCircleSmallDL[] = {
    gsSPMatrix(0x01000000, G_MTX_PUSH | G_MTX_MUL | G_MTX_MODELVIEW),
    gsSPDisplayList(0x08000000),
    gsDPPipeSync(),
    gsDPSetCycleType(G_CYC_2CYCLE),
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsDPSetCombineLERP(TEXEL1, TEXEL0, ENV_ALPHA, TEXEL0, TEXEL1, TEXEL0, ENVIRONMENT, TEXEL0, PRIMITIVE, ENVIRONMENT,
                       COMBINED, ENVIRONMENT, COMBINED, 0, PRIMITIVE, 0),
    gsDPLoadTextureBlock(gCircleGlowLTex, G_IM_FMT_I, G_IM_SIZ_8b, 32, 64, 0, G_TX_NOMIRROR | G_TX_WRAP, G_TX_NOMIRROR |
                         G_TX_WRAP, G_TX_NOMASK, G_TX_NOMASK, G_TX_NOLOD, G_TX_NOLOD),
    gsDPLoadMultiBlock(gCircleGlowSLTex, 0x0100, 1, G_IM_FMT_I, G_IM_SIZ_8b, 32, 64, 0, G_TX_NOMIRROR | G_TX_WRAP,
                       G_TX_NOMIRROR | G_TX_WRAP, G_TX_NOMASK, G_TX_NOMASK, G_TX_NOLOD, G_TX_NOLOD),
    gsSPSetGeometryMode(G_CULL_BACK),
    gsSPVertex(gameplay_keepVtx_0158E8, 4, 0),
    gsSP2Triangles(2, 1, 0, 0, 3, 2, 0, 0),
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsDPPipeSync(),
    gsDPLoadTextureBlock(gCircleGlowRTex, G_IM_FMT_I, G_IM_SIZ_8b, 32, 64, 0, G_TX_NOMIRROR | G_TX_WRAP, G_TX_NOMIRROR |
                         G_TX_WRAP, G_TX_NOMASK, G_TX_NOMASK, G_TX_NOLOD, G_TX_NOLOD),
    gsDPLoadMultiBlock(gCircleGlowSRTex, 0x0100, 1, G_IM_FMT_I, G_IM_SIZ_8b, 32, 64, 0, G_TX_NOMIRROR | G_TX_WRAP,
                       G_TX_NOMIRROR | G_TX_WRAP, G_TX_NOMASK, G_TX_NOMASK, G_TX_NOLOD, G_TX_NOLOD),
    gsSPVertex(&gameplay_keepVtx_0158E8[4], 4, 0),
    gsSP2Triangles(2, 1, 0, 0, 3, 2, 0, 0),
    gsSPPopMatrix(G_MTX_MODELVIEW),
    gsDPPipeSync(),
    gsDPSetCycleType(G_CYC_1CYCLE),
    gsSPEndDisplayList(),
};

Vtx gameplay_keepVtx_0158E8[] = {
#include "assets/objects/gameplay_keep/gameplay_keepVtx_0158E8.vtx.inc"
};

u64 gUnusedFairyWingTex[] = {
#include "assets/objects/gameplay_keep/unused_fairy_wing.rgba16.inc.c"
};

StandardLimb gFairySkelLimbsLimb_016968 = { 
    { 0, 0, 0 }, 0x01, LIMB_DONE,
    NULL
};

StandardLimb gFairySkelLimbsLimb_016974 = { 
    { 0, 0, 0 }, 0x02, 0x04,
    NULL
};

StandardLimb gFairySkelLimbsLimb_016980 = { 
    { 0, 0, 0 }, 0x03, LIMB_DONE,
    NULL
};

StandardLimb gFairySkelLimbsLimb_01698C = { 
    { 0, 0, 0 }, LIMB_DONE, LIMB_DONE,
    gFairyWing1DL
};

StandardLimb gFairySkelLimbsLimb_016998 = { 
    { 0, 0, 0 }, 0x05, 0x07,
    NULL
};

StandardLimb gFairySkelLimbsLimb_0169A4 = { 
    { 0, 0, 0 }, 0x06, LIMB_DONE,
    NULL
};

StandardLimb gFairySkelLimbsLimb_0169B0 = { 
    { 0, 0, 0 }, LIMB_DONE, LIMB_DONE,
    gFairyWing2DL
};

StandardLimb gFairySkelLimbsLimb_0169BC = { 
    { 0, 0, 0 }, LIMB_DONE, 0x08,
    gGlowCircleSmallDL
};

StandardLimb gFairySkelLimbsLimb_0169C8 = { 
    { 0, 0, 0 }, 0x09, 0x0B,
    NULL
};

StandardLimb gFairySkelLimbsLimb_0169D4 = { 
    { 0, 0, 0 }, 0x0A, LIMB_DONE,
    NULL
};

StandardLimb gFairySkelLimbsLimb_0169E0 = { 
    { 0, 0, 0 }, LIMB_DONE, LIMB_DONE,
    gFairyWing3DL
};

StandardLimb gFairySkelLimbsLimb_0169EC = { 
    { 0, 0, 0 }, 0x0C, LIMB_DONE,
    NULL
};

StandardLimb gFairySkelLimbsLimb_0169F8 = { 
    { 0, 0, 0 }, 0x0D, LIMB_DONE,
    NULL
};

StandardLimb gFairySkelLimbsLimb_016A04 = { 
    { 0, 0, 0 }, LIMB_DONE, LIMB_DONE,
    gFairyWing4DL
};

void* gFairySkelLimbs[] = {
    &gFairySkelLimbsLimb_016968,
    &gFairySkelLimbsLimb_016974,
    &gFairySkelLimbsLimb_016980,
    &gFairySkelLimbsLimb_01698C,
    &gFairySkelLimbsLimb_016998,
    &gFairySkelLimbsLimb_0169A4,
    &gFairySkelLimbsLimb_0169B0,
    &gFairySkelLimbsLimb_0169BC,
    &gFairySkelLimbsLimb_0169C8,
    &gFairySkelLimbsLimb_0169D4,
    &gFairySkelLimbsLimb_0169E0,
    &gFairySkelLimbsLimb_0169EC,
    &gFairySkelLimbsLimb_0169F8,
    &gFairySkelLimbsLimb_016A04,
};

SkeletonHeader gFairySkel = { 
    gFairySkelLimbs, ARRAY_COUNT(gFairySkelLimbs)
};

u64 gUnknownCircle3Tex[] = {
#include "assets/objects/gameplay_keep/unknown_circle_3.i4.inc.c"
};

u64 gUnknownCircle4Tex[] = {
#include "assets/objects/gameplay_keep/unknown_circle_4.i8.inc.c"
};

u64 gHilite4Tex[] = {
#include "assets/objects/gameplay_keep/hilite_4.rgba16.inc.c"
};

u64 gEffUnknown4Tex[] = {
#include "assets/objects/gameplay_keep/eff_unknown_4.i8.inc.c"
};

u64 gEffUnknown5Tex[] = {
#include "assets/objects/gameplay_keep/eff_unknown_5.i8.inc.c"
};

Vtx gameplay_keepVtx_0183D0[] = {
#include "assets/objects/gameplay_keep/gameplay_keepVtx_0183D0.vtx.inc"
};

Gfx gEffFireCircleDL[] = {
    gsDPPipeSync(),
    gsDPSetTextureLUT(G_TT_NONE),
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsDPLoadTextureBlock(gEffUnknown4Tex, G_IM_FMT_I, G_IM_SIZ_8b, 32, 64, 0, G_TX_NOMIRROR | G_TX_WRAP, G_TX_MIRROR |
                         G_TX_CLAMP, 5, 6, G_TX_NOLOD, G_TX_NOLOD),
    gsDPLoadMultiBlock(gEffUnknown5Tex, 0x0100, 1, G_IM_FMT_I, G_IM_SIZ_8b, 32, 64, 0, G_TX_NOMIRROR | G_TX_WRAP,
                       G_TX_NOMIRROR | G_TX_WRAP, 5, 6, 15, G_TX_NOLOD),
    gsDPSetCombineLERP(TEXEL1, PRIMITIVE, PRIM_LOD_FRAC, TEXEL0, TEXEL1, 1, PRIM_LOD_FRAC, TEXEL0, PRIMITIVE,
                       ENVIRONMENT, COMBINED, ENVIRONMENT, COMBINED, 0, PRIMITIVE, 0),
    gsDPSetRenderMode(G_RM_PASS, G_RM_AA_ZB_XLU_SURF2),
    gsSPClearGeometryMode(G_CULL_BACK | G_FOG | G_TEXTURE_GEN | G_TEXTURE_GEN_LINEAR),
    gsSPSetGeometryMode(G_LIGHTING),
    gsSPDisplayList(0x08000000),
    gsSPVertex(gameplay_keepVtx_0183D0, 14, 0),
    gsSP2Triangles(0, 1, 2, 0, 3, 4, 5, 0),
    gsSP2Triangles(6, 7, 8, 0, 6, 8, 3, 0),
    gsSP2Triangles(3, 8, 4, 0, 0, 2, 9, 0),
    gsSP2Triangles(10, 11, 1, 0, 10, 1, 0, 0),
    gsSP2Triangles(12, 13, 11, 0, 12, 11, 10, 0),
    gsSP2Triangles(5, 4, 13, 0, 5, 13, 12, 0),
    gsSPEndDisplayList(),
};

s16 sFishOutOfWaterAnimFrameData[] = {
    0x0000, 0x4000, 0x8000, 0x0000, 0x03E9, 0x071C, 0x031C, 0xFCE4, 0xF8E4, 0xFC17, 0x0000, 0x0FA5, 0x1C72, 0x0C6E, 
    0xF392, 0xE38E, 0xF05B, 0x0000, 0x0BBC, 0x1555, 0x0953, 0xF6AD, 0xEAAB, 0xF444, 
};

JointIndex sFishOutOfWaterAnimJointIndices[] = {
    { 0x0000, 0x0000, 0x0000 },
    { 0x0000, 0x0001, 0x0000 },
    { 0x0000, 0x0003, 0x0000 },
    { 0x0000, 0x0000, 0x0000 },
    { 0x0000, 0x0000, 0x0000 },
    { 0x0000, 0x000A, 0x0002 },
    { 0x0000, 0x0011, 0x0000 },
};

AnimationHeader gFishOutOfWaterAnim = { 
    { 7 }, sFishOutOfWaterAnimFrameData,
    sFishOutOfWaterAnimJointIndices, 3
};

Vtx gameplay_keepVtx_018610[] = {
#include "assets/objects/gameplay_keep/gameplay_keepVtx_018610.vtx.inc"
};

Gfx gFishSkelLimbsLimb_018FBCDL_0188B0[] = {
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsSPClearGeometryMode(G_TEXTURE_GEN | G_TEXTURE_GEN_LINEAR),
    gsDPPipeSync(),
    gsDPSetRenderMode(G_RM_FOG_SHADE_A, G_RM_AA_ZB_TEX_EDGE2),
    gsDPSetCombineLERP(TEXEL0, 0, SHADE, 0, 0, 0, 0, TEXEL0, PRIMITIVE, 0, COMBINED, 0, 0, 0, 0, COMBINED),
    gsDPSetTextureLUT(G_TT_NONE),
    gsDPLoadTextureBlock(gFishTailTex, G_IM_FMT_RGBA, G_IM_SIZ_16b, 16, 16, 0, G_TX_NOMIRROR | G_TX_CLAMP, G_TX_NOMIRROR
                         | G_TX_CLAMP, 4, 4, G_TX_NOLOD, G_TX_NOLOD),
    gsDPSetTileSize(G_TX_RENDERTILE, 0, 0, 0x003C, 0x003C),
    gsDPSetPrimColor(0, 0x80, 255, 255, 255, 255),
    gsSPSetGeometryMode(G_LIGHTING),
    gsSPClearGeometryMode(G_CULL_BACK),
    gsSPVertex(gameplay_keepVtx_018610, 4, 0),
    gsSP2Triangles(0, 1, 2, 0, 2, 3, 0, 0),
    gsSPEndDisplayList(),
};

Gfx gFishSkelLimbsLimb_018FB0DL_018950[] = {
    gsSPMatrix(0x0D000000, G_MTX_NOPUSH | G_MTX_LOAD | G_MTX_MODELVIEW),
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsSPSetGeometryMode(G_LIGHTING),
    gsSPVertex(&gameplay_keepVtx_018610[4], 4, 0),
    gsSPMatrix(0x0D000040, G_MTX_NOPUSH | G_MTX_LOAD | G_MTX_MODELVIEW),
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsSPClearGeometryMode(G_TEXTURE_GEN | G_TEXTURE_GEN_LINEAR),
    gsDPPipeSync(),
    gsDPSetRenderMode(G_RM_FOG_SHADE_A, G_RM_AA_ZB_OPA_SURF2),
    gsDPSetCombineLERP(TEXEL0, 0, SHADE, 0, 0, 0, 0, TEXEL0, PRIMITIVE, 0, COMBINED, 0, 0, 0, 0, COMBINED),
    gsDPSetTextureLUT(G_TT_NONE),
    gsDPLoadTextureBlock(gFishBodyTex, G_IM_FMT_RGBA, G_IM_SIZ_16b, 32, 8, 0, G_TX_NOMIRROR | G_TX_CLAMP, G_TX_NOMIRROR
                         | G_TX_CLAMP, 5, 3, G_TX_NOLOD, G_TX_NOLOD),
    gsDPSetTileSize(G_TX_RENDERTILE, 0, 0, 0x007C, 0x001C),
    gsDPSetPrimColor(0, 0x80, 255, 255, 255, 255),
    gsSPSetGeometryMode(G_CULL_BACK),
    gsSPVertex(&gameplay_keepVtx_018610[8], 12, 4),
    gsSPModifyVertex(0, G_MWO_POINT_ST, 0x01DC00EC),
    gsSPModifyVertex(3, G_MWO_POINT_ST, 0x01DCFFED),
    gsSP1Triangle(0, 3, 4, 0),
    gsSPModifyVertex(2, G_MWO_POINT_ST, 0x01DC00EC),
    gsSP2Triangles(2, 5, 6, 0, 7, 8, 0, 0),
    gsSP1Triangle(9, 3, 2, 0),
    gsSPModifyVertex(0, G_MWO_POINT_ST, 0x01DC0100),
    gsSP1Triangle(0, 10, 11, 0),
    gsSPModifyVertex(2, G_MWO_POINT_ST, 0x01DC0100),
    gsSPModifyVertex(1, G_MWO_POINT_ST, 0x01DC0000),
    gsSP2Triangles(2, 1, 12, 0, 13, 14, 2, 0),
    gsSP1Triangle(15, 1, 0, 0),
    gsSPEndDisplayList(),
};

Gfx gFishSkelLimbsLimb_018F98DL_018A68[] = {
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsSPClearGeometryMode(G_TEXTURE_GEN | G_TEXTURE_GEN_LINEAR),
    gsDPPipeSync(),
    gsDPSetRenderMode(G_RM_FOG_SHADE_A, G_RM_AA_ZB_TEX_EDGE2),
    gsDPSetCombineLERP(TEXEL0, 0, SHADE, 0, 0, 0, 0, TEXEL0, PRIMITIVE, 0, COMBINED, 0, 0, 0, 0, COMBINED),
    gsDPSetTextureLUT(G_TT_NONE),
    gsDPLoadTextureBlock(gFishTailTex, G_IM_FMT_RGBA, G_IM_SIZ_16b, 16, 16, 0, G_TX_NOMIRROR | G_TX_CLAMP, G_TX_NOMIRROR
                         | G_TX_CLAMP, 4, 4, G_TX_NOLOD, G_TX_NOLOD),
    gsDPSetTileSize(G_TX_RENDERTILE, 0, 0, 0x003C, 0x003C),
    gsDPSetPrimColor(0, 0x80, 255, 255, 255, 255),
    gsSPSetGeometryMode(G_LIGHTING),
    gsSPClearGeometryMode(G_CULL_BACK),
    gsSPVertex(&gameplay_keepVtx_018610[20], 22, 0),
    gsSP2Triangles(0, 1, 2, 0, 3, 4, 5, 0),
    gsDPPipeSync(),
    gsDPSetRenderMode(G_RM_FOG_SHADE_A, G_RM_AA_ZB_OPA_SURF2),
    gsDPSetTextureLUT(G_TT_NONE),
    gsDPLoadTextureBlock(gFishBodyTex, G_IM_FMT_RGBA, G_IM_SIZ_16b, 32, 8, 0, G_TX_NOMIRROR | G_TX_CLAMP, G_TX_NOMIRROR
                         | G_TX_CLAMP, 5, 3, G_TX_NOLOD, G_TX_NOLOD),
    gsDPSetTileSize(G_TX_RENDERTILE, 0, 0, 0x007C, 0x001C),
    gsSP2Triangles(6, 7, 8, 0, 9, 10, 11, 0),
    gsSP2Triangles(8, 12, 6, 0, 11, 13, 9, 0),
    gsSP2Triangles(14, 15, 16, 0, 16, 17, 14, 0),
    gsSP2Triangles(18, 19, 20, 0, 20, 21, 18, 0),
    gsSPEndDisplayList(),
};

u64 gFishTailTex[] = {
#include "assets/objects/gameplay_keep/fish_tail.rgba16.inc.c"
};

u64 gFishBodyTex[] = {
#include "assets/objects/gameplay_keep/fish_body.rgba16.inc.c"
};

StandardLimb gFishSkelLimbsLimb_018F80 = { 
    { 0, 0, 0 }, 0x01, LIMB_DONE,
    NULL
};

StandardLimb gFishSkelLimbsLimb_018F8C = { 
    { 0, 0, 0 }, 0x02, LIMB_DONE,
    NULL
};

StandardLimb gFishSkelLimbsLimb_018F98 = { 
    { 0, 0, 0 }, LIMB_DONE, 0x03,
    gFishSkelLimbsLimb_018F98DL_018A68
};

StandardLimb gFishSkelLimbsLimb_018FA4 = { 
    { 0, 0, 0 }, 0x04, 0x05,
    NULL
};

StandardLimb gFishSkelLimbsLimb_018FB0 = { 
    { 0, 0, 0 }, LIMB_DONE, LIMB_DONE,
    gFishSkelLimbsLimb_018FB0DL_018950
};

StandardLimb gFishSkelLimbsLimb_018FBC = { 
    { 700, 0, 0 }, LIMB_DONE, LIMB_DONE,
    gFishSkelLimbsLimb_018FBCDL_0188B0
};

void* gFishSkelLimbs[] = {
    &gFishSkelLimbsLimb_018F80,
    &gFishSkelLimbsLimb_018F8C,
    &gFishSkelLimbsLimb_018F98,
    &gFishSkelLimbsLimb_018FA4,
    &gFishSkelLimbsLimb_018FB0,
    &gFishSkelLimbsLimb_018FBC,
};

FlexSkeletonHeader gFishSkel = { 
    { gFishSkelLimbs, ARRAY_COUNT(gFishSkelLimbs) }, 3
};

u8 gameplay_keep_possiblePadding_018FEC[] = {
    0x00, 0x00, 0x00, 0x00, 
};

s16 sFishInWaterAnimFrameData[] = {
    0x0000, 0x4000, 0x8000, 0xFFC0, 0xFF2D, 0xFE8D, 0xFDEE, 0xFD5B, 0xFCE2, 0xFC90, 0xFC72, 0xFC90, 0xFCE2, 0xFD5B, 
    0xFDEE, 0xFE8D, 0xFF2D, 0xFFC0, 0x0040, 0x00D3, 0x0173, 0x0212, 0x02A5, 0x031E, 0x0370, 0x038E, 0x0370, 0x031E, 
    0x02A5, 0x0212, 0x0173, 0x00D3, 0x0040, 0xFDBC, 0xFEF1, 0x0000, 0x010F, 0x0244, 0x0387, 0x04BD, 0x05CB, 0x0699, 
    0x070D, 0x070D, 0x0699, 0x05CB, 0x04BD, 0x0387, 0x0244, 0x010F, 0x0000, 0xFEF1, 0xFDBC, 0xFC79, 0xFB43, 0xFA35, 
    0xF967, 0xF8F3, 0xF8F3, 0xF967, 0xFA35, 0xFB43, 0xFC79, 0x0000, 
};

JointIndex sFishInWaterAnimJointIndices[] = {
    { 0x0000, 0x0000, 0x0000 },
    { 0x0000, 0x0001, 0x0000 },
    { 0x0000, 0x0003, 0x0000 },
    { 0x0000, 0x0000, 0x0000 },
    { 0x0000, 0x0000, 0x0000 },
    { 0x0000, 0x0000, 0x0002 },
    { 0x0000, 0x0021, 0x0000 },
};

AnimationHeader gFishInWaterAnim = { 
    { 30 }, sFishInWaterAnimFrameData,
    sFishInWaterAnimJointIndices, 3
};

u8 gameplay_keep_possiblePadding_0190AC[] = {
    0x00, 0x00, 0x00, 0x00, 
};

u64 gEffShockwaveTex[] = {
#include "assets/objects/gameplay_keep/eff_shockwave.i8.inc.c"
};

Gfx gEffShockwaveDL[] = {
    gsDPPipeSync(),
    gsDPSetCombineLERP(PRIMITIVE, ENVIRONMENT, TEXEL0, ENVIRONMENT, PRIMITIVE, 0, TEXEL0, 0, 0, 0, 0, COMBINED, 0, 0, 0,
                       COMBINED),
    gsDPSetRenderMode(G_RM_FOG_SHADE_A, G_RM_ZB_CLD_SURF2),
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsDPLoadTextureBlock(gEffShockwaveTex, G_IM_FMT_I, G_IM_SIZ_8b, 64, 64, 0, G_TX_NOMIRROR | G_TX_WRAP, G_TX_NOMIRROR
                         | G_TX_WRAP, G_TX_NOMASK, G_TX_NOMASK, G_TX_NOLOD, G_TX_NOLOD),
    gsSPVertex(gGameplayKeepVtx_01A120, 4, 0),
    gsSP2Triangles(0, 1, 2, 0, 1, 3, 2, 0),
    gsSPEndDisplayList(),
};

Vtx gGameplayKeepVtx_01A120[] = {
#include "assets/objects/gameplay_keep/gGameplayKeepVtx_01A120.vtx.inc"
};

Gfx gEffBubbleDL[] = {
    gsSPMatrix(0x01000000, G_MTX_NOPUSH | G_MTX_MUL | G_MTX_MODELVIEW),
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsDPPipeSync(),
    gsDPSetCombineLERP(PRIMITIVE, ENVIRONMENT, TEXEL0, ENVIRONMENT, PRIMITIVE, 0, TEXEL0, 0, 0, 0, 0, COMBINED, 0, 0, 0,
                       COMBINED),
    gsDPSetRenderMode(G_RM_PASS, G_RM_ZB_CLD_SURF2),
    gsDPLoadTextureBlock(0x08000000, G_IM_FMT_IA, G_IM_SIZ_8b, 16, 16, 0, G_TX_NOMIRROR | G_TX_CLAMP, G_TX_NOMIRROR |
                         G_TX_CLAMP, 4, 4, G_TX_NOLOD, G_TX_NOLOD),
    gsSPVertex(gameplay_keepVtx_01A1D8, 4, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsSPEndDisplayList(),
};

Vtx gameplay_keepVtx_01A1D8[] = {
#include "assets/objects/gameplay_keep/gameplay_keepVtx_01A1D8.vtx.inc"
};

u8 gameplay_keep_possiblePadding_01A218[] = {
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 
};

u64 gEffFireFootprint1Tex[] = {
#include "assets/objects/gameplay_keep/eff_fire_footprint_1.ia8.inc.c"
};

u64 gEffFireFootprint2Tex[] = {
#include "assets/objects/gameplay_keep/eff_fire_footprint_2.ia8.inc.c"
};

u64 gEffFireFootprint3Tex[] = {
#include "assets/objects/gameplay_keep/eff_fire_footprint_3.ia8.inc.c"
};

u64 gEffFireFootprint4Tex[] = {
#include "assets/objects/gameplay_keep/eff_fire_footprint_4.ia8.inc.c"
};

u64 gEffFireFootprint5Tex[] = {
#include "assets/objects/gameplay_keep/eff_fire_footprint_5.ia8.inc.c"
};

u64 gEffFireFootprint6Tex[] = {
#include "assets/objects/gameplay_keep/eff_fire_footprint_6.ia8.inc.c"
};

u64 gEffFireFootprint7Tex[] = {
#include "assets/objects/gameplay_keep/eff_fire_footprint_7.ia8.inc.c"
};

u64 gEffFireFootprint8Tex[] = {
#include "assets/objects/gameplay_keep/eff_fire_footprint_8.ia8.inc.c"
};

Gfx gEffFireFootprintDL[] = {
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsDPSetCombineLERP(PRIMITIVE, ENVIRONMENT, TEXEL0, ENVIRONMENT, PRIMITIVE, 0, TEXEL0, 0, PRIMITIVE, ENVIRONMENT,
                       TEXEL0, ENVIRONMENT, PRIMITIVE, 0, TEXEL0, 0),
    gsDPLoadTextureBlock(0x08000000, G_IM_FMT_IA, G_IM_SIZ_8b, 32, 32, 0, G_TX_NOMIRROR | G_TX_WRAP, G_TX_NOMIRROR |
                         G_TX_WRAP, G_TX_NOMASK, G_TX_NOMASK, G_TX_NOLOD, G_TX_NOLOD),
    gsSPVertex(gameplay_keepVtx_01C280, 4, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsSPEndDisplayList(),
};

Vtx gameplay_keepVtx_01C280[] = {
#include "assets/objects/gameplay_keep/gameplay_keepVtx_01C280.vtx.inc"
};

u64 gEffUnusedBubbles1Tex[] = {
#include "assets/objects/gameplay_keep/eff_unused_bubbles_1.ia8.inc.c"
};

u64 gEffUnusedBubbles2Tex[] = {
#include "assets/objects/gameplay_keep/eff_unused_bubbles_2.ia8.inc.c"
};

u64 gEffUnusedBubbles3Tex[] = {
#include "assets/objects/gameplay_keep/eff_unused_bubbles_3.ia8.inc.c"
};

u64 gEffUnusedBubbles4Tex[] = {
#include "assets/objects/gameplay_keep/eff_unused_bubbles_4.ia8.inc.c"
};

u64 gEffUnusedBubbles5Tex[] = {
#include "assets/objects/gameplay_keep/eff_unused_bubbles_5.ia8.inc.c"
};

u64 gEffUnusedBubbles6Tex[] = {
#include "assets/objects/gameplay_keep/eff_unused_bubbles_6.ia8.inc.c"
};

u64 gEffUnusedBubbles7Tex[] = {
#include "assets/objects/gameplay_keep/eff_unused_bubbles_7.ia8.inc.c"
};

u64 gEffUnusedBubbles8Tex[] = {
#include "assets/objects/gameplay_keep/eff_unused_bubbles_8.ia8.inc.c"
};

Gfx gEffUnusedBubblesDL[] = {
    gsSPMatrix(0x01000000, G_MTX_NOPUSH | G_MTX_MUL | G_MTX_MODELVIEW),
    gsDPPipeSync(),
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsDPSetCombineLERP(PRIMITIVE, ENVIRONMENT, TEXEL0, ENVIRONMENT, PRIMITIVE, 0, TEXEL0, 0, PRIMITIVE, ENVIRONMENT,
                       TEXEL0, ENVIRONMENT, PRIMITIVE, 0, TEXEL0, 0),
    gsDPLoadTextureBlock(0x08000000, G_IM_FMT_IA, G_IM_SIZ_8b, 32, 32, 0, G_TX_NOMIRROR | G_TX_CLAMP, G_TX_NOMIRROR |
                         G_TX_CLAMP, 5, 5, G_TX_NOLOD, G_TX_NOLOD),
    gsSPVertex(gameplay_keepVtx_01E330, 4, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsSPEndDisplayList(),
};

Vtx gameplay_keepVtx_01E330[] = {
#include "assets/objects/gameplay_keep/gameplay_keepVtx_01E330.vtx.inc"
};

u64 gLensOfTruthMaskTex[] = {
#include "assets/objects/gameplay_keep/lens_of_truth_mask.i8.inc.c"
};

u64 gEffHitMark1Tex[] = {
#include "assets/objects/gameplay_keep/eff_hit_mark_1.i4.inc.c"
};

u64 gEffHitMark2Tex[] = {
#include "assets/objects/gameplay_keep/eff_hit_mark_2.i4.inc.c"
};

u64 gEffHitMark3Tex[] = {
#include "assets/objects/gameplay_keep/eff_hit_mark_3.i4.inc.c"
};

u64 gEffHitMark4Tex[] = {
#include "assets/objects/gameplay_keep/eff_hit_mark_4.i4.inc.c"
};

u64 gEffHitMark5Tex[] = {
#include "assets/objects/gameplay_keep/eff_hit_mark_5.i4.inc.c"
};

u64 gEffHitMark6Tex[] = {
#include "assets/objects/gameplay_keep/eff_hit_mark_6.i4.inc.c"
};

u64 gEffHitMark7Tex[] = {
#include "assets/objects/gameplay_keep/eff_hit_mark_7.i4.inc.c"
};

u64 gEffHitMark8Tex[] = {
#include "assets/objects/gameplay_keep/eff_hit_mark_8.i4.inc.c"
};

u64 gEffHitMark9Tex[] = {
#include "assets/objects/gameplay_keep/eff_hit_mark_9.i4.inc.c"
};

u64 gEffHitMark10Tex[] = {
#include "assets/objects/gameplay_keep/eff_hit_mark_10.i4.inc.c"
};

u64 gEffHitMark11Tex[] = {
#include "assets/objects/gameplay_keep/eff_hit_mark_11.i4.inc.c"
};

u64 gEffHitMark12Tex[] = {
#include "assets/objects/gameplay_keep/eff_hit_mark_12.i4.inc.c"
};

u64 gEffHitMark13Tex[] = {
#include "assets/objects/gameplay_keep/eff_hit_mark_13.i4.inc.c"
};

u64 gEffHitMark14Tex[] = {
#include "assets/objects/gameplay_keep/eff_hit_mark_14.i4.inc.c"
};

u64 gEffHitMark15Tex[] = {
#include "assets/objects/gameplay_keep/eff_hit_mark_15.i4.inc.c"
};

u64 gEffHitMark16Tex[] = {
#include "assets/objects/gameplay_keep/eff_hit_mark_16.i4.inc.c"
};

u64 gEffHitMark17Tex[] = {
#include "assets/objects/gameplay_keep/eff_hit_mark_17.i4.inc.c"
};

u64 gEffHitMark18Tex[] = {
#include "assets/objects/gameplay_keep/eff_hit_mark_18.i4.inc.c"
};

u64 gEffHitMark19Tex[] = {
#include "assets/objects/gameplay_keep/eff_hit_mark_19.i4.inc.c"
};

u64 gEffHitMark20Tex[] = {
#include "assets/objects/gameplay_keep/eff_hit_mark_20.i4.inc.c"
};

u64 gEffHitMark21Tex[] = {
#include "assets/objects/gameplay_keep/eff_hit_mark_21.i4.inc.c"
};

u64 gEffHitMark22Tex[] = {
#include "assets/objects/gameplay_keep/eff_hit_mark_22.i4.inc.c"
};

u64 gEffHitMark23Tex[] = {
#include "assets/objects/gameplay_keep/eff_hit_mark_23.i4.inc.c"
};

u64 gEffHitMark24Tex[] = {
#include "assets/objects/gameplay_keep/eff_hit_mark_24.i4.inc.c"
};

Gfx gEffHitMarkDL[] = {
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsDPLoadTextureBlock_4b(0x08000000, G_IM_FMT_I, 32, 24, 0, G_TX_NOMIRROR | G_TX_WRAP, G_TX_NOMIRROR | G_TX_WRAP,
                            G_TX_NOMASK, G_TX_NOMASK, G_TX_NOLOD, G_TX_NOLOD),
    gsSPVertex(gameplay_keepVtx_0217C8, 4, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsSPEndDisplayList(),
};

Vtx gameplay_keepVtx_0217C8[] = {
#include "assets/objects/gameplay_keep/gameplay_keepVtx_0217C8.vtx.inc"
};

u8 gameplay_keep_possiblePadding_021808[] = {
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 
};

u64 gEffUnknown6Tex[] = {
#include "assets/objects/gameplay_keep/eff_unknown_6.i8.inc.c"
};

u64 gEffFleckTex[] = {
#include "assets/objects/gameplay_keep/eff_fleck.i8.inc.c"
};

u64 gEffUnknown8Tex[] = {
#include "assets/objects/gameplay_keep/eff_unknown_8.i8.inc.c"
};

u64 gEffMagmaBubble1Tex[] = {
#include "assets/objects/gameplay_keep/eff_magma_bubbles_1.ia8.inc.c"
};

u64 gEffMagmaBubble2Tex[] = {
#include "assets/objects/gameplay_keep/eff_magma_bubbles_2.ia8.inc.c"
};

u64 gEffMagmaBubble3Tex[] = {
#include "assets/objects/gameplay_keep/eff_magma_bubbles_3.ia8.inc.c"
};

u64 gEffMagmaBubble4Tex[] = {
#include "assets/objects/gameplay_keep/eff_magma_bubbles_4.ia8.inc.c"
};

u64 gEffMagmaBubble5Tex[] = {
#include "assets/objects/gameplay_keep/eff_magma_bubbles_5.ia8.inc.c"
};

u64 gEffMagmaBubble6Tex[] = {
#include "assets/objects/gameplay_keep/eff_magma_bubbles_6.ia8.inc.c"
};

u64 gEffMagmaBubble7Tex[] = {
#include "assets/objects/gameplay_keep/eff_magma_bubbles_7.ia8.inc.c"
};

u64 gEffMagmaBubble8Tex[] = {
#include "assets/objects/gameplay_keep/eff_magma_bubbles_8.ia8.inc.c"
};

Gfx gEffMagmaBubbleDL[] = {
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsDPSetCombineLERP(PRIMITIVE, ENVIRONMENT, TEXEL0, ENVIRONMENT, PRIMITIVE, 0, TEXEL0, 0, PRIMITIVE, ENVIRONMENT,
                       TEXEL0, ENVIRONMENT, PRIMITIVE, 0, TEXEL0, 0),
    gsDPLoadTextureBlock_4b(0x08000000, G_IM_FMT_I, 32, 24, 0, G_TX_NOMIRROR | G_TX_WRAP, G_TX_NOMIRROR | G_TX_WRAP,
                            G_TX_NOMASK, G_TX_NOMASK, G_TX_NOLOD, G_TX_NOLOD),
    gsSPVertex(gameplay_keepVtx_024470, 4, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsSPEndDisplayList(),
};

Vtx gameplay_keepVtx_024470[] = {
#include "assets/objects/gameplay_keep/gameplay_keepVtx_024470.vtx.inc"
};

u64 gEffWaterRippleTex[] = {
#include "assets/objects/gameplay_keep/eff_ss_g_ripple.i8.inc.c"
};

Gfx gEffWaterRippleDL[] = {
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsDPLoadTextureBlock(gEffWaterRippleTex, G_IM_FMT_I, G_IM_SIZ_8b, 64, 64, 0, G_TX_NOMIRROR | G_TX_WRAP,
                         G_TX_NOMIRROR | G_TX_WRAP, G_TX_NOMASK, G_TX_NOMASK, G_TX_NOLOD, G_TX_NOLOD),
    gsSPClearGeometryMode(G_CULL_BACK),
    gsSPVertex(gameplay_keepVtx_025510, 4, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsSPEndDisplayList(),
};

Vtx gameplay_keepVtx_025510[] = {
#include "assets/objects/gameplay_keep/gameplay_keepVtx_025510.vtx.inc"
};

Gfx gEffSparkDL[] = {
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsDPSetCombineLERP(PRIMITIVE, ENVIRONMENT, TEXEL0, ENVIRONMENT, PRIMITIVE, 0, TEXEL0, 0, PRIMITIVE, ENVIRONMENT,
                       TEXEL0, ENVIRONMENT, PRIMITIVE, 0, TEXEL0, 0),
    gsDPLoadTextureBlock_4b(0x08000000, G_IM_FMT_I, 32, 32, 0, G_TX_NOMIRROR | G_TX_WRAP, G_TX_NOMIRROR | G_TX_WRAP,
                            G_TX_NOMASK, G_TX_NOMASK, G_TX_NOLOD, G_TX_NOLOD),
    gsSPVertex(gameplay_keepVtx_0255B0, 4, 0),
    gsSP2Triangles(0, 1, 2, 0, 1, 3, 2, 0),
    gsSPEndDisplayList(),
};

Vtx gameplay_keepVtx_0255B0[] = {
#include "assets/objects/gameplay_keep/gameplay_keepVtx_0255B0.vtx.inc"
};

u64 gEffWaterSplash1Tex[] = {
#include "assets/objects/gameplay_keep/eff_water_splash_1.i8.inc.c"
};

u64 gEffWaterSplash2Tex[] = {
#include "assets/objects/gameplay_keep/eff_water_splash_2.i8.inc.c"
};

u64 gEffWaterSplash3Tex[] = {
#include "assets/objects/gameplay_keep/eff_water_splash_3.i8.inc.c"
};

u64 gEffWaterSplash4Tex[] = {
#include "assets/objects/gameplay_keep/eff_water_splash_4.i8.inc.c"
};

u64 gEffWaterSplash5Tex[] = {
#include "assets/objects/gameplay_keep/eff_water_splash_5.i8.inc.c"
};

u64 gEffWaterSplash6Tex[] = {
#include "assets/objects/gameplay_keep/eff_water_splash_6.i8.inc.c"
};

u64 gEffWaterSplash7Tex[] = {
#include "assets/objects/gameplay_keep/eff_water_splash_7.i8.inc.c"
};

u64 gEffWaterSplash8Tex[] = {
#include "assets/objects/gameplay_keep/eff_water_splash_8.i8.inc.c"
};

Gfx gEffWaterSplashDL[] = {
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsDPSetCombineLERP(PRIMITIVE, ENVIRONMENT, TEXEL0, ENVIRONMENT, PRIMITIVE, 0, TEXEL0, 0, PRIMITIVE, ENVIRONMENT,
                       TEXEL0, ENVIRONMENT, PRIMITIVE, 0, TEXEL0, 0),
    gsDPLoadTextureBlock(0x08000000, G_IM_FMT_I, G_IM_SIZ_8b, 32, 40, 0, G_TX_NOMIRROR | G_TX_WRAP, G_TX_NOMIRROR |
                         G_TX_WRAP, G_TX_NOMASK, G_TX_NOMASK, G_TX_NOLOD, G_TX_NOLOD),
    gsSPVertex(gameplay_keepVtx_027E50, 4, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsSPEndDisplayList(),
};

Vtx gameplay_keepVtx_027E50[] = {
#include "assets/objects/gameplay_keep/gameplay_keepVtx_027E50.vtx.inc"
};

u64 gUnknownEffStone1Tex[] = {
#include "assets/objects/gameplay_keep/unknown_eff_stone_1.ia8.inc.c"
};

u64 gUnknownEffStone2Tex[] = {
#include "assets/objects/gameplay_keep/unknown_eff_stone_2.ia8.inc.c"
};

u64 gUnknownEffStone3Tex[] = {
#include "assets/objects/gameplay_keep/unknown_eff_stone_3.ia8.inc.c"
};

u64 gUnknownEffStone4Tex[] = {
#include "assets/objects/gameplay_keep/unknown_eff_stone_4.ia8.inc.c"
};

u64 gUnknownEffStone5Tex[] = {
#include "assets/objects/gameplay_keep/unknown_eff_stone_5.ia8.inc.c"
};

u64 gUnknownEffStone6Tex[] = {
#include "assets/objects/gameplay_keep/unknown_eff_stone_6.ia8.inc.c"
};

u64 gUnknownEffStone7Tex[] = {
#include "assets/objects/gameplay_keep/unknown_eff_stone_7.ia8.inc.c"
};

u64 gUnknownEffStone8Tex[] = {
#include "assets/objects/gameplay_keep/unknown_eff_stone_8.ia8.inc.c"
};

Gfx gUnknownEffStoneDL[] = {
    gsSPMatrix(0x01000000, G_MTX_NOPUSH | G_MTX_MUL | G_MTX_MODELVIEW),
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsDPLoadTextureBlock(0x08000000, G_IM_FMT_IA, G_IM_SIZ_8b, 32, 32, 0, G_TX_NOMIRROR | G_TX_CLAMP, G_TX_NOMIRROR |
                         G_TX_CLAMP, 5, 5, G_TX_NOLOD, G_TX_NOLOD),
    gsSPVertex(gameplay_keepVtx_029EF0, 4, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsSPEndDisplayList(),
};

Vtx gameplay_keepVtx_029EF0[] = {
#include "assets/objects/gameplay_keep/gameplay_keepVtx_029EF0.vtx.inc"
};

u64 gEffLightning1Tex[] = {
#include "assets/objects/gameplay_keep/eff_lightning_1.i8.inc.c"
};

u64 gEffLightning2Tex[] = {
#include "assets/objects/gameplay_keep/eff_lightning_2.i8.inc.c"
};

u64 gEffLightning3Tex[] = {
#include "assets/objects/gameplay_keep/eff_lightning_3.i8.inc.c"
};

u64 gEffLightning4Tex[] = {
#include "assets/objects/gameplay_keep/eff_lightning_4.i8.inc.c"
};

u64 gEffLightning5Tex[] = {
#include "assets/objects/gameplay_keep/eff_lightning_5.i8.inc.c"
};

u64 gEffLightning6Tex[] = {
#include "assets/objects/gameplay_keep/eff_lightning_6.i8.inc.c"
};

u64 gEffLightning7Tex[] = {
#include "assets/objects/gameplay_keep/eff_lightning_7.i8.inc.c"
};

u64 gEffLightning8Tex[] = {
#include "assets/objects/gameplay_keep/eff_lightning_8.i8.inc.c"
};

Gfx gEffLightningDL[] = {
    gsDPPipeSync(),
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsDPSetCombineLERP(PRIMITIVE, ENVIRONMENT, TEXEL0, ENVIRONMENT, PRIMITIVE, 0, TEXEL0, 0, PRIMITIVE, ENVIRONMENT,
                       TEXEL0, ENVIRONMENT, PRIMITIVE, 0, TEXEL0, 0),
    gsDPLoadTextureBlock_4b(0x08000000, G_IM_FMT_I, 32, 96, 0, G_TX_NOMIRROR | G_TX_WRAP, G_TX_NOMIRROR | G_TX_WRAP,
                            G_TX_NOMASK, G_TX_NOMASK, G_TX_NOLOD, G_TX_NOLOD),
    gsSPVertex(gameplay_keepVtx_02CF98, 4, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsSPEndDisplayList(),
};

Vtx gameplay_keepVtx_02CF98[] = {
#include "assets/objects/gameplay_keep/gameplay_keepVtx_02CF98.vtx.inc"
};

u8 gameplay_keep_possiblePadding_02CFD8[] = {
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 
};

u64 gEffEnemyDeathFlame1Tex[] = {
#include "assets/objects/gameplay_keep/eff_enemy_death_flame_1.i8.inc.c"
};

u64 gEffEnemyDeathFlame2Tex[] = {
#include "assets/objects/gameplay_keep/eff_enemy_death_flame_2.i8.inc.c"
};

u64 gEffEnemyDeathFlame3Tex[] = {
#include "assets/objects/gameplay_keep/eff_enemy_death_flame_3.i8.inc.c"
};

u64 gEffEnemyDeathFlame4Tex[] = {
#include "assets/objects/gameplay_keep/eff_enemy_death_flame_4.i8.inc.c"
};

u64 gEffEnemyDeathFlame5Tex[] = {
#include "assets/objects/gameplay_keep/eff_enemy_death_flame_5.i8.inc.c"
};

u64 gEffEnemyDeathFlame6Tex[] = {
#include "assets/objects/gameplay_keep/eff_enemy_death_flame_6.i8.inc.c"
};

u64 gEffEnemyDeathFlame7Tex[] = {
#include "assets/objects/gameplay_keep/eff_enemy_death_flame_7.i8.inc.c"
};

u64 gEffEnemyDeathFlame8Tex[] = {
#include "assets/objects/gameplay_keep/eff_enemy_death_flame_8.i8.inc.c"
};

u64 gEffEnemyDeathFlame9Tex[] = {
#include "assets/objects/gameplay_keep/eff_enemy_death_flame_9.i8.inc.c"
};

u64 gEffEnemyDeathFlame10Tex[] = {
#include "assets/objects/gameplay_keep/eff_enemy_death_flame_10.i8.inc.c"
};

Gfx gEffEnemyDeathFlameDL[] = {
    gsSPMatrix(0x01000000, G_MTX_NOPUSH | G_MTX_MUL | G_MTX_MODELVIEW),
    gsDPPipeSync(),
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsDPLoadTextureBlock(0x08000000, G_IM_FMT_I, G_IM_SIZ_8b, 32, 64, 0, G_TX_NOMIRROR | G_TX_CLAMP, G_TX_NOMIRROR |
                         G_TX_CLAMP, 5, 6, G_TX_NOLOD, G_TX_NOLOD),
    gsSPVertex(gameplay_keepVtx_032048, 4, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsSPEndDisplayList(),
};

Vtx gameplay_keepVtx_032048[] = {
#include "assets/objects/gameplay_keep/gameplay_keepVtx_032048.vtx.inc"
};

u8 gameplay_keep_possiblePadding_032088[] = {
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 
};

u64 gEffUnknown9Tex[] = {
#include "assets/objects/gameplay_keep/eff_unknown_9.i8.inc.c"
};

u64 gEffUnknown10Tex[] = {
#include "assets/objects/gameplay_keep/eff_unknown_10.i8.inc.c"
};

u64 gEffUnknown11Tex[] = {
#include "assets/objects/gameplay_keep/eff_unknown_11.i8.inc.c"
};

u64 gEffUnknown12Tex[] = {
#include "assets/objects/gameplay_keep/eff_unknown_12.i8.inc.c"
};

u64 gUnknownWoodBoardTex[] = {
#include "assets/objects/gameplay_keep/unknown_wood_board.i8.inc.c"
};

Vtx gameplay_keepVtx_033490[] = {
#include "assets/objects/gameplay_keep/gameplay_keepVtx_033490.vtx.inc"
};

Gfx gEffIceFragment1DL[] = {
    gsDPPipeSync(),
    gsDPSetTextureLUT(G_TT_NONE),
    gsSPTexture(0x0FA0, 0x0FA0, 0, G_TX_RENDERTILE, G_ON),
    gsDPLoadTextureBlock(gEffUnknown12Tex, G_IM_FMT_I, G_IM_SIZ_8b, 32, 32, 0, G_TX_NOMIRROR | G_TX_WRAP, G_TX_NOMIRROR
                         | G_TX_WRAP, 5, 5, G_TX_NOLOD, 15),
    gsDPTileSync(),
    gsDPSetTile(G_IM_FMT_I, G_IM_SIZ_8b, 4, 0x0000, 1, 0, G_TX_NOMIRROR | G_TX_WRAP, 5, G_TX_NOLOD, G_TX_NOMIRROR |
                G_TX_WRAP, 5, 1),
    gsDPSetTileSize(1, 0, 0, 0x007C, 0x007C),
    gsDPSetCombineLERP(TEXEL1, PRIMITIVE, PRIM_LOD_FRAC, TEXEL0, TEXEL1, TEXEL0, PRIM_LOD_FRAC, TEXEL0, PRIMITIVE,
                       ENVIRONMENT, COMBINED, ENVIRONMENT, COMBINED, 0, ENVIRONMENT, 0),
    gsDPSetRenderMode(G_RM_PASS, G_RM_AA_ZB_XLU_SURF2),
    gsSPClearGeometryMode(G_CULL_BACK | G_FOG),
    gsSPSetGeometryMode(G_LIGHTING | G_TEXTURE_GEN | G_TEXTURE_GEN_LINEAR),
    gsDPSetPrimColor(0, 0x80, 170, 255, 255, 255),
    gsSPDisplayList(0x08000000),
    gsSPVertex(gameplay_keepVtx_033490, 3, 0),
    gsSP1Triangle(0, 1, 2, 0),
    gsSPVertex(&gameplay_keepVtx_033490[3], 32, 0),
    gsSP2Triangles(0, 1, 2, 0, 3, 4, 5, 0),
    gsSP2Triangles(6, 7, 8, 0, 9, 10, 11, 0),
    gsSP2Triangles(12, 13, 14, 0, 15, 16, 17, 0),
    gsSP2Triangles(18, 19, 20, 0, 21, 22, 23, 0),
    gsSP2Triangles(24, 25, 26, 0, 27, 28, 29, 0),
    gsSPVertex(&gameplay_keepVtx_033490[33], 8, 0),
    gsSP2Triangles(0, 1, 2, 0, 3, 0, 4, 0),
    gsSP1Triangle(5, 6, 7, 0),
    gsSPEndDisplayList(),
};

Gfx gEffIceFragment2DL[] = {
    gsDPPipeSync(),
    gsDPSetTextureLUT(G_TT_NONE),
    gsSPTexture(0x0FA0, 0x0FA0, 0, G_TX_RENDERTILE, G_ON),
    gsDPLoadTextureBlock(gEffUnknown12Tex, G_IM_FMT_I, G_IM_SIZ_8b, 32, 32, 0, G_TX_NOMIRROR | G_TX_WRAP, G_TX_NOMIRROR
                         | G_TX_WRAP, 5, 5, G_TX_NOLOD, 15),
    gsDPTileSync(),
    gsDPSetTile(G_IM_FMT_I, G_IM_SIZ_8b, 4, 0x0000, 1, 0, G_TX_NOMIRROR | G_TX_WRAP, 5, G_TX_NOLOD, G_TX_NOMIRROR |
                G_TX_WRAP, 5, 1),
    gsDPSetTileSize(1, 0, 0, 0x007C, 0x007C),
    gsDPSetCombineLERP(TEXEL1, PRIMITIVE, PRIM_LOD_FRAC, TEXEL0, TEXEL1, TEXEL0, PRIM_LOD_FRAC, TEXEL0, PRIMITIVE,
                       ENVIRONMENT, COMBINED, ENVIRONMENT, ENVIRONMENT, 0, LOD_FRACTION, 0),
    gsDPSetRenderMode(G_RM_PASS, G_RM_AA_ZB_XLU_SURF2),
    gsSPClearGeometryMode(G_CULL_BACK | G_FOG),
    gsSPSetGeometryMode(G_LIGHTING | G_TEXTURE_GEN | G_TEXTURE_GEN_LINEAR),
    gsSPDisplayList(0x08000000),
    gsSPVertex(gameplay_keepVtx_033490, 3, 0),
    gsSP1Triangle(0, 1, 2, 0),
    gsSPVertex(&gameplay_keepVtx_033490[3], 32, 0),
    gsSP2Triangles(0, 1, 2, 0, 3, 4, 5, 0),
    gsSP2Triangles(6, 7, 8, 0, 9, 10, 11, 0),
    gsSP2Triangles(12, 13, 14, 0, 15, 16, 17, 0),
    gsSP2Triangles(18, 19, 20, 0, 21, 22, 23, 0),
    gsSP2Triangles(24, 25, 26, 0, 27, 28, 29, 0),
    gsSPVertex(&gameplay_keepVtx_033490[33], 8, 0),
    gsSP2Triangles(0, 1, 2, 0, 3, 0, 4, 0),
    gsSP1Triangle(5, 6, 7, 0),
    gsSPEndDisplayList(),
};

u8 gameplay_keep_possiblePadding_033908[] = {
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 
};

Vtx gameplay_keepVtx_033910[] = {
#include "assets/objects/gameplay_keep/gameplay_keepVtx_033910.vtx.inc"
};

Gfx gEffIceFragment3DL[] = {
    gsDPPipeSync(),
    gsDPSetTextureLUT(G_TT_NONE),
    gsSPTexture(0x0FA0, 0x0FA0, 0, G_TX_RENDERTILE, G_ON),
    gsDPLoadTextureBlock(gEffUnknown12Tex, G_IM_FMT_I, G_IM_SIZ_8b, 32, 32, 0, G_TX_NOMIRROR | G_TX_WRAP, G_TX_NOMIRROR
                         | G_TX_WRAP, 5, 5, 1, G_TX_NOLOD),
    gsDPTileSync(),
    gsDPSetTile(G_IM_FMT_I, G_IM_SIZ_8b, 4, 0x0000, 1, 0, G_TX_NOMIRROR | G_TX_WRAP, 5, 1, G_TX_NOMIRROR | G_TX_WRAP, 5,
                2),
    gsDPSetTileSize(1, 0, 0, 0x007C, 0x007C),
    gsDPSetCombineLERP(TEXEL1, PRIMITIVE, PRIM_LOD_FRAC, TEXEL0, TEXEL1, TEXEL0, PRIM_LOD_FRAC, TEXEL0, PRIMITIVE,
                       ENVIRONMENT, COMBINED, ENVIRONMENT, COMBINED, 0, ENVIRONMENT, 0),
    gsDPSetRenderMode(G_RM_PASS, G_RM_AA_ZB_XLU_SURF2),
    gsSPClearGeometryMode(G_CULL_BACK | G_FOG),
    gsSPSetGeometryMode(G_LIGHTING | G_TEXTURE_GEN | G_TEXTURE_GEN_LINEAR),
    gsDPSetPrimColor(0x80, 0x80, 170, 255, 255, 255),
    gsSPDisplayList(0x08000000),
    gsSPVertex(gameplay_keepVtx_033910, 3, 0),
    gsSP1Triangle(0, 1, 2, 0),
    gsSPVertex(&gameplay_keepVtx_033910[3], 32, 0),
    gsSP2Triangles(0, 1, 2, 0, 3, 4, 5, 0),
    gsSP2Triangles(3, 5, 6, 0, 7, 8, 9, 0),
    gsSP2Triangles(10, 11, 12, 0, 13, 14, 15, 0),
    gsSP2Triangles(13, 15, 16, 0, 17, 18, 19, 0),
    gsSP2Triangles(17, 19, 20, 0, 21, 22, 23, 0),
    gsSP2Triangles(24, 25, 26, 0, 24, 2, 1, 0),
    gsSP2Triangles(27, 28, 29, 0, 27, 29, 30, 0),
    gsSPVertex(&gameplay_keepVtx_033910[34], 32, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsSP2Triangles(4, 5, 6, 0, 4, 6, 7, 0),
    gsSP2Triangles(8, 9, 10, 0, 8, 10, 11, 0),
    gsSP2Triangles(12, 13, 14, 0, 12, 14, 15, 0),
    gsSP2Triangles(16, 17, 18, 0, 16, 18, 19, 0),
    gsSP2Triangles(20, 17, 21, 0, 22, 23, 24, 0),
    gsSP2Triangles(25, 24, 26, 0, 27, 28, 29, 0),
    gsSP1Triangle(27, 29, 30, 0),
    gsSPVertex(&gameplay_keepVtx_033910[65], 28, 0),
    gsSP2Triangles(0, 1, 2, 0, 3, 1, 4, 0),
    gsSP2Triangles(5, 6, 7, 0, 5, 8, 9, 0),
    gsSP2Triangles(10, 11, 12, 0, 13, 14, 15, 0),
    gsSP2Triangles(4, 16, 3, 0, 17, 18, 19, 0),
    gsSP2Triangles(9, 20, 5, 0, 21, 22, 23, 0),
    gsSP2Triangles(24, 25, 26, 0, 0, 2, 27, 0),
    gsSPEndDisplayList(),
};

s16 sBugCrawlAnimFrameData[] = {
    0x0000, 0x4000, 0x0081, 0x0173, 0xE3E0, 0x6792, 0xD86C, 0x12CF, 0x1705, 0x2643, 0xED31, 0xE8FB, 0x1C20, 0x986E, 
    0x0000, 0xF9CB, 0xF1B0, 0xF9CB, 0x0000, 0x0422, 0x0627, 0x0422, 0x0000, 0xFD16, 0xFABF, 0xFD16, 0x0000, 0x0381, 
    0x0776, 0x0381, 0x0004, 0x0382, 0x0591, 0x0382, 0x0004, 0xFB5B, 0xF534, 0xFB5B, 0xB8CF, 0xB191, 0xACCE, 0xB191, 
    0xB8CF, 0xC270, 0xCEFB, 0xC270, 0x041E, 0x0742, 0x0BC6, 0x0742, 0x041E, 0x0268, 0x0269, 0x0269, 0xFCD7, 0xFE1D, 
    0xFEC1, 0xFE1D, 0xFCD7, 0xFB2D, 0xF97D, 0xFB2D, 0xFF37, 0x05A0, 0x0AE9, 0x05A0, 0xFF37, 0xF761, 0xEC7F, 0xF761, 
    0xC59C, 0xBBEF, 0xB41F, 0xBBEF, 0xC59C, 0xD1CC, 0xE30A, 0xD1CC, 0xFBE2, 0xFD98, 0xFD97, 0xFD98, 0xFBE2, 0xF8BE, 
    0xF43A, 0xF8BE, 0x0329, 0x04D3, 0x0683, 0x04D3, 0x0329, 0x01E3, 0x013F, 0x01E3, 0xFF37, 0xF761, 0xEC7F, 0xF761, 
    0xFF37, 0x05A0, 0x0AE9, 0x05A0, 0xC59C, 0xD1CC, 0xE30A, 0xD1CC, 0xC59C, 0xBBEF, 0xB41F, 0xBBEF, 0x0000, 0xFBDE, 
    0xF9D9, 0xFBDE, 0x0000, 0x0635, 0x0E50, 0x0635, 0x0000, 0xFC7F, 0xF88A, 0xFC7F, 0x0000, 0x02EA, 0x0541, 0x02EA, 
    0x0004, 0xFB5B, 0xF534, 0xFB5B, 0x0004, 0x0382, 0x0591, 0x0382, 0xB8CF, 0xC270, 0xCEFB, 0xC270, 0xB8CF, 0xB191, 
    0xACCE, 0xB191, 
};

JointIndex sBugCrawlAnimJointIndices[] = {
    { 0x0000, 0x0002, 0x0003 },
    { 0x0000, 0x0001, 0x0000 },
    { 0x0000, 0x0000, 0x0000 },
    { 0x0000, 0x0000, 0x0000 },
    { 0x0004, 0x0005, 0x0006 },
    { 0x000E, 0x0016, 0x001E },
    { 0x0000, 0x0000, 0x0026 },
    { 0x0000, 0x0000, 0x0000 },
    { 0x0000, 0x0000, 0x0000 },
    { 0x0007, 0x0008, 0x0009 },
    { 0x002E, 0x0036, 0x003E },
    { 0x0000, 0x0000, 0x0046 },
    { 0x0000, 0x0000, 0x0000 },
    { 0x0000, 0x0000, 0x0000 },
    { 0x000A, 0x000B, 0x0009 },
    { 0x004E, 0x0056, 0x005E },
    { 0x0000, 0x0000, 0x0066 },
    { 0x0000, 0x0000, 0x0000 },
    { 0x0000, 0x0000, 0x0000 },
    { 0x000C, 0x000D, 0x0006 },
    { 0x006E, 0x0076, 0x007E },
    { 0x0000, 0x0000, 0x0086 },
    { 0x0000, 0x0000, 0x0000 },
    { 0x0000, 0x0000, 0x0000 },
};

AnimationHeader gBugCrawlAnim = { 
    { 8 }, sBugCrawlAnimFrameData,
    sBugCrawlAnimJointIndices, 14
};

Gfx gBugLimb1DL[] = {
    gsDPPipeSync(),
    gsDPSetPrimColor(0, 0x01, 255, 255, 255, 255),
    gsDPPipeSync(),
    gsDPSetRenderMode(AA_EN | Z_CMP | Z_UPD | IM_RD | CVG_DST_CLAMP | ZMODE_INTER | CVG_X_ALPHA | ALPHA_CVG_SEL |
                      G_RM_FOG_SHADE_A, AA_EN | Z_CMP | Z_UPD | IM_RD | CVG_DST_CLAMP | ZMODE_INTER | CVG_X_ALPHA |
                      ALPHA_CVG_SEL | GBL_c2(G_BL_CLR_IN, G_BL_A_IN, G_BL_CLR_MEM, G_BL_1MA)),
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsDPPipeSync(),
    gsDPSetCombineLERP(TEXEL0, 0, PRIMITIVE, 0, TEXEL0, 0, PRIMITIVE, 0, COMBINED, 0, SHADE, 0, TEXEL1, 0,
                       PRIM_LOD_FRAC, COMBINED),
    gsDPLoadTextureBlock(gBugLegTex, G_IM_FMT_RGBA, G_IM_SIZ_16b, 8, 16, 0, G_TX_NOMIRROR | G_TX_CLAMP, G_TX_NOMIRROR |
                         G_TX_CLAMP, 3, 4, G_TX_NOLOD, G_TX_NOLOD),
    gsSPClearGeometryMode(G_CULL_BACK),
    gsSPSetGeometryMode(G_LIGHTING),
    gsSPSetGeometryMode(G_SHADING_SMOOTH),
    gsSPVertex(gameplay_keepVtx_0342D0, 3, 0),
    gsSP1Triangle(0, 1, 2, 0),
    gsSPEndDisplayList(),
};

Gfx gBugLimb1WrapperDL[] = {
    gsSPDisplayList(gBugLimb1DL),
    gsSPEndDisplayList(),
};

Gfx gBugLimb1WrapperWrapperDL[] = {
    gsSPDisplayList(gBugLimb1WrapperDL),
    gsSPEndDisplayList(),
};

Vtx gameplay_keepVtx_0342D0[] = {
#include "assets/objects/gameplay_keep/gameplay_keepVtx_0342D0.vtx.inc"
};

Gfx gBugLimb2DL[] = {
    gsDPPipeSync(),
    gsDPSetPrimColor(0, 0x01, 255, 255, 255, 255),
    gsDPPipeSync(),
    gsDPSetRenderMode(AA_EN | Z_CMP | Z_UPD | IM_RD | CVG_DST_CLAMP | ZMODE_INTER | CVG_X_ALPHA | ALPHA_CVG_SEL |
                      G_RM_FOG_SHADE_A, AA_EN | Z_CMP | Z_UPD | IM_RD | CVG_DST_CLAMP | ZMODE_INTER | CVG_X_ALPHA |
                      ALPHA_CVG_SEL | GBL_c2(G_BL_CLR_IN, G_BL_A_IN, G_BL_CLR_MEM, G_BL_1MA)),
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsDPPipeSync(),
    gsDPSetCombineLERP(TEXEL0, 0, PRIMITIVE, 0, TEXEL0, 0, PRIMITIVE, 0, COMBINED, 0, SHADE, 0, TEXEL1, 0,
                       PRIM_LOD_FRAC, COMBINED),
    gsDPLoadTextureBlock(gBugLegTex, G_IM_FMT_RGBA, G_IM_SIZ_16b, 8, 16, 0, G_TX_NOMIRROR | G_TX_CLAMP, G_TX_NOMIRROR |
                         G_TX_CLAMP, 3, 4, G_TX_NOLOD, G_TX_NOLOD),
    gsSPClearGeometryMode(G_CULL_BACK),
    gsSPSetGeometryMode(G_LIGHTING),
    gsSPSetGeometryMode(G_SHADING_SMOOTH),
    gsSPVertex(gameplay_keepVtx_0343C0, 3, 0),
    gsSP1Triangle(0, 1, 2, 0),
    gsSPEndDisplayList(),
};

Gfx gBugLimb2WrapperDL[] = {
    gsSPDisplayList(gBugLimb2DL),
    gsSPEndDisplayList(),
};

Gfx gBugLimb2WrapperWrapperDL[] = {
    gsSPDisplayList(gBugLimb2WrapperDL),
    gsSPEndDisplayList(),
};

Vtx gameplay_keepVtx_0343C0[] = {
#include "assets/objects/gameplay_keep/gameplay_keepVtx_0343C0.vtx.inc"
};

Gfx gBugLimb3DL[] = {
    gsDPPipeSync(),
    gsDPSetPrimColor(0, 0x01, 255, 255, 255, 255),
    gsDPPipeSync(),
    gsDPSetRenderMode(AA_EN | Z_CMP | Z_UPD | IM_RD | CVG_DST_CLAMP | ZMODE_INTER | CVG_X_ALPHA | ALPHA_CVG_SEL |
                      G_RM_FOG_SHADE_A, AA_EN | Z_CMP | Z_UPD | IM_RD | CVG_DST_CLAMP | ZMODE_INTER | CVG_X_ALPHA |
                      ALPHA_CVG_SEL | GBL_c2(G_BL_CLR_IN, G_BL_A_IN, G_BL_CLR_MEM, G_BL_1MA)),
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsDPPipeSync(),
    gsDPSetCombineLERP(TEXEL0, 0, PRIMITIVE, 0, TEXEL0, 0, PRIMITIVE, 0, COMBINED, 0, SHADE, 0, TEXEL1, 0,
                       PRIM_LOD_FRAC, COMBINED),
    gsDPLoadTextureBlock(gBugLegTex, G_IM_FMT_RGBA, G_IM_SIZ_16b, 8, 16, 0, G_TX_NOMIRROR | G_TX_CLAMP, G_TX_NOMIRROR |
                         G_TX_CLAMP, 3, 4, G_TX_NOLOD, G_TX_NOLOD),
    gsSPClearGeometryMode(G_CULL_BACK),
    gsSPSetGeometryMode(G_LIGHTING),
    gsSPSetGeometryMode(G_SHADING_SMOOTH),
    gsSPVertex(gameplay_keepVtx_0344B0, 3, 0),
    gsSP1Triangle(0, 1, 2, 0),
    gsSPEndDisplayList(),
};

Gfx gBugLimb3WrapperDL[] = {
    gsSPDisplayList(gBugLimb3DL),
    gsSPEndDisplayList(),
};

Gfx gBugLimb3WrapperWrapperDL[] = {
    gsSPDisplayList(gBugLimb3WrapperDL),
    gsSPEndDisplayList(),
};

Vtx gameplay_keepVtx_0344B0[] = {
#include "assets/objects/gameplay_keep/gameplay_keepVtx_0344B0.vtx.inc"
};

Gfx gBugLimb4DL[] = {
    gsDPPipeSync(),
    gsDPSetPrimColor(0, 0x01, 255, 255, 255, 255),
    gsDPPipeSync(),
    gsDPSetRenderMode(AA_EN | Z_CMP | Z_UPD | IM_RD | CVG_DST_CLAMP | ZMODE_INTER | CVG_X_ALPHA | ALPHA_CVG_SEL |
                      G_RM_FOG_SHADE_A, AA_EN | Z_CMP | Z_UPD | IM_RD | CVG_DST_CLAMP | ZMODE_INTER | CVG_X_ALPHA |
                      ALPHA_CVG_SEL | GBL_c2(G_BL_CLR_IN, G_BL_A_IN, G_BL_CLR_MEM, G_BL_1MA)),
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsDPPipeSync(),
    gsDPSetCombineLERP(TEXEL0, 0, PRIMITIVE, 0, TEXEL0, 0, PRIMITIVE, 0, COMBINED, 0, SHADE, 0, TEXEL1, 0,
                       PRIM_LOD_FRAC, COMBINED),
    gsDPLoadTextureBlock(gBugLegTex, G_IM_FMT_RGBA, G_IM_SIZ_16b, 8, 16, 0, G_TX_NOMIRROR | G_TX_CLAMP, G_TX_NOMIRROR |
                         G_TX_CLAMP, 3, 4, G_TX_NOLOD, G_TX_NOLOD),
    gsSPClearGeometryMode(G_CULL_BACK),
    gsSPSetGeometryMode(G_LIGHTING),
    gsSPSetGeometryMode(G_SHADING_SMOOTH),
    gsSPVertex(gameplay_keepVtx_0345A0, 3, 0),
    gsSP1Triangle(0, 1, 2, 0),
    gsSPEndDisplayList(),
};

Gfx gBugLimb4WrapperDL[] = {
    gsSPDisplayList(gBugLimb4DL),
    gsSPEndDisplayList(),
};

Gfx gBugLimb4WrapperWrapperDL[] = {
    gsSPDisplayList(gBugLimb4WrapperDL),
    gsSPEndDisplayList(),
};

Vtx gameplay_keepVtx_0345A0[] = {
#include "assets/objects/gameplay_keep/gameplay_keepVtx_0345A0.vtx.inc"
};

Gfx gBugLimb5DL[] = {
    gsDPPipeSync(),
    gsDPSetPrimColor(0, 0x01, 255, 255, 255, 255),
    gsDPPipeSync(),
    gsDPSetRenderMode(AA_EN | Z_CMP | Z_UPD | IM_RD | CVG_DST_CLAMP | ZMODE_INTER | CVG_X_ALPHA | ALPHA_CVG_SEL |
                      G_RM_FOG_SHADE_A, AA_EN | Z_CMP | Z_UPD | IM_RD | CVG_DST_CLAMP | ZMODE_INTER | CVG_X_ALPHA |
                      ALPHA_CVG_SEL | GBL_c2(G_BL_CLR_IN, G_BL_A_IN, G_BL_CLR_MEM, G_BL_1MA)),
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsDPPipeSync(),
    gsDPSetCombineLERP(TEXEL0, 0, PRIMITIVE, 0, TEXEL0, 0, PRIMITIVE, 0, COMBINED, 0, SHADE, 0, TEXEL1, 0,
                       PRIM_LOD_FRAC, COMBINED),
    gsDPLoadTextureBlock(gBugLegTex, G_IM_FMT_RGBA, G_IM_SIZ_16b, 8, 16, 0, G_TX_NOMIRROR | G_TX_CLAMP, G_TX_NOMIRROR |
                         G_TX_CLAMP, 3, 4, G_TX_NOLOD, G_TX_NOLOD),
    gsSPClearGeometryMode(G_CULL_BACK),
    gsSPSetGeometryMode(G_LIGHTING),
    gsSPSetGeometryMode(G_SHADING_SMOOTH),
    gsSPVertex(gameplay_keepVtx_034690, 3, 0),
    gsSP1Triangle(0, 1, 2, 0),
    gsSPEndDisplayList(),
};

Gfx gBugLimb5WrapperDL[] = {
    gsSPDisplayList(gBugLimb5DL),
    gsSPEndDisplayList(),
};

Gfx gBugLimb5WrapperWrapperDL[] = {
    gsSPDisplayList(gBugLimb5WrapperDL),
    gsSPEndDisplayList(),
};

Vtx gameplay_keepVtx_034690[] = {
#include "assets/objects/gameplay_keep/gameplay_keepVtx_034690.vtx.inc"
};

Gfx gBugLimb6DL[] = {
    gsDPPipeSync(),
    gsDPSetPrimColor(0, 0x01, 255, 255, 255, 255),
    gsDPPipeSync(),
    gsDPSetRenderMode(AA_EN | Z_CMP | Z_UPD | IM_RD | CVG_DST_CLAMP | ZMODE_INTER | CVG_X_ALPHA | ALPHA_CVG_SEL |
                      G_RM_FOG_SHADE_A, AA_EN | Z_CMP | Z_UPD | IM_RD | CVG_DST_CLAMP | ZMODE_INTER | CVG_X_ALPHA |
                      ALPHA_CVG_SEL | GBL_c2(G_BL_CLR_IN, G_BL_A_IN, G_BL_CLR_MEM, G_BL_1MA)),
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsDPPipeSync(),
    gsDPSetCombineLERP(TEXEL0, 0, PRIMITIVE, 0, TEXEL0, 0, PRIMITIVE, 0, COMBINED, 0, SHADE, 0, TEXEL1, 0,
                       PRIM_LOD_FRAC, COMBINED),
    gsDPLoadTextureBlock(gBugLegTex, G_IM_FMT_RGBA, G_IM_SIZ_16b, 8, 16, 0, G_TX_NOMIRROR | G_TX_CLAMP, G_TX_NOMIRROR |
                         G_TX_CLAMP, 3, 4, G_TX_NOLOD, G_TX_NOLOD),
    gsSPClearGeometryMode(G_CULL_BACK),
    gsSPSetGeometryMode(G_LIGHTING),
    gsSPSetGeometryMode(G_SHADING_SMOOTH),
    gsSPVertex(gameplay_keepVtx_034780, 3, 0),
    gsSP1Triangle(0, 1, 2, 0),
    gsSPEndDisplayList(),
};

Gfx gBugLimb6WrapperDL[] = {
    gsSPDisplayList(gBugLimb6DL),
    gsSPEndDisplayList(),
};

Gfx gBugLimb6WrapperWrapperDL[] = {
    gsSPDisplayList(gBugLimb6WrapperDL),
    gsSPEndDisplayList(),
};

Vtx gameplay_keepVtx_034780[] = {
#include "assets/objects/gameplay_keep/gameplay_keepVtx_034780.vtx.inc"
};

Gfx gBugLimb7DL[] = {
    gsDPPipeSync(),
    gsDPSetPrimColor(0, 0x01, 255, 255, 255, 255),
    gsDPPipeSync(),
    gsDPSetRenderMode(AA_EN | Z_CMP | Z_UPD | IM_RD | CVG_DST_CLAMP | ZMODE_INTER | CVG_X_ALPHA | ALPHA_CVG_SEL |
                      G_RM_FOG_SHADE_A, AA_EN | Z_CMP | Z_UPD | IM_RD | CVG_DST_CLAMP | ZMODE_INTER | CVG_X_ALPHA |
                      ALPHA_CVG_SEL | GBL_c2(G_BL_CLR_IN, G_BL_A_IN, G_BL_CLR_MEM, G_BL_1MA)),
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsDPPipeSync(),
    gsDPSetCombineLERP(TEXEL0, 0, PRIMITIVE, 0, TEXEL0, 0, PRIMITIVE, 0, COMBINED, 0, SHADE, 0, TEXEL1, 0,
                       PRIM_LOD_FRAC, COMBINED),
    gsDPLoadTextureBlock(gBugLegTex, G_IM_FMT_RGBA, G_IM_SIZ_16b, 8, 16, 0, G_TX_NOMIRROR | G_TX_CLAMP, G_TX_NOMIRROR |
                         G_TX_CLAMP, 3, 4, G_TX_NOLOD, G_TX_NOLOD),
    gsSPClearGeometryMode(G_CULL_BACK),
    gsSPSetGeometryMode(G_LIGHTING),
    gsSPSetGeometryMode(G_SHADING_SMOOTH),
    gsSPVertex(gameplay_keepVtx_034870, 3, 0),
    gsSP1Triangle(0, 1, 2, 0),
    gsSPEndDisplayList(),
};

Gfx gBugLimb7WrapperDL[] = {
    gsSPDisplayList(gBugLimb7DL),
    gsSPEndDisplayList(),
};

Gfx gBugLimb7WrapperWrapperDL[] = {
    gsSPDisplayList(gBugLimb7WrapperDL),
    gsSPEndDisplayList(),
};

Vtx gameplay_keepVtx_034870[] = {
#include "assets/objects/gameplay_keep/gameplay_keepVtx_034870.vtx.inc"
};

Gfx gBugLimb8DL[] = {
    gsDPPipeSync(),
    gsDPSetPrimColor(0, 0x01, 255, 255, 255, 255),
    gsDPPipeSync(),
    gsDPSetRenderMode(AA_EN | Z_CMP | Z_UPD | IM_RD | CVG_DST_CLAMP | ZMODE_INTER | CVG_X_ALPHA | ALPHA_CVG_SEL |
                      G_RM_FOG_SHADE_A, AA_EN | Z_CMP | Z_UPD | IM_RD | CVG_DST_CLAMP | ZMODE_INTER | CVG_X_ALPHA |
                      ALPHA_CVG_SEL | GBL_c2(G_BL_CLR_IN, G_BL_A_IN, G_BL_CLR_MEM, G_BL_1MA)),
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsDPPipeSync(),
    gsDPSetCombineLERP(TEXEL0, 0, PRIMITIVE, 0, TEXEL0, 0, PRIMITIVE, 0, COMBINED, 0, SHADE, 0, TEXEL1, 0,
                       PRIM_LOD_FRAC, COMBINED),
    gsDPLoadTextureBlock(gBugLegTex, G_IM_FMT_RGBA, G_IM_SIZ_16b, 8, 16, 0, G_TX_NOMIRROR | G_TX_CLAMP, G_TX_NOMIRROR |
                         G_TX_CLAMP, 3, 4, G_TX_NOLOD, G_TX_NOLOD),
    gsSPClearGeometryMode(G_CULL_BACK),
    gsSPSetGeometryMode(G_LIGHTING),
    gsSPSetGeometryMode(G_SHADING_SMOOTH),
    gsSPVertex(gameplay_keepVtx_034960, 3, 0),
    gsSP1Triangle(0, 1, 2, 0),
    gsSPEndDisplayList(),
};

Gfx gBugLimb8WrapperDL[] = {
    gsSPDisplayList(gBugLimb8DL),
    gsSPEndDisplayList(),
};

Gfx gBugLimb8WrapperWrapperDL[] = {
    gsSPDisplayList(gBugLimb8WrapperDL),
    gsSPEndDisplayList(),
};

Vtx gameplay_keepVtx_034960[] = {
#include "assets/objects/gameplay_keep/gameplay_keepVtx_034960.vtx.inc"
};

Gfx gBugLimb9DL[] = {
    gsDPPipeSync(),
    gsDPSetPrimColor(0, 0x01, 255, 255, 255, 255),
    gsDPPipeSync(),
    gsDPSetRenderMode(AA_EN | Z_CMP | Z_UPD | IM_RD | CVG_DST_CLAMP | ZMODE_INTER | CVG_X_ALPHA | ALPHA_CVG_SEL |
                      G_RM_FOG_SHADE_A, AA_EN | Z_CMP | Z_UPD | IM_RD | CVG_DST_CLAMP | ZMODE_INTER | CVG_X_ALPHA |
                      ALPHA_CVG_SEL | GBL_c2(G_BL_CLR_IN, G_BL_A_IN, G_BL_CLR_MEM, G_BL_1MA)),
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsDPPipeSync(),
    gsDPSetCombineLERP(TEXEL0, 0, PRIMITIVE, 0, TEXEL0, 0, PRIMITIVE, 0, COMBINED, 0, SHADE, 0, TEXEL1, 0,
                       PRIM_LOD_FRAC, COMBINED),
    gsDPLoadTextureBlock(gBugBodyTex, G_IM_FMT_RGBA, G_IM_SIZ_16b, 16, 64, 0, G_TX_NOMIRROR | G_TX_CLAMP, G_TX_NOMIRROR
                         | G_TX_CLAMP, 4, 6, G_TX_NOLOD, G_TX_NOLOD),
    gsSPSetGeometryMode(G_CULL_BACK),
    gsSPSetGeometryMode(G_LIGHTING),
    gsSPSetGeometryMode(G_SHADING_SMOOTH),
    gsSPVertex(gameplay_keepVtx_034A60, 12, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 3, 1, 0),
    gsSP2Triangles(4, 5, 6, 0, 5, 7, 6, 0),
    gsSP2Triangles(8, 9, 10, 0, 8, 11, 9, 0),
    gsSPEndDisplayList(),
};

Gfx gBugLimb9WrapperDL[] = {
    gsSPDisplayList(gBugLimb9DL),
    gsSPEndDisplayList(),
};

Gfx gBugLimb9WrapperWrapperDL[] = {
    gsSPDisplayList(gBugLimb9WrapperDL),
    gsSPEndDisplayList(),
};

Vtx gameplay_keepVtx_034A60[] = {
#include "assets/objects/gameplay_keep/gameplay_keepVtx_034A60.vtx.inc"
};

u64 gBugBodyTex[] = {
#include "assets/objects/gameplay_keep/bug_body.rgba16.inc.c"
};

u64 gBugLegTex[] = {
#include "assets/objects/gameplay_keep/bug_leg.rgba16.inc.c"
};

StandardLimb gBugSkelLimbsLimb_035420 = { 
    { 0, 129, 371 }, 0x01, LIMB_DONE,
    NULL
};

StandardLimb gBugSkelLimbsLimb_03542C = { 
    { 0, 0, 0 }, 0x02, LIMB_DONE,
    NULL
};

StandardLimb gBugSkelLimbsLimb_035438 = { 
    { 0, 0, 0 }, LIMB_DONE, 0x03,
    gBugLimb9WrapperWrapperDL
};

StandardLimb gBugSkelLimbsLimb_035444 = { 
    { 268, -29, -113 }, 0x04, 0x08,
    NULL
};

StandardLimb gBugSkelLimbsLimb_035450 = { 
    { 0, 0, 0 }, 0x05, LIMB_DONE,
    NULL
};

StandardLimb gBugSkelLimbsLimb_03545C = { 
    { 263, 0, 0 }, 0x06, 0x07,
    NULL
};

StandardLimb gBugSkelLimbsLimb_035468 = { 
    { 0, 0, 0 }, LIMB_DONE, LIMB_DONE,
    gBugLimb8WrapperWrapperDL
};

StandardLimb gBugSkelLimbsLimb_035474 = { 
    { 0, 0, 0 }, LIMB_DONE, LIMB_DONE,
    gBugLimb7WrapperWrapperDL
};

StandardLimb gBugSkelLimbsLimb_035480 = { 
    { 346, -29, -61 }, 0x09, 0x0D,
    NULL
};

StandardLimb gBugSkelLimbsLimb_03548C = { 
    { 0, 0, 0 }, 0x0A, LIMB_DONE,
    NULL
};

StandardLimb gBugSkelLimbsLimb_035498 = { 
    { 263, 0, 0 }, 0x0B, 0x0C,
    NULL
};

StandardLimb gBugSkelLimbsLimb_0354A4 = { 
    { 0, 0, 0 }, LIMB_DONE, LIMB_DONE,
    gBugLimb6WrapperWrapperDL
};

StandardLimb gBugSkelLimbsLimb_0354B0 = { 
    { 0, 0, 0 }, LIMB_DONE, LIMB_DONE,
    gBugLimb5WrapperWrapperDL
};

StandardLimb gBugSkelLimbsLimb_0354BC = { 
    { 346, -29, 61 }, 0x0E, 0x12,
    NULL
};

StandardLimb gBugSkelLimbsLimb_0354C8 = { 
    { 0, 0, 0 }, 0x0F, LIMB_DONE,
    NULL
};

StandardLimb gBugSkelLimbsLimb_0354D4 = { 
    { 263, 0, 0 }, 0x10, 0x11,
    NULL
};

StandardLimb gBugSkelLimbsLimb_0354E0 = { 
    { 0, 0, 0 }, LIMB_DONE, LIMB_DONE,
    gBugLimb2WrapperWrapperDL
};

StandardLimb gBugSkelLimbsLimb_0354EC = { 
    { 0, 0, 0 }, LIMB_DONE, LIMB_DONE,
    gBugLimb1WrapperWrapperDL
};

StandardLimb gBugSkelLimbsLimb_0354F8 = { 
    { 268, -29, 113 }, 0x13, LIMB_DONE,
    NULL
};

StandardLimb gBugSkelLimbsLimb_035504 = { 
    { 0, 0, 0 }, 0x14, LIMB_DONE,
    NULL
};

StandardLimb gBugSkelLimbsLimb_035510 = { 
    { 263, 0, 0 }, 0x15, 0x16,
    NULL
};

StandardLimb gBugSkelLimbsLimb_03551C = { 
    { 0, 0, 0 }, LIMB_DONE, LIMB_DONE,
    gBugLimb4WrapperWrapperDL
};

StandardLimb gBugSkelLimbsLimb_035528 = { 
    { 0, 0, 0 }, LIMB_DONE, LIMB_DONE,
    gBugLimb3WrapperWrapperDL
};

void* gBugSkelLimbs[] = {
    &gBugSkelLimbsLimb_035420,
    &gBugSkelLimbsLimb_03542C,
    &gBugSkelLimbsLimb_035438,
    &gBugSkelLimbsLimb_035444,
    &gBugSkelLimbsLimb_035450,
    &gBugSkelLimbsLimb_03545C,
    &gBugSkelLimbsLimb_035468,
    &gBugSkelLimbsLimb_035474,
    &gBugSkelLimbsLimb_035480,
    &gBugSkelLimbsLimb_03548C,
    &gBugSkelLimbsLimb_035498,
    &gBugSkelLimbsLimb_0354A4,
    &gBugSkelLimbsLimb_0354B0,
    &gBugSkelLimbsLimb_0354BC,
    &gBugSkelLimbsLimb_0354C8,
    &gBugSkelLimbsLimb_0354D4,
    &gBugSkelLimbsLimb_0354E0,
    &gBugSkelLimbsLimb_0354EC,
    &gBugSkelLimbsLimb_0354F8,
    &gBugSkelLimbsLimb_035504,
    &gBugSkelLimbsLimb_035510,
    &gBugSkelLimbsLimb_03551C,
    &gBugSkelLimbsLimb_035528,
};

SkeletonHeader gBugSkel = { 
    gBugSkelLimbs, ARRAY_COUNT(gBugSkelLimbs)
};

u8 gameplay_keep_possiblePadding_035598[] = {
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 
};

Vtx gameplay_keepVtx_0355A0[] = {
#include "assets/objects/gameplay_keep/gameplay_keepVtx_0355A0.vtx.inc"
};

Gfx gCuttableShrubStalkDL[] = {
    gsDPPipeSync(),
    gsDPSetTextureLUT(G_TT_NONE),
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsDPLoadTextureBlock(gCuttableShrubLeafTFragmentTex, G_IM_FMT_RGBA, G_IM_SIZ_16b, 32, 32, 0, G_TX_MIRROR |
                         G_TX_CLAMP, G_TX_MIRROR | G_TX_CLAMP, 5, 5, G_TX_NOLOD, G_TX_NOLOD),
    gsDPSetCombineLERP(TEXEL0, 0, SHADE, 0, 0, 0, 0, TEXEL0, COMBINED, 0, PRIMITIVE, 0, 0, 0, 0, COMBINED),
    gsDPSetRenderMode(G_RM_FOG_SHADE_A, G_RM_AA_ZB_TEX_EDGE2),
    gsSPClearGeometryMode(G_CULL_BACK | G_TEXTURE_GEN | G_TEXTURE_GEN_LINEAR),
    gsSPSetGeometryMode(G_FOG | G_LIGHTING),
    gsDPSetPrimColor(0, 0, 255, 255, 255, 255),
    gsSPVertex(gameplay_keepVtx_0355A0, 4, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsSPEndDisplayList(),
};

Vtx gameplay_keepVtx_035670[] = {
#include "assets/objects/gameplay_keep/gameplay_keepVtx_035670.vtx.inc"
};

Gfx gCuttableShrubTipDL[] = {
    gsDPPipeSync(),
    gsDPSetTextureLUT(G_TT_NONE),
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsDPLoadTextureBlock(gCuttableShrubLeafTFragmentTex, G_IM_FMT_RGBA, G_IM_SIZ_16b, 32, 32, 0, G_TX_MIRROR |
                         G_TX_CLAMP, G_TX_MIRROR | G_TX_CLAMP, 5, 5, G_TX_NOLOD, G_TX_NOLOD),
    gsDPSetCombineLERP(TEXEL0, 0, SHADE, 0, 0, 0, 0, TEXEL0, COMBINED, 0, PRIMITIVE, 0, 0, 0, 0, COMBINED),
    gsDPSetRenderMode(G_RM_FOG_SHADE_A, G_RM_AA_ZB_TEX_EDGE2),
    gsSPClearGeometryMode(G_CULL_BACK | G_TEXTURE_GEN | G_TEXTURE_GEN_LINEAR),
    gsSPSetGeometryMode(G_FOG | G_LIGHTING),
    gsDPSetPrimColor(0, 0, 255, 255, 255, 255),
    gsSPVertex(gameplay_keepVtx_035670, 3, 0),
    gsSP1Triangle(0, 1, 2, 0),
    gsSPEndDisplayList(),
};

u64 gCuttableShrubLeafTFragmentTex[] = {
#include "assets/objects/gameplay_keep/cuttable_shrub_leaf_fragment.rgba16.inc.c"
};

u64 gCuttableShrubTex[] = {
#include "assets/objects/gameplay_keep/cuttanble_shrub.rgba16.inc.c"
};

u64 gLensFlareCircleTex[] = {
#include "assets/objects/gameplay_keep/lens_flare_circle.i4.inc.c"
};

u64 gLensFlareRingTex[] = {
#include "assets/objects/gameplay_keep/lens_flare_ring.i4.inc.c"
};

Gfx gLensFlareCircleDL[] = {
    gsDPPipeSync(),
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsDPLoadTextureBlock_4b(gLensFlareCircleTex, G_IM_FMT_I, 64, 64, 0, G_TX_NOMIRROR | G_TX_WRAP, G_TX_NOMIRROR |
                            G_TX_WRAP, 6, 6, G_TX_NOLOD, G_TX_NOLOD),
    gsSPClearGeometryMode(G_CULL_BACK),
    gsSPVertex(gameplay_keepVtx_037800, 4, 0),
    gsSP2Triangles(0, 1, 2, 0, 1, 3, 2, 0),
    gsSPEndDisplayList(),
};

Gfx gLensFlareRingDL[] = {
    gsDPPipeSync(),
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsDPLoadTextureBlock_4b(gLensFlareRingTex, G_IM_FMT_I, 64, 64, 0, G_TX_NOMIRROR | G_TX_WRAP, G_TX_NOMIRROR |
                            G_TX_WRAP, 6, 6, G_TX_NOLOD, G_TX_NOLOD),
    gsSPClearGeometryMode(G_CULL_BACK),
    gsSPVertex(gameplay_keepVtx_037800, 4, 0),
    gsSP2Triangles(0, 1, 2, 0, 1, 3, 2, 0),
    gsSPEndDisplayList(),
};

Vtx gameplay_keepVtx_037800[] = {
#include "assets/objects/gameplay_keep/gameplay_keepVtx_037800.vtx.inc"
};

Gfx gEffSparklesDL[] = {
    gsDPLoadTextureBlock_4b(gEffSparklesTex, G_IM_FMT_I, 16, 16, 0, G_TX_NOMIRROR | G_TX_CLAMP, G_TX_NOMIRROR |
                            G_TX_CLAMP, 4, 4, G_TX_NOLOD, G_TX_NOLOD),
    gsDPSetCombineLERP(PRIMITIVE, ENVIRONMENT, TEXEL0, ENVIRONMENT, TEXEL0, 0, PRIMITIVE, 0, 0, 0, 0, COMBINED, 0, 0, 0,
                       COMBINED),
    gsDPSetRenderMode(G_RM_PASS, G_RM_ZB_CLD_SURF2),
    gsSPVertex(&gameplay_keepVtx_037800[4], 4, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsSPEndDisplayList(),
};

u64 gEffSparklesTex[] = {
#include "assets/objects/gameplay_keep/eff_sparkles.i4.inc.c"
};

u64 gEffUnknown13Tex[] = {
#include "assets/objects/gameplay_keep/eff_unknown_tex_13.i8.inc.c"
};

u64 gEffUnknown14Tex[] = {
#include "assets/objects/gameplay_keep/eff_unknown_tex_14.i8.inc.c"
};

Vtx gameplay_keepVtx_037D60[] = {
#include "assets/objects/gameplay_keep/gameplay_keepVtx_037D60.vtx.inc"
};

Gfx gHoverBootsCircleDL[] = {
    gsDPPipeSync(),
    gsDPSetTextureLUT(G_TT_NONE),
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsDPLoadTextureBlock(gEffUnknown13Tex, G_IM_FMT_I, G_IM_SIZ_8b, 16, 32, 0, G_TX_NOMIRROR | G_TX_CLAMP, G_TX_NOMIRROR
                         | G_TX_CLAMP, 4, 5, G_TX_NOLOD, 1),
    gsDPLoadMultiBlock(gEffUnknown14Tex, 0x0100, 1, G_IM_FMT_I, G_IM_SIZ_8b, 16, 32, 0, G_TX_MIRROR | G_TX_WRAP,
                       G_TX_NOMIRROR | G_TX_WRAP, 4, 5, 15, 14),
    gsDPSetCombineLERP(TEXEL1, PRIMITIVE, ENV_ALPHA, TEXEL0, 0, 0, 0, TEXEL0, PRIMITIVE, 0, COMBINED, ENVIRONMENT,
                       COMBINED, 0, PRIMITIVE, 0),
    gsDPSetRenderMode(G_RM_PASS, G_RM_ZB_CLD_SURF2),
    gsSPClearGeometryMode(G_CULL_BACK | G_FOG | G_LIGHTING | G_TEXTURE_GEN | G_TEXTURE_GEN_LINEAR),
    gsSPDisplayList(0x08000000),
    gsSPVertex(gameplay_keepVtx_037D60, 13, 0),
    gsSP2Triangles(0, 1, 2, 0, 3, 4, 2, 0),
    gsSP2Triangles(5, 6, 2, 0, 7, 8, 2, 0),
    gsSP2Triangles(9, 10, 2, 0, 11, 12, 2, 0),
    gsSPEndDisplayList(),
};

u64 gMoonTex[] = {
#include "assets/objects/gameplay_keep/moon.ia8.inc.c"
};

Gfx gMoonDL[] = {
    gsSPMatrix(0x01000000, G_MTX_NOPUSH | G_MTX_MUL | G_MTX_MODELVIEW),
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsDPPipeSync(),
    gsDPSetCombineLERP(PRIMITIVE, ENVIRONMENT, TEXEL0, ENVIRONMENT, PRIMITIVE, 0, TEXEL0, 0, PRIMITIVE, ENVIRONMENT,
                       TEXEL0, ENVIRONMENT, PRIMITIVE, 0, TEXEL0, 0),
    gsDPLoadTextureBlock(gMoonTex, G_IM_FMT_IA, G_IM_SIZ_8b, 64, 64, 0, G_TX_NOMIRROR | G_TX_WRAP, G_TX_NOMIRROR |
                         G_TX_WRAP, G_TX_NOMASK, G_TX_NOMASK, G_TX_NOLOD, G_TX_NOLOD),
    gsSPVertex(gameplay_keepVtx_038F70, 4, 0),
    gsSP2Triangles(0, 1, 2, 0, 1, 3, 2, 0),
    gsSPEndDisplayList(),
};

Vtx gameplay_keepVtx_038F70[] = {
#include "assets/objects/gameplay_keep/gameplay_keepVtx_038F70.vtx.inc"
};

u64 gUnknownCircle6Tex[] = {
#include "assets/objects/gameplay_keep/unknown_circle_6.i8.inc.c"
};

CamData gLargerCubeColCamDataList[] = {
    { 0x0000, 0, NULL },
};

SurfaceType gLargerCubeColSurfaceType[] = {
    { 0x00000000, 0x000007C0 },
};

CollisionPoly gLargerCubeColPolygons[] = {
    {0x0000, 0x0000, 0x0001, 0x0002, 0x0000, 0x7FFF, 0x0000, 0xE0C0},
    {0x0000, 0x0000, 0x0002, 0x0003, 0x0000, 0x7FFF, 0x0000, 0xE0C0},
    {0x0000, 0x0004, 0x0001, 0x0000, 0x8001, 0x0000, 0x0000, 0xF060},
    {0x0000, 0x0004, 0x0000, 0x0005, 0x8001, 0x0000, 0x0000, 0xF060},
    {0x0000, 0x0006, 0x0002, 0x0001, 0x0000, 0x0000, 0x7FFF, 0xF060},
    {0x0000, 0x0006, 0x0001, 0x0004, 0x0000, 0x0000, 0x7FFF, 0xF060},
    {0x0000, 0x0007, 0x0003, 0x0002, 0x7FFF, 0x0000, 0x0000, 0xF060},
    {0x0000, 0x0007, 0x0002, 0x0006, 0x7FFF, 0x0000, 0x0000, 0xF060},
    {0x0000, 0x0005, 0x0000, 0x0003, 0x0000, 0x0000, 0x8001, 0xF060},
    {0x0000, 0x0005, 0x0003, 0x0007, 0x0000, 0x0000, 0x8001, 0xF060},
    {0x0000, 0x0007, 0x0006, 0x0004, 0x0000, 0x8001, 0x0000, 0x0000},
    {0x0000, 0x0007, 0x0004, 0x0005, 0x0000, 0x8001, 0x0000, 0x0000},
};

Vec3s gLargerCubeColVertices[] = {
    {  -4000,   8000,  -4000 },
    {  -4000,   8000,   4000 },
    {   4000,   8000,   4000 },
    {   4000,   8000,  -4000 },
    {  -4000,      0,   4000 },
    {  -4000,      0,  -4000 },
    {   4000,      0,   4000 },
    {   4000,      0,  -4000 },
};

CollisionHeader gLargerCubeCol = { 
    { -4000, 0, -4000 },
    { 4000, 8000, 4000 },
    8, gLargerCubeColVertices,
    12, gLargerCubeColPolygons,
    gLargerCubeColSurfaceType,
    gLargerCubeColCamDataList,
    0, NULL
};

Vtx gameplay_keepVtx_0394E0[] = {
#include "assets/objects/gameplay_keep/gameplay_keepVtx_0394E0.vtx.inc"
};

Gfx gLiftableRockDL[] = {
    gsDPPipeSync(),
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsDPLoadTextureBlock(gUnknownStone1Tex, G_IM_FMT_RGBA, G_IM_SIZ_16b, 32, 32, 0, G_TX_NOMIRROR | G_TX_WRAP,
                         G_TX_NOMIRROR | G_TX_WRAP, 5, 5, G_TX_NOLOD, G_TX_NOLOD),
    gsDPSetCombineMode(G_CC_MODULATEI, G_CC_MODULATEI_PRIM2),
    gsDPSetRenderMode(G_RM_FOG_SHADE_A, G_RM_AA_ZB_OPA_SURF2),
    gsSPClearGeometryMode(G_TEXTURE_GEN | G_TEXTURE_GEN_LINEAR),
    gsSPSetGeometryMode(G_CULL_BACK | G_LIGHTING),
    gsDPSetPrimColor(0, 0, 255, 255, 255, 255),
    gsSPVertex(gameplay_keepVtx_0394E0, 24, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsSP2Triangles(4, 5, 6, 0, 4, 6, 7, 0),
    gsSP2Triangles(8, 9, 10, 0, 8, 10, 11, 0),
    gsSP2Triangles(12, 13, 14, 0, 12, 14, 15, 0),
    gsSP2Triangles(16, 17, 18, 0, 19, 16, 18, 0),
    gsSP2Triangles(20, 21, 22, 0, 20, 22, 23, 0),
    gsSPEndDisplayList(),
};

Vtx gameplay_keepVtx_039710[] = {
#include "assets/objects/gameplay_keep/gameplay_keepVtx_039710.vtx.inc"
};

Gfx gUnusedRockRectangularPrism1DL[] = {
    gsDPPipeSync(),
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsDPLoadTextureBlock(gUnknownStone1Tex, G_IM_FMT_RGBA, G_IM_SIZ_16b, 32, 32, 0, G_TX_NOMIRROR | G_TX_WRAP,
                         G_TX_NOMIRROR | G_TX_WRAP, 5, 5, G_TX_NOLOD, G_TX_NOLOD),
    gsDPSetCombineMode(G_CC_MODULATEI, G_CC_MODULATEI_PRIM2),
    gsDPSetRenderMode(G_RM_FOG_SHADE_A, G_RM_AA_ZB_OPA_SURF2),
    gsSPClearGeometryMode(G_TEXTURE_GEN | G_TEXTURE_GEN_LINEAR),
    gsSPSetGeometryMode(G_CULL_BACK | G_LIGHTING),
    gsDPSetPrimColor(0, 0, 255, 255, 255, 255),
    gsSPVertex(gameplay_keepVtx_039710, 24, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsSP2Triangles(4, 5, 6, 0, 4, 6, 7, 0),
    gsSP2Triangles(8, 9, 10, 0, 8, 10, 11, 0),
    gsSP2Triangles(12, 13, 14, 0, 12, 14, 15, 0),
    gsSP2Triangles(16, 17, 18, 0, 16, 18, 19, 0),
    gsSP2Triangles(20, 21, 22, 0, 20, 22, 23, 0),
    gsSPEndDisplayList(),
};

CamData gWideTallBlockColCamDataList[] = {
    { 0x0000, 0, NULL },
};

SurfaceType gWideTallBlockColSurfaceType[] = {
    { 0x00000000, 0x000007C0 },
    { 0x00200000, 0x000007C0 },
};

CollisionPoly gWideTallBlockColPolygons[] = {
    {0x0000, 0x0000, 0x0001, 0x0002, 0x0000, 0x7FFF, 0x0000, 0xD120},
    {0x0000, 0x0000, 0x0002, 0x0003, 0x0000, 0x7FFF, 0x0000, 0xD120},
    {0x0001, 0x0004, 0x0001, 0x0000, 0x8001, 0x0000, 0x0000, 0xF448},
    {0x0001, 0x0004, 0x0000, 0x0005, 0x8001, 0x0000, 0x0000, 0xF448},
    {0x0000, 0x0006, 0x0002, 0x0001, 0x0000, 0x0000, 0x7FFF, 0xE890},
    {0x0000, 0x0006, 0x0001, 0x0004, 0x0000, 0x0000, 0x7FFF, 0xE890},
    {0x0001, 0x0007, 0x0003, 0x0002, 0x7FFF, 0x0000, 0x0000, 0xF448},
    {0x0001, 0x0007, 0x0002, 0x0006, 0x7FFF, 0x0000, 0x0000, 0xF448},
    {0x0000, 0x0005, 0x0000, 0x0003, 0x0000, 0x0000, 0x8001, 0xE890},
    {0x0000, 0x0005, 0x0003, 0x0007, 0x0000, 0x0000, 0x8001, 0xE890},
    {0x0000, 0x0007, 0x0006, 0x0004, 0x0000, 0x8001, 0x0000, 0x0000},
    {0x0000, 0x0007, 0x0004, 0x0005, 0x0000, 0x8001, 0x0000, 0x0000},
};

Vec3s gWideTallBlockColVertices[] = {
    {  -3000,  12000,  -6000 },
    {  -3000,  12000,   6000 },
    {   3000,  12000,   6000 },
    {   3000,  12000,  -6000 },
    {  -3000,      0,   6000 },
    {  -3000,      0,  -6000 },
    {   3000,      0,   6000 },
    {   3000,      0,  -6000 },
};

CollisionHeader gWideTallBlockCol = { 
    { -3000, 0, -6000 },
    { 3000, 12000, 6000 },
    8, gWideTallBlockColVertices,
    12, gWideTallBlockColPolygons,
    gWideTallBlockColSurfaceType,
    gWideTallBlockColCamDataList,
    0, NULL
};

u8 gameplay_keep_possiblePadding_039A74[] = {
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 
};

Vtx gameplay_keepVtx_039A80[] = {
#include "assets/objects/gameplay_keep/gameplay_keepVtx_039A80.vtx.inc"
};

Gfx gFlatBlockDL[] = {
    gsDPPipeSync(),
    gsDPSetTextureLUT(G_TT_NONE),
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsDPLoadTextureBlock(gUnknownStone1Tex, G_IM_FMT_RGBA, G_IM_SIZ_16b, 32, 32, 0, G_TX_NOMIRROR | G_TX_WRAP,
                         G_TX_NOMIRROR | G_TX_WRAP, 5, 5, G_TX_NOLOD, G_TX_NOLOD),
    gsDPSetCombineLERP(TEXEL0, 0, SHADE, 0, 0, 0, 0, 1, COMBINED, 0, PRIMITIVE, 0, 0, 0, 0, COMBINED),
    gsDPSetRenderMode(G_RM_FOG_SHADE_A, G_RM_AA_ZB_OPA_SURF2),
    gsSPClearGeometryMode(G_LIGHTING | G_TEXTURE_GEN | G_TEXTURE_GEN_LINEAR),
    gsSPSetGeometryMode(G_CULL_BACK),
    gsDPSetPrimColor(0, 0, 255, 255, 255, 255),
    gsSPVertex(gameplay_keepVtx_039A80, 24, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsSP2Triangles(4, 5, 6, 0, 4, 6, 7, 0),
    gsSP2Triangles(8, 9, 10, 0, 8, 10, 11, 0),
    gsSP2Triangles(12, 13, 14, 0, 12, 14, 15, 0),
    gsSP2Triangles(16, 17, 18, 0, 16, 18, 19, 0),
    gsSP2Triangles(20, 21, 22, 0, 20, 22, 23, 0),
    gsSPEndDisplayList(),
};

u8 gameplay_keep_possiblePadding_039CB8[] = {
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 
};

CamData gTallBlockColCamDataList[] = {
    { 0x0000, 0, NULL },
};

SurfaceType gTallBlockColSurfaceType[] = {
    { 0x00000000, 0x000007C0 },
};

CollisionPoly gTallBlockColPolygons[] = {
    {0x0000, 0x0000, 0x0001, 0x0002, 0x0000, 0x7FFF, 0x0000, 0xF6A0},
    {0x0000, 0x0000, 0x0002, 0x0003, 0x0000, 0x7FFF, 0x0000, 0xF6A0},
    {0x0000, 0x0004, 0x0001, 0x0000, 0x8001, 0x0000, 0x0000, 0xFED4},
    {0x0000, 0x0004, 0x0000, 0x0005, 0x8001, 0x0000, 0x0000, 0xFED4},
    {0x0000, 0x0006, 0x0002, 0x0001, 0x0000, 0x0000, 0x7FFF, 0xFDA8},
    {0x0000, 0x0006, 0x0001, 0x0004, 0x0000, 0x0000, 0x7FFF, 0xFDA8},
    {0x0000, 0x0007, 0x0003, 0x0002, 0x7FFF, 0x0000, 0x0000, 0xFED4},
    {0x0000, 0x0007, 0x0002, 0x0006, 0x7FFF, 0x0000, 0x0000, 0xFED4},
    {0x0000, 0x0005, 0x0000, 0x0003, 0x0000, 0x0000, 0x8001, 0xFDA8},
    {0x0000, 0x0005, 0x0003, 0x0007, 0x0000, 0x0000, 0x8001, 0xFDA8},
    {0x0000, 0x0007, 0x0006, 0x0004, 0x0000, 0x8001, 0x0000, 0x0000},
    {0x0000, 0x0007, 0x0004, 0x0005, 0x0000, 0x8001, 0x0000, 0x0000},
};

Vec3s gTallBlockColVertices[] = {
    {   -300,   2400,   -600 },
    {   -300,   2400,    600 },
    {    300,   2400,    600 },
    {    300,   2400,   -600 },
    {   -300,      0,    600 },
    {   -300,      0,   -600 },
    {    300,      0,    600 },
    {    300,      0,   -600 },
};

CollisionHeader gTallBlockCol = { 
    { -300, 0, -600 },
    { 300, 2400, 600 },
    8, gTallBlockColVertices,
    12, gTallBlockColPolygons,
    gTallBlockColSurfaceType,
    gTallBlockColCamDataList,
    0, NULL
};

Vtx gameplay_keepVtx_039DF0[] = {
#include "assets/objects/gameplay_keep/gameplay_keepVtx_039DF0.vtx.inc"
};

Gfx gUnusedRockRectangularPrism3DL[] = {
    gsDPPipeSync(),
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsDPLoadTextureBlock(gUnknownStone2Tex, G_IM_FMT_RGBA, G_IM_SIZ_16b, 32, 32, 0, G_TX_NOMIRROR | G_TX_WRAP,
                         G_TX_MIRROR | G_TX_WRAP, 5, 5, G_TX_NOLOD, G_TX_NOLOD),
    gsDPSetCombineMode(G_CC_MODULATEI, G_CC_MODULATEI_PRIM2),
    gsDPSetRenderMode(G_RM_FOG_SHADE_A, G_RM_AA_ZB_OPA_SURF2),
    gsSPClearGeometryMode(G_TEXTURE_GEN | G_TEXTURE_GEN_LINEAR),
    gsSPSetGeometryMode(G_CULL_BACK | G_LIGHTING),
    gsDPSetPrimColor(0, 0, 255, 255, 255, 255),
    gsSPVertex(gameplay_keepVtx_039DF0, 24, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsSP2Triangles(4, 5, 6, 0, 4, 6, 7, 0),
    gsSP2Triangles(8, 9, 10, 0, 8, 10, 11, 0),
    gsSP2Triangles(12, 13, 14, 0, 12, 14, 15, 0),
    gsSP2Triangles(16, 17, 18, 0, 16, 18, 19, 0),
    gsSP2Triangles(20, 21, 22, 0, 20, 22, 23, 0),
    gsSPEndDisplayList(),
};

CamData gSmallerFlatBlockColCamDataList[] = {
    { 0x0000, 0, NULL },
};

SurfaceType gSmallerFlatBlockColSurfaceType[] = {
    { 0x00000000, 0x000007C0 },
};

CollisionPoly gSmallerFlatBlockColPolygons[] = {
    {0x0000, 0x0000, 0x0001, 0x0002, 0x0000, 0x7FFF, 0x0000, 0xFB50},
    {0x0000, 0x0000, 0x0002, 0x0003, 0x0000, 0x7FFF, 0x0000, 0xFB50},
    {0x0000, 0x0004, 0x0001, 0x0000, 0x0000, 0x0000, 0x8001, 0xF060},
    {0x0000, 0x0004, 0x0000, 0x0005, 0x0000, 0x0000, 0x8001, 0xF060},
    {0x0000, 0x0006, 0x0002, 0x0001, 0x8001, 0x0000, 0x0000, 0xF830},
    {0x0000, 0x0006, 0x0001, 0x0004, 0x8001, 0x0000, 0x0000, 0xF830},
    {0x0000, 0x0007, 0x0003, 0x0002, 0x0000, 0x0000, 0x7FFF, 0xF060},
    {0x0000, 0x0007, 0x0002, 0x0006, 0x0000, 0x0000, 0x7FFF, 0xF060},
    {0x0000, 0x0005, 0x0000, 0x0003, 0x7FFF, 0x0000, 0x0000, 0xF830},
    {0x0000, 0x0005, 0x0003, 0x0007, 0x7FFF, 0x0000, 0x0000, 0xF830},
    {0x0000, 0x0007, 0x0006, 0x0004, 0x0000, 0x8001, 0x0000, 0xFB50},
    {0x0000, 0x0007, 0x0004, 0x0005, 0x0000, 0x8001, 0x0000, 0xFB50},
};

Vec3s gSmallerFlatBlockColVertices[] = {
    {   2000,   1200,  -4000 },
    {  -2000,   1200,  -4000 },
    {  -2000,   1200,   4000 },
    {   2000,   1200,   4000 },
    {  -2000,  -1200,  -4000 },
    {   2000,  -1200,  -4000 },
    {  -2000,  -1200,   4000 },
    {   2000,  -1200,   4000 },
};

CollisionHeader gSmallerFlatBlockCol = { 
    { -2000, -1200, -4000 },
    { 2000, 1200, 4000 },
    8, gSmallerFlatBlockColVertices,
    12, gSmallerFlatBlockColPolygons,
    gSmallerFlatBlockColSurfaceType,
    gSmallerFlatBlockColCamDataList,
    0, NULL
};

Vtx gameplay_keepVtx_03A150[] = {
#include "assets/objects/gameplay_keep/gameplay_keepVtx_03A150.vtx.inc"
};

Gfx gFlatRotBlockDL[] = {
    gsDPPipeSync(),
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsDPLoadTextureBlock(gUnknownStone2Tex, G_IM_FMT_RGBA, G_IM_SIZ_16b, 32, 32, 0, G_TX_NOMIRROR | G_TX_WRAP,
                         G_TX_MIRROR | G_TX_WRAP, 5, 5, G_TX_NOLOD, G_TX_NOLOD),
    gsDPSetCombineMode(G_CC_MODULATEI, G_CC_MODULATEI_PRIM2),
    gsDPSetRenderMode(G_RM_FOG_SHADE_A, G_RM_AA_ZB_OPA_SURF2),
    gsSPClearGeometryMode(G_TEXTURE_GEN | G_TEXTURE_GEN_LINEAR),
    gsSPSetGeometryMode(G_CULL_BACK | G_LIGHTING),
    gsDPSetPrimColor(0, 0, 255, 255, 255, 255),
    gsSPVertex(gameplay_keepVtx_03A150, 24, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsSP2Triangles(4, 5, 6, 0, 4, 6, 7, 0),
    gsSP2Triangles(8, 9, 10, 0, 8, 10, 11, 0),
    gsSP2Triangles(12, 13, 14, 0, 12, 14, 15, 0),
    gsSP2Triangles(16, 17, 18, 0, 16, 18, 19, 0),
    gsSP2Triangles(20, 21, 22, 0, 20, 22, 23, 0),
    gsSPEndDisplayList(),
};

CamData gLargerFlatBlockColCamDataList[] = {
    { 0x0000, 0, NULL },
};

SurfaceType gLargerFlatBlockColSurfaceType[] = {
    { 0x00000000, 0x000007C0 },
};

CollisionPoly gLargerFlatBlockColPolygons[] = {
    {0x0000, 0x0000, 0x0001, 0x0002, 0x0000, 0x7FFF, 0x0000, 0xF8F8},
    {0x0000, 0x0000, 0x0002, 0x0003, 0x0000, 0x7FFF, 0x0000, 0xF8F8},
    {0x0000, 0x0004, 0x0001, 0x0000, 0x0000, 0x0000, 0x8001, 0xE4A8},
    {0x0000, 0x0004, 0x0000, 0x0005, 0x0000, 0x0000, 0x8001, 0xE4A8},
    {0x0000, 0x0006, 0x0002, 0x0001, 0x8001, 0x0000, 0x0000, 0xF448},
    {0x0000, 0x0006, 0x0001, 0x0004, 0x8001, 0x0000, 0x0000, 0xF448},
    {0x0000, 0x0007, 0x0003, 0x0002, 0x0000, 0x0000, 0x7FFF, 0xE4A8},
    {0x0000, 0x0007, 0x0002, 0x0006, 0x0000, 0x0000, 0x7FFF, 0xE4A8},
    {0x0000, 0x0005, 0x0000, 0x0003, 0x7FFF, 0x0000, 0x0000, 0xF448},
    {0x0000, 0x0005, 0x0003, 0x0007, 0x7FFF, 0x0000, 0x0000, 0xF448},
    {0x0000, 0x0007, 0x0006, 0x0004, 0x0000, 0x8001, 0x0000, 0xF8F8},
    {0x0000, 0x0007, 0x0004, 0x0005, 0x0000, 0x8001, 0x0000, 0xF8F8},
};

Vec3s gLargerFlatBlockColVertices[] = {
    {   3000,   1800,  -7000 },
    {  -3000,   1800,  -7000 },
    {  -3000,   1800,   7000 },
    {   3000,   1800,   7000 },
    {  -3000,  -1800,  -7000 },
    {   3000,  -1800,  -7000 },
    {  -3000,  -1800,   7000 },
    {   3000,  -1800,   7000 },
};

CollisionHeader gLargerFlatBlockCol = { 
    { -3000, -1800, -7000 },
    { 3000, 1800, 7000 },
    8, gLargerFlatBlockColVertices,
    12, gLargerFlatBlockColPolygons,
    gLargerFlatBlockColSurfaceType,
    gLargerFlatBlockColCamDataList,
    0, NULL
};

Vtx gameplay_keepVtx_03A4B0[] = {
#include "assets/objects/gameplay_keep/gameplay_keepVtx_03A4B0.vtx.inc"
};

Gfx gSmallCubeDL[] = {
    gsDPPipeSync(),
    gsDPSetTextureLUT(G_TT_NONE),
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsDPLoadTextureBlock(gUnknownStone1Tex, G_IM_FMT_RGBA, G_IM_SIZ_16b, 32, 32, 0, G_TX_NOMIRROR | G_TX_WRAP,
                         G_TX_NOMIRROR | G_TX_WRAP, 5, 5, G_TX_NOLOD, G_TX_NOLOD),
    gsDPSetCombineLERP(TEXEL0, 0, SHADE, 0, 0, 0, 0, 1, COMBINED, 0, PRIMITIVE, 0, 0, 0, 0, COMBINED),
    gsDPSetRenderMode(G_RM_FOG_SHADE_A, G_RM_AA_ZB_OPA_SURF2),
    gsSPClearGeometryMode(G_LIGHTING | G_TEXTURE_GEN | G_TEXTURE_GEN_LINEAR),
    gsSPSetGeometryMode(G_CULL_BACK),
    gsDPSetPrimColor(0, 0, 255, 255, 255, 255),
    gsSPVertex(gameplay_keepVtx_03A4B0, 24, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsSP2Triangles(4, 5, 6, 0, 4, 6, 7, 0),
    gsSP2Triangles(8, 9, 10, 0, 8, 10, 11, 0),
    gsSP2Triangles(12, 13, 14, 0, 12, 14, 15, 0),
    gsSP2Triangles(16, 17, 18, 0, 16, 18, 19, 0),
    gsSP2Triangles(20, 21, 22, 0, 20, 22, 23, 0),
    gsSPEndDisplayList(),
};

u8 gameplay_keep_possiblePadding_03A6E8[] = {
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 
};

CamData gSmallerCubeColCamDataList[] = {
    { 0x0000, 0, NULL },
};

SurfaceType gSmallerCubeColSurfaceType[] = {
    { 0x00000000, 0x000007C0 },
};

CollisionPoly gSmallerCubeColPolygons[] = {
    {0x0000, 0x0000, 0x0001, 0x0002, 0x0000, 0x7FFF, 0x0000, 0xFDA8},
    {0x0000, 0x0000, 0x0002, 0x0003, 0x0000, 0x7FFF, 0x0000, 0xFDA8},
    {0x0000, 0x0004, 0x0001, 0x0000, 0x8001, 0x0000, 0x0000, 0xFED4},
    {0x0000, 0x0004, 0x0000, 0x0005, 0x8001, 0x0000, 0x0000, 0xFED4},
    {0x0000, 0x0006, 0x0002, 0x0001, 0x0000, 0x0000, 0x7FFF, 0xFED4},
    {0x0000, 0x0006, 0x0001, 0x0004, 0x0000, 0x0000, 0x7FFF, 0xFED4},
    {0x0000, 0x0007, 0x0003, 0x0002, 0x7FFF, 0x0000, 0x0000, 0xFED4},
    {0x0000, 0x0007, 0x0002, 0x0006, 0x7FFF, 0x0000, 0x0000, 0xFED4},
    {0x0000, 0x0005, 0x0000, 0x0003, 0x0000, 0x0000, 0x8001, 0xFED4},
    {0x0000, 0x0005, 0x0003, 0x0007, 0x0000, 0x0000, 0x8001, 0xFED4},
    {0x0000, 0x0007, 0x0006, 0x0004, 0x0000, 0x8001, 0x0000, 0x0000},
    {0x0000, 0x0007, 0x0004, 0x0005, 0x0000, 0x8001, 0x0000, 0x0000},
};

Vec3s gSmallerCubeColVertices[] = {
    {   -300,    600,   -300 },
    {   -300,    600,    300 },
    {    300,    600,    300 },
    {    300,    600,   -300 },
    {   -300,      0,    300 },
    {   -300,      0,   -300 },
    {    300,      0,    300 },
    {    300,      0,   -300 },
};

CollisionHeader gSmallerCubeCol = { 
    { -300, 0, -300 },
    { 300, 600, 300 },
    8, gSmallerCubeColVertices,
    12, gSmallerCubeColPolygons,
    gSmallerCubeColSurfaceType,
    gSmallerCubeColCamDataList,
    0, NULL
};

Vtx gameplay_keepVtx_03A820[] = {
#include "assets/objects/gameplay_keep/gameplay_keepVtx_03A820.vtx.inc"
};

Gfx gTreeStumpDL[] = {
    gsDPPipeSync(),
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsDPLoadTextureBlock(gUnusedTreeStumpBarkTex, G_IM_FMT_RGBA, G_IM_SIZ_16b, 32, 32, 0, G_TX_NOMIRROR | G_TX_WRAP,
                         G_TX_NOMIRROR | G_TX_WRAP, 5, 5, G_TX_NOLOD, G_TX_NOLOD),
    gsDPSetCombineMode(G_CC_MODULATEI, G_CC_MODULATEI_PRIM2),
    gsDPSetRenderMode(G_RM_FOG_SHADE_A, G_RM_AA_ZB_OPA_SURF2),
    gsSPClearGeometryMode(G_TEXTURE_GEN | G_TEXTURE_GEN_LINEAR),
    gsSPSetGeometryMode(G_CULL_BACK | G_LIGHTING),
    gsDPSetPrimColor(0, 0, 255, 255, 255, 255),
    gsSPVertex(gameplay_keepVtx_03A820, 20, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsSP2Triangles(4, 5, 6, 0, 4, 6, 7, 0),
    gsSP2Triangles(8, 9, 10, 0, 8, 10, 11, 0),
    gsSP2Triangles(12, 13, 14, 0, 12, 14, 15, 0),
    gsSP2Triangles(16, 17, 18, 0, 16, 18, 19, 0),
    gsDPPipeSync(),
    gsDPLoadTextureBlock(gUnusedTreeStumpTopTex, G_IM_FMT_RGBA, G_IM_SIZ_16b, 32, 32, 0, G_TX_MIRROR | G_TX_WRAP,
                         G_TX_MIRROR | G_TX_WRAP, 5, 5, G_TX_NOLOD, G_TX_NOLOD),
    gsDPSetCombineMode(G_CC_MODULATEI_PRIM, G_CC_PASS2),
    gsSPClearGeometryMode(G_LIGHTING),
    gsSPVertex(&gameplay_keepVtx_03A820[20], 5, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsSP1Triangle(0, 3, 4, 0),
    gsSPEndDisplayList(),
};

Vtx gameplay_keepVtx_03AAC0[] = {
#include "assets/objects/gameplay_keep/gameplay_keepVtx_03AAC0.vtx.inc"
};

Gfx gGrassBladesDL[] = {
    gsDPPipeSync(),
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsDPLoadTextureBlock(gUnusedGrassBladesTex, G_IM_FMT_RGBA, G_IM_SIZ_16b, 64, 32, 0, G_TX_MIRROR | G_TX_WRAP,
                         G_TX_MIRROR | G_TX_WRAP, 6, 5, G_TX_NOLOD, G_TX_NOLOD),
    gsDPSetCombineMode(G_CC_MODULATEIA_PRIM, G_CC_PASS2),
    gsDPSetRenderMode(G_RM_FOG_SHADE_A, G_RM_AA_ZB_TEX_EDGE2),
    gsSPClearGeometryMode(G_CULL_BACK | G_LIGHTING | G_TEXTURE_GEN | G_TEXTURE_GEN_LINEAR),
    gsDPSetPrimColor(0, 0, 255, 255, 255, 255),
    gsSPVertex(gameplay_keepVtx_03AAC0, 8, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsSP2Triangles(4, 5, 6, 0, 4, 6, 7, 0),
    gsDPPipeSync(),
    gsSPSetGeometryMode(G_CULL_BACK),
    gsSPVertex(&gameplay_keepVtx_03AAC0[8], 4, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsSPEndDisplayList(),
};

u8 gameplay_keep_possiblePadding_03AC28[] = {
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 
};

u64 gHeartShapeTex[] = {
#include "assets/objects/gameplay_keep/heart_shape.i8.inc.c"
};

Vtx gameplay_keepVtx_03AD30[] = {
#include "assets/objects/gameplay_keep/gameplay_keepVtx_03AD30.vtx.inc"
};

Gfx gHeartPieceInteriorDL[] = {
    gsDPPipeSync(),
    gsDPSetTextureLUT(G_TT_NONE),
    gsSPTexture(0x09C4, 0x09C4, 0, G_TX_RENDERTILE, G_ON),
    gsDPLoadTextureBlock(gEffUnknown10Tex, G_IM_FMT_I, G_IM_SIZ_8b, 32, 32, 0, G_TX_NOMIRROR | G_TX_WRAP, G_TX_NOMIRROR
                         | G_TX_WRAP, 5, 5, G_TX_NOLOD, G_TX_NOLOD),
    gsDPSetCombineLERP(TEXEL0, PRIMITIVE, ENV_ALPHA, TEXEL0, 0, 0, 0, TEXEL0, PRIMITIVE, ENVIRONMENT, COMBINED,
                       ENVIRONMENT, 0, 0, 0, COMBINED),
    gsDPSetRenderMode(G_RM_PASS, G_RM_AA_ZB_XLU_SURF2),
    gsSPClearGeometryMode(G_CULL_BACK | G_FOG),
    gsSPSetGeometryMode(G_LIGHTING | G_TEXTURE_GEN | G_TEXTURE_GEN_LINEAR),
    gsDPSetPrimColor(0, 0, 255, 255, 255, 255),
    gsDPSetEnvColor(0, 100, 255, 128),
    gsSPVertex(gameplay_keepVtx_03AD30, 3, 0),
    gsSP1Triangle(0, 1, 2, 0),
    gsSPVertex(&gameplay_keepVtx_03AD30[3], 32, 0),
    gsSP2Triangles(0, 1, 2, 0, 2, 3, 0, 0),
    gsSP2Triangles(0, 3, 4, 0, 5, 4, 3, 0),
    gsSP2Triangles(6, 5, 3, 0, 7, 5, 6, 0),
    gsSP2Triangles(8, 5, 7, 0, 8, 7, 9, 0),
    gsSP2Triangles(7, 10, 9, 0, 9, 10, 11, 0),
    gsSP2Triangles(9, 11, 12, 0, 11, 13, 12, 0),
    gsSP2Triangles(14, 13, 11, 0, 15, 13, 14, 0),
    gsSP2Triangles(15, 16, 13, 0, 17, 15, 18, 0),
    gsSP2Triangles(17, 16, 15, 0, 19, 17, 20, 0),
    gsSP2Triangles(17, 18, 20, 0, 21, 22, 23, 0),
    gsSP2Triangles(24, 23, 22, 0, 23, 25, 21, 0),
    gsSP2Triangles(25, 26, 21, 0, 26, 27, 21, 0),
    gsSP2Triangles(21, 28, 22, 0, 21, 29, 28, 0),
    gsSP1Triangle(21, 30, 29, 0),
    gsSPVertex(&gameplay_keepVtx_03AD30[34], 10, 0),
    gsSP2Triangles(0, 1, 2, 0, 1, 3, 2, 0),
    gsSP2Triangles(0, 4, 1, 0, 0, 5, 4, 0),
    gsSP2Triangles(0, 6, 5, 0, 0, 2, 7, 0),
    gsSP2Triangles(8, 0, 7, 0, 8, 9, 0, 0),
    gsDPPipeSync(),
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsDPLoadTextureBlock(gHeartShapeTex, G_IM_FMT_I, G_IM_SIZ_8b, 16, 16, 0, G_TX_NOMIRROR | G_TX_CLAMP, G_TX_NOMIRROR |
                         G_TX_CLAMP, 4, 4, G_TX_NOLOD, G_TX_NOLOD),
    gsSPClearGeometryMode(G_LIGHTING | G_TEXTURE_GEN | G_TEXTURE_GEN_LINEAR),
    gsDPSetCombineMode(G_CC_MODULATEIDECALA_PRIM, G_CC_PASS2),
    gsDPSetPrimColor(0, 0, 200, 0, 100, 255),
    gsSPVertex(&gameplay_keepVtx_03AD30[44], 4, 0),
    gsSP2Triangles(0, 1, 2, 0, 2, 3, 0, 0),
    gsSPEndDisplayList(),
};

u8 gameplay_keep_possiblePadding_03B1D8[] = {
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 
};

Vtx gameplay_keepVtx_03B1E0[] = {
#include "assets/objects/gameplay_keep/gameplay_keepVtx_03B1E0.vtx.inc"
};

Gfx gHeartPieceExteriorDL[] = {
    gsDPPipeSync(),
    gsDPSetTextureLUT(G_TT_NONE),
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsDPLoadTextureBlock(gHilite2Tex, G_IM_FMT_RGBA, G_IM_SIZ_16b, 32, 32, 0, G_TX_NOMIRROR | G_TX_WRAP, G_TX_NOMIRROR |
                         G_TX_WRAP, 5, 5, G_TX_NOLOD, G_TX_NOLOD),
    gsDPSetCombineLERP(TEXEL0, 0, SHADE, 0, 0, 0, 0, TEXEL0, COMBINED, 0, PRIMITIVE, 0, 0, 0, 0, COMBINED),
    gsDPSetRenderMode(G_RM_FOG_SHADE_A, G_RM_AA_ZB_OPA_SURF2),
    gsSPClearGeometryMode(G_CULL_BACK | G_TEXTURE_GEN | G_TEXTURE_GEN_LINEAR),
    gsSPSetGeometryMode(G_LIGHTING),
    gsDPSetPrimColor(0, 0, 255, 255, 255, 255),
    gsSPVertex(gameplay_keepVtx_03B1E0, 32, 0),
    gsSP2Triangles(0, 1, 2, 0, 2, 3, 0, 0),
    gsSP2Triangles(4, 5, 6, 0, 6, 7, 4, 0),
    gsSP2Triangles(8, 9, 10, 0, 10, 11, 8, 0),
    gsSP2Triangles(12, 13, 14, 0, 14, 15, 12, 0),
    gsSP2Triangles(16, 17, 18, 0, 18, 19, 16, 0),
    gsSP2Triangles(20, 21, 22, 0, 22, 23, 20, 0),
    gsSP2Triangles(24, 25, 26, 0, 26, 27, 24, 0),
    gsSP2Triangles(28, 29, 30, 0, 30, 31, 28, 0),
    gsSPVertex(&gameplay_keepVtx_03B1E0[32], 32, 0),
    gsSP2Triangles(0, 1, 2, 0, 2, 3, 0, 0),
    gsSP2Triangles(4, 5, 6, 0, 6, 7, 4, 0),
    gsSP2Triangles(8, 9, 10, 0, 10, 11, 8, 0),
    gsSP2Triangles(12, 13, 14, 0, 14, 15, 12, 0),
    gsSP2Triangles(16, 17, 18, 0, 18, 19, 16, 0),
    gsSP2Triangles(20, 21, 22, 0, 22, 23, 20, 0),
    gsSP2Triangles(24, 25, 26, 0, 26, 27, 24, 0),
    gsSP2Triangles(28, 29, 30, 0, 30, 31, 28, 0),
    gsSPVertex(&gameplay_keepVtx_03B1E0[64], 16, 0),
    gsSP2Triangles(0, 1, 2, 0, 2, 3, 0, 0),
    gsSP2Triangles(4, 5, 6, 0, 6, 7, 4, 0),
    gsSP2Triangles(8, 9, 10, 0, 10, 11, 8, 0),
    gsSP2Triangles(12, 13, 14, 0, 14, 15, 12, 0),
    gsSPEndDisplayList(),
};

Gfx gHeartContainerInteriorDL[] = {
    gsDPPipeSync(),
    gsDPSetTextureLUT(G_TT_NONE),
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsDPLoadTextureBlock(gRupeeLightRedTex, G_IM_FMT_RGBA, G_IM_SIZ_16b, 4, 4, 0, G_TX_NOMIRROR | G_TX_WRAP,
                         G_TX_NOMIRROR | G_TX_WRAP, 2, 2, G_TX_NOLOD, G_TX_NOLOD),
    gsDPSetCombineLERP(TEXEL0, 0, SHADE, 0, TEXEL0, 0, PRIMITIVE, 0, COMBINED, 0, PRIMITIVE, 0, 0, 0, 0, COMBINED),
    gsDPSetRenderMode(G_RM_FOG_SHADE_A, G_RM_AA_ZB_XLU_SURF2),
    gsSPClearGeometryMode(G_TEXTURE_GEN | G_TEXTURE_GEN_LINEAR),
    gsSPSetGeometryMode(G_CULL_BACK | G_LIGHTING),
    gsDPSetPrimColor(0, 0, 255, 255, 255, 229),
    gsSPVertex(&gameplay_keepVtx_03B1E0[80], 32, 0),
    gsSP2Triangles(0, 1, 2, 0, 3, 4, 5, 0),
    gsSP2Triangles(6, 7, 8, 0, 9, 10, 11, 0),
    gsSP2Triangles(12, 13, 14, 0, 15, 16, 17, 0),
    gsSP2Triangles(18, 19, 20, 0, 21, 22, 23, 0),
    gsSP2Triangles(21, 23, 24, 0, 25, 26, 27, 0),
    gsSP2Triangles(25, 27, 28, 0, 29, 30, 31, 0),
    gsSPVertex(&gameplay_keepVtx_03B1E0[112], 32, 0),
    gsSP2Triangles(0, 1, 2, 0, 3, 4, 5, 0),
    gsSP2Triangles(3, 5, 6, 0, 7, 8, 9, 0),
    gsSP2Triangles(7, 9, 10, 0, 11, 12, 13, 0),
    gsSP2Triangles(14, 15, 16, 0, 17, 18, 19, 0),
    gsSP2Triangles(20, 21, 22, 0, 23, 24, 25, 0),
    gsSP2Triangles(26, 27, 28, 0, 29, 30, 31, 0),
    gsSPVertex(&gameplay_keepVtx_03B1E0[144], 12, 0),
    gsSP2Triangles(0, 1, 2, 0, 3, 4, 5, 0),
    gsSP2Triangles(6, 7, 8, 0, 9, 10, 11, 0),
    gsSPEndDisplayList(),
};

Vtx gameplay_keepVtx_03BDE0[] = {
#include "assets/objects/gameplay_keep/gameplay_keepVtx_03BDE0.vtx.inc"
};

Gfx gSignRectangularDL[] = {
    gsDPPipeSync(),
    gsDPSetTextureLUT(G_TT_NONE),
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsDPLoadTextureBlock(gSignRectangularSideTex, G_IM_FMT_RGBA, G_IM_SIZ_16b, 32, 16, 0, G_TX_MIRROR | G_TX_WRAP,
                         G_TX_MIRROR | G_TX_WRAP, 5, 4, G_TX_NOLOD, G_TX_NOLOD),
    gsDPSetCombineLERP(TEXEL0, 0, SHADE, 0, 0, 0, 0, 1, COMBINED, 0, PRIMITIVE, 0, 0, 0, 0, COMBINED),
    gsDPSetRenderMode(G_RM_FOG_SHADE_A, G_RM_AA_ZB_OPA_SURF2),
    gsSPClearGeometryMode(G_TEXTURE_GEN | G_TEXTURE_GEN_LINEAR),
    gsSPSetGeometryMode(G_CULL_BACK | G_FOG | G_LIGHTING),
    gsDPSetPrimColor(0, 0, 255, 255, 255, 255),
    gsSPVertex(gameplay_keepVtx_03BDE0, 8, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsSP2Triangles(4, 5, 6, 0, 4, 6, 7, 0),
    gsDPPipeSync(),
    gsDPLoadTextureBlock(gSignPostWoodTex, G_IM_FMT_RGBA, G_IM_SIZ_16b, 64, 8, 0, G_TX_NOMIRROR | G_TX_WRAP,
                         G_TX_NOMIRROR | G_TX_WRAP, 6, 3, G_TX_NOLOD, G_TX_NOLOD),
    gsSPVertex(&gameplay_keepVtx_03BDE0[8], 4, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsDPPipeSync(),
    gsDPLoadTextureBlock(gSignRectangularSideTex, G_IM_FMT_RGBA, G_IM_SIZ_16b, 32, 16, 0, G_TX_MIRROR | G_TX_WRAP,
                         G_TX_MIRROR | G_TX_WRAP, 5, 4, G_TX_NOLOD, G_TX_NOLOD),
    gsSPVertex(&gameplay_keepVtx_03BDE0[12], 4, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsDPPipeSync(),
    gsDPLoadTextureBlock(gSignPostWoodTex, G_IM_FMT_RGBA, G_IM_SIZ_16b, 64, 8, 0, G_TX_NOMIRROR | G_TX_WRAP,
                         G_TX_NOMIRROR | G_TX_WRAP, 6, 3, G_TX_NOLOD, G_TX_NOLOD),
    gsSPVertex(&gameplay_keepVtx_03BDE0[16], 4, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsDPPipeSync(),
    gsDPLoadTextureBlock(gSignRectangularFrontTex, G_IM_FMT_RGBA, G_IM_SIZ_16b, 32, 16, 0, G_TX_MIRROR | G_TX_WRAP,
                         G_TX_MIRROR | G_TX_WRAP, 5, 4, G_TX_NOLOD, G_TX_NOLOD),
    gsSPVertex(&gameplay_keepVtx_03BDE0[20], 4, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsDPPipeSync(),
    gsDPLoadTextureBlock(gSignRectangularSideTex, G_IM_FMT_RGBA, G_IM_SIZ_16b, 32, 16, 0, G_TX_MIRROR | G_TX_WRAP,
                         G_TX_MIRROR | G_TX_WRAP, 5, 4, G_TX_NOLOD, G_TX_NOLOD),
    gsSPVertex(&gameplay_keepVtx_03BDE0[24], 11, 0),
    gsSP2Triangles(0, 1, 2, 0, 3, 4, 5, 0),
    gsSP2Triangles(3, 5, 6, 0, 7, 8, 9, 0),
    gsSP1Triangle(7, 9, 10, 0),
    gsDPPipeSync(),
    gsDPLoadTextureBlock(gSignPostWoodTex, G_IM_FMT_RGBA, G_IM_SIZ_16b, 64, 8, 0, G_TX_NOMIRROR | G_TX_WRAP,
                         G_TX_NOMIRROR | G_TX_WRAP, 6, 3, G_TX_NOLOD, G_TX_NOLOD),
    gsSPVertex(&gameplay_keepVtx_03BDE0[35], 4, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsSPEndDisplayList(),
};

u8 gameplay_keep_possiblePadding_03C2D8[] = {
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 
};

Vtx gameplay_keepVtx_03C2E0[] = {
#include "assets/objects/gameplay_keep/gameplay_keepVtx_03C2E0.vtx.inc"
};

Gfx gSignDirectionalDL[] = {
    gsDPPipeSync(),
    gsDPSetTextureLUT(G_TT_NONE),
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsDPLoadTextureBlock(gSignLetteringTex, G_IM_FMT_RGBA, G_IM_SIZ_16b, 64, 32, 0, G_TX_MIRROR | G_TX_WRAP, G_TX_MIRROR
                         | G_TX_WRAP, 6, 5, G_TX_NOLOD, G_TX_NOLOD),
    gsDPSetCombineLERP(TEXEL0, 0, SHADE, 0, 0, 0, 0, 1, COMBINED, 0, PRIMITIVE, 0, 0, 0, 0, COMBINED),
    gsDPSetRenderMode(G_RM_FOG_SHADE_A, G_RM_AA_ZB_OPA_SURF2),
    gsSPClearGeometryMode(G_TEXTURE_GEN | G_TEXTURE_GEN_LINEAR),
    gsSPSetGeometryMode(G_CULL_BACK | G_FOG | G_LIGHTING),
    gsDPSetPrimColor(0, 0, 255, 255, 255, 255),
    gsSPVertex(gameplay_keepVtx_03C2E0, 5, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 3, 1, 0),
    gsSP1Triangle(0, 4, 3, 0),
    gsDPPipeSync(),
    gsDPLoadTextureBlock(gSignPostWoodTex, G_IM_FMT_RGBA, G_IM_SIZ_16b, 64, 8, 0, G_TX_NOMIRROR | G_TX_WRAP,
                         G_TX_NOMIRROR | G_TX_WRAP, 6, 3, G_TX_NOLOD, G_TX_NOLOD),
    gsSPVertex(&gameplay_keepVtx_03C2E0[5], 4, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsDPPipeSync(),
    gsDPLoadTextureBlock(gSignLetteringTex, G_IM_FMT_RGBA, G_IM_SIZ_16b, 64, 32, 0, G_TX_MIRROR | G_TX_WRAP, G_TX_MIRROR
                         | G_TX_WRAP, 6, 5, G_TX_NOLOD, G_TX_NOLOD),
    gsSPVertex(&gameplay_keepVtx_03C2E0[9], 4, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsDPPipeSync(),
    gsDPLoadTextureBlock(gSignPostWoodTex, G_IM_FMT_RGBA, G_IM_SIZ_16b, 64, 8, 0, G_TX_NOMIRROR | G_TX_WRAP,
                         G_TX_NOMIRROR | G_TX_WRAP, 6, 3, G_TX_NOLOD, G_TX_NOLOD),
    gsSPVertex(&gameplay_keepVtx_03C2E0[13], 4, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsDPPipeSync(),
    gsDPLoadTextureBlock(gSignLetteringTex, G_IM_FMT_RGBA, G_IM_SIZ_16b, 64, 32, 0, G_TX_MIRROR | G_TX_WRAP, G_TX_MIRROR
                         | G_TX_WRAP, 6, 5, G_TX_NOLOD, G_TX_NOLOD),
    gsSPVertex(&gameplay_keepVtx_03C2E0[17], 13, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsSP2Triangles(4, 5, 6, 0, 4, 6, 7, 0),
    gsSP2Triangles(8, 9, 10, 0, 8, 11, 9, 0),
    gsSP1Triangle(8, 12, 11, 0),
    gsDPPipeSync(),
    gsDPLoadTextureBlock(gSignRectangularSideTex, G_IM_FMT_RGBA, G_IM_SIZ_16b, 32, 16, 0, G_TX_MIRROR | G_TX_WRAP,
                         G_TX_MIRROR | G_TX_WRAP, 5, 4, G_TX_NOLOD, G_TX_NOLOD),
    gsSPVertex(&gameplay_keepVtx_03C2E0[30], 3, 0),
    gsSP1Triangle(0, 1, 2, 0),
    gsDPPipeSync(),
    gsDPSetPrimColor(0, 0, 216, 216, 216, 255),
    gsSPVertex(&gameplay_keepVtx_03C2E0[33], 8, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsSP2Triangles(4, 5, 6, 0, 4, 6, 7, 0),
    gsDPPipeSync(),
    gsDPLoadTextureBlock(gSignPostWoodTex, G_IM_FMT_RGBA, G_IM_SIZ_16b, 64, 8, 0, G_TX_NOMIRROR | G_TX_WRAP,
                         G_TX_NOMIRROR | G_TX_WRAP, 6, 3, G_TX_NOLOD, G_TX_NOLOD),
    gsDPSetPrimColor(0, 0, 255, 255, 255, 255),
    gsSPVertex(&gameplay_keepVtx_03C2E0[41], 4, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsSPEndDisplayList(),
};

u64 gDropArrows2Tex[] = {
#include "assets/objects/gameplay_keep/drop_arrows_2.rgba16.inc.c"
};

u64 gDropArrows1Tex[] = {
#include "assets/objects/gameplay_keep/drop_arrows_1.rgba16.inc.c"
};

u64 gDropArrows3Tex[] = {
#include "assets/objects/gameplay_keep/drop_arrows_3.rgba16.inc.c"
};

u64 gDropBombTex[] = {
#include "assets/objects/gameplay_keep/drop_bomb.rgba16.inc.c"
};

u64 gDropRecoveryHeartTex[] = {
#include "assets/objects/gameplay_keep/drop_recovery_heart.rgba16.inc.c"
};

Gfx gItemDropDL[] = {
    gsDPPipeSync(),
    gsSPMatrix(0x01000000, G_MTX_NOPUSH | G_MTX_MUL | G_MTX_MODELVIEW),
    gsDPSetTexturePersp(G_TP_PERSP),
    gsDPSetTextureLOD(G_TL_TILE),
    gsDPSetTextureFilter(G_TF_BILERP),
    gsDPSetTextureConvert(G_TC_FILT),
    gsDPSetTextureLUT(G_TT_NONE),
    gsDPLoadTextureBlock(0x08000000, G_IM_FMT_RGBA, G_IM_SIZ_16b, 32, 32, 0, G_TX_NOMIRROR | G_TX_WRAP, G_TX_NOMIRROR |
                         G_TX_WRAP, G_TX_NOMASK, G_TX_NOMASK, G_TX_NOLOD, G_TX_NOLOD),
    gsSPVertex(gameplay_keepVtx_03F0F8, 4, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsSPEndDisplayList(),
};

Vtx gameplay_keepVtx_03F0F8[] = {
#include "assets/objects/gameplay_keep/gameplay_keepVtx_03F0F8.vtx.inc"
};

u8 gameplay_keep_possiblePadding_03F138[] = {
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 
};

u64 gDropKeySmallTex[] = {
#include "assets/objects/gameplay_keep/drop_key_small.rgba16.inc.c"
};

u64 gDropMagicSmallTex[] = {
#include "assets/objects/gameplay_keep/drop_magic_small.rgba16.inc.c"
};

u64 gDropDekuNutTex[] = {
#include "assets/objects/gameplay_keep/drop_deku_nut.rgba16.inc.c"
};

u64 gDropDekuSeedsTex[] = {
#include "assets/objects/gameplay_keep/drop_deku_seeds.rgba16.inc.c"
};

u64 gDropDekuStickTex[] = {
#include "assets/objects/gameplay_keep/drop_deku_stick.rgba16.inc.c"
};

u64 gDropMagicLargeTex[] = {
#include "assets/objects/gameplay_keep/drop_magic_large.rgba16.inc.c"
};

u64 gRupeeGreenTex[] = {
#include "assets/objects/gameplay_keep/rupee_green.rgba16.inc.c"
};

u64 gRupeeBlueTex[] = {
#include "assets/objects/gameplay_keep/rupee_blue.rgba16.inc.c"
};

u64 gRupeeRedTex[] = {
#include "assets/objects/gameplay_keep/rupee_red.rgba16.inc.c"
};

u64 gRupeeOrangeTex[] = {
#include "assets/objects/gameplay_keep/rupee_orange.rgba16.inc.c"
};

u64 gRupeePinkTex[] = {
#include "assets/objects/gameplay_keep/rupee_pink.rgba16.inc.c"
};

u64 gRupeeSilverTex[] = {
#include "assets/objects/gameplay_keep/rupee_silver.rgba16.inc.c"
};

Vtx gameplay_keepVtx_042200[] = {
#include "assets/objects/gameplay_keep/gameplay_keepVtx_042200.vtx.inc"
};

Gfx gRupeeDL[] = {
    gsDPPipeSync(),
    gsDPSetTextureLUT(G_TT_NONE),
    gsSPTexture(0x07D0, 0x03E8, 0, G_TX_RENDERTILE, G_ON),
    gsDPLoadTextureBlock(0x08000000, G_IM_FMT_RGBA, G_IM_SIZ_16b, 4, 4, 0, G_TX_NOMIRROR | G_TX_WRAP, G_TX_NOMIRROR |
                         G_TX_WRAP, 2, 2, 2, 1),
    gsDPSetCombineLERP(TEXEL0, 0, PRIMITIVE, 0, 0, 0, 0, 1, 0, 0, 0, COMBINED, 0, 0, 0, COMBINED),
    gsDPSetRenderMode(G_RM_PASS, G_RM_AA_ZB_OPA_SURF2),
    gsSPClearGeometryMode(G_FOG),
    gsSPSetGeometryMode(G_CULL_BACK | G_LIGHTING | G_TEXTURE_GEN | G_TEXTURE_GEN_LINEAR),
    gsDPSetPrimColor(0, 0, 255, 255, 255, 255),
    gsSPVertex(gameplay_keepVtx_042200, 3, 0),
    gsSP1Triangle(0, 1, 2, 0),
    gsSPVertex(&gameplay_keepVtx_042200[3], 32, 0),
    gsSP2Triangles(0, 1, 2, 0, 3, 4, 5, 0),
    gsSP2Triangles(6, 7, 8, 0, 9, 10, 11, 0),
    gsSP2Triangles(12, 13, 14, 0, 15, 16, 17, 0),
    gsSP2Triangles(18, 19, 20, 0, 21, 22, 23, 0),
    gsSP2Triangles(24, 25, 26, 0, 27, 28, 29, 0),
    gsSPVertex(&gameplay_keepVtx_042200[33], 3, 0),
    gsSP1Triangle(0, 1, 2, 0),
    gsSPEndDisplayList(),
};

u64 gRupeeLightRedTex[] = {
#include "assets/objects/gameplay_keep/rupee_light_red.rgba16.inc.c"
};

u64 gUnknownStone1Tex[] = {
#include "assets/objects/gameplay_keep/unknown_stone_1.rgba16.inc.c"
};

u64 gUnknownStone2Tex[] = {
#include "assets/objects/gameplay_keep/unknown_stone_2.rgba16.inc.c"
};

u64 gUnusedTreeStumpTopTex[] = {
#include "assets/objects/gameplay_keep/unused_tree_stump_top.rgba16.inc.c"
};

u64 gUnusedTreeStumpBarkTex[] = {
#include "assets/objects/gameplay_keep/unused_tree_stump_bark.rgba16.inc.c"
};

u64 gUnusedGrassBladesTex[] = {
#include "assets/objects/gameplay_keep/unused_grass_blades.rgba16.inc.c"
};

u64 gUnusedStoneHookshotTargetTex[] = {
#include "assets/objects/gameplay_keep/unused_stone_hookshot_target.rgba16.inc.c"
};

u64 gUnknownStone3Tex[] = {
#include "assets/objects/gameplay_keep/unknown_stone_3.rgba16.inc.c"
};

u64 gSignRectangularSideTex[] = {
#include "assets/objects/gameplay_keep/sign_rectangular_side.rgba16.inc.c"
};

u64 gSignRectangularFrontTex[] = {
#include "assets/objects/gameplay_keep/sign_rectangular_front.rgba16.inc.c"
};

u64 gSignPostWoodTex[] = {
#include "assets/objects/gameplay_keep/sign_post_wood.rgba16.inc.c"
};

u64 gSignLetteringTex[] = {
#include "assets/objects/gameplay_keep/sign_lettering.rgba16.inc.c"
};

Vtx gameplay_keepVtx_048130[] = {
#include "assets/objects/gameplay_keep/gameplay_keepVtx_048130.vtx.inc"
};

Gfx gRaindropDL[] = {
    gsDPSetCombineMode(G_CC_PRIMITIVE, G_CC_PRIMITIVE),
    gsSPVertex(gameplay_keepVtx_048130, 3, 0),
    gsSP1Triangle(0, 1, 2, 0),
    gsSPEndDisplayList(),
};

Gfx gFootShadowDL[] = {
    gsDPPipeSync(),
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsDPLoadTextureBlock(gFootShadowTex, G_IM_FMT_IA, G_IM_SIZ_16b, 32, 64, 0, G_TX_NOMIRROR | G_TX_CLAMP, G_TX_NOMIRROR
                         | G_TX_CLAMP, 5, 6, G_TX_NOLOD, G_TX_NOLOD),
    gsSPVertex(gameplay_keepVtx_0481E0, 3, 0),
    gsSP1Triangle(0, 1, 2, 0),
    gsSPEndDisplayList(),
};

Vtx gameplay_keepVtx_0481E0[] = {
#include "assets/objects/gameplay_keep/gameplay_keepVtx_0481E0.vtx.inc"
};

u64 gFootShadowTex[] = {
#include "assets/objects/gameplay_keep/footprint_shadow.ia16.inc.c"
};

Gfx gCircleShadowDL[] = {
    gsDPLoadTextureBlock(gCircleShadowTex, G_IM_FMT_IA, G_IM_SIZ_16b, 32, 32, 0, G_TX_NOMIRROR | G_TX_CLAMP,
                         G_TX_NOMIRROR | G_TX_CLAMP, 5, 5, G_TX_NOLOD, G_TX_NOLOD),
    gsSPVertex(gameplay_keepVtx_049260, 3, 0),
    gsSP1Triangle(0, 1, 2, 0),
    gsSPEndDisplayList(),
};

Vtx gameplay_keepVtx_049260[] = {
#include "assets/objects/gameplay_keep/gameplay_keepVtx_049260.vtx.inc"
};

u64 gCircleShadowTex[] = {
#include "assets/objects/gameplay_keep/circular_shadow.ia16.inc.c"
};

Vtx gameplay_keepVtx_049A90[] = {
#include "assets/objects/gameplay_keep/gameplay_keepVtx_049A90.vtx.inc"
};

Gfx gHorseShadowDL[] = {
    gsDPLoadTextureBlock(gHorseShadowTex, G_IM_FMT_I, G_IM_SIZ_8b, 16, 64, 0, G_TX_MIRROR | G_TX_WRAP, G_TX_NOMIRROR |
                         G_TX_CLAMP, 4, 6, G_TX_NOLOD, G_TX_NOLOD),
    gsSPVertex(gameplay_keepVtx_049A90, 4, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsSPEndDisplayList(),
};

u64 gHorseShadowTex[] = {
#include "assets/objects/gameplay_keep/horse_shadow.i8.inc.c"
};

Vtx gameplay_keepVtx_049F20[] = {
#include "assets/objects/gameplay_keep/gameplay_keepVtx_049F20.vtx.inc"
};

Gfx gDungeonDoorDL[] = {
    gsDPPipeSync(),
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsDPLoadTextureBlock(gGenericDungeonDoorTex, G_IM_FMT_RGBA, G_IM_SIZ_16b, 32, 64, 0, G_TX_MIRROR | G_TX_CLAMP,
                         G_TX_MIRROR | G_TX_CLAMP, 5, 6, G_TX_NOLOD, G_TX_NOLOD),
    gsDPSetCombineMode(G_CC_MODULATEIDECALA, G_CC_MODULATEIA_PRIM2),
    gsDPSetRenderMode(G_RM_FOG_SHADE_A, G_RM_AA_ZB_OPA_SURF2),
    gsSPClearGeometryMode(G_LIGHTING | G_TEXTURE_GEN | G_TEXTURE_GEN_LINEAR),
    gsSPSetGeometryMode(G_CULL_BACK),
    gsDPSetPrimColor(0, 0, 255, 255, 255, 255),
    gsSPVertex(gameplay_keepVtx_049F20, 4, 0),
    gsSP2Triangles(0, 1, 2, 0, 3, 0, 2, 0),
    gsSPVertex(&gameplay_keepVtx_049F20[4], 4, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsSPVertex(&gameplay_keepVtx_049F20[8], 4, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsSPEndDisplayList(),
};

u8 gameplay_keep_possiblePadding_04A088[] = {
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 
};

u64 gDoorMetalBarsTex[] = {
#include "assets/objects/gameplay_keep/door_metal_bars.ia8.inc.c"
};

Vtx gameplay_keepVtx_04B090[] = {
#include "assets/objects/gameplay_keep/gameplay_keepVtx_04B090.vtx.inc"
};

Gfx gDoorMetalBarsDL[] = {
    gsDPPipeSync(),
    gsDPSetTextureLUT(G_TT_NONE),
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsDPLoadTextureBlock(gDoorMetalBarsTex, G_IM_FMT_IA, G_IM_SIZ_8b, 32, 128, 0, G_TX_NOMIRROR | G_TX_WRAP,
                         G_TX_NOMIRROR | G_TX_WRAP, 5, 7, G_TX_NOLOD, G_TX_NOLOD),
    gsDPSetCombineLERP(TEXEL0, 0, SHADE, 0, 0, 0, 0, TEXEL0, COMBINED, 0, PRIMITIVE, 0, 0, 0, 0, COMBINED),
    gsDPSetRenderMode(G_RM_FOG_SHADE_A, G_RM_AA_ZB_XLU_SURF2),
    gsSPClearGeometryMode(G_LIGHTING | G_TEXTURE_GEN | G_TEXTURE_GEN_LINEAR),
    gsSPSetGeometryMode(G_CULL_BACK | G_FOG),
    gsDPSetPrimColor(0, 0, 255, 255, 255, 255),
    gsSPVertex(gameplay_keepVtx_04B090, 4, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsSPEndDisplayList(),
};

u64 gGenericDungeonDoorTex[] = {
#include "assets/objects/gameplay_keep/generic_dungeon_door.rgba16.inc.c"
};

u64 gSun1Tex[] = {
#include "assets/objects/gameplay_keep/sun_1.i4.inc.c"
};

u64 gSun2Tex[] = {
#include "assets/objects/gameplay_keep/sun_2.i4.inc.c"
};

u64 gSun3Tex[] = {
#include "assets/objects/gameplay_keep/sun_3.i4.inc.c"
};

u8 gameplay_keep_unaccounted_04C940[] = {
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 
};

u64 gSunEvening1Tex[] = {
#include "assets/objects/gameplay_keep/sun_evening_1.i4.inc.c"
};

u64 gSunEvening2Tex[] = {
#include "assets/objects/gameplay_keep/sun_evening_2.i4.inc.c"
};

u64 gSunEvening3Tex[] = {
#include "assets/objects/gameplay_keep/sun_evening_3.i4.inc.c"
};

u8 gameplay_keep_unaccounted_04D140[] = {
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 
};

Gfx gKokiriDustMoteMaterialDL[] = {
    gsDPSetCombineLERP(PRIMITIVE, ENVIRONMENT, TEXEL0, ENVIRONMENT, PRIMITIVE, 0, TEXEL0, 0, PRIMITIVE, ENVIRONMENT,
                       TEXEL0, ENVIRONMENT, PRIMITIVE, 0, TEXEL0, 0),
    gsDPLoadTextureBlock_4b(0x08000000, G_IM_FMT_I, 64, 64, 0, G_TX_NOMIRROR | G_TX_CLAMP, G_TX_NOMIRROR | G_TX_CLAMP,
                            G_TX_NOMASK, G_TX_NOMASK, G_TX_NOLOD, G_TX_NOLOD),
    gsSPEndDisplayList(),
};

Gfx gKokiriDustMoteModelDL[] = {
    gsSPVertex(&gameplay_keepVtx_04D348[12], 4, 0),
    gsSP2Triangles(0, 1, 2, 0, 1, 3, 2, 0),
    gsSPEndDisplayList(),
};

Gfx gSunDL[] = {
    gsSPMatrix(0x01000000, G_MTX_NOPUSH | G_MTX_MUL | G_MTX_MODELVIEW),
    gsDPPipeSync(),
    gsDPLoadTextureBlock(gSun1Tex, G_IM_FMT_I, G_IM_SIZ_8b, 64, 32, 0, G_TX_NOMIRROR | G_TX_CLAMP, G_TX_NOMIRROR |
                         G_TX_CLAMP, 6, 5, G_TX_NOLOD, G_TX_NOLOD),
    gsDPLoadMultiBlock(gSunEvening1Tex, 0x0100, 1, G_IM_FMT_I, G_IM_SIZ_8b, 64, 32, 0, G_TX_NOMIRROR | G_TX_CLAMP,
                       G_TX_NOMIRROR | G_TX_CLAMP, 6, 5, G_TX_NOLOD, G_TX_NOLOD),
    gsSPVertex(gameplay_keepVtx_04D348, 12, 0),
    gsSP2Triangles(0, 1, 2, 0, 2, 1, 3, 0),
    gsDPLoadTextureBlock(gSun2Tex, G_IM_FMT_I, G_IM_SIZ_8b, 64, 17, 0, G_TX_NOMIRROR | G_TX_CLAMP, G_TX_NOMIRROR |
                         G_TX_CLAMP, 6, 5, G_TX_NOLOD, G_TX_NOLOD),
    gsDPLoadMultiBlock(gSunEvening2Tex, 0x0100, 1, G_IM_FMT_I, G_IM_SIZ_8b, 64, 17, 0, G_TX_NOMIRROR | G_TX_CLAMP,
                       G_TX_NOMIRROR | G_TX_CLAMP, 6, 5, G_TX_NOLOD, G_TX_NOLOD),
    gsSP2Triangles(4, 5, 6, 0, 6, 5, 7, 0),
    gsDPLoadTextureBlock(gSun3Tex, G_IM_FMT_I, G_IM_SIZ_8b, 64, 17, 0, G_TX_NOMIRROR | G_TX_CLAMP, G_TX_NOMIRROR |
                         G_TX_CLAMP, 6, 5, G_TX_NOLOD, G_TX_NOLOD),
    gsDPLoadMultiBlock(gSunEvening3Tex, 0x0100, 1, G_IM_FMT_I, G_IM_SIZ_8b, 64, 17, 0, G_TX_NOMIRROR | G_TX_CLAMP,
                       G_TX_NOMIRROR | G_TX_CLAMP, 6, 5, G_TX_NOLOD, G_TX_NOLOD),
    gsSP2Triangles(8, 9, 10, 0, 10, 9, 11, 0),
    gsSPEndDisplayList(),
};

Vtx gameplay_keepVtx_04D348[] = {
#include "assets/objects/gameplay_keep/gameplay_keepVtx_04D348.vtx.inc"
};

u8 gameplay_keep_possiblePadding_04D448[] = {
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 
};

Gfx gZTargetLockOnTriangleDL[] = {
    gsSPVertex(gameplay_keepVtx_04D468, 3, 0),
    gsSP1Triangle(0, 1, 2, 0),
    gsSPEndDisplayList(),
};

Vtx gameplay_keepVtx_04D468[] = {
#include "assets/objects/gameplay_keep/gameplay_keepVtx_04D468.vtx.inc"
};

u8 gameplay_keep_possiblePadding_04D498[] = {
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 
};

Vtx gameplay_keepVtx_04D4A0[] = {
#include "assets/objects/gameplay_keep/gameplay_keepVtx_04D4A0.vtx.inc"
};

Gfx gEffFire1DL[] = {
    gsDPPipeSync(),
    gsDPSetTextureLUT(G_TT_NONE),
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsDPLoadTextureBlock(gDecorativeFlameTex, G_IM_FMT_I, G_IM_SIZ_8b, 32, 64, 0, G_TX_MIRROR | G_TX_CLAMP, G_TX_MIRROR
                         | G_TX_CLAMP, 5, 6, G_TX_NOLOD, G_TX_NOLOD),
    gsDPLoadMultiBlock_4b(gDecorativeFlameMaskTex, 0x0100, 1, G_IM_FMT_I, 32, 128, 0, G_TX_NOMIRROR | G_TX_WRAP,
                          G_TX_NOMIRROR | G_TX_WRAP, 5, 7, G_TX_NOLOD, G_TX_NOLOD),
    gsDPSetCombineLERP(TEXEL1, PRIMITIVE, PRIM_LOD_FRAC, TEXEL0, TEXEL1, 1, PRIM_LOD_FRAC, TEXEL0, PRIMITIVE,
                       ENVIRONMENT, COMBINED, ENVIRONMENT, COMBINED, 0, PRIMITIVE, 0),
    gsDPSetRenderMode(G_RM_PASS, G_RM_ZB_CLD_SURF2),
    gsSPClearGeometryMode(G_CULL_BACK | G_LIGHTING | G_TEXTURE_GEN | G_TEXTURE_GEN_LINEAR),
    gsSPDisplayList(0x08000000),
    gsSPVertex(gameplay_keepVtx_04D4A0, 4, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 3, 1, 0),
    gsSPEndDisplayList(),
};

Gfx gEffFire2DL[] = {
    gsDPPipeSync(),
    gsDPSetTextureLUT(G_TT_NONE),
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsDPLoadTextureBlock(gDecorativeFlameTex, G_IM_FMT_I, G_IM_SIZ_8b, 32, 64, 0, G_TX_MIRROR | G_TX_CLAMP, G_TX_MIRROR
                         | G_TX_CLAMP, 5, 6, G_TX_NOLOD, G_TX_NOLOD),
    gsDPLoadMultiBlock_4b(gDecorativeFlameMaskTex, 0x0100, 1, G_IM_FMT_I, 32, 128, 0, G_TX_NOMIRROR | G_TX_WRAP,
                          G_TX_NOMIRROR | G_TX_WRAP, 5, 7, G_TX_NOLOD, G_TX_NOLOD),
    gsDPSetCombineLERP(TEXEL1, TEXEL0, PRIM_LOD_FRAC, TEXEL0, TEXEL1, 1, PRIM_LOD_FRAC, TEXEL0, PRIMITIVE, ENVIRONMENT,
                       COMBINED, ENVIRONMENT, COMBINED, 0, PRIMITIVE, 0),
    gsDPSetRenderMode(G_RM_PASS, G_RM_ZB_CLD_SURF2),
    gsSPClearGeometryMode(G_CULL_BACK | G_LIGHTING | G_TEXTURE_GEN | G_TEXTURE_GEN_LINEAR),
    gsSPDisplayList(0x08000000),
    gsSPVertex(gameplay_keepVtx_04D4A0, 4, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 3, 1, 0),
    gsSPEndDisplayList(),
};

u64 gDecorativeFlameMaskTex[] = {
#include "assets/objects/gameplay_keep/eff_fire_mask.i4.inc.c"
};

u64 gDecorativeFlameTex[] = {
#include "assets/objects/gameplay_keep/eff_fire.i8.inc.c"
};

Vtx gameplay_keepVtx_04E660[] = {
#include "assets/objects/gameplay_keep/gameplay_keepVtx_04E660.vtx.inc"
};

Gfx gUnusedUnknownShape1DL[] = {
    gsSPVertex(gameplay_keepVtx_04E660, 32, 0),
    gsSP1Quadrangle(25, 6, 30, 20, 0),
    gsSP1Quadrangle(17, 5, 28, 23, 0),
    gsSP1Quadrangle(18, 21, 29, 7, 0),
    gsSP1Quadrangle(22, 19, 31, 8, 0),
    gsSP1Quadrangle(21, 9, 24, 2, 0),
    gsSP1Quadrangle(7, 29, 12, 15, 0),
    gsSP1Quadrangle(6, 16, 12, 30, 0),
    gsSP1Quadrangle(8, 31, 11, 14, 0),
    gsSP1Quadrangle(2, 24, 26, 10, 0),
    gsSP1Quadrangle(21, 2, 27, 29, 0),
    gsSP1Quadrangle(5, 13, 11, 28, 0),
    gsSP1Quadrangle(3, 23, 28, 2, 0),
    gsSP1Quadrangle(1, 20, 30, 0, 0),
    gsSP1Quadrangle(31, 19, 4, 0, 0),
    gsSP1Quadrangle(29, 27, 30, 12, 0),
    gsSP1Quadrangle(2, 28, 11, 27, 0),
    gsSP1Quadrangle(11, 31, 0, 27, 0),
    gsSP1Triangle(27, 0, 30, 0),
    gsSPVertex(&gameplay_keepVtx_04E660[32], 5, 27),
    gsSP1Triangle(9, 21, 29, 0),
    gsSP1Quadrangle(28, 1, 0, 31, 0),
    gsSP1Quadrangle(30, 31, 0, 27, 0),
    gsSPVertex(&gameplay_keepVtx_04E660[37], 11, 21),
    gsSP1Quadrangle(25, 31, 2, 10, 0),
    gsSP1Quadrangle(27, 28, 0, 23, 0),
    gsSP1Quadrangle(24, 30, 0, 4, 0),
    gsSP1Quadrangle(2, 31, 29, 22, 0),
    gsSP1Quadrangle(0, 30, 26, 23, 0),
    gsSPVertex(&gameplay_keepVtx_04E660[48], 3, 29),
    gsSP1Quadrangle(21, 30, 29, 0, 0),
    gsSP1Quadrangle(0, 28, 31, 21, 0),
    gsSPVertex(&gameplay_keepVtx_04E660[51], 32, 0),
    gsSP1Quadrangle(12, 11, 28, 30, 0),
    gsSP1Quadrangle(31, 30, 28, 29, 0),
    gsSP1Quadrangle(20, 4, 28, 19, 0),
    gsSP1Quadrangle(28, 4, 5, 29, 0),
    gsSP1Triangle(16, 26, 11, 0),
    gsSP1Quadrangle(22, 19, 23, 24, 0),
    gsSP1Triangle(19, 27, 23, 0),
    gsSP1Quadrangle(22, 25, 21, 19, 0),
    gsSP1Triangle(19, 21, 20, 0),
    gsSP1Quadrangle(7, 29, 6, 9, 0),
    gsSP1Triangle(29, 5, 6, 0),
    gsSP1Quadrangle(7, 10, 8, 29, 0),
    gsSP1Triangle(29, 8, 31, 0),
    gsSP1Quadrangle(14, 11, 13, 17, 0),
    gsSP1Triangle(11, 12, 13, 0),
    gsSP1Quadrangle(14, 18, 15, 11, 0),
    gsSP1Triangle(11, 15, 16, 0),
    gsSPVertex(&gameplay_keepVtx_04E660[83], 28, 4),
    gsSP1Quadrangle(30, 9, 1, 0, 0),
    gsSP1Triangle(18, 28, 19, 0),
    gsSP1Quadrangle(28, 0, 3, 29, 0),
    gsSP1Triangle(11, 30, 10, 0),
    gsSP1Quadrangle(13, 10, 14, 15, 0),
    gsSP1Triangle(10, 17, 14, 0),
    gsSP1Quadrangle(13, 16, 12, 10, 0),
    gsSP1Triangle(10, 12, 11, 0),
    gsSP1Quadrangle(2, 0, 1, 26, 0),
    gsSP1Quadrangle(2, 27, 3, 0, 0),
    gsSP1Quadrangle(21, 18, 20, 23, 0),
    gsSP1Triangle(18, 19, 20, 0),
    gsSP1Quadrangle(21, 24, 22, 18, 0),
    gsSP1Triangle(18, 22, 25, 0),
    gsSP1Quadrangle(7, 4, 8, 31, 0),
    gsSP1Triangle(4, 6, 5, 0),
    gsSPVertex(&gameplay_keepVtx_04E660[111], 32, 0),
    gsSP1Quadrangle(15, 21, 18, 17, 0),
    gsSP1Triangle(0, 24, 27, 0),
    gsSP1Quadrangle(24, 17, 20, 25, 0),
    gsSP2Triangles(9, 15, 8, 0, 30, 29, 26, 0),
    gsSP1Triangle(26, 3, 4, 0),
    gsSP1Quadrangle(5, 7, 6, 26, 0),
    gsSP1Quadrangle(11, 8, 12, 13, 0),
    gsSP1Triangle(8, 16, 12, 0),
    gsSP1Quadrangle(11, 14, 10, 8, 0),
    gsSP1Triangle(8, 10, 9, 0),
    gsSP1Quadrangle(19, 17, 18, 22, 0),
    gsSP1Quadrangle(19, 23, 20, 17, 0),
    gsSP1Quadrangle(2, 0, 28, 31, 0),
    gsSP1Triangle(0, 27, 28, 0),
    gsSPVertex(&gameplay_keepVtx_04E660[143], 29, 3),
    gsSP1Quadrangle(20, 14, 15, 21, 0),
    gsSP1Quadrangle(3, 30, 24, 23, 0),
    gsSP1Triangle(5, 12, 6, 0),
    gsSP1Quadrangle(8, 5, 7, 10, 0),
    gsSP1Triangle(5, 6, 7, 0),
    gsSP1Quadrangle(8, 11, 9, 5, 0),
    gsSP1Triangle(5, 9, 13, 0),
    gsSP1Quadrangle(25, 23, 24, 27, 0),
    gsSP1Quadrangle(25, 28, 26, 23, 0),
    gsSP1Triangle(23, 26, 31, 0),
    gsSP1Quadrangle(2, 29, 1, 0, 0),
    gsSP1Triangle(0, 1, 4, 0),
    gsSP1Quadrangle(16, 14, 17, 18, 0),
    gsSP1Triangle(14, 22, 17, 0),
    gsSP1Quadrangle(16, 19, 15, 14, 0),
    gsSPVertex(&gameplay_keepVtx_04E660[172], 25, 0),
    gsSP1Quadrangle(22, 16, 17, 23, 0),
    gsSP1Quadrangle(1, 4, 2, 0, 0),
    gsSP1Triangle(0, 2, 6, 0),
    gsSP1Quadrangle(1, 0, 3, 5, 0),
    gsSP1Triangle(7, 3, 0, 0),
    gsSP1Quadrangle(9, 8, 10, 12, 0),
    gsSP1Triangle(8, 15, 10, 0),
    gsSP1Quadrangle(9, 13, 11, 8, 0),
    gsSP1Triangle(8, 11, 14, 0),
    gsSP1Quadrangle(18, 16, 19, 20, 0),
    gsSP1Triangle(16, 24, 19, 0),
    gsSP1Quadrangle(18, 21, 17, 16, 0),
    gsSPEndDisplayList(),
};

Gfx gUnusedUnknownShape1RefDL[] = {
    gsSPDisplayList(gUnusedUnknownShape1DL),
    gsSPEndDisplayList(),
};

Vtx gameplay_keepVtx_04F640[] = {
#include "assets/objects/gameplay_keep/gameplay_keepVtx_04F640.vtx.inc"
};

Gfx gUnusedUnknownShape2DL[] = {
    gsSPVertex(gameplay_keepVtx_04F640, 32, 0),
    gsSP1Quadrangle(26, 8, 28, 27, 0),
    gsSP1Quadrangle(20, 29, 31, 6, 0),
    gsSP1Quadrangle(23, 5, 12, 24, 0),
    gsSP1Quadrangle(25, 4, 16, 18, 0),
    gsSP1Quadrangle(8, 24, 12, 28, 0),
    gsSP1Quadrangle(6, 31, 2, 14, 0),
    gsSP1Quadrangle(9, 12, 5, 13, 0),
    gsSP1Triangle(12, 18, 16, 0),
    gsSP1Quadrangle(9, 15, 1, 12, 0),
    gsSP1Quadrangle(28, 10, 22, 27, 0),
    gsSP1Quadrangle(31, 29, 21, 10, 0),
    gsSP1Quadrangle(3, 17, 7, 2, 0),
    gsSP1Triangle(2, 7, 14, 0),
    gsSP1Quadrangle(10, 28, 12, 30, 0),
    gsSP2Triangles(30, 12, 16, 0, 30, 16, 0, 0),
    gsSP1Quadrangle(0, 11, 2, 30, 0),
    gsSP2Triangles(30, 2, 31, 0, 30, 31, 10, 0),
    gsSPVertex(&gameplay_keepVtx_04F640[32], 5, 27),
    gsSP1Quadrangle(31, 19, 16, 4, 0),
    gsSP1Quadrangle(27, 29, 2, 11, 0),
    gsSP1Quadrangle(16, 19, 30, 0, 0),
    gsSP1Triangle(2, 29, 28, 0),
    gsSPVertex(&gameplay_keepVtx_04F640[37], 16, 16),
    gsSP1Quadrangle(16, 21, 3, 2, 0),
    gsSP1Quadrangle(31, 29, 12, 1, 0),
    gsSP1Quadrangle(23, 20, 30, 12, 0),
    gsSP1Quadrangle(16, 2, 17, 22, 0),
    gsSP1Quadrangle(23, 12, 29, 19, 0),
    gsSP1Quadrangle(17, 2, 18, 24, 0),
    gsSPVertex(&gameplay_keepVtx_04F640[53], 30, 2),
    gsSP1Quadrangle(6, 10, 14, 18, 0),
    gsSP1Quadrangle(11, 10, 8, 9, 0),
    gsSP1Quadrangle(14, 10, 13, 15, 0),
    gsSP1Quadrangle(13, 10, 12, 16, 0),
    gsSP1Triangle(11, 12, 10, 0),
    gsSP1Quadrangle(17, 30, 24, 0, 0),
    gsSP1Quadrangle(19, 26, 25, 1, 0),
    gsSP1Quadrangle(29, 0, 28, 31, 0),
    gsSP1Triangle(0, 24, 28, 0),
    gsSP1Quadrangle(19, 1, 20, 22, 0),
    gsSP1Quadrangle(21, 23, 20, 1, 0),
    gsSP1Quadrangle(8, 0, 29, 9, 0),
    gsSP2Triangles(7, 21, 1, 0, 0, 27, 17, 0),
    gsSPVertex(&gameplay_keepVtx_04F640[83], 32, 0),
    gsSP1Quadrangle(15, 16, 9, 8, 0),
    gsSP1Quadrangle(11, 14, 13, 8, 0),
    gsSP1Quadrangle(24, 17, 20, 25, 0),
    gsSP1Quadrangle(1, 30, 28, 0, 0),
    gsSP1Quadrangle(28, 31, 2, 0, 0),
    gsSP1Quadrangle(10, 8, 9, 12, 0),
    gsSP1Quadrangle(20, 17, 19, 21, 0),
    gsSP1Quadrangle(13, 22, 18, 17, 0),
    gsSP1Triangle(10, 11, 8, 0),
    gsSP1Quadrangle(19, 17, 18, 23, 0),
    gsSP1Quadrangle(6, 7, 27, 26, 0),
    gsSP1Quadrangle(27, 3, 29, 26, 0),
    gsSP1Quadrangle(29, 5, 4, 26, 0),
    gsSPVertex(&gameplay_keepVtx_04F640[115], 29, 3),
    gsSP1Quadrangle(31, 6, 1, 0, 0),
    gsSP1Quadrangle(24, 11, 8, 7, 0),
    gsSP1Quadrangle(22, 23, 18, 15, 0),
    gsSP1Quadrangle(31, 15, 16, 19, 0),
    gsSP1Quadrangle(17, 15, 18, 20, 0),
    gsSP1Quadrangle(17, 21, 16, 15, 0),
    gsSP1Quadrangle(24, 0, 2, 27, 0),
    gsSP1Quadrangle(8, 12, 9, 7, 0),
    gsSP1Quadrangle(9, 13, 10, 7, 0),
    gsSP1Triangle(7, 10, 14, 0),
    gsSP1Quadrangle(4, 28, 26, 5, 0),
    gsSP1Quadrangle(26, 29, 25, 5, 0),
    gsSP1Quadrangle(25, 30, 22, 5, 0),
    gsSPVertex(&gameplay_keepVtx_04F640[144], 32, 0),
    gsSP1Quadrangle(5, 6, 28, 27, 0),
    gsSP1Quadrangle(9, 12, 10, 8, 0),
    gsSP1Quadrangle(14, 8, 10, 15, 0),
    gsSP1Triangle(27, 30, 7, 0),
    gsSP1Quadrangle(25, 17, 18, 26, 0),
    gsSP1Quadrangle(11, 13, 9, 8, 0),
    gsSP1Quadrangle(25, 31, 3, 0, 0),
    gsSP1Quadrangle(23, 24, 20, 17, 0),
    gsSP1Quadrangle(18, 17, 19, 21, 0),
    gsSP1Quadrangle(19, 17, 20, 22, 0),
    gsSP1Triangle(16, 11, 8, 0),
    gsSP1Quadrangle(29, 27, 28, 4, 0),
    gsSP1Triangle(27, 29, 30, 0),
    gsSPVertex(&gameplay_keepVtx_04F640[176], 26, 4),
    gsSP1Quadrangle(12, 15, 13, 11, 0),
    gsSP1Quadrangle(6, 0, 2, 7, 0),
    gsSP1Quadrangle(1, 4, 2, 0, 0),
    gsSP1Quadrangle(1, 0, 3, 5, 0),
    gsSP1Quadrangle(13, 18, 17, 11, 0),
    gsSP1Quadrangle(19, 20, 14, 11, 0),
    gsSP1Quadrangle(28, 29, 24, 21, 0),
    gsSP1Quadrangle(19, 21, 22, 25, 0),
    gsSP1Quadrangle(23, 21, 24, 26, 0),
    gsSP1Quadrangle(23, 27, 22, 21, 0),
    gsSP1Quadrangle(12, 11, 14, 16, 0),
    gsSP1Quadrangle(6, 10, 9, 8, 0),
    gsSPEndDisplayList(),
};

Gfx gUnusedUnknownShape2RefDL[] = {
    gsSPDisplayList(gUnusedUnknownShape2DL),
    gsSPEndDisplayList(),
};

Vtx gameplay_keepVtx_050610[] = {
#include "assets/objects/gameplay_keep/gameplay_keepVtx_050610.vtx.inc"
};

Gfx gUnusedUnknownShape3DL[] = {
    gsSPVertex(gameplay_keepVtx_050610, 32, 0),
    gsSP1Quadrangle(25, 23, 27, 8, 0),
    gsSP1Quadrangle(22, 7, 27, 26, 0),
    gsSP1Quadrangle(18, 10, 17, 30, 0),
    gsSP1Quadrangle(20, 31, 23, 11, 0),
    gsSP1Quadrangle(26, 28, 19, 6, 0),
    gsSP1Quadrangle(1, 16, 5, 27, 0),
    gsSP1Quadrangle(17, 0, 29, 30, 0),
    gsSP1Triangle(24, 4, 12, 0),
    gsSP1Quadrangle(14, 24, 29, 0, 0),
    gsSP1Quadrangle(1, 27, 2, 13, 0),
    gsSP2Triangles(30, 9, 18, 0, 9, 31, 20, 0),
    gsSP1Quadrangle(5, 21, 8, 27, 0),
    gsSP2Triangles(3, 24, 12, 0, 19, 28, 3, 0),
    gsSP1Quadrangle(23, 31, 29, 27, 0),
    gsSP1Quadrangle(2, 27, 7, 15, 0),
    gsSP1Quadrangle(26, 27, 29, 28, 0),
    gsSP1Quadrangle(30, 29, 31, 9, 0),
    gsSP1Quadrangle(24, 3, 28, 29, 0),
    gsSPVertex(&gameplay_keepVtx_050610[32], 5, 27),
    gsSP1Quadrangle(31, 28, 0, 17, 0),
    gsSP1Quadrangle(30, 4, 24, 14, 0),
    gsSP1Quadrangle(27, 0, 28, 29, 0),
    gsSPVertex(&gameplay_keepVtx_050610[37], 8, 24),
    gsSP1Quadrangle(31, 14, 0, 27, 0),
    gsSP1Quadrangle(27, 0, 24, 30, 0),
    gsSP1Quadrangle(26, 29, 25, 0, 0),
    gsSP1Quadrangle(25, 28, 24, 0, 0),
    gsSPVertex(&gameplay_keepVtx_050610[45], 32, 0),
    gsSP1Quadrangle(16, 17, 13, 10, 0),
    gsSP2Triangles(0, 2, 30, 0, 0, 30, 3, 0),
    gsSP1Quadrangle(7, 10, 11, 14, 0),
    gsSP1Quadrangle(25, 18, 21, 26, 0),
    gsSP1Quadrangle(9, 22, 19, 18, 0),
    gsSP1Quadrangle(21, 18, 20, 23, 0),
    gsSP1Quadrangle(20, 18, 19, 24, 0),
    gsSP1Quadrangle(12, 15, 11, 10, 0),
    gsSP1Triangle(10, 13, 12, 0),
    gsSP1Quadrangle(28, 5, 29, 27, 0),
    gsSP1Quadrangle(4, 27, 31, 6, 0),
    gsSP2Triangles(27, 29, 31, 0, 27, 4, 9, 0),
    gsSP1Quadrangle(7, 8, 28, 27, 0),
    gsSPVertex(&gameplay_keepVtx_050610[77], 28, 4),
    gsSP1Quadrangle(27, 31, 8, 4, 0),
    gsSP1Quadrangle(29, 30, 1, 0, 0),
    gsSP1Quadrangle(27, 0, 3, 28, 0),
    gsSP1Quadrangle(2, 0, 1, 25, 0),
    gsSP1Quadrangle(16, 18, 19, 23, 0),
    gsSP1Quadrangle(7, 26, 22, 18, 0),
    gsSP1Quadrangle(20, 24, 19, 18, 0),
    gsSP2Triangles(21, 20, 18, 0, 22, 21, 18, 0),
    gsSP1Quadrangle(16, 17, 13, 9, 0),
    gsSP1Quadrangle(13, 14, 12, 9, 0),
    gsSP2Triangles(9, 12, 11, 0, 9, 11, 10, 0),
    gsSP1Quadrangle(10, 15, 29, 9, 0),
    gsSPVertex(&gameplay_keepVtx_050610[105], 32, 0),
    gsSP1Quadrangle(8, 6, 26, 9, 0),
    gsSP1Quadrangle(26, 6, 28, 31, 0),
    gsSP1Quadrangle(4, 7, 30, 6, 0),
    gsSP1Quadrangle(17, 24, 20, 19, 0),
    gsSP2Triangles(29, 28, 6, 0, 30, 29, 6, 0),
    gsSP1Quadrangle(5, 19, 23, 27, 0),
    gsSP1Quadrangle(21, 19, 20, 25, 0),
    gsSP2Triangles(19, 21, 22, 0, 19, 22, 23, 0),
    gsSP1Quadrangle(14, 10, 13, 15, 0),
    gsSP1Quadrangle(17, 10, 14, 18, 0),
    gsSP1Quadrangle(11, 10, 8, 16, 0),
    gsSP2Triangles(11, 12, 10, 0, 12, 13, 10, 0),
    gsSPVertex(&gameplay_keepVtx_050610[137], 26, 6),
    gsSP1Triangle(29, 3, 0, 0),
    gsSP1Quadrangle(1, 24, 4, 0, 0),
    gsSP1Quadrangle(3, 26, 2, 0, 0),
    gsSP1Quadrangle(12, 14, 13, 30, 0),
    gsSP1Quadrangle(2, 28, 1, 0, 0),
    gsSP1Triangle(30, 13, 17, 0),
    gsSP1Quadrangle(5, 15, 31, 30, 0),
    gsSP1Quadrangle(12, 30, 31, 16, 0),
    gsSP1Quadrangle(11, 27, 19, 18, 0),
    gsSP1Quadrangle(19, 22, 20, 18, 0),
    gsSP1Quadrangle(20, 23, 21, 18, 0),
    gsSP1Quadrangle(21, 25, 10, 18, 0),
    gsSPVertex(&gameplay_keepVtx_050610[163], 32, 0),
    gsSP1Quadrangle(22, 23, 17, 16, 0),
    gsSP1Quadrangle(27, 30, 1, 0, 0),
    gsSP1Quadrangle(4, 5, 28, 26, 0),
    gsSP1Quadrangle(28, 3, 29, 26, 0),
    gsSP1Triangle(26, 29, 6, 0),
    gsSP1Quadrangle(24, 16, 19, 25, 0),
    gsSP1Quadrangle(17, 20, 18, 16, 0),
    gsSP1Quadrangle(18, 21, 19, 16, 0),
    gsSP1Quadrangle(13, 7, 8, 14, 0),
    gsSP1Quadrangle(2, 31, 27, 0, 0),
    gsSP1Quadrangle(8, 7, 9, 11, 0),
    gsSP1Quadrangle(9, 7, 10, 12, 0),
    gsSP1Triangle(15, 10, 7, 0),
    gsSPVertex(&gameplay_keepVtx_050610[195], 4, 3),
    gsSP1Quadrangle(3, 0, 1, 4, 0),
    gsSP1Quadrangle(5, 6, 2, 0, 0),
    gsSPEndDisplayList(),
};

Gfx gUnusedUnknownShape3RefDL[] = {
    gsSPDisplayList(gUnusedUnknownShape3DL),
    gsSPEndDisplayList(),
};

u8 gameplay_keep_possiblePadding_0515A8[] = {
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 
};

u64 gUnusedUpsideDownZeldaTex[] = {
#include "assets/objects/gameplay_keep/upside_down_zelda.i8.inc.c"
};

u64 gDust1Tex[] = {
#include "assets/objects/gameplay_keep/dust_1.i8.inc.c"
};

u64 gDust2Tex[] = {
#include "assets/objects/gameplay_keep/dust_2.i8.inc.c"
};

u64 gDust3Tex[] = {
#include "assets/objects/gameplay_keep/dust_3.i8.inc.c"
};

u64 gDust4Tex[] = {
#include "assets/objects/gameplay_keep/dust_4.i8.inc.c"
};

u64 gDust5Tex[] = {
#include "assets/objects/gameplay_keep/dust_5.i8.inc.c"
};

u64 gDust6Tex[] = {
#include "assets/objects/gameplay_keep/dust_6.i8.inc.c"
};

u64 gDust7Tex[] = {
#include "assets/objects/gameplay_keep/dust_7.i8.inc.c"
};

u64 gDust8Tex[] = {
#include "assets/objects/gameplay_keep/dust_8.i8.inc.c"
};

u64 gCircleGlowLTex[] = {
#include "assets/objects/gameplay_keep/circle_glow_l.i8.inc.c"
};

u64 gCircleGlowRTex[] = {
#include "assets/objects/gameplay_keep/circle_glow_r.i8.inc.c"
};

u64 gCircleGlowSLTex[] = {
#include "assets/objects/gameplay_keep/circle_glow_sl.i8.inc.c"
};

u64 gCircleGlowSRTex[] = {
#include "assets/objects/gameplay_keep/circle_glow_sr.i8.inc.c"
};

u64 gEffBubble1Tex[] = {
#include "assets/objects/gameplay_keep/eff_bubble_1.i8.inc.c"
};

u64 gEffBubble2Tex[] = {
#include "assets/objects/gameplay_keep/eff_bubble_2.i8.inc.c"
};

u64 gEffSpark1Tex[] = {
#include "assets/objects/gameplay_keep/eff_spark_1.i4.inc.c"
};

u64 gEffSpark2Tex[] = {
#include "assets/objects/gameplay_keep/eff_spark_2.i4.inc.c"
};

u64 gEffSpark3Tex[] = {
#include "assets/objects/gameplay_keep/eff_spark_3.i4.inc.c"
};

u64 gEffSpark4Tex[] = {
#include "assets/objects/gameplay_keep/eff_spark_4.i4.inc.c"
};

