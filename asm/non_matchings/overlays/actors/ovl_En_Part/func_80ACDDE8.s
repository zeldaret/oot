.late_rodata
glabel D_80ACF240
 .word 0x469C4000
glabel jtbl_80ACF244
.word L80ACDE58
.word L80ACDF68
.word L80ACDF98
.word L80ACE010
.word L80ACDF68
.word L80ACE0AC
.word L80ACE0AC
.word L80ACE0AC
.word L80ACE0AC
.word L80ACDF68
.word L80ACDF68
.word L80ACDFEC
.word L80ACDEBC
.word L80ACDEB4
.word L80ACDF44
glabel D_80ACF280
 .word 0xBE99999A
glabel D_80ACF284
    .float 0.3

glabel D_80ACF288
 .word 0xBF19999A
glabel D_80ACF28C
    .float 0.15

glabel D_80ACF290
 .word 0xBF19999A
glabel D_80ACF294
    .float 0.15

glabel D_80ACF298
 .word 0xBF19999A
glabel D_80ACF29C
    .float 0.3

glabel D_80ACF2A0
    .float 0.15

glabel D_80ACF2A4
    .float -1.2

glabel D_80ACF2A8
    .float 0.15

.text
glabel func_80ACDDE8
/* 00018 80ACDDE8 27BDFFC8 */  addiu   $sp, $sp, 0xFFC8           ## $sp = FFFFFFC8
/* 0001C 80ACDDEC 3C013F80 */  lui     $at, 0x3F80                ## $at = 3F800000
/* 00020 80ACDDF0 44811000 */  mtc1    $at, $f2                   ## $f2 = 1.00
/* 00024 80ACDDF4 AFBF002C */  sw      $ra, 0x002C($sp)           
/* 00028 80ACDDF8 AFB00028 */  sw      $s0, 0x0028($sp)           
/* 0002C 80ACDDFC AFA5003C */  sw      $a1, 0x003C($sp)           
/* 00030 80ACDE00 240E0001 */  addiu   $t6, $zero, 0x0001         ## $t6 = 00000001
/* 00034 80ACDE04 A08E014C */  sb      $t6, 0x014C($a0)           ## 0000014C
/* 00038 80ACDE08 00808025 */  or      $s0, $a0, $zero            ## $s0 = 00000000
/* 0003C 80ACDE0C 0C03F66B */  jal     Math_Rand_ZeroOne
              ## Rand.Next() float
/* 00040 80ACDE10 E7A20034 */  swc1    $f2, 0x0034($sp)           
/* 00044 80ACDE14 3C0180AD */  lui     $at, %hi(D_80ACF240)       ## $at = 80AD0000
/* 00048 80ACDE18 C424F240 */  lwc1    $f4, %lo(D_80ACF240)($at)  
/* 0004C 80ACDE1C 9619001C */  lhu     $t9, 0x001C($s0)           ## 0000001C
/* 00050 80ACDE20 8FA4003C */  lw      $a0, 0x003C($sp)           
/* 00054 80ACDE24 46040182 */  mul.s   $f6, $f0, $f4              
/* 00058 80ACDE28 C7A20034 */  lwc1    $f2, 0x0034($sp)           
/* 0005C 80ACDE2C 2F21000F */  sltiu   $at, $t9, 0x000F           
/* 00060 80ACDE30 0019C880 */  sll     $t9, $t9,  2               
/* 00064 80ACDE34 4600320D */  trunc.w.s $f8, $f6                   
/* 00068 80ACDE38 44184000 */  mfc1    $t8, $f8                   
/* 0006C 80ACDE3C 102000BA */  beq     $at, $zero, .L80ACE128     
/* 00070 80ACDE40 A6180032 */  sh      $t8, 0x0032($s0)           ## 00000032
/* 00074 80ACDE44 3C0180AD */  lui     $at, %hi(jtbl_80ACF244)       ## $at = 80AD0000
/* 00078 80ACDE48 00390821 */  addu    $at, $at, $t9              
/* 0007C 80ACDE4C 8C39F244 */  lw      $t9, %lo(jtbl_80ACF244)($at)  
/* 00080 80ACDE50 03200008 */  jr      $t9                        
/* 00084 80ACDE54 00000000 */  nop
glabel L80ACDE58
/* 00088 80ACDE58 44800000 */  mtc1    $zero, $f0                 ## $f0 = 0.00
/* 0008C 80ACDE5C 0C03F66B */  jal     Math_Rand_ZeroOne
              ## Rand.Next() float
