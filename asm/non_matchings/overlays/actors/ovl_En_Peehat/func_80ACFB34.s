glabel func_80ACFB34
/* 00694 80ACFB34 27BDFFD0 */  addiu   $sp, $sp, 0xFFD0           ## $sp = FFFFFFD0
/* 00698 80ACFB38 AFB00028 */  sw      $s0, 0x0028($sp)           
/* 0069C 80ACFB3C 00808025 */  or      $s0, $a0, $zero            ## $s0 = 00000000
/* 006A0 80ACFB40 AFBF002C */  sw      $ra, 0x002C($sp)           
/* 006A4 80ACFB44 3C040600 */  lui     $a0, 0x0600                ## $a0 = 06000000
/* 006A8 80ACFB48 0C028800 */  jal     SkelAnime_GetFrameCount
              
/* 006AC 80ACFB4C 248409C4 */  addiu   $a0, $a0, 0x09C4           ## $a0 = 060009C4
/* 006B0 80ACFB50 44822000 */  mtc1    $v0, $f4                   ## $f4 = 0.00
/* 006B4 80ACFB54 44800000 */  mtc1    $zero, $f0                 ## $f0 = 0.00
/* 006B8 80ACFB58 3C050600 */  lui     $a1, 0x0600                ## $a1 = 06000000
/* 006BC 80ACFB5C 468021A0 */  cvt.s.w $f6, $f4                   
/* 006C0 80ACFB60 240E0002 */  addiu   $t6, $zero, 0x0002         ## $t6 = 00000002
/* 006C4 80ACFB64 44060000 */  mfc1    $a2, $f0                   
/* 006C8 80ACFB68 AFAE0014 */  sw      $t6, 0x0014($sp)           
/* 006CC 80ACFB6C 24A509C4 */  addiu   $a1, $a1, 0x09C4           ## $a1 = 060009C4
/* 006D0 80ACFB70 2604014C */  addiu   $a0, $s0, 0x014C           ## $a0 = 0000014C
/* 006D4 80ACFB74 E7A60010 */  swc1    $f6, 0x0010($sp)           
/* 006D8 80ACFB78 3C074040 */  lui     $a3, 0x4040                ## $a3 = 40400000
/* 006DC 80ACFB7C 0C029468 */  jal     SkelAnime_ChangeAnimation
              
/* 006E0 80ACFB80 E7A00018 */  swc1    $f0, 0x0018($sp)           
/* 006E4 80ACFB84 92190311 */  lbu     $t9, 0x0311($s0)           ## 00000311
/* 006E8 80ACFB88 240F0258 */  addiu   $t7, $zero, 0x0258         ## $t7 = 00000258
/* 006EC 80ACFB8C 24180003 */  addiu   $t8, $zero, 0x0003         ## $t8 = 00000003
/* 006F0 80ACFB90 3C0580AD */  lui     $a1, %hi(func_80ACFBCC)    ## $a1 = 80AD0000
/* 006F4 80ACFB94 3328FFFD */  andi    $t0, $t9, 0xFFFD           ## $t0 = 00000000
/* 006F8 80ACFB98 A60F02F8 */  sh      $t7, 0x02F8($s0)           ## 000002F8
/* 006FC 80ACFB9C AE0002D4 */  sw      $zero, 0x02D4($s0)         ## 000002D4
/* 00700 80ACFBA0 A60002FA */  sh      $zero, 0x02FA($s0)         ## 000002FA
/* 00704 80ACFBA4 AE1802B0 */  sw      $t8, 0x02B0($s0)           ## 000002B0
/* 00708 80ACFBA8 A2080311 */  sb      $t0, 0x0311($s0)           ## 00000311
/* 0070C 80ACFBAC 24A5FBCC */  addiu   $a1, $a1, %lo(func_80ACFBCC) ## $a1 = 80ACFBCC
/* 00710 80ACFBB0 0C2B3D28 */  jal     func_80ACF4A0              
/* 00714 80ACFBB4 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 00718 80ACFBB8 8FBF002C */  lw      $ra, 0x002C($sp)           
/* 0071C 80ACFBBC 8FB00028 */  lw      $s0, 0x0028($sp)           
/* 00720 80ACFBC0 27BD0030 */  addiu   $sp, $sp, 0x0030           ## $sp = 00000000
/* 00724 80ACFBC4 03E00008 */  jr      $ra                        
/* 00728 80ACFBC8 00000000 */  nop


