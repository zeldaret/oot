glabel func_80ACBEA0
/* 01F80 80ACBEA0 27BDFFE0 */  addiu   $sp, $sp, 0xFFE0           ## $sp = FFFFFFE0
/* 01F84 80ACBEA4 AFBF001C */  sw      $ra, 0x001C($sp)           
/* 01F88 80ACBEA8 AFA50024 */  sw      $a1, 0x0024($sp)           
/* 01F8C 80ACBEAC 948203FC */  lhu     $v0, 0x03FC($a0)           ## 000003FC
/* 01F90 80ACBEB0 3C0580AD */  lui     $a1, %hi(func_80ACBD4C)    ## $a1 = 80AD0000
/* 01F94 80ACBEB4 240F0003 */  addiu   $t7, $zero, 0x0003         ## $t7 = 00000003
/* 01F98 80ACBEB8 304E0001 */  andi    $t6, $v0, 0x0001           ## $t6 = 00000000
/* 01F9C 80ACBEBC 11C0001E */  beq     $t6, $zero, .L80ACBF38     
/* 01FA0 80ACBEC0 24A5BD4C */  addiu   $a1, $a1, %lo(func_80ACBD4C) ## $a1 = 80ACBD4C
/* 01FA4 80ACBEC4 44802000 */  mtc1    $zero, $f4                 ## $f4 = 0.00
/* 01FA8 80ACBEC8 A48F03FE */  sh      $t7, 0x03FE($a0)           ## 000003FE
/* 01FAC 80ACBECC 3C180600 */  lui     $t8, 0x0600                ## $t8 = 06000000
/* 01FB0 80ACBED0 27181168 */  addiu   $t8, $t8, 0x1168           ## $t8 = 06001168
/* 01FB4 80ACBED4 3C0680AD */  lui     $a2, %hi(func_80ACC540)    ## $a2 = 80AD0000
/* 01FB8 80ACBED8 24C6C540 */  addiu   $a2, $a2, %lo(func_80ACC540) ## $a2 = 80ACC540
/* 01FBC 80ACBEDC AFB80010 */  sw      $t8, 0x0010($sp)           
/* 01FC0 80ACBEE0 AFA40020 */  sw      $a0, 0x0020($sp)           
/* 01FC4 80ACBEE4 24870198 */  addiu   $a3, $a0, 0x0198           ## $a3 = 00000198
/* 01FC8 80ACBEE8 0C2B342E */  jal     func_80ACD0B8              
/* 01FCC 80ACBEEC E7A40014 */  swc1    $f4, 0x0014($sp)           
/* 01FD0 80ACBEF0 8FA40020 */  lw      $a0, 0x0020($sp)           
/* 01FD4 80ACBEF4 3C014000 */  lui     $at, 0x4000                ## $at = 40000000
/* 01FD8 80ACBEF8 44814000 */  mtc1    $at, $f8                   ## $f8 = 2.00
/* 01FDC 80ACBEFC 949903FC */  lhu     $t9, 0x03FC($a0)           ## 000003FC
/* 01FE0 80ACBF00 C4860028 */  lwc1    $f6, 0x0028($a0)           ## 00000028
/* 01FE4 80ACBF04 E4880060 */  swc1    $f8, 0x0060($a0)           ## 00000060
/* 01FE8 80ACBF08 33280040 */  andi    $t0, $t9, 0x0040           ## $t0 = 00000000
/* 01FEC 80ACBF0C 11000006 */  beq     $t0, $zero, .L80ACBF28     
/* 01FF0 80ACBF10 E48603F8 */  swc1    $f6, 0x03F8($a0)           ## 000003F8
/* 01FF4 80ACBF14 84890032 */  lh      $t1, 0x0032($a0)           ## 00000032
/* 01FF8 80ACBF18 948203FC */  lhu     $v0, 0x03FC($a0)           ## 000003FC
/* 01FFC 80ACBF1C 252A4000 */  addiu   $t2, $t1, 0x4000           ## $t2 = 00004000
/* 02000 80ACBF20 10000005 */  beq     $zero, $zero, .L80ACBF38   
/* 02004 80ACBF24 A48A0400 */  sh      $t2, 0x0400($a0)           ## 00000400
.L80ACBF28:
/* 02008 80ACBF28 848B0032 */  lh      $t3, 0x0032($a0)           ## 00000032
/* 0200C 80ACBF2C 948203FC */  lhu     $v0, 0x03FC($a0)           ## 000003FC
/* 02010 80ACBF30 256CC000 */  addiu   $t4, $t3, 0xC000           ## $t4 = FFFFC000
/* 02014 80ACBF34 A48C0400 */  sh      $t4, 0x0400($a0)           ## 00000400
.L80ACBF38:
/* 02018 80ACBF38 344D0008 */  ori     $t5, $v0, 0x0008           ## $t5 = 00000008
/* 0201C 80ACBF3C A48D03FC */  sh      $t5, 0x03FC($a0)           ## 000003FC
/* 02020 80ACBF40 8FBF001C */  lw      $ra, 0x001C($sp)           
/* 02024 80ACBF44 27BD0020 */  addiu   $sp, $sp, 0x0020           ## $sp = 00000000
/* 02028 80ACBF48 03E00008 */  jr      $ra                        
/* 0202C 80ACBF4C 00000000 */  nop
