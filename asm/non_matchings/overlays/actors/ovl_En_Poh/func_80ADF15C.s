.late_rodata
glabel D_80AE1C3C
    .float 0.001

.text
glabel func_80ADF15C
/* 0140C 80ADF15C 27BDFF88 */  addiu   $sp, $sp, 0xFF88           ## $sp = FFFFFF88
/* 01410 80ADF160 AFBF004C */  sw      $ra, 0x004C($sp)           
/* 01414 80ADF164 AFB10048 */  sw      $s1, 0x0048($sp)           
/* 01418 80ADF168 AFB00044 */  sw      $s0, 0x0044($sp)           
/* 0141C 80ADF16C 848E0198 */  lh      $t6, 0x0198($a0)           ## 00000198
/* 01420 80ADF170 00808025 */  or      $s0, $a0, $zero            ## $s0 = 00000000
/* 01424 80ADF174 00A08825 */  or      $s1, $a1, $zero            ## $s1 = 00000000
/* 01428 80ADF178 25CF0001 */  addiu   $t7, $t6, 0x0001           ## $t7 = 00000001
/* 0142C 80ADF17C A48F0198 */  sh      $t7, 0x0198($a0)           ## 00000198
/* 01430 80ADF180 84820198 */  lh      $v0, 0x0198($a0)           ## 00000198
/* 01434 80ADF184 2403001C */  addiu   $v1, $zero, 0x001C         ## $v1 = 0000001C
/* 01438 80ADF188 28410008 */  slti    $at, $v0, 0x0008           
/* 0143C 80ADF18C 102000D9 */  beq     $at, $zero, .L80ADF4F4     
/* 01440 80ADF190 28410005 */  slti    $at, $v0, 0x0005           
/* 01444 80ADF194 10200037 */  beq     $at, $zero, .L80ADF274     
/* 01448 80ADF198 244CFFFB */  addiu   $t4, $v0, 0xFFFB           ## $t4 = FFFFFFFB
/* 0144C 80ADF19C 00022300 */  sll     $a0, $v0, 12               
/* 01450 80ADF1A0 2484C000 */  addiu   $a0, $a0, 0xC000           ## $a0 = FFFFC000
/* 01454 80ADF1A4 00042400 */  sll     $a0, $a0, 16               
/* 01458 80ADF1A8 0C01DE1C */  jal     Math_Sins
              ## sins?
/* 0145C 80ADF1AC 00042403 */  sra     $a0, $a0, 16               
/* 01460 80ADF1B0 3C014220 */  lui     $at, 0x4220                ## $at = 42200000
/* 01464 80ADF1B4 44813000 */  mtc1    $at, $f6                   ## $f6 = 40.00
/* 01468 80ADF1B8 3C0141B8 */  lui     $at, 0x41B8                ## $at = 41B80000
/* 0146C 80ADF1BC 44815000 */  mtc1    $at, $f10                  ## $f10 = 23.00
/* 01470 80ADF1C0 C6040028 */  lwc1    $f4, 0x0028($s0)           ## 00000028
/* 01474 80ADF1C4 460A0402 */  mul.s   $f16, $f0, $f10            
/* 01478 80ADF1C8 46062200 */  add.s   $f8, $f4, $f6              
/* 0147C 80ADF1CC 46088480 */  add.s   $f18, $f16, $f8            
/* 01480 80ADF1D0 E7B20070 */  swc1    $f18, 0x0070($sp)          
/* 01484 80ADF1D4 86040198 */  lh      $a0, 0x0198($s0)           ## 00000198
/* 01488 80ADF1D8 00042300 */  sll     $a0, $a0, 12               
/* 0148C 80ADF1DC 2484C000 */  addiu   $a0, $a0, 0xC000           ## $a0 = FFFFC000
/* 01490 80ADF1E0 00042400 */  sll     $a0, $a0, 16               
/* 01494 80ADF1E4 0C01DE0D */  jal     Math_Coss
              ## coss?
