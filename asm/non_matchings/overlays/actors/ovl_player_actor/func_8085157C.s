glabel func_8085157C
/* 1F36C 8085157C 27BDFFE8 */  addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
/* 1F370 80851580 AFBF0014 */  sw      $ra, 0x0014($sp)           
/* 1F374 80851584 AFA5001C */  sw      $a1, 0x001C($sp)           
/* 1F378 80851588 AFA60020 */  sw      $a2, 0x0020($sp)           
/* 1F37C 8085158C 0C028EF0 */  jal     func_800A3BC0              
/* 1F380 80851590 24A501B4 */  addiu   $a1, $a1, 0x01B4           ## $a1 = 000001B4
/* 1F384 80851594 8FBF0014 */  lw      $ra, 0x0014($sp)           
/* 1F388 80851598 27BD0018 */  addiu   $sp, $sp, 0x0018           ## $sp = 00000000
/* 1F38C 8085159C 03E00008 */  jr      $ra                        
/* 1F390 808515A0 00000000 */  nop


