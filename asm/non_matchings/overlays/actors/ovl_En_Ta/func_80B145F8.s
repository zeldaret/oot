glabel func_80B145F8
/* 00B58 80B145F8 27BDFFE8 */  addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
/* 00B5C 80B145FC AFBF0014 */  sw      $ra, 0x0014($sp)           
/* 00B60 80B14600 0C00BCCD */  jal     func_8002F334              
/* 00B64 80B14604 AFA40018 */  sw      $a0, 0x0018($sp)           
/* 00B68 80B14608 10400006 */  beq     $v0, $zero, .L80B14624     
/* 00B6C 80B1460C 8FA40018 */  lw      $a0, 0x0018($sp)           
/* 00B70 80B14610 3C0580B1 */  lui     $a1, %hi(func_80B14634)    ## $a1 = 80B10000
/* 00B74 80B14614 3C0680B1 */  lui     $a2, %hi(func_80B167FC)    ## $a2 = 80B10000
/* 00B78 80B14618 24C667FC */  addiu   $a2, $a2, %lo(func_80B167FC) ## $a2 = 80B167FC
/* 00B7C 80B1461C 0C2C4EA8 */  jal     func_80B13AA0              
/* 00B80 80B14620 24A54634 */  addiu   $a1, $a1, %lo(func_80B14634) ## $a1 = 80B14634
.L80B14624:
/* 00B84 80B14624 8FBF0014 */  lw      $ra, 0x0014($sp)           
/* 00B88 80B14628 27BD0018 */  addiu   $sp, $sp, 0x0018           ## $sp = 00000000
/* 00B8C 80B1462C 03E00008 */  jr      $ra                        
/* 00B90 80B14630 00000000 */  nop


