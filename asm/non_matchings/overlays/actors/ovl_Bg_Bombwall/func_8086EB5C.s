glabel func_8086EB5C
/* 0038C 8086EB5C 27BDFF68 */  addiu   $sp, $sp, 0xFF68           ## $sp = FFFFFF68
/* 00390 8086EB60 AFB20054 */  sw      $s2, 0x0054($sp)           
/* 00394 8086EB64 00809025 */  or      $s2, $a0, $zero            ## $s2 = 00000000
/* 00398 8086EB68 AFBF0064 */  sw      $ra, 0x0064($sp)           
/* 0039C 8086EB6C AFB50060 */  sw      $s5, 0x0060($sp)           
/* 003A0 8086EB70 AFB4005C */  sw      $s4, 0x005C($sp)           
/* 003A4 8086EB74 AFB30058 */  sw      $s3, 0x0058($sp)           
/* 003A8 8086EB78 AFB10050 */  sw      $s1, 0x0050($sp)           
/* 003AC 8086EB7C AFB0004C */  sw      $s0, 0x004C($sp)           
/* 003B0 8086EB80 F7BC0040 */  sdc1    $f28, 0x0040($sp)          
/* 003B4 8086EB84 F7BA0038 */  sdc1    $f26, 0x0038($sp)          
/* 003B8 8086EB88 F7B80030 */  sdc1    $f24, 0x0030($sp)          
/* 003BC 8086EB8C F7B60028 */  sdc1    $f22, 0x0028($sp)          
/* 003C0 8086EB90 F7B40020 */  sdc1    $f20, 0x0020($sp)          
/* 003C4 8086EB94 00A0A025 */  or      $s4, $a1, $zero            ## $s4 = 00000000
/* 003C8 8086EB98 0C01DE1C */  jal     Math_SinS
              ## sins?
/* 003CC 8086EB9C 848400B6 */  lh      $a0, 0x00B6($a0)           ## 000000B6
/* 003D0 8086EBA0 46000586 */  mov.s   $f22, $f0                  
/* 003D4 8086EBA4 0C01DE0D */  jal     Math_CosS
              ## coss?
/* 003D8 8086EBA8 864400B6 */  lh      $a0, 0x00B6($s2)           ## 000000B6
/* 003DC 8086EBAC 3C014370 */  lui     $at, 0x4370                ## $at = 43700000
/* 003E0 8086EBB0 4481E000 */  mtc1    $at, $f28                  ## $f28 = 240.00
/* 003E4 8086EBB4 3C014248 */  lui     $at, 0x4248                ## $at = 42480000
/* 003E8 8086EBB8 4481D000 */  mtc1    $at, $f26                  ## $f26 = 50.00
/* 003EC 8086EBBC 3C0142F0 */  lui     $at, 0x42F0                ## $at = 42F00000
/* 003F0 8086EBC0 3C108087 */  lui     $s0, %hi(D_8086F010)       ## $s0 = 80870000
/* 003F4 8086EBC4 3C138087 */  lui     $s3, %hi(D_8086F03A)       ## $s3 = 80870000
/* 003F8 8086EBC8 4481C000 */  mtc1    $at, $f24                  ## $f24 = 120.00
/* 003FC 8086EBCC 46000506 */  mov.s   $f20, $f0                  
/* 00400 8086EBD0 2673F03A */  addiu   $s3, $s3, %lo(D_8086F03A)  ## $s3 = 8086F03A
/* 00404 8086EBD4 2610F010 */  addiu   $s0, $s0, %lo(D_8086F010)  ## $s0 = 8086F010
/* 00408 8086EBD8 26510024 */  addiu   $s1, $s2, 0x0024           ## $s1 = 00000024
/* 0040C 8086EBDC 27B50088 */  addiu   $s5, $sp, 0x0088           ## $s5 = FFFFFFF0
/* 00410 8086EBE0 860F0004 */  lh      $t7, 0x0004($s0)           ## 8086F014
.L8086EBE4:
/* 00414 8086EBE4 860E0000 */  lh      $t6, 0x0000($s0)           ## 8086F010
/* 00418 8086EBE8 C6320000 */  lwc1    $f18, 0x0000($s1)          ## 00000024
/* 0041C 8086EBEC 448F3000 */  mtc1    $t7, $f6                   ## $f6 = 0.00
/* 00420 8086EBF0 448E2000 */  mtc1    $t6, $f4                   ## $f4 = 0.00
/* 00424 8086EBF4 86180002 */  lh      $t8, 0x0002($s0)           ## 8086F012
/* 00428 8086EBF8 468030A0 */  cvt.s.w $f2, $f6                   
/* 0042C 8086EBFC 44983000 */  mtc1    $t8, $f6                   ## $f6 = 0.00
/* 00430 8086EC00 46802020 */  cvt.s.w $f0, $f4                   
/* 00434 8086EC04 46161202 */  mul.s   $f8, $f2, $f22             
/* 00438 8086EC08 00000000 */  nop
/* 0043C 8086EC0C 46140282 */  mul.s   $f10, $f0, $f20            
/* 00440 8086EC10 460A4400 */  add.s   $f16, $f8, $f10            
/* 00444 8086EC14 46803220 */  cvt.s.w $f8, $f6                   
/* 00448 8086EC18 46128100 */  add.s   $f4, $f16, $f18            
/* 0044C 8086EC1C 46141482 */  mul.s   $f18, $f2, $f20            
/* 00450 8086EC20 E7A40088 */  swc1    $f4, 0x0088($sp)           
/* 00454 8086EC24 46160102 */  mul.s   $f4, $f0, $f22             
/* 00458 8086EC28 C62A0004 */  lwc1    $f10, 0x0004($s1)          ## 00000028
/* 0045C 8086EC2C 460A4400 */  add.s   $f16, $f8, $f10            
/* 00460 8086EC30 46049181 */  sub.s   $f6, $f18, $f4             
/* 00464 8086EC34 E7B0008C */  swc1    $f16, 0x008C($sp)          
/* 00468 8086EC38 C6280008 */  lwc1    $f8, 0x0008($s1)           ## 0000002C
/* 0046C 8086EC3C 46083280 */  add.s   $f10, $f6, $f8             
/* 00470 8086EC40 0C03F66B */  jal     Rand_ZeroOne
              ## Rand.Next() float
