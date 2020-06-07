.late_rodata
glabel D_80B7B47C
    .float 3.99900007248

glabel jtbl_80B7B480
.word L80B6EE24
.word L80B6F0C4
.word L80B6F94C
.word L80B6FA3C
.word L80B70890
.word L80B709D0
glabel D_80B7B498
    .float 3.14159274101

glabel D_80B7B49C
    .float 1.9

glabel D_80B7B4A0
    .float 0.9
    

glabel D_80B7B4A4
    .float 3.14159274101
    

glabel D_80B7B4A8
    .float 3.14159274101
    

glabel D_80B7B4AC
    .float 0.001
    

glabel D_80B7B4B0
    .float 846400.0
    

glabel D_80B7B4B4
    .float 1350.0
    

glabel D_80B7B4B8
    .float 1100.0
    

glabel D_80B7B4BC
    .float 0.11
    

glabel D_80B7B4C0
    .float 0.2
    

glabel D_80B7B4C4
    .float 6.28
    

glabel D_80B7B4C8
    .float 0.02
    

glabel D_80B7B4CC
    .float 0.025
    

glabel D_80B7B4D0
    .float 250000.0
    

glabel D_80B7B4D4
    .float -0.523598790169
    

glabel D_80B7B4D8
    .float 846400.0
    

glabel D_80B7B4DC
    .float 0.0166666675359
    

glabel D_80B7B4E0
    .float 0.0166666675359
    

glabel D_80B7B4E4
    .float 0.3
    

glabel D_80B7B4E8
    .float 0.3
    

glabel D_80B7B4EC
    .float 0.2
    

glabel D_80B7B4F0
    .float 0.8
    

glabel D_80B7B4F4
    .float 0.1
    

glabel D_80B7B4F8
    .float 1.99899995327
    

glabel D_80B7B4FC
    .float 3.14159274101
    

glabel D_80B7B500
    .float 0.2
    

glabel D_80B7B504
    .float 3.14159274101
    

glabel D_80B7B508
    .float 3.14159274101
    

glabel D_80B7B50C
    .float 0.11
    

glabel D_80B7B510
    .float 3.14159274101
    

glabel D_80B7B514
    .float 3.14159274101
    

glabel D_80B7B518
    .float 3.14159274101
    

glabel D_80B7B51C
    .float 3.14159274101
    

glabel D_80B7B520
    .float 3.14159274101
    

glabel D_80B7B524
    .float 0.2
    

glabel D_80B7B528
    .float 846400.0
    

glabel D_80B7B52C
    .float 0.1
    

glabel D_80B7B530
    .float 0.000500000081956
    

.text
glabel func_80B6E9E0
/* 05040 80B6E9E0 27BDFF18 */  addiu   $sp, $sp, 0xFF18           ## $sp = FFFFFF18
/* 05044 80B6E9E4 AFBF002C */  sw      $ra, 0x002C($sp)           
/* 05048 80B6E9E8 AFB00028 */  sw      $s0, 0x0028($sp)           
/* 0504C 80B6E9EC AFA400E8 */  sw      $a0, 0x00E8($sp)           
/* 05050 80B6E9F0 AFA500EC */  sw      $a1, 0x00EC($sp)           
/* 05054 80B6E9F4 8CAF1C44 */  lw      $t7, 0x1C44($a1)           ## 00001C44
/* 05058 80B6E9F8 3C1880B8 */  lui     $t8, %hi(D_80B7AFA0)       ## $t8 = 80B80000
/* 0505C 80B6E9FC 2718AFA0 */  addiu   $t8, $t8, %lo(D_80B7AFA0)  ## $t8 = 80B7AFA0
/* 05060 80B6EA00 AFAF00C0 */  sw      $t7, 0x00C0($sp)           
/* 05064 80B6EA04 8F0E0000 */  lw      $t6, 0x0000($t8)           ## 80B7AFA0
/* 05068 80B6EA08 27A600B4 */  addiu   $a2, $sp, 0x00B4           ## $a2 = FFFFFFCC
/* 0506C 80B6EA0C 3C0D80B8 */  lui     $t5, %hi(D_80B7E0AE)       ## $t5 = 80B80000
/* 05070 80B6EA10 ACCE0000 */  sw      $t6, 0x0000($a2)           ## FFFFFFCC
/* 05074 80B6EA14 8F190004 */  lw      $t9, 0x0004($t8)           ## 80B7AFA4
/* 05078 80B6EA18 25ADE0AE */  addiu   $t5, $t5, %lo(D_80B7E0AE)  ## $t5 = 80B7E0AE
/* 0507C 80B6EA1C 3C0980B8 */  lui     $t1, %hi(D_80B7E0B0)       ## $t1 = 80B80000
/* 05080 80B6EA20 85AF0000 */  lh      $t7, 0x0000($t5)           ## 80B7E0AE
/* 05084 80B6EA24 2529E0B0 */  addiu   $t1, $t1, %lo(D_80B7E0B0)  ## $t1 = 80B7E0B0
/* 05088 80B6EA28 ACD90004 */  sw      $t9, 0x0004($a2)           ## FFFFFFD0
/* 0508C 80B6EA2C 8F0E0008 */  lw      $t6, 0x0008($t8)           ## 80B7AFA8
/* 05090 80B6EA30 85220000 */  lh      $v0, 0x0000($t1)           ## 80B7E0B0
/* 05094 80B6EA34 25F80001 */  addiu   $t8, $t7, 0x0001           ## $t8 = 00000001
/* 05098 80B6EA38 A5B80000 */  sh      $t8, 0x0000($t5)           ## 80B7E0AE
/* 0509C 80B6EA3C 10400003 */  beq     $v0, $zero, .L80B6EA4C     
/* 050A0 80B6EA40 ACCE0008 */  sw      $t6, 0x0008($a2)           ## FFFFFFD4
/* 050A4 80B6EA44 2459FFFF */  addiu   $t9, $v0, 0xFFFF           ## $t9 = FFFFFFFF
/* 050A8 80B6EA48 A5390000 */  sh      $t9, 0x0000($t1)           ## 80B7E0B0
.L80B6EA4C:
/* 050AC 80B6EA4C 3C0B80B8 */  lui     $t3, %hi(D_80B7E0B2)       ## $t3 = 80B80000
/* 050B0 80B6EA50 256BE0B2 */  addiu   $t3, $t3, %lo(D_80B7E0B2)  ## $t3 = 80B7E0B2
/* 050B4 80B6EA54 85620000 */  lh      $v0, 0x0000($t3)           ## 80B7E0B2
/* 050B8 80B6EA58 3C0A80B8 */  lui     $t2, %hi(D_80B7E0B4)       ## $t2 = 80B80000
/* 050BC 80B6EA5C 254AE0B4 */  addiu   $t2, $t2, %lo(D_80B7E0B4)  ## $t2 = 80B7E0B4
/* 050C0 80B6EA60 10400003 */  beq     $v0, $zero, .L80B6EA70     
/* 050C4 80B6EA64 3C0380B8 */  lui     $v1, %hi(D_80B7E122)       ## $v1 = 80B80000
/* 050C8 80B6EA68 244EFFFF */  addiu   $t6, $v0, 0xFFFF           ## $t6 = FFFFFFFF
/* 050CC 80B6EA6C A56E0000 */  sh      $t6, 0x0000($t3)           ## 80B7E0B2
.L80B6EA70:
/* 050D0 80B6EA70 85420000 */  lh      $v0, 0x0000($t2)           ## 80B7E0B4
/* 050D4 80B6EA74 3C0480B8 */  lui     $a0, %hi(D_80B7E150)       ## $a0 = 80B80000
/* 050D8 80B6EA78 2463E122 */  addiu   $v1, $v1, %lo(D_80B7E122)  ## $v1 = 80B7E122
/* 050DC 80B6EA7C 10400003 */  beq     $v0, $zero, .L80B6EA8C     
/* 050E0 80B6EA80 2484E150 */  addiu   $a0, $a0, %lo(D_80B7E150)  ## $a0 = 80B7E150
/* 050E4 80B6EA84 244FFFFF */  addiu   $t7, $v0, 0xFFFF           ## $t7 = FFFFFFFF
/* 050E8 80B6EA88 A54F0000 */  sh      $t7, 0x0000($t2)           ## 80B7E0B4
.L80B6EA8C:
/* 050EC 80B6EA8C 84620000 */  lh      $v0, 0x0000($v1)           ## 80B7E122
/* 050F0 80B6EA90 3C0580B8 */  lui     $a1, %hi(D_80B7A6A4)       ## $a1 = 80B80000
/* 050F4 80B6EA94 24A5A6A4 */  addiu   $a1, $a1, %lo(D_80B7A6A4)  ## $a1 = 80B7A6A4
/* 050F8 80B6EA98 10400003 */  beq     $v0, $zero, .L80B6EAA8     
/* 050FC 80B6EA9C 3C0780B8 */  lui     $a3, %hi(D_80B7E114)       ## $a3 = 80B80000
/* 05100 80B6EAA0 2458FFFF */  addiu   $t8, $v0, 0xFFFF           ## $t8 = FFFFFFFF
/* 05104 80B6EAA4 A4780000 */  sh      $t8, 0x0000($v1)           ## 80B7E122
.L80B6EAA8:
/* 05108 80B6EAA8 84820000 */  lh      $v0, 0x0000($a0)           ## 80B7E150
/* 0510C 80B6EAAC 3C0380B8 */  lui     $v1, %hi(D_80B7E0A4)       ## $v1 = 80B80000
/* 05110 80B6EAB0 2463E0A4 */  addiu   $v1, $v1, %lo(D_80B7E0A4)  ## $v1 = 80B7E0A4
/* 05114 80B6EAB4 10400003 */  beq     $v0, $zero, .L80B6EAC4     
/* 05118 80B6EAB8 24E7E114 */  addiu   $a3, $a3, %lo(D_80B7E114)  ## $a3 = 80B7E114
/* 0511C 80B6EABC 2459FFFF */  addiu   $t9, $v0, 0xFFFF           ## $t9 = FFFFFFFF
/* 05120 80B6EAC0 A4990000 */  sh      $t9, 0x0000($a0)           ## 80B7E150
.L80B6EAC4:
/* 05124 80B6EAC4 90A20000 */  lbu     $v0, 0x0000($a1)           ## 80B7A6A4
/* 05128 80B6EAC8 3C0880B8 */  lui     $t0, %hi(D_80B7E0B6)       ## $t0 = 80B80000
/* 0512C 80B6EACC 2508E0B6 */  addiu   $t0, $t0, %lo(D_80B7E0B6)  ## $t0 = 80B7E0B6
/* 05130 80B6EAD0 10400002 */  beq     $v0, $zero, .L80B6EADC     
/* 05134 80B6EAD4 244EFFFF */  addiu   $t6, $v0, 0xFFFF           ## $t6 = FFFFFFFF
/* 05138 80B6EAD8 A0AE0000 */  sb      $t6, 0x0000($a1)           ## 80B7A6A4
.L80B6EADC:
/* 0513C 80B6EADC 84620000 */  lh      $v0, 0x0000($v1)           ## 80B7E0A4
/* 05140 80B6EAE0 240E0002 */  addiu   $t6, $zero, 0x0002         ## $t6 = 00000002
/* 05144 80B6EAE4 3C0180B8 */  lui     $at, %hi(D_80B7E084)       ## $at = 80B80000
/* 05148 80B6EAE8 10400002 */  beq     $v0, $zero, .L80B6EAF4     
/* 0514C 80B6EAEC 244FFFFF */  addiu   $t7, $v0, 0xFFFF           ## $t7 = FFFFFFFF
/* 05150 80B6EAF0 A46F0000 */  sh      $t7, 0x0000($v1)           ## 80B7E0A4
.L80B6EAF4:
/* 05154 80B6EAF4 80E20000 */  lb      $v0, 0x0000($a3)           ## 80B7E114
/* 05158 80B6EAF8 3C0380B8 */  lui     $v1, %hi(D_80B7E0AC)       ## $v1 = 80B80000
/* 0515C 80B6EAFC 2463E0AC */  addiu   $v1, $v1, %lo(D_80B7E0AC)  ## $v1 = 80B7E0AC
/* 05160 80B6EB00 10400002 */  beq     $v0, $zero, .L80B6EB0C     
/* 05164 80B6EB04 2458FFFF */  addiu   $t8, $v0, 0xFFFF           ## $t8 = FFFFFFFF
/* 05168 80B6EB08 A0F80000 */  sb      $t8, 0x0000($a3)           ## 80B7E114
.L80B6EB0C:
/* 0516C 80B6EB0C 84790000 */  lh      $t9, 0x0000($v1)           ## 80B7E0AC
/* 05170 80B6EB10 240C0001 */  addiu   $t4, $zero, 0x0001         ## $t4 = 00000001
/* 05174 80B6EB14 3C0280B8 */  lui     $v0, %hi(D_80B7E075)       ## $v0 = 80B80000
/* 05178 80B6EB18 5599009A */  bnel    $t4, $t9, .L80B6ED84       
/* 0517C 80B6EB1C 8FA400EC */  lw      $a0, 0x00EC($sp)           
/* 05180 80B6EB20 A46E0000 */  sh      $t6, 0x0000($v1)           ## 80B7E0AC
/* 05184 80B6EB24 A420E084 */  sh      $zero, %lo(D_80B7E084)($at) 
/* 05188 80B6EB28 3C0180B8 */  lui     $at, %hi(D_80B7E082)       ## $at = 80B80000
/* 0518C 80B6EB2C A020E082 */  sb      $zero, %lo(D_80B7E082)($at) 
/* 05190 80B6EB30 A1000000 */  sb      $zero, 0x0000($t0)         ## 80B7E0B6
/* 05194 80B6EB34 9042E075 */  lbu     $v0, %lo(D_80B7E075)($v0)  
/* 05198 80B6EB38 3C0F8016 */  lui     $t7, %hi(gSaveContext+0xec0)
/* 0519C 80B6EB3C 15820005 */  bne     $t4, $v0, .L80B6EB54       
/* 051A0 80B6EB40 00000000 */  nop
/* 051A4 80B6EB44 8DEFF520 */  lw      $t7, %lo(gSaveContext+0xec0)($t7)
/* 051A8 80B6EB48 31F80400 */  andi    $t8, $t7, 0x0400           ## $t8 = 00000000
/* 051AC 80B6EB4C 17000006 */  bne     $t8, $zero, .L80B6EB68     
/* 051B0 80B6EB50 00000000 */  nop
.L80B6EB54:
/* 051B4 80B6EB54 11820037 */  beq     $t4, $v0, .L80B6EC34       
/* 051B8 80B6EB58 3C198016 */  lui     $t9, %hi(gSaveContext+0xec0)
/* 051BC 80B6EB5C 8F39F520 */  lw      $t9, %lo(gSaveContext+0xec0)($t9)
/* 051C0 80B6EB60 332E0800 */  andi    $t6, $t9, 0x0800           ## $t6 = 00000000
/* 051C4 80B6EB64 11C00033 */  beq     $t6, $zero, .L80B6EC34     
.L80B6EB68:
/* 051C8 80B6EB68 3C0180B8 */  lui     $at, %hi(D_80B7B47C)       ## $at = 80B80000
/* 051CC 80B6EB6C 0C00CFBE */  jal     Math_Rand_ZeroFloat
              
/* 051D0 80B6EB70 C42CB47C */  lwc1    $f12, %lo(D_80B7B47C)($at) 
/* 051D4 80B6EB74 444FF800 */  cfc1    $t7, $31
/* 051D8 80B6EB78 24180001 */  addiu   $t8, $zero, 0x0001         ## $t8 = 00000001
/* 051DC 80B6EB7C 44D8F800 */  ctc1    $t8, $31
/* 051E0 80B6EB80 3C0A80B8 */  lui     $t2, %hi(D_80B7E0B4)       ## $t2 = 80B80000
/* 051E4 80B6EB84 3C0D80B8 */  lui     $t5, %hi(D_80B7E0AE)       ## $t5 = 80B80000
/* 051E8 80B6EB88 46000124 */  cvt.w.s $f4, $f0                   
/* 051EC 80B6EB8C 3C0B80B8 */  lui     $t3, %hi(D_80B7E0B2)       ## $t3 = 80B80000
/* 051F0 80B6EB90 256BE0B2 */  addiu   $t3, $t3, %lo(D_80B7E0B2)  ## $t3 = 80B7E0B2
/* 051F4 80B6EB94 25ADE0AE */  addiu   $t5, $t5, %lo(D_80B7E0AE)  ## $t5 = 80B7E0AE
/* 051F8 80B6EB98 4458F800 */  cfc1    $t8, $31
/* 051FC 80B6EB9C 254AE0B4 */  addiu   $t2, $t2, %lo(D_80B7E0B4)  ## $t2 = 80B7E0B4
/* 05200 80B6EBA0 27A600B4 */  addiu   $a2, $sp, 0x00B4           ## $a2 = FFFFFFCC
/* 05204 80B6EBA4 33180078 */  andi    $t8, $t8, 0x0078           ## $t8 = 00000000
/* 05208 80B6EBA8 13000013 */  beq     $t8, $zero, .L80B6EBF8     
/* 0520C 80B6EBAC 3C0980B8 */  lui     $t1, %hi(D_80B7E0B0)       ## $t1 = 80B80000
/* 05210 80B6EBB0 3C014F00 */  lui     $at, 0x4F00                ## $at = 4F000000
/* 05214 80B6EBB4 44812000 */  mtc1    $at, $f4                   ## $f4 = 2147483648.00
/* 05218 80B6EBB8 24180001 */  addiu   $t8, $zero, 0x0001         ## $t8 = 00000001
/* 0521C 80B6EBBC 46040101 */  sub.s   $f4, $f0, $f4              
/* 05220 80B6EBC0 44D8F800 */  ctc1    $t8, $31
/* 05224 80B6EBC4 00000000 */  nop
/* 05228 80B6EBC8 46002124 */  cvt.w.s $f4, $f4                   
/* 0522C 80B6EBCC 4458F800 */  cfc1    $t8, $31
/* 05230 80B6EBD0 00000000 */  nop
/* 05234 80B6EBD4 33180078 */  andi    $t8, $t8, 0x0078           ## $t8 = 00000000
/* 05238 80B6EBD8 17000005 */  bne     $t8, $zero, .L80B6EBF0     
/* 0523C 80B6EBDC 00000000 */  nop
/* 05240 80B6EBE0 44182000 */  mfc1    $t8, $f4                   
/* 05244 80B6EBE4 3C018000 */  lui     $at, 0x8000                ## $at = 80000000
/* 05248 80B6EBE8 10000007 */  beq     $zero, $zero, .L80B6EC08   
/* 0524C 80B6EBEC 0301C025 */  or      $t8, $t8, $at              ## $t8 = 80000000
.L80B6EBF0:
/* 05250 80B6EBF0 10000005 */  beq     $zero, $zero, .L80B6EC08   
/* 05254 80B6EBF4 2418FFFF */  addiu   $t8, $zero, 0xFFFF         ## $t8 = FFFFFFFF
.L80B6EBF8:
/* 05258 80B6EBF8 44182000 */  mfc1    $t8, $f4                   
/* 0525C 80B6EBFC 00000000 */  nop
/* 05260 80B6EC00 0700FFFB */  bltz    $t8, .L80B6EBF0            
/* 05264 80B6EC04 00000000 */  nop
.L80B6EC08:
/* 05268 80B6EC08 44CFF800 */  ctc1    $t7, $31
/* 0526C 80B6EC0C 270E0001 */  addiu   $t6, $t8, 0x0001           ## $t6 = 00000000
/* 05270 80B6EC10 3C0180B8 */  lui     $at, %hi(D_80B7A66C)       ## $at = 80B80000
/* 05274 80B6EC14 3C0880B8 */  lui     $t0, %hi(D_80B7E0B6)       ## $t0 = 80B80000
/* 05278 80B6EC18 3C0780B8 */  lui     $a3, %hi(D_80B7E114)       ## $a3 = 80B80000
/* 0527C 80B6EC1C 3C0480B8 */  lui     $a0, %hi(D_80B7E150)       ## $a0 = 80B80000
/* 05280 80B6EC20 2484E150 */  addiu   $a0, $a0, %lo(D_80B7E150)  ## $a0 = 80B7E150
/* 05284 80B6EC24 24E7E114 */  addiu   $a3, $a3, %lo(D_80B7E114)  ## $a3 = 80B7E114
/* 05288 80B6EC28 2508E0B6 */  addiu   $t0, $t0, %lo(D_80B7E0B6)  ## $t0 = 80B7E0B6
/* 0528C 80B6EC2C A02EA66C */  sb      $t6, %lo(D_80B7A66C)($at)  
/* 05290 80B6EC30 2529E0B0 */  addiu   $t1, $t1, %lo(D_80B7E0B0)  ## $t1 = 80B7E0B0
.L80B6EC34:
/* 05294 80B6EC34 3C014402 */  lui     $at, 0x4402                ## $at = 44020000
/* 05298 80B6EC38 44813000 */  mtc1    $at, $f6                   ## $f6 = 520.00
/* 0529C 80B6EC3C 3C0180B8 */  lui     $at, %hi(D_80B7E148)       ## $at = 80B80000
/* 052A0 80B6EC40 3C0C80B8 */  lui     $t4, %hi(D_80B7E120)       ## $t4 = 80B80000
/* 052A4 80B6EC44 E426E148 */  swc1    $f6, %lo(D_80B7E148)($at)  
/* 052A8 80B6EC48 3C014343 */  lui     $at, 0x4343                ## $at = 43430000
/* 052AC 80B6EC4C 44814000 */  mtc1    $at, $f8                   ## $f8 = 195.00
/* 052B0 80B6EC50 3C0180B8 */  lui     $at, %hi(D_80B7E144)       ## $at = 80B80000
/* 052B4 80B6EC54 258CE120 */  addiu   $t4, $t4, %lo(D_80B7E120)  ## $t4 = 80B7E120
/* 052B8 80B6EC58 E428E144 */  swc1    $f8, %lo(D_80B7E144)($at)  
/* 052BC 80B6EC5C A4800000 */  sh      $zero, 0x0000($a0)         ## 80B7E150
/* 052C0 80B6EC60 848F0000 */  lh      $t7, 0x0000($a0)           ## 80B7E150
/* 052C4 80B6EC64 44805000 */  mtc1    $zero, $f10                ## $f10 = 0.00
/* 052C8 80B6EC68 3C0580B8 */  lui     $a1, %hi(D_80B7E108)       ## $a1 = 80B80000
/* 052CC 80B6EC6C A0EF0000 */  sb      $t7, 0x0000($a3)           ## 80B7E114
/* 052D0 80B6EC70 80F80000 */  lb      $t8, 0x0000($a3)           ## 80B7E114
/* 052D4 80B6EC74 3C0180B8 */  lui     $at, %hi(D_80B7A694)       ## $at = 80B80000
/* 052D8 80B6EC78 24A5E108 */  addiu   $a1, $a1, %lo(D_80B7E108)  ## $a1 = 80B7E108
/* 052DC 80B6EC7C 331900FF */  andi    $t9, $t8, 0x00FF           ## $t9 = 000000FF
/* 052E0 80B6EC80 A5590000 */  sh      $t9, 0x0000($t2)           ## 80B7E0B4
/* 052E4 80B6EC84 854E0000 */  lh      $t6, 0x0000($t2)           ## 80B7E0B4
/* 052E8 80B6EC88 A1980000 */  sb      $t8, 0x0000($t4)           ## 80B7E120
/* 052EC 80B6EC8C 3C0280B8 */  lui     $v0, %hi(D_80B7E154)       ## $v0 = 80B80000
/* 052F0 80B6EC90 A56E0000 */  sh      $t6, 0x0000($t3)           ## 80B7E0B2
/* 052F4 80B6EC94 856F0000 */  lh      $t7, 0x0000($t3)           ## 80B7E0B2
/* 052F8 80B6EC98 2442E154 */  addiu   $v0, $v0, %lo(D_80B7E154)  ## $v0 = 80B7E154
/* 052FC 80B6EC9C 3C0480B8 */  lui     $a0, %hi(D_80B7F428)       ## $a0 = 80B80000
/* 05300 80B6ECA0 A52F0000 */  sh      $t7, 0x0000($t1)           ## 80B7E0B0
/* 05304 80B6ECA4 85380000 */  lh      $t8, 0x0000($t1)           ## 80B7E0B0
/* 05308 80B6ECA8 3C0F80B8 */  lui     $t7, %hi(D_80B7E128)       ## $t7 = 80B80000
/* 0530C 80B6ECAC 25EFE128 */  addiu   $t7, $t7, %lo(D_80B7E128)  ## $t7 = 80B7E128
/* 05310 80B6ECB0 A5B80000 */  sh      $t8, 0x0000($t5)           ## 80B7E0AE
/* 05314 80B6ECB4 85B90000 */  lh      $t9, 0x0000($t5)           ## 80B7E0AE
/* 05318 80B6ECB8 3C0980B8 */  lui     $t1, %hi(D_80B7E168)       ## $t1 = 80B80000
/* 0531C 80B6ECBC 2529E168 */  addiu   $t1, $t1, %lo(D_80B7E168)  ## $t1 = 80B7E168
/* 05320 80B6ECC0 A1190000 */  sb      $t9, 0x0000($t0)           ## 80B7E0B6
/* 05324 80B6ECC4 332E00FF */  andi    $t6, $t9, 0x00FF           ## $t6 = 000000FF
/* 05328 80B6ECC8 A42EA694 */  sh      $t6, %lo(D_80B7A694)($at)  
/* 0532C 80B6ECCC E4AA0000 */  swc1    $f10, 0x0000($a1)          ## 80B7E108
/* 05330 80B6ECD0 C4A40000 */  lwc1    $f4, 0x0000($a1)           ## 80B7E108
/* 05334 80B6ECD4 3C0180B8 */  lui     $at, %hi(D_80B7E104)       ## $at = 80B80000
/* 05338 80B6ECD8 3C0880B8 */  lui     $t0, %hi(D_80B7EAC8)       ## $t0 = 80B80000
/* 0533C 80B6ECDC E4440000 */  swc1    $f4, 0x0000($v0)           ## 80B7E154
/* 05340 80B6ECE0 C4460000 */  lwc1    $f6, 0x0000($v0)           ## 80B7E154
/* 05344 80B6ECE4 2508EAC8 */  addiu   $t0, $t0, %lo(D_80B7EAC8)  ## $t0 = 80B7EAC8
/* 05348 80B6ECE8 2484F428 */  addiu   $a0, $a0, %lo(D_80B7F428)  ## $a0 = 80B7F428
/* 0534C 80B6ECEC E426E104 */  swc1    $f6, %lo(D_80B7E104)($at)  
/* 05350 80B6ECF0 8CD90000 */  lw      $t9, 0x0000($a2)           ## FFFFFFCC
/* 05354 80B6ECF4 00008025 */  or      $s0, $zero, $zero          ## $s0 = 00000000
/* 05358 80B6ECF8 2403000C */  addiu   $v1, $zero, 0x000C         ## $v1 = 0000000C
/* 0535C 80B6ECFC ADF90000 */  sw      $t9, 0x0000($t7)           ## 80B7E128
/* 05360 80B6ED00 8CD80004 */  lw      $t8, 0x0004($a2)           ## FFFFFFD0
/* 05364 80B6ED04 ADF80004 */  sw      $t8, 0x0004($t7)           ## 80B7E12C
/* 05368 80B6ED08 8CD90008 */  lw      $t9, 0x0008($a2)           ## FFFFFFD4
/* 0536C 80B6ED0C ADF90008 */  sw      $t9, 0x0008($t7)           ## 80B7E130
.L80B6ED10:
/* 05370 80B6ED10 02030019 */  multu   $s0, $v1                   
/* 05374 80B6ED14 8CD80000 */  lw      $t8, 0x0000($a2)           ## FFFFFFCC
/* 05378 80B6ED18 26100001 */  addiu   $s0, $s0, 0x0001           ## $s0 = 00000001
/* 0537C 80B6ED1C 00108400 */  sll     $s0, $s0, 16               
/* 05380 80B6ED20 00108403 */  sra     $s0, $s0, 16               
/* 05384 80B6ED24 2A0100C8 */  slti    $at, $s0, 0x00C8           
/* 05388 80B6ED28 00001012 */  mflo    $v0                        
/* 0538C 80B6ED2C 01227021 */  addu    $t6, $t1, $v0              
/* 05390 80B6ED30 ADD80000 */  sw      $t8, 0x0000($t6)           ## 000000FF
/* 05394 80B6ED34 8CCF0004 */  lw      $t7, 0x0004($a2)           ## FFFFFFD0
/* 05398 80B6ED38 0102C821 */  addu    $t9, $t0, $v0              
/* 0539C 80B6ED3C ADCF0004 */  sw      $t7, 0x0004($t6)           ## 00000103
/* 053A0 80B6ED40 8CD80008 */  lw      $t8, 0x0008($a2)           ## FFFFFFD4
/* 053A4 80B6ED44 ADD80008 */  sw      $t8, 0x0008($t6)           ## 00000107
/* 053A8 80B6ED48 8CCF0000 */  lw      $t7, 0x0000($a2)           ## FFFFFFCC
/* 053AC 80B6ED4C 0082C021 */  addu    $t8, $a0, $v0              
/* 053B0 80B6ED50 AF2F0000 */  sw      $t7, 0x0000($t9)           ## 000000FF
/* 053B4 80B6ED54 8CCE0004 */  lw      $t6, 0x0004($a2)           ## FFFFFFD0
/* 053B8 80B6ED58 AF2E0004 */  sw      $t6, 0x0004($t9)           ## 00000103
/* 053BC 80B6ED5C 8CCF0008 */  lw      $t7, 0x0008($a2)           ## FFFFFFD4
/* 053C0 80B6ED60 AF2F0008 */  sw      $t7, 0x0008($t9)           ## 00000107
/* 053C4 80B6ED64 8CCE0000 */  lw      $t6, 0x0000($a2)           ## FFFFFFCC
/* 053C8 80B6ED68 AF0E0000 */  sw      $t6, 0x0000($t8)           ## FFFFFFFF
/* 053CC 80B6ED6C 8CD90004 */  lw      $t9, 0x0004($a2)           ## FFFFFFD0
/* 053D0 80B6ED70 AF190004 */  sw      $t9, 0x0004($t8)           ## 00000003
/* 053D4 80B6ED74 8CCE0008 */  lw      $t6, 0x0008($a2)           ## FFFFFFD4
/* 053D8 80B6ED78 1420FFE5 */  bne     $at, $zero, .L80B6ED10     
/* 053DC 80B6ED7C AF0E0008 */  sw      $t6, 0x0008($t8)           ## 00000007
/* 053E0 80B6ED80 8FA400EC */  lw      $a0, 0x00EC($sp)           
.L80B6ED84:
/* 053E4 80B6ED84 3C010001 */  lui     $at, 0x0001                ## $at = 00010000
/* 053E8 80B6ED88 3C1080B8 */  lui     $s0, %hi(D_80B7E108)       ## $s0 = 80B80000
/* 053EC 80B6ED8C 34211D60 */  ori     $at, $at, 0x1D60           ## $at = 00011D60
/* 053F0 80B6ED90 3C0580B8 */  lui     $a1, %hi(D_80B7E0B8)       ## $a1 = 80B80000
/* 053F4 80B6ED94 3C0680B8 */  lui     $a2, %hi(D_80B7AF94)       ## $a2 = 80B80000
/* 053F8 80B6ED98 3C0780B8 */  lui     $a3, %hi(D_80B7FEA4)       ## $a3 = 80B80000
/* 053FC 80B6ED9C 2610E108 */  addiu   $s0, $s0, %lo(D_80B7E108)  ## $s0 = 80B7E108
/* 05400 80B6EDA0 24E7FEA4 */  addiu   $a3, $a3, %lo(D_80B7FEA4)  ## $a3 = 80B7FEA4
/* 05404 80B6EDA4 24C6AF94 */  addiu   $a2, $a2, %lo(D_80B7AF94)  ## $a2 = 80B7AF94
/* 05408 80B6EDA8 24A5E0B8 */  addiu   $a1, $a1, %lo(D_80B7E0B8)  ## $a1 = 80B7E0B8
/* 0540C 80B6EDAC 0C029B84 */  jal     func_800A6E10              
/* 05410 80B6EDB0 00812021 */  addu    $a0, $a0, $at              
/* 05414 80B6EDB4 3C0F80B8 */  lui     $t7, %hi(D_80B7A694)       ## $t7 = 80B80000
/* 05418 80B6EDB8 85EFA694 */  lh      $t7, %lo(D_80B7A694)($t7)  
/* 0541C 80B6EDBC 02002025 */  or      $a0, $s0, $zero            ## $a0 = 80B7E108
/* 05420 80B6EDC0 3C054396 */  lui     $a1, 0x4396                ## $a1 = 43960000
/* 05424 80B6EDC4 15E00009 */  bne     $t7, $zero, .L80B6EDEC     
/* 05428 80B6EDC8 3C063F80 */  lui     $a2, 0x3F80                ## $a2 = 3F800000
/* 0542C 80B6EDCC 02002025 */  or      $a0, $s0, $zero            ## $a0 = 80B7E108
/* 05430 80B6EDD0 3C05C448 */  lui     $a1, 0xC448                ## $a1 = C4480000
/* 05434 80B6EDD4 3C063F80 */  lui     $a2, 0x3F80                ## $a2 = 3F800000
/* 05438 80B6EDD8 0C01E107 */  jal     Math_SmoothScaleMaxF
              
