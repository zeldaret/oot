glabel func_80B14C60
/* 011C0 80B14C60 27BDFFE8 */  addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
/* 011C4 80B14C64 AFBF0014 */  sw      $ra, 0x0014($sp)           
/* 011C8 80B14C68 0C00BCCD */  jal     func_8002F334              
/* 011CC 80B14C6C AFA40018 */  sw      $a0, 0x0018($sp)           
/* 011D0 80B14C70 10400006 */  beq     $v0, $zero, .L80B14C8C     
/* 011D4 80B14C74 8FA40018 */  lw      $a0, 0x0018($sp)           
/* 011D8 80B14C78 3C0580B1 */  lui     $a1, %hi(func_80B14CAC)    ## $a1 = 80B10000
/* 011DC 80B14C7C 3C0680B1 */  lui     $a2, %hi(func_80B167C0)    ## $a2 = 80B10000
/* 011E0 80B14C80 24C667C0 */  addiu   $a2, $a2, %lo(func_80B167C0) ## $a2 = 80B167C0
/* 011E4 80B14C84 0C2C4EA8 */  jal     func_80B13AA0              
/* 011E8 80B14C88 24A54CAC */  addiu   $a1, $a1, %lo(func_80B14CAC) ## $a1 = 80B14CAC
.L80B14C8C:
/* 011EC 80B14C8C 8FAE0018 */  lw      $t6, 0x0018($sp)           
/* 011F0 80B14C90 95CF02E0 */  lhu     $t7, 0x02E0($t6)           ## 000002E0
/* 011F4 80B14C94 35F80001 */  ori     $t8, $t7, 0x0001           ## $t8 = 00000001
/* 011F8 80B14C98 A5D802E0 */  sh      $t8, 0x02E0($t6)           ## 000002E0
/* 011FC 80B14C9C 8FBF0014 */  lw      $ra, 0x0014($sp)           
/* 01200 80B14CA0 27BD0018 */  addiu   $sp, $sp, 0x0018           ## $sp = 00000000
/* 01204 80B14CA4 03E00008 */  jr      $ra                        
/* 01208 80B14CA8 00000000 */  nop
