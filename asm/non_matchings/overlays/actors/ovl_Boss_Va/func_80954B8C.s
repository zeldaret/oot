glabel func_80954B8C
/* 058CC 80954B8C 27BDFFD8 */  addiu   $sp, $sp, 0xFFD8           ## $sp = FFFFFFD8
/* 058D0 80954B90 AFA40028 */  sw      $a0, 0x0028($sp)
/* 058D4 80954B94 AFBF0024 */  sw      $ra, 0x0024($sp)
/* 058D8 80954B98 3C040602 */  lui     $a0, 0x0602                ## $a0 = 06020000
/* 058DC 80954B9C AFA5002C */  sw      $a1, 0x002C($sp)
/* 058E0 80954BA0 0C028800 */  jal     SkelAnime_GetLastFrame

/* 058E4 80954BA4 24848D18 */  addiu   $a0, $a0, 0x8D18           ## $a0 = 06018D18
/* 058E8 80954BA8 44822000 */  mtc1    $v0, $f4                   ## $f4 = 0.00
/* 058EC 80954BAC 3C013F80 */  lui     $at, 0x3F80                ## $at = 3F800000
/* 058F0 80954BB0 44811000 */  mtc1    $at, $f2                   ## $f2 = 1.00
/* 058F4 80954BB4 46802020 */  cvt.s.w $f0, $f4
/* 058F8 80954BB8 3C01C0C0 */  lui     $at, 0xC0C0                ## $at = C0C00000
/* 058FC 80954BBC 44814000 */  mtc1    $at, $f8                   ## $f8 = -6.00
/* 05900 80954BC0 8FA40028 */  lw      $a0, 0x0028($sp)
/* 05904 80954BC4 3C050602 */  lui     $a1, 0x0602                ## $a1 = 06020000
/* 05908 80954BC8 240E0001 */  addiu   $t6, $zero, 0x0001         ## $t6 = 00000001
/* 0590C 80954BCC 46020181 */  sub.s   $f6, $f0, $f2
/* 05910 80954BD0 44061000 */  mfc1    $a2, $f2
/* 05914 80954BD4 AFAE0014 */  sw      $t6, 0x0014($sp)
/* 05918 80954BD8 24A58D18 */  addiu   $a1, $a1, 0x8D18           ## $a1 = 06018D18
/* 0591C 80954BDC 44073000 */  mfc1    $a3, $f6
/* 05920 80954BE0 E7A00010 */  swc1    $f0, 0x0010($sp)
/* 05924 80954BE4 2484014C */  addiu   $a0, $a0, 0x014C           ## $a0 = 0000014C
/* 05928 80954BE8 0C029468 */  jal     SkelAnime_ChangeAnim

/* 0592C 80954BEC E7A80018 */  swc1    $f8, 0x0018($sp)
/* 05930 80954BF0 8FA40028 */  lw      $a0, 0x0028($sp)
/* 05934 80954BF4 2401FFFE */  addiu   $at, $zero, 0xFFFE         ## $at = FFFFFFFE
/* 05938 80954BF8 3C058095 */  lui     $a1, %hi(func_80954C20)    ## $a1 = 80950000
/* 0593C 80954BFC 8C8F0004 */  lw      $t7, 0x0004($a0)           ## 00000004
/* 05940 80954C00 24A54C20 */  addiu   $a1, $a1, %lo(func_80954C20) ## $a1 = 80954C20
/* 05944 80954C04 01E1C024 */  and     $t8, $t7, $at
/* 05948 80954C08 0C253CB0 */  jal     func_8094F2C0
/* 0594C 80954C0C AC980004 */  sw      $t8, 0x0004($a0)           ## 00000004
/* 05950 80954C10 8FBF0024 */  lw      $ra, 0x0024($sp)
/* 05954 80954C14 27BD0028 */  addiu   $sp, $sp, 0x0028           ## $sp = 00000000
/* 05958 80954C18 03E00008 */  jr      $ra
/* 0595C 80954C1C 00000000 */  nop
