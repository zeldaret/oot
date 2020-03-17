glabel func_80AF3F20
/* 019D0 80AF3F20 27BDFF90 */  addiu   $sp, $sp, 0xFF90           ## $sp = FFFFFF90
/* 019D4 80AF3F24 AFBF0024 */  sw      $ra, 0x0024($sp)           
/* 019D8 80AF3F28 AFA40070 */  sw      $a0, 0x0070($sp)           
/* 019DC 80AF3F2C AFA50074 */  sw      $a1, 0x0074($sp)           
/* 019E0 80AF3F30 848202A4 */  lh      $v0, 0x02A4($a0)           ## 000002A4
/* 019E4 80AF3F34 3C1880AF */  lui     $t8, %hi(D_80AF410C)       ## $t8 = 80AF0000
/* 019E8 80AF3F38 3C0680AF */  lui     $a2, %hi(D_80AF5224)       ## $a2 = 80AF0000
/* 019EC 80AF3F3C 00027880 */  sll     $t7, $v0,  2               
/* 019F0 80AF3F40 030FC021 */  addu    $t8, $t8, $t7              
/* 019F4 80AF3F44 8F18410C */  lw      $t8, %lo(D_80AF410C)($t8)  
/* 019F8 80AF3F48 24C65224 */  addiu   $a2, $a2, %lo(D_80AF5224)  ## $a2 = 80AF5224
/* 019FC 80AF3F4C 27A40048 */  addiu   $a0, $sp, 0x0048           ## $a0 = FFFFFFD8
/* 01A00 80AF3F50 AFB80060 */  sw      $t8, 0x0060($sp)           
/* 01A04 80AF3F54 8CA50000 */  lw      $a1, 0x0000($a1)           ## 00000000
/* 01A08 80AF3F58 24070282 */  addiu   $a3, $zero, 0x0282         ## $a3 = 00000282
/* 01A0C 80AF3F5C 0C031AB1 */  jal     func_800C6AC4              
/* 01A10 80AF3F60 AFA50058 */  sw      $a1, 0x0058($sp)           
/* 01A14 80AF3F64 8FA90074 */  lw      $t1, 0x0074($sp)           
/* 01A18 80AF3F68 0C024F46 */  jal     func_80093D18              
/* 01A1C 80AF3F6C 8D240000 */  lw      $a0, 0x0000($t1)           ## 00000000
/* 01A20 80AF3F70 8FA80058 */  lw      $t0, 0x0058($sp)           
/* 01A24 80AF3F74 8FA70060 */  lw      $a3, 0x0060($sp)           
/* 01A28 80AF3F78 3C0BDB06 */  lui     $t3, 0xDB06                ## $t3 = DB060000
/* 01A2C 80AF3F7C 8D0202C0 */  lw      $v0, 0x02C0($t0)           ## 000002C0
/* 01A30 80AF3F80 00076100 */  sll     $t4, $a3,  4               
/* 01A34 80AF3F84 000C6F02 */  srl     $t5, $t4, 28               
/* 01A38 80AF3F88 3C0F8016 */  lui     $t7, 0x8016                ## $t7 = 80160000
/* 01A3C 80AF3F8C 244A0008 */  addiu   $t2, $v0, 0x0008           ## $t2 = 00000008
/* 01A40 80AF3F90 25EF6FA8 */  addiu   $t7, $t7, 0x6FA8           ## $t7 = 80166FA8
/* 01A44 80AF3F94 000D7080 */  sll     $t6, $t5,  2               
/* 01A48 80AF3F98 356B0020 */  ori     $t3, $t3, 0x0020           ## $t3 = DB060020
/* 01A4C 80AF3F9C AD0A02C0 */  sw      $t2, 0x02C0($t0)           ## 000002C0
/* 01A50 80AF3FA0 01CF2021 */  addu    $a0, $t6, $t7              
/* 01A54 80AF3FA4 AC4B0000 */  sw      $t3, 0x0000($v0)           ## 00000000
/* 01A58 80AF3FA8 8C980000 */  lw      $t8, 0x0000($a0)           ## 00000000
/* 01A5C 80AF3FAC 3C0100FF */  lui     $at, 0x00FF                ## $at = 00FF0000
/* 01A60 80AF3FB0 3421FFFF */  ori     $at, $at, 0xFFFF           ## $at = 00FFFFFF
/* 01A64 80AF3FB4 00E12824 */  and     $a1, $a3, $at              
/* 01A68 80AF3FB8 3C068000 */  lui     $a2, 0x8000                ## $a2 = 80000000
/* 01A6C 80AF3FBC 0305C821 */  addu    $t9, $t8, $a1              
/* 01A70 80AF3FC0 03264821 */  addu    $t1, $t9, $a2              
/* 01A74 80AF3FC4 AC490004 */  sw      $t1, 0x0004($v0)           ## 00000004
/* 01A78 80AF3FC8 8D0202C0 */  lw      $v0, 0x02C0($t0)           ## 000002C0
/* 01A7C 80AF3FCC 3C0BDB06 */  lui     $t3, 0xDB06                ## $t3 = DB060000
/* 01A80 80AF3FD0 356B0024 */  ori     $t3, $t3, 0x0024           ## $t3 = DB060024
/* 01A84 80AF3FD4 244A0008 */  addiu   $t2, $v0, 0x0008           ## $t2 = 00000008
/* 01A88 80AF3FD8 AD0A02C0 */  sw      $t2, 0x02C0($t0)           ## 000002C0
/* 01A8C 80AF3FDC AC4B0000 */  sw      $t3, 0x0000($v0)           ## 00000000
/* 01A90 80AF3FE0 8C8C0000 */  lw      $t4, 0x0000($a0)           ## 00000000
/* 01A94 80AF3FE4 241900FF */  addiu   $t9, $zero, 0x00FF         ## $t9 = 000000FF
/* 01A98 80AF3FE8 3C18FB00 */  lui     $t8, 0xFB00                ## $t8 = FB000000
/* 01A9C 80AF3FEC 01856821 */  addu    $t5, $t4, $a1              
/* 01AA0 80AF3FF0 01A67021 */  addu    $t6, $t5, $a2              
/* 01AA4 80AF3FF4 AC4E0004 */  sw      $t6, 0x0004($v0)           ## 00000004
/* 01AA8 80AF3FF8 8D0202C0 */  lw      $v0, 0x02C0($t0)           ## 000002C0
/* 01AAC 80AF3FFC 3C0B8011 */  lui     $t3, 0x8011                ## $t3 = 80110000
/* 01AB0 80AF4000 3C0ADB06 */  lui     $t2, 0xDB06                ## $t2 = DB060000
/* 01AB4 80AF4004 244F0008 */  addiu   $t7, $v0, 0x0008           ## $t7 = 00000008
/* 01AB8 80AF4008 AD0F02C0 */  sw      $t7, 0x02C0($t0)           ## 000002C0
/* 01ABC 80AF400C AC590004 */  sw      $t9, 0x0004($v0)           ## 00000004
/* 01AC0 80AF4010 AC580000 */  sw      $t8, 0x0000($v0)           ## 00000000
/* 01AC4 80AF4014 8D0202C0 */  lw      $v0, 0x02C0($t0)           ## 000002C0
/* 01AC8 80AF4018 354A0030 */  ori     $t2, $t2, 0x0030           ## $t2 = DB060030
/* 01ACC 80AF401C 256B6290 */  addiu   $t3, $t3, 0x6290           ## $t3 = 80116290
/* 01AD0 80AF4020 24490008 */  addiu   $t1, $v0, 0x0008           ## $t1 = 00000008
/* 01AD4 80AF4024 AD0902C0 */  sw      $t1, 0x02C0($t0)           ## 000002C0
/* 01AD8 80AF4028 AC4B0004 */  sw      $t3, 0x0004($v0)           ## 00000004
/* 01ADC 80AF402C AC4A0000 */  sw      $t2, 0x0000($v0)           ## 00000000
/* 01AE0 80AF4030 8FA30070 */  lw      $v1, 0x0070($sp)           
/* 01AE4 80AF4034 8FA40074 */  lw      $a0, 0x0074($sp)           
/* 01AE8 80AF4038 2462014C */  addiu   $v0, $v1, 0x014C           ## $v0 = 0000014C
/* 01AEC 80AF403C 8C450004 */  lw      $a1, 0x0004($v0)           ## 00000150
/* 01AF0 80AF4040 8C460020 */  lw      $a2, 0x0020($v0)           ## 0000016C
/* 01AF4 80AF4044 90470002 */  lbu     $a3, 0x0002($v0)           ## 0000014E
/* 01AF8 80AF4048 AFA00014 */  sw      $zero, 0x0014($sp)         
/* 01AFC 80AF404C AFA00010 */  sw      $zero, 0x0010($sp)         
/* 01B00 80AF4050 0C0286B2 */  jal     func_800A1AC8              
/* 01B04 80AF4054 AFA30018 */  sw      $v1, 0x0018($sp)           
/* 01B08 80AF4058 8FAC0074 */  lw      $t4, 0x0074($sp)           
/* 01B0C 80AF405C 3C0680AF */  lui     $a2, %hi(D_80AF5234)       ## $a2 = 80AF0000
/* 01B10 80AF4060 24C65234 */  addiu   $a2, $a2, %lo(D_80AF5234)  ## $a2 = 80AF5234
/* 01B14 80AF4064 27A40048 */  addiu   $a0, $sp, 0x0048           ## $a0 = FFFFFFD8
/* 01B18 80AF4068 24070297 */  addiu   $a3, $zero, 0x0297         ## $a3 = 00000297
/* 01B1C 80AF406C 0C031AD5 */  jal     func_800C6B54              
/* 01B20 80AF4070 8D850000 */  lw      $a1, 0x0000($t4)           ## 00000000
/* 01B24 80AF4074 8FBF0024 */  lw      $ra, 0x0024($sp)           
/* 01B28 80AF4078 27BD0070 */  addiu   $sp, $sp, 0x0070           ## $sp = 00000000
/* 01B2C 80AF407C 03E00008 */  jr      $ra                        
/* 01B30 80AF4080 00000000 */  nop


