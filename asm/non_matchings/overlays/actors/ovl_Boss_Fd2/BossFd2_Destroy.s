glabel BossFd2_Destroy
/* 00528 808D2B98 27BDFFE8 */  addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
/* 0052C 808D2B9C AFBF0014 */  sw      $ra, 0x0014($sp)           
/* 00530 808D2BA0 AFA40018 */  sw      $a0, 0x0018($sp)           
/* 00534 808D2BA4 AFA5001C */  sw      $a1, 0x001C($sp)           
/* 00538 808D2BA8 0C0295BC */  jal     func_800A56F0              
/* 0053C 808D2BAC 2484014C */  addiu   $a0, $a0, 0x014C           ## $a0 = 0000014C
/* 00540 808D2BB0 8FA50018 */  lw      $a1, 0x0018($sp)           
/* 00544 808D2BB4 8FA4001C */  lw      $a0, 0x001C($sp)           
/* 00548 808D2BB8 0C016F32 */  jal     func_8005BCC8              
/* 0054C 808D2BBC 24A5141C */  addiu   $a1, $a1, 0x141C           ## $a1 = 0000141C
/* 00550 808D2BC0 8FBF0014 */  lw      $ra, 0x0014($sp)           
/* 00554 808D2BC4 27BD0018 */  addiu   $sp, $sp, 0x0018           ## $sp = 00000000
/* 00558 808D2BC8 03E00008 */  jr      $ra                        
/* 0055C 808D2BCC 00000000 */  nop


