.late_rodata
glabel D_80B0F218
 .word 0x38000100
glabel D_80B0F21C
    .float 0.001

.text
glabel func_80B0CCF4
/* 00F44 80B0CCF4 27BDFF80 */  addiu   $sp, $sp, 0xFF80           ## $sp = FFFFFF80
/* 00F48 80B0CCF8 AFBF001C */  sw      $ra, 0x001C($sp)           
/* 00F4C 80B0CCFC AFB00018 */  sw      $s0, 0x0018($sp)           
/* 00F50 80B0CD00 8C830078 */  lw      $v1, 0x0078($a0)           ## 00000078
/* 00F54 80B0CD04 00808025 */  or      $s0, $a0, $zero            ## $s0 = 00000000
/* 00F58 80B0CD08 00A03825 */  or      $a3, $a1, $zero            ## $a3 = 00000000
/* 00F5C 80B0CD0C 54600004 */  bnel    $v1, $zero, .L80B0CD20     
/* 00F60 80B0CD10 846E0008 */  lh      $t6, 0x0008($v1)           ## 00000008
/* 00F64 80B0CD14 1000005F */  beq     $zero, $zero, .L80B0CE94   
/* 00F68 80B0CD18 00001025 */  or      $v0, $zero, $zero          ## $v0 = 00000000
/* 00F6C 80B0CD1C 846E0008 */  lh      $t6, 0x0008($v1)           ## 00000008
.L80B0CD20:
/* 00F70 80B0CD20 3C0180B1 */  lui     $at, %hi(D_80B0F218)       ## $at = 80B10000
/* 00F74 80B0CD24 C420F218 */  lwc1    $f0, %lo(D_80B0F218)($at)  
/* 00F78 80B0CD28 448E2000 */  mtc1    $t6, $f4                   ## $f4 = 0.00
/* 00F7C 80B0CD2C 27A5006C */  addiu   $a1, $sp, 0x006C           ## $a1 = FFFFFFEC
/* 00F80 80B0CD30 00003025 */  or      $a2, $zero, $zero          ## $a2 = 00000000
/* 00F84 80B0CD34 468021A0 */  cvt.s.w $f6, $f4                   
/* 00F88 80B0CD38 46003202 */  mul.s   $f8, $f6, $f0              
/* 00F8C 80B0CD3C E7A8006C */  swc1    $f8, 0x006C($sp)           
/* 00F90 80B0CD40 846F000A */  lh      $t7, 0x000A($v1)           ## 0000000A
/* 00F94 80B0CD44 448F5000 */  mtc1    $t7, $f10                  ## $f10 = 0.00
/* 00F98 80B0CD48 00000000 */  nop
/* 00F9C 80B0CD4C 46805420 */  cvt.s.w $f16, $f10                 
/* 00FA0 80B0CD50 46008482 */  mul.s   $f18, $f16, $f0            
/* 00FA4 80B0CD54 E7B20070 */  swc1    $f18, 0x0070($sp)          
/* 00FA8 80B0CD58 8478000C */  lh      $t8, 0x000C($v1)           ## 0000000C
/* 00FAC 80B0CD5C 44982000 */  mtc1    $t8, $f4                   ## $f4 = 0.00
/* 00FB0 80B0CD60 00000000 */  nop
/* 00FB4 80B0CD64 468021A0 */  cvt.s.w $f6, $f4                   
/* 00FB8 80B0CD68 46003202 */  mul.s   $f8, $f6, $f0              
/* 00FBC 80B0CD6C E7A80074 */  swc1    $f8, 0x0074($sp)           
/* 00FC0 80B0CD70 0C0348FF */  jal     func_800D23FC              
/* 00FC4 80B0CD74 C4EC0000 */  lwc1    $f12, 0x0000($a3)          ## 00000000
/* 00FC8 80B0CD78 26040370 */  addiu   $a0, $s0, 0x0370           ## $a0 = 00000370
/* 00FCC 80B0CD7C AFA40028 */  sw      $a0, 0x0028($sp)           
/* 00FD0 80B0CD80 0C0346BD */  jal     Matrix_MultVec3f              
/* 00FD4 80B0CD84 27A5006C */  addiu   $a1, $sp, 0x006C           ## $a1 = FFFFFFEC
/* 00FD8 80B0CD88 27B9006C */  addiu   $t9, $sp, 0x006C           ## $t9 = FFFFFFEC
/* 00FDC 80B0CD8C 8FA40028 */  lw      $a0, 0x0028($sp)           
/* 00FE0 80B0CD90 8F290000 */  lw      $t1, 0x0000($t9)           ## FFFFFFEC
/* 00FE4 80B0CD94 2606037C */  addiu   $a2, $s0, 0x037C           ## $a2 = 0000037C
/* 00FE8 80B0CD98 26050364 */  addiu   $a1, $s0, 0x0364           ## $a1 = 00000364
/* 00FEC 80B0CD9C AC890000 */  sw      $t1, 0x0000($a0)           ## 00000000
/* 00FF0 80B0CDA0 8F280004 */  lw      $t0, 0x0004($t9)           ## FFFFFFF0
/* 00FF4 80B0CDA4 AC880004 */  sw      $t0, 0x0004($a0)           ## 00000004
/* 00FF8 80B0CDA8 8F290008 */  lw      $t1, 0x0008($t9)           ## FFFFFFF4
/* 00FFC 80B0CDAC AC890008 */  sw      $t1, 0x0008($a0)           ## 00000008
/* 01000 80B0CDB0 0C2C2F6C */  jal     func_80B0BDB0              
/* 01004 80B0CDB4 AFA60024 */  sw      $a2, 0x0024($sp)           
/* 01008 80B0CDB8 0C032D8A */  jal     func_800CB628              
/* 0100C 80B0CDBC 8FA40024 */  lw      $a0, 0x0024($sp)           
/* 01010 80B0CDC0 3C0180B1 */  lui     $at, %hi(D_80B0F21C)       ## $at = 80B10000
/* 01014 80B0CDC4 C42AF21C */  lwc1    $f10, %lo(D_80B0F21C)($at) 
/* 01018 80B0CDC8 46000086 */  mov.s   $f2, $f0                   
/* 0101C 80B0CDCC 3C013F80 */  lui     $at, 0x3F80                ## $at = 3F800000
/* 01020 80B0CDD0 460A003C */  c.lt.s  $f0, $f10                  
/* 01024 80B0CDD4 00000000 */  nop
/* 01028 80B0CDD8 45020004 */  bc1fl   .L80B0CDEC                 
/* 0102C 80B0CDDC 44816000 */  mtc1    $at, $f12                  ## $f12 = 1.00
/* 01030 80B0CDE0 1000002C */  beq     $zero, $zero, .L80B0CE94   
/* 01034 80B0CDE4 00001025 */  or      $v0, $zero, $zero          ## $v0 = 00000000
/* 01038 80B0CDE8 44816000 */  mtc1    $at, $f12                  ## $f12 = 1.00
.L80B0CDEC:
/* 0103C 80B0CDEC C610037C */  lwc1    $f16, 0x037C($s0)          ## 0000037C
/* 01040 80B0CDF0 C6040380 */  lwc1    $f4, 0x0380($s0)           ## 00000380
/* 01044 80B0CDF4 46026083 */  div.s   $f2, $f12, $f2             
/* 01048 80B0CDF8 C6080384 */  lwc1    $f8, 0x0384($s0)           ## 00000384
/* 0104C 80B0CDFC 44800000 */  mtc1    $zero, $f0                 ## $f0 = 0.00
/* 01050 80B0CE00 27A4002C */  addiu   $a0, $sp, 0x002C           ## $a0 = FFFFFFAC
/* 01054 80B0CE04 26050030 */  addiu   $a1, $s0, 0x0030           ## $a1 = 00000030
/* 01058 80B0CE08 00003025 */  or      $a2, $zero, $zero          ## $a2 = 00000000
/* 0105C 80B0CE0C 46028482 */  mul.s   $f18, $f16, $f2            
/* 01060 80B0CE10 C6100370 */  lwc1    $f16, 0x0370($s0)          ## 00000370
/* 01064 80B0CE14 46022182 */  mul.s   $f6, $f4, $f2              
/* 01068 80B0CE18 00000000 */  nop
/* 0106C 80B0CE1C 46024282 */  mul.s   $f10, $f8, $f2             
/* 01070 80B0CE20 E612037C */  swc1    $f18, 0x037C($s0)          ## 0000037C
/* 01074 80B0CE24 E6060380 */  swc1    $f6, 0x0380($s0)           ## 00000380
/* 01078 80B0CE28 E60A0384 */  swc1    $f10, 0x0384($s0)          ## 00000384
/* 0107C 80B0CE2C E7B0002C */  swc1    $f16, 0x002C($sp)          
/* 01080 80B0CE30 C6120374 */  lwc1    $f18, 0x0374($s0)          ## 00000374
/* 01084 80B0CE34 E7B20030 */  swc1    $f18, 0x0030($sp)          
/* 01088 80B0CE38 C6040378 */  lwc1    $f4, 0x0378($s0)           ## 00000378
/* 0108C 80B0CE3C E7A00038 */  swc1    $f0, 0x0038($sp)           
/* 01090 80B0CE40 E7A40034 */  swc1    $f4, 0x0034($sp)           
/* 01094 80B0CE44 C6060364 */  lwc1    $f6, 0x0364($s0)           ## 00000364
/* 01098 80B0CE48 E7A6003C */  swc1    $f6, 0x003C($sp)           
/* 0109C 80B0CE4C C6080368 */  lwc1    $f8, 0x0368($s0)           ## 00000368
/* 010A0 80B0CE50 E7A80040 */  swc1    $f8, 0x0040($sp)           
/* 010A4 80B0CE54 C60A036C */  lwc1    $f10, 0x036C($s0)          ## 0000036C
/* 010A8 80B0CE58 E7A00048 */  swc1    $f0, 0x0048($sp)           
/* 010AC 80B0CE5C E7AA0044 */  swc1    $f10, 0x0044($sp)          
/* 010B0 80B0CE60 C610037C */  lwc1    $f16, 0x037C($s0)          ## 0000037C
/* 010B4 80B0CE64 E7B0004C */  swc1    $f16, 0x004C($sp)          
/* 010B8 80B0CE68 C6120380 */  lwc1    $f18, 0x0380($s0)          ## 00000380
/* 010BC 80B0CE6C E7B20050 */  swc1    $f18, 0x0050($sp)          
/* 010C0 80B0CE70 C6040384 */  lwc1    $f4, 0x0384($s0)           ## 00000384
/* 010C4 80B0CE74 E7AC0068 */  swc1    $f12, 0x0068($sp)          
/* 010C8 80B0CE78 E7A00058 */  swc1    $f0, 0x0058($sp)           
/* 010CC 80B0CE7C E7A0005C */  swc1    $f0, 0x005C($sp)           
/* 010D0 80B0CE80 E7A00060 */  swc1    $f0, 0x0060($sp)           
/* 010D4 80B0CE84 E7A00064 */  swc1    $f0, 0x0064($sp)           
/* 010D8 80B0CE88 0C034833 */  jal     func_800D20CC              
/* 010DC 80B0CE8C E7A40054 */  swc1    $f4, 0x0054($sp)           
/* 010E0 80B0CE90 24020001 */  addiu   $v0, $zero, 0x0001         ## $v0 = 00000001
.L80B0CE94:
/* 010E4 80B0CE94 8FBF001C */  lw      $ra, 0x001C($sp)           
/* 010E8 80B0CE98 8FB00018 */  lw      $s0, 0x0018($sp)           
/* 010EC 80B0CE9C 27BD0080 */  addiu   $sp, $sp, 0x0080           ## $sp = 00000000
/* 010F0 80B0CEA0 03E00008 */  jr      $ra                        
/* 010F4 80B0CEA4 00000000 */  nop
