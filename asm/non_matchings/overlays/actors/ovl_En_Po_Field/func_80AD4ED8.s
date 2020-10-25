.late_rodata
glabel D_80AD7260
    .float 0.001

.text
glabel func_80AD4ED8
/* 013D8 80AD4ED8 27BDFF88 */  addiu   $sp, $sp, 0xFF88           ## $sp = FFFFFF88
/* 013DC 80AD4EDC AFBF004C */  sw      $ra, 0x004C($sp)           
/* 013E0 80AD4EE0 AFB10048 */  sw      $s1, 0x0048($sp)           
/* 013E4 80AD4EE4 AFB00044 */  sw      $s0, 0x0044($sp)           
/* 013E8 80AD4EE8 848E0196 */  lh      $t6, 0x0196($a0)           ## 00000196
/* 013EC 80AD4EEC 00808025 */  or      $s0, $a0, $zero            ## $s0 = 00000000
/* 013F0 80AD4EF0 00A08825 */  or      $s1, $a1, $zero            ## $s1 = 00000000
/* 013F4 80AD4EF4 25CF0001 */  addiu   $t7, $t6, 0x0001           ## $t7 = 00000001
/* 013F8 80AD4EF8 A48F0196 */  sh      $t7, 0x0196($a0)           ## 00000196
/* 013FC 80AD4EFC 84820196 */  lh      $v0, 0x0196($a0)           ## 00000196
/* 01400 80AD4F00 2403001C */  addiu   $v1, $zero, 0x001C         ## $v1 = 0000001C
/* 01404 80AD4F04 28410008 */  slti    $at, $v0, 0x0008           
/* 01408 80AD4F08 102000D9 */  beq     $at, $zero, .L80AD5270     
/* 0140C 80AD4F0C 28410005 */  slti    $at, $v0, 0x0005           
/* 01410 80AD4F10 10200037 */  beq     $at, $zero, .L80AD4FF0     
/* 01414 80AD4F14 244CFFFB */  addiu   $t4, $v0, 0xFFFB           ## $t4 = FFFFFFFB
/* 01418 80AD4F18 00022300 */  sll     $a0, $v0, 12               
/* 0141C 80AD4F1C 2484C000 */  addiu   $a0, $a0, 0xC000           ## $a0 = FFFFC000
/* 01420 80AD4F20 00042400 */  sll     $a0, $a0, 16               
/* 01424 80AD4F24 0C01DE1C */  jal     Math_Sins
              ## sins?
/* 01428 80AD4F28 00042403 */  sra     $a0, $a0, 16               
/* 0142C 80AD4F2C 3C014220 */  lui     $at, 0x4220                ## $at = 42200000
/* 01430 80AD4F30 44813000 */  mtc1    $at, $f6                   ## $f6 = 40.00
/* 01434 80AD4F34 3C0141B8 */  lui     $at, 0x41B8                ## $at = 41B80000
/* 01438 80AD4F38 44815000 */  mtc1    $at, $f10                  ## $f10 = 23.00
/* 0143C 80AD4F3C C6040028 */  lwc1    $f4, 0x0028($s0)           ## 00000028
/* 01440 80AD4F40 460A0402 */  mul.s   $f16, $f0, $f10            
/* 01444 80AD4F44 46062200 */  add.s   $f8, $f4, $f6              
/* 01448 80AD4F48 46088480 */  add.s   $f18, $f16, $f8            
/* 0144C 80AD4F4C E7B20070 */  swc1    $f18, 0x0070($sp)          
/* 01450 80AD4F50 86040196 */  lh      $a0, 0x0196($s0)           ## 00000196
/* 01454 80AD4F54 00042300 */  sll     $a0, $a0, 12               
/* 01458 80AD4F58 2484C000 */  addiu   $a0, $a0, 0xC000           ## $a0 = FFFFC000
/* 0145C 80AD4F5C 00042400 */  sll     $a0, $a0, 16               
/* 01460 80AD4F60 0C01DE0D */  jal     Math_Coss
              ## coss?
