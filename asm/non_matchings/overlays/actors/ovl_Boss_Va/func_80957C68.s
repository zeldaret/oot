glabel func_80957C68
/* 089A8 80957C68 27BDFFE8 */  addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
/* 089AC 80957C6C AFBF0014 */  sw      $ra, 0x0014($sp)           
/* 089B0 80957C70 AFA5001C */  sw      $a1, 0x001C($sp)           
/* 089B4 80957C74 8C8E0198 */  lw      $t6, 0x0198($a0)           ## 00000198
/* 089B8 80957C78 25CFFFFF */  addiu   $t7, $t6, 0xFFFF           ## $t7 = FFFFFFFF
/* 089BC 80957C7C 15E00003 */  bne     $t7, $zero, .L80957C8C     
/* 089C0 80957C80 AC8F0198 */  sw      $t7, 0x0198($a0)           ## 00000198
/* 089C4 80957C84 0C00B55C */  jal     Actor_Kill
              
/* 089C8 80957C88 00000000 */  nop
.L80957C8C:
/* 089CC 80957C8C 8FBF0014 */  lw      $ra, 0x0014($sp)           
/* 089D0 80957C90 27BD0018 */  addiu   $sp, $sp, 0x0018           ## $sp = 00000000
/* 089D4 80957C94 03E00008 */  jr      $ra                        
/* 089D8 80957C98 00000000 */  nop
