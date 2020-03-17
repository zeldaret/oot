glabel func_80B9E004
/* 00DF4 80B9E004 27BDFFE0 */  addiu   $sp, $sp, 0xFFE0           ## $sp = FFFFFFE0
/* 00DF8 80B9E008 AFBF001C */  sw      $ra, 0x001C($sp)           
/* 00DFC 80B9E00C AFB00018 */  sw      $s0, 0x0018($sp)           
/* 00E00 80B9E010 00808025 */  or      $s0, $a0, $zero            ## $s0 = 00000000
/* 00E04 80B9E014 0C2E77C7 */  jal     func_80B9DF1C              
/* 00E08 80B9E018 AFA50024 */  sw      $a1, 0x0024($sp)           
/* 00E0C 80B9E01C 14400006 */  bne     $v0, $zero, .L80B9E038     
/* 00E10 80B9E020 00000000 */  nop
/* 00E14 80B9E024 860E001C */  lh      $t6, 0x001C($s0)           ## 0000001C
/* 00E18 80B9E028 000E79C3 */  sra     $t7, $t6,  7               
/* 00E1C 80B9E02C 31F80001 */  andi    $t8, $t7, 0x0001           ## $t8 = 00000000
/* 00E20 80B9E030 5300000A */  beql    $t8, $zero, .L80B9E05C     
/* 00E24 80B9E034 8FBF001C */  lw      $ra, 0x001C($sp)           
.L80B9E038:
/* 00E28 80B9E038 0C2E781B */  jal     func_80B9E06C              
/* 00E2C 80B9E03C 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 00E30 80B9E040 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 00E34 80B9E044 0C2E7553 */  jal     func_80B9D54C              
/* 00E38 80B9E048 8FA50024 */  lw      $a1, 0x0024($sp)           
/* 00E3C 80B9E04C 8619001C */  lh      $t9, 0x001C($s0)           ## 0000001C
/* 00E40 80B9E050 3328FF7F */  andi    $t0, $t9, 0xFF7F           ## $t0 = 00000000
/* 00E44 80B9E054 A608001C */  sh      $t0, 0x001C($s0)           ## 0000001C
/* 00E48 80B9E058 8FBF001C */  lw      $ra, 0x001C($sp)           
.L80B9E05C:
/* 00E4C 80B9E05C 8FB00018 */  lw      $s0, 0x0018($sp)           
/* 00E50 80B9E060 27BD0020 */  addiu   $sp, $sp, 0x0020           ## $sp = 00000000
/* 00E54 80B9E064 03E00008 */  jr      $ra                        
/* 00E58 80B9E068 00000000 */  nop