/* 00090 80ACDE60 E6000060 */  swc1    $f0, 0x0060($s0)           ## 00000060
/* 00094 80ACDE64 3C0180AD */  lui     $at, %hi(D_80ACF280)       ## $at = 80AD0000
/* 00098 80ACDE68 C42AF280 */  lwc1    $f10, %lo(D_80ACF280)($at) 
/* 0009C 80ACDE6C 3C013F00 */  lui     $at, 0x3F00                ## $at = 3F000000
/* 000A0 80ACDE70 44818000 */  mtc1    $at, $f16                  ## $f16 = 0.50
/* 000A4 80ACDE74 3C0180AD */  lui     $at, %hi(D_80ACF284)       ## $at = 80AD0000
/* 000A8 80ACDE78 24080019 */  addiu   $t0, $zero, 0x0019         ## $t0 = 00000019
/* 000AC 80ACDE7C 46100482 */  mul.s   $f18, $f0, $f16            
/* 000B0 80ACDE80 46125101 */  sub.s   $f4, $f10, $f18            
/* 000B4 80ACDE84 E604006C */  swc1    $f4, 0x006C($s0)           ## 0000006C
/* 000B8 80ACDE88 C426F284 */  lwc1    $f6, %lo(D_80ACF284)($at)  
/* 000BC 80ACDE8C A608014E */  sh      $t0, 0x014E($s0)           ## 0000014E
/* 000C0 80ACDE90 0C03F66B */  jal     Math_Rand_ZeroOne
              ## Rand.Next() float
/* 000C4 80ACDE94 E6060158 */  swc1    $f6, 0x0158($s0)           ## 00000158
/* 000C8 80ACDE98 3C013F00 */  lui     $at, 0x3F00                ## $at = 3F000000
/* 000CC 80ACDE9C 44814000 */  mtc1    $at, $f8                   ## $f8 = 0.50
/* 000D0 80ACDEA0 00000000 */  nop
/* 000D4 80ACDEA4 46080081 */  sub.s   $f2, $f0, $f8              
/* 000D8 80ACDEA8 46021400 */  add.s   $f16, $f2, $f2             
/* 000DC 80ACDEAC 1000009E */  beq     $zero, $zero, .L80ACE128   
/* 000E0 80ACDEB0 E6100068 */  swc1    $f16, 0x0068($s0)          ## 00000068
glabel L80ACDEB4
/* 000E4 80ACDEB4 24090190 */  addiu   $t1, $zero, 0x0190         ## $t1 = 00000190
/* 000E8 80ACDEB8 A609014E */  sh      $t1, 0x014E($s0)           ## 0000014E
glabel L80ACDEBC
/* 000EC 80ACDEBC 3C0140C0 */  lui     $at, 0x40C0                ## $at = 40C00000
/* 000F0 80ACDEC0 44816000 */  mtc1    $at, $f12                  ## $f12 = 6.00
/* 000F4 80ACDEC4 0C00CFC8 */  jal     Math_Rand_CenteredFloat
              
/* 000F8 80ACDEC8 00000000 */  nop
/* 000FC 80ACDECC 8E0B0024 */  lw      $t3, 0x0024($s0)           ## 00000024
/* 00100 80ACDED0 860C014E */  lh      $t4, 0x014E($s0)           ## 0000014E
/* 00104 80ACDED4 8E0A0028 */  lw      $t2, 0x0028($s0)           ## 00000028
/* 00108 80ACDED8 AE0B0008 */  sw      $t3, 0x0008($s0)           ## 00000008
/* 0010C 80ACDEDC 8E0B002C */  lw      $t3, 0x002C($s0)           ## 0000002C
/* 00110 80ACDEE0 258D003C */  addiu   $t5, $t4, 0x003C           ## $t5 = 0000003C
/* 00114 80ACDEE4 E6000068 */  swc1    $f0, 0x0068($s0)           ## 00000068
/* 00118 80ACDEE8 A60D014E */  sh      $t5, 0x014E($s0)           ## 0000014E
/* 0011C 80ACDEEC AE0A000C */  sw      $t2, 0x000C($s0)           ## 0000000C
/* 00120 80ACDEF0 0C03F66B */  jal     Math_Rand_ZeroOne
              ## Rand.Next() float
