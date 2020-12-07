glabel EnZl4_Init
/* 005FC 80B5BDAC 27BDFFC0 */  addiu   $sp, $sp, 0xFFC0           ## $sp = FFFFFFC0
/* 00600 80B5BDB0 AFB00024 */  sw      $s0, 0x0024($sp)
/* 00604 80B5BDB4 00808025 */  or      $s0, $a0, $zero            ## $s0 = 00000000
/* 00608 80B5BDB8 AFB10028 */  sw      $s1, 0x0028($sp)
/* 0060C 80B5BDBC AFBF002C */  sw      $ra, 0x002C($sp)
/* 00610 80B5BDC0 AFA50044 */  sw      $a1, 0x0044($sp)
/* 00614 80B5BDC4 2611014C */  addiu   $s1, $s0, 0x014C           ## $s1 = 0000014C
/* 00618 80B5BDC8 260E0218 */  addiu   $t6, $s0, 0x0218           ## $t6 = 00000218
/* 0061C 80B5BDCC 260F0284 */  addiu   $t7, $s0, 0x0284           ## $t7 = 00000284
/* 00620 80B5BDD0 00A02025 */  or      $a0, $a1, $zero            ## $a0 = 00000000
/* 00624 80B5BDD4 3C060601 */  lui     $a2, 0x0601                ## $a2 = 06010000
/* 00628 80B5BDD8 24180012 */  addiu   $t8, $zero, 0x0012         ## $t8 = 00000012
/* 0062C 80B5BDDC AFB80018 */  sw      $t8, 0x0018($sp)
/* 00630 80B5BDE0 24C6E038 */  addiu   $a2, $a2, 0xE038           ## $a2 = 0600E038
/* 00634 80B5BDE4 02202825 */  or      $a1, $s1, $zero            ## $a1 = 0000014C
/* 00638 80B5BDE8 AFAF0014 */  sw      $t7, 0x0014($sp)
/* 0063C 80B5BDEC AFAE0010 */  sw      $t6, 0x0010($sp)
/* 00640 80B5BDF0 0C0291BE */  jal     SkelAnime_InitFlex
/* 00644 80B5BDF4 00003825 */  or      $a3, $zero, $zero          ## $a3 = 00000000
/* 00648 80B5BDF8 3C068003 */  lui     $a2, %hi(ActorShadow_DrawFunc_Circle)
/* 0064C 80B5BDFC 24C6B5EC */  addiu   $a2, %lo(ActorShadow_DrawFunc_Circle)
/* 00650 80B5BE00 260400B4 */  addiu   $a0, $s0, 0x00B4           ## $a0 = 000000B4
/* 00654 80B5BE04 24050000 */  addiu   $a1, $zero, 0x0000         ## $a1 = 00000000
/* 00658 80B5BE08 0C00AC78 */  jal     ActorShape_Init

/* 0065C 80B5BE0C 3C074190 */  lui     $a3, 0x4190                ## $a3 = 41900000
/* 00660 80B5BE10 3C0580B6 */  lui     $a1, %hi(D_80B5E7B8)       ## $a1 = 80B60000
/* 00664 80B5BE14 24A5E7B8 */  addiu   $a1, $a1, %lo(D_80B5E7B8)  ## $a1 = 80B5E7B8
/* 00668 80B5BE18 02202025 */  or      $a0, $s1, $zero            ## $a0 = 0000014C
/* 0066C 80B5BE1C 0C00D3B0 */  jal     func_80034EC0
/* 00670 80B5BE20 24060015 */  addiu   $a2, $zero, 0x0015         ## $a2 = 00000015
/* 00674 80B5BE24 26050194 */  addiu   $a1, $s0, 0x0194           ## $a1 = 00000194
/* 00678 80B5BE28 AFA50030 */  sw      $a1, 0x0030($sp)
/* 0067C 80B5BE2C 0C0170D9 */  jal     Collider_InitCylinder

/* 00680 80B5BE30 8FA40044 */  lw      $a0, 0x0044($sp)
/* 00684 80B5BE34 3C0780B6 */  lui     $a3, %hi(D_80B5E780)       ## $a3 = 80B60000
/* 00688 80B5BE38 8FA50030 */  lw      $a1, 0x0030($sp)
/* 0068C 80B5BE3C 24E7E780 */  addiu   $a3, $a3, %lo(D_80B5E780)  ## $a3 = 80B5E780
/* 00690 80B5BE40 8FA40044 */  lw      $a0, 0x0044($sp)
/* 00694 80B5BE44 0C01712B */  jal     Collider_SetCylinder

