glabel func_809EEA00
/* 01190 809EEA00 27BDFFD8 */  addiu   $sp, $sp, 0xFFD8           ## $sp = FFFFFFD8
/* 01194 809EEA04 AFB00020 */  sw      $s0, 0x0020($sp)           
/* 01198 809EEA08 00808025 */  or      $s0, $a0, $zero            ## $s0 = 00000000
/* 0119C 809EEA0C AFBF0024 */  sw      $ra, 0x0024($sp)           
/* 011A0 809EEA10 AFA5002C */  sw      $a1, 0x002C($sp)           
/* 011A4 809EEA14 0C02927F */  jal     SkelAnime_FrameUpdateMatrix
              
/* 011A8 809EEA18 2484014C */  addiu   $a0, $a0, 0x014C           ## $a0 = 0000014C
/* 011AC 809EEA1C 8FA4002C */  lw      $a0, 0x002C($sp)           
/* 011B0 809EEA20 0C042F6F */  jal     func_8010BDBC              
/* 011B4 809EEA24 248420D8 */  addiu   $a0, $a0, 0x20D8           ## $a0 = 000020D8
/* 011B8 809EEA28 860E0292 */  lh      $t6, 0x0292($s0)           ## 00000292
/* 011BC 809EEA2C 55C20014 */  bnel    $t6, $v0, .L809EEA80       
/* 011C0 809EEA30 8FBF0024 */  lw      $ra, 0x0024($sp)           
/* 011C4 809EEA34 0C041AF2 */  jal     func_80106BC8              
/* 011C8 809EEA38 8FA4002C */  lw      $a0, 0x002C($sp)           
/* 011CC 809EEA3C 50400010 */  beql    $v0, $zero, .L809EEA80     
/* 011D0 809EEA40 8FBF0024 */  lw      $ra, 0x0024($sp)           
/* 011D4 809EEA44 0C041B33 */  jal     func_80106CCC              
/* 011D8 809EEA48 8FA4002C */  lw      $a0, 0x002C($sp)           
/* 011DC 809EEA4C 3C014120 */  lui     $at, 0x4120                ## $at = 41200000
/* 011E0 809EEA50 44812000 */  mtc1    $at, $f4                   ## $f4 = 10.00
/* 011E4 809EEA54 AE000118 */  sw      $zero, 0x0118($s0)         ## 00000118
/* 011E8 809EEA58 8FA5002C */  lw      $a1, 0x002C($sp)           
/* 011EC 809EEA5C 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 011F0 809EEA60 24060037 */  addiu   $a2, $zero, 0x0037         ## $a2 = 00000037
/* 011F4 809EEA64 3C0742B4 */  lui     $a3, 0x42B4                ## $a3 = 42B40000
/* 011F8 809EEA68 0C00BD0D */  jal     func_8002F434              
/* 011FC 809EEA6C E7A40010 */  swc1    $f4, 0x0010($sp)           
/* 01200 809EEA70 3C0F809F */  lui     $t7, %hi(func_809EEA90)    ## $t7 = 809F0000
/* 01204 809EEA74 25EFEA90 */  addiu   $t7, $t7, %lo(func_809EEA90) ## $t7 = 809EEA90
/* 01208 809EEA78 AE0F0280 */  sw      $t7, 0x0280($s0)           ## 00000280
/* 0120C 809EEA7C 8FBF0024 */  lw      $ra, 0x0024($sp)           
.L809EEA80:
/* 01210 809EEA80 8FB00020 */  lw      $s0, 0x0020($sp)           
/* 01214 809EEA84 27BD0028 */  addiu   $sp, $sp, 0x0028           ## $sp = 00000000
/* 01218 809EEA88 03E00008 */  jr      $ra                        
/* 0121C 809EEA8C 00000000 */  nop
