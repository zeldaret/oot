glabel func_8096AD90
/* 012C0 8096AD90 27BDFFD8 */  addiu   $sp, $sp, 0xFFD8           ## $sp = FFFFFFD8
/* 012C4 8096AD94 AFBF0024 */  sw      $ra, 0x0024($sp)
/* 012C8 8096AD98 10A00015 */  beq     $a1, $zero, .L8096ADF0
/* 012CC 8096AD9C AFA40028 */  sw      $a0, 0x0028($sp)
/* 012D0 8096ADA0 3C040600 */  lui     $a0, %hi(D_06002374)                ## $a0 = 06000000
/* 012D4 8096ADA4 0C028800 */  jal     Animation_GetLastFrame

/* 012D8 8096ADA8 24842374 */  addiu   $a0, $a0, %lo(D_06002374)           ## $a0 = 06002374
/* 012DC 8096ADAC 44822000 */  mtc1    $v0, $f4                   ## $f4 = 0.00
/* 012E0 8096ADB0 44800000 */  mtc1    $zero, $f0                 ## $f0 = 0.00
/* 012E4 8096ADB4 8FA40028 */  lw      $a0, 0x0028($sp)
/* 012E8 8096ADB8 468021A0 */  cvt.s.w $f6, $f4
/* 012EC 8096ADBC 3C050600 */  lui     $a1, %hi(D_06002374)                ## $a1 = 06000000
/* 012F0 8096ADC0 240E0002 */  addiu   $t6, $zero, 0x0002         ## $t6 = 00000002
/* 012F4 8096ADC4 44070000 */  mfc1    $a3, $f0
/* 012F8 8096ADC8 AFAE0014 */  sw      $t6, 0x0014($sp)
/* 012FC 8096ADCC 24A52374 */  addiu   $a1, $a1, %lo(D_06002374)           ## $a1 = 06002374
/* 01300 8096ADD0 E7A60010 */  swc1    $f6, 0x0010($sp)
/* 01304 8096ADD4 3C063F80 */  lui     $a2, 0x3F80                ## $a2 = 3F800000
/* 01308 8096ADD8 2484014C */  addiu   $a0, $a0, 0x014C           ## $a0 = 0000014C
/* 0130C 8096ADDC 0C029468 */  jal     Animation_Change

/* 01310 8096ADE0 E7A00018 */  swc1    $f0, 0x0018($sp)
/* 01314 8096ADE4 8FB80028 */  lw      $t8, 0x0028($sp)
/* 01318 8096ADE8 240F0010 */  addiu   $t7, $zero, 0x0010         ## $t7 = 00000010
/* 0131C 8096ADEC AF0F0198 */  sw      $t7, 0x0198($t8)           ## 00000198
.L8096ADF0:
/* 01320 8096ADF0 8FBF0024 */  lw      $ra, 0x0024($sp)
/* 01324 8096ADF4 27BD0028 */  addiu   $sp, $sp, 0x0028           ## $sp = 00000000
/* 01328 8096ADF8 03E00008 */  jr      $ra
/* 0132C 8096ADFC 00000000 */  nop
