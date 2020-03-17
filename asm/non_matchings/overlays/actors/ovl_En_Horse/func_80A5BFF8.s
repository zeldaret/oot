glabel func_80A5BFF8
/* 00D08 80A5BFF8 27BDFFE0 */  addiu   $sp, $sp, 0xFFE0           ## $sp = FFFFFFE0
/* 00D0C 80A5BFFC AFBF0014 */  sw      $ra, 0x0014($sp)           
/* 00D10 80A5C000 8CA61C44 */  lw      $a2, 0x1C44($a1)           ## 00001C44
/* 00D14 80A5C004 00803825 */  or      $a3, $a0, $zero            ## $a3 = 00000000
/* 00D18 80A5C008 8CCE067C */  lw      $t6, 0x067C($a2)           ## 0000067C
/* 00D1C 80A5C00C 00C02025 */  or      $a0, $a2, $zero            ## $a0 = 00000000
/* 00D20 80A5C010 31CF0001 */  andi    $t7, $t6, 0x0001           ## $t7 = 00000000
/* 00D24 80A5C014 15E00021 */  bne     $t7, $zero, .L80A5C09C     
/* 00D28 80A5C018 00000000 */  nop
/* 00D2C 80A5C01C AFA6001C */  sw      $a2, 0x001C($sp)           
/* 00D30 80A5C020 AFA50024 */  sw      $a1, 0x0024($sp)           
/* 00D34 80A5C024 0C00B75E */  jal     func_8002DD78              
/* 00D38 80A5C028 AFA70020 */  sw      $a3, 0x0020($sp)           
/* 00D3C 80A5C02C 24010001 */  addiu   $at, $zero, 0x0001         ## $at = 00000001
/* 00D40 80A5C030 8FA3001C */  lw      $v1, 0x001C($sp)           
/* 00D44 80A5C034 8FA50024 */  lw      $a1, 0x0024($sp)           
/* 00D48 80A5C038 10410018 */  beq     $v0, $at, .L80A5C09C       
/* 00D4C 80A5C03C 8FA70020 */  lw      $a3, 0x0020($sp)           
/* 00D50 80A5C040 8C78067C */  lw      $t8, 0x067C($v1)           ## 0000067C
/* 00D54 80A5C044 0018CAC0 */  sll     $t9, $t8, 11               
/* 00D58 80A5C048 07200014 */  bltz    $t9, .L80A5C09C            
/* 00D5C 80A5C04C 00000000 */  nop
/* 00D60 80A5C050 8CE801F0 */  lw      $t0, 0x01F0($a3)           ## 000001F0
/* 00D64 80A5C054 00084B00 */  sll     $t1, $t0, 12               
/* 00D68 80A5C058 05230005 */  bgezl   $t1, .L80A5C070            
/* 00D6C 80A5C05C 8CEB014C */  lw      $t3, 0x014C($a3)           ## 0000014C
/* 00D70 80A5C060 8CEA0388 */  lw      $t2, 0x0388($a3)           ## 00000388
/* 00D74 80A5C064 1140000D */  beq     $t2, $zero, .L80A5C09C     
/* 00D78 80A5C068 00000000 */  nop
/* 00D7C 80A5C06C 8CEB014C */  lw      $t3, 0x014C($a3)           ## 0000014C
.L80A5C070:
/* 00D80 80A5C070 24010012 */  addiu   $at, $zero, 0x0012         ## $at = 00000012
/* 00D84 80A5C074 11610009 */  beq     $t3, $at, .L80A5C09C       
/* 00D88 80A5C078 00000000 */  nop
/* 00D8C 80A5C07C 8C6C0004 */  lw      $t4, 0x0004($v1)           ## 00000004
/* 00D90 80A5C080 318D0100 */  andi    $t5, $t4, 0x0100           ## $t5 = 00000000
/* 00D94 80A5C084 15A00005 */  bne     $t5, $zero, .L80A5C09C     
/* 00D98 80A5C088 00000000 */  nop
/* 00D9C 80A5C08C 90AE1D6C */  lbu     $t6, 0x1D6C($a1)           ## 00001D6C
/* 00DA0 80A5C090 24020001 */  addiu   $v0, $zero, 0x0001         ## $v0 = 00000001
/* 00DA4 80A5C094 11C00003 */  beq     $t6, $zero, .L80A5C0A4     
/* 00DA8 80A5C098 00000000 */  nop
.L80A5C09C:
/* 00DAC 80A5C09C 10000001 */  beq     $zero, $zero, .L80A5C0A4   
/* 00DB0 80A5C0A0 00001025 */  or      $v0, $zero, $zero          ## $v0 = 00000000
.L80A5C0A4:
/* 00DB4 80A5C0A4 8FBF0014 */  lw      $ra, 0x0014($sp)           
/* 00DB8 80A5C0A8 27BD0020 */  addiu   $sp, $sp, 0x0020           ## $sp = 00000000
/* 00DBC 80A5C0AC 03E00008 */  jr      $ra                        
/* 00DC0 80A5C0B0 00000000 */  nop