/* 0543C 80B6EDDC 3C0741A0 */  lui     $a3, 0x41A0                ## $a3 = 41A00000
/* 05440 80B6EDE0 3C0880B8 */  lui     $t0, %hi(D_80B7EAC8)       ## $t0 = 80B80000
/* 05444 80B6EDE4 10000005 */  beq     $zero, $zero, .L80B6EDFC   
/* 05448 80B6EDE8 2508EAC8 */  addiu   $t0, $t0, %lo(D_80B7EAC8)  ## $t0 = 80B7EAC8
.L80B6EDEC:
/* 0544C 80B6EDEC 0C01E107 */  jal     Math_SmoothScaleMaxF
              
/* 05450 80B6EDF0 3C0741A0 */  lui     $a3, 0x41A0                ## $a3 = 41A00000
/* 05454 80B6EDF4 3C0880B8 */  lui     $t0, %hi(D_80B7EAC8)       ## $t0 = 80B80000
/* 05458 80B6EDF8 2508EAC8 */  addiu   $t0, $t0, %lo(D_80B7EAC8)  ## $t0 = 80B7EAC8
.L80B6EDFC:
/* 0545C 80B6EDFC 3C1880B8 */  lui     $t8, %hi(D_80B7A694)       ## $t8 = 80B80000
/* 05460 80B6EE00 9718A694 */  lhu     $t8, %lo(D_80B7A694)($t8)  
/* 05464 80B6EE04 2F010006 */  sltiu   $at, $t8, 0x0006           
/* 05468 80B6EE08 10200703 */  beq     $at, $zero, .L80B70A18     
/* 0546C 80B6EE0C 0018C080 */  sll     $t8, $t8,  2               
/* 05470 80B6EE10 3C0180B8 */  lui     $at, %hi(jtbl_80B7B480)       ## $at = 80B80000
/* 05474 80B6EE14 00380821 */  addu    $at, $at, $t8              
/* 05478 80B6EE18 8C38B480 */  lw      $t8, %lo(jtbl_80B7B480)($at)  
/* 0547C 80B6EE1C 03000008 */  jr      $t8                        
/* 05480 80B6EE20 00000000 */  nop
glabel L80B6EE24
/* 05484 80B6EE24 3C028016 */  lui     $v0, %hi(gGameInfo)
/* 05488 80B6EE28 8C42FA90 */  lw      $v0, %lo(gGameInfo)($v0)
/* 0548C 80B6EE2C 3C0180B8 */  lui     $at, %hi(D_80B7FEA0)       ## $at = 80B80000
/* 05490 80B6EE30 A420FEA0 */  sh      $zero, %lo(D_80B7FEA0)($at) 
/* 05494 80B6EE34 845909F0 */  lh      $t9, 0x09F0($v0)           ## 801609F0
/* 05498 80B6EE38 3C0380B8 */  lui     $v1, %hi(D_80B7E0B6)       ## $v1 = 80B80000
/* 0549C 80B6EE3C 2463E0B6 */  addiu   $v1, $v1, %lo(D_80B7E0B6)  ## $v1 = 80B7E0B6
/* 054A0 80B6EE40 5320000B */  beql    $t9, $zero, .L80B6EE70     
/* 054A4 80B6EE44 3C013F80 */  lui     $at, 0x3F80                ## $at = 3F800000
/* 054A8 80B6EE48 A44009F0 */  sh      $zero, 0x09F0($v0)         ## 801609F0
/* 054AC 80B6EE4C 906E0000 */  lbu     $t6, 0x0000($v1)           ## 80B7E0B6
/* 054B0 80B6EE50 240F0002 */  addiu   $t7, $zero, 0x0002         ## $t7 = 00000002
/* 054B4 80B6EE54 3C0180B8 */  lui     $at, %hi(D_80B7E082)       ## $at = 80B80000
/* 054B8 80B6EE58 01EEC023 */  subu    $t8, $t7, $t6              
/* 054BC 80B6EE5C 331900FF */  andi    $t9, $t8, 0x00FF           ## $t9 = 00000000
/* 054C0 80B6EE60 13200002 */  beq     $t9, $zero, .L80B6EE6C     
/* 054C4 80B6EE64 A0780000 */  sb      $t8, 0x0000($v1)           ## 80B7E0B6
/* 054C8 80B6EE68 A020E082 */  sb      $zero, %lo(D_80B7E082)($at) 
.L80B6EE6C:
/* 054CC 80B6EE6C 3C013F80 */  lui     $at, 0x3F80                ## $at = 3F800000
.L80B6EE70:
/* 054D0 80B6EE70 44810000 */  mtc1    $at, $f0                   ## $f0 = 1.00
/* 054D4 80B6EE74 3C0480B8 */  lui     $a0, %hi(D_80B7E144)       ## $a0 = 80B80000
/* 054D8 80B6EE78 2484E144 */  addiu   $a0, $a0, %lo(D_80B7E144)  ## $a0 = 80B7E144
/* 054DC 80B6EE7C 44060000 */  mfc1    $a2, $f0                   
/* 054E0 80B6EE80 44070000 */  mfc1    $a3, $f0                   
/* 054E4 80B6EE84 0C01E107 */  jal     Math_SmoothScaleMaxF
              
/* 054E8 80B6EE88 3C054343 */  lui     $a1, 0x4343                ## $a1 = 43430000
/* 054EC 80B6EE8C 8FA300C0 */  lw      $v1, 0x00C0($sp)           
/* 054F0 80B6EE90 3C0880B8 */  lui     $t0, %hi(D_80B7EAC8)       ## $t0 = 80B80000
/* 054F4 80B6EE94 3C0A80B8 */  lui     $t2, %hi(D_80B7E0B4)       ## $t2 = 80B80000
/* 054F8 80B6EE98 8C6F067C */  lw      $t7, 0x067C($v1)           ## 0000067C
/* 054FC 80B6EE9C 254AE0B4 */  addiu   $t2, $t2, %lo(D_80B7E0B4)  ## $t2 = 80B7E0B4
/* 05500 80B6EEA0 2508EAC8 */  addiu   $t0, $t0, %lo(D_80B7EAC8)  ## $t0 = 80B7EAC8
/* 05504 80B6EEA4 000F7100 */  sll     $t6, $t7,  4               
/* 05508 80B6EEA8 05C10003 */  bgez    $t6, .L80B6EEB8            
/* 0550C 80B6EEAC 3C1080B8 */  lui     $s0, %hi(D_80B7E0D8)       ## $s0 = 80B80000
/* 05510 80B6EEB0 A5400000 */  sh      $zero, 0x0000($t2)         ## 80B7E0B4
/* 05514 80B6EEB4 A4600860 */  sh      $zero, 0x0860($v1)         ## 00000860
.L80B6EEB8:
/* 05518 80B6EEB8 85420000 */  lh      $v0, 0x0000($t2)           ## 80B7E0B4
/* 0551C 80B6EEBC 3C1880B8 */  lui     $t8, %hi(D_80B7E0B0)       ## $t8 = 80B80000
/* 05520 80B6EEC0 3C0180B8 */  lui     $at, %hi(D_80B7B498)       ## $at = 80B80000
/* 05524 80B6EEC4 1440000E */  bne     $v0, $zero, .L80B6EF00     
/* 05528 80B6EEC8 00000000 */  nop
/* 0552C 80B6EECC 8718E0B0 */  lh      $t8, %lo(D_80B7E0B0)($t8)  
/* 05530 80B6EED0 570006D2 */  bnel    $t8, $zero, .L80B70A1C     
/* 05534 80B6EED4 8FBF002C */  lw      $ra, 0x002C($sp)           
/* 05538 80B6EED8 84790860 */  lh      $t9, 0x0860($v1)           ## 00000860
/* 0553C 80B6EEDC 24010001 */  addiu   $at, $zero, 0x0001         ## $at = 00000001
/* 05540 80B6EEE0 240F0025 */  addiu   $t7, $zero, 0x0025         ## $t7 = 00000025
/* 05544 80B6EEE4 572106CD */  bnel    $t9, $at, .L80B70A1C       
/* 05548 80B6EEE8 8FBF002C */  lw      $ra, 0x002C($sp)           
/* 0554C 80B6EEEC A54F0000 */  sh      $t7, 0x0000($t2)           ## 80B7E0B4
/* 05550 80B6EEF0 0C041B33 */  jal     func_80106CCC              
/* 05554 80B6EEF4 8FA400EC */  lw      $a0, 0x00EC($sp)           
/* 05558 80B6EEF8 100006C8 */  beq     $zero, $zero, .L80B70A1C   
/* 0555C 80B6EEFC 8FBF002C */  lw      $ra, 0x002C($sp)           
.L80B6EF00:
/* 05560 80B6EF00 C420B498 */  lwc1    $f0, %lo(D_80B7B498)($at)  
/* 05564 80B6EF04 C5080948 */  lwc1    $f8, 0x0948($t0)           ## 00000948
/* 05568 80B6EF08 C504094C */  lwc1    $f4, 0x094C($t0)           ## 0000094C
/* 0556C 80B6EF0C 2610E0D8 */  addiu   $s0, $s0, %lo(D_80B7E0D8)  ## $s0 = 80B7E0D8
/* 05570 80B6EF10 46004280 */  add.s   $f10, $f8, $f0             
/* 05574 80B6EF14 24010012 */  addiu   $at, $zero, 0x0012         ## $at = 00000012
/* 05578 80B6EF18 E6040004 */  swc1    $f4, 0x0004($s0)           ## 80B7E0DC
/* 0557C 80B6EF1C 144106BE */  bne     $v0, $at, .L80B70A18       
/* 05580 80B6EF20 E60A0000 */  swc1    $f10, 0x0000($s0)          ## 80B7E0D8
/* 05584 80B6EF24 3C0280B8 */  lui     $v0, %hi(D_80B7E158)       ## $v0 = 80B80000
/* 05588 80B6EF28 240E0001 */  addiu   $t6, $zero, 0x0001         ## $t6 = 00000001
/* 0558C 80B6EF2C 3C0180B8 */  lui     $at, %hi(D_80B7A694)       ## $at = 80B80000
/* 05590 80B6EF30 2442E158 */  addiu   $v0, $v0, %lo(D_80B7E158)  ## $v0 = 80B7E158
/* 05594 80B6EF34 A42EA694 */  sh      $t6, %lo(D_80B7A694)($at)  
/* 05598 80B6EF38 8C4F0000 */  lw      $t7, 0x0000($v0)           ## 80B7E158
/* 0559C 80B6EF3C 3C1880B8 */  lui     $t8, %hi(D_80B7E0B8)       ## $t8 = 80B80000
/* 055A0 80B6EF40 2718E0B8 */  addiu   $t8, $t8, %lo(D_80B7E0B8)  ## $t8 = 80B7E0B8
/* 055A4 80B6EF44 AF0F0000 */  sw      $t7, 0x0000($t8)           ## 80B7E0B8
/* 055A8 80B6EF48 8C590004 */  lw      $t9, 0x0004($v0)           ## 80B7E15C
/* 055AC 80B6EF4C 3C014700 */  lui     $at, 0x4700                ## $at = 47000000
/* 055B0 80B6EF50 44815000 */  mtc1    $at, $f10                  ## $f10 = 32768.00
/* 055B4 80B6EF54 AF190004 */  sw      $t9, 0x0004($t8)           ## 80B7E0BC
/* 055B8 80B6EF58 8C4F0008 */  lw      $t7, 0x0008($v0)           ## 80B7E160
/* 055BC 80B6EF5C 00002825 */  or      $a1, $zero, $zero          ## $a1 = 00000000
/* 055C0 80B6EF60 AF0F0008 */  sw      $t7, 0x0008($t8)           ## 80B7E0C0
/* 055C4 80B6EF64 846E00B6 */  lh      $t6, 0x00B6($v1)           ## 000000B6
/* 055C8 80B6EF68 448E3000 */  mtc1    $t6, $f6                   ## $f6 = 0.00
/* 055CC 80B6EF6C 00000000 */  nop
/* 055D0 80B6EF70 46803220 */  cvt.s.w $f8, $f6                   
/* 055D4 80B6EF74 460A4103 */  div.s   $f4, $f8, $f10             
/* 055D8 80B6EF78 46002302 */  mul.s   $f12, $f4, $f0             
/* 055DC 80B6EF7C 0C034348 */  jal     Matrix_RotateY              
/* 055E0 80B6EF80 00000000 */  nop
/* 055E4 80B6EF84 44800000 */  mtc1    $zero, $f0                 ## $f0 = 0.00
/* 055E8 80B6EF88 3C0141C8 */  lui     $at, 0x41C8                ## $at = 41C80000
/* 055EC 80B6EF8C 44813000 */  mtc1    $at, $f6                   ## $f6 = 25.00
/* 055F0 80B6EF90 3C0580B8 */  lui     $a1, %hi(D_80B7E0E8)       ## $a1 = 80B80000
/* 055F4 80B6EF94 24A5E0E8 */  addiu   $a1, $a1, %lo(D_80B7E0E8)  ## $a1 = 80B7E0E8
/* 055F8 80B6EF98 27A40090 */  addiu   $a0, $sp, 0x0090           ## $a0 = FFFFFFA8
/* 055FC 80B6EF9C E7A00090 */  swc1    $f0, 0x0090($sp)           
/* 05600 80B6EFA0 E7A00094 */  swc1    $f0, 0x0094($sp)           
/* 05604 80B6EFA4 0C0346BD */  jal     Matrix_MultVec3f              
/* 05608 80B6EFA8 E7A60098 */  swc1    $f6, 0x0098($sp)           
/* 0560C 80B6EFAC 44800000 */  mtc1    $zero, $f0                 ## $f0 = 0.00
/* 05610 80B6EFB0 3C0680B8 */  lui     $a2, %hi(D_80B7E0F8)       ## $a2 = 80B80000
/* 05614 80B6EFB4 3C014170 */  lui     $at, 0x4170                ## $at = 41700000
/* 05618 80B6EFB8 44814000 */  mtc1    $at, $f8                   ## $f8 = 15.00
/* 0561C 80B6EFBC 24C6E0F8 */  addiu   $a2, $a2, %lo(D_80B7E0F8)  ## $a2 = 80B7E0F8
/* 05620 80B6EFC0 3C01BF80 */  lui     $at, 0xBF80                ## $at = BF800000
/* 05624 80B6EFC4 E4C00008 */  swc1    $f0, 0x0008($a2)           ## 80B7E100
/* 05628 80B6EFC8 C4CA0008 */  lwc1    $f10, 0x0008($a2)          ## 80B7E100
/* 0562C 80B6EFCC 44812000 */  mtc1    $at, $f4                   ## $f4 = -1.00
/* 05630 80B6EFD0 3C0380B8 */  lui     $v1, %hi(D_80B7E0E8)       ## $v1 = 80B80000
/* 05634 80B6EFD4 2463E0E8 */  addiu   $v1, $v1, %lo(D_80B7E0E8)  ## $v1 = 80B7E0E8
/* 05638 80B6EFD8 3C0180B8 */  lui     $at, %hi(D_80B7E148)       ## $at = 80B80000
/* 0563C 80B6EFDC E4680004 */  swc1    $f8, 0x0004($v1)           ## 80B7E0EC
/* 05640 80B6EFE0 E4CA0000 */  swc1    $f10, 0x0000($a2)          ## 80B7E0F8
/* 05644 80B6EFE4 E4C40004 */  swc1    $f4, 0x0004($a2)           ## 80B7E0FC
/* 05648 80B6EFE8 E420E148 */  swc1    $f0, %lo(D_80B7E148)($at)  
/* 0564C 80B6EFEC 3C0180B8 */  lui     $at, %hi(D_80B7E0B2)       ## $at = 80B80000
/* 05650 80B6EFF0 24180005 */  addiu   $t8, $zero, 0x0005         ## $t8 = 00000005
/* 05654 80B6EFF4 A438E0B2 */  sh      $t8, %lo(D_80B7E0B2)($at)  
/* 05658 80B6EFF8 3C013F00 */  lui     $at, 0x3F00                ## $at = 3F000000
/* 0565C 80B6EFFC 44813000 */  mtc1    $at, $f6                   ## $f6 = 0.50
/* 05660 80B6F000 3C0180B8 */  lui     $at, %hi(D_80B7E11C)       ## $at = 80B80000
/* 05664 80B6F004 E426E11C */  swc1    $f6, %lo(D_80B7E11C)($at)  
/* 05668 80B6F008 3C0180B8 */  lui     $at, %hi(D_80B7B49C)       ## $at = 80B80000
/* 0566C 80B6F00C 0C00CFBE */  jal     Math_Rand_ZeroFloat
              
/* 05670 80B6F010 C42CB49C */  lwc1    $f12, %lo(D_80B7B49C)($at) 
/* 05674 80B6F014 4459F800 */  cfc1    $t9, $31
/* 05678 80B6F018 240F0001 */  addiu   $t7, $zero, 0x0001         ## $t7 = 00000001
/* 0567C 80B6F01C 44CFF800 */  ctc1    $t7, $31
/* 05680 80B6F020 3C0480B8 */  lui     $a0, %hi(D_80B7AF94)       ## $a0 = 80B80000
/* 05684 80B6F024 3C014F00 */  lui     $at, 0x4F00                ## $at = 4F000000
/* 05688 80B6F028 46000224 */  cvt.w.s $f8, $f0                   
/* 0568C 80B6F02C 2484AF94 */  addiu   $a0, $a0, %lo(D_80B7AF94)  ## $a0 = 80B7AF94
/* 05690 80B6F030 24051818 */  addiu   $a1, $zero, 0x1818         ## $a1 = 00001818
/* 05694 80B6F034 444FF800 */  cfc1    $t7, $31
/* 05698 80B6F038 00000000 */  nop
/* 0569C 80B6F03C 31EF0078 */  andi    $t7, $t7, 0x0078           ## $t7 = 00000000
/* 056A0 80B6F040 51E00013 */  beql    $t7, $zero, .L80B6F090     
/* 056A4 80B6F044 440F4000 */  mfc1    $t7, $f8                   
/* 056A8 80B6F048 44814000 */  mtc1    $at, $f8                   ## $f8 = 2147483648.00
/* 056AC 80B6F04C 240F0001 */  addiu   $t7, $zero, 0x0001         ## $t7 = 00000001
/* 056B0 80B6F050 46080201 */  sub.s   $f8, $f0, $f8              
/* 056B4 80B6F054 44CFF800 */  ctc1    $t7, $31
/* 056B8 80B6F058 00000000 */  nop
/* 056BC 80B6F05C 46004224 */  cvt.w.s $f8, $f8                   
/* 056C0 80B6F060 444FF800 */  cfc1    $t7, $31
/* 056C4 80B6F064 00000000 */  nop
/* 056C8 80B6F068 31EF0078 */  andi    $t7, $t7, 0x0078           ## $t7 = 00000000
/* 056CC 80B6F06C 15E00005 */  bne     $t7, $zero, .L80B6F084     
/* 056D0 80B6F070 00000000 */  nop
/* 056D4 80B6F074 440F4000 */  mfc1    $t7, $f8                   
/* 056D8 80B6F078 3C018000 */  lui     $at, 0x8000                ## $at = 80000000
/* 056DC 80B6F07C 10000007 */  beq     $zero, $zero, .L80B6F09C   
/* 056E0 80B6F080 01E17825 */  or      $t7, $t7, $at              ## $t7 = 80000000
.L80B6F084:
/* 056E4 80B6F084 10000005 */  beq     $zero, $zero, .L80B6F09C   
/* 056E8 80B6F088 240FFFFF */  addiu   $t7, $zero, 0xFFFF         ## $t7 = FFFFFFFF
/* 056EC 80B6F08C 440F4000 */  mfc1    $t7, $f8                   
.L80B6F090:
/* 056F0 80B6F090 00000000 */  nop
/* 056F4 80B6F094 05E0FFFB */  bltz    $t7, .L80B6F084            
/* 056F8 80B6F098 00000000 */  nop
.L80B6F09C:
/* 056FC 80B6F09C 3C0180B8 */  lui     $at, %hi(D_80B7E118)       ## $at = 80B80000
/* 05700 80B6F0A0 A02FE118 */  sb      $t7, %lo(D_80B7E118)($at)  
/* 05704 80B6F0A4 3C0143FA */  lui     $at, 0x43FA                ## $at = 43FA0000
/* 05708 80B6F0A8 44815000 */  mtc1    $at, $f10                  ## $f10 = 500.00
/* 0570C 80B6F0AC 44D9F800 */  ctc1    $t9, $31
/* 05710 80B6F0B0 3C0180B8 */  lui     $at, %hi(D_80B7A69C)       ## $at = 80B80000
/* 05714 80B6F0B4 0C01E245 */  jal     func_80078914              
/* 05718 80B6F0B8 E42AA69C */  swc1    $f10, %lo(D_80B7A69C)($at) 
/* 0571C 80B6F0BC 10000657 */  beq     $zero, $zero, .L80B70A1C   
/* 05720 80B6F0C0 8FBF002C */  lw      $ra, 0x002C($sp)           
glabel L80B6F0C4
/* 05724 80B6F0C4 3C0380B8 */  lui     $v1, %hi(D_80B7E0E8)       ## $v1 = 80B80000
/* 05728 80B6F0C8 2463E0E8 */  addiu   $v1, $v1, %lo(D_80B7E0E8)  ## $v1 = 80B7E0E8
/* 0572C 80B6F0CC 3C0180B8 */  lui     $at, %hi(D_80B7E0BC)       ## $at = 80B80000
/* 05730 80B6F0D0 C424E0B8 */  lwc1    $f4, %lo(D_80B7E0B8)($at)  
/* 05734 80B6F0D4 C4600000 */  lwc1    $f0, 0x0000($v1)           ## 80B7E0E8
/* 05738 80B6F0D8 C42EE0BC */  lwc1    $f14, %lo(D_80B7E0BC)($at) 
/* 0573C 80B6F0DC 3C0680B8 */  lui     $a2, %hi(D_80B7E0F8)       ## $a2 = 80B80000
/* 05740 80B6F0E0 46002180 */  add.s   $f6, $f4, $f0              
/* 05744 80B6F0E4 24C6E0F8 */  addiu   $a2, $a2, %lo(D_80B7E0F8)  ## $a2 = 80B7E0F8
/* 05748 80B6F0E8 8FAE00EC */  lw      $t6, 0x00EC($sp)           
/* 0574C 80B6F0EC E7AE00E0 */  swc1    $f14, 0x00E0($sp)          
/* 05750 80B6F0F0 E426E0B8 */  swc1    $f6, %lo(D_80B7E0B8)($at)  
/* 05754 80B6F0F4 C4620004 */  lwc1    $f2, 0x0004($v1)           ## 80B7E0EC
/* 05758 80B6F0F8 3C0F80B8 */  lui     $t7, %hi(D_80B7A68C)       ## $t7 = 80B80000
/* 0575C 80B6F0FC 46027200 */  add.s   $f8, $f14, $f2             
/* 05760 80B6F100 E428E0BC */  swc1    $f8, %lo(D_80B7E0BC)($at)  
/* 05764 80B6F104 3C0180B8 */  lui     $at, %hi(D_80B7E0C0)       ## $at = 80B80000
/* 05768 80B6F108 C42AE0C0 */  lwc1    $f10, %lo(D_80B7E0C0)($at) 
/* 0576C 80B6F10C C46C0008 */  lwc1    $f12, 0x0008($v1)          ## 80B7E0F0
/* 05770 80B6F110 460C5100 */  add.s   $f4, $f10, $f12            
/* 05774 80B6F114 E424E0C0 */  swc1    $f4, %lo(D_80B7E0C0)($at)  
/* 05778 80B6F118 C4C60000 */  lwc1    $f6, 0x0000($a2)           ## 80B7E0F8
/* 0577C 80B6F11C C4CA0004 */  lwc1    $f10, 0x0004($a2)          ## 80B7E0FC
/* 05780 80B6F120 3C01FFFF */  lui     $at, 0xFFFF                ## $at = FFFF0000
/* 05784 80B6F124 46060200 */  add.s   $f8, $f0, $f6              
/* 05788 80B6F128 C4C60008 */  lwc1    $f6, 0x0008($a2)           ## 80B7E100
/* 0578C 80B6F12C 34217FFF */  ori     $at, $at, 0x7FFF           ## $at = FFFF7FFF
/* 05790 80B6F130 460A1100 */  add.s   $f4, $f2, $f10             
/* 05794 80B6F134 E4680000 */  swc1    $f8, 0x0000($v1)           ## 80B7E0E8
/* 05798 80B6F138 46066200 */  add.s   $f8, $f12, $f6             
/* 0579C 80B6F13C E4640004 */  swc1    $f4, 0x0004($v1)           ## 80B7E0EC
/* 057A0 80B6F140 E4680008 */  swc1    $f8, 0x0008($v1)           ## 80B7E0F0
/* 057A4 80B6F144 95D80014 */  lhu     $t8, 0x0014($t6)           ## 00000014
/* 057A8 80B6F148 0301C827 */  nor     $t9, $t8, $at              
/* 057AC 80B6F14C 13200004 */  beq     $t9, $zero, .L80B6F160     
/* 057B0 80B6F150 3C0180B8 */  lui     $at, %hi(D_80B7B4A0)       ## $at = 80B80000
/* 057B4 80B6F154 91EFA68C */  lbu     $t7, %lo(D_80B7A68C)($t7)  
/* 057B8 80B6F158 11E00013 */  beq     $t7, $zero, .L80B6F1A8     
/* 057BC 80B6F15C 00000000 */  nop
.L80B6F160:
/* 057C0 80B6F160 C420B4A0 */  lwc1    $f0, %lo(D_80B7B4A0)($at)  
/* 057C4 80B6F164 C46A0000 */  lwc1    $f10, 0x0000($v1)          ## 80B7E0E8
/* 057C8 80B6F168 C4660008 */  lwc1    $f6, 0x0008($v1)           ## 80B7E0F0
/* 057CC 80B6F16C 3C0E80B8 */  lui     $t6, %hi(D_80B7A68C)       ## $t6 = 80B80000
/* 057D0 80B6F170 46005102 */  mul.s   $f4, $f10, $f0             
/* 057D4 80B6F174 00000000 */  nop
/* 057D8 80B6F178 46003202 */  mul.s   $f8, $f6, $f0              
/* 057DC 80B6F17C E4640000 */  swc1    $f4, 0x0000($v1)           ## 80B7E0E8
/* 057E0 80B6F180 E4680008 */  swc1    $f8, 0x0008($v1)           ## 80B7E0F0
/* 057E4 80B6F184 91CEA68C */  lbu     $t6, %lo(D_80B7A68C)($t6)  
/* 057E8 80B6F188 15C00007 */  bne     $t6, $zero, .L80B6F1A8     
/* 057EC 80B6F18C 00000000 */  nop
/* 057F0 80B6F190 0C01E221 */  jal     func_80078884              
/* 057F4 80B6F194 2404103E */  addiu   $a0, $zero, 0x103E         ## $a0 = 0000103E
/* 057F8 80B6F198 3C0380B8 */  lui     $v1, %hi(D_80B7E0E8)       ## $v1 = 80B80000
/* 057FC 80B6F19C 3C0880B8 */  lui     $t0, %hi(D_80B7EAC8)       ## $t0 = 80B80000
/* 05800 80B6F1A0 2508EAC8 */  addiu   $t0, $t0, %lo(D_80B7EAC8)  ## $t0 = 80B7EAC8
/* 05804 80B6F1A4 2463E0E8 */  addiu   $v1, $v1, %lo(D_80B7E0E8)  ## $v1 = 80B7E0E8
.L80B6F1A8:
/* 05808 80B6F1A8 3C0280B8 */  lui     $v0, %hi(D_80B7E158)       ## $v0 = 80B80000
/* 0580C 80B6F1AC 2442E158 */  addiu   $v0, $v0, %lo(D_80B7E158)  ## $v0 = 80B7E158
/* 05810 80B6F1B0 3C0180B8 */  lui     $at, %hi(D_80B7E0B8)       ## $at = 80B80000
/* 05814 80B6F1B4 C432E0B8 */  lwc1    $f18, %lo(D_80B7E0B8)($at) 
/* 05818 80B6F1B8 C44A0000 */  lwc1    $f10, 0x0000($v0)          ## 80B7E158
/* 0581C 80B6F1BC C424E0BC */  lwc1    $f4, %lo(D_80B7E0BC)($at)  
/* 05820 80B6F1C0 3C0180B8 */  lui     $at, %hi(D_80B7E0C0)       ## $at = 80B80000
/* 05824 80B6F1C4 3C1880B8 */  lui     $t8, %hi(D_80B7E0B2)       ## $t8 = 80B80000
/* 05828 80B6F1C8 C428E0C0 */  lwc1    $f8, %lo(D_80B7E0C0)($at)  
/* 0582C 80B6F1CC 8718E0B2 */  lh      $t8, %lo(D_80B7E0B2)($t8)  
/* 05830 80B6F1D0 460A9381 */  sub.s   $f14, $f18, $f10           
/* 05834 80B6F1D4 C4460004 */  lwc1    $f6, 0x0004($v0)           ## 80B7E15C
/* 05838 80B6F1D8 C44A0008 */  lwc1    $f10, 0x0008($v0)          ## 80B7E160
/* 0583C 80B6F1DC E7A80034 */  swc1    $f8, 0x0034($sp)           
/* 05840 80B6F1E0 46062081 */  sub.s   $f2, $f4, $f6              
/* 05844 80B6F1E4 1300000B */  beq     $t8, $zero, .L80B6F214     
/* 05848 80B6F1E8 460A4301 */  sub.s   $f12, $f8, $f10            
/* 0584C 80B6F1EC 3C0180B8 */  lui     $at, %hi(D_80B7B4A4)       ## $at = 80B80000
/* 05850 80B6F1F0 C426B4A4 */  lwc1    $f6, %lo(D_80B7B4A4)($at)  
/* 05854 80B6F1F4 C5040948 */  lwc1    $f4, 0x0948($t0)           ## 80B7F410
/* 05858 80B6F1F8 C50A094C */  lwc1    $f10, 0x094C($t0)          ## 80B7F414
/* 0585C 80B6F1FC 3C1080B8 */  lui     $s0, %hi(D_80B7E0D8)       ## $s0 = 80B80000
/* 05860 80B6F200 46062200 */  add.s   $f8, $f4, $f6              
/* 05864 80B6F204 2610E0D8 */  addiu   $s0, $s0, %lo(D_80B7E0D8)  ## $s0 = 80B7E0D8
/* 05868 80B6F208 E60A0004 */  swc1    $f10, 0x0004($s0)          ## 80B7E0DC
/* 0586C 80B6F20C 10000017 */  beq     $zero, $zero, .L80B6F26C   
/* 05870 80B6F210 E6080000 */  swc1    $f8, 0x0000($s0)           ## 80B7E0D8
.L80B6F214:
/* 05874 80B6F214 44802000 */  mtc1    $zero, $f4                 ## $f4 = 0.00
/* 05878 80B6F218 3C1080B8 */  lui     $s0, %hi(D_80B7E0D8)       ## $s0 = 80B80000
/* 0587C 80B6F21C 2610E0D8 */  addiu   $s0, $s0, %lo(D_80B7E0D8)  ## $s0 = 80B7E0D8
/* 05880 80B6F220 E7A200D4 */  swc1    $f2, 0x00D4($sp)           
/* 05884 80B6F224 E7AC00D0 */  swc1    $f12, 0x00D0($sp)          
/* 05888 80B6F228 E7AE00D8 */  swc1    $f14, 0x00D8($sp)          
/* 0588C 80B6F22C 0C0341F5 */  jal     atan2f
              
