glabel func_80B0FF44
/* 00894 80B0FF44 3C0E0001 */  lui     $t6, 0x0001                ## $t6 = 00010000
/* 00898 80B0FF48 01C57021 */  addu    $t6, $t6, $a1              
/* 0089C 80B0FF4C 81CE1E5C */  lb      $t6, 0x1E5C($t6)           ## 00011E5C
/* 008A0 80B0FF50 2401FFFF */  addiu   $at, $zero, 0xFFFF         ## $at = FFFFFFFF
/* 008A4 80B0FF54 8CA21C44 */  lw      $v0, 0x1C44($a1)           ## 00001C44
/* 008A8 80B0FF58 15C10009 */  bne     $t6, $at, .L80B0FF80       
/* 008AC 80B0FF5C 00001825 */  or      $v1, $zero, $zero          ## $v1 = 00000000
/* 008B0 80B0FF60 240F000A */  addiu   $t7, $zero, 0x000A         ## $t7 = 0000000A
/* 008B4 80B0FF64 3C1880B1 */  lui     $t8, %hi(func_80B0FFE8)    ## $t8 = 80B10000
/* 008B8 80B0FF68 24070002 */  addiu   $a3, $zero, 0x0002         ## $a3 = 00000002
/* 008BC 80B0FF6C A44F0110 */  sh      $t7, 0x0110($v0)           ## 00000110
/* 008C0 80B0FF70 2718FFE8 */  addiu   $t8, $t8, %lo(func_80B0FFE8) ## $t8 = 80B0FFE8
/* 008C4 80B0FF74 A4870154 */  sh      $a3, 0x0154($a0)           ## 00000154
/* 008C8 80B0FF78 03E00008 */  jr      $ra                        
/* 008CC 80B0FF7C AC98014C */  sw      $t8, 0x014C($a0)           ## 0000014C
.L80B0FF80:
/* 008D0 80B0FF80 00001025 */  or      $v0, $zero, $zero          ## $v0 = 00000000
/* 008D4 80B0FF84 00802825 */  or      $a1, $a0, $zero            ## $a1 = 00000000
/* 008D8 80B0FF88 24080001 */  addiu   $t0, $zero, 0x0001         ## $t0 = 00000001
/* 008DC 80B0FF8C 24070002 */  addiu   $a3, $zero, 0x0002         ## $a3 = 00000002
.L80B0FF90:
/* 008E0 80B0FF90 84A60166 */  lh      $a2, 0x0166($a1)           ## 00000166
/* 008E4 80B0FF94 50C0000A */  beql    $a2, $zero, .L80B0FFC0     
/* 008E8 80B0FF98 24420001 */  addiu   $v0, $v0, 0x0001           ## $v0 = 00000001
/* 008EC 80B0FF9C 14E60005 */  bne     $a3, $a2, .L80B0FFB4       
/* 008F0 80B0FFA0 24630001 */  addiu   $v1, $v1, 0x0001           ## $v1 = 00000001
/* 008F4 80B0FFA4 0002C880 */  sll     $t9, $v0,  2               
/* 008F8 80B0FFA8 00994821 */  addu    $t1, $a0, $t9              
/* 008FC 80B0FFAC 8D2A01D0 */  lw      $t2, 0x01D0($t1)           ## 000001D0
/* 00900 80B0FFB0 A548015C */  sh      $t0, 0x015C($t2)           ## 0000015C
.L80B0FFB4:
/* 00904 80B0FFB4 00031C00 */  sll     $v1, $v1, 16               
/* 00908 80B0FFB8 00031C03 */  sra     $v1, $v1, 16               
/* 0090C 80B0FFBC 24420001 */  addiu   $v0, $v0, 0x0001           ## $v0 = 00000002
.L80B0FFC0:
/* 00910 80B0FFC0 1447FFF3 */  bne     $v0, $a3, .L80B0FF90       
/* 00914 80B0FFC4 24A50002 */  addiu   $a1, $a1, 0x0002           ## $a1 = 00000002
/* 00918 80B0FFC8 848B016A */  lh      $t3, 0x016A($a0)           ## 0000016A
/* 0091C 80B0FFCC 3C0C80B1 */  lui     $t4, %hi(func_80B0F944)    ## $t4 = 80B10000
/* 00920 80B0FFD0 258CF944 */  addiu   $t4, $t4, %lo(func_80B0F944) ## $t4 = 80B0F944
/* 00924 80B0FFD4 146B0002 */  bne     $v1, $t3, .L80B0FFE0       
/* 00928 80B0FFD8 00000000 */  nop
/* 0092C 80B0FFDC AC8C014C */  sw      $t4, 0x014C($a0)           ## 0000014C
.L80B0FFE0:
/* 00930 80B0FFE0 03E00008 */  jr      $ra                        
/* 00934 80B0FFE4 00000000 */  nop