/* 01498 80ADF1E8 00042403 */  sra     $a0, $a0, 16               
/* 0149C 80ADF1EC 3C0141B8 */  lui     $at, 0x41B8                ## $at = 41B80000
/* 014A0 80ADF1F0 44812000 */  mtc1    $at, $f4                   ## $f4 = 23.00
/* 014A4 80ADF1F4 00000000 */  nop
/* 014A8 80ADF1F8 46040182 */  mul.s   $f6, $f0, $f4              
/* 014AC 80ADF1FC E7A60068 */  swc1    $f6, 0x0068($sp)           
/* 014B0 80ADF200 863807A0 */  lh      $t8, 0x07A0($s1)           ## 000007A0
/* 014B4 80ADF204 0018C880 */  sll     $t9, $t8,  2               
/* 014B8 80ADF208 02394021 */  addu    $t0, $s1, $t9              
/* 014BC 80ADF20C 0C016A7D */  jal     func_8005A9F4              
/* 014C0 80ADF210 8D040790 */  lw      $a0, 0x0790($t0)           ## 00000790
/* 014C4 80ADF214 24444800 */  addiu   $a0, $v0, 0x4800           ## $a0 = 00004800
/* 014C8 80ADF218 00042400 */  sll     $a0, $a0, 16               
/* 014CC 80ADF21C 0C01DE1C */  jal     Math_Sins
              ## sins?
/* 014D0 80ADF220 00042403 */  sra     $a0, $a0, 16               
/* 014D4 80ADF224 C7AA0068 */  lwc1    $f10, 0x0068($sp)          
/* 014D8 80ADF228 C6080024 */  lwc1    $f8, 0x0024($s0)           ## 00000024
/* 014DC 80ADF22C 460A0402 */  mul.s   $f16, $f0, $f10            
/* 014E0 80ADF230 46088480 */  add.s   $f18, $f16, $f8            
/* 014E4 80ADF234 E7B2006C */  swc1    $f18, 0x006C($sp)          
/* 014E8 80ADF238 862907A0 */  lh      $t1, 0x07A0($s1)           ## 000007A0
/* 014EC 80ADF23C 00095080 */  sll     $t2, $t1,  2               
/* 014F0 80ADF240 022A5821 */  addu    $t3, $s1, $t2              
/* 014F4 80ADF244 0C016A7D */  jal     func_8005A9F4              
/* 014F8 80ADF248 8D640790 */  lw      $a0, 0x0790($t3)           ## 00000790
/* 014FC 80ADF24C 24444800 */  addiu   $a0, $v0, 0x4800           ## $a0 = 00004800
/* 01500 80ADF250 00042400 */  sll     $a0, $a0, 16               
/* 01504 80ADF254 0C01DE0D */  jal     Math_Coss
              ## coss?
/* 01508 80ADF258 00042403 */  sra     $a0, $a0, 16               
/* 0150C 80ADF25C C7A40068 */  lwc1    $f4, 0x0068($sp)           
/* 01510 80ADF260 C60A002C */  lwc1    $f10, 0x002C($s0)          ## 0000002C
/* 01514 80ADF264 46040182 */  mul.s   $f6, $f0, $f4              
/* 01518 80ADF268 460A3400 */  add.s   $f16, $f6, $f10            
/* 0151C 80ADF26C 1000002A */  beq     $zero, $zero, .L80ADF318   
/* 01520 80ADF270 E7B00074 */  swc1    $f16, 0x0074($sp)          
.L80ADF274:
/* 01524 80ADF274 448C5000 */  mtc1    $t4, $f10                  ## $f10 = 0.00
/* 01528 80ADF278 3C014220 */  lui     $at, 0x4220                ## $at = 42200000
/* 0152C 80ADF27C 44819000 */  mtc1    $at, $f18                  ## $f18 = 40.00
/* 01530 80ADF280 46805420 */  cvt.s.w $f16, $f10                 
/* 01534 80ADF284 C6080028 */  lwc1    $f8, 0x0028($s0)           ## 00000028
/* 01538 80ADF288 3C014170 */  lui     $at, 0x4170                ## $at = 41700000
/* 0153C 80ADF28C 44813000 */  mtc1    $at, $f6                   ## $f6 = 15.00
/* 01540 80ADF290 46124100 */  add.s   $f4, $f8, $f18             
/* 01544 80ADF294 46103202 */  mul.s   $f8, $f6, $f16             
/* 01548 80ADF298 46082480 */  add.s   $f18, $f4, $f8             
/* 0154C 80ADF29C E7B20070 */  swc1    $f18, 0x0070($sp)          
/* 01550 80ADF2A0 862D07A0 */  lh      $t5, 0x07A0($s1)           ## 000007A0
/* 01554 80ADF2A4 000D7080 */  sll     $t6, $t5,  2               
/* 01558 80ADF2A8 022E7821 */  addu    $t7, $s1, $t6              
/* 0155C 80ADF2AC 0C016A7D */  jal     func_8005A9F4              
/* 01560 80ADF2B0 8DE40790 */  lw      $a0, 0x0790($t7)           ## 00000790
/* 01564 80ADF2B4 24444800 */  addiu   $a0, $v0, 0x4800           ## $a0 = 00004800
/* 01568 80ADF2B8 00042400 */  sll     $a0, $a0, 16               
/* 0156C 80ADF2BC 0C01DE1C */  jal     Math_Sins
              ## sins?
