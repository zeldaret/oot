glabel func_80B57C8C
/* 048DC 80B57C8C 27BDFFE8 */  addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
/* 048E0 80B57C90 AFBF0014 */  sw      $ra, 0x0014($sp)           
/* 048E4 80B57C94 8C850314 */  lw      $a1, 0x0314($a0)           ## 00000314
/* 048E8 80B57C98 0C2D5BE3 */  jal     func_80B56F8C              
/* 048EC 80B57C9C 24A50002 */  addiu   $a1, $a1, 0x0002           ## $a1 = 00000002
/* 048F0 80B57CA0 8FBF0014 */  lw      $ra, 0x0014($sp)           
/* 048F4 80B57CA4 27BD0018 */  addiu   $sp, $sp, 0x0018           ## $sp = 00000000
/* 048F8 80B57CA8 2C420001 */  sltiu   $v0, $v0, 0x0001           
/* 048FC 80B57CAC 03E00008 */  jr      $ra                        
/* 04900 80B57CB0 00000000 */  nop
