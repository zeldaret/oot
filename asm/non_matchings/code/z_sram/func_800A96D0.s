glabel func_800A96D0
/* B20870 800A96D0 27BDFFD8 */  addiu $sp, $sp, -0x28
/* B20874 800A96D4 AFBF001C */  sw    $ra, 0x1c($sp)
/* B20878 800A96D8 AFB00018 */  sw    $s0, 0x18($sp)
/* B2087C 800A96DC AFA40028 */  sw    $a0, 0x28($sp)
/* B20880 800A96E0 0C02A068 */  jal   func_800A81A0
/* B20884 800A96E4 AFA5002C */   sw    $a1, 0x2c($sp)
/* B20888 800A96E8 8FA20028 */  lw    $v0, 0x28($sp)
/* B2088C 800A96EC 3C010001 */  lui   $at, (0x00018000 >> 16) # lui $at, 1
/* B20890 800A96F0 34218000 */  ori   $at, (0x00018000 & 0xFFFF) # ori $at, $at, 0x8000
/* B20894 800A96F4 00411021 */  addu  $v0, $v0, $at
/* B20898 800A96F8 844E4A46 */  lh    $t6, 0x4a46($v0)
/* B2089C 800A96FC 8FB8002C */  lw    $t8, 0x2c($sp)
/* B208A0 800A9700 3C108013 */  lui   $s0, %hi(D_8012A4E0)
/* B208A4 800A9704 000E7840 */  sll   $t7, $t6, 1
/* B208A8 800A9708 020F8021 */  addu  $s0, $s0, $t7
/* B208AC 800A970C 9610A4E0 */  lhu   $s0, %lo(D_8012A4E0)($s0)
/* B208B0 800A9710 8F190000 */  lw    $t9, ($t8)
/* B208B4 800A9714 3C058016 */  lui   $a1, %hi(gSaveContext) # $a1, 0x8016
/* B208B8 800A9718 24A5E660 */  addiu $a1, %lo(gSaveContext) # addiu $a1, $a1, -0x19a0
/* B208BC 800A971C AFA20020 */  sw    $v0, 0x20($sp)
/* B208C0 800A9720 24061354 */  li    $a2, 4948
/* B208C4 800A9724 0C01A508 */  jal   MemCopy
/* B208C8 800A9728 03302021 */   addu  $a0, $t9, $s0
/* B208CC 800A972C 3C010800 */  lui   $at, 0x800
/* B208D0 800A9730 3C058016 */  lui   $a1, %hi(gSaveContext) # $a1, 0x8016
/* B208D4 800A9734 24A5E660 */  addiu $a1, %lo(gSaveContext) # addiu $a1, $a1, -0x19a0
/* B208D8 800A9738 02012021 */  addu  $a0, $s0, $at
/* B208DC 800A973C 24061450 */  li    $a2, 5200
/* B208E0 800A9740 0C02A7A8 */  jal   Sram_ReadWrite
/* B208E4 800A9744 24070001 */   li    $a3, 1
/* B208E8 800A9748 8FA90020 */  lw    $t1, 0x20($sp)
/* B208EC 800A974C 8FAC002C */  lw    $t4, 0x2c($sp)
/* B208F0 800A9750 8FA80028 */  lw    $t0, 0x28($sp)
/* B208F4 800A9754 852A4A46 */  lh    $t2, 0x4a46($t1)
/* B208F8 800A9758 8D8D0000 */  lw    $t5, ($t4)
/* B208FC 800A975C 3C010001 */  lui   $at, (0x0001CA28 >> 16) # lui $at, 1
/* B20900 800A9760 000A5840 */  sll   $t3, $t2, 1
/* B20904 800A9764 3421CA28 */  ori   $at, (0x0001CA28 & 0xFFFF) # ori $at, $at, 0xca28
/* B20908 800A9768 010B2021 */  addu  $a0, $t0, $t3
/* B2090C 800A976C 01B02821 */  addu  $a1, $t5, $s0
/* B20910 800A9770 24A5002C */  addiu $a1, $a1, 0x2c
/* B20914 800A9774 00812021 */  addu  $a0, $a0, $at
/* B20918 800A9778 0C01A508 */  jal   MemCopy
/* B2091C 800A977C 24060002 */   li    $a2, 2
/* B20920 800A9780 8FAE0020 */  lw    $t6, 0x20($sp)
/* B20924 800A9784 8FB9002C */  lw    $t9, 0x2c($sp)
/* B20928 800A9788 3C108013 */  lui   $s0, %hi(D_8012A4E6)
/* B2092C 800A978C 85CF4A46 */  lh    $t7, 0x4a46($t6)
/* B20930 800A9790 8F290000 */  lw    $t1, ($t9)
/* B20934 800A9794 3C058016 */  lui   $a1, %hi(gSaveContext) # $a1, 0x8016
/* B20938 800A9798 000FC040 */  sll   $t8, $t7, 1
/* B2093C 800A979C 02188021 */  addu  $s0, $s0, $t8
/* B20940 800A97A0 9610A4E6 */  lhu   $s0, %lo(D_8012A4E6)($s0)
/* B20944 800A97A4 24A5E660 */  addiu $a1, %lo(gSaveContext) # addiu $a1, $a1, -0x19a0
/* B20948 800A97A8 24061354 */  li    $a2, 4948
/* B2094C 800A97AC 0C01A508 */  jal   MemCopy
/* B20950 800A97B0 01302021 */   addu  $a0, $t1, $s0
/* B20954 800A97B4 3C010800 */  lui   $at, 0x800
/* B20958 800A97B8 3C058016 */  lui   $a1, %hi(gSaveContext) # $a1, 0x8016
/* B2095C 800A97BC 24A5E660 */  addiu $a1, %lo(gSaveContext) # addiu $a1, $a1, -0x19a0
/* B20960 800A97C0 02012021 */  addu  $a0, $s0, $at
/* B20964 800A97C4 24061450 */  li    $a2, 5200
/* B20968 800A97C8 0C02A7A8 */  jal   Sram_ReadWrite
/* B2096C 800A97CC 24070001 */   li    $a3, 1
/* B20970 800A97D0 3C048014 */  lui   $a0, %hi(D_80140E2C) # $a0, 0x8014
/* B20974 800A97D4 0C00084C */  jal   osSyncPrintf
/* B20978 800A97D8 24840E2C */   addiu $a0, %lo(D_80140E2C) # addiu $a0, $a0, 0xe2c
/* B2097C 800A97DC 8FBF001C */  lw    $ra, 0x1c($sp)
/* B20980 800A97E0 8FB00018 */  lw    $s0, 0x18($sp)
/* B20984 800A97E4 27BD0028 */  addiu $sp, $sp, 0x28
/* B20988 800A97E8 03E00008 */  jr    $ra
/* B2098C 800A97EC 00000000 */   nop   

