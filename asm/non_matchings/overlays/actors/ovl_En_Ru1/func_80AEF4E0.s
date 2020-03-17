glabel func_80AEF4E0
/* 048D0 80AEF4E0 27BDFFE8 */  addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
/* 048D4 80AEF4E4 AFBF0014 */  sw      $ra, 0x0014($sp)           
/* 048D8 80AEF4E8 AFA40018 */  sw      $a0, 0x0018($sp)           
/* 048DC 80AEF4EC 2484014C */  addiu   $a0, $a0, 0x014C           ## $a0 = 0000014C
/* 048E0 80AEF4F0 0C0295B2 */  jal     func_800A56C8              
/* 048E4 80AEF4F4 3C0540A0 */  lui     $a1, 0x40A0                ## $a1 = 40A00000
/* 048E8 80AEF4F8 10400004 */  beq     $v0, $zero, .L80AEF50C     
/* 048EC 80AEF4FC 8FA40018 */  lw      $a0, 0x0018($sp)           
/* 048F0 80AEF500 248400E4 */  addiu   $a0, $a0, 0x00E4           ## $a0 = 000000E4
/* 048F4 80AEF504 0C01E245 */  jal     func_80078914              
/* 048F8 80AEF508 24056863 */  addiu   $a1, $zero, 0x6863         ## $a1 = 00006863
.L80AEF50C:
/* 048FC 80AEF50C 8FBF0014 */  lw      $ra, 0x0014($sp)           
/* 04900 80AEF510 27BD0018 */  addiu   $sp, $sp, 0x0018           ## $sp = 00000000
/* 04904 80AEF514 03E00008 */  jr      $ra                        
/* 04908 80AEF518 00000000 */  nop


