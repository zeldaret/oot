glabel func_80AAB8F8
/* 016A8 80AAB8F8 27BDFFE8 */  addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
/* 016AC 80AAB8FC AFBF0014 */  sw      $ra, 0x0014($sp)           
/* 016B0 80AAB900 AFA40018 */  sw      $a0, 0x0018($sp)           
/* 016B4 80AAB904 AFA5001C */  sw      $a1, 0x001C($sp)           
/* 016B8 80AAB908 8C980154 */  lw      $t8, 0x0154($a0)           ## 00000154
/* 016BC 80AAB90C 3C0E0600 */  lui     $t6, 0x0600                ## $t6 = 06000000
/* 016C0 80AAB910 25CE02C8 */  addiu   $t6, $t6, 0x02C8           ## $t6 = 060002C8
/* 016C4 80AAB914 15D80006 */  bne     $t6, $t8, .L80AAB930       
/* 016C8 80AAB918 00807825 */  or      $t7, $a0, $zero            ## $t7 = 00000000
/* 016CC 80AAB91C 00A02025 */  or      $a0, $a1, $zero            ## $a0 = 00000000
/* 016D0 80AAB920 25E50214 */  addiu   $a1, $t7, 0x0214           ## $a1 = 00000214
/* 016D4 80AAB924 25E60236 */  addiu   $a2, $t7, 0x0236           ## $a2 = 00000236
/* 016D8 80AAB928 0C00D3D5 */  jal     func_80034F54              
/* 016DC 80AAB92C 24070011 */  addiu   $a3, $zero, 0x0011         ## $a3 = 00000011
.L80AAB930:
/* 016E0 80AAB930 0C2AAA4F */  jal     func_80AAA93C              
/* 016E4 80AAB934 8FA40018 */  lw      $a0, 0x0018($sp)           
/* 016E8 80AAB938 8FBF0014 */  lw      $ra, 0x0014($sp)           
/* 016EC 80AAB93C 27BD0018 */  addiu   $sp, $sp, 0x0018           ## $sp = 00000000
/* 016F0 80AAB940 03E00008 */  jr      $ra                        
/* 016F4 80AAB944 00000000 */  nop


