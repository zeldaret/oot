glabel func_80931300
/* 04D30 80931300 27BDFFD8 */  addiu   $sp, $sp, 0xFFD8           ## $sp = FFFFFFD8
/* 04D34 80931304 AFBF0024 */  sw      $ra, 0x0024($sp)           
/* 04D38 80931308 AFB00020 */  sw      $s0, 0x0020($sp)           
/* 04D3C 8093130C AFA5002C */  sw      $a1, 0x002C($sp)           
/* 04D40 80931310 84820198 */  lh      $v0, 0x0198($a0)           ## 00000198
/* 04D44 80931314 00808025 */  or      $s0, $a0, $zero            ## $s0 = 00000000
/* 04D48 80931318 50400010 */  beql    $v0, $zero, .L8093135C     
/* 04D4C 8093131C 82180195 */  lb      $t8, 0x0195($s0)           ## 00000195
/* 04D50 80931320 10400003 */  beq     $v0, $zero, .L80931330     
/* 04D54 80931324 244EFFFF */  addiu   $t6, $v0, 0xFFFF           ## $t6 = FFFFFFFF
/* 04D58 80931328 A48E0198 */  sh      $t6, 0x0198($a0)           ## 00000198
/* 04D5C 8093132C 84820198 */  lh      $v0, 0x0198($a0)           ## 00000198
.L80931330:
/* 04D60 80931330 5440006B */  bnel    $v0, $zero, .L809314E0     
/* 04D64 80931334 8FBF0024 */  lw      $ra, 0x0024($sp)           
/* 04D68 80931338 0C24C53C */  jal     func_809314F0              
/* 04D6C 8093133C 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 04D70 80931340 0C24C53C */  jal     func_809314F0              
/* 04D74 80931344 8E04011C */  lw      $a0, 0x011C($s0)           ## 0000011C
/* 04D78 80931348 C60403C4 */  lwc1    $f4, 0x03C4($s0)           ## 000003C4
/* 04D7C 8093134C 8E0F011C */  lw      $t7, 0x011C($s0)           ## 0000011C
/* 04D80 80931350 10000062 */  beq     $zero, $zero, .L809314DC   
/* 04D84 80931354 E5E403C4 */  swc1    $f4, 0x03C4($t7)           ## 000003C4
/* 04D88 80931358 82180195 */  lb      $t8, 0x0195($s0)           ## 00000195
.L8093135C:
/* 04D8C 8093135C 5700005A */  bnel    $t8, $zero, .L809314C8     
/* 04D90 80931360 8E0E011C */  lw      $t6, 0x011C($s0)           ## 0000011C
/* 04D94 80931364 0C02927F */  jal     Animation_Update
              
/* 04D98 80931368 2604014C */  addiu   $a0, $s0, 0x014C           ## $a0 = 0000014C
/* 04D9C 8093136C A2020195 */  sb      $v0, 0x0195($s0)           ## 00000195
/* 04DA0 80931370 260400B4 */  addiu   $a0, $s0, 0x00B4           ## $a0 = 000000B4
/* 04DA4 80931374 00002825 */  or      $a1, $zero, $zero          ## $a1 = 00000000
/* 04DA8 80931378 0C01DE2B */  jal     Math_ApproxUpdateScaledS
              
/* 04DAC 8093137C 24060600 */  addiu   $a2, $zero, 0x0600         ## $a2 = 00000600
/* 04DB0 80931380 82190195 */  lb      $t9, 0x0195($s0)           ## 00000195
/* 04DB4 80931384 260400B8 */  addiu   $a0, $s0, 0x00B8           ## $a0 = 000000B8
/* 04DB8 80931388 860501A6 */  lh      $a1, 0x01A6($s0)           ## 000001A6
/* 04DBC 8093138C 03224024 */  and     $t0, $t9, $v0              
/* 04DC0 80931390 A2080195 */  sb      $t0, 0x0195($s0)           ## 00000195
/* 04DC4 80931394 0C01DE2B */  jal     Math_ApproxUpdateScaledS
              
/* 04DC8 80931398 24060600 */  addiu   $a2, $zero, 0x0600         ## $a2 = 00000600
/* 04DCC 8093139C 82090195 */  lb      $t1, 0x0195($s0)           ## 00000195
/* 04DD0 809313A0 260400B6 */  addiu   $a0, $s0, 0x00B6           ## $a0 = 000000B6
/* 04DD4 809313A4 860501A4 */  lh      $a1, 0x01A4($s0)           ## 000001A4
/* 04DD8 809313A8 01225024 */  and     $t2, $t1, $v0              
/* 04DDC 809313AC A20A0195 */  sb      $t2, 0x0195($s0)           ## 00000195
/* 04DE0 809313B0 0C01DE2B */  jal     Math_ApproxUpdateScaledS
              
