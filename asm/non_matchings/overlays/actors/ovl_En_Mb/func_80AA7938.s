.late_rodata
glabel D_80AA9E84
 .word 0x44228000
glabel D_80AA9E88
    .float 0.04

.text
glabel func_80AA7938
/* 018E8 80AA7938 27BDFF78 */  addiu   $sp, $sp, 0xFF78           ## $sp = FFFFFF78
/* 018EC 80AA793C 3C1880AB */  lui     $t8, %hi(D_80AA9D50)       ## $t8 = 80AB0000
/* 018F0 80AA7940 AFBF0034 */  sw      $ra, 0x0034($sp)
/* 018F4 80AA7944 AFB00030 */  sw      $s0, 0x0030($sp)
/* 018F8 80AA7948 AFA5008C */  sw      $a1, 0x008C($sp)
/* 018FC 80AA794C 27189D50 */  addiu   $t8, $t8, %lo(D_80AA9D50)  ## $t8 = 80AA9D50
/* 01900 80AA7950 8F080000 */  lw      $t0, 0x0000($t8)           ## 80AA9D50
/* 01904 80AA7954 8CA31C44 */  lw      $v1, 0x1C44($a1)           ## 00001C44
/* 01908 80AA7958 27AF0068 */  addiu   $t7, $sp, 0x0068           ## $t7 = FFFFFFE0
/* 0190C 80AA795C ADE80000 */  sw      $t0, 0x0000($t7)           ## FFFFFFE0
/* 01910 80AA7960 8F080008 */  lw      $t0, 0x0008($t8)           ## 80AA9D58
/* 01914 80AA7964 8F190004 */  lw      $t9, 0x0004($t8)           ## 80AA9D54
/* 01918 80AA7968 3C0A80AB */  lui     $t2, %hi(D_80AA9D5C)       ## $t2 = 80AB0000
/* 0191C 80AA796C 254A9D5C */  addiu   $t2, $t2, %lo(D_80AA9D5C)  ## $t2 = 80AA9D5C
/* 01920 80AA7970 ADE80008 */  sw      $t0, 0x0008($t7)           ## FFFFFFE8
/* 01924 80AA7974 ADF90004 */  sw      $t9, 0x0004($t7)           ## FFFFFFE4
/* 01928 80AA7978 8D4C0000 */  lw      $t4, 0x0000($t2)           ## 80AA9D5C
/* 0192C 80AA797C 27A9005C */  addiu   $t1, $sp, 0x005C           ## $t1 = FFFFFFD4
/* 01930 80AA7980 8D4B0004 */  lw      $t3, 0x0004($t2)           ## 80AA9D60
/* 01934 80AA7984 AD2C0000 */  sw      $t4, 0x0000($t1)           ## FFFFFFD4
/* 01938 80AA7988 8D4C0008 */  lw      $t4, 0x0008($t2)           ## 80AA9D64
/* 0193C 80AA798C 3C0E80AB */  lui     $t6, %hi(D_80AA9D68)       ## $t6 = 80AB0000
/* 01940 80AA7990 25CE9D68 */  addiu   $t6, $t6, %lo(D_80AA9D68)  ## $t6 = 80AA9D68
/* 01944 80AA7994 AD2B0004 */  sw      $t3, 0x0004($t1)           ## FFFFFFD8
/* 01948 80AA7998 AD2C0008 */  sw      $t4, 0x0008($t1)           ## FFFFFFDC
/* 0194C 80AA799C 8DD80000 */  lw      $t8, 0x0000($t6)           ## 80AA9D68
/* 01950 80AA79A0 27AD0054 */  addiu   $t5, $sp, 0x0054           ## $t5 = FFFFFFCC
/* 01954 80AA79A4 3C1980AB */  lui     $t9, %hi(D_80AA9D70)       ## $t9 = 80AB0000
/* 01958 80AA79A8 ADB80000 */  sw      $t8, 0x0000($t5)           ## FFFFFFCC
/* 0195C 80AA79AC 95D80004 */  lhu     $t8, 0x0004($t6)           ## 80AA9D6C
/* 01960 80AA79B0 27399D70 */  addiu   $t9, $t9, %lo(D_80AA9D70)  ## $t9 = 80AA9D70
/* 01964 80AA79B4 27A2004C */  addiu   $v0, $sp, 0x004C           ## $v0 = FFFFFFC4
/* 01968 80AA79B8 A5B80004 */  sh      $t8, 0x0004($t5)           ## FFFFFFD0
/* 0196C 80AA79BC 8F290000 */  lw      $t1, 0x0000($t9)           ## 80AA9D70
/* 01970 80AA79C0 00808025 */  or      $s0, $a0, $zero            ## $s0 = 00000000
/* 01974 80AA79C4 248400B6 */  addiu   $a0, $a0, 0x00B6           ## $a0 = 000000B6
/* 01978 80AA79C8 AC490000 */  sw      $t1, 0x0000($v0)           ## FFFFFFC4
/* 0197C 80AA79CC 97290004 */  lhu     $t1, 0x0004($t9)           ## 80AA9D74
/* 01980 80AA79D0 24060001 */  addiu   $a2, $zero, 0x0001         ## $a2 = 00000001
/* 01984 80AA79D4 240702EE */  addiu   $a3, $zero, 0x02EE         ## $a3 = 000002EE
/* 01988 80AA79D8 A4490004 */  sh      $t1, 0x0004($v0)           ## FFFFFFC8
/* 0198C 80AA79DC 860A0334 */  lh      $t2, 0x0334($s0)           ## 00000334
/* 01990 80AA79E0 860E0032 */  lh      $t6, 0x0032($s0)           ## 00000032
/* 01994 80AA79E4 000A5840 */  sll     $t3, $t2,  1
/* 01998 80AA79E8 004B6021 */  addu    $t4, $v0, $t3
/* 0199C 80AA79EC 858DFFFE */  lh      $t5, -0x0002($t4)          ## FFFFFFFE
/* 019A0 80AA79F0 AFA00010 */  sw      $zero, 0x0010($sp)
/* 019A4 80AA79F4 AFA30084 */  sw      $v1, 0x0084($sp)
/* 019A8 80AA79F8 01AE2821 */  addu    $a1, $t5, $t6
/* 019AC 80AA79FC 00052C00 */  sll     $a1, $a1, 16
/* 019B0 80AA7A00 0C01E1A7 */  jal     Math_SmoothScaleMaxMinS

