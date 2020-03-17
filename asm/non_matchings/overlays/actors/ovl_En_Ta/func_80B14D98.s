glabel func_80B14D98
/* 012F8 80B14D98 27BDFFE8 */  addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
/* 012FC 80B14D9C AFBF0014 */  sw      $ra, 0x0014($sp)           
/* 01300 80B14DA0 AFA40018 */  sw      $a0, 0x0018($sp)           
/* 01304 80B14DA4 0C2C50BD */  jal     func_80B142F4              
/* 01308 80B14DA8 24062055 */  addiu   $a2, $zero, 0x2055         ## $a2 = 00002055
/* 0130C 80B14DAC 10400006 */  beq     $v0, $zero, .L80B14DC8     
/* 01310 80B14DB0 8FA40018 */  lw      $a0, 0x0018($sp)           
/* 01314 80B14DB4 3C0580B1 */  lui     $a1, %hi(func_80B14D4C)    ## $a1 = 80B10000
/* 01318 80B14DB8 3C0680B1 */  lui     $a2, %hi(func_80B167C0)    ## $a2 = 80B10000
/* 0131C 80B14DBC 24C667C0 */  addiu   $a2, $a2, %lo(func_80B167C0) ## $a2 = 80B167C0
/* 01320 80B14DC0 0C2C4EA8 */  jal     func_80B13AA0              
/* 01324 80B14DC4 24A54D4C */  addiu   $a1, $a1, %lo(func_80B14D4C) ## $a1 = 80B14D4C
.L80B14DC8:
/* 01328 80B14DC8 8FBF0014 */  lw      $ra, 0x0014($sp)           
/* 0132C 80B14DCC 27BD0018 */  addiu   $sp, $sp, 0x0018           ## $sp = 00000000
/* 01330 80B14DD0 03E00008 */  jr      $ra                        
/* 01334 80B14DD4 00000000 */  nop


