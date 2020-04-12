glabel func_80AA8514
/* 024C4 80AA8514 27BDFF58 */  addiu   $sp, $sp, 0xFF58           ## $sp = FFFFFF58
/* 024C8 80AA8518 AFBF0074 */  sw      $ra, 0x0074($sp)           
/* 024CC 80AA851C AFB40070 */  sw      $s4, 0x0070($sp)           
/* 024D0 80AA8520 AFB3006C */  sw      $s3, 0x006C($sp)           
/* 024D4 80AA8524 AFB20068 */  sw      $s2, 0x0068($sp)           
/* 024D8 80AA8528 AFB10064 */  sw      $s1, 0x0064($sp)           
/* 024DC 80AA852C AFB00060 */  sw      $s0, 0x0060($sp)           
/* 024E0 80AA8530 F7B80058 */  sdc1    $f24, 0x0058($sp)          
/* 024E4 80AA8534 F7B60050 */  sdc1    $f22, 0x0050($sp)          
/* 024E8 80AA8538 F7B40048 */  sdc1    $f20, 0x0048($sp)          
/* 024EC 80AA853C 8C8F0024 */  lw      $t7, 0x0024($a0)           ## 00000024
/* 024F0 80AA8540 27B4009C */  addiu   $s4, $sp, 0x009C           ## $s4 = FFFFFFF4
/* 024F4 80AA8544 00809025 */  or      $s2, $a0, $zero            ## $s2 = 00000000
/* 024F8 80AA8548 AE8F0000 */  sw      $t7, 0x0000($s4)           ## FFFFFFF4
/* 024FC 80AA854C 8C8E0028 */  lw      $t6, 0x0028($a0)           ## 00000028
/* 02500 80AA8550 00A09825 */  or      $s3, $a1, $zero            ## $s3 = 00000000
/* 02504 80AA8554 AE8E0004 */  sw      $t6, 0x0004($s4)           ## FFFFFFF8
/* 02508 80AA8558 8C8F002C */  lw      $t7, 0x002C($a0)           ## 0000002C
/* 0250C 80AA855C AE8F0008 */  sw      $t7, 0x0008($s4)           ## FFFFFFFC
/* 02510 80AA8560 0C01DE1C */  jal     Math_Sins
              ## sins?
/* 02514 80AA8564 848400B6 */  lh      $a0, 0x00B6($a0)           ## 000000B6
/* 02518 80AA8568 3C01C28C */  lui     $at, 0xC28C                ## $at = C28C0000
/* 0251C 80AA856C 4481A000 */  mtc1    $at, $f20                  ## $f20 = -70.00
/* 02520 80AA8570 C7A4009C */  lwc1    $f4, 0x009C($sp)           
/* 02524 80AA8574 46140182 */  mul.s   $f6, $f0, $f20             
/* 02528 80AA8578 46062200 */  add.s   $f8, $f4, $f6              
/* 0252C 80AA857C E7A8009C */  swc1    $f8, 0x009C($sp)           
/* 02530 80AA8580 0C01DE0D */  jal     Math_Coss
              ## coss?
/* 02534 80AA8584 864400B6 */  lh      $a0, 0x00B6($s2)           ## 000000B6
/* 02538 80AA8588 46140402 */  mul.s   $f16, $f0, $f20            
/* 0253C 80AA858C C7AA00A4 */  lwc1    $f10, 0x00A4($sp)          
/* 02540 80AA8590 44801000 */  mtc1    $zero, $f2                 ## $f2 = 0.00
/* 02544 80AA8594 26440068 */  addiu   $a0, $s2, 0x0068           ## $a0 = 00000068
/* 02548 80AA8598 3C063F80 */  lui     $a2, 0x3F80                ## $a2 = 3F800000
/* 0254C 80AA859C 44051000 */  mfc1    $a1, $f2                   
/* 02550 80AA85A0 3C073F00 */  lui     $a3, 0x3F00                ## $a3 = 3F000000
/* 02554 80AA85A4 46105480 */  add.s   $f18, $f10, $f16           
/* 02558 80AA85A8 E7A20010 */  swc1    $f2, 0x0010($sp)           
/* 0255C 80AA85AC 0C01E0C4 */  jal     Math_SmoothScaleMaxMinF
              
