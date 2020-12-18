.late_rodata
glabel D_8095C7B8
    .float 0.1

.text
glabel func_80956EE0
/* 07C20 80956EE0 27BDFF98 */  addiu   $sp, $sp, 0xFF98           ## $sp = FFFFFF98
/* 07C24 80956EE4 AFBF0034 */  sw      $ra, 0x0034($sp)           
/* 07C28 80956EE8 AFB00030 */  sw      $s0, 0x0030($sp)           
/* 07C2C 80956EEC AFA5006C */  sw      $a1, 0x006C($sp)           
/* 07C30 80956EF0 8CAF1C44 */  lw      $t7, 0x1C44($a1)           ## 00001C44
/* 07C34 80956EF4 27B80054 */  addiu   $t8, $sp, 0x0054           ## $t8 = FFFFFFEC
/* 07C38 80956EF8 00808025 */  or      $s0, $a0, $zero            ## $s0 = 00000000
/* 07C3C 80956EFC AFAF0064 */  sw      $t7, 0x0064($sp)           
/* 07C40 80956F00 8C990118 */  lw      $t9, 0x0118($a0)           ## 00000118
/* 07C44 80956F04 8F2901D8 */  lw      $t1, 0x01D8($t9)           ## 000001D8
/* 07C48 80956F08 AF090000 */  sw      $t1, 0x0000($t8)           ## FFFFFFEC
/* 07C4C 80956F0C 8F2801DC */  lw      $t0, 0x01DC($t9)           ## 000001DC
/* 07C50 80956F10 AF080004 */  sw      $t0, 0x0004($t8)           ## FFFFFFF0
/* 07C54 80956F14 8F2901E0 */  lw      $t1, 0x01E0($t9)           ## 000001E0
/* 07C58 80956F18 0C03F66B */  jal     Math_Rand_ZeroOne
              ## Rand.Next() float
/* 07C5C 80956F1C AF090008 */  sw      $t1, 0x0008($t8)           ## FFFFFFF4
/* 07C60 80956F20 3C013F00 */  lui     $at, 0x3F00                ## $at = 3F000000
/* 07C64 80956F24 44813000 */  mtc1    $at, $f6                   ## $f6 = 0.50
/* 07C68 80956F28 C60401A4 */  lwc1    $f4, 0x01A4($s0)           ## 000001A4
/* 07C6C 80956F2C 860A019C */  lh      $t2, 0x019C($s0)           ## 0000019C
/* 07C70 80956F30 46060202 */  mul.s   $f8, $f0, $f6              
/* 07C74 80956F34 3C010001 */  lui     $at, 0x0001                ## $at = 00010000
/* 07C78 80956F38 3C0E0001 */  lui     $t6, 0x0001                ## $t6 = 00010000
/* 07C7C 80956F3C 314B01FF */  andi    $t3, $t2, 0x01FF           ## $t3 = 00000000
/* 07C80 80956F40 46082280 */  add.s   $f10, $f4, $f8             
/* 07C84 80956F44 E60A01A4 */  swc1    $f10, 0x01A4($s0)          ## 000001A4
/* 07C88 80956F48 8FAC006C */  lw      $t4, 0x006C($sp)           
/* 07C8C 80956F4C A7AB0052 */  sh      $t3, 0x0052($sp)           
/* 07C90 80956F50 01816821 */  addu    $t5, $t4, $at              
/* 07C94 80956F54 AFAD0044 */  sw      $t5, 0x0044($sp)           
/* 07C98 80956F58 01CC7021 */  addu    $t6, $t6, $t4              
/* 07C9C 80956F5C 8DCE1DE4 */  lw      $t6, 0x1DE4($t6)           ## 00011DE4
/* 07CA0 80956F60 31CF007F */  andi    $t7, $t6, 0x007F           ## $t7 = 00000000
/* 07CA4 80956F64 55E0000D */  bnel    $t7, $zero, .L80956F9C     
/* 07CA8 80956F68 860501F6 */  lh      $a1, 0x01F6($s0)           ## 000001F6
/* 07CAC 80956F6C 0C03F66B */  jal     Math_Rand_ZeroOne
              ## Rand.Next() float
