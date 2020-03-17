glabel func_80A57EF8
/* 00CF8 80A57EF8 27BDFFE0 */  addiu   $sp, $sp, 0xFFE0           ## $sp = FFFFFFE0
/* 00CFC 80A57EFC AFB00018 */  sw      $s0, 0x0018($sp)           
/* 00D00 80A57F00 00808025 */  or      $s0, $a0, $zero            ## $s0 = 00000000
/* 00D04 80A57F04 AFBF001C */  sw      $ra, 0x001C($sp)           
/* 00D08 80A57F08 AFA50024 */  sw      $a1, 0x0024($sp)           
/* 00D0C 80A57F0C 0C02927F */  jal     SkelAnime_FrameUpdateMatrix
              
/* 00D10 80A57F10 2484014C */  addiu   $a0, $a0, 0x014C           ## $a0 = 0000014C
/* 00D14 80A57F14 50400008 */  beql    $v0, $zero, .L80A57F38     
/* 00D18 80A57F18 260400B6 */  addiu   $a0, $s0, 0x00B6           ## $a0 = 000000B6
/* 00D1C 80A57F1C 860E008A */  lh      $t6, 0x008A($s0)           ## 0000008A
/* 00D20 80A57F20 34018000 */  ori     $at, $zero, 0x8000         ## $at = 00008000
/* 00D24 80A57F24 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 00D28 80A57F28 01C17821 */  addu    $t7, $t6, $at              
/* 00D2C 80A57F2C 0C295DBF */  jal     func_80A576FC              
/* 00D30 80A57F30 A60F0196 */  sh      $t7, 0x0196($s0)           ## 00000196
/* 00D34 80A57F34 260400B6 */  addiu   $a0, $s0, 0x00B6           ## $a0 = 000000B6
.L80A57F38:
/* 00D38 80A57F38 8605008A */  lh      $a1, 0x008A($s0)           ## 0000008A
/* 00D3C 80A57F3C 24060002 */  addiu   $a2, $zero, 0x0002         ## $a2 = 00000002
/* 00D40 80A57F40 0C01E1EF */  jal     Math_SmoothScaleMaxS
              
/* 00D44 80A57F44 24070E38 */  addiu   $a3, $zero, 0x0E38         ## $a3 = 00000E38
/* 00D48 80A57F48 8FBF001C */  lw      $ra, 0x001C($sp)           
/* 00D4C 80A57F4C 8FB00018 */  lw      $s0, 0x0018($sp)           
/* 00D50 80A57F50 27BD0020 */  addiu   $sp, $sp, 0x0020           ## $sp = 00000000
/* 00D54 80A57F54 03E00008 */  jr      $ra                        
/* 00D58 80A57F58 00000000 */  nop


