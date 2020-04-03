glabel func_80AEE6D0
/* 03AC0 80AEE6D0 27BDFFC8 */  addiu   $sp, $sp, 0xFFC8           ## $sp = FFFFFFC8
/* 03AC4 80AEE6D4 3C0F8016 */  lui     $t7, 0x8016                ## $t7 = 80160000
/* 03AC8 80AEE6D8 95EFF580 */  lhu     $t7, -0x0A80($t7)          ## 8015F580
/* 03ACC 80AEE6DC 3C0E0001 */  lui     $t6, 0x0001                ## $t6 = 00010000
/* 03AD0 80AEE6E0 AFBF002C */  sw      $ra, 0x002C($sp)
/* 03AD4 80AEE6E4 AFB00028 */  sw      $s0, 0x0028($sp)
/* 03AD8 80AEE6E8 01C57021 */  addu    $t6, $t6, $a1
/* 03ADC 80AEE6EC 81CE1CBC */  lb      $t6, 0x1CBC($t6)           ## 00011CBC
/* 03AE0 80AEE6F0 31F80010 */  andi    $t8, $t7, 0x0010           ## $t8 = 00000000
/* 03AE4 80AEE6F4 00808025 */  or      $s0, $a0, $zero            ## $s0 = 00000000
/* 03AE8 80AEE6F8 1700002A */  bne     $t8, $zero, .L80AEE7A4
/* 03AEC 80AEE6FC A3AE0033 */  sb      $t6, 0x0033($sp)
/* 03AF0 80AEE700 00A02025 */  or      $a0, $a1, $zero            ## $a0 = 00000000
/* 03AF4 80AEE704 0C2BAC49 */  jal     func_80AEB124
/* 03AF8 80AEE708 AFA5003C */  sw      $a1, 0x003C($sp)
/* 03AFC 80AEE70C 50400026 */  beql    $v0, $zero, .L80AEE7A8
/* 03B00 80AEE710 83AC0033 */  lb      $t4, 0x0033($sp)
/* 03B04 80AEE714 0C023A62 */  jal     func_8008E988
/* 03B08 80AEE718 8FA4003C */  lw      $a0, 0x003C($sp)
/* 03B0C 80AEE71C 1440001D */  bne     $v0, $zero, .L80AEE794
/* 03B10 80AEE720 3C040600 */  lui     $a0, 0x0600                ## $a0 = 06000000
/* 03B14 80AEE724 0C028800 */  jal     SkelAnime_GetFrameCount

/* 03B18 80AEE728 24844350 */  addiu   $a0, $a0, 0x4350           ## $a0 = 06004350
/* 03B1C 80AEE72C 44822000 */  mtc1    $v0, $f4                   ## $f4 = 0.00
/* 03B20 80AEE730 3C01C100 */  lui     $at, 0xC100                ## $at = C1000000
/* 03B24 80AEE734 44814000 */  mtc1    $at, $f8                   ## $f8 = -8.00
/* 03B28 80AEE738 468021A0 */  cvt.s.w $f6, $f4
/* 03B2C 80AEE73C 3C050600 */  lui     $a1, 0x0600                ## $a1 = 06000000
/* 03B30 80AEE740 24A54648 */  addiu   $a1, $a1, 0x4648           ## $a1 = 06004648
/* 03B34 80AEE744 2604014C */  addiu   $a0, $s0, 0x014C           ## $a0 = 0000014C
/* 03B38 80AEE748 3C063F80 */  lui     $a2, 0x3F80                ## $a2 = 3F800000
/* 03B3C 80AEE74C 24070000 */  addiu   $a3, $zero, 0x0000         ## $a3 = 00000000
/* 03B40 80AEE750 E7A60010 */  swc1    $f6, 0x0010($sp)
/* 03B44 80AEE754 AFA00014 */  sw      $zero, 0x0014($sp)
/* 03B48 80AEE758 0C029468 */  jal     SkelAnime_ChangeAnim

/* 03B4C 80AEE75C E7A80018 */  swc1    $f8, 0x0018($sp)
/* 03B50 80AEE760 0C2BB580 */  jal     func_80AED600
/* 03B54 80AEE764 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 03B58 80AEE768 44805000 */  mtc1    $zero, $f10                ## $f10 = 0.00
/* 03B5C 80AEE76C 24190022 */  addiu   $t9, $zero, 0x0022         ## $t9 = 00000022
/* 03B60 80AEE770 AE190264 */  sw      $t9, 0x0264($s0)           ## 00000264
/* 03B64 80AEE774 E60A026C */  swc1    $f10, 0x026C($s0)          ## 0000026C
/* 03B68 80AEE778 8FA9003C */  lw      $t1, 0x003C($sp)
/* 03B6C 80AEE77C 3C0880AF */  lui     $t0, %hi(D_80AF1728)       ## $t0 = 80AF0000
/* 03B70 80AEE780 25081728 */  addiu   $t0, $t0, %lo(D_80AF1728)  ## $t0 = 80AF1728
/* 03B74 80AEE784 240A0001 */  addiu   $t2, $zero, 0x0001         ## $t2 = 00000001
/* 03B78 80AEE788 3C018016 */  lui     $at, 0x8016                ## $at = 80160000
/* 03B7C 80AEE78C AD281D68 */  sw      $t0, 0x1D68($t1)           ## 00001D68
/* 03B80 80AEE790 A02AFA74 */  sb      $t2, -0x058C($at)          ## 8015FA74
.L80AEE794:
/* 03B84 80AEE794 83AB0033 */  lb      $t3, 0x0033($sp)
/* 03B88 80AEE798 24020001 */  addiu   $v0, $zero, 0x0001         ## $v0 = 00000001
/* 03B8C 80AEE79C 10000004 */  beq     $zero, $zero, .L80AEE7B0
/* 03B90 80AEE7A0 A20B0286 */  sb      $t3, 0x0286($s0)           ## 00000286
.L80AEE7A4:
/* 03B94 80AEE7A4 83AC0033 */  lb      $t4, 0x0033($sp)
.L80AEE7A8:
/* 03B98 80AEE7A8 00001025 */  or      $v0, $zero, $zero          ## $v0 = 00000000
/* 03B9C 80AEE7AC A20C0286 */  sb      $t4, 0x0286($s0)           ## 00000286
.L80AEE7B0:
/* 03BA0 80AEE7B0 8FBF002C */  lw      $ra, 0x002C($sp)
/* 03BA4 80AEE7B4 8FB00028 */  lw      $s0, 0x0028($sp)
/* 03BA8 80AEE7B8 27BD0038 */  addiu   $sp, $sp, 0x0038           ## $sp = 00000000
/* 03BAC 80AEE7BC 03E00008 */  jr      $ra
/* 03BB0 80AEE7C0 00000000 */  nop


