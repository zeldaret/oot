glabel func_80A770C0
/* 02DB0 80A770C0 27BDFFE8 */  addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
/* 02DB4 80A770C4 00803825 */  or      $a3, $a0, $zero            ## $a3 = 00000000
/* 02DB8 80A770C8 AFBF0014 */  sw      $ra, 0x0014($sp)           
/* 02DBC 80A770CC AFA5001C */  sw      $a1, 0x001C($sp)           
/* 02DC0 80A770D0 00A02025 */  or      $a0, $a1, $zero            ## $a0 = 00000000
/* 02DC4 80A770D4 00C02825 */  or      $a1, $a2, $zero            ## $a1 = 00000000
/* 02DC8 80A770D8 0C29DC27 */  jal     func_80A7709C              
/* 02DCC 80A770DC AFA70018 */  sw      $a3, 0x0018($sp)           
/* 02DD0 80A770E0 10400013 */  beq     $v0, $zero, .L80A77130     
/* 02DD4 80A770E4 8FA70018 */  lw      $a3, 0x0018($sp)           
/* 02DD8 80A770E8 8C4E000C */  lw      $t6, 0x000C($v0)           ## 0000000C
/* 02DDC 80A770EC 448E2000 */  mtc1    $t6, $f4                   ## $f4 = 0.00
/* 02DE0 80A770F0 00000000 */  nop
/* 02DE4 80A770F4 468021A0 */  cvt.s.w $f6, $f4                   
/* 02DE8 80A770F8 E4E60024 */  swc1    $f6, 0x0024($a3)           ## 00000024
/* 02DEC 80A770FC 8C4F0010 */  lw      $t7, 0x0010($v0)           ## 00000010
/* 02DF0 80A77100 448F4000 */  mtc1    $t7, $f8                   ## $f8 = 0.00
/* 02DF4 80A77104 00000000 */  nop
/* 02DF8 80A77108 468042A0 */  cvt.s.w $f10, $f8                  
/* 02DFC 80A7710C E4EA0028 */  swc1    $f10, 0x0028($a3)          ## 00000028
/* 02E00 80A77110 8C580014 */  lw      $t8, 0x0014($v0)           ## 00000014
/* 02E04 80A77114 44988000 */  mtc1    $t8, $f16                  ## $f16 = 0.00
/* 02E08 80A77118 00000000 */  nop
/* 02E0C 80A7711C 468084A0 */  cvt.s.w $f18, $f16                 
/* 02E10 80A77120 E4F2002C */  swc1    $f18, 0x002C($a3)          ## 0000002C
/* 02E14 80A77124 84430008 */  lh      $v1, 0x0008($v0)           ## 00000008
/* 02E18 80A77128 A4E300B6 */  sh      $v1, 0x00B6($a3)           ## 000000B6
/* 02E1C 80A7712C A4E30032 */  sh      $v1, 0x0032($a3)           ## 00000032
.L80A77130:
/* 02E20 80A77130 8FBF0014 */  lw      $ra, 0x0014($sp)           
/* 02E24 80A77134 27BD0018 */  addiu   $sp, $sp, 0x0018           ## $sp = 00000000
/* 02E28 80A77138 03E00008 */  jr      $ra                        
/* 02E2C 80A7713C 00000000 */  nop
