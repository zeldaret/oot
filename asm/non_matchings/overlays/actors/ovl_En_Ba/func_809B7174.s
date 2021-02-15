glabel func_809B7174
/* 00E24 809B7174 27BDFFE0 */  addiu   $sp, $sp, 0xFFE0           ## $sp = FFFFFFE0
/* 00E28 809B7178 AFBF001C */  sw      $ra, 0x001C($sp)           
/* 00E2C 809B717C 3C014120 */  lui     $at, 0x4120                ## $at = 41200000
/* 00E30 809B7180 44812000 */  mtc1    $at, $f4                   ## $f4 = 10.00
/* 00E34 809B7184 240E0001 */  addiu   $t6, $zero, 0x0001         ## $t6 = 00000001
/* 00E38 809B7188 240F05DC */  addiu   $t7, $zero, 0x05DC         ## $t7 = 000005DC
/* 00E3C 809B718C 24180014 */  addiu   $t8, $zero, 0x0014         ## $t8 = 00000014
/* 00E40 809B7190 241900FF */  addiu   $t9, $zero, 0x00FF         ## $t9 = 000000FF
/* 00E44 809B7194 AC8E014C */  sw      $t6, 0x014C($a0)           ## 0000014C
/* 00E48 809B7198 A48F031C */  sh      $t7, 0x031C($a0)           ## 0000031C
/* 00E4C 809B719C A4980318 */  sh      $t8, 0x0318($a0)           ## 00000318
/* 00E50 809B71A0 A09900AE */  sb      $t9, 0x00AE($a0)           ## 000000AE
/* 00E54 809B71A4 E4840068 */  swc1    $f4, 0x0068($a0)           ## 00000068
/* 00E58 809B71A8 AFA40020 */  sw      $a0, 0x0020($sp)           
/* 00E5C 809B71AC 0C00BE0A */  jal     Audio_PlayActorSound2
              
/* 00E60 809B71B0 2405395A */  addiu   $a1, $zero, 0x395A         ## $a1 = 0000395A
/* 00E64 809B71B4 2408000C */  addiu   $t0, $zero, 0x000C         ## $t0 = 0000000C
/* 00E68 809B71B8 8FA40020 */  lw      $a0, 0x0020($sp)           
/* 00E6C 809B71BC AFA80010 */  sw      $t0, 0x0010($sp)           
/* 00E70 809B71C0 24054000 */  addiu   $a1, $zero, 0x4000         ## $a1 = 00004000
/* 00E74 809B71C4 240600FF */  addiu   $a2, $zero, 0x00FF         ## $a2 = 000000FF
/* 00E78 809B71C8 0C00D09B */  jal     Actor_SetColorFilter              
/* 00E7C 809B71CC 00003825 */  or      $a3, $zero, $zero          ## $a3 = 00000000
/* 00E80 809B71D0 3C05809B */  lui     $a1, %hi(func_809B71F0)    ## $a1 = 809B0000
/* 00E84 809B71D4 8FA40020 */  lw      $a0, 0x0020($sp)           
/* 00E88 809B71D8 0C26D8D4 */  jal     func_809B6350              
/* 00E8C 809B71DC 24A571F0 */  addiu   $a1, $a1, %lo(func_809B71F0) ## $a1 = 809B71F0
/* 00E90 809B71E0 8FBF001C */  lw      $ra, 0x001C($sp)           
/* 00E94 809B71E4 27BD0020 */  addiu   $sp, $sp, 0x0020           ## $sp = 00000000
/* 00E98 809B71E8 03E00008 */  jr      $ra                        
/* 00E9C 809B71EC 00000000 */  nop
