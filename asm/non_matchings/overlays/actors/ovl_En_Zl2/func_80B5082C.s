glabel func_80B5082C
/* 01E9C 80B5082C 27BDFFE0 */  addiu   $sp, $sp, 0xFFE0           ## $sp = FFFFFFE0
/* 01EA0 80B50830 AFA50024 */  sw      $a1, 0x0024($sp)           
/* 01EA4 80B50834 AFBF001C */  sw      $ra, 0x001C($sp)           
/* 01EA8 80B50838 3C050600 */  lui     $a1, 0x0600                ## $a1 = 06000000
/* 01EAC 80B5083C 24A52B14 */  addiu   $a1, $a1, 0x2B14           ## $a1 = 06002B14
/* 01EB0 80B50840 AFA00010 */  sw      $zero, 0x0010($sp)         
/* 01EB4 80B50844 AFA40020 */  sw      $a0, 0x0020($sp)           
/* 01EB8 80B50848 24060002 */  addiu   $a2, $zero, 0x0002         ## $a2 = 00000002
/* 01EBC 80B5084C 0C2D3F40 */  jal     func_80B4FD00              
/* 01EC0 80B50850 3C07C100 */  lui     $a3, 0xC100                ## $a3 = C1000000
/* 01EC4 80B50854 8FA40020 */  lw      $a0, 0x0020($sp)           
/* 01EC8 80B50858 240E0012 */  addiu   $t6, $zero, 0x0012         ## $t6 = 00000012
/* 01ECC 80B5085C 240F0001 */  addiu   $t7, $zero, 0x0001         ## $t7 = 00000001
/* 01ED0 80B50860 241800FF */  addiu   $t8, $zero, 0x00FF         ## $t8 = 000000FF
/* 01ED4 80B50864 AC8E019C */  sw      $t6, 0x019C($a0)           ## 0000019C
/* 01ED8 80B50868 AC8F01A0 */  sw      $t7, 0x01A0($a0)           ## 000001A0
/* 01EDC 80B5086C A09800C8 */  sb      $t8, 0x00C8($a0)           ## 000000C8
/* 01EE0 80B50870 8FBF001C */  lw      $ra, 0x001C($sp)           
/* 01EE4 80B50874 27BD0020 */  addiu   $sp, $sp, 0x0020           ## $sp = 00000000
/* 01EE8 80B50878 03E00008 */  jr      $ra                        
/* 01EEC 80B5087C 00000000 */  nop