/* 01570 80ADF2C0 00042403 */  sra     $a0, $a0, 16               
/* 01574 80ADF2C4 3C0141B8 */  lui     $at, 0x41B8                ## $at = 41B80000
/* 01578 80ADF2C8 44815000 */  mtc1    $at, $f10                  ## $f10 = 23.00
/* 0157C 80ADF2CC C6100024 */  lwc1    $f16, 0x0024($s0)          ## 00000024
/* 01580 80ADF2D0 460A0182 */  mul.s   $f6, $f0, $f10             
/* 01584 80ADF2D4 46103100 */  add.s   $f4, $f6, $f16             
/* 01588 80ADF2D8 E7A4006C */  swc1    $f4, 0x006C($sp)           
/* 0158C 80ADF2DC 863807A0 */  lh      $t8, 0x07A0($s1)           ## 000007A0
/* 01590 80ADF2E0 0018C880 */  sll     $t9, $t8,  2               
/* 01594 80ADF2E4 02394021 */  addu    $t0, $s1, $t9              
/* 01598 80ADF2E8 0C016A7D */  jal     func_8005A9F4              
/* 0159C 80ADF2EC 8D040790 */  lw      $a0, 0x0790($t0)           ## 00000790
/* 015A0 80ADF2F0 24444800 */  addiu   $a0, $v0, 0x4800           ## $a0 = 00004800
/* 015A4 80ADF2F4 00042400 */  sll     $a0, $a0, 16               
/* 015A8 80ADF2F8 0C01DE0D */  jal     Math_Coss
              ## coss?
