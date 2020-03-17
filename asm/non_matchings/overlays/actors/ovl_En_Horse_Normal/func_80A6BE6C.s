glabel func_80A6BE6C
/* 00C1C 80A6BE6C 27BDFFB0 */  addiu   $sp, $sp, 0xFFB0           ## $sp = FFFFFFB0
/* 00C20 80A6BE70 AFBF002C */  sw      $ra, 0x002C($sp)           
/* 00C24 80A6BE74 AFB00028 */  sw      $s0, 0x0028($sp)           
/* 00C28 80A6BE78 AFA50054 */  sw      $a1, 0x0054($sp)           
/* 00C2C 80A6BE7C 8C830150 */  lw      $v1, 0x0150($a0)           ## 00000150
/* 00C30 80A6BE80 3C0280A7 */  lui     $v0, %hi(D_80A6D510)       ## $v0 = 80A70000
/* 00C34 80A6BE84 00808025 */  or      $s0, $a0, $zero            ## $s0 = 00000000
/* 00C38 80A6BE88 00037080 */  sll     $t6, $v1,  2               
/* 00C3C 80A6BE8C 004E1021 */  addu    $v0, $v0, $t6              
/* 00C40 80A6BE90 8C42D510 */  lw      $v0, %lo(D_80A6D510)($v0)  
/* 00C44 80A6BE94 24010001 */  addiu   $at, $zero, 0x0001         ## $at = 00000001
/* 00C48 80A6BE98 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 00C4C 80A6BE9C 10400009 */  beq     $v0, $zero, .L80A6BEC4     
/* 00C50 80A6BEA0 00604025 */  or      $t0, $v1, $zero            ## $t0 = 00000000
/* 00C54 80A6BEA4 10410010 */  beq     $v0, $at, .L80A6BEE8       
/* 00C58 80A6BEA8 24010002 */  addiu   $at, $zero, 0x0002         ## $at = 00000002
/* 00C5C 80A6BEAC 104100AC */  beq     $v0, $at, .L80A6C160       
/* 00C60 80A6BEB0 24010003 */  addiu   $at, $zero, 0x0003         ## $at = 00000003
/* 00C64 80A6BEB4 104100AA */  beq     $v0, $at, .L80A6C160       
/* 00C68 80A6BEB8 00000000 */  nop
/* 00C6C 80A6BEBC 100000A8 */  beq     $zero, $zero, .L80A6C160   
/* 00C70 80A6BEC0 00000000 */  nop
.L80A6BEC4:
/* 00C74 80A6BEC4 0C29AF5F */  jal     func_80A6BD7C              
/* 00C78 80A6BEC8 AFA8004C */  sw      $t0, 0x004C($sp)           
/* 00C7C 80A6BECC 44802000 */  mtc1    $zero, $f4                 ## $f4 = 0.00
/* 00C80 80A6BED0 44803000 */  mtc1    $zero, $f6                 ## $f6 = 0.00
/* 00C84 80A6BED4 8FA8004C */  lw      $t0, 0x004C($sp)           
/* 00C88 80A6BED8 8E030150 */  lw      $v1, 0x0150($s0)           ## 00000150
/* 00C8C 80A6BEDC E6040068 */  swc1    $f4, 0x0068($s0)           ## 00000068
/* 00C90 80A6BEE0 1000009F */  beq     $zero, $zero, .L80A6C160   
/* 00C94 80A6BEE4 E6060218 */  swc1    $f6, 0x0218($s0)           ## 00000218
.L80A6BEE8:
/* 00C98 80A6BEE8 0C03F66B */  jal     Math_Rand_ZeroOne
              ## Rand.Next() float
/* 00C9C 80A6BEEC 00000000 */  nop
/* 00CA0 80A6BEF0 3C0180A7 */  lui     $at, %hi(D_80A6D5CC)       ## $at = 80A70000
/* 00CA4 80A6BEF4 C428D5CC */  lwc1    $f8, %lo(D_80A6D5CC)($at)  
/* 00CA8 80A6BEF8 4608003C */  c.lt.s  $f0, $f8                   
/* 00CAC 80A6BEFC 00000000 */  nop
/* 00CB0 80A6BF00 4502000A */  bc1fl   .L80A6BF2C                 
/* 00CB4 80A6BF04 C6040068 */  lwc1    $f4, 0x0068($s0)           ## 00000068
/* 00CB8 80A6BF08 0C03F66B */  jal     Math_Rand_ZeroOne
              ## Rand.Next() float
