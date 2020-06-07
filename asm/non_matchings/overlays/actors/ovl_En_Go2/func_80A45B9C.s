glabel func_80A45B9C
/* 02E6C 80A45B9C 27BDFFE0 */  addiu   $sp, $sp, 0xFFE0           ## $sp = FFFFFFE0
/* 02E70 80A45BA0 AFBF001C */  sw      $ra, 0x001C($sp)           
/* 02E74 80A45BA4 AFB00018 */  sw      $s0, 0x0018($sp)           
/* 02E78 80A45BA8 AFA50024 */  sw      $a1, 0x0024($sp)           
/* 02E7C 80A45BAC 848E001C */  lh      $t6, 0x001C($a0)           ## 0000001C
/* 02E80 80A45BB0 24010002 */  addiu   $at, $zero, 0x0002         ## $at = 00000002
/* 02E84 80A45BB4 00808025 */  or      $s0, $a0, $zero            ## $s0 = 00000000
/* 02E88 80A45BB8 31CF001F */  andi    $t7, $t6, 0x001F           ## $t7 = 00000000
/* 02E8C 80A45BBC 15E1000E */  bne     $t7, $at, .L80A45BF8       
/* 02E90 80A45BC0 3C0580A5 */  lui     $a1, %hi(D_80A48348)       ## $a1 = 80A50000
/* 02E94 80A45BC4 8C980004 */  lw      $t8, 0x0004($a0)           ## 00000004
/* 02E98 80A45BC8 2401FFFE */  addiu   $at, $zero, 0xFFFE         ## $at = FFFFFFFE
/* 02E9C 80A45BCC 3C0580A5 */  lui     $a1, %hi(D_80A48348)       ## $a1 = 80A50000
/* 02EA0 80A45BD0 0301C824 */  and     $t9, $t8, $at              
/* 02EA4 80A45BD4 AC990004 */  sw      $t9, 0x0004($a0)           ## 00000004
/* 02EA8 80A45BD8 24A58348 */  addiu   $a1, $a1, %lo(D_80A48348)  ## $a1 = 80A48348
/* 02EAC 80A45BDC 2484014C */  addiu   $a0, $a0, 0x014C           ## $a0 = 0000014C
/* 02EB0 80A45BE0 0C00D3B0 */  jal     func_80034EC0              
/* 02EB4 80A45BE4 2406000A */  addiu   $a2, $zero, 0x000A         ## $a2 = 0000000A
/* 02EB8 80A45BE8 3C01BF00 */  lui     $at, 0xBF00                ## $at = BF000000
/* 02EBC 80A45BEC 44812000 */  mtc1    $at, $f4                   ## $f4 = -0.50
/* 02EC0 80A45BF0 10000009 */  beq     $zero, $zero, .L80A45C18   
/* 02EC4 80A45BF4 E6040168 */  swc1    $f4, 0x0168($s0)           ## 00000168
.L80A45BF8:
/* 02EC8 80A45BF8 2604014C */  addiu   $a0, $s0, 0x014C           ## $a0 = 0000014C
/* 02ECC 80A45BFC 24A58348 */  addiu   $a1, $a1, %lo(D_80A48348)  ## $a1 = FFFF8348
/* 02ED0 80A45C00 0C00D3B0 */  jal     func_80034EC0              
/* 02ED4 80A45C04 24060001 */  addiu   $a2, $zero, 0x0001         ## $a2 = 00000001
/* 02ED8 80A45C08 3C01BF80 */  lui     $at, 0xBF80                ## $at = BF800000
/* 02EDC 80A45C0C 44813000 */  mtc1    $at, $f6                   ## $f6 = -1.00
/* 02EE0 80A45C10 00000000 */  nop
/* 02EE4 80A45C14 E6060168 */  swc1    $f6, 0x0168($s0)           ## 00000168
.L80A45C18:
/* 02EE8 80A45C18 0C2912A7 */  jal     func_80A44A9C              
/* 02EEC 80A45C1C 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 02EF0 80A45C20 3C0980A4 */  lui     $t1, %hi(func_80A4696C)    ## $t1 = 80A40000
/* 02EF4 80A45C24 24080001 */  addiu   $t0, $zero, 0x0001         ## $t0 = 00000001
/* 02EF8 80A45C28 2529696C */  addiu   $t1, $t1, %lo(func_80A4696C) ## $t1 = 80A4696C
/* 02EFC 80A45C2C A608026E */  sh      $t0, 0x026E($s0)           ## 0000026E
/* 02F00 80A45C30 A2000211 */  sb      $zero, 0x0211($s0)         ## 00000211
/* 02F04 80A45C34 A200020F */  sb      $zero, 0x020F($s0)         ## 0000020F
/* 02F08 80A45C38 AE090190 */  sw      $t1, 0x0190($s0)           ## 00000190
/* 02F0C 80A45C3C 8FBF001C */  lw      $ra, 0x001C($sp)           
/* 02F10 80A45C40 8FB00018 */  lw      $s0, 0x0018($sp)           
/* 02F14 80A45C44 27BD0020 */  addiu   $sp, $sp, 0x0020           ## $sp = 00000000
/* 02F18 80A45C48 03E00008 */  jr      $ra                        
/* 02F1C 80A45C4C 00000000 */  nop
