glabel func_80B4148C
/* 052AC 80B4148C 27BDFFE8 */  addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
/* 052B0 80B41490 AFBF0014 */  sw      $ra, 0x0014($sp)           
/* 052B4 80B41494 0C00B55C */  jal     Actor_Kill
              
/* 052B8 80B41498 AFA5001C */  sw      $a1, 0x001C($sp)           
/* 052BC 80B4149C 8FBF0014 */  lw      $ra, 0x0014($sp)           
/* 052C0 80B414A0 27BD0018 */  addiu   $sp, $sp, 0x0018           ## $sp = 00000000
/* 052C4 80B414A4 03E00008 */  jr      $ra                        
/* 052C8 80B414A8 00000000 */  nop