/* 02560 80AA85B0 E7B200A4 */  swc1    $f18, 0x00A4($sp)          
/* 02564 80AA85B4 8E880000 */  lw      $t0, 0x0000($s4)           ## FFFFFFF4
/* 02568 80AA85B8 27B80090 */  addiu   $t8, $sp, 0x0090           ## $t8 = FFFFFFE8
/* 0256C 80AA85BC 2644018C */  addiu   $a0, $s2, 0x018C           ## $a0 = 0000018C
/* 02570 80AA85C0 AF080000 */  sw      $t0, 0x0000($t8)           ## FFFFFFE8
/* 02574 80AA85C4 8E990004 */  lw      $t9, 0x0004($s4)           ## FFFFFFF8
/* 02578 80AA85C8 AF190004 */  sw      $t9, 0x0004($t8)           ## FFFFFFEC
/* 0257C 80AA85CC 8E880008 */  lw      $t0, 0x0008($s4)           ## FFFFFFFC
/* 02580 80AA85D0 0C02927F */  jal     SkelAnime_FrameUpdateMatrix
              
/* 02584 80AA85D4 AF080008 */  sw      $t0, 0x0008($t8)           ## FFFFFFF0
/* 02588 80AA85D8 50400050 */  beql    $v0, $zero, .L80AA871C     
/* 0258C 80AA85DC C64601A4 */  lwc1    $f6, 0x01A4($s2)           ## 000001A4
/* 02590 80AA85E0 8649032A */  lh      $t1, 0x032A($s2)           ## 0000032A
/* 02594 80AA85E4 02602025 */  or      $a0, $s3, $zero            ## $a0 = 00000000
/* 02598 80AA85E8 02402825 */  or      $a1, $s2, $zero            ## $a1 = 00000000
/* 0259C 80AA85EC 19200044 */  blez    $t1, .L80AA8700            
/* 025A0 80AA85F0 02803025 */  or      $a2, $s4, $zero            ## $a2 = FFFFFFF4
/* 025A4 80AA85F4 3C0A80AB */  lui     $t2, %hi(D_80AA9D78)       ## $t2 = 80AB0000
/* 025A8 80AA85F8 254A9D78 */  addiu   $t2, $t2, %lo(D_80AA9D78)  ## $t2 = 80AA9D78
/* 025AC 80AA85FC 8D4C0000 */  lw      $t4, 0x0000($t2)           ## 80AA9D78
/* 025B0 80AA8600 27B10084 */  addiu   $s1, $sp, 0x0084           ## $s1 = FFFFFFDC
/* 025B4 80AA8604 3C0141A0 */  lui     $at, 0x41A0                ## $at = 41A00000
/* 025B8 80AA8608 AE2C0000 */  sw      $t4, 0x0000($s1)           ## FFFFFFDC
/* 025BC 80AA860C 8D4B0004 */  lw      $t3, 0x0004($t2)           ## 80AA9D7C
/* 025C0 80AA8610 4481C000 */  mtc1    $at, $f24                  ## $f24 = 20.00
/* 025C4 80AA8614 3C014170 */  lui     $at, 0x4170                ## $at = 41700000
/* 025C8 80AA8618 AE2B0004 */  sw      $t3, 0x0004($s1)           ## FFFFFFE0
/* 025CC 80AA861C 8D4C0008 */  lw      $t4, 0x0008($t2)           ## 80AA9D80
/* 025D0 80AA8620 4481B000 */  mtc1    $at, $f22                  ## $f22 = 15.00
/* 025D4 80AA8624 3C014370 */  lui     $at, 0x4370                ## $at = 43700000
/* 025D8 80AA8628 AE2C0008 */  sw      $t4, 0x0008($s1)           ## FFFFFFE4
/* 025DC 80AA862C 864D032A */  lh      $t5, 0x032A($s2)           ## 0000032A
/* 025E0 80AA8630 4481A000 */  mtc1    $at, $f20                  ## $f20 = 240.00
/* 025E4 80AA8634 24100004 */  addiu   $s0, $zero, 0x0004         ## $s0 = 00000004
/* 025E8 80AA8638 25AEFFFF */  addiu   $t6, $t5, 0xFFFF           ## $t6 = FFFFFFFF
/* 025EC 80AA863C A64E032A */  sh      $t6, 0x032A($s2)           ## 0000032A
.L80AA8640:
/* 025F0 80AA8640 0C00CFC8 */  jal     Math_Rand_CenteredFloat
              
