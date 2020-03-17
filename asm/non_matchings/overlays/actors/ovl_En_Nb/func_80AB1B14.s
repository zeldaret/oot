glabel func_80AB1B14
/* 00D84 80AB1B14 27BDFFE8 */  addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
/* 00D88 80AB1B18 AFBF0014 */  sw      $ra, 0x0014($sp)           
/* 00D8C 80AB1B1C AFA40018 */  sw      $a0, 0x0018($sp)           
/* 00D90 80AB1B20 24060004 */  addiu   $a2, $zero, 0x0004         ## $a2 = 00000004
/* 00D94 80AB1B24 0C2AC4E4 */  jal     func_80AB1390              
/* 00D98 80AB1B28 24070001 */  addiu   $a3, $zero, 0x0001         ## $a3 = 00000001
/* 00D9C 80AB1B2C 1040000A */  beq     $v0, $zero, .L80AB1B58     
/* 00DA0 80AB1B30 8FA40018 */  lw      $a0, 0x0018($sp)           
/* 00DA4 80AB1B34 44802000 */  mtc1    $zero, $f4                 ## $f4 = 0.00
/* 00DA8 80AB1B38 240E0008 */  addiu   $t6, $zero, 0x0008         ## $t6 = 00000008
/* 00DAC 80AB1B3C 240F0002 */  addiu   $t7, $zero, 0x0002         ## $t7 = 00000002
/* 00DB0 80AB1B40 AC8E0278 */  sw      $t6, 0x0278($a0)           ## 00000278
/* 00DB4 80AB1B44 AC8F027C */  sw      $t7, 0x027C($a0)           ## 0000027C
/* 00DB8 80AB1B48 AC800284 */  sw      $zero, 0x0284($a0)         ## 00000284
/* 00DBC 80AB1B4C A08000C8 */  sb      $zero, 0x00C8($a0)         ## 000000C8
/* 00DC0 80AB1B50 0C2AC69D */  jal     func_80AB1A74              
/* 00DC4 80AB1B54 E4840280 */  swc1    $f4, 0x0280($a0)           ## 00000280
.L80AB1B58:
/* 00DC8 80AB1B58 8FBF0014 */  lw      $ra, 0x0014($sp)           
/* 00DCC 80AB1B5C 27BD0018 */  addiu   $sp, $sp, 0x0018           ## $sp = 00000000
/* 00DD0 80AB1B60 03E00008 */  jr      $ra                        
/* 00DD4 80AB1B64 00000000 */  nop


