.late_rodata
glabel D_80A061FC
    .float 0.03333333507180214

glabel D_80A06200
    .float 0.05

glabel D_80A06204
    .float 0.008

glabel D_80A06208
    .float 0.008

glabel D_80A0620C
    .float 1500.0

glabel D_80A06210
    .float 0.2

glabel D_80A06214
    .float 1500.0

glabel D_80A06218
    .float 0.2

glabel D_80A0621C
    .float 0.2

glabel D_80A06220
    .float 0.2

glabel D_80A06224
    .float 8.000000525498763e-05

.text
glabel func_80A03CF8
/* 020C8 80A03CF8 27BDFFA0 */  addiu   $sp, $sp, 0xFFA0           ## $sp = FFFFFFA0
/* 020CC 80A03CFC AFBF0024 */  sw      $ra, 0x0024($sp)           
/* 020D0 80A03D00 AFB00020 */  sw      $s0, 0x0020($sp)           
/* 020D4 80A03D04 8CAE1C44 */  lw      $t6, 0x1C44($a1)           ## 00001C44
/* 020D8 80A03D08 00808025 */  or      $s0, $a0, $zero            ## $s0 = 00000000
/* 020DC 80A03D0C AFA50064 */  sw      $a1, 0x0064($sp)           
/* 020E0 80A03D10 0C281187 */  jal     func_80A0461C              
/* 020E4 80A03D14 AFAE0044 */  sw      $t6, 0x0044($sp)           
/* 020E8 80A03D18 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 020EC 80A03D1C 0C280EAC */  jal     func_80A03AB0              
/* 020F0 80A03D20 8FA50064 */  lw      $a1, 0x0064($sp)           
/* 020F4 80A03D24 44802000 */  mtc1    $zero, $f4                 ## $f4 = 0.00
/* 020F8 80A03D28 8FAF0064 */  lw      $t7, 0x0064($sp)           
/* 020FC 80A03D2C 8FA70044 */  lw      $a3, 0x0044($sp)           
/* 02100 80A03D30 E7A4003C */  swc1    $f4, 0x003C($sp)           
/* 02104 80A03D34 91F81D6C */  lbu     $t8, 0x1D6C($t7)           ## 00001D6C
/* 02108 80A03D38 24E70968 */  addiu   $a3, $a3, 0x0968           ## $a3 = 00000968
/* 0210C 80A03D3C 00E02025 */  or      $a0, $a3, $zero            ## $a0 = 00000968
/* 02110 80A03D40 13000056 */  beq     $t8, $zero, .L80A03E9C     
/* 02114 80A03D44 26050024 */  addiu   $a1, $s0, 0x0024           ## $a1 = 00000024
/* 02118 80A03D48 8DF91DAC */  lw      $t9, 0x1DAC($t7)           ## 00001DAC
/* 0211C 80A03D4C 24060008 */  addiu   $a2, $zero, 0x0008         ## $a2 = 00000008
/* 02120 80A03D50 53200053 */  beql    $t9, $zero, .L80A03EA0     
/* 02124 80A03D54 AFA50030 */  sw      $a1, 0x0030($sp)           
/* 02128 80A03D58 27A40054 */  addiu   $a0, $sp, 0x0054           ## $a0 = FFFFFFF4
/* 0212C 80A03D5C 0C2817C4 */  jal     EnElf_GetCutsceneNextPos              
/* 02130 80A03D60 01E02825 */  or      $a1, $t7, $zero            ## $a1 = 00000000
/* 02134 80A03D64 8FA80064 */  lw      $t0, 0x0064($sp)           
/* 02138 80A03D68 24010005 */  addiu   $at, $zero, 0x0005         ## $at = 00000005
/* 0213C 80A03D6C 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 02140 80A03D70 8D091DAC */  lw      $t1, 0x1DAC($t0)           ## 00001DAC
/* 02144 80A03D74 8FA50064 */  lw      $a1, 0x0064($sp)           
/* 02148 80A03D78 952A0000 */  lhu     $t2, 0x0000($t1)           ## 00000000
/* 0214C 80A03D7C 55410004 */  bnel    $t2, $at, .L80A03D90       
/* 02150 80A03D80 8E0D0024 */  lw      $t5, 0x0024($s0)           ## 00000024
/* 02154 80A03D84 0C28126D */  jal     EnElf_SpawnSparkles              
/* 02158 80A03D88 24060010 */  addiu   $a2, $zero, 0x0010         ## $a2 = 00000010
/* 0215C 80A03D8C 8E0D0024 */  lw      $t5, 0x0024($s0)           ## 00000024
.L80A03D90:
/* 02160 80A03D90 27AB0048 */  addiu   $t3, $sp, 0x0048           ## $t3 = FFFFFFE8
/* 02164 80A03D94 2401000A */  addiu   $at, $zero, 0x000A         ## $at = 0000000A
/* 02168 80A03D98 AD6D0000 */  sw      $t5, 0x0000($t3)           ## FFFFFFE8
/* 0216C 80A03D9C 8E0C0028 */  lw      $t4, 0x0028($s0)           ## 00000028
/* 02170 80A03DA0 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 02174 80A03DA4 27A50054 */  addiu   $a1, $sp, 0x0054           ## $a1 = FFFFFFF4
/* 02178 80A03DA8 AD6C0004 */  sw      $t4, 0x0004($t3)           ## FFFFFFEC
/* 0217C 80A03DAC 8E0D002C */  lw      $t5, 0x002C($s0)           ## 0000002C
/* 02180 80A03DB0 3C063E4C */  lui     $a2, 0x3E4C                ## $a2 = 3E4C0000
/* 02184 80A03DB4 AD6D0008 */  sw      $t5, 0x0008($t3)           ## FFFFFFF0
/* 02188 80A03DB8 860E02A8 */  lh      $t6, 0x02A8($s0)           ## 000002A8
/* 0218C 80A03DBC 15C10006 */  bne     $t6, $at, .L80A03DD8       
/* 02190 80A03DC0 00000000 */  nop
/* 02194 80A03DC4 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 02198 80A03DC8 0C280BB0 */  jal     func_80A02EC0              
/* 0219C 80A03DCC 27A50054 */  addiu   $a1, $sp, 0x0054           ## $a1 = FFFFFFF4
/* 021A0 80A03DD0 10000004 */  beq     $zero, $zero, .L80A03DE4   
/* 021A4 80A03DD4 8FB80064 */  lw      $t8, 0x0064($sp)           
.L80A03DD8:
/* 021A8 80A03DD8 0C280B26 */  jal     func_80A02C98              
/* 021AC 80A03DDC 34C6CCCD */  ori     $a2, $a2, 0xCCCD           ## $a2 = 0000CCCD
/* 021B0 80A03DE0 8FB80064 */  lw      $t8, 0x0064($sp)           
.L80A03DE4:
/* 021B4 80A03DE4 24010034 */  addiu   $at, $zero, 0x0034         ## $at = 00000034
/* 021B8 80A03DE8 3C0F8016 */  lui     $t7, %hi(gSaveContext+0x1360)
/* 021BC 80A03DEC 871900A4 */  lh      $t9, 0x00A4($t8)           ## 000000A4
/* 021C0 80A03DF0 17210028 */  bne     $t9, $at, .L80A03E94       
/* 021C4 80A03DF4 00000000 */  nop
/* 021C8 80A03DF8 8DEFF9C0 */  lw      $t7, %lo(gSaveContext+0x1360)($t7)
/* 021CC 80A03DFC 24010004 */  addiu   $at, $zero, 0x0004         ## $at = 00000004
/* 021D0 80A03E00 8FA80064 */  lw      $t0, 0x0064($sp)           
/* 021D4 80A03E04 15E10023 */  bne     $t7, $at, .L80A03E94       
/* 021D8 80A03E08 00000000 */  nop
/* 021DC 80A03E0C 95091D74 */  lhu     $t1, 0x1D74($t0)           ## 00001D74
/* 021E0 80A03E10 24010037 */  addiu   $at, $zero, 0x0037         ## $at = 00000037
/* 021E4 80A03E14 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 021E8 80A03E18 55210004 */  bnel    $t1, $at, .L80A03E2C       
/* 021EC 80A03E1C 860A02A8 */  lh      $t2, 0x02A8($s0)           ## 000002A8
/* 021F0 80A03E20 0C00BE0A */  jal     Audio_PlayActorSound2
              
