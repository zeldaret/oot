glabel func_80A1DB60
/* 00350 80A1DB60 90AE1D6C */  lbu     $t6, 0x1D6C($a1)           ## 00001D6C
/* 00354 80A1DB64 3C028016 */  lui     $v0, 0x8016                ## $v0 = 80160000
/* 00358 80A1DB68 2442E660 */  addiu   $v0, $v0, 0xE660           ## $v0 = 8015E660
/* 0035C 80A1DB6C 15C0000A */  bne     $t6, $zero, .L80A1DB98     
/* 00360 80A1DB70 3C0F80A2 */  lui     $t7, %hi(func_80A1DE24)    ## $t7 = 80A20000
/* 00364 80A1DB74 25EFDE24 */  addiu   $t7, $t7, %lo(func_80A1DE24) ## $t7 = 80A1DE24
/* 00368 80A1DB78 AC8F02AC */  sw      $t7, 0x02AC($a0)           ## 000002AC
/* 0036C 80A1DB7C 94580EDE */  lhu     $t8, 0x0EDE($v0)           ## 8015F53E
/* 00370 80A1DB80 3C010001 */  lui     $at, 0x0001                ## $at = 00010000
/* 00374 80A1DB84 00250821 */  addu    $at, $at, $a1              
/* 00378 80A1DB88 37190800 */  ori     $t9, $t8, 0x0800           ## $t9 = 00000800
/* 0037C 80A1DB8C A4590EDE */  sh      $t9, 0x0EDE($v0)           ## 8015F53E
/* 00380 80A1DB90 24080004 */  addiu   $t0, $zero, 0x0004         ## $t0 = 00000004
/* 00384 80A1DB94 A42804C6 */  sh      $t0, 0x04C6($at)           ## 000104C6
.L80A1DB98:
/* 00388 80A1DB98 03E00008 */  jr      $ra                        
/* 0038C 80A1DB9C 00000000 */  nop
