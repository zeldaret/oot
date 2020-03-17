glabel func_80AF3ADC
/* 0158C 80AF3ADC 27BDFFE0 */  addiu   $sp, $sp, 0xFFE0           ## $sp = FFFFFFE0
/* 01590 80AF3AE0 AFBF001C */  sw      $ra, 0x001C($sp)           
/* 01594 80AF3AE4 AFA50024 */  sw      $a1, 0x0024($sp)           
/* 01598 80AF3AE8 3C013F80 */  lui     $at, 0x3F80                ## $at = 3F800000
/* 0159C 80AF3AEC 44813000 */  mtc1    $at, $f6                   ## $f6 = 1.00
/* 015A0 80AF3AF0 C48402C4 */  lwc1    $f4, 0x02C4($a0)           ## 000002C4
/* 015A4 80AF3AF4 3C0E8016 */  lui     $t6, 0x8016                ## $t6 = 80160000
/* 015A8 80AF3AF8 3C0142C8 */  lui     $at, 0x42C8                ## $at = 42C80000
/* 015AC 80AF3AFC 46062200 */  add.s   $f8, $f4, $f6              
/* 015B0 80AF3B00 44819000 */  mtc1    $at, $f18                  ## $f18 = 100.00
/* 015B4 80AF3B04 3C050601 */  lui     $a1, 0x0601                ## $a1 = 06010000
/* 015B8 80AF3B08 24A5F8B8 */  addiu   $a1, $a1, 0xF8B8           ## $a1 = 0600F8B8
/* 015BC 80AF3B0C E48802C4 */  swc1    $f8, 0x02C4($a0)           ## 000002C4
/* 015C0 80AF3B10 8DCEFA90 */  lw      $t6, -0x0570($t6)          ## 8015FA90
/* 015C4 80AF3B14 C48602C4 */  lwc1    $f6, 0x02C4($a0)           ## 000002C4
/* 015C8 80AF3B18 00003025 */  or      $a2, $zero, $zero          ## $a2 = 00000000
/* 015CC 80AF3B1C 85CF145E */  lh      $t7, 0x145E($t6)           ## 8016145E
/* 015D0 80AF3B20 3C07C140 */  lui     $a3, 0xC140                ## $a3 = C1400000
/* 015D4 80AF3B24 448F5000 */  mtc1    $t7, $f10                  ## $f10 = 0.00
/* 015D8 80AF3B28 00000000 */  nop
/* 015DC 80AF3B2C 46805420 */  cvt.s.w $f16, $f10                 
/* 015E0 80AF3B30 46128100 */  add.s   $f4, $f16, $f18            
/* 015E4 80AF3B34 4606203C */  c.lt.s  $f4, $f6                   
/* 015E8 80AF3B38 00000000 */  nop
/* 015EC 80AF3B3C 4502000A */  bc1fl   .L80AF3B68                 
/* 015F0 80AF3B40 8FBF001C */  lw      $ra, 0x001C($sp)           
/* 015F4 80AF3B44 AFA00010 */  sw      $zero, 0x0010($sp)         
/* 015F8 80AF3B48 0C2BCA3A */  jal     func_80AF28E8              
/* 015FC 80AF3B4C AFA40020 */  sw      $a0, 0x0020($sp)           
/* 01600 80AF3B50 8FA40020 */  lw      $a0, 0x0020($sp)           
/* 01604 80AF3B54 24180013 */  addiu   $t8, $zero, 0x0013         ## $t8 = 00000013
/* 01608 80AF3B58 AC9802A8 */  sw      $t8, 0x02A8($a0)           ## 000002A8
/* 0160C 80AF3B5C 0C2BCDBB */  jal     func_80AF36EC              
/* 01610 80AF3B60 8FA50024 */  lw      $a1, 0x0024($sp)           
/* 01614 80AF3B64 8FBF001C */  lw      $ra, 0x001C($sp)           
.L80AF3B68:
/* 01618 80AF3B68 27BD0020 */  addiu   $sp, $sp, 0x0020           ## $sp = 00000000
/* 0161C 80AF3B6C 03E00008 */  jr      $ra                        
/* 01620 80AF3B70 00000000 */  nop