/* 07CB0 80956F70 00000000 */  nop
/* 07CB4 80956F74 3C0142C8 */  lui     $at, 0x42C8                ## $at = 42C80000
/* 07CB8 80956F78 44818000 */  mtc1    $at, $f16                  ## $f16 = 100.00
/* 07CBC 80956F7C 00000000 */  nop
/* 07CC0 80956F80 46100482 */  mul.s   $f18, $f0, $f16            
/* 07CC4 80956F84 4600918D */  trunc.w.s $f6, $f18                  
/* 07CC8 80956F88 44093000 */  mfc1    $t1, $f6                   
/* 07CCC 80956F8C 00000000 */  nop
/* 07CD0 80956F90 252A0064 */  addiu   $t2, $t1, 0x0064           ## $t2 = 00000064
/* 07CD4 80956F94 A60A01F6 */  sh      $t2, 0x01F6($s0)           ## 000001F6
/* 07CD8 80956F98 860501F6 */  lh      $a1, 0x01F6($s0)           ## 000001F6
.L80956F9C:
/* 07CDC 80956F9C AFA00010 */  sw      $zero, 0x0010($sp)         
/* 07CE0 80956FA0 260401FA */  addiu   $a0, $s0, 0x01FA           ## $a0 = 000001FA
/* 07CE4 80956FA4 24060001 */  addiu   $a2, $zero, 0x0001         ## $a2 = 00000001
/* 07CE8 80956FA8 0C01E1A7 */  jal     Math_SmoothScaleMaxMinS
              
/* 07CEC 80956FAC 2407001E */  addiu   $a3, $zero, 0x001E         ## $a3 = 0000001E
/* 07CF0 80956FB0 860B01F8 */  lh      $t3, 0x01F8($s0)           ## 000001F8
/* 07CF4 80956FB4 860D01FA */  lh      $t5, 0x01FA($s0)           ## 000001FA
/* 07CF8 80956FB8 92030348 */  lbu     $v1, 0x0348($s0)           ## 00000348
/* 07CFC 80956FBC 016D6021 */  addu    $t4, $t3, $t5              
/* 07D00 80956FC0 306E0002 */  andi    $t6, $v1, 0x0002           ## $t6 = 00000000
/* 07D04 80956FC4 15C00005 */  bne     $t6, $zero, .L80956FDC     
/* 07D08 80956FC8 A60C01F8 */  sh      $t4, 0x01F8($s0)           ## 000001F8
/* 07D0C 80956FCC 920F02E8 */  lbu     $t7, 0x02E8($s0)           ## 000002E8
/* 07D10 80956FD0 31F80002 */  andi    $t8, $t7, 0x0002           ## $t8 = 00000000
/* 07D14 80956FD4 5300001D */  beql    $t8, $zero, .L8095704C     
/* 07D18 80956FD8 920202E9 */  lbu     $v0, 0x02E9($s0)           ## 000002E9
.L80956FDC:
/* 07D1C 80956FDC 8FB90064 */  lw      $t9, 0x0064($sp)           
/* 07D20 80956FE0 8E08033C */  lw      $t0, 0x033C($s0)           ## 0000033C
/* 07D24 80956FE4 3C014100 */  lui     $at, 0x4100                ## $at = 41000000
/* 07D28 80956FE8 8FA4006C */  lw      $a0, 0x006C($sp)           
/* 07D2C 80956FEC 53280005 */  beql    $t9, $t0, .L80957004       
/* 07D30 80956FF0 44810000 */  mtc1    $at, $f0                   ## $f0 = 8.00
/* 07D34 80956FF4 8E0902DC */  lw      $t1, 0x02DC($s0)           ## 000002DC
/* 07D38 80956FF8 5729000F */  bnel    $t9, $t1, .L80957038       
/* 07D3C 80956FFC 920D02E8 */  lbu     $t5, 0x02E8($s0)           ## 000002E8
/* 07D40 80957000 44810000 */  mtc1    $at, $f0                   ## $f0 = 8.00
.L80957004:
/* 07D44 80957004 8E0A0118 */  lw      $t2, 0x0118($s0)           ## 00000118
/* 07D48 80957008 02002825 */  or      $a1, $s0, $zero            ## $a1 = 00000000
/* 07D4C 8095700C 44060000 */  mfc1    $a2, $f0                   
/* 07D50 80957010 8547008A */  lh      $a3, 0x008A($t2)           ## 0000008A
/* 07D54 80957014 0C00BDC7 */  jal     func_8002F71C              
/* 07D58 80957018 E7A00010 */  swc1    $f0, 0x0010($sp)           
/* 07D5C 8095701C 8FA40064 */  lw      $a0, 0x0064($sp)           
/* 07D60 80957020 0C00BE0A */  jal     Audio_PlayActorSound2
              
