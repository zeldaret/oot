.late_rodata
glabel D_8089B2A0
 .word 0x3EE66666
glabel D_8089B2A4
    .float 0.7

.text
glabel func_8089A1DC
/* 000AC 8089A1DC 27BDFF40 */  addiu   $sp, $sp, 0xFF40           ## $sp = FFFFFF40
/* 000B0 8089A1E0 AFB50084 */  sw      $s5, 0x0084($sp)           
/* 000B4 8089A1E4 AFB3007C */  sw      $s3, 0x007C($sp)           
/* 000B8 8089A1E8 AFB20078 */  sw      $s2, 0x0078($sp)           
/* 000BC 8089A1EC 00A09825 */  or      $s3, $a1, $zero            ## $s3 = 00000000
/* 000C0 8089A1F0 0080A825 */  or      $s5, $a0, $zero            ## $s5 = 00000000
/* 000C4 8089A1F4 AFBF0094 */  sw      $ra, 0x0094($sp)           
/* 000C8 8089A1F8 AFBE0090 */  sw      $s8, 0x0090($sp)           
/* 000CC 8089A1FC AFB7008C */  sw      $s7, 0x008C($sp)           
/* 000D0 8089A200 AFB60088 */  sw      $s6, 0x0088($sp)           
/* 000D4 8089A204 AFB40080 */  sw      $s4, 0x0080($sp)           
/* 000D8 8089A208 AFB10074 */  sw      $s1, 0x0074($sp)           
/* 000DC 8089A20C AFB00070 */  sw      $s0, 0x0070($sp)           
/* 000E0 8089A210 F7BC0068 */  sdc1    $f28, 0x0068($sp)          
/* 000E4 8089A214 F7BA0060 */  sdc1    $f26, 0x0060($sp)          
/* 000E8 8089A218 F7B80058 */  sdc1    $f24, 0x0058($sp)          
/* 000EC 8089A21C F7B60050 */  sdc1    $f22, 0x0050($sp)          
/* 000F0 8089A220 F7B40048 */  sdc1    $f20, 0x0048($sp)          
/* 000F4 8089A224 AFA600C8 */  sw      $a2, 0x00C8($sp)           
/* 000F8 8089A228 AFA700CC */  sw      $a3, 0x00CC($sp)           
/* 000FC 8089A22C 18E0006A */  blez    $a3, .L8089A3D8            
/* 00100 8089A230 00009025 */  or      $s2, $zero, $zero          ## $s2 = 00000000
/* 00104 8089A234 3C014270 */  lui     $at, 0x4270                ## $at = 42700000
/* 00108 8089A238 4481E000 */  mtc1    $at, $f28                  ## $f28 = 60.00
/* 0010C 8089A23C 3C0141C8 */  lui     $at, 0x41C8                ## $at = 41C80000
/* 00110 8089A240 4481D000 */  mtc1    $at, $f26                  ## $f26 = 25.00
/* 00114 8089A244 3C01808A */  lui     $at, %hi(D_8089B2A0)       ## $at = 808A0000
/* 00118 8089A248 8FAF00D0 */  lw      $t7, 0x00D0($sp)           
/* 0011C 8089A24C C438B2A0 */  lwc1    $f24, %lo(D_8089B2A0)($at) 
/* 00120 8089A250 3C01808A */  lui     $at, %hi(D_8089B2A4)       ## $at = 808A0000
/* 00124 8089A254 C436B2A4 */  lwc1    $f22, %lo(D_8089B2A4)($at) 
/* 00128 8089A258 3C19808A */  lui     $t9, %hi(sBitMasks)       ## $t9 = 808A0000
/* 0012C 8089A25C 2739B17C */  addiu   $t9, $t9, %lo(sBitMasks)  ## $t9 = 8089B17C
/* 00130 8089A260 3C014100 */  lui     $at, 0x4100                ## $at = 41000000
/* 00134 8089A264 000FC040 */  sll     $t8, $t7,  1               
/* 00138 8089A268 03194021 */  addu    $t0, $t8, $t9              
/* 0013C 8089A26C 3C1E808A */  lui     $s8, %hi(D_8089B15C)       ## $s8 = 808A0000
/* 00140 8089A270 3C17808A */  lui     $s7, %hi(D_8089B14C)       ## $s7 = 808A0000
/* 00144 8089A274 3C16808A */  lui     $s6, %hi(D_8089B16C)       ## $s6 = 808A0000
/* 00148 8089A278 4481A000 */  mtc1    $at, $f20                  ## $f20 = 8.00
/* 0014C 8089A27C 26D6B16C */  addiu   $s6, $s6, %lo(D_8089B16C)  ## $s6 = 8089B16C
/* 00150 8089A280 26F7B14C */  addiu   $s7, $s7, %lo(D_8089B14C)  ## $s7 = 8089B14C
/* 00154 8089A284 27DEB15C */  addiu   $s8, $s8, %lo(D_8089B15C)  ## $s8 = 8089B15C
/* 00158 8089A288 AFA800A0 */  sw      $t0, 0x00A0($sp)           
/* 0015C 8089A28C 27B400B4 */  addiu   $s4, $sp, 0x00B4           ## $s4 = FFFFFFF4
.L8089A290:
/* 00160 8089A290 0C03F66B */  jal     Math_Rand_ZeroOne
              ## Rand.Next() float
