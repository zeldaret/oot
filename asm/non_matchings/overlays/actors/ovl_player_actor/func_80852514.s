glabel func_80852514
/* 20304 80852514 27BDFFE8 */  addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
/* 20308 80852518 AFA5001C */  sw      $a1, 0x001C($sp)           
/* 2030C 8085251C 00802825 */  or      $a1, $a0, $zero            ## $a1 = 00000000
/* 20310 80852520 AFBF0014 */  sw      $ra, 0x0014($sp)           
/* 20314 80852524 AFA40018 */  sw      $a0, 0x0018($sp)           
/* 20318 80852528 8FA4001C */  lw      $a0, 0x001C($sp)           
/* 2031C 8085252C 0C21139A */  jal     func_80844E68              
/* 20320 80852530 AFA60020 */  sw      $a2, 0x0020($sp)           
/* 20324 80852534 8FBF0014 */  lw      $ra, 0x0014($sp)           
/* 20328 80852538 27BD0018 */  addiu   $sp, $sp, 0x0018           ## $sp = 00000000
/* 2032C 8085253C 03E00008 */  jr      $ra                        
/* 20330 80852540 00000000 */  nop
