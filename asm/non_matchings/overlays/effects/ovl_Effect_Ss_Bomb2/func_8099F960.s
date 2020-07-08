glabel func_8099F960
/* 00310 8099F960 27BDFE08 */  addiu   $sp, $sp, 0xFE08           ## $sp = FFFFFE08
/* 00314 8099F964 AFB40040 */  sw      $s4, 0x0040($sp)           
/* 00318 8099F968 AFBF004C */  sw      $ra, 0x004C($sp)           
/* 0031C 8099F96C AFB60048 */  sw      $s6, 0x0048($sp)           
/* 00320 8099F970 AFB50044 */  sw      $s5, 0x0044($sp)           
/* 00324 8099F974 AFB3003C */  sw      $s3, 0x003C($sp)           
/* 00328 8099F978 AFB20038 */  sw      $s2, 0x0038($sp)           
/* 0032C 8099F97C AFB10034 */  sw      $s1, 0x0034($sp)           
/* 00330 8099F980 AFB00030 */  sw      $s0, 0x0030($sp)           
/* 00334 8099F984 F7B80028 */  sdc1    $f24, 0x0028($sp)          
/* 00338 8099F988 F7B60020 */  sdc1    $f22, 0x0020($sp)          
/* 0033C 8099F98C F7B40018 */  sdc1    $f20, 0x0018($sp)          
/* 00340 8099F990 AFA501FC */  sw      $a1, 0x01FC($sp)           
/* 00344 8099F994 8C920000 */  lw      $s2, 0x0000($a0)           ## 00000000
/* 00348 8099F998 00C0A025 */  or      $s4, $a2, $zero            ## $s4 = 00000000
/* 0034C 8099F99C 0080B025 */  or      $s6, $a0, $zero            ## $s6 = 00000000
/* 00350 8099F9A0 3C01809A */  lui     $at, %hi(D_8099FF88)       ## $at = 809A0000
/* 00354 8099F9A4 3C06809A */  lui     $a2, %hi(D_8099FF48)       ## $a2 = 809A0000
/* 00358 8099F9A8 C436FF88 */  lwc1    $f22, %lo(D_8099FF88)($at) 
/* 0035C 8099F9AC 24C6FF48 */  addiu   $a2, $a2, %lo(D_8099FF48)  ## $a2 = 8099FF48
/* 00360 8099F9B0 27A4007C */  addiu   $a0, $sp, 0x007C           ## $a0 = FFFFFE84
/* 00364 8099F9B4 24070182 */  addiu   $a3, $zero, 0x0182         ## $a3 = 00000182
/* 00368 8099F9B8 0C031AB1 */  jal     Graph_OpenDisps              
/* 0036C 8099F9BC 02402825 */  or      $a1, $s2, $zero            ## $a1 = 00000000
/* 00370 8099F9C0 868F0040 */  lh      $t7, 0x0040($s4)           ## 00000040
/* 00374 8099F9C4 868E0054 */  lh      $t6, 0x0054($s4)           ## 00000054
/* 00378 8099F9C8 3C01809A */  lui     $at, %hi(D_8099FF8C)       ## $at = 809A0000
/* 0037C 8099F9CC 448F9000 */  mtc1    $t7, $f18                  ## $f18 = 0.00
/* 00380 8099F9D0 C430FF8C */  lwc1    $f16, %lo(D_8099FF8C)($at) 
/* 00384 8099F9D4 448E7000 */  mtc1    $t6, $f14                  ## $f14 = 0.00
/* 00388 8099F9D8 468094A0 */  cvt.s.w $f18, $f18                 
/* 0038C 8099F9DC 27B001B4 */  addiu   $s0, $sp, 0x01B4           ## $s0 = FFFFFFBC
/* 00390 8099F9E0 02002025 */  or      $a0, $s0, $zero            ## $a0 = FFFFFFBC
/* 00394 8099F9E4 8E850000 */  lw      $a1, 0x0000($s4)           ## 00000000
/* 00398 8099F9E8 8E860004 */  lw      $a2, 0x0004($s4)           ## 00000004
/* 0039C 8099F9EC 46807620 */  cvt.s.w $f24, $f14                 
/* 003A0 8099F9F0 46109502 */  mul.s   $f20, $f18, $f16           
/* 003A4 8099F9F4 0C029E89 */  jal     SkinMatrix_Translate              
/* 003A8 8099F9F8 8E870008 */  lw      $a3, 0x0008($s4)           ## 00000008
/* 003AC 8099F9FC 27B10174 */  addiu   $s1, $sp, 0x0174           ## $s1 = FFFFFF7C
/* 003B0 8099FA00 4405A000 */  mfc1    $a1, $f20                  
/* 003B4 8099FA04 4406A000 */  mfc1    $a2, $f20                  
/* 003B8 8099FA08 02202025 */  or      $a0, $s1, $zero            ## $a0 = FFFFFF7C
/* 003BC 8099FA0C 0C029DA9 */  jal     SkinMatrix_Scale              
/* 003C0 8099FA10 3C073F80 */  lui     $a3, 0x3F80                ## $a3 = 3F800000
/* 003C4 8099FA14 3C010001 */  lui     $at, 0x0001                ## $at = 00010000
/* 003C8 8099FA18 27B300F4 */  addiu   $s3, $sp, 0x00F4           ## $s3 = FFFFFEFC
/* 003CC 8099FA1C 34211DA0 */  ori     $at, $at, 0x1DA0           ## $at = 00011DA0
/* 003D0 8099FA20 02C12821 */  addu    $a1, $s6, $at              
/* 003D4 8099FA24 02603025 */  or      $a2, $s3, $zero            ## $a2 = FFFFFEFC
/* 003D8 8099FA28 0C029BE8 */  jal     SkinMatrix_MtxFMtxFMult              
/* 003DC 8099FA2C 02002025 */  or      $a0, $s0, $zero            ## $a0 = FFFFFFBC
/* 003E0 8099FA30 27B00134 */  addiu   $s0, $sp, 0x0134           ## $s0 = FFFFFF3C
/* 003E4 8099FA34 02003025 */  or      $a2, $s0, $zero            ## $a2 = FFFFFF3C
/* 003E8 8099FA38 02602025 */  or      $a0, $s3, $zero            ## $a0 = FFFFFEFC
/* 003EC 8099FA3C 0C029BE8 */  jal     SkinMatrix_MtxFMtxFMult              
/* 003F0 8099FA40 02202825 */  or      $a1, $s1, $zero            ## $a1 = FFFFFF7C
/* 003F4 8099FA44 02402025 */  or      $a0, $s2, $zero            ## $a0 = 00000000
/* 003F8 8099FA48 0C029F9C */  jal     func_800A7E70              
/* 003FC 8099FA4C 02002825 */  or      $a1, $s0, $zero            ## $a1 = FFFFFF3C
/* 00400 8099FA50 1040008B */  beq     $v0, $zero, .L8099FC80     
/* 00404 8099FA54 3C19DA38 */  lui     $t9, 0xDA38                ## $t9 = DA380000
/* 00408 8099FA58 8E4302D0 */  lw      $v1, 0x02D0($s2)           ## 000002D0
/* 0040C 8099FA5C 37390003 */  ori     $t9, $t9, 0x0003           ## $t9 = DA380003
/* 00410 8099FA60 02402025 */  or      $a0, $s2, $zero            ## $a0 = 00000000
/* 00414 8099FA64 24780008 */  addiu   $t8, $v1, 0x0008           ## $t8 = 00000008
/* 00418 8099FA68 AE5802D0 */  sw      $t8, 0x02D0($s2)           ## 000002D0
/* 0041C 8099FA6C 02002825 */  or      $a1, $s0, $zero            ## $a1 = FFFFFF3C
/* 00420 8099FA70 AC620004 */  sw      $v0, 0x0004($v1)           ## 00000004
/* 00424 8099FA74 0C029F9C */  jal     func_800A7E70              
/* 00428 8099FA78 AC790000 */  sw      $t9, 0x0000($v1)           ## 00000000
/* 0042C 8099FA7C 10400080 */  beq     $v0, $zero, .L8099FC80     
/* 00430 8099FA80 00408025 */  or      $s0, $v0, $zero            ## $s0 = 00000000
/* 00434 8099FA84 0C0252F1 */  jal     func_80094BC4              
/* 00438 8099FA88 02402025 */  or      $a0, $s2, $zero            ## $a0 = 00000000
/* 0043C 8099FA8C 8E4302D0 */  lw      $v1, 0x02D0($s2)           ## 000002D0
/* 00440 8099FA90 3C09FA00 */  lui     $t1, 0xFA00                ## $t1 = FA000000
/* 00444 8099FA94 3C04809A */  lui     $a0, %hi(D_8099FF00)       ## $a0 = 809A0000
/* 00448 8099FA98 24680008 */  addiu   $t0, $v1, 0x0008           ## $t0 = 00000008
/* 0044C 8099FA9C AE4802D0 */  sw      $t0, 0x02D0($s2)           ## 000002D0
/* 00450 8099FAA0 AC690000 */  sw      $t1, 0x0000($v1)           ## 00000000
/* 00454 8099FAA4 868A004A */  lh      $t2, 0x004A($s4)           ## 0000004A
/* 00458 8099FAA8 86980046 */  lh      $t8, 0x0046($s4)           ## 00000046
/* 0045C 8099FAAC 868D0044 */  lh      $t5, 0x0044($s4)           ## 00000044
/* 00460 8099FAB0 314B00FF */  andi    $t3, $t2, 0x00FF           ## $t3 = 00000000
/* 00464 8099FAB4 868A0048 */  lh      $t2, 0x0048($s4)           ## 00000048
/* 00468 8099FAB8 331900FF */  andi    $t9, $t8, 0x00FF           ## $t9 = 00000000
/* 0046C 8099FABC 000D7600 */  sll     $t6, $t5, 24               
/* 00470 8099FAC0 016E7825 */  or      $t7, $t3, $t6              ## $t7 = 00000000
/* 00474 8099FAC4 00194400 */  sll     $t0, $t9, 16               
/* 00478 8099FAC8 314C00FF */  andi    $t4, $t2, 0x00FF           ## $t4 = 00000000
/* 0047C 8099FACC 000C6A00 */  sll     $t5, $t4,  8               
/* 00480 8099FAD0 01E84825 */  or      $t1, $t7, $t0              ## $t1 = 00000008
/* 00484 8099FAD4 012D5825 */  or      $t3, $t1, $t5              ## $t3 = 00000008
/* 00488 8099FAD8 AC6B0004 */  sw      $t3, 0x0004($v1)           ## 00000004
/* 0048C 8099FADC 8E4302D0 */  lw      $v1, 0x02D0($s2)           ## 000002D0
/* 00490 8099FAE0 3C18FB00 */  lui     $t8, 0xFB00                ## $t8 = FB000000
/* 00494 8099FAE4 3C0ADB06 */  lui     $t2, 0xDB06                ## $t2 = DB060000
/* 00498 8099FAE8 246E0008 */  addiu   $t6, $v1, 0x0008           ## $t6 = 00000008
/* 0049C 8099FAEC AE4E02D0 */  sw      $t6, 0x02D0($s2)           ## 000002D0
/* 004A0 8099FAF0 AC780000 */  sw      $t8, 0x0000($v1)           ## 00000000
/* 004A4 8099FAF4 86990050 */  lh      $t9, 0x0050($s4)           ## 00000050
/* 004A8 8099FAF8 868B004E */  lh      $t3, 0x004E($s4)           ## 0000004E
/* 004AC 8099FAFC 868C004C */  lh      $t4, 0x004C($s4)           ## 0000004C
/* 004B0 8099FB00 332F00FF */  andi    $t7, $t9, 0x00FF           ## $t7 = 00000000
/* 004B4 8099FB04 000F4200 */  sll     $t0, $t7,  8               
/* 004B8 8099FB08 316E00FF */  andi    $t6, $t3, 0x00FF           ## $t6 = 00000008
/* 004BC 8099FB0C 000C4E00 */  sll     $t1, $t4, 24               
/* 004C0 8099FB10 01096825 */  or      $t5, $t0, $t1              ## $t5 = 00000008
/* 004C4 8099FB14 000EC400 */  sll     $t8, $t6, 16               
/* 004C8 8099FB18 01B8C825 */  or      $t9, $t5, $t8              ## $t9 = FB000008
/* 004CC 8099FB1C AC790004 */  sw      $t9, 0x0004($v1)           ## 00000004
/* 004D0 8099FB20 8E4302D0 */  lw      $v1, 0x02D0($s2)           ## 000002D0
/* 004D4 8099FB24 354A0020 */  ori     $t2, $t2, 0x0020           ## $t2 = DB060020
/* 004D8 8099FB28 3C188016 */  lui     $t8, %hi(gSegments)
/* 004DC 8099FB2C 246F0008 */  addiu   $t7, $v1, 0x0008           ## $t7 = 00000008
/* 004E0 8099FB30 AE4F02D0 */  sw      $t7, 0x02D0($s2)           ## 000002D0
/* 004E4 8099FB34 AC6A0000 */  sw      $t2, 0x0000($v1)           ## 00000000
/* 004E8 8099FB38 868C0042 */  lh      $t4, 0x0042($s4)           ## 00000042
/* 004EC 8099FB3C 3C0100FF */  lui     $at, 0x00FF                ## $at = 00FF0000
/* 004F0 8099FB40 3421FFFF */  ori     $at, $at, 0xFFFF           ## $at = 00FFFFFF
/* 004F4 8099FB44 000C4080 */  sll     $t0, $t4,  2               
/* 004F8 8099FB48 00882021 */  addu    $a0, $a0, $t0              
/* 004FC 8099FB4C 8C84FF00 */  lw      $a0, %lo(D_8099FF00)($a0)  
/* 00500 8099FB50 3C0C0401 */  lui     $t4, 0x0401                ## $t4 = 04010000
/* 00504 8099FB54 258CBFE8 */  addiu   $t4, $t4, 0xBFE8           ## $t4 = 0400BFE8
/* 00508 8099FB58 00045900 */  sll     $t3, $a0,  4               
/* 0050C 8099FB5C 000B7702 */  srl     $t6, $t3, 28               
/* 00510 8099FB60 000E6880 */  sll     $t5, $t6,  2               
/* 00514 8099FB64 030DC021 */  addu    $t8, $t8, $t5              
/* 00518 8099FB68 8F186FA8 */  lw      $t8, %lo(gSegments)($t8)
/* 0051C 8099FB6C 00814824 */  and     $t1, $a0, $at              
/* 00520 8099FB70 3C018000 */  lui     $at, 0x8000                ## $at = 80000000
/* 00524 8099FB74 0138C821 */  addu    $t9, $t1, $t8              
/* 00528 8099FB78 03217821 */  addu    $t7, $t9, $at              
/* 0052C 8099FB7C AC6F0004 */  sw      $t7, 0x0004($v1)           ## 00000004
/* 00530 8099FB80 8E4302D0 */  lw      $v1, 0x02D0($s2)           ## 000002D0
/* 00534 8099FB84 3C15DE00 */  lui     $s5, 0xDE00                ## $s5 = DE000000
/* 00538 8099FB88 3C130401 */  lui     $s3, 0x0401                ## $s3 = 04010000
/* 0053C 8099FB8C 246A0008 */  addiu   $t2, $v1, 0x0008           ## $t2 = 00000008
/* 00540 8099FB90 AE4A02D0 */  sw      $t2, 0x02D0($s2)           ## 000002D0
/* 00544 8099FB94 AC6C0004 */  sw      $t4, 0x0004($v1)           ## 00000004
/* 00548 8099FB98 AC750000 */  sw      $s5, 0x0000($v1)           ## 00000000
/* 0054C 8099FB9C 8E4302D0 */  lw      $v1, 0x02D0($s2)           ## 000002D0
/* 00550 8099FBA0 2673C040 */  addiu   $s3, $s3, 0xC040           ## $s3 = 0400C040
/* 00554 8099FBA4 27B100B4 */  addiu   $s1, $sp, 0x00B4           ## $s1 = FFFFFEBC
/* 00558 8099FBA8 24680008 */  addiu   $t0, $v1, 0x0008           ## $t0 = 00000008
/* 0055C 8099FBAC AE4802D0 */  sw      $t0, 0x02D0($s2)           ## 000002D0
/* 00560 8099FBB0 02202825 */  or      $a1, $s1, $zero            ## $a1 = FFFFFEBC
/* 00564 8099FBB4 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 00568 8099FBB8 AC730004 */  sw      $s3, 0x0004($v1)           ## 00000004
/* 0056C 8099FBBC 0C03472B */  jal     Matrix_MtxToMtxF              
/* 00570 8099FBC0 AC750000 */  sw      $s5, 0x0000($v1)           ## 00000000
/* 00574 8099FBC4 0C03423F */  jal     Matrix_Put              
/* 00578 8099FBC8 02202025 */  or      $a0, $s1, $zero            ## $a0 = FFFFFEBC
/* 0057C 8099FBCC 4480A000 */  mtc1    $zero, $f20                ## $f20 = 0.00
/* 00580 8099FBD0 24110001 */  addiu   $s1, $zero, 0x0001         ## $s1 = 00000001
.L8099FBD4:
/* 00584 8099FBD4 4406C000 */  mfc1    $a2, $f24                  
/* 00588 8099FBD8 4600A306 */  mov.s   $f12, $f20                 
/* 0058C 8099FBDC 4600A386 */  mov.s   $f14, $f20                 
/* 00590 8099FBE0 0C034261 */  jal     Matrix_Translate              
/* 00594 8099FBE4 24070001 */  addiu   $a3, $zero, 0x0001         ## $a3 = 00000001
/* 00598 8099FBE8 868B005C */  lh      $t3, 0x005C($s4)           ## 0000005C
/* 0059C 8099FBEC 3C01809A */  lui     $at, %hi(D_8099FF90)       ## $at = 809A0000
/* 005A0 8099FBF0 C424FF90 */  lwc1    $f4, %lo(D_8099FF90)($at)  
/* 005A4 8099FBF4 448B8000 */  mtc1    $t3, $f16                  ## $f16 = 0.00
/* 005A8 8099FBF8 3C014334 */  lui     $at, 0x4334                ## $at = 43340000
/* 005AC 8099FBFC 44814000 */  mtc1    $at, $f8                   ## $f8 = 180.00
/* 005B0 8099FC00 468084A0 */  cvt.s.w $f18, $f16                 
/* 005B4 8099FC04 24050001 */  addiu   $a1, $zero, 0x0001         ## $a1 = 00000001
/* 005B8 8099FC08 46049182 */  mul.s   $f6, $f18, $f4             
/* 005BC 8099FC0C 0C0343B5 */  jal     Matrix_RotateZ              
/* 005C0 8099FC10 46083300 */  add.s   $f12, $f6, $f8             
/* 005C4 8099FC14 4406B000 */  mfc1    $a2, $f22                  
/* 005C8 8099FC18 4600B306 */  mov.s   $f12, $f22                 
/* 005CC 8099FC1C 4600B386 */  mov.s   $f14, $f22                 
/* 005D0 8099FC20 0C0342A3 */  jal     Matrix_Scale              
/* 005D4 8099FC24 24070001 */  addiu   $a3, $zero, 0x0001         ## $a3 = 00000001
/* 005D8 8099FC28 8E5002D0 */  lw      $s0, 0x02D0($s2)           ## 000002D0
/* 005DC 8099FC2C 3C0DDA38 */  lui     $t5, 0xDA38                ## $t5 = DA380000
/* 005E0 8099FC30 35AD0003 */  ori     $t5, $t5, 0x0003           ## $t5 = DA380003
/* 005E4 8099FC34 260E0008 */  addiu   $t6, $s0, 0x0008           ## $t6 = 00000008
/* 005E8 8099FC38 AE4E02D0 */  sw      $t6, 0x02D0($s2)           ## 000002D0
/* 005EC 8099FC3C 3C05809A */  lui     $a1, %hi(D_8099FF5C)       ## $a1 = 809A0000
/* 005F0 8099FC40 AE0D0000 */  sw      $t5, 0x0000($s0)           ## 00000000
/* 005F4 8099FC44 8EC40000 */  lw      $a0, 0x0000($s6)           ## 00000000
/* 005F8 8099FC48 24A5FF5C */  addiu   $a1, $a1, %lo(D_8099FF5C)  ## $a1 = 8099FF5C
/* 005FC 8099FC4C 0C0346A2 */  jal     Matrix_NewMtx              
/* 00600 8099FC50 240601C0 */  addiu   $a2, $zero, 0x01C0         ## $a2 = 000001C0
/* 00604 8099FC54 AE020004 */  sw      $v0, 0x0004($s0)           ## 00000004
/* 00608 8099FC58 8E4302D0 */  lw      $v1, 0x02D0($s2)           ## 000002D0
/* 0060C 8099FC5C 3C01809A */  lui     $at, %hi(D_8099FF94)       ## $at = 809A0000
/* 00610 8099FC60 2631FFFF */  addiu   $s1, $s1, 0xFFFF           ## $s1 = 00000000
/* 00614 8099FC64 24690008 */  addiu   $t1, $v1, 0x0008           ## $t1 = 00000008
/* 00618 8099FC68 AE4902D0 */  sw      $t1, 0x02D0($s2)           ## 000002D0
/* 0061C 8099FC6C AC730004 */  sw      $s3, 0x0004($v1)           ## 00000004
/* 00620 8099FC70 AC750000 */  sw      $s5, 0x0000($v1)           ## 00000000
/* 00624 8099FC74 C42AFF94 */  lwc1    $f10, %lo(D_8099FF94)($at) 
/* 00628 8099FC78 0621FFD6 */  bgez    $s1, .L8099FBD4            
/* 0062C 8099FC7C 460AB581 */  sub.s   $f22, $f22, $f10           
.L8099FC80:
/* 00630 8099FC80 3C06809A */  lui     $a2, %hi(D_8099FF70)       ## $a2 = 809A0000
/* 00634 8099FC84 24C6FF70 */  addiu   $a2, $a2, %lo(D_8099FF70)  ## $a2 = 8099FF70
/* 00638 8099FC88 27A4007C */  addiu   $a0, $sp, 0x007C           ## $a0 = FFFFFE84
/* 0063C 8099FC8C 02402825 */  or      $a1, $s2, $zero            ## $a1 = 00000000
/* 00640 8099FC90 0C031AD5 */  jal     Graph_CloseDisps              
/* 00644 8099FC94 240701C8 */  addiu   $a3, $zero, 0x01C8         ## $a3 = 000001C8
/* 00648 8099FC98 8FBF004C */  lw      $ra, 0x004C($sp)           
/* 0064C 8099FC9C D7B40018 */  ldc1    $f20, 0x0018($sp)          
/* 00650 8099FCA0 D7B60020 */  ldc1    $f22, 0x0020($sp)          
/* 00654 8099FCA4 D7B80028 */  ldc1    $f24, 0x0028($sp)          
/* 00658 8099FCA8 8FB00030 */  lw      $s0, 0x0030($sp)           
/* 0065C 8099FCAC 8FB10034 */  lw      $s1, 0x0034($sp)           
/* 00660 8099FCB0 8FB20038 */  lw      $s2, 0x0038($sp)           
/* 00664 8099FCB4 8FB3003C */  lw      $s3, 0x003C($sp)           
/* 00668 8099FCB8 8FB40040 */  lw      $s4, 0x0040($sp)           
/* 0066C 8099FCBC 8FB50044 */  lw      $s5, 0x0044($sp)           
/* 00670 8099FCC0 8FB60048 */  lw      $s6, 0x0048($sp)           
/* 00674 8099FCC4 03E00008 */  jr      $ra                        
/* 00678 8099FCC8 27BD01F8 */  addiu   $sp, $sp, 0x01F8           ## $sp = 00000000
