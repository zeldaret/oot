glabel func_809BFBC4
/* 00324 809BFBC4 27BDFFE0 */  addiu   $sp, $sp, 0xFFE0           ## $sp = FFFFFFE0
/* 00328 809BFBC8 AFBF001C */  sw      $ra, 0x001C($sp)
/* 0032C 809BFBCC AFB00018 */  sw      $s0, 0x0018($sp)
/* 00330 809BFBD0 8C8E0154 */  lw      $t6, 0x0154($a0)           ## 00000154
/* 00334 809BFBD4 3C050600 */  lui     $a1, 0x0600                ## $a1 = 06000000
/* 00338 809BFBD8 24A500A4 */  addiu   $a1, $a1, 0x00A4           ## $a1 = 060000A4
/* 0033C 809BFBDC 10AE0003 */  beq     $a1, $t6, .L809BFBEC
/* 00340 809BFBE0 00808025 */  or      $s0, $a0, $zero            ## $s0 = 00000000
/* 00344 809BFBE4 0C0294BE */  jal     SkelAnime_ChangeAnimationDefaultRepeat
/* 00348 809BFBE8 2484014C */  addiu   $a0, $a0, 0x014C           ## $a0 = 0000014C
.L809BFBEC:
/* 0034C 809BFBEC 8E0501DC */  lw      $a1, 0x01DC($s0)           ## 000001DC
/* 00350 809BFBF0 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 00354 809BFBF4 0C00B6B0 */  jal     func_8002DAC0
/* 00358 809BFBF8 24A50100 */  addiu   $a1, $a1, 0x0100           ## $a1 = 00000100
/* 0035C 809BFBFC 8E0501DC */  lw      $a1, 0x01DC($s0)           ## 000001DC
/* 00360 809BFC00 34018000 */  ori     $at, $zero, 0x8000         ## $at = 00008000
/* 00364 809BFC04 00417821 */  addu    $t7, $v0, $at
/* 00368 809BFC08 A60F0032 */  sh      $t7, 0x0032($s0)           ## 00000032
/* 0036C 809BFC0C 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 00370 809BFC10 0C00B6CA */  jal     func_8002DB28
/* 00374 809BFC14 24A50100 */  addiu   $a1, $a1, 0x0100           ## $a1 = 00000100
/* 00378 809BFC18 3C0140A0 */  lui     $at, 0x40A0                ## $at = 40A00000
/* 0037C 809BFC1C 44812000 */  mtc1    $at, $f4                   ## $f4 = 5.00
/* 00380 809BFC20 3C18809C */  lui     $t8, %hi(func_809C067C)    ## $t8 = 809C0000
/* 00384 809BFC24 2718067C */  addiu   $t8, $t8, %lo(func_809C067C) ## $t8 = 809C067C
/* 00388 809BFC28 A6020030 */  sh      $v0, 0x0030($s0)           ## 00000030
/* 0038C 809BFC2C AE180190 */  sw      $t8, 0x0190($s0)           ## 00000190
/* 00390 809BFC30 E6040068 */  swc1    $f4, 0x0068($s0)           ## 00000068
/* 00394 809BFC34 8FBF001C */  lw      $ra, 0x001C($sp)
/* 00398 809BFC38 8FB00018 */  lw      $s0, 0x0018($sp)
/* 0039C 809BFC3C 27BD0020 */  addiu   $sp, $sp, 0x0020           ## $sp = 00000000
/* 003A0 809BFC40 03E00008 */  jr      $ra
/* 003A4 809BFC44 00000000 */  nop


