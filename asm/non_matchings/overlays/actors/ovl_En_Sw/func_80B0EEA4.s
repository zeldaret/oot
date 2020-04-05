glabel func_80B0EEA4
/* 030F4 80B0EEA4 27BDFFC8 */  addiu   $sp, $sp, 0xFFC8           ## $sp = FFFFFFC8
/* 030F8 80B0EEA8 AFBF0014 */  sw      $ra, 0x0014($sp)           
/* 030FC 80B0EEAC AFA40038 */  sw      $a0, 0x0038($sp)           
/* 03100 80B0EEB0 8C850000 */  lw      $a1, 0x0000($a0)           ## 00000000
/* 03104 80B0EEB4 3C0680B1 */  lui     $a2, %hi(D_80B0F1E0)       ## $a2 = 80B10000
/* 03108 80B0EEB8 24C6F1E0 */  addiu   $a2, $a2, %lo(D_80B0F1E0)  ## $a2 = 80B0F1E0
/* 0310C 80B0EEBC 27A40020 */  addiu   $a0, $sp, 0x0020           ## $a0 = FFFFFFE8
/* 03110 80B0EEC0 2407089D */  addiu   $a3, $zero, 0x089D         ## $a3 = 0000089D
/* 03114 80B0EEC4 0C031AB1 */  jal     Graph_OpenDisps              
/* 03118 80B0EEC8 AFA50030 */  sw      $a1, 0x0030($sp)           
/* 0311C 80B0EECC 8FAF0030 */  lw      $t7, 0x0030($sp)           
/* 03120 80B0EED0 8FA40038 */  lw      $a0, 0x0038($sp)           
/* 03124 80B0EED4 0C02F228 */  jal     func_800BC8A0              
/* 03128 80B0EED8 8DE502C0 */  lw      $a1, 0x02C0($t7)           ## 000002C0
/* 0312C 80B0EEDC 8FB80030 */  lw      $t8, 0x0030($sp)           
/* 03130 80B0EEE0 3C0680B1 */  lui     $a2, %hi(D_80B0F1F0)       ## $a2 = 80B10000
/* 03134 80B0EEE4 24C6F1F0 */  addiu   $a2, $a2, %lo(D_80B0F1F0)  ## $a2 = 80B0F1F0
/* 03138 80B0EEE8 AF0202C0 */  sw      $v0, 0x02C0($t8)           ## 000002C0
/* 0313C 80B0EEEC 8FB90038 */  lw      $t9, 0x0038($sp)           
/* 03140 80B0EEF0 27A40020 */  addiu   $a0, $sp, 0x0020           ## $a0 = FFFFFFE8
/* 03144 80B0EEF4 2407089F */  addiu   $a3, $zero, 0x089F         ## $a3 = 0000089F
/* 03148 80B0EEF8 0C031AD5 */  jal     Graph_CloseDisps              
/* 0314C 80B0EEFC 8F250000 */  lw      $a1, 0x0000($t9)           ## 00000000
/* 03150 80B0EF00 8FBF0014 */  lw      $ra, 0x0014($sp)           
/* 03154 80B0EF04 27BD0038 */  addiu   $sp, $sp, 0x0038           ## $sp = 00000000
/* 03158 80B0EF08 03E00008 */  jr      $ra                        
/* 0315C 80B0EF0C 00000000 */  nop


