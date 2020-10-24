glabel func_80A12730
/* 00B10 80A12730 27BDFFC0 */  addiu   $sp, $sp, 0xFFC0           ## $sp = FFFFFFC0
/* 00B14 80A12734 AFBF002C */  sw      $ra, 0x002C($sp)           
/* 00B18 80A12738 AFB00028 */  sw      $s0, 0x0028($sp)           
/* 00B1C 80A1273C AFA50044 */  sw      $a1, 0x0044($sp)           
/* 00B20 80A12740 848E018A */  lh      $t6, 0x018A($a0)           ## 0000018A
/* 00B24 80A12744 00808025 */  or      $s0, $a0, $zero            ## $s0 = 00000000
/* 00B28 80A12748 3C0141A0 */  lui     $at, 0x41A0                ## $at = 41A00000
/* 00B2C 80A1274C 55C0002D */  bnel    $t6, $zero, .L80A12804     
/* 00B30 80A12750 8FBF002C */  lw      $ra, 0x002C($sp)           
/* 00B34 80A12754 44816000 */  mtc1    $at, $f12                  ## $f12 = 20.00
/* 00B38 80A12758 0C00CFC8 */  jal     Math_Rand_CenteredFloat
              
/* 00B3C 80A1275C 00000000 */  nop
/* 00B40 80A12760 C6040024 */  lwc1    $f4, 0x0024($s0)           ## 00000024
/* 00B44 80A12764 3C0141A0 */  lui     $at, 0x41A0                ## $at = 41A00000
/* 00B48 80A12768 44816000 */  mtc1    $at, $f12                  ## $f12 = 20.00
/* 00B4C 80A1276C 46040180 */  add.s   $f6, $f0, $f4              
/* 00B50 80A12770 0C00CFC8 */  jal     Math_Rand_CenteredFloat
              
/* 00B54 80A12774 E7A60034 */  swc1    $f6, 0x0034($sp)           
/* 00B58 80A12778 C6080028 */  lwc1    $f8, 0x0028($s0)           ## 00000028
/* 00B5C 80A1277C 3C0141A0 */  lui     $at, 0x41A0                ## $at = 41A00000
/* 00B60 80A12780 44816000 */  mtc1    $at, $f12                  ## $f12 = 20.00
/* 00B64 80A12784 46080280 */  add.s   $f10, $f0, $f8             
/* 00B68 80A12788 0C00CFC8 */  jal     Math_Rand_CenteredFloat
              
/* 00B6C 80A1278C E7AA0038 */  swc1    $f10, 0x0038($sp)          
/* 00B70 80A12790 C610002C */  lwc1    $f16, 0x002C($s0)          ## 0000002C
/* 00B74 80A12794 3C014270 */  lui     $at, 0x4270                ## $at = 42700000
/* 00B78 80A12798 44816000 */  mtc1    $at, $f12                  ## $f12 = 60.00
/* 00B7C 80A1279C 46100480 */  add.s   $f18, $f0, $f16            
/* 00B80 80A127A0 0C00CFC8 */  jal     Math_Rand_CenteredFloat
              
/* 00B84 80A127A4 E7B2003C */  swc1    $f18, 0x003C($sp)          
/* 00B88 80A127A8 4600010D */  trunc.w.s $f4, $f0                   
/* 00B8C 80A127AC 3C014040 */  lui     $at, 0x4040                ## $at = 40400000
/* 00B90 80A127B0 44816000 */  mtc1    $at, $f12                  ## $f12 = 3.00
/* 00B94 80A127B4 44082000 */  mfc1    $t0, $f4                   
/* 00B98 80A127B8 00000000 */  nop
/* 00B9C 80A127BC 25090082 */  addiu   $t1, $t0, 0x0082           ## $t1 = 00000082
/* 00BA0 80A127C0 0C00CFBE */  jal     Math_Rand_ZeroFloat
              
/* 00BA4 80A127C4 A7A90032 */  sh      $t1, 0x0032($sp)           
/* 00BA8 80A127C8 4600018D */  trunc.w.s $f6, $f0                   
/* 00BAC 80A127CC 240FFFFF */  addiu   $t7, $zero, 0xFFFF         ## $t7 = FFFFFFFF
/* 00BB0 80A127D0 02002825 */  or      $a1, $s0, $zero            ## $a1 = 00000000
/* 00BB4 80A127D4 27A60034 */  addiu   $a2, $sp, 0x0034           ## $a2 = FFFFFFF4
/* 00BB8 80A127D8 440D3000 */  mfc1    $t5, $f6                   
/* 00BBC 80A127DC 00000000 */  nop
/* 00BC0 80A127E0 25AE0003 */  addiu   $t6, $t5, 0x0003           ## $t6 = 00000003
/* 00BC4 80A127E4 A60E018A */  sh      $t6, 0x018A($s0)           ## 0000018A
/* 00BC8 80A127E8 AFAF0018 */  sw      $t7, 0x0018($sp)           
/* 00BCC 80A127EC AFA00014 */  sw      $zero, 0x0014($sp)         
/* 00BD0 80A127F0 AFA00010 */  sw      $zero, 0x0010($sp)         
/* 00BD4 80A127F4 87A70032 */  lh      $a3, 0x0032($sp)           
/* 00BD8 80A127F8 0C00A935 */  jal     EffectSsEnFire_SpawnVec3f              
/* 00BDC 80A127FC 8FA40044 */  lw      $a0, 0x0044($sp)           
/* 00BE0 80A12800 8FBF002C */  lw      $ra, 0x002C($sp)           
.L80A12804:
/* 00BE4 80A12804 8FB00028 */  lw      $s0, 0x0028($sp)           
/* 00BE8 80A12808 27BD0040 */  addiu   $sp, $sp, 0x0040           ## $sp = 00000000
/* 00BEC 80A1280C 03E00008 */  jr      $ra                        
/* 00BF0 80A12810 00000000 */  nop