/* 00CBC 80A6BF0C 00000000 */  nop
/* 00CC0 80A6BF10 46000280 */  add.s   $f10, $f0, $f0             
/* 00CC4 80A6BF14 3C013F80 */  lui     $at, 0x3F80                ## $at = 3F800000
/* 00CC8 80A6BF18 44818000 */  mtc1    $at, $f16                  ## $f16 = 1.00
/* 00CCC 80A6BF1C 00000000 */  nop
/* 00CD0 80A6BF20 46105481 */  sub.s   $f18, $f10, $f16           
/* 00CD4 80A6BF24 E6120218 */  swc1    $f18, 0x0218($s0)          ## 00000218
/* 00CD8 80A6BF28 C6040068 */  lwc1    $f4, 0x0068($s0)           ## 00000068
.L80A6BF2C:
/* 00CDC 80A6BF2C C6060218 */  lwc1    $f6, 0x0218($s0)           ## 00000218
/* 00CE0 80A6BF30 44805000 */  mtc1    $zero, $f10                ## $f10 = 0.00
/* 00CE4 80A6BF34 3C014040 */  lui     $at, 0x4040                ## $at = 40400000
/* 00CE8 80A6BF38 46062200 */  add.s   $f8, $f4, $f6              
/* 00CEC 80A6BF3C E6080068 */  swc1    $f8, 0x0068($s0)           ## 00000068
/* 00CF0 80A6BF40 C6000068 */  lwc1    $f0, 0x0068($s0)           ## 00000068
/* 00CF4 80A6BF44 460A003E */  c.le.s  $f0, $f10                  
/* 00CF8 80A6BF48 00000000 */  nop
/* 00CFC 80A6BF4C 45020008 */  bc1fl   .L80A6BF70                 
/* 00D00 80A6BF50 44812000 */  mtc1    $at, $f4                   ## $f4 = 3.00
/* 00D04 80A6BF54 44808000 */  mtc1    $zero, $f16                ## $f16 = 0.00
/* 00D08 80A6BF58 44809000 */  mtc1    $zero, $f18                ## $f18 = 0.00
/* 00D0C 80A6BF5C 00004025 */  or      $t0, $zero, $zero          ## $t0 = 00000000
/* 00D10 80A6BF60 E6100068 */  swc1    $f16, 0x0068($s0)          ## 00000068
/* 00D14 80A6BF64 1000001C */  beq     $zero, $zero, .L80A6BFD8   
/* 00D18 80A6BF68 E6120218 */  swc1    $f18, 0x0218($s0)          ## 00000218
/* 00D1C 80A6BF6C 44812000 */  mtc1    $at, $f4                   ## $f4 = 3.00
.L80A6BF70:
/* 00D20 80A6BF70 3C0140C0 */  lui     $at, 0x40C0                ## $at = 40C00000
/* 00D24 80A6BF74 4604003C */  c.lt.s  $f0, $f4                   
/* 00D28 80A6BF78 00000000 */  nop
/* 00D2C 80A6BF7C 45020006 */  bc1fl   .L80A6BF98                 
/* 00D30 80A6BF80 44813000 */  mtc1    $at, $f6                   ## $f6 = 6.00
/* 00D34 80A6BF84 0C29AC94 */  jal     func_80A6B250              
/* 00D38 80A6BF88 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 00D3C 80A6BF8C 10000012 */  beq     $zero, $zero, .L80A6BFD8   
/* 00D40 80A6BF90 24080004 */  addiu   $t0, $zero, 0x0004         ## $t0 = 00000004
/* 00D44 80A6BF94 44813000 */  mtc1    $at, $f6                   ## $f6 = 0.00
.L80A6BF98:
/* 00D48 80A6BF98 3C014100 */  lui     $at, 0x4100                ## $at = 41000000
/* 00D4C 80A6BF9C 4606003C */  c.lt.s  $f0, $f6                   
/* 00D50 80A6BFA0 00000000 */  nop
/* 00D54 80A6BFA4 45020004 */  bc1fl   .L80A6BFB8                 
/* 00D58 80A6BFA8 44811000 */  mtc1    $at, $f2                   ## $f2 = 8.00
/* 00D5C 80A6BFAC 1000000A */  beq     $zero, $zero, .L80A6BFD8   
/* 00D60 80A6BFB0 24080005 */  addiu   $t0, $zero, 0x0005         ## $t0 = 00000005
/* 00D64 80A6BFB4 44811000 */  mtc1    $at, $f2                   ## $f2 = 8.00
.L80A6BFB8:
/* 00D68 80A6BFB8 24080006 */  addiu   $t0, $zero, 0x0006         ## $t0 = 00000006
/* 00D6C 80A6BFBC 4602003C */  c.lt.s  $f0, $f2                   
/* 00D70 80A6BFC0 00000000 */  nop
/* 00D74 80A6BFC4 45020004 */  bc1fl   .L80A6BFD8                 
/* 00D78 80A6BFC8 E6020068 */  swc1    $f2, 0x0068($s0)           ## 00000068
/* 00D7C 80A6BFCC 10000002 */  beq     $zero, $zero, .L80A6BFD8   
/* 00D80 80A6BFD0 24080006 */  addiu   $t0, $zero, 0x0006         ## $t0 = 00000006
/* 00D84 80A6BFD4 E6020068 */  swc1    $f2, 0x0068($s0)           ## 00000068
.L80A6BFD8:
/* 00D88 80A6BFD8 0C03F66B */  jal     Math_Rand_ZeroOne
              ## Rand.Next() float
