glabel func_80955E64
/* 06BA4 80955E64 27BDFFD8 */  addiu   $sp, $sp, 0xFFD8           ## $sp = FFFFFFD8
/* 06BA8 80955E68 AFA40028 */  sw      $a0, 0x0028($sp)
/* 06BAC 80955E6C AFBF0024 */  sw      $ra, 0x0024($sp)
/* 06BB0 80955E70 3C040602 */  lui     $a0, %hi(D_06018D18)                ## $a0 = 06020000
/* 06BB4 80955E74 AFA5002C */  sw      $a1, 0x002C($sp)
/* 06BB8 80955E78 0C028800 */  jal     Animation_GetLastFrame

/* 06BBC 80955E7C 24848D18 */  addiu   $a0, $a0, %lo(D_06018D18)           ## $a0 = 06018D18
/* 06BC0 80955E80 44822000 */  mtc1    $v0, $f4                   ## $f4 = 0.00
/* 06BC4 80955E84 3C013F80 */  lui     $at, 0x3F80                ## $at = 3F800000
/* 06BC8 80955E88 44811000 */  mtc1    $at, $f2                   ## $f2 = 1.00
/* 06BCC 80955E8C 46802020 */  cvt.s.w $f0, $f4
/* 06BD0 80955E90 3C01C0C0 */  lui     $at, 0xC0C0                ## $at = C0C00000
/* 06BD4 80955E94 44814000 */  mtc1    $at, $f8                   ## $f8 = -6.00
/* 06BD8 80955E98 8FA40028 */  lw      $a0, 0x0028($sp)
/* 06BDC 80955E9C 3C050602 */  lui     $a1, %hi(D_06018D18)                ## $a1 = 06020000
/* 06BE0 80955EA0 240E0001 */  addiu   $t6, $zero, 0x0001         ## $t6 = 00000001
/* 06BE4 80955EA4 46020181 */  sub.s   $f6, $f0, $f2
/* 06BE8 80955EA8 44061000 */  mfc1    $a2, $f2
/* 06BEC 80955EAC AFAE0014 */  sw      $t6, 0x0014($sp)
/* 06BF0 80955EB0 24A58D18 */  addiu   $a1, $a1, %lo(D_06018D18)           ## $a1 = 06018D18
/* 06BF4 80955EB4 44073000 */  mfc1    $a3, $f6
/* 06BF8 80955EB8 E7A00010 */  swc1    $f0, 0x0010($sp)
/* 06BFC 80955EBC 2484014C */  addiu   $a0, $a0, 0x014C           ## $a0 = 0000014C
/* 06C00 80955EC0 0C029468 */  jal     Animation_Change

/* 06C04 80955EC4 E7A80018 */  swc1    $f8, 0x0018($sp)
/* 06C08 80955EC8 8FA40028 */  lw      $a0, 0x0028($sp)
/* 06C0C 80955ECC 3C058095 */  lui     $a1, %hi(func_80955EEC)    ## $a1 = 80950000
/* 06C10 80955ED0 24A55EEC */  addiu   $a1, $a1, %lo(func_80955EEC) ## $a1 = 80955EEC
/* 06C14 80955ED4 0C253CB0 */  jal     func_8094F2C0
/* 06C18 80955ED8 A0800195 */  sb      $zero, 0x0195($a0)         ## 00000195
/* 06C1C 80955EDC 8FBF0024 */  lw      $ra, 0x0024($sp)
/* 06C20 80955EE0 27BD0028 */  addiu   $sp, $sp, 0x0028           ## $sp = 00000000
/* 06C24 80955EE4 03E00008 */  jr      $ra
/* 06C28 80955EE8 00000000 */  nop
