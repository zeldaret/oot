glabel func_809C29F4
/* 00324 809C29F4 27BDFFE8 */  addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
/* 00328 809C29F8 AFBF0014 */  sw      $ra, 0x0014($sp)           
/* 0032C 809C29FC AFA40018 */  sw      $a0, 0x0018($sp)           
/* 00330 809C2A00 0C00BD68 */  jal     func_8002F5A0              
/* 00334 809C2A04 AFA5001C */  sw      $a1, 0x001C($sp)           
/* 00338 809C2A08 10400007 */  beq     $v0, $zero, .L809C2A28     
/* 0033C 809C2A0C 8FA40018 */  lw      $a0, 0x0018($sp)           
/* 00340 809C2A10 3C05809C */  lui     $a1, %hi(func_809C282C)    ## $a1 = 809C0000
/* 00344 809C2A14 0C2709B4 */  jal     func_809C26D0              
/* 00348 809C2A18 24A5282C */  addiu   $a1, $a1, %lo(func_809C282C) ## $a1 = 809C282C
/* 0034C 809C2A1C 8FA40018 */  lw      $a0, 0x0018($sp)           
/* 00350 809C2A20 0C270A0B */  jal     func_809C282C              
/* 00354 809C2A24 8FA5001C */  lw      $a1, 0x001C($sp)           
.L809C2A28:
/* 00358 809C2A28 8FBF0014 */  lw      $ra, 0x0014($sp)           
/* 0035C 809C2A2C 27BD0018 */  addiu   $sp, $sp, 0x0018           ## $sp = 00000000
/* 00360 809C2A30 03E00008 */  jr      $ra                        
/* 00364 809C2A34 00000000 */  nop