/* 07D64 80957024 2405083E */  addiu   $a1, $zero, 0x083E         ## $a1 = 0000083E
/* 07D68 80957028 AE0002DC */  sw      $zero, 0x02DC($s0)         ## 000002DC
/* 07D6C 8095702C AE00033C */  sw      $zero, 0x033C($s0)         ## 0000033C
/* 07D70 80957030 92030348 */  lbu     $v1, 0x0348($s0)           ## 00000348
/* 07D74 80957034 920D02E8 */  lbu     $t5, 0x02E8($s0)           ## 000002E8
.L80957038:
/* 07D78 80957038 306BFFFD */  andi    $t3, $v1, 0xFFFD           ## $t3 = 00000000
/* 07D7C 8095703C A20B0348 */  sb      $t3, 0x0348($s0)           ## 00000348
/* 07D80 80957040 31ACFFFD */  andi    $t4, $t5, 0xFFFD           ## $t4 = 00000000
/* 07D84 80957044 A20C02E8 */  sb      $t4, 0x02E8($s0)           ## 000002E8
/* 07D88 80957048 920202E9 */  lbu     $v0, 0x02E9($s0)           ## 000002E9
.L8095704C:
/* 07D8C 8095704C 2404FFFD */  addiu   $a0, $zero, 0xFFFD         ## $a0 = FFFFFFFD
/* 07D90 80957050 304E0002 */  andi    $t6, $v0, 0x0002           ## $t6 = 00000000
/* 07D94 80957054 11C00012 */  beq     $t6, $zero, .L809570A0     
/* 07D98 80957058 00000000 */  nop
/* 07D9C 8095705C 8E0302E0 */  lw      $v1, 0x02E0($s0)           ## 000002E0
/* 07DA0 80957060 00447824 */  and     $t7, $v0, $a0              
/* 07DA4 80957064 A20F02E9 */  sb      $t7, 0x02E9($s0)           ## 000002E9
/* 07DA8 80957068 84780000 */  lh      $t8, 0x0000($v1)           ## 00000000
/* 07DAC 8095706C 24010032 */  addiu   $at, $zero, 0x0032         ## $at = 00000032
/* 07DB0 80957070 87A80052 */  lh      $t0, 0x0052($sp)           
/* 07DB4 80957074 1701000A */  bne     $t8, $at, .L809570A0       
/* 07DB8 80957078 29010080 */  slti    $at, $t0, 0x0080           
/* 07DBC 8095707C 14200008 */  bne     $at, $zero, .L809570A0     
/* 07DC0 80957080 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 07DC4 80957084 A06001D4 */  sb      $zero, 0x01D4($v1)         ## 000001D4
/* 07DC8 80957088 8FB90064 */  lw      $t9, 0x0064($sp)           
/* 07DCC 8095708C 8469008A */  lh      $t1, 0x008A($v1)           ## 0000008A
/* 07DD0 80957090 24051808 */  addiu   $a1, $zero, 0x1808         ## $a1 = 00001808
/* 07DD4 80957094 AC7901CC */  sw      $t9, 0x01CC($v1)           ## 000001CC
/* 07DD8 80957098 0C00BE0A */  jal     Audio_PlayActorSound2
              
