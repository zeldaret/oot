.late_rodata
glabel D_80B2EC28
    .float 10000.0

glabel D_80B2EC2C
    .float 0.01

.text
glabel func_80B2E340
/* 00EE0 80B2E340 27BDFF70 */  addiu   $sp, $sp, 0xFF70           ## $sp = FFFFFF70
/* 00EE4 80B2E344 3C0F80B3 */  lui     $t7, %hi(D_80B2EAF8)       ## $t7 = 80B30000
/* 00EE8 80B2E348 AFBF0034 */  sw      $ra, 0x0034($sp)           
/* 00EEC 80B2E34C AFB00030 */  sw      $s0, 0x0030($sp)           
/* 00EF0 80B2E350 AFA40090 */  sw      $a0, 0x0090($sp)           
/* 00EF4 80B2E354 AFA60098 */  sw      $a2, 0x0098($sp)           
/* 00EF8 80B2E358 AFA7009C */  sw      $a3, 0x009C($sp)           
/* 00EFC 80B2E35C 25EFEAF8 */  addiu   $t7, $t7, %lo(D_80B2EAF8)  ## $t7 = 80B2EAF8
/* 00F00 80B2E360 8DF90000 */  lw      $t9, 0x0000($t7)           ## 80B2EAF8
/* 00F04 80B2E364 27AE0080 */  addiu   $t6, $sp, 0x0080           ## $t6 = FFFFFFF0
/* 00F08 80B2E368 8DF80004 */  lw      $t8, 0x0004($t7)           ## 80B2EAFC
/* 00F0C 80B2E36C ADD90000 */  sw      $t9, 0x0000($t6)           ## FFFFFFF0
/* 00F10 80B2E370 8DF90008 */  lw      $t9, 0x0008($t7)           ## 80B2EB00
/* 00F14 80B2E374 3C0980B3 */  lui     $t1, %hi(D_80B2EB04)       ## $t1 = 80B30000
/* 00F18 80B2E378 2529EB04 */  addiu   $t1, $t1, %lo(D_80B2EB04)  ## $t1 = 80B2EB04
/* 00F1C 80B2E37C ADD80004 */  sw      $t8, 0x0004($t6)           ## FFFFFFF4
/* 00F20 80B2E380 ADD90008 */  sw      $t9, 0x0008($t6)           ## FFFFFFF8
/* 00F24 80B2E384 8D2B0000 */  lw      $t3, 0x0000($t1)           ## 80B2EB04
/* 00F28 80B2E388 27A80074 */  addiu   $t0, $sp, 0x0074           ## $t0 = FFFFFFE4
/* 00F2C 80B2E38C 8D2A0004 */  lw      $t2, 0x0004($t1)           ## 80B2EB08
/* 00F30 80B2E390 AD0B0000 */  sw      $t3, 0x0000($t0)           ## FFFFFFE4
/* 00F34 80B2E394 8D2B0008 */  lw      $t3, 0x0008($t1)           ## 80B2EB0C
/* 00F38 80B2E398 3C0D80B3 */  lui     $t5, %hi(D_80B2EB10)       ## $t5 = 80B30000
/* 00F3C 80B2E39C 25ADEB10 */  addiu   $t5, $t5, %lo(D_80B2EB10)  ## $t5 = 80B2EB10
/* 00F40 80B2E3A0 AD0A0004 */  sw      $t2, 0x0004($t0)           ## FFFFFFE8
/* 00F44 80B2E3A4 AD0B0008 */  sw      $t3, 0x0008($t0)           ## FFFFFFEC
/* 00F48 80B2E3A8 8DAF0000 */  lw      $t7, 0x0000($t5)           ## 80B2EB10
/* 00F4C 80B2E3AC 27AC0068 */  addiu   $t4, $sp, 0x0068           ## $t4 = FFFFFFD8
/* 00F50 80B2E3B0 8DAE0004 */  lw      $t6, 0x0004($t5)           ## 80B2EB14
/* 00F54 80B2E3B4 AD8F0000 */  sw      $t7, 0x0000($t4)           ## FFFFFFD8
/* 00F58 80B2E3B8 8DAF0008 */  lw      $t7, 0x0008($t5)           ## 80B2EB18
/* 00F5C 80B2E3BC 24010002 */  addiu   $at, $zero, 0x0002         ## $at = 00000002
/* 00F60 80B2E3C0 AD8E0004 */  sw      $t6, 0x0004($t4)           ## FFFFFFDC
/* 00F64 80B2E3C4 14A1008F */  bne     $a1, $at, .L80B2E604       
/* 00F68 80B2E3C8 AD8F0008 */  sw      $t7, 0x0008($t4)           ## FFFFFFE0
/* 00F6C 80B2E3CC 8FB000A0 */  lw      $s0, 0x00A0($sp)           
/* 00F70 80B2E3D0 3C0480B3 */  lui     $a0, %hi(D_80B2EB1C)       ## $a0 = 80B30000
/* 00F74 80B2E3D4 2484EB1C */  addiu   $a0, $a0, %lo(D_80B2EB1C)  ## $a0 = 80B2EB1C
/* 00F78 80B2E3D8 26050224 */  addiu   $a1, $s0, 0x0224           ## $a1 = 00000224
/* 00F7C 80B2E3DC 0C0346BD */  jal     Matrix_MultVec3f              
/* 00F80 80B2E3E0 AFA50048 */  sw      $a1, 0x0048($sp)           
/* 00F84 80B2E3E4 3C0480B3 */  lui     $a0, %hi(D_80B2EB28)       ## $a0 = 80B30000
/* 00F88 80B2E3E8 2484EB28 */  addiu   $a0, $a0, %lo(D_80B2EB28)  ## $a0 = 80B2EB28
/* 00F8C 80B2E3EC 0C0346BD */  jal     Matrix_MultVec3f              
/* 00F90 80B2E3F0 26050230 */  addiu   $a1, $s0, 0x0230           ## $a1 = 00000230
/* 00F94 80B2E3F4 86180260 */  lh      $t8, 0x0260($s0)           ## 00000260
/* 00F98 80B2E3F8 2B010003 */  slti    $at, $t8, 0x0003           
/* 00F9C 80B2E3FC 14200065 */  bne     $at, $zero, .L80B2E594     
/* 00FA0 80B2E400 3C0143FA */  lui     $at, 0x43FA                ## $at = 43FA0000
/* 00FA4 80B2E404 44813000 */  mtc1    $at, $f6                   ## $f6 = 500.00
/* 00FA8 80B2E408 AFA00054 */  sw      $zero, 0x0054($sp)         
/* 00FAC 80B2E40C 3C0180B3 */  lui     $at, %hi(D_80B2EC28)       ## $at = 80B30000
/* 00FB0 80B2E410 C430EC28 */  lwc1    $f16, %lo(D_80B2EC28)($at) 
/* 00FB4 80B2E414 C60A0054 */  lwc1    $f10, 0x0054($s0)          ## 00000054
/* 00FB8 80B2E418 C6040250 */  lwc1    $f4, 0x0250($s0)           ## 00000250
/* 00FBC 80B2E41C 2605023C */  addiu   $a1, $s0, 0x023C           ## $a1 = 0000023C
/* 00FC0 80B2E420 46105482 */  mul.s   $f18, $f10, $f16           
/* 00FC4 80B2E424 46062200 */  add.s   $f8, $f4, $f6              
/* 00FC8 80B2E428 AFA50044 */  sw      $a1, 0x0044($sp)           
/* 00FCC 80B2E42C 27A40080 */  addiu   $a0, $sp, 0x0080           ## $a0 = FFFFFFF0
/* 00FD0 80B2E430 46124102 */  mul.s   $f4, $f8, $f18             
/* 00FD4 80B2E434 0C0346BD */  jal     Matrix_MultVec3f              
/* 00FD8 80B2E438 E7A40088 */  swc1    $f4, 0x0088($sp)           
/* 00FDC 80B2E43C 8FA40090 */  lw      $a0, 0x0090($sp)           
/* 00FE0 80B2E440 27B90054 */  addiu   $t9, $sp, 0x0054           ## $t9 = FFFFFFC4
/* 00FE4 80B2E444 24080001 */  addiu   $t0, $zero, 0x0001         ## $t0 = 00000001
/* 00FE8 80B2E448 24090001 */  addiu   $t1, $zero, 0x0001         ## $t1 = 00000001
/* 00FEC 80B2E44C 240A0001 */  addiu   $t2, $zero, 0x0001         ## $t2 = 00000001
/* 00FF0 80B2E450 27AB0050 */  addiu   $t3, $sp, 0x0050           ## $t3 = FFFFFFC0
/* 00FF4 80B2E454 AFAB0024 */  sw      $t3, 0x0024($sp)           
/* 00FF8 80B2E458 AFAA0020 */  sw      $t2, 0x0020($sp)           
/* 00FFC 80B2E45C AFA90018 */  sw      $t1, 0x0018($sp)           
/* 01000 80B2E460 AFA80014 */  sw      $t0, 0x0014($sp)           
/* 01004 80B2E464 AFB90010 */  sw      $t9, 0x0010($sp)           
/* 01008 80B2E468 8FA50048 */  lw      $a1, 0x0048($sp)           
/* 0100C 80B2E46C 8FA60044 */  lw      $a2, 0x0044($sp)           
/* 01010 80B2E470 27A70058 */  addiu   $a3, $sp, 0x0058           ## $a3 = FFFFFFC8
/* 01014 80B2E474 AFA0001C */  sw      $zero, 0x001C($sp)         
/* 01018 80B2E478 0C00F7A1 */  jal     func_8003DE84              
/* 0101C 80B2E47C 248407C0 */  addiu   $a0, $a0, 0x07C0           ## $a0 = 000007C0
/* 01020 80B2E480 24010001 */  addiu   $at, $zero, 0x0001         ## $at = 00000001
/* 01024 80B2E484 14410011 */  bne     $v0, $at, .L80B2E4CC       
/* 01028 80B2E488 8FA40048 */  lw      $a0, 0x0048($sp)           
/* 0102C 80B2E48C 0C01DFE4 */  jal     Math_Vec3f_DistXYZ
              