/* 05890 80B6F230 E6040000 */  swc1    $f4, 0x0000($s0)           ## 80B7E0D8
/* 05894 80B6F234 3C0180B8 */  lui     $at, %hi(D_80B7B4A8)       ## $at = 80B80000
/* 05898 80B6F238 C426B4A8 */  lwc1    $f6, %lo(D_80B7B4A8)($at)  
/* 0589C 80B6F23C 3C0180B8 */  lui     $at, %hi(D_80B7E0B8)       ## $at = 80B80000
/* 058A0 80B6F240 3C0380B8 */  lui     $v1, %hi(D_80B7E0E8)       ## $v1 = 80B80000
/* 058A4 80B6F244 46060200 */  add.s   $f8, $f0, $f6              
/* 058A8 80B6F248 2463E0E8 */  addiu   $v1, $v1, %lo(D_80B7E0E8)  ## $v1 = 80B7E0E8
/* 058AC 80B6F24C C7A200D4 */  lwc1    $f2, 0x00D4($sp)           
/* 058B0 80B6F250 C7AC00D0 */  lwc1    $f12, 0x00D0($sp)          
/* 058B4 80B6F254 E6080004 */  swc1    $f8, 0x0004($s0)           ## 80B7E0DC
/* 058B8 80B6F258 C432E0B8 */  lwc1    $f18, %lo(D_80B7E0B8)($at) 
/* 058BC 80B6F25C 3C0180B8 */  lui     $at, %hi(D_80B7E0C0)       ## $at = 80B80000
/* 058C0 80B6F260 C42AE0C0 */  lwc1    $f10, %lo(D_80B7E0C0)($at) 
/* 058C4 80B6F264 C7AE00D8 */  lwc1    $f14, 0x00D8($sp)          
/* 058C8 80B6F268 E7AA0034 */  swc1    $f10, 0x0034($sp)          
.L80B6F26C:
/* 058CC 80B6F26C 460E7102 */  mul.s   $f4, $f14, $f14            
/* 058D0 80B6F270 3C01447A */  lui     $at, 0x447A                ## $at = 447A0000
/* 058D4 80B6F274 3C198016 */  lui     $t9, %hi(gGameInfo)
/* 058D8 80B6F278 46021182 */  mul.s   $f6, $f2, $f2              
/* 058DC 80B6F27C 46062200 */  add.s   $f8, $f4, $f6              
/* 058E0 80B6F280 460C6282 */  mul.s   $f10, $f12, $f12           
/* 058E4 80B6F284 44812000 */  mtc1    $at, $f4                   ## $f4 = 1000.00
/* 058E8 80B6F288 3C01447A */  lui     $at, 0x447A                ## $at = 447A0000
/* 058EC 80B6F28C 460A4000 */  add.s   $f0, $f8, $f10             
/* 058F0 80B6F290 46000404 */  sqrt.s  $f16, $f0                  
/* 058F4 80B6F294 4610203C */  c.lt.s  $f4, $f16                  
/* 058F8 80B6F298 00000000 */  nop
/* 058FC 80B6F29C 45020004 */  bc1fl   .L80B6F2B0                 
/* 05900 80B6F2A0 3C014348 */  lui     $at, 0x4348                ## $at = 43480000
/* 05904 80B6F2A4 44818000 */  mtc1    $at, $f16                  ## $f16 = 200.00
/* 05908 80B6F2A8 00000000 */  nop
/* 0590C 80B6F2AC 3C014348 */  lui     $at, 0x4348                ## $at = 43480000
.L80B6F2B0:
/* 05910 80B6F2B0 44810000 */  mtc1    $at, $f0                   ## $f0 = 200.00
/* 05914 80B6F2B4 3C0180B8 */  lui     $at, %hi(D_80B7B4AC)       ## $at = 80B80000
/* 05918 80B6F2B8 C428B4AC */  lwc1    $f8, %lo(D_80B7B4AC)($at)  
/* 0591C 80B6F2BC 46008182 */  mul.s   $f6, $f16, $f0             
/* 05920 80B6F2C0 3C0180B8 */  lui     $at, %hi(D_80B7E144)       ## $at = 80B80000
/* 05924 80B6F2C4 8FAE00EC */  lw      $t6, 0x00EC($sp)           
/* 05928 80B6F2C8 46083282 */  mul.s   $f10, $f6, $f8             
/* 0592C 80B6F2CC C7A60034 */  lwc1    $f6, 0x0034($sp)           
/* 05930 80B6F2D0 46063202 */  mul.s   $f8, $f6, $f6              
/* 05934 80B6F2D4 460A0101 */  sub.s   $f4, $f0, $f10             
/* 05938 80B6F2D8 46129282 */  mul.s   $f10, $f18, $f18           
/* 0593C 80B6F2DC E424E144 */  swc1    $f4, %lo(D_80B7E144)($at)  
/* 05940 80B6F2E0 3C0180B8 */  lui     $at, %hi(D_80B7B4B0)       ## $at = 80B80000
/* 05944 80B6F2E4 C424B4B0 */  lwc1    $f4, %lo(D_80B7B4B0)($at)  
/* 05948 80B6F2E8 46085300 */  add.s   $f12, $f10, $f8            
/* 0594C 80B6F2EC 460C203C */  c.lt.s  $f4, $f12                  
/* 05950 80B6F2F0 00000000 */  nop
/* 05954 80B6F2F4 450200BA */  bc1fl   .L80B6F5E0                 
/* 05958 80B6F2F8 8DD807C0 */  lw      $t8, 0x07C0($t6)           ## 000007C0
/* 0595C 80B6F2FC 8F39FA90 */  lw      $t9, %lo(gGameInfo)($t9)
/* 05960 80B6F300 8FA500E8 */  lw      $a1, 0x00E8($sp)           
/* 05964 80B6F304 3C0180B8 */  lui     $at, %hi(D_80B7E0BC)       ## $at = 80B80000
/* 05968 80B6F308 872F0A44 */  lh      $t7, 0x0A44($t9)           ## 80160A44
/* 0596C 80B6F30C 24B00024 */  addiu   $s0, $a1, 0x0024           ## $s0 = 00000024
/* 05970 80B6F310 55E00029 */  bnel    $t7, $zero, .L80B6F3B8     
/* 05974 80B6F314 8E190000 */  lw      $t9, 0x0000($s0)           ## 00000024
/* 05978 80B6F318 C42EE0BC */  lwc1    $f14, %lo(D_80B7E0BC)($at) 
/* 0597C 80B6F31C 3C014320 */  lui     $at, 0x4320                ## $at = 43200000
/* 05980 80B6F320 44815000 */  mtc1    $at, $f10                  ## $f10 = 160.00
/* 05984 80B6F324 3C0142A0 */  lui     $at, 0x42A0                ## $at = 42A00000
/* 05988 80B6F328 460E503C */  c.lt.s  $f10, $f14                 
/* 0598C 80B6F32C 00000000 */  nop
/* 05990 80B6F330 45030021 */  bc1tl   .L80B6F3B8                 
/* 05994 80B6F334 8E190000 */  lw      $t9, 0x0000($s0)           ## 00000024
/* 05998 80B6F338 44814000 */  mtc1    $at, $f8                   ## $f8 = 80.00
/* 0599C 80B6F33C 3C014334 */  lui     $at, 0x4334                ## $at = 43340000
/* 059A0 80B6F340 4608903C */  c.lt.s  $f18, $f8                  
/* 059A4 80B6F344 00000000 */  nop
/* 059A8 80B6F348 4503001B */  bc1tl   .L80B6F3B8                 
/* 059AC 80B6F34C 8E190000 */  lw      $t9, 0x0000($s0)           ## 00000024
/* 059B0 80B6F350 44812000 */  mtc1    $at, $f4                   ## $f4 = 180.00
/* 059B4 80B6F354 3C0180B8 */  lui     $at, %hi(D_80B7B4B4)       ## $at = 80B80000
/* 059B8 80B6F358 4612203C */  c.lt.s  $f4, $f18                  
/* 059BC 80B6F35C 00000000 */  nop
/* 059C0 80B6F360 45030015 */  bc1tl   .L80B6F3B8                 
/* 059C4 80B6F364 8E190000 */  lw      $t9, 0x0000($s0)           ## 00000024
/* 059C8 80B6F368 C42AB4B4 */  lwc1    $f10, %lo(D_80B7B4B4)($at) 
/* 059CC 80B6F36C 3C0180B8 */  lui     $at, %hi(D_80B7B4B8)       ## $at = 80B80000
/* 059D0 80B6F370 4606503C */  c.lt.s  $f10, $f6                  
/* 059D4 80B6F374 00000000 */  nop
/* 059D8 80B6F378 4503000F */  bc1tl   .L80B6F3B8                 
/* 059DC 80B6F37C 8E190000 */  lw      $t9, 0x0000($s0)           ## 00000024
/* 059E0 80B6F380 C428B4B8 */  lwc1    $f8, %lo(D_80B7B4B8)($at)  
/* 059E4 80B6F384 3C014234 */  lui     $at, 0x4234                ## $at = 42340000
/* 059E8 80B6F388 4608303C */  c.lt.s  $f6, $f8                   
/* 059EC 80B6F38C 00000000 */  nop
/* 059F0 80B6F390 45030009 */  bc1tl   .L80B6F3B8                 
/* 059F4 80B6F394 8E190000 */  lw      $t9, 0x0000($s0)           ## 00000024
/* 059F8 80B6F398 44812000 */  mtc1    $at, $f4                   ## $f4 = 45.00
/* 059FC 80B6F39C 3C0480B8 */  lui     $a0, %hi(D_80B7E0B8)       ## $a0 = 80B80000
/* 05A00 80B6F3A0 2484E0B8 */  addiu   $a0, $a0, %lo(D_80B7E0B8)  ## $a0 = 80B7E0B8
/* 05A04 80B6F3A4 4604703C */  c.lt.s  $f14, $f4                  
/* 05A08 80B6F3A8 00000000 */  nop
/* 05A0C 80B6F3AC 4500004A */  bc1f    .L80B6F4D8                 
/* 05A10 80B6F3B0 00000000 */  nop
/* 05A14 80B6F3B4 8E190000 */  lw      $t9, 0x0000($s0)           ## 00000024
.L80B6F3B8:
/* 05A18 80B6F3B8 27AE0080 */  addiu   $t6, $sp, 0x0080           ## $t6 = FFFFFF98
/* 05A1C 80B6F3BC 3C0F80B8 */  lui     $t7, %hi(D_80B7E0B8)       ## $t7 = 80B80000
/* 05A20 80B6F3C0 ADD90000 */  sw      $t9, 0x0000($t6)           ## FFFFFF98
/* 05A24 80B6F3C4 8E180004 */  lw      $t8, 0x0004($s0)           ## 00000028
/* 05A28 80B6F3C8 25EFE0B8 */  addiu   $t7, $t7, %lo(D_80B7E0B8)  ## $t7 = 80B7E0B8
/* 05A2C 80B6F3CC 27A20048 */  addiu   $v0, $sp, 0x0048           ## $v0 = FFFFFF60
/* 05A30 80B6F3D0 ADD80004 */  sw      $t8, 0x0004($t6)           ## FFFFFF9C
/* 05A34 80B6F3D4 8E190008 */  lw      $t9, 0x0008($s0)           ## 0000002C
/* 05A38 80B6F3D8 3C0141F0 */  lui     $at, 0x41F0                ## $at = 41F00000
/* 05A3C 80B6F3DC 44815000 */  mtc1    $at, $f10                  ## $f10 = 30.00
/* 05A40 80B6F3E0 ADD90008 */  sw      $t9, 0x0008($t6)           ## FFFFFFA0
/* 05A44 80B6F3E4 8DF80000 */  lw      $t8, 0x0000($t7)           ## 80B7E0B8
/* 05A48 80B6F3E8 3C064170 */  lui     $a2, 0x4170                ## $a2 = 41700000
/* 05A4C 80B6F3EC 3C0741F0 */  lui     $a3, 0x41F0                ## $a3 = 41F00000
/* 05A50 80B6F3F0 AC580000 */  sw      $t8, 0x0000($v0)           ## FFFFFF60
/* 05A54 80B6F3F4 8DEE0004 */  lw      $t6, 0x0004($t7)           ## 80B7E0BC
/* 05A58 80B6F3F8 AC4E0004 */  sw      $t6, 0x0004($v0)           ## FFFFFF64
/* 05A5C 80B6F3FC 8DF80008 */  lw      $t8, 0x0008($t7)           ## 80B7E0C0
/* 05A60 80B6F400 8C4F0000 */  lw      $t7, 0x0000($v0)           ## FFFFFF60
/* 05A64 80B6F404 AC580008 */  sw      $t8, 0x0008($v0)           ## FFFFFF68
/* 05A68 80B6F408 AE0F0000 */  sw      $t7, 0x0000($s0)           ## 00000024
/* 05A6C 80B6F40C 8C590004 */  lw      $t9, 0x0004($v0)           ## FFFFFF64
/* 05A70 80B6F410 AE190004 */  sw      $t9, 0x0004($s0)           ## 00000028
/* 05A74 80B6F414 8C4F0008 */  lw      $t7, 0x0008($v0)           ## FFFFFF68
/* 05A78 80B6F418 24190043 */  addiu   $t9, $zero, 0x0043         ## $t9 = 00000043
/* 05A7C 80B6F41C AE0F0008 */  sw      $t7, 0x0008($s0)           ## 0000002C
/* 05A80 80B6F420 8C580000 */  lw      $t8, 0x0000($v0)           ## FFFFFF60
/* 05A84 80B6F424 ACB80100 */  sw      $t8, 0x0100($a1)           ## 00000100
/* 05A88 80B6F428 8C4E0004 */  lw      $t6, 0x0004($v0)           ## FFFFFF64
/* 05A8C 80B6F42C ACAE0104 */  sw      $t6, 0x0104($a1)           ## 00000104
/* 05A90 80B6F430 8C580008 */  lw      $t8, 0x0008($v0)           ## FFFFFF68
/* 05A94 80B6F434 ACB80108 */  sw      $t8, 0x0108($a1)           ## 00000108
/* 05A98 80B6F438 E7AC00C8 */  swc1    $f12, 0x00C8($sp)          
/* 05A9C 80B6F43C AFB90014 */  sw      $t9, 0x0014($sp)           
/* 05AA0 80B6F440 8FA400EC */  lw      $a0, 0x00EC($sp)           
/* 05AA4 80B6F444 0C00B92D */  jal     func_8002E4B4              
/* 05AA8 80B6F448 E7AA0010 */  swc1    $f10, 0x0010($sp)          
/* 05AAC 80B6F44C 27AF0080 */  addiu   $t7, $sp, 0x0080           ## $t7 = FFFFFF98
/* 05AB0 80B6F450 8DF80000 */  lw      $t8, 0x0000($t7)           ## FFFFFF98
/* 05AB4 80B6F454 C7AC00C8 */  lwc1    $f12, 0x00C8($sp)          
/* 05AB8 80B6F458 3C0380B8 */  lui     $v1, %hi(D_80B7E0E8)       ## $v1 = 80B80000
/* 05ABC 80B6F45C AE180000 */  sw      $t8, 0x0000($s0)           ## 00000024
/* 05AC0 80B6F460 8DEE0004 */  lw      $t6, 0x0004($t7)           ## FFFFFF9C
/* 05AC4 80B6F464 2463E0E8 */  addiu   $v1, $v1, %lo(D_80B7E0E8)  ## $v1 = 80B7E0E8
/* 05AC8 80B6F468 3C01BF00 */  lui     $at, 0xBF00                ## $at = BF000000
/* 05ACC 80B6F46C AE0E0004 */  sw      $t6, 0x0004($s0)           ## 00000028
/* 05AD0 80B6F470 8DF80008 */  lw      $t8, 0x0008($t7)           ## FFFFFFA0
/* 05AD4 80B6F474 AE180008 */  sw      $t8, 0x0008($s0)           ## 0000002C
/* 05AD8 80B6F478 8FB900E8 */  lw      $t9, 0x00E8($sp)           
/* 05ADC 80B6F47C 97220088 */  lhu     $v0, 0x0088($t9)           ## 00000088
/* 05AE0 80B6F480 304F0010 */  andi    $t7, $v0, 0x0010           ## $t7 = 00000000
/* 05AE4 80B6F484 51E00006 */  beql    $t7, $zero, .L80B6F4A0     
/* 05AE8 80B6F488 30580008 */  andi    $t8, $v0, 0x0008           ## $t8 = 00000000
/* 05AEC 80B6F48C 44813000 */  mtc1    $at, $f6                   ## $f6 = -0.50
/* 05AF0 80B6F490 8FAE00E8 */  lw      $t6, 0x00E8($sp)           
/* 05AF4 80B6F494 E4660004 */  swc1    $f6, 0x0004($v1)           ## 80B7E0EC
/* 05AF8 80B6F498 95C20088 */  lhu     $v0, 0x0088($t6)           ## 00000088
/* 05AFC 80B6F49C 30580008 */  andi    $t8, $v0, 0x0008           ## $t8 = 00000000
.L80B6F4A0:
/* 05B00 80B6F4A0 1300000B */  beq     $t8, $zero, .L80B6F4D0     
/* 05B04 80B6F4A4 00000000 */  nop
/* 05B08 80B6F4A8 44801000 */  mtc1    $zero, $f2                 ## $f2 = 0.00
/* 05B0C 80B6F4AC C4680004 */  lwc1    $f8, 0x0004($v1)           ## 80B7E0EC
/* 05B10 80B6F4B0 4608103C */  c.lt.s  $f2, $f8                   
/* 05B14 80B6F4B4 00000000 */  nop
/* 05B18 80B6F4B8 45020003 */  bc1fl   .L80B6F4C8                 
/* 05B1C 80B6F4BC E4620008 */  swc1    $f2, 0x0008($v1)           ## 80B7E0F0
/* 05B20 80B6F4C0 E4620004 */  swc1    $f2, 0x0004($v1)           ## 80B7E0EC
/* 05B24 80B6F4C4 E4620008 */  swc1    $f2, 0x0008($v1)           ## 80B7E0F0
.L80B6F4C8:
/* 05B28 80B6F4C8 C4640008 */  lwc1    $f4, 0x0008($v1)           ## 80B7E0F0
/* 05B2C 80B6F4CC E4640000 */  swc1    $f4, 0x0000($v1)           ## 80B7E0E8
.L80B6F4D0:
/* 05B30 80B6F4D0 1000000E */  beq     $zero, $zero, .L80B6F50C   
/* 05B34 80B6F4D4 46006004 */  sqrt.s  $f0, $f12                  
.L80B6F4D8:
/* 05B38 80B6F4D8 0C2DB0BB */  jal     func_80B6C2EC              
/* 05B3C 80B6F4DC E7AC00C8 */  swc1    $f12, 0x00C8($sp)          
/* 05B40 80B6F4E0 3C0380B8 */  lui     $v1, %hi(D_80B7E0E8)       ## $v1 = 80B80000
/* 05B44 80B6F4E4 2463E0E8 */  addiu   $v1, $v1, %lo(D_80B7E0E8)  ## $v1 = 80B7E0E8
/* 05B48 80B6F4E8 10400007 */  beq     $v0, $zero, .L80B6F508     
/* 05B4C 80B6F4EC C7AC00C8 */  lwc1    $f12, 0x00C8($sp)          
/* 05B50 80B6F4F0 44805000 */  mtc1    $zero, $f10                ## $f10 = 0.00
/* 05B54 80B6F4F4 24190003 */  addiu   $t9, $zero, 0x0003         ## $t9 = 00000003
/* 05B58 80B6F4F8 3C0180B8 */  lui     $at, %hi(D_80B7A694)       ## $at = 80B80000
/* 05B5C 80B6F4FC A439A694 */  sh      $t9, %lo(D_80B7A694)($at)  
/* 05B60 80B6F500 3C0180B8 */  lui     $at, %hi(D_80B7E154)       ## $at = 80B80000
/* 05B64 80B6F504 E42AE154 */  swc1    $f10, %lo(D_80B7E154)($at) 
.L80B6F508:
/* 05B68 80B6F508 46006004 */  sqrt.s  $f0, $f12                  
.L80B6F50C:
/* 05B6C 80B6F50C 8FAF00EC */  lw      $t7, 0x00EC($sp)           
/* 05B70 80B6F510 3C014466 */  lui     $at, 0x4466                ## $at = 44660000
/* 05B74 80B6F514 44813000 */  mtc1    $at, $f6                   ## $f6 = 920.00
/* 05B78 80B6F518 8DEE07C0 */  lw      $t6, 0x07C0($t7)           ## 000007C0
/* 05B7C 80B6F51C 3C0180B8 */  lui     $at, %hi(D_80B7B4BC)       ## $at = 80B80000
/* 05B80 80B6F520 C424B4BC */  lwc1    $f4, %lo(D_80B7B4BC)($at)  
/* 05B84 80B6F524 8DD80028 */  lw      $t8, 0x0028($t6)           ## 00000028
/* 05B88 80B6F528 3C0180B8 */  lui     $at, %hi(D_80B7E0BC)       ## $at = 80B80000
/* 05B8C 80B6F52C 44801000 */  mtc1    $zero, $f2                 ## $f2 = 0.00
/* 05B90 80B6F530 87190002 */  lh      $t9, 0x0002($t8)           ## 00000002
/* 05B94 80B6F534 46060201 */  sub.s   $f8, $f0, $f6              
/* 05B98 80B6F538 44993000 */  mtc1    $t9, $f6                   ## $f6 = 0.00
/* 05B9C 80B6F53C 46044282 */  mul.s   $f10, $f8, $f4             
/* 05BA0 80B6F540 46803220 */  cvt.s.w $f8, $f6                   
/* 05BA4 80B6F544 C426E0BC */  lwc1    $f6, %lo(D_80B7E0BC)($at)  
/* 05BA8 80B6F548 3C0180B8 */  lui     $at, %hi(D_80B7E0BC)       ## $at = 80B80000
/* 05BAC 80B6F54C 46085100 */  add.s   $f4, $f10, $f8             
/* 05BB0 80B6F550 4604303E */  c.le.s  $f6, $f4                   
/* 05BB4 80B6F554 E7A400E4 */  swc1    $f4, 0x00E4($sp)           
/* 05BB8 80B6F558 4500000E */  bc1f    .L80B6F594                 
/* 05BBC 80B6F55C 00000000 */  nop
/* 05BC0 80B6F560 E424E0BC */  swc1    $f4, %lo(D_80B7E0BC)($at)  
/* 05BC4 80B6F564 E4620008 */  swc1    $f2, 0x0008($v1)           ## 80B7E0F0
/* 05BC8 80B6F568 C46A0008 */  lwc1    $f10, 0x0008($v1)          ## 80B7E0F0
/* 05BCC 80B6F56C 3C0180B8 */  lui     $at, %hi(D_80B7A694)       ## $at = 80B80000
/* 05BD0 80B6F570 240F0003 */  addiu   $t7, $zero, 0x0003         ## $t7 = 00000003
/* 05BD4 80B6F574 E46A0004 */  swc1    $f10, 0x0004($v1)          ## 80B7E0EC
/* 05BD8 80B6F578 C4680004 */  lwc1    $f8, 0x0004($v1)           ## 80B7E0EC
/* 05BDC 80B6F57C 44803000 */  mtc1    $zero, $f6                 ## $f6 = 0.00
/* 05BE0 80B6F580 E4680000 */  swc1    $f8, 0x0000($v1)           ## 80B7E0E8
/* 05BE4 80B6F584 A42FA694 */  sh      $t7, %lo(D_80B7A694)($at)  
/* 05BE8 80B6F588 3C0180B8 */  lui     $at, %hi(D_80B7E154)       ## $at = 80B80000
/* 05BEC 80B6F58C 1000000C */  beq     $zero, $zero, .L80B6F5C0   
/* 05BF0 80B6F590 E426E154 */  swc1    $f6, %lo(D_80B7E154)($at)  
.L80B6F594:
/* 05BF4 80B6F594 3C0480B8 */  lui     $a0, %hi(D_80B7E148)       ## $a0 = 80B80000
/* 05BF8 80B6F598 44051000 */  mfc1    $a1, $f2                   
/* 05BFC 80B6F59C 3C073D4C */  lui     $a3, 0x3D4C                ## $a3 = 3D4C0000
/* 05C00 80B6F5A0 34E7CCCD */  ori     $a3, $a3, 0xCCCD           ## $a3 = 3D4CCCCD
/* 05C04 80B6F5A4 2484E148 */  addiu   $a0, $a0, %lo(D_80B7E148)  ## $a0 = 80B7E148
/* 05C08 80B6F5A8 0C01E107 */  jal     Math_SmoothScaleMaxF
              
