.late_rodata
glabel D_80B265CC
    .float 0.2

glabel D_80B265D0
    .float 0.2

.text
glabel EnTuboTrap_SpawnWaterFragments
/* 0039C 80B25C8C 27BDFF20 */  addiu   $sp, $sp, 0xFF20           ## $sp = FFFFFF20
/* 003A0 80B25C90 AFB1007C */  sw      $s1, 0x007C($sp)           
/* 003A4 80B25C94 AFBF009C */  sw      $ra, 0x009C($sp)           
/* 003A8 80B25C98 AFBE0098 */  sw      $s8, 0x0098($sp)           
/* 003AC 80B25C9C AFB70094 */  sw      $s7, 0x0094($sp)           
/* 003B0 80B25CA0 AFB60090 */  sw      $s6, 0x0090($sp)           
/* 003B4 80B25CA4 AFB5008C */  sw      $s5, 0x008C($sp)           
/* 003B8 80B25CA8 AFB40088 */  sw      $s4, 0x0088($sp)           
/* 003BC 80B25CAC AFB30084 */  sw      $s3, 0x0084($sp)           
/* 003C0 80B25CB0 AFB20080 */  sw      $s2, 0x0080($sp)           
/* 003C4 80B25CB4 AFB00078 */  sw      $s0, 0x0078($sp)           
/* 003C8 80B25CB8 F7BE0070 */  sdc1    $f30, 0x0070($sp)          
/* 003CC 80B25CBC F7BC0068 */  sdc1    $f28, 0x0068($sp)          
/* 003D0 80B25CC0 F7BA0060 */  sdc1    $f26, 0x0060($sp)          
/* 003D4 80B25CC4 F7B80058 */  sdc1    $f24, 0x0058($sp)          
/* 003D8 80B25CC8 F7B60050 */  sdc1    $f22, 0x0050($sp)          
/* 003DC 80B25CCC F7B40048 */  sdc1    $f20, 0x0048($sp)          
/* 003E0 80B25CD0 24910024 */  addiu   $s1, $a0, 0x0024           ## $s1 = 00000024
/* 003E4 80B25CD4 8E2F0000 */  lw      $t7, 0x0000($s1)           ## 00000024
/* 003E8 80B25CD8 27B500C8 */  addiu   $s5, $sp, 0x00C8           ## $s5 = FFFFFFE8
/* 003EC 80B25CDC 00A0A025 */  or      $s4, $a1, $zero            ## $s4 = 00000000
/* 003F0 80B25CE0 AEAF0000 */  sw      $t7, 0x0000($s5)           ## FFFFFFE8
/* 003F4 80B25CE4 8E2E0004 */  lw      $t6, 0x0004($s1)           ## 00000028
/* 003F8 80B25CE8 24180190 */  addiu   $t8, $zero, 0x0190         ## $t8 = 00000190
/* 003FC 80B25CEC 00003025 */  or      $a2, $zero, $zero          ## $a2 = 00000000
/* 00400 80B25CF0 AEAE0004 */  sw      $t6, 0x0004($s5)           ## FFFFFFEC
/* 00404 80B25CF4 8E2F0008 */  lw      $t7, 0x0008($s1)           ## 0000002C
/* 00408 80B25CF8 00003825 */  or      $a3, $zero, $zero          ## $a3 = 00000000
/* 0040C 80B25CFC AEAF0008 */  sw      $t7, 0x0008($s5)           ## FFFFFFF0
/* 00410 80B25D00 C7A400CC */  lwc1    $f4, 0x00CC($sp)           
/* 00414 80B25D04 C4860084 */  lwc1    $f6, 0x0084($a0)           ## 00000084
/* 00418 80B25D08 00A02025 */  or      $a0, $a1, $zero            ## $a0 = 00000000
/* 0041C 80B25D0C 02A02825 */  or      $a1, $s5, $zero            ## $a1 = FFFFFFE8
/* 00420 80B25D10 46062200 */  add.s   $f8, $f4, $f6              
/* 00424 80B25D14 AFB80014 */  sw      $t8, 0x0014($sp)           
/* 00428 80B25D18 AFA00010 */  sw      $zero, 0x0010($sp)         
/* 0042C 80B25D1C 0C00A527 */  jal     func_8002949C              
/* 00430 80B25D20 E7A800CC */  swc1    $f8, 0x00CC($sp)           
/* 00434 80B25D24 3C0140A0 */  lui     $at, 0x40A0                ## $at = 40A00000
/* 00438 80B25D28 4481F000 */  mtc1    $at, $f30                  ## $f30 = 5.00
/* 0043C 80B25D2C 3C0180B2 */  lui     $at, %hi(D_80B265CC)       ## $at = 80B20000
/* 00440 80B25D30 C43C65CC */  lwc1    $f28, %lo(D_80B265CC)($at) 
/* 00444 80B25D34 3C014000 */  lui     $at, 0x4000                ## $at = 40000000
/* 00448 80B25D38 4481D000 */  mtc1    $at, $f26                  ## $f26 = 2.00
/* 0044C 80B25D3C 3C014100 */  lui     $at, 0x4100                ## $at = 41000000
/* 00450 80B25D40 3C170501 */  lui     $s7, 0x0501                ## $s7 = 05010000
/* 00454 80B25D44 4481C000 */  mtc1    $at, $f24                  ## $f24 = 8.00
/* 00458 80B25D48 26F77A60 */  addiu   $s7, $s7, 0x7A60           ## $s7 = 05017A60
/* 0045C 80B25D4C 00009825 */  or      $s3, $zero, $zero          ## $s3 = 00000000
/* 00460 80B25D50 00009025 */  or      $s2, $zero, $zero          ## $s2 = 00000000
/* 00464 80B25D54 241E000F */  addiu   $s8, $zero, 0x000F         ## $s8 = 0000000F
/* 00468 80B25D58 27B600BC */  addiu   $s6, $sp, 0x00BC           ## $s6 = FFFFFFDC
.L80B25D5C:
/* 0046C 80B25D5C 00122400 */  sll     $a0, $s2, 16               
/* 00470 80B25D60 0C01DE1C */  jal     Math_Sins
              ## sins?
