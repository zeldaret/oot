glabel func_80A97258
/* 004A8 80A97258 3C028016 */  lui     $v0, 0x8016                ## $v0 = 80160000
/* 004AC 80A9725C 2442E660 */  addiu   $v0, $v0, 0xE660           ## $v0 = 8015E660
/* 004B0 80A97260 94480EDC */  lhu     $t0, 0x0EDC($v0)           ## 8015F53C
/* 004B4 80A97264 3C0A8012 */  lui     $t2, 0x8012                ## $t2 = 80120000
/* 004B8 80A97268 31090001 */  andi    $t1, $t0, 0x0001           ## $t1 = 00000000
/* 004BC 80A9726C 11200003 */  beq     $t1, $zero, .L80A9727C     
/* 004C0 80A97270 00000000 */  nop
/* 004C4 80A97274 03E00008 */  jr      $ra                        
/* 004C8 80A97278 240210B5 */  addiu   $v0, $zero, 0x10B5         ## $v0 = 000010B5
.L80A9727C:
/* 004CC 80A9727C 8D4A7168 */  lw      $t2, 0x7168($t2)           ## 80127168
/* 004D0 80A97280 8C4B00A4 */  lw      $t3, 0x00A4($v0)           ## 00001159
/* 004D4 80A97284 014B6024 */  and     $t4, $t2, $t3              
/* 004D8 80A97288 51800004 */  beql    $t4, $zero, .L80A9729C     
/* 004DC 80A9728C 944D0EFC */  lhu     $t5, 0x0EFC($v0)           ## 00001FB1
/* 004E0 80A97290 03E00008 */  jr      $ra                        
/* 004E4 80A97294 24021043 */  addiu   $v0, $zero, 0x1043         ## $v0 = 00001043
.L80A97298:
/* 004E8 80A97298 944D0EFC */  lhu     $t5, 0x0EFC($v0)           ## 00001F3F
.L80A9729C:
/* 004EC 80A9729C 31AE0100 */  andi    $t6, $t5, 0x0100           ## $t6 = 00000000
/* 004F0 80A972A0 11C00003 */  beq     $t6, $zero, .L80A972B0     
/* 004F4 80A972A4 00000000 */  nop
/* 004F8 80A972A8 03E00008 */  jr      $ra                        
/* 004FC 80A972AC 24021019 */  addiu   $v0, $zero, 0x1019         ## $v0 = 00001019
.L80A972B0:
/* 00500 80A972B0 03E00008 */  jr      $ra                        
/* 00504 80A972B4 2402100E */  addiu   $v0, $zero, 0x100E         ## $v0 = 0000100E
glabel L80A972B8
/* 00508 80A972B8 03E00008 */  jr      $ra                        
/* 0050C 80A972BC 24021035 */  addiu   $v0, $zero, 0x1035         ## $v0 = 00001035
glabel L80A972C0
/* 00510 80A972C0 03E00008 */  jr      $ra                        
/* 00514 80A972C4 24021038 */  addiu   $v0, $zero, 0x1038         ## $v0 = 00001038
