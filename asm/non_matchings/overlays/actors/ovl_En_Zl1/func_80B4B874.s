glabel func_80B4B874
/* 00D34 80B4B874 27BDFFE8 */  addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
/* 00D38 80B4B878 AFBF0014 */  sw      $ra, 0x0014($sp)           
/* 00D3C 80B4B87C AFA40018 */  sw      $a0, 0x0018($sp)           
/* 00D40 80B4B880 AFA5001C */  sw      $a1, 0x001C($sp)           
/* 00D44 80B4B884 908E0181 */  lbu     $t6, 0x0181($a0)           ## 00000181
/* 00D48 80B4B888 00802825 */  or      $a1, $a0, $zero            ## $a1 = 00000000
/* 00D4C 80B4B88C 24A6014C */  addiu   $a2, $a1, 0x014C           ## $a2 = 0000014C
/* 00D50 80B4B890 35CF0001 */  ori     $t7, $t6, 0x0001           ## $t7 = 00000001
/* 00D54 80B4B894 A08F0181 */  sb      $t7, 0x0181($a0)           ## 00000181
/* 00D58 80B4B898 8FA4001C */  lw      $a0, 0x001C($sp)           
/* 00D5C 80B4B89C 0C028D88 */  jal     func_800A3620              
/* 00D60 80B4B8A0 3C073F80 */  lui     $a3, 0x3F80                ## $a3 = 3F800000
/* 00D64 80B4B8A4 8FBF0014 */  lw      $ra, 0x0014($sp)           
/* 00D68 80B4B8A8 27BD0018 */  addiu   $sp, $sp, 0x0018           ## $sp = 00000000
/* 00D6C 80B4B8AC 03E00008 */  jr      $ra                        
/* 00D70 80B4B8B0 00000000 */  nop


