glabel EnRl_Destroy
/* 00000 80AE72B0 27BDFFE8 */  addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
/* 00004 80AE72B4 AFBF0014 */  sw      $ra, 0x0014($sp)           
/* 00008 80AE72B8 0C0295BC */  jal     func_800A56F0              
/* 0000C 80AE72BC 2484014C */  addiu   $a0, $a0, 0x014C           ## $a0 = 0000014C
/* 00010 80AE72C0 8FBF0014 */  lw      $ra, 0x0014($sp)           
/* 00014 80AE72C4 27BD0018 */  addiu   $sp, $sp, 0x0018           ## $sp = 00000000
/* 00018 80AE72C8 03E00008 */  jr      $ra                        
/* 0001C 80AE72CC 00000000 */  nop