/* 025F4 80AA8644 4600A306 */  mov.s   $f12, $f20                 
/* 025F8 80AA8648 C7A40090 */  lwc1    $f4, 0x0090($sp)           
/* 025FC 80AA864C 4600B306 */  mov.s   $f12, $f22                 
/* 02600 80AA8650 46040180 */  add.s   $f6, $f0, $f4              
/* 02604 80AA8654 0C00CFC8 */  jal     Math_Rand_CenteredFloat
              
/* 02608 80AA8658 E7A6009C */  swc1    $f6, 0x009C($sp)           
/* 0260C 80AA865C C7A80094 */  lwc1    $f8, 0x0094($sp)           
/* 02610 80AA8660 4600A306 */  mov.s   $f12, $f20                 
/* 02614 80AA8664 46184280 */  add.s   $f10, $f8, $f24            
/* 02618 80AA8668 460A0400 */  add.s   $f16, $f0, $f10            
/* 0261C 80AA866C 0C00CFC8 */  jal     Math_Rand_CenteredFloat
              
/* 02620 80AA8670 E7B000A0 */  swc1    $f16, 0x00A0($sp)          
/* 02624 80AA8674 C7B20098 */  lwc1    $f18, 0x0098($sp)          
/* 02628 80AA8678 240F00E6 */  addiu   $t7, $zero, 0x00E6         ## $t7 = 000000E6
/* 0262C 80AA867C 24180007 */  addiu   $t8, $zero, 0x0007         ## $t8 = 00000007
/* 02630 80AA8680 46120100 */  add.s   $f4, $f0, $f18             
/* 02634 80AA8684 241900FF */  addiu   $t9, $zero, 0x00FF         ## $t9 = 000000FF
/* 02638 80AA8688 240800FF */  addiu   $t0, $zero, 0x00FF         ## $t0 = 000000FF
/* 0263C 80AA868C 240900FF */  addiu   $t1, $zero, 0x00FF         ## $t1 = 000000FF
/* 02640 80AA8690 240A00FF */  addiu   $t2, $zero, 0x00FF         ## $t2 = 000000FF
/* 02644 80AA8694 240B00FF */  addiu   $t3, $zero, 0x00FF         ## $t3 = 000000FF
/* 02648 80AA8698 240C0001 */  addiu   $t4, $zero, 0x0001         ## $t4 = 00000001
/* 0264C 80AA869C 240D0009 */  addiu   $t5, $zero, 0x0009         ## $t5 = 00000009
/* 02650 80AA86A0 240E0001 */  addiu   $t6, $zero, 0x0001         ## $t6 = 00000001
/* 02654 80AA86A4 E7A400A4 */  swc1    $f4, 0x00A4($sp)           
/* 02658 80AA86A8 AFAE003C */  sw      $t6, 0x003C($sp)           
/* 0265C 80AA86AC AFAD0038 */  sw      $t5, 0x0038($sp)           
/* 02660 80AA86B0 AFAC0034 */  sw      $t4, 0x0034($sp)           
/* 02664 80AA86B4 AFAB002C */  sw      $t3, 0x002C($sp)           
/* 02668 80AA86B8 AFAA0024 */  sw      $t2, 0x0024($sp)           
/* 0266C 80AA86BC AFA90020 */  sw      $t1, 0x0020($sp)           
/* 02670 80AA86C0 AFA8001C */  sw      $t0, 0x001C($sp)           
/* 02674 80AA86C4 AFB90018 */  sw      $t9, 0x0018($sp)           
/* 02678 80AA86C8 AFB80014 */  sw      $t8, 0x0014($sp)           
/* 0267C 80AA86CC AFAF0010 */  sw      $t7, 0x0010($sp)           
/* 02680 80AA86D0 02602025 */  or      $a0, $s3, $zero            ## $a0 = 00000000
/* 02684 80AA86D4 02802825 */  or      $a1, $s4, $zero            ## $a1 = FFFFFFF4
/* 02688 80AA86D8 02203025 */  or      $a2, $s1, $zero            ## $a2 = FFFFFFDC
/* 0268C 80AA86DC 02203825 */  or      $a3, $s1, $zero            ## $a3 = FFFFFFDC
/* 02690 80AA86E0 AFA00028 */  sw      $zero, 0x0028($sp)         
/* 02694 80AA86E4 0C00A9AE */  jal     func_8002A6B8              
/* 02698 80AA86E8 AFA00030 */  sw      $zero, 0x0030($sp)         
/* 0269C 80AA86EC 2610FFFF */  addiu   $s0, $s0, 0xFFFF           ## $s0 = 00000003
/* 026A0 80AA86F0 0601FFD3 */  bgez    $s0, .L80AA8640            
/* 026A4 80AA86F4 00000000 */  nop
/* 026A8 80AA86F8 1000002D */  beq     $zero, $zero, .L80AA87B0   
/* 026AC 80AA86FC 8FBF0074 */  lw      $ra, 0x0074($sp)           
.L80AA8700:
/* 026B0 80AA8700 0C007E50 */  jal     Item_DropCollectibleRandom
              
