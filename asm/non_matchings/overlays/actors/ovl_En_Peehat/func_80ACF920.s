.late_rodata
glabel D_80AD2918
 .word 0x477FFF00

.text
glabel func_80ACF920
/* 00480 80ACF920 27BDFF58 */  addiu   $sp, $sp, 0xFF58           ## $sp = FFFFFF58
/* 00484 80ACF924 AFBF007C */  sw      $ra, 0x007C($sp)           
/* 00488 80ACF928 AFB40078 */  sw      $s4, 0x0078($sp)           
/* 0048C 80ACF92C AFB30074 */  sw      $s3, 0x0074($sp)           
/* 00490 80ACF930 AFB20070 */  sw      $s2, 0x0070($sp)           
/* 00494 80ACF934 AFB1006C */  sw      $s1, 0x006C($sp)           
/* 00498 80ACF938 AFB00068 */  sw      $s0, 0x0068($sp)           
/* 0049C 80ACF93C F7BE0060 */  sdc1    $f30, 0x0060($sp)          
/* 004A0 80ACF940 F7BC0058 */  sdc1    $f28, 0x0058($sp)          
/* 004A4 80ACF944 F7BA0050 */  sdc1    $f26, 0x0050($sp)          
/* 004A8 80ACF948 F7B80048 */  sdc1    $f24, 0x0048($sp)          
/* 004AC 80ACF94C F7B60040 */  sdc1    $f22, 0x0040($sp)          
/* 004B0 80ACF950 F7B40038 */  sdc1    $f20, 0x0038($sp)          
/* 004B4 80ACF954 908E0311 */  lbu     $t6, 0x0311($a0)           ## 00000311
/* 004B8 80ACF958 3C180001 */  lui     $t8, 0x0001                ## $t8 = 00010000
/* 004BC 80ACF95C 0305C021 */  addu    $t8, $t8, $a1              
/* 004C0 80ACF960 31CFFFFD */  andi    $t7, $t6, 0xFFFD           ## $t7 = 00000000
/* 004C4 80ACF964 A08F0311 */  sb      $t7, 0x0311($a0)           ## 00000311
/* 004C8 80ACF968 8F181DE4 */  lw      $t8, 0x1DE4($t8)           ## 00011DE4
/* 004CC 80ACF96C 00808825 */  or      $s1, $a0, $zero            ## $s1 = 00000000
/* 004D0 80ACF970 00A0A025 */  or      $s4, $a1, $zero            ## $s4 = 00000000
/* 004D4 80ACF974 3319000F */  andi    $t9, $t8, 0x000F           ## $t9 = 00000000
/* 004D8 80ACF978 1720001F */  bne     $t9, $zero, .L80ACF9F8     
/* 004DC 80ACF97C 2402FFFD */  addiu   $v0, $zero, 0xFFFD         ## $v0 = FFFFFFFD
/* 004E0 80ACF980 8C890024 */  lw      $t1, 0x0024($a0)           ## 00000024
/* 004E4 80ACF984 27B0009C */  addiu   $s0, $sp, 0x009C           ## $s0 = FFFFFFF4
/* 004E8 80ACF988 3C01428C */  lui     $at, 0x428C                ## $at = 428C0000
/* 004EC 80ACF98C AE090000 */  sw      $t1, 0x0000($s0)           ## FFFFFFF4
/* 004F0 80ACF990 8C880028 */  lw      $t0, 0x0028($a0)           ## 00000028
/* 004F4 80ACF994 44813000 */  mtc1    $at, $f6                   ## $f6 = 70.00
/* 004F8 80ACF998 02003025 */  or      $a2, $s0, $zero            ## $a2 = FFFFFFF4
/* 004FC 80ACF99C AE080004 */  sw      $t0, 0x0004($s0)           ## FFFFFFF8
/* 00500 80ACF9A0 8C89002C */  lw      $t1, 0x002C($a0)           ## 0000002C
/* 00504 80ACF9A4 00A02025 */  or      $a0, $a1, $zero            ## $a0 = 00000000
/* 00508 80ACF9A8 02202825 */  or      $a1, $s1, $zero            ## $a1 = 00000000
/* 0050C 80ACF9AC AE090008 */  sw      $t1, 0x0008($s0)           ## FFFFFFFC
/* 00510 80ACF9B0 C7A400A0 */  lwc1    $f4, 0x00A0($sp)           
/* 00514 80ACF9B4 24070040 */  addiu   $a3, $zero, 0x0040         ## $a3 = 00000040
/* 00518 80ACF9B8 46062200 */  add.s   $f8, $f4, $f6              
/* 0051C 80ACF9BC 0C007E50 */  jal     Item_DropCollectibleRandom
              