/* 04DE4 809313B4 24060200 */  addiu   $a2, $zero, 0x0200         ## $a2 = 00000200
/* 04DE8 809313B8 820B0195 */  lb      $t3, 0x0195($s0)           ## 00000195
/* 04DEC 809313BC 26040032 */  addiu   $a0, $s0, 0x0032           ## $a0 = 00000032
/* 04DF0 809313C0 860501A4 */  lh      $a1, 0x01A4($s0)           ## 000001A4
/* 04DF4 809313C4 01626024 */  and     $t4, $t3, $v0              
/* 04DF8 809313C8 A20C0195 */  sb      $t4, 0x0195($s0)           ## 00000195
/* 04DFC 809313CC 0C01DE2B */  jal     Math_ApproxUpdateScaledS
              
/* 04E00 809313D0 24060400 */  addiu   $a2, $zero, 0x0400         ## $a2 = 00000400
/* 04E04 809313D4 820D0195 */  lb      $t5, 0x0195($s0)           ## 00000195
/* 04E08 809313D8 3C0F8094 */  lui     $t7, %hi(D_80938C90)       ## $t7 = 80940000
/* 04E0C 809313DC 3C013F80 */  lui     $at, 0x3F80                ## $at = 3F800000
/* 04E10 809313E0 01A27024 */  and     $t6, $t5, $v0              
/* 04E14 809313E4 A20E0195 */  sb      $t6, 0x0195($s0)           ## 00000195
/* 04E18 809313E8 8DEF8C90 */  lw      $t7, %lo(D_80938C90)($t7)  
/* 04E1C 809313EC 44813000 */  mtc1    $at, $f6                   ## $f6 = 1.00
/* 04E20 809313F0 260403C4 */  addiu   $a0, $s0, 0x03C4           ## $a0 = 000003C4
/* 04E24 809313F4 8DE50090 */  lw      $a1, 0x0090($t7)           ## 80940090
/* 04E28 809313F8 3C063F00 */  lui     $a2, 0x3F00                ## $a2 = 3F000000
/* 04E2C 809313FC 3C074248 */  lui     $a3, 0x4248                ## $a3 = 42480000
/* 04E30 80931400 0C01E0C4 */  jal     Math_SmoothScaleMaxMinF
              
/* 04E34 80931404 E7A60010 */  swc1    $f6, 0x0010($sp)           
/* 04E38 80931408 3C014120 */  lui     $at, 0x4120                ## $at = 41200000
/* 04E3C 8093140C 44814000 */  mtc1    $at, $f8                   ## $f8 = 10.00
/* 04E40 80931410 82180195 */  lb      $t8, 0x0195($s0)           ## 00000195
/* 04E44 80931414 0000C825 */  or      $t9, $zero, $zero          ## $t9 = 00000000
/* 04E48 80931418 4608003C */  c.lt.s  $f0, $f8                   
/* 04E4C 8093141C 26040028 */  addiu   $a0, $s0, 0x0028           ## $a0 = 00000028
/* 04E50 80931420 3C0542BE */  lui     $a1, 0x42BE                ## $a1 = 42BE0000
/* 04E54 80931424 3C063F00 */  lui     $a2, 0x3F00                ## $a2 = 3F000000
/* 04E58 80931428 45000002 */  bc1f    .L80931434                 
/* 04E5C 8093142C 3C0741F0 */  lui     $a3, 0x41F0                ## $a3 = 41F00000
/* 04E60 80931430 24190001 */  addiu   $t9, $zero, 0x0001         ## $t9 = 00000001
.L80931434:
/* 04E64 80931434 3C013F80 */  lui     $at, 0x3F80                ## $at = 3F800000
/* 04E68 80931438 44815000 */  mtc1    $at, $f10                  ## $f10 = 1.00
/* 04E6C 8093143C 03194024 */  and     $t0, $t8, $t9              
/* 04E70 80931440 A2080195 */  sb      $t0, 0x0195($s0)           ## 00000195
/* 04E74 80931444 0C01E0C4 */  jal     Math_SmoothScaleMaxMinF
              
