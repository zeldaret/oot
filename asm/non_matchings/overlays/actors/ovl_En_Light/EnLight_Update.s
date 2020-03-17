glabel EnLight_Update
/* 00290 80A9DDD0 27BDFFD0 */  addiu   $sp, $sp, 0xFFD0           ## $sp = FFFFFFD0
/* 00294 80A9DDD4 AFBF0024 */  sw      $ra, 0x0024($sp)           
/* 00298 80A9DDD8 AFB00020 */  sw      $s0, 0x0020($sp)           
/* 0029C 80A9DDDC AFA50034 */  sw      $a1, 0x0034($sp)           
/* 002A0 80A9DDE0 848E001C */  lh      $t6, 0x001C($a0)           ## 0000001C
/* 002A4 80A9DDE4 3C1980AA */  lui     $t9, %hi(D_80A9E840)       ## $t9 = 80AA0000
/* 002A8 80A9DDE8 2739E840 */  addiu   $t9, $t9, %lo(D_80A9E840)  ## $t9 = 80A9E840
/* 002AC 80A9DDEC 31CF000F */  andi    $t7, $t6, 0x000F           ## $t7 = 00000000
/* 002B0 80A9DDF0 000FC0C0 */  sll     $t8, $t7,  3               
/* 002B4 80A9DDF4 03191021 */  addu    $v0, $t8, $t9              
/* 002B8 80A9DDF8 00808025 */  or      $s0, $a0, $zero            ## $s0 = 00000000
/* 002BC 80A9DDFC 0C03F66B */  jal     Math_Rand_ZeroOne
              ## Rand.Next() float