/* 015AC 80ADF2FC 00042403 */  sra     $a0, $a0, 16               
/* 015B0 80ADF300 3C0141B8 */  lui     $at, 0x41B8                ## $at = 41B80000
/* 015B4 80ADF304 44814000 */  mtc1    $at, $f8                   ## $f8 = 23.00
/* 015B8 80ADF308 C60A002C */  lwc1    $f10, 0x002C($s0)          ## 0000002C
/* 015BC 80ADF30C 46080482 */  mul.s   $f18, $f0, $f8             
/* 015C0 80ADF310 460A9180 */  add.s   $f6, $f18, $f10            
/* 015C4 80ADF314 E7A60074 */  swc1    $f6, 0x0074($sp)           
.L80ADF318:
/* 015C8 80ADF318 86090198 */  lh      $t1, 0x0198($s0)           ## 00000198
/* 015CC 80ADF31C 3C0680AE */  lui     $a2, %hi(D_80AE1B60)       ## $a2 = 80AE0000
/* 015D0 80ADF320 3C0780AE */  lui     $a3, %hi(D_80AE1B6C)       ## $a3 = 80AE0000
/* 015D4 80ADF324 00095080 */  sll     $t2, $t1,  2               
/* 015D8 80ADF328 01495021 */  addu    $t2, $t2, $t1              
/* 015DC 80ADF32C 000A5040 */  sll     $t2, $t2,  1               
/* 015E0 80ADF330 254B0050 */  addiu   $t3, $t2, 0x0050           ## $t3 = 00000050
/* 015E4 80ADF334 24090001 */  addiu   $t1, $zero, 0x0001         ## $t1 = 00000001
/* 015E8 80ADF338 240C00FF */  addiu   $t4, $zero, 0x00FF         ## $t4 = 000000FF
/* 015EC 80ADF33C 240D00FF */  addiu   $t5, $zero, 0x00FF         ## $t5 = 000000FF
/* 015F0 80ADF340 240E00FF */  addiu   $t6, $zero, 0x00FF         ## $t6 = 000000FF
/* 015F4 80ADF344 240F00FF */  addiu   $t7, $zero, 0x00FF         ## $t7 = 000000FF
/* 015F8 80ADF348 241800FF */  addiu   $t8, $zero, 0x00FF         ## $t8 = 000000FF
/* 015FC 80ADF34C 24190001 */  addiu   $t9, $zero, 0x0001         ## $t9 = 00000001
/* 01600 80ADF350 24080009 */  addiu   $t0, $zero, 0x0009         ## $t0 = 00000009
/* 01604 80ADF354 AFA80038 */  sw      $t0, 0x0038($sp)           
/* 01608 80ADF358 AFB90034 */  sw      $t9, 0x0034($sp)           
/* 0160C 80ADF35C AFB80030 */  sw      $t8, 0x0030($sp)           
/* 01610 80ADF360 AFAF0024 */  sw      $t7, 0x0024($sp)           
/* 01614 80ADF364 AFAE0020 */  sw      $t6, 0x0020($sp)           
/* 01618 80ADF368 AFAD001C */  sw      $t5, 0x001C($sp)           
/* 0161C 80ADF36C AFAC0018 */  sw      $t4, 0x0018($sp)           
/* 01620 80ADF370 AFA9003C */  sw      $t1, 0x003C($sp)           
/* 01624 80ADF374 AFAB0010 */  sw      $t3, 0x0010($sp)           
/* 01628 80ADF378 24E71B6C */  addiu   $a3, $a3, %lo(D_80AE1B6C)  ## $a3 = 80AE1B6C
/* 0162C 80ADF37C 24C61B60 */  addiu   $a2, $a2, %lo(D_80AE1B60)  ## $a2 = 80AE1B60
/* 01630 80ADF380 AFA0002C */  sw      $zero, 0x002C($sp)         
/* 01634 80ADF384 AFA00028 */  sw      $zero, 0x0028($sp)         
/* 01638 80ADF388 AFA00014 */  sw      $zero, 0x0014($sp)         
/* 0163C 80ADF38C 02202025 */  or      $a0, $s1, $zero            ## $a0 = 00000000
/* 01640 80ADF390 0C00A9AE */  jal     EffectSsDeadDb_Spawn              
/* 01644 80ADF394 27A5006C */  addiu   $a1, $sp, 0x006C           ## $a1 = FFFFFFF4
/* 01648 80ADF398 C6000024 */  lwc1    $f0, 0x0024($s0)           ## 00000024
/* 0164C 80ADF39C C7A4006C */  lwc1    $f4, 0x006C($sp)           
/* 01650 80ADF3A0 C7AA0074 */  lwc1    $f10, 0x0074($sp)          
/* 01654 80ADF3A4 46000400 */  add.s   $f16, $f0, $f0             
/* 01658 80ADF3A8 3C0680AE */  lui     $a2, %hi(D_80AE1B60)       ## $a2 = 80AE0000
/* 0165C 80ADF3AC 3C0780AE */  lui     $a3, %hi(D_80AE1B6C)       ## $a3 = 80AE0000
/* 01660 80ADF3B0 240D00FF */  addiu   $t5, $zero, 0x00FF         ## $t5 = 000000FF
/* 01664 80ADF3B4 46048201 */  sub.s   $f8, $f16, $f4             
/* 01668 80ADF3B8 240E00FF */  addiu   $t6, $zero, 0x00FF         ## $t6 = 000000FF
/* 0166C 80ADF3BC 240F00FF */  addiu   $t7, $zero, 0x00FF         ## $t7 = 000000FF
/* 01670 80ADF3C0 241800FF */  addiu   $t8, $zero, 0x00FF         ## $t8 = 000000FF
/* 01674 80ADF3C4 E7A8006C */  swc1    $f8, 0x006C($sp)           
/* 01678 80ADF3C8 C602002C */  lwc1    $f2, 0x002C($s0)           ## 0000002C
/* 0167C 80ADF3CC 241900FF */  addiu   $t9, $zero, 0x00FF         ## $t9 = 000000FF
/* 01680 80ADF3D0 24080001 */  addiu   $t0, $zero, 0x0001         ## $t0 = 00000001
/* 01684 80ADF3D4 46021480 */  add.s   $f18, $f2, $f2             
/* 01688 80ADF3D8 24090009 */  addiu   $t1, $zero, 0x0009         ## $t1 = 00000009
/* 0168C 80ADF3DC 24E71B6C */  addiu   $a3, $a3, %lo(D_80AE1B6C)  ## $a3 = 80AE1B6C
/* 01690 80ADF3E0 24C61B60 */  addiu   $a2, $a2, %lo(D_80AE1B60)  ## $a2 = 80AE1B60
/* 01694 80ADF3E4 460A9181 */  sub.s   $f6, $f18, $f10            
/* 01698 80ADF3E8 02202025 */  or      $a0, $s1, $zero            ## $a0 = 00000000
/* 0169C 80ADF3EC 27A5006C */  addiu   $a1, $sp, 0x006C           ## $a1 = FFFFFFF4
/* 016A0 80ADF3F0 E7A60074 */  swc1    $f6, 0x0074($sp)           
/* 016A4 80ADF3F4 860A0198 */  lh      $t2, 0x0198($s0)           ## 00000198
/* 016A8 80ADF3F8 AFA90038 */  sw      $t1, 0x0038($sp)           
/* 016AC 80ADF3FC AFA80034 */  sw      $t0, 0x0034($sp)           
/* 016B0 80ADF400 000A5880 */  sll     $t3, $t2,  2               
/* 016B4 80ADF404 016A5821 */  addu    $t3, $t3, $t2              
/* 016B8 80ADF408 000B5840 */  sll     $t3, $t3,  1               
/* 016BC 80ADF40C 256C0050 */  addiu   $t4, $t3, 0x0050           ## $t4 = 00000050
/* 016C0 80ADF410 240A0001 */  addiu   $t2, $zero, 0x0001         ## $t2 = 00000001
/* 016C4 80ADF414 AFAA003C */  sw      $t2, 0x003C($sp)           
/* 016C8 80ADF418 AFAC0010 */  sw      $t4, 0x0010($sp)           
/* 016CC 80ADF41C AFB90030 */  sw      $t9, 0x0030($sp)           
/* 016D0 80ADF420 AFA0002C */  sw      $zero, 0x002C($sp)         
/* 016D4 80ADF424 AFA00028 */  sw      $zero, 0x0028($sp)         
/* 016D8 80ADF428 AFB80024 */  sw      $t8, 0x0024($sp)           
/* 016DC 80ADF42C AFAF0020 */  sw      $t7, 0x0020($sp)           
/* 016E0 80ADF430 AFAE001C */  sw      $t6, 0x001C($sp)           
/* 016E4 80ADF434 AFAD0018 */  sw      $t5, 0x0018($sp)           
/* 016E8 80ADF438 0C00A9AE */  jal     EffectSsDeadDb_Spawn              
/* 016EC 80ADF43C AFA00014 */  sw      $zero, 0x0014($sp)         
/* 016F0 80ADF440 C6100024 */  lwc1    $f16, 0x0024($s0)          ## 00000024
/* 016F4 80ADF444 3C0680AE */  lui     $a2, %hi(D_80AE1B60)       ## $a2 = 80AE0000
/* 016F8 80ADF448 3C0780AE */  lui     $a3, %hi(D_80AE1B6C)       ## $a3 = 80AE0000
/* 016FC 80ADF44C E7B0006C */  swc1    $f16, 0x006C($sp)          
/* 01700 80ADF450 C604002C */  lwc1    $f4, 0x002C($s0)           ## 0000002C
/* 01704 80ADF454 240E00FF */  addiu   $t6, $zero, 0x00FF         ## $t6 = 000000FF
/* 01708 80ADF458 240F00FF */  addiu   $t7, $zero, 0x00FF         ## $t7 = 000000FF
/* 0170C 80ADF45C E7A40074 */  swc1    $f4, 0x0074($sp)           
/* 01710 80ADF460 860B0198 */  lh      $t3, 0x0198($s0)           ## 00000198
/* 01714 80ADF464 241800FF */  addiu   $t8, $zero, 0x00FF         ## $t8 = 000000FF
/* 01718 80ADF468 241900FF */  addiu   $t9, $zero, 0x00FF         ## $t9 = 000000FF
/* 0171C 80ADF46C 000B6080 */  sll     $t4, $t3,  2               
/* 01720 80ADF470 018B6021 */  addu    $t4, $t4, $t3              
/* 01724 80ADF474 000C6040 */  sll     $t4, $t4,  1               
/* 01728 80ADF478 258D0050 */  addiu   $t5, $t4, 0x0050           ## $t5 = 00000050
/* 0172C 80ADF47C 240B0001 */  addiu   $t3, $zero, 0x0001         ## $t3 = 00000001
/* 01730 80ADF480 240800FF */  addiu   $t0, $zero, 0x00FF         ## $t0 = 000000FF
/* 01734 80ADF484 24090001 */  addiu   $t1, $zero, 0x0001         ## $t1 = 00000001
/* 01738 80ADF488 240A0009 */  addiu   $t2, $zero, 0x0009         ## $t2 = 00000009
/* 0173C 80ADF48C AFAA0038 */  sw      $t2, 0x0038($sp)           
/* 01740 80ADF490 AFA90034 */  sw      $t1, 0x0034($sp)           
/* 01744 80ADF494 AFA80030 */  sw      $t0, 0x0030($sp)           
/* 01748 80ADF498 AFAB003C */  sw      $t3, 0x003C($sp)           
/* 0174C 80ADF49C AFAD0010 */  sw      $t5, 0x0010($sp)           
/* 01750 80ADF4A0 AFB90024 */  sw      $t9, 0x0024($sp)           
/* 01754 80ADF4A4 AFB80020 */  sw      $t8, 0x0020($sp)           
/* 01758 80ADF4A8 AFA0002C */  sw      $zero, 0x002C($sp)         
/* 0175C 80ADF4AC AFA00028 */  sw      $zero, 0x0028($sp)         
/* 01760 80ADF4B0 AFAF001C */  sw      $t7, 0x001C($sp)           
/* 01764 80ADF4B4 AFAE0018 */  sw      $t6, 0x0018($sp)           
/* 01768 80ADF4B8 AFA00014 */  sw      $zero, 0x0014($sp)         
/* 0176C 80ADF4BC 24E71B6C */  addiu   $a3, $a3, %lo(D_80AE1B6C)  ## $a3 = 80AE1B6C
/* 01770 80ADF4C0 24C61B60 */  addiu   $a2, $a2, %lo(D_80AE1B60)  ## $a2 = 80AE1B60
/* 01774 80ADF4C4 02202025 */  or      $a0, $s1, $zero            ## $a0 = 00000000
/* 01778 80ADF4C8 0C00A9AE */  jal     EffectSsDeadDb_Spawn              
/* 0177C 80ADF4CC 27A5006C */  addiu   $a1, $sp, 0x006C           ## $a1 = FFFFFFF4
/* 01780 80ADF4D0 86020198 */  lh      $v0, 0x0198($s0)           ## 00000198
/* 01784 80ADF4D4 24010001 */  addiu   $at, $zero, 0x0001         ## $at = 00000001
/* 01788 80ADF4D8 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 0178C 80ADF4DC 5441001C */  bnel    $v0, $at, .L80ADF550       
/* 01790 80ADF4E0 24010012 */  addiu   $at, $zero, 0x0012         ## $at = 00000012
/* 01794 80ADF4E4 0C00BE0A */  jal     Audio_PlayActorSound2
              