/* 07DDC 8095709C A4690032 */  sh      $t1, 0x0032($v1)           ## 00000032
.L809570A0:
/* 07DE0 809570A0 0C01DE1C */  jal     Math_Sins
              ## sins?
/* 07DE4 809570A4 86040032 */  lh      $a0, 0x0032($s0)           ## 00000032
/* 07DE8 809570A8 C60401A0 */  lwc1    $f4, 0x01A0($s0)           ## 000001A0
/* 07DEC 809570AC C7AA0054 */  lwc1    $f10, 0x0054($sp)          
/* 07DF0 809570B0 86040032 */  lh      $a0, 0x0032($s0)           ## 00000032
/* 07DF4 809570B4 46040202 */  mul.s   $f8, $f0, $f4              
/* 07DF8 809570B8 460A4400 */  add.s   $f16, $f8, $f10            
/* 07DFC 809570BC 0C01DE0D */  jal     Math_Coss
              ## coss?
/* 07E00 809570C0 E6100024 */  swc1    $f16, 0x0024($s0)          ## 00000024
/* 07E04 809570C4 C61201A0 */  lwc1    $f18, 0x01A0($s0)          ## 000001A0
/* 07E08 809570C8 C7A4005C */  lwc1    $f4, 0x005C($sp)           
/* 07E0C 809570CC 44805000 */  mtc1    $zero, $f10                ## $f10 = 0.00
/* 07E10 809570D0 46120182 */  mul.s   $f6, $f0, $f18             
/* 07E14 809570D4 26040028 */  addiu   $a0, $s0, 0x0028           ## $a0 = 00000028
/* 07E18 809570D8 3C054080 */  lui     $a1, 0x4080                ## $a1 = 40800000
/* 07E1C 809570DC 3C063F80 */  lui     $a2, 0x3F80                ## $a2 = 3F800000
/* 07E20 809570E0 3C074000 */  lui     $a3, 0x4000                ## $a3 = 40000000
/* 07E24 809570E4 46043200 */  add.s   $f8, $f6, $f4              
/* 07E28 809570E8 E608002C */  swc1    $f8, 0x002C($s0)           ## 0000002C
/* 07E2C 809570EC 0C01E0C4 */  jal     Math_SmoothScaleMaxMinF
              
/* 07E30 809570F0 E7AA0010 */  swc1    $f10, 0x0010($sp)          
/* 07E34 809570F4 0C0329C8 */  jal     Math_Sinf              
/* 07E38 809570F8 C60C01A4 */  lwc1    $f12, 0x01A4($s0)          ## 000001A4
/* 07E3C 809570FC 46000480 */  add.s   $f18, $f0, $f0             
/* 07E40 80957100 C6100028 */  lwc1    $f16, 0x0028($s0)          ## 00000028
/* 07E44 80957104 27A40054 */  addiu   $a0, $sp, 0x0054           ## $a0 = FFFFFFEC
/* 07E48 80957108 26050024 */  addiu   $a1, $s0, 0x0024           ## $a1 = 00000024
/* 07E4C 8095710C 46128180 */  add.s   $f6, $f16, $f18            
/* 07E50 80957110 0C01E027 */  jal     Math_Vec3f_Pitch
              