/* 002C0 80A9DE00 AFA20028 */  sw      $v0, 0x0028($sp)           
/* 002C4 80A9DE04 3C013F00 */  lui     $at, 0x3F00                ## $at = 3F000000
/* 002C8 80A9DE08 44816000 */  mtc1    $at, $f12                  ## $f12 = 0.50
/* 002CC 80A9DE0C 8608001C */  lh      $t0, 0x001C($s0)           ## 0000001C
/* 002D0 80A9DE10 8FA20028 */  lw      $v0, 0x0028($sp)           
/* 002D4 80A9DE14 460C0102 */  mul.s   $f4, $f0, $f12             
/* 002D8 80A9DE18 2403012C */  addiu   $v1, $zero, 0x012C         ## $v1 = 0000012C
/* 002DC 80A9DE1C 05010003 */  bgez    $t0, .L80A9DE2C            
/* 002E0 80A9DE20 460C2080 */  add.s   $f2, $f4, $f12             
/* 002E4 80A9DE24 10000001 */  beq     $zero, $zero, .L80A9DE2C   
/* 002E8 80A9DE28 24030064 */  addiu   $v1, $zero, 0x0064         ## $v1 = 00000064
.L80A9DE2C:
/* 002EC 80A9DE2C 90490000 */  lbu     $t1, 0x0000($v0)           ## 00000000
/* 002F0 80A9DE30 26040154 */  addiu   $a0, $s0, 0x0154           ## $a0 = 00000154
/* 002F4 80A9DE34 3C014F80 */  lui     $at, 0x4F80                ## $at = 4F800000
/* 002F8 80A9DE38 44893000 */  mtc1    $t1, $f6                   ## $f6 = 0.00
/* 002FC 80A9DE3C 05210004 */  bgez    $t1, .L80A9DE50            
/* 00300 80A9DE40 46803220 */  cvt.s.w $f8, $f6                   
/* 00304 80A9DE44 44815000 */  mtc1    $at, $f10                  ## $f10 = 4294967296.00
/* 00308 80A9DE48 00000000 */  nop
/* 0030C 80A9DE4C 460A4200 */  add.s   $f8, $f8, $f10             
.L80A9DE50:
/* 00310 80A9DE50 46024402 */  mul.s   $f16, $f8, $f2             
/* 00314 80A9DE54 24050001 */  addiu   $a1, $zero, 0x0001         ## $a1 = 00000001
/* 00318 80A9DE58 3C014F00 */  lui     $at, 0x4F00                ## $at = 4F000000
/* 0031C 80A9DE5C 444AF800 */  cfc1    $t2, $31
/* 00320 80A9DE60 44C5F800 */  ctc1    $a1, $31
/* 00324 80A9DE64 00000000 */  nop
/* 00328 80A9DE68 460084A4 */  cvt.w.s $f18, $f16                 
/* 0032C 80A9DE6C 4445F800 */  cfc1    $a1, $31
/* 00330 80A9DE70 00000000 */  nop
/* 00334 80A9DE74 30A50078 */  andi    $a1, $a1, 0x0078           ## $a1 = 00000000
/* 00338 80A9DE78 50A00013 */  beql    $a1, $zero, .L80A9DEC8     
/* 0033C 80A9DE7C 44059000 */  mfc1    $a1, $f18                  
/* 00340 80A9DE80 44819000 */  mtc1    $at, $f18                  ## $f18 = 2147483648.00
/* 00344 80A9DE84 24050001 */  addiu   $a1, $zero, 0x0001         ## $a1 = 00000001
/* 00348 80A9DE88 46128481 */  sub.s   $f18, $f16, $f18           
/* 0034C 80A9DE8C 44C5F800 */  ctc1    $a1, $31
/* 00350 80A9DE90 00000000 */  nop
/* 00354 80A9DE94 460094A4 */  cvt.w.s $f18, $f18                 
/* 00358 80A9DE98 4445F800 */  cfc1    $a1, $31
/* 0035C 80A9DE9C 00000000 */  nop
/* 00360 80A9DEA0 30A50078 */  andi    $a1, $a1, 0x0078           ## $a1 = 00000000
/* 00364 80A9DEA4 14A00005 */  bne     $a1, $zero, .L80A9DEBC     
/* 00368 80A9DEA8 00000000 */  nop
/* 0036C 80A9DEAC 44059000 */  mfc1    $a1, $f18                  
/* 00370 80A9DEB0 3C018000 */  lui     $at, 0x8000                ## $at = 80000000
/* 00374 80A9DEB4 10000007 */  beq     $zero, $zero, .L80A9DED4   
/* 00378 80A9DEB8 00A12825 */  or      $a1, $a1, $at              ## $a1 = 80000000
.L80A9DEBC:
/* 0037C 80A9DEBC 10000005 */  beq     $zero, $zero, .L80A9DED4   
/* 00380 80A9DEC0 2405FFFF */  addiu   $a1, $zero, 0xFFFF         ## $a1 = FFFFFFFF
/* 00384 80A9DEC4 44059000 */  mfc1    $a1, $f18                  
.L80A9DEC8:
/* 00388 80A9DEC8 00000000 */  nop
/* 0038C 80A9DECC 04A0FFFB */  bltz    $a1, .L80A9DEBC            
/* 00390 80A9DED0 00000000 */  nop
.L80A9DED4:
/* 00394 80A9DED4 904B0001 */  lbu     $t3, 0x0001($v0)           ## 00000001
/* 00398 80A9DED8 44CAF800 */  ctc1    $t2, $31
/* 0039C 80A9DEDC 30A500FF */  andi    $a1, $a1, 0x00FF           ## $a1 = 000000FF
/* 003A0 80A9DEE0 448B2000 */  mtc1    $t3, $f4                   ## $f4 = 0.00
/* 003A4 80A9DEE4 3C014F80 */  lui     $at, 0x4F80                ## $at = 4F800000
/* 003A8 80A9DEE8 05610004 */  bgez    $t3, .L80A9DEFC            
/* 003AC 80A9DEEC 468021A0 */  cvt.s.w $f6, $f4                   
/* 003B0 80A9DEF0 44815000 */  mtc1    $at, $f10                  ## $f10 = 4294967296.00
/* 003B4 80A9DEF4 00000000 */  nop
/* 003B8 80A9DEF8 460A3180 */  add.s   $f6, $f6, $f10             
.L80A9DEFC:
/* 003BC 80A9DEFC 46023202 */  mul.s   $f8, $f6, $f2              
/* 003C0 80A9DF00 24060001 */  addiu   $a2, $zero, 0x0001         ## $a2 = 00000001
/* 003C4 80A9DF04 3C014F00 */  lui     $at, 0x4F00                ## $at = 4F000000
/* 003C8 80A9DF08 444CF800 */  cfc1    $t4, $31
/* 003CC 80A9DF0C 44C6F800 */  ctc1    $a2, $31
/* 003D0 80A9DF10 00000000 */  nop
/* 003D4 80A9DF14 46004424 */  cvt.w.s $f16, $f8                  
/* 003D8 80A9DF18 4446F800 */  cfc1    $a2, $31
/* 003DC 80A9DF1C 00000000 */  nop
/* 003E0 80A9DF20 30C60078 */  andi    $a2, $a2, 0x0078           ## $a2 = 00000000
/* 003E4 80A9DF24 50C00013 */  beql    $a2, $zero, .L80A9DF74     
/* 003E8 80A9DF28 44068000 */  mfc1    $a2, $f16                  
/* 003EC 80A9DF2C 44818000 */  mtc1    $at, $f16                  ## $f16 = 2147483648.00
/* 003F0 80A9DF30 24060001 */  addiu   $a2, $zero, 0x0001         ## $a2 = 00000001
/* 003F4 80A9DF34 46104401 */  sub.s   $f16, $f8, $f16            
/* 003F8 80A9DF38 44C6F800 */  ctc1    $a2, $31
/* 003FC 80A9DF3C 00000000 */  nop
/* 00400 80A9DF40 46008424 */  cvt.w.s $f16, $f16                 
/* 00404 80A9DF44 4446F800 */  cfc1    $a2, $31
/* 00408 80A9DF48 00000000 */  nop
/* 0040C 80A9DF4C 30C60078 */  andi    $a2, $a2, 0x0078           ## $a2 = 00000000
/* 00410 80A9DF50 14C00005 */  bne     $a2, $zero, .L80A9DF68     
/* 00414 80A9DF54 00000000 */  nop
/* 00418 80A9DF58 44068000 */  mfc1    $a2, $f16                  
/* 0041C 80A9DF5C 3C018000 */  lui     $at, 0x8000                ## $at = 80000000
/* 00420 80A9DF60 10000007 */  beq     $zero, $zero, .L80A9DF80   
/* 00424 80A9DF64 00C13025 */  or      $a2, $a2, $at              ## $a2 = 80000000
.L80A9DF68:
/* 00428 80A9DF68 10000005 */  beq     $zero, $zero, .L80A9DF80   
/* 0042C 80A9DF6C 2406FFFF */  addiu   $a2, $zero, 0xFFFF         ## $a2 = FFFFFFFF
/* 00430 80A9DF70 44068000 */  mfc1    $a2, $f16                  
.L80A9DF74:
/* 00434 80A9DF74 00000000 */  nop
/* 00438 80A9DF78 04C0FFFB */  bltz    $a2, .L80A9DF68            
/* 0043C 80A9DF7C 00000000 */  nop
.L80A9DF80:
/* 00440 80A9DF80 904D0002 */  lbu     $t5, 0x0002($v0)           ## 00000002
/* 00444 80A9DF84 44CCF800 */  ctc1    $t4, $31
/* 00448 80A9DF88 30C600FF */  andi    $a2, $a2, 0x00FF           ## $a2 = 000000FF
/* 0044C 80A9DF8C 448D9000 */  mtc1    $t5, $f18                  ## $f18 = 0.00
/* 00450 80A9DF90 3C014F80 */  lui     $at, 0x4F80                ## $at = 4F800000
/* 00454 80A9DF94 05A10004 */  bgez    $t5, .L80A9DFA8            
/* 00458 80A9DF98 46809120 */  cvt.s.w $f4, $f18                  
/* 0045C 80A9DF9C 44815000 */  mtc1    $at, $f10                  ## $f10 = 4294967296.00
/* 00460 80A9DFA0 00000000 */  nop
/* 00464 80A9DFA4 460A2100 */  add.s   $f4, $f4, $f10             
.L80A9DFA8:
/* 00468 80A9DFA8 46022182 */  mul.s   $f6, $f4, $f2              
/* 0046C 80A9DFAC 24070001 */  addiu   $a3, $zero, 0x0001         ## $a3 = 00000001
/* 00470 80A9DFB0 3C014F00 */  lui     $at, 0x4F00                ## $at = 4F000000
/* 00474 80A9DFB4 444EF800 */  cfc1    $t6, $31
/* 00478 80A9DFB8 44C7F800 */  ctc1    $a3, $31
/* 0047C 80A9DFBC 00000000 */  nop
/* 00480 80A9DFC0 46003224 */  cvt.w.s $f8, $f6                   
/* 00484 80A9DFC4 4447F800 */  cfc1    $a3, $31
/* 00488 80A9DFC8 00000000 */  nop
/* 0048C 80A9DFCC 30E70078 */  andi    $a3, $a3, 0x0078           ## $a3 = 00000000
/* 00490 80A9DFD0 50E00013 */  beql    $a3, $zero, .L80A9E020     
/* 00494 80A9DFD4 44074000 */  mfc1    $a3, $f8                   
/* 00498 80A9DFD8 44814000 */  mtc1    $at, $f8                   ## $f8 = 2147483648.00
/* 0049C 80A9DFDC 24070001 */  addiu   $a3, $zero, 0x0001         ## $a3 = 00000001
/* 004A0 80A9DFE0 46083201 */  sub.s   $f8, $f6, $f8              
/* 004A4 80A9DFE4 44C7F800 */  ctc1    $a3, $31
/* 004A8 80A9DFE8 00000000 */  nop
/* 004AC 80A9DFEC 46004224 */  cvt.w.s $f8, $f8                   
/* 004B0 80A9DFF0 4447F800 */  cfc1    $a3, $31
/* 004B4 80A9DFF4 00000000 */  nop
/* 004B8 80A9DFF8 30E70078 */  andi    $a3, $a3, 0x0078           ## $a3 = 00000000
/* 004BC 80A9DFFC 14E00005 */  bne     $a3, $zero, .L80A9E014     
/* 004C0 80A9E000 00000000 */  nop
/* 004C4 80A9E004 44074000 */  mfc1    $a3, $f8                   
/* 004C8 80A9E008 3C018000 */  lui     $at, 0x8000                ## $at = 80000000
/* 004CC 80A9E00C 10000007 */  beq     $zero, $zero, .L80A9E02C   
/* 004D0 80A9E010 00E13825 */  or      $a3, $a3, $at              ## $a3 = 80000000
.L80A9E014:
/* 004D4 80A9E014 10000005 */  beq     $zero, $zero, .L80A9E02C   
/* 004D8 80A9E018 2407FFFF */  addiu   $a3, $zero, 0xFFFF         ## $a3 = FFFFFFFF
/* 004DC 80A9E01C 44074000 */  mfc1    $a3, $f8                   
.L80A9E020:
/* 004E0 80A9E020 00000000 */  nop
/* 004E4 80A9E024 04E0FFFB */  bltz    $a3, .L80A9E014            
/* 004E8 80A9E028 00000000 */  nop
.L80A9E02C:
/* 004EC 80A9E02C 44CEF800 */  ctc1    $t6, $31
/* 004F0 80A9E030 30E700FF */  andi    $a3, $a3, 0x00FF           ## $a3 = 000000FF
/* 004F4 80A9E034 0C01E796 */  jal     Lights_SetPositionalLightColorAndRadius
              
