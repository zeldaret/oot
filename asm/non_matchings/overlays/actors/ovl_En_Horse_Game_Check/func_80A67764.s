glabel func_80A67764
/* 00214 80A67764 27BDFFC0 */  addiu   $sp, $sp, 0xFFC0           ## $sp = FFFFFFC0
/* 00218 80A67768 AFBF003C */  sw      $ra, 0x003C($sp)           
/* 0021C 80A6776C AFB40038 */  sw      $s4, 0x0038($sp)           
/* 00220 80A67770 AFB30034 */  sw      $s3, 0x0034($sp)           
/* 00224 80A67774 AFB20030 */  sw      $s2, 0x0030($sp)           
/* 00228 80A67778 AFB1002C */  sw      $s1, 0x002C($sp)           
/* 0022C 80A6777C AFB00028 */  sw      $s0, 0x0028($sp)           
/* 00230 80A67780 F7B40020 */  sdc1    $f20, 0x0020($sp)          
/* 00234 80A67784 AFA50044 */  sw      $a1, 0x0044($sp)           
/* 00238 80A67788 8C830170 */  lw      $v1, 0x0170($a0)           ## 00000170
/* 0023C 80A6778C 00809025 */  or      $s2, $a0, $zero            ## $s2 = 00000000
/* 00240 80A67790 8CB41C44 */  lw      $s4, 0x1C44($a1)           ## 00001C44
/* 00244 80A67794 28610033 */  slti    $at, $v1, 0x0033           
/* 00248 80A67798 5420000B */  bnel    $at, $zero, .L80A677C8     
/* 0024C 80A6779C 28610051 */  slti    $at, $v1, 0x0051           
/* 00250 80A677A0 8C820150 */  lw      $v0, 0x0150($a0)           ## 00000150
/* 00254 80A677A4 304F0002 */  andi    $t7, $v0, 0x0002           ## $t7 = 00000000
/* 00258 80A677A8 15E00006 */  bne     $t7, $zero, .L80A677C4     
/* 0025C 80A677AC 34580002 */  ori     $t8, $v0, 0x0002           ## $t8 = 00000002
/* 00260 80A677B0 AC980150 */  sw      $t8, 0x0150($a0)           ## 00000150
/* 00264 80A677B4 0C0222CD */  jal     func_80088B34              
/* 00268 80A677B8 00002025 */  or      $a0, $zero, $zero          ## $a0 = 00000000
/* 0026C 80A677BC 10000029 */  beq     $zero, $zero, .L80A67864   
/* 00270 80A677C0 8E430170 */  lw      $v1, 0x0170($s2)           ## 00000170
.L80A677C4:
/* 00274 80A677C4 28610051 */  slti    $at, $v1, 0x0051           
.L80A677C8:
/* 00278 80A677C8 5420000F */  bnel    $at, $zero, .L80A67808     
/* 0027C 80A677CC 28610052 */  slti    $at, $v1, 0x0052           
/* 00280 80A677D0 8E990440 */  lw      $t9, 0x0440($s4)           ## 00000440
/* 00284 80A677D4 5320000C */  beql    $t9, $zero, .L80A67808     
/* 00288 80A677D8 28610052 */  slti    $at, $v1, 0x0052           
/* 0028C 80A677DC 8E420150 */  lw      $v0, 0x0150($s2)           ## 00000150
/* 00290 80A677E0 30480001 */  andi    $t0, $v0, 0x0001           ## $t0 = 00000000
/* 00294 80A677E4 15000007 */  bne     $t0, $zero, .L80A67804     
/* 00298 80A677E8 34490001 */  ori     $t1, $v0, 0x0001           ## $t1 = 00000001
/* 0029C 80A677EC AE490150 */  sw      $t1, 0x0150($s2)           ## 00000150
/* 002A0 80A677F0 8E840440 */  lw      $a0, 0x0440($s4)           ## 00000440
/* 002A4 80A677F4 24130001 */  addiu   $s3, $zero, 0x0001         ## $s3 = 00000001
/* 002A8 80A677F8 AC930388 */  sw      $s3, 0x0388($a0)           ## 00000388
/* 002AC 80A677FC 10000019 */  beq     $zero, $zero, .L80A67864   
/* 002B0 80A67800 8E430170 */  lw      $v1, 0x0170($s2)           ## 00000170
.L80A67804:
/* 002B4 80A67804 28610052 */  slti    $at, $v1, 0x0052           
.L80A67808:
/* 002B8 80A67808 54200017 */  bnel    $at, $zero, .L80A67868     
/* 002BC 80A6780C 3C0143C8 */  lui     $at, 0x43C8                ## $at = 43C80000
/* 002C0 80A67810 8E4A0150 */  lw      $t2, 0x0150($s2)           ## 00000150
/* 002C4 80A67814 24130001 */  addiu   $s3, $zero, 0x0001         ## $s3 = 00000001
/* 002C8 80A67818 24044835 */  addiu   $a0, $zero, 0x4835         ## $a0 = 00004835
/* 002CC 80A6781C 314B0004 */  andi    $t3, $t2, 0x0004           ## $t3 = 00000000
/* 002D0 80A67820 15600010 */  bne     $t3, $zero, .L80A67864     
/* 002D4 80A67824 3C058013 */  lui     $a1, 0x8013                ## $a1 = 80130000
/* 002D8 80A67828 8E42016C */  lw      $v0, 0x016C($s2)           ## 0000016C
/* 002DC 80A6782C 3C0E8013 */  lui     $t6, 0x8013                ## $t6 = 80130000
/* 002E0 80A67830 3C0F8013 */  lui     $t7, 0x8013                ## $t7 = 80130000
/* 002E4 80A67834 AC530388 */  sw      $s3, 0x0388($v0)           ## 00000388
/* 002E8 80A67838 8E4C0150 */  lw      $t4, 0x0150($s2)           ## 00000150
/* 002EC 80A6783C 25EF33E8 */  addiu   $t7, $t7, 0x33E8           ## $t7 = 801333E8
/* 002F0 80A67840 25C733E0 */  addiu   $a3, $t6, 0x33E0           ## $a3 = 801333E0
/* 002F4 80A67844 358D0004 */  ori     $t5, $t4, 0x0004           ## $t5 = 00000004
/* 002F8 80A67848 AE4D0150 */  sw      $t5, 0x0150($s2)           ## 00000150
/* 002FC 80A6784C AFAF0014 */  sw      $t7, 0x0014($sp)           
/* 00300 80A67850 AFA70010 */  sw      $a3, 0x0010($sp)           
/* 00304 80A67854 24A533D4 */  addiu   $a1, $a1, 0x33D4           ## $a1 = 801333D4
/* 00308 80A67858 0C03DCE3 */  jal     Audio_PlaySoundGeneral
              
