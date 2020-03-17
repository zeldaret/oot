glabel func_8006DF68
/* AE5108 8006DF68 00077080 */  sll   $t6, $a3, 2
/* AE510C 8006DF6C 01C77021 */  addu  $t6, $t6, $a3
/* AE5110 8006DF70 000E7180 */  sll   $t6, $t6, 6
/* AE5114 8006DF74 01C67821 */  addu  $t7, $t6, $a2
/* AE5118 8006DF78 000FC140 */  sll   $t8, $t7, 5
/* AE511C 8006DF7C 03051021 */  addu  $v0, $t8, $a1
/* AE5120 8006DF80 24050010 */  li    $a1, 16
/* AE5124 8006DF84 00001825 */  move  $v1, $zero
.L8006DF88:
/* AE5128 8006DF88 94990000 */  lhu   $t9, ($a0)
/* AE512C 8006DF8C 24630002 */  addiu $v1, $v1, 2
/* AE5130 8006DF90 24840040 */  addiu $a0, $a0, 0x40
/* AE5134 8006DF94 A4590000 */  sh    $t9, ($v0)
/* AE5138 8006DF98 9488FFC2 */  lhu   $t0, -0x3e($a0)
/* AE513C 8006DF9C 24420500 */  addiu $v0, $v0, 0x500
/* AE5140 8006DFA0 A448FB02 */  sh    $t0, -0x4fe($v0)
/* AE5144 8006DFA4 9489FFC4 */  lhu   $t1, -0x3c($a0)
/* AE5148 8006DFA8 A449FB04 */  sh    $t1, -0x4fc($v0)
/* AE514C 8006DFAC 948AFFC6 */  lhu   $t2, -0x3a($a0)
/* AE5150 8006DFB0 A44AFB06 */  sh    $t2, -0x4fa($v0)
/* AE5154 8006DFB4 948BFFC8 */  lhu   $t3, -0x38($a0)
/* AE5158 8006DFB8 A44BFB08 */  sh    $t3, -0x4f8($v0)
/* AE515C 8006DFBC 948CFFCA */  lhu   $t4, -0x36($a0)
/* AE5160 8006DFC0 A44CFB0A */  sh    $t4, -0x4f6($v0)
/* AE5164 8006DFC4 948DFFCC */  lhu   $t5, -0x34($a0)
/* AE5168 8006DFC8 A44DFB0C */  sh    $t5, -0x4f4($v0)
/* AE516C 8006DFCC 948EFFCE */  lhu   $t6, -0x32($a0)
/* AE5170 8006DFD0 A44EFB0E */  sh    $t6, -0x4f2($v0)
/* AE5174 8006DFD4 948FFFD0 */  lhu   $t7, -0x30($a0)
/* AE5178 8006DFD8 A44FFB10 */  sh    $t7, -0x4f0($v0)
/* AE517C 8006DFDC 9498FFD2 */  lhu   $t8, -0x2e($a0)
/* AE5180 8006DFE0 A458FB12 */  sh    $t8, -0x4ee($v0)
/* AE5184 8006DFE4 9499FFD4 */  lhu   $t9, -0x2c($a0)
/* AE5188 8006DFE8 A459FB14 */  sh    $t9, -0x4ec($v0)
/* AE518C 8006DFEC 9488FFD6 */  lhu   $t0, -0x2a($a0)
/* AE5190 8006DFF0 A448FB16 */  sh    $t0, -0x4ea($v0)
/* AE5194 8006DFF4 9489FFD8 */  lhu   $t1, -0x28($a0)
/* AE5198 8006DFF8 A449FB18 */  sh    $t1, -0x4e8($v0)
/* AE519C 8006DFFC 948AFFDA */  lhu   $t2, -0x26($a0)
/* AE51A0 8006E000 A44AFB1A */  sh    $t2, -0x4e6($v0)
/* AE51A4 8006E004 948BFFDC */  lhu   $t3, -0x24($a0)
/* AE51A8 8006E008 A44BFB1C */  sh    $t3, -0x4e4($v0)
/* AE51AC 8006E00C 948CFFDE */  lhu   $t4, -0x22($a0)
/* AE51B0 8006E010 A44CFB1E */  sh    $t4, -0x4e2($v0)
/* AE51B4 8006E014 948DFFE0 */  lhu   $t5, -0x20($a0)
/* AE51B8 8006E018 A44DFD80 */  sh    $t5, -0x280($v0)
/* AE51BC 8006E01C 948EFFE2 */  lhu   $t6, -0x1e($a0)
/* AE51C0 8006E020 A44EFD82 */  sh    $t6, -0x27e($v0)
/* AE51C4 8006E024 948FFFE4 */  lhu   $t7, -0x1c($a0)
/* AE51C8 8006E028 A44FFD84 */  sh    $t7, -0x27c($v0)
/* AE51CC 8006E02C 9498FFE6 */  lhu   $t8, -0x1a($a0)
/* AE51D0 8006E030 A458FD86 */  sh    $t8, -0x27a($v0)
/* AE51D4 8006E034 9499FFE8 */  lhu   $t9, -0x18($a0)
/* AE51D8 8006E038 A459FD88 */  sh    $t9, -0x278($v0)
/* AE51DC 8006E03C 9488FFEA */  lhu   $t0, -0x16($a0)
/* AE51E0 8006E040 A448FD8A */  sh    $t0, -0x276($v0)
/* AE51E4 8006E044 9489FFEC */  lhu   $t1, -0x14($a0)
/* AE51E8 8006E048 A449FD8C */  sh    $t1, -0x274($v0)
/* AE51EC 8006E04C 948AFFEE */  lhu   $t2, -0x12($a0)
/* AE51F0 8006E050 A44AFD8E */  sh    $t2, -0x272($v0)
/* AE51F4 8006E054 948BFFF0 */  lhu   $t3, -0x10($a0)
/* AE51F8 8006E058 A44BFD90 */  sh    $t3, -0x270($v0)
/* AE51FC 8006E05C 948CFFF2 */  lhu   $t4, -0xe($a0)
/* AE5200 8006E060 A44CFD92 */  sh    $t4, -0x26e($v0)
/* AE5204 8006E064 948DFFF4 */  lhu   $t5, -0xc($a0)
/* AE5208 8006E068 A44DFD94 */  sh    $t5, -0x26c($v0)
/* AE520C 8006E06C 948EFFF6 */  lhu   $t6, -0xa($a0)
/* AE5210 8006E070 A44EFD96 */  sh    $t6, -0x26a($v0)
/* AE5214 8006E074 948FFFF8 */  lhu   $t7, -8($a0)
/* AE5218 8006E078 A44FFD98 */  sh    $t7, -0x268($v0)
/* AE521C 8006E07C 9498FFFA */  lhu   $t8, -6($a0)
/* AE5220 8006E080 A458FD9A */  sh    $t8, -0x266($v0)
/* AE5224 8006E084 9499FFFC */  lhu   $t9, -4($a0)
/* AE5228 8006E088 A459FD9C */  sh    $t9, -0x264($v0)
/* AE522C 8006E08C 9488FFFE */  lhu   $t0, -2($a0)
/* AE5230 8006E090 1465FFBD */  bne   $v1, $a1, .L8006DF88
/* AE5234 8006E094 A448FD9E */   sh    $t0, -0x262($v0)
/* AE5238 8006E098 03E00008 */  jr    $ra
/* AE523C 8006E09C 00000000 */   nop   

