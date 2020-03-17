glabel func_809EAEC4
/* 00184 809EAEC4 27BDFF98 */  addiu   $sp, $sp, 0xFF98           ## $sp = FFFFFF98
/* 00188 809EAEC8 3C0F809F */  lui     $t7, %hi(D_809EC650)       ## $t7 = 809F0000
/* 0018C 809EAECC AFBF002C */  sw      $ra, 0x002C($sp)           
/* 00190 809EAED0 AFA40068 */  sw      $a0, 0x0068($sp)           
/* 00194 809EAED4 AFA5006C */  sw      $a1, 0x006C($sp)           
/* 00198 809EAED8 AFA60070 */  sw      $a2, 0x0070($sp)           
/* 0019C 809EAEDC AFA70074 */  sw      $a3, 0x0074($sp)           
/* 001A0 809EAEE0 25EFC650 */  addiu   $t7, $t7, %lo(D_809EC650)  ## $t7 = 809EC650
/* 001A4 809EAEE4 8DF90000 */  lw      $t9, 0x0000($t7)           ## 809EC650
/* 001A8 809EAEE8 27AE0050 */  addiu   $t6, $sp, 0x0050           ## $t6 = FFFFFFE8
/* 001AC 809EAEEC 8DF80004 */  lw      $t8, 0x0004($t7)           ## 809EC654
/* 001B0 809EAEF0 ADD90000 */  sw      $t9, 0x0000($t6)           ## FFFFFFE8
/* 001B4 809EAEF4 8DF90008 */  lw      $t9, 0x0008($t7)           ## 809EC658
/* 001B8 809EAEF8 3C09809F */  lui     $t1, %hi(D_809EC65C)       ## $t1 = 809F0000
/* 001BC 809EAEFC 2529C65C */  addiu   $t1, $t1, %lo(D_809EC65C)  ## $t1 = 809EC65C
/* 001C0 809EAF00 ADD80004 */  sw      $t8, 0x0004($t6)           ## FFFFFFEC
/* 001C4 809EAF04 ADD90008 */  sw      $t9, 0x0008($t6)           ## FFFFFFF0
/* 001C8 809EAF08 8D2B0000 */  lw      $t3, 0x0000($t1)           ## 809EC65C
/* 001CC 809EAF0C 27A80044 */  addiu   $t0, $sp, 0x0044           ## $t0 = FFFFFFDC
/* 001D0 809EAF10 8D2A0004 */  lw      $t2, 0x0004($t1)           ## 809EC660
/* 001D4 809EAF14 AD0B0000 */  sw      $t3, 0x0000($t0)           ## FFFFFFDC
/* 001D8 809EAF18 8D2B0008 */  lw      $t3, 0x0008($t1)           ## 809EC664
/* 001DC 809EAF1C AD0A0004 */  sw      $t2, 0x0004($t0)           ## FFFFFFE0
/* 001E0 809EAF20 0C03F66B */  jal     Math_Rand_ZeroOne
              ## Rand.Next() float
/* 001E4 809EAF24 AD0B0008 */  sw      $t3, 0x0008($t0)           ## FFFFFFE4
/* 001E8 809EAF28 3C013F00 */  lui     $at, 0x3F00                ## $at = 3F000000
/* 001EC 809EAF2C 44812000 */  mtc1    $at, $f4                   ## $f4 = 0.50
/* 001F0 809EAF30 3C01809F */  lui     $at, %hi(D_809EC6B0)       ## $at = 809F0000
/* 001F4 809EAF34 C428C6B0 */  lwc1    $f8, %lo(D_809EC6B0)($at)  
/* 001F8 809EAF38 46040181 */  sub.s   $f6, $f0, $f4              
/* 001FC 809EAF3C 8FAC006C */  lw      $t4, 0x006C($sp)           
/* 00200 809EAF40 46083302 */  mul.s   $f12, $f6, $f8             
/* 00204 809EAF44 E7AC0040 */  swc1    $f12, 0x0040($sp)          
/* 00208 809EAF48 C58A0080 */  lwc1    $f10, 0x0080($t4)          ## 00000080
/* 0020C 809EAF4C 0C0329C8 */  jal     func_800CA720              
/* 00210 809EAF50 E7AA0060 */  swc1    $f10, 0x0060($sp)          
/* 00214 809EAF54 C7B00074 */  lwc1    $f16, 0x0074($sp)          
/* 00218 809EAF58 8FAD0070 */  lw      $t5, 0x0070($sp)           
/* 0021C 809EAF5C C7AC0040 */  lwc1    $f12, 0x0040($sp)          
/* 00220 809EAF60 46100482 */  mul.s   $f18, $f0, $f16            
/* 00224 809EAF64 C5A40000 */  lwc1    $f4, 0x0000($t5)           ## 00000000
/* 00228 809EAF68 46049180 */  add.s   $f6, $f18, $f4             
/* 0022C 809EAF6C 0C0329DD */  jal     func_800CA774              
/* 00230 809EAF70 E7A6005C */  swc1    $f6, 0x005C($sp)           
/* 00234 809EAF74 C7A80074 */  lwc1    $f8, 0x0074($sp)           
/* 00238 809EAF78 8FAE0070 */  lw      $t6, 0x0070($sp)           
/* 0023C 809EAF7C 46080282 */  mul.s   $f10, $f0, $f8             
/* 00240 809EAF80 C5D00008 */  lwc1    $f16, 0x0008($t6)          ## 00000008
/* 00244 809EAF84 46105480 */  add.s   $f18, $f10, $f16           
/* 00248 809EAF88 0C03F66B */  jal     Math_Rand_ZeroOne
              ## Rand.Next() float
