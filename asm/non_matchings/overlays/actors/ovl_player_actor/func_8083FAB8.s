glabel func_8083FAB8
/* 0D8A8 8083FAB8 27BDFFE8 */  addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
/* 0D8AC 8083FABC AFA5001C */  sw      $a1, 0x001C($sp)           
/* 0D8B0 8083FAC0 00802825 */  or      $a1, $a0, $zero            ## $a1 = 00000000
/* 0D8B4 8083FAC4 AFBF0014 */  sw      $ra, 0x0014($sp)           
/* 0D8B8 8083FAC8 AFA40018 */  sw      $a0, 0x0018($sp)           
/* 0D8BC 8083FACC 3C068085 */  lui     $a2, %hi(func_8084B898)    ## $a2 = 80850000
/* 0D8C0 8083FAD0 24C6B898 */  addiu   $a2, $a2, %lo(func_8084B898) ## $a2 = 8084B898
/* 0D8C4 8083FAD4 AFA50018 */  sw      $a1, 0x0018($sp)           
/* 0D8C8 8083FAD8 8FA4001C */  lw      $a0, 0x001C($sp)           
/* 0D8CC 8083FADC 0C20D716 */  jal     func_80835C58              
/* 0D8D0 8083FAE0 00003825 */  or      $a3, $zero, $zero          ## $a3 = 00000000
/* 0D8D4 8083FAE4 8FA50018 */  lw      $a1, 0x0018($sp)           
/* 0D8D8 8083FAE8 3C060400 */  lui     $a2, 0x0400                ## $a2 = 04000000
/* 0D8DC 8083FAEC 24C630F0 */  addiu   $a2, $a2, 0x30F0           ## $a2 = 040030F0
/* 0D8E0 8083FAF0 8CAE0680 */  lw      $t6, 0x0680($a1)           ## 00000680
/* 0D8E4 8083FAF4 35CF0010 */  ori     $t7, $t6, 0x0010           ## $t7 = 00000010
/* 0D8E8 8083FAF8 ACAF0680 */  sw      $t7, 0x0680($a1)           ## 00000680
/* 0D8EC 8083FAFC 0C20C899 */  jal     func_80832264              
/* 0D8F0 8083FB00 8FA4001C */  lw      $a0, 0x001C($sp)           
/* 0D8F4 8083FB04 8FBF0014 */  lw      $ra, 0x0014($sp)           
/* 0D8F8 8083FB08 27BD0018 */  addiu   $sp, $sp, 0x0018           ## $sp = 00000000
/* 0D8FC 8083FB0C 03E00008 */  jr      $ra                        
/* 0D900 8083FB10 00000000 */  nop