/* 0030C 80A6785C 24060004 */  addiu   $a2, $zero, 0x0004         ## $a2 = 00000004
/* 00310 80A67860 8E430170 */  lw      $v1, 0x0170($s2)           ## 00000170
.L80A67864:
/* 00314 80A67864 3C0143C8 */  lui     $at, 0x43C8                ## $at = 43C80000
.L80A67868:
/* 00318 80A67868 24780001 */  addiu   $t8, $v1, 0x0001           ## $t8 = 00000001
/* 0031C 80A6786C 3C1180A7 */  lui     $s1, %hi(D_80A68440)       ## $s1 = 80A70000
/* 00320 80A67870 4481A000 */  mtc1    $at, $f20                  ## $f20 = 400.00
/* 00324 80A67874 24130001 */  addiu   $s3, $zero, 0x0001         ## $s3 = 00000001
/* 00328 80A67878 AE580170 */  sw      $t8, 0x0170($s2)           ## 00000170
/* 0032C 80A6787C 26318440 */  addiu   $s1, $s1, %lo(D_80A68440)  ## $s1 = 80A68440
/* 00330 80A67880 00008025 */  or      $s0, $zero, $zero          ## $s0 = 00000000
.L80A67884:
/* 00334 80A67884 8E820440 */  lw      $v0, 0x0440($s4)           ## 00000440
/* 00338 80A67888 02202025 */  or      $a0, $s1, $zero            ## $a0 = 80A68440
/* 0033C 80A6788C 50400014 */  beql    $v0, $zero, .L80A678E0     
/* 00340 80A67890 8E45016C */  lw      $a1, 0x016C($s2)           ## 0000016C
/* 00344 80A67894 0C032D9E */  jal     Math3D_Vec3f_DistXYZ              
/* 00348 80A67898 24450024 */  addiu   $a1, $v0, 0x0024           ## $a1 = 00000024
/* 0034C 80A6789C 4614003C */  c.lt.s  $f0, $f20                  
/* 00350 80A678A0 00000000 */  nop
/* 00354 80A678A4 4502000E */  bc1fl   .L80A678E0                 
/* 00358 80A678A8 8E45016C */  lw      $a1, 0x016C($s2)           ## 0000016C
/* 0035C 80A678AC 1A000007 */  blez    $s0, .L80A678CC            
/* 00360 80A678B0 0010C880 */  sll     $t9, $s0,  2               
/* 00364 80A678B4 02591021 */  addu    $v0, $s2, $t9              
/* 00368 80A678B8 8C480150 */  lw      $t0, 0x0150($v0)           ## 00000150
/* 0036C 80A678BC 16680003 */  bne     $s3, $t0, .L80A678CC       
/* 00370 80A678C0 00000000 */  nop
/* 00374 80A678C4 10000005 */  beq     $zero, $zero, .L80A678DC   
/* 00378 80A678C8 AC530154 */  sw      $s3, 0x0154($v0)           ## 00000154
.L80A678CC:
/* 0037C 80A678CC 16000003 */  bne     $s0, $zero, .L80A678DC     
/* 00380 80A678D0 00104880 */  sll     $t1, $s0,  2               
/* 00384 80A678D4 02495021 */  addu    $t2, $s2, $t1              
/* 00388 80A678D8 AD530154 */  sw      $s3, 0x0154($t2)           ## 00000154
.L80A678DC:
/* 0038C 80A678DC 8E45016C */  lw      $a1, 0x016C($s2)           ## 0000016C
.L80A678E0:
/* 00390 80A678E0 02202025 */  or      $a0, $s1, $zero            ## $a0 = 80A68440
/* 00394 80A678E4 0C032D9E */  jal     Math3D_Vec3f_DistXYZ              
/* 00398 80A678E8 24A50024 */  addiu   $a1, $a1, 0x0024           ## $a1 = 00000024
/* 0039C 80A678EC 4614003C */  c.lt.s  $f0, $f20                  
/* 003A0 80A678F0 00000000 */  nop
/* 003A4 80A678F4 4502000E */  bc1fl   .L80A67930                 
/* 003A8 80A678F8 26100001 */  addiu   $s0, $s0, 0x0001           ## $s0 = 00000001
/* 003AC 80A678FC 1A000007 */  blez    $s0, .L80A6791C            
/* 003B0 80A67900 00105880 */  sll     $t3, $s0,  2               
/* 003B4 80A67904 024B1021 */  addu    $v0, $s2, $t3              
/* 003B8 80A67908 8C4C015C */  lw      $t4, 0x015C($v0)           ## 0000015C
/* 003BC 80A6790C 166C0003 */  bne     $s3, $t4, .L80A6791C       
/* 003C0 80A67910 00000000 */  nop
/* 003C4 80A67914 10000005 */  beq     $zero, $zero, .L80A6792C   
/* 003C8 80A67918 AC530160 */  sw      $s3, 0x0160($v0)           ## 00000160
.L80A6791C:
/* 003CC 80A6791C 16000003 */  bne     $s0, $zero, .L80A6792C     
/* 003D0 80A67920 00106880 */  sll     $t5, $s0,  2               
/* 003D4 80A67924 024D7021 */  addu    $t6, $s2, $t5              
/* 003D8 80A67928 ADD30160 */  sw      $s3, 0x0160($t6)           ## 00000160
.L80A6792C:
/* 003DC 80A6792C 26100001 */  addiu   $s0, $s0, 0x0001           ## $s0 = 00000002
.L80A67930:
/* 003E0 80A67930 2A010003 */  slti    $at, $s0, 0x0003           
/* 003E4 80A67934 1420FFD3 */  bne     $at, $zero, .L80A67884     
/* 003E8 80A67938 2631000C */  addiu   $s1, $s1, 0x000C           ## $s1 = 80A6844C
/* 003EC 80A6793C 8E4F0174 */  lw      $t7, 0x0174($s2)           ## 00000174
/* 003F0 80A67940 55E00095 */  bnel    $t7, $zero, .L80A67B98     
/* 003F4 80A67944 8E420178 */  lw      $v0, 0x0178($s2)           ## 00000178
/* 003F8 80A67948 8E820440 */  lw      $v0, 0x0440($s4)           ## 00000440
/* 003FC 80A6794C 5040002D */  beql    $v0, $zero, .L80A67A04     
/* 00400 80A67950 8E42016C */  lw      $v0, 0x016C($s2)           ## 0000016C
/* 00404 80A67954 8E58015C */  lw      $t8, 0x015C($s2)           ## 0000015C
/* 00408 80A67958 3C0380A7 */  lui     $v1, %hi(D_80A68464)       ## $v1 = 80A70000
/* 0040C 80A6795C 24638464 */  addiu   $v1, $v1, %lo(D_80A68464)  ## $v1 = 80A68464
/* 00410 80A67960 56780028 */  bnel    $s3, $t8, .L80A67A04       
/* 00414 80A67964 8E42016C */  lw      $v0, 0x016C($s2)           ## 0000016C
/* 00418 80A67968 C4440024 */  lwc1    $f4, 0x0024($v0)           ## 00000024
/* 0041C 80A6796C C46C0000 */  lwc1    $f12, 0x0000($v1)          ## 80A68464
/* 00420 80A67970 C46E0004 */  lwc1    $f14, 0x0004($v1)          ## 80A68468
/* 00424 80A67974 E7A40010 */  swc1    $f4, 0x0010($sp)           
/* 00428 80A67978 C446002C */  lwc1    $f6, 0x002C($v0)           ## 0000002C
/* 0042C 80A6797C 8C660008 */  lw      $a2, 0x0008($v1)           ## 80A6846C
/* 00430 80A67980 8C67000C */  lw      $a3, 0x000C($v1)           ## 80A68470
/* 00434 80A67984 0C032C66 */  jal     func_800CB198              
/* 00438 80A67988 E7A60014 */  swc1    $f6, 0x0014($sp)           
/* 0043C 80A6798C 5040001D */  beql    $v0, $zero, .L80A67A04     
/* 00440 80A67990 8E42016C */  lw      $v0, 0x016C($s2)           ## 0000016C
/* 00444 80A67994 8E59017C */  lw      $t9, 0x017C($s2)           ## 0000017C
/* 00448 80A67998 240A0037 */  addiu   $t2, $zero, 0x0037         ## $t2 = 00000037
/* 0044C 80A6799C 24040041 */  addiu   $a0, $zero, 0x0041         ## $a0 = 00000041
/* 00450 80A679A0 27280001 */  addiu   $t0, $t9, 0x0001           ## $t0 = 00000001
/* 00454 80A679A4 1900000F */  blez    $t0, .L80A679E4            
/* 00458 80A679A8 AE48017C */  sw      $t0, 0x017C($s2)           ## 0000017C
/* 0045C 80A679AC AE530174 */  sw      $s3, 0x0174($s2)           ## 00000174
/* 00460 80A679B0 0C03E803 */  jal     Audio_SetBGM
              
