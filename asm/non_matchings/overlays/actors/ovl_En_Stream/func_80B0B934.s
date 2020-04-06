glabel func_80B0B934
/* 00194 80B0B934 27BDFFB0 */  addiu   $sp, $sp, 0xFFB0           ## $sp = FFFFFFB0
/* 00198 80B0B938 AFBF0024 */  sw      $ra, 0x0024($sp)           
/* 0019C 80B0B93C AFB10020 */  sw      $s1, 0x0020($sp)           
/* 001A0 80B0B940 AFB0001C */  sw      $s0, 0x001C($sp)           
/* 001A4 80B0B944 AFA50054 */  sw      $a1, 0x0054($sp)           
/* 001A8 80B0B948 8CB01C44 */  lw      $s0, 0x1C44($a1)           ## 00001C44
/* 001AC 80B0B94C 00808825 */  or      $s1, $a0, $zero            ## $s1 = 00000000
/* 001B0 80B0B950 8E270054 */  lw      $a3, 0x0054($s1)           ## 00000054
/* 001B4 80B0B954 26050024 */  addiu   $a1, $s0, 0x0024           ## $a1 = 00000024
/* 001B8 80B0B958 AFA50028 */  sw      $a1, 0x0028($sp)           
/* 001BC 80B0B95C 24840024 */  addiu   $a0, $a0, 0x0024           ## $a0 = 00000024
/* 001C0 80B0B960 0C2C2E07 */  jal     func_80B0B81C              
/* 001C4 80B0B964 27A6003C */  addiu   $a2, $sp, 0x003C           ## $a2 = FFFFFFEC
/* 001C8 80B0B968 1040004F */  beq     $v0, $zero, .L80B0BAA8     
/* 001CC 80B0B96C 02202025 */  or      $a0, $s1, $zero            ## $a0 = 00000000
/* 001D0 80B0B970 C7A4003C */  lwc1    $f4, 0x003C($sp)           
/* 001D4 80B0B974 C7A80044 */  lwc1    $f8, 0x0044($sp)           
/* 001D8 80B0B978 3C0142B4 */  lui     $at, 0x42B4                ## $at = 42B40000
/* 001DC 80B0B97C 46042182 */  mul.s   $f6, $f4, $f4              
/* 001E0 80B0B980 44819000 */  mtc1    $at, $f18                  ## $f18 = 90.00
/* 001E4 80B0B984 C6300028 */  lwc1    $f16, 0x0028($s1)          ## 00000028
/* 001E8 80B0B988 46084282 */  mul.s   $f10, $f8, $f8             
/* 001EC 80B0B98C 46002307 */  neg.s   $f12, $f4                  
/* 001F0 80B0B990 46004387 */  neg.s   $f14, $f8                  
/* 001F4 80B0B994 460A3000 */  add.s   $f0, $f6, $f10             
/* 001F8 80B0B998 C60A0028 */  lwc1    $f10, 0x0028($s0)          ## 00000028
/* 001FC 80B0B99C 46128181 */  sub.s   $f6, $f16, $f18            
/* 00200 80B0B9A0 46000084 */  sqrt.s  $f2, $f0                   
/* 00204 80B0B9A4 46065401 */  sub.s   $f16, $f10, $f6            
/* 00208 80B0B9A8 E7A20038 */  swc1    $f2, 0x0038($sp)           
/* 0020C 80B0B9AC 0C03F494 */  jal     Math_atan2f              
/* 00210 80B0B9B0 E7B00034 */  swc1    $f16, 0x0034($sp)          
/* 00214 80B0B9B4 3C014040 */  lui     $at, 0x4040                ## $at = 40400000
/* 00218 80B0B9B8 44816000 */  mtc1    $at, $f12                  ## $f12 = 3.00
/* 0021C 80B0B9BC 3C0180B1 */  lui     $at, %hi(D_80B0BD10)       ## $at = 80B10000
/* 00220 80B0B9C0 C432BD10 */  lwc1    $f18, %lo(D_80B0BD10)($at) 
/* 00224 80B0B9C4 C7A20038 */  lwc1    $f2, 0x0038($sp)           
/* 00228 80B0B9C8 260408AC */  addiu   $a0, $s0, 0x08AC           ## $a0 = 000008AC
/* 0022C 80B0B9CC 46120282 */  mul.s   $f10, $f0, $f18            
/* 00230 80B0B9D0 4602603C */  c.lt.s  $f12, $f2                  
/* 00234 80B0B9D4 3C063F00 */  lui     $a2, 0x3F00                ## $a2 = 3F000000
/* 00238 80B0B9D8 4600518D */  trunc.w.s $f6, $f10                  
/* 0023C 80B0B9DC 44183000 */  mfc1    $t8, $f6                   
/* 00240 80B0B9E0 45000008 */  bc1f    .L80B0BA04                 
/* 00244 80B0B9E4 A61808B0 */  sh      $t8, 0x08B0($s0)           ## 000008B0
/* 00248 80B0B9E8 44808000 */  mtc1    $zero, $f16                ## $f16 = 0.00
/* 0024C 80B0B9EC 44056000 */  mfc1    $a1, $f12                  
/* 00250 80B0B9F0 44071000 */  mfc1    $a3, $f2                   
/* 00254 80B0B9F4 0C01E0C4 */  jal     Math_SmoothScaleMaxMinF
              
