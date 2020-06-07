glabel func_80B14C18
/* 01178 80B14C18 27BDFFE8 */  addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
/* 0117C 80B14C1C AFBF0014 */  sw      $ra, 0x0014($sp)           
/* 01180 80B14C20 AFA40018 */  sw      $a0, 0x0018($sp)           
/* 01184 80B14C24 0C2C50BD */  jal     func_80B142F4              
/* 01188 80B14C28 2406702C */  addiu   $a2, $zero, 0x702C         ## $a2 = 0000702C
/* 0118C 80B14C2C 10400006 */  beq     $v0, $zero, .L80B14C48     
/* 01190 80B14C30 8FA40018 */  lw      $a0, 0x0018($sp)           
/* 01194 80B14C34 3C0580B1 */  lui     $a1, %hi(func_80B14B6C)    ## $a1 = 80B10000
/* 01198 80B14C38 3C0680B1 */  lui     $a2, %hi(func_80B167C0)    ## $a2 = 80B10000
/* 0119C 80B14C3C 24C667C0 */  addiu   $a2, $a2, %lo(func_80B167C0) ## $a2 = 80B167C0
/* 011A0 80B14C40 0C2C4EA8 */  jal     func_80B13AA0              
/* 011A4 80B14C44 24A54B6C */  addiu   $a1, $a1, %lo(func_80B14B6C) ## $a1 = 80B14B6C
.L80B14C48:
/* 011A8 80B14C48 0C2C5092 */  jal     func_80B14248              
/* 011AC 80B14C4C 8FA40018 */  lw      $a0, 0x0018($sp)           
/* 011B0 80B14C50 8FBF0014 */  lw      $ra, 0x0014($sp)           
/* 011B4 80B14C54 27BD0018 */  addiu   $sp, $sp, 0x0018           ## $sp = 00000000
/* 011B8 80B14C58 03E00008 */  jr      $ra                        
/* 011BC 80B14C5C 00000000 */  nop
