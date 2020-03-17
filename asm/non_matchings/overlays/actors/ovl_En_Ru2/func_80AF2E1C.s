glabel func_80AF2E1C
/* 008CC 80AF2E1C 27BDFFE0 */  addiu   $sp, $sp, 0xFFE0           ## $sp = FFFFFFE0
/* 008D0 80AF2E20 AFA50024 */  sw      $a1, 0x0024($sp)           
/* 008D4 80AF2E24 AFBF001C */  sw      $ra, 0x001C($sp)           
/* 008D8 80AF2E28 3C050600 */  lui     $a1, 0x0600                ## $a1 = 06000000
/* 008DC 80AF2E2C 24A504CC */  addiu   $a1, $a1, 0x04CC           ## $a1 = 060004CC
/* 008E0 80AF2E30 AFA00010 */  sw      $zero, 0x0010($sp)         
/* 008E4 80AF2E34 AFA40020 */  sw      $a0, 0x0020($sp)           
/* 008E8 80AF2E38 24060002 */  addiu   $a2, $zero, 0x0002         ## $a2 = 00000002
/* 008EC 80AF2E3C 0C2BCA3A */  jal     func_80AF28E8              
/* 008F0 80AF2E40 24070000 */  addiu   $a3, $zero, 0x0000         ## $a3 = 00000000
/* 008F4 80AF2E44 8FA40020 */  lw      $a0, 0x0020($sp)           
/* 008F8 80AF2E48 240E0007 */  addiu   $t6, $zero, 0x0007         ## $t6 = 00000007
/* 008FC 80AF2E4C AC8E02A8 */  sw      $t6, 0x02A8($a0)           ## 000002A8
/* 00900 80AF2E50 A08000C8 */  sb      $zero, 0x00C8($a0)         ## 000000C8
/* 00904 80AF2E54 8FBF001C */  lw      $ra, 0x001C($sp)           
/* 00908 80AF2E58 27BD0020 */  addiu   $sp, $sp, 0x0020           ## $sp = 00000000
/* 0090C 80AF2E5C 03E00008 */  jr      $ra                        
/* 00910 80AF2E60 00000000 */  nop