/* 05C0C 80B6F5AC 3C063F80 */  lui     $a2, 0x3F80                ## $a2 = 3F800000
/* 05C10 80B6F5B0 3C0480B8 */  lui     $a0, %hi(D_80B7AF94)       ## $a0 = 80B80000
/* 05C14 80B6F5B4 2484AF94 */  addiu   $a0, $a0, %lo(D_80B7AF94)  ## $a0 = 80B7AF94
/* 05C18 80B6F5B8 0C01E245 */  jal     func_80078914              
/* 05C1C 80B6F5BC 240530A4 */  addiu   $a1, $zero, 0x30A4         ## $a1 = 000030A4
.L80B6F5C0:
/* 05C20 80B6F5C0 3C0180B8 */  lui     $at, %hi(D_80B7E0BC)       ## $at = 80B80000
/* 05C24 80B6F5C4 C42EE0BC */  lwc1    $f14, %lo(D_80B7E0BC)($at) 
/* 05C28 80B6F5C8 C432E0B8 */  lwc1    $f18, %lo(D_80B7E0B8)($at) 
/* 05C2C 80B6F5CC 3C0180B8 */  lui     $at, %hi(D_80B7E0C0)       ## $at = 80B80000
/* 05C30 80B6F5D0 C424E0C0 */  lwc1    $f4, %lo(D_80B7E0C0)($at)  
/* 05C34 80B6F5D4 100000CD */  beq     $zero, $zero, .L80B6F90C   
/* 05C38 80B6F5D8 E7A40034 */  swc1    $f4, 0x0034($sp)           
/* 05C3C 80B6F5DC 8DD807C0 */  lw      $t8, 0x07C0($t6)           ## 000007C0
.L80B6F5E0:
/* 05C40 80B6F5E0 3C0180B8 */  lui     $at, %hi(D_80B7E0BC)       ## $at = 80B80000
/* 05C44 80B6F5E4 C42EE0BC */  lwc1    $f14, %lo(D_80B7E0BC)($at) 
/* 05C48 80B6F5E8 8F190028 */  lw      $t9, 0x0028($t8)           ## 00000028
/* 05C4C 80B6F5EC 3C0480B8 */  lui     $a0, %hi(D_80B7E148)       ## $a0 = 80B80000
/* 05C50 80B6F5F0 3C0180B8 */  lui     $at, %hi(D_80B7A694)       ## $at = 80B80000
/* 05C54 80B6F5F4 872F0002 */  lh      $t7, 0x0002($t9)           ## 00000002
/* 05C58 80B6F5F8 240E0002 */  addiu   $t6, $zero, 0x0002         ## $t6 = 00000002
/* 05C5C 80B6F5FC 2484E148 */  addiu   $a0, $a0, %lo(D_80B7E148)  ## $a0 = 80B7E148
/* 05C60 80B6F600 448F5000 */  mtc1    $t7, $f10                  ## $f10 = 0.00
/* 05C64 80B6F604 3C053F80 */  lui     $a1, 0x3F80                ## $a1 = 3F800000
/* 05C68 80B6F608 3C063D4C */  lui     $a2, 0x3D4C                ## $a2 = 3D4C0000
/* 05C6C 80B6F60C 46805220 */  cvt.s.w $f8, $f10                  
/* 05C70 80B6F610 4608703E */  c.le.s  $f14, $f8                  
/* 05C74 80B6F614 E7A800E4 */  swc1    $f8, 0x00E4($sp)           
/* 05C78 80B6F618 450000B0 */  bc1f    .L80B6F8DC                 
/* 05C7C 80B6F61C 00000000 */  nop
/* 05C80 80B6F620 44803000 */  mtc1    $zero, $f6                 ## $f6 = 0.00
/* 05C84 80B6F624 44802000 */  mtc1    $zero, $f4                 ## $f4 = 0.00
/* 05C88 80B6F628 A42EA694 */  sh      $t6, %lo(D_80B7A694)($at)  
/* 05C8C 80B6F62C 3C0180B8 */  lui     $at, %hi(D_80B7E154)       ## $at = 80B80000
/* 05C90 80B6F630 E426E154 */  swc1    $f6, %lo(D_80B7E154)($at)  
/* 05C94 80B6F634 E4640008 */  swc1    $f4, 0x0008($v1)           ## 00000008
/* 05C98 80B6F638 C46A0008 */  lwc1    $f10, 0x0008($v1)          ## 00000008
/* 05C9C 80B6F63C 3C1880B8 */  lui     $t8, %hi(D_80B7E0B6)       ## $t8 = 80B80000
/* 05CA0 80B6F640 24010002 */  addiu   $at, $zero, 0x0002         ## $at = 00000002
/* 05CA4 80B6F644 E46A0000 */  swc1    $f10, 0x0000($v1)          ## 00000000
/* 05CA8 80B6F648 9318E0B6 */  lbu     $t8, %lo(D_80B7E0B6)($t8)  
/* 05CAC 80B6F64C 3C0480B8 */  lui     $a0, %hi(D_80B7E0A2)       ## $a0 = 80B80000
/* 05CB0 80B6F650 2484E0A2 */  addiu   $a0, $a0, %lo(D_80B7E0A2)  ## $a0 = 80B7E0A2
/* 05CB4 80B6F654 17010005 */  bne     $t8, $at, .L80B6F66C       
/* 05CB8 80B6F658 2419000A */  addiu   $t9, $zero, 0x000A         ## $t9 = 0000000A
/* 05CBC 80B6F65C 3C0480B8 */  lui     $a0, %hi(D_80B7E0A2)       ## $a0 = 80B80000
/* 05CC0 80B6F660 2484E0A2 */  addiu   $a0, $a0, %lo(D_80B7E0A2)  ## $a0 = 80B7E0A2
/* 05CC4 80B6F664 10000002 */  beq     $zero, $zero, .L80B6F670   
/* 05CC8 80B6F668 A0800000 */  sb      $zero, 0x0000($a0)         ## 80B7E0A2
.L80B6F66C:
/* 05CCC 80B6F66C A0990000 */  sb      $t9, 0x0000($a0)           ## 80B7E0A2
.L80B6F670:
/* 05CD0 80B6F670 C7A800E4 */  lwc1    $f8, 0x00E4($sp)           
/* 05CD4 80B6F674 C7A600E0 */  lwc1    $f6, 0x00E0($sp)           
/* 05CD8 80B6F678 4608703E */  c.le.s  $f14, $f8                  
/* 05CDC 80B6F67C 00000000 */  nop
/* 05CE0 80B6F680 450000A2 */  bc1f    .L80B6F90C                 
/* 05CE4 80B6F684 00000000 */  nop
/* 05CE8 80B6F688 4606403C */  c.lt.s  $f8, $f6                   
/* 05CEC 80B6F68C 8FAF00EC */  lw      $t7, 0x00EC($sp)           
/* 05CF0 80B6F690 4500009E */  bc1f    .L80B6F90C                 
/* 05CF4 80B6F694 00000000 */  nop
/* 05CF8 80B6F698 8DEE07C0 */  lw      $t6, 0x07C0($t7)           ## 000007C0
/* 05CFC 80B6F69C 3C0480B8 */  lui     $a0, %hi(D_80B7AF94)       ## $a0 = 80B80000
/* 05D00 80B6F6A0 240F000A */  addiu   $t7, $zero, 0x000A         ## $t7 = 0000000A
/* 05D04 80B6F6A4 8DD80028 */  lw      $t8, 0x0028($t6)           ## 0000002A
/* 05D08 80B6F6A8 3C0180B8 */  lui     $at, %hi(D_80B7E114)       ## $at = 80B80000
/* 05D0C 80B6F6AC 2484AF94 */  addiu   $a0, $a0, %lo(D_80B7AF94)  ## $a0 = 80B7AF94
/* 05D10 80B6F6B0 87190002 */  lh      $t9, 0x0002($t8)           ## 80B80002
/* 05D14 80B6F6B4 24052817 */  addiu   $a1, $zero, 0x2817         ## $a1 = 00002817
/* 05D18 80B6F6B8 44992000 */  mtc1    $t9, $f4                   ## $f4 = 0.00
/* 05D1C 80B6F6BC 00000000 */  nop
/* 05D20 80B6F6C0 468022A0 */  cvt.s.w $f10, $f4                  
/* 05D24 80B6F6C4 460A4032 */  c.eq.s  $f8, $f10                  
/* 05D28 80B6F6C8 00000000 */  nop
/* 05D2C 80B6F6CC 4500008F */  bc1f    .L80B6F90C                 
/* 05D30 80B6F6D0 00000000 */  nop
/* 05D34 80B6F6D4 0C01E245 */  jal     func_80078914              
/* 05D38 80B6F6D8 A02FE114 */  sb      $t7, %lo(D_80B7E114)($at)  
/* 05D3C 80B6F6DC 44803000 */  mtc1    $zero, $f6                 ## $f6 = 0.00
/* 05D40 80B6F6E0 3C0680B8 */  lui     $a2, %hi(D_80B7E0F8)       ## $a2 = 80B80000
/* 05D44 80B6F6E4 24C6E0F8 */  addiu   $a2, $a2, %lo(D_80B7E0F8)  ## $a2 = 80B7E0F8
/* 05D48 80B6F6E8 3C0380B8 */  lui     $v1, %hi(D_80B7E0E8)       ## $v1 = 80B80000
/* 05D4C 80B6F6EC 2463E0E8 */  addiu   $v1, $v1, %lo(D_80B7E0E8)  ## $v1 = 80B7E0E8
/* 05D50 80B6F6F0 3C0180B8 */  lui     $at, %hi(D_80B7B4C0)       ## $at = 80B80000
/* 05D54 80B6F6F4 E4C60004 */  swc1    $f6, 0x0004($a2)           ## 80B7E0FC
/* 05D58 80B6F6F8 C428B4C0 */  lwc1    $f8, %lo(D_80B7B4C0)($at)  
/* 05D5C 80B6F6FC C4640004 */  lwc1    $f4, 0x0004($v1)           ## 80B7E0EC
/* 05D60 80B6F700 8FAE00EC */  lw      $t6, 0x00EC($sp)           
/* 05D64 80B6F704 3C010001 */  lui     $at, 0x0001                ## $at = 00010000
/* 05D68 80B6F708 46082282 */  mul.s   $f10, $f4, $f8             
/* 05D6C 80B6F70C 01C1C021 */  addu    $t8, $t6, $at              
/* 05D70 80B6F710 AFB80040 */  sw      $t8, 0x0040($sp)           
/* 05D74 80B6F714 00008025 */  or      $s0, $zero, $zero          ## $s0 = 00000000
/* 05D78 80B6F718 E46A0004 */  swc1    $f10, 0x0004($v1)          ## 80B7E0EC
/* 05D7C 80B6F71C 3C013FC0 */  lui     $at, 0x3FC0                ## $at = 3FC00000
.L80B6F720:
/* 05D80 80B6F720 44816000 */  mtc1    $at, $f12                  ## $f12 = 1.50
/* 05D84 80B6F724 0C00CFBE */  jal     Math_Rand_ZeroFloat
              
/* 05D88 80B6F728 00000000 */  nop
/* 05D8C 80B6F72C 3C013F00 */  lui     $at, 0x3F00                ## $at = 3F000000
/* 05D90 80B6F730 44813000 */  mtc1    $at, $f6                   ## $f6 = 0.50
/* 05D94 80B6F734 3C0180B8 */  lui     $at, %hi(D_80B7B4C4)       ## $at = 80B80000
/* 05D98 80B6F738 C42CB4C4 */  lwc1    $f12, %lo(D_80B7B4C4)($at) 
/* 05D9C 80B6F73C 46060100 */  add.s   $f4, $f0, $f6              
/* 05DA0 80B6F740 0C00CFBE */  jal     Math_Rand_ZeroFloat
              
/* 05DA4 80B6F744 E7A4007C */  swc1    $f4, 0x007C($sp)           
/* 05DA8 80B6F748 E7A00078 */  swc1    $f0, 0x0078($sp)           
/* 05DAC 80B6F74C 0C0400A4 */  jal     sinf
              
/* 05DB0 80B6F750 46000306 */  mov.s   $f12, $f0                  
/* 05DB4 80B6F754 C7A8007C */  lwc1    $f8, 0x007C($sp)           
/* 05DB8 80B6F758 C7AC0078 */  lwc1    $f12, 0x0078($sp)          
/* 05DBC 80B6F75C 46080282 */  mul.s   $f10, $f0, $f8             
/* 05DC0 80B6F760 0C041184 */  jal     cosf
              
/* 05DC4 80B6F764 E7AA009C */  swc1    $f10, 0x009C($sp)          
/* 05DC8 80B6F768 C7A6007C */  lwc1    $f6, 0x007C($sp)           
/* 05DCC 80B6F76C 3C014040 */  lui     $at, 0x4040                ## $at = 40400000
/* 05DD0 80B6F770 44816000 */  mtc1    $at, $f12                  ## $f12 = 3.00
/* 05DD4 80B6F774 46060102 */  mul.s   $f4, $f0, $f6              
/* 05DD8 80B6F778 0C00CFBE */  jal     Math_Rand_ZeroFloat
              
/* 05DDC 80B6F77C E7A400A4 */  swc1    $f4, 0x00A4($sp)           
/* 05DE0 80B6F780 3C014040 */  lui     $at, 0x4040                ## $at = 40400000
/* 05DE4 80B6F784 44811000 */  mtc1    $at, $f2                   ## $f2 = 3.00
/* 05DE8 80B6F788 3C0F80B8 */  lui     $t7, %hi(D_80B7E0B8)       ## $t7 = 80B80000
/* 05DEC 80B6F78C 25EFE0B8 */  addiu   $t7, $t7, %lo(D_80B7E0B8)  ## $t7 = 80B7E0B8
/* 05DF0 80B6F790 46020200 */  add.s   $f8, $f0, $f2              
/* 05DF4 80B6F794 27B900A8 */  addiu   $t9, $sp, 0x00A8           ## $t9 = FFFFFFC0
/* 05DF8 80B6F798 3C0180B8 */  lui     $at, %hi(D_80B7B4C8)       ## $at = 80B80000
/* 05DFC 80B6F79C E7A800A0 */  swc1    $f8, 0x00A0($sp)           
/* 05E00 80B6F7A0 8DF80000 */  lw      $t8, 0x0000($t7)           ## 80B7E0B8
/* 05E04 80B6F7A4 8DEE0004 */  lw      $t6, 0x0004($t7)           ## 80B7E0BC
/* 05E08 80B6F7A8 AF380000 */  sw      $t8, 0x0000($t9)           ## FFFFFFC0
/* 05E0C 80B6F7AC 8DF80008 */  lw      $t8, 0x0008($t7)           ## 80B7E0C0
/* 05E10 80B6F7B0 AF2E0004 */  sw      $t6, 0x0004($t9)           ## FFFFFFC4
/* 05E14 80B6F7B4 AF380008 */  sw      $t8, 0x0008($t9)           ## FFFFFFC8
/* 05E18 80B6F7B8 C7A6009C */  lwc1    $f6, 0x009C($sp)           
/* 05E1C 80B6F7BC C7AA00A8 */  lwc1    $f10, 0x00A8($sp)          
/* 05E20 80B6F7C0 8FB900EC */  lw      $t9, 0x00EC($sp)           
/* 05E24 80B6F7C4 46023102 */  mul.s   $f4, $f6, $f2              
/* 05E28 80B6F7C8 C42CB4C8 */  lwc1    $f12, %lo(D_80B7B4C8)($at) 
/* 05E2C 80B6F7CC 46045200 */  add.s   $f8, $f10, $f4             
/* 05E30 80B6F7D0 C7A400B0 */  lwc1    $f4, 0x00B0($sp)           
/* 05E34 80B6F7D4 E7A800A8 */  swc1    $f8, 0x00A8($sp)           
/* 05E38 80B6F7D8 8F2F07C0 */  lw      $t7, 0x07C0($t9)           ## 00000780
/* 05E3C 80B6F7DC C7A800A4 */  lwc1    $f8, 0x00A4($sp)           
/* 05E40 80B6F7E0 8DEE0028 */  lw      $t6, 0x0028($t7)           ## 80B7E0E0
/* 05E44 80B6F7E4 85D80002 */  lh      $t8, 0x0002($t6)           ## 00000002
/* 05E48 80B6F7E8 44983000 */  mtc1    $t8, $f6                   ## $f6 = 0.00
/* 05E4C 80B6F7EC 00000000 */  nop
/* 05E50 80B6F7F0 468032A0 */  cvt.s.w $f10, $f6                  
/* 05E54 80B6F7F4 46024182 */  mul.s   $f6, $f8, $f2              
/* 05E58 80B6F7F8 E7AA00AC */  swc1    $f10, 0x00AC($sp)          
/* 05E5C 80B6F7FC 46062280 */  add.s   $f10, $f4, $f6             
/* 05E60 80B6F800 0C00CFBE */  jal     Math_Rand_ZeroFloat
              
/* 05E64 80B6F804 E7AA00B0 */  swc1    $f10, 0x00B0($sp)          
/* 05E68 80B6F808 3C0180B8 */  lui     $at, %hi(D_80B7B4CC)       ## $at = 80B80000
/* 05E6C 80B6F80C C428B4CC */  lwc1    $f8, %lo(D_80B7B4CC)($at)  
/* 05E70 80B6F810 8FB90040 */  lw      $t9, 0x0040($sp)           
/* 05E74 80B6F814 00002025 */  or      $a0, $zero, $zero          ## $a0 = 00000000
/* 05E78 80B6F818 46080100 */  add.s   $f4, $f0, $f8              
/* 05E7C 80B6F81C 8F251E10 */  lw      $a1, 0x1E10($t9)           ## 00001E10
/* 05E80 80B6F820 27A600A8 */  addiu   $a2, $sp, 0x00A8           ## $a2 = FFFFFFC0
/* 05E84 80B6F824 27A7009C */  addiu   $a3, $sp, 0x009C           ## $a3 = FFFFFFB4
/* 05E88 80B6F828 0C2DA762 */  jal     func_80B69D88              
/* 05E8C 80B6F82C E7A40010 */  swc1    $f4, 0x0010($sp)           
/* 05E90 80B6F830 26100001 */  addiu   $s0, $s0, 0x0001           ## $s0 = 00000001
/* 05E94 80B6F834 00108400 */  sll     $s0, $s0, 16               
/* 05E98 80B6F838 00108403 */  sra     $s0, $s0, 16               
/* 05E9C 80B6F83C 2A010032 */  slti    $at, $s0, 0x0032           
/* 05EA0 80B6F840 5420FFB7 */  bnel    $at, $zero, .L80B6F720     
/* 05EA4 80B6F844 3C013FC0 */  lui     $at, 0x3FC0                ## $at = 3FC00000
/* 05EA8 80B6F848 3C0E80B8 */  lui     $t6, %hi(D_80B7E0B8)       ## $t6 = 80B80000
/* 05EAC 80B6F84C 25CEE0B8 */  addiu   $t6, $t6, %lo(D_80B7E0B8)  ## $t6 = 80B7E0B8
/* 05EB0 80B6F850 8DD90000 */  lw      $t9, 0x0000($t6)           ## 80B7E0B8
/* 05EB4 80B6F854 27AF00A8 */  addiu   $t7, $sp, 0x00A8           ## $t7 = FFFFFFC0
/* 05EB8 80B6F858 8DD80004 */  lw      $t8, 0x0004($t6)           ## 80B7E0BC
/* 05EBC 80B6F85C ADF90000 */  sw      $t9, 0x0000($t7)           ## FFFFFFC0
/* 05EC0 80B6F860 8DD90008 */  lw      $t9, 0x0008($t6)           ## 80B7E0C0
/* 05EC4 80B6F864 ADF80004 */  sw      $t8, 0x0004($t7)           ## FFFFFFC4
/* 05EC8 80B6F868 3C014448 */  lui     $at, 0x4448                ## $at = 44480000
/* 05ECC 80B6F86C ADF90008 */  sw      $t9, 0x0008($t7)           ## FFFFFFC8
/* 05ED0 80B6F870 8FAF00EC */  lw      $t7, 0x00EC($sp)           
/* 05ED4 80B6F874 44814000 */  mtc1    $at, $f8                   ## $f8 = 800.00
/* 05ED8 80B6F878 00002025 */  or      $a0, $zero, $zero          ## $a0 = 00000000
/* 05EDC 80B6F87C 8DEE07C0 */  lw      $t6, 0x07C0($t7)           ## 00000780
/* 05EE0 80B6F880 8FAF0040 */  lw      $t7, 0x0040($sp)           
/* 05EE4 80B6F884 27A600A8 */  addiu   $a2, $sp, 0x00A8           ## $a2 = FFFFFFC0
/* 05EE8 80B6F888 8DD80028 */  lw      $t8, 0x0028($t6)           ## 80B7E0E0
/* 05EEC 80B6F88C 240E0096 */  addiu   $t6, $zero, 0x0096         ## $t6 = 00000096
/* 05EF0 80B6F890 3C0742C8 */  lui     $a3, 0x42C8                ## $a3 = 42C80000
/* 05EF4 80B6F894 87190002 */  lh      $t9, 0x0002($t8)           ## 00000002
/* 05EF8 80B6F898 2418005A */  addiu   $t8, $zero, 0x005A         ## $t8 = 0000005A
/* 05EFC 80B6F89C 44993000 */  mtc1    $t9, $f6                   ## $f6 = 0.00
/* 05F00 80B6F8A0 00000000 */  nop
/* 05F04 80B6F8A4 468032A0 */  cvt.s.w $f10, $f6                  
/* 05F08 80B6F8A8 E7AA00AC */  swc1    $f10, 0x00AC($sp)          
/* 05F0C 80B6F8AC 8DE51E10 */  lw      $a1, 0x1E10($t7)           ## 00001DD0
/* 05F10 80B6F8B0 AFB80018 */  sw      $t8, 0x0018($sp)           
/* 05F14 80B6F8B4 AFAE0014 */  sw      $t6, 0x0014($sp)           
/* 05F18 80B6F8B8 0C2DA70B */  jal     func_80B69C2C              
/* 05F1C 80B6F8BC E7A80010 */  swc1    $f8, 0x0010($sp)           
/* 05F20 80B6F8C0 3C0180B8 */  lui     $at, %hi(D_80B7E0BC)       ## $at = 80B80000
/* 05F24 80B6F8C4 C42EE0BC */  lwc1    $f14, %lo(D_80B7E0BC)($at) 
/* 05F28 80B6F8C8 C432E0B8 */  lwc1    $f18, %lo(D_80B7E0B8)($at) 
/* 05F2C 80B6F8CC 3C0180B8 */  lui     $at, %hi(D_80B7E0C0)       ## $at = 80B80000
/* 05F30 80B6F8D0 C424E0C0 */  lwc1    $f4, %lo(D_80B7E0C0)($at)  
/* 05F34 80B6F8D4 1000000D */  beq     $zero, $zero, .L80B6F90C   
/* 05F38 80B6F8D8 E7A40034 */  swc1    $f4, 0x0034($sp)           
.L80B6F8DC:
/* 05F3C 80B6F8DC 0C01E123 */  jal     Math_SmoothDownscaleMaxF
              
/* 05F40 80B6F8E0 34C6CCCD */  ori     $a2, $a2, 0xCCCD           ## $a2 = 0000CCCD
/* 05F44 80B6F8E4 3C0480B8 */  lui     $a0, %hi(D_80B7AF94)       ## $a0 = 80B80000
/* 05F48 80B6F8E8 2484AF94 */  addiu   $a0, $a0, %lo(D_80B7AF94)  ## $a0 = 80B7AF94
/* 05F4C 80B6F8EC 0C01E245 */  jal     func_80078914              
/* 05F50 80B6F8F0 240530A4 */  addiu   $a1, $zero, 0x30A4         ## $a1 = 000030A4
/* 05F54 80B6F8F4 3C0180B8 */  lui     $at, %hi(D_80B7E0BC)       ## $at = 80B80000
/* 05F58 80B6F8F8 C42EE0BC */  lwc1    $f14, %lo(D_80B7E0BC)($at) 
/* 05F5C 80B6F8FC C432E0B8 */  lwc1    $f18, %lo(D_80B7E0B8)($at) 
/* 05F60 80B6F900 3C0180B8 */  lui     $at, %hi(D_80B7E0C0)       ## $at = 80B80000
/* 05F64 80B6F904 C426E0C0 */  lwc1    $f6, %lo(D_80B7E0C0)($at)  
/* 05F68 80B6F908 E7A60034 */  swc1    $f6, 0x0034($sp)           
.L80B6F90C:
/* 05F6C 80B6F90C 3C0180B8 */  lui     $at, %hi(D_80B7EABC)       ## $at = 80B80000
/* 05F70 80B6F910 C7AA0034 */  lwc1    $f10, 0x0034($sp)          
/* 05F74 80B6F914 E432EABC */  swc1    $f18, %lo(D_80B7EABC)($at) 
/* 05F78 80B6F918 3C0180B8 */  lui     $at, %hi(D_80B7EAC0)       ## $at = 80B80000
/* 05F7C 80B6F91C E42EEAC0 */  swc1    $f14, %lo(D_80B7EAC0)($at) 
/* 05F80 80B6F920 E42AEAC4 */  swc1    $f10, %lo(D_80B7EAC4)($at) 
/* 05F84 80B6F924 3C013F80 */  lui     $at, 0x3F80                ## $at = 3F800000
/* 05F88 80B6F928 44814000 */  mtc1    $at, $f8                   ## $f8 = 1.00
/* 05F8C 80B6F92C 3C013F00 */  lui     $at, 0x3F00                ## $at = 3F000000
/* 05F90 80B6F930 44812000 */  mtc1    $at, $f4                   ## $f4 = 0.50
/* 05F94 80B6F934 3C0280B8 */  lui     $v0, %hi(D_80B7E140)       ## $v0 = 80B80000
/* 05F98 80B6F938 2442E140 */  addiu   $v0, $v0, %lo(D_80B7E140)  ## $v0 = 80B7E140
/* 05F9C 80B6F93C 3C0180B8 */  lui     $at, %hi(D_80B7E10C)       ## $at = 80B80000
/* 05FA0 80B6F940 E4480000 */  swc1    $f8, 0x0000($v0)           ## 80B7E140
/* 05FA4 80B6F944 10000434 */  beq     $zero, $zero, .L80B70A18   
/* 05FA8 80B6F948 E424E10C */  swc1    $f4, %lo(D_80B7E10C)($at)  
glabel L80B6F94C
/* 05FAC 80B6F94C 8FB900EC */  lw      $t9, 0x00EC($sp)           
/* 05FB0 80B6F950 3C0280B8 */  lui     $v0, %hi(D_80B7E0B8)       ## $v0 = 80B80000
/* 05FB4 80B6F954 2442E0B8 */  addiu   $v0, $v0, %lo(D_80B7E0B8)  ## $v0 = 80B7E0B8
/* 05FB8 80B6F958 8F2F07C0 */  lw      $t7, 0x07C0($t9)           ## 000007C0
/* 05FBC 80B6F95C C44E0004 */  lwc1    $f14, 0x0004($v0)          ## 80B7E0BC
/* 05FC0 80B6F960 8DEE0028 */  lw      $t6, 0x0028($t7)           ## 00000028
/* 05FC4 80B6F964 85D80002 */  lh      $t8, 0x0002($t6)           ## 00000002
/* 05FC8 80B6F968 44983000 */  mtc1    $t8, $f6                   ## $f6 = 0.00
/* 05FCC 80B6F96C 00000000 */  nop
/* 05FD0 80B6F970 468032A0 */  cvt.s.w $f10, $f6                  
/* 05FD4 80B6F974 460A703E */  c.le.s  $f14, $f10                 
/* 05FD8 80B6F978 00000000 */  nop
/* 05FDC 80B6F97C 4500001D */  bc1f    .L80B6F9F4                 
/* 05FE0 80B6F980 3C0380B8 */  lui     $v1, %hi(D_80B7E0E8)       ## $v1 = 80B80000
/* 05FE4 80B6F984 2463E0E8 */  addiu   $v1, $v1, %lo(D_80B7E0E8)  ## $v1 = 80B7E0E8
/* 05FE8 80B6F988 C4680004 */  lwc1    $f8, 0x0004($v1)           ## 80B7E0EC
/* 05FEC 80B6F98C 3C0480B8 */  lui     $a0, %hi(D_80B7E0EC)       ## $a0 = 80B80000
/* 05FF0 80B6F990 2484E0EC */  addiu   $a0, $a0, %lo(D_80B7E0EC)  ## $a0 = 80B7E0EC
/* 05FF4 80B6F994 46087100 */  add.s   $f4, $f14, $f8             
/* 05FF8 80B6F998 3C053F80 */  lui     $a1, 0x3F80                ## $a1 = 3F800000
/* 05FFC 80B6F99C 3C063F80 */  lui     $a2, 0x3F80                ## $a2 = 3F800000
/* 06000 80B6F9A0 0C01E123 */  jal     Math_SmoothDownscaleMaxF
              
