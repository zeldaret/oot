glabel func_809FC878
/* 006A8 809FC878 27BDFFE8 */  addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
/* 006AC 809FC87C AFBF0014 */  sw      $ra, 0x0014($sp)           
/* 006B0 809FC880 AFA5001C */  sw      $a1, 0x001C($sp)           
/* 006B4 809FC884 0C00BC65 */  jal     func_8002F194              
/* 006B8 809FC888 AFA40018 */  sw      $a0, 0x0018($sp)           
/* 006BC 809FC88C 10400005 */  beq     $v0, $zero, .L809FC8A4     
/* 006C0 809FC890 8FA40018 */  lw      $a0, 0x0018($sp)           
/* 006C4 809FC894 3C0E80A0 */  lui     $t6, %hi(func_809FC8C0)    ## $t6 = 80A00000
/* 006C8 809FC898 25CEC8C0 */  addiu   $t6, $t6, %lo(func_809FC8C0) ## $t6 = 809FC8C0
/* 006CC 809FC89C 10000004 */  beq     $zero, $zero, .L809FC8B0   
/* 006D0 809FC8A0 AC8E01D4 */  sw      $t6, 0x01D4($a0)           ## 000001D4
.L809FC8A4:
/* 006D4 809FC8A4 8FA5001C */  lw      $a1, 0x001C($sp)           
/* 006D8 809FC8A8 0C00BCB3 */  jal     func_8002F2CC              
/* 006DC 809FC8AC 3C064220 */  lui     $a2, 0x4220                ## $a2 = 42200000
.L809FC8B0:
/* 006E0 809FC8B0 8FBF0014 */  lw      $ra, 0x0014($sp)           
/* 006E4 809FC8B4 27BD0018 */  addiu   $sp, $sp, 0x0018           ## $sp = 00000000
/* 006E8 809FC8B8 03E00008 */  jr      $ra                        
/* 006EC 809FC8BC 00000000 */  nop
