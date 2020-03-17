glabel func_80B9E118
/* 00F08 80B9E118 27BDFFE0 */  addiu   $sp, $sp, 0xFFE0           ## $sp = FFFFFFE0
/* 00F0C 80B9E11C AFBF001C */  sw      $ra, 0x001C($sp)           
/* 00F10 80B9E120 AFB00018 */  sw      $s0, 0x0018($sp)           
/* 00F14 80B9E124 AFA50024 */  sw      $a1, 0x0024($sp)           
/* 00F18 80B9E128 8483001C */  lh      $v1, 0x001C($a0)           ## 0000001C
/* 00F1C 80B9E12C 00808025 */  or      $s0, $a0, $zero            ## $s0 = 00000000
/* 00F20 80B9E130 8FA40024 */  lw      $a0, 0x0024($sp)           
/* 00F24 80B9E134 00031103 */  sra     $v0, $v1,  4               
/* 00F28 80B9E138 30420007 */  andi    $v0, $v0, 0x0007           ## $v0 = 00000000
/* 00F2C 80B9E13C 10400006 */  beq     $v0, $zero, .L80B9E158     
/* 00F30 80B9E140 00032A03 */  sra     $a1, $v1,  8               
/* 00F34 80B9E144 24010001 */  addiu   $at, $zero, 0x0001         ## $at = 00000001
/* 00F38 80B9E148 1041000D */  beq     $v0, $at, .L80B9E180       
/* 00F3C 80B9E14C 00000000 */  nop
/* 00F40 80B9E150 1000001D */  beq     $zero, $zero, .L80B9E1C8   
/* 00F44 80B9E154 8FBF001C */  lw      $ra, 0x001C($sp)           
.L80B9E158:
/* 00F48 80B9E158 0C00B2D0 */  jal     Flags_GetSwitch
              
/* 00F4C 80B9E15C 30A5003F */  andi    $a1, $a1, 0x003F           ## $a1 = 00000000
/* 00F50 80B9E160 54400019 */  bnel    $v0, $zero, .L80B9E1C8     
/* 00F54 80B9E164 8FBF001C */  lw      $ra, 0x001C($sp)           
/* 00F58 80B9E168 0C2E7876 */  jal     func_80B9E1D8              
/* 00F5C 80B9E16C 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 00F60 80B9E170 860E001C */  lh      $t6, 0x001C($s0)           ## 0000001C
/* 00F64 80B9E174 31CFFF7F */  andi    $t7, $t6, 0xFF7F           ## $t7 = 00000000
/* 00F68 80B9E178 10000012 */  beq     $zero, $zero, .L80B9E1C4   
/* 00F6C 80B9E17C A60F001C */  sh      $t7, 0x001C($s0)           ## 0000001C
.L80B9E180:
/* 00F70 80B9E180 0C2E77C7 */  jal     func_80B9DF1C              
/* 00F74 80B9E184 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 00F78 80B9E188 14400006 */  bne     $v0, $zero, .L80B9E1A4     
/* 00F7C 80B9E18C 00000000 */  nop
/* 00F80 80B9E190 8618001C */  lh      $t8, 0x001C($s0)           ## 0000001C
/* 00F84 80B9E194 0018C9C3 */  sra     $t9, $t8,  7               
/* 00F88 80B9E198 33280001 */  andi    $t0, $t9, 0x0001           ## $t0 = 00000000
/* 00F8C 80B9E19C 5100000A */  beql    $t0, $zero, .L80B9E1C8     
/* 00F90 80B9E1A0 8FBF001C */  lw      $ra, 0x001C($sp)           
.L80B9E1A4:
/* 00F94 80B9E1A4 0C2E7876 */  jal     func_80B9E1D8              
/* 00F98 80B9E1A8 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 00F9C 80B9E1AC 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 00FA0 80B9E1B0 0C2E757E */  jal     func_80B9D5F8              
/* 00FA4 80B9E1B4 8FA50024 */  lw      $a1, 0x0024($sp)           
/* 00FA8 80B9E1B8 8609001C */  lh      $t1, 0x001C($s0)           ## 0000001C
/* 00FAC 80B9E1BC 312AFF7F */  andi    $t2, $t1, 0xFF7F           ## $t2 = 00000000
/* 00FB0 80B9E1C0 A60A001C */  sh      $t2, 0x001C($s0)           ## 0000001C
.L80B9E1C4:
/* 00FB4 80B9E1C4 8FBF001C */  lw      $ra, 0x001C($sp)           
.L80B9E1C8:
/* 00FB8 80B9E1C8 8FB00018 */  lw      $s0, 0x0018($sp)           
/* 00FBC 80B9E1CC 27BD0020 */  addiu   $sp, $sp, 0x0020           ## $sp = 00000000
/* 00FC0 80B9E1D0 03E00008 */  jr      $ra                        
/* 00FC4 80B9E1D4 00000000 */  nop


