glabel func_80AF2E64
/* 00914 80AF2E64 27BDFFE8 */  addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
/* 00918 80AF2E68 AFBF0014 */  sw      $ra, 0x0014($sp)           
/* 0091C 80AF2E6C 0C01E233 */  jal     func_800788CC              
/* 00920 80AF2E70 24044834 */  addiu   $a0, $zero, 0x4834         ## $a0 = 00004834
/* 00924 80AF2E74 8FBF0014 */  lw      $ra, 0x0014($sp)           
/* 00928 80AF2E78 27BD0018 */  addiu   $sp, $sp, 0x0018           ## $sp = 00000000
/* 0092C 80AF2E7C 03E00008 */  jr      $ra                        
/* 00930 80AF2E80 00000000 */  nop


