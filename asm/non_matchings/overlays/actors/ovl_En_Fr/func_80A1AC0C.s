glabel func_80A1AC0C
/* 0026C 80A1AC0C 848E001C */  lh      $t6, 0x001C($a0)           ## 0000001C
/* 00270 80A1AC10 24010004 */  addiu   $at, $zero, 0x0004         ## $at = 00000004
/* 00274 80A1AC14 3C0F80A2 */  lui     $t7, %hi(func_80A1CD24)    ## $t7 = 80A20000
/* 00278 80A1AC18 11C10003 */  beq     $t6, $at, .L80A1AC28       
/* 0027C 80A1AC1C 25EFCD24 */  addiu   $t7, $t7, %lo(func_80A1CD24) ## $t7 = 80A1CD24
/* 00280 80A1AC20 03E00008 */  jr      $ra                        
/* 00284 80A1AC24 AC800134 */  sw      $zero, 0x0134($a0)         ## 00000134
.L80A1AC28:
/* 00288 80A1AC28 AC8F0134 */  sw      $t7, 0x0134($a0)           ## 00000134
/* 0028C 80A1AC2C 03E00008 */  jr      $ra                        
/* 00290 80A1AC30 00000000 */  nop


