glabel func_8096DF9C
/* 00AEC 8096DF9C 27BDFFD8 */  addiu   $sp, $sp, 0xFFD8           ## $sp = FFFFFFD8
/* 00AF0 8096DFA0 AFBF0024 */  sw      $ra, 0x0024($sp)           
/* 00AF4 8096DFA4 AFB00020 */  sw      $s0, 0x0020($sp)           
/* 00AF8 8096DFA8 00808025 */  or      $s0, $a0, $zero            ## $s0 = 00000000
/* 00AFC 8096DFAC 0C25B743 */  jal     func_8096DD0C              
/* 00B00 8096DFB0 AFA5002C */  sw      $a1, 0x002C($sp)           
/* 00B04 8096DFB4 3C060601 */  lui     $a2, 0x0601                ## $a2 = 06010000
/* 00B08 8096DFB8 24C6B7B8 */  addiu   $a2, $a2, 0xB7B8           ## $a2 = 0600B7B8
/* 00B0C 8096DFBC 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 00B10 8096DFC0 0C25B5CA */  jal     func_8096D728              
/* 00B14 8096DFC4 8FA5002C */  lw      $a1, 0x002C($sp)           
/* 00B18 8096DFC8 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 00B1C 8096DFCC 0C25B76F */  jal     func_8096DDBC              
/* 00B20 8096DFD0 8FA5002C */  lw      $a1, 0x002C($sp)           
/* 00B24 8096DFD4 3C050601 */  lui     $a1, 0x0601                ## $a1 = 06010000
/* 00B28 8096DFD8 24A5BD38 */  addiu   $a1, $a1, 0xBD38           ## $a1 = 0600BD38
/* 00B2C 8096DFDC 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 00B30 8096DFE0 00003025 */  or      $a2, $zero, $zero          ## $a2 = 00000000
/* 00B34 8096DFE4 24070000 */  addiu   $a3, $zero, 0x0000         ## $a3 = 00000000
/* 00B38 8096DFE8 0C25B5E7 */  jal     func_8096D79C              
/* 00B3C 8096DFEC AFA00010 */  sw      $zero, 0x0010($sp)         
/* 00B40 8096DFF0 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 00B44 8096DFF4 0C25B593 */  jal     func_8096D64C              
/* 00B48 8096DFF8 8FA5002C */  lw      $a1, 0x002C($sp)           
/* 00B4C 8096DFFC 3C068003 */  lui     $a2, %hi(ActorShadow_DrawFunc_Circle)
/* 00B50 8096E000 24C6B5EC */  addiu   $a2, %lo(ActorShadow_DrawFunc_Circle)
/* 00B54 8096E004 260400B4 */  addiu   $a0, $s0, 0x00B4           ## $a0 = 000000B4
/* 00B58 8096E008 24050000 */  addiu   $a1, $zero, 0x0000         ## $a1 = 00000000
/* 00B5C 8096E00C 0C00AC78 */  jal     ActorShape_Init
              
/* 00B60 8096E010 3C0741F0 */  lui     $a3, 0x41F0                ## $a3 = 41F00000
/* 00B64 8096E014 24020002 */  addiu   $v0, $zero, 0x0002         ## $v0 = 00000002
/* 00B68 8096E018 AE020194 */  sw      $v0, 0x0194($s0)           ## 00000194
/* 00B6C 8096E01C AE020198 */  sw      $v0, 0x0198($s0)           ## 00000198
/* 00B70 8096E020 8FBF0024 */  lw      $ra, 0x0024($sp)           
/* 00B74 8096E024 8FB00020 */  lw      $s0, 0x0020($sp)           
/* 00B78 8096E028 27BD0028 */  addiu   $sp, $sp, 0x0028           ## $sp = 00000000
/* 00B7C 8096E02C 03E00008 */  jr      $ra                        
/* 00B80 8096E030 00000000 */  nop
