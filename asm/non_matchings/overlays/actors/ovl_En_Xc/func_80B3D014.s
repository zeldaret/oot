glabel func_80B3D014
/* 00E34 80B3D014 3C0E8016 */  lui     $t6, 0x8016                ## $t6 = 80160000
/* 00E38 80B3D018 8DCEF9C0 */  lw      $t6, -0x0640($t6)          ## 8015F9C0
/* 00E3C 80B3D01C 27BDFFB0 */  addiu   $sp, $sp, 0xFFB0           ## $sp = FFFFFFB0
/* 00E40 80B3D020 24010004 */  addiu   $at, $zero, 0x0004         ## $at = 00000004
/* 00E44 80B3D024 AFBF0014 */  sw      $ra, 0x0014($sp)           
/* 00E48 80B3D028 AFA40050 */  sw      $a0, 0x0050($sp)           
/* 00E4C 80B3D02C 15C10036 */  bne     $t6, $at, .L80B3D108       
/* 00E50 80B3D030 AFA50054 */  sw      $a1, 0x0054($sp)           
/* 00E54 80B3D034 84A200A4 */  lh      $v0, 0x00A4($a1)           ## 000000A4
/* 00E58 80B3D038 2401005C */  addiu   $at, $zero, 0x005C         ## $at = 0000005C
/* 00E5C 80B3D03C 54410033 */  bnel    $v0, $at, .L80B3D10C       
/* 00E60 80B3D040 8FBF0014 */  lw      $ra, 0x0014($sp)           
/* 00E64 80B3D044 94A31D74 */  lhu     $v1, 0x1D74($a1)           ## 00001D74
/* 00E68 80B3D048 24010077 */  addiu   $at, $zero, 0x0077         ## $at = 00000077
/* 00E6C 80B3D04C 3C1880B4 */  lui     $t8, %hi(D_80B41D78)       ## $t8 = 80B40000
/* 00E70 80B3D050 14610016 */  bne     $v1, $at, .L80B3D0AC       
/* 00E74 80B3D054 27181D78 */  addiu   $t8, $t8, %lo(D_80B41D78)  ## $t8 = 80B41D78
/* 00E78 80B3D058 8F080000 */  lw      $t0, 0x0000($t8)           ## 80B41D78
/* 00E7C 80B3D05C 27A50030 */  addiu   $a1, $sp, 0x0030           ## $a1 = FFFFFFE0
/* 00E80 80B3D060 3C010001 */  lui     $at, 0x0001                ## $at = 00010000
/* 00E84 80B3D064 ACA80000 */  sw      $t0, 0x0000($a1)           ## FFFFFFE0
/* 00E88 80B3D068 8F190004 */  lw      $t9, 0x0004($t8)           ## 80B41D7C
/* 00E8C 80B3D06C 34211D60 */  ori     $at, $at, 0x1D60           ## $at = 00011D60
/* 00E90 80B3D070 3C0680B4 */  lui     $a2, %hi(D_80B42D90)       ## $a2 = 80B40000
/* 00E94 80B3D074 ACB90004 */  sw      $t9, 0x0004($a1)           ## FFFFFFE4
/* 00E98 80B3D078 8F080008 */  lw      $t0, 0x0008($t8)           ## 80B41D80
/* 00E9C 80B3D07C 24C62D90 */  addiu   $a2, $a2, %lo(D_80B42D90)  ## $a2 = 80B42D90
/* 00EA0 80B3D080 27A7003C */  addiu   $a3, $sp, 0x003C           ## $a3 = FFFFFFEC
/* 00EA4 80B3D084 ACA80008 */  sw      $t0, 0x0008($a1)           ## FFFFFFE8
/* 00EA8 80B3D088 8FA40054 */  lw      $a0, 0x0054($sp)           
/* 00EAC 80B3D08C 0C029B84 */  jal     func_800A6E10              
/* 00EB0 80B3D090 00812021 */  addu    $a0, $a0, $at              
/* 00EB4 80B3D094 3C0480B4 */  lui     $a0, %hi(D_80B42D90)       ## $a0 = 80B40000
/* 00EB8 80B3D098 24842D90 */  addiu   $a0, $a0, %lo(D_80B42D90)  ## $a0 = 80B42D90
/* 00EBC 80B3D09C 0C01E245 */  jal     func_80078914              
/* 00EC0 80B3D0A0 240528A1 */  addiu   $a1, $zero, 0x28A1         ## $a1 = 000028A1
/* 00EC4 80B3D0A4 10000019 */  beq     $zero, $zero, .L80B3D10C   
/* 00EC8 80B3D0A8 8FBF0014 */  lw      $ra, 0x0014($sp)           
.L80B3D0AC:
/* 00ECC 80B3D0AC 240100A4 */  addiu   $at, $zero, 0x00A4         ## $at = 000000A4
/* 00ED0 80B3D0B0 14610015 */  bne     $v1, $at, .L80B3D108       
/* 00ED4 80B3D0B4 3C0980B4 */  lui     $t1, %hi(D_80B41D84)       ## $t1 = 80B40000
/* 00ED8 80B3D0B8 25291D84 */  addiu   $t1, $t1, %lo(D_80B41D84)  ## $t1 = 80B41D84
/* 00EDC 80B3D0BC 8D2B0000 */  lw      $t3, 0x0000($t1)           ## 80B41D84
/* 00EE0 80B3D0C0 27A50024 */  addiu   $a1, $sp, 0x0024           ## $a1 = FFFFFFD4
/* 00EE4 80B3D0C4 3C010001 */  lui     $at, 0x0001                ## $at = 00010000
/* 00EE8 80B3D0C8 ACAB0000 */  sw      $t3, 0x0000($a1)           ## FFFFFFD4
/* 00EEC 80B3D0CC 8D2A0004 */  lw      $t2, 0x0004($t1)           ## 80B41D88
/* 00EF0 80B3D0D0 34211D60 */  ori     $at, $at, 0x1D60           ## $at = 00011D60
/* 00EF4 80B3D0D4 3C0680B4 */  lui     $a2, %hi(D_80B42D90)       ## $a2 = 80B40000
/* 00EF8 80B3D0D8 ACAA0004 */  sw      $t2, 0x0004($a1)           ## FFFFFFD8
/* 00EFC 80B3D0DC 8D2B0008 */  lw      $t3, 0x0008($t1)           ## 80B41D8C
/* 00F00 80B3D0E0 24C62D90 */  addiu   $a2, $a2, %lo(D_80B42D90)  ## $a2 = 80B42D90
/* 00F04 80B3D0E4 27A7003C */  addiu   $a3, $sp, 0x003C           ## $a3 = FFFFFFEC
/* 00F08 80B3D0E8 ACAB0008 */  sw      $t3, 0x0008($a1)           ## FFFFFFDC
/* 00F0C 80B3D0EC 8FA40054 */  lw      $a0, 0x0054($sp)           
/* 00F10 80B3D0F0 0C029B84 */  jal     func_800A6E10              
/* 00F14 80B3D0F4 00812021 */  addu    $a0, $a0, $at              
/* 00F18 80B3D0F8 3C0480B4 */  lui     $a0, %hi(D_80B42D90)       ## $a0 = 80B40000
/* 00F1C 80B3D0FC 24842D90 */  addiu   $a0, $a0, %lo(D_80B42D90)  ## $a0 = 80B42D90
/* 00F20 80B3D100 0C01E245 */  jal     func_80078914              
/* 00F24 80B3D104 24050802 */  addiu   $a1, $zero, 0x0802         ## $a1 = 00000802
.L80B3D108:
/* 00F28 80B3D108 8FBF0014 */  lw      $ra, 0x0014($sp)           
.L80B3D10C:
/* 00F2C 80B3D10C 27BD0050 */  addiu   $sp, $sp, 0x0050           ## $sp = 00000000
/* 00F30 80B3D110 03E00008 */  jr      $ra                        
/* 00F34 80B3D114 00000000 */  nop


