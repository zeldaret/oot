glabel func_809C7180
/* 00220 809C7180 27BDFFE8 */  addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
/* 00224 809C7184 AFA5001C */  sw      $a1, 0x001C($sp)           
/* 00228 809C7188 AFBF0014 */  sw      $ra, 0x0014($sp)           
/* 0022C 809C718C 3C05809C */  lui     $a1, %hi(func_809C71A8)    ## $a1 = 809C0000
/* 00230 809C7190 0C271BD8 */  jal     func_809C6F60              
/* 00234 809C7194 24A571A8 */  addiu   $a1, $a1, %lo(func_809C71A8) ## $a1 = 809C71A8
/* 00238 809C7198 8FBF0014 */  lw      $ra, 0x0014($sp)           
/* 0023C 809C719C 27BD0018 */  addiu   $sp, $sp, 0x0018           ## $sp = 00000000
/* 00240 809C71A0 03E00008 */  jr      $ra                        
/* 00244 809C71A4 00000000 */  nop
