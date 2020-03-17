glabel func_80AF3BC8
/* 01678 80AF3BC8 27BDFFE8 */  addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
/* 0167C 80AF3BCC AFBF0014 */  sw      $ra, 0x0014($sp)           
/* 01680 80AF3BD0 AFA40018 */  sw      $a0, 0x0018($sp)           
/* 01684 80AF3BD4 0C2BCE1E */  jal     func_80AF3878              
/* 01688 80AF3BD8 AFA5001C */  sw      $a1, 0x001C($sp)           
/* 0168C 80AF3BDC 8FA40018 */  lw      $a0, 0x0018($sp)           
/* 01690 80AF3BE0 0C00B56E */  jal     Actor_SetHeight
              
/* 01694 80AF3BE4 3C054248 */  lui     $a1, 0x4248                ## $a1 = 42480000
/* 01698 80AF3BE8 8FA40018 */  lw      $a0, 0x0018($sp)           
/* 0169C 80AF3BEC 0C2BC967 */  jal     func_80AF259C              
/* 016A0 80AF3BF0 8FA5001C */  lw      $a1, 0x001C($sp)           
/* 016A4 80AF3BF4 8FBF0014 */  lw      $ra, 0x0014($sp)           
/* 016A8 80AF3BF8 27BD0018 */  addiu   $sp, $sp, 0x0018           ## $sp = 00000000
/* 016AC 80AF3BFC 03E00008 */  jr      $ra                        
/* 016B0 80AF3C00 00000000 */  nop