/* 00520 80ACF9C0 E7A800A0 */  swc1    $f8, 0x00A0($sp)           
/* 00524 80ACF9C4 02802025 */  or      $a0, $s4, $zero            ## $a0 = 00000000
/* 00528 80ACF9C8 02202825 */  or      $a1, $s1, $zero            ## $a1 = 00000000
/* 0052C 80ACF9CC 02003025 */  or      $a2, $s0, $zero            ## $a2 = FFFFFFF4
/* 00530 80ACF9D0 0C007E50 */  jal     Item_DropCollectibleRandom
              
/* 00534 80ACF9D4 24070040 */  addiu   $a3, $zero, 0x0040         ## $a3 = 00000040
/* 00538 80ACF9D8 02802025 */  or      $a0, $s4, $zero            ## $a0 = 00000000
/* 0053C 80ACF9DC 02202825 */  or      $a1, $s1, $zero            ## $a1 = 00000000
/* 00540 80ACF9E0 02003025 */  or      $a2, $s0, $zero            ## $a2 = FFFFFFF4
/* 00544 80ACF9E4 0C007E50 */  jal     Item_DropCollectibleRandom
              
/* 00548 80ACF9E8 24070040 */  addiu   $a3, $zero, 0x0040         ## $a3 = 00000040
/* 0054C 80ACF9EC 240A00F0 */  addiu   $t2, $zero, 0x00F0         ## $t2 = 000000F0
/* 00550 80ACF9F0 1000003F */  beq     $zero, $zero, .L80ACFAF0   
/* 00554 80ACF9F4 AE2A02D4 */  sw      $t2, 0x02D4($s1)           ## 000002D4
.L80ACF9F8:
/* 00558 80ACF9F8 922B0311 */  lbu     $t3, 0x0311($s1)           ## 00000311
/* 0055C 80ACF9FC 862D02FA */  lh      $t5, 0x02FA($s1)           ## 000002FA
/* 00560 80ACFA00 240E0003 */  addiu   $t6, $zero, 0x0003         ## $t6 = 00000003
/* 00564 80ACFA04 01626024 */  and     $t4, $t3, $v0              
/* 00568 80ACFA08 01CD9023 */  subu    $s2, $t6, $t5              
/* 0056C 80ACFA0C 1A400036 */  blez    $s2, .L80ACFAE8            
/* 00570 80ACFA10 A22C0311 */  sb      $t4, 0x0311($s1)           ## 00000311
/* 00574 80ACFA14 3C0180AD */  lui     $at, %hi(D_80AD2918)       ## $at = 80AD0000
/* 00578 80ACFA18 C43E2918 */  lwc1    $f30, %lo(D_80AD2918)($at) 
/* 0057C 80ACFA1C 3C0140C0 */  lui     $at, 0x40C0                ## $at = 40C00000
/* 00580 80ACFA20 4481E000 */  mtc1    $at, $f28                  ## $f28 = 6.00
/* 00584 80ACFA24 3C014248 */  lui     $at, 0x4248                ## $at = 42480000
/* 00588 80ACFA28 4481D000 */  mtc1    $at, $f26                  ## $f26 = 50.00
/* 0058C 80ACFA2C 3C0141C8 */  lui     $at, 0x41C8                ## $at = 41C80000
/* 00590 80ACFA30 4481C000 */  mtc1    $at, $f24                  ## $f24 = 25.00
/* 00594 80ACFA34 26931C24 */  addiu   $s3, $s4, 0x1C24           ## $s3 = 00001C24
.L80ACFA38:
/* 00598 80ACFA38 0C00CFC8 */  jal     Rand_CenteredFloat
              
/* 0059C 80ACFA3C 4600C306 */  mov.s   $f12, $f24                 
/* 005A0 80ACFA40 46000506 */  mov.s   $f20, $f0                  
/* 005A4 80ACFA44 0C00CFC8 */  jal     Rand_CenteredFloat
              
/* 005A8 80ACFA48 4600C306 */  mov.s   $f12, $f24                 
/* 005AC 80ACFA4C 46000586 */  mov.s   $f22, $f0                  
/* 005B0 80ACFA50 0C00CFC8 */  jal     Rand_CenteredFloat
              
