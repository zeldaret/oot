glabel func_80ACB748
/* 01828 80ACB748 27BDFFD0 */  addiu   $sp, $sp, 0xFFD0           ## $sp = FFFFFFD0
/* 0182C 80ACB74C AFBF001C */  sw      $ra, 0x001C($sp)
/* 01830 80ACB750 F7B40010 */  sdc1    $f20, 0x0010($sp)
/* 01834 80ACB754 8482001C */  lh      $v0, 0x001C($a0)           ## 0000001C
/* 01838 80ACB758 00803025 */  or      $a2, $a0, $zero            ## $a2 = 00000000
/* 0183C 80ACB75C 00A03825 */  or      $a3, $a1, $zero            ## $a3 = 00000000
/* 01840 80ACB760 30420FC0 */  andi    $v0, $v0, 0x0FC0           ## $v0 = 00000000
/* 01844 80ACB764 00021183 */  sra     $v0, $v0,  6
/* 01848 80ACB768 AFA20024 */  sw      $v0, 0x0024($sp)
/* 0184C 80ACB76C AFA70034 */  sw      $a3, 0x0034($sp)
/* 01850 80ACB770 24A500E0 */  addiu   $a1, $a1, 0x00E0           ## $a1 = 000000E0
/* 01854 80ACB774 AFA60030 */  sw      $a2, 0x0030($sp)
/* 01858 80ACB778 0C032D9E */  jal     Math3D_Vec3f_DistXYZ
/* 0185C 80ACB77C 248403E0 */  addiu   $a0, $a0, 0x03E0           ## $a0 = 000003E0
/* 01860 80ACB780 3C013F80 */  lui     $at, 0x3F80                ## $at = 3F800000
/* 01864 80ACB784 44817000 */  mtc1    $at, $f14                  ## $f14 = 1.00
/* 01868 80ACB788 3C014234 */  lui     $at, 0x4234                ## $at = 42340000
/* 0186C 80ACB78C 44815000 */  mtc1    $at, $f10                  ## $f10 = 45.00
/* 01870 80ACB790 8FA70034 */  lw      $a3, 0x0034($sp)
/* 01874 80ACB794 8FA60030 */  lw      $a2, 0x0030($sp)
/* 01878 80ACB798 460A0303 */  div.s   $f12, $f0, $f10
/* 0187C 80ACB79C C4E400E0 */  lwc1    $f4, 0x00E0($a3)           ## 000000E0
/* 01880 80ACB7A0 8FA20024 */  lw      $v0, 0x0024($sp)
/* 01884 80ACB7A4 24010007 */  addiu   $at, $zero, 0x0007         ## $at = 00000007
/* 01888 80ACB7A8 E4C403E0 */  swc1    $f4, 0x03E0($a2)           ## 000003E0
/* 0188C 80ACB7AC C4E600E4 */  lwc1    $f6, 0x00E4($a3)           ## 000000E4
/* 01890 80ACB7B0 E4C603E4 */  swc1    $f6, 0x03E4($a2)           ## 000003E4
/* 01894 80ACB7B4 C4E800E8 */  lwc1    $f8, 0x00E8($a3)           ## 000000E8
/* 01898 80ACB7B8 E4C803E8 */  swc1    $f8, 0x03E8($a2)           ## 000003E8
/* 0189C 80ACB7BC 460C703C */  c.lt.s  $f14, $f12
/* 018A0 80ACB7C0 00000000 */  nop
/* 018A4 80ACB7C4 45000002 */  bc1f    .L80ACB7D0
/* 018A8 80ACB7C8 00000000 */  nop
/* 018AC 80ACB7CC 46007306 */  mov.s   $f12, $f14
.L80ACB7D0:
/* 018B0 80ACB7D0 10410007 */  beq     $v0, $at, .L80ACB7F0
/* 018B4 80ACB7D4 24010008 */  addiu   $at, $zero, 0x0008         ## $at = 00000008
/* 018B8 80ACB7D8 10410026 */  beq     $v0, $at, .L80ACB874
/* 018BC 80ACB7DC 24010009 */  addiu   $at, $zero, 0x0009         ## $at = 00000009
/* 018C0 80ACB7E0 50410025 */  beql    $v0, $at, .L80ACB878
/* 018C4 80ACB7E4 460C6500 */  add.s   $f20, $f12, $f12
/* 018C8 80ACB7E8 10000042 */  beq     $zero, $zero, .L80ACB8F4
/* 018CC 80ACB7EC 8FBF001C */  lw      $ra, 0x001C($sp)
.L80ACB7F0:
/* 018D0 80ACB7F0 460C6500 */  add.s   $f20, $f12, $f12
/* 018D4 80ACB7F4 3C0480AD */  lui     $a0, %hi(D_80ACD62C)       ## $a0 = 80AD0000
/* 018D8 80ACB7F8 2484D62C */  addiu   $a0, $a0, %lo(D_80ACD62C)  ## $a0 = 80ACD62C
/* 018DC 80ACB7FC 240520BD */  addiu   $a1, $zero, 0x20BD         ## $a1 = 000020BD
/* 018E0 80ACB800 4406A000 */  mfc1    $a2, $f20
/* 018E4 80ACB804 0C03D0DB */  jal     func_800F436C
/* 018E8 80ACB808 AFA70034 */  sw      $a3, 0x0034($sp)
/* 018EC 80ACB80C 8FA70034 */  lw      $a3, 0x0034($sp)
/* 018F0 80ACB810 3C0480AD */  lui     $a0, %hi(D_80ACD62C)       ## $a0 = 80AD0000
/* 018F4 80ACB814 2484D62C */  addiu   $a0, $a0, %lo(D_80ACD62C)  ## $a0 = 80ACD62C
/* 018F8 80ACB818 94E21D74 */  lhu     $v0, 0x1D74($a3)           ## 00001D74
/* 018FC 80ACB81C 24053926 */  addiu   $a1, $zero, 0x3926         ## $a1 = 00003926
/* 01900 80ACB820 28410145 */  slti    $at, $v0, 0x0145
/* 01904 80ACB824 10200005 */  beq     $at, $zero, .L80ACB83C
/* 01908 80ACB828 2841008E */  slti    $at, $v0, 0x008E
/* 0190C 80ACB82C 14200008 */  bne     $at, $zero, .L80ACB850
/* 01910 80ACB830 2841010B */  slti    $at, $v0, 0x010B
/* 01914 80ACB834 50200007 */  beql    $at, $zero, .L80ACB854
/* 01918 80ACB838 24010055 */  addiu   $at, $zero, 0x0055         ## $at = 00000055
.L80ACB83C:
/* 0191C 80ACB83C 4406A000 */  mfc1    $a2, $f20
/* 01920 80ACB840 0C03D105 */  jal     func_800F4414
/* 01924 80ACB844 AFA70034 */  sw      $a3, 0x0034($sp)
/* 01928 80ACB848 8FA70034 */  lw      $a3, 0x0034($sp)
/* 0192C 80ACB84C 94E21D74 */  lhu     $v0, 0x1D74($a3)           ## 00001D74
.L80ACB850:
/* 01930 80ACB850 24010055 */  addiu   $at, $zero, 0x0055         ## $at = 00000055
.L80ACB854:
/* 01934 80ACB854 14410026 */  bne     $v0, $at, .L80ACB8F0
/* 01938 80ACB858 3C0480AD */  lui     $a0, %hi(D_80ACD62C)       ## $a0 = 80AD0000
/* 0193C 80ACB85C 4406A000 */  mfc1    $a2, $f20
/* 01940 80ACB860 2484D62C */  addiu   $a0, $a0, %lo(D_80ACD62C)  ## $a0 = 80ACD62C
/* 01944 80ACB864 0C03D0DB */  jal     func_800F436C
/* 01948 80ACB868 240528BE */  addiu   $a1, $zero, 0x28BE         ## $a1 = 000028BE
/* 0194C 80ACB86C 10000021 */  beq     $zero, $zero, .L80ACB8F4
/* 01950 80ACB870 8FBF001C */  lw      $ra, 0x001C($sp)
.L80ACB874:
/* 01954 80ACB874 460C6500 */  add.s   $f20, $f12, $f12
.L80ACB878:
/* 01958 80ACB878 3C0480AD */  lui     $a0, %hi(D_80ACD62C)       ## $a0 = 80AD0000
/* 0195C 80ACB87C 2484D62C */  addiu   $a0, $a0, %lo(D_80ACD62C)  ## $a0 = 80ACD62C
/* 01960 80ACB880 240520BD */  addiu   $a1, $zero, 0x20BD         ## $a1 = 000020BD
/* 01964 80ACB884 4406A000 */  mfc1    $a2, $f20
/* 01968 80ACB888 0C03D0DB */  jal     func_800F436C
/* 0196C 80ACB88C AFA70034 */  sw      $a3, 0x0034($sp)
/* 01970 80ACB890 8FA70034 */  lw      $a3, 0x0034($sp)
/* 01974 80ACB894 3C0480AD */  lui     $a0, %hi(D_80ACD62C)       ## $a0 = 80AD0000
/* 01978 80ACB898 2484D62C */  addiu   $a0, $a0, %lo(D_80ACD62C)  ## $a0 = 80ACD62C
/* 0197C 80ACB89C 94E21D74 */  lhu     $v0, 0x1D74($a3)           ## 00001D74
/* 01980 80ACB8A0 24053926 */  addiu   $a1, $zero, 0x3926         ## $a1 = 00003926
/* 01984 80ACB8A4 284101A4 */  slti    $at, $v0, 0x01A4
/* 01988 80ACB8A8 10200005 */  beq     $at, $zero, .L80ACB8C0
/* 0198C 80ACB8AC 284100C2 */  slti    $at, $v0, 0x00C2
/* 01990 80ACB8B0 14200008 */  bne     $at, $zero, .L80ACB8D4
/* 01994 80ACB8B4 28410119 */  slti    $at, $v0, 0x0119
/* 01998 80ACB8B8 50200007 */  beql    $at, $zero, .L80ACB8D8
/* 0199C 80ACB8BC 240100D9 */  addiu   $at, $zero, 0x00D9         ## $at = 000000D9
.L80ACB8C0:
/* 019A0 80ACB8C0 4406A000 */  mfc1    $a2, $f20
/* 019A4 80ACB8C4 0C03D105 */  jal     func_800F4414
/* 019A8 80ACB8C8 AFA70034 */  sw      $a3, 0x0034($sp)
/* 019AC 80ACB8CC 8FA70034 */  lw      $a3, 0x0034($sp)
/* 019B0 80ACB8D0 94E21D74 */  lhu     $v0, 0x1D74($a3)           ## 00001D74
.L80ACB8D4:
/* 019B4 80ACB8D4 240100D9 */  addiu   $at, $zero, 0x00D9         ## $at = 000000D9
.L80ACB8D8:
/* 019B8 80ACB8D8 14410005 */  bne     $v0, $at, .L80ACB8F0
/* 019BC 80ACB8DC 3C0480AD */  lui     $a0, %hi(D_80ACD62C)       ## $a0 = 80AD0000
/* 019C0 80ACB8E0 4406A000 */  mfc1    $a2, $f20
/* 019C4 80ACB8E4 2484D62C */  addiu   $a0, $a0, %lo(D_80ACD62C)  ## $a0 = 80ACD62C
/* 019C8 80ACB8E8 0C03D0DB */  jal     func_800F436C
/* 019CC 80ACB8EC 240528BE */  addiu   $a1, $zero, 0x28BE         ## $a1 = 000028BE
.L80ACB8F0:
/* 019D0 80ACB8F0 8FBF001C */  lw      $ra, 0x001C($sp)
.L80ACB8F4:
/* 019D4 80ACB8F4 D7B40010 */  ldc1    $f20, 0x0010($sp)
/* 019D8 80ACB8F8 27BD0030 */  addiu   $sp, $sp, 0x0030           ## $sp = 00000000
/* 019DC 80ACB8FC 03E00008 */  jr      $ra
/* 019E0 80ACB900 00000000 */  nop
