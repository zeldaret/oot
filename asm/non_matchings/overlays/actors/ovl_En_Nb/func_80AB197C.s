glabel func_80AB197C
/* 00BEC 80AB197C 27BDFFE0 */  addiu   $sp, $sp, 0xFFE0           ## $sp = FFFFFFE0
/* 00BF0 80AB1980 AFBF0014 */  sw      $ra, 0x0014($sp)           
/* 00BF4 80AB1984 0C2AC4A1 */  jal     func_80AB1284              
/* 00BF8 80AB1988 AFA40020 */  sw      $a0, 0x0020($sp)           
/* 00BFC 80AB198C 0C2AC4B3 */  jal     func_80AB12CC              
/* 00C00 80AB1990 8FA40020 */  lw      $a0, 0x0020($sp)           
/* 00C04 80AB1994 AFA2001C */  sw      $v0, 0x001C($sp)           
/* 00C08 80AB1998 0C2AC459 */  jal     func_80AB1164              
/* 00C0C 80AB199C 8FA40020 */  lw      $a0, 0x0020($sp)           
/* 00C10 80AB19A0 8FA40020 */  lw      $a0, 0x0020($sp)           
/* 00C14 80AB19A4 0C2AC603 */  jal     func_80AB180C              
/* 00C18 80AB19A8 8FA5001C */  lw      $a1, 0x001C($sp)           
/* 00C1C 80AB19AC 8FBF0014 */  lw      $ra, 0x0014($sp)           
/* 00C20 80AB19B0 27BD0020 */  addiu   $sp, $sp, 0x0020           ## $sp = 00000000
/* 00C24 80AB19B4 03E00008 */  jr      $ra                        
/* 00C28 80AB19B8 00000000 */  nop
