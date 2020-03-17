glabel func_8098F50C
/* 010AC 8098F50C 27BDFFE8 */  addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
/* 010B0 8098F510 AFBF0014 */  sw      $ra, 0x0014($sp)           
/* 010B4 8098F514 AFA40018 */  sw      $a0, 0x0018($sp)           
/* 010B8 8098F518 0C2639BB */  jal     func_8098E6EC              
/* 010BC 8098F51C 24060004 */  addiu   $a2, $zero, 0x0004         ## $a2 = 00000004
/* 010C0 8098F520 8FA40018 */  lw      $a0, 0x0018($sp)           
/* 010C4 8098F524 240E000C */  addiu   $t6, $zero, 0x000C         ## $t6 = 0000000C
/* 010C8 8098F528 240F0002 */  addiu   $t7, $zero, 0x0002         ## $t7 = 00000002
/* 010CC 8098F52C AC8E0198 */  sw      $t6, 0x0198($a0)           ## 00000198
/* 010D0 8098F530 AC8F019C */  sw      $t7, 0x019C($a0)           ## 0000019C
/* 010D4 8098F534 8FBF0014 */  lw      $ra, 0x0014($sp)           
/* 010D8 8098F538 27BD0018 */  addiu   $sp, $sp, 0x0018           ## $sp = 00000000
/* 010DC 8098F53C 03E00008 */  jr      $ra                        
/* 010E0 8098F540 00000000 */  nop