/* 00464 80A679B4 AE4A0178 */  sw      $t2, 0x0178($s2)           ## 00000178
/* 00468 80A679B8 3C078013 */  lui     $a3, 0x8013                ## $a3 = 80130000
/* 0046C 80A679BC 3C0B8013 */  lui     $t3, 0x8013                ## $t3 = 80130000
/* 00470 80A679C0 24E733E0 */  addiu   $a3, $a3, 0x33E0           ## $a3 = 801333E0
/* 00474 80A679C4 256B33E8 */  addiu   $t3, $t3, 0x33E8           ## $t3 = 801333E8
/* 00478 80A679C8 3C058013 */  lui     $a1, 0x8013                ## $a1 = 80130000
/* 0047C 80A679CC 24A533D4 */  addiu   $a1, $a1, 0x33D4           ## $a1 = 801333D4
/* 00480 80A679D0 AFAB0014 */  sw      $t3, 0x0014($sp)           
/* 00484 80A679D4 AFA70010 */  sw      $a3, 0x0010($sp)           
/* 00488 80A679D8 24044835 */  addiu   $a0, $zero, 0x4835         ## $a0 = 00004835
/* 0048C 80A679DC 0C03DCE3 */  jal     Audio_PlaySoundGeneral
              
/* 00490 80A679E0 24060004 */  addiu   $a2, $zero, 0x0004         ## $a2 = 00000004
.L80A679E4:
/* 00494 80A679E4 00008025 */  or      $s0, $zero, $zero          ## $s0 = 00000000
/* 00498 80A679E8 02401025 */  or      $v0, $s2, $zero            ## $v0 = 00000000
/* 0049C 80A679EC 24110003 */  addiu   $s1, $zero, 0x0003         ## $s1 = 00000003
.L80A679F0:
/* 004A0 80A679F0 26100001 */  addiu   $s0, $s0, 0x0001           ## $s0 = 00000001
/* 004A4 80A679F4 24420004 */  addiu   $v0, $v0, 0x0004           ## $v0 = 00000004
/* 004A8 80A679F8 1611FFFD */  bne     $s0, $s1, .L80A679F0       
/* 004AC 80A679FC AC400150 */  sw      $zero, 0x0150($v0)         ## 00000154
/* 004B0 80A67A00 8E42016C */  lw      $v0, 0x016C($s2)           ## 0000016C
.L80A67A04:
/* 004B4 80A67A04 3C0380A7 */  lui     $v1, %hi(D_80A68464)       ## $v1 = 80A70000
/* 004B8 80A67A08 24638464 */  addiu   $v1, $v1, %lo(D_80A68464)  ## $v1 = 80A68464
/* 004BC 80A67A0C 1040002F */  beq     $v0, $zero, .L80A67ACC     
/* 004C0 80A67A10 24110003 */  addiu   $s1, $zero, 0x0003         ## $s1 = 00000003
/* 004C4 80A67A14 8E4C0168 */  lw      $t4, 0x0168($s2)           ## 00000168
/* 004C8 80A67A18 566C002D */  bnel    $s3, $t4, .L80A67AD0       
/* 004CC 80A67A1C 8E820440 */  lw      $v0, 0x0440($s4)           ## 00000440
/* 004D0 80A67A20 C4480024 */  lwc1    $f8, 0x0024($v0)           ## 00000028
/* 004D4 80A67A24 C46C0000 */  lwc1    $f12, 0x0000($v1)          ## 80A68464
/* 004D8 80A67A28 C46E0004 */  lwc1    $f14, 0x0004($v1)          ## 80A68468
/* 004DC 80A67A2C E7A80010 */  swc1    $f8, 0x0010($sp)           
/* 004E0 80A67A30 C44A002C */  lwc1    $f10, 0x002C($v0)          ## 00000030
/* 004E4 80A67A34 8C660008 */  lw      $a2, 0x0008($v1)           ## 80A6846C
/* 004E8 80A67A38 8C67000C */  lw      $a3, 0x000C($v1)           ## 80A68470
/* 004EC 80A67A3C 0C032C66 */  jal     func_800CB198              
/* 004F0 80A67A40 E7AA0014 */  swc1    $f10, 0x0014($sp)          
/* 004F4 80A67A44 50400022 */  beql    $v0, $zero, .L80A67AD0     
/* 004F8 80A67A48 8E820440 */  lw      $v0, 0x0440($s4)           ## 00000440
/* 004FC 80A67A4C 8E4D0180 */  lw      $t5, 0x0180($s2)           ## 00000180
/* 00500 80A67A50 24180002 */  addiu   $t8, $zero, 0x0002         ## $t8 = 00000002
/* 00504 80A67A54 24190046 */  addiu   $t9, $zero, 0x0046         ## $t9 = 00000046
/* 00508 80A67A58 25AE0001 */  addiu   $t6, $t5, 0x0001           ## $t6 = 00000001
/* 0050C 80A67A5C 19C00015 */  blez    $t6, .L80A67AB4            
/* 00510 80A67A60 AE4E0180 */  sw      $t6, 0x0180($s2)           ## 00000180
/* 00514 80A67A64 8E42016C */  lw      $v0, 0x016C($s2)           ## 0000016C
/* 00518 80A67A68 AE580174 */  sw      $t8, 0x0174($s2)           ## 00000174
/* 0051C 80A67A6C AE590178 */  sw      $t9, 0x0178($s2)           ## 00000178
/* 00520 80A67A70 8C4801F0 */  lw      $t0, 0x01F0($v0)           ## 000001F0
/* 00524 80A67A74 3C010080 */  lui     $at, 0x0080                ## $at = 00800000
/* 00528 80A67A78 24040041 */  addiu   $a0, $zero, 0x0041         ## $a0 = 00000041
/* 0052C 80A67A7C 01014825 */  or      $t1, $t0, $at              ## $t1 = 00800000
/* 00530 80A67A80 0C03E803 */  jal     Audio_SetBGM
              
