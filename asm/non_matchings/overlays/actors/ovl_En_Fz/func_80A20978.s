glabel func_80A20978
/* 00BB8 80A20978 27BDFFE8 */  addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
/* 00BBC 80A2097C AFBF0014 */  sw      $ra, 0x0014($sp)           
/* 00BC0 80A20980 AFA5001C */  sw      $a1, 0x001C($sp)           
/* 00BC4 80A20984 0C2881C1 */  jal     func_80A20704              
/* 00BC8 80A20988 AFA40018 */  sw      $a0, 0x0018($sp)           
/* 00BCC 80A2098C 8FA40018 */  lw      $a0, 0x0018($sp)           
/* 00BD0 80A20990 848E0244 */  lh      $t6, 0x0244($a0)           ## 00000244
/* 00BD4 80A20994 55C00004 */  bnel    $t6, $zero, .L80A209A8     
/* 00BD8 80A20998 8FBF0014 */  lw      $ra, 0x0014($sp)           
/* 00BDC 80A2099C 0C28826D */  jal     func_80A209B4              
/* 00BE0 80A209A0 00000000 */  nop
/* 00BE4 80A209A4 8FBF0014 */  lw      $ra, 0x0014($sp)           
.L80A209A8:
/* 00BE8 80A209A8 27BD0018 */  addiu   $sp, $sp, 0x0018           ## $sp = 00000000
/* 00BEC 80A209AC 03E00008 */  jr      $ra                        
/* 00BF0 80A209B0 00000000 */  nop


