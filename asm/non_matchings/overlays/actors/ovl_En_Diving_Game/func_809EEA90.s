glabel func_809EEA90
/* 01220 809EEA90 27BDFFE0 */  addiu   $sp, $sp, 0xFFE0           ## $sp = FFFFFFE0
/* 01224 809EEA94 AFBF001C */  sw      $ra, 0x001C($sp)           
/* 01228 809EEA98 AFA40020 */  sw      $a0, 0x0020($sp)           
/* 0122C 809EEA9C AFA50024 */  sw      $a1, 0x0024($sp)           
/* 01230 809EEAA0 0C02927F */  jal     SkelAnime_FrameUpdateMatrix
              
/* 01234 809EEAA4 2484014C */  addiu   $a0, $a0, 0x014C           ## $a0 = 0000014C
/* 01238 809EEAA8 8FA40020 */  lw      $a0, 0x0020($sp)           
/* 0123C 809EEAAC 0C00BD04 */  jal     func_8002F410              
/* 01240 809EEAB0 8FA50024 */  lw      $a1, 0x0024($sp)           
/* 01244 809EEAB4 10400005 */  beq     $v0, $zero, .L809EEACC     
/* 01248 809EEAB8 8FA40020 */  lw      $a0, 0x0020($sp)           
/* 0124C 809EEABC 3C0E809F */  lui     $t6, %hi(func_809EEAF8)    ## $t6 = 809F0000
/* 01250 809EEAC0 25CEEAF8 */  addiu   $t6, $t6, %lo(func_809EEAF8) ## $t6 = 809EEAF8
/* 01254 809EEAC4 10000008 */  beq     $zero, $zero, .L809EEAE8   
/* 01258 809EEAC8 AC8E0280 */  sw      $t6, 0x0280($a0)           ## 00000280
.L809EEACC:
/* 0125C 809EEACC 3C014120 */  lui     $at, 0x4120                ## $at = 41200000
/* 01260 809EEAD0 44812000 */  mtc1    $at, $f4                   ## $f4 = 10.00
/* 01264 809EEAD4 8FA50024 */  lw      $a1, 0x0024($sp)           
/* 01268 809EEAD8 24060037 */  addiu   $a2, $zero, 0x0037         ## $a2 = 00000037
/* 0126C 809EEADC 3C0742B4 */  lui     $a3, 0x42B4                ## $a3 = 42B40000
/* 01270 809EEAE0 0C00BD0D */  jal     func_8002F434              
/* 01274 809EEAE4 E7A40010 */  swc1    $f4, 0x0010($sp)           
.L809EEAE8:
/* 01278 809EEAE8 8FBF001C */  lw      $ra, 0x001C($sp)           
/* 0127C 809EEAEC 27BD0020 */  addiu   $sp, $sp, 0x0020           ## $sp = 00000000
/* 01280 809EEAF0 03E00008 */  jr      $ra                        
/* 01284 809EEAF4 00000000 */  nop