/* 021F4 80A03E24 2405281B */  addiu   $a1, $zero, 0x281B         ## $a1 = 0000281B
/* 021F8 80A03E28 860A02A8 */  lh      $t2, 0x02A8($s0)           ## 000002A8
.L80A03E2C:
/* 021FC 80A03E2C 24010006 */  addiu   $at, $zero, 0x0006         ## $at = 00000006
/* 02200 80A03E30 15410018 */  bne     $t2, $at, .L80A03E94       
/* 02204 80A03E34 00000000 */  nop
/* 02208 80A03E38 960202C4 */  lhu     $v0, 0x02C4($s0)           ## 000002C4
/* 0220C 80A03E3C C7A6004C */  lwc1    $f6, 0x004C($sp)           
/* 02210 80A03E40 C7B0004C */  lwc1    $f16, 0x004C($sp)          
/* 02214 80A03E44 304B0040 */  andi    $t3, $v0, 0x0040           ## $t3 = 00000000
/* 02218 80A03E48 5160000A */  beql    $t3, $zero, .L80A03E74     
/* 0221C 80A03E4C C60A0028 */  lwc1    $f10, 0x0028($s0)          ## 00000028
/* 02220 80A03E50 C6080028 */  lwc1    $f8, 0x0028($s0)           ## 00000028
/* 02224 80A03E54 304CFFBF */  andi    $t4, $v0, 0xFFBF           ## $t4 = 00000000
/* 02228 80A03E58 4608303C */  c.lt.s  $f6, $f8                   
/* 0222C 80A03E5C 00000000 */  nop
/* 02230 80A03E60 4500000C */  bc1f    .L80A03E94                 
/* 02234 80A03E64 00000000 */  nop
/* 02238 80A03E68 1000000A */  beq     $zero, $zero, .L80A03E94   
/* 0223C 80A03E6C A60C02C4 */  sh      $t4, 0x02C4($s0)           ## 000002C4
/* 02240 80A03E70 C60A0028 */  lwc1    $f10, 0x0028($s0)          ## 00000028
.L80A03E74:
/* 02244 80A03E74 344D0040 */  ori     $t5, $v0, 0x0040           ## $t5 = 00000040
/* 02248 80A03E78 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 0224C 80A03E7C 4610503C */  c.lt.s  $f10, $f16                 
/* 02250 80A03E80 2405281B */  addiu   $a1, $zero, 0x281B         ## $a1 = 0000281B
/* 02254 80A03E84 45000003 */  bc1f    .L80A03E94                 
/* 02258 80A03E88 00000000 */  nop
/* 0225C 80A03E8C 0C00BE0A */  jal     Audio_PlayActorSound2
              
