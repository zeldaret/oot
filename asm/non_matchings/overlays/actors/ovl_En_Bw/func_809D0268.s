.late_rodata
glabel D_809D168C
    .float 0.7
    .balign 4

.text
glabel func_809D0268
/* 01B88 809D0268 27BDFFD8 */  addiu   $sp, $sp, 0xFFD8           ## $sp = FFFFFFD8
/* 01B8C 809D026C AFBF0024 */  sw      $ra, 0x0024($sp)           
/* 01B90 809D0270 AFB00020 */  sw      $s0, 0x0020($sp)           
/* 01B94 809D0274 908E022C */  lbu     $t6, 0x022C($a0)           ## 0000022C
/* 01B98 809D0278 9098022D */  lbu     $t8, 0x022D($a0)           ## 0000022D
/* 01B9C 809D027C 9088022E */  lbu     $t0, 0x022E($a0)           ## 0000022E
/* 01BA0 809D0280 25CFFFFF */  addiu   $t7, $t6, 0xFFFF           ## $t7 = FFFFFFFF
/* 01BA4 809D0284 31EA00FF */  andi    $t2, $t7, 0x00FF           ## $t2 = 000000FF
/* 01BA8 809D0288 294100C8 */  slti    $at, $t2, 0x00C8           
/* 01BAC 809D028C 27190004 */  addiu   $t9, $t8, 0x0004           ## $t9 = 00000004
/* 01BB0 809D0290 25090005 */  addiu   $t1, $t0, 0x0005           ## $t1 = 00000005
/* 01BB4 809D0294 00808025 */  or      $s0, $a0, $zero            ## $s0 = 00000000
/* 01BB8 809D0298 A08F022C */  sb      $t7, 0x022C($a0)           ## 0000022C
/* 01BBC 809D029C A099022D */  sb      $t9, 0x022D($a0)           ## 0000022D
/* 01BC0 809D02A0 10200003 */  beq     $at, $zero, .L809D02B0     
/* 01BC4 809D02A4 A089022E */  sb      $t1, 0x022E($a0)           ## 0000022E
/* 01BC8 809D02A8 240B00C8 */  addiu   $t3, $zero, 0x00C8         ## $t3 = 000000C8
/* 01BCC 809D02AC A08B022C */  sb      $t3, 0x022C($a0)           ## 0000022C
.L809D02B0:
/* 01BD0 809D02B0 920C022D */  lbu     $t4, 0x022D($s0)           ## 0000022D
/* 01BD4 809D02B4 240D00C8 */  addiu   $t5, $zero, 0x00C8         ## $t5 = 000000C8
/* 01BD8 809D02B8 240F00E6 */  addiu   $t7, $zero, 0x00E6         ## $t7 = 000000E6
/* 01BDC 809D02BC 298100C9 */  slti    $at, $t4, 0x00C9           
/* 01BE0 809D02C0 14200002 */  bne     $at, $zero, .L809D02CC     
/* 01BE4 809D02C4 3C080001 */  lui     $t0, 0x0001                ## $t0 = 00010000
/* 01BE8 809D02C8 A20D022D */  sb      $t5, 0x022D($s0)           ## 0000022D
.L809D02CC:
/* 01BEC 809D02CC 920E022E */  lbu     $t6, 0x022E($s0)           ## 0000022E
/* 01BF0 809D02D0 01054021 */  addu    $t0, $t0, $a1              
/* 01BF4 809D02D4 29C100E7 */  slti    $at, $t6, 0x00E7           
/* 01BF8 809D02D8 54200003 */  bnel    $at, $zero, .L809D02E8     
/* 01BFC 809D02DC 96180112 */  lhu     $t8, 0x0112($s0)           ## 00000112
/* 01C00 809D02E0 A20F022E */  sb      $t7, 0x022E($s0)           ## 0000022E
/* 01C04 809D02E4 96180112 */  lhu     $t8, 0x0112($s0)           ## 00000112
.L809D02E8:
/* 01C08 809D02E8 33194000 */  andi    $t9, $t8, 0x4000           ## $t9 = 00000000
/* 01C0C 809D02EC 5320001C */  beql    $t9, $zero, .L809D0360     
/* 01C10 809D02F0 860A0222 */  lh      $t2, 0x0222($s0)           ## 00000222
/* 01C14 809D02F4 8D081DE4 */  lw      $t0, 0x1DE4($t0)           ## 00011DE4
/* 01C18 809D02F8 3109007F */  andi    $t1, $t0, 0x007F           ## $t1 = 00000000
/* 01C1C 809D02FC 5520000B */  bnel    $t1, $zero, .L809D032C     
/* 01C20 809D0300 C6100258 */  lwc1    $f16, 0x0258($s0)          ## 00000258
/* 01C24 809D0304 0C03F66B */  jal     Math_Rand_ZeroOne
              ## Rand.Next() float