/* 00474 80B25D64 00042403 */  sra     $a0, $a0, 16               
/* 00478 80B25D68 00122400 */  sll     $a0, $s2, 16               
/* 0047C 80B25D6C 46000506 */  mov.s   $f20, $f0                  
/* 00480 80B25D70 0C01DE0D */  jal     Math_Coss
              ## coss?
/* 00484 80B25D74 00042403 */  sra     $a0, $a0, 16               
/* 00488 80B25D78 4618A282 */  mul.s   $f10, $f20, $f24           
/* 0048C 80B25D7C 46000586 */  mov.s   $f22, $f0                  
/* 00490 80B25D80 0C03F66B */  jal     Math_Rand_ZeroOne
              ## Rand.Next() float
/* 00494 80B25D84 E7AA00C8 */  swc1    $f10, 0x00C8($sp)          
/* 00498 80B25D88 461E0402 */  mul.s   $f16, $f0, $f30            
/* 0049C 80B25D8C C7A600C8 */  lwc1    $f6, 0x00C8($sp)           
/* 004A0 80B25D90 4618B102 */  mul.s   $f4, $f22, $f24            
/* 004A4 80B25D94 00000000 */  nop
/* 004A8 80B25D98 461C3202 */  mul.s   $f8, $f6, $f28             
/* 004AC 80B25D9C 461A8480 */  add.s   $f18, $f16, $f26           
/* 004B0 80B25DA0 E7A400D0 */  swc1    $f4, 0x00D0($sp)           
/* 004B4 80B25DA4 E7B200CC */  swc1    $f18, 0x00CC($sp)          
/* 004B8 80B25DA8 0C03F66B */  jal     Math_Rand_ZeroOne
              ## Rand.Next() float