/* 07E54 80957114 E6060028 */  swc1    $f6, 0x0028($s0)           ## 00000028
/* 07E58 80957118 44802000 */  mtc1    $zero, $f4                 ## $f4 = 0.00
/* 07E5C 8095711C A6020030 */  sh      $v0, 0x0030($s0)           ## 00000030
/* 07E60 80957120 260401A0 */  addiu   $a0, $s0, 0x01A0           ## $a0 = 000001A0
/* 07E64 80957124 3C054320 */  lui     $a1, 0x4320                ## $a1 = 43200000
/* 07E68 80957128 3C063F80 */  lui     $a2, 0x3F80                ## $a2 = 3F800000
/* 07E6C 8095712C 3C074000 */  lui     $a3, 0x4000                ## $a3 = 40000000
/* 07E70 80957130 0C01E0C4 */  jal     Math_SmoothScaleMaxMinF
              
/* 07E74 80957134 E7A40010 */  swc1    $f4, 0x0010($sp)           
/* 07E78 80957138 260400B4 */  addiu   $a0, $s0, 0x00B4           ## $a0 = 000000B4
/* 07E7C 8095713C 00002825 */  or      $a1, $zero, $zero          ## $a1 = 00000000
/* 07E80 80957140 24060001 */  addiu   $a2, $zero, 0x0001         ## $a2 = 00000001
/* 07E84 80957144 240705DC */  addiu   $a3, $zero, 0x05DC         ## $a3 = 000005DC
/* 07E88 80957148 0C01E1A7 */  jal     Math_SmoothScaleMaxMinS
              
/* 07E8C 8095714C AFA00010 */  sw      $zero, 0x0010($sp)         
/* 07E90 80957150 860A019C */  lh      $t2, 0x019C($s0)           ## 0000019C
/* 07E94 80957154 240D0BB8 */  addiu   $t5, $zero, 0x0BB8         ## $t5 = 00000BB8
/* 07E98 80957158 240CF448 */  addiu   $t4, $zero, 0xF448         ## $t4 = FFFFF448
/* 07E9C 8095715C 314B0200 */  andi    $t3, $t2, 0x0200           ## $t3 = 00000000
/* 07EA0 80957160 15600003 */  bne     $t3, $zero, .L80957170     
/* 07EA4 80957164 24080001 */  addiu   $t0, $zero, 0x0001         ## $t0 = 00000001
/* 07EA8 80957168 10000002 */  beq     $zero, $zero, .L80957174   
/* 07EAC 8095716C A60D01AC */  sh      $t5, 0x01AC($s0)           ## 000001AC
.L80957170:
/* 07EB0 80957170 A60C01AC */  sh      $t4, 0x01AC($s0)           ## 000001AC
.L80957174:
/* 07EB4 80957174 87AE0052 */  lh      $t6, 0x0052($sp)           
/* 07EB8 80957178 8FA4006C */  lw      $a0, 0x006C($sp)           
/* 07EBC 8095717C 02002825 */  or      $a1, $s0, $zero            ## $a1 = 00000000
/* 07EC0 80957180 29C10080 */  slti    $at, $t6, 0x0080           
/* 07EC4 80957184 1420001F */  bne     $at, $zero, .L80957204     
/* 07EC8 80957188 260702D8 */  addiu   $a3, $s0, 0x02D8           ## $a3 = 000002D8
/* 07ECC 8095718C 3C014170 */  lui     $at, 0x4170                ## $at = 41700000
/* 07ED0 80957190 44814000 */  mtc1    $at, $f8                   ## $f8 = 15.00
/* 07ED4 80957194 3C0140E0 */  lui     $at, 0x40E0                ## $at = 40E00000
/* 07ED8 80957198 44815000 */  mtc1    $at, $f10                  ## $f10 = 7.00
/* 07EDC 8095719C 3C013F80 */  lui     $at, 0x3F80                ## $at = 3F800000
/* 07EE0 809571A0 44818000 */  mtc1    $at, $f16                  ## $f16 = 1.00
/* 07EE4 809571A4 240F0001 */  addiu   $t7, $zero, 0x0001         ## $t7 = 00000001
/* 07EE8 809571A8 24180001 */  addiu   $t8, $zero, 0x0001         ## $t8 = 00000001
/* 07EEC 809571AC AFB80020 */  sw      $t8, 0x0020($sp)           
/* 07EF0 809571B0 AFAF0018 */  sw      $t7, 0x0018($sp)           
/* 07EF4 809571B4 24060001 */  addiu   $a2, $zero, 0x0001         ## $a2 = 00000001
/* 07EF8 809571B8 2407004B */  addiu   $a3, $zero, 0x004B         ## $a3 = 0000004B
/* 07EFC 809571BC E7A80010 */  swc1    $f8, 0x0010($sp)           
/* 07F00 809571C0 E7AA0014 */  swc1    $f10, 0x0014($sp)          
/* 07F04 809571C4 0C253E19 */  jal     func_8094F864              
/* 07F08 809571C8 E7B0001C */  swc1    $f16, 0x001C($sp)          
/* 07F0C 809571CC 8FA4006C */  lw      $a0, 0x006C($sp)           
/* 07F10 809571D0 3C010001 */  lui     $at, 0x0001                ## $at = 00010000
/* 07F14 809571D4 34211E60 */  ori     $at, $at, 0x1E60           ## $at = 00011E60
/* 07F18 809571D8 260702D8 */  addiu   $a3, $s0, 0x02D8           ## $a3 = 000002D8
/* 07F1C 809571DC 00812821 */  addu    $a1, $a0, $at              
/* 07F20 809571E0 AFA50040 */  sw      $a1, 0x0040($sp)           
/* 07F24 809571E4 00E03025 */  or      $a2, $a3, $zero            ## $a2 = 000002D8
/* 07F28 809571E8 0C01767D */  jal     CollisionCheck_SetAC
              ## CollisionCheck_setAC