/* 04E78 80931448 E7AA0010 */  swc1    $f10, 0x0010($sp)          
/* 04E7C 8093144C 3C013F80 */  lui     $at, 0x3F80                ## $at = 3F800000
/* 04E80 80931450 44818000 */  mtc1    $at, $f16                  ## $f16 = 1.00
/* 04E84 80931454 82090195 */  lb      $t1, 0x0195($s0)           ## 00000195
/* 04E88 80931458 00005025 */  or      $t2, $zero, $zero          ## $t2 = 00000000
/* 04E8C 8093145C 4610003C */  c.lt.s  $f0, $f16                  
/* 04E90 80931460 00000000 */  nop
/* 04E94 80931464 45020003 */  bc1fl   .L80931474                 
/* 04E98 80931468 012A5824 */  and     $t3, $t1, $t2              
/* 04E9C 8093146C 240A0001 */  addiu   $t2, $zero, 0x0001         ## $t2 = 00000001
/* 04EA0 80931470 012A5824 */  and     $t3, $t1, $t2              
.L80931474:
/* 04EA4 80931474 A20B0195 */  sb      $t3, 0x0195($s0)           ## 00000195
/* 04EA8 80931478 0C01DE1C */  jal     Math_Sins
              ## sins?
/* 04EAC 8093147C 86040032 */  lh      $a0, 0x0032($s0)           ## 00000032
/* 04EB0 80931480 C61203C4 */  lwc1    $f18, 0x03C4($s0)          ## 000003C4
/* 04EB4 80931484 3C0C8094 */  lui     $t4, %hi(D_80938C90)       ## $t4 = 80940000
/* 04EB8 80931488 8D8C8C90 */  lw      $t4, %lo(D_80938C90)($t4)  
/* 04EBC 8093148C 46120102 */  mul.s   $f4, $f0, $f18             
/* 04EC0 80931490 86040032 */  lh      $a0, 0x0032($s0)           ## 00000032
/* 04EC4 80931494 C5860024 */  lwc1    $f6, 0x0024($t4)           ## 80940024
/* 04EC8 80931498 46062200 */  add.s   $f8, $f4, $f6              
/* 04ECC 8093149C 0C01DE0D */  jal     Math_Coss
              ## coss?
/* 04ED0 809314A0 E6080024 */  swc1    $f8, 0x0024($s0)           ## 00000024
/* 04ED4 809314A4 C60A03C4 */  lwc1    $f10, 0x03C4($s0)          ## 000003C4
/* 04ED8 809314A8 3C0D8094 */  lui     $t5, %hi(D_80938C90)       ## $t5 = 80940000
/* 04EDC 809314AC 8DAD8C90 */  lw      $t5, %lo(D_80938C90)($t5)  
/* 04EE0 809314B0 460A0402 */  mul.s   $f16, $f0, $f10            
/* 04EE4 809314B4 C5B2002C */  lwc1    $f18, 0x002C($t5)          ## 8094002C
/* 04EE8 809314B8 46128100 */  add.s   $f4, $f16, $f18            
/* 04EEC 809314BC 10000007 */  beq     $zero, $zero, .L809314DC   
/* 04EF0 809314C0 E604002C */  swc1    $f4, 0x002C($s0)           ## 0000002C
/* 04EF4 809314C4 8E0E011C */  lw      $t6, 0x011C($s0)           ## 0000011C
.L809314C8:
/* 04EF8 809314C8 24180014 */  addiu   $t8, $zero, 0x0014         ## $t8 = 00000014
/* 04EFC 809314CC 81CF0195 */  lb      $t7, 0x0195($t6)           ## 00000195
/* 04F00 809314D0 51E00003 */  beql    $t7, $zero, .L809314E0     
/* 04F04 809314D4 8FBF0024 */  lw      $ra, 0x0024($sp)           
/* 04F08 809314D8 A6180198 */  sh      $t8, 0x0198($s0)           ## 00000198
.L809314DC:
/* 04F0C 809314DC 8FBF0024 */  lw      $ra, 0x0024($sp)           
.L809314E0:
/* 04F10 809314E0 8FB00020 */  lw      $s0, 0x0020($sp)           
/* 04F14 809314E4 27BD0028 */  addiu   $sp, $sp, 0x0028           ## $sp = 00000000
/* 04F18 809314E8 03E00008 */  jr      $ra                        
/* 04F1C 809314EC 00000000 */  nop
