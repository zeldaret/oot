glabel func_80A5A208
/* 005D8 80A5A208 27BDFFB8 */  addiu   $sp, $sp, 0xFFB8           ## $sp = FFFFFFB8
/* 005DC 80A5A20C AFBF003C */  sw      $ra, 0x003C($sp)           
/* 005E0 80A5A210 AFB00038 */  sw      $s0, 0x0038($sp)           
/* 005E4 80A5A214 AFA5004C */  sw      $a1, 0x004C($sp)           
/* 005E8 80A5A218 848E022A */  lh      $t6, 0x022A($a0)           ## 0000022A
/* 005EC 80A5A21C 00808025 */  or      $s0, $a0, $zero            ## $s0 = 00000000
/* 005F0 80A5A220 25CFFFFF */  addiu   $t7, $t6, 0xFFFF           ## $t7 = FFFFFFFF
/* 005F4 80A5A224 A48F022A */  sh      $t7, 0x022A($a0)           ## 0000022A
/* 005F8 80A5A228 8498022A */  lh      $t8, 0x022A($a0)           ## 0000022A
/* 005FC 80A5A22C 5F000026 */  bgtzl   $t8, .L80A5A2C8            
/* 00600 80A5A230 8FBF003C */  lw      $ra, 0x003C($sp)           
/* 00604 80A5A234 0C2968B6 */  jal     func_80A5A2D8              
/* 00608 80A5A238 00000000 */  nop
/* 0060C 80A5A23C 0C01DE1C */  jal     Math_Sins
              ## sins?
/* 00610 80A5A240 860400B6 */  lh      $a0, 0x00B6($s0)           ## 000000B6
/* 00614 80A5A244 E7A00040 */  swc1    $f0, 0x0040($sp)           
/* 00618 80A5A248 0C01DE0D */  jal     Math_Coss
              ## coss?
/* 0061C 80A5A24C 860400B6 */  lh      $a0, 0x00B6($s0)           ## 000000B6
/* 00620 80A5A250 3C014140 */  lui     $at, 0x4140                ## $at = 41400000
/* 00624 80A5A254 44811000 */  mtc1    $at, $f2                   ## $f2 = 12.00
/* 00628 80A5A258 C7A40040 */  lwc1    $f4, 0x0040($sp)           
/* 0062C 80A5A25C C6080008 */  lwc1    $f8, 0x0008($s0)           ## 00000008
/* 00630 80A5A260 3C014120 */  lui     $at, 0x4120                ## $at = 41200000
/* 00634 80A5A264 46022182 */  mul.s   $f6, $f4, $f2              
/* 00638 80A5A268 44819000 */  mtc1    $at, $f18                  ## $f18 = 10.00
/* 0063C 80A5A26C 8FA6004C */  lw      $a2, 0x004C($sp)           
/* 00640 80A5A270 240A0001 */  addiu   $t2, $zero, 0x0001         ## $t2 = 00000001
/* 00644 80A5A274 02002825 */  or      $a1, $s0, $zero            ## $a1 = 00000000
/* 00648 80A5A278 2407011C */  addiu   $a3, $zero, 0x011C         ## $a3 = 0000011C
/* 0064C 80A5A27C 24C41C24 */  addiu   $a0, $a2, 0x1C24           ## $a0 = 00001C24
/* 00650 80A5A280 46083280 */  add.s   $f10, $f6, $f8             
/* 00654 80A5A284 46020182 */  mul.s   $f6, $f0, $f2              
/* 00658 80A5A288 E7AA0010 */  swc1    $f10, 0x0010($sp)          
/* 0065C 80A5A28C C610000C */  lwc1    $f16, 0x000C($s0)          ## 0000000C
/* 00660 80A5A290 46128101 */  sub.s   $f4, $f16, $f18            
/* 00664 80A5A294 E7A40014 */  swc1    $f4, 0x0014($sp)           
/* 00668 80A5A298 C6080010 */  lwc1    $f8, 0x0010($s0)           ## 00000010
/* 0066C 80A5A29C 46083280 */  add.s   $f10, $f6, $f8             
/* 00670 80A5A2A0 E7AA0018 */  swc1    $f10, 0x0018($sp)          
/* 00674 80A5A2A4 86190014 */  lh      $t9, 0x0014($s0)           ## 00000014
/* 00678 80A5A2A8 AFB9001C */  sw      $t9, 0x001C($sp)           
/* 0067C 80A5A2AC 86080016 */  lh      $t0, 0x0016($s0)           ## 00000016
/* 00680 80A5A2B0 AFA80020 */  sw      $t0, 0x0020($sp)           
/* 00684 80A5A2B4 86090018 */  lh      $t1, 0x0018($s0)           ## 00000018
/* 00688 80A5A2B8 AFAA0028 */  sw      $t2, 0x0028($sp)           
/* 0068C 80A5A2BC 0C00C916 */  jal     Actor_SpawnAsChild
              
/* 00690 80A5A2C0 AFA90024 */  sw      $t1, 0x0024($sp)           
/* 00694 80A5A2C4 8FBF003C */  lw      $ra, 0x003C($sp)           
.L80A5A2C8:
/* 00698 80A5A2C8 8FB00038 */  lw      $s0, 0x0038($sp)           
/* 0069C 80A5A2CC 27BD0048 */  addiu   $sp, $sp, 0x0048           ## $sp = 00000000
/* 006A0 80A5A2D0 03E00008 */  jr      $ra                        
/* 006A4 80A5A2D4 00000000 */  nop
