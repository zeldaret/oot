glabel func_808B1D18
/* 00238 808B1D18 27BDFFE8 */  addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
/* 0023C 808B1D1C AFA5001C */  sw      $a1, 0x001C($sp)           
/* 00240 808B1D20 AFBF0014 */  sw      $ra, 0x0014($sp)           
/* 00244 808B1D24 3C05808B */  lui     $a1, %hi(D_808B1FBC)       ## $a1 = 808B0000
/* 00248 808B1D28 0C01E037 */  jal     Actor_ProcessInitChain
              
/* 0024C 808B1D2C 24A51FBC */  addiu   $a1, $a1, %lo(D_808B1FBC)  ## $a1 = 808B1FBC
/* 00250 808B1D30 8FBF0014 */  lw      $ra, 0x0014($sp)           
/* 00254 808B1D34 27BD0018 */  addiu   $sp, $sp, 0x0018           ## $sp = 00000000
/* 00258 808B1D38 24020001 */  addiu   $v0, $zero, 0x0001         ## $v0 = 00000001
/* 0025C 808B1D3C 03E00008 */  jr      $ra                        
/* 00260 808B1D40 00000000 */  nop


