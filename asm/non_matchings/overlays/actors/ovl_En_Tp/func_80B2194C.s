glabel func_80B2194C
/* 00B6C 80B2194C 27BDFFE8 */  addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
/* 00B70 80B21950 AFBF0014 */  sw      $ra, 0x0014($sp)           
/* 00B74 80B21954 0C03F66B */  jal     Math_Rand_ZeroOne
              ## Rand.Next() float
/* 00B78 80B21958 AFA40018 */  sw      $a0, 0x0018($sp)           
/* 00B7C 80B2195C 3C014170 */  lui     $at, 0x4170                ## $at = 41700000
/* 00B80 80B21960 44812000 */  mtc1    $at, $f4                   ## $f4 = 15.00
/* 00B84 80B21964 3C014220 */  lui     $at, 0x4220                ## $at = 42200000
/* 00B88 80B21968 44814000 */  mtc1    $at, $f8                   ## $f8 = 40.00
/* 00B8C 80B2196C 46040182 */  mul.s   $f6, $f0, $f4              
/* 00B90 80B21970 8FA40018 */  lw      $a0, 0x0018($sp)           
/* 00B94 80B21974 24180008 */  addiu   $t8, $zero, 0x0008         ## $t8 = 00000008
/* 00B98 80B21978 3C0580B2 */  lui     $a1, %hi(func_80B219A8)    ## $a1 = 80B20000
/* 00B9C 80B2197C 24A519A8 */  addiu   $a1, $a1, %lo(func_80B219A8) ## $a1 = 80B219A8
/* 00BA0 80B21980 AC98014C */  sw      $t8, 0x014C($a0)           ## 0000014C
/* 00BA4 80B21984 46083280 */  add.s   $f10, $f6, $f8             
/* 00BA8 80B21988 4600540D */  trunc.w.s $f16, $f10                 
/* 00BAC 80B2198C 440F8000 */  mfc1    $t7, $f16                  
/* 00BB0 80B21990 0C2C8378 */  jal     func_80B20DE0              
/* 00BB4 80B21994 A48F015A */  sh      $t7, 0x015A($a0)           ## 0000015A
/* 00BB8 80B21998 8FBF0014 */  lw      $ra, 0x0014($sp)           
/* 00BBC 80B2199C 27BD0018 */  addiu   $sp, $sp, 0x0018           ## $sp = 00000000
/* 00BC0 80B219A0 03E00008 */  jr      $ra                        
/* 00BC4 80B219A4 00000000 */  nop


