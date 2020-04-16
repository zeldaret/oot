glabel func_8083AD4C
/* 08B3C 8083AD4C 27BDFFE0 */  addiu   $sp, $sp, 0xFFE0           ## $sp = FFFFFFE0
/* 08B40 8083AD50 AFBF0014 */  sw      $ra, 0x0014($sp)           
/* 08B44 8083AD54 AFA40020 */  sw      $a0, 0x0020($sp)           
/* 08B48 8083AD58 90AE06AD */  lbu     $t6, 0x06AD($a1)           ## 000006AD
/* 08B4C 8083AD5C 24010002 */  addiu   $at, $zero, 0x0002         ## $at = 00000002
/* 08B50 8083AD60 24030006 */  addiu   $v1, $zero, 0x0006         ## $v1 = 00000006
/* 08B54 8083AD64 15C1000E */  bne     $t6, $at, .L8083ADA0       
/* 08B58 8083AD68 00000000 */  nop
/* 08B5C 8083AD6C 0C00B75B */  jal     func_8002DD6C              
/* 08B60 8083AD70 00A02025 */  or      $a0, $a1, $zero            ## $a0 = 00000000
/* 08B64 8083AD74 10400008 */  beq     $v0, $zero, .L8083AD98     
/* 08B68 8083AD78 3C0F8016 */  lui     $t7, 0x8016                ## $t7 = 80160000
/* 08B6C 8083AD7C 8DEFE664 */  lw      $t7, -0x199C($t7)          ## 8015E664
/* 08B70 8083AD80 15E00003 */  bne     $t7, $zero, .L8083AD90     
/* 08B74 8083AD84 00000000 */  nop
/* 08B78 8083AD88 10000005 */  beq     $zero, $zero, .L8083ADA0   
/* 08B7C 8083AD8C 24030007 */  addiu   $v1, $zero, 0x0007         ## $v1 = 00000007
.L8083AD90:
/* 08B80 8083AD90 10000003 */  beq     $zero, $zero, .L8083ADA0   
/* 08B84 8083AD94 2403000B */  addiu   $v1, $zero, 0x000B         ## $v1 = 0000000B
.L8083AD98:
/* 08B88 8083AD98 10000001 */  beq     $zero, $zero, .L8083ADA0   
/* 08B8C 8083AD9C 2403000A */  addiu   $v1, $zero, 0x000A         ## $v1 = 0000000A
.L8083ADA0:
/* 08B90 8083ADA0 8FA40020 */  lw      $a0, 0x0020($sp)           
/* 08B94 8083ADA4 00002825 */  or      $a1, $zero, $zero          ## $a1 = 00000000
/* 08B98 8083ADA8 0C030129 */  jal     Gameplay_GetCamera              
/* 08B9C 8083ADAC AFA3001C */  sw      $v1, 0x001C($sp)           
/* 08BA0 8083ADB0 8FA3001C */  lw      $v1, 0x001C($sp)           
/* 08BA4 8083ADB4 00402025 */  or      $a0, $v0, $zero            ## $a0 = 00000000
/* 08BA8 8083ADB8 00032C00 */  sll     $a1, $v1, 16               
/* 08BAC 8083ADBC 0C016911 */  jal     func_8005A444              
/* 08BB0 8083ADC0 00052C03 */  sra     $a1, $a1, 16               
/* 08BB4 8083ADC4 8FBF0014 */  lw      $ra, 0x0014($sp)           
/* 08BB8 8083ADC8 27BD0020 */  addiu   $sp, $sp, 0x0020           ## $sp = 00000000
/* 08BBC 8083ADCC 03E00008 */  jr      $ra                        
/* 08BC0 8083ADD0 00000000 */  nop
