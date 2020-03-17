glabel func_80A0A820
/* 00410 80A0A820 27BDFF50 */  addiu   $sp, $sp, 0xFF50           ## $sp = FFFFFF50
/* 00414 80A0A824 AFBE0068 */  sw      $s8, 0x0068($sp)           
/* 00418 80A0A828 0006F400 */  sll     $s8, $a2, 16               
/* 0041C 80A0A82C 001EF403 */  sra     $s8, $s8, 16               
/* 00420 80A0A830 AFB00048 */  sw      $s0, 0x0048($sp)           
/* 00424 80A0A834 00808025 */  or      $s0, $a0, $zero            ## $s0 = 00000000
/* 00428 80A0A838 AFBF006C */  sw      $ra, 0x006C($sp)           
/* 0042C 80A0A83C AFB70064 */  sw      $s7, 0x0064($sp)           
/* 00430 80A0A840 AFB60060 */  sw      $s6, 0x0060($sp)           
/* 00434 80A0A844 AFB5005C */  sw      $s5, 0x005C($sp)           
/* 00438 80A0A848 AFB40058 */  sw      $s4, 0x0058($sp)           
/* 0043C 80A0A84C AFB30054 */  sw      $s3, 0x0054($sp)           
/* 00440 80A0A850 AFB20050 */  sw      $s2, 0x0050($sp)           
/* 00444 80A0A854 AFB1004C */  sw      $s1, 0x004C($sp)           
/* 00448 80A0A858 F7BA0040 */  sdc1    $f26, 0x0040($sp)          
/* 0044C 80A0A85C F7B80038 */  sdc1    $f24, 0x0038($sp)          
/* 00450 80A0A860 F7B60030 */  sdc1    $f22, 0x0030($sp)          
/* 00454 80A0A864 F7B40028 */  sdc1    $f20, 0x0028($sp)          
/* 00458 80A0A868 AFA500B4 */  sw      $a1, 0x00B4($sp)           
/* 0045C 80A0A86C 1FC00002 */  bgtz    $s8, .L80A0A878            
/* 00460 80A0A870 AFA600B8 */  sw      $a2, 0x00B8($sp)           
/* 00464 80A0A874 241E0001 */  addiu   $s8, $zero, 0x0001         ## $s8 = 00000001
.L80A0A878:
/* 00468 80A0A878 00071080 */  sll     $v0, $a3,  2               
/* 0046C 80A0A87C 00471023 */  subu    $v0, $v0, $a3              
/* 00470 80A0A880 3C0A80A1 */  lui     $t2, %hi(D_80A0B358)       ## $t2 = 80A10000
/* 00474 80A0A884 240E00FF */  addiu   $t6, $zero, 0x00FF         ## $t6 = 000000FF
/* 00478 80A0A888 240F00FF */  addiu   $t7, $zero, 0x00FF         ## $t7 = 000000FF
/* 0047C 80A0A88C 241800FF */  addiu   $t8, $zero, 0x00FF         ## $t8 = 000000FF
/* 00480 80A0A890 241900FF */  addiu   $t9, $zero, 0x00FF         ## $t9 = 000000FF
/* 00484 80A0A894 240800FF */  addiu   $t0, $zero, 0x00FF         ## $t0 = 000000FF
/* 00488 80A0A898 254AB358 */  addiu   $t2, $t2, %lo(D_80A0B358)  ## $t2 = 80A0B358
/* 0048C 80A0A89C 00021080 */  sll     $v0, $v0,  2               
/* 00490 80A0A8A0 A3AE0088 */  sb      $t6, 0x0088($sp)           
/* 00494 80A0A8A4 A3AF0089 */  sb      $t7, 0x0089($sp)           
/* 00498 80A0A8A8 A3A0008A */  sb      $zero, 0x008A($sp)         
/* 0049C 80A0A8AC A3B80084 */  sb      $t8, 0x0084($sp)           
/* 004A0 80A0A8B0 A3B90085 */  sb      $t9, 0x0085($sp)           
/* 004A4 80A0A8B4 A3A80086 */  sb      $t0, 0x0086($sp)           
/* 004A8 80A0A8B8 004A5821 */  addu    $t3, $v0, $t2              
/* 004AC 80A0A8BC 8D6D0000 */  lw      $t5, 0x0000($t3)           ## 00000000
/* 004B0 80A0A8C0 27A90098 */  addiu   $t1, $sp, 0x0098           ## $t1 = FFFFFFE8
/* 004B4 80A0A8C4 3C0E80A1 */  lui     $t6, %hi(D_80A0B370)       ## $t6 = 80A10000
/* 004B8 80A0A8C8 AD2D0000 */  sw      $t5, 0x0000($t1)           ## FFFFFFE8
/* 004BC 80A0A8CC 8D6C0004 */  lw      $t4, 0x0004($t3)           ## 00000004
/* 004C0 80A0A8D0 25CEB370 */  addiu   $t6, $t6, %lo(D_80A0B370)  ## $t6 = 80A0B370
/* 004C4 80A0A8D4 004E7821 */  addu    $t7, $v0, $t6              
/* 004C8 80A0A8D8 AD2C0004 */  sw      $t4, 0x0004($t1)           ## FFFFFFEC
/* 004CC 80A0A8DC 8D6D0008 */  lw      $t5, 0x0008($t3)           ## 00000008
/* 004D0 80A0A8E0 27B8008C */  addiu   $t8, $sp, 0x008C           ## $t8 = FFFFFFDC
/* 004D4 80A0A8E4 24120BB8 */  addiu   $s2, $zero, 0x0BB8         ## $s2 = 00000BB8
/* 004D8 80A0A8E8 AD2D0008 */  sw      $t5, 0x0008($t1)           ## FFFFFFF0
/* 004DC 80A0A8EC AFAF0078 */  sw      $t7, 0x0078($sp)           
/* 004E0 80A0A8F0 8DEA0000 */  lw      $t2, 0x0000($t7)           ## 000000FF
/* 004E4 80A0A8F4 24130010 */  addiu   $s3, $zero, 0x0010         ## $s3 = 00000010
/* 004E8 80A0A8F8 00008825 */  or      $s1, $zero, $zero          ## $s1 = 00000000
/* 004EC 80A0A8FC AF0A0000 */  sw      $t2, 0x0000($t8)           ## FFFFFFDC
/* 004F0 80A0A900 8DE80004 */  lw      $t0, 0x0004($t7)           ## 00000103
/* 004F4 80A0A904 3C014416 */  lui     $at, 0x4416                ## $at = 44160000
/* 004F8 80A0A908 27B70084 */  addiu   $s7, $sp, 0x0084           ## $s7 = FFFFFFD4
/* 004FC 80A0A90C AF080004 */  sw      $t0, 0x0004($t8)           ## FFFFFFE0
/* 00500 80A0A910 8DEA0008 */  lw      $t2, 0x0008($t7)           ## 00000107
/* 00504 80A0A914 27B60088 */  addiu   $s6, $sp, 0x0088           ## $s6 = FFFFFFD8
/* 00508 80A0A918 1BC00038 */  blez    $s8, .L80A0A9FC            
/* 0050C 80A0A91C AF0A0008 */  sw      $t2, 0x0008($t8)           ## FFFFFFE4
/* 00510 80A0A920 4481D000 */  mtc1    $at, $f26                  ## $f26 = 600.00
/* 00514 80A0A924 3C0141A0 */  lui     $at, 0x41A0                ## $at = 41A00000
/* 00518 80A0A928 4481C000 */  mtc1    $at, $f24                  ## $f24 = 20.00
/* 0051C 80A0A92C 3C014120 */  lui     $at, 0x4120                ## $at = 41200000
/* 00520 80A0A930 4481B000 */  mtc1    $at, $f22                  ## $f22 = 10.00
/* 00524 80A0A934 3C013F00 */  lui     $at, 0x3F00                ## $at = 3F000000
/* 00528 80A0A938 3C1480A1 */  lui     $s4, %hi(D_80A0B37C)       ## $s4 = 80A10000
/* 0052C 80A0A93C 4481A000 */  mtc1    $at, $f20                  ## $f20 = 0.50
/* 00530 80A0A940 2694B37C */  addiu   $s4, $s4, %lo(D_80A0B37C)  ## $s4 = 80A0B37C
/* 00534 80A0A944 27B500A4 */  addiu   $s5, $sp, 0x00A4           ## $s5 = FFFFFFF4
/* 00538 80A0A948 8FA90078 */  lw      $t1, 0x0078($sp)           
.L80A0A94C:
/* 0053C 80A0A94C 15340009 */  bne     $t1, $s4, .L80A0A974       
/* 00540 80A0A950 00000000 */  nop
/* 00544 80A0A954 4600C306 */  mov.s   $f12, $f24                 
/* 00548 80A0A958 24121388 */  addiu   $s2, $zero, 0x1388         ## $s2 = 00001388
/* 0054C 80A0A95C 0C00CFC8 */  jal     Math_Rand_CenteredFloat
              
