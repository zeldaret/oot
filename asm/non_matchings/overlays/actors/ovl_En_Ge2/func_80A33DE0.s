glabel func_80A33DE0
/* 01210 80A33DE0 27BDFFE8 */  addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
/* 01214 80A33DE4 AFBF0014 */  sw      $ra, 0x0014($sp)           
/* 01218 80A33DE8 AFA5001C */  sw      $a1, 0x001C($sp)           
/* 0121C 80A33DEC 948E02F4 */  lhu     $t6, 0x02F4($a0)           ## 000002F4
/* 01220 80A33DF0 35CF0010 */  ori     $t7, $t6, 0x0010           ## $t7 = 00000010
/* 01224 80A33DF4 A48F02F4 */  sh      $t7, 0x02F4($a0)           ## 000002F4
/* 01228 80A33DF8 AFA40018 */  sw      $a0, 0x0018($sp)           
/* 0122C 80A33DFC 0C28CEFA */  jal     func_80A33BE8              
/* 01230 80A33E00 8FA5001C */  lw      $a1, 0x001C($sp)           
/* 01234 80A33E04 8FA40018 */  lw      $a0, 0x0018($sp)           
/* 01238 80A33E08 8FA5001C */  lw      $a1, 0x001C($sp)           
/* 0123C 80A33E0C 8C990308 */  lw      $t9, 0x0308($a0)           ## 00000308
/* 01240 80A33E10 0320F809 */  jalr    $ra, $t9                   
/* 01244 80A33E14 00000000 */  nop
/* 01248 80A33E18 8FA40018 */  lw      $a0, 0x0018($sp)           
/* 0124C 80A33E1C 0C28CF23 */  jal     func_80A33C8C              
/* 01250 80A33E20 8FA5001C */  lw      $a1, 0x001C($sp)           
/* 01254 80A33E24 8FBF0014 */  lw      $ra, 0x0014($sp)           
/* 01258 80A33E28 27BD0018 */  addiu   $sp, $sp, 0x0018           ## $sp = 00000000
/* 0125C 80A33E2C 03E00008 */  jr      $ra                        
/* 01260 80A33E30 00000000 */  nop