/* 06004 80B6F9A4 E4440004 */  swc1    $f4, 0x0004($v0)           ## 80B7E0BC
/* 06008 80B6F9A8 3C1980B8 */  lui     $t9, %hi(D_80B7E0B6)       ## $t9 = 80B80000
/* 0600C 80B6F9AC 9339E0B6 */  lbu     $t9, %lo(D_80B7E0B6)($t9)  
/* 06010 80B6F9B0 24010002 */  addiu   $at, $zero, 0x0002         ## $at = 00000002
/* 06014 80B6F9B4 8FAF00EC */  lw      $t7, 0x00EC($sp)           
/* 06018 80B6F9B8 1321000E */  beq     $t9, $at, .L80B6F9F4       
/* 0601C 80B6F9BC 00000000 */  nop
/* 06020 80B6F9C0 8DEE07C0 */  lw      $t6, 0x07C0($t7)           ## 000007C0
/* 06024 80B6F9C4 3C0480B8 */  lui     $a0, %hi(D_80B7E0BC)       ## $a0 = 80B80000
/* 06028 80B6F9C8 2484E0BC */  addiu   $a0, $a0, %lo(D_80B7E0BC)  ## $a0 = 80B7E0BC
/* 0602C 80B6F9CC 8DD80028 */  lw      $t8, 0x0028($t6)           ## 00000028
/* 06030 80B6F9D0 3C063F00 */  lui     $a2, 0x3F00                ## $a2 = 3F000000
/* 06034 80B6F9D4 3C073F80 */  lui     $a3, 0x3F80                ## $a3 = 3F800000
/* 06038 80B6F9D8 87190002 */  lh      $t9, 0x0002($t8)           ## 00000002
/* 0603C 80B6F9DC 44993000 */  mtc1    $t9, $f6                   ## $f6 = -0.00
/* 06040 80B6F9E0 00000000 */  nop
/* 06044 80B6F9E4 468031A0 */  cvt.s.w $f6, $f6                   
/* 06048 80B6F9E8 44053000 */  mfc1    $a1, $f6                   
/* 0604C 80B6F9EC 0C01E107 */  jal     Math_SmoothScaleMaxF
              
/* 06050 80B6F9F0 00000000 */  nop
.L80B6F9F4:
/* 06054 80B6F9F4 3C0480B8 */  lui     $a0, %hi(D_80B7E148)       ## $a0 = 80B80000
/* 06058 80B6F9F8 3C073DCC */  lui     $a3, 0x3DCC                ## $a3 = 3DCC0000
/* 0605C 80B6F9FC 34E7CCCD */  ori     $a3, $a3, 0xCCCD           ## $a3 = 3DCCCCCD
/* 06060 80B6FA00 2484E148 */  addiu   $a0, $a0, %lo(D_80B7E148)  ## $a0 = 80B7E148
/* 06064 80B6FA04 3C054000 */  lui     $a1, 0x4000                ## $a1 = 40000000
/* 06068 80B6FA08 0C01E107 */  jal     Math_SmoothScaleMaxF
              
/* 0606C 80B6FA0C 3C063F80 */  lui     $a2, 0x3F80                ## $a2 = 3F800000
/* 06070 80B6FA10 3C0480B8 */  lui     $a0, %hi(D_80B7E0A2)       ## $a0 = 80B80000
/* 06074 80B6FA14 2484E0A2 */  addiu   $a0, $a0, %lo(D_80B7E0A2)  ## $a0 = 80B7E0A2
/* 06078 80B6FA18 90820000 */  lbu     $v0, 0x0000($a0)           ## 80B7E0A2
/* 0607C 80B6FA1C 14400004 */  bne     $v0, $zero, .L80B6FA30     
/* 06080 80B6FA20 240F0003 */  addiu   $t7, $zero, 0x0003         ## $t7 = 00000003
/* 06084 80B6FA24 3C0180B8 */  lui     $at, %hi(D_80B7A694)       ## $at = 80B80000
/* 06088 80B6FA28 100003FB */  beq     $zero, $zero, .L80B70A18   
/* 0608C 80B6FA2C A42FA694 */  sh      $t7, %lo(D_80B7A694)($at)  
.L80B6FA30:
/* 06090 80B6FA30 244EFFFF */  addiu   $t6, $v0, 0xFFFF           ## $t6 = FFFFFFFF
/* 06094 80B6FA34 100003F8 */  beq     $zero, $zero, .L80B70A18   
/* 06098 80B6FA38 A08E0000 */  sb      $t6, 0x0000($a0)           ## 80B7E0A2
glabel L80B6FA3C
/* 0609C 80B6FA3C 3C1880B8 */  lui     $t8, %hi(D_80B7A68C)       ## $t8 = 80B80000
/* 060A0 80B6FA40 9318A68C */  lbu     $t8, %lo(D_80B7A68C)($t8)  
/* 060A4 80B6FA44 3C0180B8 */  lui     $at, %hi(D_80B7FEA0)       ## $at = 80B80000
/* 060A8 80B6FA48 A420FEA0 */  sh      $zero, %lo(D_80B7FEA0)($at) 
/* 060AC 80B6FA4C 13000010 */  beq     $t8, $zero, .L80B6FA90     
/* 060B0 80B6FA50 3C0780B8 */  lui     $a3, %hi(D_80B7E0B8)       ## $a3 = 80B80000
/* 060B4 80B6FA54 24E7E0B8 */  addiu   $a3, $a3, %lo(D_80B7E0B8)  ## $a3 = 80B7E0B8
/* 060B8 80B6FA58 C4F20000 */  lwc1    $f18, 0x0000($a3)          ## 80B7E0B8
/* 060BC 80B6FA5C C4E00008 */  lwc1    $f0, 0x0008($a3)           ## 80B7E0C0
/* 060C0 80B6FA60 3C0180B8 */  lui     $at, %hi(D_80B7B4D0)       ## $at = 80B80000
/* 060C4 80B6FA64 46129282 */  mul.s   $f10, $f18, $f18           
/* 060C8 80B6FA68 C426B4D0 */  lwc1    $f6, %lo(D_80B7B4D0)($at)  
/* 060CC 80B6FA6C 3C0180B8 */  lui     $at, %hi(D_80B7A690)       ## $at = 80B80000
/* 060D0 80B6FA70 46000202 */  mul.s   $f8, $f0, $f0              
/* 060D4 80B6FA74 24190001 */  addiu   $t9, $zero, 0x0001         ## $t9 = 00000001
/* 060D8 80B6FA78 46085100 */  add.s   $f4, $f10, $f8             
/* 060DC 80B6FA7C 4606203C */  c.lt.s  $f4, $f6                   
/* 060E0 80B6FA80 00000000 */  nop
/* 060E4 80B6FA84 45020003 */  bc1fl   .L80B6FA94                 
/* 060E8 80B6FA88 8FAE00C0 */  lw      $t6, 0x00C0($sp)           
/* 060EC 80B6FA8C A039A690 */  sb      $t9, %lo(D_80B7A690)($at)  
.L80B6FA90:
/* 060F0 80B6FA90 8FAE00C0 */  lw      $t6, 0x00C0($sp)           
.L80B6FA94:
/* 060F4 80B6FA94 240F0002 */  addiu   $t7, $zero, 0x0002         ## $t7 = 00000002
/* 060F8 80B6FA98 3C0180B8 */  lui     $at, %hi(D_80B7E138)       ## $at = 80B80000
/* 060FC 80B6FA9C A5CF0860 */  sh      $t7, 0x0860($t6)           ## 0000085F
/* 06100 80B6FAA0 C42AE138 */  lwc1    $f10, %lo(D_80B7E138)($at) 
/* 06104 80B6FAA4 3C014040 */  lui     $at, 0x4040                ## $at = 40400000
/* 06108 80B6FAA8 44814000 */  mtc1    $at, $f8                   ## $f8 = 3.00
/* 0610C 80B6FAAC 3C0780B8 */  lui     $a3, %hi(D_80B7E0B8)       ## $a3 = 80B80000
/* 06110 80B6FAB0 24E7E0B8 */  addiu   $a3, $a3, %lo(D_80B7E0B8)  ## $a3 = 80B7E0B8
/* 06114 80B6FAB4 4608503C */  c.lt.s  $f10, $f8                  
/* 06118 80B6FAB8 3C0480B8 */  lui     $a0, %hi(D_80B7E0AE)       ## $a0 = 80B80000
/* 0611C 80B6FABC 3C0180B8 */  lui     $at, %hi(D_80B7E110)       ## $at = 80B80000
/* 06120 80B6FAC0 4502002E */  bc1fl   .L80B6FB7C                 
/* 06124 80B6FAC4 44804000 */  mtc1    $zero, $f8                 ## $f8 = 0.00
/* 06128 80B6FAC8 8484E0AE */  lh      $a0, %lo(D_80B7E0AE)($a0)  
/* 0612C 80B6FACC 00800821 */  addu    $at, $a0, $zero            
/* 06130 80B6FAD0 00042140 */  sll     $a0, $a0,  5               
/* 06134 80B6FAD4 00812021 */  addu    $a0, $a0, $at              
/* 06138 80B6FAD8 00042080 */  sll     $a0, $a0,  2               
/* 0613C 80B6FADC 00812023 */  subu    $a0, $a0, $at              
/* 06140 80B6FAE0 00042140 */  sll     $a0, $a0,  5               
/* 06144 80B6FAE4 00042400 */  sll     $a0, $a0, 16               
/* 06148 80B6FAE8 0C01DE1C */  jal     Math_Sins
              ## sins?
/* 0614C 80B6FAEC 00042403 */  sra     $a0, $a0, 16               
/* 06150 80B6FAF0 3C0180B8 */  lui     $at, %hi(D_80B7E10C)       ## $at = 80B80000
/* 06154 80B6FAF4 C424E10C */  lwc1    $f4, %lo(D_80B7E10C)($at)  
/* 06158 80B6FAF8 3C0180B8 */  lui     $at, %hi(D_80B7B4D4)       ## $at = 80B80000
/* 0615C 80B6FAFC C426B4D4 */  lwc1    $f6, %lo(D_80B7B4D4)($at)  
/* 06160 80B6FB00 46040302 */  mul.s   $f12, $f0, $f4             
/* 06164 80B6FB04 3C1080B8 */  lui     $s0, %hi(D_80B7E0D8)       ## $s0 = 80B80000
/* 06168 80B6FB08 2610E0D8 */  addiu   $s0, $s0, %lo(D_80B7E0D8)  ## $s0 = 80B7E0D8
/* 0616C 80B6FB0C 3C063E99 */  lui     $a2, 0x3E99                ## $a2 = 3E990000
/* 06170 80B6FB10 3C0780B8 */  lui     $a3, %hi(D_80B7E110)       ## $a3 = 80B80000
/* 06174 80B6FB14 8CE7E110 */  lw      $a3, %lo(D_80B7E110)($a3)  
/* 06178 80B6FB18 34C6999A */  ori     $a2, $a2, 0x999A           ## $a2 = 3E99999A
/* 0617C 80B6FB1C 460C3280 */  add.s   $f10, $f6, $f12            
/* 06180 80B6FB20 02002025 */  or      $a0, $s0, $zero            ## $a0 = 80B7E0D8
/* 06184 80B6FB24 44055000 */  mfc1    $a1, $f10                  
/* 06188 80B6FB28 0C01E107 */  jal     Math_SmoothScaleMaxF
              
/* 0618C 80B6FB2C 00000000 */  nop
/* 06190 80B6FB30 3C0480B8 */  lui     $a0, %hi(D_80B7E110)       ## $a0 = 80B80000
/* 06194 80B6FB34 3C073CA3 */  lui     $a3, 0x3CA3                ## $a3 = 3CA30000
/* 06198 80B6FB38 34E7D70A */  ori     $a3, $a3, 0xD70A           ## $a3 = 3CA3D70A
/* 0619C 80B6FB3C 2484E110 */  addiu   $a0, $a0, %lo(D_80B7E110)  ## $a0 = 80B7E110
/* 061A0 80B6FB40 3C053F00 */  lui     $a1, 0x3F00                ## $a1 = 3F000000
/* 061A4 80B6FB44 0C01E107 */  jal     Math_SmoothScaleMaxF
              
/* 061A8 80B6FB48 3C063F80 */  lui     $a2, 0x3F80                ## $a2 = 3F800000
/* 061AC 80B6FB4C 3C0480B8 */  lui     $a0, %hi(D_80B7E10C)       ## $a0 = 80B80000
/* 061B0 80B6FB50 3C063CA3 */  lui     $a2, 0x3CA3                ## $a2 = 3CA30000
/* 061B4 80B6FB54 34C6D70A */  ori     $a2, $a2, 0xD70A           ## $a2 = 3CA3D70A
/* 061B8 80B6FB58 2484E10C */  addiu   $a0, $a0, %lo(D_80B7E10C)  ## $a0 = 80B7E10C
/* 061BC 80B6FB5C 0C01E123 */  jal     Math_SmoothDownscaleMaxF
              
/* 061C0 80B6FB60 3C053F80 */  lui     $a1, 0x3F80                ## $a1 = 3F800000
/* 061C4 80B6FB64 3C0880B8 */  lui     $t0, %hi(D_80B7EAC8)       ## $t0 = 80B80000
/* 061C8 80B6FB68 3C0780B8 */  lui     $a3, %hi(D_80B7E0B8)       ## $a3 = 80B80000
/* 061CC 80B6FB6C 24E7E0B8 */  addiu   $a3, $a3, %lo(D_80B7E0B8)  ## $a3 = 80B7E0B8
/* 061D0 80B6FB70 10000005 */  beq     $zero, $zero, .L80B6FB88   
/* 061D4 80B6FB74 2508EAC8 */  addiu   $t0, $t0, %lo(D_80B7EAC8)  ## $t0 = 80B7EAC8
/* 061D8 80B6FB78 44804000 */  mtc1    $zero, $f8                 ## $f8 = 0.00
.L80B6FB7C:
/* 061DC 80B6FB7C 3C1080B8 */  lui     $s0, %hi(D_80B7E0D8)       ## $s0 = 80B80000
/* 061E0 80B6FB80 2610E0D8 */  addiu   $s0, $s0, %lo(D_80B7E0D8)  ## $s0 = 80B7E0D8
/* 061E4 80B6FB84 E428E110 */  swc1    $f8, %lo(D_80B7E110)($at)  
.L80B6FB88:
/* 061E8 80B6FB88 8FA900EC */  lw      $t1, 0x00EC($sp)           
/* 061EC 80B6FB8C 24184000 */  addiu   $t8, $zero, 0x4000         ## $t8 = 00004000
/* 061F0 80B6FB90 A7B800DC */  sh      $t8, 0x00DC($sp)           
/* 061F4 80B6FB94 8D3907C0 */  lw      $t9, 0x07C0($t1)           ## 000007C0
/* 061F8 80B6FB98 C4E60008 */  lwc1    $f6, 0x0008($a3)           ## 80B7E0C0
/* 061FC 80B6FB9C C4F20000 */  lwc1    $f18, 0x0000($a3)          ## 80B7E0B8
/* 06200 80B6FBA0 8F2F0028 */  lw      $t7, 0x0028($t9)           ## 00000028
/* 06204 80B6FBA4 3C0180B8 */  lui     $at, %hi(D_80B7B4D8)       ## $at = 80B80000
/* 06208 80B6FBA8 85EE0002 */  lh      $t6, 0x0002($t7)           ## 00000002
/* 0620C 80B6FBAC E7A60034 */  swc1    $f6, 0x0034($sp)           
/* 06210 80B6FBB0 C7AA0034 */  lwc1    $f10, 0x0034($sp)          
/* 06214 80B6FBB4 448E2000 */  mtc1    $t6, $f4                   ## $f4 = 0.00
/* 06218 80B6FBB8 C426B4D8 */  lwc1    $f6, %lo(D_80B7B4D8)($at)  
/* 0621C 80B6FBBC 460A5202 */  mul.s   $f8, $f10, $f10            
/* 06220 80B6FBC0 3C014080 */  lui     $at, 0x4080                ## $at = 40800000
/* 06224 80B6FBC4 468020A0 */  cvt.s.w $f2, $f4                   
/* 06228 80B6FBC8 46129102 */  mul.s   $f4, $f18, $f18            
/* 0622C 80B6FBCC E7A200E4 */  swc1    $f2, 0x00E4($sp)           
/* 06230 80B6FBD0 C7AA00E4 */  lwc1    $f10, 0x00E4($sp)          
/* 06234 80B6FBD4 46082300 */  add.s   $f12, $f4, $f8             
/* 06238 80B6FBD8 4606603C */  c.lt.s  $f12, $f6                  
/* 0623C 80B6FBDC 00000000 */  nop
/* 06240 80B6FBE0 45020103 */  bc1fl   .L80B6FFF0                 
/* 06244 80B6FBE4 46006004 */  sqrt.s  $f0, $f12                  
/* 06248 80B6FBE8 44812000 */  mtc1    $at, $f4                   ## $f4 = 4.00
/* 0624C 80B6FBEC C4EE0004 */  lwc1    $f14, 0x0004($a3)          ## 80B7E0BC
/* 06250 80B6FBF0 3C1880B8 */  lui     $t8, %hi(D_80B7E150)       ## $t8 = 80B80000
/* 06254 80B6FBF4 46045200 */  add.s   $f8, $f10, $f4             
/* 06258 80B6FBF8 3C0180B8 */  lui     $at, %hi(D_80B7E144)       ## $at = 80B80000
/* 0625C 80B6FBFC 4608703E */  c.le.s  $f14, $f8                  
/* 06260 80B6FC00 00000000 */  nop
/* 06264 80B6FC04 450000E1 */  bc1f    .L80B6FF8C                 
/* 06268 80B6FC08 00000000 */  nop
/* 0626C 80B6FC0C 8718E150 */  lh      $t8, %lo(D_80B7E150)($t8)  
/* 06270 80B6FC10 44808000 */  mtc1    $zero, $f16                ## $f16 = 0.00
/* 06274 80B6FC14 25230014 */  addiu   $v1, $t1, 0x0014           ## $v1 = 00000014
/* 06278 80B6FC18 5700002B */  bnel    $t8, $zero, .L80B6FCC8     
/* 0627C 80B6FC1C 3C013F80 */  lui     $at, 0x3F80                ## $at = 3F800000
/* 06280 80B6FC20 80620014 */  lb      $v0, 0x0014($v1)           ## 00000028
/* 06284 80B6FC24 3C0141F0 */  lui     $at, 0x41F0                ## $at = 41F00000
/* 06288 80B6FC28 44815000 */  mtc1    $at, $f10                  ## $f10 = 30.00
/* 0628C 80B6FC2C 44823000 */  mtc1    $v0, $f6                   ## $f6 = 0.00
/* 06290 80B6FC30 3C1980B8 */  lui     $t9, %hi(D_80B7A6C4)       ## $t9 = 80B80000
/* 06294 80B6FC34 46803020 */  cvt.s.w $f0, $f6                   
/* 06298 80B6FC38 46000005 */  abs.s   $f0, $f0                   
/* 0629C 80B6FC3C 4600503C */  c.lt.s  $f10, $f0                  
/* 062A0 80B6FC40 00000000 */  nop
/* 062A4 80B6FC44 4502000C */  bc1fl   .L80B6FC78                 
/* 062A8 80B6FC48 80620015 */  lb      $v0, 0x0015($v1)           ## 00000029
/* 062AC 80B6FC4C 8739A6C4 */  lh      $t9, %lo(D_80B7A6C4)($t9)  
/* 062B0 80B6FC50 3C0180B8 */  lui     $at, %hi(D_80B7B4DC)       ## $at = 80B80000
/* 062B4 80B6FC54 C426B4DC */  lwc1    $f6, %lo(D_80B7B4DC)($at)  
/* 062B8 80B6FC58 00597823 */  subu    $t7, $v0, $t9              
/* 062BC 80B6FC5C 448F2000 */  mtc1    $t7, $f4                   ## $f4 = 0.00
/* 062C0 80B6FC60 00000000 */  nop
/* 062C4 80B6FC64 46802220 */  cvt.s.w $f8, $f4                   
/* 062C8 80B6FC68 46064002 */  mul.s   $f0, $f8, $f6              
/* 062CC 80B6FC6C 10000015 */  beq     $zero, $zero, .L80B6FCC4   
/* 062D0 80B6FC70 46000405 */  abs.s   $f16, $f0                  
/* 062D4 80B6FC74 80620015 */  lb      $v0, 0x0015($v1)           ## 00000029
.L80B6FC78:
/* 062D8 80B6FC78 3C0141F0 */  lui     $at, 0x41F0                ## $at = 41F00000
/* 062DC 80B6FC7C 44812000 */  mtc1    $at, $f4                   ## $f4 = 30.00
/* 062E0 80B6FC80 44825000 */  mtc1    $v0, $f10                  ## $f10 = 0.00
/* 062E4 80B6FC84 3C0E80B8 */  lui     $t6, %hi(D_80B7A6C8)       ## $t6 = 80B80000
/* 062E8 80B6FC88 46805020 */  cvt.s.w $f0, $f10                  
/* 062EC 80B6FC8C 46000005 */  abs.s   $f0, $f0                   
/* 062F0 80B6FC90 4600203C */  c.lt.s  $f4, $f0                   
/* 062F4 80B6FC94 00000000 */  nop
/* 062F8 80B6FC98 4502000B */  bc1fl   .L80B6FCC8                 
/* 062FC 80B6FC9C 3C013F80 */  lui     $at, 0x3F80                ## $at = 3F800000
/* 06300 80B6FCA0 85CEA6C8 */  lh      $t6, %lo(D_80B7A6C8)($t6)  
/* 06304 80B6FCA4 3C0180B8 */  lui     $at, %hi(D_80B7B4E0)       ## $at = 80B80000
/* 06308 80B6FCA8 C42AB4E0 */  lwc1    $f10, %lo(D_80B7B4E0)($at) 
/* 0630C 80B6FCAC 004EC023 */  subu    $t8, $v0, $t6              
/* 06310 80B6FCB0 44984000 */  mtc1    $t8, $f8                   ## $f8 = -0.00
/* 06314 80B6FCB4 00000000 */  nop
/* 06318 80B6FCB8 468041A0 */  cvt.s.w $f6, $f8                   
/* 0631C 80B6FCBC 460A3002 */  mul.s   $f0, $f6, $f10             
/* 06320 80B6FCC0 46000405 */  abs.s   $f16, $f0                  
.L80B6FCC4:
/* 06324 80B6FCC4 3C013F80 */  lui     $at, 0x3F80                ## $at = 3F800000
.L80B6FCC8:
/* 06328 80B6FCC8 44812000 */  mtc1    $at, $f4                   ## $f4 = 1.00
/* 0632C 80B6FCCC 25220014 */  addiu   $v0, $t1, 0x0014           ## $v0 = 00000014
/* 06330 80B6FCD0 3C013F80 */  lui     $at, 0x3F80                ## $at = 3F800000
/* 06334 80B6FCD4 4610203C */  c.lt.s  $f4, $f16                  
/* 06338 80B6FCD8 3C0E80B8 */  lui     $t6, %hi(D_80B7A68C)       ## $t6 = 80B80000
/* 0633C 80B6FCDC 45020004 */  bc1fl   .L80B6FCF0                 
/* 06340 80B6FCE0 9459000C */  lhu     $t9, 0x000C($v0)           ## 00000020
/* 06344 80B6FCE4 44818000 */  mtc1    $at, $f16                  ## $f16 = 1.00
/* 06348 80B6FCE8 00000000 */  nop
/* 0634C 80B6FCEC 9459000C */  lhu     $t9, 0x000C($v0)           ## 00000020
.L80B6FCF0:
/* 06350 80B6FCF0 2401BFFF */  addiu   $at, $zero, 0xBFFF         ## $at = FFFFBFFF
/* 06354 80B6FCF4 03217827 */  nor     $t7, $t9, $at              
/* 06358 80B6FCF8 15E00003 */  bne     $t7, $zero, .L80B6FD08     
/* 0635C 80B6FCFC 3C013F00 */  lui     $at, 0x3F00                ## $at = 3F000000
/* 06360 80B6FD00 44818000 */  mtc1    $at, $f16                  ## $f16 = 0.50
/* 06364 80B6FD04 00000000 */  nop
.L80B6FD08:
/* 06368 80B6FD08 91CEA68C */  lbu     $t6, %lo(D_80B7A68C)($t6)  
/* 0636C 80B6FD0C 3C0180B8 */  lui     $at, %hi(D_80B7B4E4)       ## $at = 80B80000
/* 06370 80B6FD10 11C00008 */  beq     $t6, $zero, .L80B6FD34     
/* 06374 80B6FD14 00000000 */  nop
/* 06378 80B6FD18 C428B4E4 */  lwc1    $f8, %lo(D_80B7B4E4)($at)  
/* 0637C 80B6FD1C 3C0180B8 */  lui     $at, %hi(D_80B7B4E8)       ## $at = 80B80000
/* 06380 80B6FD20 4610403C */  c.lt.s  $f8, $f16                  
/* 06384 80B6FD24 00000000 */  nop
/* 06388 80B6FD28 45000002 */  bc1f    .L80B6FD34                 
/* 0638C 80B6FD2C 00000000 */  nop
/* 06390 80B6FD30 C430B4E8 */  lwc1    $f16, %lo(D_80B7B4E8)($at) 
.L80B6FD34:
/* 06394 80B6FD34 3C0180B8 */  lui     $at, %hi(D_80B7B4EC)       ## $at = 80B80000
/* 06398 80B6FD38 C426B4EC */  lwc1    $f6, %lo(D_80B7B4EC)($at)  
/* 0639C 80B6FD3C 3C0180B8 */  lui     $at, %hi(D_80B7E138)       ## $at = 80B80000
/* 063A0 80B6FD40 4610303C */  c.lt.s  $f6, $f16                  
/* 063A4 80B6FD44 00000000 */  nop
/* 063A8 80B6FD48 4502006F */  bc1fl   .L80B6FF08                 
/* 063AC 80B6FD4C 944E0000 */  lhu     $t6, 0x0000($v0)           ## 00000014
/* 063B0 80B6FD50 C42AE138 */  lwc1    $f10, %lo(D_80B7E138)($at) 
/* 063B4 80B6FD54 3C014080 */  lui     $at, 0x4080                ## $at = 40800000
/* 063B8 80B6FD58 44812000 */  mtc1    $at, $f4                   ## $f4 = 4.00
/* 063BC 80B6FD5C 3C0180B8 */  lui     $at, %hi(D_80B7E150)       ## $at = 80B80000
/* 063C0 80B6FD60 24180005 */  addiu   $t8, $zero, 0x0005         ## $t8 = 00000005
/* 063C4 80B6FD64 4604503C */  c.lt.s  $f10, $f4                  
/* 063C8 80B6FD68 00000000 */  nop
/* 063CC 80B6FD6C 45020066 */  bc1fl   .L80B6FF08                 
/* 063D0 80B6FD70 944E0000 */  lhu     $t6, 0x0000($v0)           ## 00000014
/* 063D4 80B6FD74 A438E150 */  sh      $t8, %lo(D_80B7E150)($at)  
/* 063D8 80B6FD78 3C0180B8 */  lui     $at, %hi(D_80B7B4F0)       ## $at = 80B80000
/* 063DC 80B6FD7C C428B4F0 */  lwc1    $f8, %lo(D_80B7B4F0)($at)  
/* 063E0 80B6FD80 24190002 */  addiu   $t9, $zero, 0x0002         ## $t9 = 00000002
/* 063E4 80B6FD84 3C0180B8 */  lui     $at, %hi(D_80B7E120)       ## $at = 80B80000
/* 063E8 80B6FD88 4610403C */  c.lt.s  $f8, $f16                  
/* 063EC 80B6FD8C 240F0001 */  addiu   $t7, $zero, 0x0001         ## $t7 = 00000001
/* 063F0 80B6FD90 45000004 */  bc1f    .L80B6FDA4                 
/* 063F4 80B6FD94 00000000 */  nop
/* 063F8 80B6FD98 3C0180B8 */  lui     $at, %hi(D_80B7E120)       ## $at = 80B80000
/* 063FC 80B6FD9C 10000002 */  beq     $zero, $zero, .L80B6FDA8   
/* 06400 80B6FDA0 A039E120 */  sb      $t9, %lo(D_80B7E120)($at)  
.L80B6FDA4:
/* 06404 80B6FDA4 A02FE120 */  sb      $t7, %lo(D_80B7E120)($at)  
.L80B6FDA8:
/* 06408 80B6FDA8 8FAE00C0 */  lw      $t6, 0x00C0($sp)           
/* 0640C 80B6FDAC C7A80034 */  lwc1    $f8, 0x0034($sp)           
/* 06410 80B6FDB0 C5C60024 */  lwc1    $f6, 0x0024($t6)           ## 80B80024
/* 06414 80B6FDB4 46123381 */  sub.s   $f14, $f6, $f18            
/* 06418 80B6FDB8 E7AE0090 */  swc1    $f14, 0x0090($sp)          
/* 0641C 80B6FDBC C5C4002C */  lwc1    $f4, 0x002C($t6)           ## 80B8002C
/* 06420 80B6FDC0 E7B00070 */  swc1    $f16, 0x0070($sp)          
/* 06424 80B6FDC4 46082301 */  sub.s   $f12, $f4, $f8             
/* 06428 80B6FDC8 0C0341F5 */  jal     atan2f
              
