glabel func_80AB3428
/* 02698 80AB3428 27BDFFE8 */  addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
/* 0269C 80AB342C AFBF0014 */  sw      $ra, 0x0014($sp)           
/* 026A0 80AB3430 AFA40018 */  sw      $a0, 0x0018($sp)           
/* 026A4 80AB3434 0C2AC4A1 */  jal     func_80AB1284              
/* 026A8 80AB3438 AFA5001C */  sw      $a1, 0x001C($sp)           
/* 026AC 80AB343C 0C2AC4B3 */  jal     func_80AB12CC              
/* 026B0 80AB3440 8FA40018 */  lw      $a0, 0x0018($sp)           
/* 026B4 80AB3444 0C2AC459 */  jal     func_80AB1164              
/* 026B8 80AB3448 8FA40018 */  lw      $a0, 0x0018($sp)           
/* 026BC 80AB344C 8FA40018 */  lw      $a0, 0x0018($sp)           
/* 026C0 80AB3450 0C2ACCC8 */  jal     func_80AB3320              
/* 026C4 80AB3454 8FA5001C */  lw      $a1, 0x001C($sp)           
/* 026C8 80AB3458 8FBF0014 */  lw      $ra, 0x0014($sp)           
/* 026CC 80AB345C 27BD0018 */  addiu   $sp, $sp, 0x0018           ## $sp = 00000000
/* 026D0 80AB3460 03E00008 */  jr      $ra                        
/* 026D4 80AB3464 00000000 */  nop
