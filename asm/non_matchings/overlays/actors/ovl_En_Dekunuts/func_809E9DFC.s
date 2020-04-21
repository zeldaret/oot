glabel func_809E9DFC
/* 0089C 809E9DFC 27BDFFE0 */  addiu   $sp, $sp, 0xFFE0           ## $sp = FFFFFFE0
/* 008A0 809E9E00 00803025 */  or      $a2, $a0, $zero            ## $a2 = 00000000
/* 008A4 809E9E04 AFBF0014 */  sw      $ra, 0x0014($sp)           
/* 008A8 809E9E08 2484014C */  addiu   $a0, $a0, 0x014C           ## $a0 = 0000014C
/* 008AC 809E9E0C AFA50024 */  sw      $a1, 0x0024($sp)           
/* 008B0 809E9E10 AFA4001C */  sw      $a0, 0x001C($sp)           
/* 008B4 809E9E14 0C02927F */  jal     SkelAnime_FrameUpdateMatrix
              
/* 008B8 809E9E18 AFA60020 */  sw      $a2, 0x0020($sp)           
/* 008BC 809E9E1C 8FA4001C */  lw      $a0, 0x001C($sp)           
/* 008C0 809E9E20 0C0295B2 */  jal     func_800A56C8              
/* 008C4 809E9E24 24050000 */  addiu   $a1, $zero, 0x0000         ## $a1 = 00000000
/* 008C8 809E9E28 10400005 */  beq     $v0, $zero, .L809E9E40     
/* 008CC 809E9E2C 8FA60020 */  lw      $a2, 0x0020($sp)           
/* 008D0 809E9E30 84C20196 */  lh      $v0, 0x0196($a2)           ## 00000196
/* 008D4 809E9E34 10400002 */  beq     $v0, $zero, .L809E9E40     
/* 008D8 809E9E38 244EFFFF */  addiu   $t6, $v0, 0xFFFF           ## $t6 = FFFFFFFF
/* 008DC 809E9E3C A4CE0196 */  sh      $t6, 0x0196($a2)           ## 00000196
.L809E9E40:
/* 008E0 809E9E40 3C0142F0 */  lui     $at, 0x42F0                ## $at = 42F00000
/* 008E4 809E9E44 44813000 */  mtc1    $at, $f6                   ## $f6 = 120.00
/* 008E8 809E9E48 C4C40090 */  lwc1    $f4, 0x0090($a2)           ## 00000090
/* 008EC 809E9E4C 4606203C */  c.lt.s  $f4, $f6                   
/* 008F0 809E9E50 00000000 */  nop
/* 008F4 809E9E54 45010004 */  bc1t    .L809E9E68                 
/* 008F8 809E9E58 00000000 */  nop
/* 008FC 809E9E5C 84CF0196 */  lh      $t7, 0x0196($a2)           ## 00000196
/* 00900 809E9E60 55E00004 */  bnel    $t7, $zero, .L809E9E74     
/* 00904 809E9E64 8FBF0014 */  lw      $ra, 0x0014($sp)           
.L809E9E68:
/* 00908 809E9E68 0C27A61A */  jal     func_809E9868              
/* 0090C 809E9E6C 00C02025 */  or      $a0, $a2, $zero            ## $a0 = 00000000
/* 00910 809E9E70 8FBF0014 */  lw      $ra, 0x0014($sp)           
.L809E9E74:
/* 00914 809E9E74 27BD0020 */  addiu   $sp, $sp, 0x0020           ## $sp = 00000000
/* 00918 809E9E78 03E00008 */  jr      $ra                        
/* 0091C 809E9E7C 00000000 */  nop
