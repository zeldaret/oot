.late_rodata
glabel D_809EF1B8
 .word 0x455AC000

.text
glabel func_809ED9E0
/* 00170 809ED9E0 27BDFFB0 */  addiu   $sp, $sp, 0xFFB0           ## $sp = FFFFFFB0
/* 00174 809ED9E4 AFBF003C */  sw      $ra, 0x003C($sp)           
/* 00178 809ED9E8 AFB00038 */  sw      $s0, 0x0038($sp)           
/* 0017C 809ED9EC 00808025 */  or      $s0, $a0, $zero            ## $s0 = 00000000
/* 00180 809ED9F0 0C03F66B */  jal     Math_Rand_ZeroOne
              ## Rand.Next() float
/* 00184 809ED9F4 AFA50054 */  sw      $a1, 0x0054($sp)           
/* 00188 809ED9F8 3C013F00 */  lui     $at, 0x3F00                ## $at = 3F000000
/* 0018C 809ED9FC 44812000 */  mtc1    $at, $f4                   ## $f4 = 0.50
/* 00190 809EDA00 3C0141F0 */  lui     $at, 0x41F0                ## $at = 41F00000
/* 00194 809EDA04 44814000 */  mtc1    $at, $f8                   ## $f8 = 30.00
/* 00198 809EDA08 46040181 */  sub.s   $f6, $f0, $f4              
/* 0019C 809EDA0C C6100024 */  lwc1    $f16, 0x0024($s0)          ## 00000024
/* 001A0 809EDA10 46083282 */  mul.s   $f10, $f6, $f8             
/* 001A4 809EDA14 46105480 */  add.s   $f18, $f10, $f16           
/* 001A8 809EDA18 0C03F66B */  jal     Math_Rand_ZeroOne
              ## Rand.Next() float
/* 001AC 809EDA1C E7B20040 */  swc1    $f18, 0x0040($sp)          
/* 001B0 809EDA20 3C013F00 */  lui     $at, 0x3F00                ## $at = 3F000000
/* 001B4 809EDA24 44812000 */  mtc1    $at, $f4                   ## $f4 = 0.50
/* 001B8 809EDA28 3C0141A0 */  lui     $at, 0x41A0                ## $at = 41A00000
/* 001BC 809EDA2C 44814000 */  mtc1    $at, $f8                   ## $f8 = 20.00
/* 001C0 809EDA30 46040181 */  sub.s   $f6, $f0, $f4              
/* 001C4 809EDA34 3C0141F0 */  lui     $at, 0x41F0                ## $at = 41F00000
/* 001C8 809EDA38 44819000 */  mtc1    $at, $f18                  ## $f18 = 30.00
/* 001CC 809EDA3C C6100028 */  lwc1    $f16, 0x0028($s0)          ## 00000028
/* 001D0 809EDA40 46083282 */  mul.s   $f10, $f6, $f8             
/* 001D4 809EDA44 46128100 */  add.s   $f4, $f16, $f18            
/* 001D8 809EDA48 46045180 */  add.s   $f6, $f10, $f4             
/* 001DC 809EDA4C 0C03F66B */  jal     Math_Rand_ZeroOne
              ## Rand.Next() float
/* 001E0 809EDA50 E7A60044 */  swc1    $f6, 0x0044($sp)           
/* 001E4 809EDA54 3C013F00 */  lui     $at, 0x3F00                ## $at = 3F000000
/* 001E8 809EDA58 44814000 */  mtc1    $at, $f8                   ## $f8 = 0.50
/* 001EC 809EDA5C 3C0141A0 */  lui     $at, 0x41A0                ## $at = 41A00000
/* 001F0 809EDA60 44819000 */  mtc1    $at, $f18                  ## $f18 = 20.00
/* 001F4 809EDA64 46080401 */  sub.s   $f16, $f0, $f8             
/* 001F8 809EDA68 C604002C */  lwc1    $f4, 0x002C($s0)           ## 0000002C
/* 001FC 809EDA6C 3C01809F */  lui     $at, %hi(D_809EF1B8)       ## $at = 809F0000
/* 00200 809EDA70 C42CF1B8 */  lwc1    $f12, %lo(D_809EF1B8)($at) 
/* 00204 809EDA74 46128282 */  mul.s   $f10, $f16, $f18           
/* 00208 809EDA78 46045180 */  add.s   $f6, $f10, $f4             
/* 0020C 809EDA7C 0C00CFC8 */  jal     Math_Rand_CenteredFloat
              
