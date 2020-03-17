.rdata
glabel D_80142E80
    .asciz "../z_vr_box_draw.c"
    .balign 4

.text
glabel func_800B1030
/* B281D0 800B1030 27BDFFE8 */  addiu $sp, $sp, -0x18
/* B281D4 800B1034 44867000 */  mtc1  $a2, $f14
/* B281D8 800B1038 AFBF0014 */  sw    $ra, 0x14($sp)
/* B281DC 800B103C AFA70024 */  sw    $a3, 0x24($sp)
/* B281E0 800B1040 44856000 */  mtc1  $a1, $f12
/* B281E4 800B1044 00E03025 */  move  $a2, $a3
/* B281E8 800B1048 AFA40018 */  sw    $a0, 0x18($sp)
/* B281EC 800B104C 0C034261 */  jal   Matrix_Translate
/* B281F0 800B1050 00003825 */   move  $a3, $zero
/* B281F4 800B1054 3C013F80 */  li    $at, 0x3F800000 # 0.000000
/* B281F8 800B1058 44816000 */  mtc1  $at, $f12
/* B281FC 800B105C 24070001 */  li    $a3, 1
/* B28200 800B1060 44066000 */  mfc1  $a2, $f12
/* B28204 800B1064 0C0342A3 */  jal   Matrix_Scale
/* B28208 800B1068 46006386 */   mov.s $f14, $f12
/* B2820C 800B106C 8FAE0018 */  lw    $t6, 0x18($sp)
/* B28210 800B1070 24050001 */  li    $a1, 1
/* B28214 800B1074 0C0342DC */  jal   Matrix_RotateX
/* B28218 800B1078 C5CC0144 */   lwc1  $f12, 0x144($t6)
/* B2821C 800B107C 8FAF0018 */  lw    $t7, 0x18($sp)
/* B28220 800B1080 24050001 */  li    $a1, 1
/* B28224 800B1084 0C034348 */  jal   Matrix_RotateY
/* B28228 800B1088 C5EC0148 */   lwc1  $f12, 0x148($t7)
/* B2822C 800B108C 8FB80018 */  lw    $t8, 0x18($sp)
/* B28230 800B1090 24050001 */  li    $a1, 1
/* B28234 800B1094 0C0343B5 */  jal   Matrix_RotateZ
/* B28238 800B1098 C70C014C */   lwc1  $f12, 0x14c($t8)
/* B2823C 800B109C 3C048016 */  lui   $a0, %hi(D_801610E0) # $a0, 0x8016
/* B28240 800B10A0 3C058014 */  lui   $a1, %hi(D_80142E80) # $a1, 0x8014
/* B28244 800B10A4 24A52E80 */  addiu $a1, %lo(D_80142E80) # addiu $a1, $a1, 0x2e80
/* B28248 800B10A8 8C8410E0 */  lw    $a0, %lo(D_801610E0)($a0)
/* B2824C 800B10AC 0C034695 */  jal   Matrix_ToMtx
/* B28250 800B10B0 2406002A */   li    $a2, 42
/* B28254 800B10B4 8FBF0014 */  lw    $ra, 0x14($sp)
/* B28258 800B10B8 27BD0018 */  addiu $sp, $sp, 0x18
/* B2825C 800B10BC 03E00008 */  jr    $ra
/* B28260 800B10C0 00000000 */   nop   

