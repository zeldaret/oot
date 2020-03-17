glabel func_80AEF080
/* 04470 80AEF080 27BDFFE8 */  addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
/* 04474 80AEF084 AFBF0014 */  sw      $ra, 0x0014($sp)           
/* 04478 80AEF088 AFA40018 */  sw      $a0, 0x0018($sp)           
/* 0447C 80AEF08C 2484014C */  addiu   $a0, $a0, 0x014C           ## $a0 = 0000014C
/* 04480 80AEF090 0C0295B2 */  jal     func_800A56C8              
/* 04484 80AEF094 3C054130 */  lui     $a1, 0x4130                ## $a1 = 41300000
/* 04488 80AEF098 10400004 */  beq     $v0, $zero, .L80AEF0AC     
/* 0448C 80AEF09C 8FA40018 */  lw      $a0, 0x0018($sp)           
/* 04490 80AEF0A0 248400E4 */  addiu   $a0, $a0, 0x00E4           ## $a0 = 000000E4
/* 04494 80AEF0A4 0C01E245 */  jal     func_80078914              
/* 04498 80AEF0A8 240528AC */  addiu   $a1, $zero, 0x28AC         ## $a1 = 000028AC
.L80AEF0AC:
/* 0449C 80AEF0AC 8FBF0014 */  lw      $ra, 0x0014($sp)           
/* 044A0 80AEF0B0 27BD0018 */  addiu   $sp, $sp, 0x0018           ## $sp = 00000000
/* 044A4 80AEF0B4 03E00008 */  jr      $ra                        
/* 044A8 80AEF0B8 00000000 */  nop