/* 00210 809EDA80 E7A60048 */  swc1    $f6, 0x0048($sp)           
/* 00214 809EDA84 4600028D */  trunc.w.s $f10, $f0                  
/* 00218 809EDA88 C7A80040 */  lwc1    $f8, 0x0040($sp)           
/* 0021C 809EDA8C C7B00044 */  lwc1    $f16, 0x0044($sp)          
/* 00220 809EDA90 C7B20048 */  lwc1    $f18, 0x0048($sp)          
/* 00224 809EDA94 440F5000 */  mfc1    $t7, $f10                  
/* 00228 809EDA98 AFA0001C */  sw      $zero, 0x001C($sp)         
/* 0022C 809EDA9C E7A80010 */  swc1    $f8, 0x0010($sp)           
/* 00230 809EDAA0 000FC400 */  sll     $t8, $t7, 16               
/* 00234 809EDAA4 0018CC03 */  sra     $t9, $t8, 16               
/* 00238 809EDAA8 2728FC18 */  addiu   $t0, $t9, 0xFC18           ## $t0 = FFFFFC18
/* 0023C 809EDAAC AFA80020 */  sw      $t0, 0x0020($sp)           
/* 00240 809EDAB0 E7B00014 */  swc1    $f16, 0x0014($sp)          
/* 00244 809EDAB4 E7B20018 */  swc1    $f18, 0x0018($sp)          
/* 00248 809EDAB8 860902A6 */  lh      $t1, 0x02A6($s0)           ## 000002A6
/* 0024C 809EDABC 8FA60054 */  lw      $a2, 0x0054($sp)           
/* 00250 809EDAC0 AFA00028 */  sw      $zero, 0x0028($sp)         
/* 00254 809EDAC4 02002825 */  or      $a1, $s0, $zero            ## $a1 = 00000000
/* 00258 809EDAC8 24070131 */  addiu   $a3, $zero, 0x0131         ## $a3 = 00000131
/* 0025C 809EDACC AFA90024 */  sw      $t1, 0x0024($sp)           
/* 00260 809EDAD0 0C00C916 */  jal     Actor_SpawnAttached
              
/* 00264 809EDAD4 24C41C24 */  addiu   $a0, $a2, 0x1C24           ## $a0 = 00001C24
/* 00268 809EDAD8 10400006 */  beq     $v0, $zero, .L809EDAF4     
/* 0026C 809EDADC 3C014140 */  lui     $at, 0x4140                ## $at = 41400000
/* 00270 809EDAE0 44812000 */  mtc1    $at, $f4                   ## $f4 = 12.00
/* 00274 809EDAE4 3C0140C0 */  lui     $at, 0x40C0                ## $at = 40C00000
/* 00278 809EDAE8 44813000 */  mtc1    $at, $f6                   ## $f6 = 6.00
/* 0027C 809EDAEC E4440068 */  swc1    $f4, 0x0068($v0)           ## 00000068
/* 00280 809EDAF0 E4460060 */  swc1    $f6, 0x0060($v0)           ## 00000060
.L809EDAF4:
/* 00284 809EDAF4 8FBF003C */  lw      $ra, 0x003C($sp)           
/* 00288 809EDAF8 8FB00038 */  lw      $s0, 0x0038($sp)           
/* 0028C 809EDAFC 27BD0050 */  addiu   $sp, $sp, 0x0050           ## $sp = 00000000
/* 00290 809EDB00 03E00008 */  jr      $ra                        
/* 00294 809EDB04 00000000 */  nop