/* 00550 80A0A960 24130014 */  addiu   $s3, $zero, 0x0014         ## $s3 = 00000014
/* 00554 80A0A964 E7A0008C */  swc1    $f0, 0x008C($sp)           
/* 00558 80A0A968 0C00CFC8 */  jal     Math_Rand_CenteredFloat
              
/* 0055C 80A0A96C 4600C306 */  mov.s   $f12, $f24                 
/* 00560 80A0A970 E7A00094 */  swc1    $f0, 0x0094($sp)           
.L80A0A974:
/* 00564 80A0A974 0C03F66B */  jal     Math_Rand_ZeroOne
              ## Rand.Next() float
/* 00568 80A0A978 00000000 */  nop
/* 0056C 80A0A97C 46140101 */  sub.s   $f4, $f0, $f20             
/* 00570 80A0A980 C6080024 */  lwc1    $f8, 0x0024($s0)           ## 00000024
/* 00574 80A0A984 46162182 */  mul.s   $f6, $f4, $f22             
/* 00578 80A0A988 46083280 */  add.s   $f10, $f6, $f8             
/* 0057C 80A0A98C 0C03F66B */  jal     Math_Rand_ZeroOne
              ## Rand.Next() float
/* 00580 80A0A990 E7AA00A4 */  swc1    $f10, 0x00A4($sp)          
/* 00584 80A0A994 C6120160 */  lwc1    $f18, 0x0160($s0)          ## 00000160
/* 00588 80A0A998 46140201 */  sub.s   $f8, $f0, $f20             
/* 0058C 80A0A99C C6100028 */  lwc1    $f16, 0x0028($s0)          ## 00000028
/* 00590 80A0A9A0 461A9102 */  mul.s   $f4, $f18, $f26            
/* 00594 80A0A9A4 46048180 */  add.s   $f6, $f16, $f4             
/* 00598 80A0A9A8 46164282 */  mul.s   $f10, $f8, $f22            
/* 0059C 80A0A9AC 46065480 */  add.s   $f18, $f10, $f6            
/* 005A0 80A0A9B0 0C03F66B */  jal     Math_Rand_ZeroOne
              ## Rand.Next() float
