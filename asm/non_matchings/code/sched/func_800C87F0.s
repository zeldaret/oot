.rdata
glabel D_80145EBC
    .asciz "(type == M_AUDTASK) || (type == M_GFXTASK) || (type == M_NJPEGTASK) || (type == M_NULTASK)"
    .balign 4

glabel D_80145F18
    .asciz "../sched.c"
    .balign 4

glabel D_80145F24
    .asciz "オーディオタスクをエントリしました\n"
    # EUC-JP: オーディオタスクをエントリしました | Audio task entered
    .balign 4

glabel D_80145F48
    .asciz "グラフタスクをエントリしました\n"
    # EUC-JP: グラフタスクをエントリしました | Graph task entered
    .balign 4

.text
glabel func_800C87F0
/* B3F990 800C87F0 27BDFFD8 */  addiu $sp, $sp, -0x28
/* B3F994 800C87F4 AFBF001C */  sw    $ra, 0x1c($sp)
/* B3F998 800C87F8 AFB00018 */  sw    $s0, 0x18($sp)
/* B3F99C 800C87FC 8CA20010 */  lw    $v0, 0x10($a1)
/* B3F9A0 800C8800 24010002 */  li    $at, 2
/* B3F9A4 800C8804 00808025 */  move  $s0, $a0
/* B3F9A8 800C8808 10410011 */  beq   $v0, $at, .L800C8850
/* B3F9AC 800C880C 00A03825 */   move  $a3, $a1
/* B3F9B0 800C8810 24010001 */  li    $at, 1
/* B3F9B4 800C8814 1041000E */  beq   $v0, $at, .L800C8850
/* B3F9B8 800C8818 24010004 */   li    $at, 4
/* B3F9BC 800C881C 5041000D */  beql  $v0, $at, .L800C8854
/* B3F9C0 800C8820 24010002 */   li    $at, 2
/* B3F9C4 800C8824 1040000A */  beqz  $v0, .L800C8850
/* B3F9C8 800C8828 3C048014 */   lui   $a0, %hi(D_80145EBC) # $a0, 0x8014
/* B3F9CC 800C882C 3C058014 */  lui   $a1, %hi(D_80145F18) # $a1, 0x8014
/* B3F9D0 800C8830 24A55F18 */  addiu $a1, %lo(D_80145F18) # addiu $a1, $a1, 0x5f18
/* B3F9D4 800C8834 24845EBC */  addiu $a0, %lo(D_80145EBC) # addiu $a0, $a0, 0x5ebc
/* B3F9D8 800C8838 240601CF */  li    $a2, 463
/* B3F9DC 800C883C AFA20024 */  sw    $v0, 0x24($sp)
/* B3F9E0 800C8840 0C0007FC */  jal   __assert
/* B3F9E4 800C8844 AFA7002C */   sw    $a3, 0x2c($sp)
/* B3F9E8 800C8848 8FA20024 */  lw    $v0, 0x24($sp)
/* B3F9EC 800C884C 8FA7002C */  lw    $a3, 0x2c($sp)
.L800C8850:
/* B3F9F0 800C8850 24010002 */  li    $at, 2
.L800C8854:
/* B3F9F4 800C8854 14410015 */  bne   $v0, $at, .L800C88AC
/* B3F9F8 800C8858 3C198013 */   lui   $t9, %hi(D_8012D290) # $t9, 0x8013
/* B3F9FC 800C885C 3C0E8013 */  lui   $t6, %hi(D_8012D290) # $t6, 0x8013
/* B3FA00 800C8860 25CED290 */  addiu $t6, %lo(D_8012D290) # addiu $t6, $t6, -0x2d70
/* B3FA04 800C8864 8DCF0000 */  lw    $t7, ($t6)
/* B3FA08 800C8868 3C048014 */  lui   $a0, %hi(D_80145F24) # $a0, 0x8014
/* B3FA0C 800C886C 24845F24 */  addiu $a0, %lo(D_80145F24) # addiu $a0, $a0, 0x5f24
/* B3FA10 800C8870 51E00005 */  beql  $t7, $zero, .L800C8888
/* B3FA14 800C8874 8E020228 */   lw    $v0, 0x228($s0)
/* B3FA18 800C8878 0C00084C */  jal   osSyncPrintf
/* B3FA1C 800C887C AFA7002C */   sw    $a3, 0x2c($sp)
/* B3FA20 800C8880 8FA7002C */  lw    $a3, 0x2c($sp)
/* B3FA24 800C8884 8E020228 */  lw    $v0, 0x228($s0)
.L800C8888:
/* B3FA28 800C8888 24180001 */  li    $t8, 1
/* B3FA2C 800C888C 50400004 */  beql  $v0, $zero, .L800C88A0
/* B3FA30 800C8890 AE070220 */   sw    $a3, 0x220($s0)
/* B3FA34 800C8894 10000002 */  b     .L800C88A0
/* B3FA38 800C8898 AC470000 */   sw    $a3, ($v0)
/* B3FA3C 800C889C AE070220 */  sw    $a3, 0x220($s0)
.L800C88A0:
/* B3FA40 800C88A0 AE070228 */  sw    $a3, 0x228($s0)
/* B3FA44 800C88A4 10000011 */  b     .L800C88EC
/* B3FA48 800C88A8 AE18023C */   sw    $t8, 0x23c($s0)
.L800C88AC:
/* B3FA4C 800C88AC 2739D290 */  addiu $t9, %lo(D_8012D290) # addiu $t9, $t9, -0x2d70
/* B3FA50 800C88B0 8F280000 */  lw    $t0, ($t9)
/* B3FA54 800C88B4 3C048014 */  lui   $a0, %hi(D_80145F48) # $a0, 0x8014
/* B3FA58 800C88B8 24845F48 */  addiu $a0, %lo(D_80145F48) # addiu $a0, $a0, 0x5f48
/* B3FA5C 800C88BC 51000005 */  beql  $t0, $zero, .L800C88D4
/* B3FA60 800C88C0 8E02022C */   lw    $v0, 0x22c($s0)
/* B3FA64 800C88C4 0C00084C */  jal   osSyncPrintf
/* B3FA68 800C88C8 AFA7002C */   sw    $a3, 0x2c($sp)
/* B3FA6C 800C88CC 8FA7002C */  lw    $a3, 0x2c($sp)
/* B3FA70 800C88D0 8E02022C */  lw    $v0, 0x22c($s0)
.L800C88D4:
/* B3FA74 800C88D4 50400004 */  beql  $v0, $zero, .L800C88E8
/* B3FA78 800C88D8 AE070224 */   sw    $a3, 0x224($s0)
/* B3FA7C 800C88DC 10000002 */  b     .L800C88E8
/* B3FA80 800C88E0 AC470000 */   sw    $a3, ($v0)
/* B3FA84 800C88E4 AE070224 */  sw    $a3, 0x224($s0)
.L800C88E8:
/* B3FA88 800C88E8 AE07022C */  sw    $a3, 0x22c($s0)
.L800C88EC:
/* B3FA8C 800C88EC 8CE90008 */  lw    $t1, 8($a3)
/* B3FA90 800C88F0 ACE00000 */  sw    $zero, ($a3)
/* B3FA94 800C88F4 312A0003 */  andi  $t2, $t1, 3
/* B3FA98 800C88F8 ACEA0004 */  sw    $t2, 4($a3)
/* B3FA9C 800C88FC 8FBF001C */  lw    $ra, 0x1c($sp)
/* B3FAA0 800C8900 8FB00018 */  lw    $s0, 0x18($sp)
/* B3FAA4 800C8904 27BD0028 */  addiu $sp, $sp, 0x28
/* B3FAA8 800C8908 03E00008 */  jr    $ra
/* B3FAAC 800C890C 00000000 */   nop   

