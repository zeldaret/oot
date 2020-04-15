glabel func_8092E25C
/* 01C8C 8092E25C 27BDFFE8 */  addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
/* 01C90 8092E260 AFBF0014 */  sw      $ra, 0x0014($sp)
/* 01C94 8092E264 00803825 */  or      $a3, $a0, $zero            ## $a3 = 00000000
/* 01C98 8092E268 3C050601 */  lui     $a1, 0x0601                ## $a1 = 06010000
/* 01C9C 8092E26C 24A5DC2C */  addiu   $a1, $a1, 0xDC2C           ## $a1 = 0600DC2C
/* 01CA0 8092E270 AFA70018 */  sw      $a3, 0x0018($sp)
/* 01CA4 8092E274 2484014C */  addiu   $a0, $a0, 0x014C           ## $a0 = 0000014C
/* 01CA8 8092E278 0C0294D3 */  jal     SkelAnime_ChangeAnimTransitionRepeat
/* 01CAC 8092E27C 3C06C1A0 */  lui     $a2, 0xC1A0                ## $a2 = C1A00000
/* 01CB0 8092E280 3C058093 */  lui     $a1, %hi(D_80937340)       ## $a1 = 80930000
/* 01CB4 8092E284 8FA40018 */  lw      $a0, 0x0018($sp)
/* 01CB8 8092E288 0C00B6B0 */  jal     func_8002DAC0
/* 01CBC 8092E28C 24A57340 */  addiu   $a1, $a1, %lo(D_80937340)  ## $a1 = 80937340
/* 01CC0 8092E290 8FA70018 */  lw      $a3, 0x0018($sp)
/* 01CC4 8092E294 3C01BF80 */  lui     $at, 0xBF80                ## $at = BF800000
/* 01CC8 8092E298 44813000 */  mtc1    $at, $f6                   ## $f6 = -1.00
/* 01CCC 8092E29C C4E403C4 */  lwc1    $f4, 0x03C4($a3)           ## 000003C4
/* 01CD0 8092E2A0 90EE03E4 */  lbu     $t6, 0x03E4($a3)           ## 000003E4
/* 01CD4 8092E2A4 90F806C5 */  lbu     $t8, 0x06C5($a3)           ## 000006C5
/* 01CD8 8092E2A8 46062202 */  mul.s   $f8, $f4, $f6
/* 01CDC 8092E2AC 3C088093 */  lui     $t0, %hi(func_8092E2E0)    ## $t0 = 80930000
/* 01CE0 8092E2B0 2508E2E0 */  addiu   $t0, $t0, %lo(func_8092E2E0) ## $t0 = 8092E2E0
/* 01CE4 8092E2B4 31CFFFFC */  andi    $t7, $t6, 0xFFFC           ## $t7 = 00000000
/* 01CE8 8092E2B8 3319FFFE */  andi    $t9, $t8, 0xFFFE           ## $t9 = 00000000
/* 01CEC 8092E2BC A4E201A4 */  sh      $v0, 0x01A4($a3)           ## 000001A4
/* 01CF0 8092E2C0 A0EF03E4 */  sb      $t7, 0x03E4($a3)           ## 000003E4
/* 01CF4 8092E2C4 A0F906C5 */  sb      $t9, 0x06C5($a3)           ## 000006C5
/* 01CF8 8092E2C8 E4E803C4 */  swc1    $f8, 0x03C4($a3)           ## 000003C4
/* 01CFC 8092E2CC ACE80190 */  sw      $t0, 0x0190($a3)           ## 00000190
/* 01D00 8092E2D0 8FBF0014 */  lw      $ra, 0x0014($sp)
/* 01D04 8092E2D4 27BD0018 */  addiu   $sp, $sp, 0x0018           ## $sp = 00000000
/* 01D08 8092E2D8 03E00008 */  jr      $ra
/* 01D0C 8092E2DC 00000000 */  nop
