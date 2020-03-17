glabel func_80B002A4
/* 01FF4 80B002A4 27BDFFE8 */  addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
/* 01FF8 80B002A8 AFA40018 */  sw      $a0, 0x0018($sp)           
/* 01FFC 80B002AC AFBF0014 */  sw      $ra, 0x0014($sp)           
/* 02000 80B002B0 00A02025 */  or      $a0, $a1, $zero            ## $a0 = 00000000
/* 02004 80B002B4 0C042DC8 */  jal     func_8010B720              
/* 02008 80B002B8 2405101E */  addiu   $a1, $zero, 0x101E         ## $a1 = 0000101E
/* 0200C 80B002BC 8FA40018 */  lw      $a0, 0x0018($sp)           
/* 02010 80B002C0 0C2BF8CE */  jal     func_80AFE338              
/* 02014 80B002C4 24050015 */  addiu   $a1, $zero, 0x0015         ## $a1 = 00000015
/* 02018 80B002C8 8FBF0014 */  lw      $ra, 0x0014($sp)           
/* 0201C 80B002CC 27BD0018 */  addiu   $sp, $sp, 0x0018           ## $sp = 00000000
/* 02020 80B002D0 03E00008 */  jr      $ra                        
/* 02024 80B002D4 00000000 */  nop