/* 01798 80ADF4E8 24053878 */  addiu   $a1, $zero, 0x3878         ## $a1 = 00003878
/* 0179C 80ADF4EC 10000017 */  beq     $zero, $zero, .L80ADF54C   
/* 017A0 80ADF4F0 86020198 */  lh      $v0, 0x0198($s0)           ## 00000198
.L80ADF4F4:
/* 017A4 80ADF4F4 14620006 */  bne     $v1, $v0, .L80ADF510       
/* 017A8 80ADF4F8 28410013 */  slti    $at, $v0, 0x0013           
/* 017AC 80ADF4FC 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 017B0 80ADF500 0C2B7984 */  jal     func_80ADE610              
/* 017B4 80ADF504 02202825 */  or      $a1, $s1, $zero            ## $a1 = 00000000
/* 017B8 80ADF508 10000010 */  beq     $zero, $zero, .L80ADF54C   
/* 017BC 80ADF50C 86020198 */  lh      $v0, 0x0198($s0)           ## 00000198
.L80ADF510:
/* 017C0 80ADF510 1420000E */  bne     $at, $zero, .L80ADF54C     
/* 017C4 80ADF514 00626023 */  subu    $t4, $v1, $v0              
/* 017C8 80ADF518 448C4000 */  mtc1    $t4, $f8                   ## $f8 = 0.00
/* 017CC 80ADF51C 3C0180AE */  lui     $at, %hi(D_80AE1C3C)       ## $at = 80AE0000
/* 017D0 80ADF520 C42A1C3C */  lwc1    $f10, %lo(D_80AE1C3C)($at) 
/* 017D4 80ADF524 468044A0 */  cvt.s.w $f18, $f8                  
/* 017D8 80ADF528 3C0140A0 */  lui     $at, 0x40A0                ## $at = 40A00000
/* 017DC 80ADF52C 44818000 */  mtc1    $at, $f16                  ## $f16 = 5.00
/* 017E0 80ADF530 C6060028 */  lwc1    $f6, 0x0028($s0)           ## 00000028
/* 017E4 80ADF534 460A9002 */  mul.s   $f0, $f18, $f10            
/* 017E8 80ADF538 46103100 */  add.s   $f4, $f6, $f16             
/* 017EC 80ADF53C E6040028 */  swc1    $f4, 0x0028($s0)           ## 00000028
/* 017F0 80ADF540 E6000058 */  swc1    $f0, 0x0058($s0)           ## 00000058
/* 017F4 80ADF544 E6000054 */  swc1    $f0, 0x0054($s0)           ## 00000054
/* 017F8 80ADF548 E6000050 */  swc1    $f0, 0x0050($s0)           ## 00000050
.L80ADF54C:
/* 017FC 80ADF54C 24010012 */  addiu   $at, $zero, 0x0012         ## $at = 00000012
.L80ADF550:
/* 01800 80ADF550 14410003 */  bne     $v0, $at, .L80ADF560       
/* 01804 80ADF554 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 01808 80ADF558 0C00BE0A */  jal     Audio_PlayActorSound2
              
/* 0180C 80ADF55C 24053877 */  addiu   $a1, $zero, 0x3877         ## $a1 = 00003877
.L80ADF560:
/* 01810 80ADF560 8FBF004C */  lw      $ra, 0x004C($sp)           
/* 01814 80ADF564 8FB00044 */  lw      $s0, 0x0044($sp)           
/* 01818 80ADF568 8FB10048 */  lw      $s1, 0x0048($sp)           
/* 0181C 80ADF56C 03E00008 */  jr      $ra                        
/* 01820 80ADF570 27BD0078 */  addiu   $sp, $sp, 0x0078           ## $sp = 00000000