/* 005A4 80A0A9B4 E7B200A8 */  swc1    $f18, 0x00A8($sp)          
/* 005A8 80A0A9B8 46140401 */  sub.s   $f16, $f0, $f20            
/* 005AC 80A0A9BC C608002C */  lwc1    $f8, 0x002C($s0)           ## 0000002C
/* 005B0 80A0A9C0 AFB3001C */  sw      $s3, 0x001C($sp)           
/* 005B4 80A0A9C4 AFB20018 */  sw      $s2, 0x0018($sp)           
/* 005B8 80A0A9C8 46168102 */  mul.s   $f4, $f16, $f22            
/* 005BC 80A0A9CC AFB70014 */  sw      $s7, 0x0014($sp)           
/* 005C0 80A0A9D0 AFB60010 */  sw      $s6, 0x0010($sp)           
/* 005C4 80A0A9D4 8FA400B4 */  lw      $a0, 0x00B4($sp)           
/* 005C8 80A0A9D8 02A02825 */  or      $a1, $s5, $zero            ## $a1 = FFFFFFF4
/* 005CC 80A0A9DC 27A60098 */  addiu   $a2, $sp, 0x0098           ## $a2 = FFFFFFE8
/* 005D0 80A0A9E0 27A7008C */  addiu   $a3, $sp, 0x008C           ## $a3 = FFFFFFDC
/* 005D4 80A0A9E4 46082280 */  add.s   $f10, $f4, $f8             
/* 005D8 80A0A9E8 0C00A2EC */  jal     func_80028BB0              
/* 005DC 80A0A9EC E7AA00AC */  swc1    $f10, 0x00AC($sp)          
/* 005E0 80A0A9F0 26310001 */  addiu   $s1, $s1, 0x0001           ## $s1 = 00000001
/* 005E4 80A0A9F4 563EFFD5 */  bnel    $s1, $s8, .L80A0A94C       
/* 005E8 80A0A9F8 8FA90078 */  lw      $t1, 0x0078($sp)           
.L80A0A9FC:
/* 005EC 80A0A9FC 8FBF006C */  lw      $ra, 0x006C($sp)           
/* 005F0 80A0AA00 D7B40028 */  ldc1    $f20, 0x0028($sp)          
/* 005F4 80A0AA04 D7B60030 */  ldc1    $f22, 0x0030($sp)          
/* 005F8 80A0AA08 D7B80038 */  ldc1    $f24, 0x0038($sp)          
/* 005FC 80A0AA0C D7BA0040 */  ldc1    $f26, 0x0040($sp)          
/* 00600 80A0AA10 8FB00048 */  lw      $s0, 0x0048($sp)           
/* 00604 80A0AA14 8FB1004C */  lw      $s1, 0x004C($sp)           
/* 00608 80A0AA18 8FB20050 */  lw      $s2, 0x0050($sp)           
/* 0060C 80A0AA1C 8FB30054 */  lw      $s3, 0x0054($sp)           
/* 00610 80A0AA20 8FB40058 */  lw      $s4, 0x0058($sp)           
/* 00614 80A0AA24 8FB5005C */  lw      $s5, 0x005C($sp)           
/* 00618 80A0AA28 8FB60060 */  lw      $s6, 0x0060($sp)           
/* 0061C 80A0AA2C 8FB70064 */  lw      $s7, 0x0064($sp)           
/* 00620 80A0AA30 8FBE0068 */  lw      $s8, 0x0068($sp)           
/* 00624 80A0AA34 03E00008 */  jr      $ra                        
/* 00628 80A0AA38 27BD00B0 */  addiu   $sp, $sp, 0x00B0           ## $sp = 00000000


