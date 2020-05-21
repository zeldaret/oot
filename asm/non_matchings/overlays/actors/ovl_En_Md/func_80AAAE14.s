glabel func_80AAAE14
/* 00BC4 80AAAE14 AFA40000 */  sw      $a0, 0x0000($sp)           
/* 00BC8 80AAAE18 3C028016 */  lui     $v0, %hi(gSaveContext)
/* 00BCC 80AAAE1C 2442E660 */  addiu   $v0, %lo(gSaveContext)
/* 00BD0 80AAAE20 A0A00208 */  sb      $zero, 0x0208($a1)         ## 00000208
/* 00BD4 80AAAE24 A0A00209 */  sb      $zero, 0x0209($a1)         ## 00000209
/* 00BD8 80AAAE28 944E0EDC */  lhu     $t6, 0x0EDC($v0)           ## 8015F53C
/* 00BDC 80AAAE2C 31CF0100 */  andi    $t7, $t6, 0x0100           ## $t7 = 00000000
/* 00BE0 80AAAE30 51E0000A */  beql    $t7, $zero, .L80AAAE5C     
/* 00BE4 80AAAE34 94480ED4 */  lhu     $t0, 0x0ED4($v0)           ## 8015F534
/* 00BE8 80AAAE38 94580EFA */  lhu     $t8, 0x0EFA($v0)           ## 8015F55A
/* 00BEC 80AAAE3C 33190200 */  andi    $t9, $t8, 0x0200           ## $t9 = 00000000
/* 00BF0 80AAAE40 13200003 */  beq     $t9, $zero, .L80AAAE50     
/* 00BF4 80AAAE44 00000000 */  nop
/* 00BF8 80AAAE48 03E00008 */  jr      $ra                        
/* 00BFC 80AAAE4C 24021071 */  addiu   $v0, $zero, 0x1071         ## $v0 = 00001071
.L80AAAE50:
/* 00C00 80AAAE50 03E00008 */  jr      $ra                        
/* 00C04 80AAAE54 24021070 */  addiu   $v0, $zero, 0x1070         ## $v0 = 00001070
.L80AAAE58:
/* 00C08 80AAAE58 94480ED4 */  lhu     $t0, 0x0ED4($v0)           ## 00001F44
.L80AAAE5C:
/* 00C0C 80AAAE5C 31090400 */  andi    $t1, $t0, 0x0400           ## $t1 = 00000000
/* 00C10 80AAAE60 51200004 */  beql    $t1, $zero, .L80AAAE74     
/* 00C14 80AAAE64 944A0EFA */  lhu     $t2, 0x0EFA($v0)           ## 00001F6A
/* 00C18 80AAAE68 03E00008 */  jr      $ra                        
/* 00C1C 80AAAE6C 24021068 */  addiu   $v0, $zero, 0x1068         ## $v0 = 00001068
.L80AAAE70:
/* 00C20 80AAAE70 944A0EFA */  lhu     $t2, 0x0EFA($v0)           ## 00001F62
.L80AAAE74:
/* 00C24 80AAAE74 24021060 */  addiu   $v0, $zero, 0x1060         ## $v0 = 00001060
/* 00C28 80AAAE78 314B0020 */  andi    $t3, $t2, 0x0020           ## $t3 = 00000000
/* 00C2C 80AAAE7C 11600003 */  beq     $t3, $zero, .L80AAAE8C     
/* 00C30 80AAAE80 00000000 */  nop
/* 00C34 80AAAE84 03E00008 */  jr      $ra                        
/* 00C38 80AAAE88 24021061 */  addiu   $v0, $zero, 0x1061         ## $v0 = 00001061
.L80AAAE8C:
/* 00C3C 80AAAE8C 03E00008 */  jr      $ra                        
/* 00C40 80AAAE90 00000000 */  nop
