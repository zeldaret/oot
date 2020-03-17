glabel func_80A79A2C
/* 00A7C 80A79A2C 27BDFFE8 */  addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
/* 00A80 80A79A30 AFBF0014 */  sw      $ra, 0x0014($sp)           
/* 00A84 80A79A34 848E01EE */  lh      $t6, 0x01EE($a0)           ## 000001EE
/* 00A88 80A79A38 24010003 */  addiu   $at, $zero, 0x0003         ## $at = 00000003
/* 00A8C 80A79A3C 00803025 */  or      $a2, $a0, $zero            ## $a2 = 00000000
/* 00A90 80A79A40 51C10019 */  beql    $t6, $at, .L80A79AA8       
/* 00A94 80A79A44 8FBF0014 */  lw      $ra, 0x0014($sp)           
/* 00A98 80A79A48 848201EA */  lh      $v0, 0x01EA($a0)           ## 000001EA
/* 00A9C 80A79A4C 14400003 */  bne     $v0, $zero, .L80A79A5C     
/* 00AA0 80A79A50 244FFFFF */  addiu   $t7, $v0, 0xFFFF           ## $t7 = FFFFFFFF
/* 00AA4 80A79A54 10000003 */  beq     $zero, $zero, .L80A79A64   
/* 00AA8 80A79A58 00001825 */  or      $v1, $zero, $zero          ## $v1 = 00000000
.L80A79A5C:
/* 00AAC 80A79A5C A4CF01EA */  sh      $t7, 0x01EA($a2)           ## 000001EA
/* 00AB0 80A79A60 84C301EA */  lh      $v1, 0x01EA($a2)           ## 000001EA
.L80A79A64:
/* 00AB4 80A79A64 54600010 */  bnel    $v1, $zero, .L80A79AA8     
/* 00AB8 80A79A68 8FBF0014 */  lw      $ra, 0x0014($sp)           
/* 00ABC 80A79A6C 84D801EE */  lh      $t8, 0x01EE($a2)           ## 000001EE
/* 00AC0 80A79A70 2404001E */  addiu   $a0, $zero, 0x001E         ## $a0 = 0000001E
/* 00AC4 80A79A74 2405001E */  addiu   $a1, $zero, 0x001E         ## $a1 = 0000001E
/* 00AC8 80A79A78 27190001 */  addiu   $t9, $t8, 0x0001           ## $t9 = 00000001
/* 00ACC 80A79A7C A4D901EE */  sh      $t9, 0x01EE($a2)           ## 000001EE
/* 00AD0 80A79A80 84C801EE */  lh      $t0, 0x01EE($a2)           ## 000001EE
/* 00AD4 80A79A84 29010003 */  slti    $at, $t0, 0x0003           
/* 00AD8 80A79A88 54200007 */  bnel    $at, $zero, .L80A79AA8     
/* 00ADC 80A79A8C 8FBF0014 */  lw      $ra, 0x0014($sp)           
/* 00AE0 80A79A90 0C01DF64 */  jal     Math_Rand_S16Offset
              
/* 00AE4 80A79A94 AFA60018 */  sw      $a2, 0x0018($sp)           
/* 00AE8 80A79A98 8FA60018 */  lw      $a2, 0x0018($sp)           
/* 00AEC 80A79A9C A4C201EA */  sh      $v0, 0x01EA($a2)           ## 000001EA
/* 00AF0 80A79AA0 A4C001EE */  sh      $zero, 0x01EE($a2)         ## 000001EE
/* 00AF4 80A79AA4 8FBF0014 */  lw      $ra, 0x0014($sp)           
.L80A79AA8:
/* 00AF8 80A79AA8 27BD0018 */  addiu   $sp, $sp, 0x0018           ## $sp = 00000000
/* 00AFC 80A79AAC 03E00008 */  jr      $ra                        
/* 00B00 80A79AB0 00000000 */  nop


