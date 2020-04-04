glabel func_80A1CC2C
/* 0228C 80A1CC2C 27BDFFB8 */  addiu   $sp, $sp, 0xFFB8           ## $sp = FFFFFFB8
/* 02290 80A1CC30 24010007 */  addiu   $at, $zero, 0x0007         ## $at = 00000007
/* 02294 80A1CC34 AFBF001C */  sw      $ra, 0x001C($sp)           
/* 02298 80A1CC38 AFB00018 */  sw      $s0, 0x0018($sp)           
/* 0229C 80A1CC3C AFA40048 */  sw      $a0, 0x0048($sp)           
/* 022A0 80A1CC40 AFA60050 */  sw      $a2, 0x0050($sp)           
/* 022A4 80A1CC44 10A10004 */  beq     $a1, $at, .L80A1CC58       
/* 022A8 80A1CC48 AFA70054 */  sw      $a3, 0x0054($sp)           
/* 022AC 80A1CC4C 24010008 */  addiu   $at, $zero, 0x0008         ## $at = 00000008
/* 022B0 80A1CC50 54A10030 */  bnel    $a1, $at, .L80A1CD14       
/* 022B4 80A1CC54 8FBF001C */  lw      $ra, 0x001C($sp)           
.L80A1CC58:
/* 022B8 80A1CC58 8FAE0048 */  lw      $t6, 0x0048($sp)           
/* 022BC 80A1CC5C 3C0680A2 */  lui     $a2, %hi(D_80A1D238)       ## $a2 = 80A20000
/* 022C0 80A1CC60 24C6D238 */  addiu   $a2, $a2, %lo(D_80A1D238)  ## $a2 = 80A1D238
/* 022C4 80A1CC64 8DC50000 */  lw      $a1, 0x0000($t6)           ## 00000000
/* 022C8 80A1CC68 27A40030 */  addiu   $a0, $sp, 0x0030           ## $a0 = FFFFFFE8
/* 022CC 80A1CC6C 240706C7 */  addiu   $a3, $zero, 0x06C7         ## $a3 = 000006C7
/* 022D0 80A1CC70 0C031AB1 */  jal     Graph_OpenDisp              
/* 022D4 80A1CC74 00A08025 */  or      $s0, $a1, $zero            ## $s0 = 00000000
/* 022D8 80A1CC78 0C034213 */  jal     Matrix_Push              
/* 022DC 80A1CC7C 00000000 */  nop
/* 022E0 80A1CC80 8FA40048 */  lw      $a0, 0x0048($sp)           
/* 022E4 80A1CC84 3C010001 */  lui     $at, 0x0001                ## $at = 00010000
/* 022E8 80A1CC88 34211DA0 */  ori     $at, $at, 0x1DA0           ## $at = 00011DA0
/* 022EC 80A1CC8C 0C0347F5 */  jal     func_800D1FD4              
/* 022F0 80A1CC90 00812021 */  addu    $a0, $a0, $at              
/* 022F4 80A1CC94 8E0202C0 */  lw      $v0, 0x02C0($s0)           ## 000002C0
/* 022F8 80A1CC98 3C18DA38 */  lui     $t8, 0xDA38                ## $t8 = DA380000
/* 022FC 80A1CC9C 37180003 */  ori     $t8, $t8, 0x0003           ## $t8 = DA380003
/* 02300 80A1CCA0 244F0008 */  addiu   $t7, $v0, 0x0008           ## $t7 = 00000008
/* 02304 80A1CCA4 AE0F02C0 */  sw      $t7, 0x02C0($s0)           ## 000002C0
/* 02308 80A1CCA8 AC580000 */  sw      $t8, 0x0000($v0)           ## 00000000
/* 0230C 80A1CCAC 8FB90048 */  lw      $t9, 0x0048($sp)           
/* 02310 80A1CCB0 3C0580A2 */  lui     $a1, %hi(D_80A1D248)       ## $a1 = 80A20000
/* 02314 80A1CCB4 24A5D248 */  addiu   $a1, $a1, %lo(D_80A1D248)  ## $a1 = 80A1D248
/* 02318 80A1CCB8 8F240000 */  lw      $a0, 0x0000($t9)           ## 00000000
/* 0231C 80A1CCBC 240606CA */  addiu   $a2, $zero, 0x06CA         ## $a2 = 000006CA
/* 02320 80A1CCC0 0C0346A2 */  jal     Matrix_NewMtx              
/* 02324 80A1CCC4 AFA2002C */  sw      $v0, 0x002C($sp)           
/* 02328 80A1CCC8 8FA3002C */  lw      $v1, 0x002C($sp)           
/* 0232C 80A1CCCC 3C09DE00 */  lui     $t1, 0xDE00                ## $t1 = DE000000
/* 02330 80A1CCD0 AC620004 */  sw      $v0, 0x0004($v1)           ## 00000004
/* 02334 80A1CCD4 8E0202C0 */  lw      $v0, 0x02C0($s0)           ## 000002C0
/* 02338 80A1CCD8 24480008 */  addiu   $t0, $v0, 0x0008           ## $t0 = 00000008
/* 0233C 80A1CCDC AE0802C0 */  sw      $t0, 0x02C0($s0)           ## 000002C0
/* 02340 80A1CCE0 AC490000 */  sw      $t1, 0x0000($v0)           ## 00000000
/* 02344 80A1CCE4 8FAA0050 */  lw      $t2, 0x0050($sp)           
/* 02348 80A1CCE8 8D4B0000 */  lw      $t3, 0x0000($t2)           ## 00000000
/* 0234C 80A1CCEC 0C034221 */  jal     Matrix_Pull              
/* 02350 80A1CCF0 AC4B0004 */  sw      $t3, 0x0004($v0)           ## 00000004
/* 02354 80A1CCF4 8FAC0048 */  lw      $t4, 0x0048($sp)           
/* 02358 80A1CCF8 3C0680A2 */  lui     $a2, %hi(D_80A1D258)       ## $a2 = 80A20000
/* 0235C 80A1CCFC 24C6D258 */  addiu   $a2, $a2, %lo(D_80A1D258)  ## $a2 = 80A1D258
/* 02360 80A1CD00 27A40030 */  addiu   $a0, $sp, 0x0030           ## $a0 = FFFFFFE8
/* 02364 80A1CD04 240706CD */  addiu   $a3, $zero, 0x06CD         ## $a3 = 000006CD
/* 02368 80A1CD08 0C031AD5 */  jal     Graph_CloseDisp              
/* 0236C 80A1CD0C 8D850000 */  lw      $a1, 0x0000($t4)           ## 00000000
/* 02370 80A1CD10 8FBF001C */  lw      $ra, 0x001C($sp)           
.L80A1CD14:
/* 02374 80A1CD14 8FB00018 */  lw      $s0, 0x0018($sp)           
/* 02378 80A1CD18 27BD0048 */  addiu   $sp, $sp, 0x0048           ## $sp = 00000000
/* 0237C 80A1CD1C 03E00008 */  jr      $ra                        
/* 02380 80A1CD20 00000000 */  nop


