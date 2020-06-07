.late_rodata
glabel D_80A6AFF0
    .float 0.70709997 # cos(pi / 4)

.text
glabel func_80A6A5A4
/* 011D4 80A6A5A4 27BDFFC8 */  addiu   $sp, $sp, 0xFFC8           ## $sp = FFFFFFC8
/* 011D8 80A6A5A8 3C028016 */  lui     $v0, %hi(gGameInfo)
/* 011DC 80A6A5AC 8C42FA90 */  lw      $v0, %lo(gGameInfo)($v0)
/* 011E0 80A6A5B0 AFBF002C */  sw      $ra, 0x002C($sp)
/* 011E4 80A6A5B4 AFB00028 */  sw      $s0, 0x0028($sp)
/* 011E8 80A6A5B8 AFA5003C */  sw      $a1, 0x003C($sp)
/* 011EC 80A6A5BC 844E05BE */  lh      $t6, 0x05BE($v0)           ## 801605BE
/* 011F0 80A6A5C0 3C078013 */  lui     $a3, %hi(D_801333E0)
/* 011F4 80A6A5C4 00808025 */  or      $s0, $a0, $zero            ## $s0 = 00000000
/* 011F8 80A6A5C8 11C0000E */  beq     $t6, $zero, .L80A6A604
/* 011FC 80A6A5CC 24E733E0 */  addiu   $a3, %lo(D_801333E0)
/* 01200 80A6A5D0 3C0F8013 */  lui     $t7, %hi(D_801333E8)
/* 01204 80A6A5D4 A44005BE */  sh      $zero, 0x05BE($v0)         ## 801605BE
/* 01208 80A6A5D8 25EF33E8 */  addiu   $t7, %lo(D_801333E8)
/* 0120C 80A6A5DC AFAF0014 */  sw      $t7, 0x0014($sp)
/* 01210 80A6A5E0 AFA70010 */  sw      $a3, 0x0010($sp)
/* 01214 80A6A5E4 24042844 */  addiu   $a0, $zero, 0x2844         ## $a0 = 00002844
/* 01218 80A6A5E8 260500E4 */  addiu   $a1, $s0, 0x00E4           ## $a1 = 000000E4
/* 0121C 80A6A5EC 0C03DCE3 */  jal     Audio_PlaySoundGeneral

/* 01220 80A6A5F0 24060004 */  addiu   $a2, $zero, 0x0004         ## $a2 = 00000004
/* 01224 80A6A5F4 0C29A9C9 */  jal     func_80A6A724
/* 01228 80A6A5F8 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 0122C 80A6A5FC 10000045 */  beq     $zero, $zero, .L80A6A714
/* 01230 80A6A600 8FBF002C */  lw      $ra, 0x002C($sp)
.L80A6A604:
/* 01234 80A6A604 44802000 */  mtc1    $zero, $f4                 ## $f4 = 0.00
/* 01238 80A6A608 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 0123C 80A6A60C E6040068 */  swc1    $f4, 0x0068($s0)           ## 00000068
/* 01240 80A6A610 8FB8003C */  lw      $t8, 0x003C($sp)
/* 01244 80A6A614 0C00B69E */  jal     func_8002DA78
/* 01248 80A6A618 8F051C44 */  lw      $a1, 0x1C44($t8)           ## 00001C44
/* 0124C 80A6A61C 86190032 */  lh      $t9, 0x0032($s0)           ## 00000032
/* 01250 80A6A620 00592023 */  subu    $a0, $v0, $t9
/* 01254 80A6A624 00042400 */  sll     $a0, $a0, 16
/* 01258 80A6A628 00042403 */  sra     $a0, $a0, 16
/* 0125C 80A6A62C 0C01DE0D */  jal     Math_Coss
              ## coss?
/* 01260 80A6A630 A7A40036 */  sh      $a0, 0x0036($sp)
/* 01264 80A6A634 3C0180A7 */  lui     $at, %hi(D_80A6AFF0)       ## $at = 80A70000
/* 01268 80A6A638 C426AFF0 */  lwc1    $f6, %lo(D_80A6AFF0)($at)
/* 0126C 80A6A63C 4606003C */  c.lt.s  $f0, $f6
/* 01270 80A6A640 00000000 */  nop
/* 01274 80A6A644 4502000B */  bc1fl   .L80A6A674
/* 01278 80A6A648 260401A0 */  addiu   $a0, $s0, 0x01A0           ## $a0 = 000001A0
/* 0127C 80A6A64C 8E080150 */  lw      $t0, 0x0150($s0)           ## 00000150
/* 01280 80A6A650 24010002 */  addiu   $at, $zero, 0x0002         ## $at = 00000002
/* 01284 80A6A654 8FA9003C */  lw      $t1, 0x003C($sp)
/* 01288 80A6A658 15010005 */  bne     $t0, $at, .L80A6A670
/* 0128C 80A6A65C 2406012C */  addiu   $a2, $zero, 0x012C         ## $a2 = 0000012C
/* 01290 80A6A660 8D251C44 */  lw      $a1, 0x1C44($t1)           ## 00001C44
/* 01294 80A6A664 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 01298 80A6A668 0C01B767 */  jal     func_8006DD9C
/* 0129C 80A6A66C 24A50024 */  addiu   $a1, $a1, 0x0024           ## $a1 = 00000024
.L80A6A670:
/* 012A0 80A6A670 260401A0 */  addiu   $a0, $s0, 0x01A0           ## $a0 = 000001A0
.L80A6A674:
/* 012A4 80A6A674 0C02927F */  jal     SkelAnime_FrameUpdateMatrix