/* 01464 80AD4F64 00042403 */  sra     $a0, $a0, 16               
/* 01468 80AD4F68 3C0141B8 */  lui     $at, 0x41B8                ## $at = 41B80000
/* 0146C 80AD4F6C 44812000 */  mtc1    $at, $f4                   ## $f4 = 23.00
/* 01470 80AD4F70 00000000 */  nop
/* 01474 80AD4F74 46040182 */  mul.s   $f6, $f0, $f4              
/* 01478 80AD4F78 E7A60068 */  swc1    $f6, 0x0068($sp)           
/* 0147C 80AD4F7C 863807A0 */  lh      $t8, 0x07A0($s1)           ## 000007A0
/* 01480 80AD4F80 0018C880 */  sll     $t9, $t8,  2               
/* 01484 80AD4F84 02394021 */  addu    $t0, $s1, $t9              
/* 01488 80AD4F88 0C016A7D */  jal     func_8005A9F4              
/* 0148C 80AD4F8C 8D040790 */  lw      $a0, 0x0790($t0)           ## 00000790
/* 01490 80AD4F90 24444800 */  addiu   $a0, $v0, 0x4800           ## $a0 = 00004800
/* 01494 80AD4F94 00042400 */  sll     $a0, $a0, 16               
/* 01498 80AD4F98 0C01DE1C */  jal     Math_Sins
              ## sins?
/* 0149C 80AD4F9C 00042403 */  sra     $a0, $a0, 16               
/* 014A0 80AD4FA0 C7AA0068 */  lwc1    $f10, 0x0068($sp)          
/* 014A4 80AD4FA4 C6080024 */  lwc1    $f8, 0x0024($s0)           ## 00000024
/* 014A8 80AD4FA8 460A0402 */  mul.s   $f16, $f0, $f10            
/* 014AC 80AD4FAC 46088480 */  add.s   $f18, $f16, $f8            
/* 014B0 80AD4FB0 E7B2006C */  swc1    $f18, 0x006C($sp)          
/* 014B4 80AD4FB4 862907A0 */  lh      $t1, 0x07A0($s1)           ## 000007A0
/* 014B8 80AD4FB8 00095080 */  sll     $t2, $t1,  2               
/* 014BC 80AD4FBC 022A5821 */  addu    $t3, $s1, $t2              
/* 014C0 80AD4FC0 0C016A7D */  jal     func_8005A9F4              
/* 014C4 80AD4FC4 8D640790 */  lw      $a0, 0x0790($t3)           ## 00000790
/* 014C8 80AD4FC8 24444800 */  addiu   $a0, $v0, 0x4800           ## $a0 = 00004800
/* 014CC 80AD4FCC 00042400 */  sll     $a0, $a0, 16               
/* 014D0 80AD4FD0 0C01DE0D */  jal     Math_Coss
              ## coss?
