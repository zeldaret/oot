glabel func_80B8FD50
/* 012D0 80B8FD50 27BDFFE8 */  addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
/* 012D4 80B8FD54 3C0E80B9 */  lui     $t6, %hi(func_80B8FD8C)    ## $t6 = 80B90000
/* 012D8 80B8FD58 AFBF0014 */  sw      $ra, 0x0014($sp)           
/* 012DC 80B8FD5C 25CEFD8C */  addiu   $t6, $t6, %lo(func_80B8FD8C) ## $t6 = 80B8FD8C
/* 012E0 80B8FD60 AC8E0164 */  sw      $t6, 0x0164($a0)           ## 00000164
/* 012E4 80B8FD64 AFA40018 */  sw      $a0, 0x0018($sp)           
/* 012E8 80B8FD68 0C2E3BCA */  jal     func_80B8EF28              
/* 012EC 80B8FD6C 24050001 */  addiu   $a1, $zero, 0x0001         ## $a1 = 00000001
/* 012F0 80B8FD70 8FA40018 */  lw      $a0, 0x0018($sp)           
/* 012F4 80B8FD74 240F002F */  addiu   $t7, $zero, 0x002F         ## $t7 = 0000002F
/* 012F8 80B8FD78 A48F010E */  sh      $t7, 0x010E($a0)           ## 0000010E
/* 012FC 80B8FD7C 8FBF0014 */  lw      $ra, 0x0014($sp)           
/* 01300 80B8FD80 27BD0018 */  addiu   $sp, $sp, 0x0018           ## $sp = 00000000
/* 01304 80B8FD84 03E00008 */  jr      $ra                        
/* 01308 80B8FD88 00000000 */  nop