/* 02260 80A03E90 A60D02C4 */  sh      $t5, 0x02C4($s0)           ## 000002C4
.L80A03E94:
/* 02264 80A03E94 10000120 */  beq     $zero, $zero, .L80A04318   
/* 02268 80A03E98 860202A8 */  lh      $v0, 0x02A8($s0)           ## 000002A8
.L80A03E9C:
/* 0226C 80A03E9C AFA50030 */  sw      $a1, 0x0030($sp)           
.L80A03EA0:
/* 02270 80A03EA0 0C01DFE4 */  jal     Math_Vec3f_DistXYZ
              
/* 02274 80A03EA4 AFA7002C */  sw      $a3, 0x002C($sp)           
/* 02278 80A03EA8 860202A8 */  lh      $v0, 0x02A8($s0)           ## 000002A8
/* 0227C 80A03EAC 24010007 */  addiu   $at, $zero, 0x0007         ## $at = 00000007
/* 02280 80A03EB0 8FA7002C */  lw      $a3, 0x002C($sp)           
/* 02284 80A03EB4 1041000B */  beq     $v0, $at, .L80A03EE4       
/* 02288 80A03EB8 46000086 */  mov.s   $f2, $f0                   
/* 0228C 80A03EBC 24010008 */  addiu   $at, $zero, 0x0008         ## $at = 00000008
/* 02290 80A03EC0 10410044 */  beq     $v0, $at, .L80A03FD4       
/* 02294 80A03EC4 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 02298 80A03EC8 2401000B */  addiu   $at, $zero, 0x000B         ## $at = 0000000B
/* 0229C 80A03ECC 10410053 */  beq     $v0, $at, .L80A0401C       
/* 022A0 80A03ED0 2401000C */  addiu   $at, $zero, 0x000C         ## $at = 0000000C
/* 022A4 80A03ED4 1041008A */  beq     $v0, $at, .L80A04100       
/* 022A8 80A03ED8 8FAE0064 */  lw      $t6, 0x0064($sp)           
/* 022AC 80A03EDC 100000A4 */  beq     $zero, $zero, .L80A04170   
/* 022B0 80A03EE0 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
.L80A03EE4:
/* 022B4 80A03EE4 860E02AE */  lh      $t6, 0x02AE($s0)           ## 000002AE
/* 022B8 80A03EE8 3C0180A0 */  lui     $at, %hi(D_80A061FC)       ## $at = 80A00000
/* 022BC 80A03EEC C42661FC */  lwc1    $f6, %lo(D_80A061FC)($at)  
/* 022C0 80A03EF0 448E9000 */  mtc1    $t6, $f18                  ## $f18 = 0.00
/* 022C4 80A03EF4 3C013F80 */  lui     $at, 0x3F80                ## $at = 3F800000
/* 022C8 80A03EF8 44815000 */  mtc1    $at, $f10                  ## $f10 = 1.00
/* 022CC 80A03EFC 46809120 */  cvt.s.w $f4, $f18                  
/* 022D0 80A03F00 E7A20038 */  swc1    $f2, 0x0038($sp)           
/* 022D4 80A03F04 AFA7002C */  sw      $a3, 0x002C($sp)           
/* 022D8 80A03F08 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 022DC 80A03F0C 00E02825 */  or      $a1, $a3, $zero            ## $a1 = 00000000
/* 022E0 80A03F10 46062202 */  mul.s   $f8, $f4, $f6              
/* 022E4 80A03F14 46085401 */  sub.s   $f16, $f10, $f8            
/* 022E8 80A03F18 44068000 */  mfc1    $a2, $f16                  
/* 022EC 80A03F1C 0C280B26 */  jal     func_80A02C98              
/* 022F0 80A03F20 00000000 */  nop
/* 022F4 80A03F24 8FA4002C */  lw      $a0, 0x002C($sp)           
/* 022F8 80A03F28 0C01DFE4 */  jal     Math_Vec3f_DistXYZ
              
