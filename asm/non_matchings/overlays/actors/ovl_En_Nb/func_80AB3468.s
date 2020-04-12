glabel func_80AB3468
/* 026D8 80AB3468 27BDFFE0 */  addiu   $sp, $sp, 0xFFE0           ## $sp = FFFFFFE0
/* 026DC 80AB346C AFBF0014 */  sw      $ra, 0x0014($sp)           
/* 026E0 80AB3470 0C2AC4A1 */  jal     func_80AB1284              
/* 026E4 80AB3474 AFA40020 */  sw      $a0, 0x0020($sp)           
/* 026E8 80AB3478 0C2AC4B3 */  jal     func_80AB12CC              
/* 026EC 80AB347C 8FA40020 */  lw      $a0, 0x0020($sp)           
/* 026F0 80AB3480 AFA2001C */  sw      $v0, 0x001C($sp)           
/* 026F4 80AB3484 0C2AC459 */  jal     func_80AB1164              
/* 026F8 80AB3488 8FA40020 */  lw      $a0, 0x0020($sp)           
/* 026FC 80AB348C 8FA40020 */  lw      $a0, 0x0020($sp)           
/* 02700 80AB3490 0C2ACCBB */  jal     func_80AB32EC              
/* 02704 80AB3494 8FA5001C */  lw      $a1, 0x001C($sp)           
/* 02708 80AB3498 8FBF0014 */  lw      $ra, 0x0014($sp)           
/* 0270C 80AB349C 27BD0020 */  addiu   $sp, $sp, 0x0020           ## $sp = 00000000
/* 02710 80AB34A0 03E00008 */  jr      $ra                        
/* 02714 80AB34A4 00000000 */  nop
