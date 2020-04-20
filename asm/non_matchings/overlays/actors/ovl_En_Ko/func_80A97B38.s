glabel func_80A97B38
/* 00D88 80A97B38 3C028016 */  lui     $v0, %hi(gSaveContext)
/* 00D8C 80A97B3C 2442E660 */  addiu   $v0, %lo(gSaveContext)
/* 00D90 80A97B40 8C4E0004 */  lw      $t6, 0x0004($v0)           ## 8015E664
/* 00D94 80A97B44 AFA40000 */  sw      $a0, 0x0000($sp)           
/* 00D98 80A97B48 3C0A8012 */  lui     $t2, %hi(gBitFlags)
/* 00D9C 80A97B4C 11C00011 */  beq     $t6, $zero, .L80A97B94     
/* 00DA0 80A97B50 00000000 */  nop
/* 00DA4 80A97B54 944F0EDC */  lhu     $t7, 0x0EDC($v0)           ## 8015F53C
/* 00DA8 80A97B58 3C198012 */  lui     $t9, %hi(gBitFlags+0x48)
/* 00DAC 80A97B5C 31F80001 */  andi    $t8, $t7, 0x0001           ## $t8 = 00000000
/* 00DB0 80A97B60 13000003 */  beq     $t8, $zero, .L80A97B70     
/* 00DB4 80A97B64 00000000 */  nop
/* 00DB8 80A97B68 03E00008 */  jr      $ra                        
/* 00DBC 80A97B6C 24020002 */  addiu   $v0, $zero, 0x0002         ## $v0 = 00000002
.L80A97B70:
/* 00DC0 80A97B70 8F397168 */  lw      $t9, %lo(gBitFlags+0x48)($t9)
/* 00DC4 80A97B74 8C4800A4 */  lw      $t0, 0x00A4($v0)           ## 000000A6
/* 00DC8 80A97B78 03284824 */  and     $t1, $t9, $t0              
/* 00DCC 80A97B7C 11200003 */  beq     $t1, $zero, .L80A97B8C     
/* 00DD0 80A97B80 00000000 */  nop
/* 00DD4 80A97B84 03E00008 */  jr      $ra                        
/* 00DD8 80A97B88 24020001 */  addiu   $v0, $zero, 0x0001         ## $v0 = 00000001
.L80A97B8C:
/* 00DDC 80A97B8C 03E00008 */  jr      $ra                        
/* 00DE0 80A97B90 00001025 */  or      $v0, $zero, $zero          ## $v0 = 00000000
.L80A97B94:
/* 00DE4 80A97B94 8D4A7120 */  lw      $t2, %lo(gBitFlags)($t2)
/* 00DE8 80A97B98 8C4B00A4 */  lw      $t3, 0x00A4($v0)           ## 000000A4
/* 00DEC 80A97B9C 24030003 */  addiu   $v1, $zero, 0x0003         ## $v1 = 00000003
/* 00DF0 80A97BA0 014B6024 */  and     $t4, $t2, $t3              
/* 00DF4 80A97BA4 11800003 */  beq     $t4, $zero, .L80A97BB4     
/* 00DF8 80A97BA8 00000000 */  nop
/* 00DFC 80A97BAC 10000001 */  beq     $zero, $zero, .L80A97BB4   
/* 00E00 80A97BB0 24030004 */  addiu   $v1, $zero, 0x0004         ## $v1 = 00000004
.L80A97BB4:
/* 00E04 80A97BB4 00601025 */  or      $v0, $v1, $zero            ## $v0 = 00000004
/* 00E08 80A97BB8 03E00008 */  jr      $ra                        
/* 00E0C 80A97BBC 00000000 */  nop
