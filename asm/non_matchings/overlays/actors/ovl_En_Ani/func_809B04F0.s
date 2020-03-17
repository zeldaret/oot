glabel func_809B04F0
/* 00180 809B04F0 27BDFFE8 */  addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
/* 00184 809B04F4 AFBF0014 */  sw      $ra, 0x0014($sp)           
/* 00188 809B04F8 0C00BCCD */  jal     func_8002F334              
/* 0018C 809B04FC AFA40018 */  sw      $a0, 0x0018($sp)           
/* 00190 809B0500 10400004 */  beq     $v0, $zero, .L809B0514     
/* 00194 809B0504 8FA40018 */  lw      $a0, 0x0018($sp)           
/* 00198 809B0508 3C05809B */  lui     $a1, %hi(func_809B064C)    ## $a1 = 809B0000
/* 0019C 809B050C 0C26C0DC */  jal     func_809B0370              
/* 001A0 809B0510 24A5064C */  addiu   $a1, $a1, %lo(func_809B064C) ## $a1 = 809B064C
.L809B0514:
/* 001A4 809B0514 8FBF0014 */  lw      $ra, 0x0014($sp)           
/* 001A8 809B0518 27BD0018 */  addiu   $sp, $sp, 0x0018           ## $sp = 00000000
/* 001AC 809B051C 03E00008 */  jr      $ra                        
/* 001B0 809B0520 00000000 */  nop


