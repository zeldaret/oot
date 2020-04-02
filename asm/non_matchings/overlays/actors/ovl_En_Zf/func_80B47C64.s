glabel func_80B47C64
/* 03C14 80B47C64 27BDFFD8 */  addiu   $sp, $sp, 0xFFD8           ## $sp = FFFFFFD8
/* 03C18 80B47C68 AFB00018 */  sw      $s0, 0x0018($sp)
/* 03C1C 80B47C6C AFA5002C */  sw      $a1, 0x002C($sp)
/* 03C20 80B47C70 00808025 */  or      $s0, $a0, $zero            ## $s0 = 00000000
/* 03C24 80B47C74 AFBF001C */  sw      $ra, 0x001C($sp)
/* 03C28 80B47C78 3C050601 */  lui     $a1, 0x0601                ## $a1 = 06010000
/* 03C2C 80B47C7C 24A5366C */  addiu   $a1, $a1, 0x366C           ## $a1 = 0601366C
/* 03C30 80B47C80 0C02947A */  jal     SkelAnime_ChangeAnimDefaultStop
/* 03C34 80B47C84 2484014C */  addiu   $a0, $a0, 0x014C           ## $a0 = 0000014C
/* 03C38 80B47C88 860E0032 */  lh      $t6, 0x0032($s0)           ## 00000032
/* 03C3C 80B47C8C 44802000 */  mtc1    $zero, $f4                 ## $f4 = 0.00
/* 03C40 80B47C90 34018000 */  ori     $at, $zero, 0x8000         ## $at = 00008000
/* 03C44 80B47C94 24180015 */  addiu   $t8, $zero, 0x0015         ## $t8 = 00000015
/* 03C48 80B47C98 01C17821 */  addu    $t7, $t6, $at
/* 03C4C 80B47C9C A60F0032 */  sh      $t7, 0x0032($s0)           ## 00000032
/* 03C50 80B47CA0 AE1803DC */  sw      $t8, 0x03DC($s0)           ## 000003DC
/* 03C54 80B47CA4 26040024 */  addiu   $a0, $s0, 0x0024           ## $a0 = 00000024
/* 03C58 80B47CA8 860503FE */  lh      $a1, 0x03FE($s0)           ## 000003FE
/* 03C5C 80B47CAC E6040068 */  swc1    $f4, 0x0068($s0)           ## 00000068
/* 03C60 80B47CB0 0C2D11AA */  jal     func_80B446A8
/* 03C64 80B47CB4 AFA40024 */  sw      $a0, 0x0024($sp)
/* 03C68 80B47CB8 8FA40024 */  lw      $a0, 0x0024($sp)
/* 03C6C 80B47CBC A60203FE */  sh      $v0, 0x03FE($s0)           ## 000003FE
/* 03C70 80B47CC0 8FA7002C */  lw      $a3, 0x002C($sp)
/* 03C74 80B47CC4 860503FE */  lh      $a1, 0x03FE($s0)           ## 000003FE
/* 03C78 80B47CC8 0C2D121C */  jal     func_80B44870
/* 03C7C 80B47CCC 86060400 */  lh      $a2, 0x0400($s0)           ## 00000400
/* 03C80 80B47CD0 3C0580B4 */  lui     $a1, %hi(func_80B47CF8)    ## $a1 = 80B40000
/* 03C84 80B47CD4 A6020402 */  sh      $v0, 0x0402($s0)           ## 00000402
/* 03C88 80B47CD8 24A57CF8 */  addiu   $a1, $a1, %lo(func_80B47CF8) ## $a1 = 80B47CF8
/* 03C8C 80B47CDC 0C2D1014 */  jal     func_80B44050
/* 03C90 80B47CE0 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 03C94 80B47CE4 8FBF001C */  lw      $ra, 0x001C($sp)
/* 03C98 80B47CE8 8FB00018 */  lw      $s0, 0x0018($sp)
/* 03C9C 80B47CEC 27BD0028 */  addiu   $sp, $sp, 0x0028           ## $sp = 00000000
/* 03CA0 80B47CF0 03E00008 */  jr      $ra
/* 03CA4 80B47CF4 00000000 */  nop


