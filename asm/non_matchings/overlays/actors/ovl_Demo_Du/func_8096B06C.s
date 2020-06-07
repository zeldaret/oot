glabel func_8096B06C
/* 0159C 8096B06C 27BDFFE0 */  addiu   $sp, $sp, 0xFFE0           ## $sp = FFFFFFE0
/* 015A0 8096B070 AFBF001C */  sw      $ra, 0x001C($sp)           
/* 015A4 8096B074 AFB00018 */  sw      $s0, 0x0018($sp)           
/* 015A8 8096B078 00A08025 */  or      $s0, $a1, $zero            ## $s0 = 00000000
/* 015AC 8096B07C 0C25AA5C */  jal     func_8096A970              
/* 015B0 8096B080 AFA40020 */  sw      $a0, 0x0020($sp)           
/* 015B4 8096B084 8FA40020 */  lw      $a0, 0x0020($sp)           
/* 015B8 8096B088 0C25A716 */  jal     func_80969C58              
/* 015BC 8096B08C 02002825 */  or      $a1, $s0, $zero            ## $a1 = 00000000
/* 015C0 8096B090 0C25A8F6 */  jal     func_8096A3D8              
/* 015C4 8096B094 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 015C8 8096B098 0C25A935 */  jal     func_8096A4D4              
/* 015CC 8096B09C 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 015D0 8096B0A0 8FA40020 */  lw      $a0, 0x0020($sp)           
/* 015D4 8096B0A4 0C25AAC0 */  jal     func_8096AB00              
/* 015D8 8096B0A8 02002825 */  or      $a1, $s0, $zero            ## $a1 = 00000000
/* 015DC 8096B0AC 8FBF001C */  lw      $ra, 0x001C($sp)           
/* 015E0 8096B0B0 8FB00018 */  lw      $s0, 0x0018($sp)           
/* 015E4 8096B0B4 27BD0020 */  addiu   $sp, $sp, 0x0020           ## $sp = 00000000
/* 015E8 8096B0B8 03E00008 */  jr      $ra                        
/* 015EC 8096B0BC 00000000 */  nop
