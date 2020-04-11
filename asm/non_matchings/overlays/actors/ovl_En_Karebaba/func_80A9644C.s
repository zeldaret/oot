.rdata
glabel D_80A96A90
    .asciz "../z_en_karebaba.c"
    .balign 4

glabel D_80A96AA4
    .asciz "../z_en_karebaba.c"
    .balign 4

glabel D_80A96AB8
    .asciz "../z_en_karebaba.c"
    .balign 4

.late_rodata
glabel D_80A96B60
    .float 0.15
    .balign 4

.text
glabel func_80A9644C
/* 010FC 80A9644C 27BDFF70 */  addiu   $sp, $sp, 0xFF70           ## $sp = FFFFFF70
/* 01100 80A96450 AFBF0024 */  sw      $ra, 0x0024($sp)           
/* 01104 80A96454 AFB00020 */  sw      $s0, 0x0020($sp)           
/* 01108 80A96458 AFA40090 */  sw      $a0, 0x0090($sp)           
/* 0110C 80A9645C AFA50094 */  sw      $a1, 0x0094($sp)           
/* 01110 80A96460 8CA50000 */  lw      $a1, 0x0000($a1)           ## 00000000
/* 01114 80A96464 3C0680A9 */  lui     $a2, %hi(D_80A96A90)       ## $a2 = 80A90000
/* 01118 80A96468 24C66A90 */  addiu   $a2, $a2, %lo(D_80A96A90)  ## $a2 = 80A96A90
/* 0111C 80A9646C 27A4003C */  addiu   $a0, $sp, 0x003C           ## $a0 = FFFFFFAC
/* 01120 80A96470 240703F5 */  addiu   $a3, $zero, 0x03F5         ## $a3 = 000003F5
/* 01124 80A96474 0C031AB1 */  jal     Graph_OpenDisps              
/* 01128 80A96478 00A08025 */  or      $s0, $a1, $zero            ## $s0 = 00000000
/* 0112C 80A9647C 8FAF0094 */  lw      $t7, 0x0094($sp)           
/* 01130 80A96480 0C025011 */  jal     func_80094044              
/* 01134 80A96484 8DE40000 */  lw      $a0, 0x0000($t7)           ## 00000000
/* 01138 80A96488 8E0202D0 */  lw      $v0, 0x02D0($s0)           ## 000002D0
/* 0113C 80A9648C 8FA80090 */  lw      $t0, 0x0090($sp)           
/* 01140 80A96490 3C19FA00 */  lui     $t9, 0xFA00                ## $t9 = FA000000
/* 01144 80A96494 24580008 */  addiu   $t8, $v0, 0x0008           ## $t8 = 00000008
/* 01148 80A96498 AE1802D0 */  sw      $t8, 0x02D0($s0)           ## 000002D0
/* 0114C 80A9649C 240900FF */  addiu   $t1, $zero, 0x00FF         ## $t1 = 000000FF
/* 01150 80A964A0 AC490004 */  sw      $t1, 0x0004($v0)           ## 00000004
/* 01154 80A964A4 AC590000 */  sw      $t9, 0x0000($v0)           ## 00000000
/* 01158 80A964A8 27AA0050 */  addiu   $t2, $sp, 0x0050           ## $t2 = FFFFFFC0
/* 0115C 80A964AC 8D070010 */  lw      $a3, 0x0010($t0)           ## 00000010
/* 01160 80A964B0 8D06000C */  lw      $a2, 0x000C($t0)           ## 0000000C
/* 01164 80A964B4 8D050008 */  lw      $a1, 0x0008($t0)           ## 00000008
/* 01168 80A964B8 8D0401F4 */  lw      $a0, 0x01F4($t0)           ## 000001F4
/* 0116C 80A964BC 0C00E28A */  jal     func_80038A28              
/* 01170 80A964C0 AFAA0010 */  sw      $t2, 0x0010($sp)           
/* 01174 80A964C4 27A40050 */  addiu   $a0, $sp, 0x0050           ## $a0 = FFFFFFC0
/* 01178 80A964C8 0C03424C */  jal     Matrix_Mult              
/* 0117C 80A964CC 00002825 */  or      $a1, $zero, $zero          ## $a1 = 00000000
/* 01180 80A964D0 3C0180A9 */  lui     $at, %hi(D_80A96B60)       ## $at = 80A90000
/* 01184 80A964D4 C42C6B60 */  lwc1    $f12, %lo(D_80A96B60)($at) 
/* 01188 80A964D8 3C013F80 */  lui     $at, 0x3F80                ## $at = 3F800000
/* 0118C 80A964DC 44817000 */  mtc1    $at, $f14                  ## $f14 = 1.00
/* 01190 80A964E0 44066000 */  mfc1    $a2, $f12                  
/* 01194 80A964E4 0C0342A3 */  jal     Matrix_Scale              
/* 01198 80A964E8 24070001 */  addiu   $a3, $zero, 0x0001         ## $a3 = 00000001
/* 0119C 80A964EC 8E0202D0 */  lw      $v0, 0x02D0($s0)           ## 000002D0
/* 011A0 80A964F0 3C0CDA38 */  lui     $t4, 0xDA38                ## $t4 = DA380000
/* 011A4 80A964F4 358C0003 */  ori     $t4, $t4, 0x0003           ## $t4 = DA380003
/* 011A8 80A964F8 244B0008 */  addiu   $t3, $v0, 0x0008           ## $t3 = 00000008
/* 011AC 80A964FC AE0B02D0 */  sw      $t3, 0x02D0($s0)           ## 000002D0
/* 011B0 80A96500 AC4C0000 */  sw      $t4, 0x0000($v0)           ## 00000000
/* 011B4 80A96504 8FAD0094 */  lw      $t5, 0x0094($sp)           
/* 011B8 80A96508 3C0580A9 */  lui     $a1, %hi(D_80A96AA4)       ## $a1 = 80A90000
/* 011BC 80A9650C 24A56AA4 */  addiu   $a1, $a1, %lo(D_80A96AA4)  ## $a1 = 80A96AA4
/* 011C0 80A96510 8DA40000 */  lw      $a0, 0x0000($t5)           ## 00000000
/* 011C4 80A96514 24060405 */  addiu   $a2, $zero, 0x0405         ## $a2 = 00000405
/* 011C8 80A96518 0C0346A2 */  jal     Matrix_NewMtx              
/* 011CC 80A9651C AFA20034 */  sw      $v0, 0x0034($sp)           
/* 011D0 80A96520 8FA30034 */  lw      $v1, 0x0034($sp)           
/* 011D4 80A96524 3C180405 */  lui     $t8, 0x0405                ## $t8 = 04050000
/* 011D8 80A96528 27189210 */  addiu   $t8, $t8, 0x9210           ## $t8 = 04049210
/* 011DC 80A9652C AC620004 */  sw      $v0, 0x0004($v1)           ## 00000004
/* 011E0 80A96530 8E0202D0 */  lw      $v0, 0x02D0($s0)           ## 000002D0
/* 011E4 80A96534 3C0FDE00 */  lui     $t7, 0xDE00                ## $t7 = DE000000
/* 011E8 80A96538 3C0680A9 */  lui     $a2, %hi(D_80A96AB8)       ## $a2 = 80A90000
/* 011EC 80A9653C 244E0008 */  addiu   $t6, $v0, 0x0008           ## $t6 = 00000008
/* 011F0 80A96540 AE0E02D0 */  sw      $t6, 0x02D0($s0)           ## 000002D0
/* 011F4 80A96544 AC580004 */  sw      $t8, 0x0004($v0)           ## 00000004
/* 011F8 80A96548 AC4F0000 */  sw      $t7, 0x0000($v0)           ## 00000000
/* 011FC 80A9654C 8FB90094 */  lw      $t9, 0x0094($sp)           
/* 01200 80A96550 24C66AB8 */  addiu   $a2, $a2, %lo(D_80A96AB8)  ## $a2 = 80A96AB8
/* 01204 80A96554 27A4003C */  addiu   $a0, $sp, 0x003C           ## $a0 = FFFFFFAC
/* 01208 80A96558 2407040A */  addiu   $a3, $zero, 0x040A         ## $a3 = 0000040A
/* 0120C 80A9655C 0C031AD5 */  jal     Graph_CloseDisps              
/* 01210 80A96560 8F250000 */  lw      $a1, 0x0000($t9)           ## 00000000
/* 01214 80A96564 8FBF0024 */  lw      $ra, 0x0024($sp)           
/* 01218 80A96568 8FB00020 */  lw      $s0, 0x0020($sp)           
/* 0121C 80A9656C 27BD0090 */  addiu   $sp, $sp, 0x0090           ## $sp = 00000000
/* 01220 80A96570 03E00008 */  jr      $ra                        
/* 01224 80A96574 00000000 */  nop