/* 004BC 80B25DAC E7A800BC */  swc1    $f8, 0x00BC($sp)           
/* 004C0 80B25DB0 3C014080 */  lui     $at, 0x4080                ## $at = 40800000
/* 004C4 80B25DB4 44815000 */  mtc1    $at, $f10                  ## $f10 = 4.00
/* 004C8 80B25DB8 C7A400D0 */  lwc1    $f4, 0x00D0($sp)           
/* 004CC 80B25DBC C7A800C8 */  lwc1    $f8, 0x00C8($sp)           
/* 004D0 80B25DC0 460A0402 */  mul.s   $f16, $f0, $f10            
/* 004D4 80B25DC4 461A8480 */  add.s   $f18, $f16, $f26           
/* 004D8 80B25DC8 461C2182 */  mul.s   $f6, $f4, $f28             
/* 004DC 80B25DCC E7B200C0 */  swc1    $f18, 0x00C0($sp)          
/* 004E0 80B25DD0 C7B200CC */  lwc1    $f18, 0x00CC($sp)          
/* 004E4 80B25DD4 E7A600C4 */  swc1    $f6, 0x00C4($sp)           
/* 004E8 80B25DD8 C62A0000 */  lwc1    $f10, 0x0000($s1)          ## 00000024
/* 004EC 80B25DDC 460A4400 */  add.s   $f16, $f8, $f10            
/* 004F0 80B25DE0 E7B000C8 */  swc1    $f16, 0x00C8($sp)          
/* 004F4 80B25DE4 C6260004 */  lwc1    $f6, 0x0004($s1)           ## 00000028
/* 004F8 80B25DE8 46069200 */  add.s   $f8, $f18, $f6             
/* 004FC 80B25DEC E7A800CC */  swc1    $f8, 0x00CC($sp)           
/* 00500 80B25DF0 C62A0008 */  lwc1    $f10, 0x0008($s1)          ## 0000002C
/* 00504 80B25DF4 460A2400 */  add.s   $f16, $f4, $f10            
/* 00508 80B25DF8 0C03F66B */  jal     Math_Rand_ZeroOne
              ## Rand.Next() float
/* 0050C 80B25DFC E7B000D0 */  swc1    $f16, 0x00D0($sp)          
/* 00510 80B25E00 3C0180B2 */  lui     $at, %hi(D_80B265D0)       ## $at = 80B20000
/* 00514 80B25E04 C43265D0 */  lwc1    $f18, %lo(D_80B265D0)($at) 
/* 00518 80B25E08 24100020 */  addiu   $s0, $zero, 0x0020         ## $s0 = 00000020
/* 0051C 80B25E0C 4612003C */  c.lt.s  $f0, $f18                  
/* 00520 80B25E10 00000000 */  nop
/* 00524 80B25E14 45000003 */  bc1f    .L80B25E24                 
/* 00528 80B25E18 00000000 */  nop
/* 0052C 80B25E1C 10000001 */  beq     $zero, $zero, .L80B25E24   
/* 00530 80B25E20 24100040 */  addiu   $s0, $zero, 0x0040         ## $s0 = 00000040
.L80B25E24:
/* 00534 80B25E24 0C03F66B */  jal     Math_Rand_ZeroOne
              ## Rand.Next() float
