glabel func_80A6AD84
/* 019B4 80A6AD84 27BDFFC0 */  addiu   $sp, $sp, 0xFFC0           ## $sp = FFFFFFC0
/* 019B8 80A6AD88 AFBF0014 */  sw      $ra, 0x0014($sp)           
/* 019BC 80A6AD8C AFA40040 */  sw      $a0, 0x0040($sp)           
/* 019C0 80A6AD90 AFA50044 */  sw      $a1, 0x0044($sp)           
/* 019C4 80A6AD94 AFA60048 */  sw      $a2, 0x0048($sp)           
/* 019C8 80A6AD98 AFA7004C */  sw      $a3, 0x004C($sp)           
/* 019CC 80A6AD9C 8CA50000 */  lw      $a1, 0x0000($a1)           ## 00000000
/* 019D0 80A6ADA0 3C0680A7 */  lui     $a2, %hi(D_80A6AFB0)       ## $a2 = 80A70000
/* 019D4 80A6ADA4 24C6AFB0 */  addiu   $a2, $a2, %lo(D_80A6AFB0)  ## $a2 = 80A6AFB0
/* 019D8 80A6ADA8 240705BB */  addiu   $a3, $zero, 0x05BB         ## $a3 = 000005BB
/* 019DC 80A6ADAC 27A40028 */  addiu   $a0, $sp, 0x0028           ## $a0 = FFFFFFE8
/* 019E0 80A6ADB0 0C031AB1 */  jal     Graph_OpenDisps              
/* 019E4 80A6ADB4 AFA50038 */  sw      $a1, 0x0038($sp)           
/* 019E8 80A6ADB8 8FAF0048 */  lw      $t7, 0x0048($sp)           
/* 019EC 80A6ADBC 2401000D */  addiu   $at, $zero, 0x000D         ## $at = 0000000D
/* 019F0 80A6ADC0 8FA80038 */  lw      $t0, 0x0038($sp)           
/* 019F4 80A6ADC4 15E1001D */  bne     $t7, $at, .L80A6AE3C       
/* 019F8 80A6ADC8 3C0680A7 */  lui     $a2, %hi(D_80A6AFCC)       ## $a2 = 80A70000
/* 019FC 80A6ADCC 8FB80040 */  lw      $t8, 0x0040($sp)           
/* 01A00 80A6ADD0 3C0580A7 */  lui     $a1, %hi(D_80A6AFA0)       ## $a1 = 80A70000
/* 01A04 80A6ADD4 8D0302C0 */  lw      $v1, 0x02C0($t0)           ## 000002C0
/* 01A08 80A6ADD8 931901EC */  lbu     $t9, 0x01EC($t8)           ## 000001EC
/* 01A0C 80A6ADDC 3C0ADB06 */  lui     $t2, 0xDB06                ## $t2 = DB060000
/* 01A10 80A6ADE0 24690008 */  addiu   $t1, $v1, 0x0008           ## $t1 = 00000008
/* 01A14 80A6ADE4 00B92821 */  addu    $a1, $a1, $t9              
/* 01A18 80A6ADE8 90A5AFA0 */  lbu     $a1, %lo(D_80A6AFA0)($a1)  
/* 01A1C 80A6ADEC AD0902C0 */  sw      $t1, 0x02C0($t0)           ## 000002C0
/* 01A20 80A6ADF0 354A0020 */  ori     $t2, $t2, 0x0020           ## $t2 = DB060020
/* 01A24 80A6ADF4 3C0480A7 */  lui     $a0, %hi(D_80A6AF94)       ## $a0 = 80A70000
/* 01A28 80A6ADF8 00055880 */  sll     $t3, $a1,  2               
/* 01A2C 80A6ADFC 008B2021 */  addu    $a0, $a0, $t3              
/* 01A30 80A6AE00 AC6A0000 */  sw      $t2, 0x0000($v1)           ## 00000000
/* 01A34 80A6AE04 8C84AF94 */  lw      $a0, %lo(D_80A6AF94)($a0)  
/* 01A38 80A6AE08 3C188016 */  lui     $t8, 0x8016                ## $t8 = 80160000
/* 01A3C 80A6AE0C 3C0100FF */  lui     $at, 0x00FF                ## $at = 00FF0000
/* 01A40 80A6AE10 00046900 */  sll     $t5, $a0,  4               
/* 01A44 80A6AE14 000D7702 */  srl     $t6, $t5, 28               
/* 01A48 80A6AE18 000E7880 */  sll     $t7, $t6,  2               
/* 01A4C 80A6AE1C 030FC021 */  addu    $t8, $t8, $t7              
/* 01A50 80A6AE20 8F186FA8 */  lw      $t8, 0x6FA8($t8)           ## 80166FA8
/* 01A54 80A6AE24 3421FFFF */  ori     $at, $at, 0xFFFF           ## $at = 00FFFFFF
/* 01A58 80A6AE28 00816024 */  and     $t4, $a0, $at              
/* 01A5C 80A6AE2C 3C018000 */  lui     $at, 0x8000                ## $at = 80000000
/* 01A60 80A6AE30 0198C821 */  addu    $t9, $t4, $t8              
/* 01A64 80A6AE34 03214821 */  addu    $t1, $t9, $at              
/* 01A68 80A6AE38 AC690004 */  sw      $t1, 0x0004($v1)           ## 00000004
.L80A6AE3C:
/* 01A6C 80A6AE3C 8FAA0044 */  lw      $t2, 0x0044($sp)           
/* 01A70 80A6AE40 27A40028 */  addiu   $a0, $sp, 0x0028           ## $a0 = FFFFFFE8
/* 01A74 80A6AE44 24C6AFCC */  addiu   $a2, $a2, %lo(D_80A6AFCC)  ## $a2 = 80A6AFCC
/* 01A78 80A6AE48 240705C7 */  addiu   $a3, $zero, 0x05C7         ## $a3 = 000005C7
/* 01A7C 80A6AE4C 0C031AD5 */  jal     Graph_CloseDisps              
/* 01A80 80A6AE50 8D450000 */  lw      $a1, 0x0000($t2)           ## DB060020
/* 01A84 80A6AE54 8FBF0014 */  lw      $ra, 0x0014($sp)           
/* 01A88 80A6AE58 27BD0040 */  addiu   $sp, $sp, 0x0040           ## $sp = 00000000
/* 01A8C 80A6AE5C 24020001 */  addiu   $v0, $zero, 0x0001         ## $v0 = 00000001
/* 01A90 80A6AE60 03E00008 */  jr      $ra                        
/* 01A94 80A6AE64 00000000 */  nop


