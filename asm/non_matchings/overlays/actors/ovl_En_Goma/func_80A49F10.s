glabel func_80A49F10
/* 01050 80A49F10 27BDFFD8 */  addiu   $sp, $sp, 0xFFD8           ## $sp = FFFFFFD8
/* 01054 80A49F14 AFA40028 */  sw      $a0, 0x0028($sp)
/* 01058 80A49F18 AFBF0024 */  sw      $ra, 0x0024($sp)
/* 0105C 80A49F1C 3C040600 */  lui     $a0, %hi(D_06003D78)                ## $a0 = 06000000
/* 01060 80A49F20 0C028800 */  jal     Animation_GetLastFrame

/* 01064 80A49F24 24843D78 */  addiu   $a0, $a0, %lo(D_06003D78)           ## $a0 = 06003D78
/* 01068 80A49F28 44822000 */  mtc1    $v0, $f4                   ## $f4 = 0.00
/* 0106C 80A49F2C 3C01C0A0 */  lui     $at, 0xC0A0                ## $at = C0A00000
/* 01070 80A49F30 44814000 */  mtc1    $at, $f8                   ## $f8 = -5.00
/* 01074 80A49F34 468021A0 */  cvt.s.w $f6, $f4
/* 01078 80A49F38 8FA40028 */  lw      $a0, 0x0028($sp)
/* 0107C 80A49F3C 3C050600 */  lui     $a1, %hi(D_06003D78)                ## $a1 = 06000000
/* 01080 80A49F40 24A53D78 */  addiu   $a1, $a1, %lo(D_06003D78)           ## $a1 = 06003D78
/* 01084 80A49F44 3C063F80 */  lui     $a2, 0x3F80                ## $a2 = 3F800000
/* 01088 80A49F48 24070000 */  addiu   $a3, $zero, 0x0000         ## $a3 = 00000000
/* 0108C 80A49F4C E7A60010 */  swc1    $f6, 0x0010($sp)
/* 01090 80A49F50 AFA00014 */  sw      $zero, 0x0014($sp)
/* 01094 80A49F54 E7A80018 */  swc1    $f8, 0x0018($sp)
/* 01098 80A49F58 0C029468 */  jal     Animation_Change

/* 0109C 80A49F5C 2484014C */  addiu   $a0, $a0, 0x014C           ## $a0 = 0000014C
/* 010A0 80A49F60 8FAF0028 */  lw      $t7, 0x0028($sp)
/* 010A4 80A49F64 3C0E80A5 */  lui     $t6, %hi(func_80A4A368)    ## $t6 = 80A50000
/* 010A8 80A49F68 25CEA368 */  addiu   $t6, $t6, %lo(func_80A4A368) ## $t6 = 80A4A368
/* 010AC 80A49F6C 24040046 */  addiu   $a0, $zero, 0x0046         ## $a0 = 00000046
/* 010B0 80A49F70 2405006E */  addiu   $a1, $zero, 0x006E         ## $a1 = 0000006E
/* 010B4 80A49F74 0C01DF64 */  jal     Rand_S16Offset

/* 010B8 80A49F78 ADEE02B0 */  sw      $t6, 0x02B0($t7)           ## 000002B0
/* 010BC 80A49F7C 8FB80028 */  lw      $t8, 0x0028($sp)
/* 010C0 80A49F80 A70202CC */  sh      $v0, 0x02CC($t8)           ## 000002CC
/* 010C4 80A49F84 8FBF0024 */  lw      $ra, 0x0024($sp)
/* 010C8 80A49F88 27BD0028 */  addiu   $sp, $sp, 0x0028           ## $sp = 00000000
/* 010CC 80A49F8C 03E00008 */  jr      $ra
/* 010D0 80A49F90 00000000 */  nop
