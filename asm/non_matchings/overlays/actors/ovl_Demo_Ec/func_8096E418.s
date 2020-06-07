glabel func_8096E418
/* 00F68 8096E418 27BDFFD8 */  addiu   $sp, $sp, 0xFFD8           ## $sp = FFFFFFD8
/* 00F6C 8096E41C AFBF0024 */  sw      $ra, 0x0024($sp)           
/* 00F70 8096E420 AFB00020 */  sw      $s0, 0x0020($sp)           
/* 00F74 8096E424 00808025 */  or      $s0, $a0, $zero            ## $s0 = 00000000
/* 00F78 8096E428 0C25B743 */  jal     func_8096DD0C              
/* 00F7C 8096E42C AFA5002C */  sw      $a1, 0x002C($sp)           
/* 00F80 8096E430 3C060600 */  lui     $a2, 0x0600                ## $a2 = 06000000
/* 00F84 8096E434 24C600F0 */  addiu   $a2, $a2, 0x00F0           ## $a2 = 060000F0
/* 00F88 8096E438 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 00F8C 8096E43C 0C25B5CA */  jal     func_8096D728              
/* 00F90 8096E440 8FA5002C */  lw      $a1, 0x002C($sp)           
/* 00F94 8096E444 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 00F98 8096E448 0C25B76F */  jal     func_8096DDBC              
/* 00F9C 8096E44C 8FA5002C */  lw      $a1, 0x002C($sp)           
/* 00FA0 8096E450 3C050600 */  lui     $a1, 0x0600                ## $a1 = 06000000
/* 00FA4 8096E454 24A5513C */  addiu   $a1, $a1, 0x513C           ## $a1 = 0600513C
/* 00FA8 8096E458 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 00FAC 8096E45C 00003025 */  or      $a2, $zero, $zero          ## $a2 = 00000000
/* 00FB0 8096E460 24070000 */  addiu   $a3, $zero, 0x0000         ## $a3 = 00000000
/* 00FB4 8096E464 0C25B5E7 */  jal     func_8096D79C              
/* 00FB8 8096E468 AFA00010 */  sw      $zero, 0x0010($sp)         
/* 00FBC 8096E46C 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 00FC0 8096E470 0C25B575 */  jal     func_8096D5D4              
/* 00FC4 8096E474 8FA5002C */  lw      $a1, 0x002C($sp)           
/* 00FC8 8096E478 3C068003 */  lui     $a2, %hi(ActorShadow_DrawFunc_Circle)
/* 00FCC 8096E47C 24C6B5EC */  addiu   $a2, %lo(ActorShadow_DrawFunc_Circle)
/* 00FD0 8096E480 260400B4 */  addiu   $a0, $s0, 0x00B4           ## $a0 = 000000B4
/* 00FD4 8096E484 24050000 */  addiu   $a1, $zero, 0x0000         ## $a1 = 00000000
/* 00FD8 8096E488 0C00AC78 */  jal     ActorShape_Init
              
/* 00FDC 8096E48C 3C0741F0 */  lui     $a3, 0x41F0                ## $a3 = 41F00000
/* 00FE0 8096E490 240E000D */  addiu   $t6, $zero, 0x000D         ## $t6 = 0000000D
/* 00FE4 8096E494 240F0005 */  addiu   $t7, $zero, 0x0005         ## $t7 = 00000005
/* 00FE8 8096E498 AE0E0194 */  sw      $t6, 0x0194($s0)           ## 00000194
/* 00FEC 8096E49C AE0F0198 */  sw      $t7, 0x0198($s0)           ## 00000198
/* 00FF0 8096E4A0 8FBF0024 */  lw      $ra, 0x0024($sp)           
/* 00FF4 8096E4A4 8FB00020 */  lw      $s0, 0x0020($sp)           
/* 00FF8 8096E4A8 27BD0028 */  addiu   $sp, $sp, 0x0028           ## $sp = 00000000
/* 00FFC 8096E4AC 03E00008 */  jr      $ra                        
/* 01000 8096E4B0 00000000 */  nop