/* 00164 8089A294 00000000 */  nop
/* 00168 8089A298 46140102 */  mul.s   $f4, $f0, $f20             
/* 0016C 8089A29C 8FA900A0 */  lw      $t1, 0x00A0($sp)           
/* 00170 8089A2A0 852A0000 */  lh      $t2, 0x0000($t1)           ## 00000000
/* 00174 8089A2A4 4600218D */  trunc.w.s $f6, $f4                   
/* 00178 8089A2A8 440C3000 */  mfc1    $t4, $f6                   
/* 0017C 8089A2AC 00000000 */  nop
/* 00180 8089A2B0 000C6C00 */  sll     $t5, $t4, 16               
/* 00184 8089A2B4 000D7403 */  sra     $t6, $t5, 16               
/* 00188 8089A2B8 014E8824 */  and     $s1, $t2, $t6              
/* 0018C 8089A2BC 2A210005 */  slti    $at, $s1, 0x0005           
/* 00190 8089A2C0 5020000A */  beql    $at, $zero, .L8089A2EC     
/* 00194 8089A2C4 24030020 */  addiu   $v1, $zero, 0x0020         ## $v1 = 00000020
/* 00198 8089A2C8 0C03F66B */  jal     Math_Rand_ZeroOne
              ## Rand.Next() float
/* 0019C 8089A2CC 00000000 */  nop
/* 001A0 8089A2D0 4616003C */  c.lt.s  $f0, $f22                  
/* 001A4 8089A2D4 00000000 */  nop
/* 001A8 8089A2D8 45020004 */  bc1fl   .L8089A2EC                 
/* 001AC 8089A2DC 24030020 */  addiu   $v1, $zero, 0x0020         ## $v1 = 00000020
/* 001B0 8089A2E0 10000002 */  beq     $zero, $zero, .L8089A2EC   
/* 001B4 8089A2E4 24030040 */  addiu   $v1, $zero, 0x0040         ## $v1 = 00000040
/* 001B8 8089A2E8 24030020 */  addiu   $v1, $zero, 0x0020         ## $v1 = 00000020
.L8089A2EC:
/* 001BC 8089A2EC 00111040 */  sll     $v0, $s1,  1               
/* 001C0 8089A2F0 02C2C021 */  addu    $t8, $s6, $v0              
/* 001C4 8089A2F4 87190000 */  lh      $t9, 0x0000($t8)           ## 00000000
/* 001C8 8089A2F8 03C26021 */  addu    $t4, $s8, $v0              
/* 001CC 8089A2FC 240FFFA6 */  addiu   $t7, $zero, 0xFFA6         ## $t7 = FFFFFFA6
/* 001D0 8089A300 858D0000 */  lh      $t5, 0x0000($t4)           ## 00000000
/* 001D4 8089A304 AFAF0010 */  sw      $t7, 0x0010($sp)           
/* 001D8 8089A308 02E28021 */  addu    $s0, $s7, $v0              
/* 001DC 8089A30C 86090000 */  lh      $t1, 0x0000($s0)           ## 00000000
/* 001E0 8089A310 3C0F0601 */  lui     $t7, 0x0601                ## $t7 = 06010000
/* 001E4 8089A314 25EFB9F8 */  addiu   $t7, $t7, 0xB9F8           ## $t7 = 0600B9F8
/* 001E8 8089A318 24080004 */  addiu   $t0, $zero, 0x0004         ## $t0 = 00000004
/* 001EC 8089A31C 240B0005 */  addiu   $t3, $zero, 0x0005         ## $t3 = 00000005
/* 001F0 8089A320 240AFFFF */  addiu   $t2, $zero, 0xFFFF         ## $t2 = FFFFFFFF
/* 001F4 8089A324 240E00F1 */  addiu   $t6, $zero, 0x00F1         ## $t6 = 000000F1
/* 001F8 8089A328 AFAE0038 */  sw      $t6, 0x0038($sp)           
/* 001FC 8089A32C AFAA0034 */  sw      $t2, 0x0034($sp)           
/* 00200 8089A330 AFAB002C */  sw      $t3, 0x002C($sp)           
/* 00204 8089A334 AFA8001C */  sw      $t0, 0x001C($sp)           
/* 00208 8089A338 AFAF003C */  sw      $t7, 0x003C($sp)           
/* 0020C 8089A33C AFA00028 */  sw      $zero, 0x0028($sp)         
/* 00210 8089A340 AFA00020 */  sw      $zero, 0x0020($sp)         
/* 00214 8089A344 02A02025 */  or      $a0, $s5, $zero            ## $a0 = 00000000
/* 00218 8089A348 02602825 */  or      $a1, $s3, $zero            ## $a1 = 00000000
/* 0021C 8089A34C 8FA600C8 */  lw      $a2, 0x00C8($sp)           
/* 00220 8089A350 02603825 */  or      $a3, $s3, $zero            ## $a3 = 00000000
/* 00224 8089A354 AFA30014 */  sw      $v1, 0x0014($sp)           
/* 00228 8089A358 AFB90018 */  sw      $t9, 0x0018($sp)           
/* 0022C 8089A35C AFAD0030 */  sw      $t5, 0x0030($sp)           
/* 00230 8089A360 0C00A7A3 */  jal     func_80029E8C
              
