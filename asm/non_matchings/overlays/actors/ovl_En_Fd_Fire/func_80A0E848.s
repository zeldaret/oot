glabel func_80A0E848
/* 00398 80A0E848 AFA50004 */  sw      $a1, 0x0004($sp)           
/* 0039C 80A0E84C 848201A6 */  lh      $v0, 0x01A6($a0)           ## 000001A6
/* 003A0 80A0E850 3C0F80A1 */  lui     $t7, %hi(func_80A0EA34)    ## $t7 = 80A10000
/* 003A4 80A0E854 25EFEA34 */  addiu   $t7, $t7, %lo(func_80A0EA34) ## $t7 = 80A0EA34
/* 003A8 80A0E858 14400003 */  bne     $v0, $zero, .L80A0E868     
/* 003AC 80A0E85C 244EFFFF */  addiu   $t6, $v0, 0xFFFF           ## $t6 = FFFFFFFF
/* 003B0 80A0E860 10000003 */  beq     $zero, $zero, .L80A0E870   
/* 003B4 80A0E864 00001825 */  or      $v1, $zero, $zero          ## $v1 = 00000000
.L80A0E868:
/* 003B8 80A0E868 A48E01A6 */  sh      $t6, 0x01A6($a0)           ## 000001A6
/* 003BC 80A0E86C 848301A6 */  lh      $v1, 0x01A6($a0)           ## 000001A6
.L80A0E870:
/* 003C0 80A0E870 14600002 */  bne     $v1, $zero, .L80A0E87C     
/* 003C4 80A0E874 00000000 */  nop
/* 003C8 80A0E878 AC8F014C */  sw      $t7, 0x014C($a0)           ## 0000014C
.L80A0E87C:
/* 003CC 80A0E87C 03E00008 */  jr      $ra                        
/* 003D0 80A0E880 00000000 */  nop