/* 00534 80A67A84 AC4901F0 */  sw      $t1, 0x01F0($v0)           ## 000001F0
/* 00538 80A67A88 3C078013 */  lui     $a3, 0x8013                ## $a3 = 80130000
/* 0053C 80A67A8C 3C0A8013 */  lui     $t2, 0x8013                ## $t2 = 80130000
/* 00540 80A67A90 24E733E0 */  addiu   $a3, $a3, 0x33E0           ## $a3 = 801333E0
/* 00544 80A67A94 254A33E8 */  addiu   $t2, $t2, 0x33E8           ## $t2 = 801333E8
/* 00548 80A67A98 3C058013 */  lui     $a1, 0x8013                ## $a1 = 80130000
/* 0054C 80A67A9C 24A533D4 */  addiu   $a1, $a1, 0x33D4           ## $a1 = 801333D4
/* 00550 80A67AA0 AFAA0014 */  sw      $t2, 0x0014($sp)           
/* 00554 80A67AA4 AFA70010 */  sw      $a3, 0x0010($sp)           
/* 00558 80A67AA8 24044835 */  addiu   $a0, $zero, 0x4835         ## $a0 = 00004835
/* 0055C 80A67AAC 0C03DCE3 */  jal     Audio_PlaySoundGeneral
              
