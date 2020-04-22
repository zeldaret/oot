glabel func_80AFACE0
/* 005C0 80AFACE0 27BDFFE0 */  addiu   $sp, $sp, 0xFFE0           ## $sp = FFFFFFE0
/* 005C4 80AFACE4 00803025 */  or      $a2, $a0, $zero            ## $a2 = 00000000
/* 005C8 80AFACE8 AFBF0014 */  sw      $ra, 0x0014($sp)           
/* 005CC 80AFACEC 2484014C */  addiu   $a0, $a0, 0x014C           ## $a0 = 0000014C
/* 005D0 80AFACF0 AFA50024 */  sw      $a1, 0x0024($sp)           
/* 005D4 80AFACF4 AFA4001C */  sw      $a0, 0x001C($sp)           
/* 005D8 80AFACF8 0C02927F */  jal     SkelAnime_FrameUpdateMatrix
              
/* 005DC 80AFACFC AFA60020 */  sw      $a2, 0x0020($sp)           
/* 005E0 80AFAD00 8FA4001C */  lw      $a0, 0x001C($sp)           
/* 005E4 80AFAD04 0C0295B2 */  jal     func_800A56C8              
/* 005E8 80AFAD08 24050000 */  addiu   $a1, $zero, 0x0000         ## $a1 = 00000000
/* 005EC 80AFAD0C 10400005 */  beq     $v0, $zero, .L80AFAD24     
/* 005F0 80AFAD10 8FA60020 */  lw      $a2, 0x0020($sp)           
/* 005F4 80AFAD14 84C20194 */  lh      $v0, 0x0194($a2)           ## 00000194
/* 005F8 80AFAD18 10400002 */  beq     $v0, $zero, .L80AFAD24     
/* 005FC 80AFAD1C 244EFFFF */  addiu   $t6, $v0, 0xFFFF           ## $t6 = FFFFFFFF
/* 00600 80AFAD20 A4CE0194 */  sh      $t6, 0x0194($a2)           ## 00000194
.L80AFAD24:
/* 00604 80AFAD24 3C0142F0 */  lui     $at, 0x42F0                ## $at = 42F00000
/* 00608 80AFAD28 44813000 */  mtc1    $at, $f6                   ## $f6 = 120.00
/* 0060C 80AFAD2C C4C40090 */  lwc1    $f4, 0x0090($a2)           ## 00000090
/* 00610 80AFAD30 4606203C */  c.lt.s  $f4, $f6                   
/* 00614 80AFAD34 00000000 */  nop
/* 00618 80AFAD38 45010004 */  bc1t    .L80AFAD4C                 
/* 0061C 80AFAD3C 00000000 */  nop
/* 00620 80AFAD40 84CF0194 */  lh      $t7, 0x0194($a2)           ## 00000194
/* 00624 80AFAD44 55E00004 */  bnel    $t7, $zero, .L80AFAD58     
/* 00628 80AFAD48 8FBF0014 */  lw      $ra, 0x0014($sp)           
.L80AFAD4C:
/* 0062C 80AFAD4C 0C2BEA75 */  jal     func_80AFA9D4              
/* 00630 80AFAD50 00C02025 */  or      $a0, $a2, $zero            ## $a0 = 00000000
/* 00634 80AFAD54 8FBF0014 */  lw      $ra, 0x0014($sp)           
.L80AFAD58:
/* 00638 80AFAD58 27BD0020 */  addiu   $sp, $sp, 0x0020           ## $sp = 00000000
/* 0063C 80AFAD5C 03E00008 */  jr      $ra                        
/* 00640 80AFAD60 00000000 */  nop
