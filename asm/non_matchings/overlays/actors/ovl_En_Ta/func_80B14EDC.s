glabel func_80B14EDC
/* 0143C 80B14EDC 27BDFFE8 */  addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
/* 01440 80B14EE0 AFA40018 */  sw      $a0, 0x0018($sp)           
/* 01444 80B14EE4 8FAE0018 */  lw      $t6, 0x0018($sp)           
/* 01448 80B14EE8 AFBF0014 */  sw      $ra, 0x0014($sp)           
/* 0144C 80B14EEC AFA5001C */  sw      $a1, 0x001C($sp)           
/* 01450 80B14EF0 00A02025 */  or      $a0, $a1, $zero            ## $a0 = 00000000
/* 01454 80B14EF4 24060007 */  addiu   $a2, $zero, 0x0007         ## $a2 = 00000007
/* 01458 80B14EF8 0C0300C5 */  jal     Gameplay_ChangeCameraStatus              
/* 0145C 80B14EFC 85C502D2 */  lh      $a1, 0x02D2($t6)           ## 000002D2
/* 01460 80B14F00 8FAF0018 */  lw      $t7, 0x0018($sp)           
/* 01464 80B14F04 8FA4001C */  lw      $a0, 0x001C($sp)           
/* 01468 80B14F08 0C0300E1 */  jal     Gameplay_ClearCamera              
/* 0146C 80B14F0C 85E502D0 */  lh      $a1, 0x02D0($t7)           ## 000002D0
/* 01470 80B14F10 8FBF0014 */  lw      $ra, 0x0014($sp)           
/* 01474 80B14F14 27BD0018 */  addiu   $sp, $sp, 0x0018           ## $sp = 00000000
/* 01478 80B14F18 03E00008 */  jr      $ra                        
/* 0147C 80B14F1C 00000000 */  nop
