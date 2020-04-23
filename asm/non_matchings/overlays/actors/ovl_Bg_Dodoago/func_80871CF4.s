glabel func_80871CF4
/* 002F4 80871CF4 27BDFFC0 */  addiu   $sp, $sp, 0xFFC0           ## $sp = FFFFFFC0
/* 002F8 80871CF8 AFB0001C */  sw      $s0, 0x001C($sp)           
/* 002FC 80871CFC 00808025 */  or      $s0, $a0, $zero            ## $s0 = 00000000
/* 00300 80871D00 AFB10020 */  sw      $s1, 0x0020($sp)           
/* 00304 80871D04 00A08825 */  or      $s1, $a1, $zero            ## $s1 = 00000000
/* 00308 80871D08 00A02025 */  or      $a0, $a1, $zero            ## $a0 = 00000000
/* 0030C 80871D0C AFBF0024 */  sw      $ra, 0x0024($sp)           
/* 00310 80871D10 26050168 */  addiu   $a1, $s0, 0x0168           ## $a1 = 00000168
/* 00314 80871D14 0C00CD90 */  jal     func_80033640              
/* 00318 80871D18 AFA50038 */  sw      $a1, 0x0038($sp)           
/* 0031C 80871D1C 10400074 */  beq     $v0, $zero, .L80871EF0     
/* 00320 80871D20 26040024 */  addiu   $a0, $s0, 0x0024           ## $a0 = 00000024
/* 00324 80871D24 24450024 */  addiu   $a1, $v0, 0x0024           ## $a1 = 00000024
/* 00328 80871D28 0C01E01A */  jal     Math_Vec3f_Yaw
              
/* 0032C 80871D2C AFA2003C */  sw      $v0, 0x003C($sp)           
/* 00330 80871D30 860E00B6 */  lh      $t6, 0x00B6($s0)           ## 000000B6
/* 00334 80871D34 3C050001 */  lui     $a1, 0x0001                ## $a1 = 00010000
/* 00338 80871D38 240F0001 */  addiu   $t7, $zero, 0x0001         ## $t7 = 00000001
/* 0033C 80871D3C 004E082A */  slt     $at, $v0, $t6              
/* 00340 80871D40 14200003 */  bne     $at, $zero, .L80871D50     
/* 00344 80871D44 02251021 */  addu    $v0, $s1, $a1              
/* 00348 80871D48 10000002 */  beq     $zero, $zero, .L80871D54   
/* 0034C 80871D4C A60F0164 */  sh      $t7, 0x0164($s0)           ## 00000164
.L80871D50:
/* 00350 80871D50 A6000164 */  sh      $zero, 0x0164($s0)         ## 00000164
.L80871D54:
/* 00354 80871D54 84581D30 */  lh      $t8, 0x1D30($v0)           ## 00001D30
/* 00358 80871D58 240400FF */  addiu   $a0, $zero, 0x00FF         ## $a0 = 000000FF
/* 0035C 80871D5C 54980006 */  bnel    $a0, $t8, .L80871D78       
/* 00360 80871D60 84481D32 */  lh      $t0, 0x1D32($v0)           ## 00001D32
/* 00364 80871D64 86190164 */  lh      $t9, 0x0164($s0)           ## 00000164
/* 00368 80871D68 24010001 */  addiu   $at, $zero, 0x0001         ## $at = 00000001
/* 0036C 80871D6C 53210008 */  beql    $t9, $at, .L80871D90       
/* 00370 80871D70 8605001C */  lh      $a1, 0x001C($s0)           ## 0000001C
/* 00374 80871D74 84481D32 */  lh      $t0, 0x1D32($v0)           ## 00001D32
.L80871D78:
/* 00378 80871D78 86030164 */  lh      $v1, 0x0164($s0)           ## 00000164
/* 0037C 80871D7C 1488002A */  bne     $a0, $t0, .L80871E28       
/* 00380 80871D80 00037040 */  sll     $t6, $v1,  1               
/* 00384 80871D84 54600029 */  bnel    $v1, $zero, .L80871E2C     
/* 00388 80871D88 022E7821 */  addu    $t7, $s1, $t6              
/* 0038C 80871D8C 8605001C */  lh      $a1, 0x001C($s0)           ## 0000001C
.L80871D90:
/* 00390 80871D90 02202025 */  or      $a0, $s1, $zero            ## $a0 = 00000000
/* 00394 80871D94 0C00B2DD */  jal     Flags_SetSwitch
              