/* 00258 80B0B9F8 E7B00010 */  swc1    $f16, 0x0010($sp)          
/* 0025C 80B0B9FC 10000013 */  beq     $zero, $zero, .L80B0BA4C   
/* 00260 80B0BA00 44800000 */  mtc1    $zero, $f0                 ## $f0 = 0.00
.L80B0BA04:
/* 00264 80B0BA04 44800000 */  mtc1    $zero, $f0                 ## $f0 = 0.00
/* 00268 80B0BA08 44076000 */  mfc1    $a3, $f12                  
/* 0026C 80B0BA0C 3C063F00 */  lui     $a2, 0x3F00                ## $a2 = 3F000000
/* 00270 80B0BA10 E60008AC */  swc1    $f0, 0x08AC($s0)           ## 000008AC
/* 00274 80B0BA14 8E250024 */  lw      $a1, 0x0024($s1)           ## 00000024
/* 00278 80B0BA18 8FA40028 */  lw      $a0, 0x0028($sp)           
/* 0027C 80B0BA1C 0C01E0C4 */  jal     Math_SmoothScaleMaxMinF
              
/* 00280 80B0BA20 E7A00010 */  swc1    $f0, 0x0010($sp)           
/* 00284 80B0BA24 3C014040 */  lui     $at, 0x4040                ## $at = 40400000
/* 00288 80B0BA28 44816000 */  mtc1    $at, $f12                  ## $f12 = 3.00
/* 0028C 80B0BA2C 44802000 */  mtc1    $zero, $f4                 ## $f4 = 0.00
/* 00290 80B0BA30 8E25002C */  lw      $a1, 0x002C($s1)           ## 0000002C
/* 00294 80B0BA34 44076000 */  mfc1    $a3, $f12                  
/* 00298 80B0BA38 2604002C */  addiu   $a0, $s0, 0x002C           ## $a0 = 0000002C
/* 0029C 80B0BA3C 3C063F00 */  lui     $a2, 0x3F00                ## $a2 = 3F000000
/* 002A0 80B0BA40 0C01E0C4 */  jal     Math_SmoothScaleMaxMinF
              
/* 002A4 80B0BA44 E7A40010 */  swc1    $f4, 0x0010($sp)           
/* 002A8 80B0BA48 44800000 */  mtc1    $zero, $f0                 ## $f0 = 0.00
.L80B0BA4C:
/* 002AC 80B0BA4C C7A20034 */  lwc1    $f2, 0x0034($sp)           
/* 002B0 80B0BA50 3C063F33 */  lui     $a2, 0x3F33                ## $a2 = 3F330000
/* 002B4 80B0BA54 34C63333 */  ori     $a2, $a2, 0x3333           ## $a2 = 3F333333
/* 002B8 80B0BA58 4602003C */  c.lt.s  $f0, $f2                   
/* 002BC 80B0BA5C 26040060 */  addiu   $a0, $s0, 0x0060           ## $a0 = 00000060
/* 002C0 80B0BA60 3C05C040 */  lui     $a1, 0xC040                ## $a1 = C0400000
/* 002C4 80B0BA64 45020014 */  bc1fl   .L80B0BAB8                 
/* 002C8 80B0BA68 8FBF0024 */  lw      $ra, 0x0024($sp)           
/* 002CC 80B0BA6C 44071000 */  mfc1    $a3, $f2                   
/* 002D0 80B0BA70 0C01E0C4 */  jal     Math_SmoothScaleMaxMinF
              
/* 002D4 80B0BA74 E7A00010 */  swc1    $f0, 0x0010($sp)           
/* 002D8 80B0BA78 3C01C28C */  lui     $at, 0xC28C                ## $at = C28C0000
/* 002DC 80B0BA7C 44819000 */  mtc1    $at, $f18                  ## $f18 = -70.00
/* 002E0 80B0BA80 C7A80040 */  lwc1    $f8, 0x0040($sp)           
/* 002E4 80B0BA84 4612403C */  c.lt.s  $f8, $f18                  
/* 002E8 80B0BA88 00000000 */  nop
/* 002EC 80B0BA8C 4502000A */  bc1fl   .L80B0BAB8                 
/* 002F0 80B0BA90 8FBF0024 */  lw      $ra, 0x0024($sp)           
/* 002F4 80B0BA94 8E190680 */  lw      $t9, 0x0680($s0)           ## 00000680
/* 002F8 80B0BA98 3C018000 */  lui     $at, 0x8000                ## $at = 80000000
/* 002FC 80B0BA9C 03214025 */  or      $t0, $t9, $at              ## $t0 = 80000000
/* 00300 80B0BAA0 10000004 */  beq     $zero, $zero, .L80B0BAB4   
/* 00304 80B0BAA4 AE080680 */  sw      $t0, 0x0680($s0)           ## 00000680
.L80B0BAA8:
/* 00308 80B0BAA8 3C0580B1 */  lui     $a1, %hi(func_80B0BAC8)    ## $a1 = 80B10000
/* 0030C 80B0BAAC 0C2C2DE8 */  jal     func_80B0B7A0              
/* 00310 80B0BAB0 24A5BAC8 */  addiu   $a1, $a1, %lo(func_80B0BAC8) ## $a1 = 80B0BAC8
.L80B0BAB4:
/* 00314 80B0BAB4 8FBF0024 */  lw      $ra, 0x0024($sp)           
.L80B0BAB8:
/* 00318 80B0BAB8 8FB0001C */  lw      $s0, 0x001C($sp)           
/* 0031C 80B0BABC 8FB10020 */  lw      $s1, 0x0020($sp)           
/* 00320 80B0BAC0 03E00008 */  jr      $ra                        
/* 00324 80B0BAC4 27BD0050 */  addiu   $sp, $sp, 0x0050           ## $sp = 00000000