/* 014D4 80AD4FD4 00042403 */  sra     $a0, $a0, 16               
/* 014D8 80AD4FD8 C7A40068 */  lwc1    $f4, 0x0068($sp)           
/* 014DC 80AD4FDC C60A002C */  lwc1    $f10, 0x002C($s0)          ## 0000002C
/* 014E0 80AD4FE0 46040182 */  mul.s   $f6, $f0, $f4              
/* 014E4 80AD4FE4 460A3400 */  add.s   $f16, $f6, $f10            
/* 014E8 80AD4FE8 1000002A */  beq     $zero, $zero, .L80AD5094   
/* 014EC 80AD4FEC E7B00074 */  swc1    $f16, 0x0074($sp)          
.L80AD4FF0:
/* 014F0 80AD4FF0 448C5000 */  mtc1    $t4, $f10                  ## $f10 = 0.00
/* 014F4 80AD4FF4 3C014220 */  lui     $at, 0x4220                ## $at = 42200000
/* 014F8 80AD4FF8 44819000 */  mtc1    $at, $f18                  ## $f18 = 40.00
/* 014FC 80AD4FFC 46805420 */  cvt.s.w $f16, $f10                 
/* 01500 80AD5000 C6080028 */  lwc1    $f8, 0x0028($s0)           ## 00000028
/* 01504 80AD5004 3C014170 */  lui     $at, 0x4170                ## $at = 41700000
/* 01508 80AD5008 44813000 */  mtc1    $at, $f6                   ## $f6 = 15.00
/* 0150C 80AD500C 46124100 */  add.s   $f4, $f8, $f18             
/* 01510 80AD5010 46103202 */  mul.s   $f8, $f6, $f16             
/* 01514 80AD5014 46082480 */  add.s   $f18, $f4, $f8             
/* 01518 80AD5018 E7B20070 */  swc1    $f18, 0x0070($sp)          
/* 0151C 80AD501C 862D07A0 */  lh      $t5, 0x07A0($s1)           ## 000007A0
/* 01520 80AD5020 000D7080 */  sll     $t6, $t5,  2               
/* 01524 80AD5024 022E7821 */  addu    $t7, $s1, $t6              
/* 01528 80AD5028 0C016A7D */  jal     func_8005A9F4              
/* 0152C 80AD502C 8DE40790 */  lw      $a0, 0x0790($t7)           ## 00000790
/* 01530 80AD5030 24444800 */  addiu   $a0, $v0, 0x4800           ## $a0 = 00004800
/* 01534 80AD5034 00042400 */  sll     $a0, $a0, 16               
/* 01538 80AD5038 0C01DE1C */  jal     Math_Sins
              ## sins?
/* 0153C 80AD503C 00042403 */  sra     $a0, $a0, 16               
/* 01540 80AD5040 3C0141B8 */  lui     $at, 0x41B8                ## $at = 41B80000
/* 01544 80AD5044 44815000 */  mtc1    $at, $f10                  ## $f10 = 23.00
/* 01548 80AD5048 C6100024 */  lwc1    $f16, 0x0024($s0)          ## 00000024
/* 0154C 80AD504C 460A0182 */  mul.s   $f6, $f0, $f10             
/* 01550 80AD5050 46103100 */  add.s   $f4, $f6, $f16             
/* 01554 80AD5054 E7A4006C */  swc1    $f4, 0x006C($sp)           
/* 01558 80AD5058 863807A0 */  lh      $t8, 0x07A0($s1)           ## 000007A0
/* 0155C 80AD505C 0018C880 */  sll     $t9, $t8,  2               
/* 01560 80AD5060 02394021 */  addu    $t0, $s1, $t9              
/* 01564 80AD5064 0C016A7D */  jal     func_8005A9F4              
/* 01568 80AD5068 8D040790 */  lw      $a0, 0x0790($t0)           ## 00000790
/* 0156C 80AD506C 24444800 */  addiu   $a0, $v0, 0x4800           ## $a0 = 00004800
/* 01570 80AD5070 00042400 */  sll     $a0, $a0, 16               
/* 01574 80AD5074 0C01DE0D */  jal     Math_Coss
              ## coss?
