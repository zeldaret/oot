.rdata
glabel D_80B52970
    .asciz "../z_en_zl2.c"
    .balign 4

.late_rodata
glabel D_80B52BD0
 .word 0x4474C000
glabel D_80B52BD4
    .float 1.2

.text
glabel EnZl2_PostLimbDraw
/* 011E4 80B4FB74 27BDFFC8 */  addiu   $sp, $sp, 0xFFC8           ## $sp = FFFFFFC8
/* 011E8 80B4FB78 2401000A */  addiu   $at, $zero, 0x000A         ## $at = 0000000A
/* 011EC 80B4FB7C AFBF0014 */  sw      $ra, 0x0014($sp)
/* 011F0 80B4FB80 AFA60040 */  sw      $a2, 0x0040($sp)
/* 011F4 80B4FB84 14A1004D */  bne     $a1, $at, .L80B4FCBC
/* 011F8 80B4FB88 AFA70044 */  sw      $a3, 0x0044($sp)
/* 011FC 80B4FB8C 8FAE0048 */  lw      $t6, 0x0048($sp)
/* 01200 80B4FB90 8DCF0254 */  lw      $t7, 0x0254($t6)           ## 00000254
/* 01204 80B4FB94 51E0000F */  beql    $t7, $zero, .L80B4FBD4
/* 01208 80B4FB98 8C821C44 */  lw      $v0, 0x1C44($a0)           ## 00001C44
/* 0120C 80B4FB9C 94981D74 */  lhu     $t8, 0x1D74($a0)           ## 00001D74
/* 01210 80B4FBA0 8FB9004C */  lw      $t9, 0x004C($sp)
/* 01214 80B4FBA4 3C09DE00 */  lui     $t1, 0xDE00                ## $t1 = DE000000
/* 01218 80B4FBA8 2B010384 */  slti    $at, $t8, 0x0384
/* 0121C 80B4FBAC 54200009 */  bnel    $at, $zero, .L80B4FBD4
/* 01220 80B4FBB0 8C821C44 */  lw      $v0, 0x1C44($a0)           ## 00001C44
/* 01224 80B4FBB4 8F220000 */  lw      $v0, 0x0000($t9)           ## 00000000
/* 01228 80B4FBB8 3C0A0601 */  lui     $t2, 0x0601                ## $t2 = 06010000
/* 0122C 80B4FBBC 254ABAE8 */  addiu   $t2, $t2, 0xBAE8           ## $t2 = 0600BAE8
/* 01230 80B4FBC0 24480008 */  addiu   $t0, $v0, 0x0008           ## $t0 = 00000008
/* 01234 80B4FBC4 AF280000 */  sw      $t0, 0x0000($t9)           ## 00000000
/* 01238 80B4FBC8 AC4A0004 */  sw      $t2, 0x0004($v0)           ## 00000004
/* 0123C 80B4FBCC AC490000 */  sw      $t1, 0x0000($v0)           ## 00000000
/* 01240 80B4FBD0 8C821C44 */  lw      $v0, 0x1C44($a0)           ## 00001C44
.L80B4FBD4:
/* 01244 80B4FBD4 AFA40038 */  sw      $a0, 0x0038($sp)
/* 01248 80B4FBD8 0C034213 */  jal     Matrix_Push
/* 0124C 80B4FBDC AFA20024 */  sw      $v0, 0x0024($sp)
/* 01250 80B4FBE0 8FA20024 */  lw      $v0, 0x0024($sp)
/* 01254 80B4FBE4 240100FF */  addiu   $at, $zero, 0x00FF         ## $at = 000000FF
/* 01258 80B4FBE8 3C0C0601 */  lui     $t4, 0x0601                ## $t4 = 06010000
/* 0125C 80B4FBEC 904B015D */  lbu     $t3, 0x015D($v0)           ## 0000015D
/* 01260 80B4FBF0 258CBAE8 */  addiu   $t4, $t4, 0xBAE8           ## $t4 = 0600BAE8
/* 01264 80B4FBF4 24440A20 */  addiu   $a0, $v0, 0x0A20           ## $a0 = 00000A20
/* 01268 80B4FBF8 1561002E */  bne     $t3, $at, .L80B4FCB4
/* 0126C 80B4FBFC 00000000 */  nop
/* 01270 80B4FC00 0C03423F */  jal     Matrix_Put
/* 01274 80B4FC04 AFAC0018 */  sw      $t4, 0x0018($sp)
/* 01278 80B4FC08 3C014334 */  lui     $at, 0x4334                ## $at = 43340000
/* 0127C 80B4FC0C 44816000 */  mtc1    $at, $f12                  ## $f12 = 180.00
/* 01280 80B4FC10 3C0180B5 */  lui     $at, %hi(D_80B52BD0)       ## $at = 80B50000
/* 01284 80B4FC14 3C06C3BB */  lui     $a2, 0xC3BB                ## $a2 = C3BB0000
/* 01288 80B4FC18 34C68000 */  ori     $a2, $a2, 0x8000           ## $a2 = C3BB8000
/* 0128C 80B4FC1C C42E2BD0 */  lwc1    $f14, %lo(D_80B52BD0)($at)
/* 01290 80B4FC20 0C034261 */  jal     Matrix_Translate
/* 01294 80B4FC24 24070001 */  addiu   $a3, $zero, 0x0001         ## $a3 = 00000001
/* 01298 80B4FC28 2404A219 */  addiu   $a0, $zero, 0xA219         ## $a0 = FFFFA219
/* 0129C 80B4FC2C 2405AC17 */  addiu   $a1, $zero, 0xAC17         ## $a1 = FFFFAC17
/* 012A0 80B4FC30 24063333 */  addiu   $a2, $zero, 0x3333         ## $a2 = 00003333
/* 012A4 80B4FC34 0C034421 */  jal     Matrix_RotateRPY
/* 012A8 80B4FC38 24070001 */  addiu   $a3, $zero, 0x0001         ## $a3 = 00000001
/* 012AC 80B4FC3C 3C0180B5 */  lui     $at, %hi(D_80B52BD4)       ## $at = 80B50000
/* 012B0 80B4FC40 C42C2BD4 */  lwc1    $f12, %lo(D_80B52BD4)($at)
/* 012B4 80B4FC44 24070001 */  addiu   $a3, $zero, 0x0001         ## $a3 = 00000001
/* 012B8 80B4FC48 44066000 */  mfc1    $a2, $f12
/* 012BC 80B4FC4C 0C0342A3 */  jal     Matrix_Scale
/* 012C0 80B4FC50 46006386 */  mov.s   $f14, $f12
/* 012C4 80B4FC54 8FA7004C */  lw      $a3, 0x004C($sp)
/* 012C8 80B4FC58 3C0EDA38 */  lui     $t6, 0xDA38                ## $t6 = DA380000
/* 012CC 80B4FC5C 35CE0003 */  ori     $t6, $t6, 0x0003           ## $t6 = DA380003
/* 012D0 80B4FC60 8CE20000 */  lw      $v0, 0x0000($a3)           ## 00000000
/* 012D4 80B4FC64 3C0580B5 */  lui     $a1, %hi(D_80B52970)       ## $a1 = 80B50000
/* 012D8 80B4FC68 24A52970 */  addiu   $a1, $a1, %lo(D_80B52970)  ## $a1 = 80B52970
/* 012DC 80B4FC6C 244D0008 */  addiu   $t5, $v0, 0x0008           ## $t5 = 00000008
/* 012E0 80B4FC70 ACED0000 */  sw      $t5, 0x0000($a3)           ## 00000000
/* 012E4 80B4FC74 AC4E0000 */  sw      $t6, 0x0000($v0)           ## 00000000
/* 012E8 80B4FC78 8FAF0038 */  lw      $t7, 0x0038($sp)
/* 012EC 80B4FC7C 240604E5 */  addiu   $a2, $zero, 0x04E5         ## $a2 = 000004E5
/* 012F0 80B4FC80 8DE40000 */  lw      $a0, 0x0000($t7)           ## 00000000
/* 012F4 80B4FC84 0C0346A2 */  jal     Matrix_NewMtx
/* 012F8 80B4FC88 AFA20020 */  sw      $v0, 0x0020($sp)
/* 012FC 80B4FC8C 8FA30020 */  lw      $v1, 0x0020($sp)
/* 01300 80B4FC90 3C19DE00 */  lui     $t9, 0xDE00                ## $t9 = DE000000
/* 01304 80B4FC94 AC620004 */  sw      $v0, 0x0004($v1)           ## 00000004
/* 01308 80B4FC98 8FB8004C */  lw      $t8, 0x004C($sp)
/* 0130C 80B4FC9C 8F020000 */  lw      $v0, 0x0000($t8)           ## 00000000
/* 01310 80B4FCA0 24480008 */  addiu   $t0, $v0, 0x0008           ## $t0 = 00000008
/* 01314 80B4FCA4 AF080000 */  sw      $t0, 0x0000($t8)           ## 00000000
/* 01318 80B4FCA8 AC590000 */  sw      $t9, 0x0000($v0)           ## 00000000
/* 0131C 80B4FCAC 8FA90018 */  lw      $t1, 0x0018($sp)
/* 01320 80B4FCB0 AC490004 */  sw      $t1, 0x0004($v0)           ## 00000004
.L80B4FCB4:
/* 01324 80B4FCB4 0C034221 */  jal     Matrix_Pull
/* 01328 80B4FCB8 00000000 */  nop
.L80B4FCBC:
/* 0132C 80B4FCBC 8FBF0014 */  lw      $ra, 0x0014($sp)
/* 01330 80B4FCC0 27BD0038 */  addiu   $sp, $sp, 0x0038           ## $sp = 00000000
/* 01334 80B4FCC4 03E00008 */  jr      $ra
/* 01338 80B4FCC8 00000000 */  nop
