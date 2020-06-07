glabel BgGndDarkmeiro_Destroy
/* 002B8 80878EE8 27BDFFE8 */  addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
/* 002BC 80878EEC AFBF0014 */  sw      $ra, 0x0014($sp)           
/* 002C0 80878EF0 AFA40018 */  sw      $a0, 0x0018($sp)           
/* 002C4 80878EF4 848F001C */  lh      $t7, 0x001C($a0)           ## 0000001C
/* 002C8 80878EF8 24010001 */  addiu   $at, $zero, 0x0001         ## $at = 00000001
/* 002CC 80878EFC 00A02025 */  or      $a0, $a1, $zero            ## $a0 = 00000000
/* 002D0 80878F00 31F800FF */  andi    $t8, $t7, 0x00FF           ## $t8 = 00000000
/* 002D4 80878F04 17010004 */  bne     $t8, $at, .L80878F18       
/* 002D8 80878F08 8FB90018 */  lw      $t9, 0x0018($sp)           
/* 002DC 80878F0C 24A50810 */  addiu   $a1, $a1, 0x0810           ## $a1 = 00000810
/* 002E0 80878F10 0C00FB56 */  jal     DynaPolyInfo_Free
              ## DynaPolyInfo_delReserve
/* 002E4 80878F14 8F26014C */  lw      $a2, 0x014C($t9)           ## 0000014C
.L80878F18:
/* 002E8 80878F18 8FBF0014 */  lw      $ra, 0x0014($sp)           
/* 002EC 80878F1C 27BD0018 */  addiu   $sp, $sp, 0x0018           ## $sp = 00000000
/* 002F0 80878F20 03E00008 */  jr      $ra                        
/* 002F4 80878F24 00000000 */  nop
