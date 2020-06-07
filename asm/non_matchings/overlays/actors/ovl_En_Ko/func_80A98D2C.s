glabel func_80A98D2C
/* 01F7C 80A98D2C 3C028016 */  lui     $v0, %hi(gSaveContext)
/* 01F80 80A98D30 2442E660 */  addiu   $v0, %lo(gSaveContext)
/* 01F84 80A98D34 8C4E0004 */  lw      $t6, 0x0004($v0)           ## 8015E664
/* 01F88 80A98D38 AFA40000 */  sw      $a0, 0x0000($sp)           
/* 01F8C 80A98D3C 3C0F8012 */  lui     $t7, %hi(gBitFlags)
/* 01F90 80A98D40 15C0000B */  bne     $t6, $zero, .L80A98D70     
/* 01F94 80A98D44 3C088012 */  lui     $t0, %hi(gBitFlags+0x48)
/* 01F98 80A98D48 8DEF7120 */  lw      $t7, %lo(gBitFlags)($t7)
/* 01F9C 80A98D4C 8C5800A4 */  lw      $t8, 0x00A4($v0)           ## 8015E704
/* 01FA0 80A98D50 24030003 */  addiu   $v1, $zero, 0x0003         ## $v1 = 00000003
/* 01FA4 80A98D54 01F8C824 */  and     $t9, $t7, $t8              
/* 01FA8 80A98D58 13200003 */  beq     $t9, $zero, .L80A98D68     
/* 01FAC 80A98D5C 00000000 */  nop
/* 01FB0 80A98D60 03E00008 */  jr      $ra                        
/* 01FB4 80A98D64 24020004 */  addiu   $v0, $zero, 0x0004         ## $v0 = 00000004
.L80A98D68:
/* 01FB8 80A98D68 03E00008 */  jr      $ra                        
/* 01FBC 80A98D6C 00601025 */  or      $v0, $v1, $zero            ## $v0 = 00000003
.L80A98D70:
/* 01FC0 80A98D70 8D087168 */  lw      $t0, %lo(gBitFlags+0x48)($t0)
/* 01FC4 80A98D74 8C4900A4 */  lw      $t1, 0x00A4($v0)           ## 000000A7
/* 01FC8 80A98D78 01095024 */  and     $t2, $t0, $t1              
/* 01FCC 80A98D7C 5140000B */  beql    $t2, $zero, .L80A98DAC     
/* 01FD0 80A98D80 00001025 */  or      $v0, $zero, $zero          ## $v0 = 00000000
/* 01FD4 80A98D84 944B0EDC */  lhu     $t3, 0x0EDC($v0)           ## 00000EDC
/* 01FD8 80A98D88 24030001 */  addiu   $v1, $zero, 0x0001         ## $v1 = 00000001
/* 01FDC 80A98D8C 316C0001 */  andi    $t4, $t3, 0x0001           ## $t4 = 00000000
/* 01FE0 80A98D90 11800003 */  beq     $t4, $zero, .L80A98DA0     
/* 01FE4 80A98D94 00000000 */  nop
/* 01FE8 80A98D98 03E00008 */  jr      $ra                        
/* 01FEC 80A98D9C 24020002 */  addiu   $v0, $zero, 0x0002         ## $v0 = 00000002
.L80A98DA0:
/* 01FF0 80A98DA0 03E00008 */  jr      $ra                        
/* 01FF4 80A98DA4 00601025 */  or      $v0, $v1, $zero            ## $v0 = 00000001
.L80A98DA8:
/* 01FF8 80A98DA8 00001025 */  or      $v0, $zero, $zero          ## $v0 = 00000000
.L80A98DAC:
/* 01FFC 80A98DAC 03E00008 */  jr      $ra                        
/* 02000 80A98DB0 00000000 */  nop
