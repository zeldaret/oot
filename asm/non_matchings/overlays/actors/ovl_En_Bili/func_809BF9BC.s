.late_rodata
glabel D_809C1730
    .float 0.7

.text
glabel func_809BF9BC
/* 0011C 809BF9BC 3C01809C */  lui     $at, %hi(D_809C1730)       ## $at = 809C0000
/* 00120 809BF9C0 C4241730 */  lwc1    $f4, %lo(D_809C1730)($at)  
/* 00124 809BF9C4 909801E4 */  lbu     $t8, 0x01E4($a0)           ## 000001E4
/* 00128 809BF9C8 908801E5 */  lbu     $t0, 0x01E5($a0)           ## 000001E5
/* 0012C 809BF9CC 44800000 */  mtc1    $zero, $f0                 ## $f0 = 0.00
/* 00130 809BF9D0 C4860028 */  lwc1    $f6, 0x0028($a0)           ## 00000028
/* 00134 809BF9D4 3C0A809C */  lui     $t2, %hi(func_809C0174)    ## $t2 = 809C0000
/* 00138 809BF9D8 240E0001 */  addiu   $t6, $zero, 0x0001         ## $t6 = 00000001
/* 0013C 809BF9DC 240F0020 */  addiu   $t7, $zero, 0x0020         ## $t7 = 00000020
/* 00140 809BF9E0 254A0174 */  addiu   $t2, $t2, %lo(func_809C0174) ## $t2 = 809C0174
/* 00144 809BF9E4 37190001 */  ori     $t9, $t8, 0x0001           ## $t9 = 00000001
/* 00148 809BF9E8 35090001 */  ori     $t1, $t0, 0x0001           ## $t1 = 00000001
/* 0014C 809BF9EC A08E01F8 */  sb      $t6, 0x01F8($a0)           ## 000001F8
/* 00150 809BF9F0 A48F0196 */  sh      $t7, 0x0196($a0)           ## 00000196
/* 00154 809BF9F4 A09901E4 */  sb      $t9, 0x01E4($a0)           ## 000001E4
/* 00158 809BF9F8 A08901E5 */  sb      $t1, 0x01E5($a0)           ## 000001E5
/* 0015C 809BF9FC AC8A0190 */  sw      $t2, 0x0190($a0)           ## 00000190
/* 00160 809BFA00 E4840068 */  swc1    $f4, 0x0068($a0)           ## 00000068
/* 00164 809BFA04 E486000C */  swc1    $f6, 0x000C($a0)           ## 0000000C
/* 00168 809BFA08 E480006C */  swc1    $f0, 0x006C($a0)           ## 0000006C
/* 0016C 809BFA0C 03E00008 */  jr      $ra                        
/* 00170 809BFA10 E4800060 */  swc1    $f0, 0x0060($a0)           ## 00000060