/* 0642C 80B6FDCC E7AC0098 */  swc1    $f12, 0x0098($sp)          
/* 06430 80B6FDD0 3C0280B8 */  lui     $v0, %hi(D_80B7E140)       ## $v0 = 80B80000
/* 06434 80B6FDD4 2442E140 */  addiu   $v0, $v0, %lo(D_80B7E140)  ## $v0 = 80B7E140
/* 06438 80B6FDD8 C7B00070 */  lwc1    $f16, 0x0070($sp)          
/* 0643C 80B6FDDC C4420000 */  lwc1    $f2, 0x0000($v0)           ## 80B7E140
/* 06440 80B6FDE0 3C0180B8 */  lui     $at, %hi(D_80B7E134)       ## $at = 80B80000
/* 06444 80B6FDE4 E7A00094 */  swc1    $f0, 0x0094($sp)           
/* 06448 80B6FDE8 46028102 */  mul.s   $f4, $f16, $f2             
/* 0644C 80B6FDEC 3C188016 */  lui     $t8, %hi(gGameInfo)
/* 06450 80B6FDF0 3C0380B8 */  lui     $v1, %hi(D_80B7E144)       ## $v1 = 80B80000
/* 06454 80B6FDF4 2463E144 */  addiu   $v1, $v1, %lo(D_80B7E144)  ## $v1 = 80B7E144
/* 06458 80B6FDF8 3C0480B8 */  lui     $a0, %hi(D_80B7AF94)       ## $a0 = 80B80000
/* 0645C 80B6FDFC 2484AF94 */  addiu   $a0, $a0, %lo(D_80B7AF94)  ## $a0 = 80B7AF94
/* 06460 80B6FE00 240528C3 */  addiu   $a1, $zero, 0x28C3         ## $a1 = 000028C3
/* 06464 80B6FE04 46002200 */  add.s   $f8, $f4, $f0              
/* 06468 80B6FE08 46008005 */  abs.s   $f0, $f16                  
/* 0646C 80B6FE0C E428E134 */  swc1    $f8, %lo(D_80B7E134)($at)  
/* 06470 80B6FE10 3C01BF80 */  lui     $at, 0xBF80                ## $at = BF800000
/* 06474 80B6FE14 44813000 */  mtc1    $at, $f6                   ## $f6 = -1.00
/* 06478 80B6FE18 3C0140C0 */  lui     $at, 0x40C0                ## $at = 40C00000
/* 0647C 80B6FE1C 44812000 */  mtc1    $at, $f4                   ## $f4 = 6.00
/* 06480 80B6FE20 46061282 */  mul.s   $f10, $f2, $f6             
/* 06484 80B6FE24 44803000 */  mtc1    $zero, $f6                 ## $f6 = 0.00
/* 06488 80B6FE28 3C0180B8 */  lui     $at, %hi(D_80B7E138)       ## $at = 80B80000
/* 0648C 80B6FE2C 46040202 */  mul.s   $f8, $f0, $f4              
/* 06490 80B6FE30 E44A0000 */  swc1    $f10, 0x0000($v0)          ## 80B7E140
/* 06494 80B6FE34 E428E138 */  swc1    $f8, %lo(D_80B7E138)($at)  
/* 06498 80B6FE38 3C013F00 */  lui     $at, 0x3F00                ## $at = 3F000000
/* 0649C 80B6FE3C 44815000 */  mtc1    $at, $f10                  ## $f10 = 0.50
/* 064A0 80B6FE40 E6060000 */  swc1    $f6, 0x0000($s0)           ## 80B7E0D8
/* 064A4 80B6FE44 8F18FA90 */  lw      $t8, %lo(gGameInfo)($t8)
/* 064A8 80B6FE48 3C0180B8 */  lui     $at, %hi(D_80B7E10C)       ## $at = 80B80000
/* 064AC 80B6FE4C E42AE10C */  swc1    $f10, %lo(D_80B7E10C)($at) 
/* 064B0 80B6FE50 87190A06 */  lh      $t9, 0x0A06($t8)           ## 80160A06
/* 064B4 80B6FE54 3C0180B8 */  lui     $at, %hi(D_80B7B4F4)       ## $at = 80B80000
/* 064B8 80B6FE58 C426B4F4 */  lwc1    $f6, %lo(D_80B7B4F4)($at)  
/* 064BC 80B6FE5C 44992000 */  mtc1    $t9, $f4                   ## $f4 = 0.00
/* 064C0 80B6FE60 3C0140F0 */  lui     $at, 0x40F0                ## $at = 40F00000
/* 064C4 80B6FE64 46802220 */  cvt.s.w $f8, $f4                   
/* 064C8 80B6FE68 44812000 */  mtc1    $at, $f4                   ## $f4 = 7.50
/* 064CC 80B6FE6C 3C0180B8 */  lui     $at, %hi(D_80B7B4F8)       ## $at = 80B80000
/* 064D0 80B6FE70 46064282 */  mul.s   $f10, $f8, $f6             
/* 064D4 80B6FE74 460A2200 */  add.s   $f8, $f4, $f10             
/* 064D8 80B6FE78 C4640000 */  lwc1    $f4, 0x0000($v1)           ## 80B7E144
/* 064DC 80B6FE7C 46080182 */  mul.s   $f6, $f0, $f8              
/* 064E0 80B6FE80 46062280 */  add.s   $f10, $f4, $f6             
/* 064E4 80B6FE84 E46A0000 */  swc1    $f10, 0x0000($v1)          ## 80B7E144
/* 064E8 80B6FE88 C428B4F8 */  lwc1    $f8, %lo(D_80B7B4F8)($at)  
/* 064EC 80B6FE8C 3C013E80 */  lui     $at, 0x3E80                ## $at = 3E800000
/* 064F0 80B6FE90 44813000 */  mtc1    $at, $f6                   ## $f6 = 0.25
/* 064F4 80B6FE94 46088102 */  mul.s   $f4, $f16, $f8             
/* 064F8 80B6FE98 3C013F40 */  lui     $at, 0x3F40                ## $at = 3F400000
/* 064FC 80B6FE9C 44814000 */  mtc1    $at, $f8                   ## $f8 = 0.75
/* 06500 80B6FEA0 46062282 */  mul.s   $f10, $f4, $f6             
/* 06504 80B6FEA4 46085100 */  add.s   $f4, $f10, $f8             
/* 06508 80B6FEA8 44062000 */  mfc1    $a2, $f4                   
/* 0650C 80B6FEAC 0C03D0DB */  jal     func_800F436C              
/* 06510 80B6FEB0 00000000 */  nop
/* 06514 80B6FEB4 3C0F80B8 */  lui     $t7, %hi(D_80B7E0B6)       ## $t7 = 80B80000
/* 06518 80B6FEB8 91EFE0B6 */  lbu     $t7, %lo(D_80B7E0B6)($t7)  
/* 0651C 80B6FEBC 24010002 */  addiu   $at, $zero, 0x0002         ## $at = 00000002
/* 06520 80B6FEC0 C7B00070 */  lwc1    $f16, 0x0070($sp)          
/* 06524 80B6FEC4 15E1000D */  bne     $t7, $at, .L80B6FEFC       
/* 06528 80B6FEC8 3C0140A0 */  lui     $at, 0x40A0                ## $at = 40A00000
/* 0652C 80B6FECC 44813000 */  mtc1    $at, $f6                   ## $f6 = 5.00
/* 06530 80B6FED0 3C0180B8 */  lui     $at, %hi(D_80B7E12C)       ## $at = 80B80000
/* 06534 80B6FED4 46103282 */  mul.s   $f10, $f6, $f16            
/* 06538 80B6FED8 E42AE12C */  swc1    $f10, %lo(D_80B7E12C)($at) 
/* 0653C 80B6FEDC 3C0180B8 */  lui     $at, %hi(D_80B7EAC0)       ## $at = 80B80000
/* 06540 80B6FEE0 C428EAC0 */  lwc1    $f8, %lo(D_80B7EAC0)($at)  
/* 06544 80B6FEE4 460A4100 */  add.s   $f4, $f8, $f10             
/* 06548 80B6FEE8 E424EAC0 */  swc1    $f4, %lo(D_80B7EAC0)($at)  
/* 0654C 80B6FEEC 3C0180B8 */  lui     $at, %hi(D_80B7E0BC)       ## $at = 80B80000
/* 06550 80B6FEF0 C426E0BC */  lwc1    $f6, %lo(D_80B7E0BC)($at)  
/* 06554 80B6FEF4 460A3280 */  add.s   $f10, $f6, $f10            
/* 06558 80B6FEF8 E42AE0BC */  swc1    $f10, %lo(D_80B7E0BC)($at) 
.L80B6FEFC:
/* 0655C 80B6FEFC 1000007C */  beq     $zero, $zero, .L80B700F0   
/* 06560 80B6FF00 8FA900EC */  lw      $t1, 0x00EC($sp)           
/* 06564 80B6FF04 944E0000 */  lhu     $t6, 0x0000($v0)           ## 00000000
.L80B6FF08:
/* 06568 80B6FF08 3C01FFFF */  lui     $at, 0xFFFF                ## $at = FFFF0000
/* 0656C 80B6FF0C 34217FFF */  ori     $at, $at, 0x7FFF           ## $at = FFFF7FFF
/* 06570 80B6FF10 01C1C027 */  nor     $t8, $t6, $at              
/* 06574 80B6FF14 17000076 */  bne     $t8, $zero, .L80B700F0     
/* 06578 80B6FF18 3C0180B8 */  lui     $at, %hi(D_80B7B4FC)       ## $at = 80B80000
/* 0657C 80B6FF1C C508094C */  lwc1    $f8, 0x094C($t0)           ## 0000094C
/* 06580 80B6FF20 C424B4FC */  lwc1    $f4, %lo(D_80B7B4FC)($at)  
/* 06584 80B6FF24 3C0180B8 */  lui     $at, %hi(D_80B7E134)       ## $at = 80B80000
/* 06588 80B6FF28 44805000 */  mtc1    $zero, $f10                ## $f10 = 0.00
/* 0658C 80B6FF2C 46044180 */  add.s   $f6, $f8, $f4              
/* 06590 80B6FF30 3C0F80B8 */  lui     $t7, %hi(D_80B7E0B6)       ## $t7 = 80B80000
/* 06594 80B6FF34 24190500 */  addiu   $t9, $zero, 0x0500         ## $t9 = 00000500
/* 06598 80B6FF38 A7B900DC */  sh      $t9, 0x00DC($sp)           
/* 0659C 80B6FF3C E426E134 */  swc1    $f6, %lo(D_80B7E134)($at)  
/* 065A0 80B6FF40 3C013F00 */  lui     $at, 0x3F00                ## $at = 3F000000
/* 065A4 80B6FF44 44814000 */  mtc1    $at, $f8                   ## $f8 = 0.50
/* 065A8 80B6FF48 E60A0000 */  swc1    $f10, 0x0000($s0)          ## 80B7E0D8
/* 065AC 80B6FF4C 91EFE0B6 */  lbu     $t7, %lo(D_80B7E0B6)($t7)  
/* 065B0 80B6FF50 3C0180B8 */  lui     $at, %hi(D_80B7E10C)       ## $at = 80B80000
/* 065B4 80B6FF54 E428E10C */  swc1    $f8, %lo(D_80B7E10C)($at)  
/* 065B8 80B6FF58 24010002 */  addiu   $at, $zero, 0x0002         ## $at = 00000002
/* 065BC 80B6FF5C 15E10064 */  bne     $t7, $at, .L80B700F0       
/* 065C0 80B6FF60 3C0180B8 */  lui     $at, %hi(D_80B7B500)       ## $at = 80B80000
/* 065C4 80B6FF64 C424B500 */  lwc1    $f4, %lo(D_80B7B500)($at)  
/* 065C8 80B6FF68 3C0180B8 */  lui     $at, %hi(D_80B7E12C)       ## $at = 80B80000
/* 065CC 80B6FF6C E424E12C */  swc1    $f4, %lo(D_80B7E12C)($at)  
/* 065D0 80B6FF70 3C0180B8 */  lui     $at, %hi(D_80B7EAC0)       ## $at = 80B80000
/* 065D4 80B6FF74 C426EAC0 */  lwc1    $f6, %lo(D_80B7EAC0)($at)  
/* 065D8 80B6FF78 46047200 */  add.s   $f8, $f14, $f4             
/* 065DC 80B6FF7C 46043280 */  add.s   $f10, $f6, $f4             
/* 065E0 80B6FF80 E42AEAC0 */  swc1    $f10, %lo(D_80B7EAC0)($at) 
/* 065E4 80B6FF84 1000005A */  beq     $zero, $zero, .L80B700F0   
/* 065E8 80B6FF88 E4E80004 */  swc1    $f8, 0x0004($a3)           ## 00000004
.L80B6FF8C:
/* 065EC 80B6FF8C C420E144 */  lwc1    $f0, %lo(D_80B7E144)($at)  
/* 065F0 80B6FF90 3C014316 */  lui     $at, 0x4316                ## $at = 43160000
/* 065F4 80B6FF94 44812000 */  mtc1    $at, $f4                   ## $f4 = 150.00
/* 065F8 80B6FF98 3C0180B8 */  lui     $at, %hi(D_80B7B504)       ## $at = 80B80000
/* 065FC 80B6FF9C 4600203C */  c.lt.s  $f4, $f0                   
/* 06600 80B6FFA0 00000000 */  nop
/* 06604 80B6FFA4 45000052 */  bc1f    .L80B700F0                 
/* 06608 80B6FFA8 00000000 */  nop
/* 0660C 80B6FFAC C5060948 */  lwc1    $f6, 0x0948($t0)           ## 00000948
/* 06610 80B6FFB0 C42AB504 */  lwc1    $f10, %lo(D_80B7B504)($at) 
/* 06614 80B6FFB4 3C0180B8 */  lui     $at, %hi(D_80B7B508)       ## $at = 80B80000
/* 06618 80B6FFB8 C504094C */  lwc1    $f4, 0x094C($t0)           ## 0000094C
/* 0661C 80B6FFBC 460A3200 */  add.s   $f8, $f6, $f10             
/* 06620 80B6FFC0 E6080000 */  swc1    $f8, 0x0000($s0)           ## 80B7E0D8
/* 06624 80B6FFC4 C426B508 */  lwc1    $f6, %lo(D_80B7B508)($at)  
/* 06628 80B6FFC8 3C0180B8 */  lui     $at, %hi(D_80B7E134)       ## $at = 80B80000
/* 0662C 80B6FFCC 46062280 */  add.s   $f10, $f4, $f6             
/* 06630 80B6FFD0 E42AE134 */  swc1    $f10, %lo(D_80B7E134)($at) 
/* 06634 80B6FFD4 3C014000 */  lui     $at, 0x4000                ## $at = 40000000
/* 06638 80B6FFD8 44814000 */  mtc1    $at, $f8                   ## $f8 = 2.00
/* 0663C 80B6FFDC 3C0180B8 */  lui     $at, %hi(D_80B7E144)       ## $at = 80B80000
/* 06640 80B6FFE0 46080100 */  add.s   $f4, $f0, $f8              
/* 06644 80B6FFE4 10000042 */  beq     $zero, $zero, .L80B700F0   
/* 06648 80B6FFE8 E424E144 */  swc1    $f4, %lo(D_80B7E144)($at)  
/* 0664C 80B6FFEC 46006004 */  sqrt.s  $f0, $f12                  
.L80B6FFF0:
/* 06650 80B6FFF0 3C014466 */  lui     $at, 0x4466                ## $at = 44660000
/* 06654 80B6FFF4 44813000 */  mtc1    $at, $f6                   ## $f6 = 920.00
/* 06658 80B6FFF8 3C0180B8 */  lui     $at, %hi(D_80B7B50C)       ## $at = 80B80000
/* 0665C 80B6FFFC C428B50C */  lwc1    $f8, %lo(D_80B7B50C)($at)  
/* 06660 80B70000 3C0180B8 */  lui     $at, %hi(D_80B7E144)       ## $at = 80B80000
/* 06664 80B70004 46060281 */  sub.s   $f10, $f0, $f6             
/* 06668 80B70008 46085102 */  mul.s   $f4, $f10, $f8             
/* 0666C 80B7000C C4EA0004 */  lwc1    $f10, 0x0004($a3)          ## 00000004
/* 06670 80B70010 46022180 */  add.s   $f6, $f4, $f2              
/* 06674 80B70014 4606503E */  c.le.s  $f10, $f6                  
/* 06678 80B70018 E7A600E4 */  swc1    $f6, 0x00E4($sp)           
/* 0667C 80B7001C 4500001D */  bc1f    .L80B70094                 
/* 06680 80B70020 00000000 */  nop
/* 06684 80B70024 E4E60004 */  swc1    $f6, 0x0004($a3)           ## 00000004
/* 06688 80B70028 3C0180B8 */  lui     $at, %hi(D_80B7B510)       ## $at = 80B80000
/* 0668C 80B7002C C424B510 */  lwc1    $f4, %lo(D_80B7B510)($at)  
/* 06690 80B70030 C508094C */  lwc1    $f8, 0x094C($t0)           ## 0000094C
/* 06694 80B70034 44803000 */  mtc1    $zero, $f6                 ## $f6 = 0.00
/* 06698 80B70038 3C0180B8 */  lui     $at, %hi(D_80B7E134)       ## $at = 80B80000
/* 0669C 80B7003C 46044280 */  add.s   $f10, $f8, $f4             
/* 066A0 80B70040 240E0500 */  addiu   $t6, $zero, 0x0500         ## $t6 = 00000500
/* 066A4 80B70044 A7AE00DC */  sh      $t6, 0x00DC($sp)           
/* 066A8 80B70048 E42AE134 */  swc1    $f10, %lo(D_80B7E134)($at) 
/* 066AC 80B7004C E6060000 */  swc1    $f6, 0x0000($s0)           ## 80B7E0D8
/* 066B0 80B70050 95380020 */  lhu     $t8, 0x0020($t1)           ## 00000020
/* 066B4 80B70054 2401BFFF */  addiu   $at, $zero, 0xBFFF         ## $at = FFFFBFFF
/* 066B8 80B70058 0301C827 */  nor     $t9, $t8, $at              
/* 066BC 80B7005C 17200024 */  bne     $t9, $zero, .L80B700F0     
/* 066C0 80B70060 3C0180B8 */  lui     $at, %hi(D_80B7E144)       ## $at = 80B80000
/* 066C4 80B70064 C428E144 */  lwc1    $f8, %lo(D_80B7E144)($at)  
/* 066C8 80B70068 3C0140C0 */  lui     $at, 0x40C0                ## $at = 40C00000
/* 066CC 80B7006C 44812000 */  mtc1    $at, $f4                   ## $f4 = 6.00
/* 066D0 80B70070 3C0180B8 */  lui     $at, %hi(D_80B7E144)       ## $at = 80B80000
/* 066D4 80B70074 3C0480B8 */  lui     $a0, %hi(D_80B7AF94)       ## $a0 = 80B80000
/* 066D8 80B70078 46044280 */  add.s   $f10, $f8, $f4             
/* 066DC 80B7007C 2484AF94 */  addiu   $a0, $a0, %lo(D_80B7AF94)  ## $a0 = 80B7AF94
/* 066E0 80B70080 24050801 */  addiu   $a1, $zero, 0x0801         ## $a1 = 00000801
/* 066E4 80B70084 0C01E245 */  jal     func_80078914              
/* 066E8 80B70088 E42AE144 */  swc1    $f10, %lo(D_80B7E144)($at) 
/* 066EC 80B7008C 10000018 */  beq     $zero, $zero, .L80B700F0   
/* 066F0 80B70090 8FA900EC */  lw      $t1, 0x00EC($sp)           
.L80B70094:
/* 066F4 80B70094 C420E144 */  lwc1    $f0, %lo(D_80B7E144)($at)  
/* 066F8 80B70098 3C014316 */  lui     $at, 0x4316                ## $at = 43160000
/* 066FC 80B7009C 44813000 */  mtc1    $at, $f6                   ## $f6 = 150.00
/* 06700 80B700A0 3C0180B8 */  lui     $at, %hi(D_80B7B514)       ## $at = 80B80000
/* 06704 80B700A4 4600303C */  c.lt.s  $f6, $f0                   
/* 06708 80B700A8 00000000 */  nop
/* 0670C 80B700AC 45000010 */  bc1f    .L80B700F0                 
/* 06710 80B700B0 00000000 */  nop
/* 06714 80B700B4 C5080948 */  lwc1    $f8, 0x0948($t0)           ## 00000948
/* 06718 80B700B8 C424B514 */  lwc1    $f4, %lo(D_80B7B514)($at)  
/* 0671C 80B700BC 3C0180B8 */  lui     $at, %hi(D_80B7B518)       ## $at = 80B80000
/* 06720 80B700C0 C506094C */  lwc1    $f6, 0x094C($t0)           ## 0000094C
/* 06724 80B700C4 46044280 */  add.s   $f10, $f8, $f4             
/* 06728 80B700C8 E60A0000 */  swc1    $f10, 0x0000($s0)          ## 80B7E0D8
/* 0672C 80B700CC C428B518 */  lwc1    $f8, %lo(D_80B7B518)($at)  
/* 06730 80B700D0 3C0180B8 */  lui     $at, %hi(D_80B7E134)       ## $at = 80B80000
/* 06734 80B700D4 46083100 */  add.s   $f4, $f6, $f8              
/* 06738 80B700D8 E424E134 */  swc1    $f4, %lo(D_80B7E134)($at)  
/* 0673C 80B700DC 3C014000 */  lui     $at, 0x4000                ## $at = 40000000
/* 06740 80B700E0 44815000 */  mtc1    $at, $f10                  ## $f10 = 2.00
/* 06744 80B700E4 3C0180B8 */  lui     $at, %hi(D_80B7E144)       ## $at = 80B80000
/* 06748 80B700E8 460A0180 */  add.s   $f6, $f0, $f10             
/* 0674C 80B700EC E426E144 */  swc1    $f6, %lo(D_80B7E144)($at)  
.L80B700F0:
/* 06750 80B700F0 3C0480B8 */  lui     $a0, %hi(D_80B7E138)       ## $a0 = 80B80000
/* 06754 80B700F4 3C063E99 */  lui     $a2, 0x3E99                ## $a2 = 3E990000
/* 06758 80B700F8 252F0014 */  addiu   $t7, $t1, 0x0014           ## $t7 = 00000014
/* 0675C 80B700FC AFAF0040 */  sw      $t7, 0x0040($sp)           
/* 06760 80B70100 34C6999A */  ori     $a2, $a2, 0x999A           ## $a2 = 3E99999A
/* 06764 80B70104 2484E138 */  addiu   $a0, $a0, %lo(D_80B7E138)  ## $a0 = 80B7E138
/* 06768 80B70108 0C01E123 */  jal     Math_SmoothDownscaleMaxF
              
/* 0676C 80B7010C 3C053F80 */  lui     $a1, 0x3F80                ## $a1 = 3F800000
/* 06770 80B70110 3C0180B8 */  lui     $at, %hi(D_80B7E134)       ## $at = 80B80000
/* 06774 80B70114 C428E134 */  lwc1    $f8, %lo(D_80B7E134)($at)  
/* 06778 80B70118 3C014700 */  lui     $at, 0x4700                ## $at = 47000000
/* 0677C 80B7011C 44812000 */  mtc1    $at, $f4                   ## $f4 = 32768.00
/* 06780 80B70120 3C0180B8 */  lui     $at, %hi(D_80B7B51C)       ## $at = 80B80000
/* 06784 80B70124 C426B51C */  lwc1    $f6, %lo(D_80B7B51C)($at)  
/* 06788 80B70128 46044282 */  mul.s   $f10, $f8, $f4             
/* 0678C 80B7012C 3C0480B8 */  lui     $a0, %hi(D_80B7E13C)       ## $a0 = 80B80000
/* 06790 80B70130 2484E13C */  addiu   $a0, $a0, %lo(D_80B7E13C)  ## $a0 = 80B7E13C
/* 06794 80B70134 24060003 */  addiu   $a2, $zero, 0x0003         ## $a2 = 00000003
/* 06798 80B70138 87A700DC */  lh      $a3, 0x00DC($sp)           
/* 0679C 80B7013C 46065203 */  div.s   $f8, $f10, $f6             
/* 067A0 80B70140 4600410D */  trunc.w.s $f4, $f8                   
/* 067A4 80B70144 44052000 */  mfc1    $a1, $f4                   
/* 067A8 80B70148 00000000 */  nop
/* 067AC 80B7014C 00052C00 */  sll     $a1, $a1, 16               
/* 067B0 80B70150 0C01E1EF */  jal     Math_SmoothScaleMaxS
              