/* 026B4 80AA8704 240700C0 */  addiu   $a3, $zero, 0x00C0         ## $a3 = 000000C0
/* 026B8 80AA8708 0C00B55C */  jal     Actor_Kill
              
/* 026BC 80AA870C 02402025 */  or      $a0, $s2, $zero            ## $a0 = 00000000
/* 026C0 80AA8710 10000027 */  beq     $zero, $zero, .L80AA87B0   
/* 026C4 80AA8714 8FBF0074 */  lw      $ra, 0x0074($sp)           
/* 026C8 80AA8718 C64601A4 */  lwc1    $f6, 0x01A4($s2)           ## 000001A4
.L80AA871C:
/* 026CC 80AA871C 2401000F */  addiu   $at, $zero, 0x000F         ## $at = 0000000F
/* 026D0 80AA8720 240500FF */  addiu   $a1, $zero, 0x00FF         ## $a1 = 000000FF
/* 026D4 80AA8724 4600320D */  trunc.w.s $f8, $f6                   
/* 026D8 80AA8728 24060014 */  addiu   $a2, $zero, 0x0014         ## $a2 = 00000014
/* 026DC 80AA872C 24070096 */  addiu   $a3, $zero, 0x0096         ## $a3 = 00000096
/* 026E0 80AA8730 44024000 */  mfc1    $v0, $f8                   
/* 026E4 80AA8734 00000000 */  nop
/* 026E8 80AA8738 10410003 */  beq     $v0, $at, .L80AA8748       
/* 026EC 80AA873C 24010016 */  addiu   $at, $zero, 0x0016         ## $at = 00000016
/* 026F0 80AA8740 5441001B */  bnel    $v0, $at, .L80AA87B0       
/* 026F4 80AA8744 8FBF0074 */  lw      $ra, 0x0074($sp)           
.L80AA8748:
/* 026F8 80AA8748 0C02A800 */  jal     func_800AA000              
/* 026FC 80AA874C C64C0090 */  lwc1    $f12, 0x0090($s2)          ## 00000090
/* 02700 80AA8750 3C014040 */  lui     $at, 0x4040                ## $at = 40400000
/* 02704 80AA8754 44815000 */  mtc1    $at, $f10                  ## $f10 = 3.00
/* 02708 80AA8758 2418000A */  addiu   $t8, $zero, 0x000A         ## $t8 = 0000000A
/* 0270C 80AA875C 24190190 */  addiu   $t9, $zero, 0x0190         ## $t9 = 00000190
/* 02710 80AA8760 2408003C */  addiu   $t0, $zero, 0x003C         ## $t0 = 0000003C
/* 02714 80AA8764 AFA8001C */  sw      $t0, 0x001C($sp)           
/* 02718 80AA8768 AFB90018 */  sw      $t9, 0x0018($sp)           
/* 0271C 80AA876C AFB80010 */  sw      $t8, 0x0010($sp)           
/* 02720 80AA8770 02602025 */  or      $a0, $s3, $zero            ## $a0 = 00000000
/* 02724 80AA8774 02402825 */  or      $a1, $s2, $zero            ## $a1 = 00000000
/* 02728 80AA8778 02803025 */  or      $a2, $s4, $zero            ## $a2 = FFFFFFF4
/* 0272C 80AA877C 3C074248 */  lui     $a3, 0x4248                ## $a3 = 42480000
/* 02730 80AA8780 AFA00020 */  sw      $zero, 0x0020($sp)         
/* 02734 80AA8784 0C00CC98 */  jal     func_80033260              
/* 02738 80AA8788 E7AA0014 */  swc1    $f10, 0x0014($sp)          
/* 0273C 80AA878C 02402025 */  or      $a0, $s2, $zero            ## $a0 = 00000000
/* 02740 80AA8790 0C00BE0A */  jal     Audio_PlayActorSound2
              
