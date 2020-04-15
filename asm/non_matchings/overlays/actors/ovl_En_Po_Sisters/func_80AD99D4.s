.late_rodata
glabel D_80ADD88C
 .word 0xC5BB8000

.text
glabel func_80AD99D4
/* 00A44 80AD99D4 27BDFFE0 */  addiu   $sp, $sp, 0xFFE0           ## $sp = FFFFFFE0
/* 00A48 80AD99D8 AFBF001C */  sw      $ra, 0x001C($sp)           
/* 00A4C 80AD99DC AFA50024 */  sw      $a1, 0x0024($sp)           
/* 00A50 80AD99E0 3C014228 */  lui     $at, 0x4228                ## $at = 42280000
/* 00A54 80AD99E4 44814000 */  mtc1    $at, $f8                   ## $f8 = 42.00
/* 00A58 80AD99E8 C4860028 */  lwc1    $f6, 0x0028($a0)           ## 00000028
/* 00A5C 80AD99EC 44802000 */  mtc1    $zero, $f4                 ## $f4 = 0.00
/* 00A60 80AD99F0 A480019A */  sh      $zero, 0x019A($a0)         ## 0000019A
/* 00A64 80AD99F4 46083280 */  add.s   $f10, $f6, $f8             
/* 00A68 80AD99F8 3C0180AE */  lui     $at, %hi(D_80ADD88C)       ## $at = 80AE0000
/* 00A6C 80AD99FC E4840068 */  swc1    $f4, 0x0068($a0)           ## 00000068
/* 00A70 80AD9A00 8C8E0004 */  lw      $t6, 0x0004($a0)           ## 00000004
/* 00A74 80AD9A04 E48A0028 */  swc1    $f10, 0x0028($a0)          ## 00000028
/* 00A78 80AD9A08 C430D88C */  lwc1    $f16, %lo(D_80ADD88C)($at) 
/* 00A7C 80AD9A0C 2401FFFE */  addiu   $at, $zero, 0xFFFE         ## $at = FFFFFFFE
/* 00A80 80AD9A10 3C1880AE */  lui     $t8, %hi(func_80ADAFC0)    ## $t8 = 80AE0000
/* 00A84 80AD9A14 2718AFC0 */  addiu   $t8, $t8, %lo(func_80ADAFC0) ## $t8 = 80ADAFC0
/* 00A88 80AD9A18 01C17824 */  and     $t7, $t6, $at              
/* 00A8C 80AD9A1C 00803825 */  or      $a3, $a0, $zero            ## $a3 = 00000000
/* 00A90 80AD9A20 AC8F0004 */  sw      $t7, 0x0004($a0)           ## 00000004
/* 00A94 80AD9A24 A0800199 */  sb      $zero, 0x0199($a0)         ## 00000199
/* 00A98 80AD9A28 AC980190 */  sw      $t8, 0x0190($a0)           ## 00000190
/* 00A9C 80AD9A2C E49000BC */  swc1    $f16, 0x00BC($a0)          ## 000000BC
/* 00AA0 80AD9A30 AFA00010 */  sw      $zero, 0x0010($sp)         
/* 00AA4 80AD9A34 8FA40024 */  lw      $a0, 0x0024($sp)           
/* 00AA8 80AD9A38 24050C76 */  addiu   $a1, $zero, 0x0C76         ## $a1 = 00000C76
/* 00AAC 80AD9A3C 0C02003E */  jal     func_800800F8              
/* 00AB0 80AD9A40 240603E7 */  addiu   $a2, $zero, 0x03E7         ## $a2 = 000003E7
/* 00AB4 80AD9A44 8FBF001C */  lw      $ra, 0x001C($sp)           
/* 00AB8 80AD9A48 27BD0020 */  addiu   $sp, $sp, 0x0020           ## $sp = 00000000
/* 00ABC 80AD9A4C 03E00008 */  jr      $ra                        
/* 00AC0 80AD9A50 00000000 */  nop
