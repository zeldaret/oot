glabel func_80B14D4C
/* 012AC 80B14D4C 27BDFFE8 */  addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
/* 012B0 80B14D50 AFBF0014 */  sw      $ra, 0x0014($sp)           
/* 012B4 80B14D54 0C00BCCD */  jal     func_8002F334              
/* 012B8 80B14D58 AFA40018 */  sw      $a0, 0x0018($sp)           
/* 012BC 80B14D5C 10400006 */  beq     $v0, $zero, .L80B14D78     
/* 012C0 80B14D60 8FA40018 */  lw      $a0, 0x0018($sp)           
/* 012C4 80B14D64 3C0580B1 */  lui     $a1, %hi(func_80B14D98)    ## $a1 = 80B10000
/* 012C8 80B14D68 3C0680B1 */  lui     $a2, %hi(func_80B167C0)    ## $a2 = 80B10000
/* 012CC 80B14D6C 24C667C0 */  addiu   $a2, $a2, %lo(func_80B167C0) ## $a2 = 80B167C0
/* 012D0 80B14D70 0C2C4EA8 */  jal     func_80B13AA0              
/* 012D4 80B14D74 24A54D98 */  addiu   $a1, $a1, %lo(func_80B14D98) ## $a1 = 80B14D98
.L80B14D78:
/* 012D8 80B14D78 8FAE0018 */  lw      $t6, 0x0018($sp)           
/* 012DC 80B14D7C 95CF02E0 */  lhu     $t7, 0x02E0($t6)           ## 000002E0
/* 012E0 80B14D80 35F80001 */  ori     $t8, $t7, 0x0001           ## $t8 = 00000001
/* 012E4 80B14D84 A5D802E0 */  sh      $t8, 0x02E0($t6)           ## 000002E0
/* 012E8 80B14D88 8FBF0014 */  lw      $ra, 0x0014($sp)           
/* 012EC 80B14D8C 27BD0018 */  addiu   $sp, $sp, 0x0018           ## $sp = 00000000
/* 012F0 80B14D90 03E00008 */  jr      $ra                        
/* 012F4 80B14D94 00000000 */  nop