/* 00538 80B25E28 00000000 */  nop
/* 0053C 80B25E2C 3C014282 */  lui     $at, 0x4282                ## $at = 42820000
/* 00540 80B25E30 44813000 */  mtc1    $at, $f6                   ## $f6 = 65.00
/* 00544 80B25E34 3C014170 */  lui     $at, 0x4170                ## $at = 41700000
/* 00548 80B25E38 44812000 */  mtc1    $at, $f4                   ## $f4 = 15.00
/* 0054C 80B25E3C 46060202 */  mul.s   $f8, $f0, $f6              
/* 00550 80B25E40 2419FF4C */  addiu   $t9, $zero, 0xFF4C         ## $t9 = FFFFFF4C
/* 00554 80B25E44 2408001E */  addiu   $t0, $zero, 0x001E         ## $t0 = 0000001E
/* 00558 80B25E48 2409001E */  addiu   $t1, $zero, 0x001E         ## $t1 = 0000001E
/* 0055C 80B25E4C 240C0020 */  addiu   $t4, $zero, 0x0020         ## $t4 = 00000020
/* 00560 80B25E50 240D0046 */  addiu   $t5, $zero, 0x0046         ## $t5 = 00000046
/* 00564 80B25E54 240EFFFF */  addiu   $t6, $zero, 0xFFFF         ## $t6 = FFFFFFFF
/* 00568 80B25E58 46044280 */  add.s   $f10, $f8, $f4             
/* 0056C 80B25E5C 240F0003 */  addiu   $t7, $zero, 0x0003         ## $t7 = 00000003
/* 00570 80B25E60 AFAF0038 */  sw      $t7, 0x0038($sp)           
/* 00574 80B25E64 AFAE0034 */  sw      $t6, 0x0034($sp)           
/* 00578 80B25E68 4600540D */  trunc.w.s $f16, $f10                 
/* 0057C 80B25E6C AFAD0030 */  sw      $t5, 0x0030($sp)           
/* 00580 80B25E70 AFAC002C */  sw      $t4, 0x002C($sp)           
/* 00584 80B25E74 AFA9001C */  sw      $t1, 0x001C($sp)           
/* 00588 80B25E78 440B8000 */  mfc1    $t3, $f16                  
/* 0058C 80B25E7C AFA80018 */  sw      $t0, 0x0018($sp)           
/* 00590 80B25E80 AFB90010 */  sw      $t9, 0x0010($sp)           
/* 00594 80B25E84 02802025 */  or      $a0, $s4, $zero            ## $a0 = 00000000
/* 00598 80B25E88 02A02825 */  or      $a1, $s5, $zero            ## $a1 = FFFFFFE8
/* 0059C 80B25E8C 02C03025 */  or      $a2, $s6, $zero            ## $a2 = FFFFFFDC
/* 005A0 80B25E90 02203825 */  or      $a3, $s1, $zero            ## $a3 = 00000024
/* 005A4 80B25E94 AFB00014 */  sw      $s0, 0x0014($sp)           
/* 005A8 80B25E98 AFA00020 */  sw      $zero, 0x0020($sp)         
/* 005AC 80B25E9C AFA00028 */  sw      $zero, 0x0028($sp)         
/* 005B0 80B25EA0 AFB7003C */  sw      $s7, 0x003C($sp)           
/* 005B4 80B25EA4 0C00A7A3 */  jal     func_80029E8C
              
/* 005B8 80B25EA8 AFAB0024 */  sw      $t3, 0x0024($sp)           
/* 005BC 80B25EAC 26524E20 */  addiu   $s2, $s2, 0x4E20           ## $s2 = 00004E20
/* 005C0 80B25EB0 00129400 */  sll     $s2, $s2, 16               
/* 005C4 80B25EB4 26730001 */  addiu   $s3, $s3, 0x0001           ## $s3 = 00000001
/* 005C8 80B25EB8 167EFFA8 */  bne     $s3, $s8, .L80B25D5C       
/* 005CC 80B25EBC 00129403 */  sra     $s2, $s2, 16               
/* 005D0 80B25EC0 8FBF009C */  lw      $ra, 0x009C($sp)           
/* 005D4 80B25EC4 D7B40048 */  ldc1    $f20, 0x0048($sp)          
/* 005D8 80B25EC8 D7B60050 */  ldc1    $f22, 0x0050($sp)          
/* 005DC 80B25ECC D7B80058 */  ldc1    $f24, 0x0058($sp)          
/* 005E0 80B25ED0 D7BA0060 */  ldc1    $f26, 0x0060($sp)          
/* 005E4 80B25ED4 D7BC0068 */  ldc1    $f28, 0x0068($sp)          
/* 005E8 80B25ED8 D7BE0070 */  ldc1    $f30, 0x0070($sp)          
/* 005EC 80B25EDC 8FB00078 */  lw      $s0, 0x0078($sp)           
/* 005F0 80B25EE0 8FB1007C */  lw      $s1, 0x007C($sp)           
/* 005F4 80B25EE4 8FB20080 */  lw      $s2, 0x0080($sp)           
/* 005F8 80B25EE8 8FB30084 */  lw      $s3, 0x0084($sp)           
/* 005FC 80B25EEC 8FB40088 */  lw      $s4, 0x0088($sp)           
/* 00600 80B25EF0 8FB5008C */  lw      $s5, 0x008C($sp)           
/* 00604 80B25EF4 8FB60090 */  lw      $s6, 0x0090($sp)           
/* 00608 80B25EF8 8FB70094 */  lw      $s7, 0x0094($sp)           
/* 0060C 80B25EFC 8FBE0098 */  lw      $s8, 0x0098($sp)           
/* 00610 80B25F00 03E00008 */  jr      $ra                        
/* 00614 80B25F04 27BD00E0 */  addiu   $sp, $sp, 0x00E0           ## $sp = 00000000