/* 00D8C 80A6BFDC AFA8004C */  sw      $t0, 0x004C($sp)           
/* 00D90 80A6BFE0 3C0180A7 */  lui     $at, %hi(D_80A6D5D0)       ## $at = 80A70000
/* 00D94 80A6BFE4 C428D5D0 */  lwc1    $f8, %lo(D_80A6D5D0)($at)  
/* 00D98 80A6BFE8 8FA8004C */  lw      $t0, 0x004C($sp)           
/* 00D9C 80A6BFEC 4608003C */  c.lt.s  $f0, $f8                   
/* 00DA0 80A6BFF0 00000000 */  nop
/* 00DA4 80A6BFF4 45010010 */  bc1t    .L80A6C038                 
/* 00DA8 80A6BFF8 00000000 */  nop
/* 00DAC 80A6BFFC 8602021E */  lh      $v0, 0x021E($s0)           ## 0000021E
/* 00DB0 80A6C000 5440002C */  bnel    $v0, $zero, .L80A6C0B4     
/* 00DB4 80A6C004 8619021C */  lh      $t9, 0x021C($s0)           ## 0000021C
/* 00DB8 80A6C008 960F0088 */  lhu     $t7, 0x0088($s0)           ## 00000088
/* 00DBC 80A6C00C 31F80008 */  andi    $t8, $t7, 0x0008           ## $t8 = 00000000
/* 00DC0 80A6C010 17000009 */  bne     $t8, $zero, .L80A6C038     
/* 00DC4 80A6C014 00000000 */  nop
/* 00DC8 80A6C018 9219023A */  lbu     $t9, 0x023A($s0)           ## 0000023A
/* 00DCC 80A6C01C 33290002 */  andi    $t1, $t9, 0x0002           ## $t1 = 00000000
/* 00DD0 80A6C020 15200005 */  bne     $t1, $zero, .L80A6C038     
/* 00DD4 80A6C024 00000000 */  nop
/* 00DD8 80A6C028 920A0286 */  lbu     $t2, 0x0286($s0)           ## 00000286
/* 00DDC 80A6C02C 314B0002 */  andi    $t3, $t2, 0x0002           ## $t3 = 00000000
/* 00DE0 80A6C030 51600020 */  beql    $t3, $zero, .L80A6C0B4     
/* 00DE4 80A6C034 8619021C */  lh      $t9, 0x021C($s0)           ## 0000021C
.L80A6C038:
/* 00DE8 80A6C038 0C03F66B */  jal     Math_Rand_ZeroOne
              ## Rand.Next() float
/* 00DEC 80A6C03C AFA8004C */  sw      $t0, 0x004C($sp)           
/* 00DF0 80A6C040 3C0141F0 */  lui     $at, 0x41F0                ## $at = 41F00000
/* 00DF4 80A6C044 44815000 */  mtc1    $at, $f10                  ## $f10 = 30.00
/* 00DF8 80A6C048 860C021E */  lh      $t4, 0x021E($s0)           ## 0000021E
/* 00DFC 80A6C04C 3C014170 */  lui     $at, 0x4170                ## $at = 41700000
/* 00E00 80A6C050 460A0402 */  mul.s   $f16, $f0, $f10            
/* 00E04 80A6C054 448C3000 */  mtc1    $t4, $f6                   ## $f6 = 0.00
/* 00E08 80A6C058 44819000 */  mtc1    $at, $f18                  ## $f18 = 15.00
/* 00E0C 80A6C05C 8FA8004C */  lw      $t0, 0x004C($sp)           
/* 00E10 80A6C060 240F0032 */  addiu   $t7, $zero, 0x0032         ## $t7 = 00000032
/* 00E14 80A6C064 46803220 */  cvt.s.w $f8, $f6                   
/* 00E18 80A6C068 46128101 */  sub.s   $f4, $f16, $f18            
/* 00E1C 80A6C06C 46044280 */  add.s   $f10, $f8, $f4             
/* 00E20 80A6C070 4600540D */  trunc.w.s $f16, $f10                 
/* 00E24 80A6C074 440E8000 */  mfc1    $t6, $f16                  
/* 00E28 80A6C078 00000000 */  nop
/* 00E2C 80A6C07C A60E021E */  sh      $t6, 0x021E($s0)           ## 0000021E
/* 00E30 80A6C080 8602021E */  lh      $v0, 0x021E($s0)           ## 0000021E
/* 00E34 80A6C084 28410033 */  slti    $at, $v0, 0x0033           
/* 00E38 80A6C088 54200005 */  bnel    $at, $zero, .L80A6C0A0     
/* 00E3C 80A6C08C 2841FFCE */  slti    $at, $v0, 0xFFCE           
/* 00E40 80A6C090 A60F021E */  sh      $t7, 0x021E($s0)           ## 0000021E
/* 00E44 80A6C094 10000006 */  beq     $zero, $zero, .L80A6C0B0   
/* 00E48 80A6C098 8602021E */  lh      $v0, 0x021E($s0)           ## 0000021E
/* 00E4C 80A6C09C 2841FFCE */  slti    $at, $v0, 0xFFCE           
.L80A6C0A0:
/* 00E50 80A6C0A0 10200003 */  beq     $at, $zero, .L80A6C0B0     
/* 00E54 80A6C0A4 2418FFCE */  addiu   $t8, $zero, 0xFFCE         ## $t8 = FFFFFFCE
/* 00E58 80A6C0A8 A618021E */  sh      $t8, 0x021E($s0)           ## 0000021E
/* 00E5C 80A6C0AC 8602021E */  lh      $v0, 0x021E($s0)           ## 0000021E
.L80A6C0B0:
/* 00E60 80A6C0B0 8619021C */  lh      $t9, 0x021C($s0)           ## 0000021C
.L80A6C0B4:
/* 00E64 80A6C0B4 240AFED4 */  addiu   $t2, $zero, 0xFED4         ## $t2 = FFFFFED4
/* 00E68 80A6C0B8 03224821 */  addu    $t1, $t9, $v0              
/* 00E6C 80A6C0BC A609021C */  sh      $t1, 0x021C($s0)           ## 0000021C
/* 00E70 80A6C0C0 8603021C */  lh      $v1, 0x021C($s0)           ## 0000021C
/* 00E74 80A6C0C4 2861FED4 */  slti    $at, $v1, 0xFED4           
/* 00E78 80A6C0C8 50200004 */  beql    $at, $zero, .L80A6C0DC     
/* 00E7C 80A6C0CC 2861012D */  slti    $at, $v1, 0x012D           
/* 00E80 80A6C0D0 1000001C */  beq     $zero, $zero, .L80A6C144   
/* 00E84 80A6C0D4 A60A021C */  sh      $t2, 0x021C($s0)           ## 0000021C
/* 00E88 80A6C0D8 2861012D */  slti    $at, $v1, 0x012D           
.L80A6C0DC:
/* 00E8C 80A6C0DC 14200003 */  bne     $at, $zero, .L80A6C0EC     
/* 00E90 80A6C0E0 240B012C */  addiu   $t3, $zero, 0x012C         ## $t3 = 0000012C
/* 00E94 80A6C0E4 10000017 */  beq     $zero, $zero, .L80A6C144   
/* 00E98 80A6C0E8 A60B021C */  sh      $t3, 0x021C($s0)           ## 0000021C
.L80A6C0EC:
/* 00E9C 80A6C0EC 0C03F66B */  jal     Math_Rand_ZeroOne
              ## Rand.Next() float
