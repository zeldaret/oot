glabel func_80873B3C
/* 0130C 80873B3C 27BDFFE0 */  addiu   $sp, $sp, 0xFFE0           ## $sp = FFFFFFE0
/* 01310 80873B40 AFBF001C */  sw      $ra, 0x001C($sp)           
/* 01314 80873B44 AFB10018 */  sw      $s1, 0x0018($sp)           
/* 01318 80873B48 AFB00014 */  sw      $s0, 0x0014($sp)           
/* 0131C 80873B4C 3C0144AF */  lui     $at, 0x44AF                ## $at = 44AF0000
/* 01320 80873B50 44811000 */  mtc1    $at, $f2                   ## $f2 = 1400.00
/* 01324 80873B54 C4840168 */  lwc1    $f4, 0x0168($a0)           ## 00000168
/* 01328 80873B58 C486032C */  lwc1    $f6, 0x032C($a0)           ## 0000032C
/* 0132C 80873B5C 00808025 */  or      $s0, $a0, $zero            ## $s0 = 00000000
/* 01330 80873B60 46022002 */  mul.s   $f0, $f4, $f2              
/* 01334 80873B64 00A08825 */  or      $s1, $a1, $zero            ## $s1 = 00000000
/* 01338 80873B68 46023202 */  mul.s   $f8, $f6, $f2              
/* 0133C 80873B6C E4800324 */  swc1    $f0, 0x0324($a0)           ## 00000324
/* 01340 80873B70 4600403E */  c.le.s  $f8, $f0                   
/* 01344 80873B74 00000000 */  nop
/* 01348 80873B78 45000004 */  bc1f    .L80873B8C                 
/* 0134C 80873B7C 00000000 */  nop
/* 01350 80873B80 44805000 */  mtc1    $zero, $f10                ## $f10 = 0.00
/* 01354 80873B84 00000000 */  nop
/* 01358 80873B88 E48A0324 */  swc1    $f10, 0x0324($a0)          ## 00000324
.L80873B8C:
/* 0135C 80873B8C 0C02927F */  jal     SkelAnime_Update
              
/* 01360 80873B90 26040150 */  addiu   $a0, $s0, 0x0150           ## $a0 = 00000150
/* 01364 80873B94 0C042F6F */  jal     func_8010BDBC              
/* 01368 80873B98 262420D8 */  addiu   $a0, $s1, 0x20D8           ## $a0 = 000020D8
/* 0136C 80873B9C 860E02EE */  lh      $t6, 0x02EE($s0)           ## 000002EE
/* 01370 80873BA0 55C20011 */  bnel    $t6, $v0, .L80873BE8       
/* 01374 80873BA4 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 01378 80873BA8 0C041AF2 */  jal     func_80106BC8              
/* 0137C 80873BAC 02202025 */  or      $a0, $s1, $zero            ## $a0 = 00000000
/* 01380 80873BB0 5040000D */  beql    $v0, $zero, .L80873BE8     
/* 01384 80873BB4 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 01388 80873BB8 0C041B33 */  jal     func_80106CCC              
/* 0138C 80873BBC 02202025 */  or      $a0, $s1, $zero            ## $a0 = 00000000
/* 01390 80873BC0 3C0F8087 */  lui     $t7, %hi(func_80873C14)    ## $t7 = 80870000
/* 01394 80873BC4 25EF3C14 */  addiu   $t7, $t7, %lo(func_80873C14) ## $t7 = 80873C14
/* 01398 80873BC8 A60002F6 */  sh      $zero, 0x02F6($s0)         ## 000002F6
/* 0139C 80873BCC AE0F014C */  sw      $t7, 0x014C($s0)           ## 0000014C
/* 013A0 80873BD0 863807A0 */  lh      $t8, 0x07A0($s1)           ## 000007A0
/* 013A4 80873BD4 0018C880 */  sll     $t9, $t8,  2               
/* 013A8 80873BD8 02394021 */  addu    $t0, $s1, $t9              
/* 013AC 80873BDC 0C016C69 */  jal     func_8005B1A4              
/* 013B0 80873BE0 8D040790 */  lw      $a0, 0x0790($t0)           ## 00000790
/* 013B4 80873BE4 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
.L80873BE8:
/* 013B8 80873BE8 0C21CB16 */  jal     func_80872C58              
/* 013BC 80873BEC 02202825 */  or      $a1, $s1, $zero            ## $a1 = 00000000
/* 013C0 80873BF0 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 013C4 80873BF4 02202825 */  or      $a1, $s1, $zero            ## $a1 = 00000000
/* 013C8 80873BF8 0C21CA58 */  jal     func_80872960              
/* 013CC 80873BFC 00003025 */  or      $a2, $zero, $zero          ## $a2 = 00000000
/* 013D0 80873C00 8FBF001C */  lw      $ra, 0x001C($sp)           
/* 013D4 80873C04 8FB00014 */  lw      $s0, 0x0014($sp)           
/* 013D8 80873C08 8FB10018 */  lw      $s1, 0x0018($sp)           
/* 013DC 80873C0C 03E00008 */  jr      $ra                        
/* 013E0 80873C10 27BD0020 */  addiu   $sp, $sp, 0x0020           ## $sp = 00000000
