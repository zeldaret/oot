glabel func_80A46114
/* 033E4 80A46114 27BDFFE8 */  addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
/* 033E8 80A46118 AFBF0014 */  sw      $ra, 0x0014($sp)           
/* 033EC 80A4611C 848E0194 */  lh      $t6, 0x0194($a0)           ## 00000194
/* 033F0 80A46120 3C013F80 */  lui     $at, 0x3F80                ## $at = 3F800000
/* 033F4 80A46124 11C0000A */  beq     $t6, $zero, .L80A46150     
/* 033F8 80A46128 00000000 */  nop
/* 033FC 80A4612C C4840068 */  lwc1    $f4, 0x0068($a0)           ## 00000068
/* 03400 80A46130 44813000 */  mtc1    $at, $f6                   ## $f6 = 1.00
/* 03404 80A46134 3C0640D5 */  lui     $a2, 0x40D5                ## $a2 = 40D50000
/* 03408 80A46138 34C65555 */  ori     $a2, $a2, 0x5555           ## $a2 = 40D55555
/* 0340C 80A4613C 4606203C */  c.lt.s  $f4, $f6                   
/* 03410 80A46140 24050002 */  addiu   $a1, $zero, 0x0002         ## $a1 = 00000002
/* 03414 80A46144 00003825 */  or      $a3, $zero, $zero          ## $a3 = 00000000
/* 03418 80A46148 45000003 */  bc1f    .L80A46158                 
/* 0341C 80A4614C 00000000 */  nop
.L80A46150:
/* 03420 80A46150 10000011 */  beq     $zero, $zero, .L80A46198   
/* 03424 80A46154 00001025 */  or      $v0, $zero, $zero          ## $v0 = 00000000
.L80A46158:
/* 03428 80A46158 0C2913BC */  jal     func_80A44EF0              
/* 0342C 80A4615C AFA40018 */  sw      $a0, 0x0018($sp)           
/* 03430 80A46160 1040000C */  beq     $v0, $zero, .L80A46194     
/* 03434 80A46164 8FA40018 */  lw      $a0, 0x0018($sp)           
/* 03438 80A46168 848F0590 */  lh      $t7, 0x0590($a0)           ## 00000590
/* 0343C 80A4616C 29E10009 */  slti    $at, $t7, 0x0009           
/* 03440 80A46170 14200006 */  bne     $at, $zero, .L80A4618C     
/* 03444 80A46174 00000000 */  nop
/* 03448 80A46178 8498059C */  lh      $t8, 0x059C($a0)           ## 0000059C
/* 0344C 80A4617C 24190008 */  addiu   $t9, $zero, 0x0008         ## $t9 = 00000008
/* 03450 80A46180 17000002 */  bne     $t8, $zero, .L80A4618C     
/* 03454 80A46184 00000000 */  nop
/* 03458 80A46188 A4990590 */  sh      $t9, 0x0590($a0)           ## 00000590
.L80A4618C:
/* 0345C 80A4618C 0C2916C5 */  jal     func_80A45B14              
/* 03460 80A46190 00002825 */  or      $a1, $zero, $zero          ## $a1 = 00000000
.L80A46194:
/* 03464 80A46194 24020001 */  addiu   $v0, $zero, 0x0001         ## $v0 = 00000001
.L80A46198:
/* 03468 80A46198 8FBF0014 */  lw      $ra, 0x0014($sp)           
/* 0346C 80A4619C 27BD0018 */  addiu   $sp, $sp, 0x0018           ## $sp = 00000000
/* 03470 80A461A0 03E00008 */  jr      $ra                        
/* 03474 80A461A4 00000000 */  nop
