glabel func_80A6E6D8
/* 00338 80A6E6D8 27BDFFE8 */  addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
/* 0033C 80A6E6DC AFBF0014 */  sw      $ra, 0x0014($sp)           
/* 00340 80A6E6E0 0C00BCCD */  jal     func_8002F334              
/* 00344 80A6E6E4 AFA40018 */  sw      $a0, 0x0018($sp)           
/* 00348 80A6E6E8 10400004 */  beq     $v0, $zero, .L80A6E6FC     
/* 0034C 80A6E6EC 8FA40018 */  lw      $a0, 0x0018($sp)           
/* 00350 80A6E6F0 3C0580A7 */  lui     $a1, %hi(func_80A6E9AC)    ## $a1 = 80A70000
/* 00354 80A6E6F4 0C29B8E8 */  jal     func_80A6E3A0              
/* 00358 80A6E6F8 24A5E9AC */  addiu   $a1, $a1, %lo(func_80A6E9AC) ## $a1 = 80A6E9AC
.L80A6E6FC:
/* 0035C 80A6E6FC 8FBF0014 */  lw      $ra, 0x0014($sp)           
/* 00360 80A6E700 27BD0018 */  addiu   $sp, $sp, 0x0018           ## $sp = 00000000
/* 00364 80A6E704 03E00008 */  jr      $ra                        
/* 00368 80A6E708 00000000 */  nop


