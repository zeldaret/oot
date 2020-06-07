glabel func_80B40248
/* 04068 80B40248 27BDFFD0 */  addiu   $sp, $sp, 0xFFD0           ## $sp = FFFFFFD0
/* 0406C 80B4024C AFA60038 */  sw      $a2, 0x0038($sp)           
/* 04070 80B40250 2401000F */  addiu   $at, $zero, 0x000F         ## $at = 0000000F
/* 04074 80B40254 00803025 */  or      $a2, $a0, $zero            ## $a2 = 00000000
/* 04078 80B40258 AFBF0014 */  sw      $ra, 0x0014($sp)           
/* 0407C 80B4025C AFA40030 */  sw      $a0, 0x0030($sp)           
/* 04080 80B40260 14A10014 */  bne     $a1, $at, .L80B402B4       
/* 04084 80B40264 AFA7003C */  sw      $a3, 0x003C($sp)           
/* 04088 80B40268 3C0F80B4 */  lui     $t7, %hi(D_80B41DBC)       ## $t7 = 80B40000
/* 0408C 80B4026C 25EF1DBC */  addiu   $t7, $t7, %lo(D_80B41DBC)  ## $t7 = 80B41DBC
/* 04090 80B40270 8DF90000 */  lw      $t9, 0x0000($t7)           ## 80B41DBC
/* 04094 80B40274 27AE0018 */  addiu   $t6, $sp, 0x0018           ## $t6 = FFFFFFE8
/* 04098 80B40278 8DF80004 */  lw      $t8, 0x0004($t7)           ## 80B41DC0
/* 0409C 80B4027C ADD90000 */  sw      $t9, 0x0000($t6)           ## FFFFFFE8
/* 040A0 80B40280 8DF90008 */  lw      $t9, 0x0008($t7)           ## 80B41DC4
/* 040A4 80B40284 ADD80004 */  sw      $t8, 0x0004($t6)           ## FFFFFFEC
/* 040A8 80B40288 00C02825 */  or      $a1, $a2, $zero            ## $a1 = 00000000
/* 040AC 80B4028C ADD90008 */  sw      $t9, 0x0008($t6)           ## FFFFFFF0
/* 040B0 80B40290 0C2CFE93 */  jal     func_80B3FA4C              
/* 040B4 80B40294 8FA40040 */  lw      $a0, 0x0040($sp)           
/* 040B8 80B40298 8FA50040 */  lw      $a1, 0x0040($sp)           
/* 040BC 80B4029C 27A40018 */  addiu   $a0, $sp, 0x0018           ## $a0 = FFFFFFE8
/* 040C0 80B402A0 0C0346BD */  jal     Matrix_MultVec3f              
/* 040C4 80B402A4 24A502B0 */  addiu   $a1, $a1, 0x02B0           ## $a1 = 000002B0
/* 040C8 80B402A8 8FA90040 */  lw      $t1, 0x0040($sp)           
/* 040CC 80B402AC 24080001 */  addiu   $t0, $zero, 0x0001         ## $t0 = 00000001
/* 040D0 80B402B0 AD2802BC */  sw      $t0, 0x02BC($t1)           ## 000002BC
.L80B402B4:
/* 040D4 80B402B4 8FBF0014 */  lw      $ra, 0x0014($sp)           
/* 040D8 80B402B8 27BD0030 */  addiu   $sp, $sp, 0x0030           ## $sp = 00000000
/* 040DC 80B402BC 03E00008 */  jr      $ra                        
/* 040E0 80B402C0 00000000 */  nop
