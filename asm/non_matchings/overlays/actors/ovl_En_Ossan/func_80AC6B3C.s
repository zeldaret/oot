glabel func_80AC6B3C
/* 03E9C 80AC6B3C 27BDFFB8 */  addiu   $sp, $sp, 0xFFB8           ## $sp = FFFFFFB8
/* 03EA0 80AC6B40 AFB00038 */  sw      $s0, 0x0038($sp)
/* 03EA4 80AC6B44 00808025 */  or      $s0, $a0, $zero            ## $s0 = 00000000
/* 03EA8 80AC6B48 AFA5004C */  sw      $a1, 0x004C($sp)
/* 03EAC 80AC6B4C 00A02025 */  or      $a0, $a1, $zero            ## $a0 = 00000000
/* 03EB0 80AC6B50 AFBF003C */  sw      $ra, 0x003C($sp)
/* 03EB4 80AC6B54 2605014C */  addiu   $a1, $s0, 0x014C           ## $a1 = 0000014C
/* 03EB8 80AC6B58 3C060600 */  lui     $a2, 0x0600                ## $a2 = 06000000
/* 03EBC 80AC6B5C 24C600F0 */  addiu   $a2, $a2, 0x00F0           ## $a2 = 060000F0
/* 03EC0 80AC6B60 AFA50040 */  sw      $a1, 0x0040($sp)
/* 03EC4 80AC6B64 AFA00010 */  sw      $zero, 0x0010($sp)
/* 03EC8 80AC6B68 AFA00014 */  sw      $zero, 0x0014($sp)
/* 03ECC 80AC6B6C AFA00018 */  sw      $zero, 0x0018($sp)
/* 03ED0 80AC6B70 0C0291BE */  jal     SkelAnime_InitSV
/* 03ED4 80AC6B74 00003825 */  or      $a3, $zero, $zero          ## $a3 = 00000000
/* 03ED8 80AC6B78 820F01EA */  lb      $t7, 0x01EA($s0)           ## 000001EA
/* 03EDC 80AC6B7C 8FAE004C */  lw      $t6, 0x004C($sp)
/* 03EE0 80AC6B80 3C080001 */  lui     $t0, 0x0001                ## $t0 = 00010000
/* 03EE4 80AC6B84 000FC100 */  sll     $t8, $t7,  4
/* 03EE8 80AC6B88 030FC021 */  addu    $t8, $t8, $t7
/* 03EEC 80AC6B8C 0018C080 */  sll     $t8, $t8,  2
/* 03EF0 80AC6B90 01D8C821 */  addu    $t9, $t6, $t8
/* 03EF4 80AC6B94 01194021 */  addu    $t0, $t0, $t9
/* 03EF8 80AC6B98 8D0817B4 */  lw      $t0, 0x17B4($t0)           ## 000117B4
/* 03EFC 80AC6B9C 3C018000 */  lui     $at, 0x8000                ## $at = 80000000
/* 03F00 80AC6BA0 3C040600 */  lui     $a0, 0x0600                ## $a0 = 06000000
/* 03F04 80AC6BA4 01014821 */  addu    $t1, $t0, $at
/* 03F08 80AC6BA8 3C018016 */  lui     $at, 0x8016                ## $at = 80160000
/* 03F0C 80AC6BAC AC296FC0 */  sw      $t1, 0x6FC0($at)           ## 80166FC0
/* 03F10 80AC6BB0 0C028800 */  jal     SkelAnime_GetFrameCount

