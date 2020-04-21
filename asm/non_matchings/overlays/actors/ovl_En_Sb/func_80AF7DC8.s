glabel func_80AF7DC8
/* 005D8 80AF7DC8 27BDFFD0 */  addiu   $sp, $sp, 0xFFD0           ## $sp = FFFFFFD0
/* 005DC 80AF7DCC AFBF0024 */  sw      $ra, 0x0024($sp)           
/* 005E0 80AF7DD0 AFB00020 */  sw      $s0, 0x0020($sp)           
/* 005E4 80AF7DD4 AFA50034 */  sw      $a1, 0x0034($sp)           
/* 005E8 80AF7DD8 C4840164 */  lwc1    $f4, 0x0164($a0)           ## 00000164
/* 005EC 80AF7DDC 00808025 */  or      $s0, $a0, $zero            ## $s0 = 00000000
/* 005F0 80AF7DE0 3C040600 */  lui     $a0, 0x0600                ## $a0 = 06000000
/* 005F4 80AF7DE4 24840194 */  addiu   $a0, $a0, 0x0194           ## $a0 = 06000194
/* 005F8 80AF7DE8 0C028800 */  jal     SkelAnime_GetFrameCount
              
/* 005FC 80AF7DEC E7A4002C */  swc1    $f4, 0x002C($sp)           
/* 00600 80AF7DF0 44824000 */  mtc1    $v0, $f8                   ## $f8 = 0.00
/* 00604 80AF7DF4 C7A6002C */  lwc1    $f6, 0x002C($sp)           
/* 00608 80AF7DF8 240E000F */  addiu   $t6, $zero, 0x000F         ## $t6 = 0000000F
/* 0060C 80AF7DFC 468042A0 */  cvt.s.w $f10, $f8                  
/* 00610 80AF7E00 260400B6 */  addiu   $a0, $s0, 0x00B6           ## $a0 = 000000B6
/* 00614 80AF7E04 2406000A */  addiu   $a2, $zero, 0x000A         ## $a2 = 0000000A
/* 00618 80AF7E08 240707D0 */  addiu   $a3, $zero, 0x07D0         ## $a3 = 000007D0
/* 0061C 80AF7E0C 4606503E */  c.le.s  $f10, $f6                  
/* 00620 80AF7E10 00000000 */  nop
/* 00624 80AF7E14 45020007 */  bc1fl   .L80AF7E34                 
/* 00628 80AF7E18 8605008A */  lh      $a1, 0x008A($s0)           ## 0000008A
/* 0062C 80AF7E1C A60E01FE */  sh      $t6, 0x01FE($s0)           ## 000001FE
/* 00630 80AF7E20 0C2BDEAC */  jal     func_80AF7AB0              
/* 00634 80AF7E24 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 00638 80AF7E28 10000015 */  beq     $zero, $zero, .L80AF7E80   
/* 0063C 80AF7E2C 8FBF0024 */  lw      $ra, 0x0024($sp)           
/* 00640 80AF7E30 8605008A */  lh      $a1, 0x008A($s0)           ## 0000008A
.L80AF7E34:
/* 00644 80AF7E34 0C01E1A7 */  jal     Math_SmoothScaleMaxMinS
              
/* 00648 80AF7E38 AFA00010 */  sw      $zero, 0x0010($sp)         
/* 0064C 80AF7E3C 3C014320 */  lui     $at, 0x4320                ## $at = 43200000
/* 00650 80AF7E40 44818000 */  mtc1    $at, $f16                  ## $f16 = 160.00
/* 00654 80AF7E44 C6000090 */  lwc1    $f0, 0x0090($s0)           ## 00000090
/* 00658 80AF7E48 3C014220 */  lui     $at, 0x4220                ## $at = 42200000
/* 0065C 80AF7E4C 4600803C */  c.lt.s  $f16, $f0                  
/* 00660 80AF7E50 00000000 */  nop
/* 00664 80AF7E54 45010007 */  bc1t    .L80AF7E74                 
/* 00668 80AF7E58 00000000 */  nop
/* 0066C 80AF7E5C 44819000 */  mtc1    $at, $f18                  ## $f18 = 40.00
/* 00670 80AF7E60 00000000 */  nop
/* 00674 80AF7E64 4612003E */  c.le.s  $f0, $f18                  
/* 00678 80AF7E68 00000000 */  nop
/* 0067C 80AF7E6C 45020004 */  bc1fl   .L80AF7E80                 
/* 00680 80AF7E70 8FBF0024 */  lw      $ra, 0x0024($sp)           
.L80AF7E74:
/* 00684 80AF7E74 0C2BDE6F */  jal     func_80AF79BC              
/* 00688 80AF7E78 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 0068C 80AF7E7C 8FBF0024 */  lw      $ra, 0x0024($sp)           
.L80AF7E80:
/* 00690 80AF7E80 8FB00020 */  lw      $s0, 0x0020($sp)           
/* 00694 80AF7E84 27BD0030 */  addiu   $sp, $sp, 0x0030           ## $sp = 00000000
/* 00698 80AF7E88 03E00008 */  jr      $ra                        
/* 0069C 80AF7E8C 00000000 */  nop