/* 00EA0 80A6C0F0 AFA8004C */  sw      $t0, 0x004C($sp)           
/* 00EA4 80A6C0F4 3C013E80 */  lui     $at, 0x3E80                ## $at = 3E800000
/* 00EA8 80A6C0F8 44819000 */  mtc1    $at, $f18                  ## $f18 = 0.25
/* 00EAC 80A6C0FC 8FA8004C */  lw      $t0, 0x004C($sp)           
/* 00EB0 80A6C100 4612003C */  c.lt.s  $f0, $f18                  
/* 00EB4 80A6C104 00000000 */  nop
/* 00EB8 80A6C108 4502000F */  bc1fl   .L80A6C148                 
/* 00EBC 80A6C10C 860D0032 */  lh      $t5, 0x0032($s0)           ## 00000032
/* 00EC0 80A6C110 860C021C */  lh      $t4, 0x021C($s0)           ## 0000021C
/* 00EC4 80A6C114 3C0142C8 */  lui     $at, 0x42C8                ## $at = 42C80000
/* 00EC8 80A6C118 44814000 */  mtc1    $at, $f8                   ## $f8 = 100.00
/* 00ECC 80A6C11C 448C3000 */  mtc1    $t4, $f6                   ## $f6 = 0.00
/* 00ED0 80A6C120 00000000 */  nop
/* 00ED4 80A6C124 46803020 */  cvt.s.w $f0, $f6                   
/* 00ED8 80A6C128 46000005 */  abs.s   $f0, $f0                   
/* 00EDC 80A6C12C 4608003C */  c.lt.s  $f0, $f8                   
/* 00EE0 80A6C130 00000000 */  nop
/* 00EE4 80A6C134 45020004 */  bc1fl   .L80A6C148                 
/* 00EE8 80A6C138 860D0032 */  lh      $t5, 0x0032($s0)           ## 00000032
/* 00EEC 80A6C13C A600021C */  sh      $zero, 0x021C($s0)         ## 0000021C
/* 00EF0 80A6C140 A600021E */  sh      $zero, 0x021E($s0)         ## 0000021E
.L80A6C144:
/* 00EF4 80A6C144 860D0032 */  lh      $t5, 0x0032($s0)           ## 00000032
.L80A6C148:
/* 00EF8 80A6C148 860E021C */  lh      $t6, 0x021C($s0)           ## 0000021C
/* 00EFC 80A6C14C 8E030150 */  lw      $v1, 0x0150($s0)           ## 00000150
/* 00F00 80A6C150 01AE7821 */  addu    $t7, $t5, $t6              
/* 00F04 80A6C154 A60F0032 */  sh      $t7, 0x0032($s0)           ## 00000032
/* 00F08 80A6C158 86180032 */  lh      $t8, 0x0032($s0)           ## 00000032
/* 00F0C 80A6C15C A61800B6 */  sh      $t8, 0x00B6($s0)           ## 000000B6
.L80A6C160:
/* 00F10 80A6C160 15030006 */  bne     $t0, $v1, .L80A6C17C       
/* 00F14 80A6C164 260401A0 */  addiu   $a0, $s0, 0x01A0           ## $a0 = 000001A0
/* 00F18 80A6C168 0C02927F */  jal     SkelAnime_FrameUpdateMatrix
              
