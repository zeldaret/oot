glabel func_809B0524
/* 001B4 809B0524 27BDFFE8 */  addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
/* 001B8 809B0528 AFBF0014 */  sw      $ra, 0x0014($sp)           
/* 001BC 809B052C 0C00BCCD */  jal     func_8002F334              
/* 001C0 809B0530 AFA40018 */  sw      $a0, 0x0018($sp)           
/* 001C4 809B0534 10400004 */  beq     $v0, $zero, .L809B0548     
/* 001C8 809B0538 8FA40018 */  lw      $a0, 0x0018($sp)           
/* 001CC 809B053C 3C05809B */  lui     $a1, %hi(func_809B07F8)    ## $a1 = 809B0000
/* 001D0 809B0540 0C26C0DC */  jal     func_809B0370              
/* 001D4 809B0544 24A507F8 */  addiu   $a1, $a1, %lo(func_809B07F8) ## $a1 = 809B07F8
.L809B0548:
/* 001D8 809B0548 8FBF0014 */  lw      $ra, 0x0014($sp)           
/* 001DC 809B054C 27BD0018 */  addiu   $sp, $sp, 0x0018           ## $sp = 00000000
/* 001E0 809B0550 03E00008 */  jr      $ra                        
/* 001E4 809B0554 00000000 */  nop


