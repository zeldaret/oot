glabel func_80B58214
/* 04E64 80B58214 27BDFFE0 */  addiu   $sp, $sp, 0xFFE0           ## $sp = FFFFFFE0
/* 04E68 80B58218 AFBF001C */  sw      $ra, 0x001C($sp)           
/* 04E6C 80B5821C 0C2D5CF2 */  jal     func_80B573C8              
/* 04E70 80B58220 AFA40020 */  sw      $a0, 0x0020($sp)           
/* 04E74 80B58224 1040000C */  beq     $v0, $zero, .L80B58258     
/* 04E78 80B58228 8FA40020 */  lw      $a0, 0x0020($sp)           
/* 04E7C 80B5822C 3C050601 */  lui     $a1, 0x0601                ## $a1 = 06010000
/* 04E80 80B58230 24A59FBC */  addiu   $a1, $a1, 0x9FBC           ## $a1 = 06009FBC
/* 04E84 80B58234 00003025 */  or      $a2, $zero, $zero          ## $a2 = 00000000
/* 04E88 80B58238 3C07C130 */  lui     $a3, 0xC130                ## $a3 = C1300000
/* 04E8C 80B5823C 0C2D5385 */  jal     func_80B54E14              
/* 04E90 80B58240 AFA00010 */  sw      $zero, 0x0010($sp)         
/* 04E94 80B58244 8FAF0020 */  lw      $t7, 0x0020($sp)           
/* 04E98 80B58248 240E001C */  addiu   $t6, $zero, 0x001C         ## $t6 = 0000001C
/* 04E9C 80B5824C ADEE024C */  sw      $t6, 0x024C($t7)           ## 0000024C
/* 04EA0 80B58250 8FB80020 */  lw      $t8, 0x0020($sp)           
/* 04EA4 80B58254 A70003D0 */  sh      $zero, 0x03D0($t8)         ## 000003D0
.L80B58258:
/* 04EA8 80B58258 8FBF001C */  lw      $ra, 0x001C($sp)           
/* 04EAC 80B5825C 27BD0020 */  addiu   $sp, $sp, 0x0020           ## $sp = 00000000
/* 04EB0 80B58260 03E00008 */  jr      $ra                        
/* 04EB4 80B58264 00000000 */  nop
