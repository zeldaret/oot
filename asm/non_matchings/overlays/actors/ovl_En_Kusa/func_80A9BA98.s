glabel func_80A9BA98
/* 00AF8 80A9BA98 27BDFFE8 */  addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
/* 00AFC 80A9BA9C AFBF0014 */  sw      $ra, 0x0014($sp)           
/* 00B00 80A9BAA0 3C0580AA */  lui     $a1, %hi(func_80A9BAD8)    ## $a1 = 80AA0000
/* 00B04 80A9BAA4 24A5BAD8 */  addiu   $a1, $a1, %lo(func_80A9BAD8) ## $a1 = 80A9BAD8
/* 00B08 80A9BAA8 0C2A6BE8 */  jal     func_80A9AFA0              
/* 00B0C 80A9BAAC AFA40018 */  sw      $a0, 0x0018($sp)           
/* 00B10 80A9BAB0 8FA40018 */  lw      $a0, 0x0018($sp)           
/* 00B14 80A9BAB4 240EFFFF */  addiu   $t6, $zero, 0xFFFF         ## $t6 = FFFFFFFF
/* 00B18 80A9BAB8 8C8F0004 */  lw      $t7, 0x0004($a0)           ## 00000004
/* 00B1C 80A9BABC A08E0003 */  sb      $t6, 0x0003($a0)           ## 00000003
/* 00B20 80A9BAC0 35F80010 */  ori     $t8, $t7, 0x0010           ## $t8 = 00000010
/* 00B24 80A9BAC4 AC980004 */  sw      $t8, 0x0004($a0)           ## 00000004
/* 00B28 80A9BAC8 8FBF0014 */  lw      $ra, 0x0014($sp)           
/* 00B2C 80A9BACC 27BD0018 */  addiu   $sp, $sp, 0x0018           ## $sp = 00000000
/* 00B30 80A9BAD0 03E00008 */  jr      $ra                        
/* 00B34 80A9BAD4 00000000 */  nop


