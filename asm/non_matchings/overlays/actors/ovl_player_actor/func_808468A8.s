glabel func_808468A8
/* 14698 808468A8 27BDFFE8 */  addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
/* 1469C 808468AC AFBF0014 */  sw      $ra, 0x0014($sp)           
/* 146A0 808468B0 3C068085 */  lui     $a2, %hi(func_8084F9A0)    ## $a2 = 80850000
/* 146A4 808468B4 AFA40018 */  sw      $a0, 0x0018($sp)           
/* 146A8 808468B8 AFA5001C */  sw      $a1, 0x001C($sp)           
/* 146AC 808468BC 24C6F9A0 */  addiu   $a2, $a2, %lo(func_8084F9A0) ## $a2 = 8084F9A0
/* 146B0 808468C0 0C20D716 */  jal     func_80835C58              
/* 146B4 808468C4 00003825 */  or      $a3, $zero, $zero          ## $a3 = 00000000
/* 146B8 808468C8 8FA40018 */  lw      $a0, 0x0018($sp)           
/* 146BC 808468CC 8FA5001C */  lw      $a1, 0x001C($sp)           
/* 146C0 808468D0 0C20CBD5 */  jal     func_80832F54              
/* 146C4 808468D4 2406009B */  addiu   $a2, $zero, 0x009B         ## $a2 = 0000009B
/* 146C8 808468D8 8FBF0014 */  lw      $ra, 0x0014($sp)           
/* 146CC 808468DC 27BD0018 */  addiu   $sp, $sp, 0x0018           ## $sp = 00000000
/* 146D0 808468E0 03E00008 */  jr      $ra                        
/* 146D4 808468E4 00000000 */  nop
