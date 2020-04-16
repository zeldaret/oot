glabel func_809FC8C0
/* 006F0 809FC8C0 27BDFFE8 */  addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
/* 006F4 809FC8C4 AFBF0014 */  sw      $ra, 0x0014($sp)           
/* 006F8 809FC8C8 0C00BCCD */  jal     func_8002F334              
/* 006FC 809FC8CC AFA40018 */  sw      $a0, 0x0018($sp)           
/* 00700 809FC8D0 10400004 */  beq     $v0, $zero, .L809FC8E4     
/* 00704 809FC8D4 8FAF0018 */  lw      $t7, 0x0018($sp)           
/* 00708 809FC8D8 3C0E80A0 */  lui     $t6, %hi(func_809FC878)    ## $t6 = 80A00000
/* 0070C 809FC8DC 25CEC878 */  addiu   $t6, $t6, %lo(func_809FC878) ## $t6 = 809FC878
/* 00710 809FC8E0 ADEE01D4 */  sw      $t6, 0x01D4($t7)           ## 000001D4
.L809FC8E4:
/* 00714 809FC8E4 8FBF0014 */  lw      $ra, 0x0014($sp)           
/* 00718 809FC8E8 27BD0018 */  addiu   $sp, $sp, 0x0018           ## $sp = 00000000
/* 0071C 809FC8EC 03E00008 */  jr      $ra                        
/* 00720 809FC8F0 00000000 */  nop
