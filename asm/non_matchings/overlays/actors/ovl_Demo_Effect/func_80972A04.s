.late_rodata
glabel D_80976CFC
    .float 0.9

.text
glabel func_80972A04
/* 01AB4 80972A04 27BDFFE8 */  addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
/* 01AB8 80972A08 AFBF0014 */  sw      $ra, 0x0014($sp)           
/* 01ABC 80972A0C AFA5001C */  sw      $a1, 0x001C($sp)           
/* 01AC0 80972A10 90820185 */  lbu     $v0, 0x0185($a0)           ## 00000185
/* 01AC4 80972A14 3C018097 */  lui     $at, %hi(D_80976CFC)       ## $at = 80970000
/* 01AC8 80972A18 C4840050 */  lwc1    $f4, 0x0050($a0)           ## 00000050
/* 01ACC 80972A1C 00027100 */  sll     $t6, $v0,  4               
/* 01AD0 80972A20 244FFFFF */  addiu   $t7, $v0, 0xFFFF           ## $t7 = FFFFFFFF
/* 01AD4 80972A24 A08E0184 */  sb      $t6, 0x0184($a0)           ## 00000184
/* 01AD8 80972A28 A08F0185 */  sb      $t7, 0x0185($a0)           ## 00000185
/* 01ADC 80972A2C C4266CFC */  lwc1    $f6, %lo(D_80976CFC)($at)  
/* 01AE0 80972A30 AFA40018 */  sw      $a0, 0x0018($sp)           
/* 01AE4 80972A34 46062202 */  mul.s   $f8, $f4, $f6              
/* 01AE8 80972A38 44054000 */  mfc1    $a1, $f8                   
/* 01AEC 80972A3C 0C00B58B */  jal     Actor_SetScale
              
/* 01AF0 80972A40 00000000 */  nop
/* 01AF4 80972A44 8FA40018 */  lw      $a0, 0x0018($sp)           
/* 01AF8 80972A48 90980185 */  lbu     $t8, 0x0185($a0)           ## 00000185
/* 01AFC 80972A4C 57000004 */  bnel    $t8, $zero, .L80972A60     
/* 01B00 80972A50 8FBF0014 */  lw      $ra, 0x0014($sp)           
/* 01B04 80972A54 0C00B55C */  jal     Actor_Kill
              
/* 01B08 80972A58 00000000 */  nop
/* 01B0C 80972A5C 8FBF0014 */  lw      $ra, 0x0014($sp)           
.L80972A60:
/* 01B10 80972A60 27BD0018 */  addiu   $sp, $sp, 0x0018           ## $sp = 00000000
/* 01B14 80972A64 03E00008 */  jr      $ra                        
/* 01B18 80972A68 00000000 */  nop
