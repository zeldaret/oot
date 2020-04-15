glabel func_80A4BD04
/* 00064 80A4BD04 27BDFFD0 */  addiu   $sp, $sp, 0xFFD0           ## $sp = FFFFFFD0
/* 00068 80A4BD08 AFB00020 */  sw      $s0, 0x0020($sp)           
/* 0006C 80A4BD0C 00808025 */  or      $s0, $a0, $zero            ## $s0 = 00000000
/* 00070 80A4BD10 AFA50034 */  sw      $a1, 0x0034($sp)           
/* 00074 80A4BD14 00A02025 */  or      $a0, $a1, $zero            ## $a0 = 00000000
/* 00078 80A4BD18 AFBF0024 */  sw      $ra, 0x0024($sp)           
/* 0007C 80A4BD1C 26050150 */  addiu   $a1, $s0, 0x0150           ## $a1 = 00000150
/* 00080 80A4BD20 0C016EFE */  jal     func_8005BBF8              
/* 00084 80A4BD24 AFA50028 */  sw      $a1, 0x0028($sp)           
/* 00088 80A4BD28 3C0780A5 */  lui     $a3, %hi(D_80A4DEA4)       ## $a3 = 80A50000
/* 0008C 80A4BD2C 260E0170 */  addiu   $t6, $s0, 0x0170           ## $t6 = 00000170
/* 00090 80A4BD30 8FA50028 */  lw      $a1, 0x0028($sp)           
/* 00094 80A4BD34 AFAE0010 */  sw      $t6, 0x0010($sp)           
/* 00098 80A4BD38 24E7DEA4 */  addiu   $a3, $a3, %lo(D_80A4DEA4)  ## $a3 = 80A4DEA4
/* 0009C 80A4BD3C 8FA40034 */  lw      $a0, 0x0034($sp)           
/* 000A0 80A4BD40 0C017014 */  jal     func_8005C050              
/* 000A4 80A4BD44 02003025 */  or      $a2, $s0, $zero            ## $a2 = 00000000
/* 000A8 80A4BD48 0C292F28 */  jal     func_80A4BCA0              
/* 000AC 80A4BD4C 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 000B0 80A4BD50 8E18016C */  lw      $t8, 0x016C($s0)           ## 0000016C
/* 000B4 80A4BD54 240F003A */  addiu   $t7, $zero, 0x003A         ## $t7 = 0000003A
/* 000B8 80A4BD58 A70F0036 */  sh      $t7, 0x0036($t8)           ## 00000036
/* 000BC 80A4BD5C 8FBF0024 */  lw      $ra, 0x0024($sp)           
/* 000C0 80A4BD60 8FB00020 */  lw      $s0, 0x0020($sp)           
/* 000C4 80A4BD64 27BD0030 */  addiu   $sp, $sp, 0x0030           ## $sp = 00000000
/* 000C8 80A4BD68 03E00008 */  jr      $ra                        
/* 000CC 80A4BD6C 00000000 */  nop