/* 022FC 80A03F2C 8FA50030 */  lw      $a1, 0x0030($sp)           
/* 02300 80A03F30 3C0140E0 */  lui     $at, 0x40E0                ## $at = 40E00000
/* 02304 80A03F34 C7A20038 */  lwc1    $f2, 0x0038($sp)           
/* 02308 80A03F38 44819000 */  mtc1    $at, $f18                  ## $f18 = 7.00
/* 0230C 80A03F3C 3C0141C8 */  lui     $at, 0x41C8                ## $at = 41C80000
/* 02310 80A03F40 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 02314 80A03F44 4612103C */  c.lt.s  $f2, $f18                  
/* 02318 80A03F48 24060010 */  addiu   $a2, $zero, 0x0010         ## $a2 = 00000010
/* 0231C 80A03F4C 45020006 */  bc1fl   .L80A03F68                 
/* 02320 80A03F50 44813000 */  mtc1    $at, $f6                   ## $f6 = 25.00
/* 02324 80A03F54 44802000 */  mtc1    $zero, $f4                 ## $f4 = 0.00
/* 02328 80A03F58 A60002C0 */  sh      $zero, 0x02C0($s0)         ## 000002C0
/* 0232C 80A03F5C 10000019 */  beq     $zero, $zero, .L80A03FC4   
/* 02330 80A03F60 E7A4003C */  swc1    $f4, 0x003C($sp)           
/* 02334 80A03F64 44813000 */  mtc1    $at, $f6                   ## $f6 = 25.00
.L80A03F68:
/* 02338 80A03F68 3C0180A0 */  lui     $at, %hi(D_80A06208)       ## $at = 80A00000
/* 0233C 80A03F6C 4606103C */  c.lt.s  $f2, $f6                   
/* 02340 80A03F70 00000000 */  nop
/* 02344 80A03F74 45000011 */  bc1f    .L80A03FBC                 
/* 02348 80A03F78 00000000 */  nop
/* 0234C 80A03F7C 3C013F80 */  lui     $at, 0x3F80                ## $at = 3F800000
/* 02350 80A03F80 44811000 */  mtc1    $at, $f2                   ## $f2 = 1.00
/* 02354 80A03F84 3C0140A0 */  lui     $at, 0x40A0                ## $at = 40A00000
/* 02358 80A03F88 44815000 */  mtc1    $at, $f10                  ## $f10 = 5.00
/* 0235C 80A03F8C 3C0180A0 */  lui     $at, %hi(D_80A06200)       ## $at = 80A00000
/* 02360 80A03F90 C4306200 */  lwc1    $f16, %lo(D_80A06200)($at) 
/* 02364 80A03F94 460A0201 */  sub.s   $f8, $f0, $f10             
/* 02368 80A03F98 3C0180A0 */  lui     $at, %hi(D_80A06204)       ## $at = 80A00000
/* 0236C 80A03F9C C4266204 */  lwc1    $f6, %lo(D_80A06204)($at)  
/* 02370 80A03FA0 46104302 */  mul.s   $f12, $f8, $f16            
/* 02374 80A03FA4 460C1301 */  sub.s   $f12, $f2, $f12            
/* 02378 80A03FA8 460C6482 */  mul.s   $f18, $f12, $f12           
/* 0237C 80A03FAC 46121101 */  sub.s   $f4, $f2, $f18             
/* 02380 80A03FB0 46062302 */  mul.s   $f12, $f4, $f6             
/* 02384 80A03FB4 10000003 */  beq     $zero, $zero, .L80A03FC4   
/* 02388 80A03FB8 E7AC003C */  swc1    $f12, 0x003C($sp)          
.L80A03FBC:
/* 0238C 80A03FBC C42A6208 */  lwc1    $f10, %lo(D_80A06208)($at) 
/* 02390 80A03FC0 E7AA003C */  swc1    $f10, 0x003C($sp)          
.L80A03FC4:
/* 02394 80A03FC4 0C28126D */  jal     EnElf_SpawnSparkles              
/* 02398 80A03FC8 8FA50064 */  lw      $a1, 0x0064($sp)           
/* 0239C 80A03FCC 100000D2 */  beq     $zero, $zero, .L80A04318   
/* 023A0 80A03FD0 860202A8 */  lh      $v0, 0x02A8($s0)           ## 000002A8
.L80A03FD4:
/* 023A4 80A03FD4 3C063E4C */  lui     $a2, 0x3E4C                ## $a2 = 3E4C0000
/* 023A8 80A03FD8 34C6CCCD */  ori     $a2, $a2, 0xCCCD           ## $a2 = 3E4CCCCD
/* 023AC 80A03FDC 00E02825 */  or      $a1, $a3, $zero            ## $a1 = 00000000
/* 023B0 80A03FE0 0C280B26 */  jal     func_80A02C98              
/* 023B4 80A03FE4 AFA7002C */  sw      $a3, 0x002C($sp)           
/* 023B8 80A03FE8 8FA7002C */  lw      $a3, 0x002C($sp)           
/* 023BC 80A03FEC 8FB80030 */  lw      $t8, 0x0030($sp)           
/* 023C0 80A03FF0 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 023C4 80A03FF4 8CEF0000 */  lw      $t7, 0x0000($a3)           ## 00000000
/* 023C8 80A03FF8 24050001 */  addiu   $a1, $zero, 0x0001         ## $a1 = 00000001
/* 023CC 80A03FFC AF0F0000 */  sw      $t7, 0x0000($t8)           ## 00000000
/* 023D0 80A04000 8CF90004 */  lw      $t9, 0x0004($a3)           ## 00000004
/* 023D4 80A04004 AF190004 */  sw      $t9, 0x0004($t8)           ## 00000004
/* 023D8 80A04008 8CEF0008 */  lw      $t7, 0x0008($a3)           ## 00000008
/* 023DC 80A0400C 0C280A6A */  jal     func_80A029A8              
/* 023E0 80A04010 AF0F0008 */  sw      $t7, 0x0008($t8)           ## 00000008
/* 023E4 80A04014 100000C0 */  beq     $zero, $zero, .L80A04318   
/* 023E8 80A04018 860202A8 */  lh      $v0, 0x02A8($s0)           ## 000002A8
.L80A0401C:
/* 023EC 80A0401C 8CEA0000 */  lw      $t2, 0x0000($a3)           ## 00000000
/* 023F0 80A04020 27A80054 */  addiu   $t0, $sp, 0x0054           ## $t0 = FFFFFFF4
/* 023F4 80A04024 3C0180A0 */  lui     $at, %hi(D_80A0620C)       ## $at = 80A00000
/* 023F8 80A04028 AD0A0000 */  sw      $t2, 0x0000($t0)           ## FFFFFFF4
/* 023FC 80A0402C 8CE90004 */  lw      $t1, 0x0004($a3)           ## 00000004
/* 02400 80A04030 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 02404 80A04034 27A50054 */  addiu   $a1, $sp, 0x0054           ## $a1 = FFFFFFF4
/* 02408 80A04038 AD090004 */  sw      $t1, 0x0004($t0)           ## FFFFFFF8
/* 0240C 80A0403C 8CEA0008 */  lw      $t2, 0x0008($a3)           ## 00000008
/* 02410 80A04040 AD0A0008 */  sw      $t2, 0x0008($t0)           ## FFFFFFFC
/* 02414 80A04044 C6100054 */  lwc1    $f16, 0x0054($s0)          ## 00000054
/* 02418 80A04048 C428620C */  lwc1    $f8, %lo(D_80A0620C)($at)  
/* 0241C 80A0404C C7A40058 */  lwc1    $f4, 0x0058($sp)           
/* 02420 80A04050 46104482 */  mul.s   $f18, $f8, $f16            
/* 02424 80A04054 46122180 */  add.s   $f6, $f4, $f18             
/* 02428 80A04058 0C280B8C */  jal     func_80A02E30              
/* 0242C 80A0405C E7A60058 */  swc1    $f6, 0x0058($sp)           
/* 02430 80A04060 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 02434 80A04064 8FA50064 */  lw      $a1, 0x0064($sp)           
/* 02438 80A04068 0C28126D */  jal     EnElf_SpawnSparkles              
/* 0243C 80A0406C 24060010 */  addiu   $a2, $zero, 0x0010         ## $a2 = 00000010
/* 02440 80A04070 3C014198 */  lui     $at, 0x4198                ## $at = 41980000
/* 02444 80A04074 44815000 */  mtc1    $at, $f10                  ## $f10 = 19.00
/* 02448 80A04078 C60002B8 */  lwc1    $f0, 0x02B8($s0)           ## 000002B8
/* 0244C 80A0407C 3C013F80 */  lui     $at, 0x3F80                ## $at = 3F800000
/* 02450 80A04080 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 02454 80A04084 460A003E */  c.le.s  $f0, $f10                  
/* 02458 80A04088 24050001 */  addiu   $a1, $zero, 0x0001         ## $a1 = 00000001
/* 0245C 80A0408C 45020007 */  bc1fl   .L80A040AC                 
/* 02460 80A04090 3C0141A8 */  lui     $at, 0x41A8                ## $at = 41A80000
/* 02464 80A04094 44814000 */  mtc1    $at, $f8                   ## $f8 = 21.00
/* 02468 80A04098 00000000 */  nop
/* 0246C 80A0409C 46080400 */  add.s   $f16, $f0, $f8             
/* 02470 80A040A0 E61002B8 */  swc1    $f16, 0x02B8($s0)          ## 000002B8
/* 02474 80A040A4 C60002B8 */  lwc1    $f0, 0x02B8($s0)           ## 000002B8
/* 02478 80A040A8 3C0141A8 */  lui     $at, 0x41A8                ## $at = 41A80000
.L80A040AC:
/* 0247C 80A040AC 44812000 */  mtc1    $at, $f4                   ## $f4 = 21.00
/* 02480 80A040B0 3C013F80 */  lui     $at, 0x3F80                ## $at = 3F800000
/* 02484 80A040B4 4600203E */  c.le.s  $f4, $f0                   
/* 02488 80A040B8 00000000 */  nop
/* 0248C 80A040BC 45020006 */  bc1fl   .L80A040D8                 
/* 02490 80A040C0 860202C0 */  lh      $v0, 0x02C0($s0)           ## 000002C0
/* 02494 80A040C4 44819000 */  mtc1    $at, $f18                  ## $f18 = 1.00
/* 02498 80A040C8 00000000 */  nop
/* 0249C 80A040CC 46120181 */  sub.s   $f6, $f0, $f18             
/* 024A0 80A040D0 E60602B8 */  swc1    $f6, 0x02B8($s0)           ## 000002B8
/* 024A4 80A040D4 860202C0 */  lh      $v0, 0x02C0($s0)           ## 000002C0
.L80A040D8:
/* 024A8 80A040D8 28410020 */  slti    $at, $v0, 0x0020           
/* 024AC 80A040DC 10200006 */  beq     $at, $zero, .L80A040F8     
/* 024B0 80A040E0 00025900 */  sll     $t3, $v0,  4               
/* 024B4 80A040E4 01625823 */  subu    $t3, $t3, $v0              
/* 024B8 80A040E8 000B5900 */  sll     $t3, $t3,  4               
/* 024BC 80A040EC 256C0200 */  addiu   $t4, $t3, 0x0200           ## $t4 = 00000200
/* 024C0 80A040F0 0C280A67 */  jal     func_80A0299C              
/* 024C4 80A040F4 A60C02B0 */  sh      $t4, 0x02B0($s0)           ## 000002B0
.L80A040F8:
/* 024C8 80A040F8 10000087 */  beq     $zero, $zero, .L80A04318   
/* 024CC 80A040FC 860202A8 */  lh      $v0, 0x02A8($s0)           ## 000002A8
.L80A04100:
/* 024D0 80A04100 85D807A0 */  lh      $t8, 0x07A0($t6)           ## 000007A0
/* 024D4 80A04104 27AD0054 */  addiu   $t5, $sp, 0x0054           ## $t5 = FFFFFFF4
/* 024D8 80A04108 3C01C4FA */  lui     $at, 0xC4FA                ## $at = C4FA0000
/* 024DC 80A0410C 0018C880 */  sll     $t9, $t8,  2               
/* 024E0 80A04110 01D97821 */  addu    $t7, $t6, $t9              
/* 024E4 80A04114 8DE80790 */  lw      $t0, 0x0790($t7)           ## 00000790
/* 024E8 80A04118 44815000 */  mtc1    $at, $f10                  ## $f10 = -2000.00
/* 024EC 80A0411C 3C0180A0 */  lui     $at, %hi(D_80A06210)       ## $at = 80A00000
/* 024F0 80A04120 8D0A005C */  lw      $t2, 0x005C($t0)           ## 0000005C
/* 024F4 80A04124 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 024F8 80A04128 27A50054 */  addiu   $a1, $sp, 0x0054           ## $a1 = FFFFFFF4
/* 024FC 80A0412C ADAA0000 */  sw      $t2, 0x0000($t5)           ## FFFFFFF4
/* 02500 80A04130 8D090060 */  lw      $t1, 0x0060($t0)           ## 00000060
/* 02504 80A04134 24060000 */  addiu   $a2, $zero, 0x0000         ## $a2 = 00000000
/* 02508 80A04138 3C0741A0 */  lui     $a3, 0x41A0                ## $a3 = 41A00000
/* 0250C 80A0413C ADA90004 */  sw      $t1, 0x0004($t5)           ## FFFFFFF8
/* 02510 80A04140 8D0A0064 */  lw      $t2, 0x0064($t0)           ## 00000064
/* 02514 80A04144 ADAA0008 */  sw      $t2, 0x0008($t5)           ## FFFFFFFC
/* 02518 80A04148 C6080054 */  lwc1    $f8, 0x0054($s0)           ## 00000054
/* 0251C 80A0414C C7A40058 */  lwc1    $f4, 0x0058($sp)           
/* 02520 80A04150 C4266210 */  lwc1    $f6, %lo(D_80A06210)($at)  
/* 02524 80A04154 46085402 */  mul.s   $f16, $f10, $f8            
/* 02528 80A04158 E7A60010 */  swc1    $f6, 0x0010($sp)           
/* 0252C 80A0415C 46102480 */  add.s   $f18, $f4, $f16            
/* 02530 80A04160 0C280C52 */  jal     func_80A03148              
/* 02534 80A04164 E7B20058 */  swc1    $f18, 0x0058($sp)          
/* 02538 80A04168 1000006B */  beq     $zero, $zero, .L80A04318   
/* 0253C 80A0416C 860202A8 */  lh      $v0, 0x02A8($s0)           ## 000002A8
.L80A04170:
/* 02540 80A04170 24050001 */  addiu   $a1, $zero, 0x0001         ## $a1 = 00000001
/* 02544 80A04174 0C280A6A */  jal     func_80A029A8              
/* 02548 80A04178 E7A20038 */  swc1    $f2, 0x0038($sp)           
/* 0254C 80A0417C 8FAC0064 */  lw      $t4, 0x0064($sp)           
/* 02550 80A04180 C7A20038 */  lwc1    $f2, 0x0038($sp)           
/* 02554 80A04184 27AB0054 */  addiu   $t3, $sp, 0x0054           ## $t3 = FFFFFFF4
/* 02558 80A04188 8D8E1C90 */  lw      $t6, 0x1C90($t4)           ## 00001C90
/* 0255C 80A0418C 3C0180A0 */  lui     $at, %hi(D_80A06214)       ## $at = 80A00000
/* 02560 80A04190 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 02564 80A04194 AD6E0000 */  sw      $t6, 0x0000($t3)           ## FFFFFFF4
/* 02568 80A04198 8D981C94 */  lw      $t8, 0x1C94($t4)           ## 00001C94
/* 0256C 80A0419C 27A50054 */  addiu   $a1, $sp, 0x0054           ## $a1 = FFFFFFF4
/* 02570 80A041A0 24060000 */  addiu   $a2, $zero, 0x0000         ## $a2 = 00000000
/* 02574 80A041A4 AD780004 */  sw      $t8, 0x0004($t3)           ## FFFFFFF8
/* 02578 80A041A8 8D8E1C98 */  lw      $t6, 0x1C98($t4)           ## 00001C98
/* 0257C 80A041AC AD6E0008 */  sw      $t6, 0x0008($t3)           ## FFFFFFFC
/* 02580 80A041B0 C6080054 */  lwc1    $f8, 0x0054($s0)           ## 00000054
/* 02584 80A041B4 C42A6214 */  lwc1    $f10, %lo(D_80A06214)($at) 
/* 02588 80A041B8 C7B00058 */  lwc1    $f16, 0x0058($sp)          
/* 0258C 80A041BC 8FB90064 */  lw      $t9, 0x0064($sp)           
/* 02590 80A041C0 46085102 */  mul.s   $f4, $f10, $f8             
/* 02594 80A041C4 3C0180A0 */  lui     $at, %hi(D_80A06218)       ## $at = 80A00000
/* 02598 80A041C8 46048480 */  add.s   $f18, $f16, $f4            
/* 0259C 80A041CC E7B20058 */  swc1    $f18, 0x0058($sp)          
/* 025A0 80A041D0 8F221CC8 */  lw      $v0, 0x1CC8($t9)           ## 00001CC8
/* 025A4 80A041D4 50400013 */  beql    $v0, $zero, .L80A04224     
/* 025A8 80A041D8 960F02BE */  lhu     $t7, 0x02BE($s0)           ## 000002BE
/* 025AC 80A041DC C4266218 */  lwc1    $f6, %lo(D_80A06218)($at)  
/* 025B0 80A041E0 3C0741A0 */  lui     $a3, 0x41A0                ## $a3 = 41A00000
/* 025B4 80A041E4 0C280C52 */  jal     func_80A03148              
/* 025B8 80A041E8 E7A60010 */  swc1    $f6, 0x0010($sp)           
/* 025BC 80A041EC 3C0140A0 */  lui     $at, 0x40A0                ## $at = 40A00000
/* 025C0 80A041F0 44814000 */  mtc1    $at, $f8                   ## $f8 = 5.00
/* 025C4 80A041F4 C60A0068 */  lwc1    $f10, 0x0068($s0)          ## 00000068
/* 025C8 80A041F8 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 025CC 80A041FC 8FA50064 */  lw      $a1, 0x0064($sp)           
/* 025D0 80A04200 460A403E */  c.le.s  $f8, $f10                  
/* 025D4 80A04204 00000000 */  nop
/* 025D8 80A04208 45020043 */  bc1fl   .L80A04318                 
/* 025DC 80A0420C 860202A8 */  lh      $v0, 0x02A8($s0)           ## 000002A8
/* 025E0 80A04210 0C28126D */  jal     EnElf_SpawnSparkles              
/* 025E4 80A04214 24060010 */  addiu   $a2, $zero, 0x0010         ## $a2 = 00000010
/* 025E8 80A04218 1000003F */  beq     $zero, $zero, .L80A04318   
/* 025EC 80A0421C 860202A8 */  lh      $v0, 0x02A8($s0)           ## 000002A8
/* 025F0 80A04220 960F02BE */  lhu     $t7, 0x02BE($s0)           ## 000002BE
.L80A04224:
/* 025F4 80A04224 3C0140E0 */  lui     $at, 0x40E0                ## $at = 40E00000
/* 025F8 80A04228 31ED001F */  andi    $t5, $t7, 0x001F           ## $t5 = 00000000
/* 025FC 80A0422C 55A0000A */  bnel    $t5, $zero, .L80A04258     
/* 02600 80A04230 960202C4 */  lhu     $v0, 0x02C4($s0)           ## 000002C4
/* 02604 80A04234 44816000 */  mtc1    $at, $f12                  ## $f12 = 7.00
/* 02608 80A04238 0C00CFBE */  jal     Math_Rand_ZeroFloat
              
