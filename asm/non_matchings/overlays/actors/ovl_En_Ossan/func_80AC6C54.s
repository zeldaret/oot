glabel func_80AC6C54
/* 03FB4 80AC6C54 27BDFFD0 */  addiu   $sp, $sp, 0xFFD0           ## $sp = FFFFFFD0
/* 03FB8 80AC6C58 AFA40030 */  sw      $a0, 0x0030($sp)
/* 03FBC 80AC6C5C AFA50034 */  sw      $a1, 0x0034($sp)
/* 03FC0 80AC6C60 00A02025 */  or      $a0, $a1, $zero            ## $a0 = 00000000
/* 03FC4 80AC6C64 8FA50030 */  lw      $a1, 0x0030($sp)
/* 03FC8 80AC6C68 AFBF0024 */  sw      $ra, 0x0024($sp)
/* 03FCC 80AC6C6C 3C060601 */  lui     $a2, 0x0601                ## $a2 = 06010000
/* 03FD0 80AC6C70 24A5014C */  addiu   $a1, $a1, 0x014C           ## $a1 = 0000014C
/* 03FD4 80AC6C74 AFA50028 */  sw      $a1, 0x0028($sp)
/* 03FD8 80AC6C78 24C6FEF0 */  addiu   $a2, $a2, 0xFEF0           ## $a2 = 0600FEF0
/* 03FDC 80AC6C7C AFA00010 */  sw      $zero, 0x0010($sp)
/* 03FE0 80AC6C80 AFA00014 */  sw      $zero, 0x0014($sp)
/* 03FE4 80AC6C84 AFA00018 */  sw      $zero, 0x0018($sp)
/* 03FE8 80AC6C88 0C0291BE */  jal     SkelAnime_InitSV
/* 03FEC 80AC6C8C 00003825 */  or      $a3, $zero, $zero          ## $a3 = 00000000
/* 03FF0 80AC6C90 8FAF0030 */  lw      $t7, 0x0030($sp)
/* 03FF4 80AC6C94 8FAE0034 */  lw      $t6, 0x0034($sp)
/* 03FF8 80AC6C98 3C090001 */  lui     $t1, 0x0001                ## $t1 = 00010000
/* 03FFC 80AC6C9C 81F801EA */  lb      $t8, 0x01EA($t7)           ## 000001EA
/* 04000 80AC6CA0 3C018000 */  lui     $at, 0x8000                ## $at = 80000000
/* 04004 80AC6CA4 3C040600 */  lui     $a0, 0x0600                ## $a0 = 06000000
/* 04008 80AC6CA8 0018C900 */  sll     $t9, $t8,  4
/* 0400C 80AC6CAC 0338C821 */  addu    $t9, $t9, $t8
/* 04010 80AC6CB0 0019C880 */  sll     $t9, $t9,  2
/* 04014 80AC6CB4 01D94021 */  addu    $t0, $t6, $t9
/* 04018 80AC6CB8 01284821 */  addu    $t1, $t1, $t0
/* 0401C 80AC6CBC 8D2917B4 */  lw      $t1, 0x17B4($t1)           ## 000117B4
/* 04020 80AC6CC0 248400FC */  addiu   $a0, $a0, 0x00FC           ## $a0 = 060000FC
/* 04024 80AC6CC4 01215021 */  addu    $t2, $t1, $at
/* 04028 80AC6CC8 3C018016 */  lui     $at, 0x8016                ## $at = 80160000
/* 0402C 80AC6CCC 0C028800 */  jal     SkelAnime_GetFrameCount

/* 04030 80AC6CD0 AC2A6FC0 */  sw      $t2, 0x6FC0($at)           ## 80166FC0
/* 04034 80AC6CD4 44822000 */  mtc1    $v0, $f4                   ## $f4 = 0.00
/* 04038 80AC6CD8 44800000 */  mtc1    $zero, $f0                 ## $f0 = 0.00
/* 0403C 80AC6CDC 3C050600 */  lui     $a1, 0x0600                ## $a1 = 06000000
/* 04040 80AC6CE0 468021A0 */  cvt.s.w $f6, $f4
/* 04044 80AC6CE4 44070000 */  mfc1    $a3, $f0
/* 04048 80AC6CE8 24A500FC */  addiu   $a1, $a1, 0x00FC           ## $a1 = 060000FC
/* 0404C 80AC6CEC 8FA40028 */  lw      $a0, 0x0028($sp)
/* 04050 80AC6CF0 3C063F80 */  lui     $a2, 0x3F80                ## $a2 = 3F800000
/* 04054 80AC6CF4 AFA00014 */  sw      $zero, 0x0014($sp)
/* 04058 80AC6CF8 E7A60010 */  swc1    $f6, 0x0010($sp)
/* 0405C 80AC6CFC 0C029468 */  jal     SkelAnime_ChangeAnim

/* 04060 80AC6D00 E7A00018 */  swc1    $f0, 0x0018($sp)
/* 04064 80AC6D04 8FA20030 */  lw      $v0, 0x0030($sp)
/* 04068 80AC6D08 3C0B80AD */  lui     $t3, %hi(func_80AC8244)    ## $t3 = 80AD0000
/* 0406C 80AC6D0C 3C0C80AC */  lui     $t4, %hi(func_80AC7380)    ## $t4 = 80AC0000
/* 04070 80AC6D10 256B8244 */  addiu   $t3, $t3, %lo(func_80AC8244) ## $t3 = 80AC8244
/* 04074 80AC6D14 258C7380 */  addiu   $t4, $t4, %lo(func_80AC7380) ## $t4 = 80AC7380
/* 04078 80AC6D18 AC4B0134 */  sw      $t3, 0x0134($v0)           ## 00000134
/* 0407C 80AC6D1C AC4C0194 */  sw      $t4, 0x0194($v0)           ## 00000194
/* 04080 80AC6D20 8FBF0024 */  lw      $ra, 0x0024($sp)
/* 04084 80AC6D24 27BD0030 */  addiu   $sp, $sp, 0x0030           ## $sp = 00000000
/* 04088 80AC6D28 03E00008 */  jr      $ra
/* 0408C 80AC6D2C 00000000 */  nop


