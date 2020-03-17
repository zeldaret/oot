glabel func_808C3094
/* 01F04 808C3094 27BDFFE0 */  addiu   $sp, $sp, 0xFFE0           ## $sp = FFFFFFE0
/* 01F08 808C3098 AFA40020 */  sw      $a0, 0x0020($sp)           
/* 01F0C 808C309C AFBF0014 */  sw      $ra, 0x0014($sp)           
/* 01F10 808C30A0 2484014C */  addiu   $a0, $a0, 0x014C           ## $a0 = 0000014C
/* 01F14 808C30A4 AFA50024 */  sw      $a1, 0x0024($sp)           
/* 01F18 808C30A8 0C02927F */  jal     SkelAnime_FrameUpdateMatrix
              
/* 01F1C 808C30AC AFA40018 */  sw      $a0, 0x0018($sp)           
/* 01F20 808C30B0 3C040601 */  lui     $a0, 0x0601                ## $a0 = 06010000
/* 01F24 808C30B4 0C028800 */  jal     SkelAnime_GetFrameCount
              
/* 01F28 808C30B8 24849D10 */  addiu   $a0, $a0, 0x9D10           ## $a0 = 06009D10
/* 01F2C 808C30BC 44822000 */  mtc1    $v0, $f4                   ## $f4 = 0.00
/* 01F30 808C30C0 8FA40018 */  lw      $a0, 0x0018($sp)           
/* 01F34 808C30C4 46802120 */  cvt.s.w $f4, $f4                   
/* 01F38 808C30C8 44052000 */  mfc1    $a1, $f4                   
/* 01F3C 808C30CC 0C0295B2 */  jal     func_800A56C8              
/* 01F40 808C30D0 00000000 */  nop
/* 01F44 808C30D4 50400004 */  beql    $v0, $zero, .L808C30E8     
/* 01F48 808C30D8 8FBF0014 */  lw      $ra, 0x0014($sp)           
/* 01F4C 808C30DC 0C230A90 */  jal     func_808C2A40              
/* 01F50 808C30E0 8FA40020 */  lw      $a0, 0x0020($sp)           
/* 01F54 808C30E4 8FBF0014 */  lw      $ra, 0x0014($sp)           
.L808C30E8:
/* 01F58 808C30E8 27BD0020 */  addiu   $sp, $sp, 0x0020           ## $sp = 00000000
/* 01F5C 808C30EC 03E00008 */  jr      $ra                        
/* 01F60 808C30F0 00000000 */  nop


