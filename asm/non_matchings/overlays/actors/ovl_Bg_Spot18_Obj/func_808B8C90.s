glabel func_808B8C90
/* 00380 808B8C90 27BDFFE8 */  addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
/* 00384 808B8C94 AFA5001C */  sw      $a1, 0x001C($sp)           
/* 00388 808B8C98 AFBF0014 */  sw      $ra, 0x0014($sp)           
/* 0038C 808B8C9C 3C05808C */  lui     $a1, %hi(D_808B9130)       ## $a1 = 808C0000
/* 00390 808B8CA0 AFA40018 */  sw      $a0, 0x0018($sp)           
/* 00394 808B8CA4 0C01E037 */  jal     Actor_ProcessInitChain
              
/* 00398 808B8CA8 24A59130 */  addiu   $a1, $a1, %lo(D_808B9130)  ## $a1 = 808B9130
/* 0039C 808B8CAC 0C22E370 */  jal     func_808B8DC0              
/* 003A0 808B8CB0 8FA40018 */  lw      $a0, 0x0018($sp)           
/* 003A4 808B8CB4 8FBF0014 */  lw      $ra, 0x0014($sp)           
/* 003A8 808B8CB8 27BD0018 */  addiu   $sp, $sp, 0x0018           ## $sp = 00000000
/* 003AC 808B8CBC 24020001 */  addiu   $v0, $zero, 0x0001         ## $v0 = 00000001
/* 003B0 808B8CC0 03E00008 */  jr      $ra                        
/* 003B4 808B8CC4 00000000 */  nop