/* 01030 80B2E490 27A50058 */  addiu   $a1, $sp, 0x0058           ## $a1 = FFFFFFC8
/* 01034 80B2E494 3C0140A0 */  lui     $at, 0x40A0                ## $at = 40A00000
/* 01038 80B2E498 44813000 */  mtc1    $at, $f6                   ## $f6 = 5.00
/* 0103C 80B2E49C 240C0004 */  addiu   $t4, $zero, 0x0004         ## $t4 = 00000004
/* 01040 80B2E4A0 A60C0260 */  sh      $t4, 0x0260($s0)           ## 00000260
/* 01044 80B2E4A4 46060281 */  sub.s   $f10, $f0, $f6             
/* 01048 80B2E4A8 27AE0058 */  addiu   $t6, $sp, 0x0058           ## $t6 = FFFFFFC8
/* 0104C 80B2E4AC E60A0250 */  swc1    $f10, 0x0250($s0)          ## 00000250
/* 01050 80B2E4B0 8DD80000 */  lw      $t8, 0x0000($t6)           ## FFFFFFC8
/* 01054 80B2E4B4 8FAD0044 */  lw      $t5, 0x0044($sp)           
/* 01058 80B2E4B8 ADB80000 */  sw      $t8, 0x0000($t5)           ## 00000000
/* 0105C 80B2E4BC 8DCF0004 */  lw      $t7, 0x0004($t6)           ## FFFFFFCC
/* 01060 80B2E4C0 ADAF0004 */  sw      $t7, 0x0004($t5)           ## 00000004
/* 01064 80B2E4C4 8DD80008 */  lw      $t8, 0x0008($t6)           ## FFFFFFD0
/* 01068 80B2E4C8 ADB80008 */  sw      $t8, 0x0008($t5)           ## 00000008
.L80B2E4CC:
/* 0106C 80B2E4CC 44808000 */  mtc1    $zero, $f16                ## $f16 = 0.00
/* 01070 80B2E4D0 C6080250 */  lwc1    $f8, 0x0250($s0)           ## 00000250
/* 01074 80B2E4D4 3C0142C8 */  lui     $at, 0x42C8                ## $at = 42C80000
/* 01078 80B2E4D8 8FA40048 */  lw      $a0, 0x0048($sp)           
/* 0107C 80B2E4DC 46088032 */  c.eq.s  $f16, $f8                  
/* 01080 80B2E4E0 8FA50044 */  lw      $a1, 0x0044($sp)           
/* 01084 80B2E4E4 4501002B */  bc1t    .L80B2E594                 
/* 01088 80B2E4E8 00000000 */  nop
/* 0108C 80B2E4EC 44811000 */  mtc1    $at, $f2                   ## $f2 = 100.00
/* 01090 80B2E4F0 3C0180B3 */  lui     $at, %hi(D_80B2EC2C)       ## $at = 80B30000
/* 01094 80B2E4F4 C432EC2C */  lwc1    $f18, %lo(D_80B2EC2C)($at) 
/* 01098 80B2E4F8 C6040054 */  lwc1    $f4, 0x0054($s0)           ## 00000054
/* 0109C 80B2E4FC 3C01428C */  lui     $at, 0x428C                ## $at = 428C0000
/* 010A0 80B2E500 4604903C */  c.lt.s  $f18, $f4                  
/* 010A4 80B2E504 00000000 */  nop
/* 010A8 80B2E508 45000003 */  bc1f    .L80B2E518                 
/* 010AC 80B2E50C 00000000 */  nop
/* 010B0 80B2E510 44811000 */  mtc1    $at, $f2                   ## $f2 = 70.00
/* 010B4 80B2E514 00000000 */  nop
.L80B2E518:
/* 010B8 80B2E518 0C01DFE4 */  jal     Math_Vec3f_DistXYZ
              