/* 00F1C 80A6C16C AFA8004C */  sw      $t0, 0x004C($sp)           
/* 00F20 80A6C170 104000D1 */  beq     $v0, $zero, .L80A6C4B8     
/* 00F24 80A6C174 8FA8004C */  lw      $t0, 0x004C($sp)           
/* 00F28 80A6C178 8E030150 */  lw      $v1, 0x0150($s0)           ## 00000150
.L80A6C17C:
/* 00F2C 80A6C17C 261901A0 */  addiu   $t9, $s0, 0x01A0           ## $t9 = 000001A0
/* 00F30 80A6C180 11030041 */  beq     $t0, $v1, .L80A6C288       
/* 00F34 80A6C184 AFB90034 */  sw      $t9, 0x0034($sp)           
/* 00F38 80A6C188 960901E4 */  lhu     $t1, 0x01E4($s0)           ## 000001E4
/* 00F3C 80A6C18C 24010001 */  addiu   $at, $zero, 0x0001         ## $at = 00000001
/* 00F40 80A6C190 AE080150 */  sw      $t0, 0x0150($s0)           ## 00000150
/* 00F44 80A6C194 312BFFFE */  andi    $t3, $t1, 0xFFFE           ## $t3 = 00000000
/* 00F48 80A6C198 A60B01E4 */  sh      $t3, 0x01E4($s0)           ## 000001E4
/* 00F4C 80A6C19C 316CFFFD */  andi    $t4, $t3, 0xFFFD           ## $t4 = 00000000
/* 00F50 80A6C1A0 1501000D */  bne     $t0, $at, .L80A6C1D8       
/* 00F54 80A6C1A4 A60C01E4 */  sh      $t4, 0x01E4($s0)           ## 000001E4
/* 00F58 80A6C1A8 3C078013 */  lui     $a3, 0x8013                ## $a3 = 80130000
/* 00F5C 80A6C1AC 3C0D8013 */  lui     $t5, 0x8013                ## $t5 = 80130000
/* 00F60 80A6C1B0 24E733E0 */  addiu   $a3, $a3, 0x33E0           ## $a3 = 801333E0
/* 00F64 80A6C1B4 25AD33E8 */  addiu   $t5, $t5, 0x33E8           ## $t5 = 801333E8
/* 00F68 80A6C1B8 AFAD0014 */  sw      $t5, 0x0014($sp)           
/* 00F6C 80A6C1BC AFA70010 */  sw      $a3, 0x0010($sp)           
/* 00F70 80A6C1C0 24042816 */  addiu   $a0, $zero, 0x2816         ## $a0 = 00002816
/* 00F74 80A6C1C4 26050204 */  addiu   $a1, $s0, 0x0204           ## $a1 = 00000204
/* 00F78 80A6C1C8 0C03DCE3 */  jal     Audio_PlaySoundGeneral
              
/* 00F7C 80A6C1CC 24060004 */  addiu   $a2, $zero, 0x0004         ## $a2 = 00000004
/* 00F80 80A6C1D0 10000011 */  beq     $zero, $zero, .L80A6C218   
/* 00F84 80A6C1D4 00000000 */  nop
.L80A6C1D8:
/* 00F88 80A6C1D8 24010003 */  addiu   $at, $zero, 0x0003         ## $at = 00000003
/* 00F8C 80A6C1DC 1501000C */  bne     $t0, $at, .L80A6C210       
/* 00F90 80A6C1E0 3C078013 */  lui     $a3, 0x8013                ## $a3 = 80130000
/* 00F94 80A6C1E4 3C0E8013 */  lui     $t6, 0x8013                ## $t6 = 80130000
/* 00F98 80A6C1E8 24E733E0 */  addiu   $a3, $a3, 0x33E0           ## $a3 = 801333E0
/* 00F9C 80A6C1EC 25CE33E8 */  addiu   $t6, $t6, 0x33E8           ## $t6 = 801333E8
/* 00FA0 80A6C1F0 AFAE0014 */  sw      $t6, 0x0014($sp)           
/* 00FA4 80A6C1F4 AFA70010 */  sw      $a3, 0x0010($sp)           
/* 00FA8 80A6C1F8 24042805 */  addiu   $a0, $zero, 0x2805         ## $a0 = 00002805
/* 00FAC 80A6C1FC 26050204 */  addiu   $a1, $s0, 0x0204           ## $a1 = 00000204
/* 00FB0 80A6C200 0C03DCE3 */  jal     Audio_PlaySoundGeneral
              
/* 00FB4 80A6C204 24060004 */  addiu   $a2, $zero, 0x0004         ## $a2 = 00000004
/* 00FB8 80A6C208 10000003 */  beq     $zero, $zero, .L80A6C218   
/* 00FBC 80A6C20C 00000000 */  nop
.L80A6C210:
/* 00FC0 80A6C210 0C29AF3B */  jal     func_80A6BCEC              
/* 00FC4 80A6C214 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
.L80A6C218:
/* 00FC8 80A6C218 0C29ACC3 */  jal     func_80A6B30C              
/* 00FCC 80A6C21C 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 00FD0 80A6C220 E7A00040 */  swc1    $f0, 0x0040($sp)           
/* 00FD4 80A6C224 8E0F0150 */  lw      $t7, 0x0150($s0)           ## 00000150
/* 00FD8 80A6C228 3C0480A7 */  lui     $a0, %hi(D_80A6D370)       ## $a0 = 80A70000
/* 00FDC 80A6C22C 000FC080 */  sll     $t8, $t7,  2               
/* 00FE0 80A6C230 00982021 */  addu    $a0, $a0, $t8              
/* 00FE4 80A6C234 0C028800 */  jal     SkelAnime_GetFrameCount
              
/* 00FE8 80A6C238 8C84D370 */  lw      $a0, %lo(D_80A6D370)($a0)  
/* 00FEC 80A6C23C 44822000 */  mtc1    $v0, $f4                   ## $f4 = 0.00
/* 00FF0 80A6C240 8E190150 */  lw      $t9, 0x0150($s0)           ## 00000150
/* 00FF4 80A6C244 3C01C040 */  lui     $at, 0xC040                ## $at = C0400000
/* 00FF8 80A6C248 468022A0 */  cvt.s.w $f10, $f4                  
/* 00FFC 80A6C24C 44818000 */  mtc1    $at, $f16                  ## $f16 = -3.00
/* 01000 80A6C250 3C0580A7 */  lui     $a1, %hi(D_80A6D370)       ## $a1 = 80A70000
/* 01004 80A6C254 00194880 */  sll     $t1, $t9,  2               
/* 01008 80A6C258 00A92821 */  addu    $a1, $a1, $t1              
/* 0100C 80A6C25C 240A0002 */  addiu   $t2, $zero, 0x0002         ## $t2 = 00000002
/* 01010 80A6C260 AFAA0014 */  sw      $t2, 0x0014($sp)           
/* 01014 80A6C264 8CA5D370 */  lw      $a1, %lo(D_80A6D370)($a1)  
/* 01018 80A6C268 E7AA0010 */  swc1    $f10, 0x0010($sp)          
/* 0101C 80A6C26C 8FA40034 */  lw      $a0, 0x0034($sp)           
/* 01020 80A6C270 8FA60040 */  lw      $a2, 0x0040($sp)           
/* 01024 80A6C274 24070000 */  addiu   $a3, $zero, 0x0000         ## $a3 = 00000000
/* 01028 80A6C278 0C029468 */  jal     SkelAnime_ChangeAnimation
              