/* 00560 80A67AB0 24060004 */  addiu   $a2, $zero, 0x0004         ## $a2 = 00000004
.L80A67AB4:
/* 00564 80A67AB4 00008025 */  or      $s0, $zero, $zero          ## $s0 = 00000000
/* 00568 80A67AB8 02401025 */  or      $v0, $s2, $zero            ## $v0 = 00000000
.L80A67ABC:
/* 0056C 80A67ABC 26100001 */  addiu   $s0, $s0, 0x0001           ## $s0 = 00000001
/* 00570 80A67AC0 24420004 */  addiu   $v0, $v0, 0x0004           ## $v0 = 00000004
/* 00574 80A67AC4 1611FFFD */  bne     $s0, $s1, .L80A67ABC       
/* 00578 80A67AC8 AC40015C */  sw      $zero, 0x015C($v0)         ## 00000160
.L80A67ACC:
/* 0057C 80A67ACC 8E820440 */  lw      $v0, 0x0440($s4)           ## 00000440
.L80A67AD0:
/* 00580 80A67AD0 3C1080A7 */  lui     $s0, %hi(D_80A68474)       ## $s0 = 80A70000
/* 00584 80A67AD4 26108474 */  addiu   $s0, $s0, %lo(D_80A68474)  ## $s0 = 80A68474
/* 00588 80A67AD8 5040000D */  beql    $v0, $zero, .L80A67B10     
/* 0058C 80A67ADC C6840024 */  lwc1    $f4, 0x0024($s4)           ## 00000024
/* 00590 80A67AE0 C4500024 */  lwc1    $f16, 0x0024($v0)          ## 00000028
/* 00594 80A67AE4 C60C0000 */  lwc1    $f12, 0x0000($s0)          ## 80A68474
/* 00598 80A67AE8 C60E0004 */  lwc1    $f14, 0x0004($s0)          ## 80A68478
/* 0059C 80A67AEC E7B00010 */  swc1    $f16, 0x0010($sp)          
/* 005A0 80A67AF0 C452002C */  lwc1    $f18, 0x002C($v0)          ## 00000030
/* 005A4 80A67AF4 8E060008 */  lw      $a2, 0x0008($s0)           ## 80A6847C
/* 005A8 80A67AF8 8E07000C */  lw      $a3, 0x000C($s0)           ## 80A68480
/* 005AC 80A67AFC 0C032C66 */  jal     func_800CB198              
/* 005B0 80A67B00 E7B20014 */  swc1    $f18, 0x0014($sp)          
/* 005B4 80A67B04 1440000E */  bne     $v0, $zero, .L80A67B40     
/* 005B8 80A67B08 00000000 */  nop
/* 005BC 80A67B0C C6840024 */  lwc1    $f4, 0x0024($s4)           ## 00000024
.L80A67B10:
/* 005C0 80A67B10 3C1080A7 */  lui     $s0, %hi(D_80A68474)       ## $s0 = 80A70000
/* 005C4 80A67B14 26108474 */  addiu   $s0, $s0, %lo(D_80A68474)  ## $s0 = 80A68474
/* 005C8 80A67B18 E7A40010 */  swc1    $f4, 0x0010($sp)           
/* 005CC 80A67B1C C686002C */  lwc1    $f6, 0x002C($s4)           ## 0000002C
/* 005D0 80A67B20 C60C0000 */  lwc1    $f12, 0x0000($s0)          ## 80A68474
/* 005D4 80A67B24 C60E0004 */  lwc1    $f14, 0x0004($s0)          ## 80A68478
/* 005D8 80A67B28 8E060008 */  lw      $a2, 0x0008($s0)           ## 80A6847C
/* 005DC 80A67B2C 8E07000C */  lw      $a3, 0x000C($s0)           ## 80A68480
/* 005E0 80A67B30 0C032C66 */  jal     func_800CB198              
/* 005E4 80A67B34 E7A60014 */  swc1    $f6, 0x0014($sp)           
/* 005E8 80A67B38 10400007 */  beq     $v0, $zero, .L80A67B58     
/* 005EC 80A67B3C 00000000 */  nop
.L80A67B40:
/* 005F0 80A67B40 0C03E803 */  jal     Audio_SetBGM
              