/* 00698 80B5BE48 02003025 */  or      $a2, $s0, $zero            ## $a2 = 00000000
/* 0069C 80B5BE4C 3C0680B6 */  lui     $a2, %hi(D_80B5E7AC)       ## $a2 = 80B60000
/* 006A0 80B5BE50 24C6E7AC */  addiu   $a2, $a2, %lo(D_80B5E7AC)  ## $a2 = 80B5E7AC
/* 006A4 80B5BE54 26040098 */  addiu   $a0, $s0, 0x0098           ## $a0 = 00000098
/* 006A8 80B5BE58 0C0187BF */  jal     func_80061EFC
/* 006AC 80B5BE5C 00002825 */  or      $a1, $zero, $zero          ## $a1 = 00000000
/* 006B0 80B5BE60 3C053C23 */  lui     $a1, 0x3C23                ## $a1 = 3C230000
/* 006B4 80B5BE64 34A5D70A */  ori     $a1, $a1, 0xD70A           ## $a1 = 3C23D70A
/* 006B8 80B5BE68 0C00B58B */  jal     Actor_SetScale

/* 006BC 80B5BE6C 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 006C0 80B5BE70 3C028016 */  lui     $v0, %hi(gSaveContext)
/* 006C4 80B5BE74 24190006 */  addiu   $t9, $zero, 0x0006         ## $t9 = 00000006
/* 006C8 80B5BE78 3408FFFF */  ori     $t0, $zero, 0xFFFF         ## $t0 = 0000FFFF
/* 006CC 80B5BE7C 2442E660 */  addiu   $v0, %lo(gSaveContext)
/* 006D0 80B5BE80 A219001F */  sb      $t9, 0x001F($s0)           ## 0000001F
/* 006D4 80B5BE84 A608010E */  sh      $t0, 0x010E($s0)           ## 0000010E
/* 006D8 80B5BE88 A200020E */  sb      $zero, 0x020E($s0)         ## 0000020E
/* 006DC 80B5BE8C A200020D */  sb      $zero, 0x020D($s0)         ## 0000020D
/* 006E0 80B5BE90 8C4A1360 */  lw      $t2, 0x1360($v0)           ## 8015F9C0
/* 006E4 80B5BE94 3C0580B6 */  lui     $a1, %hi(D_80B5E7B8)       ## $a1 = 80B60000
/* 006E8 80B5BE98 24A5E7B8 */  addiu   $a1, $a1, %lo(D_80B5E7B8)  ## $a1 = 80B5E7B8
/* 006EC 80B5BE9C 29410004 */  slti    $at, $t2, 0x0004
/* 006F0 80B5BEA0 14200007 */  bne     $at, $zero, .L80B5BEC0
/* 006F4 80B5BEA4 02202025 */  or      $a0, $s1, $zero            ## $a0 = 0000014C
/* 006F8 80B5BEA8 0C00D3B0 */  jal     func_80034EC0
/* 006FC 80B5BEAC 00003025 */  or      $a2, $zero, $zero          ## $a2 = 00000000
/* 00700 80B5BEB0 3C0B80B6 */  lui     $t3, %hi(func_80B5E108)    ## $t3 = 80B60000
/* 00704 80B5BEB4 256BE108 */  addiu   $t3, $t3, %lo(func_80B5E108) ## $t3 = 80B5E108
/* 00708 80B5BEB8 10000026 */  beq     $zero, $zero, .L80B5BF54
/* 0070C 80B5BEBC AE0B0190 */  sw      $t3, 0x0190($s0)           ## 00000190
.L80B5BEC0:
/* 00710 80B5BEC0 944C0EDC */  lhu     $t4, 0x0EDC($v0)           ## 00000EDC
/* 00714 80B5BEC4 3C0580B6 */  lui     $a1, %hi(D_80B5E7B8)       ## $a1 = 80B60000
/* 00718 80B5BEC8 24A5E7B8 */  addiu   $a1, $a1, %lo(D_80B5E7B8)  ## $a1 = 80B5E7B8
/* 0071C 80B5BECC 318D0001 */  andi    $t5, $t4, 0x0001           ## $t5 = 00000000
/* 00720 80B5BED0 11A00007 */  beq     $t5, $zero, .L80B5BEF0
/* 00724 80B5BED4 02202025 */  or      $a0, $s1, $zero            ## $a0 = 0000014C
/* 00728 80B5BED8 0C00D3B0 */  jal     func_80034EC0
/* 0072C 80B5BEDC 00003025 */  or      $a2, $zero, $zero          ## $a2 = 00000000
/* 00730 80B5BEE0 3C0E80B6 */  lui     $t6, %hi(func_80B5E090)    ## $t6 = 80B60000
/* 00734 80B5BEE4 25CEE090 */  addiu   $t6, $t6, %lo(func_80B5E090) ## $t6 = 80B5E090
/* 00738 80B5BEE8 1000001A */  beq     $zero, $zero, .L80B5BF54
/* 0073C 80B5BEEC AE0E0190 */  sw      $t6, 0x0190($s0)           ## 00000190
.L80B5BEF0:
/* 00740 80B5BEF0 8C4F0000 */  lw      $t7, 0x0000($v0)           ## 00000000
/* 00744 80B5BEF4 240105F0 */  addiu   $at, $zero, 0x05F0         ## $at = 000005F0
/* 00748 80B5BEF8 3C0580B6 */  lui     $a1, %hi(D_80B5E7B8)       ## $a1 = 80B60000
/* 0074C 80B5BEFC 11E10008 */  beq     $t7, $at, .L80B5BF20
/* 00750 80B5BF00 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 00754 80B5BF04 02202025 */  or      $a0, $s1, $zero            ## $a0 = 0000014C
/* 00758 80B5BF08 24A5E7B8 */  addiu   $a1, $a1, %lo(D_80B5E7B8)  ## $a1 = 80B5E7B8
/* 0075C 80B5BF0C 0C00D3B0 */  jal     func_80034EC0
/* 00760 80B5BF10 24060015 */  addiu   $a2, $zero, 0x0015         ## $a2 = 00000015
/* 00764 80B5BF14 A2000209 */  sb      $zero, 0x0209($s0)         ## 00000209
/* 00768 80B5BF18 1000000B */  beq     $zero, $zero, .L80B5BF48
/* 0076C 80B5BF1C A2000208 */  sb      $zero, 0x0208($s0)         ## 00000208
.L80B5BF20:
/* 00770 80B5BF20 0C2D6F00 */  jal     func_80B5BC00
/* 00774 80B5BF24 8FA50044 */  lw      $a1, 0x0044($sp)
/* 00778 80B5BF28 3C0580B6 */  lui     $a1, %hi(D_80B5E7B8)       ## $a1 = 80B60000
/* 0077C 80B5BF2C 24A5E7B8 */  addiu   $a1, $a1, %lo(D_80B5E7B8)  ## $a1 = 80B5E7B8
/* 00780 80B5BF30 02202025 */  or      $a0, $s1, $zero            ## $a0 = 0000014C
/* 00784 80B5BF34 0C00D3B0 */  jal     func_80034EC0
/* 00788 80B5BF38 00003025 */  or      $a2, $zero, $zero          ## $a2 = 00000000
/* 0078C 80B5BF3C 24180005 */  addiu   $t8, $zero, 0x0005         ## $t8 = 00000005
/* 00790 80B5BF40 A2180209 */  sb      $t8, 0x0209($s0)           ## 00000209
/* 00794 80B5BF44 A2000208 */  sb      $zero, 0x0208($s0)         ## 00000208
.L80B5BF48:
/* 00798 80B5BF48 3C1980B6 */  lui     $t9, %hi(func_80B5DE1C)    ## $t9 = 80B60000
/* 0079C 80B5BF4C 2739DE1C */  addiu   $t9, $t9, %lo(func_80B5DE1C) ## $t9 = 80B5DE1C
/* 007A0 80B5BF50 AE190190 */  sw      $t9, 0x0190($s0)           ## 00000190
.L80B5BF54:
/* 007A4 80B5BF54 8FBF002C */  lw      $ra, 0x002C($sp)
/* 007A8 80B5BF58 8FB00024 */  lw      $s0, 0x0024($sp)
/* 007AC 80B5BF5C 8FB10028 */  lw      $s1, 0x0028($sp)
/* 007B0 80B5BF60 03E00008 */  jr      $ra
/* 007B4 80B5BF64 27BD0040 */  addiu   $sp, $sp, 0x0040           ## $sp = 00000000
