glabel func_80AC2CE8
/* 00048 80AC2CE8 3C0E8016 */  lui     $t6, 0x8016                ## $t6 = 80160000
/* 0004C 80AC2CEC 95CEF556 */  lhu     $t6, -0x0AAA($t6)          ## 8015F556
/* 00050 80AC2CF0 AFA40000 */  sw      $a0, 0x0000($sp)           
/* 00054 80AC2CF4 00042400 */  sll     $a0, $a0, 16               
/* 00058 80AC2CF8 31CF0100 */  andi    $t7, $t6, 0x0100           ## $t7 = 00000000
/* 0005C 80AC2CFC 11E00003 */  beq     $t7, $zero, .L80AC2D0C     
/* 00060 80AC2D00 00042403 */  sra     $a0, $a0, 16               
/* 00064 80AC2D04 03E00008 */  jr      $ra                        
/* 00068 80AC2D08 00801025 */  or      $v0, $a0, $zero            ## $v0 = 00000000
.L80AC2D0C:
/* 0006C 80AC2D0C 2402FFFF */  addiu   $v0, $zero, 0xFFFF         ## $v0 = FFFFFFFF
/* 00070 80AC2D10 03E00008 */  jr      $ra                        
/* 00074 80AC2D14 00000000 */  nop