/* 07F2C 809571EC AFA7003C */  sw      $a3, 0x003C($sp)           
/* 07F30 809571F0 3C018096 */  lui     $at, %hi(D_80966936)       ## $at = 80960000
/* 07F34 809571F4 8FA50040 */  lw      $a1, 0x0040($sp)           
/* 07F38 809571F8 8FA7003C */  lw      $a3, 0x003C($sp)           
/* 07F3C 809571FC 10000007 */  beq     $zero, $zero, .L8095721C   
/* 07F40 80957200 A0206936 */  sb      $zero, %lo(D_80966936)($at) 
.L80957204:
/* 07F44 80957204 3C018096 */  lui     $at, %hi(D_80966936)       ## $at = 80960000
/* 07F48 80957208 8FA5006C */  lw      $a1, 0x006C($sp)           
/* 07F4C 8095720C A0286936 */  sb      $t0, %lo(D_80966936)($at)  
/* 07F50 80957210 3C010001 */  lui     $at, 0x0001                ## $at = 00010000
/* 07F54 80957214 34211E60 */  ori     $at, $at, 0x1E60           ## $at = 00011E60
/* 07F58 80957218 00A12821 */  addu    $a1, $a1, $at              
.L8095721C:
/* 07F5C 8095721C 8FA4006C */  lw      $a0, 0x006C($sp)           
/* 07F60 80957220 26060338 */  addiu   $a2, $s0, 0x0338           ## $a2 = 00000338
/* 07F64 80957224 AFA50040 */  sw      $a1, 0x0040($sp)           
/* 07F68 80957228 0C0175E7 */  jal     CollisionCheck_SetAT
              ## CollisionCheck_setAT
/* 07F6C 8095722C AFA7003C */  sw      $a3, 0x003C($sp)           
/* 07F70 80957230 8FA50040 */  lw      $a1, 0x0040($sp)           
/* 07F74 80957234 8FA6003C */  lw      $a2, 0x003C($sp)           
/* 07F78 80957238 0C0175E7 */  jal     CollisionCheck_SetAT
              ## CollisionCheck_setAT
