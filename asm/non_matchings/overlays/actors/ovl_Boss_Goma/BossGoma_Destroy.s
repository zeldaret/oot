glabel BossGoma_Destroy
/* 004F0 80915F00 27BDFFE8 */  addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
/* 004F4 80915F04 AFBF0014 */  sw      $ra, 0x0014($sp)           
/* 004F8 80915F08 AFA40018 */  sw      $a0, 0x0018($sp)           
/* 004FC 80915F0C AFA5001C */  sw      $a1, 0x001C($sp)           
/* 00500 80915F10 0C0295BC */  jal     func_800A56F0              
/* 00504 80915F14 2484014C */  addiu   $a0, $a0, 0x014C           ## $a0 = 0000014C
/* 00508 80915F18 8FA50018 */  lw      $a1, 0x0018($sp)           
/* 0050C 80915F1C 8FA4001C */  lw      $a0, 0x001C($sp)           
/* 00510 80915F20 0C016F32 */  jal     func_8005BCC8              
/* 00514 80915F24 24A507BC */  addiu   $a1, $a1, 0x07BC           ## $a1 = 000007BC
/* 00518 80915F28 8FBF0014 */  lw      $ra, 0x0014($sp)           
/* 0051C 80915F2C 27BD0018 */  addiu   $sp, $sp, 0x0018           ## $sp = 00000000
/* 00520 80915F30 03E00008 */  jr      $ra                        
/* 00524 80915F34 00000000 */  nop