/* 00124 80ACDEF4 AE0B0010 */  sw      $t3, 0x0010($s0)           ## 00000010
/* 00128 80ACDEF8 3C0140A0 */  lui     $at, 0x40A0                ## $at = 40A00000
/* 0012C 80ACDEFC 44815000 */  mtc1    $at, $f10                  ## $f10 = 5.00
/* 00130 80ACDF00 3C014080 */  lui     $at, 0x4080                ## $at = 40800000
/* 00134 80ACDF04 44812000 */  mtc1    $at, $f4                   ## $f4 = 4.00
/* 00138 80ACDF08 460A0482 */  mul.s   $f18, $f0, $f10            
/* 0013C 80ACDF0C 46049180 */  add.s   $f6, $f18, $f4             
/* 00140 80ACDF10 0C03F66B */  jal     Math_Rand_ZeroOne
              ## Rand.Next() float
/* 00144 80ACDF14 E6060060 */  swc1    $f6, 0x0060($s0)           ## 00000060
/* 00148 80ACDF18 3C0180AD */  lui     $at, %hi(D_80ACF288)       ## $at = 80AD0000
/* 0014C 80ACDF1C C428F288 */  lwc1    $f8, %lo(D_80ACF288)($at)  
/* 00150 80ACDF20 3C013F00 */  lui     $at, 0x3F00                ## $at = 3F000000
/* 00154 80ACDF24 44818000 */  mtc1    $at, $f16                  ## $f16 = 0.50
/* 00158 80ACDF28 3C0180AD */  lui     $at, %hi(D_80ACF28C)       ## $at = 80AD0000
/* 0015C 80ACDF2C 46100282 */  mul.s   $f10, $f0, $f16            
/* 00160 80ACDF30 460A4481 */  sub.s   $f18, $f8, $f10            
/* 00164 80ACDF34 E612006C */  swc1    $f18, 0x006C($s0)          ## 0000006C
/* 00168 80ACDF38 C424F28C */  lwc1    $f4, %lo(D_80ACF28C)($at)  
/* 0016C 80ACDF3C 1000007A */  beq     $zero, $zero, .L80ACE128   
/* 00170 80ACDF40 E6040158 */  swc1    $f4, 0x0158($s0)           ## 00000158
glabel L80ACDF44
/* 00174 80ACDF44 240E8001 */  addiu   $t6, $zero, 0x8001         ## $t6 = FFFF8001
/* 00178 80ACDF48 240FFFFF */  addiu   $t7, $zero, 0xFFFF         ## $t7 = FFFFFFFF
/* 0017C 80ACDF4C AFAF0018 */  sw      $t7, 0x0018($sp)           
/* 00180 80ACDF50 AFAE0010 */  sw      $t6, 0x0010($sp)           
/* 00184 80ACDF54 02002825 */  or      $a1, $s0, $zero            ## $a1 = 00000000
/* 00188 80ACDF58 26060024 */  addiu   $a2, $s0, 0x0024           ## $a2 = 00000024
/* 0018C 80ACDF5C 24070028 */  addiu   $a3, $zero, 0x0028         ## $a3 = 00000028
/* 00190 80ACDF60 0C00A935 */  jal     func_8002A4D4              
/* 00194 80ACDF64 AFA00014 */  sw      $zero, 0x0014($sp)         
glabel L80ACDF68
/* 00198 80ACDF68 0C03F66B */  jal     Math_Rand_ZeroOne
              ## Rand.Next() float