/* 01C28 809D0308 00000000 */  nop
/* 01C2C 809D030C 3C013E80 */  lui     $at, 0x3E80                ## $at = 3E800000
/* 01C30 809D0310 44812000 */  mtc1    $at, $f4                   ## $f4 = 0.25
/* 01C34 809D0314 3C013F00 */  lui     $at, 0x3F00                ## $at = 3F000000
/* 01C38 809D0318 44814000 */  mtc1    $at, $f8                   ## $f8 = 0.50
/* 01C3C 809D031C 46040182 */  mul.s   $f6, $f0, $f4              
/* 01C40 809D0320 46083280 */  add.s   $f10, $f6, $f8             
/* 01C44 809D0324 E60A025C */  swc1    $f10, 0x025C($s0)          ## 0000025C
/* 01C48 809D0328 C6100258 */  lwc1    $f16, 0x0258($s0)          ## 00000258
.L809D032C:
/* 01C4C 809D032C C612025C */  lwc1    $f18, 0x025C($s0)          ## 0000025C
/* 01C50 809D0330 44803000 */  mtc1    $zero, $f6                 ## $f6 = 0.00
/* 01C54 809D0334 3C053D99 */  lui     $a1, 0x3D99                ## $a1 = 3D990000
/* 01C58 809D0338 46128100 */  add.s   $f4, $f16, $f18            
/* 01C5C 809D033C 3C073BA3 */  lui     $a3, 0x3BA3                ## $a3 = 3BA30000
/* 01C60 809D0340 34E7D70A */  ori     $a3, $a3, 0xD70A           ## $a3 = 3BA3D70A
/* 01C64 809D0344 34A5999A */  ori     $a1, $a1, 0x999A           ## $a1 = 3D99999A
/* 01C68 809D0348 E6040258 */  swc1    $f4, 0x0258($s0)           ## 00000258
/* 01C6C 809D034C 26040260 */  addiu   $a0, $s0, 0x0260           ## $a0 = 00000260
/* 01C70 809D0350 3C063F80 */  lui     $a2, 0x3F80                ## $a2 = 3F800000
/* 01C74 809D0354 0C01E0C4 */  jal     Math_SmoothScaleMaxMinF
              
/* 01C78 809D0358 E7A60010 */  swc1    $f6, 0x0010($sp)           
/* 01C7C 809D035C 860A0222 */  lh      $t2, 0x0222($s0)           ## 00000222
.L809D0360:
/* 01C80 809D0360 254BFFFF */  addiu   $t3, $t2, 0xFFFF           ## $t3 = FFFFFFFF
/* 01C84 809D0364 A60B0222 */  sh      $t3, 0x0222($s0)           ## 00000222
/* 01C88 809D0368 860C0222 */  lh      $t4, 0x0222($s0)           ## 00000222
/* 01C8C 809D036C 55800013 */  bnel    $t4, $zero, .L809D03BC     
/* 01C90 809D0370 8FBF0024 */  lw      $ra, 0x0024($sp)           
/* 01C94 809D0374 0C273A6A */  jal     func_809CE9A8              
/* 01C98 809D0378 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 01C9C 809D037C 240E00C8 */  addiu   $t6, $zero, 0x00C8         ## $t6 = 000000C8
/* 01CA0 809D0380 240F00FF */  addiu   $t7, $zero, 0x00FF         ## $t7 = 000000FF
/* 01CA4 809D0384 24180258 */  addiu   $t8, $zero, 0x0258         ## $t8 = 00000258
/* 01CA8 809D0388 24190001 */  addiu   $t9, $zero, 0x0001         ## $t9 = 00000001
/* 01CAC 809D038C 86080236 */  lh      $t0, 0x0236($s0)           ## 00000236
/* 01CB0 809D0390 A20E022D */  sb      $t6, 0x022D($s0)           ## 0000022D
/* 01CB4 809D0394 A20E022C */  sb      $t6, 0x022C($s0)           ## 0000022C
/* 01CB8 809D0398 A20F022E */  sb      $t7, 0x022E($s0)           ## 0000022E
/* 01CBC 809D039C A6180224 */  sh      $t8, 0x0224($s0)           ## 00000224
/* 01CC0 809D03A0 A2190221 */  sb      $t9, 0x0221($s0)           ## 00000221
/* 01CC4 809D03A4 3C01809D */  lui     $at, %hi(D_809D168C)       ## $at = 809D0000
/* 01CC8 809D03A8 C428168C */  lwc1    $f8, %lo(D_809D168C)($at)  
/* 01CCC 809D03AC 25090001 */  addiu   $t1, $t0, 0x0001           ## $t1 = 00000001
/* 01CD0 809D03B0 A6090236 */  sh      $t1, 0x0236($s0)           ## 00000236
/* 01CD4 809D03B4 E6080250 */  swc1    $f8, 0x0250($s0)           ## 00000250
/* 01CD8 809D03B8 8FBF0024 */  lw      $ra, 0x0024($sp)           
.L809D03BC:
/* 01CDC 809D03BC 8FB00020 */  lw      $s0, 0x0020($sp)           
/* 01CE0 809D03C0 27BD0028 */  addiu   $sp, $sp, 0x0028           ## $sp = 00000000
/* 01CE4 809D03C4 03E00008 */  jr      $ra                        
/* 01CE8 809D03C8 00000000 */  nop