/* 01578 80AD5078 00042403 */  sra     $a0, $a0, 16               
/* 0157C 80AD507C 3C0141B8 */  lui     $at, 0x41B8                ## $at = 41B80000
/* 01580 80AD5080 44814000 */  mtc1    $at, $f8                   ## $f8 = 23.00
/* 01584 80AD5084 C60A002C */  lwc1    $f10, 0x002C($s0)          ## 0000002C
/* 01588 80AD5088 46080482 */  mul.s   $f18, $f0, $f8             
/* 0158C 80AD508C 460A9180 */  add.s   $f6, $f18, $f10            
/* 01590 80AD5090 E7A60074 */  swc1    $f6, 0x0074($sp)           
.L80AD5094:
/* 01594 80AD5094 86090196 */  lh      $t1, 0x0196($s0)           ## 00000196
/* 01598 80AD5098 3C0680AD */  lui     $a2, %hi(D_80AD7114)       ## $a2 = 80AD0000
/* 0159C 80AD509C 3C0780AD */  lui     $a3, %hi(D_80AD7120)       ## $a3 = 80AD0000
/* 015A0 80AD50A0 00095080 */  sll     $t2, $t1,  2               
/* 015A4 80AD50A4 01495021 */  addu    $t2, $t2, $t1              
/* 015A8 80AD50A8 000A5040 */  sll     $t2, $t2,  1               
/* 015AC 80AD50AC 254B0050 */  addiu   $t3, $t2, 0x0050           ## $t3 = 00000050
/* 015B0 80AD50B0 24090001 */  addiu   $t1, $zero, 0x0001         ## $t1 = 00000001
/* 015B4 80AD50B4 240C00FF */  addiu   $t4, $zero, 0x00FF         ## $t4 = 000000FF
/* 015B8 80AD50B8 240D00FF */  addiu   $t5, $zero, 0x00FF         ## $t5 = 000000FF
/* 015BC 80AD50BC 240E00FF */  addiu   $t6, $zero, 0x00FF         ## $t6 = 000000FF
/* 015C0 80AD50C0 240F00FF */  addiu   $t7, $zero, 0x00FF         ## $t7 = 000000FF
/* 015C4 80AD50C4 241800FF */  addiu   $t8, $zero, 0x00FF         ## $t8 = 000000FF
/* 015C8 80AD50C8 24190001 */  addiu   $t9, $zero, 0x0001         ## $t9 = 00000001
/* 015CC 80AD50CC 24080009 */  addiu   $t0, $zero, 0x0009         ## $t0 = 00000009
/* 015D0 80AD50D0 AFA80038 */  sw      $t0, 0x0038($sp)           
/* 015D4 80AD50D4 AFB90034 */  sw      $t9, 0x0034($sp)           
/* 015D8 80AD50D8 AFB80030 */  sw      $t8, 0x0030($sp)           
/* 015DC 80AD50DC AFAF0024 */  sw      $t7, 0x0024($sp)           
/* 015E0 80AD50E0 AFAE0020 */  sw      $t6, 0x0020($sp)           
/* 015E4 80AD50E4 AFAD001C */  sw      $t5, 0x001C($sp)           
/* 015E8 80AD50E8 AFAC0018 */  sw      $t4, 0x0018($sp)           
/* 015EC 80AD50EC AFA9003C */  sw      $t1, 0x003C($sp)           
/* 015F0 80AD50F0 AFAB0010 */  sw      $t3, 0x0010($sp)           
/* 015F4 80AD50F4 24E77120 */  addiu   $a3, $a3, %lo(D_80AD7120)  ## $a3 = 80AD7120
/* 015F8 80AD50F8 24C67114 */  addiu   $a2, $a2, %lo(D_80AD7114)  ## $a2 = 80AD7114
/* 015FC 80AD50FC AFA0002C */  sw      $zero, 0x002C($sp)         
/* 01600 80AD5100 AFA00028 */  sw      $zero, 0x0028($sp)         
/* 01604 80AD5104 AFA00014 */  sw      $zero, 0x0014($sp)         
/* 01608 80AD5108 02202025 */  or      $a0, $s1, $zero            ## $a0 = 00000000
/* 0160C 80AD510C 0C00A9AE */  jal     EffectSsDeadDb_Spawn              
/* 01610 80AD5110 27A5006C */  addiu   $a1, $sp, 0x006C           ## $a1 = FFFFFFF4
/* 01614 80AD5114 C6000024 */  lwc1    $f0, 0x0024($s0)           ## 00000024
/* 01618 80AD5118 C7A4006C */  lwc1    $f4, 0x006C($sp)           
/* 0161C 80AD511C C7AA0074 */  lwc1    $f10, 0x0074($sp)          
/* 01620 80AD5120 46000400 */  add.s   $f16, $f0, $f0             
/* 01624 80AD5124 3C0680AD */  lui     $a2, %hi(D_80AD7114)       ## $a2 = 80AD0000
/* 01628 80AD5128 3C0780AD */  lui     $a3, %hi(D_80AD7120)       ## $a3 = 80AD0000
/* 0162C 80AD512C 240D00FF */  addiu   $t5, $zero, 0x00FF         ## $t5 = 000000FF
/* 01630 80AD5130 46048201 */  sub.s   $f8, $f16, $f4             
/* 01634 80AD5134 240E00FF */  addiu   $t6, $zero, 0x00FF         ## $t6 = 000000FF
/* 01638 80AD5138 240F00FF */  addiu   $t7, $zero, 0x00FF         ## $t7 = 000000FF
/* 0163C 80AD513C 241800FF */  addiu   $t8, $zero, 0x00FF         ## $t8 = 000000FF
/* 01640 80AD5140 E7A8006C */  swc1    $f8, 0x006C($sp)           
/* 01644 80AD5144 C602002C */  lwc1    $f2, 0x002C($s0)           ## 0000002C
/* 01648 80AD5148 241900FF */  addiu   $t9, $zero, 0x00FF         ## $t9 = 000000FF
/* 0164C 80AD514C 24080001 */  addiu   $t0, $zero, 0x0001         ## $t0 = 00000001
/* 01650 80AD5150 46021480 */  add.s   $f18, $f2, $f2             
/* 01654 80AD5154 24090009 */  addiu   $t1, $zero, 0x0009         ## $t1 = 00000009
/* 01658 80AD5158 24E77120 */  addiu   $a3, $a3, %lo(D_80AD7120)  ## $a3 = 80AD7120
/* 0165C 80AD515C 24C67114 */  addiu   $a2, $a2, %lo(D_80AD7114)  ## $a2 = 80AD7114
/* 01660 80AD5160 460A9181 */  sub.s   $f6, $f18, $f10            
/* 01664 80AD5164 02202025 */  or      $a0, $s1, $zero            ## $a0 = 00000000
/* 01668 80AD5168 27A5006C */  addiu   $a1, $sp, 0x006C           ## $a1 = FFFFFFF4
/* 0166C 80AD516C E7A60074 */  swc1    $f6, 0x0074($sp)           
/* 01670 80AD5170 860A0196 */  lh      $t2, 0x0196($s0)           ## 00000196
/* 01674 80AD5174 AFA90038 */  sw      $t1, 0x0038($sp)           
/* 01678 80AD5178 AFA80034 */  sw      $t0, 0x0034($sp)           
/* 0167C 80AD517C 000A5880 */  sll     $t3, $t2,  2               
/* 01680 80AD5180 016A5821 */  addu    $t3, $t3, $t2              
/* 01684 80AD5184 000B5840 */  sll     $t3, $t3,  1               
/* 01688 80AD5188 256C0050 */  addiu   $t4, $t3, 0x0050           ## $t4 = 00000050
/* 0168C 80AD518C 240A0001 */  addiu   $t2, $zero, 0x0001         ## $t2 = 00000001
/* 01690 80AD5190 AFAA003C */  sw      $t2, 0x003C($sp)           
/* 01694 80AD5194 AFAC0010 */  sw      $t4, 0x0010($sp)           
/* 01698 80AD5198 AFB90030 */  sw      $t9, 0x0030($sp)           
/* 0169C 80AD519C AFA0002C */  sw      $zero, 0x002C($sp)         
/* 016A0 80AD51A0 AFA00028 */  sw      $zero, 0x0028($sp)         
/* 016A4 80AD51A4 AFB80024 */  sw      $t8, 0x0024($sp)           
/* 016A8 80AD51A8 AFAF0020 */  sw      $t7, 0x0020($sp)           
/* 016AC 80AD51AC AFAE001C */  sw      $t6, 0x001C($sp)           
/* 016B0 80AD51B0 AFAD0018 */  sw      $t5, 0x0018($sp)           
/* 016B4 80AD51B4 0C00A9AE */  jal     EffectSsDeadDb_Spawn              
/* 016B8 80AD51B8 AFA00014 */  sw      $zero, 0x0014($sp)         
/* 016BC 80AD51BC C6100024 */  lwc1    $f16, 0x0024($s0)          ## 00000024
/* 016C0 80AD51C0 3C0680AD */  lui     $a2, %hi(D_80AD7114)       ## $a2 = 80AD0000
/* 016C4 80AD51C4 3C0780AD */  lui     $a3, %hi(D_80AD7120)       ## $a3 = 80AD0000
/* 016C8 80AD51C8 E7B0006C */  swc1    $f16, 0x006C($sp)          
/* 016CC 80AD51CC C604002C */  lwc1    $f4, 0x002C($s0)           ## 0000002C
/* 016D0 80AD51D0 240E00FF */  addiu   $t6, $zero, 0x00FF         ## $t6 = 000000FF
/* 016D4 80AD51D4 240F00FF */  addiu   $t7, $zero, 0x00FF         ## $t7 = 000000FF
/* 016D8 80AD51D8 E7A40074 */  swc1    $f4, 0x0074($sp)           
/* 016DC 80AD51DC 860B0196 */  lh      $t3, 0x0196($s0)           ## 00000196
/* 016E0 80AD51E0 241800FF */  addiu   $t8, $zero, 0x00FF         ## $t8 = 000000FF
/* 016E4 80AD51E4 241900FF */  addiu   $t9, $zero, 0x00FF         ## $t9 = 000000FF
/* 016E8 80AD51E8 000B6080 */  sll     $t4, $t3,  2               
/* 016EC 80AD51EC 018B6021 */  addu    $t4, $t4, $t3              
/* 016F0 80AD51F0 000C6040 */  sll     $t4, $t4,  1               
/* 016F4 80AD51F4 258D0050 */  addiu   $t5, $t4, 0x0050           ## $t5 = 00000050
/* 016F8 80AD51F8 240B0001 */  addiu   $t3, $zero, 0x0001         ## $t3 = 00000001
/* 016FC 80AD51FC 240800FF */  addiu   $t0, $zero, 0x00FF         ## $t0 = 000000FF
/* 01700 80AD5200 24090001 */  addiu   $t1, $zero, 0x0001         ## $t1 = 00000001
/* 01704 80AD5204 240A0009 */  addiu   $t2, $zero, 0x0009         ## $t2 = 00000009
/* 01708 80AD5208 AFAA0038 */  sw      $t2, 0x0038($sp)           
/* 0170C 80AD520C AFA90034 */  sw      $t1, 0x0034($sp)           
/* 01710 80AD5210 AFA80030 */  sw      $t0, 0x0030($sp)           
/* 01714 80AD5214 AFAB003C */  sw      $t3, 0x003C($sp)           
/* 01718 80AD5218 AFAD0010 */  sw      $t5, 0x0010($sp)           
/* 0171C 80AD521C AFB90024 */  sw      $t9, 0x0024($sp)           
/* 01720 80AD5220 AFB80020 */  sw      $t8, 0x0020($sp)           
/* 01724 80AD5224 AFA0002C */  sw      $zero, 0x002C($sp)         
/* 01728 80AD5228 AFA00028 */  sw      $zero, 0x0028($sp)         
/* 0172C 80AD522C AFAF001C */  sw      $t7, 0x001C($sp)           
/* 01730 80AD5230 AFAE0018 */  sw      $t6, 0x0018($sp)           
/* 01734 80AD5234 AFA00014 */  sw      $zero, 0x0014($sp)         
/* 01738 80AD5238 24E77120 */  addiu   $a3, $a3, %lo(D_80AD7120)  ## $a3 = 80AD7120
/* 0173C 80AD523C 24C67114 */  addiu   $a2, $a2, %lo(D_80AD7114)  ## $a2 = 80AD7114
/* 01740 80AD5240 02202025 */  or      $a0, $s1, $zero            ## $a0 = 00000000
/* 01744 80AD5244 0C00A9AE */  jal     EffectSsDeadDb_Spawn              
/* 01748 80AD5248 27A5006C */  addiu   $a1, $sp, 0x006C           ## $a1 = FFFFFFF4
/* 0174C 80AD524C 86020196 */  lh      $v0, 0x0196($s0)           ## 00000196
/* 01750 80AD5250 24010001 */  addiu   $at, $zero, 0x0001         ## $at = 00000001
/* 01754 80AD5254 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 01758 80AD5258 5441001C */  bnel    $v0, $at, .L80AD52CC       
/* 0175C 80AD525C 24010012 */  addiu   $at, $zero, 0x0012         ## $at = 00000012
/* 01760 80AD5260 0C00BE0A */  jal     Audio_PlayActorSound2
              
