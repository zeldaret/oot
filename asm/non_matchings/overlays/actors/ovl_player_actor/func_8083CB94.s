glabel func_8083CB94
/* 0A984 8083CB94 27BDFFE8 */  addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
/* 0A988 8083CB98 AFA5001C */  sw      $a1, 0x001C($sp)           
/* 0A98C 8083CB9C 00802825 */  or      $a1, $a0, $zero            ## $a1 = 00000000
/* 0A990 8083CBA0 AFBF0014 */  sw      $ra, 0x0014($sp)           
/* 0A994 8083CBA4 AFA40018 */  sw      $a0, 0x0018($sp)           
/* 0A998 8083CBA8 3C068084 */  lui     $a2, %hi(func_80840DE4)    ## $a2 = 80840000
/* 0A99C 8083CBAC 24C60DE4 */  addiu   $a2, $a2, %lo(func_80840DE4) ## $a2 = 80840DE4
/* 0A9A0 8083CBB0 AFA50018 */  sw      $a1, 0x0018($sp)           
/* 0A9A4 8083CBB4 8FA4001C */  lw      $a0, 0x001C($sp)           
/* 0A9A8 8083CBB8 0C20D716 */  jal     func_80835C58              
/* 0A9AC 8083CBBC 24070001 */  addiu   $a3, $zero, 0x0001         ## $a3 = 00000001
/* 0A9B0 8083CBC0 8FA50018 */  lw      $a1, 0x0018($sp)           
/* 0A9B4 8083CBC4 3C068085 */  lui     $a2, %hi(D_8085392C)       ## $a2 = 80850000
/* 0A9B8 8083CBC8 8FA4001C */  lw      $a0, 0x001C($sp)           
/* 0A9BC 8083CBCC 90AE015B */  lbu     $t6, 0x015B($a1)           ## 0000015B
/* 0A9C0 8083CBD0 000E7880 */  sll     $t7, $t6,  2               
/* 0A9C4 8083CBD4 00CF3021 */  addu    $a2, $a2, $t7              
/* 0A9C8 8083CBD8 0C20CAFA */  jal     func_80832BE8              
/* 0A9CC 8083CBDC 8CC6392C */  lw      $a2, %lo(D_8085392C)($a2)  
/* 0A9D0 8083CBE0 8FBF0014 */  lw      $ra, 0x0014($sp)           
/* 0A9D4 8083CBE4 27BD0018 */  addiu   $sp, $sp, 0x0018           ## $sp = 00000000
/* 0A9D8 8083CBE8 03E00008 */  jr      $ra                        
/* 0A9DC 8083CBEC 00000000 */  nop