/* 010BC 80B2E51C E7A2004C */  swc1    $f2, 0x004C($sp)           
/* 010C0 80B2E520 C7A2004C */  lwc1    $f2, 0x004C($sp)           
/* 010C4 80B2E524 3C0480B3 */  lui     $a0, %hi(D_80B2EB64)       ## $a0 = 80B30000
/* 010C8 80B2E528 26050318 */  addiu   $a1, $s0, 0x0318           ## $a1 = 00000318
/* 010CC 80B2E52C 46020302 */  mul.s   $f12, $f0, $f2             
/* 010D0 80B2E530 AFA5003C */  sw      $a1, 0x003C($sp)           
/* 010D4 80B2E534 2484EB64 */  addiu   $a0, $a0, %lo(D_80B2EB64)  ## $a0 = 80B2EB64
/* 010D8 80B2E538 E7AC007C */  swc1    $f12, 0x007C($sp)          
/* 010DC 80B2E53C 0C0346BD */  jal     Matrix_MultVec3f              
/* 010E0 80B2E540 E7AC0070 */  swc1    $f12, 0x0070($sp)          
/* 010E4 80B2E544 3C0480B3 */  lui     $a0, %hi(D_80B2EB70)       ## $a0 = 80B30000
/* 010E8 80B2E548 2605030C */  addiu   $a1, $s0, 0x030C           ## $a1 = 0000030C
/* 010EC 80B2E54C AFA50040 */  sw      $a1, 0x0040($sp)           
/* 010F0 80B2E550 0C0346BD */  jal     Matrix_MultVec3f              
/* 010F4 80B2E554 2484EB70 */  addiu   $a0, $a0, %lo(D_80B2EB70)  ## $a0 = 80B2EB70
/* 010F8 80B2E558 26050300 */  addiu   $a1, $s0, 0x0300           ## $a1 = 00000300
/* 010FC 80B2E55C AFA50044 */  sw      $a1, 0x0044($sp)           
/* 01100 80B2E560 0C0346BD */  jal     Matrix_MultVec3f              
/* 01104 80B2E564 27A40074 */  addiu   $a0, $sp, 0x0074           ## $a0 = FFFFFFE4
/* 01108 80B2E568 260502F4 */  addiu   $a1, $s0, 0x02F4           ## $a1 = 000002F4
/* 0110C 80B2E56C AFA50048 */  sw      $a1, 0x0048($sp)           
/* 01110 80B2E570 0C0346BD */  jal     Matrix_MultVec3f              
/* 01114 80B2E574 27A40068 */  addiu   $a0, $sp, 0x0068           ## $a0 = FFFFFFD8
/* 01118 80B2E578 8FB9003C */  lw      $t9, 0x003C($sp)           
/* 0111C 80B2E57C 8FA50048 */  lw      $a1, 0x0048($sp)           
/* 01120 80B2E580 260402B4 */  addiu   $a0, $s0, 0x02B4           ## $a0 = 000002B4
/* 01124 80B2E584 8FA60044 */  lw      $a2, 0x0044($sp)           
/* 01128 80B2E588 8FA70040 */  lw      $a3, 0x0040($sp)           
/* 0112C 80B2E58C 0C0189CD */  jal     func_80062734              
/* 01130 80B2E590 AFB90010 */  sw      $t9, 0x0010($sp)           
.L80B2E594:
/* 01134 80B2E594 3C0480B3 */  lui     $a0, %hi(D_80B2EB34)       ## $a0 = 80B30000
/* 01138 80B2E598 26050380 */  addiu   $a1, $s0, 0x0380           ## $a1 = 00000380
/* 0113C 80B2E59C AFA50044 */  sw      $a1, 0x0044($sp)           
/* 01140 80B2E5A0 0C0346BD */  jal     Matrix_MultVec3f              
/* 01144 80B2E5A4 2484EB34 */  addiu   $a0, $a0, %lo(D_80B2EB34)  ## $a0 = 80B2EB34
/* 01148 80B2E5A8 3C0480B3 */  lui     $a0, %hi(D_80B2EB40)       ## $a0 = 80B30000
/* 0114C 80B2E5AC 26050374 */  addiu   $a1, $s0, 0x0374           ## $a1 = 00000374
/* 01150 80B2E5B0 AFA50048 */  sw      $a1, 0x0048($sp)           
/* 01154 80B2E5B4 0C0346BD */  jal     Matrix_MultVec3f              
/* 01158 80B2E5B8 2484EB40 */  addiu   $a0, $a0, %lo(D_80B2EB40)  ## $a0 = 80B2EB40
/* 0115C 80B2E5BC 3C0480B3 */  lui     $a0, %hi(D_80B2EB4C)       ## $a0 = 80B30000
/* 01160 80B2E5C0 26050398 */  addiu   $a1, $s0, 0x0398           ## $a1 = 00000398
/* 01164 80B2E5C4 AFA5003C */  sw      $a1, 0x003C($sp)           
/* 01168 80B2E5C8 0C0346BD */  jal     Matrix_MultVec3f              
/* 0116C 80B2E5CC 2484EB4C */  addiu   $a0, $a0, %lo(D_80B2EB4C)  ## $a0 = 80B2EB4C
/* 01170 80B2E5D0 3C0480B3 */  lui     $a0, %hi(D_80B2EB58)       ## $a0 = 80B30000
/* 01174 80B2E5D4 2607038C */  addiu   $a3, $s0, 0x038C           ## $a3 = 0000038C
/* 01178 80B2E5D8 00E02825 */  or      $a1, $a3, $zero            ## $a1 = 0000038C
/* 0117C 80B2E5DC AFA70040 */  sw      $a3, 0x0040($sp)           
/* 01180 80B2E5E0 0C0346BD */  jal     Matrix_MultVec3f              
/* 01184 80B2E5E4 2484EB58 */  addiu   $a0, $a0, %lo(D_80B2EB58)  ## $a0 = 80B2EB58
/* 01188 80B2E5E8 8FA8003C */  lw      $t0, 0x003C($sp)           
/* 0118C 80B2E5EC 8FA70040 */  lw      $a3, 0x0040($sp)           
/* 01190 80B2E5F0 26040334 */  addiu   $a0, $s0, 0x0334           ## $a0 = 00000334
/* 01194 80B2E5F4 8FA50048 */  lw      $a1, 0x0048($sp)           
/* 01198 80B2E5F8 8FA60044 */  lw      $a2, 0x0044($sp)           
/* 0119C 80B2E5FC 0C0189CD */  jal     func_80062734              
/* 011A0 80B2E600 AFA80010 */  sw      $t0, 0x0010($sp)           
.L80B2E604:
/* 011A4 80B2E604 8FBF0034 */  lw      $ra, 0x0034($sp)           
/* 011A8 80B2E608 8FB00030 */  lw      $s0, 0x0030($sp)           
/* 011AC 80B2E60C 27BD0090 */  addiu   $sp, $sp, 0x0090           ## $sp = 00000000
/* 011B0 80B2E610 03E00008 */  jr      $ra                        
/* 011B4 80B2E614 00000000 */  nop
