glabel func_8096FB48
/* 02698 8096FB48 27BDFFD8 */  addiu   $sp, $sp, 0xFFD8           ## $sp = FFFFFFD8
/* 0269C 8096FB4C AFBF0024 */  sw      $ra, 0x0024($sp)           
/* 026A0 8096FB50 AFB00020 */  sw      $s0, 0x0020($sp)           
/* 026A4 8096FB54 00808025 */  or      $s0, $a0, $zero            ## $s0 = 00000000
/* 026A8 8096FB58 0C25B743 */  jal     func_8096DD0C              
/* 026AC 8096FB5C AFA5002C */  sw      $a1, 0x002C($sp)           
/* 026B0 8096FB60 3C060601 */  lui     $a2, 0x0601                ## $a2 = 06010000
/* 026B4 8096FB64 24C685F8 */  addiu   $a2, $a2, 0x85F8           ## $a2 = 060085F8
/* 026B8 8096FB68 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 026BC 8096FB6C 0C25B5CA */  jal     func_8096D728              
/* 026C0 8096FB70 8FA5002C */  lw      $a1, 0x002C($sp)           
/* 026C4 8096FB74 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 026C8 8096FB78 0C25B76F */  jal     func_8096DDBC              
/* 026CC 8096FB7C 8FA5002C */  lw      $a1, 0x002C($sp)           
/* 026D0 8096FB80 3C050601 */  lui     $a1, 0x0601                ## $a1 = 06010000
/* 026D4 8096FB84 24A5AFE0 */  addiu   $a1, $a1, 0xAFE0           ## $a1 = 0600AFE0
/* 026D8 8096FB88 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 026DC 8096FB8C 00003025 */  or      $a2, $zero, $zero          ## $a2 = 00000000
/* 026E0 8096FB90 24070000 */  addiu   $a3, $zero, 0x0000         ## $a3 = 00000000
/* 026E4 8096FB94 0C25B5E7 */  jal     func_8096D79C              
/* 026E8 8096FB98 AFA00010 */  sw      $zero, 0x0010($sp)         
/* 026EC 8096FB9C 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 026F0 8096FBA0 0C25B575 */  jal     func_8096D5D4              
/* 026F4 8096FBA4 8FA5002C */  lw      $a1, 0x002C($sp)           
/* 026F8 8096FBA8 3C068003 */  lui     $a2, %hi(ActorShadow_DrawFunc_Circle)
/* 026FC 8096FBAC 24C6B5EC */  addiu   $a2, %lo(ActorShadow_DrawFunc_Circle)
/* 02700 8096FBB0 260400B4 */  addiu   $a0, $s0, 0x00B4           ## $a0 = 000000B4
/* 02704 8096FBB4 24050000 */  addiu   $a1, $zero, 0x0000         ## $a1 = 00000000
/* 02708 8096FBB8 0C00AC78 */  jal     ActorShape_Init
              
/* 0270C 8096FBBC 3C0741F0 */  lui     $a3, 0x41F0                ## $a3 = 41F00000
/* 02710 8096FBC0 240E0019 */  addiu   $t6, $zero, 0x0019         ## $t6 = 00000019
/* 02714 8096FBC4 240F0014 */  addiu   $t7, $zero, 0x0014         ## $t7 = 00000014
/* 02718 8096FBC8 AE0E0194 */  sw      $t6, 0x0194($s0)           ## 00000194
/* 0271C 8096FBCC AE0F0198 */  sw      $t7, 0x0198($s0)           ## 00000198
/* 02720 8096FBD0 8FBF0024 */  lw      $ra, 0x0024($sp)           
/* 02724 8096FBD4 8FB00020 */  lw      $s0, 0x0020($sp)           
/* 02728 8096FBD8 27BD0028 */  addiu   $sp, $sp, 0x0028           ## $sp = 00000000
/* 0272C 8096FBDC 03E00008 */  jr      $ra                        
/* 02730 8096FBE0 00000000 */  nop
