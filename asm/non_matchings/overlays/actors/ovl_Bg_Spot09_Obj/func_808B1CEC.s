glabel func_808B1CEC
/* 0020C 808B1CEC 27BDFFE8 */  addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
/* 00210 808B1CF0 AFA5001C */  sw      $a1, 0x001C($sp)           
/* 00214 808B1CF4 AFBF0014 */  sw      $ra, 0x0014($sp)           
/* 00218 808B1CF8 3C05808B */  lui     $a1, %hi(D_808B1FB0)       ## $a1 = 808B0000
/* 0021C 808B1CFC 0C01E037 */  jal     Actor_ProcessInitChain
              
/* 00220 808B1D00 24A51FB0 */  addiu   $a1, $a1, %lo(D_808B1FB0)  ## $a1 = 808B1FB0
/* 00224 808B1D04 8FBF0014 */  lw      $ra, 0x0014($sp)           
/* 00228 808B1D08 27BD0018 */  addiu   $sp, $sp, 0x0018           ## $sp = 00000000
/* 0022C 808B1D0C 24020001 */  addiu   $v0, $zero, 0x0001         ## $v0 = 00000001
/* 00230 808B1D10 03E00008 */  jr      $ra                        
/* 00234 808B1D14 00000000 */  nop


