glabel func_8096F454
/* 01FA4 8096F454 27BDFFD8 */  addiu   $sp, $sp, 0xFFD8           ## $sp = FFFFFFD8
/* 01FA8 8096F458 AFBF0024 */  sw      $ra, 0x0024($sp)           
/* 01FAC 8096F45C AFB00020 */  sw      $s0, 0x0020($sp)           
/* 01FB0 8096F460 00808025 */  or      $s0, $a0, $zero            ## $s0 = 00000000
/* 01FB4 8096F464 0C25B743 */  jal     func_8096DD0C              
/* 01FB8 8096F468 AFA5002C */  sw      $a1, 0x002C($sp)           
/* 01FBC 8096F46C 3C060600 */  lui     $a2, 0x0600                ## $a2 = 06000000
/* 01FC0 8096F470 24C67FB8 */  addiu   $a2, $a2, 0x7FB8           ## $a2 = 06007FB8
/* 01FC4 8096F474 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 01FC8 8096F478 0C25B5CA */  jal     func_8096D728              
/* 01FCC 8096F47C 8FA5002C */  lw      $a1, 0x002C($sp)           
/* 01FD0 8096F480 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 01FD4 8096F484 0C25B76F */  jal     func_8096DDBC              
/* 01FD8 8096F488 8FA5002C */  lw      $a1, 0x002C($sp)           
/* 01FDC 8096F48C 3C050601 */  lui     $a1, 0x0601                ## $a1 = 06010000
/* 01FE0 8096F490 24A595DC */  addiu   $a1, $a1, 0x95DC           ## $a1 = 060095DC
/* 01FE4 8096F494 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 01FE8 8096F498 00003025 */  or      $a2, $zero, $zero          ## $a2 = 00000000
/* 01FEC 8096F49C 24070000 */  addiu   $a3, $zero, 0x0000         ## $a3 = 00000000
/* 01FF0 8096F4A0 0C25B5E7 */  jal     func_8096D79C              
/* 01FF4 8096F4A4 AFA00010 */  sw      $zero, 0x0010($sp)         
/* 01FF8 8096F4A8 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 01FFC 8096F4AC 0C25B575 */  jal     func_8096D5D4              
/* 02000 8096F4B0 8FA5002C */  lw      $a1, 0x002C($sp)           
/* 02004 8096F4B4 3C068003 */  lui     $a2, %hi(ActorShadow_DrawFunc_Circle)
/* 02008 8096F4B8 24C6B5EC */  addiu   $a2, %lo(ActorShadow_DrawFunc_Circle)
/* 0200C 8096F4BC 260400B4 */  addiu   $a0, $s0, 0x00B4           ## $a0 = 000000B4
/* 02010 8096F4C0 24050000 */  addiu   $a1, $zero, 0x0000         ## $a1 = 00000000
/* 02014 8096F4C4 0C00AC78 */  jal     ActorShape_Init
              
/* 02018 8096F4C8 3C0741F0 */  lui     $a3, 0x41F0                ## $a3 = 41F00000
/* 0201C 8096F4CC 240E0013 */  addiu   $t6, $zero, 0x0013         ## $t6 = 00000013
/* 02020 8096F4D0 240F000F */  addiu   $t7, $zero, 0x000F         ## $t7 = 0000000F
/* 02024 8096F4D4 AE0E0194 */  sw      $t6, 0x0194($s0)           ## 00000194
/* 02028 8096F4D8 AE0F0198 */  sw      $t7, 0x0198($s0)           ## 00000198
/* 0202C 8096F4DC 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 02030 8096F4E0 0C25B5C5 */  jal     func_8096D714              
/* 02034 8096F4E4 24050003 */  addiu   $a1, $zero, 0x0003         ## $a1 = 00000003
/* 02038 8096F4E8 8FBF0024 */  lw      $ra, 0x0024($sp)           
/* 0203C 8096F4EC 8FB00020 */  lw      $s0, 0x0020($sp)           
/* 02040 8096F4F0 27BD0028 */  addiu   $sp, $sp, 0x0028           ## $sp = 00000000
/* 02044 8096F4F4 03E00008 */  jr      $ra                        
/* 02048 8096F4F8 00000000 */  nop
