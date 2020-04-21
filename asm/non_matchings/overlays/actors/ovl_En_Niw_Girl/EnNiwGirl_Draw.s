.rdata
glabel D_80AB9AEC
    .asciz "../z_en_niw_girl.c"
    .balign 4

glabel D_80AB9B00
    .asciz "../z_en_niw_girl.c"
    .balign 4

.text
glabel EnNiwGirl_Draw
/* 008C8 80AB9848 27BDFFA0 */  addiu   $sp, $sp, 0xFFA0           ## $sp = FFFFFFA0
/* 008CC 80AB984C 3C0F80AC */  lui     $t7, %hi(D_80AB99CC)       ## $t7 = 80AC0000
/* 008D0 80AB9850 AFBF002C */  sw      $ra, 0x002C($sp)
/* 008D4 80AB9854 AFB10028 */  sw      $s1, 0x0028($sp)
/* 008D8 80AB9858 AFB00024 */  sw      $s0, 0x0024($sp)
/* 008DC 80AB985C 25EF99CC */  addiu   $t7, $t7, %lo(D_80AB99CC)  ## $t7 = 80AB99CC
/* 008E0 80AB9860 8DF90000 */  lw      $t9, 0x0000($t7)           ## 80AB99CC
/* 008E4 80AB9864 27AE004C */  addiu   $t6, $sp, 0x004C           ## $t6 = FFFFFFEC
/* 008E8 80AB9868 8DF80004 */  lw      $t8, 0x0004($t7)           ## 80AB99D0
/* 008EC 80AB986C ADD90000 */  sw      $t9, 0x0000($t6)           ## FFFFFFEC
/* 008F0 80AB9870 8DF90008 */  lw      $t9, 0x0008($t7)           ## 80AB99D4
/* 008F4 80AB9874 00A08825 */  or      $s1, $a1, $zero            ## $s1 = 00000000
/* 008F8 80AB9878 ADD80004 */  sw      $t8, 0x0004($t6)           ## FFFFFFF0
/* 008FC 80AB987C ADD90008 */  sw      $t9, 0x0008($t6)           ## FFFFFFF4
/* 00900 80AB9880 8CA50000 */  lw      $a1, 0x0000($a1)           ## 00000000
/* 00904 80AB9884 00808025 */  or      $s0, $a0, $zero            ## $s0 = 00000000
/* 00908 80AB9888 3C0680AC */  lui     $a2, %hi(D_80AB9AEC)       ## $a2 = 80AC0000
/* 0090C 80AB988C 24C69AEC */  addiu   $a2, $a2, %lo(D_80AB9AEC)  ## $a2 = 80AB9AEC
/* 00910 80AB9890 27A40038 */  addiu   $a0, $sp, 0x0038           ## $a0 = FFFFFFD8
/* 00914 80AB9894 2407023D */  addiu   $a3, $zero, 0x023D         ## $a3 = 0000023D
/* 00918 80AB9898 0C031AB1 */  jal     Graph_OpenDisps
/* 0091C 80AB989C AFA50048 */  sw      $a1, 0x0048($sp)
/* 00920 80AB98A0 0C024F46 */  jal     func_80093D18
/* 00924 80AB98A4 8E240000 */  lw      $a0, 0x0000($s1)           ## 00000000
/* 00928 80AB98A8 8FA50048 */  lw      $a1, 0x0048($sp)
/* 0092C 80AB98AC 3C09DB06 */  lui     $t1, 0xDB06                ## $t1 = DB060000
/* 00930 80AB98B0 35290020 */  ori     $t1, $t1, 0x0020           ## $t1 = DB060020
/* 00934 80AB98B4 8CA302C0 */  lw      $v1, 0x02C0($a1)           ## 000002C0
/* 00938 80AB98B8 3C0480AC */  lui     $a0, %hi(D_80AB99D8)       ## $a0 = 80AC0000
/* 0093C 80AB98BC 3C188016 */  lui     $t8, %hi(gSegments)
/* 00940 80AB98C0 24680008 */  addiu   $t0, $v1, 0x0008           ## $t0 = 00000008
/* 00944 80AB98C4 ACA802C0 */  sw      $t0, 0x02C0($a1)           ## 000002C0
/* 00948 80AB98C8 AC690000 */  sw      $t1, 0x0000($v1)           ## 00000000
/* 0094C 80AB98CC 860A0272 */  lh      $t2, 0x0272($s0)           ## 00000272
/* 00950 80AB98D0 3C0100FF */  lui     $at, 0x00FF                ## $at = 00FF0000
/* 00954 80AB98D4 3421FFFF */  ori     $at, $at, 0xFFFF           ## $at = 00FFFFFF
/* 00958 80AB98D8 000A5880 */  sll     $t3, $t2,  2
/* 0095C 80AB98DC 008B2021 */  addu    $a0, $a0, $t3
/* 00960 80AB98E0 8C8499D8 */  lw      $a0, %lo(D_80AB99D8)($a0)
/* 00964 80AB98E4 3C0980AC */  lui     $t1, %hi(func_80AB97E4)    ## $t1 = 80AC0000
/* 00968 80AB98E8 252997E4 */  addiu   $t1, $t1, %lo(func_80AB97E4) ## $t1 = 80AB97E4
/* 0096C 80AB98EC 00046900 */  sll     $t5, $a0,  4
/* 00970 80AB98F0 000D7702 */  srl     $t6, $t5, 28
/* 00974 80AB98F4 000E7880 */  sll     $t7, $t6,  2
/* 00978 80AB98F8 030FC021 */  addu    $t8, $t8, $t7
/* 0097C 80AB98FC 8F186FA8 */  lw      $t8, %lo(gSegments)($t8)
/* 00980 80AB9900 00816024 */  and     $t4, $a0, $at
/* 00984 80AB9904 3C018000 */  lui     $at, 0x8000                ## $at = 80000000
/* 00988 80AB9908 0198C821 */  addu    $t9, $t4, $t8
/* 0098C 80AB990C 03214021 */  addu    $t0, $t9, $at
/* 00990 80AB9910 AC680004 */  sw      $t0, 0x0004($v1)           ## 00000004
/* 00994 80AB9914 9207014E */  lbu     $a3, 0x014E($s0)           ## 0000014E
/* 00998 80AB9918 8E06016C */  lw      $a2, 0x016C($s0)           ## 0000016C
/* 0099C 80AB991C 8E050150 */  lw      $a1, 0x0150($s0)           ## 00000150
/* 009A0 80AB9920 AFB00018 */  sw      $s0, 0x0018($sp)
/* 009A4 80AB9924 AFA00014 */  sw      $zero, 0x0014($sp)
/* 009A8 80AB9928 AFA90010 */  sw      $t1, 0x0010($sp)
/* 009AC 80AB992C 0C0286B2 */  jal     SkelAnime_DrawSV
/* 009B0 80AB9930 02202025 */  or      $a0, $s1, $zero            ## $a0 = 00000000
/* 009B4 80AB9934 26040024 */  addiu   $a0, $s0, 0x0024           ## $a0 = 00000024
/* 009B8 80AB9938 27A5004C */  addiu   $a1, $sp, 0x004C           ## $a1 = FFFFFFEC
/* 009BC 80AB993C 240600FF */  addiu   $a2, $zero, 0x00FF         ## $a2 = 000000FF
/* 009C0 80AB9940 0C00CF0C */  jal     func_80033C30
/* 009C4 80AB9944 02203825 */  or      $a3, $s1, $zero            ## $a3 = 00000000
/* 009C8 80AB9948 3C0680AC */  lui     $a2, %hi(D_80AB9B00)       ## $a2 = 80AC0000
/* 009CC 80AB994C 24C69B00 */  addiu   $a2, $a2, %lo(D_80AB9B00)  ## $a2 = 80AB9B00
/* 009D0 80AB9950 27A40038 */  addiu   $a0, $sp, 0x0038           ## $a0 = FFFFFFD8
/* 009D4 80AB9954 8E250000 */  lw      $a1, 0x0000($s1)           ## 00000000
/* 009D8 80AB9958 0C031AD5 */  jal     Graph_CloseDisps
/* 009DC 80AB995C 24070250 */  addiu   $a3, $zero, 0x0250         ## $a3 = 00000250
/* 009E0 80AB9960 8FBF002C */  lw      $ra, 0x002C($sp)
/* 009E4 80AB9964 8FB00024 */  lw      $s0, 0x0024($sp)
/* 009E8 80AB9968 8FB10028 */  lw      $s1, 0x0028($sp)
/* 009EC 80AB996C 03E00008 */  jr      $ra
/* 009F0 80AB9970 27BD0060 */  addiu   $sp, $sp, 0x0060           ## $sp = 00000000
/* 009F4 80AB9974 00000000 */  nop
/* 009F8 80AB9978 00000000 */  nop
/* 009FC 80AB997C 00000000 */  nop
