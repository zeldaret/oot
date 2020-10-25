glabel func_80075F14
/* AED0B4 80075F14 27BDFFC8 */  addiu $sp, $sp, -0x38
/* AED0B8 80075F18 AFBF0024 */  sw    $ra, 0x24($sp)
/* AED0BC 80075F1C AFA40038 */  sw    $a0, 0x38($sp)
/* AED0C0 80075F20 3C014120 */  li    $at, 0x41200000 # 0.000000
/* AED0C4 80075F24 44810000 */  mtc1  $at, $f0
/* AED0C8 80075F28 8C831C44 */  lw    $v1, 0x1c44($a0)
/* AED0CC 80075F2C 3C018016 */  lui   $at, %hi(D_8015FDAE)
/* AED0D0 80075F30 A020FDAE */  sb    $zero, %lo(D_8015FDAE)($at)
/* AED0D4 80075F34 C4640024 */  lwc1  $f4, 0x24($v1)
/* AED0D8 80075F38 3C048016 */  lui   $a0, %hi(D_8015FD88)
/* AED0DC 80075F3C 240A00FF */  li    $t2, 255
/* AED0E0 80075F40 4600218D */  trunc.w.s $f6, $f4
/* AED0E4 80075F44 C4640028 */  lwc1  $f4, 0x28($v1)
/* AED0E8 80075F48 2484FD88 */  addiu $a0, %lo(D_8015FD88) # addiu $a0, $a0, -0x278
/* AED0EC 80075F4C 44183000 */  mfc1  $t8, $f6
/* AED0F0 80075F50 4600218D */  trunc.w.s $f6, $f4
/* AED0F4 80075F54 C464002C */  lwc1  $f4, 0x2c($v1)
/* AED0F8 80075F58 0018CC00 */  sll   $t9, $t8, 0x10
/* AED0FC 80075F5C 00194403 */  sra   $t0, $t9, 0x10
/* AED100 80075F60 44884000 */  mtc1  $t0, $f8
/* AED104 80075F64 440B3000 */  mfc1  $t3, $f6
/* AED108 80075F68 4600218D */  trunc.w.s $f6, $f4
/* AED10C 80075F6C AFAA001C */  sw    $t2, 0x1c($sp)
/* AED110 80075F70 000B6400 */  sll   $t4, $t3, 0x10
/* AED114 80075F74 468042A0 */  cvt.s.w $f10, $f8
/* AED118 80075F78 000C6C03 */  sra   $t5, $t4, 0x10
/* AED11C 80075F7C 448D4000 */  mtc1  $t5, $f8
/* AED120 80075F80 44183000 */  mfc1  $t8, $f6
/* AED124 80075F84 AFA00018 */  sw    $zero, 0x18($sp)
/* AED128 80075F88 AFA00014 */  sw    $zero, 0x14($sp)
/* AED12C 80075F8C 46005401 */  sub.s $f16, $f10, $f0
/* AED130 80075F90 0018CC00 */  sll   $t9, $t8, 0x10
/* AED134 80075F94 00194403 */  sra   $t0, $t9, 0x10
/* AED138 80075F98 468042A0 */  cvt.s.w $f10, $f8
/* AED13C 80075F9C 44884000 */  mtc1  $t0, $f8
/* AED140 80075FA0 AFA00010 */  sw    $zero, 0x10($sp)
/* AED144 80075FA4 AFA30030 */  sw    $v1, 0x30($sp)
/* AED148 80075FA8 4600848D */  trunc.w.s $f18, $f16
/* AED14C 80075FAC 46005400 */  add.s $f16, $f10, $f0
/* AED150 80075FB0 44059000 */  mfc1  $a1, $f18
/* AED154 80075FB4 468042A0 */  cvt.s.w $f10, $f8
/* AED158 80075FB8 00052C00 */  sll   $a1, $a1, 0x10
/* AED15C 80075FBC 00052C03 */  sra   $a1, $a1, 0x10
/* AED160 80075FC0 4600848D */  trunc.w.s $f18, $f16
/* AED164 80075FC4 46005401 */  sub.s $f16, $f10, $f0
/* AED168 80075FC8 44069000 */  mfc1  $a2, $f18
/* AED16C 80075FCC 4600848D */  trunc.w.s $f18, $f16
/* AED170 80075FD0 00063400 */  sll   $a2, $a2, 0x10
/* AED174 80075FD4 00063403 */  sra   $a2, $a2, 0x10
/* AED178 80075FD8 44079000 */  mfc1  $a3, $f18
/* AED17C 80075FDC 00000000 */  nop   
/* AED180 80075FE0 00073C00 */  sll   $a3, $a3, 0x10
/* AED184 80075FE4 0C01E763 */  jal   Lights_PointNoGlowSetInfo
/* AED188 80075FE8 00073C03 */   sra   $a3, $a3, 0x10
/* AED18C 80075FEC 8FA40038 */  lw    $a0, 0x38($sp)
/* AED190 80075FF0 3C068016 */  lui   $a2, %hi(D_8015FD88)
/* AED194 80075FF4 24C6FD88 */  addiu $a2, %lo(D_8015FD88) # addiu $a2, $a2, -0x278
/* AED198 80075FF8 248507A8 */  addiu $a1, $a0, 0x7a8
/* AED19C 80075FFC 0C01E9D9 */  jal   LightContext_InsertLight
/* AED1A0 80076000 AFA5002C */   sw    $a1, 0x2c($sp)
/* AED1A4 80076004 3C014120 */  li    $at, 0x41200000 # 0.000000
/* AED1A8 80076008 44810000 */  mtc1  $at, $f0
/* AED1AC 8007600C 8FA30030 */  lw    $v1, 0x30($sp)
/* AED1B0 80076010 3C018016 */  lui   $at, %hi(D_8015FD84)
/* AED1B4 80076014 AC22FD84 */  sw    $v0, %lo(D_8015FD84)($at)
/* AED1B8 80076018 C4640024 */  lwc1  $f4, 0x24($v1)
/* AED1BC 8007601C 3C048016 */  lui   $a0, %hi(D_8015FDA0)
/* AED1C0 80076020 241800FF */  li    $t8, 255
/* AED1C4 80076024 4600218D */  trunc.w.s $f6, $f4
/* AED1C8 80076028 C4640028 */  lwc1  $f4, 0x28($v1)
/* AED1CC 8007602C 2484FDA0 */  addiu $a0, %lo(D_8015FDA0) # addiu $a0, $a0, -0x260
/* AED1D0 80076030 440C3000 */  mfc1  $t4, $f6
/* AED1D4 80076034 4600218D */  trunc.w.s $f6, $f4
/* AED1D8 80076038 C464002C */  lwc1  $f4, 0x2c($v1)
/* AED1DC 8007603C 000C6C00 */  sll   $t5, $t4, 0x10
/* AED1E0 80076040 000D7403 */  sra   $t6, $t5, 0x10
/* AED1E4 80076044 448E4000 */  mtc1  $t6, $f8
/* AED1E8 80076048 44193000 */  mfc1  $t9, $f6
/* AED1EC 8007604C 4600218D */  trunc.w.s $f6, $f4
/* AED1F0 80076050 AFB8001C */  sw    $t8, 0x1c($sp)
/* AED1F4 80076054 00194400 */  sll   $t0, $t9, 0x10
/* AED1F8 80076058 468042A0 */  cvt.s.w $f10, $f8
/* AED1FC 8007605C 00084C03 */  sra   $t1, $t0, 0x10
/* AED200 80076060 44894000 */  mtc1  $t1, $f8
/* AED204 80076064 440C3000 */  mfc1  $t4, $f6
/* AED208 80076068 AFA00018 */  sw    $zero, 0x18($sp)
/* AED20C 8007606C AFA00014 */  sw    $zero, 0x14($sp)
/* AED210 80076070 46005400 */  add.s $f16, $f10, $f0
/* AED214 80076074 000C6C00 */  sll   $t5, $t4, 0x10
/* AED218 80076078 000D7403 */  sra   $t6, $t5, 0x10
/* AED21C 8007607C 468042A0 */  cvt.s.w $f10, $f8
/* AED220 80076080 448E4000 */  mtc1  $t6, $f8
/* AED224 80076084 AFA00010 */  sw    $zero, 0x10($sp)
/* AED228 80076088 4600848D */  trunc.w.s $f18, $f16
/* AED22C 8007608C 46005400 */  add.s $f16, $f10, $f0
/* AED230 80076090 44059000 */  mfc1  $a1, $f18
/* AED234 80076094 468042A0 */  cvt.s.w $f10, $f8
/* AED238 80076098 00052C00 */  sll   $a1, $a1, 0x10
/* AED23C 8007609C 00052C03 */  sra   $a1, $a1, 0x10
/* AED240 800760A0 4600848D */  trunc.w.s $f18, $f16
/* AED244 800760A4 46005400 */  add.s $f16, $f10, $f0
/* AED248 800760A8 44069000 */  mfc1  $a2, $f18
/* AED24C 800760AC 4600848D */  trunc.w.s $f18, $f16
/* AED250 800760B0 00063400 */  sll   $a2, $a2, 0x10
/* AED254 800760B4 00063403 */  sra   $a2, $a2, 0x10
/* AED258 800760B8 44079000 */  mfc1  $a3, $f18
/* AED25C 800760BC 00000000 */  nop   
/* AED260 800760C0 00073C00 */  sll   $a3, $a3, 0x10
/* AED264 800760C4 0C01E763 */  jal   Lights_PointNoGlowSetInfo
/* AED268 800760C8 00073C03 */   sra   $a3, $a3, 0x10
/* AED26C 800760CC 3C068016 */  lui   $a2, %hi(D_8015FDA0) # $a2, 0x8016
/* AED270 800760D0 24C6FDA0 */  addiu $a2, %lo(D_8015FDA0) # addiu $a2, $a2, -0x260
/* AED274 800760D4 8FA40038 */  lw    $a0, 0x38($sp)
/* AED278 800760D8 0C01E9D9 */  jal   LightContext_InsertLight
/* AED27C 800760DC 8FA5002C */   lw    $a1, 0x2c($sp)
/* AED280 800760E0 8FBF0024 */  lw    $ra, 0x24($sp)
/* AED284 800760E4 3C018016 */  lui   $at, %hi(D_8015FD98) # $at, 0x8016
/* AED288 800760E8 AC22FD98 */  sw    $v0, %lo(D_8015FD98)($at)
/* AED28C 800760EC 03E00008 */  jr    $ra
/* AED290 800760F0 27BD0038 */   addiu $sp, $sp, 0x38

