glabel func_809C39D0
/* 003A0 809C39D0 27BDFFD8 */  addiu   $sp, $sp, 0xFFD8           ## $sp = FFFFFFD8
/* 003A4 809C39D4 AFA40028 */  sw      $a0, 0x0028($sp)
/* 003A8 809C39D8 AFBF0024 */  sw      $ra, 0x0024($sp)
/* 003AC 809C39DC 3C040600 */  lui     $a0, 0x0600                ## $a0 = 06000000
/* 003B0 809C39E0 AFA5002C */  sw      $a1, 0x002C($sp)
/* 003B4 809C39E4 0C028800 */  jal     Animation_GetLastFrame

/* 003B8 809C39E8 24840080 */  addiu   $a0, $a0, 0x0080           ## $a0 = 06000080
/* 003BC 809C39EC 44822000 */  mtc1    $v0, $f4                   ## $f4 = 0.00
/* 003C0 809C39F0 8FA30028 */  lw      $v1, 0x0028($sp)
/* 003C4 809C39F4 3C01C120 */  lui     $at, 0xC120                ## $at = C1200000
/* 003C8 809C39F8 46802020 */  cvt.s.w $f0, $f4
/* 003CC 809C39FC 44813000 */  mtc1    $at, $f6                   ## $f6 = -10.00
/* 003D0 809C3A00 3C050600 */  lui     $a1, 0x0600                ## $a1 = 06000000
/* 003D4 809C3A04 240E0002 */  addiu   $t6, $zero, 0x0002         ## $t6 = 00000002
/* 003D8 809C3A08 24A50080 */  addiu   $a1, $a1, 0x0080           ## $a1 = 06000080
/* 003DC 809C3A0C 3C063F80 */  lui     $a2, 0x3F80                ## $a2 = 3F800000
/* 003E0 809C3A10 E4600254 */  swc1    $f0, 0x0254($v1)           ## 00000254
/* 003E4 809C3A14 AFAE0014 */  sw      $t6, 0x0014($sp)
/* 003E8 809C3A18 E7A00010 */  swc1    $f0, 0x0010($sp)
/* 003EC 809C3A1C 24070000 */  addiu   $a3, $zero, 0x0000         ## $a3 = 00000000
/* 003F0 809C3A20 2464014C */  addiu   $a0, $v1, 0x014C           ## $a0 = 0000014C
/* 003F4 809C3A24 0C029468 */  jal     Animation_Change

/* 003F8 809C3A28 E7A60018 */  swc1    $f6, 0x0018($sp)
/* 003FC 809C3A2C 8FA30028 */  lw      $v1, 0x0028($sp)
/* 00400 809C3A30 3C18809C */  lui     $t8, %hi(func_809C3A54)    ## $t8 = 809C0000
/* 00404 809C3A34 240F0001 */  addiu   $t7, $zero, 0x0001         ## $t7 = 00000001
/* 00408 809C3A38 27183A54 */  addiu   $t8, $t8, %lo(func_809C3A54) ## $t8 = 809C3A54
/* 0040C 809C3A3C A46F0238 */  sh      $t7, 0x0238($v1)           ## 00000238
/* 00410 809C3A40 AC780214 */  sw      $t8, 0x0214($v1)           ## 00000214
/* 00414 809C3A44 8FBF0024 */  lw      $ra, 0x0024($sp)
/* 00418 809C3A48 27BD0028 */  addiu   $sp, $sp, 0x0028           ## $sp = 00000000
/* 0041C 809C3A4C 03E00008 */  jr      $ra
/* 00420 809C3A50 00000000 */  nop
