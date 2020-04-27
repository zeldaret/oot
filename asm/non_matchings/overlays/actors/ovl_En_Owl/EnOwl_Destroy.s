glabel EnOwl_Destroy
/* 00470 80ACA390 27BDFFE8 */  addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
/* 00474 80ACA394 00803025 */  or      $a2, $a0, $zero            ## $a2 = 00000000
/* 00478 80ACA398 AFBF0014 */  sw      $ra, 0x0014($sp)           
/* 0047C 80ACA39C 00A02025 */  or      $a0, $a1, $zero            ## $a0 = 00000000
/* 00480 80ACA3A0 0C0170EB */  jal     Collider_DestroyCylinder
              
/* 00484 80ACA3A4 24C5014C */  addiu   $a1, $a2, 0x014C           ## $a1 = 0000014C
/* 00488 80ACA3A8 8FBF0014 */  lw      $ra, 0x0014($sp)           
/* 0048C 80ACA3AC 27BD0018 */  addiu   $sp, $sp, 0x0018           ## $sp = 00000000
/* 00490 80ACA3B0 03E00008 */  jr      $ra                        
/* 00494 80ACA3B4 00000000 */  nop