/* 02744 80AA8794 2405387A */  addiu   $a1, $zero, 0x387A         ## $a1 = 0000387A
/* 02748 80AA8798 266401E0 */  addiu   $a0, $s3, 0x01E0           ## $a0 = 000001E0
/* 0274C 80AA879C 24050002 */  addiu   $a1, $zero, 0x0002         ## $a1 = 00000002
/* 02750 80AA87A0 24060019 */  addiu   $a2, $zero, 0x0019         ## $a2 = 00000019
/* 02754 80AA87A4 0C016A87 */  jal     func_8005AA1C              
/* 02758 80AA87A8 24070005 */  addiu   $a3, $zero, 0x0005         ## $a3 = 00000005
/* 0275C 80AA87AC 8FBF0074 */  lw      $ra, 0x0074($sp)           
.L80AA87B0:
/* 02760 80AA87B0 D7B40048 */  ldc1    $f20, 0x0048($sp)          
/* 02764 80AA87B4 D7B60050 */  ldc1    $f22, 0x0050($sp)          
/* 02768 80AA87B8 D7B80058 */  ldc1    $f24, 0x0058($sp)          
/* 0276C 80AA87BC 8FB00060 */  lw      $s0, 0x0060($sp)           
/* 02770 80AA87C0 8FB10064 */  lw      $s1, 0x0064($sp)           
/* 02774 80AA87C4 8FB20068 */  lw      $s2, 0x0068($sp)           
/* 02778 80AA87C8 8FB3006C */  lw      $s3, 0x006C($sp)           
/* 0277C 80AA87CC 8FB40070 */  lw      $s4, 0x0070($sp)           
/* 02780 80AA87D0 03E00008 */  jr      $ra                        
/* 02784 80AA87D4 27BD00A8 */  addiu   $sp, $sp, 0x00A8           ## $sp = 00000000
