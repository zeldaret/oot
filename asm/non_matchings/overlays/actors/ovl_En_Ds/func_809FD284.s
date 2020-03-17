glabel func_809FD284
/* 00254 809FD284 27BDFFE0 */  addiu   $sp, $sp, 0xFFE0           ## $sp = FFFFFFE0
/* 00258 809FD288 AFBF001C */  sw      $ra, 0x001C($sp)           
/* 0025C 809FD28C AFA50024 */  sw      $a1, 0x0024($sp)           
/* 00260 809FD290 0C00BD04 */  jal     func_8002F410              
/* 00264 809FD294 AFA40020 */  sw      $a0, 0x0020($sp)           
/* 00268 809FD298 10400008 */  beq     $v0, $zero, .L809FD2BC     
/* 0026C 809FD29C 8FA40020 */  lw      $a0, 0x0020($sp)           
/* 00270 809FD2A0 3C0E80A0 */  lui     $t6, %hi(func_809FD224)    ## $t6 = 80A00000
/* 00274 809FD2A4 25CED224 */  addiu   $t6, $t6, %lo(func_809FD224) ## $t6 = 809FD224
/* 00278 809FD2A8 AC800118 */  sw      $zero, 0x0118($a0)         ## 00000118
/* 0027C 809FD2AC AC8E01EC */  sw      $t6, 0x01EC($a0)           ## 000001EC
/* 00280 809FD2B0 3C018016 */  lui     $at, 0x8016                ## $at = 80160000
/* 00284 809FD2B4 10000009 */  beq     $zero, $zero, .L809FD2DC   
/* 00288 809FD2B8 A420FA32 */  sh      $zero, -0x05CE($at)        ## 8015FA32
.L809FD2BC:
/* 0028C 809FD2BC 3C014248 */  lui     $at, 0x4248                ## $at = 42480000
/* 00290 809FD2C0 44812000 */  mtc1    $at, $f4                   ## $f4 = 50.00
/* 00294 809FD2C4 3C07461C */  lui     $a3, 0x461C                ## $a3 = 461C0000
/* 00298 809FD2C8 34E74000 */  ori     $a3, $a3, 0x4000           ## $a3 = 461C4000
/* 0029C 809FD2CC 8FA50024 */  lw      $a1, 0x0024($sp)           
/* 002A0 809FD2D0 24060020 */  addiu   $a2, $zero, 0x0020         ## $a2 = 00000020
/* 002A4 809FD2D4 0C00BD0D */  jal     func_8002F434              
/* 002A8 809FD2D8 E7A40010 */  swc1    $f4, 0x0010($sp)           
.L809FD2DC:
/* 002AC 809FD2DC 8FBF001C */  lw      $ra, 0x001C($sp)           
/* 002B0 809FD2E0 27BD0020 */  addiu   $sp, $sp, 0x0020           ## $sp = 00000000
/* 002B4 809FD2E4 03E00008 */  jr      $ra                        
/* 002B8 809FD2E8 00000000 */  nop


