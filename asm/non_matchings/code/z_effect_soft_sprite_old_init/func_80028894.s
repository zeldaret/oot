glabel func_80028894
/* A9FA34 80028894 27BDFFD8 */  addiu $sp, $sp, -0x28
/* A9FA38 80028898 AFBF001C */  sw    $ra, 0x1c($sp)
/* A9FA3C 8002889C AFB00018 */  sw    $s0, 0x18($sp)
/* A9FA40 800288A0 00C08025 */  move  $s0, $a2
/* A9FA44 800288A4 AFA40028 */  sw    $a0, 0x28($sp)
/* A9FA48 800288A8 AFA5002C */  sw    $a1, 0x2c($sp)
/* A9FA4C 800288AC 0C03F66B */  jal   Math_Rand_ZeroOne
/* A9FA50 800288B0 AFA70034 */   sw    $a3, 0x34($sp)
/* A9FA54 800288B4 C7A4002C */  lwc1  $f4, 0x2c($sp)
/* A9FA58 800288B8 46040182 */  mul.s $f6, $f0, $f4
/* A9FA5C 800288BC 0C03F66B */  jal   Math_Rand_ZeroOne
/* A9FA60 800288C0 E7A60020 */   swc1  $f6, 0x20($sp)
/* A9FA64 800288C4 3C014780 */  li    $at, 0x47800000 # 0.000000
/* A9FA68 800288C8 44814000 */  mtc1  $at, $f8
/* A9FA6C 800288CC 8FAF0028 */  lw    $t7, 0x28($sp)
/* A9FA70 800288D0 46080282 */  mul.s $f10, $f0, $f8
/* A9FA74 800288D4 4600540D */  trunc.w.s $f16, $f10
/* A9FA78 800288D8 44028000 */  mfc1  $v0, $f16
/* A9FA7C 800288DC 00000000 */  nop   
/* A9FA80 800288E0 A7A20026 */  sh    $v0, 0x26($sp)
/* A9FA84 800288E4 8DF90000 */  lw    $t9, ($t7)
/* A9FA88 800288E8 00022400 */  sll   $a0, $v0, 0x10
/* A9FA8C 800288EC 00042403 */  sra   $a0, $a0, 0x10
/* A9FA90 800288F0 AE190000 */  sw    $t9, ($s0)
/* A9FA94 800288F4 8DF80004 */  lw    $t8, 4($t7)
/* A9FA98 800288F8 AE180004 */  sw    $t8, 4($s0)
/* A9FA9C 800288FC 8DF90008 */  lw    $t9, 8($t7)
/* A9FAA0 80028900 0C01DE1C */  jal   Math_Sins
/* A9FAA4 80028904 AE190008 */   sw    $t9, 8($s0)
/* A9FAA8 80028908 C7A40020 */  lwc1  $f4, 0x20($sp)
/* A9FAAC 8002890C C6120000 */  lwc1  $f18, ($s0)
/* A9FAB0 80028910 46040182 */  mul.s $f6, $f0, $f4
/* A9FAB4 80028914 46069200 */  add.s $f8, $f18, $f6
/* A9FAB8 80028918 E6080000 */  swc1  $f8, ($s0)
/* A9FABC 8002891C 0C01DE0D */  jal   Math_Coss
/* A9FAC0 80028920 87A40026 */   lh    $a0, 0x26($sp)
/* A9FAC4 80028924 C7B00020 */  lwc1  $f16, 0x20($sp)
/* A9FAC8 80028928 C60A0008 */  lwc1  $f10, 8($s0)
/* A9FACC 8002892C 3C013F80 */  li    $at, 0x3F800000 # 0.000000
/* A9FAD0 80028930 46100102 */  mul.s $f4, $f0, $f16
/* A9FAD4 80028934 44813000 */  mtc1  $at, $f6
/* A9FAD8 80028938 46045480 */  add.s $f18, $f10, $f4
/* A9FADC 8002893C E6120008 */  swc1  $f18, 8($s0)
/* A9FAE0 80028940 8FA80034 */  lw    $t0, 0x34($sp)
/* A9FAE4 80028944 E5060004 */  swc1  $f6, 4($t0)
/* A9FAE8 80028948 0C01DE1C */  jal   Math_Sins
/* A9FAEC 8002894C 87A40026 */   lh    $a0, 0x26($sp)
/* A9FAF0 80028950 8FA90034 */  lw    $t1, 0x34($sp)
/* A9FAF4 80028954 E5200000 */  swc1  $f0, ($t1)
/* A9FAF8 80028958 0C01DE0D */  jal   Math_Coss
/* A9FAFC 8002895C 87A40026 */   lh    $a0, 0x26($sp)
/* A9FB00 80028960 8FA20038 */  lw    $v0, 0x38($sp)
/* A9FB04 80028964 8FAA0034 */  lw    $t2, 0x34($sp)
/* A9FB08 80028968 44801000 */  mtc1  $zero, $f2
/* A9FB0C 8002896C E5400008 */  swc1  $f0, 8($t2)
/* A9FB10 80028970 E4420000 */  swc1  $f2, ($v0)
/* A9FB14 80028974 E4420004 */  swc1  $f2, 4($v0)
/* A9FB18 80028978 E4420008 */  swc1  $f2, 8($v0)
/* A9FB1C 8002897C 8FBF001C */  lw    $ra, 0x1c($sp)
/* A9FB20 80028980 8FB00018 */  lw    $s0, 0x18($sp)
/* A9FB24 80028984 27BD0028 */  addiu $sp, $sp, 0x28
/* A9FB28 80028988 03E00008 */  jr    $ra
/* A9FB2C 8002898C 00000000 */   nop   