/* 019B4 80AA7A04 00052C03 */  sra     $a1, $a1, 16
/* 019B8 80AA7A08 920403C4 */  lbu     $a0, 0x03C4($s0)           ## 000003C4
/* 019BC 80AA7A0C 8FA30084 */  lw      $v1, 0x0084($sp)
/* 019C0 80AA7A10 308F0002 */  andi    $t7, $a0, 0x0002           ## $t7 = 00000000
/* 019C4 80AA7A14 51E00030 */  beql    $t7, $zero, .L80AA7AD8
/* 019C8 80AA7A18 2604018C */  addiu   $a0, $s0, 0x018C           ## $a0 = 0000018C
/* 019CC 80AA7A1C 8E1903B8 */  lw      $t9, 0x03B8($s0)           ## 000003B8
/* 019D0 80AA7A20 3098FFFD */  andi    $t8, $a0, 0xFFFD           ## $t8 = 0000018C
/* 019D4 80AA7A24 A21803C4 */  sb      $t8, 0x03C4($s0)           ## 000003C4
/* 019D8 80AA7A28 5479002B */  bnel    $v1, $t9, .L80AA7AD8
/* 019DC 80AA7A2C 2604018C */  addiu   $a0, $s0, 0x018C           ## $a0 = 0000018C
/* 019E0 80AA7A30 80620A78 */  lb      $v0, 0x0A78($v1)           ## 00000A78
/* 019E4 80AA7A34 04410010 */  bgez    $v0, .L80AA7A78
/* 019E8 80AA7A38 A3A2004B */  sb      $v0, 0x004B($sp)
/* 019EC 80AA7A3C 2841FFD9 */  slti    $at, $v0, 0xFFD9
/* 019F0 80AA7A40 50200004 */  beql    $at, $zero, .L80AA7A54
/* 019F4 80AA7A44 A0600A78 */  sb      $zero, 0x0A78($v1)         ## 00000A78
/* 019F8 80AA7A48 1000000B */  beq     $zero, $zero, .L80AA7A78
/* 019FC 80AA7A4C A0600A78 */  sb      $zero, 0x0A78($v1)         ## 00000A78
/* 01A00 80AA7A50 A0600A78 */  sb      $zero, 0x0A78($v1)         ## 00000A78
.L80AA7A54:
/* 01A04 80AA7A54 8FA4008C */  lw      $a0, 0x008C($sp)
/* 01A08 80AA7A58 3C190001 */  lui     $t9, 0x0001                ## $t9 = 00010000
/* 01A0C 80AA7A5C AFA30084 */  sw      $v1, 0x0084($sp)
/* 01A10 80AA7A60 0324C821 */  addu    $t9, $t9, $a0
/* 01A14 80AA7A64 8F391D58 */  lw      $t9, 0x1D58($t9)           ## 00011D58
/* 01A18 80AA7A68 2405FFF8 */  addiu   $a1, $zero, 0xFFF8         ## $a1 = FFFFFFF8
/* 01A1C 80AA7A6C 0320F809 */  jalr    $ra, $t9
/* 01A20 80AA7A70 00000000 */  nop
/* 01A24 80AA7A74 8FA30084 */  lw      $v1, 0x0084($sp)
.L80AA7A78:
/* 01A28 80AA7A78 3C0180AB */  lui     $at, %hi(D_80AA9E84)       ## $at = 80AB0000
/* 01A2C 80AA7A7C C4249E84 */  lwc1    $f4, %lo(D_80AA9E84)($at)
/* 01A30 80AA7A80 C6060090 */  lwc1    $f6, 0x0090($s0)           ## 00000090
/* 01A34 80AA7A84 3C0180AB */  lui     $at, %hi(D_80AA9E88)       ## $at = 80AB0000
/* 01A38 80AA7A88 C42A9E88 */  lwc1    $f10, %lo(D_80AA9E88)($at)
/* 01A3C 80AA7A8C 46062201 */  sub.s   $f8, $f4, $f6
/* 01A40 80AA7A90 3C014080 */  lui     $at, 0x4080                ## $at = 40800000
/* 01A44 80AA7A94 44819000 */  mtc1    $at, $f18                  ## $f18 = 4.00
/* 01A48 80AA7A98 3C014100 */  lui     $at, 0x4100                ## $at = 41000000
/* 01A4C 80AA7A9C 460A4402 */  mul.s   $f16, $f8, $f10
/* 01A50 80AA7AA0 44813000 */  mtc1    $at, $f6                   ## $f6 = 8.00
/* 01A54 80AA7AA4 86070032 */  lh      $a3, 0x0032($s0)           ## 00000032
/* 01A58 80AA7AA8 AFA30084 */  sw      $v1, 0x0084($sp)
/* 01A5C 80AA7AAC 8FA4008C */  lw      $a0, 0x008C($sp)
/* 01A60 80AA7AB0 02002825 */  or      $a1, $s0, $zero            ## $a1 = 00000000
/* 01A64 80AA7AB4 E7A60010 */  swc1    $f6, 0x0010($sp)
/* 01A68 80AA7AB8 46128100 */  add.s   $f4, $f16, $f18
/* 01A6C 80AA7ABC 44062000 */  mfc1    $a2, $f4
/* 01A70 80AA7AC0 0C00BDC7 */  jal     func_8002F71C
/* 01A74 80AA7AC4 00000000 */  nop
/* 01A78 80AA7AC8 8FA30084 */  lw      $v1, 0x0084($sp)
/* 01A7C 80AA7ACC 93A9004B */  lbu     $t1, 0x004B($sp)
/* 01A80 80AA7AD0 A0690A78 */  sb      $t1, 0x0A78($v1)           ## 00000A78
/* 01A84 80AA7AD4 2604018C */  addiu   $a0, $s0, 0x018C           ## $a0 = 0000018C
.L80AA7AD8:
/* 01A88 80AA7AD8 0C02927F */  jal     SkelAnime_FrameUpdateMatrix

