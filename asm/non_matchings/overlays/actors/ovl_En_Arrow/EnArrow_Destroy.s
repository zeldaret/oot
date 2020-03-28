glabel EnArrow_Destroy
/* 0022C 809B3B4C 27BDFFE0 */  addiu   $sp, $sp, 0xFFE0           ## $sp = FFFFFFE0
/* 00230 809B3B50 AFBF001C */  sw      $ra, 0x001C($sp)
/* 00234 809B3B54 AFB00018 */  sw      $s0, 0x0018($sp)
/* 00238 809B3B58 AFA50024 */  sw      $a1, 0x0024($sp)
/* 0023C 809B3B5C 848E001C */  lh      $t6, 0x001C($a0)           ## 0000001C
/* 00240 809B3B60 00808025 */  or      $s0, $a0, $zero            ## $s0 = 00000000
/* 00244 809B3B64 00A02025 */  or      $a0, $a1, $zero            ## $a0 = 00000000
/* 00248 809B3B68 29C10006 */  slti    $at, $t6, 0x0006
/* 0024C 809B3B6C 50200004 */  beql    $at, $zero, .L809B3B80
/* 00250 809B3B70 2604014C */  addiu   $a0, $s0, 0x014C           ## $a0 = 0000014C
/* 00254 809B3B74 0C009C27 */  jal     func_8002709C
/* 00258 809B3B78 8E050228 */  lw      $a1, 0x0228($s0)           ## 00000228
/* 0025C 809B3B7C 2604014C */  addiu   $a0, $s0, 0x014C           ## $a0 = 0000014C
.L809B3B80:
/* 00260 809B3B80 0C0295BC */  jal     SkelAnime_Free
/* 00264 809B3B84 8FA50024 */  lw      $a1, 0x0024($sp)
/* 00268 809B3B88 8FA40024 */  lw      $a0, 0x0024($sp)
/* 0026C 809B3B8C 0C017418 */  jal     func_8005D060
/* 00270 809B3B90 26050190 */  addiu   $a1, $s0, 0x0190           ## $a1 = 00000190
/* 00274 809B3B94 8E02024C */  lw      $v0, 0x024C($s0)           ## 0000024C
/* 00278 809B3B98 5040000A */  beql    $v0, $zero, .L809B3BC4
/* 0027C 809B3B9C 8FBF001C */  lw      $ra, 0x001C($sp)
/* 00280 809B3BA0 8C4F0130 */  lw      $t7, 0x0130($v0)           ## 00000130
/* 00284 809B3BA4 51E00007 */  beql    $t7, $zero, .L809B3BC4
/* 00288 809B3BA8 8FBF001C */  lw      $ra, 0x001C($sp)
/* 0028C 809B3BAC 8C580004 */  lw      $t8, 0x0004($v0)           ## 00000004
/* 00290 809B3BB0 3C01FFFF */  lui     $at, 0xFFFF                ## $at = FFFF0000
/* 00294 809B3BB4 34217FFF */  ori     $at, $at, 0x7FFF           ## $at = FFFF7FFF
/* 00298 809B3BB8 0301C824 */  and     $t9, $t8, $at
/* 0029C 809B3BBC AC590004 */  sw      $t9, 0x0004($v0)           ## 00000004
/* 002A0 809B3BC0 8FBF001C */  lw      $ra, 0x001C($sp)
.L809B3BC4:
/* 002A4 809B3BC4 8FB00018 */  lw      $s0, 0x0018($sp)
/* 002A8 809B3BC8 27BD0020 */  addiu   $sp, $sp, 0x0020           ## $sp = 00000000
/* 002AC 809B3BCC 03E00008 */  jr      $ra
/* 002B0 809B3BD0 00000000 */  nop