/* 005F4 80A67B44 24040041 */  addiu   $a0, $zero, 0x0041         ## $a0 = 00000041
/* 005F8 80A67B48 240B0002 */  addiu   $t3, $zero, 0x0002         ## $t3 = 00000002
/* 005FC 80A67B4C 240C0014 */  addiu   $t4, $zero, 0x0014         ## $t4 = 00000014
/* 00600 80A67B50 AE4B0174 */  sw      $t3, 0x0174($s2)           ## 00000174
/* 00604 80A67B54 AE4C0178 */  sw      $t4, 0x0178($s2)           ## 00000178
.L80A67B58:
/* 00608 80A67B58 3C0D8016 */  lui     $t5, 0x8016                ## $t5 = 80160000
/* 0060C 80A67B5C 85ADFA30 */  lh      $t5, -0x05D0($t5)          ## 8015FA30
/* 00610 80A67B60 29A100B4 */  slti    $at, $t5, 0x00B4           
/* 00614 80A67B64 54200014 */  bnel    $at, $zero, .L80A67BB8     
/* 00618 80A67B68 8FBF003C */  lw      $ra, 0x003C($sp)           
/* 0061C 80A67B6C 8E4E0150 */  lw      $t6, 0x0150($s2)           ## 00000150
/* 00620 80A67B70 31CF0002 */  andi    $t7, $t6, 0x0002           ## $t7 = 00000000
/* 00624 80A67B74 51E00010 */  beql    $t7, $zero, .L80A67BB8     
/* 00628 80A67B78 8FBF003C */  lw      $ra, 0x003C($sp)           
/* 0062C 80A67B7C 0C03E803 */  jal     Audio_SetBGM
              
