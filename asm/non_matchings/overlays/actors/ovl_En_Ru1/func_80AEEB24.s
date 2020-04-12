.late_rodata
glabel D_80AF1C54
    .float -0.1
glabel D_80AF1C58
    .float 0.1

glabel D_80AF1C5C
    .float 0.7

.text
glabel func_80AEEB24
/* 03F14 80AEEB24 27BDFFE8 */  addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
/* 03F18 80AEEB28 AFBF0014 */  sw      $ra, 0x0014($sp)           
/* 03F1C 80AEEB2C 0C2BBAB2 */  jal     func_80AEEAC8              
/* 03F20 80AEEB30 AFA40018 */  sw      $a0, 0x0018($sp)           
/* 03F24 80AEEB34 1440001B */  bne     $v0, $zero, .L80AEEBA4     
/* 03F28 80AEEB38 8FA40018 */  lw      $a0, 0x0018($sp)           
/* 03F2C 80AEEB3C 8C8E0350 */  lw      $t6, 0x0350($a0)           ## 00000350
/* 03F30 80AEEB40 24010003 */  addiu   $at, $zero, 0x0003         ## $at = 00000003
/* 03F34 80AEEB44 240F001E */  addiu   $t7, $zero, 0x001E         ## $t7 = 0000001E
/* 03F38 80AEEB48 55C10017 */  bnel    $t6, $at, .L80AEEBA8       
/* 03F3C 80AEEB4C 8FBF0014 */  lw      $ra, 0x0014($sp)           
/* 03F40 80AEEB50 AC8F0264 */  sw      $t7, 0x0264($a0)           ## 00000264
/* 03F44 80AEEB54 0C2BB80B */  jal     func_80AEE02C              
/* 03F48 80AEEB58 AFA40018 */  sw      $a0, 0x0018($sp)           
/* 03F4C 80AEEB5C 3C0180AF */  lui     $at, %hi(D_80AF1C54)       ## $at = 80AF0000
/* 03F50 80AEEB60 8FA40018 */  lw      $a0, 0x0018($sp)           
/* 03F54 80AEEB64 C4241C54 */  lwc1    $f4, %lo(D_80AF1C54)($at)  
/* 03F58 80AEEB68 3C188016 */  lui     $t8, 0x8016                ## $t8 = 80160000
/* 03F5C 80AEEB6C 3C0180AF */  lui     $at, %hi(D_80AF1C58)       ## $at = 80AF0000
/* 03F60 80AEEB70 E484006C */  swc1    $f4, 0x006C($a0)           ## 0000006C
/* 03F64 80AEEB74 8F18FA90 */  lw      $t8, -0x0570($t8)          ## 8015FA90
/* 03F68 80AEEB78 C42A1C58 */  lwc1    $f10, %lo(D_80AF1C58)($at) 
/* 03F6C 80AEEB7C 3C0180AF */  lui     $at, %hi(D_80AF1C5C)       ## $at = 80AF0000
/* 03F70 80AEEB80 87191478 */  lh      $t9, 0x1478($t8)           ## 80161478
/* 03F74 80AEEB84 C4321C5C */  lwc1    $f18, %lo(D_80AF1C5C)($at) 
/* 03F78 80AEEB88 44993000 */  mtc1    $t9, $f6                   ## $f6 = 0.00
/* 03F7C 80AEEB8C 00000000 */  nop
/* 03F80 80AEEB90 46803220 */  cvt.s.w $f8, $f6                   
/* 03F84 80AEEB94 460A4402 */  mul.s   $f16, $f8, $f10            
/* 03F88 80AEEB98 46128100 */  add.s   $f4, $f16, $f18            
/* 03F8C 80AEEB9C 46002187 */  neg.s   $f6, $f4                   
/* 03F90 80AEEBA0 E4860070 */  swc1    $f6, 0x0070($a0)           ## 00000070
.L80AEEBA4:
/* 03F94 80AEEBA4 8FBF0014 */  lw      $ra, 0x0014($sp)           
.L80AEEBA8:
/* 03F98 80AEEBA8 27BD0018 */  addiu   $sp, $sp, 0x0018           ## $sp = 00000000
/* 03F9C 80AEEBAC 03E00008 */  jr      $ra                        
/* 03FA0 80AEEBB0 00000000 */  nop