/* 0019C 80ACDF6C 00000000 */  nop
/* 001A0 80ACDF70 3C014188 */  lui     $at, 0x4188                ## $at = 41880000
/* 001A4 80ACDF74 44813000 */  mtc1    $at, $f6                   ## $f6 = 17.00
/* 001A8 80ACDF78 8618014E */  lh      $t8, 0x014E($s0)           ## 0000014E
/* 001AC 80ACDF7C 46060402 */  mul.s   $f16, $f0, $f6             
/* 001B0 80ACDF80 4600820D */  trunc.w.s $f8, $f16                  
/* 001B4 80ACDF84 440A4000 */  mfc1    $t2, $f8                   
/* 001B8 80ACDF88 00000000 */  nop
/* 001BC 80ACDF8C 030A5821 */  addu    $t3, $t8, $t2              
/* 001C0 80ACDF90 256C0005 */  addiu   $t4, $t3, 0x0005           ## $t4 = 00000005
/* 001C4 80ACDF94 A60C014E */  sh      $t4, 0x014E($s0)           ## 0000014E
glabel L80ACDF98
/* 001C8 80ACDF98 0C03F66B */  jal     Math_Rand_ZeroOne
              ## Rand.Next() float
/* 001CC 80ACDF9C 00000000 */  nop
/* 001D0 80ACDFA0 3C0140A0 */  lui     $at, 0x40A0                ## $at = 40A00000
/* 001D4 80ACDFA4 44815000 */  mtc1    $at, $f10                  ## $f10 = 5.00
/* 001D8 80ACDFA8 3C014080 */  lui     $at, 0x4080                ## $at = 40800000
/* 001DC 80ACDFAC 44812000 */  mtc1    $at, $f4                   ## $f4 = 4.00
/* 001E0 80ACDFB0 460A0482 */  mul.s   $f18, $f0, $f10            
/* 001E4 80ACDFB4 46049180 */  add.s   $f6, $f18, $f4             
/* 001E8 80ACDFB8 0C03F66B */  jal     Math_Rand_ZeroOne
              ## Rand.Next() float
/* 001EC 80ACDFBC E6060060 */  swc1    $f6, 0x0060($s0)           ## 00000060
/* 001F0 80ACDFC0 3C0180AD */  lui     $at, %hi(D_80ACF290)       ## $at = 80AD0000
/* 001F4 80ACDFC4 C430F290 */  lwc1    $f16, %lo(D_80ACF290)($at) 
/* 001F8 80ACDFC8 3C013F00 */  lui     $at, 0x3F00                ## $at = 3F000000
/* 001FC 80ACDFCC 44814000 */  mtc1    $at, $f8                   ## $f8 = 0.50
/* 00200 80ACDFD0 3C0180AD */  lui     $at, %hi(D_80ACF294)       ## $at = 80AD0000
/* 00204 80ACDFD4 46080282 */  mul.s   $f10, $f0, $f8             
/* 00208 80ACDFD8 460A8481 */  sub.s   $f18, $f16, $f10           
/* 0020C 80ACDFDC E612006C */  swc1    $f18, 0x006C($s0)          ## 0000006C
/* 00210 80ACDFE0 C424F294 */  lwc1    $f4, %lo(D_80ACF294)($at)  
/* 00214 80ACDFE4 10000050 */  beq     $zero, $zero, .L80ACE128   
/* 00218 80ACDFE8 E6040158 */  swc1    $f4, 0x0158($s0)           ## 00000158
glabel L80ACDFEC
/* 0021C 80ACDFEC 240D8001 */  addiu   $t5, $zero, 0x8001         ## $t5 = FFFF8001
/* 00220 80ACDFF0 240EFFFF */  addiu   $t6, $zero, 0xFFFF         ## $t6 = FFFFFFFF
/* 00224 80ACDFF4 AFAE0018 */  sw      $t6, 0x0018($sp)           
/* 00228 80ACDFF8 AFAD0010 */  sw      $t5, 0x0010($sp)           
/* 0022C 80ACDFFC 02002825 */  or      $a1, $s0, $zero            ## $a1 = 00000000
/* 00230 80ACE000 26060024 */  addiu   $a2, $s0, 0x0024           ## $a2 = 00000024
/* 00234 80ACE004 24070028 */  addiu   $a3, $zero, 0x0028         ## $a3 = 00000028
/* 00238 80ACE008 0C00A935 */  jal     func_8002A4D4              
/* 0023C 80ACE00C AFA00014 */  sw      $zero, 0x0014($sp)         
glabel L80ACE010
/* 00240 80ACE010 0C03F66B */  jal     Math_Rand_ZeroOne
              ## Rand.Next() float