/* 067B4 80B70154 00052C03 */  sra     $a1, $a1, 16               
/* 067B8 80B70158 3C1880B8 */  lui     $t8, %hi(D_80B7E13C)       ## $t8 = 80B80000
/* 067BC 80B7015C 8718E13C */  lh      $t8, %lo(D_80B7E13C)($t8)  
/* 067C0 80B70160 3C014700 */  lui     $at, 0x4700                ## $at = 47000000
/* 067C4 80B70164 44814000 */  mtc1    $at, $f8                   ## $f8 = 32768.00
/* 067C8 80B70168 44985000 */  mtc1    $t8, $f10                  ## $f10 = -0.00
/* 067CC 80B7016C 3C0180B8 */  lui     $at, %hi(D_80B7B520)       ## $at = 80B80000
/* 067D0 80B70170 44800000 */  mtc1    $zero, $f0                 ## $f0 = 0.00
/* 067D4 80B70174 468051A0 */  cvt.s.w $f6, $f10                  
/* 067D8 80B70178 C42AB520 */  lwc1    $f10, %lo(D_80B7B520)($at) 
/* 067DC 80B7017C 3C0180B8 */  lui     $at, %hi(D_80B7E138)       ## $at = 80B80000
/* 067E0 80B70180 00002825 */  or      $a1, $zero, $zero          ## $a1 = 00000000
/* 067E4 80B70184 E7A00090 */  swc1    $f0, 0x0090($sp)           
/* 067E8 80B70188 E7A00094 */  swc1    $f0, 0x0094($sp)           
/* 067EC 80B7018C 46083103 */  div.s   $f4, $f6, $f8              
/* 067F0 80B70190 460A2182 */  mul.s   $f6, $f4, $f10             
/* 067F4 80B70194 E6060004 */  swc1    $f6, 0x0004($s0)           ## 80B7E0DC
/* 067F8 80B70198 C428E138 */  lwc1    $f8, %lo(D_80B7E138)($at)  
/* 067FC 80B7019C C60C0004 */  lwc1    $f12, 0x0004($s0)          ## 80B7E0DC
/* 06800 80B701A0 0C034348 */  jal     Matrix_RotateY              
/* 06804 80B701A4 E7A80098 */  swc1    $f8, 0x0098($sp)           
/* 06808 80B701A8 3C1980B8 */  lui     $t9, %hi(D_80B7E0B6)       ## $t9 = 80B80000
/* 0680C 80B701AC 9339E0B6 */  lbu     $t9, %lo(D_80B7E0B6)($t9)  
/* 06810 80B701B0 24010002 */  addiu   $at, $zero, 0x0002         ## $at = 00000002
/* 06814 80B701B4 27A40090 */  addiu   $a0, $sp, 0x0090           ## $a0 = FFFFFFA8
/* 06818 80B701B8 1721000C */  bne     $t9, $at, .L80B701EC       
/* 0681C 80B701BC 00000000 */  nop
/* 06820 80B701C0 0C0346BD */  jal     Matrix_MultVec3f              
/* 06824 80B701C4 27A50064 */  addiu   $a1, $sp, 0x0064           ## $a1 = FFFFFF7C
/* 06828 80B701C8 C7A40064 */  lwc1    $f4, 0x0064($sp)           
/* 0682C 80B701CC C7AA006C */  lwc1    $f10, 0x006C($sp)          
/* 06830 80B701D0 3C0380B8 */  lui     $v1, %hi(D_80B7E128)       ## $v1 = 80B80000
/* 06834 80B701D4 3C014120 */  lui     $at, 0x4120                ## $at = 41200000
/* 06838 80B701D8 2463E128 */  addiu   $v1, $v1, %lo(D_80B7E128)  ## $v1 = 80B7E128
/* 0683C 80B701DC 44810000 */  mtc1    $at, $f0                   ## $f0 = 10.00
/* 06840 80B701E0 E4640000 */  swc1    $f4, 0x0000($v1)           ## 80B7E128
/* 06844 80B701E4 10000008 */  beq     $zero, $zero, .L80B70208   
/* 06848 80B701E8 E46A0008 */  swc1    $f10, 0x0008($v1)          ## 80B7E130
.L80B701EC:
/* 0684C 80B701EC 3C0580B8 */  lui     $a1, %hi(D_80B7E128)       ## $a1 = 80B80000
/* 06850 80B701F0 24A5E128 */  addiu   $a1, $a1, %lo(D_80B7E128)  ## $a1 = 80B7E128
/* 06854 80B701F4 0C0346BD */  jal     Matrix_MultVec3f              
/* 06858 80B701F8 27A40090 */  addiu   $a0, $sp, 0x0090           ## $a0 = FFFFFFA8
/* 0685C 80B701FC 3C0380B8 */  lui     $v1, %hi(D_80B7E128)       ## $v1 = 80B80000
/* 06860 80B70200 44800000 */  mtc1    $zero, $f0                 ## $f0 = 0.00
/* 06864 80B70204 2463E128 */  addiu   $v1, $v1, %lo(D_80B7E128)  ## $v1 = 80B7E128
.L80B70208:
/* 06868 80B70208 44803000 */  mtc1    $zero, $f6                 ## $f6 = 0.00
/* 0686C 80B7020C 3C0480B8 */  lui     $a0, %hi(D_80B7E104)       ## $a0 = 80B80000
/* 06870 80B70210 2484E104 */  addiu   $a0, $a0, %lo(D_80B7E104)  ## $a0 = 80B7E104
/* 06874 80B70214 3C0280B8 */  lui     $v0, %hi(D_80B7E0B6)       ## $v0 = 80B80000
/* 06878 80B70218 E4860000 */  swc1    $f6, 0x0000($a0)           ## 80B7E104
/* 0687C 80B7021C 9042E0B6 */  lbu     $v0, %lo(D_80B7E0B6)($v0)  
/* 06880 80B70220 24010001 */  addiu   $at, $zero, 0x0001         ## $at = 00000001
/* 06884 80B70224 8FAF0040 */  lw      $t7, 0x0040($sp)           
/* 06888 80B70228 5441001A */  bnel    $v0, $at, .L80B70294       
/* 0688C 80B7022C 8FAE00EC */  lw      $t6, 0x00EC($sp)           
/* 06890 80B70230 95EE0000 */  lhu     $t6, 0x0000($t7)           ## 00000000
/* 06894 80B70234 3C01FFFF */  lui     $at, 0xFFFF                ## $at = FFFF0000
/* 06898 80B70238 34217FFF */  ori     $at, $at, 0x7FFF           ## $at = FFFF7FFF
/* 0689C 80B7023C 01C1C027 */  nor     $t8, $t6, $at              
/* 068A0 80B70240 17000013 */  bne     $t8, $zero, .L80B70290     
/* 068A4 80B70244 3C01C000 */  lui     $at, 0xC000                ## $at = C0000000
/* 068A8 80B70248 44814000 */  mtc1    $at, $f8                   ## $f8 = -2.00
/* 068AC 80B7024C 3C1980B8 */  lui     $t9, %hi(D_80B7E0AE)       ## $t9 = 80B80000
/* 068B0 80B70250 3C01BF00 */  lui     $at, 0xBF00                ## $at = BF000000
/* 068B4 80B70254 E4680004 */  swc1    $f8, 0x0004($v1)           ## 80B7E12C
/* 068B8 80B70258 8739E0AE */  lh      $t9, %lo(D_80B7E0AE)($t9)  
/* 068BC 80B7025C 332F0001 */  andi    $t7, $t9, 0x0001           ## $t7 = 00000000
/* 068C0 80B70260 51E00006 */  beql    $t7, $zero, .L80B7027C     
/* 068C4 80B70264 44815000 */  mtc1    $at, $f10                  ## $f10 = -0.50
/* 068C8 80B70268 3C013F00 */  lui     $at, 0x3F00                ## $at = 3F000000
/* 068CC 80B7026C 44812000 */  mtc1    $at, $f4                   ## $f4 = 0.50
/* 068D0 80B70270 10000004 */  beq     $zero, $zero, .L80B70284   
/* 068D4 80B70274 E4840000 */  swc1    $f4, 0x0000($a0)           ## 80B7E104
/* 068D8 80B70278 44815000 */  mtc1    $at, $f10                  ## $f10 = 0.50
.L80B7027C:
/* 068DC 80B7027C 00000000 */  nop
/* 068E0 80B70280 E48A0000 */  swc1    $f10, 0x0000($a0)          ## 80B7E104
.L80B70284:
/* 068E4 80B70284 3C0180B8 */  lui     $at, %hi(D_80B7EAC0)       ## $at = 80B80000
/* 068E8 80B70288 1000007C */  beq     $zero, $zero, .L80B7047C   
/* 068EC 80B7028C C42CEAC0 */  lwc1    $f12, %lo(D_80B7EAC0)($at) 
.L80B70290:
/* 068F0 80B70290 8FAE00EC */  lw      $t6, 0x00EC($sp)           
.L80B70294:
/* 068F4 80B70294 3C0180B8 */  lui     $at, %hi(D_80B7EAC0)       ## $at = 80B80000
/* 068F8 80B70298 C42CEAC0 */  lwc1    $f12, %lo(D_80B7EAC0)($at) 
/* 068FC 80B7029C 8DD807C0 */  lw      $t8, 0x07C0($t6)           ## 000007C0
/* 06900 80B702A0 24010002 */  addiu   $at, $zero, 0x0002         ## $at = 00000002
/* 06904 80B702A4 8F190028 */  lw      $t9, 0x0028($t8)           ## 00000028
/* 06908 80B702A8 872F0002 */  lh      $t7, 0x0002($t9)           ## 80B80002
/* 0690C 80B702AC 448F3000 */  mtc1    $t7, $f6                   ## $f6 = 0.00
/* 06910 80B702B0 00000000 */  nop
/* 06914 80B702B4 468030A0 */  cvt.s.w $f2, $f6                   
/* 06918 80B702B8 46001200 */  add.s   $f8, $f2, $f0              
/* 0691C 80B702BC 4608603C */  c.lt.s  $f12, $f8                  
/* 06920 80B702C0 00000000 */  nop
/* 06924 80B702C4 4500006D */  bc1f    .L80B7047C                 
/* 06928 80B702C8 00000000 */  nop
/* 0692C 80B702CC 1441005B */  bne     $v0, $at, .L80B7043C       
/* 06930 80B702D0 8FA500E8 */  lw      $a1, 0x00E8($sp)           
/* 06934 80B702D4 24B00024 */  addiu   $s0, $a1, 0x0024           ## $s0 = 00000024
/* 06938 80B702D8 8E190000 */  lw      $t9, 0x0000($s0)           ## 00000024
/* 0693C 80B702DC 27AE0058 */  addiu   $t6, $sp, 0x0058           ## $t6 = FFFFFF70
/* 06940 80B702E0 3C0F80B8 */  lui     $t7, %hi(D_80B7E0B8)       ## $t7 = 80B80000
/* 06944 80B702E4 ADD90000 */  sw      $t9, 0x0000($t6)           ## FFFFFF70
/* 06948 80B702E8 8E180004 */  lw      $t8, 0x0004($s0)           ## 00000028
/* 0694C 80B702EC 25EFE0B8 */  addiu   $t7, $t7, %lo(D_80B7E0B8)  ## $t7 = 80B7E0B8
/* 06950 80B702F0 27A20048 */  addiu   $v0, $sp, 0x0048           ## $v0 = FFFFFF60
/* 06954 80B702F4 ADD80004 */  sw      $t8, 0x0004($t6)           ## FFFFFF74
/* 06958 80B702F8 8E190008 */  lw      $t9, 0x0008($s0)           ## 0000002C
/* 0695C 80B702FC 3C0141F0 */  lui     $at, 0x41F0                ## $at = 41F00000
/* 06960 80B70300 44810000 */  mtc1    $at, $f0                   ## $f0 = 30.00
/* 06964 80B70304 ADD90008 */  sw      $t9, 0x0008($t6)           ## FFFFFF78
/* 06968 80B70308 8DF80000 */  lw      $t8, 0x0000($t7)           ## 80B7E0B8
/* 0696C 80B7030C 44070000 */  mfc1    $a3, $f0                   
/* 06970 80B70310 3C064170 */  lui     $a2, 0x4170                ## $a2 = 41700000
/* 06974 80B70314 AC580000 */  sw      $t8, 0x0000($v0)           ## FFFFFF60
/* 06978 80B70318 8DEE0004 */  lw      $t6, 0x0004($t7)           ## 80B7E0BC
/* 0697C 80B7031C AC4E0004 */  sw      $t6, 0x0004($v0)           ## FFFFFF64
/* 06980 80B70320 8DF80008 */  lw      $t8, 0x0008($t7)           ## 80B7E0C0
/* 06984 80B70324 8C4F0000 */  lw      $t7, 0x0000($v0)           ## FFFFFF60
/* 06988 80B70328 AC580008 */  sw      $t8, 0x0008($v0)           ## FFFFFF68
/* 0698C 80B7032C AE0F0000 */  sw      $t7, 0x0000($s0)           ## 00000024
/* 06990 80B70330 8C590004 */  lw      $t9, 0x0004($v0)           ## FFFFFF64
/* 06994 80B70334 AE190004 */  sw      $t9, 0x0004($s0)           ## 00000028
/* 06998 80B70338 8C4F0008 */  lw      $t7, 0x0008($v0)           ## FFFFFF68
/* 0699C 80B7033C 24190044 */  addiu   $t9, $zero, 0x0044         ## $t9 = 00000044
/* 069A0 80B70340 AE0F0008 */  sw      $t7, 0x0008($s0)           ## 0000002C
/* 069A4 80B70344 8C580000 */  lw      $t8, 0x0000($v0)           ## FFFFFF60
/* 069A8 80B70348 ACB80100 */  sw      $t8, 0x0100($a1)           ## 00000100
/* 069AC 80B7034C 8C4E0004 */  lw      $t6, 0x0004($v0)           ## FFFFFF64
/* 069B0 80B70350 ACAE0104 */  sw      $t6, 0x0104($a1)           ## 00000104
/* 069B4 80B70354 8C580008 */  lw      $t8, 0x0008($v0)           ## FFFFFF68
/* 069B8 80B70358 ACB80108 */  sw      $t8, 0x0108($a1)           ## 00000108
/* 069BC 80B7035C AFB90014 */  sw      $t9, 0x0014($sp)           
/* 069C0 80B70360 8FA400EC */  lw      $a0, 0x00EC($sp)           
/* 069C4 80B70364 0C00B92D */  jal     func_8002E4B4              
/* 069C8 80B70368 E7A00010 */  swc1    $f0, 0x0010($sp)           
/* 069CC 80B7036C 27AF0058 */  addiu   $t7, $sp, 0x0058           ## $t7 = FFFFFF70
/* 069D0 80B70370 8DF80000 */  lw      $t8, 0x0000($t7)           ## FFFFFF70
/* 069D4 80B70374 3C0280B8 */  lui     $v0, %hi(D_80B7E128)       ## $v0 = 80B80000
/* 069D8 80B70378 2442E128 */  addiu   $v0, $v0, %lo(D_80B7E128)  ## $v0 = 80B7E128
/* 069DC 80B7037C AE180000 */  sw      $t8, 0x0000($s0)           ## 00000024
/* 069E0 80B70380 8DEE0004 */  lw      $t6, 0x0004($t7)           ## FFFFFF74
/* 069E4 80B70384 3C01BF00 */  lui     $at, 0xBF00                ## $at = BF000000
/* 069E8 80B70388 44815000 */  mtc1    $at, $f10                  ## $f10 = -0.50
/* 069EC 80B7038C AE0E0004 */  sw      $t6, 0x0004($s0)           ## 00000028
/* 069F0 80B70390 8DF80008 */  lw      $t8, 0x0008($t7)           ## FFFFFF78
/* 069F4 80B70394 3C01BF80 */  lui     $at, 0xBF80                ## $at = BF800000
/* 069F8 80B70398 3C0380B8 */  lui     $v1, %hi(D_80B7E128)       ## $v1 = 80B80000
/* 069FC 80B7039C AE180008 */  sw      $t8, 0x0008($s0)           ## 0000002C
/* 06A00 80B703A0 C4440004 */  lwc1    $f4, 0x0004($v0)           ## 80B7E12C
/* 06A04 80B703A4 2463E128 */  addiu   $v1, $v1, %lo(D_80B7E128)  ## $v1 = 80B7E128
/* 06A08 80B703A8 240F0001 */  addiu   $t7, $zero, 0x0001         ## $t7 = 00000001
/* 06A0C 80B703AC 460A2180 */  add.s   $f6, $f4, $f10             
/* 06A10 80B703B0 44812000 */  mtc1    $at, $f4                   ## $f4 = -1.00
/* 06A14 80B703B4 3C01BF80 */  lui     $at, 0xBF80                ## $at = BF800000
/* 06A18 80B703B8 E4460004 */  swc1    $f6, 0x0004($v0)           ## 80B7E12C
/* 06A1C 80B703BC C4480004 */  lwc1    $f8, 0x0004($v0)           ## 80B7E12C
/* 06A20 80B703C0 4604403C */  c.lt.s  $f8, $f4                   
/* 06A24 80B703C4 00000000 */  nop
/* 06A28 80B703C8 45020005 */  bc1fl   .L80B703E0                 
/* 06A2C 80B703CC 8FB900E8 */  lw      $t9, 0x00E8($sp)           
/* 06A30 80B703D0 44815000 */  mtc1    $at, $f10                  ## $f10 = -1.00
/* 06A34 80B703D4 00000000 */  nop
/* 06A38 80B703D8 E44A0004 */  swc1    $f10, 0x0004($v0)          ## 80B7E12C
/* 06A3C 80B703DC 8FB900E8 */  lw      $t9, 0x00E8($sp)           
.L80B703E0:
/* 06A40 80B703E0 3C0140A0 */  lui     $at, 0x40A0                ## $at = 40A00000
/* 06A44 80B703E4 44814000 */  mtc1    $at, $f8                   ## $f8 = 5.00
/* 06A48 80B703E8 C7260080 */  lwc1    $f6, 0x0080($t9)           ## 00000080
/* 06A4C 80B703EC 3C0980B8 */  lui     $t1, %hi(D_80B7E0B8)       ## $t1 = 80B80000
/* 06A50 80B703F0 2529E0B8 */  addiu   $t1, $t1, %lo(D_80B7E0B8)  ## $t1 = 80B7E0B8
/* 06A54 80B703F4 46083000 */  add.s   $f0, $f6, $f8              
/* 06A58 80B703F8 C5240004 */  lwc1    $f4, 0x0004($t1)           ## 80B7E0BC
/* 06A5C 80B703FC 3C0180B8 */  lui     $at, %hi(D_80B7E120)       ## $at = 80B80000
/* 06A60 80B70400 4600203C */  c.lt.s  $f4, $f0                   
/* 06A64 80B70404 00000000 */  nop
/* 06A68 80B70408 45000008 */  bc1f    .L80B7042C                 
/* 06A6C 80B7040C 00000000 */  nop
/* 06A70 80B70410 E5200004 */  swc1    $f0, 0x0004($t1)           ## 80B7E0BC
/* 06A74 80B70414 C52A0004 */  lwc1    $f10, 0x0004($t1)          ## 80B7E0BC
/* 06A78 80B70418 44803000 */  mtc1    $zero, $f6                 ## $f6 = 0.00
/* 06A7C 80B7041C 3C0180B8 */  lui     $at, %hi(D_80B7EAC0)       ## $at = 80B80000
/* 06A80 80B70420 E42AEAC0 */  swc1    $f10, %lo(D_80B7EAC0)($at) 
/* 06A84 80B70424 10000002 */  beq     $zero, $zero, .L80B70430   
/* 06A88 80B70428 E4460004 */  swc1    $f6, 0x0004($v0)           ## 80B7E12C
.L80B7042C:
/* 06A8C 80B7042C A02FE120 */  sb      $t7, %lo(D_80B7E120)($at)  
.L80B70430:
/* 06A90 80B70430 3C0180B8 */  lui     $at, %hi(D_80B7EAC0)       ## $at = 80B80000
/* 06A94 80B70434 10000011 */  beq     $zero, $zero, .L80B7047C   
/* 06A98 80B70438 C42CEAC0 */  lwc1    $f12, %lo(D_80B7EAC0)($at) 
.L80B7043C:
/* 06A9C 80B7043C 46026001 */  sub.s   $f0, $f12, $f2             
/* 06AA0 80B70440 3C0180B8 */  lui     $at, %hi(D_80B7B524)       ## $at = 80B80000
/* 06AA4 80B70444 C428B524 */  lwc1    $f8, %lo(D_80B7B524)($at)  
/* 06AA8 80B70448 3C013FC0 */  lui     $at, 0x3FC0                ## $at = 3FC00000
/* 06AAC 80B7044C 46000005 */  abs.s   $f0, $f0                   
/* 06AB0 80B70450 44815000 */  mtc1    $at, $f10                  ## $f10 = 1.50
/* 06AB4 80B70454 46080102 */  mul.s   $f4, $f0, $f8              
/* 06AB8 80B70458 E4640004 */  swc1    $f4, 0x0004($v1)           ## 80B7E12C
/* 06ABC 80B7045C C4660004 */  lwc1    $f6, 0x0004($v1)           ## 80B7E12C
/* 06AC0 80B70460 4606503C */  c.lt.s  $f10, $f6                  
/* 06AC4 80B70464 00000000 */  nop
/* 06AC8 80B70468 45000004 */  bc1f    .L80B7047C                 
/* 06ACC 80B7046C 3C013FC0 */  lui     $at, 0x3FC0                ## $at = 3FC00000
/* 06AD0 80B70470 44814000 */  mtc1    $at, $f8                   ## $f8 = 1.50
/* 06AD4 80B70474 00000000 */  nop
/* 06AD8 80B70478 E4680004 */  swc1    $f8, 0x0004($v1)           ## 80B7E12C
.L80B7047C:
/* 06ADC 80B7047C 3C0880B8 */  lui     $t0, %hi(D_80B7E168)       ## $t0 = 80B80000
/* 06AE0 80B70480 2508E168 */  addiu   $t0, $t0, %lo(D_80B7E168)  ## $t0 = 80B7E168
/* 06AE4 80B70484 C5040954 */  lwc1    $f4, 0x0954($t0)           ## 80B7EABC
/* 06AE8 80B70488 C46A0000 */  lwc1    $f10, 0x0000($v1)          ## 80B7E128
/* 06AEC 80B7048C C4680004 */  lwc1    $f8, 0x0004($v1)           ## 80B7E12C
/* 06AF0 80B70490 3C0140C0 */  lui     $at, 0x40C0                ## $at = 40C00000
/* 06AF4 80B70494 460A2180 */  add.s   $f6, $f4, $f10             
/* 06AF8 80B70498 C50A095C */  lwc1    $f10, 0x095C($t0)          ## 80B7EAC4
/* 06AFC 80B7049C 46086100 */  add.s   $f4, $f12, $f8             
/* 06B00 80B704A0 E5060954 */  swc1    $f6, 0x0954($t0)           ## 80B7EABC
/* 06B04 80B704A4 C4660008 */  lwc1    $f6, 0x0008($v1)           ## 80B7E130
/* 06B08 80B704A8 E5040958 */  swc1    $f4, 0x0958($t0)           ## 80B7EAC0
/* 06B0C 80B704AC 46065200 */  add.s   $f8, $f10, $f6             
/* 06B10 80B704B0 44815000 */  mtc1    $at, $f10                  ## $f10 = 6.00
/* 06B14 80B704B4 C7A400E4 */  lwc1    $f4, 0x00E4($sp)           
/* 06B18 80B704B8 C50C0958 */  lwc1    $f12, 0x0958($t0)          ## 80B7EAC0
/* 06B1C 80B704BC E508095C */  swc1    $f8, 0x095C($t0)           ## 80B7EAC4
/* 06B20 80B704C0 460A2180 */  add.s   $f6, $f4, $f10             
/* 06B24 80B704C4 44805000 */  mtc1    $zero, $f10                ## $f10 = 0.00
/* 06B28 80B704C8 460C303C */  c.lt.s  $f6, $f12                  
/* 06B2C 80B704CC 00000000 */  nop
/* 06B30 80B704D0 45000005 */  bc1f    .L80B704E8                 
/* 06B34 80B704D4 3C0140A0 */  lui     $at, 0x40A0                ## $at = 40A00000
/* 06B38 80B704D8 44814000 */  mtc1    $at, $f8                   ## $f8 = 5.00
/* 06B3C 80B704DC 00000000 */  nop
/* 06B40 80B704E0 46086101 */  sub.s   $f4, $f12, $f8             
/* 06B44 80B704E4 E5040958 */  swc1    $f4, 0x0958($t0)           ## 80B7EAC0
.L80B704E8:
/* 06B48 80B704E8 3C0680B8 */  lui     $a2, %hi(D_80B7E0F8)       ## $a2 = 80B80000
/* 06B4C 80B704EC 24C6E0F8 */  addiu   $a2, $a2, %lo(D_80B7E0F8)  ## $a2 = 80B7E0F8
/* 06B50 80B704F0 E4CA0004 */  swc1    $f10, 0x0004($a2)          ## 80B7E0FC
/* 06B54 80B704F4 C4C60004 */  lwc1    $f6, 0x0004($a2)           ## 80B7E0FC
/* 06B58 80B704F8 3C0380B8 */  lui     $v1, %hi(D_80B7E0E8)       ## $v1 = 80B80000
/* 06B5C 80B704FC 2463E0E8 */  addiu   $v1, $v1, %lo(D_80B7E0E8)  ## $v1 = 80B7E0E8
/* 06B60 80B70500 E4660008 */  swc1    $f6, 0x0008($v1)           ## 80B7E0F0
/* 06B64 80B70504 C4680008 */  lwc1    $f8, 0x0008($v1)           ## 80B7E0F0
/* 06B68 80B70508 8FAE0040 */  lw      $t6, 0x0040($sp)           
/* 06B6C 80B7050C 3C01FFFF */  lui     $at, 0xFFFF                ## $at = FFFF0000
/* 06B70 80B70510 E4680004 */  swc1    $f8, 0x0004($v1)           ## 80B7E0EC
/* 06B74 80B70514 C4640004 */  lwc1    $f4, 0x0004($v1)           ## 80B7E0EC
/* 06B78 80B70518 34217FFF */  ori     $at, $at, 0x7FFF           ## $at = FFFF7FFF
/* 06B7C 80B7051C E4640000 */  swc1    $f4, 0x0000($v1)           ## 80B7E0E8
/* 06B80 80B70520 95C20000 */  lhu     $v0, 0x0000($t6)           ## 00000000
/* 06B84 80B70524 0041C027 */  nor     $t8, $v0, $at              
/* 06B88 80B70528 17000048 */  bne     $t8, $zero, .L80B7064C     
/* 06B8C 80B7052C 2401FFEF */  addiu   $at, $zero, 0xFFEF         ## $at = FFFFFFEF
/* 06B90 80B70530 0041C827 */  nor     $t9, $v0, $at              
/* 06B94 80B70534 17200012 */  bne     $t9, $zero, .L80B70580     
/* 06B98 80B70538 3C0280B8 */  lui     $v0, %hi(D_80B7E144)       ## $v0 = 80B80000
/* 06B9C 80B7053C 3C0280B8 */  lui     $v0, %hi(D_80B7E144)       ## $v0 = 80B80000
/* 06BA0 80B70540 2442E144 */  addiu   $v0, $v0, %lo(D_80B7E144)  ## $v0 = 80B7E144
/* 06BA4 80B70544 3C013FC0 */  lui     $at, 0x3FC0                ## $at = 3FC00000
/* 06BA8 80B70548 44813000 */  mtc1    $at, $f6                   ## $f6 = 1.50
/* 06BAC 80B7054C C44A0000 */  lwc1    $f10, 0x0000($v0)          ## 80B7E144
/* 06BB0 80B70550 2404103E */  addiu   $a0, $zero, 0x103E         ## $a0 = 0000103E
/* 06BB4 80B70554 46065200 */  add.s   $f8, $f10, $f6             
/* 06BB8 80B70558 0C01E221 */  jal     func_80078884              
/* 06BBC 80B7055C E4480000 */  swc1    $f8, 0x0000($v0)           ## 80B7E144
/* 06BC0 80B70560 3C0480B8 */  lui     $a0, %hi(D_80B7E154)       ## $a0 = 80B80000
/* 06BC4 80B70564 2484E154 */  addiu   $a0, $a0, %lo(D_80B7E154)  ## $a0 = 80B7E154
/* 06BC8 80B70568 3C05447A */  lui     $a1, 0x447A                ## $a1 = 447A0000
/* 06BCC 80B7056C 3C063F80 */  lui     $a2, 0x3F80                ## $a2 = 3F800000
/* 06BD0 80B70570 0C01E107 */  jal     Math_SmoothScaleMaxF
              
/* 06BD4 80B70574 3C074000 */  lui     $a3, 0x4000                ## $a3 = 40000000
/* 06BD8 80B70578 10000011 */  beq     $zero, $zero, .L80B705C0   
/* 06BDC 80B7057C 8FAF00EC */  lw      $t7, 0x00EC($sp)           
.L80B70580:
/* 06BE0 80B70580 2442E144 */  addiu   $v0, $v0, %lo(D_80B7E144)  ## $v0 = FFFFE144
/* 06BE4 80B70584 3C0180B8 */  lui     $at, %hi(D_80B7E11C)       ## $at = 80B80000
/* 06BE8 80B70588 C42AE11C */  lwc1    $f10, %lo(D_80B7E11C)($at) 
/* 06BEC 80B7058C C4440000 */  lwc1    $f4, 0x0000($v0)           ## FFFFE144
/* 06BF0 80B70590 2404103D */  addiu   $a0, $zero, 0x103D         ## $a0 = 0000103D
/* 06BF4 80B70594 460A2180 */  add.s   $f6, $f4, $f10             
/* 06BF8 80B70598 0C01E221 */  jal     func_80078884              
/* 06BFC 80B7059C E4460000 */  swc1    $f6, 0x0000($v0)           ## FFFFE144
/* 06C00 80B705A0 3C0480B8 */  lui     $a0, %hi(D_80B7E154)       ## $a0 = 80B80000
/* 06C04 80B705A4 3C073E4C */  lui     $a3, 0x3E4C                ## $a3 = 3E4C0000
/* 06C08 80B705A8 34E7CCCD */  ori     $a3, $a3, 0xCCCD           ## $a3 = 3E4CCCCD
/* 06C0C 80B705AC 2484E154 */  addiu   $a0, $a0, %lo(D_80B7E154)  ## $a0 = 80B7E154
/* 06C10 80B705B0 3C05447A */  lui     $a1, 0x447A                ## $a1 = 447A0000
/* 06C14 80B705B4 0C01E107 */  jal     Math_SmoothScaleMaxF
              
/* 06C18 80B705B8 3C063F80 */  lui     $a2, 0x3F80                ## $a2 = 3F800000
/* 06C1C 80B705BC 8FAF00EC */  lw      $t7, 0x00EC($sp)           
.L80B705C0:
/* 06C20 80B705C0 3C014080 */  lui     $at, 0x4080                ## $at = 40800000
/* 06C24 80B705C4 44815000 */  mtc1    $at, $f10                  ## $f10 = 4.00
/* 06C28 80B705C8 8DEE07C0 */  lw      $t6, 0x07C0($t7)           ## 000007C0
/* 06C2C 80B705CC 3C0180B8 */  lui     $at, %hi(D_80B7EAC0)       ## $at = 80B80000
/* 06C30 80B705D0 3C073E4C */  lui     $a3, 0x3E4C                ## $a3 = 3E4C0000
/* 06C34 80B705D4 8DD80028 */  lw      $t8, 0x0028($t6)           ## 00000028
/* 06C38 80B705D8 34E7CCCD */  ori     $a3, $a3, 0xCCCD           ## $a3 = 3E4CCCCD
/* 06C3C 80B705DC 3C054040 */  lui     $a1, 0x4040                ## $a1 = 40400000
/* 06C40 80B705E0 87190002 */  lh      $t9, 0x0002($t8)           ## 00000002
/* 06C44 80B705E4 3C063F80 */  lui     $a2, 0x3F80                ## $a2 = 3F800000
/* 06C48 80B705E8 3C0480B8 */  lui     $a0, %hi(D_80B7E148)       ## $a0 = 80B80000
/* 06C4C 80B705EC 44994000 */  mtc1    $t9, $f8                   ## $f8 = 0.00
/* 06C50 80B705F0 00000000 */  nop
/* 06C54 80B705F4 46804120 */  cvt.s.w $f4, $f8                   
/* 06C58 80B705F8 C428EAC0 */  lwc1    $f8, %lo(D_80B7EAC0)($at)  
/* 06C5C 80B705FC 3C013F80 */  lui     $at, 0x3F80                ## $at = 3F800000
/* 06C60 80B70600 460A2180 */  add.s   $f6, $f4, $f10             
/* 06C64 80B70604 4608303C */  c.lt.s  $f6, $f8                   
/* 06C68 80B70608 00000000 */  nop
/* 06C6C 80B7060C 45020007 */  bc1fl   .L80B7062C                 
/* 06C70 80B70610 44810000 */  mtc1    $at, $f0                   ## $f0 = 1.00
/* 06C74 80B70614 3C0480B8 */  lui     $a0, %hi(D_80B7E148)       ## $a0 = 80B80000
/* 06C78 80B70618 0C01E107 */  jal     Math_SmoothScaleMaxF
              
