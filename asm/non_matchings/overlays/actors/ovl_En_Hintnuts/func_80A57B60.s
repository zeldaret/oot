glabel func_80A57B60
/* 00960 80A57B60 27BDFFE0 */  addiu   $sp, $sp, 0xFFE0           ## $sp = FFFFFFE0
/* 00964 80A57B64 00803025 */  or      $a2, $a0, $zero            ## $a2 = 00000000
/* 00968 80A57B68 AFBF0014 */  sw      $ra, 0x0014($sp)           
/* 0096C 80A57B6C 2484014C */  addiu   $a0, $a0, 0x014C           ## $a0 = 0000014C
/* 00970 80A57B70 AFA50024 */  sw      $a1, 0x0024($sp)           
/* 00974 80A57B74 AFA4001C */  sw      $a0, 0x001C($sp)           
/* 00978 80A57B78 0C02927F */  jal     SkelAnime_FrameUpdateMatrix
              
/* 0097C 80A57B7C AFA60020 */  sw      $a2, 0x0020($sp)           
/* 00980 80A57B80 8FA4001C */  lw      $a0, 0x001C($sp)           
/* 00984 80A57B84 0C0295B2 */  jal     func_800A56C8              
/* 00988 80A57B88 24050000 */  addiu   $a1, $zero, 0x0000         ## $a1 = 00000000
/* 0098C 80A57B8C 10400005 */  beq     $v0, $zero, .L80A57BA4     
/* 00990 80A57B90 8FA60020 */  lw      $a2, 0x0020($sp)           
/* 00994 80A57B94 84C20194 */  lh      $v0, 0x0194($a2)           ## 00000194
/* 00998 80A57B98 10400002 */  beq     $v0, $zero, .L80A57BA4     
/* 0099C 80A57B9C 244EFFFF */  addiu   $t6, $v0, 0xFFFF           ## $t6 = FFFFFFFF
/* 009A0 80A57BA0 A4CE0194 */  sh      $t6, 0x0194($a2)           ## 00000194
.L80A57BA4:
/* 009A4 80A57BA4 3C0142F0 */  lui     $at, 0x42F0                ## $at = 42F00000
/* 009A8 80A57BA8 44813000 */  mtc1    $at, $f6                   ## $f6 = 120.00
/* 009AC 80A57BAC C4C40090 */  lwc1    $f4, 0x0090($a2)           ## 00000090
/* 009B0 80A57BB0 4606203C */  c.lt.s  $f4, $f6                   
/* 009B4 80A57BB4 00000000 */  nop
/* 009B8 80A57BB8 45010004 */  bc1t    .L80A57BCC                 
/* 009BC 80A57BBC 00000000 */  nop
/* 009C0 80A57BC0 84CF0194 */  lh      $t7, 0x0194($a2)           ## 00000194
/* 009C4 80A57BC4 55E00004 */  bnel    $t7, $zero, .L80A57BD8     
/* 009C8 80A57BC8 8FBF0014 */  lw      $ra, 0x0014($sp)           
.L80A57BCC:
/* 009CC 80A57BCC 0C295D70 */  jal     func_80A575C0              
/* 009D0 80A57BD0 00C02025 */  or      $a0, $a2, $zero            ## $a0 = 00000000
/* 009D4 80A57BD4 8FBF0014 */  lw      $ra, 0x0014($sp)           
.L80A57BD8:
/* 009D8 80A57BD8 27BD0020 */  addiu   $sp, $sp, 0x0020           ## $sp = 00000000
/* 009DC 80A57BDC 03E00008 */  jr      $ra                        
/* 009E0 80A57BE0 00000000 */  nop


