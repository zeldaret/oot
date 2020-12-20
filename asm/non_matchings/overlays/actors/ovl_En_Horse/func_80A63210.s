.late_rodata
glabel D_80A66970
 .word 0x38000100
glabel D_80A66974
 .word 0x4622F983
glabel D_80A66978
 .word 0x3F350481

.text
glabel func_80A63210
/* 07F20 80A63210 27BDFFB8 */  addiu   $sp, $sp, 0xFFB8           ## $sp = FFFFFFB8
/* 07F24 80A63214 AFBF0034 */  sw      $ra, 0x0034($sp)
/* 07F28 80A63218 AFB00030 */  sw      $s0, 0x0030($sp)
/* 07F2C 80A6321C F7B60028 */  sdc1    $f22, 0x0028($sp)
/* 07F30 80A63220 F7B40020 */  sdc1    $f20, 0x0020($sp)
/* 07F34 80A63224 AFA5004C */  sw      $a1, 0x004C($sp)
/* 07F38 80A63228 84CE0008 */  lh      $t6, 0x0008($a2)           ## 00000008
/* 07F3C 80A6322C 84CF000A */  lh      $t7, 0x000A($a2)           ## 0000000A
/* 07F40 80A63230 3C0180A6 */  lui     $at, %hi(D_80A66970)       ## $at = 80A60000
/* 07F44 80A63234 448E2000 */  mtc1    $t6, $f4                   ## $f4 = 0.00
/* 07F48 80A63238 448F3000 */  mtc1    $t7, $f6                   ## $f6 = 0.00
/* 07F4C 80A6323C C4206970 */  lwc1    $f0, %lo(D_80A66970)($at)
/* 07F50 80A63240 46802320 */  cvt.s.w $f12, $f4
/* 07F54 80A63244 00808025 */  or      $s0, $a0, $zero            ## $s0 = 00000000
/* 07F58 80A63248 46803220 */  cvt.s.w $f8, $f6
/* 07F5C 80A6324C 46006502 */  mul.s   $f20, $f12, $f0
/* 07F60 80A63250 00000000 */  nop
/* 07F64 80A63254 46004282 */  mul.s   $f10, $f8, $f0
/* 07F68 80A63258 E7AA003C */  swc1    $f10, 0x003C($sp)
/* 07F6C 80A6325C 84D8000C */  lh      $t8, 0x000C($a2)           ## 0000000C
/* 07F70 80A63260 AFA60050 */  sw      $a2, 0x0050($sp)
/* 07F74 80A63264 44988000 */  mtc1    $t8, $f16                  ## $f16 = 0.00
/* 07F78 80A63268 00000000 */  nop
/* 07F7C 80A6326C 468083A0 */  cvt.s.w $f14, $f16
/* 07F80 80A63270 46007582 */  mul.s   $f22, $f14, $f0
/* 07F84 80A63274 0C03F494 */  jal     MathF_Atan2
/* 07F88 80A63278 00000000 */  nop
/* 07F8C 80A6327C 3C0180A6 */  lui     $at, %hi(D_80A66974)       ## $at = 80A60000
/* 07F90 80A63280 C4326974 */  lwc1    $f18, %lo(D_80A66974)($at)
/* 07F94 80A63284 86190032 */  lh      $t9, 0x0032($s0)           ## 00000032
/* 07F98 80A63288 46120102 */  mul.s   $f4, $f0, $f18
/* 07F9C 80A6328C 4600218D */  trunc.w.s $f6, $f4
/* 07FA0 80A63290 440B3000 */  mfc1    $t3, $f6
/* 07FA4 80A63294 00000000 */  nop
/* 07FA8 80A63298 032B2023 */  subu    $a0, $t9, $t3
/* 07FAC 80A6329C 24848001 */  addiu   $a0, $a0, 0x8001           ## $a0 = FFFF8001
/* 07FB0 80A632A0 00042400 */  sll     $a0, $a0, 16
/* 07FB4 80A632A4 0C01DE0D */  jal     Math_CosS
              ## coss?
