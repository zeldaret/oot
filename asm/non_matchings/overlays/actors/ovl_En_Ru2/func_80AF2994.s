.late_rodata

glabel D_80AF5280
 .word 0xC61C4000, 0x00000000, 0x00000000, 0x00000000

.text

glabel func_80AF2994
/* 00444 80AF2994 27BDFFE0 */  addiu   $sp, $sp, 0xFFE0           ## $sp = FFFFFFE0
/* 00448 80AF2998 AFA50024 */  sw      $a1, 0x0024($sp)           
/* 0044C 80AF299C AFBF001C */  sw      $ra, 0x001C($sp)           
/* 00450 80AF29A0 3C050600 */  lui     $a1, 0x0600                ## $a1 = 06000000
/* 00454 80AF29A4 AFA40020 */  sw      $a0, 0x0020($sp)           
/* 00458 80AF29A8 24A50DE8 */  addiu   $a1, $a1, 0x0DE8           ## $a1 = 06000DE8
/* 0045C 80AF29AC AFA00010 */  sw      $zero, 0x0010($sp)         
/* 00460 80AF29B0 00003025 */  or      $a2, $zero, $zero          ## $a2 = 00000000
/* 00464 80AF29B4 0C2BCA3A */  jal     func_80AF28E8              
/* 00468 80AF29B8 24070000 */  addiu   $a3, $zero, 0x0000         ## $a3 = 00000000
/* 0046C 80AF29BC 3C0180AF */  lui     $at, %hi(D_80AF5280)       ## $at = 80AF0000
/* 00470 80AF29C0 C4245280 */  lwc1    $f4, %lo(D_80AF5280)($at)  
/* 00474 80AF29C4 8FAE0020 */  lw      $t6, 0x0020($sp)           
/* 00478 80AF29C8 E5C400BC */  swc1    $f4, 0x00BC($t6)           ## 000000BC
/* 0047C 80AF29CC 8FBF001C */  lw      $ra, 0x001C($sp)           
/* 00480 80AF29D0 27BD0020 */  addiu   $sp, $sp, 0x0020           ## $sp = 00000000
/* 00484 80AF29D4 03E00008 */  jr      $ra                        
/* 00488 80AF29D8 00000000 */  nop


