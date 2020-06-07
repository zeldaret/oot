glabel func_80A3183C
/* 00ECC 80A3183C 27BDFFE8 */  addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
/* 00ED0 80A31840 AFBF0014 */  sw      $ra, 0x0014($sp)           
/* 00ED4 80A31844 948E02AC */  lhu     $t6, 0x02AC($a0)           ## 000002AC
/* 00ED8 80A31848 35CF0001 */  ori     $t7, $t6, 0x0001           ## $t7 = 00000001
/* 00EDC 80A3184C A48F02AC */  sh      $t7, 0x02AC($a0)           ## 000002AC
/* 00EE0 80A31850 0C00BCCD */  jal     func_8002F334              
/* 00EE4 80A31854 AFA40018 */  sw      $a0, 0x0018($sp)           
/* 00EE8 80A31858 10400005 */  beq     $v0, $zero, .L80A31870     
/* 00EEC 80A3185C 8FA40018 */  lw      $a0, 0x0018($sp)           
/* 00EF0 80A31860 3C1880A3 */  lui     $t8, %hi(func_80A31880)    ## $t8 = 80A30000
/* 00EF4 80A31864 27181880 */  addiu   $t8, $t8, %lo(func_80A31880) ## $t8 = 80A31880
/* 00EF8 80A31868 0C28C352 */  jal     func_80A30D48              
/* 00EFC 80A3186C AC9802B4 */  sw      $t8, 0x02B4($a0)           ## 000002B4
.L80A31870:
/* 00F00 80A31870 8FBF0014 */  lw      $ra, 0x0014($sp)           
/* 00F04 80A31874 27BD0018 */  addiu   $sp, $sp, 0x0018           ## $sp = 00000000
/* 00F08 80A31878 03E00008 */  jr      $ra                        
/* 00F0C 80A3187C 00000000 */  nop
