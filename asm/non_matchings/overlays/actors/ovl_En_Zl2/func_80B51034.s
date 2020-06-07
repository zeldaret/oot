glabel func_80B51034
/* 026A4 80B51034 27BDFFE8 */  addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
/* 026A8 80B51038 AFBF0014 */  sw      $ra, 0x0014($sp)           
/* 026AC 80B5103C AFA40018 */  sw      $a0, 0x0018($sp)           
/* 026B0 80B51040 0C2D3F33 */  jal     func_80B4FCCC              
/* 026B4 80B51044 AFA5001C */  sw      $a1, 0x001C($sp)           
/* 026B8 80B51048 0C2D3F84 */  jal     func_80B4FE10              
/* 026BC 80B5104C 8FA4001C */  lw      $a0, 0x001C($sp)           
/* 026C0 80B51050 8FA40018 */  lw      $a0, 0x0018($sp)           
/* 026C4 80B51054 0C2D3B4B */  jal     func_80B4ED2C              
/* 026C8 80B51058 8FA5001C */  lw      $a1, 0x001C($sp)           
/* 026CC 80B5105C 0C2D3B5D */  jal     func_80B4ED74              
/* 026D0 80B51060 8FA40018 */  lw      $a0, 0x0018($sp)           
/* 026D4 80B51064 8FA40018 */  lw      $a0, 0x0018($sp)           
/* 026D8 80B51068 0C2D4281 */  jal     func_80B50A04              
/* 026DC 80B5106C 8FA5001C */  lw      $a1, 0x001C($sp)           
/* 026E0 80B51070 8FBF0014 */  lw      $ra, 0x0014($sp)           
/* 026E4 80B51074 27BD0018 */  addiu   $sp, $sp, 0x0018           ## $sp = 00000000
/* 026E8 80B51078 03E00008 */  jr      $ra                        
/* 026EC 80B5107C 00000000 */  nop