/* 0024C 809EAF8C E7B20064 */  swc1    $f18, 0x0064($sp)          
/* 00250 809EAF90 3C013F00 */  lui     $at, 0x3F00                ## $at = 3F000000
/* 00254 809EAF94 44812000 */  mtc1    $at, $f4                   ## $f4 = 0.50
/* 00258 809EAF98 C7A8007C */  lwc1    $f8, 0x007C($sp)           
/* 0025C 809EAF9C 46040181 */  sub.s   $f6, $f0, $f4              
/* 00260 809EAFA0 46083282 */  mul.s   $f10, $f6, $f8             
/* 00264 809EAFA4 0C03F66B */  jal     Math_Rand_ZeroOne
              ## Rand.Next() float
/* 00268 809EAFA8 E7AA0044 */  swc1    $f10, 0x0044($sp)          
/* 0026C 809EAFAC 3C013F00 */  lui     $at, 0x3F00                ## $at = 3F000000
/* 00270 809EAFB0 44818000 */  mtc1    $at, $f16                  ## $f16 = 0.50
/* 00274 809EAFB4 C7A4007C */  lwc1    $f4, 0x007C($sp)           
/* 00278 809EAFB8 46100481 */  sub.s   $f18, $f0, $f16            
/* 0027C 809EAFBC 46049182 */  mul.s   $f6, $f18, $f4             
/* 00280 809EAFC0 0C03F66B */  jal     Math_Rand_ZeroOne
              ## Rand.Next() float
/* 00284 809EAFC4 E7A6004C */  swc1    $f6, 0x004C($sp)           
/* 00288 809EAFC8 3C013F00 */  lui     $at, 0x3F00                ## $at = 3F000000
/* 0028C 809EAFCC 44814000 */  mtc1    $at, $f8                   ## $f8 = 0.50
/* 00290 809EAFD0 3C014080 */  lui     $at, 0x4080                ## $at = 40800000
/* 00294 809EAFD4 44818000 */  mtc1    $at, $f16                  ## $f16 = 4.00
/* 00298 809EAFD8 46080281 */  sub.s   $f10, $f0, $f8             
/* 0029C 809EAFDC C7A40054 */  lwc1    $f4, 0x0054($sp)           
/* 002A0 809EAFE0 46105482 */  mul.s   $f18, $f10, $f16           
/* 002A4 809EAFE4 46122180 */  add.s   $f6, $f4, $f18             
/* 002A8 809EAFE8 0C03F66B */  jal     Math_Rand_ZeroOne
              ## Rand.Next() float
/* 002AC 809EAFEC E7A60054 */  swc1    $f6, 0x0054($sp)           
/* 002B0 809EAFF0 3C0140A0 */  lui     $at, 0x40A0                ## $at = 40A00000
/* 002B4 809EAFF4 44814000 */  mtc1    $at, $f8                   ## $f8 = 5.00
/* 002B8 809EAFF8 3C014140 */  lui     $at, 0x4140                ## $at = 41400000
/* 002BC 809EAFFC 44818000 */  mtc1    $at, $f16                  ## $f16 = 12.00
/* 002C0 809EB000 46080282 */  mul.s   $f10, $f0, $f8             
/* 002C4 809EB004 C7B20080 */  lwc1    $f18, 0x0080($sp)          
/* 002C8 809EB008 8FAF0078 */  lw      $t7, 0x0078($sp)           
/* 002CC 809EB00C 2408FFFF */  addiu   $t0, $zero, 0xFFFF         ## $t0 = FFFFFFFF
/* 002D0 809EB010 2409000A */  addiu   $t1, $zero, 0x000A         ## $t1 = 0000000A
/* 002D4 809EB014 AFA9001C */  sw      $t1, 0x001C($sp)           
/* 002D8 809EB018 AFA80018 */  sw      $t0, 0x0018($sp)           
/* 002DC 809EB01C 46105100 */  add.s   $f4, $f10, $f16            
/* 002E0 809EB020 8FA40068 */  lw      $a0, 0x0068($sp)           
/* 002E4 809EB024 27A5005C */  addiu   $a1, $sp, 0x005C           ## $a1 = FFFFFFF4
/* 002E8 809EB028 27A60050 */  addiu   $a2, $sp, 0x0050           ## $a2 = FFFFFFE8
/* 002EC 809EB02C 46122182 */  mul.s   $f6, $f4, $f18             
/* 002F0 809EB030 27A70044 */  addiu   $a3, $sp, 0x0044           ## $a3 = FFFFFFDC
/* 002F4 809EB034 AFA00020 */  sw      $zero, 0x0020($sp)         
/* 002F8 809EB038 AFAF0010 */  sw      $t7, 0x0010($sp)           
/* 002FC 809EB03C 4600320D */  trunc.w.s $f8, $f6                   
/* 00300 809EB040 44194000 */  mfc1    $t9, $f8                   
/* 00304 809EB044 0C00A5C9 */  jal     func_80029724              
/* 00308 809EB048 AFB90014 */  sw      $t9, 0x0014($sp)           
/* 0030C 809EB04C 8FBF002C */  lw      $ra, 0x002C($sp)           
/* 00310 809EB050 27BD0068 */  addiu   $sp, $sp, 0x0068           ## $sp = 00000000
/* 00314 809EB054 03E00008 */  jr      $ra                        
/* 00318 809EB058 00000000 */  nop


