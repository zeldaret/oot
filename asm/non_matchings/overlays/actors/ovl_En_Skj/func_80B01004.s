glabel func_80B01004
/* 02D54 80B01004 3C0E80B0 */  lui     $t6, %hi(D_80B01EA0)       ## $t6 = 80B00000
/* 02D58 80B01008 8DCE1EA0 */  lw      $t6, %lo(D_80B01EA0)($t6)  
/* 02D5C 80B0100C 27BDFFE8 */  addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
/* 02D60 80B01010 AFBF0014 */  sw      $ra, 0x0014($sp)           
/* 02D64 80B01014 11C00004 */  beq     $t6, $zero, .L80B01028     
/* 02D68 80B01018 3C0F80B0 */  lui     $t7, %hi(func_80B01040)    ## $t7 = 80B00000
/* 02D6C 80B0101C 25EF1040 */  addiu   $t7, $t7, %lo(func_80B01040) ## $t7 = 80B01040
/* 02D70 80B01020 10000003 */  beq     $zero, $zero, .L80B01030   
/* 02D74 80B01024 AC8F0274 */  sw      $t7, 0x0274($a0)           ## 00000274
.L80B01028:
/* 02D78 80B01028 0C00BCB3 */  jal     func_8002F2CC              
/* 02D7C 80B0102C 3C0641D0 */  lui     $a2, 0x41D0                ## $a2 = 41D00000
.L80B01030:
/* 02D80 80B01030 8FBF0014 */  lw      $ra, 0x0014($sp)           
/* 02D84 80B01034 27BD0018 */  addiu   $sp, $sp, 0x0018           ## $sp = 00000000
/* 02D88 80B01038 03E00008 */  jr      $ra                        
/* 02D8C 80B0103C 00000000 */  nop
