glabel func_80A7748C
/* 0317C 80A7748C 27BDFFE8 */  addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
/* 03180 80A77490 AFBF0014 */  sw      $ra, 0x0014($sp)           
/* 03184 80A77494 AFA40018 */  sw      $a0, 0x0018($sp)           
/* 03188 80A77498 0C29DC0D */  jal     func_80A77034              
/* 0318C 80A7749C AFA5001C */  sw      $a1, 0x001C($sp)           
/* 03190 80A774A0 8FA40018 */  lw      $a0, 0x0018($sp)           
/* 03194 80A774A4 0C29DE77 */  jal     func_80A779DC              
/* 03198 80A774A8 8FA5001C */  lw      $a1, 0x001C($sp)           
/* 0319C 80A774AC 8FBF0014 */  lw      $ra, 0x0014($sp)           
/* 031A0 80A774B0 27BD0018 */  addiu   $sp, $sp, 0x0018           ## $sp = 00000000
/* 031A4 80A774B4 03E00008 */  jr      $ra                        
/* 031A8 80A774B8 00000000 */  nop