/* 0102C 80A6C27C E7B00018 */  swc1    $f16, 0x0018($sp)          
/* 01030 80A6C280 1000008E */  beq     $zero, $zero, .L80A6C4BC   
/* 01034 80A6C284 8FBF002C */  lw      $ra, 0x002C($sp)           
.L80A6C288:
/* 01038 80A6C288 00035880 */  sll     $t3, $v1,  2               
/* 0103C 80A6C28C 3C0280A7 */  lui     $v0, %hi(D_80A6D510)       ## $v0 = 80A70000
/* 01040 80A6C290 004B1021 */  addu    $v0, $v0, $t3              
/* 01044 80A6C294 8C42D510 */  lw      $v0, %lo(D_80A6D510)($v0)  
/* 01048 80A6C298 24010001 */  addiu   $at, $zero, 0x0001         ## $at = 00000001
/* 0104C 80A6C29C 10400009 */  beq     $v0, $zero, .L80A6C2C4     
/* 01050 80A6C2A0 00000000 */  nop
/* 01054 80A6C2A4 10410024 */  beq     $v0, $at, .L80A6C338       
/* 01058 80A6C2A8 24010002 */  addiu   $at, $zero, 0x0002         ## $at = 00000002
/* 0105C 80A6C2AC 10410022 */  beq     $v0, $at, .L80A6C338       
/* 01060 80A6C2B0 24010003 */  addiu   $at, $zero, 0x0003         ## $at = 00000003
/* 01064 80A6C2B4 50410021 */  beql    $v0, $at, .L80A6C33C       
/* 01068 80A6C2B8 960F01E4 */  lhu     $t7, 0x01E4($s0)           ## 000001E4
/* 0106C 80A6C2BC 1000001F */  beq     $zero, $zero, .L80A6C33C   
/* 01070 80A6C2C0 960F01E4 */  lhu     $t7, 0x01E4($s0)           ## 000001E4
.L80A6C2C4:
/* 01074 80A6C2C4 0C03F66B */  jal     Math_Rand_ZeroOne
              ## Rand.Next() float
/* 01078 80A6C2C8 00000000 */  nop
/* 0107C 80A6C2CC 3C013E80 */  lui     $at, 0x3E80                ## $at = 3E800000
/* 01080 80A6C2D0 44819000 */  mtc1    $at, $f18                  ## $f18 = 0.25
/* 01084 80A6C2D4 3C013F80 */  lui     $at, 0x3F80                ## $at = 3F800000
/* 01088 80A6C2D8 4612003C */  c.lt.s  $f0, $f18                  
/* 0108C 80A6C2DC 00000000 */  nop
/* 01090 80A6C2E0 45000005 */  bc1f    .L80A6C2F8                 
/* 01094 80A6C2E4 00000000 */  nop
/* 01098 80A6C2E8 44813000 */  mtc1    $at, $f6                   ## $f6 = 1.00
/* 0109C 80A6C2EC 24080004 */  addiu   $t0, $zero, 0x0004         ## $t0 = 00000004
/* 010A0 80A6C2F0 10000011 */  beq     $zero, $zero, .L80A6C338   
/* 010A4 80A6C2F4 E6060218 */  swc1    $f6, 0x0218($s0)           ## 00000218
.L80A6C2F8:
/* 010A8 80A6C2F8 0C03F66B */  jal     Math_Rand_ZeroOne
              ## Rand.Next() float