/* 00244 80ACE014 00000000 */  nop
/* 00248 80ACE018 3C013F00 */  lui     $at, 0x3F00                ## $at = 3F000000
/* 0024C 80ACE01C 44813000 */  mtc1    $at, $f6                   ## $f6 = 0.50
/* 00250 80ACE020 3C014040 */  lui     $at, 0x4040                ## $at = 40400000
/* 00254 80ACE024 44818000 */  mtc1    $at, $f16                  ## $f16 = 3.00
/* 00258 80ACE028 46060201 */  sub.s   $f8, $f0, $f6              
/* 0025C 80ACE02C 46104282 */  mul.s   $f10, $f8, $f16            
/* 00260 80ACE030 0C03F66B */  jal     Math_Rand_ZeroOne
              ## Rand.Next() float
/* 00264 80ACE034 E60A0068 */  swc1    $f10, 0x0068($s0)          ## 00000068
/* 00268 80ACE038 3C014188 */  lui     $at, 0x4188                ## $at = 41880000
/* 0026C 80ACE03C 44819000 */  mtc1    $at, $f18                  ## $f18 = 17.00
/* 00270 80ACE040 00000000 */  nop
/* 00274 80ACE044 46120102 */  mul.s   $f4, $f0, $f18             
/* 00278 80ACE048 4600218D */  trunc.w.s $f6, $f4                   
/* 0027C 80ACE04C 44093000 */  mfc1    $t1, $f6                   
/* 00280 80ACE050 00000000 */  nop
/* 00284 80ACE054 2538000A */  addiu   $t8, $t1, 0x000A           ## $t8 = 0000000A
/* 00288 80ACE058 0C03F66B */  jal     Math_Rand_ZeroOne
              ## Rand.Next() float
/* 0028C 80ACE05C A618014E */  sh      $t8, 0x014E($s0)           ## 0000014E
/* 00290 80ACE060 3C014040 */  lui     $at, 0x4040                ## $at = 40400000
/* 00294 80ACE064 44814000 */  mtc1    $at, $f8                   ## $f8 = 3.00
/* 00298 80ACE068 3C014100 */  lui     $at, 0x4100                ## $at = 41000000
/* 0029C 80ACE06C 44815000 */  mtc1    $at, $f10                  ## $f10 = 8.00
/* 002A0 80ACE070 46080402 */  mul.s   $f16, $f0, $f8             
/* 002A4 80ACE074 460A8480 */  add.s   $f18, $f16, $f10           
/* 002A8 80ACE078 0C03F66B */  jal     Math_Rand_ZeroOne
              ## Rand.Next() float
