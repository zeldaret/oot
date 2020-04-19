glabel func_80AD9368
/* 003D8 80AD9368 27BDFFE8 */  addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
/* 003DC 80AD936C AFBF0014 */  sw      $ra, 0x0014($sp)
/* 003E0 80AD9370 00803825 */  or      $a3, $a0, $zero            ## $a3 = 00000000
/* 003E4 80AD9374 3C050600 */  lui     $a1, 0x0600                ## $a1 = 06000000
/* 003E8 80AD9378 24A514CC */  addiu   $a1, $a1, 0x14CC           ## $a1 = 060014CC
/* 003EC 80AD937C AFA70018 */  sw      $a3, 0x0018($sp)
/* 003F0 80AD9380 2484014C */  addiu   $a0, $a0, 0x014C           ## $a0 = 0000014C
/* 003F4 80AD9384 0C0294D3 */  jal     SkelAnime_ChangeAnimTransitionRepeat
/* 003F8 80AD9388 3C06C040 */  lui     $a2, 0xC040                ## $a2 = C0400000
/* 003FC 80AD938C 24040002 */  addiu   $a0, $zero, 0x0002         ## $a0 = 00000002
/* 00400 80AD9390 0C01DF64 */  jal     Math_Rand_S16Offset

/* 00404 80AD9394 24050003 */  addiu   $a1, $zero, 0x0003         ## $a1 = 00000003
/* 00408 80AD9398 8FA70018 */  lw      $a3, 0x0018($sp)
/* 0040C 80AD939C 44802000 */  mtc1    $zero, $f4                 ## $f4 = 0.00
/* 00410 80AD93A0 3C0E80AE */  lui     $t6, %hi(func_80ADA4A8)    ## $t6 = 80AE0000
/* 00414 80AD93A4 25CEA4A8 */  addiu   $t6, $t6, %lo(func_80ADA4A8) ## $t6 = 80ADA4A8
/* 00418 80AD93A8 A4E2019A */  sh      $v0, 0x019A($a3)           ## 0000019A
/* 0041C 80AD93AC ACEE0190 */  sw      $t6, 0x0190($a3)           ## 00000190
/* 00420 80AD93B0 E4E40068 */  swc1    $f4, 0x0068($a3)           ## 00000068
/* 00424 80AD93B4 8FBF0014 */  lw      $ra, 0x0014($sp)
/* 00428 80AD93B8 27BD0018 */  addiu   $sp, $sp, 0x0018           ## $sp = 00000000
/* 0042C 80AD93BC 03E00008 */  jr      $ra
/* 00430 80AD93C0 00000000 */  nop
