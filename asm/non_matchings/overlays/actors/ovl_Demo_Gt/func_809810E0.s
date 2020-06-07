glabel func_809810E0
/* 03A70 809810E0 27BDFFE8 */  addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
/* 03A74 809810E4 AFBF0014 */  sw      $ra, 0x0014($sp)           
/* 03A78 809810E8 AFA40018 */  sw      $a0, 0x0018($sp)           
/* 03A7C 809810EC AFA5001C */  sw      $a1, 0x001C($sp)           
/* 03A80 809810F0 0C25FB59 */  jal     func_8097ED64              
/* 03A84 809810F4 24060004 */  addiu   $a2, $zero, 0x0004         ## $a2 = 00000004
/* 03A88 809810F8 8FA40018 */  lw      $a0, 0x0018($sp)           
/* 03A8C 809810FC 0C2603D6 */  jal     func_80980F58              
/* 03A90 80981100 8FA5001C */  lw      $a1, 0x001C($sp)           
/* 03A94 80981104 8FBF0014 */  lw      $ra, 0x0014($sp)           
/* 03A98 80981108 27BD0018 */  addiu   $sp, $sp, 0x0018           ## $sp = 00000000
/* 03A9C 8098110C 03E00008 */  jr      $ra                        
/* 03AA0 80981110 00000000 */  nop
