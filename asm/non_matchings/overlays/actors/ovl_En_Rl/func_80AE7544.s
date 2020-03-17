glabel func_80AE7544
/* 00294 80AE7544 27BDFFD8 */  addiu   $sp, $sp, 0xFFD8           ## $sp = FFFFFFD8
/* 00298 80AE7548 AFA40028 */  sw      $a0, 0x0028($sp)           
/* 0029C 80AE754C AFA5002C */  sw      $a1, 0x002C($sp)           
/* 002A0 80AE7550 00A02025 */  or      $a0, $a1, $zero            ## $a0 = 00000000
/* 002A4 80AE7554 8FA50028 */  lw      $a1, 0x0028($sp)           
/* 002A8 80AE7558 AFBF0024 */  sw      $ra, 0x0024($sp)           
/* 002AC 80AE755C 3C060600 */  lui     $a2, 0x0600                ## $a2 = 06000000
/* 002B0 80AE7560 3C070600 */  lui     $a3, 0x0600                ## $a3 = 06000000
/* 002B4 80AE7564 24E70A3C */  addiu   $a3, $a3, 0x0A3C           ## $a3 = 06000A3C
/* 002B8 80AE7568 24C67B38 */  addiu   $a2, $a2, 0x7B38           ## $a2 = 06007B38
/* 002BC 80AE756C AFA00010 */  sw      $zero, 0x0010($sp)         
/* 002C0 80AE7570 AFA00014 */  sw      $zero, 0x0014($sp)         
/* 002C4 80AE7574 AFA00018 */  sw      $zero, 0x0018($sp)         
/* 002C8 80AE7578 0C0291BE */  jal     func_800A46F8              
/* 002CC 80AE757C 24A5014C */  addiu   $a1, $a1, 0x014C           ## $a1 = 0000014C
/* 002D0 80AE7580 8FBF0024 */  lw      $ra, 0x0024($sp)           
/* 002D4 80AE7584 27BD0028 */  addiu   $sp, $sp, 0x0028           ## $sp = 00000000
/* 002D8 80AE7588 03E00008 */  jr      $ra                        
/* 002DC 80AE758C 00000000 */  nop


