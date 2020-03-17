glabel func_8096FA40
/* 02590 8096FA40 27BDFFD8 */  addiu   $sp, $sp, 0xFFD8           ## $sp = FFFFFFD8
/* 02594 8096FA44 AFBF0024 */  sw      $ra, 0x0024($sp)           
/* 02598 8096FA48 AFB00020 */  sw      $s0, 0x0020($sp)           
/* 0259C 8096FA4C 00808025 */  or      $s0, $a0, $zero            ## $s0 = 00000000
/* 025A0 8096FA50 0C25B743 */  jal     func_8096DD0C              
/* 025A4 8096FA54 AFA5002C */  sw      $a1, 0x002C($sp)           
/* 025A8 8096FA58 3C060600 */  lui     $a2, 0x0600                ## $a2 = 06000000
/* 025AC 8096FA5C 24C64658 */  addiu   $a2, $a2, 0x4658           ## $a2 = 06004658
/* 025B0 8096FA60 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 025B4 8096FA64 0C25B5CA */  jal     func_8096D728              
/* 025B8 8096FA68 8FA5002C */  lw      $a1, 0x002C($sp)           
/* 025BC 8096FA6C 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 025C0 8096FA70 0C25B76F */  jal     func_8096DDBC              
/* 025C4 8096FA74 8FA5002C */  lw      $a1, 0x002C($sp)           
/* 025C8 8096FA78 3C050601 */  lui     $a1, 0x0601                ## $a1 = 06010000
/* 025CC 8096FA7C 24A5AFE0 */  addiu   $a1, $a1, 0xAFE0           ## $a1 = 0600AFE0
/* 025D0 8096FA80 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 025D4 8096FA84 00003025 */  or      $a2, $zero, $zero          ## $a2 = 00000000
/* 025D8 8096FA88 24070000 */  addiu   $a3, $zero, 0x0000         ## $a3 = 00000000
/* 025DC 8096FA8C 0C25B5E7 */  jal     func_8096D79C              
/* 025E0 8096FA90 AFA00010 */  sw      $zero, 0x0010($sp)         
/* 025E4 8096FA94 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 025E8 8096FA98 0C25B575 */  jal     func_8096D5D4              
/* 025EC 8096FA9C 8FA5002C */  lw      $a1, 0x002C($sp)           
/* 025F0 8096FAA0 3C068003 */  lui     $a2, 0x8003                ## $a2 = 80030000
/* 025F4 8096FAA4 24C6B5EC */  addiu   $a2, $a2, 0xB5EC           ## $a2 = 8002B5EC
/* 025F8 8096FAA8 260400B4 */  addiu   $a0, $s0, 0x00B4           ## $a0 = 000000B4
/* 025FC 8096FAAC 24050000 */  addiu   $a1, $zero, 0x0000         ## $a1 = 00000000
/* 02600 8096FAB0 0C00AC78 */  jal     ActorShape_Init
              
/* 02604 8096FAB4 3C0741F0 */  lui     $a3, 0x41F0                ## $a3 = 41F00000
/* 02608 8096FAB8 240E0018 */  addiu   $t6, $zero, 0x0018         ## $t6 = 00000018
/* 0260C 8096FABC 240F0013 */  addiu   $t7, $zero, 0x0013         ## $t7 = 00000013
/* 02610 8096FAC0 AE0E0194 */  sw      $t6, 0x0194($s0)           ## 00000194
/* 02614 8096FAC4 AE0F0198 */  sw      $t7, 0x0198($s0)           ## 00000198
/* 02618 8096FAC8 8FBF0024 */  lw      $ra, 0x0024($sp)           
/* 0261C 8096FACC 8FB00020 */  lw      $s0, 0x0020($sp)           
/* 02620 8096FAD0 27BD0028 */  addiu   $sp, $sp, 0x0028           ## $sp = 00000000
/* 02624 8096FAD4 03E00008 */  jr      $ra                        
/* 02628 8096FAD8 00000000 */  nop