/* 03F14 80AC6BB4 248404A8 */  addiu   $a0, $a0, 0x04A8           ## $a0 = 060004A8
/* 03F18 80AC6BB8 44822000 */  mtc1    $v0, $f4                   ## $f4 = 0.00
/* 03F1C 80AC6BBC 44800000 */  mtc1    $zero, $f0                 ## $f0 = 0.00
/* 03F20 80AC6BC0 3C050600 */  lui     $a1, 0x0600                ## $a1 = 06000000
/* 03F24 80AC6BC4 468021A0 */  cvt.s.w $f6, $f4
/* 03F28 80AC6BC8 44070000 */  mfc1    $a3, $f0
/* 03F2C 80AC6BCC 24A504A8 */  addiu   $a1, $a1, 0x04A8           ## $a1 = 060004A8
/* 03F30 80AC6BD0 8FA40040 */  lw      $a0, 0x0040($sp)
/* 03F34 80AC6BD4 3C063F80 */  lui     $a2, 0x3F80                ## $a2 = 3F800000
/* 03F38 80AC6BD8 AFA00014 */  sw      $zero, 0x0014($sp)
/* 03F3C 80AC6BDC E7A60010 */  swc1    $f6, 0x0010($sp)
/* 03F40 80AC6BE0 0C029468 */  jal     SkelAnime_ChangeAnim

/* 03F44 80AC6BE4 E7A00018 */  swc1    $f0, 0x0018($sp)
/* 03F48 80AC6BE8 8FA6004C */  lw      $a2, 0x004C($sp)
/* 03F4C 80AC6BEC C6080024 */  lwc1    $f8, 0x0024($s0)           ## 00000024
/* 03F50 80AC6BF0 3C0A80AD */  lui     $t2, %hi(func_80AC80B4)    ## $t2 = 80AD0000
/* 03F54 80AC6BF4 3C0B80AC */  lui     $t3, %hi(func_80AC7380)    ## $t3 = 80AC0000
/* 03F58 80AC6BF8 254A80B4 */  addiu   $t2, $t2, %lo(func_80AC80B4) ## $t2 = 80AC80B4
/* 03F5C 80AC6BFC 256B7380 */  addiu   $t3, $t3, %lo(func_80AC7380) ## $t3 = 80AC7380
/* 03F60 80AC6C00 AE0A0134 */  sw      $t2, 0x0134($s0)           ## 00000134
/* 03F64 80AC6C04 AE0B0194 */  sw      $t3, 0x0194($s0)           ## 00000194
/* 03F68 80AC6C08 E7A80010 */  swc1    $f8, 0x0010($sp)
/* 03F6C 80AC6C0C C60A0028 */  lwc1    $f10, 0x0028($s0)          ## 00000028
/* 03F70 80AC6C10 240C0003 */  addiu   $t4, $zero, 0x0003         ## $t4 = 00000003
/* 03F74 80AC6C14 02002825 */  or      $a1, $s0, $zero            ## $a1 = 00000000
/* 03F78 80AC6C18 E7AA0014 */  swc1    $f10, 0x0014($sp)
/* 03F7C 80AC6C1C C610002C */  lwc1    $f16, 0x002C($s0)          ## 0000002C
/* 03F80 80AC6C20 AFAC0028 */  sw      $t4, 0x0028($sp)
/* 03F84 80AC6C24 AFA00024 */  sw      $zero, 0x0024($sp)
/* 03F88 80AC6C28 AFA00020 */  sw      $zero, 0x0020($sp)
/* 03F8C 80AC6C2C AFA0001C */  sw      $zero, 0x001C($sp)
/* 03F90 80AC6C30 24070018 */  addiu   $a3, $zero, 0x0018         ## $a3 = 00000018
/* 03F94 80AC6C34 24C41C24 */  addiu   $a0, $a2, 0x1C24           ## $a0 = 00001C24
/* 03F98 80AC6C38 0C00C916 */  jal     Actor_SpawnAttached

/* 03F9C 80AC6C3C E7B00018 */  swc1    $f16, 0x0018($sp)
/* 03FA0 80AC6C40 8FBF003C */  lw      $ra, 0x003C($sp)
/* 03FA4 80AC6C44 8FB00038 */  lw      $s0, 0x0038($sp)
/* 03FA8 80AC6C48 27BD0048 */  addiu   $sp, $sp, 0x0048           ## $sp = 00000000
/* 03FAC 80AC6C4C 03E00008 */  jr      $ra
/* 03FB0 80AC6C50 00000000 */  nop
