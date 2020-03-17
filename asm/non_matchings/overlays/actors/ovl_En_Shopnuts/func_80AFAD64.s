glabel func_80AFAD64
/* 00644 80AFAD64 27BDFFD8 */  addiu   $sp, $sp, 0xFFD8           ## $sp = FFFFFFD8
/* 00648 80AFAD68 AFB00018 */  sw      $s0, 0x0018($sp)           
/* 0064C 80AFAD6C 00808025 */  or      $s0, $a0, $zero            ## $s0 = 00000000
/* 00650 80AFAD70 AFBF001C */  sw      $ra, 0x001C($sp)           
/* 00654 80AFAD74 2484014C */  addiu   $a0, $a0, 0x014C           ## $a0 = 0000014C
/* 00658 80AFAD78 AFA5002C */  sw      $a1, 0x002C($sp)           
/* 0065C 80AFAD7C 0C02927F */  jal     SkelAnime_FrameUpdateMatrix
              
/* 00660 80AFAD80 AFA40024 */  sw      $a0, 0x0024($sp)           
/* 00664 80AFAD84 8FA40024 */  lw      $a0, 0x0024($sp)           
/* 00668 80AFAD88 0C0295B2 */  jal     func_800A56C8              
/* 0066C 80AFAD8C 24050000 */  addiu   $a1, $zero, 0x0000         ## $a1 = 00000000
/* 00670 80AFAD90 10400005 */  beq     $v0, $zero, .L80AFADA8     
/* 00674 80AFAD94 260400B6 */  addiu   $a0, $s0, 0x00B6           ## $a0 = 000000B6
/* 00678 80AFAD98 86020194 */  lh      $v0, 0x0194($s0)           ## 00000194
/* 0067C 80AFAD9C 10400002 */  beq     $v0, $zero, .L80AFADA8     
/* 00680 80AFADA0 244EFFFF */  addiu   $t6, $v0, 0xFFFF           ## $t6 = FFFFFFFF
/* 00684 80AFADA4 A60E0194 */  sh      $t6, 0x0194($s0)           ## 00000194
.L80AFADA8:
/* 00688 80AFADA8 860F0194 */  lh      $t7, 0x0194($s0)           ## 00000194
/* 0068C 80AFADAC 24060002 */  addiu   $a2, $zero, 0x0002         ## $a2 = 00000002
/* 00690 80AFADB0 24070E38 */  addiu   $a3, $zero, 0x0E38         ## $a3 = 00000E38
/* 00694 80AFADB4 31F81000 */  andi    $t8, $t7, 0x1000           ## $t8 = 00000000
/* 00698 80AFADB8 57000004 */  bnel    $t8, $zero, .L80AFADCC     
/* 0069C 80AFADBC 3C0142F0 */  lui     $at, 0x42F0                ## $at = 42F00000
/* 006A0 80AFADC0 0C01E1EF */  jal     Math_SmoothScaleMaxS
              
/* 006A4 80AFADC4 8605008A */  lh      $a1, 0x008A($s0)           ## 0000008A
/* 006A8 80AFADC8 3C0142F0 */  lui     $at, 0x42F0                ## $at = 42F00000
.L80AFADCC:
/* 006AC 80AFADCC 44813000 */  mtc1    $at, $f6                   ## $f6 = 120.00
/* 006B0 80AFADD0 C6040090 */  lwc1    $f4, 0x0090($s0)           ## 00000090
/* 006B4 80AFADD4 4606203C */  c.lt.s  $f4, $f6                   
/* 006B8 80AFADD8 00000000 */  nop
/* 006BC 80AFADDC 45010005 */  bc1t    .L80AFADF4                 
/* 006C0 80AFADE0 00000000 */  nop
/* 006C4 80AFADE4 86020194 */  lh      $v0, 0x0194($s0)           ## 00000194
/* 006C8 80AFADE8 24011000 */  addiu   $at, $zero, 0x1000         ## $at = 00001000
/* 006CC 80AFADEC 14410005 */  bne     $v0, $at, .L80AFAE04       
/* 006D0 80AFADF0 00000000 */  nop
.L80AFADF4:
/* 006D4 80AFADF4 0C2BEA75 */  jal     func_80AFA9D4              
/* 006D8 80AFADF8 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 006DC 80AFADFC 10000006 */  beq     $zero, $zero, .L80AFAE18   
/* 006E0 80AFAE00 8FBF001C */  lw      $ra, 0x001C($sp)           
.L80AFAE04:
/* 006E4 80AFAE04 54400004 */  bnel    $v0, $zero, .L80AFAE18     
/* 006E8 80AFAE08 8FBF001C */  lw      $ra, 0x001C($sp)           
/* 006EC 80AFAE0C 0C2BEA4C */  jal     func_80AFA930              
/* 006F0 80AFAE10 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 006F4 80AFAE14 8FBF001C */  lw      $ra, 0x001C($sp)           
.L80AFAE18:
/* 006F8 80AFAE18 8FB00018 */  lw      $s0, 0x0018($sp)           
/* 006FC 80AFAE1C 27BD0028 */  addiu   $sp, $sp, 0x0028           ## $sp = 00000000
/* 00700 80AFAE20 03E00008 */  jr      $ra                        
/* 00704 80AFAE24 00000000 */  nop