/* 00398 80871D98 30A5003F */  andi    $a1, $a1, 0x003F           ## $a1 = 00000000
/* 0039C 80871D9C 3C078013 */  lui     $a3, %hi(D_801333E0)
/* 003A0 80871DA0 3C098013 */  lui     $t1, %hi(D_801333E8)
/* 003A4 80871DA4 24E733E0 */  addiu   $a3, %lo(D_801333E0)
/* 003A8 80871DA8 A6000164 */  sh      $zero, 0x0164($s0)         ## 00000164
/* 003AC 80871DAC 252933E8 */  addiu   $t1, %lo(D_801333E8)
/* 003B0 80871DB0 3C058013 */  lui     $a1, %hi(D_801333D4)
/* 003B4 80871DB4 24A533D4 */  addiu   $a1, %lo(D_801333D4)
/* 003B8 80871DB8 AFA90014 */  sw      $t1, 0x0014($sp)           
/* 003BC 80871DBC AFA70010 */  sw      $a3, 0x0010($sp)           
/* 003C0 80871DC0 24044802 */  addiu   $a0, $zero, 0x4802         ## $a0 = 00004802
/* 003C4 80871DC4 0C03DCE3 */  jal     Audio_PlaySoundGeneral
              
/* 003C8 80871DC8 24060004 */  addiu   $a2, $zero, 0x0004         ## $a2 = 00000004
/* 003CC 80871DCC 3C058087 */  lui     $a1, %hi(func_80871FB8)    ## $a1 = 80870000
/* 003D0 80871DD0 24A51FB8 */  addiu   $a1, $a1, %lo(func_80871FB8) ## $a1 = 80871FB8
/* 003D4 80871DD4 0C21C680 */  jal     BgDodoago_SetupAction              
/* 003D8 80871DD8 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 003DC 80871DDC 02202025 */  or      $a0, $s1, $zero            ## $a0 = 00000000
/* 003E0 80871DE0 24050D34 */  addiu   $a1, $zero, 0x0D34         ## $a1 = 00000D34
/* 003E4 80871DE4 240600A0 */  addiu   $a2, $zero, 0x00A0         ## $a2 = 000000A0
/* 003E8 80871DE8 02003825 */  or      $a3, $s0, $zero            ## $a3 = 00000000
/* 003EC 80871DEC 0C02003E */  jal     func_800800F8              
/* 003F0 80871DF0 AFA00010 */  sw      $zero, 0x0010($sp)         
.L80871DF4:
/* 003F4 80871DF4 3C028087 */  lui     $v0, %hi(D_80872598)       ## $v0 = 80870000
/* 003F8 80871DF8 24422598 */  addiu   $v0, $v0, %lo(D_80872598)  ## $v0 = 80872598
/* 003FC 80871DFC 844A0000 */  lh      $t2, 0x0000($v0)           ## 80872598
/* 00400 80871E00 3C038087 */  lui     $v1, %hi(D_80872824)       ## $v1 = 80870000
/* 00404 80871E04 24632824 */  addiu   $v1, $v1, %lo(D_80872824)  ## $v1 = 80872824
/* 00408 80871E08 15400066 */  bne     $t2, $zero, .L80871FA4     
/* 0040C 80871E0C 8FAB003C */  lw      $t3, 0x003C($sp)           
/* 00410 80871E10 AE0B0118 */  sw      $t3, 0x0118($s0)           ## 00000118
/* 00414 80871E14 240C0001 */  addiu   $t4, $zero, 0x0001         ## $t4 = 00000001
/* 00418 80871E18 240D0032 */  addiu   $t5, $zero, 0x0032         ## $t5 = 00000032
/* 0041C 80871E1C A44C0000 */  sh      $t4, 0x0000($v0)           ## 80872598
/* 00420 80871E20 10000060 */  beq     $zero, $zero, .L80871FA4   
/* 00424 80871E24 AC6D0000 */  sw      $t5, 0x0000($v1)           ## 80872824
.L80871E28:
/* 00428 80871E28 022E7821 */  addu    $t7, $s1, $t6              
.L80871E2C:
/* 0042C 80871E2C 01E5C021 */  addu    $t8, $t7, $a1              
/* 00430 80871E30 87191D30 */  lh      $t9, 0x1D30($t8)           ## 00001D30
/* 00434 80871E34 24050BF9 */  addiu   $a1, $zero, 0x0BF9         ## $a1 = 00000BF9
/* 00438 80871E38 02202025 */  or      $a0, $s1, $zero            ## $a0 = 00000000
/* 0043C 80871E3C 17200018 */  bne     $t9, $zero, .L80871EA0     
/* 00440 80871E40 24060014 */  addiu   $a2, $zero, 0x0014         ## $a2 = 00000014
/* 00444 80871E44 02202025 */  or      $a0, $s1, $zero            ## $a0 = 00000000
/* 00448 80871E48 24050BF9 */  addiu   $a1, $zero, 0x0BF9         ## $a1 = 00000BF9
/* 0044C 80871E4C 24060028 */  addiu   $a2, $zero, 0x0028         ## $a2 = 00000028
/* 00450 80871E50 02003825 */  or      $a3, $s0, $zero            ## $a3 = 00000000
/* 00454 80871E54 0C02003E */  jal     func_800800F8              
/* 00458 80871E58 AFA00010 */  sw      $zero, 0x0010($sp)         
/* 0045C 80871E5C 3C058087 */  lui     $a1, %hi(func_80872288)    ## $a1 = 80870000
/* 00460 80871E60 24A52288 */  addiu   $a1, $a1, %lo(func_80872288) ## $a1 = 80872288
/* 00464 80871E64 0C21C680 */  jal     BgDodoago_SetupAction              
/* 00468 80871E68 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 0046C 80871E6C 3C078013 */  lui     $a3, %hi(D_801333E0)
/* 00470 80871E70 3C088013 */  lui     $t0, %hi(D_801333E8)
/* 00474 80871E74 24E733E0 */  addiu   $a3, %lo(D_801333E0)
/* 00478 80871E78 250833E8 */  addiu   $t0, %lo(D_801333E8)
/* 0047C 80871E7C 3C058013 */  lui     $a1, %hi(D_801333D4)
/* 00480 80871E80 24A533D4 */  addiu   $a1, %lo(D_801333D4)
/* 00484 80871E84 AFA80014 */  sw      $t0, 0x0014($sp)           
/* 00488 80871E88 AFA70010 */  sw      $a3, 0x0010($sp)           
/* 0048C 80871E8C 24044802 */  addiu   $a0, $zero, 0x4802         ## $a0 = 00004802
/* 00490 80871E90 0C03DCE3 */  jal     Audio_PlaySoundGeneral
              
