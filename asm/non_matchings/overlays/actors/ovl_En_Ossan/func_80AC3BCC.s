glabel func_80AC3BCC
/* 00F2C 80AC3BCC 8CA60224 */  lw      $a2, 0x0224($a1)           ## 00000224
/* 00F30 80AC3BD0 80820028 */  lb      $v0, 0x0028($a0)           ## 00000028
/* 00F34 80AC3BD4 80830029 */  lb      $v1, 0x0029($a0)           ## 00000029
/* 00F38 80AC3BD8 A0A0022C */  sb      $zero, 0x022C($a1)         ## 0000022C
/* 00F3C 80AC3BDC 14C0000A */  bne     $a2, $zero, .L80AC3C08     
/* 00F40 80AC3BE0 A0A0022D */  sb      $zero, 0x022D($a1)         ## 0000022D
/* 00F44 80AC3BE4 2841001F */  slti    $at, $v0, 0x001F           
/* 00F48 80AC3BE8 10200004 */  beq     $at, $zero, .L80AC3BFC     
/* 00F4C 80AC3BEC 240F0001 */  addiu   $t7, $zero, 0x0001         ## $t7 = 00000001
/* 00F50 80AC3BF0 2841FFE2 */  slti    $at, $v0, 0xFFE2           
/* 00F54 80AC3BF4 50200020 */  beql    $at, $zero, .L80AC3C78     
/* 00F58 80AC3BF8 8CA20228 */  lw      $v0, 0x0228($a1)           ## 00000228
.L80AC3BFC:
/* 00F5C 80AC3BFC ACA20224 */  sw      $v0, 0x0224($a1)           ## 00000224
/* 00F60 80AC3C00 1000001C */  beq     $zero, $zero, .L80AC3C74   
/* 00F64 80AC3C04 A0AF022C */  sb      $t7, 0x022C($a1)           ## 0000022C
.L80AC3C08:
/* 00F68 80AC3C08 2841001F */  slti    $at, $v0, 0x001F           
/* 00F6C 80AC3C0C 10200005 */  beq     $at, $zero, .L80AC3C24     
/* 00F70 80AC3C10 2841FFE2 */  slti    $at, $v0, 0xFFE2           
/* 00F74 80AC3C14 14200003 */  bne     $at, $zero, .L80AC3C24     
/* 00F78 80AC3C18 00000000 */  nop
/* 00F7C 80AC3C1C 10000015 */  beq     $zero, $zero, .L80AC3C74   
/* 00F80 80AC3C20 ACA00224 */  sw      $zero, 0x0224($a1)         ## 00000224
.L80AC3C24:
/* 00F84 80AC3C24 00C20019 */  multu   $a2, $v0                   
/* 00F88 80AC3C28 00C24021 */  addu    $t0, $a2, $v0              
/* 00F8C 80AC3C2C 24190001 */  addiu   $t9, $zero, 0x0001         ## $t9 = 00000001
/* 00F90 80AC3C30 01003025 */  or      $a2, $t0, $zero            ## $a2 = 00000000
/* 00F94 80AC3C34 290107D1 */  slti    $at, $t0, 0x07D1           
/* 00F98 80AC3C38 0000C012 */  mflo    $t8                        
/* 00F9C 80AC3C3C 07010004 */  bgez    $t8, .L80AC3C50            
/* 00FA0 80AC3C40 00000000 */  nop
/* 00FA4 80AC3C44 ACA20224 */  sw      $v0, 0x0224($a1)           ## 00000224
/* 00FA8 80AC3C48 1000000A */  beq     $zero, $zero, .L80AC3C74   
/* 00FAC 80AC3C4C A0B9022C */  sb      $t9, 0x022C($a1)           ## 0000022C
.L80AC3C50:
/* 00FB0 80AC3C50 14200004 */  bne     $at, $zero, .L80AC3C64     
/* 00FB4 80AC3C54 ACA80224 */  sw      $t0, 0x0224($a1)           ## 00000224
/* 00FB8 80AC3C58 240907D0 */  addiu   $t1, $zero, 0x07D0         ## $t1 = 000007D0
/* 00FBC 80AC3C5C 10000005 */  beq     $zero, $zero, .L80AC3C74   
/* 00FC0 80AC3C60 ACA90224 */  sw      $t1, 0x0224($a1)           ## 00000224
.L80AC3C64:
/* 00FC4 80AC3C64 28C1F830 */  slti    $at, $a2, 0xF830           
/* 00FC8 80AC3C68 10200002 */  beq     $at, $zero, .L80AC3C74     
/* 00FCC 80AC3C6C 240AF830 */  addiu   $t2, $zero, 0xF830         ## $t2 = FFFFF830
/* 00FD0 80AC3C70 ACAA0224 */  sw      $t2, 0x0224($a1)           ## 00000224
.L80AC3C74:
/* 00FD4 80AC3C74 8CA20228 */  lw      $v0, 0x0228($a1)           ## 00000228
.L80AC3C78:
/* 00FD8 80AC3C78 2861001F */  slti    $at, $v1, 0x001F           
/* 00FDC 80AC3C7C 1440000A */  bne     $v0, $zero, .L80AC3CA8     
/* 00FE0 80AC3C80 00000000 */  nop
/* 00FE4 80AC3C84 2861001F */  slti    $at, $v1, 0x001F           
/* 00FE8 80AC3C88 10200004 */  beq     $at, $zero, .L80AC3C9C     
/* 00FEC 80AC3C8C 240B0001 */  addiu   $t3, $zero, 0x0001         ## $t3 = 00000001
/* 00FF0 80AC3C90 2861FFE2 */  slti    $at, $v1, 0xFFE2           
/* 00FF4 80AC3C94 1020001E */  beq     $at, $zero, .L80AC3D10     
/* 00FF8 80AC3C98 00000000 */  nop
.L80AC3C9C:
/* 00FFC 80AC3C9C ACA30228 */  sw      $v1, 0x0228($a1)           ## 00000228
/* 01000 80AC3CA0 03E00008 */  jr      $ra                        
/* 01004 80AC3CA4 A0AB022D */  sb      $t3, 0x022D($a1)           ## 0000022D
.L80AC3CA8:
/* 01008 80AC3CA8 10200005 */  beq     $at, $zero, .L80AC3CC0     
/* 0100C 80AC3CAC 2861FFE2 */  slti    $at, $v1, 0xFFE2           
/* 01010 80AC3CB0 14200003 */  bne     $at, $zero, .L80AC3CC0     
/* 01014 80AC3CB4 00000000 */  nop
/* 01018 80AC3CB8 03E00008 */  jr      $ra                        
/* 0101C 80AC3CBC ACA00228 */  sw      $zero, 0x0228($a1)         ## 00000228
.L80AC3CC0:
/* 01020 80AC3CC0 00430019 */  multu   $v0, $v1                   
/* 01024 80AC3CC4 00437021 */  addu    $t6, $v0, $v1              
/* 01028 80AC3CC8 240D0001 */  addiu   $t5, $zero, 0x0001         ## $t5 = 00000001
/* 0102C 80AC3CCC 01C01025 */  or      $v0, $t6, $zero            ## $v0 = 00000000
/* 01030 80AC3CD0 29C107D1 */  slti    $at, $t6, 0x07D1           
/* 01034 80AC3CD4 00006012 */  mflo    $t4                        
/* 01038 80AC3CD8 05810004 */  bgez    $t4, .L80AC3CEC            
/* 0103C 80AC3CDC 00000000 */  nop
/* 01040 80AC3CE0 ACA30228 */  sw      $v1, 0x0228($a1)           ## 00000228
/* 01044 80AC3CE4 03E00008 */  jr      $ra                        
/* 01048 80AC3CE8 A0AD022D */  sb      $t5, 0x022D($a1)           ## 0000022D
.L80AC3CEC:
/* 0104C 80AC3CEC 14200004 */  bne     $at, $zero, .L80AC3D00     
/* 01050 80AC3CF0 ACAE0228 */  sw      $t6, 0x0228($a1)           ## 00000228
/* 01054 80AC3CF4 240F07D0 */  addiu   $t7, $zero, 0x07D0         ## $t7 = 000007D0
/* 01058 80AC3CF8 03E00008 */  jr      $ra                        
/* 0105C 80AC3CFC ACAF0228 */  sw      $t7, 0x0228($a1)           ## 00000228
.L80AC3D00:
/* 01060 80AC3D00 2841F830 */  slti    $at, $v0, 0xF830           
/* 01064 80AC3D04 10200002 */  beq     $at, $zero, .L80AC3D10     
/* 01068 80AC3D08 2418F830 */  addiu   $t8, $zero, 0xF830         ## $t8 = FFFFF830
/* 0106C 80AC3D0C ACB80228 */  sw      $t8, 0x0228($a1)           ## 00000228
.L80AC3D10:
/* 01070 80AC3D10 03E00008 */  jr      $ra                        
/* 01074 80AC3D14 00000000 */  nop