/* 0260C 80A0423C E7A20038 */  swc1    $f2, 0x0038($sp)           
/* 02610 80A04240 3C014040 */  lui     $at, 0x4040                ## $at = 40400000
/* 02614 80A04244 44818000 */  mtc1    $at, $f16                  ## $f16 = 3.00
/* 02618 80A04248 C7A20038 */  lwc1    $f2, 0x0038($sp)           
/* 0261C 80A0424C 46100100 */  add.s   $f4, $f0, $f16             
/* 02620 80A04250 E60402A0 */  swc1    $f4, 0x02A0($s0)           ## 000002A0
/* 02624 80A04254 960202C4 */  lhu     $v0, 0x02C4($s0)           ## 000002C4
.L80A04258:
/* 02628 80A04258 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 0262C 80A0425C 27A50054 */  addiu   $a1, $sp, 0x0054           ## $a1 = FFFFFFF4
/* 02630 80A04260 30480002 */  andi    $t0, $v0, 0x0002           ## $t0 = 00000000
/* 02634 80A04264 11000014 */  beq     $t0, $zero, .L80A042B8     
/* 02638 80A04268 3C0142C8 */  lui     $at, 0x42C8                ## $at = 42C80000
/* 0263C 80A0426C 3C0141F0 */  lui     $at, 0x41F0                ## $at = 41F00000
/* 02640 80A04270 44819000 */  mtc1    $at, $f18                  ## $f18 = 30.00
/* 02644 80A04274 38490002 */  xori    $t1, $v0, 0x0002           ## $t1 = 00000002
/* 02648 80A04278 3C0180A0 */  lui     $at, %hi(D_80A0621C)       ## $at = 80A00000
/* 0264C 80A0427C 4612103C */  c.lt.s  $f2, $f18                  
/* 02650 80A04280 24060000 */  addiu   $a2, $zero, 0x0000         ## $a2 = 00000000
/* 02654 80A04284 45000002 */  bc1f    .L80A04290                 
/* 02658 80A04288 00000000 */  nop
/* 0265C 80A0428C A60902C4 */  sh      $t1, 0x02C4($s0)           ## 000002C4
.L80A04290:
/* 02660 80A04290 C426621C */  lwc1    $f6, %lo(D_80A0621C)($at)  
/* 02664 80A04294 3C0741A0 */  lui     $a3, 0x41A0                ## $a3 = 41A00000
/* 02668 80A04298 0C280C52 */  jal     func_80A03148              
/* 0266C 80A0429C E7A60010 */  swc1    $f6, 0x0010($sp)           
/* 02670 80A042A0 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 02674 80A042A4 8FA50064 */  lw      $a1, 0x0064($sp)           
/* 02678 80A042A8 0C28126D */  jal     EnElf_SpawnSparkles              
/* 0267C 80A042AC 24060010 */  addiu   $a2, $zero, 0x0010         ## $a2 = 00000010
/* 02680 80A042B0 10000019 */  beq     $zero, $zero, .L80A04318   
/* 02684 80A042B4 860202A8 */  lh      $v0, 0x02A8($s0)           ## 000002A8
.L80A042B8:
/* 02688 80A042B8 44815000 */  mtc1    $at, $f10                  ## $f10 = 0.00
/* 0268C 80A042BC 00000000 */  nop
/* 02690 80A042C0 4602503C */  c.lt.s  $f10, $f2                  
/* 02694 80A042C4 00000000 */  nop
/* 02698 80A042C8 4500000A */  bc1f    .L80A042F4                 
/* 0269C 80A042CC 00000000 */  nop
/* 026A0 80A042D0 920B02C7 */  lbu     $t3, 0x02C7($s0)           ## 000002C7
/* 026A4 80A042D4 344A0002 */  ori     $t2, $v0, 0x0002           ## $t2 = 00000002
/* 026A8 80A042D8 A60A02C4 */  sh      $t2, 0x02C4($s0)           ## 000002C4
/* 026AC 80A042DC 15600003 */  bne     $t3, $zero, .L80A042EC     
/* 026B0 80A042E0 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 026B4 80A042E4 0C00BE0A */  jal     Audio_PlayActorSound2
              