/* 01A8C 80AA7ADC AFA40040 */  sw      $a0, 0x0040($sp)
/* 01A90 80AA7AE0 50400054 */  beql    $v0, $zero, .L80AA7C34
/* 01A94 80AA7AE4 8602032E */  lh      $v0, 0x032E($s0)           ## 0000032E
/* 01A98 80AA7AE8 8602032E */  lh      $v0, 0x032E($s0)           ## 0000032E
/* 01A9C 80AA7AEC 10400017 */  beq     $v0, $zero, .L80AA7B4C
/* 01AA0 80AA7AF0 244AFFFF */  addiu   $t2, $v0, 0xFFFF           ## $t2 = FFFFFFFF
/* 01AA4 80AA7AF4 A60A032E */  sh      $t2, 0x032E($s0)           ## 0000032E
/* 01AA8 80AA7AF8 860B032E */  lh      $t3, 0x032E($s0)           ## 0000032E
/* 01AAC 80AA7AFC 3C100601 */  lui     $s0, 0x0601                ## $s0 = 06010000
/* 01AB0 80AA7B00 2610ABE0 */  addiu   $s0, $s0, 0xABE0           ## $s0 = 0600ABE0
/* 01AB4 80AA7B04 55600065 */  bnel    $t3, $zero, .L80AA7C9C
/* 01AB8 80AA7B08 8FBF0034 */  lw      $ra, 0x0034($sp)
/* 01ABC 80AA7B0C 0C028800 */  jal     SkelAnime_GetFrameCount