/* 07F7C 8095723C 8FA4006C */  lw      $a0, 0x006C($sp)           
/* 07F80 80957240 8FB90044 */  lw      $t9, 0x0044($sp)           
/* 07F84 80957244 260401F0 */  addiu   $a0, $s0, 0x01F0           ## $a0 = 000001F0
/* 07F88 80957248 24050078 */  addiu   $a1, $zero, 0x0078         ## $a1 = 00000078
/* 07F8C 8095724C 8F291DE4 */  lw      $t1, 0x1DE4($t9)           ## 00001DE4
/* 07F90 80957250 24060001 */  addiu   $a2, $zero, 0x0001         ## $a2 = 00000001
/* 07F94 80957254 2407000A */  addiu   $a3, $zero, 0x000A         ## $a3 = 0000000A
/* 07F98 80957258 312A0003 */  andi    $t2, $t1, 0x0003           ## $t2 = 00000000
/* 07F9C 8095725C 15400003 */  bne     $t2, $zero, .L8095726C     
/* 07FA0 80957260 00000000 */  nop
/* 07FA4 80957264 0C01E1A7 */  jal     Math_SmoothScaleMaxMinS
              
/* 07FA8 80957268 AFA00010 */  sw      $zero, 0x0010($sp)         
.L8095726C:
/* 07FAC 8095726C 0C03F66B */  jal     Math_Rand_ZeroOne
              ## Rand.Next() float
/* 07FB0 80957270 00000000 */  nop
/* 07FB4 80957274 3C018096 */  lui     $at, %hi(D_8095C7B8)       ## $at = 80960000
/* 07FB8 80957278 C432C7B8 */  lwc1    $f18, %lo(D_8095C7B8)($at) 
/* 07FBC 8095727C 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 07FC0 80957280 4612003C */  c.lt.s  $f0, $f18                  
/* 07FC4 80957284 00000000 */  nop
/* 07FC8 80957288 45020004 */  bc1fl   .L8095729C                 
/* 07FCC 8095728C 860B0032 */  lh      $t3, 0x0032($s0)           ## 00000032
/* 07FD0 80957290 0C00BE0A */  jal     Audio_PlayActorSound2
              
/* 07FD4 80957294 24053143 */  addiu   $a1, $zero, 0x3143         ## $a1 = 00003143
/* 07FD8 80957298 860B0032 */  lh      $t3, 0x0032($s0)           ## 00000032
.L8095729C:
/* 07FDC 8095729C 860D01AC */  lh      $t5, 0x01AC($s0)           ## 000001AC
/* 07FE0 809572A0 3C0E8096 */  lui     $t6, %hi(D_809668D0)       ## $t6 = 80960000
/* 07FE4 809572A4 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 07FE8 809572A8 016D6021 */  addu    $t4, $t3, $t5              
/* 07FEC 809572AC A60C0032 */  sh      $t4, 0x0032($s0)           ## 00000032
/* 07FF0 809572B0 91CE68D0 */  lbu     $t6, %lo(D_809668D0)($t6)  
/* 07FF4 809572B4 31CF007F */  andi    $t7, $t6, 0x007F           ## $t7 = 00000000
/* 07FF8 809572B8 51E00004 */  beql    $t7, $zero, .L809572CC     
/* 07FFC 809572BC 8FBF0034 */  lw      $ra, 0x0034($sp)           
/* 08000 809572C0 0C255E66 */  jal     func_80957998              
/* 08004 809572C4 8FA5006C */  lw      $a1, 0x006C($sp)           
/* 08008 809572C8 8FBF0034 */  lw      $ra, 0x0034($sp)           
.L809572CC:
/* 0800C 809572CC 8FB00030 */  lw      $s0, 0x0030($sp)           
/* 08010 809572D0 27BD0068 */  addiu   $sp, $sp, 0x0068           ## $sp = 00000000
/* 08014 809572D4 03E00008 */  jr      $ra                        
/* 08018 809572D8 00000000 */  nop
