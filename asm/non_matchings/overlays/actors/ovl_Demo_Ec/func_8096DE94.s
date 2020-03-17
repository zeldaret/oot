glabel func_8096DE94
/* 009E4 8096DE94 27BDFFD8 */  addiu   $sp, $sp, 0xFFD8           ## $sp = FFFFFFD8
/* 009E8 8096DE98 AFBF0024 */  sw      $ra, 0x0024($sp)           
/* 009EC 8096DE9C AFB00020 */  sw      $s0, 0x0020($sp)           
/* 009F0 8096DEA0 00808025 */  or      $s0, $a0, $zero            ## $s0 = 00000000
/* 009F4 8096DEA4 0C25B743 */  jal     func_8096DD0C              
/* 009F8 8096DEA8 AFA5002C */  sw      $a1, 0x002C($sp)           
/* 009FC 8096DEAC 3C060601 */  lui     $a2, 0x0601                ## $a2 = 06010000
/* 00A00 8096DEB0 24C63B88 */  addiu   $a2, $a2, 0x3B88           ## $a2 = 06013B88
/* 00A04 8096DEB4 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 00A08 8096DEB8 0C25B5CA */  jal     func_8096D728              
/* 00A0C 8096DEBC 8FA5002C */  lw      $a1, 0x002C($sp)           
/* 00A10 8096DEC0 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 00A14 8096DEC4 0C25B76F */  jal     func_8096DDBC              
/* 00A18 8096DEC8 8FA5002C */  lw      $a1, 0x002C($sp)           
/* 00A1C 8096DECC 3C050600 */  lui     $a1, 0x0600                ## $a1 = 06000000
/* 00A20 8096DED0 24A548F4 */  addiu   $a1, $a1, 0x48F4           ## $a1 = 060048F4
/* 00A24 8096DED4 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 00A28 8096DED8 00003025 */  or      $a2, $zero, $zero          ## $a2 = 00000000
/* 00A2C 8096DEDC 24070000 */  addiu   $a3, $zero, 0x0000         ## $a3 = 00000000
/* 00A30 8096DEE0 0C25B5E7 */  jal     func_8096D79C              
/* 00A34 8096DEE4 AFA00010 */  sw      $zero, 0x0010($sp)         
/* 00A38 8096DEE8 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 00A3C 8096DEEC 0C25B593 */  jal     func_8096D64C              
/* 00A40 8096DEF0 8FA5002C */  lw      $a1, 0x002C($sp)           
/* 00A44 8096DEF4 3C068003 */  lui     $a2, 0x8003                ## $a2 = 80030000
/* 00A48 8096DEF8 24C6B5EC */  addiu   $a2, $a2, 0xB5EC           ## $a2 = 8002B5EC
/* 00A4C 8096DEFC 260400B4 */  addiu   $a0, $s0, 0x00B4           ## $a0 = 000000B4
/* 00A50 8096DF00 24050000 */  addiu   $a1, $zero, 0x0000         ## $a1 = 00000000
/* 00A54 8096DF04 0C00AC78 */  jal     ActorShape_Init
              
/* 00A58 8096DF08 3C0741F0 */  lui     $a3, 0x41F0                ## $a3 = 41F00000
/* 00A5C 8096DF0C 24020001 */  addiu   $v0, $zero, 0x0001         ## $v0 = 00000001
/* 00A60 8096DF10 AE020194 */  sw      $v0, 0x0194($s0)           ## 00000194
/* 00A64 8096DF14 AE020198 */  sw      $v0, 0x0198($s0)           ## 00000198
/* 00A68 8096DF18 8FBF0024 */  lw      $ra, 0x0024($sp)           
/* 00A6C 8096DF1C 8FB00020 */  lw      $s0, 0x0020($sp)           
/* 00A70 8096DF20 27BD0028 */  addiu   $sp, $sp, 0x0028           ## $sp = 00000000
/* 00A74 8096DF24 03E00008 */  jr      $ra                        
/* 00A78 8096DF28 00000000 */  nop