/* 026B8 80A042E8 2405281B */  addiu   $a1, $zero, 0x281B         ## $a1 = 0000281B
.L80A042EC:
/* 026BC 80A042EC 240C0064 */  addiu   $t4, $zero, 0x0064         ## $t4 = 00000064
/* 026C0 80A042F0 A60C02C0 */  sh      $t4, 0x02C0($s0)           ## 000002C0
.L80A042F4:
/* 026C4 80A042F4 3C0180A0 */  lui     $at, %hi(D_80A06220)       ## $at = 80A00000
/* 026C8 80A042F8 C4286220 */  lwc1    $f8, %lo(D_80A06220)($at)  
/* 026CC 80A042FC 8E0702A0 */  lw      $a3, 0x02A0($s0)           ## 000002A0
/* 026D0 80A04300 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 026D4 80A04304 27A50054 */  addiu   $a1, $sp, 0x0054           ## $a1 = FFFFFFF4
/* 026D8 80A04308 24060000 */  addiu   $a2, $zero, 0x0000         ## $a2 = 00000000
/* 026DC 80A0430C 0C280C52 */  jal     func_80A03148              
/* 026E0 80A04310 E7A80010 */  swc1    $f8, 0x0010($sp)           
/* 026E4 80A04314 860202A8 */  lh      $v0, 0x02A8($s0)           ## 000002A8
.L80A04318:
/* 026E8 80A04318 24010007 */  addiu   $at, $zero, 0x0007         ## $at = 00000007
/* 026EC 80A0431C 14410003 */  bne     $v0, $at, .L80A0432C       
/* 026F0 80A04320 C7B0003C */  lwc1    $f16, 0x003C($sp)          
/* 026F4 80A04324 10000011 */  beq     $zero, $zero, .L80A0436C   
/* 026F8 80A04328 E6100050 */  swc1    $f16, 0x0050($s0)          ## 00000050
.L80A0432C:
/* 026FC 80A0432C 24010008 */  addiu   $at, $zero, 0x0008         ## $at = 00000008
/* 02700 80A04330 14410004 */  bne     $v0, $at, .L80A04344       
/* 02704 80A04334 26040050 */  addiu   $a0, $s0, 0x0050           ## $a0 = 00000050
/* 02708 80A04338 44802000 */  mtc1    $zero, $f4                 ## $f4 = 0.00
/* 0270C 80A0433C 1000000B */  beq     $zero, $zero, .L80A0436C   
/* 02710 80A04340 E6040050 */  swc1    $f4, 0x0050($s0)           ## 00000050
.L80A04344:
/* 02714 80A04344 3C0180A0 */  lui     $at, %hi(D_80A06224)       ## $at = 80A00000
/* 02718 80A04348 C4326224 */  lwc1    $f18, %lo(D_80A06224)($at) 
/* 0271C 80A0434C 3C053C03 */  lui     $a1, 0x3C03                ## $a1 = 3C030000
/* 02720 80A04350 3C063E99 */  lui     $a2, 0x3E99                ## $a2 = 3E990000
/* 02724 80A04354 3C073A51 */  lui     $a3, 0x3A51                ## $a3 = 3A510000
/* 02728 80A04358 34E7B718 */  ori     $a3, $a3, 0xB718           ## $a3 = 3A51B718
/* 0272C 80A0435C 34C6999A */  ori     $a2, $a2, 0x999A           ## $a2 = 3E99999A
/* 02730 80A04360 34A5126F */  ori     $a1, $a1, 0x126F           ## $a1 = 3C03126F
/* 02734 80A04364 0C01E0C4 */  jal     Math_SmoothScaleMaxMinF
              
/* 02738 80A04368 E7B20010 */  swc1    $f18, 0x0010($sp)          
.L80A0436C:
/* 0273C 80A0436C 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 02740 80A04370 0C280ECA */  jal     EnElf_UpdateLights              
/* 02744 80A04374 8FA50064 */  lw      $a1, 0x0064($sp)           
/* 02748 80A04378 8FBF0024 */  lw      $ra, 0x0024($sp)           
/* 0274C 80A0437C 8FB00020 */  lw      $s0, 0x0020($sp)           
/* 02750 80A04380 27BD0060 */  addiu   $sp, $sp, 0x0060           ## $sp = 00000000
/* 02754 80A04384 03E00008 */  jr      $ra                        
/* 02758 80A04388 00000000 */  nop