/* 002AC 80ACE07C E6120060 */  swc1    $f18, 0x0060($s0)          ## 00000060
/* 002B0 80ACE080 3C0180AD */  lui     $at, %hi(D_80ACF298)       ## $at = 80AD0000
/* 002B4 80ACE084 C424F298 */  lwc1    $f4, %lo(D_80ACF298)($at)  
/* 002B8 80ACE088 3C0180AD */  lui     $at, %hi(D_80ACF29C)       ## $at = 80AD0000
/* 002BC 80ACE08C C426F29C */  lwc1    $f6, %lo(D_80ACF29C)($at)  
/* 002C0 80ACE090 3C0180AD */  lui     $at, %hi(D_80ACF2A0)       ## $at = 80AD0000
/* 002C4 80ACE094 46060202 */  mul.s   $f8, $f0, $f6              
/* 002C8 80ACE098 46082401 */  sub.s   $f16, $f4, $f8             
/* 002CC 80ACE09C E610006C */  swc1    $f16, 0x006C($s0)          ## 0000006C
/* 002D0 80ACE0A0 C42AF2A0 */  lwc1    $f10, %lo(D_80ACF2A0)($at) 
/* 002D4 80ACE0A4 10000020 */  beq     $zero, $zero, .L80ACE128   
/* 002D8 80ACE0A8 E60A0158 */  swc1    $f10, 0x0158($s0)          ## 00000158
glabel L80ACE0AC
/* 002DC 80ACE0AC 8E0A0118 */  lw      $t2, 0x0118($s0)           ## 00000118
/* 002E0 80ACE0B0 8E0D0150 */  lw      $t5, 0x0150($s0)           ## 00000150
/* 002E4 80ACE0B4 3C0C0601 */  lui     $t4, 0x0601                ## $t4 = 06010000
/* 002E8 80ACE0B8 854B00B6 */  lh      $t3, 0x00B6($t2)           ## 000000B6
/* 002EC 80ACE0BC 258C5380 */  addiu   $t4, $t4, 0x5380           ## $t4 = 06015380
/* 002F0 80ACE0C0 158D0004 */  bne     $t4, $t5, .L80ACE0D4       
/* 002F4 80ACE0C4 A60B0032 */  sh      $t3, 0x0032($s0)           ## 00000032
/* 002F8 80ACE0C8 3C01BF80 */  lui     $at, 0xBF80                ## $at = BF800000
/* 002FC 80ACE0CC 44811000 */  mtc1    $at, $f2                   ## $f2 = -1.00
/* 00300 80ACE0D0 00000000 */  nop
.L80ACE0D4:
/* 00304 80ACE0D4 3C0140C0 */  lui     $at, 0x40C0                ## $at = 40C00000
/* 00308 80ACE0D8 44819000 */  mtc1    $at, $f18                  ## $f18 = 6.00
/* 0030C 80ACE0DC 44800000 */  mtc1    $zero, $f0                 ## $f0 = 0.00
/* 00310 80ACE0E0 3C0180AD */  lui     $at, %hi(D_80ACF2A4)       ## $at = 80AD0000
/* 00314 80ACE0E4 46029182 */  mul.s   $f6, $f18, $f2             
/* 00318 80ACE0E8 E6000060 */  swc1    $f0, 0x0060($s0)           ## 00000060
/* 0031C 80ACE0EC 3C068003 */  lui     $a2, 0x8003                ## $a2 = 80030000
/* 00320 80ACE0F0 44050000 */  mfc1    $a1, $f0                   
/* 00324 80ACE0F4 24C6B5EC */  addiu   $a2, $a2, 0xB5EC           ## $a2 = 8002B5EC
/* 00328 80ACE0F8 260400B4 */  addiu   $a0, $s0, 0x00B4           ## $a0 = 000000B4
/* 0032C 80ACE0FC 3C0741F0 */  lui     $a3, 0x41F0                ## $a3 = 41F00000
/* 00330 80ACE100 E6060068 */  swc1    $f6, 0x0068($s0)           ## 00000068
/* 00334 80ACE104 C424F2A4 */  lwc1    $f4, %lo(D_80ACF2A4)($at)  
/* 00338 80ACE108 3C0180AD */  lui     $at, %hi(D_80ACF2A8)       ## $at = 80AD0000
/* 0033C 80ACE10C E604006C */  swc1    $f4, 0x006C($s0)           ## 0000006C
/* 00340 80ACE110 C428F2A8 */  lwc1    $f8, %lo(D_80ACF2A8)($at)  
/* 00344 80ACE114 46024402 */  mul.s   $f16, $f8, $f2             
/* 00348 80ACE118 0C00AC78 */  jal     ActorShape_Init
              
/* 0034C 80ACE11C E6100158 */  swc1    $f16, 0x0158($s0)          ## 00000158
/* 00350 80ACE120 240E0012 */  addiu   $t6, $zero, 0x0012         ## $t6 = 00000012
/* 00354 80ACE124 A60E014E */  sh      $t6, 0x014E($s0)           ## 0000014E
.L80ACE128:
/* 00358 80ACE128 8FBF002C */  lw      $ra, 0x002C($sp)           
/* 0035C 80ACE12C 8FB00028 */  lw      $s0, 0x0028($sp)           
/* 00360 80ACE130 27BD0038 */  addiu   $sp, $sp, 0x0038           ## $sp = 00000000
/* 00364 80ACE134 03E00008 */  jr      $ra                        
/* 00368 80ACE138 00000000 */  nop
