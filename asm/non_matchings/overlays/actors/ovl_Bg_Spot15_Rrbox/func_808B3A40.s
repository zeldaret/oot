glabel func_808B3A40
/* 000E0 808B3A40 27BDFFE8 */  addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
/* 000E4 808B3A44 AFA40018 */  sw      $a0, 0x0018($sp)           
/* 000E8 808B3A48 8FAE0018 */  lw      $t6, 0x0018($sp)           
/* 000EC 808B3A4C AFBF0014 */  sw      $ra, 0x0014($sp)           
/* 000F0 808B3A50 24A407C0 */  addiu   $a0, $a1, 0x07C0           ## $a0 = 000007C0
/* 000F4 808B3A54 0C00FAE1 */  jal     DynaPolyInfo_GetActor
              ## DynaPolyInfo_getActor
/* 000F8 808B3A58 8DC50180 */  lw      $a1, 0x0180($t6)           ## 00000180
/* 000FC 808B3A5C 1040000E */  beq     $v0, $zero, .L808B3A98     
/* 00100 808B3A60 8FA40018 */  lw      $a0, 0x0018($sp)           
/* 00104 808B3A64 C44C0024 */  lwc1    $f12, 0x0024($v0)          ## 00000024
/* 00108 808B3A68 C44E002C */  lwc1    $f14, 0x002C($v0)          ## 0000002C
/* 0010C 808B3A6C 8C860024 */  lw      $a2, 0x0024($a0)           ## 00000024
/* 00110 808B3A70 0C032D65 */  jal     func_800CB594              
/* 00114 808B3A74 8C87002C */  lw      $a3, 0x002C($a0)           ## 0000002C
/* 00118 808B3A78 3C01808B */  lui     $at, %hi(D_808B46F4)       ## $at = 808B0000
/* 0011C 808B3A7C C42446F4 */  lwc1    $f4, %lo(D_808B46F4)($at)  
/* 00120 808B3A80 4604003C */  c.lt.s  $f0, $f4                   
/* 00124 808B3A84 00000000 */  nop
/* 00128 808B3A88 45020004 */  bc1fl   .L808B3A9C                 
/* 0012C 808B3A8C 00001025 */  or      $v0, $zero, $zero          ## $v0 = 00000000
/* 00130 808B3A90 10000002 */  beq     $zero, $zero, .L808B3A9C   
/* 00134 808B3A94 24020001 */  addiu   $v0, $zero, 0x0001         ## $v0 = 00000001
.L808B3A98:
/* 00138 808B3A98 00001025 */  or      $v0, $zero, $zero          ## $v0 = 00000000
.L808B3A9C:
/* 0013C 808B3A9C 8FBF0014 */  lw      $ra, 0x0014($sp)           
/* 00140 808B3AA0 27BD0018 */  addiu   $sp, $sp, 0x0018           ## $sp = 00000000
/* 00144 808B3AA4 03E00008 */  jr      $ra                        
/* 00148 808B3AA8 00000000 */  nop