/* 07FB8 80A632A8 00042403 */  sra     $a0, $a0, 16
/* 07FBC 80A632AC 3C0180A6 */  lui     $at, %hi(D_80A66978)       ## $at = 80A60000
/* 07FC0 80A632B0 C4286978 */  lwc1    $f8, %lo(D_80A66978)($at)
/* 07FC4 80A632B4 8FA50050 */  lw      $a1, 0x0050($sp)
/* 07FC8 80A632B8 4608003C */  c.lt.s  $f0, $f8
/* 07FCC 80A632BC 00000000 */  nop
/* 07FD0 80A632C0 45030023 */  bc1tl   .L80A63350
/* 07FD4 80A632C4 8FBF0034 */  lw      $ra, 0x0034($sp)
/* 07FD8 80A632C8 84AC000E */  lh      $t4, 0x000E($a1)           ## 0000000E
/* 07FDC 80A632CC 4406B000 */  mfc1    $a2, $f22
/* 07FE0 80A632D0 260D0024 */  addiu   $t5, $s0, 0x0024           ## $t5 = 00000024
/* 07FE4 80A632D4 448C5000 */  mtc1    $t4, $f10                  ## $f10 = 0.00
/* 07FE8 80A632D8 AFAD0010 */  sw      $t5, 0x0010($sp)
/* 07FEC 80A632DC 4600A306 */  mov.s   $f12, $f20
/* 07FF0 80A632E0 468052A0 */  cvt.s.w $f10, $f10
/* 07FF4 80A632E4 C7AE003C */  lwc1    $f14, 0x003C($sp)
/* 07FF8 80A632E8 44075000 */  mfc1    $a3, $f10
/* 07FFC 80A632EC 0C0332C3 */  jal     Math3D_DistPlaneToPos
/* 08000 80A632F0 00000000 */  nop
/* 08004 80A632F4 4614A402 */  mul.s   $f16, $f20, $f20
/* 08008 80A632F8 46000306 */  mov.s   $f12, $f0
/* 0800C 80A632FC 3C0141F0 */  lui     $at, 0x41F0                ## $at = 41F00000
/* 08010 80A63300 4616B482 */  mul.s   $f18, $f22, $f22
/* 08014 80A63304 44812000 */  mtc1    $at, $f4                   ## $f4 = 30.00
/* 08018 80A63308 3C013F80 */  lui     $at, 0x3F80                ## $at = 3F800000
/* 0801C 80A6330C 44814000 */  mtc1    $at, $f8                   ## $f8 = 1.00
/* 08020 80A63310 460C2181 */  sub.s   $f6, $f4, $f12
/* 08024 80A63314 46128000 */  add.s   $f0, $f16, $f18
/* 08028 80A63318 C6100024 */  lwc1    $f16, 0x0024($s0)          ## 00000024
/* 0802C 80A6331C 46000004 */  sqrt.s  $f0, $f0
/* 08030 80A63320 46004283 */  div.s   $f10, $f8, $f0
/* 08034 80A63324 C608002C */  lwc1    $f8, 0x002C($s0)           ## 0000002C
/* 08038 80A63328 460A3082 */  mul.s   $f2, $f6, $f10
/* 0803C 80A6332C 00000000 */  nop
/* 08040 80A63330 46141482 */  mul.s   $f18, $f2, $f20
/* 08044 80A63334 00000000 */  nop
/* 08048 80A63338 46161182 */  mul.s   $f6, $f2, $f22
/* 0804C 80A6333C 46128100 */  add.s   $f4, $f16, $f18
/* 08050 80A63340 46064280 */  add.s   $f10, $f8, $f6
/* 08054 80A63344 E6040024 */  swc1    $f4, 0x0024($s0)           ## 00000024
/* 08058 80A63348 E60A002C */  swc1    $f10, 0x002C($s0)          ## 0000002C
/* 0805C 80A6334C 8FBF0034 */  lw      $ra, 0x0034($sp)
.L80A63350:
/* 08060 80A63350 D7B40020 */  ldc1    $f20, 0x0020($sp)
/* 08064 80A63354 D7B60028 */  ldc1    $f22, 0x0028($sp)
/* 08068 80A63358 8FB00030 */  lw      $s0, 0x0030($sp)
/* 0806C 80A6335C 03E00008 */  jr      $ra
/* 08070 80A63360 27BD0048 */  addiu   $sp, $sp, 0x0048           ## $sp = 00000000