/* 005B4 80ACFA54 4600C306 */  mov.s   $f12, $f24                 
/* 005B8 80ACFA58 C62A0024 */  lwc1    $f10, 0x0024($s1)          ## 00000024
/* 005BC 80ACFA5C 240F0001 */  addiu   $t7, $zero, 0x0001         ## $t7 = 00000001
/* 005C0 80ACFA60 02602025 */  or      $a0, $s3, $zero            ## $a0 = 00001C24
/* 005C4 80ACFA64 460AA400 */  add.s   $f16, $f20, $f10           
/* 005C8 80ACFA68 02202825 */  or      $a1, $s1, $zero            ## $a1 = 00000000
/* 005CC 80ACFA6C 02803025 */  or      $a2, $s4, $zero            ## $a2 = 00000000
/* 005D0 80ACFA70 2407001D */  addiu   $a3, $zero, 0x001D         ## $a3 = 0000001D
/* 005D4 80ACFA74 E7B00010 */  swc1    $f16, 0x0010($sp)          
/* 005D8 80ACFA78 C6320028 */  lwc1    $f18, 0x0028($s1)          ## 00000028
/* 005DC 80ACFA7C 461A9100 */  add.s   $f4, $f18, $f26            
/* 005E0 80ACFA80 4604B180 */  add.s   $f6, $f22, $f4             
/* 005E4 80ACFA84 E7A60014 */  swc1    $f6, 0x0014($sp)           
/* 005E8 80ACFA88 C628002C */  lwc1    $f8, 0x002C($s1)           ## 0000002C
/* 005EC 80ACFA8C AFAF0028 */  sw      $t7, 0x0028($sp)           
/* 005F0 80ACFA90 AFA00024 */  sw      $zero, 0x0024($sp)         
/* 005F4 80ACFA94 46080280 */  add.s   $f10, $f0, $f8             
/* 005F8 80ACFA98 AFA00020 */  sw      $zero, 0x0020($sp)         
/* 005FC 80ACFA9C AFA0001C */  sw      $zero, 0x001C($sp)         
/* 00600 80ACFAA0 0C00C916 */  jal     Actor_SpawnAsChild
              
/* 00604 80ACFAA4 E7AA0018 */  swc1    $f10, 0x0018($sp)          
/* 00608 80ACFAA8 1040000C */  beq     $v0, $zero, .L80ACFADC     
/* 0060C 80ACFAAC 00408025 */  or      $s0, $v0, $zero            ## $s0 = 00000000
/* 00610 80ACFAB0 E45C0060 */  swc1    $f28, 0x0060($v0)          ## 00000060
/* 00614 80ACFAB4 0C00CFC8 */  jal     Rand_CenteredFloat
              
/* 00618 80ACFAB8 4600F306 */  mov.s   $f12, $f30                 
/* 0061C 80ACFABC 4600040D */  trunc.w.s $f16, $f0                  
/* 00620 80ACFAC0 44028000 */  mfc1    $v0, $f16                  
/* 00624 80ACFAC4 00000000 */  nop
/* 00628 80ACFAC8 A6020032 */  sh      $v0, 0x0032($s0)           ## 00000032
/* 0062C 80ACFACC A60200B6 */  sh      $v0, 0x00B6($s0)           ## 000000B6
/* 00630 80ACFAD0 863902FA */  lh      $t9, 0x02FA($s1)           ## 000002FA
/* 00634 80ACFAD4 27280001 */  addiu   $t0, $t9, 0x0001           ## $t0 = 00000001
/* 00638 80ACFAD8 A62802FA */  sh      $t0, 0x02FA($s1)           ## 000002FA
.L80ACFADC:
/* 0063C 80ACFADC 2652FFFF */  addiu   $s2, $s2, 0xFFFF           ## $s2 = FFFFFFFF
/* 00640 80ACFAE0 1E40FFD5 */  bgtz    $s2, .L80ACFA38            
/* 00644 80ACFAE4 00000000 */  nop
.L80ACFAE8:
/* 00648 80ACFAE8 24090008 */  addiu   $t1, $zero, 0x0008         ## $t1 = 00000008
/* 0064C 80ACFAEC AE2902D4 */  sw      $t1, 0x02D4($s1)           ## 000002D4
.L80ACFAF0:
/* 00650 80ACFAF0 02202025 */  or      $a0, $s1, $zero            ## $a0 = 00000000
/* 00654 80ACFAF4 0C00BE0A */  jal     Audio_PlayActorSound2
              
/* 00658 80ACFAF8 24053956 */  addiu   $a1, $zero, 0x3956         ## $a1 = 00003956
/* 0065C 80ACFAFC 8FBF007C */  lw      $ra, 0x007C($sp)           
/* 00660 80ACFB00 D7B40038 */  ldc1    $f20, 0x0038($sp)          
/* 00664 80ACFB04 D7B60040 */  ldc1    $f22, 0x0040($sp)          
/* 00668 80ACFB08 D7B80048 */  ldc1    $f24, 0x0048($sp)          
/* 0066C 80ACFB0C D7BA0050 */  ldc1    $f26, 0x0050($sp)          
/* 00670 80ACFB10 D7BC0058 */  ldc1    $f28, 0x0058($sp)          
/* 00674 80ACFB14 D7BE0060 */  ldc1    $f30, 0x0060($sp)          
/* 00678 80ACFB18 8FB00068 */  lw      $s0, 0x0068($sp)           
/* 0067C 80ACFB1C 8FB1006C */  lw      $s1, 0x006C($sp)           
/* 00680 80ACFB20 8FB20070 */  lw      $s2, 0x0070($sp)           
/* 00684 80ACFB24 8FB30074 */  lw      $s3, 0x0074($sp)           
/* 00688 80ACFB28 8FB40078 */  lw      $s4, 0x0078($sp)           
/* 0068C 80ACFB2C 03E00008 */  jr      $ra                        
/* 00690 80ACFB30 27BD00A8 */  addiu   $sp, $sp, 0x00A8           ## $sp = 00000000