/* 00494 80871E94 24060004 */  addiu   $a2, $zero, 0x0004         ## $a2 = 00000004
/* 00498 80871E98 1000FFD6 */  beq     $zero, $zero, .L80871DF4   
/* 0049C 80871E9C 00000000 */  nop
.L80871EA0:
/* 004A0 80871EA0 02003825 */  or      $a3, $s0, $zero            ## $a3 = 00000000
/* 004A4 80871EA4 0C02003E */  jal     func_800800F8              
/* 004A8 80871EA8 AFA00010 */  sw      $zero, 0x0010($sp)         
/* 004AC 80871EAC 3C078013 */  lui     $a3, %hi(D_801333E0)
/* 004B0 80871EB0 3C098013 */  lui     $t1, %hi(D_801333E8)
/* 004B4 80871EB4 24E733E0 */  addiu   $a3, %lo(D_801333E0)
/* 004B8 80871EB8 252933E8 */  addiu   $t1, %lo(D_801333E8)
/* 004BC 80871EBC 3C058013 */  lui     $a1, %hi(D_801333D4)
/* 004C0 80871EC0 24A533D4 */  addiu   $a1, %lo(D_801333D4)
/* 004C4 80871EC4 AFA90014 */  sw      $t1, 0x0014($sp)           
/* 004C8 80871EC8 AFA70010 */  sw      $a3, 0x0010($sp)           
/* 004CC 80871ECC 24044806 */  addiu   $a0, $zero, 0x4806         ## $a0 = 00004806
/* 004D0 80871ED0 0C03DCE3 */  jal     Audio_PlaySoundGeneral
              
/* 004D4 80871ED4 24060004 */  addiu   $a2, $zero, 0x0004         ## $a2 = 00000004
/* 004D8 80871ED8 3C038087 */  lui     $v1, %hi(D_80872824)       ## $v1 = 80870000
/* 004DC 80871EDC 24632824 */  addiu   $v1, $v1, %lo(D_80872824)  ## $v1 = 80872824
/* 004E0 80871EE0 8C6A0000 */  lw      $t2, 0x0000($v1)           ## 80872824
/* 004E4 80871EE4 254B001E */  addiu   $t3, $t2, 0x001E           ## $t3 = 0000001E
/* 004E8 80871EE8 1000002E */  beq     $zero, $zero, .L80871FA4   
/* 004EC 80871EEC AC6B0000 */  sw      $t3, 0x0000($v1)           ## 80872824
.L80871EF0:
/* 004F0 80871EF0 0C00D6D3 */  jal     Flags_GetEventChkInf
              
/* 004F4 80871EF4 240400B0 */  addiu   $a0, $zero, 0x00B0         ## $a0 = 000000B0
/* 004F8 80871EF8 1040002A */  beq     $v0, $zero, .L80871FA4     
/* 004FC 80871EFC 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 00500 80871F00 0C0189B7 */  jal     ActorCollider_Cylinder_Update
              
