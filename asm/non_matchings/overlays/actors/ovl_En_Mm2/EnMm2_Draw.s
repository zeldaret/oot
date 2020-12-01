.rdata
glabel D_80AAFBE8
    .asciz "../z_en_mm2.c"
    .balign 4

glabel D_80AAFBF8
    .asciz "../z_en_mm2.c"
    .balign 4

.text
glabel EnMm2_Draw
/* 00A88 80AAF8D8 27BDFFB0 */  addiu   $sp, $sp, 0xFFB0           ## $sp = FFFFFFB0
/* 00A8C 80AAF8DC AFBF002C */  sw      $ra, 0x002C($sp)
/* 00A90 80AAF8E0 AFB00028 */  sw      $s0, 0x0028($sp)
/* 00A94 80AAF8E4 AFA50054 */  sw      $a1, 0x0054($sp)
/* 00A98 80AAF8E8 8CA50000 */  lw      $a1, 0x0000($a1)           ## 00000000
/* 00A9C 80AAF8EC 00808025 */  or      $s0, $a0, $zero            ## $s0 = 00000000
/* 00AA0 80AAF8F0 3C0680AB */  lui     $a2, %hi(D_80AAFBE8)       ## $a2 = 80AB0000
/* 00AA4 80AAF8F4 24C6FBE8 */  addiu   $a2, $a2, %lo(D_80AAFBE8)  ## $a2 = 80AAFBE8
/* 00AA8 80AAF8F8 27A40038 */  addiu   $a0, $sp, 0x0038           ## $a0 = FFFFFFE8
/* 00AAC 80AAF8FC 2407027A */  addiu   $a3, $zero, 0x027A         ## $a3 = 0000027A
/* 00AB0 80AAF900 0C031AB1 */  jal     Graph_OpenDisps
/* 00AB4 80AAF904 AFA50048 */  sw      $a1, 0x0048($sp)
/* 00AB8 80AAF908 8FAF0054 */  lw      $t7, 0x0054($sp)
/* 00ABC 80AAF90C 0C024F46 */  jal     func_80093D18
/* 00AC0 80AAF910 8DE40000 */  lw      $a0, 0x0000($t7)           ## 00000000
/* 00AC4 80AAF914 8FA50048 */  lw      $a1, 0x0048($sp)
/* 00AC8 80AAF918 3C19DB06 */  lui     $t9, 0xDB06                ## $t9 = DB060000
/* 00ACC 80AAF91C 37390020 */  ori     $t9, $t9, 0x0020           ## $t9 = DB060020
/* 00AD0 80AAF920 8CA302C0 */  lw      $v1, 0x02C0($a1)           ## 000002C0
/* 00AD4 80AAF924 3C0480AB */  lui     $a0, %hi(D_80AAFB60)       ## $a0 = 80AB0000
/* 00AD8 80AAF928 3C0E8016 */  lui     $t6, %hi(gSegments)
/* 00ADC 80AAF92C 24780008 */  addiu   $t8, $v1, 0x0008           ## $t8 = 00000008
/* 00AE0 80AAF930 ACB802C0 */  sw      $t8, 0x02C0($a1)           ## 000002C0
/* 00AE4 80AAF934 AC790000 */  sw      $t9, 0x0000($v1)           ## 00000000
/* 00AE8 80AAF938 8E0801E0 */  lw      $t0, 0x01E0($s0)           ## 000001E0
/* 00AEC 80AAF93C 3C0100FF */  lui     $at, 0x00FF                ## $at = 00FF0000
/* 00AF0 80AAF940 3421FFFF */  ori     $at, $at, 0xFFFF           ## $at = 00FFFFFF
/* 00AF4 80AAF944 00084880 */  sll     $t1, $t0,  2
/* 00AF8 80AAF948 00892021 */  addu    $a0, $a0, $t1
/* 00AFC 80AAF94C 8C84FB60 */  lw      $a0, %lo(D_80AAFB60)($a0)
/* 00B00 80AAF950 3C0880AB */  lui     $t0, %hi(func_80AAFA60)    ## $t0 = 80AB0000
/* 00B04 80AAF954 3C1980AB */  lui     $t9, %hi(func_80AAF9D8)    ## $t9 = 80AB0000
/* 00B08 80AAF958 00045900 */  sll     $t3, $a0,  4
/* 00B0C 80AAF95C 000B6702 */  srl     $t4, $t3, 28
/* 00B10 80AAF960 000C6880 */  sll     $t5, $t4,  2
/* 00B14 80AAF964 01CD7021 */  addu    $t6, $t6, $t5
/* 00B18 80AAF968 8DCE6FA8 */  lw      $t6, %lo(gSegments)($t6)
/* 00B1C 80AAF96C 00815024 */  and     $t2, $a0, $at
/* 00B20 80AAF970 3C018000 */  lui     $at, 0x8000                ## $at = 80000000
/* 00B24 80AAF974 014E7821 */  addu    $t7, $t2, $t6
/* 00B28 80AAF978 01E1C021 */  addu    $t8, $t7, $at
/* 00B2C 80AAF97C AC780004 */  sw      $t8, 0x0004($v1)           ## 00000004
/* 00B30 80AAF980 9207014E */  lbu     $a3, 0x014E($s0)           ## 0000014E
/* 00B34 80AAF984 8E06016C */  lw      $a2, 0x016C($s0)           ## 0000016C
/* 00B38 80AAF988 8E050150 */  lw      $a1, 0x0150($s0)           ## 00000150
/* 00B3C 80AAF98C 2739F9D8 */  addiu   $t9, $t9, %lo(func_80AAF9D8) ## $t9 = 80AAF9D8
/* 00B40 80AAF990 2508FA60 */  addiu   $t0, $t0, %lo(func_80AAFA60) ## $t0 = 80AAFA60
/* 00B44 80AAF994 AFA80014 */  sw      $t0, 0x0014($sp)
/* 00B48 80AAF998 AFB90010 */  sw      $t9, 0x0010($sp)
/* 00B4C 80AAF99C AFB00018 */  sw      $s0, 0x0018($sp)
/* 00B50 80AAF9A0 0C0286B2 */  jal     SkelAnime_DrawFlexOpa
/* 00B54 80AAF9A4 8FA40054 */  lw      $a0, 0x0054($sp)
/* 00B58 80AAF9A8 8FA90054 */  lw      $t1, 0x0054($sp)
/* 00B5C 80AAF9AC 3C0680AB */  lui     $a2, %hi(D_80AAFBF8)       ## $a2 = 80AB0000
/* 00B60 80AAF9B0 24C6FBF8 */  addiu   $a2, $a2, %lo(D_80AAFBF8)  ## $a2 = 80AAFBF8
/* 00B64 80AAF9B4 27A40038 */  addiu   $a0, $sp, 0x0038           ## $a0 = FFFFFFE8
/* 00B68 80AAF9B8 2407028E */  addiu   $a3, $zero, 0x028E         ## $a3 = 0000028E
/* 00B6C 80AAF9BC 0C031AD5 */  jal     Graph_CloseDisps
/* 00B70 80AAF9C0 8D250000 */  lw      $a1, 0x0000($t1)           ## 00000000
/* 00B74 80AAF9C4 8FBF002C */  lw      $ra, 0x002C($sp)
/* 00B78 80AAF9C8 8FB00028 */  lw      $s0, 0x0028($sp)
/* 00B7C 80AAF9CC 27BD0050 */  addiu   $sp, $sp, 0x0050           ## $sp = 00000000
/* 00B80 80AAF9D0 03E00008 */  jr      $ra
/* 00B84 80AAF9D4 00000000 */  nop