/* 010AC 80A6C2FC 00000000 */  nop
/* 010B0 80A6C300 3C014000 */  lui     $at, 0x4000                ## $at = 40000000
/* 010B4 80A6C304 44814000 */  mtc1    $at, $f8                   ## $f8 = 2.00
/* 010B8 80A6C308 3C0880A7 */  lui     $t0, %hi(D_80A6D4F4)       ## $t0 = 80A70000
/* 010BC 80A6C30C 44808000 */  mtc1    $zero, $f16                ## $f16 = 0.00
/* 010C0 80A6C310 46080102 */  mul.s   $f4, $f0, $f8              
/* 010C4 80A6C314 44809000 */  mtc1    $zero, $f18                ## $f18 = 0.00
/* 010C8 80A6C318 4600228D */  trunc.w.s $f10, $f4                  
/* 010CC 80A6C31C 440D5000 */  mfc1    $t5, $f10                  
/* 010D0 80A6C320 00000000 */  nop
/* 010D4 80A6C324 000D7080 */  sll     $t6, $t5,  2               
/* 010D8 80A6C328 010E4021 */  addu    $t0, $t0, $t6              
/* 010DC 80A6C32C 8D08D4F4 */  lw      $t0, %lo(D_80A6D4F4)($t0)  
/* 010E0 80A6C330 E6100068 */  swc1    $f16, 0x0068($s0)          ## 00000068
/* 010E4 80A6C334 E6120218 */  swc1    $f18, 0x0218($s0)          ## 00000218
.L80A6C338:
/* 010E8 80A6C338 960F01E4 */  lhu     $t7, 0x01E4($s0)           ## 000001E4
.L80A6C33C:
/* 010EC 80A6C33C 24010001 */  addiu   $at, $zero, 0x0001         ## $at = 00000001
/* 010F0 80A6C340 3C078013 */  lui     $a3, 0x8013                ## $a3 = 80130000
/* 010F4 80A6C344 31F9FFFE */  andi    $t9, $t7, 0xFFFE           ## $t9 = 00000000
/* 010F8 80A6C348 A61901E4 */  sh      $t9, 0x01E4($s0)           ## 000001E4
/* 010FC 80A6C34C 3329FFFD */  andi    $t1, $t9, 0xFFFD           ## $t1 = 00000000
/* 01100 80A6C350 1501000D */  bne     $t0, $at, .L80A6C388       
/* 01104 80A6C354 A60901E4 */  sh      $t1, 0x01E4($s0)           ## 000001E4
/* 01108 80A6C358 3C0A8013 */  lui     $t2, 0x8013                ## $t2 = 80130000
/* 0110C 80A6C35C 24E733E0 */  addiu   $a3, $a3, 0x33E0           ## $a3 = 801333E0
/* 01110 80A6C360 254A33E8 */  addiu   $t2, $t2, 0x33E8           ## $t2 = 801333E8
/* 01114 80A6C364 AFAA0014 */  sw      $t2, 0x0014($sp)           
/* 01118 80A6C368 AFA70010 */  sw      $a3, 0x0010($sp)           
/* 0111C 80A6C36C 24042816 */  addiu   $a0, $zero, 0x2816         ## $a0 = 00002816
/* 01120 80A6C370 26050204 */  addiu   $a1, $s0, 0x0204           ## $a1 = 00000204
/* 01124 80A6C374 24060004 */  addiu   $a2, $zero, 0x0004         ## $a2 = 00000004
/* 01128 80A6C378 0C03DCE3 */  jal     Audio_PlaySoundGeneral
              
/* 0112C 80A6C37C AFA8004C */  sw      $t0, 0x004C($sp)           
/* 01130 80A6C380 10000014 */  beq     $zero, $zero, .L80A6C3D4   
/* 01134 80A6C384 8FA8004C */  lw      $t0, 0x004C($sp)           
.L80A6C388:
/* 01138 80A6C388 24010003 */  addiu   $at, $zero, 0x0003         ## $at = 00000003
/* 0113C 80A6C38C 1501000E */  bne     $t0, $at, .L80A6C3C8       
/* 01140 80A6C390 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 01144 80A6C394 3C078013 */  lui     $a3, 0x8013                ## $a3 = 80130000
/* 01148 80A6C398 3C0B8013 */  lui     $t3, 0x8013                ## $t3 = 80130000
/* 0114C 80A6C39C 24E733E0 */  addiu   $a3, $a3, 0x33E0           ## $a3 = 801333E0
/* 01150 80A6C3A0 256B33E8 */  addiu   $t3, $t3, 0x33E8           ## $t3 = 801333E8
/* 01154 80A6C3A4 AFAB0014 */  sw      $t3, 0x0014($sp)           
/* 01158 80A6C3A8 AFA70010 */  sw      $a3, 0x0010($sp)           
/* 0115C 80A6C3AC 24042805 */  addiu   $a0, $zero, 0x2805         ## $a0 = 00002805
/* 01160 80A6C3B0 26050204 */  addiu   $a1, $s0, 0x0204           ## $a1 = 00000204
/* 01164 80A6C3B4 24060004 */  addiu   $a2, $zero, 0x0004         ## $a2 = 00000004
/* 01168 80A6C3B8 0C03DCE3 */  jal     Audio_PlaySoundGeneral
              
/* 0116C 80A6C3BC AFA8004C */  sw      $t0, 0x004C($sp)           
/* 01170 80A6C3C0 10000004 */  beq     $zero, $zero, .L80A6C3D4   
/* 01174 80A6C3C4 8FA8004C */  lw      $t0, 0x004C($sp)           
.L80A6C3C8:
/* 01178 80A6C3C8 0C29AF3B */  jal     func_80A6BCEC              
/* 0117C 80A6C3CC AFA8004C */  sw      $t0, 0x004C($sp)           
/* 01180 80A6C3D0 8FA8004C */  lw      $t0, 0x004C($sp)           
.L80A6C3D4:
/* 01184 80A6C3D4 8E0C0150 */  lw      $t4, 0x0150($s0)           ## 00000150
/* 01188 80A6C3D8 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 0118C 80A6C3DC 110C001D */  beq     $t0, $t4, .L80A6C454       
/* 01190 80A6C3E0 00000000 */  nop
/* 01194 80A6C3E4 0C29ACC3 */  jal     func_80A6B30C              
/* 01198 80A6C3E8 AE080150 */  sw      $t0, 0x0150($s0)           ## 00000150
/* 0119C 80A6C3EC E7A00040 */  swc1    $f0, 0x0040($sp)           
/* 011A0 80A6C3F0 8E0D0150 */  lw      $t5, 0x0150($s0)           ## 00000150
/* 011A4 80A6C3F4 3C0480A7 */  lui     $a0, %hi(D_80A6D370)       ## $a0 = 80A70000
/* 011A8 80A6C3F8 000D7080 */  sll     $t6, $t5,  2               
/* 011AC 80A6C3FC 008E2021 */  addu    $a0, $a0, $t6              
/* 011B0 80A6C400 0C028800 */  jal     SkelAnime_GetFrameCount
              