/* 00474 8086EC44 E7AA0090 */  swc1    $f10, 0x0090($sp)          
/* 00478 8086EC48 46180402 */  mul.s   $f16, $f0, $f24            
/* 0047C 8086EC4C 4600848D */  trunc.w.s $f18, $f16                 
/* 00480 8086EC50 44129000 */  mfc1    $s2, $f18                  
/* 00484 8086EC54 00000000 */  nop
/* 00488 8086EC58 00129400 */  sll     $s2, $s2, 16               
/* 0048C 8086EC5C 00129403 */  sra     $s2, $s2, 16               
/* 00490 8086EC60 26520014 */  addiu   $s2, $s2, 0x0014           ## $s2 = 00000014
/* 00494 8086EC64 00129400 */  sll     $s2, $s2, 16               
/* 00498 8086EC68 0C03F66B */  jal     Rand_ZeroOne
              ## Rand.Next() float
/* 0049C 8086EC6C 00129403 */  sra     $s2, $s2, 16               
/* 004A0 8086EC70 461C0102 */  mul.s   $f4, $f0, $f28             
/* 004A4 8086EC74 4406D000 */  mfc1    $a2, $f26                  
/* 004A8 8086EC78 240D0001 */  addiu   $t5, $zero, 0x0001         ## $t5 = 00000001
/* 004AC 8086EC7C AFAD0018 */  sw      $t5, 0x0018($sp)           
/* 004B0 8086EC80 02802025 */  or      $a0, $s4, $zero            ## $a0 = 00000000
/* 004B4 8086EC84 02A02825 */  or      $a1, $s5, $zero            ## $a1 = FFFFFFF0
/* 004B8 8086EC88 24070002 */  addiu   $a3, $zero, 0x0002         ## $a3 = 00000002
/* 004BC 8086EC8C 4600218D */  trunc.w.s $f6, $f4                   
/* 004C0 8086EC90 AFB20010 */  sw      $s2, 0x0010($sp)           
/* 004C4 8086EC94 44093000 */  mfc1    $t1, $f6                   
/* 004C8 8086EC98 00000000 */  nop
/* 004CC 8086EC9C 00095400 */  sll     $t2, $t1, 16               
/* 004D0 8086ECA0 000A5C03 */  sra     $t3, $t2, 16               
/* 004D4 8086ECA4 256C0014 */  addiu   $t4, $t3, 0x0014           ## $t4 = 00000014
/* 004D8 8086ECA8 0C00CD20 */  jal     func_80033480              
/* 004DC 8086ECAC AFAC0014 */  sw      $t4, 0x0014($sp)           
/* 004E0 8086ECB0 26100006 */  addiu   $s0, $s0, 0x0006           ## $s0 = 8086F016
/* 004E4 8086ECB4 5613FFCB */  bnel    $s0, $s3, .L8086EBE4       
/* 004E8 8086ECB8 860F0004 */  lh      $t7, 0x0004($s0)           ## 8086F01A
/* 004EC 8086ECBC C6280000 */  lwc1    $f8, 0x0000($s1)           ## 00000024
/* 004F0 8086ECC0 3C0142B4 */  lui     $at, 0x42B4                ## $at = 42B40000
/* 004F4 8086ECC4 44818000 */  mtc1    $at, $f16                  ## $f16 = 90.00
/* 004F8 8086ECC8 E7A80088 */  swc1    $f8, 0x0088($sp)           
/* 004FC 8086ECCC C62A0004 */  lwc1    $f10, 0x0004($s1)          ## 00000028
/* 00500 8086ECD0 3C014170 */  lui     $at, 0x4170                ## $at = 41700000
/* 00504 8086ECD4 44813000 */  mtc1    $at, $f6                   ## $f6 = 15.00
/* 00508 8086ECD8 46105480 */  add.s   $f18, $f10, $f16           
/* 0050C 8086ECDC 240E000A */  addiu   $t6, $zero, 0x000A         ## $t6 = 0000000A
/* 00510 8086ECE0 240F0032 */  addiu   $t7, $zero, 0x0032         ## $t7 = 00000032
/* 00514 8086ECE4 24180001 */  addiu   $t8, $zero, 0x0001         ## $t8 = 00000001
/* 00518 8086ECE8 E7B2008C */  swc1    $f18, 0x008C($sp)          
/* 0051C 8086ECEC C6240008 */  lwc1    $f4, 0x0008($s1)           ## 0000002C
/* 00520 8086ECF0 AFB80018 */  sw      $t8, 0x0018($sp)           
/* 00524 8086ECF4 AFAF0014 */  sw      $t7, 0x0014($sp)           
/* 00528 8086ECF8 46062200 */  add.s   $f8, $f4, $f6              
/* 0052C 8086ECFC AFAE0010 */  sw      $t6, 0x0010($sp)           
/* 00530 8086ED00 02802025 */  or      $a0, $s4, $zero            ## $a0 = 00000000
/* 00534 8086ED04 02A02825 */  or      $a1, $s5, $zero            ## $a1 = FFFFFFF0
/* 00538 8086ED08 E7A80090 */  swc1    $f8, 0x0090($sp)           
/* 0053C 8086ED0C 3C064220 */  lui     $a2, 0x4220                ## $a2 = 42200000
/* 00540 8086ED10 0C00CD20 */  jal     func_80033480              
/* 00544 8086ED14 24070004 */  addiu   $a3, $zero, 0x0004         ## $a3 = 00000004
/* 00548 8086ED18 8FBF0064 */  lw      $ra, 0x0064($sp)           
/* 0054C 8086ED1C D7B40020 */  ldc1    $f20, 0x0020($sp)          
/* 00550 8086ED20 D7B60028 */  ldc1    $f22, 0x0028($sp)          
/* 00554 8086ED24 D7B80030 */  ldc1    $f24, 0x0030($sp)          
/* 00558 8086ED28 D7BA0038 */  ldc1    $f26, 0x0038($sp)          
/* 0055C 8086ED2C D7BC0040 */  ldc1    $f28, 0x0040($sp)          
/* 00560 8086ED30 8FB0004C */  lw      $s0, 0x004C($sp)           
/* 00564 8086ED34 8FB10050 */  lw      $s1, 0x0050($sp)           
/* 00568 8086ED38 8FB20054 */  lw      $s2, 0x0054($sp)           
/* 0056C 8086ED3C 8FB30058 */  lw      $s3, 0x0058($sp)           
/* 00570 8086ED40 8FB4005C */  lw      $s4, 0x005C($sp)           
/* 00574 8086ED44 8FB50060 */  lw      $s5, 0x0060($sp)           
/* 00578 8086ED48 03E00008 */  jr      $ra                        
/* 0057C 8086ED4C 27BD0098 */  addiu   $sp, $sp, 0x0098           ## $sp = 00000000