/* 01AC0 80AA7B10 02002025 */  or      $a0, $s0, $zero            ## $a0 = 0600ABE0
/* 01AC4 80AA7B14 44824000 */  mtc1    $v0, $f8                   ## $f8 = 0.00
/* 01AC8 80AA7B18 44800000 */  mtc1    $zero, $f0                 ## $f0 = 0.00
/* 01ACC 80AA7B1C 240C0003 */  addiu   $t4, $zero, 0x0003         ## $t4 = 00000003
/* 01AD0 80AA7B20 468042A0 */  cvt.s.w $f10, $f8
/* 01AD4 80AA7B24 44070000 */  mfc1    $a3, $f0
/* 01AD8 80AA7B28 AFAC0014 */  sw      $t4, 0x0014($sp)
/* 01ADC 80AA7B2C 8FA40040 */  lw      $a0, 0x0040($sp)
/* 01AE0 80AA7B30 02002825 */  or      $a1, $s0, $zero            ## $a1 = 0600ABE0
/* 01AE4 80AA7B34 3C063FC0 */  lui     $a2, 0x3FC0                ## $a2 = 3FC00000
/* 01AE8 80AA7B38 E7AA0010 */  swc1    $f10, 0x0010($sp)
/* 01AEC 80AA7B3C 0C029468 */  jal     SkelAnime_ChangeAnim

/* 01AF0 80AA7B40 E7A00018 */  swc1    $f0, 0x0018($sp)
/* 01AF4 80AA7B44 10000055 */  beq     $zero, $zero, .L80AA7C9C
/* 01AF8 80AA7B48 8FBF0034 */  lw      $ra, 0x0034($sp)
.L80AA7B4C:
/* 01AFC 80AA7B4C 8E0F0338 */  lw      $t7, 0x0338($s0)           ## 0600AF18
/* 01B00 80AA7B50 27AD0074 */  addiu   $t5, $sp, 0x0074           ## $t5 = FFFFFFEC
/* 01B04 80AA7B54 02002025 */  or      $a0, $s0, $zero            ## $a0 = 0600ABE0
/* 01B08 80AA7B58 ADAF0000 */  sw      $t7, 0x0000($t5)           ## FFFFFFEC
/* 01B0C 80AA7B5C 8E0E033C */  lw      $t6, 0x033C($s0)           ## 0600AF1C
/* 01B10 80AA7B60 240539EF */  addiu   $a1, $zero, 0x39EF         ## $a1 = 000039EF
/* 01B14 80AA7B64 ADAE0004 */  sw      $t6, 0x0004($t5)           ## FFFFFFF0
/* 01B18 80AA7B68 8E0F0340 */  lw      $t7, 0x0340($s0)           ## 0600AF20
/* 01B1C 80AA7B6C ADAF0008 */  sw      $t7, 0x0008($t5)           ## FFFFFFF4
/* 01B20 80AA7B70 C6100080 */  lwc1    $f16, 0x0080($s0)          ## 0600AC60
/* 01B24 80AA7B74 0C00BE0A */  jal     Audio_PlayActorSound2

