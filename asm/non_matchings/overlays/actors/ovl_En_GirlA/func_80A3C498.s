glabel func_80A3C498
/* 01D48 80A3C498 27BDFFE8 */  addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
/* 01D4C 80A3C49C AFBF0014 */  sw      $ra, 0x0014($sp)           
/* 01D50 80A3C4A0 AFA60020 */  sw      $a2, 0x0020($sp)           
/* 01D54 80A3C4A4 AFA40018 */  sw      $a0, 0x0018($sp)           
/* 01D58 80A3C4A8 AFA5001C */  sw      $a1, 0x001C($sp)           
/* 01D5C 80A3C4AC 0C00BAF3 */  jal     func_8002EBCC              
/* 01D60 80A3C4B0 00003025 */  or      $a2, $zero, $zero          ## $a2 = 00000000
/* 01D64 80A3C4B4 8FA40018 */  lw      $a0, 0x0018($sp)           
/* 01D68 80A3C4B8 8FA5001C */  lw      $a1, 0x001C($sp)           
/* 01D6C 80A3C4BC 0C00BB60 */  jal     func_8002ED80              
/* 01D70 80A3C4C0 00003025 */  or      $a2, $zero, $zero          ## $a2 = 00000000
/* 01D74 80A3C4C4 8FBF0014 */  lw      $ra, 0x0014($sp)           
/* 01D78 80A3C4C8 27BD0018 */  addiu   $sp, $sp, 0x0018           ## $sp = 00000000
/* 01D7C 80A3C4CC 03E00008 */  jr      $ra                        
/* 01D80 80A3C4D0 00000000 */  nop
