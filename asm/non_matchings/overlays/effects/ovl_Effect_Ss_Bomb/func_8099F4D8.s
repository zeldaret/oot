.late_rodata
glabel D_8099F5C8
    .float 0.4
    .balign 4

glabel D_8099F5CC
    .float 0.2
    .balign 4

glabel D_8099F5D0
    .float 0.4
    .balign 4

glabel D_8099F5D4
    .float 0.2
    .balign 4

.text
glabel func_8099F4D8
/* 00328 8099F4D8 27BDFFE8 */  addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
/* 0032C 8099F4DC AFBF0014 */  sw      $ra, 0x0014($sp)           
/* 00330 8099F4E0 AFA40018 */  sw      $a0, 0x0018($sp)           
/* 00334 8099F4E4 AFA5001C */  sw      $a1, 0x001C($sp)           
/* 00338 8099F4E8 84C2005C */  lh      $v0, 0x005C($a2)           ## 0000005C
/* 0033C 8099F4EC 28410015 */  slti    $at, $v0, 0x0015           
/* 00340 8099F4F0 10200006 */  beq     $at, $zero, .L8099F50C     
/* 00344 8099F4F4 28410011 */  slti    $at, $v0, 0x0011           
/* 00348 8099F4F8 14200004 */  bne     $at, $zero, .L8099F50C     
/* 0034C 8099F4FC 240E0014 */  addiu   $t6, $zero, 0x0014         ## $t6 = 00000014
/* 00350 8099F500 01C27823 */  subu    $t7, $t6, $v0              
/* 00354 8099F504 10000005 */  beq     $zero, $zero, .L8099F51C   
/* 00358 8099F508 A4CF0042 */  sh      $t7, 0x0042($a2)           ## 00000042
.L8099F50C:
/* 0035C 8099F50C 84D80040 */  lh      $t8, 0x0040($a2)           ## 00000040
/* 00360 8099F510 24190003 */  addiu   $t9, $zero, 0x0003         ## $t9 = 00000003
/* 00364 8099F514 A4D90042 */  sh      $t9, 0x0042($a2)           ## 00000042
/* 00368 8099F518 A4D80040 */  sh      $t8, 0x0040($a2)           ## 00000040
.L8099F51C:
/* 0036C 8099F51C 0C03F66B */  jal     Math_Rand_ZeroOne
              ## Rand.Next() float
/* 00370 8099F520 AFA60020 */  sw      $a2, 0x0020($sp)           
/* 00374 8099F524 3C01809A */  lui     $at, %hi(D_8099F5C8)       ## $at = 809A0000
/* 00378 8099F528 C424F5C8 */  lwc1    $f4, %lo(D_8099F5C8)($at)  
/* 0037C 8099F52C 3C01809A */  lui     $at, %hi(D_8099F5CC)       ## $at = 809A0000
/* 00380 8099F530 C428F5CC */  lwc1    $f8, %lo(D_8099F5CC)($at)  
/* 00384 8099F534 46040182 */  mul.s   $f6, $f0, $f4              
/* 00388 8099F538 8FA60020 */  lw      $a2, 0x0020($sp)           
/* 0038C 8099F53C 46083281 */  sub.s   $f10, $f6, $f8             
/* 00390 8099F540 0C03F66B */  jal     Math_Rand_ZeroOne
              ## Rand.Next() float
/* 00394 8099F544 E4CA0018 */  swc1    $f10, 0x0018($a2)          ## 00000018
/* 00398 8099F548 3C01809A */  lui     $at, %hi(D_8099F5D0)       ## $at = 809A0000
/* 0039C 8099F54C C430F5D0 */  lwc1    $f16, %lo(D_8099F5D0)($at) 
/* 003A0 8099F550 3C01809A */  lui     $at, %hi(D_8099F5D4)       ## $at = 809A0000
/* 003A4 8099F554 C424F5D4 */  lwc1    $f4, %lo(D_8099F5D4)($at)  
/* 003A8 8099F558 46100482 */  mul.s   $f18, $f0, $f16            
/* 003AC 8099F55C 8FA60020 */  lw      $a2, 0x0020($sp)           
/* 003B0 8099F560 46049181 */  sub.s   $f6, $f18, $f4             
/* 003B4 8099F564 E4C60020 */  swc1    $f6, 0x0020($a2)           ## 00000020
/* 003B8 8099F568 8FBF0014 */  lw      $ra, 0x0014($sp)           
/* 003BC 8099F56C 27BD0018 */  addiu   $sp, $sp, 0x0018           ## $sp = 00000000
/* 003C0 8099F570 03E00008 */  jr      $ra                        
/* 003C4 8099F574 00000000 */  nop
/* 003C8 8099F578 00000000 */  nop
/* 003CC 8099F57C 00000000 */  nop