/* 00234 8089A364 AFA90024 */  sw      $t1, 0x0024($sp)           
/* 00238 8089A368 0C03F66B */  jal     Math_Rand_ZeroOne
              ## Rand.Next() float
/* 0023C 8089A36C 00000000 */  nop
/* 00240 8089A370 4618003C */  c.lt.s  $f0, $f24                  
/* 00244 8089A374 02802025 */  or      $a0, $s4, $zero            ## $a0 = FFFFFFF4
/* 00248 8089A378 45020014 */  bc1fl   .L8089A3CC                 
/* 0024C 8089A37C 8FA900CC */  lw      $t1, 0x00CC($sp)           
/* 00250 8089A380 0C01DF90 */  jal     Math_Vec3f_Copy
              ## Vec3f_Copy
/* 00254 8089A384 02602825 */  or      $a1, $s3, $zero            ## $a1 = 00000000
/* 00258 8089A388 C7A800BC */  lwc1    $f8, 0x00BC($sp)           
/* 0025C 8089A38C 86020000 */  lh      $v0, 0x0000($s0)           ## 00000000
/* 00260 8089A390 4406E000 */  mfc1    $a2, $f28                  
/* 00264 8089A394 461A4280 */  add.s   $f10, $f8, $f26            
/* 00268 8089A398 00021080 */  sll     $v0, $v0,  2               
/* 0026C 8089A39C 24580032 */  addiu   $t8, $v0, 0x0032           ## $t8 = 00000032
/* 00270 8089A3A0 24590046 */  addiu   $t9, $v0, 0x0046           ## $t9 = 00000046
/* 00274 8089A3A4 24080001 */  addiu   $t0, $zero, 0x0001         ## $t0 = 00000001
/* 00278 8089A3A8 E7AA00BC */  swc1    $f10, 0x00BC($sp)          
/* 0027C 8089A3AC AFA80018 */  sw      $t0, 0x0018($sp)           
/* 00280 8089A3B0 AFB90014 */  sw      $t9, 0x0014($sp)           
/* 00284 8089A3B4 AFB80010 */  sw      $t8, 0x0010($sp)           
/* 00288 8089A3B8 02A02025 */  or      $a0, $s5, $zero            ## $a0 = 00000000
/* 0028C 8089A3BC 02802825 */  or      $a1, $s4, $zero            ## $a1 = FFFFFFF4
/* 00290 8089A3C0 0C00CD20 */  jal     func_80033480              
/* 00294 8089A3C4 00003825 */  or      $a3, $zero, $zero          ## $a3 = 00000000
/* 00298 8089A3C8 8FA900CC */  lw      $t1, 0x00CC($sp)           
.L8089A3CC:
/* 0029C 8089A3CC 26520001 */  addiu   $s2, $s2, 0x0001           ## $s2 = 00000001
/* 002A0 8089A3D0 1649FFAF */  bne     $s2, $t1, .L8089A290       
/* 002A4 8089A3D4 00000000 */  nop
.L8089A3D8:
/* 002A8 8089A3D8 8FBF0094 */  lw      $ra, 0x0094($sp)           
/* 002AC 8089A3DC D7B40048 */  ldc1    $f20, 0x0048($sp)          
/* 002B0 8089A3E0 D7B60050 */  ldc1    $f22, 0x0050($sp)          
/* 002B4 8089A3E4 D7B80058 */  ldc1    $f24, 0x0058($sp)          
/* 002B8 8089A3E8 D7BA0060 */  ldc1    $f26, 0x0060($sp)          
/* 002BC 8089A3EC D7BC0068 */  ldc1    $f28, 0x0068($sp)          
/* 002C0 8089A3F0 8FB00070 */  lw      $s0, 0x0070($sp)           
/* 002C4 8089A3F4 8FB10074 */  lw      $s1, 0x0074($sp)           
/* 002C8 8089A3F8 8FB20078 */  lw      $s2, 0x0078($sp)           
/* 002CC 8089A3FC 8FB3007C */  lw      $s3, 0x007C($sp)           
/* 002D0 8089A400 8FB40080 */  lw      $s4, 0x0080($sp)           
/* 002D4 8089A404 8FB50084 */  lw      $s5, 0x0084($sp)           
/* 002D8 8089A408 8FB60088 */  lw      $s6, 0x0088($sp)           
/* 002DC 8089A40C 8FB7008C */  lw      $s7, 0x008C($sp)           
/* 002E0 8089A410 8FBE0090 */  lw      $s8, 0x0090($sp)           
/* 002E4 8089A414 03E00008 */  jr      $ra                        
/* 002E8 8089A418 27BD00C0 */  addiu   $sp, $sp, 0x00C0           ## $sp = 00000000