/* 01B28 80AA7B78 E7B00078 */  swc1    $f16, 0x0078($sp)
/* 01B2C 80AA7B7C C60C0090 */  lwc1    $f12, 0x0090($s0)          ## 0600AC70
/* 01B30 80AA7B80 240500FF */  addiu   $a1, $zero, 0x00FF         ## $a1 = 000000FF
/* 01B34 80AA7B84 24060014 */  addiu   $a2, $zero, 0x0014         ## $a2 = 00000014
/* 01B38 80AA7B88 0C02A800 */  jal     func_800AA000
/* 01B3C 80AA7B8C 24070096 */  addiu   $a3, $zero, 0x0096         ## $a3 = 00000096
/* 01B40 80AA7B90 27A60068 */  addiu   $a2, $sp, 0x0068           ## $a2 = FFFFFFE0
/* 01B44 80AA7B94 00C03825 */  or      $a3, $a2, $zero            ## $a3 = FFFFFFE0
/* 01B48 80AA7B98 8FA4008C */  lw      $a0, 0x008C($sp)
/* 01B4C 80AA7B9C 0C00A409 */  jal     EffectSsBlast_SpawnWhiteShockwave
/* 01B50 80AA7BA0 27A50074 */  addiu   $a1, $sp, 0x0074           ## $a1 = FFFFFFEC
/* 01B54 80AA7BA4 2418012C */  addiu   $t8, $zero, 0x012C         ## $t8 = 0000012C
/* 01B58 80AA7BA8 240800B4 */  addiu   $t0, $zero, 0x00B4         ## $t0 = 000000B4
/* 01B5C 80AA7BAC 24190001 */  addiu   $t9, $zero, 0x0001         ## $t9 = 00000001
/* 01B60 80AA7BB0 AFB90018 */  sw      $t9, 0x0018($sp)
/* 01B64 80AA7BB4 AFA80014 */  sw      $t0, 0x0014($sp)
/* 01B68 80AA7BB8 AFB80010 */  sw      $t8, 0x0010($sp)
/* 01B6C 80AA7BBC 8FA4008C */  lw      $a0, 0x008C($sp)
/* 01B70 80AA7BC0 27A50074 */  addiu   $a1, $sp, 0x0074           ## $a1 = FFFFFFEC
/* 01B74 80AA7BC4 3C064000 */  lui     $a2, 0x4000                ## $a2 = 40000000
/* 01B78 80AA7BC8 0C00CD20 */  jal     func_80033480
/* 01B7C 80AA7BCC 24070003 */  addiu   $a3, $zero, 0x0003         ## $a3 = 00000003
/* 01B80 80AA7BD0 8FA4008C */  lw      $a0, 0x008C($sp)
/* 01B84 80AA7BD4 24050002 */  addiu   $a1, $zero, 0x0002         ## $a1 = 00000002
/* 01B88 80AA7BD8 24060019 */  addiu   $a2, $zero, 0x0019         ## $a2 = 00000019
/* 01B8C 80AA7BDC 24070005 */  addiu   $a3, $zero, 0x0005         ## $a3 = 00000005
/* 01B90 80AA7BE0 0C016A87 */  jal     func_8005AA1C
/* 01B94 80AA7BE4 248401E0 */  addiu   $a0, $a0, 0x01E0           ## $a0 = 000001E0
/* 01B98 80AA7BE8 8FAB008C */  lw      $t3, 0x008C($sp)
/* 01B9C 80AA7BEC 24090014 */  addiu   $t1, $zero, 0x0014         ## $t1 = 00000014
/* 01BA0 80AA7BF0 27AA0054 */  addiu   $t2, $sp, 0x0054           ## $t2 = FFFFFFCC
/* 01BA4 80AA7BF4 240CFFFF */  addiu   $t4, $zero, 0xFFFF         ## $t4 = FFFFFFFF
/* 01BA8 80AA7BF8 AFAC001C */  sw      $t4, 0x001C($sp)
/* 01BAC 80AA7BFC AFAA0014 */  sw      $t2, 0x0014($sp)
/* 01BB0 80AA7C00 AFA90010 */  sw      $t1, 0x0010($sp)
/* 01BB4 80AA7C04 02002025 */  or      $a0, $s0, $zero            ## $a0 = 0600ABE0
/* 01BB8 80AA7C08 27A50074 */  addiu   $a1, $sp, 0x0074           ## $a1 = FFFFFFEC
/* 01BBC 80AA7C0C 26060030 */  addiu   $a2, $s0, 0x0030           ## $a2 = 0600AC10
/* 01BC0 80AA7C10 27A7005C */  addiu   $a3, $sp, 0x005C           ## $a3 = FFFFFFD4
/* 01BC4 80AA7C14 AFA00020 */  sw      $zero, 0x0020($sp)
/* 01BC8 80AA7C18 0C00D637 */  jal     func_800358DC
/* 01BCC 80AA7C1C AFAB0018 */  sw      $t3, 0x0018($sp)
/* 01BD0 80AA7C20 0C2A9B69 */  jal     func_80AA6DA4
/* 01BD4 80AA7C24 02002025 */  or      $a0, $s0, $zero            ## $a0 = 0600ABE0
/* 01BD8 80AA7C28 1000001C */  beq     $zero, $zero, .L80AA7C9C
/* 01BDC 80AA7C2C 8FBF0034 */  lw      $ra, 0x0034($sp)
/* 01BE0 80AA7C30 8602032E */  lh      $v0, 0x032E($s0)           ## 0600AF0E
.L80AA7C34:
/* 01BE4 80AA7C34 3C0140C0 */  lui     $at, 0x40C0                ## $at = 40C00000
/* 01BE8 80AA7C38 1040000C */  beq     $v0, $zero, .L80AA7C6C
/* 01BEC 80AA7C3C 00000000 */  nop
/* 01BF0 80AA7C40 44819000 */  mtc1    $at, $f18                  ## $f18 = 6.00
/* 01BF4 80AA7C44 C60401A4 */  lwc1    $f4, 0x01A4($s0)           ## 0600AD84
/* 01BF8 80AA7C48 02002025 */  or      $a0, $s0, $zero            ## $a0 = 0600ABE0
/* 01BFC 80AA7C4C 46049032 */  c.eq.s  $f18, $f4
/* 01C00 80AA7C50 00000000 */  nop
/* 01C04 80AA7C54 45000005 */  bc1f    .L80AA7C6C
/* 01C08 80AA7C58 00000000 */  nop
/* 01C0C 80AA7C5C 0C00BE0A */  jal     Audio_PlayActorSound2