/* 06C7C 80B7061C 2484E148 */  addiu   $a0, $a0, %lo(D_80B7E148)  ## $a0 = 80B7E148
/* 06C80 80B70620 10000011 */  beq     $zero, $zero, .L80B70668   
/* 06C84 80B70624 00000000 */  nop
/* 06C88 80B70628 44810000 */  mtc1    $at, $f0                   ## $f0 = 0.00
.L80B7062C:
/* 06C8C 80B7062C 3C073E4C */  lui     $a3, 0x3E4C                ## $a3 = 3E4C0000
/* 06C90 80B70630 34E7CCCD */  ori     $a3, $a3, 0xCCCD           ## $a3 = 3E4CCCCD
/* 06C94 80B70634 44050000 */  mfc1    $a1, $f0                   
/* 06C98 80B70638 44060000 */  mfc1    $a2, $f0                   
/* 06C9C 80B7063C 0C01E107 */  jal     Math_SmoothScaleMaxF
              
/* 06CA0 80B70640 2484E148 */  addiu   $a0, $a0, %lo(D_80B7E148)  ## $a0 = FFFFE148
/* 06CA4 80B70644 10000008 */  beq     $zero, $zero, .L80B70668   
/* 06CA8 80B70648 00000000 */  nop
.L80B7064C:
/* 06CAC 80B7064C 3C0480B8 */  lui     $a0, %hi(D_80B7E148)       ## $a0 = 80B80000
/* 06CB0 80B70650 3C073E4C */  lui     $a3, 0x3E4C                ## $a3 = 3E4C0000
/* 06CB4 80B70654 34E7CCCD */  ori     $a3, $a3, 0xCCCD           ## $a3 = 3E4CCCCD
/* 06CB8 80B70658 2484E148 */  addiu   $a0, $a0, %lo(D_80B7E148)  ## $a0 = 80B7E148
/* 06CBC 80B7065C 3C054000 */  lui     $a1, 0x4000                ## $a1 = 40000000
/* 06CC0 80B70660 0C01E107 */  jal     Math_SmoothScaleMaxF
              
/* 06CC4 80B70664 3C063F80 */  lui     $a2, 0x3F80                ## $a2 = 3F800000
.L80B70668:
/* 06CC8 80B70668 3C0480B8 */  lui     $a0, %hi(D_80B7E0B8)       ## $a0 = 80B80000
/* 06CCC 80B7066C 3C0580B8 */  lui     $a1, %hi(D_80B7EABC)       ## $a1 = 80B80000
/* 06CD0 80B70670 3C0780B8 */  lui     $a3, %hi(D_80B7E154)       ## $a3 = 80B80000
/* 06CD4 80B70674 8CE7E154 */  lw      $a3, %lo(D_80B7E154)($a3)  
/* 06CD8 80B70678 8CA5EABC */  lw      $a1, %lo(D_80B7EABC)($a1)  
/* 06CDC 80B7067C 2484E0B8 */  addiu   $a0, $a0, %lo(D_80B7E0B8)  ## $a0 = 80B7E0B8
/* 06CE0 80B70680 0C01E107 */  jal     Math_SmoothScaleMaxF
              
/* 06CE4 80B70684 3C063F80 */  lui     $a2, 0x3F80                ## $a2 = 3F800000
/* 06CE8 80B70688 3C0480B8 */  lui     $a0, %hi(D_80B7E0BC)       ## $a0 = 80B80000
/* 06CEC 80B7068C 3C0580B8 */  lui     $a1, %hi(D_80B7EAC0)       ## $a1 = 80B80000
/* 06CF0 80B70690 3C0780B8 */  lui     $a3, %hi(D_80B7E154)       ## $a3 = 80B80000
/* 06CF4 80B70694 8CE7E154 */  lw      $a3, %lo(D_80B7E154)($a3)  
/* 06CF8 80B70698 8CA5EAC0 */  lw      $a1, %lo(D_80B7EAC0)($a1)  
/* 06CFC 80B7069C 2484E0BC */  addiu   $a0, $a0, %lo(D_80B7E0BC)  ## $a0 = 80B7E0BC
/* 06D00 80B706A0 0C01E107 */  jal     Math_SmoothScaleMaxF
              
/* 06D04 80B706A4 3C063F80 */  lui     $a2, 0x3F80                ## $a2 = 3F800000
/* 06D08 80B706A8 3C0480B8 */  lui     $a0, %hi(D_80B7E0C0)       ## $a0 = 80B80000
/* 06D0C 80B706AC 3C0580B8 */  lui     $a1, %hi(D_80B7EAC4)       ## $a1 = 80B80000
/* 06D10 80B706B0 3C0780B8 */  lui     $a3, %hi(D_80B7E154)       ## $a3 = 80B80000
/* 06D14 80B706B4 8CE7E154 */  lw      $a3, %lo(D_80B7E154)($a3)  
/* 06D18 80B706B8 8CA5EAC4 */  lw      $a1, %lo(D_80B7EAC4)($a1)  
/* 06D1C 80B706BC 2484E0C0 */  addiu   $a0, $a0, %lo(D_80B7E0C0)  ## $a0 = 80B7E0C0
/* 06D20 80B706C0 0C01E107 */  jal     Math_SmoothScaleMaxF
              
/* 06D24 80B706C4 3C063F80 */  lui     $a2, 0x3F80                ## $a2 = 3F800000
/* 06D28 80B706C8 3C013F80 */  lui     $at, 0x3F80                ## $at = 3F800000
/* 06D2C 80B706CC 44810000 */  mtc1    $at, $f0                   ## $f0 = 1.00
/* 06D30 80B706D0 3C0180B8 */  lui     $at, %hi(D_80B7E138)       ## $at = 80B80000
/* 06D34 80B706D4 C424E138 */  lwc1    $f4, %lo(D_80B7E138)($at)  
/* 06D38 80B706D8 4604003C */  c.lt.s  $f0, $f4                   
/* 06D3C 80B706DC 00000000 */  nop
/* 06D40 80B706E0 45000009 */  bc1f    .L80B70708                 
/* 06D44 80B706E4 3C0480B8 */  lui     $a0, %hi(D_80B7E154)       ## $a0 = 80B80000
/* 06D48 80B706E8 44060000 */  mfc1    $a2, $f0                   
/* 06D4C 80B706EC 44070000 */  mfc1    $a3, $f0                   
/* 06D50 80B706F0 2484E154 */  addiu   $a0, $a0, %lo(D_80B7E154)  ## $a0 = 80B7E154
/* 06D54 80B706F4 0C01E107 */  jal     Math_SmoothScaleMaxF
              
/* 06D58 80B706F8 3C05447A */  lui     $a1, 0x447A                ## $a1 = 447A0000
/* 06D5C 80B706FC 3C013F80 */  lui     $at, 0x3F80                ## $at = 3F800000
/* 06D60 80B70700 44810000 */  mtc1    $at, $f0                   ## $f0 = 1.00
/* 06D64 80B70704 00000000 */  nop
.L80B70708:
/* 06D68 80B70708 3C0480B8 */  lui     $a0, %hi(D_80B7E154)       ## $a0 = 80B80000
/* 06D6C 80B7070C 44060000 */  mfc1    $a2, $f0                   
/* 06D70 80B70710 3C073DCC */  lui     $a3, 0x3DCC                ## $a3 = 3DCC0000
/* 06D74 80B70714 34E7CCCD */  ori     $a3, $a3, 0xCCCD           ## $a3 = 3DCCCCCD
/* 06D78 80B70718 2484E154 */  addiu   $a0, $a0, %lo(D_80B7E154)  ## $a0 = 80B7E154
/* 06D7C 80B7071C 0C01E107 */  jal     Math_SmoothScaleMaxF
              
/* 06D80 80B70720 3C05447A */  lui     $a1, 0x447A                ## $a1 = 447A0000
/* 06D84 80B70724 3C0280B8 */  lui     $v0, %hi(D_80B7E144)       ## $v0 = 80B80000
/* 06D88 80B70728 2442E144 */  addiu   $v0, $v0, %lo(D_80B7E144)  ## $v0 = 80B7E144
/* 06D8C 80B7072C 3C014343 */  lui     $at, 0x4343                ## $at = 43430000
/* 06D90 80B70730 44810000 */  mtc1    $at, $f0                   ## $f0 = 195.00
/* 06D94 80B70734 C44A0000 */  lwc1    $f10, 0x0000($v0)          ## 80B7E144
/* 06D98 80B70738 460A003E */  c.le.s  $f0, $f10                  
/* 06D9C 80B7073C 00000000 */  nop
/* 06DA0 80B70740 4502000C */  bc1fl   .L80B70774                 
/* 06DA4 80B70744 8FA300EC */  lw      $v1, 0x00EC($sp)           
/* 06DA8 80B70748 E4400000 */  swc1    $f0, 0x0000($v0)           ## 80B7E144
/* 06DAC 80B7074C 3C0180B8 */  lui     $at, %hi(D_80B7A694)       ## $at = 80B80000
/* 06DB0 80B70750 A420A694 */  sh      $zero, %lo(D_80B7A694)($at) 
/* 06DB4 80B70754 3C014402 */  lui     $at, 0x4402                ## $at = 44020000
/* 06DB8 80B70758 44813000 */  mtc1    $at, $f6                   ## $f6 = 520.00
/* 06DBC 80B7075C 3C0180B8 */  lui     $at, %hi(D_80B7E148)       ## $at = 80B80000
/* 06DC0 80B70760 240F0003 */  addiu   $t7, $zero, 0x0003         ## $t7 = 00000003
/* 06DC4 80B70764 E426E148 */  swc1    $f6, %lo(D_80B7E148)($at)  
/* 06DC8 80B70768 3C0180B8 */  lui     $at, %hi(D_80B7A6CC)       ## $at = 80B80000
/* 06DCC 80B7076C A02FA6CC */  sb      $t7, %lo(D_80B7A6CC)($at)  
/* 06DD0 80B70770 8FA300EC */  lw      $v1, 0x00EC($sp)           
.L80B70774:
/* 06DD4 80B70774 3C014080 */  lui     $at, 0x4080                ## $at = 40800000
/* 06DD8 80B70778 44812000 */  mtc1    $at, $f4                   ## $f4 = 4.00
/* 06DDC 80B7077C 8C6E07C0 */  lw      $t6, 0x07C0($v1)           ## 000007C0
/* 06DE0 80B70780 3C0880B8 */  lui     $t0, %hi(D_80B7E0B8)       ## $t0 = 80B80000
/* 06DE4 80B70784 2508E0B8 */  addiu   $t0, $t0, %lo(D_80B7E0B8)  ## $t0 = 80B7E0B8
/* 06DE8 80B70788 8DD80028 */  lw      $t8, 0x0028($t6)           ## 00000028
/* 06DEC 80B7078C C50E0004 */  lwc1    $f14, 0x0004($t0)          ## 80B7E0BC
/* 06DF0 80B70790 87190002 */  lh      $t9, 0x0002($t8)           ## 00000002
/* 06DF4 80B70794 44994000 */  mtc1    $t9, $f8                   ## $f8 = 0.00
/* 06DF8 80B70798 00000000 */  nop
/* 06DFC 80B7079C 468040A0 */  cvt.s.w $f2, $f8                   
/* 06E00 80B707A0 46041280 */  add.s   $f10, $f2, $f4             
/* 06E04 80B707A4 460A703E */  c.le.s  $f14, $f10                 
/* 06E08 80B707A8 00000000 */  nop
/* 06E0C 80B707AC 4500009A */  bc1f    .L80B70A18                 
/* 06E10 80B707B0 3C014080 */  lui     $at, 0x4080                ## $at = 40800000
/* 06E14 80B707B4 44813000 */  mtc1    $at, $f6                   ## $f6 = 4.00
/* 06E18 80B707B8 8FAF0040 */  lw      $t7, 0x0040($sp)           
/* 06E1C 80B707BC 3C1980B8 */  lui     $t9, %hi(D_80B7E0AE)       ## $t9 = 80B80000
/* 06E20 80B707C0 46061201 */  sub.s   $f8, $f2, $f6              
/* 06E24 80B707C4 460E403E */  c.le.s  $f8, $f14                  
/* 06E28 80B707C8 00000000 */  nop
/* 06E2C 80B707CC 45020093 */  bc1fl   .L80B70A1C                 
/* 06E30 80B707D0 8FBF002C */  lw      $ra, 0x002C($sp)           
/* 06E34 80B707D4 95EE0000 */  lhu     $t6, 0x0000($t7)           ## 00000003
/* 06E38 80B707D8 3C01FFFF */  lui     $at, 0xFFFF                ## $at = FFFF0000
/* 06E3C 80B707DC 34217FFF */  ori     $at, $at, 0x7FFF           ## $at = FFFF7FFF
/* 06E40 80B707E0 01C1C027 */  nor     $t8, $t6, $at              
/* 06E44 80B707E4 13000009 */  beq     $t8, $zero, .L80B7080C     
/* 06E48 80B707E8 2402003F */  addiu   $v0, $zero, 0x003F         ## $v0 = 0000003F
/* 06E4C 80B707EC 3C013F80 */  lui     $at, 0x3F80                ## $at = 3F800000
/* 06E50 80B707F0 44812000 */  mtc1    $at, $f4                   ## $f4 = 1.00
/* 06E54 80B707F4 3C0180B8 */  lui     $at, %hi(D_80B7E138)       ## $at = 80B80000
/* 06E58 80B707F8 C42AE138 */  lwc1    $f10, %lo(D_80B7E138)($at) 
/* 06E5C 80B707FC 460A203C */  c.lt.s  $f4, $f10                  
/* 06E60 80B70800 00000000 */  nop
/* 06E64 80B70804 45000002 */  bc1f    .L80B70810                 
/* 06E68 80B70808 00000000 */  nop
.L80B7080C:
/* 06E6C 80B7080C 24020001 */  addiu   $v0, $zero, 0x0001         ## $v0 = 00000001
.L80B70810:
/* 06E70 80B70810 8739E0AE */  lh      $t9, %lo(D_80B7E0AE)($t9)  
/* 06E74 80B70814 03227824 */  and     $t7, $t9, $v0              
/* 06E78 80B70818 55E00080 */  bnel    $t7, $zero, .L80B70A1C     
/* 06E7C 80B7081C 8FBF002C */  lw      $ra, 0x002C($sp)           
/* 06E80 80B70820 8D180000 */  lw      $t8, 0x0000($t0)           ## 80B7E0B8
/* 06E84 80B70824 27A600A8 */  addiu   $a2, $sp, 0x00A8           ## $a2 = FFFFFFC0
/* 06E88 80B70828 8D0E0004 */  lw      $t6, 0x0004($t0)           ## 80B7E0BC
/* 06E8C 80B7082C ACD80000 */  sw      $t8, 0x0000($a2)           ## FFFFFFC0
/* 06E90 80B70830 8D180008 */  lw      $t8, 0x0008($t0)           ## 80B7E0C0
/* 06E94 80B70834 ACCE0004 */  sw      $t6, 0x0004($a2)           ## FFFFFFC4
/* 06E98 80B70838 3C050001 */  lui     $a1, 0x0001                ## $a1 = 00010000
/* 06E9C 80B7083C ACD80008 */  sw      $t8, 0x0008($a2)           ## FFFFFFC8
/* 06EA0 80B70840 8C7907C0 */  lw      $t9, 0x07C0($v1)           ## 000007C0
/* 06EA4 80B70844 00A32821 */  addu    $a1, $a1, $v1              
/* 06EA8 80B70848 3C014396 */  lui     $at, 0x4396                ## $at = 43960000
/* 06EAC 80B7084C 8F2F0028 */  lw      $t7, 0x0028($t9)           ## 80B80028
/* 06EB0 80B70850 44812000 */  mtc1    $at, $f4                   ## $f4 = 300.00
/* 06EB4 80B70854 2419005A */  addiu   $t9, $zero, 0x005A         ## $t9 = 0000005A
/* 06EB8 80B70858 85EE0002 */  lh      $t6, 0x0002($t7)           ## 00000005
/* 06EBC 80B7085C 24180096 */  addiu   $t8, $zero, 0x0096         ## $t8 = 00000096
/* 06EC0 80B70860 00002025 */  or      $a0, $zero, $zero          ## $a0 = 00000000
/* 06EC4 80B70864 448E3000 */  mtc1    $t6, $f6                   ## $f6 = 0.00
/* 06EC8 80B70868 3C0741F0 */  lui     $a3, 0x41F0                ## $a3 = 41F00000
/* 06ECC 80B7086C 46803220 */  cvt.s.w $f8, $f6                   
/* 06ED0 80B70870 E7A800AC */  swc1    $f8, 0x00AC($sp)           
/* 06ED4 80B70874 8CA51E10 */  lw      $a1, 0x1E10($a1)           ## 00011E10
/* 06ED8 80B70878 AFB90018 */  sw      $t9, 0x0018($sp)           
/* 06EDC 80B7087C AFB80014 */  sw      $t8, 0x0014($sp)           
/* 06EE0 80B70880 0C2DA70B */  jal     func_80B69C2C              
/* 06EE4 80B70884 E7A40010 */  swc1    $f4, 0x0010($sp)           
/* 06EE8 80B70888 10000064 */  beq     $zero, $zero, .L80B70A1C   
/* 06EEC 80B7088C 8FBF002C */  lw      $ra, 0x002C($sp)           
glabel L80B70890
/* 06EF0 80B70890 8FA400E8 */  lw      $a0, 0x00E8($sp)           
/* 06EF4 80B70894 3C0380B8 */  lui     $v1, %hi(D_80B7E144)       ## $v1 = 80B80000
/* 06EF8 80B70898 2463E144 */  addiu   $v1, $v1, %lo(D_80B7E144)  ## $v1 = 80B7E144
/* 06EFC 80B7089C 90820157 */  lbu     $v0, 0x0157($a0)           ## 00000157
/* 06F00 80B708A0 3C0180B8 */  lui     $at, %hi(D_80B7E11C)       ## $at = 80B80000
/* 06F04 80B708A4 10400006 */  beq     $v0, $zero, .L80B708C0     
/* 06F08 80B708A8 244FFFFF */  addiu   $t7, $v0, 0xFFFF           ## $t7 = FFFFFFFF
/* 06F0C 80B708AC A08F0157 */  sb      $t7, 0x0157($a0)           ## 00000157
/* 06F10 80B708B0 C46A0000 */  lwc1    $f10, 0x0000($v1)          ## 80B7E144
/* 06F14 80B708B4 C426E11C */  lwc1    $f6, %lo(D_80B7E11C)($at)  
/* 06F18 80B708B8 46065200 */  add.s   $f8, $f10, $f6             
/* 06F1C 80B708BC E4680000 */  swc1    $f8, 0x0000($v1)           ## 80B7E144
.L80B708C0:
/* 06F20 80B708C0 8FAE00EC */  lw      $t6, 0x00EC($sp)           
/* 06F24 80B708C4 3C01FFFF */  lui     $at, 0xFFFF                ## $at = FFFF0000
/* 06F28 80B708C8 34217FFF */  ori     $at, $at, 0x7FFF           ## $at = FFFF7FFF
/* 06F2C 80B708CC 95D80014 */  lhu     $t8, 0x0014($t6)           ## 00000014
/* 06F30 80B708D0 3C0380B8 */  lui     $v1, %hi(D_80B7E144)       ## $v1 = 80B80000
/* 06F34 80B708D4 2463E144 */  addiu   $v1, $v1, %lo(D_80B7E144)  ## $v1 = 80B7E144
/* 06F38 80B708D8 0301C827 */  nor     $t9, $t8, $at              
/* 06F3C 80B708DC 17200024 */  bne     $t9, $zero, .L80B70970     
/* 06F40 80B708E0 3C0280B8 */  lui     $v0, %hi(D_80B7E0B8)       ## $v0 = 80B80000
/* 06F44 80B708E4 2442E0B8 */  addiu   $v0, $v0, %lo(D_80B7E0B8)  ## $v0 = 80B7E0B8
/* 06F48 80B708E8 C4520000 */  lwc1    $f18, 0x0000($v0)          ## 80B7E0B8
/* 06F4C 80B708EC C4400008 */  lwc1    $f0, 0x0008($v0)           ## 80B7E0C0
/* 06F50 80B708F0 3C0180B8 */  lui     $at, %hi(D_80B7B528)       ## $at = 80B80000
/* 06F54 80B708F4 46129282 */  mul.s   $f10, $f18, $f18           
/* 06F58 80B708F8 C424B528 */  lwc1    $f4, %lo(D_80B7B528)($at)  
/* 06F5C 80B708FC 3C0F8016 */  lui     $t7, %hi(gGameInfo)
/* 06F60 80B70900 46000182 */  mul.s   $f6, $f0, $f0              
/* 06F64 80B70904 3C0180B8 */  lui     $at, %hi(D_80B7E11C)       ## $at = 80B80000
/* 06F68 80B70908 46065200 */  add.s   $f8, $f10, $f6             
/* 06F6C 80B7090C 4608203C */  c.lt.s  $f4, $f8                   
/* 06F70 80B70910 00000000 */  nop
/* 06F74 80B70914 45020011 */  bc1fl   .L80B7095C                 
/* 06F78 80B70918 C4680000 */  lwc1    $f8, 0x0000($v1)           ## 80B7E144
/* 06F7C 80B7091C 8DEFFA90 */  lw      $t7, %lo(gGameInfo)($t7)
/* 06F80 80B70920 3C0180B8 */  lui     $at, %hi(D_80B7B52C)       ## $at = 80B80000
/* 06F84 80B70924 C424B52C */  lwc1    $f4, %lo(D_80B7B52C)($at)  
/* 06F88 80B70928 85EE0A56 */  lh      $t6, 0x0A56($t7)           ## 80160A56
/* 06F8C 80B7092C 3C013F80 */  lui     $at, 0x3F80                ## $at = 3F800000
/* 06F90 80B70930 448E5000 */  mtc1    $t6, $f10                  ## $f10 = 0.00
/* 06F94 80B70934 00000000 */  nop
/* 06F98 80B70938 468051A0 */  cvt.s.w $f6, $f10                  
/* 06F9C 80B7093C 44815000 */  mtc1    $at, $f10                  ## $f10 = 1.00
/* 06FA0 80B70940 46043202 */  mul.s   $f8, $f6, $f4              
/* 06FA4 80B70944 C4640000 */  lwc1    $f4, 0x0000($v1)           ## 80B7E144
/* 06FA8 80B70948 46085180 */  add.s   $f6, $f10, $f8             
/* 06FAC 80B7094C 46062280 */  add.s   $f10, $f4, $f6             
/* 06FB0 80B70950 10000005 */  beq     $zero, $zero, .L80B70968   
/* 06FB4 80B70954 E46A0000 */  swc1    $f10, 0x0000($v1)          ## 80B7E144
/* 06FB8 80B70958 C4680000 */  lwc1    $f8, 0x0000($v1)           ## 80B7E144
.L80B7095C:
/* 06FBC 80B7095C C424E11C */  lwc1    $f4, %lo(D_80B7E11C)($at)  
/* 06FC0 80B70960 46044180 */  add.s   $f6, $f8, $f4              
/* 06FC4 80B70964 E4660000 */  swc1    $f6, 0x0000($v1)           ## 80B7E144
.L80B70968:
/* 06FC8 80B70968 0C01E221 */  jal     func_80078884              
/* 06FCC 80B7096C 2404103D */  addiu   $a0, $zero, 0x103D         ## $a0 = 0000103D
.L80B70970:
/* 06FD0 80B70970 3C1880B8 */  lui     $t8, %hi(D_80B7E0AE)       ## $t8 = 80B80000
/* 06FD4 80B70974 8718E0AE */  lh      $t8, %lo(D_80B7E0AE)($t8)  
/* 06FD8 80B70978 3C0480B8 */  lui     $a0, %hi(D_80B7E148)       ## $a0 = 80B80000
/* 06FDC 80B7097C 2484E148 */  addiu   $a0, $a0, %lo(D_80B7E148)  ## $a0 = 80B7E148
/* 06FE0 80B70980 3319001F */  andi    $t9, $t8, 0x001F           ## $t9 = 00000000
/* 06FE4 80B70984 1720000C */  bne     $t9, $zero, .L80B709B8     
/* 06FE8 80B70988 24050000 */  addiu   $a1, $zero, 0x0000         ## $a1 = 00000000
/* 06FEC 80B7098C 3C0F80B8 */  lui     $t7, %hi(D_80B7E124)       ## $t7 = 80B80000
/* 06FF0 80B70990 91EFE124 */  lbu     $t7, %lo(D_80B7E124)($t7)  
/* 06FF4 80B70994 3C0E80B8 */  lui     $t6, %hi(D_80B7E0B6)       ## $t6 = 80B80000
/* 06FF8 80B70998 24180005 */  addiu   $t8, $zero, 0x0005         ## $t8 = 00000005
/* 06FFC 80B7099C 15E00004 */  bne     $t7, $zero, .L80B709B0     
/* 07000 80B709A0 00000000 */  nop
/* 07004 80B709A4 91CEE0B6 */  lbu     $t6, %lo(D_80B7E0B6)($t6)  
/* 07008 80B709A8 24010002 */  addiu   $at, $zero, 0x0002         ## $at = 00000002
/* 0700C 80B709AC 11C10002 */  beq     $t6, $at, .L80B709B8       
.L80B709B0:
/* 07010 80B709B0 3C0180B8 */  lui     $at, %hi(D_80B7A6A4)       ## $at = 80B80000
/* 07014 80B709B4 A038A6A4 */  sb      $t8, %lo(D_80B7A6A4)($at)  
.L80B709B8:
/* 07018 80B709B8 3C073E4C */  lui     $a3, 0x3E4C                ## $a3 = 3E4C0000
/* 0701C 80B709BC 34E7CCCD */  ori     $a3, $a3, 0xCCCD           ## $a3 = 3E4CCCCD
/* 07020 80B709C0 0C01E107 */  jal     Math_SmoothScaleMaxF
              
/* 07024 80B709C4 3C063F80 */  lui     $a2, 0x3F80                ## $a2 = 3F800000
/* 07028 80B709C8 10000014 */  beq     $zero, $zero, .L80B70A1C   
/* 0702C 80B709CC 8FBF002C */  lw      $ra, 0x002C($sp)           
glabel L80B709D0
/* 07030 80B709D0 3C0180B8 */  lui     $at, %hi(D_80B7B530)       ## $at = 80B80000
/* 07034 80B709D4 C42AB530 */  lwc1    $f10, %lo(D_80B7B530)($at) 
/* 07038 80B709D8 3C0180B8 */  lui     $at, %hi(D_80B7E14C)       ## $at = 80B80000
/* 0703C 80B709DC 3C0280B8 */  lui     $v0, %hi(D_80B7E0B8)       ## $v0 = 80B80000
/* 07040 80B709E0 E42AE14C */  swc1    $f10, %lo(D_80B7E14C)($at) 
/* 07044 80B709E4 2442E0B8 */  addiu   $v0, $v0, %lo(D_80B7E0B8)  ## $v0 = 80B7E0B8
/* 07048 80B709E8 3C0380B8 */  lui     $v1, %hi(D_80B7E168)       ## $v1 = 80B80000
/* 0704C 80B709EC C4480000 */  lwc1    $f8, 0x0000($v0)           ## 80B7E0B8
/* 07050 80B709F0 C4440004 */  lwc1    $f4, 0x0004($v0)           ## 80B7E0BC
/* 07054 80B709F4 C4460008 */  lwc1    $f6, 0x0008($v0)           ## 80B7E0C0
/* 07058 80B709F8 2463E168 */  addiu   $v1, $v1, %lo(D_80B7E168)  ## $v1 = 80B7E168
/* 0705C 80B709FC 3C014000 */  lui     $at, 0x4000                ## $at = 40000000
/* 07060 80B70A00 44815000 */  mtc1    $at, $f10                  ## $f10 = 2.00
/* 07064 80B70A04 3C0180B8 */  lui     $at, %hi(D_80B7E148)       ## $at = 80B80000
/* 07068 80B70A08 E4680954 */  swc1    $f8, 0x0954($v1)           ## 80B7EABC
/* 0706C 80B70A0C E4640958 */  swc1    $f4, 0x0958($v1)           ## 80B7EAC0
/* 07070 80B70A10 E466095C */  swc1    $f6, 0x095C($v1)           ## 80B7EAC4
/* 07074 80B70A14 E42AE148 */  swc1    $f10, %lo(D_80B7E148)($at) 
.L80B70A18:
/* 07078 80B70A18 8FBF002C */  lw      $ra, 0x002C($sp)           
.L80B70A1C:
/* 0707C 80B70A1C 8FB00028 */  lw      $s0, 0x0028($sp)           
/* 07080 80B70A20 27BD00E8 */  addiu   $sp, $sp, 0x00E8           ## $sp = 00000000
/* 07084 80B70A24 03E00008 */  jr      $ra                        
/* 07088 80B70A28 00000000 */  nop