/* 01764 80AD5264 24053878 */  addiu   $a1, $zero, 0x3878         ## $a1 = 00003878
/* 01768 80AD5268 10000017 */  beq     $zero, $zero, .L80AD52C8   
/* 0176C 80AD526C 86020196 */  lh      $v0, 0x0196($s0)           ## 00000196
.L80AD5270:
/* 01770 80AD5270 14620006 */  bne     $v1, $v0, .L80AD528C       
/* 01774 80AD5274 28410013 */  slti    $at, $v0, 0x0013           
/* 01778 80AD5278 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 0177C 80AD527C 0C2B5082 */  jal     func_80AD4208              
/* 01780 80AD5280 02202825 */  or      $a1, $s1, $zero            ## $a1 = 00000000
/* 01784 80AD5284 10000010 */  beq     $zero, $zero, .L80AD52C8   
/* 01788 80AD5288 86020196 */  lh      $v0, 0x0196($s0)           ## 00000196
.L80AD528C:
/* 0178C 80AD528C 1420000E */  bne     $at, $zero, .L80AD52C8     
/* 01790 80AD5290 00626023 */  subu    $t4, $v1, $v0              
/* 01794 80AD5294 448C4000 */  mtc1    $t4, $f8                   ## $f8 = 0.00
/* 01798 80AD5298 3C0180AD */  lui     $at, %hi(D_80AD7260)       ## $at = 80AD0000
/* 0179C 80AD529C C42A7260 */  lwc1    $f10, %lo(D_80AD7260)($at) 
/* 017A0 80AD52A0 468044A0 */  cvt.s.w $f18, $f8                  
/* 017A4 80AD52A4 3C0140A0 */  lui     $at, 0x40A0                ## $at = 40A00000
/* 017A8 80AD52A8 44818000 */  mtc1    $at, $f16                  ## $f16 = 5.00
/* 017AC 80AD52AC C6060028 */  lwc1    $f6, 0x0028($s0)           ## 00000028
/* 017B0 80AD52B0 460A9002 */  mul.s   $f0, $f18, $f10            
/* 017B4 80AD52B4 46103100 */  add.s   $f4, $f6, $f16             
/* 017B8 80AD52B8 E6040028 */  swc1    $f4, 0x0028($s0)           ## 00000028
/* 017BC 80AD52BC E6000058 */  swc1    $f0, 0x0058($s0)           ## 00000058
/* 017C0 80AD52C0 E6000054 */  swc1    $f0, 0x0054($s0)           ## 00000054
/* 017C4 80AD52C4 E6000050 */  swc1    $f0, 0x0050($s0)           ## 00000050
.L80AD52C8:
/* 017C8 80AD52C8 24010012 */  addiu   $at, $zero, 0x0012         ## $at = 00000012
.L80AD52CC:
/* 017CC 80AD52CC 14410003 */  bne     $v0, $at, .L80AD52DC       
/* 017D0 80AD52D0 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 017D4 80AD52D4 0C00BE0A */  jal     Audio_PlayActorSound2
              
/* 017D8 80AD52D8 24053877 */  addiu   $a1, $zero, 0x3877         ## $a1 = 00003877
.L80AD52DC:
/* 017DC 80AD52DC 8FBF004C */  lw      $ra, 0x004C($sp)           
/* 017E0 80AD52E0 8FB00044 */  lw      $s0, 0x0044($sp)           
/* 017E4 80AD52E4 8FB10048 */  lw      $s1, 0x0048($sp)           
/* 017E8 80AD52E8 03E00008 */  jr      $ra                        
/* 017EC 80AD52EC 27BD0078 */  addiu   $sp, $sp, 0x0078           ## $sp = 00000000
