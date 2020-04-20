glabel func_8096EAE8
/* 01638 8096EAE8 27BDFFD8 */  addiu   $sp, $sp, 0xFFD8           ## $sp = FFFFFFD8
/* 0163C 8096EAEC AFBF0024 */  sw      $ra, 0x0024($sp)           
/* 01640 8096EAF0 AFB00020 */  sw      $s0, 0x0020($sp)           
/* 01644 8096EAF4 00808025 */  or      $s0, $a0, $zero            ## $s0 = 00000000
/* 01648 8096EAF8 0C25B743 */  jal     func_8096DD0C              
/* 0164C 8096EAFC AFA5002C */  sw      $a1, 0x002C($sp)           
/* 01650 8096EB00 3C060600 */  lui     $a2, 0x0600                ## $a2 = 06000000
/* 01654 8096EB04 24C67958 */  addiu   $a2, $a2, 0x7958           ## $a2 = 06007958
/* 01658 8096EB08 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 0165C 8096EB0C 0C25B5CA */  jal     func_8096D728              
/* 01660 8096EB10 8FA5002C */  lw      $a1, 0x002C($sp)           
/* 01664 8096EB14 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 01668 8096EB18 0C25B76F */  jal     func_8096DDBC              
/* 0166C 8096EB1C 8FA5002C */  lw      $a1, 0x002C($sp)           
/* 01670 8096EB20 3C050600 */  lui     $a1, 0x0600                ## $a1 = 06000000
/* 01674 8096EB24 24A5164C */  addiu   $a1, $a1, 0x164C           ## $a1 = 0600164C
/* 01678 8096EB28 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 0167C 8096EB2C 00003025 */  or      $a2, $zero, $zero          ## $a2 = 00000000
/* 01680 8096EB30 24070000 */  addiu   $a3, $zero, 0x0000         ## $a3 = 00000000
/* 01684 8096EB34 0C25B5E7 */  jal     func_8096D79C              
/* 01688 8096EB38 AFA00010 */  sw      $zero, 0x0010($sp)         
/* 0168C 8096EB3C 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 01690 8096EB40 0C25B575 */  jal     func_8096D5D4              
/* 01694 8096EB44 8FA5002C */  lw      $a1, 0x002C($sp)           
/* 01698 8096EB48 3C068003 */  lui     $a2, %hi(ActorShadow_DrawFunc_Circle)
/* 0169C 8096EB4C 24C6B5EC */  addiu   $a2, %lo(ActorShadow_DrawFunc_Circle)
/* 016A0 8096EB50 260400B4 */  addiu   $a0, $s0, 0x00B4           ## $a0 = 000000B4
/* 016A4 8096EB54 24050000 */  addiu   $a1, $zero, 0x0000         ## $a1 = 00000000
/* 016A8 8096EB58 0C00AC78 */  jal     ActorShape_Init
              
/* 016AC 8096EB5C 3C0741F0 */  lui     $a3, 0x41F0                ## $a3 = 41F00000
/* 016B0 8096EB60 2402000B */  addiu   $v0, $zero, 0x000B         ## $v0 = 0000000B
/* 016B4 8096EB64 AE020194 */  sw      $v0, 0x0194($s0)           ## 00000194
/* 016B8 8096EB68 AE020198 */  sw      $v0, 0x0198($s0)           ## 00000198
/* 016BC 8096EB6C 8FBF0024 */  lw      $ra, 0x0024($sp)           
/* 016C0 8096EB70 8FB00020 */  lw      $s0, 0x0020($sp)           
/* 016C4 8096EB74 27BD0028 */  addiu   $sp, $sp, 0x0028           ## $sp = 00000000
/* 016C8 8096EB78 03E00008 */  jr      $ra                        
/* 016CC 8096EB7C 00000000 */  nop
