glabel func_8099A508
/* 01D88 8099A508 27BDFFC8 */  addiu   $sp, $sp, 0xFFC8           ## $sp = FFFFFFC8
/* 01D8C 8099A50C AFBF002C */  sw      $ra, 0x002C($sp)
/* 01D90 8099A510 AFB00028 */  sw      $s0, 0x0028($sp)
/* 01D94 8099A514 848201B2 */  lh      $v0, 0x01B2($a0)           ## 000001B2
/* 01D98 8099A518 00808025 */  or      $s0, $a0, $zero            ## $s0 = 00000000
/* 01D9C 8099A51C 8CA31C44 */  lw      $v1, 0x1C44($a1)           ## 00001C44
/* 01DA0 8099A520 10400004 */  beq     $v0, $zero, .L8099A534
/* 01DA4 8099A524 3C078013 */  lui     $a3, %hi(D_801333E0)
/* 01DA8 8099A528 244EFFFF */  addiu   $t6, $v0, 0xFFFF           ## $t6 = FFFFFFFF
/* 01DAC 8099A52C 1000002A */  beq     $zero, $zero, .L8099A5D8
/* 01DB0 8099A530 A48E01B2 */  sh      $t6, 0x01B2($a0)           ## 000001B2
.L8099A534:
/* 01DB4 8099A534 3C0F8013 */  lui     $t7, %hi(D_801333E8)
/* 01DB8 8099A538 24E733E0 */  addiu   $a3, %lo(D_801333E0)
/* 01DBC 8099A53C 25EF33E8 */  addiu   $t7, %lo(D_801333E8)
/* 01DC0 8099A540 AFAF0014 */  sw      $t7, 0x0014($sp)
/* 01DC4 8099A544 AFA70010 */  sw      $a3, 0x0010($sp)
/* 01DC8 8099A548 24042826 */  addiu   $a0, $zero, 0x2826         ## $a0 = 00002826
/* 01DCC 8099A54C 246500E4 */  addiu   $a1, $v1, 0x00E4           ## $a1 = 000000E4
/* 01DD0 8099A550 0C03DCE3 */  jal     Audio_PlaySoundGeneral

/* 01DD4 8099A554 24060004 */  addiu   $a2, $zero, 0x0004         ## $a2 = 00000004
/* 01DD8 8099A558 3C040600 */  lui     $a0, 0x0600                ## $a0 = 06000000
/* 01DDC 8099A55C 0C028800 */  jal     SkelAnime_GetLastFrame

/* 01DE0 8099A560 24841374 */  addiu   $a0, $a0, 0x1374           ## $a0 = 06001374
/* 01DE4 8099A564 3C040600 */  lui     $a0, 0x0600                ## $a0 = 06000000
/* 01DE8 8099A568 24841374 */  addiu   $a0, $a0, 0x1374           ## $a0 = 06001374
/* 01DEC 8099A56C 0C028800 */  jal     SkelAnime_GetLastFrame

/* 01DF0 8099A570 A7A20030 */  sh      $v0, 0x0030($sp)
/* 01DF4 8099A574 87B80030 */  lh      $t8, 0x0030($sp)
/* 01DF8 8099A578 44823000 */  mtc1    $v0, $f6                   ## $f6 = 0.00
/* 01DFC 8099A57C 3C014220 */  lui     $at, 0x4220                ## $at = 42200000
/* 01E00 8099A580 44982000 */  mtc1    $t8, $f4                   ## $f4 = 0.00
/* 01E04 8099A584 46803220 */  cvt.s.w $f8, $f6
/* 01E08 8099A588 44815000 */  mtc1    $at, $f10                  ## $f10 = 40.00
/* 01E0C 8099A58C 3C050600 */  lui     $a1, 0x0600                ## $a1 = 06000000
/* 01E10 8099A590 24190002 */  addiu   $t9, $zero, 0x0002         ## $t9 = 00000002
/* 01E14 8099A594 24080001 */  addiu   $t0, $zero, 0x0001         ## $t0 = 00000001
/* 01E18 8099A598 46802120 */  cvt.s.w $f4, $f4
/* 01E1C 8099A59C AFA8001C */  sw      $t0, 0x001C($sp)
/* 01E20 8099A5A0 AFB90014 */  sw      $t9, 0x0014($sp)
/* 01E24 8099A5A4 24A51374 */  addiu   $a1, $a1, 0x1374           ## $a1 = 06001374
/* 01E28 8099A5A8 E7A80010 */  swc1    $f8, 0x0010($sp)
/* 01E2C 8099A5AC 2604014C */  addiu   $a0, $s0, 0x014C           ## $a0 = 0000014C
/* 01E30 8099A5B0 44072000 */  mfc1    $a3, $f4
/* 01E34 8099A5B4 3C063F80 */  lui     $a2, 0x3F80                ## $a2 = 3F800000
/* 01E38 8099A5B8 0C0293F9 */  jal     SkelAnime_ChangeAnimImpl
/* 01E3C 8099A5BC E7AA0018 */  swc1    $f10, 0x0018($sp)
/* 01E40 8099A5C0 24090032 */  addiu   $t1, $zero, 0x0032         ## $t1 = 00000032
/* 01E44 8099A5C4 3C05809A */  lui     $a1, %hi(func_8099A5EC)    ## $a1 = 809A0000
/* 01E48 8099A5C8 A60901B2 */  sh      $t1, 0x01B2($s0)           ## 000001B2
/* 01E4C 8099A5CC 24A5A5EC */  addiu   $a1, $a1, %lo(func_8099A5EC) ## $a1 = 8099A5EC
/* 01E50 8099A5D0 0C2661E0 */  jal     func_80998780
/* 01E54 8099A5D4 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
.L8099A5D8:
/* 01E58 8099A5D8 8FBF002C */  lw      $ra, 0x002C($sp)
/* 01E5C 8099A5DC 8FB00028 */  lw      $s0, 0x0028($sp)
/* 01E60 8099A5E0 27BD0038 */  addiu   $sp, $sp, 0x0038           ## $sp = 00000000
/* 01E64 8099A5E4 03E00008 */  jr      $ra
/* 01E68 8099A5E8 00000000 */  nop