/* 004F8 80A9E038 AFA30010 */  sw      $v1, 0x0010($sp)           
/* 004FC 80A9E03C 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 00500 80A9E040 0C2A7754 */  jal     func_80A9DD50              
/* 00504 80A9E044 8FA50034 */  lw      $a1, 0x0034($sp)           
/* 00508 80A9E048 860F001C */  lh      $t7, 0x001C($s0)           ## 0000001C
/* 0050C 80A9E04C 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 00510 80A9E050 05E20004 */  bltzl   $t7, .L80A9E064            
/* 00514 80A9E054 8FBF0024 */  lw      $ra, 0x0024($sp)           
/* 00518 80A9E058 0C00BE0A */  jal     Audio_PlayActorSound2
              
/* 0051C 80A9E05C 24052031 */  addiu   $a1, $zero, 0x2031         ## $a1 = 00002031
/* 00520 80A9E060 8FBF0024 */  lw      $ra, 0x0024($sp)           
.L80A9E064:
/* 00524 80A9E064 8FB00020 */  lw      $s0, 0x0020($sp)           
/* 00528 80A9E068 27BD0030 */  addiu   $sp, $sp, 0x0030           ## $sp = 00000000
/* 0052C 80A9E06C 03E00008 */  jr      $ra                        
/* 00530 80A9E070 00000000 */  nop


