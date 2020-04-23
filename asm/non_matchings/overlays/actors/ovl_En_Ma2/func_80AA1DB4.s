glabel func_80AA1DB4
/* 00414 80AA1DB4 27BDFFE8 */  addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
/* 00418 80AA1DB8 AFBF0014 */  sw      $ra, 0x0014($sp)           
/* 0041C 80AA1DBC AFA40018 */  sw      $a0, 0x0018($sp)           
/* 00420 80AA1DC0 AFA5001C */  sw      $a1, 0x001C($sp)           
/* 00424 80AA1DC4 8C8F0154 */  lw      $t7, 0x0154($a0)           ## 00000154
/* 00428 80AA1DC8 3C0E0601 */  lui     $t6, 0x0601                ## $t6 = 06010000
/* 0042C 80AA1DCC 25CE9EE0 */  addiu   $t6, $t6, 0x9EE0           ## $t6 = 06009EE0
/* 00430 80AA1DD0 15CF0016 */  bne     $t6, $t7, .L80AA1E2C       
/* 00434 80AA1DD4 00802825 */  or      $a1, $a0, $zero            ## $a1 = 00000000
/* 00438 80AA1DD8 849801E0 */  lh      $t8, 0x01E0($a0)           ## 000001E0
/* 0043C 80AA1DDC 5700000B */  bnel    $t8, $zero, .L80AA1E0C     
/* 00440 80AA1DE0 84A8020A */  lh      $t0, 0x020A($a1)           ## 0000020A
/* 00444 80AA1DE4 8499020A */  lh      $t9, 0x020A($a0)           ## 0000020A
/* 00448 80AA1DE8 00002025 */  or      $a0, $zero, $zero          ## $a0 = 00000000
/* 0044C 80AA1DEC 53200010 */  beql    $t9, $zero, .L80AA1E30     
/* 00450 80AA1DF0 8FBF0014 */  lw      $ra, 0x0014($sp)           
/* 00454 80AA1DF4 0C03D961 */  jal     func_800F6584              
/* 00458 80AA1DF8 AFA50018 */  sw      $a1, 0x0018($sp)           
/* 0045C 80AA1DFC 8FA50018 */  lw      $a1, 0x0018($sp)           
/* 00460 80AA1E00 1000000A */  beq     $zero, $zero, .L80AA1E2C   
/* 00464 80AA1E04 A4A0020A */  sh      $zero, 0x020A($a1)         ## 0000020A
/* 00468 80AA1E08 84A8020A */  lh      $t0, 0x020A($a1)           ## 0000020A
.L80AA1E0C:
/* 0046C 80AA1E0C 24040001 */  addiu   $a0, $zero, 0x0001         ## $a0 = 00000001
/* 00470 80AA1E10 55000007 */  bnel    $t0, $zero, .L80AA1E30     
/* 00474 80AA1E14 8FBF0014 */  lw      $ra, 0x0014($sp)           
/* 00478 80AA1E18 0C03D961 */  jal     func_800F6584              
/* 0047C 80AA1E1C AFA50018 */  sw      $a1, 0x0018($sp)           
/* 00480 80AA1E20 8FA50018 */  lw      $a1, 0x0018($sp)           
/* 00484 80AA1E24 24090001 */  addiu   $t1, $zero, 0x0001         ## $t1 = 00000001
/* 00488 80AA1E28 A4A9020A */  sh      $t1, 0x020A($a1)           ## 0000020A
.L80AA1E2C:
/* 0048C 80AA1E2C 8FBF0014 */  lw      $ra, 0x0014($sp)           
.L80AA1E30:
/* 00490 80AA1E30 27BD0018 */  addiu   $sp, $sp, 0x0018           ## $sp = 00000000
/* 00494 80AA1E34 03E00008 */  jr      $ra                        
/* 00498 80AA1E38 00000000 */  nop
