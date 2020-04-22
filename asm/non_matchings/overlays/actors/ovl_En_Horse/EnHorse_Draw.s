glabel EnHorse_Draw
/* 0AA54 80A65D44 27BDFFD8 */  addiu   $sp, $sp, 0xFFD8           ## $sp = FFFFFFD8
/* 0AA58 80A65D48 AFBF0024 */  sw      $ra, 0x0024($sp)           
/* 0AA5C 80A65D4C AFB00020 */  sw      $s0, 0x0020($sp)           
/* 0AA60 80A65D50 AFA5002C */  sw      $a1, 0x002C($sp)           
/* 0AA64 80A65D54 8C8E01F0 */  lw      $t6, 0x01F0($a0)           ## 000001F0
/* 0AA68 80A65D58 00808025 */  or      $s0, $a0, $zero            ## $s0 = 00000000
/* 0AA6C 80A65D5C 31CF2000 */  andi    $t7, $t6, 0x2000           ## $t7 = 00000000
/* 0AA70 80A65D60 55E00027 */  bnel    $t7, $zero, .L80A65E00     
/* 0AA74 80A65D64 8FBF0024 */  lw      $ra, 0x0024($sp)           
/* 0AA78 80A65D68 0C024F46 */  jal     func_80093D18              
/* 0AA7C 80A65D6C 8CA40000 */  lw      $a0, 0x0000($a1)           ## 00000000
/* 0AA80 80A65D70 8E1901F0 */  lw      $t9, 0x01F0($s0)           ## 000001F0
/* 0AA84 80A65D74 3C010800 */  lui     $at, 0x0800                ## $at = 08000000
/* 0AA88 80A65D78 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 0AA8C 80A65D7C 03214025 */  or      $t0, $t9, $at              ## $t0 = 08000000
/* 0AA90 80A65D80 310A0004 */  andi    $t2, $t0, 0x0004           ## $t2 = 00000000
/* 0AA94 80A65D84 1140000D */  beq     $t2, $zero, .L80A65DBC     
/* 0AA98 80A65D88 AE0801F0 */  sw      $t0, 0x01F0($s0)           ## 000001F0
/* 0AA9C 80A65D8C 3C0B80A6 */  lui     $t3, %hi(func_80A65C00)    ## $t3 = 80A60000
/* 0AAA0 80A65D90 256B5C00 */  addiu   $t3, $t3, %lo(func_80A65C00) ## $t3 = 80A65C00
/* 0AAA4 80A65D94 3C0780A6 */  lui     $a3, %hi(func_80A65108)    ## $a3 = 80A60000
/* 0AAA8 80A65D98 24E75108 */  addiu   $a3, $a3, %lo(func_80A65108) ## $a3 = 80A65108
/* 0AAAC 80A65D9C AFAB0010 */  sw      $t3, 0x0010($sp)           
/* 0AAB0 80A65DA0 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 0AAB4 80A65DA4 8FA5002C */  lw      $a1, 0x002C($sp)           
/* 0AAB8 80A65DA8 26060160 */  addiu   $a2, $s0, 0x0160           ## $a2 = 00000160
/* 0AABC 80A65DAC 0C0298D8 */  jal     func_800A6360              
/* 0AAC0 80A65DB0 AFA00014 */  sw      $zero, 0x0014($sp)         
/* 0AAC4 80A65DB4 1000000C */  beq     $zero, $zero, .L80A65DE8   
/* 0AAC8 80A65DB8 8E020244 */  lw      $v0, 0x0244($s0)           ## 00000244
.L80A65DBC:
/* 0AACC 80A65DBC 3C0C80A6 */  lui     $t4, %hi(func_80A65C00)    ## $t4 = 80A60000
/* 0AAD0 80A65DC0 258C5C00 */  addiu   $t4, $t4, %lo(func_80A65C00) ## $t4 = 80A65C00
/* 0AAD4 80A65DC4 3C0780A6 */  lui     $a3, %hi(func_80A65108)    ## $a3 = 80A60000
/* 0AAD8 80A65DC8 240D0001 */  addiu   $t5, $zero, 0x0001         ## $t5 = 00000001
/* 0AADC 80A65DCC AFAD0014 */  sw      $t5, 0x0014($sp)           
/* 0AAE0 80A65DD0 24E75108 */  addiu   $a3, $a3, %lo(func_80A65108) ## $a3 = 80A65108
/* 0AAE4 80A65DD4 AFAC0010 */  sw      $t4, 0x0010($sp)           
/* 0AAE8 80A65DD8 8FA5002C */  lw      $a1, 0x002C($sp)           
/* 0AAEC 80A65DDC 0C0298D8 */  jal     func_800A6360              
/* 0AAF0 80A65DE0 26060160 */  addiu   $a2, $s0, 0x0160           ## $a2 = 00000160
/* 0AAF4 80A65DE4 8E020244 */  lw      $v0, 0x0244($s0)           ## 00000244
.L80A65DE8:
/* 0AAF8 80A65DE8 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 0AAFC 80A65DEC 50400004 */  beql    $v0, $zero, .L80A65E00     
/* 0AB00 80A65DF0 8FBF0024 */  lw      $ra, 0x0024($sp)           
/* 0AB04 80A65DF4 0040F809 */  jalr    $ra, $v0                   
/* 0AB08 80A65DF8 8FA5002C */  lw      $a1, 0x002C($sp)           
/* 0AB0C 80A65DFC 8FBF0024 */  lw      $ra, 0x0024($sp)           
.L80A65E00:
/* 0AB10 80A65E00 8FB00020 */  lw      $s0, 0x0020($sp)           
/* 0AB14 80A65E04 27BD0028 */  addiu   $sp, $sp, 0x0028           ## $sp = 00000000
/* 0AB18 80A65E08 03E00008 */  jr      $ra                        
/* 0AB1C 80A65E0C 00000000 */  nop
