glabel EnMd_Draw
/* 01F10 80AAC160 27BDFFB0 */  addiu   $sp, $sp, 0xFFB0           ## $sp = FFFFFFB0
/* 01F14 80AAC164 AFBF0024 */  sw      $ra, 0x0024($sp)           
/* 01F18 80AAC168 AFB00020 */  sw      $s0, 0x0020($sp)           
/* 01F1C 80AAC16C AFA50054 */  sw      $a1, 0x0054($sp)           
/* 01F20 80AAC170 8CA50000 */  lw      $a1, 0x0000($a1)           ## 00000000
/* 01F24 80AAC174 00808025 */  or      $s0, $a0, $zero            ## $s0 = 00000000
/* 01F28 80AAC178 3C0680AB */  lui     $a2, %hi(D_80AAC4B0)       ## $a2 = 80AB0000
/* 01F2C 80AAC17C 24C6C4B0 */  addiu   $a2, $a2, %lo(D_80AAC4B0)  ## $a2 = 80AAC4B0
/* 01F30 80AAC180 27A40038 */  addiu   $a0, $sp, 0x0038           ## $a0 = FFFFFFE8
/* 01F34 80AAC184 24070500 */  addiu   $a3, $zero, 0x0500         ## $a3 = 00000500
/* 01F38 80AAC188 0C031AB1 */  jal     func_800C6AC4              
/* 01F3C 80AAC18C AFA50048 */  sw      $a1, 0x0048($sp)           
/* 01F40 80AAC190 86020210 */  lh      $v0, 0x0210($s0)           ## 00000210
/* 01F44 80AAC194 240100FF */  addiu   $at, $zero, 0x00FF         ## $at = 000000FF
/* 01F48 80AAC198 8FA80048 */  lw      $t0, 0x0048($sp)           
/* 01F4C 80AAC19C 14410024 */  bne     $v0, $at, .L80AAC230       
/* 01F50 80AAC1A0 3C18DB06 */  lui     $t8, 0xDB06                ## $t8 = DB060000
/* 01F54 80AAC1A4 8D0302C0 */  lw      $v1, 0x02C0($t0)           ## 000002C0
/* 01F58 80AAC1A8 37180020 */  ori     $t8, $t8, 0x0020           ## $t8 = DB060020
/* 01F5C 80AAC1AC 3C0480AB */  lui     $a0, %hi(D_80AAC4A4)       ## $a0 = 80AB0000
/* 01F60 80AAC1B0 246F0008 */  addiu   $t7, $v1, 0x0008           ## $t7 = 00000008
/* 01F64 80AAC1B4 AD0F02C0 */  sw      $t7, 0x02C0($t0)           ## 000002C0
/* 01F68 80AAC1B8 AC780000 */  sw      $t8, 0x0000($v1)           ## 00000000
/* 01F6C 80AAC1BC 8619020E */  lh      $t9, 0x020E($s0)           ## 0000020E
/* 01F70 80AAC1C0 3C0E8016 */  lui     $t6, 0x8016                ## $t6 = 80160000
/* 01F74 80AAC1C4 3C0100FF */  lui     $at, 0x00FF                ## $at = 00FF0000
/* 01F78 80AAC1C8 00194880 */  sll     $t1, $t9,  2               
/* 01F7C 80AAC1CC 00892021 */  addu    $a0, $a0, $t1              
/* 01F80 80AAC1D0 8C84C4A4 */  lw      $a0, %lo(D_80AAC4A4)($a0)  
/* 01F84 80AAC1D4 3421FFFF */  ori     $at, $at, 0xFFFF           ## $at = 00FFFFFF
/* 01F88 80AAC1D8 3C0680AB */  lui     $a2, %hi(func_80AABEF0)    ## $a2 = 80AB0000
/* 01F8C 80AAC1DC 00045900 */  sll     $t3, $a0,  4               
/* 01F90 80AAC1E0 000B6702 */  srl     $t4, $t3, 28               
/* 01F94 80AAC1E4 000C6880 */  sll     $t5, $t4,  2               
/* 01F98 80AAC1E8 01CD7021 */  addu    $t6, $t6, $t5              
/* 01F9C 80AAC1EC 8DCE6FA8 */  lw      $t6, 0x6FA8($t6)           ## 80166FA8
/* 01FA0 80AAC1F0 00815024 */  and     $t2, $a0, $at              
/* 01FA4 80AAC1F4 3C018000 */  lui     $at, 0x8000                ## $at = 80000000
/* 01FA8 80AAC1F8 014E7821 */  addu    $t7, $t2, $t6              
/* 01FAC 80AAC1FC 01E1C021 */  addu    $t8, $t7, $at              
/* 01FB0 80AAC200 AC780004 */  sw      $t8, 0x0004($v1)           ## 00000004
/* 01FB4 80AAC204 AFB00010 */  sw      $s0, 0x0010($sp)           
/* 01FB8 80AAC208 86190210 */  lh      $t9, 0x0210($s0)           ## 00000210
/* 01FBC 80AAC20C 3C0780AB */  lui     $a3, %hi(func_80AAC104)    ## $a3 = 80AB0000
/* 01FC0 80AAC210 24E7C104 */  addiu   $a3, $a3, %lo(func_80AAC104) ## $a3 = 80AAC104
/* 01FC4 80AAC214 8FA40054 */  lw      $a0, 0x0054($sp)           
/* 01FC8 80AAC218 24C6BEF0 */  addiu   $a2, $a2, %lo(func_80AABEF0) ## $a2 = 80AABEF0
/* 01FCC 80AAC21C 2605014C */  addiu   $a1, $s0, 0x014C           ## $a1 = 0000014C
/* 01FD0 80AAC220 0C00D2E8 */  jal     func_80034BA0              
/* 01FD4 80AAC224 AFB90014 */  sw      $t9, 0x0014($sp)           
/* 01FD8 80AAC228 10000025 */  beq     $zero, $zero, .L80AAC2C0   
/* 01FDC 80AAC22C 8FAD0054 */  lw      $t5, 0x0054($sp)           
.L80AAC230:
/* 01FE0 80AAC230 10400022 */  beq     $v0, $zero, .L80AAC2BC     
/* 01FE4 80AAC234 3C0BDB06 */  lui     $t3, 0xDB06                ## $t3 = DB060000
/* 01FE8 80AAC238 8D0302D0 */  lw      $v1, 0x02D0($t0)           ## 000002D0
/* 01FEC 80AAC23C 356B0020 */  ori     $t3, $t3, 0x0020           ## $t3 = DB060020
/* 01FF0 80AAC240 3C0480AB */  lui     $a0, %hi(D_80AAC4A4)       ## $a0 = 80AB0000
/* 01FF4 80AAC244 24690008 */  addiu   $t1, $v1, 0x0008           ## $t1 = 00000008
/* 01FF8 80AAC248 AD0902D0 */  sw      $t1, 0x02D0($t0)           ## 000002D0
/* 01FFC 80AAC24C AC6B0000 */  sw      $t3, 0x0000($v1)           ## 00000000
/* 02000 80AAC250 860C020E */  lh      $t4, 0x020E($s0)           ## 0000020E
/* 02004 80AAC254 3C198016 */  lui     $t9, 0x8016                ## $t9 = 80160000
/* 02008 80AAC258 3C0100FF */  lui     $at, 0x00FF                ## $at = 00FF0000
/* 0200C 80AAC25C 000C6880 */  sll     $t5, $t4,  2               
/* 02010 80AAC260 008D2021 */  addu    $a0, $a0, $t5              
/* 02014 80AAC264 8C84C4A4 */  lw      $a0, %lo(D_80AAC4A4)($a0)  
/* 02018 80AAC268 3421FFFF */  ori     $at, $at, 0xFFFF           ## $at = 00FFFFFF
/* 0201C 80AAC26C 3C0680AB */  lui     $a2, %hi(func_80AABEF0)    ## $a2 = 80AB0000
/* 02020 80AAC270 00047100 */  sll     $t6, $a0,  4               
/* 02024 80AAC274 000E7F02 */  srl     $t7, $t6, 28               
/* 02028 80AAC278 000FC080 */  sll     $t8, $t7,  2               
/* 0202C 80AAC27C 0338C821 */  addu    $t9, $t9, $t8              
/* 02030 80AAC280 8F396FA8 */  lw      $t9, 0x6FA8($t9)           ## 80166FA8
/* 02034 80AAC284 00815024 */  and     $t2, $a0, $at              
/* 02038 80AAC288 3C018000 */  lui     $at, 0x8000                ## $at = 80000000
/* 0203C 80AAC28C 01594821 */  addu    $t1, $t2, $t9              
/* 02040 80AAC290 01215821 */  addu    $t3, $t1, $at              
/* 02044 80AAC294 AC6B0004 */  sw      $t3, 0x0004($v1)           ## 00000004
/* 02048 80AAC298 AFB00010 */  sw      $s0, 0x0010($sp)           
/* 0204C 80AAC29C 860C0210 */  lh      $t4, 0x0210($s0)           ## 00000210
/* 02050 80AAC2A0 3C0780AB */  lui     $a3, %hi(func_80AAC104)    ## $a3 = 80AB0000
/* 02054 80AAC2A4 24E7C104 */  addiu   $a3, $a3, %lo(func_80AAC104) ## $a3 = 80AAC104
/* 02058 80AAC2A8 8FA40054 */  lw      $a0, 0x0054($sp)           
/* 0205C 80AAC2AC 24C6BEF0 */  addiu   $a2, $a2, %lo(func_80AABEF0) ## $a2 = 80AABEF0
/* 02060 80AAC2B0 2605014C */  addiu   $a1, $s0, 0x014C           ## $a1 = 0000014C
/* 02064 80AAC2B4 0C00D331 */  jal     func_80034CC4              
/* 02068 80AAC2B8 AFAC0014 */  sw      $t4, 0x0014($sp)           
.L80AAC2BC:
/* 0206C 80AAC2BC 8FAD0054 */  lw      $t5, 0x0054($sp)           
.L80AAC2C0:
/* 02070 80AAC2C0 3C0680AB */  lui     $a2, %hi(D_80AAC4C0)       ## $a2 = 80AB0000
/* 02074 80AAC2C4 24C6C4C0 */  addiu   $a2, $a2, %lo(D_80AAC4C0)  ## $a2 = 80AAC4C0
/* 02078 80AAC2C8 27A40038 */  addiu   $a0, $sp, 0x0038           ## $a0 = FFFFFFE8
/* 0207C 80AAC2CC 24070525 */  addiu   $a3, $zero, 0x0525         ## $a3 = 00000525
/* 02080 80AAC2D0 0C031AD5 */  jal     func_800C6B54              
/* 02084 80AAC2D4 8DA50000 */  lw      $a1, 0x0000($t5)           ## 00000000
/* 02088 80AAC2D8 8FBF0024 */  lw      $ra, 0x0024($sp)           
/* 0208C 80AAC2DC 8FB00020 */  lw      $s0, 0x0020($sp)           
/* 02090 80AAC2E0 27BD0050 */  addiu   $sp, $sp, 0x0050           ## $sp = 00000000
/* 02094 80AAC2E4 03E00008 */  jr      $ra                        
/* 02098 80AAC2E8 00000000 */  nop
/* 0209C 80AAC2EC 00000000 */  nop

