glabel func_80B506C4
/* 01D34 80B506C4 27BDFFD8 */  addiu   $sp, $sp, 0xFFD8           ## $sp = FFFFFFD8
/* 01D38 80B506C8 AFA5002C */  sw      $a1, 0x002C($sp)           
/* 01D3C 80B506CC AFBF0024 */  sw      $ra, 0x0024($sp)           
/* 01D40 80B506D0 AFB00020 */  sw      $s0, 0x0020($sp)           
/* 01D44 80B506D4 3C050601 */  lui     $a1, 0x0601                ## $a1 = 06010000
/* 01D48 80B506D8 00808025 */  or      $s0, $a0, $zero            ## $s0 = 00000000
/* 01D4C 80B506DC 24A5AAD4 */  addiu   $a1, $a1, 0xAAD4           ## $a1 = 0600AAD4
/* 01D50 80B506E0 AFA00010 */  sw      $zero, 0x0010($sp)         
/* 01D54 80B506E4 24060002 */  addiu   $a2, $zero, 0x0002         ## $a2 = 00000002
/* 01D58 80B506E8 0C2D3F40 */  jal     func_80B4FD00              
/* 01D5C 80B506EC 3C07C100 */  lui     $a3, 0xC100                ## $a3 = C1000000
/* 01D60 80B506F0 240E000E */  addiu   $t6, $zero, 0x000E         ## $t6 = 0000000E
/* 01D64 80B506F4 240F0001 */  addiu   $t7, $zero, 0x0001         ## $t7 = 00000001
/* 01D68 80B506F8 AE0E019C */  sw      $t6, 0x019C($s0)           ## 0000019C
/* 01D6C 80B506FC AE0F01A0 */  sw      $t7, 0x01A0($s0)           ## 000001A0
/* 01D70 80B50700 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 01D74 80B50704 0C2D3B3A */  jal     func_80B4ECE8              
/* 01D78 80B50708 24050004 */  addiu   $a1, $zero, 0x0004         ## $a1 = 00000004
/* 01D7C 80B5070C 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 01D80 80B50710 0C2D3B46 */  jal     func_80B4ED18              
/* 01D84 80B50714 24050002 */  addiu   $a1, $zero, 0x0002         ## $a1 = 00000002
/* 01D88 80B50718 241800FF */  addiu   $t8, $zero, 0x00FF         ## $t8 = 000000FF
/* 01D8C 80B5071C A21800C8 */  sb      $t8, 0x00C8($s0)           ## 000000C8
/* 01D90 80B50720 0C2D3FA4 */  jal     func_80B4FE90              
/* 01D94 80B50724 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 01D98 80B50728 8FBF0024 */  lw      $ra, 0x0024($sp)           
/* 01D9C 80B5072C 8FB00020 */  lw      $s0, 0x0020($sp)           
/* 01DA0 80B50730 27BD0028 */  addiu   $sp, $sp, 0x0028           ## $sp = 00000000
/* 01DA4 80B50734 03E00008 */  jr      $ra                        
/* 01DA8 80B50738 00000000 */  nop
