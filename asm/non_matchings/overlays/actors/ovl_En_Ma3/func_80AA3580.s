glabel func_80AA3580
/* 00AE0 80AA3580 27BDFFB8 */  addiu   $sp, $sp, 0xFFB8           ## $sp = FFFFFFB8
/* 00AE4 80AA3584 3C0F80AA */  lui     $t7, %hi(D_80AA3898)       ## $t7 = 80AA0000
/* 00AE8 80AA3588 AFBF0014 */  sw      $ra, 0x0014($sp)           
/* 00AEC 80AA358C AFA40048 */  sw      $a0, 0x0048($sp)           
/* 00AF0 80AA3590 AFA5004C */  sw      $a1, 0x004C($sp)           
/* 00AF4 80AA3594 AFA60050 */  sw      $a2, 0x0050($sp)           
/* 00AF8 80AA3598 AFA70054 */  sw      $a3, 0x0054($sp)           
/* 00AFC 80AA359C 25EF3898 */  addiu   $t7, $t7, %lo(D_80AA3898)  ## $t7 = 80AA3898
/* 00B00 80AA35A0 8DF90000 */  lw      $t9, 0x0000($t7)           ## 80AA3898
/* 00B04 80AA35A4 27AE0038 */  addiu   $t6, $sp, 0x0038           ## $t6 = FFFFFFF0
/* 00B08 80AA35A8 8DF80004 */  lw      $t8, 0x0004($t7)           ## 80AA389C
/* 00B0C 80AA35AC ADD90000 */  sw      $t9, 0x0000($t6)           ## FFFFFFF0
/* 00B10 80AA35B0 8DF90008 */  lw      $t9, 0x0008($t7)           ## 80AA38A0
/* 00B14 80AA35B4 ADD80004 */  sw      $t8, 0x0004($t6)           ## FFFFFFF4
/* 00B18 80AA35B8 3C0680AA */  lui     $a2, %hi(D_80AA38C0)       ## $a2 = 80AA0000
/* 00B1C 80AA35BC ADD90008 */  sw      $t9, 0x0008($t6)           ## FFFFFFF8
/* 00B20 80AA35C0 8FA80048 */  lw      $t0, 0x0048($sp)           
/* 00B24 80AA35C4 24C638C0 */  addiu   $a2, $a2, %lo(D_80AA38C0)  ## $a2 = 80AA38C0
/* 00B28 80AA35C8 2407039F */  addiu   $a3, $zero, 0x039F         ## $a3 = 0000039F
/* 00B2C 80AA35CC 8D050000 */  lw      $a1, 0x0000($t0)           ## 00000000
/* 00B30 80AA35D0 27A40024 */  addiu   $a0, $sp, 0x0024           ## $a0 = FFFFFFDC
/* 00B34 80AA35D4 0C031AB1 */  jal     Graph_OpenDisp              
/* 00B38 80AA35D8 AFA50034 */  sw      $a1, 0x0034($sp)           
/* 00B3C 80AA35DC 8FA9004C */  lw      $t1, 0x004C($sp)           
/* 00B40 80AA35E0 8FA50058 */  lw      $a1, 0x0058($sp)           
/* 00B44 80AA35E4 24010012 */  addiu   $at, $zero, 0x0012         ## $at = 00000012
/* 00B48 80AA35E8 15210003 */  bne     $t1, $at, .L80AA35F8       
/* 00B4C 80AA35EC 24A50038 */  addiu   $a1, $a1, 0x0038           ## $a1 = 00000038
/* 00B50 80AA35F0 0C0346BD */  jal     Matrix_MultVec3f              
/* 00B54 80AA35F4 27A40038 */  addiu   $a0, $sp, 0x0038           ## $a0 = FFFFFFF0
.L80AA35F8:
/* 00B58 80AA35F8 8FAA004C */  lw      $t2, 0x004C($sp)           
/* 00B5C 80AA35FC 2401000E */  addiu   $at, $zero, 0x000E         ## $at = 0000000E
/* 00B60 80AA3600 3C0680AA */  lui     $a2, %hi(D_80AA38D0)       ## $a2 = 80AA0000
/* 00B64 80AA3604 15410010 */  bne     $t2, $at, .L80AA3648       
/* 00B68 80AA3608 24C638D0 */  addiu   $a2, $a2, %lo(D_80AA38D0)  ## $a2 = 80AA38D0
/* 00B6C 80AA360C 8FAC0058 */  lw      $t4, 0x0058($sp)           
/* 00B70 80AA3610 3C0B0601 */  lui     $t3, 0x0601                ## $t3 = 06010000
/* 00B74 80AA3614 256B93BC */  addiu   $t3, $t3, 0x93BC           ## $t3 = 060093BC
/* 00B78 80AA3618 8D8D0154 */  lw      $t5, 0x0154($t4)           ## 00000154
/* 00B7C 80AA361C 8FA40034 */  lw      $a0, 0x0034($sp)           
/* 00B80 80AA3620 3C0FDE00 */  lui     $t7, 0xDE00                ## $t7 = DE000000
/* 00B84 80AA3624 556D0009 */  bnel    $t3, $t5, .L80AA364C       
/* 00B88 80AA3628 8FB90048 */  lw      $t9, 0x0048($sp)           
/* 00B8C 80AA362C 8C8302C0 */  lw      $v1, 0x02C0($a0)           ## 000002C0
/* 00B90 80AA3630 3C180600 */  lui     $t8, 0x0600                ## $t8 = 06000000
/* 00B94 80AA3634 27185420 */  addiu   $t8, $t8, 0x5420           ## $t8 = 06005420
/* 00B98 80AA3638 246E0008 */  addiu   $t6, $v1, 0x0008           ## $t6 = 00000008
/* 00B9C 80AA363C AC8E02C0 */  sw      $t6, 0x02C0($a0)           ## 000002C0
/* 00BA0 80AA3640 AC780004 */  sw      $t8, 0x0004($v1)           ## 00000004
/* 00BA4 80AA3644 AC6F0000 */  sw      $t7, 0x0000($v1)           ## 00000000
.L80AA3648:
/* 00BA8 80AA3648 8FB90048 */  lw      $t9, 0x0048($sp)           
.L80AA364C:
/* 00BAC 80AA364C 27A40024 */  addiu   $a0, $sp, 0x0024           ## $a0 = FFFFFFDC
/* 00BB0 80AA3650 240703B6 */  addiu   $a3, $zero, 0x03B6         ## $a3 = 000003B6
/* 00BB4 80AA3654 0C031AD5 */  jal     Graph_CloseDisp              
/* 00BB8 80AA3658 8F250000 */  lw      $a1, 0x0000($t9)           ## 00000000
/* 00BBC 80AA365C 8FBF0014 */  lw      $ra, 0x0014($sp)           
/* 00BC0 80AA3660 27BD0048 */  addiu   $sp, $sp, 0x0048           ## $sp = 00000000
/* 00BC4 80AA3664 03E00008 */  jr      $ra                        
/* 00BC8 80AA3668 00000000 */  nop


