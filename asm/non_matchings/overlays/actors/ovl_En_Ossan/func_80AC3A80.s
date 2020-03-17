glabel func_80AC3A80
/* 00DE0 80AC3A80 27BDFFE8 */  addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
/* 00DE4 80AC3A84 AFBF0014 */  sw      $ra, 0x0014($sp)           
/* 00DE8 80AC3A88 AFA40018 */  sw      $a0, 0x0018($sp)           
/* 00DEC 80AC3A8C 240E0003 */  addiu   $t6, $zero, 0x0003         ## $t6 = 00000003
/* 00DF0 80AC3A90 A4AE01FC */  sh      $t6, 0x01FC($a1)           ## 000001FC
/* 00DF4 80AC3A94 AFA5001C */  sw      $a1, 0x001C($sp)           
/* 00DF8 80AC3A98 84AF001C */  lh      $t7, 0x001C($a1)           ## 0000001C
/* 00DFC 80AC3A9C 3C1980AD */  lui     $t9, %hi(D_80AC8984)       ## $t9 = 80AD0000
/* 00E00 80AC3AA0 8FA40018 */  lw      $a0, 0x0018($sp)           
/* 00E04 80AC3AA4 000FC080 */  sll     $t8, $t7,  2               
/* 00E08 80AC3AA8 0338C821 */  addu    $t9, $t9, $t8              
/* 00E0C 80AC3AAC 8F398984 */  lw      $t9, %lo(D_80AC8984)($t9)  
/* 00E10 80AC3AB0 0320F809 */  jalr    $ra, $t9                   
/* 00E14 80AC3AB4 00000000 */  nop
/* 00E18 80AC3AB8 8FA40018 */  lw      $a0, 0x0018($sp)           
/* 00E1C 80AC3ABC 0C021BC0 */  jal     Interface_SetDoAction              
/* 00E20 80AC3AC0 24050006 */  addiu   $a1, $zero, 0x0006         ## $a1 = 00000006
/* 00E24 80AC3AC4 8FA6001C */  lw      $a2, 0x001C($sp)           
/* 00E28 80AC3AC8 ACC00288 */  sw      $zero, 0x0288($a2)         ## 00000288
/* 00E2C 80AC3ACC ACC002C0 */  sw      $zero, 0x02C0($a2)         ## 000002C0
/* 00E30 80AC3AD0 8FBF0014 */  lw      $ra, 0x0014($sp)           
/* 00E34 80AC3AD4 27BD0018 */  addiu   $sp, $sp, 0x0018           ## $sp = 00000000
/* 00E38 80AC3AD8 03E00008 */  jr      $ra                        
/* 00E3C 80AC3ADC 00000000 */  nop


