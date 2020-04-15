glabel func_80AC2D78
/* 000D8 80AC2D78 3C0E8016 */  lui     $t6, 0x8016                ## $t6 = 80160000
/* 000DC 80AC2D7C 95CEF556 */  lhu     $t6, -0x0AAA($t6)          ## 8015F556
/* 000E0 80AC2D80 AFA40000 */  sw      $a0, 0x0000($sp)           
/* 000E4 80AC2D84 00042400 */  sll     $a0, $a0, 16               
/* 000E8 80AC2D88 31CF8000 */  andi    $t7, $t6, 0x8000           ## $t7 = 00000000
/* 000EC 80AC2D8C 11E00003 */  beq     $t7, $zero, .L80AC2D9C     
/* 000F0 80AC2D90 00042403 */  sra     $a0, $a0, 16               
/* 000F4 80AC2D94 03E00008 */  jr      $ra                        
/* 000F8 80AC2D98 00801025 */  or      $v0, $a0, $zero            ## $v0 = 00000000
.L80AC2D9C:
/* 000FC 80AC2D9C 2402FFFF */  addiu   $v0, $zero, 0xFFFF         ## $v0 = FFFFFFFF
/* 00100 80AC2DA0 03E00008 */  jr      $ra                        
/* 00104 80AC2DA4 00000000 */  nop