/* 011B4 80A6C404 8C84D370 */  lw      $a0, %lo(D_80A6D370)($a0)  
/* 011B8 80A6C408 44823000 */  mtc1    $v0, $f6                   ## $f6 = 0.00
/* 011BC 80A6C40C 8E0F0150 */  lw      $t7, 0x0150($s0)           ## 00000150
/* 011C0 80A6C410 3C01C040 */  lui     $at, 0xC040                ## $at = C0400000
/* 011C4 80A6C414 46803220 */  cvt.s.w $f8, $f6                   
/* 011C8 80A6C418 44812000 */  mtc1    $at, $f4                   ## $f4 = -3.00
/* 011CC 80A6C41C 3C0580A7 */  lui     $a1, %hi(D_80A6D370)       ## $a1 = 80A70000
/* 011D0 80A6C420 000FC080 */  sll     $t8, $t7,  2               
/* 011D4 80A6C424 00B82821 */  addu    $a1, $a1, $t8              
/* 011D8 80A6C428 24190002 */  addiu   $t9, $zero, 0x0002         ## $t9 = 00000002
/* 011DC 80A6C42C AFB90014 */  sw      $t9, 0x0014($sp)           
/* 011E0 80A6C430 8CA5D370 */  lw      $a1, %lo(D_80A6D370)($a1)  
/* 011E4 80A6C434 E7A80010 */  swc1    $f8, 0x0010($sp)           
/* 011E8 80A6C438 8FA40034 */  lw      $a0, 0x0034($sp)           
/* 011EC 80A6C43C 8FA60040 */  lw      $a2, 0x0040($sp)           
/* 011F0 80A6C440 24070000 */  addiu   $a3, $zero, 0x0000         ## $a3 = 00000000
/* 011F4 80A6C444 0C029468 */  jal     SkelAnime_ChangeAnimation
              
/* 011F8 80A6C448 E7A40018 */  swc1    $f4, 0x0018($sp)           
/* 011FC 80A6C44C 1000001B */  beq     $zero, $zero, .L80A6C4BC   
/* 01200 80A6C450 8FBF002C */  lw      $ra, 0x002C($sp)           
.L80A6C454:
/* 01204 80A6C454 0C29ACC3 */  jal     func_80A6B30C              
/* 01208 80A6C458 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 0120C 80A6C45C E7A00040 */  swc1    $f0, 0x0040($sp)           
/* 01210 80A6C460 8E090150 */  lw      $t1, 0x0150($s0)           ## 00000150
/* 01214 80A6C464 3C0480A7 */  lui     $a0, %hi(D_80A6D370)       ## $a0 = 80A70000
/* 01218 80A6C468 00095080 */  sll     $t2, $t1,  2               
/* 0121C 80A6C46C 008A2021 */  addu    $a0, $a0, $t2              
/* 01220 80A6C470 0C028800 */  jal     SkelAnime_GetFrameCount
              
/* 01224 80A6C474 8C84D370 */  lw      $a0, %lo(D_80A6D370)($a0)  
/* 01228 80A6C478 44825000 */  mtc1    $v0, $f10                  ## $f10 = 0.00
/* 0122C 80A6C47C 8E0B0150 */  lw      $t3, 0x0150($s0)           ## 00000150
/* 01230 80A6C480 44800000 */  mtc1    $zero, $f0                 ## $f0 = 0.00
/* 01234 80A6C484 46805420 */  cvt.s.w $f16, $f10                 
/* 01238 80A6C488 3C0580A7 */  lui     $a1, %hi(D_80A6D370)       ## $a1 = 80A70000
/* 0123C 80A6C48C 000B6080 */  sll     $t4, $t3,  2               
/* 01240 80A6C490 00AC2821 */  addu    $a1, $a1, $t4              
/* 01244 80A6C494 240D0002 */  addiu   $t5, $zero, 0x0002         ## $t5 = 00000002
/* 01248 80A6C498 44070000 */  mfc1    $a3, $f0                   
/* 0124C 80A6C49C AFAD0014 */  sw      $t5, 0x0014($sp)           
/* 01250 80A6C4A0 8CA5D370 */  lw      $a1, %lo(D_80A6D370)($a1)  
/* 01254 80A6C4A4 E7B00010 */  swc1    $f16, 0x0010($sp)          
/* 01258 80A6C4A8 8FA40034 */  lw      $a0, 0x0034($sp)           
/* 0125C 80A6C4AC 8FA60040 */  lw      $a2, 0x0040($sp)           
/* 01260 80A6C4B0 0C029468 */  jal     SkelAnime_ChangeAnimation
              
/* 01264 80A6C4B4 E7A00018 */  swc1    $f0, 0x0018($sp)           
.L80A6C4B8:
/* 01268 80A6C4B8 8FBF002C */  lw      $ra, 0x002C($sp)           
.L80A6C4BC:
/* 0126C 80A6C4BC 8FB00028 */  lw      $s0, 0x0028($sp)           
/* 01270 80A6C4C0 27BD0050 */  addiu   $sp, $sp, 0x0050           ## $sp = 00000000
/* 01274 80A6C4C4 03E00008 */  jr      $ra                        
/* 01278 80A6C4C8 00000000 */  nop


