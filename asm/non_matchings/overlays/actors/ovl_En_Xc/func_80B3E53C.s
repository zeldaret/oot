glabel func_80B3E53C
/* 0235C 80B3E53C 27BDFFE8 */  addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
/* 02360 80B3E540 AFBF0014 */  sw      $ra, 0x0014($sp)           
/* 02364 80B3E544 AFA40018 */  sw      $a0, 0x0018($sp)           
/* 02368 80B3E548 0C2CF12C */  jal     func_80B3C4B0              
/* 0236C 80B3E54C AFA5001C */  sw      $a1, 0x001C($sp)           
/* 02370 80B3E550 8FA40018 */  lw      $a0, 0x0018($sp)           
/* 02374 80B3E554 0C2CF11A */  jal     func_80B3C468              
/* 02378 80B3E558 8FA5001C */  lw      $a1, 0x001C($sp)           
/* 0237C 80B3E55C 0C2CF0C7 */  jal     func_80B3C31C              
/* 02380 80B3E560 8FA40018 */  lw      $a0, 0x0018($sp)           
/* 02384 80B3E564 8FA40018 */  lw      $a0, 0x0018($sp)           
/* 02388 80B3E568 0C2CF74F */  jal     func_80B3DD3C              
/* 0238C 80B3E56C 8FA5001C */  lw      $a1, 0x001C($sp)           
/* 02390 80B3E570 8FBF0014 */  lw      $ra, 0x0014($sp)           
/* 02394 80B3E574 27BD0018 */  addiu   $sp, $sp, 0x0018           ## $sp = 00000000
/* 02398 80B3E578 03E00008 */  jr      $ra                        
/* 0239C 80B3E57C 00000000 */  nop
