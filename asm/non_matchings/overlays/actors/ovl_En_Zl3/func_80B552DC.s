glabel func_80B552DC
/* 01F2C 80B552DC 27BDFFE0 */  addiu   $sp, $sp, 0xFFE0           ## $sp = FFFFFFE0
/* 01F30 80B552E0 AFBF001C */  sw      $ra, 0x001C($sp)           
/* 01F34 80B552E4 3C050601 */  lui     $a1, 0x0601                ## $a1 = 06010000
/* 01F38 80B552E8 AFA40020 */  sw      $a0, 0x0020($sp)           
/* 01F3C 80B552EC 24A5A598 */  addiu   $a1, $a1, 0xA598           ## $a1 = 0600A598
/* 01F40 80B552F0 AFA00010 */  sw      $zero, 0x0010($sp)         
/* 01F44 80B552F4 24060002 */  addiu   $a2, $zero, 0x0002         ## $a2 = 00000002
/* 01F48 80B552F8 0C2D5385 */  jal     func_80B54E14              
/* 01F4C 80B552FC 3C07C100 */  lui     $a3, 0xC100                ## $a3 = C1000000
/* 01F50 80B55300 0C2D53BD */  jal     func_80B54EF4              
/* 01F54 80B55304 8FA40020 */  lw      $a0, 0x0020($sp)           
/* 01F58 80B55308 8FA40020 */  lw      $a0, 0x0020($sp)           
/* 01F5C 80B5530C 0C2D4D5A */  jal     func_80B53568              
/* 01F60 80B55310 24050002 */  addiu   $a1, $zero, 0x0002         ## $a1 = 00000002
/* 01F64 80B55314 8FAF0020 */  lw      $t7, 0x0020($sp)           
/* 01F68 80B55318 240E0004 */  addiu   $t6, $zero, 0x0004         ## $t6 = 00000004
/* 01F6C 80B5531C 0C2D4D1A */  jal     func_80B53468              
/* 01F70 80B55320 ADEE024C */  sw      $t6, 0x024C($t7)           ## 0000024C
/* 01F74 80B55324 8FBF001C */  lw      $ra, 0x001C($sp)           
/* 01F78 80B55328 27BD0020 */  addiu   $sp, $sp, 0x0020           ## $sp = 00000000
/* 01F7C 80B5532C 03E00008 */  jr      $ra                        
/* 01F80 80B55330 00000000 */  nop


