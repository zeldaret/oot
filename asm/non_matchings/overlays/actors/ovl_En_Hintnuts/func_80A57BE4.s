glabel func_80A57BE4
/* 009E4 80A57BE4 27BDFFD8 */  addiu   $sp, $sp, 0xFFD8           ## $sp = FFFFFFD8
/* 009E8 80A57BE8 AFB00018 */  sw      $s0, 0x0018($sp)           
/* 009EC 80A57BEC 00808025 */  or      $s0, $a0, $zero            ## $s0 = 00000000
/* 009F0 80A57BF0 AFBF001C */  sw      $ra, 0x001C($sp)           
/* 009F4 80A57BF4 2484014C */  addiu   $a0, $a0, 0x014C           ## $a0 = 0000014C
/* 009F8 80A57BF8 AFA5002C */  sw      $a1, 0x002C($sp)           
/* 009FC 80A57BFC 0C02927F */  jal     SkelAnime_FrameUpdateMatrix
              
/* 00A00 80A57C00 AFA40024 */  sw      $a0, 0x0024($sp)           
/* 00A04 80A57C04 8FA40024 */  lw      $a0, 0x0024($sp)           
/* 00A08 80A57C08 0C0295B2 */  jal     func_800A56C8              
/* 00A0C 80A57C0C 24050000 */  addiu   $a1, $zero, 0x0000         ## $a1 = 00000000
/* 00A10 80A57C10 10400005 */  beq     $v0, $zero, .L80A57C28     
/* 00A14 80A57C14 260400B6 */  addiu   $a0, $s0, 0x00B6           ## $a0 = 000000B6
/* 00A18 80A57C18 86020194 */  lh      $v0, 0x0194($s0)           ## 00000194
/* 00A1C 80A57C1C 10400002 */  beq     $v0, $zero, .L80A57C28     
/* 00A20 80A57C20 244EFFFF */  addiu   $t6, $v0, 0xFFFF           ## $t6 = FFFFFFFF
/* 00A24 80A57C24 A60E0194 */  sh      $t6, 0x0194($s0)           ## 00000194
.L80A57C28:
/* 00A28 80A57C28 860F0194 */  lh      $t7, 0x0194($s0)           ## 00000194
/* 00A2C 80A57C2C 24060002 */  addiu   $a2, $zero, 0x0002         ## $a2 = 00000002
/* 00A30 80A57C30 24070E38 */  addiu   $a3, $zero, 0x0E38         ## $a3 = 00000E38
/* 00A34 80A57C34 31F81000 */  andi    $t8, $t7, 0x1000           ## $t8 = 00000000
/* 00A38 80A57C38 57000004 */  bnel    $t8, $zero, .L80A57C4C     
/* 00A3C 80A57C3C 3C0142F0 */  lui     $at, 0x42F0                ## $at = 42F00000
/* 00A40 80A57C40 0C01E1EF */  jal     Math_SmoothScaleMaxS
              
/* 00A44 80A57C44 8605008A */  lh      $a1, 0x008A($s0)           ## 0000008A
/* 00A48 80A57C48 3C0142F0 */  lui     $at, 0x42F0                ## $at = 42F00000
.L80A57C4C:
/* 00A4C 80A57C4C 44813000 */  mtc1    $at, $f6                   ## $f6 = 120.00
/* 00A50 80A57C50 C6040090 */  lwc1    $f4, 0x0090($s0)           ## 00000090
/* 00A54 80A57C54 4606203C */  c.lt.s  $f4, $f6                   
/* 00A58 80A57C58 00000000 */  nop
/* 00A5C 80A57C5C 45010005 */  bc1t    .L80A57C74                 
/* 00A60 80A57C60 00000000 */  nop
/* 00A64 80A57C64 86020194 */  lh      $v0, 0x0194($s0)           ## 00000194
/* 00A68 80A57C68 24011000 */  addiu   $at, $zero, 0x1000         ## $at = 00001000
/* 00A6C 80A57C6C 14410005 */  bne     $v0, $at, .L80A57C84       
/* 00A70 80A57C70 00000000 */  nop
.L80A57C74:
/* 00A74 80A57C74 0C295D70 */  jal     func_80A575C0              
/* 00A78 80A57C78 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 00A7C 80A57C7C 10000006 */  beq     $zero, $zero, .L80A57C98   
/* 00A80 80A57C80 8FBF001C */  lw      $ra, 0x001C($sp)           
.L80A57C84:
/* 00A84 80A57C84 54400004 */  bnel    $v0, $zero, .L80A57C98     
/* 00A88 80A57C88 8FBF001C */  lw      $ra, 0x001C($sp)           
/* 00A8C 80A57C8C 0C295D47 */  jal     func_80A5751C              
/* 00A90 80A57C90 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 00A94 80A57C94 8FBF001C */  lw      $ra, 0x001C($sp)           
.L80A57C98:
/* 00A98 80A57C98 8FB00018 */  lw      $s0, 0x0018($sp)           
/* 00A9C 80A57C9C 27BD0028 */  addiu   $sp, $sp, 0x0028           ## $sp = 00000000
/* 00AA0 80A57CA0 03E00008 */  jr      $ra                        
/* 00AA4 80A57CA4 00000000 */  nop