/* 00504 80871F04 8FA50038 */  lw      $a1, 0x0038($sp)           
/* 00508 80871F08 260501B4 */  addiu   $a1, $s0, 0x01B4           ## $a1 = 000001B4
/* 0050C 80871F0C AFA50034 */  sw      $a1, 0x0034($sp)           
/* 00510 80871F10 0C0189B7 */  jal     ActorCollider_Cylinder_Update
              
/* 00514 80871F14 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 00518 80871F18 26050200 */  addiu   $a1, $s0, 0x0200           ## $a1 = 00000200
/* 0051C 80871F1C AFA50030 */  sw      $a1, 0x0030($sp)           
/* 00520 80871F20 0C0189B7 */  jal     ActorCollider_Cylinder_Update
              
/* 00524 80871F24 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 00528 80871F28 860C01B2 */  lh      $t4, 0x01B2($s0)           ## 000001B2
/* 0052C 80871F2C 860E01FE */  lh      $t6, 0x01FE($s0)           ## 000001FE
/* 00530 80871F30 861801FA */  lh      $t8, 0x01FA($s0)           ## 000001FA
/* 00534 80871F34 8608024A */  lh      $t0, 0x024A($s0)           ## 0000024A
/* 00538 80871F38 860A0246 */  lh      $t2, 0x0246($s0)           ## 00000246
/* 0053C 80871F3C 3C010001 */  lui     $at, 0x0001                ## $at = 00010000
/* 00540 80871F40 34211E60 */  ori     $at, $at, 0x1E60           ## $at = 00011E60
/* 00544 80871F44 258D00C8 */  addiu   $t5, $t4, 0x00C8           ## $t5 = 000000C8
/* 00548 80871F48 25CF00D7 */  addiu   $t7, $t6, 0x00D7           ## $t7 = 000000D7
/* 0054C 80871F4C 2719005A */  addiu   $t9, $t8, 0x005A           ## $t9 = 0000005A
/* 00550 80871F50 250900D7 */  addiu   $t1, $t0, 0x00D7           ## $t1 = 000000D7
/* 00554 80871F54 254BFFA6 */  addiu   $t3, $t2, 0xFFA6           ## $t3 = FFFFFFA6
/* 00558 80871F58 A60D01B2 */  sh      $t5, 0x01B2($s0)           ## 000001B2
/* 0055C 80871F5C A60F01FE */  sh      $t7, 0x01FE($s0)           ## 000001FE
/* 00560 80871F60 A61901FA */  sh      $t9, 0x01FA($s0)           ## 000001FA
/* 00564 80871F64 A609024A */  sh      $t1, 0x024A($s0)           ## 0000024A
/* 00568 80871F68 A60B0246 */  sh      $t3, 0x0246($s0)           ## 00000246
/* 0056C 80871F6C 02212821 */  addu    $a1, $s1, $at              
/* 00570 80871F70 AFA5002C */  sw      $a1, 0x002C($sp)           
/* 00574 80871F74 8FA60038 */  lw      $a2, 0x0038($sp)           
/* 00578 80871F78 0C01767D */  jal     Actor_CollisionCheck_SetAC
              ## CollisionCheck_setAC
/* 0057C 80871F7C 02202025 */  or      $a0, $s1, $zero            ## $a0 = 00000000
/* 00580 80871F80 8FB0002C */  lw      $s0, 0x002C($sp)           
/* 00584 80871F84 02202025 */  or      $a0, $s1, $zero            ## $a0 = 00000000
/* 00588 80871F88 8FA60034 */  lw      $a2, 0x0034($sp)           
/* 0058C 80871F8C 0C017713 */  jal     Actor_CollisionCheck_SetOT
              ## CollisionCheck_setOT
/* 00590 80871F90 02002825 */  or      $a1, $s0, $zero            ## $a1 = 00000000
/* 00594 80871F94 02202025 */  or      $a0, $s1, $zero            ## $a0 = 00000000
/* 00598 80871F98 02002825 */  or      $a1, $s0, $zero            ## $a1 = 00000000
/* 0059C 80871F9C 0C017713 */  jal     Actor_CollisionCheck_SetOT
              ## CollisionCheck_setOT
/* 005A0 80871FA0 8FA60030 */  lw      $a2, 0x0030($sp)           
.L80871FA4:
/* 005A4 80871FA4 8FBF0024 */  lw      $ra, 0x0024($sp)           
/* 005A8 80871FA8 8FB0001C */  lw      $s0, 0x001C($sp)           
/* 005AC 80871FAC 8FB10020 */  lw      $s1, 0x0020($sp)           
/* 005B0 80871FB0 03E00008 */  jr      $ra                        
/* 005B4 80871FB4 27BD0040 */  addiu   $sp, $sp, 0x0040           ## $sp = 00000000
