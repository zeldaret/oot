glabel func_8083EA94
/* 0C884 8083EA94 27BDFFE8 */  addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
/* 0C888 8083EA98 AFA5001C */  sw      $a1, 0x001C($sp)           
/* 0C88C 8083EA9C 00802825 */  or      $a1, $a0, $zero            ## $a1 = 00000000
/* 0C890 8083EAA0 AFBF0014 */  sw      $ra, 0x0014($sp)           
/* 0C894 8083EAA4 AFA40018 */  sw      $a0, 0x0018($sp)           
/* 0C898 8083EAA8 3C068084 */  lui     $a2, %hi(func_80846578)    ## $a2 = 80840000
/* 0C89C 8083EAAC 24C66578 */  addiu   $a2, $a2, %lo(func_80846578) ## $a2 = 80846578
/* 0C8A0 8083EAB0 AFA50018 */  sw      $a1, 0x0018($sp)           
/* 0C8A4 8083EAB4 8FA4001C */  lw      $a0, 0x001C($sp)           
/* 0C8A8 8083EAB8 0C20D716 */  jal     func_80835C58              
/* 0C8AC 8083EABC 24070001 */  addiu   $a3, $zero, 0x0001         ## $a3 = 00000001
/* 0C8B0 8083EAC0 8FA50018 */  lw      $a1, 0x0018($sp)           
/* 0C8B4 8083EAC4 3C068085 */  lui     $a2, %hi(D_80853BCC)       ## $a2 = 80850000
/* 0C8B8 8083EAC8 8FA4001C */  lw      $a0, 0x001C($sp)           
/* 0C8BC 8083EACC 90AE015B */  lbu     $t6, 0x015B($a1)           ## 0000015B
/* 0C8C0 8083EAD0 000E7880 */  sll     $t7, $t6,  2               
/* 0C8C4 8083EAD4 00CF3021 */  addu    $a2, $a2, $t7              
/* 0C8C8 8083EAD8 0C20C899 */  jal     func_80832264              
/* 0C8CC 8083EADC 8CC63BCC */  lw      $a2, %lo(D_80853BCC)($a2)  
/* 0C8D0 8083EAE0 8FBF0014 */  lw      $ra, 0x0014($sp)           
/* 0C8D4 8083EAE4 27BD0018 */  addiu   $sp, $sp, 0x0018           ## $sp = 00000000
/* 0C8D8 8083EAE8 03E00008 */  jr      $ra                        
/* 0C8DC 8083EAEC 00000000 */  nop


