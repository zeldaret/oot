glabel func_80AB3B04
/* 02D74 80AB3B04 27BDFFE8 */  addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
/* 02D78 80AB3B08 AFBF0014 */  sw      $ra, 0x0014($sp)           
/* 02D7C 80AB3B0C AFA5001C */  sw      $a1, 0x001C($sp)           
/* 02D80 80AB3B10 0C00BC65 */  jal     func_8002F194              
/* 02D84 80AB3B14 AFA40018 */  sw      $a0, 0x0018($sp)           
/* 02D88 80AB3B18 10400004 */  beq     $v0, $zero, .L80AB3B2C     
/* 02D8C 80AB3B1C 8FA60018 */  lw      $a2, 0x0018($sp)           
/* 02D90 80AB3B20 240E001E */  addiu   $t6, $zero, 0x001E         ## $t6 = 0000001E
/* 02D94 80AB3B24 10000011 */  beq     $zero, $zero, .L80AB3B6C   
/* 02D98 80AB3B28 ACCE0278 */  sw      $t6, 0x0278($a2)           ## 00000278
.L80AB3B2C:
/* 02D9C 80AB3B2C 8CCF0004 */  lw      $t7, 0x0004($a2)           ## 00000004
/* 02DA0 80AB3B30 24050023 */  addiu   $a1, $zero, 0x0023         ## $a1 = 00000023
/* 02DA4 80AB3B34 35F80009 */  ori     $t8, $t7, 0x0009           ## $t8 = 00000009
/* 02DA8 80AB3B38 ACD80004 */  sw      $t8, 0x0004($a2)           ## 00000004
/* 02DAC 80AB3B3C AFA60018 */  sw      $a2, 0x0018($sp)           
/* 02DB0 80AB3B40 0C01B0D8 */  jal     func_8006C360              
/* 02DB4 80AB3B44 8FA4001C */  lw      $a0, 0x001C($sp)           
/* 02DB8 80AB3B48 8FA60018 */  lw      $a2, 0x0018($sp)           
/* 02DBC 80AB3B4C 3059FFFF */  andi    $t9, $v0, 0xFFFF           ## $t9 = 00000000
/* 02DC0 80AB3B50 17200003 */  bne     $t9, $zero, .L80AB3B60     
/* 02DC4 80AB3B54 A4C2010E */  sh      $v0, 0x010E($a2)           ## 0000010E
/* 02DC8 80AB3B58 24086026 */  addiu   $t0, $zero, 0x6026         ## $t0 = 00006026
/* 02DCC 80AB3B5C A4C8010E */  sh      $t0, 0x010E($a2)           ## 0000010E
.L80AB3B60:
/* 02DD0 80AB3B60 00C02025 */  or      $a0, $a2, $zero            ## $a0 = 00000000
/* 02DD4 80AB3B64 0C00BCBD */  jal     func_8002F2F4              
/* 02DD8 80AB3B68 8FA5001C */  lw      $a1, 0x001C($sp)           
.L80AB3B6C:
/* 02DDC 80AB3B6C 8FBF0014 */  lw      $ra, 0x0014($sp)           
/* 02DE0 80AB3B70 27BD0018 */  addiu   $sp, $sp, 0x0018           ## $sp = 00000000
/* 02DE4 80AB3B74 03E00008 */  jr      $ra                        
/* 02DE8 80AB3B78 00000000 */  nop


