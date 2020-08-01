.rdata
glabel D_80BA5AD0
    .asciz "../z_object_kankyo.c"
    .balign 4

glabel D_80BA5AE8
    .asciz "../z_object_kankyo.c"
    .balign 4

glabel D_80BA5B00
    .asciz "../z_object_kankyo.c"
    .balign 4

.late_rodata
glabel D_80BA5CB4
    .float 0.34906584

glabel D_80BA5CB8
    .float 0.34906584

.text
glabel func_80BA49BC
/* 01F1C 80BA49BC 27BDFFA0 */  addiu   $sp, $sp, 0xFFA0           ## $sp = FFFFFFA0
/* 01F20 80BA49C0 AFBF001C */  sw      $ra, 0x001C($sp)           
/* 01F24 80BA49C4 AFB00018 */  sw      $s0, 0x0018($sp)           
/* 01F28 80BA49C8 AFA40060 */  sw      $a0, 0x0060($sp)           
/* 01F2C 80BA49CC AFA50064 */  sw      $a1, 0x0064($sp)           
/* 01F30 80BA49D0 8CA50000 */  lw      $a1, 0x0000($a1)           ## 00000000
/* 01F34 80BA49D4 3C0680BA */  lui     $a2, %hi(D_80BA5AD0)       ## $a2 = 80BA0000
/* 01F38 80BA49D8 24C65AD0 */  addiu   $a2, $a2, %lo(D_80BA5AD0)  ## $a2 = 80BA5AD0
/* 01F3C 80BA49DC 27A40044 */  addiu   $a0, $sp, 0x0044           ## $a0 = FFFFFFE4
/* 01F40 80BA49E0 2407049E */  addiu   $a3, $zero, 0x049E         ## $a3 = 0000049E
/* 01F44 80BA49E4 0C031AB1 */  jal     Graph_OpenDisps              
/* 01F48 80BA49E8 00A08025 */  or      $s0, $a1, $zero            ## $s0 = 00000000
/* 01F4C 80BA49EC 8FAF0060 */  lw      $t7, 0x0060($sp)           
/* 01F50 80BA49F0 24010001 */  addiu   $at, $zero, 0x0001         ## $at = 00000001
/* 01F54 80BA49F4 8FB90064 */  lw      $t9, 0x0064($sp)           
/* 01F58 80BA49F8 91F8014C */  lbu     $t8, 0x014C($t7)           ## 0000014C
/* 01F5C 80BA49FC 57010074 */  bnel    $t8, $at, .L80BA4BD0       
/* 01F60 80BA4A00 8FAB0064 */  lw      $t3, 0x0064($sp)           
/* 01F64 80BA4A04 8F221D8C */  lw      $v0, 0x1D8C($t9)           ## 00001D8C
/* 01F68 80BA4A08 00003825 */  or      $a3, $zero, $zero          ## $a3 = 00000000
/* 01F6C 80BA4A0C 8C4A0014 */  lw      $t2, 0x0014($v0)           ## 00000014
/* 01F70 80BA4A10 8C48000C */  lw      $t0, 0x000C($v0)           ## 0000000C
/* 01F74 80BA4A14 8C490010 */  lw      $t1, 0x0010($v0)           ## 00000010
/* 01F78 80BA4A18 448A4000 */  mtc1    $t2, $f8                   ## $f8 = 0.00
/* 01F7C 80BA4A1C 44882000 */  mtc1    $t0, $f4                   ## $f4 = 0.00
/* 01F80 80BA4A20 44893000 */  mtc1    $t1, $f6                   ## $f6 = 0.00
/* 01F84 80BA4A24 46804220 */  cvt.s.w $f8, $f8                   
/* 01F88 80BA4A28 46802320 */  cvt.s.w $f12, $f4                  
/* 01F8C 80BA4A2C 44064000 */  mfc1    $a2, $f8                   
/* 01F90 80BA4A30 0C034261 */  jal     Matrix_Translate              
/* 01F94 80BA4A34 468033A0 */  cvt.s.w $f14, $f6                  
/* 01F98 80BA4A38 3C0180BA */  lui     $at, %hi(D_80BA5CB4)       ## $at = 80BA0000
/* 01F9C 80BA4A3C C42C5CB4 */  lwc1    $f12, %lo(D_80BA5CB4)($at) 
/* 01FA0 80BA4A40 0C0342DC */  jal     Matrix_RotateX              
/* 01FA4 80BA4A44 24050001 */  addiu   $a1, $zero, 0x0001         ## $a1 = 00000001
/* 01FA8 80BA4A48 3C0180BA */  lui     $at, %hi(D_80BA5CB8)       ## $at = 80BA0000
/* 01FAC 80BA4A4C C42C5CB8 */  lwc1    $f12, %lo(D_80BA5CB8)($at) 
/* 01FB0 80BA4A50 0C0343B5 */  jal     Matrix_RotateZ              
/* 01FB4 80BA4A54 24050001 */  addiu   $a1, $zero, 0x0001         ## $a1 = 00000001
/* 01FB8 80BA4A58 3C014000 */  lui     $at, 0x4000                ## $at = 40000000
/* 01FBC 80BA4A5C 44816000 */  mtc1    $at, $f12                  ## $f12 = 2.00
/* 01FC0 80BA4A60 3C0140A0 */  lui     $at, 0x40A0                ## $at = 40A00000
/* 01FC4 80BA4A64 44817000 */  mtc1    $at, $f14                  ## $f14 = 5.00
/* 01FC8 80BA4A68 44066000 */  mfc1    $a2, $f12                  
/* 01FCC 80BA4A6C 0C0342A3 */  jal     Matrix_Scale              
/* 01FD0 80BA4A70 24070001 */  addiu   $a3, $zero, 0x0001         ## $a3 = 00000001
/* 01FD4 80BA4A74 8E0202D0 */  lw      $v0, 0x02D0($s0)           ## 000002D0
/* 01FD8 80BA4A78 3C0CFA00 */  lui     $t4, 0xFA00                ## $t4 = FA000000
/* 01FDC 80BA4A7C 240DFF80 */  addiu   $t5, $zero, 0xFF80         ## $t5 = FFFFFF80
/* 01FE0 80BA4A80 244B0008 */  addiu   $t3, $v0, 0x0008           ## $t3 = 00000008
/* 01FE4 80BA4A84 AE0B02D0 */  sw      $t3, 0x02D0($s0)           ## 000002D0
/* 01FE8 80BA4A88 AC4C0000 */  sw      $t4, 0x0000($v0)           ## 00000000
/* 01FEC 80BA4A8C AC4D0004 */  sw      $t5, 0x0004($v0)           ## 00000004
/* 01FF0 80BA4A90 8E0202D0 */  lw      $v0, 0x02D0($s0)           ## 000002D0
/* 01FF4 80BA4A94 3C1800FF */  lui     $t8, 0x00FF                ## $t8 = 00FF0000
/* 01FF8 80BA4A98 3718FF80 */  ori     $t8, $t8, 0xFF80           ## $t8 = 00FFFF80
/* 01FFC 80BA4A9C 244E0008 */  addiu   $t6, $v0, 0x0008           ## $t6 = 00000008
/* 02000 80BA4AA0 AE0E02D0 */  sw      $t6, 0x02D0($s0)           ## 000002D0
/* 02004 80BA4AA4 3C0FFB00 */  lui     $t7, 0xFB00                ## $t7 = FB000000
/* 02008 80BA4AA8 AC4F0000 */  sw      $t7, 0x0000($v0)           ## 00000000
/* 0200C 80BA4AAC AC580004 */  sw      $t8, 0x0004($v0)           ## 00000004
/* 02010 80BA4AB0 8E0202D0 */  lw      $v0, 0x02D0($s0)           ## 000002D0
/* 02014 80BA4AB4 3C08DA38 */  lui     $t0, 0xDA38                ## $t0 = DA380000
/* 02018 80BA4AB8 35080003 */  ori     $t0, $t0, 0x0003           ## $t0 = DA380003
/* 0201C 80BA4ABC 24590008 */  addiu   $t9, $v0, 0x0008           ## $t9 = 00000008
/* 02020 80BA4AC0 AE1902D0 */  sw      $t9, 0x02D0($s0)           ## 000002D0
/* 02024 80BA4AC4 AC480000 */  sw      $t0, 0x0000($v0)           ## 00000000
/* 02028 80BA4AC8 8FA90064 */  lw      $t1, 0x0064($sp)           
/* 0202C 80BA4ACC 3C0580BA */  lui     $a1, %hi(D_80BA5AE8)       ## $a1 = 80BA0000
/* 02030 80BA4AD0 24A55AE8 */  addiu   $a1, $a1, %lo(D_80BA5AE8)  ## $a1 = 80BA5AE8
/* 02034 80BA4AD4 8D240000 */  lw      $a0, 0x0000($t1)           ## 00000000
/* 02038 80BA4AD8 240604BD */  addiu   $a2, $zero, 0x04BD         ## $a2 = 000004BD
/* 0203C 80BA4ADC 0C0346A2 */  jal     Matrix_NewMtx              
/* 02040 80BA4AE0 AFA20038 */  sw      $v0, 0x0038($sp)           
/* 02044 80BA4AE4 8FA30038 */  lw      $v1, 0x0038($sp)           
/* 02048 80BA4AE8 3C0BDB06 */  lui     $t3, 0xDB06                ## $t3 = DB060000
/* 0204C 80BA4AEC 356B0020 */  ori     $t3, $t3, 0x0020           ## $t3 = DB060020
/* 02050 80BA4AF0 AC620004 */  sw      $v0, 0x0004($v1)           ## 00000004
/* 02054 80BA4AF4 8E0202D0 */  lw      $v0, 0x02D0($s0)           ## 000002D0
/* 02058 80BA4AF8 3C0480BA */  lui     $a0, %hi(D_80BA58E0)       ## $a0 = 80BA0000
/* 0205C 80BA4AFC 3C098016 */  lui     $t1, %hi(gSegments)
/* 02060 80BA4B00 244A0008 */  addiu   $t2, $v0, 0x0008           ## $t2 = 00000008
/* 02064 80BA4B04 AE0A02D0 */  sw      $t2, 0x02D0($s0)           ## 000002D0
/* 02068 80BA4B08 AC4B0000 */  sw      $t3, 0x0000($v0)           ## 00000000
/* 0206C 80BA4B0C 8FAC0060 */  lw      $t4, 0x0060($sp)           
/* 02070 80BA4B10 3C0100FF */  lui     $at, 0x00FF                ## $at = 00FF0000
/* 02074 80BA4B14 3421FFFF */  ori     $at, $at, 0xFFFF           ## $at = 00FFFFFF
/* 02078 80BA4B18 958D019C */  lhu     $t5, 0x019C($t4)           ## 0000019C
/* 0207C 80BA4B1C 000D7080 */  sll     $t6, $t5,  2               
/* 02080 80BA4B20 008E2021 */  addu    $a0, $a0, $t6              
/* 02084 80BA4B24 8C8458E0 */  lw      $a0, %lo(D_80BA58E0)($a0)  
/* 02088 80BA4B28 0004C100 */  sll     $t8, $a0,  4               
/* 0208C 80BA4B2C 0018CF02 */  srl     $t9, $t8, 28               
/* 02090 80BA4B30 00194080 */  sll     $t0, $t9,  2               
/* 02094 80BA4B34 01284821 */  addu    $t1, $t1, $t0              
/* 02098 80BA4B38 8D296FA8 */  lw      $t1, %lo(gSegments)($t1)
/* 0209C 80BA4B3C 00817824 */  and     $t7, $a0, $at              
/* 020A0 80BA4B40 3C018000 */  lui     $at, 0x8000                ## $at = 80000000
/* 020A4 80BA4B44 01E95021 */  addu    $t2, $t7, $t1              
/* 020A8 80BA4B48 01415821 */  addu    $t3, $t2, $at              
/* 020AC 80BA4B4C AC4B0004 */  sw      $t3, 0x0004($v0)           ## 00000004
/* 020B0 80BA4B50 8FAC0064 */  lw      $t4, 0x0064($sp)           
/* 020B4 80BA4B54 0C025314 */  jal     func_80094C50              
/* 020B8 80BA4B58 8D840000 */  lw      $a0, 0x0000($t4)           ## 00000000
/* 020BC 80BA4B5C 8E0202D0 */  lw      $v0, 0x02D0($s0)           ## 000002D0
/* 020C0 80BA4B60 3C0EDA38 */  lui     $t6, 0xDA38                ## $t6 = DA380000
/* 020C4 80BA4B64 3C180100 */  lui     $t8, 0x0100                ## $t8 = 01000000
/* 020C8 80BA4B68 244D0008 */  addiu   $t5, $v0, 0x0008           ## $t5 = 00000008
/* 020CC 80BA4B6C AE0D02D0 */  sw      $t5, 0x02D0($s0)           ## 000002D0
/* 020D0 80BA4B70 27180000 */  addiu   $t8, $t8, 0x0000           ## $t8 = 01000000
/* 020D4 80BA4B74 35CE0001 */  ori     $t6, $t6, 0x0001           ## $t6 = DA380001
/* 020D8 80BA4B78 AC4E0000 */  sw      $t6, 0x0000($v0)           ## 00000000
/* 020DC 80BA4B7C AC580004 */  sw      $t8, 0x0004($v0)           ## 00000004
/* 020E0 80BA4B80 8E0202D0 */  lw      $v0, 0x02D0($s0)           ## 000002D0
/* 020E4 80BA4B84 3C04E700 */  lui     $a0, 0xE700                ## $a0 = E7000000
/* 020E8 80BA4B88 3C090403 */  lui     $t1, 0x0403                ## $t1 = 04030000
/* 020EC 80BA4B8C 24590008 */  addiu   $t9, $v0, 0x0008           ## $t9 = 00000008
/* 020F0 80BA4B90 AE1902D0 */  sw      $t9, 0x02D0($s0)           ## 000002D0
/* 020F4 80BA4B94 AC400004 */  sw      $zero, 0x0004($v0)         ## 00000004
/* 020F8 80BA4B98 AC440000 */  sw      $a0, 0x0000($v0)           ## 00000000
/* 020FC 80BA4B9C 8E0202D0 */  lw      $v0, 0x02D0($s0)           ## 000002D0
/* 02100 80BA4BA0 2529CF30 */  addiu   $t1, $t1, 0xCF30           ## $t1 = 0402CF30
/* 02104 80BA4BA4 3C0FDE00 */  lui     $t7, 0xDE00                ## $t7 = DE000000
/* 02108 80BA4BA8 24480008 */  addiu   $t0, $v0, 0x0008           ## $t0 = 00000008
/* 0210C 80BA4BAC AE0802D0 */  sw      $t0, 0x02D0($s0)           ## 000002D0
/* 02110 80BA4BB0 AC490004 */  sw      $t1, 0x0004($v0)           ## 00000004
/* 02114 80BA4BB4 AC4F0000 */  sw      $t7, 0x0000($v0)           ## 00000000
/* 02118 80BA4BB8 8E0202D0 */  lw      $v0, 0x02D0($s0)           ## 000002D0
/* 0211C 80BA4BBC 244A0008 */  addiu   $t2, $v0, 0x0008           ## $t2 = 00000008
/* 02120 80BA4BC0 AE0A02D0 */  sw      $t2, 0x02D0($s0)           ## 000002D0
/* 02124 80BA4BC4 AC400004 */  sw      $zero, 0x0004($v0)         ## 00000004
/* 02128 80BA4BC8 AC440000 */  sw      $a0, 0x0000($v0)           ## 00000000
/* 0212C 80BA4BCC 8FAB0064 */  lw      $t3, 0x0064($sp)           
.L80BA4BD0:
/* 02130 80BA4BD0 3C0680BA */  lui     $a2, %hi(D_80BA5B00)       ## $a2 = 80BA0000
/* 02134 80BA4BD4 24C65B00 */  addiu   $a2, $a2, %lo(D_80BA5B00)  ## $a2 = 80BA5B00
/* 02138 80BA4BD8 27A40044 */  addiu   $a0, $sp, 0x0044           ## $a0 = FFFFFFE4
/* 0213C 80BA4BDC 240704D1 */  addiu   $a3, $zero, 0x04D1         ## $a3 = 000004D1
/* 02140 80BA4BE0 0C031AD5 */  jal     Graph_CloseDisps              
/* 02144 80BA4BE4 8D650000 */  lw      $a1, 0x0000($t3)           ## 00000000
/* 02148 80BA4BE8 8FBF001C */  lw      $ra, 0x001C($sp)           
/* 0214C 80BA4BEC 8FB00018 */  lw      $s0, 0x0018($sp)           
/* 02150 80BA4BF0 27BD0060 */  addiu   $sp, $sp, 0x0060           ## $sp = 00000000
/* 02154 80BA4BF4 03E00008 */  jr      $ra                        
/* 02158 80BA4BF8 00000000 */  nop
