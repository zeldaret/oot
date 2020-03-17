glabel func_80B00EA4
/* 02BF4 80B00EA4 3C0E80B0 */  lui     $t6, %hi(D_80B01EA0)       ## $t6 = 80B00000
/* 02BF8 80B00EA8 8DCE1EA0 */  lw      $t6, %lo(D_80B01EA0)($t6)  
/* 02BFC 80B00EAC 27BDFFE8 */  addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
/* 02C00 80B00EB0 AFBF0014 */  sw      $ra, 0x0014($sp)           
/* 02C04 80B00EB4 11C00004 */  beq     $t6, $zero, .L80B00EC8     
/* 02C08 80B00EB8 3C0F80B0 */  lui     $t7, %hi(func_80B00EE0)    ## $t7 = 80B00000
/* 02C0C 80B00EBC 25EF0EE0 */  addiu   $t7, $t7, %lo(func_80B00EE0) ## $t7 = 80B00EE0
/* 02C10 80B00EC0 10000003 */  beq     $zero, $zero, .L80B00ED0   
/* 02C14 80B00EC4 AC8F0274 */  sw      $t7, 0x0274($a0)           ## 00000274
.L80B00EC8:
/* 02C18 80B00EC8 0C00BCB3 */  jal     func_8002F2CC              
/* 02C1C 80B00ECC 3C0641D0 */  lui     $a2, 0x41D0                ## $a2 = 41D00000
.L80B00ED0:
/* 02C20 80B00ED0 8FBF0014 */  lw      $ra, 0x0014($sp)           
/* 02C24 80B00ED4 27BD0018 */  addiu   $sp, $sp, 0x0018           ## $sp = 00000000
/* 02C28 80B00ED8 03E00008 */  jr      $ra                        
/* 02C2C 80B00EDC 00000000 */  nop


