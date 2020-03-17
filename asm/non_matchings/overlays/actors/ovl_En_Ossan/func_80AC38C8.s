glabel func_80AC38C8
/* 00C28 80AC38C8 27BDFFE8 */  addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
/* 00C2C 80AC38CC AFBF0014 */  sw      $ra, 0x0014($sp)           
/* 00C30 80AC38D0 AFA5001C */  sw      $a1, 0x001C($sp)           
/* 00C34 80AC38D4 94CE000C */  lhu     $t6, 0x000C($a2)           ## 0000000C
/* 00C38 80AC38D8 2401BFFF */  addiu   $at, $zero, 0xBFFF         ## $at = FFFFBFFF
/* 00C3C 80AC38DC 00803825 */  or      $a3, $a0, $zero            ## $a3 = 00000000
/* 00C40 80AC38E0 01C17827 */  nor     $t7, $t6, $at              
/* 00C44 80AC38E4 15E0000C */  bne     $t7, $zero, .L80AC3918     
/* 00C48 80AC38E8 00001025 */  or      $v0, $zero, $zero          ## $v0 = 00000000
/* 00C4C 80AC38EC 849801FE */  lh      $t8, 0x01FE($a0)           ## 000001FE
/* 00C50 80AC38F0 A49801FC */  sh      $t8, 0x01FC($a0)           ## 000001FC
/* 00C54 80AC38F4 90F90252 */  lbu     $t9, 0x0252($a3)           ## 00000252
/* 00C58 80AC38F8 8FA4001C */  lw      $a0, 0x001C($sp)           
/* 00C5C 80AC38FC 00194080 */  sll     $t0, $t9,  2               
/* 00C60 80AC3900 00E84821 */  addu    $t1, $a3, $t0              
/* 00C64 80AC3904 8D2A0200 */  lw      $t2, 0x0200($t1)           ## 00000200
/* 00C68 80AC3908 0C042DC8 */  jal     func_8010B720              
/* 00C6C 80AC390C 9545010E */  lhu     $a1, 0x010E($t2)           ## 0000010E
/* 00C70 80AC3910 10000001 */  beq     $zero, $zero, .L80AC3918   
/* 00C74 80AC3914 24020001 */  addiu   $v0, $zero, 0x0001         ## $v0 = 00000001
.L80AC3918:
/* 00C78 80AC3918 8FBF0014 */  lw      $ra, 0x0014($sp)           
/* 00C7C 80AC391C 27BD0018 */  addiu   $sp, $sp, 0x0018           ## $sp = 00000000
/* 00C80 80AC3920 03E00008 */  jr      $ra                        
/* 00C84 80AC3924 00000000 */  nop


