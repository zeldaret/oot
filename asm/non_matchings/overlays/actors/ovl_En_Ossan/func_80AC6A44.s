glabel func_80AC6A44
/* 03DA4 80AC6A44 27BDFFE0 */  addiu   $sp, $sp, 0xFFE0           ## $sp = FFFFFFE0
/* 03DA8 80AC6A48 AFA40020 */  sw      $a0, 0x0020($sp)           
/* 03DAC 80AC6A4C 8FAE0020 */  lw      $t6, 0x0020($sp)           
/* 03DB0 80AC6A50 3C010001 */  lui     $at, 0x0001                ## $at = 00010000
/* 03DB4 80AC6A54 342117A4 */  ori     $at, $at, 0x17A4           ## $at = 000117A4
/* 03DB8 80AC6A58 AFBF0014 */  sw      $ra, 0x0014($sp)           
/* 03DBC 80AC6A5C 00A12021 */  addu    $a0, $a1, $at              
/* 03DC0 80AC6A60 81C501E8 */  lb      $a1, 0x01E8($t6)           ## 000001E8
/* 03DC4 80AC6A64 0C026062 */  jal     Object_IsLoaded
              
/* 03DC8 80AC6A68 AFA4001C */  sw      $a0, 0x001C($sp)           
/* 03DCC 80AC6A6C 10400016 */  beq     $v0, $zero, .L80AC6AC8     
/* 03DD0 80AC6A70 8FAF0020 */  lw      $t7, 0x0020($sp)           
/* 03DD4 80AC6A74 81E501E9 */  lb      $a1, 0x01E9($t7)           ## 000001E9
/* 03DD8 80AC6A78 04A20008 */  bltzl   $a1, .L80AC6A9C            
/* 03DDC 80AC6A7C 8FB80020 */  lw      $t8, 0x0020($sp)           
/* 03DE0 80AC6A80 0C026062 */  jal     Object_IsLoaded
              
/* 03DE4 80AC6A84 8FA4001C */  lw      $a0, 0x001C($sp)           
/* 03DE8 80AC6A88 54400004 */  bnel    $v0, $zero, .L80AC6A9C     
/* 03DEC 80AC6A8C 8FB80020 */  lw      $t8, 0x0020($sp)           
/* 03DF0 80AC6A90 1000000E */  beq     $zero, $zero, .L80AC6ACC   
/* 03DF4 80AC6A94 00001025 */  or      $v0, $zero, $zero          ## $v0 = 00000000
/* 03DF8 80AC6A98 8FB80020 */  lw      $t8, 0x0020($sp)           
.L80AC6A9C:
/* 03DFC 80AC6A9C 830501EA */  lb      $a1, 0x01EA($t8)           ## 000001EA
/* 03E00 80AC6AA0 04A00007 */  bltz    $a1, .L80AC6AC0            
/* 03E04 80AC6AA4 00000000 */  nop
/* 03E08 80AC6AA8 0C026062 */  jal     Object_IsLoaded
              
/* 03E0C 80AC6AAC 8FA4001C */  lw      $a0, 0x001C($sp)           
/* 03E10 80AC6AB0 14400003 */  bne     $v0, $zero, .L80AC6AC0     
/* 03E14 80AC6AB4 00000000 */  nop
/* 03E18 80AC6AB8 10000004 */  beq     $zero, $zero, .L80AC6ACC   
/* 03E1C 80AC6ABC 00001025 */  or      $v0, $zero, $zero          ## $v0 = 00000000
.L80AC6AC0:
/* 03E20 80AC6AC0 10000002 */  beq     $zero, $zero, .L80AC6ACC   
/* 03E24 80AC6AC4 24020001 */  addiu   $v0, $zero, 0x0001         ## $v0 = 00000001
.L80AC6AC8:
/* 03E28 80AC6AC8 00001025 */  or      $v0, $zero, $zero          ## $v0 = 00000000
.L80AC6ACC:
/* 03E2C 80AC6ACC 8FBF0014 */  lw      $ra, 0x0014($sp)           
/* 03E30 80AC6AD0 27BD0020 */  addiu   $sp, $sp, 0x0020           ## $sp = 00000000
/* 03E34 80AC6AD4 03E00008 */  jr      $ra                        
/* 03E38 80AC6AD8 00000000 */  nop