/* 01C10 80AA7C60 240538E2 */  addiu   $a1, $zero, 0x38E2         ## $a1 = 000038E2
/* 01C14 80AA7C64 1000000D */  beq     $zero, $zero, .L80AA7C9C
/* 01C18 80AA7C68 8FBF0034 */  lw      $ra, 0x0034($sp)
.L80AA7C6C:
/* 01C1C 80AA7C6C 1440000A */  bne     $v0, $zero, .L80AA7C98
/* 01C20 80AA7C70 3C014040 */  lui     $at, 0x4040                ## $at = 40400000
/* 01C24 80AA7C74 44813000 */  mtc1    $at, $f6                   ## $f6 = 3.00
/* 01C28 80AA7C78 C60801A4 */  lwc1    $f8, 0x01A4($s0)           ## 0600AD84
/* 01C2C 80AA7C7C 02002025 */  or      $a0, $s0, $zero            ## $a0 = 0600ABE0
/* 01C30 80AA7C80 46083032 */  c.eq.s  $f6, $f8
/* 01C34 80AA7C84 00000000 */  nop
/* 01C38 80AA7C88 45020004 */  bc1fl   .L80AA7C9C
/* 01C3C 80AA7C8C 8FBF0034 */  lw      $ra, 0x0034($sp)
/* 01C40 80AA7C90 0C00BE0A */  jal     Audio_PlayActorSound2

/* 01C44 80AA7C94 240538E1 */  addiu   $a1, $zero, 0x38E1         ## $a1 = 000038E1
.L80AA7C98:
/* 01C48 80AA7C98 8FBF0034 */  lw      $ra, 0x0034($sp)
.L80AA7C9C:
/* 01C4C 80AA7C9C 8FB00030 */  lw      $s0, 0x0030($sp)
/* 01C50 80AA7CA0 27BD0088 */  addiu   $sp, $sp, 0x0088           ## $sp = 00000000
/* 01C54 80AA7CA4 03E00008 */  jr      $ra
/* 01C58 80AA7CA8 00000000 */  nop
