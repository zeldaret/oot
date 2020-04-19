glabel func_80B58268
/* 04EB8 80B58268 27BDFFE0 */  addiu   $sp, $sp, 0xFFE0           ## $sp = FFFFFFE0
/* 04EBC 80B5826C AFBF001C */  sw      $ra, 0x001C($sp)           
/* 04EC0 80B58270 8CA31C44 */  lw      $v1, 0x1C44($a1)           ## 00001C44
/* 04EC4 80B58274 80620A78 */  lb      $v0, 0x0A78($v1)           ## 00000A78
/* 04EC8 80B58278 5C400010 */  bgtzl   $v0, .L80B582BC            
/* 04ECC 80B5827C 8FBF001C */  lw      $ra, 0x001C($sp)           
/* 04ED0 80B58280 846E0896 */  lh      $t6, 0x0896($v1)           ## 00000896
/* 04ED4 80B58284 3C050601 */  lui     $a1, 0x0601                ## $a1 = 06010000
/* 04ED8 80B58288 24A59FBC */  addiu   $a1, $a1, 0x9FBC           ## $a1 = 06009FBC
/* 04EDC 80B5828C 29C10033 */  slti    $at, $t6, 0x0033           
/* 04EE0 80B58290 10200009 */  beq     $at, $zero, .L80B582B8     
/* 04EE4 80B58294 00003025 */  or      $a2, $zero, $zero          ## $a2 = 00000000
/* 04EE8 80B58298 3C07C130 */  lui     $a3, 0xC130                ## $a3 = C1300000
/* 04EEC 80B5829C AFA00010 */  sw      $zero, 0x0010($sp)         
/* 04EF0 80B582A0 0C2D5385 */  jal     func_80B54E14              
/* 04EF4 80B582A4 AFA40020 */  sw      $a0, 0x0020($sp)           
/* 04EF8 80B582A8 8FA40020 */  lw      $a0, 0x0020($sp)           
/* 04EFC 80B582AC 240F001C */  addiu   $t7, $zero, 0x001C         ## $t7 = 0000001C
/* 04F00 80B582B0 AC8F024C */  sw      $t7, 0x024C($a0)           ## 0000024C
/* 04F04 80B582B4 A48003D0 */  sh      $zero, 0x03D0($a0)         ## 000003D0
.L80B582B8:
/* 04F08 80B582B8 8FBF001C */  lw      $ra, 0x001C($sp)           
.L80B582BC:
/* 04F0C 80B582BC 27BD0020 */  addiu   $sp, $sp, 0x0020           ## $sp = 00000000
/* 04F10 80B582C0 03E00008 */  jr      $ra                        
/* 04F14 80B582C4 00000000 */  nop