/* 00630 80A67B80 24040041 */  addiu   $a0, $zero, 0x0041         ## $a0 = 00000041
/* 00634 80A67B84 24180014 */  addiu   $t8, $zero, 0x0014         ## $t8 = 00000014
/* 00638 80A67B88 AE510174 */  sw      $s1, 0x0174($s2)           ## 00000174
/* 0063C 80A67B8C 10000009 */  beq     $zero, $zero, .L80A67BB4   
/* 00640 80A67B90 AE580178 */  sw      $t8, 0x0178($s2)           ## 00000178
/* 00644 80A67B94 8E420178 */  lw      $v0, 0x0178($s2)           ## 00000178
.L80A67B98:
/* 00648 80A67B98 02402025 */  or      $a0, $s2, $zero            ## $a0 = 00000000
/* 0064C 80A67B9C 18400003 */  blez    $v0, .L80A67BAC            
/* 00650 80A67BA0 2459FFFF */  addiu   $t9, $v0, 0xFFFF           ## $t9 = FFFFFFFF
/* 00654 80A67BA4 10000003 */  beq     $zero, $zero, .L80A67BB4   
/* 00658 80A67BA8 AE590178 */  sw      $t9, 0x0178($s2)           ## 00000178
.L80A67BAC:
/* 0065C 80A67BAC 0C299D86 */  jal     func_80A67618              
/* 00660 80A67BB0 8FA50044 */  lw      $a1, 0x0044($sp)           
.L80A67BB4:
/* 00664 80A67BB4 8FBF003C */  lw      $ra, 0x003C($sp)           
.L80A67BB8:
/* 00668 80A67BB8 D7B40020 */  ldc1    $f20, 0x0020($sp)          
/* 0066C 80A67BBC 8FB00028 */  lw      $s0, 0x0028($sp)           
/* 00670 80A67BC0 8FB1002C */  lw      $s1, 0x002C($sp)           
/* 00674 80A67BC4 8FB20030 */  lw      $s2, 0x0030($sp)           
/* 00678 80A67BC8 8FB30034 */  lw      $s3, 0x0034($sp)           
/* 0067C 80A67BCC 8FB40038 */  lw      $s4, 0x0038($sp)           
/* 00680 80A67BD0 27BD0040 */  addiu   $sp, $sp, 0x0040           ## $sp = 00000000
/* 00684 80A67BD4 03E00008 */  jr      $ra                        
/* 00688 80A67BD8 24020001 */  addiu   $v0, $zero, 0x0001         ## $v0 = 00000001


