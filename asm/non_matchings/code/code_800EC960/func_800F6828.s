glabel func_800F6828
/* B6D9C8 800F6828 27BDFFD8 */  addiu $sp, $sp, -0x28
/* B6D9CC 800F682C AFA40028 */  sw    $a0, 0x28($sp)
/* B6D9D0 800F6830 308400FF */  andi  $a0, $a0, 0xff
/* B6D9D4 800F6834 3C018013 */  lui   $at, %hi(D_80130648) # $at, 0x8013
/* B6D9D8 800F6838 A0240648 */  sb    $a0, %lo(D_80130648)($at)
/* B6D9DC 800F683C 3C0E8017 */  lui   $t6, %hi(D_8016E9A4) # $t6, 0x8017
/* B6D9E0 800F6840 95CEE9A4 */  lhu   $t6, %lo(D_8016E9A4)($t6)
/* B6D9E4 800F6844 3C018013 */  lui   $at, %hi(D_80130640) # $at, 0x8013
/* B6D9E8 800F6848 A0240640 */  sb    $a0, %lo(D_80130640)($at)
/* B6D9EC 800F684C 24010001 */  li    $at, 1
/* B6D9F0 800F6850 AFBF0024 */  sw    $ra, 0x24($sp)
/* B6D9F4 800F6854 AFB20020 */  sw    $s2, 0x20($sp)
/* B6D9F8 800F6858 AFB1001C */  sw    $s1, 0x1c($sp)
/* B6D9FC 800F685C 15C10011 */  bne   $t6, $at, .L800F68A4
/* B6DA00 800F6860 AFB00018 */   sw    $s0, 0x18($sp)
/* B6DA04 800F6864 00048E00 */  sll   $s1, $a0, 0x18
/* B6DA08 800F6868 00118E03 */  sra   $s1, $s1, 0x18
/* B6DA0C 800F686C 00008025 */  move  $s0, $zero
/* B6DA10 800F6870 3C120600 */  lui   $s2, 0x600
/* B6DA14 800F6874 320F00FF */  andi  $t7, $s0, 0xff
.L800F6878:
/* B6DA18 800F6878 000FC200 */  sll   $t8, $t7, 8
/* B6DA1C 800F687C 03122025 */  or    $a0, $t8, $s2
/* B6DA20 800F6880 00112E00 */  sll   $a1, $s1, 0x18
/* B6DA24 800F6884 00052E03 */  sra   $a1, $a1, 0x18
/* B6DA28 800F6888 0C0396C8 */  jal   func_800E5B20
/* B6DA2C 800F688C 34840006 */   ori   $a0, $a0, 6
/* B6DA30 800F6890 26100001 */  addiu $s0, $s0, 1
/* B6DA34 800F6894 321000FF */  andi  $s0, $s0, 0xff
/* B6DA38 800F6898 2A010010 */  slti  $at, $s0, 0x10
/* B6DA3C 800F689C 5420FFF6 */  bnezl $at, .L800F6878
/* B6DA40 800F68A0 320F00FF */   andi  $t7, $s0, 0xff
.L800F68A4:
/* B6DA44 800F68A4 8FBF0024 */  lw    $ra, 0x24($sp)
/* B6DA48 800F68A8 8FB00018 */  lw    $s0, 0x18($sp)
/* B6DA4C 800F68AC 8FB1001C */  lw    $s1, 0x1c($sp)
/* B6DA50 800F68B0 8FB20020 */  lw    $s2, 0x20($sp)
/* B6DA54 800F68B4 03E00008 */  jr    $ra
/* B6DA58 800F68B8 27BD0028 */   addiu $sp, $sp, 0x28

