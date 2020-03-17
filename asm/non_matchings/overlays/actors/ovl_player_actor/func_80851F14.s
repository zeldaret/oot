glabel func_80851F14
/* 1FD04 80851F14 27BDFFE0 */  addiu   $sp, $sp, 0xFFE0           ## $sp = FFFFFFE0
/* 1FD08 80851F18 AFB00018 */  sw      $s0, 0x0018($sp)           
/* 1FD0C 80851F1C 00A08025 */  or      $s0, $a1, $zero            ## $s0 = 00000000
/* 1FD10 80851F20 AFBF001C */  sw      $ra, 0x001C($sp)           
/* 1FD14 80851F24 AFA40020 */  sw      $a0, 0x0020($sp)           
/* 1FD18 80851F28 AFA60028 */  sw      $a2, 0x0028($sp)           
/* 1FD1C 80851F2C AFA7002C */  sw      $a3, 0x002C($sp)           
/* 1FD20 80851F30 0C028EF0 */  jal     func_800A3BC0              
/* 1FD24 80851F34 24A501B4 */  addiu   $a1, $a1, 0x01B4           ## $a1 = 000001B4
/* 1FD28 80851F38 10400007 */  beq     $v0, $zero, .L80851F58     
/* 1FD2C 80851F3C 8FA40020 */  lw      $a0, 0x0020($sp)           
/* 1FD30 80851F40 02002825 */  or      $a1, $s0, $zero            ## $a1 = 00000000
/* 1FD34 80851F44 0C20C8A9 */  jal     func_808322A4              
/* 1FD38 80851F48 8FA60028 */  lw      $a2, 0x0028($sp)           
/* 1FD3C 80851F4C 240E0001 */  addiu   $t6, $zero, 0x0001         ## $t6 = 00000001
/* 1FD40 80851F50 10000007 */  beq     $zero, $zero, .L80851F70   
/* 1FD44 80851F54 A60E0850 */  sh      $t6, 0x0850($s0)           ## 00000850
.L80851F58:
/* 1FD48 80851F58 860F0850 */  lh      $t7, 0x0850($s0)           ## 00000850
/* 1FD4C 80851F5C 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 1FD50 80851F60 55E00004 */  bnel    $t7, $zero, .L80851F74     
/* 1FD54 80851F64 8FBF001C */  lw      $ra, 0x001C($sp)           
/* 1FD58 80851F68 0C20CA49 */  jal     func_80832924              
/* 1FD5C 80851F6C 8FA5002C */  lw      $a1, 0x002C($sp)           
.L80851F70:
/* 1FD60 80851F70 8FBF001C */  lw      $ra, 0x001C($sp)           
.L80851F74:
/* 1FD64 80851F74 8FB00018 */  lw      $s0, 0x0018($sp)           
/* 1FD68 80851F78 27BD0020 */  addiu   $sp, $sp, 0x0020           ## $sp = 00000000
/* 1FD6C 80851F7C 03E00008 */  jr      $ra                        
/* 1FD70 80851F80 00000000 */  nop