/* 012A8 80A6A678 AFA40030 */  sw      $a0, 0x0030($sp)
/* 012AC 80A6A67C 50400025 */  beql    $v0, $zero, .L80A6A714
/* 012B0 80A6A680 8FBF002C */  lw      $ra, 0x002C($sp)
/* 012B4 80A6A684 0C01DE0D */  jal     Math_Coss
              ## coss?
/* 012B8 80A6A688 87A40036 */  lh      $a0, 0x0036($sp)
/* 012BC 80A6A68C 44804000 */  mtc1    $zero, $f8                 ## $f8 = 0.00
/* 012C0 80A6A690 240A0002 */  addiu   $t2, $zero, 0x0002         ## $t2 = 00000002
/* 012C4 80A6A694 3C0480A7 */  lui     $a0, %hi(D_80A6AEE8)       ## $a0 = 80A70000
/* 012C8 80A6A698 4608003C */  c.lt.s  $f0, $f8
/* 012CC 80A6A69C 00000000 */  nop
/* 012D0 80A6A6A0 45000019 */  bc1f    .L80A6A708
/* 012D4 80A6A6A4 00000000 */  nop
/* 012D8 80A6A6A8 AE0A0150 */  sw      $t2, 0x0150($s0)           ## 00000150
/* 012DC 80A6A6AC 0C028800 */  jal     SkelAnime_GetFrameCount

/* 012E0 80A6A6B0 8C84AEE8 */  lw      $a0, %lo(D_80A6AEE8)($a0)
/* 012E4 80A6A6B4 44825000 */  mtc1    $v0, $f10                  ## $f10 = 0.00
/* 012E8 80A6A6B8 8E030150 */  lw      $v1, 0x0150($s0)           ## 00000150
/* 012EC 80A6A6BC 3C01C0A0 */  lui     $at, 0xC0A0                ## $at = C0A00000
/* 012F0 80A6A6C0 46805420 */  cvt.s.w $f16, $f10
/* 012F4 80A6A6C4 00031880 */  sll     $v1, $v1,  2
/* 012F8 80A6A6C8 44819000 */  mtc1    $at, $f18                  ## $f18 = -5.00
/* 012FC 80A6A6CC 3C0580A7 */  lui     $a1, %hi(D_80A6AEE0)       ## $a1 = 80A70000
/* 01300 80A6A6D0 3C0680A7 */  lui     $a2, %hi(D_80A6AF64)       ## $a2 = 80A70000
/* 01304 80A6A6D4 00C33021 */  addu    $a2, $a2, $v1
/* 01308 80A6A6D8 00A32821 */  addu    $a1, $a1, $v1
/* 0130C 80A6A6DC 240B0002 */  addiu   $t3, $zero, 0x0002         ## $t3 = 00000002
/* 01310 80A6A6E0 AFAB0014 */  sw      $t3, 0x0014($sp)
/* 01314 80A6A6E4 8CA5AEE0 */  lw      $a1, %lo(D_80A6AEE0)($a1)
/* 01318 80A6A6E8 8CC6AF64 */  lw      $a2, %lo(D_80A6AF64)($a2)
/* 0131C 80A6A6EC E7B00010 */  swc1    $f16, 0x0010($sp)
/* 01320 80A6A6F0 8FA40030 */  lw      $a0, 0x0030($sp)
/* 01324 80A6A6F4 24070000 */  addiu   $a3, $zero, 0x0000         ## $a3 = 00000000
/* 01328 80A6A6F8 0C029468 */  jal     SkelAnime_ChangeAnim

/* 0132C 80A6A6FC E7B20018 */  swc1    $f18, 0x0018($sp)
/* 01330 80A6A700 10000004 */  beq     $zero, $zero, .L80A6A714
/* 01334 80A6A704 8FBF002C */  lw      $ra, 0x002C($sp)
.L80A6A708:
/* 01338 80A6A708 0C29A937 */  jal     func_80A6A4DC
/* 0133C 80A6A70C 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 01340 80A6A710 8FBF002C */  lw      $ra, 0x002C($sp)
.L80A6A714:
/* 01344 80A6A714 8FB00028 */  lw      $s0, 0x0028($sp)
/* 01348 80A6A718 27BD0038 */  addiu   $sp, $sp, 0x0038           ## $sp = 00000000
/* 0134C 80A6A71C 03E00008 */  jr      $ra
/* 01350 80A6A720 00000000 */  nop
