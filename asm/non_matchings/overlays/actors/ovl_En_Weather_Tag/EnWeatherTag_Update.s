glabel EnWeatherTag_Update
/* 00D50 80B31D70 27BDFFB8 */  addiu   $sp, $sp, 0xFFB8           ## $sp = FFFFFFB8
/* 00D54 80B31D74 AFBF0044 */  sw      $ra, 0x0044($sp)           
/* 00D58 80B31D78 AFA5004C */  sw      $a1, 0x004C($sp)           
/* 00D5C 80B31D7C AFA40048 */  sw      $a0, 0x0048($sp)           
/* 00D60 80B31D80 8C99014C */  lw      $t9, 0x014C($a0)           ## 0000014C
/* 00D64 80B31D84 0320F809 */  jalr    $ra, $t9                   
/* 00D68 80B31D88 00000000 */  nop
/* 00D6C 80B31D8C 3C0E8016 */  lui     $t6, 0x8016                ## $t6 = 80160000
/* 00D70 80B31D90 8DCEFA90 */  lw      $t6, -0x0570($t6)          ## 8015FA90
/* 00D74 80B31D94 8FA40048 */  lw      $a0, 0x0048($sp)           
/* 00D78 80B31D98 3C013F80 */  lui     $at, 0x3F80                ## $at = 3F800000
/* 00D7C 80B31D9C 85CF12D4 */  lh      $t7, 0x12D4($t6)           ## 801612D4
/* 00D80 80B31DA0 240900FF */  addiu   $t1, $zero, 0x00FF         ## $t1 = 000000FF
/* 00D84 80B31DA4 240A00FF */  addiu   $t2, $zero, 0x00FF         ## $t2 = 000000FF
/* 00D88 80B31DA8 11E00017 */  beq     $t7, $zero, .L80B31E08     
/* 00D8C 80B31DAC 240B00FF */  addiu   $t3, $zero, 0x00FF         ## $t3 = 000000FF
/* 00D90 80B31DB0 84980032 */  lh      $t8, 0x0032($a0)           ## 00000032
/* 00D94 80B31DB4 C48C0024 */  lwc1    $f12, 0x0024($a0)          ## 00000024
/* 00D98 80B31DB8 C48E0028 */  lwc1    $f14, 0x0028($a0)          ## 00000028
/* 00D9C 80B31DBC 8C86002C */  lw      $a2, 0x002C($a0)           ## 0000002C
/* 00DA0 80B31DC0 84870030 */  lh      $a3, 0x0030($a0)           ## 00000030
/* 00DA4 80B31DC4 AFB80010 */  sw      $t8, 0x0010($sp)           
/* 00DA8 80B31DC8 84880034 */  lh      $t0, 0x0034($a0)           ## 00000034
/* 00DAC 80B31DCC 44810000 */  mtc1    $at, $f0                   ## $f0 = 1.00
/* 00DB0 80B31DD0 8FAD004C */  lw      $t5, 0x004C($sp)           
/* 00DB4 80B31DD4 240C0004 */  addiu   $t4, $zero, 0x0004         ## $t4 = 00000004
/* 00DB8 80B31DD8 AFAC0034 */  sw      $t4, 0x0034($sp)           
/* 00DBC 80B31DDC AFAB0030 */  sw      $t3, 0x0030($sp)           
/* 00DC0 80B31DE0 AFAA002C */  sw      $t2, 0x002C($sp)           
/* 00DC4 80B31DE4 AFA00028 */  sw      $zero, 0x0028($sp)         
/* 00DC8 80B31DE8 AFA90024 */  sw      $t1, 0x0024($sp)           
/* 00DCC 80B31DEC AFA80014 */  sw      $t0, 0x0014($sp)           
/* 00DD0 80B31DF0 E7A00018 */  swc1    $f0, 0x0018($sp)           
/* 00DD4 80B31DF4 E7A0001C */  swc1    $f0, 0x001C($sp)           
/* 00DD8 80B31DF8 E7A00020 */  swc1    $f0, 0x0020($sp)           
/* 00DDC 80B31DFC 8DB90000 */  lw      $t9, 0x0000($t5)           ## 00000000
/* 00DE0 80B31E00 0C018FA7 */  jal     DebugDisplay_AddObject
              
/* 00DE4 80B31E04 AFB90038 */  sw      $t9, 0x0038($sp)           
.L80B31E08:
/* 00DE8 80B31E08 8FBF0044 */  lw      $ra, 0x0044($sp)           
/* 00DEC 80B31E0C 27BD0048 */  addiu   $sp, $sp, 0x0048           ## $sp = 00000000
/* 00DF0 80B31E10 03E00008 */  jr      $ra                        
/* 00DF4 80B31E14 00000000 */  nop
/* 00DF8 80B31E18 00000000 */  nop
/* 00DFC 80B31E1C 00000000 */  nop
