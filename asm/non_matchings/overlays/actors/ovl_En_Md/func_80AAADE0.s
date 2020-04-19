glabel func_80AAADE0
/* 00B90 80AAADE0 AFA40000 */  sw      $a0, 0x0000($sp)           
/* 00B94 80AAADE4 A0A00208 */  sb      $zero, 0x0208($a1)         ## 00000208
/* 00B98 80AAADE8 A0A00209 */  sb      $zero, 0x0209($a1)         ## 00000209
/* 00B9C 80AAADEC 3C0E8016 */  lui     $t6, %hi(gSaveContext+0xedc)
/* 00BA0 80AAADF0 95CEF53C */  lhu     $t6, %lo(gSaveContext+0xedc)($t6)
/* 00BA4 80AAADF4 24021046 */  addiu   $v0, $zero, 0x1046         ## $v0 = 00001046
/* 00BA8 80AAADF8 31CF0001 */  andi    $t7, $t6, 0x0001           ## $t7 = 00000000
/* 00BAC 80AAADFC 11E00003 */  beq     $t7, $zero, .L80AAAE0C     
/* 00BB0 80AAAE00 00000000 */  nop
/* 00BB4 80AAAE04 03E00008 */  jr      $ra                        
/* 00BB8 80AAAE08 24021028 */  addiu   $v0, $zero, 0x1028         ## $v0 = 00001028
.L80AAAE0C:
/* 00BBC 80AAAE0C 03E00008 */  jr      $ra                        
/* 00BC0 80AAAE10 00000000 */  nop
