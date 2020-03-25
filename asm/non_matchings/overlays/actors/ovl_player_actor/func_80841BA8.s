glabel func_80841BA8
/* 0F998 80841BA8 27BDFFC8 */  addiu   $sp, $sp, 0xFFC8           ## $sp = FFFFFFC8
/* 0F99C 80841BAC AFB0001C */  sw      $s0, 0x001C($sp)
/* 0F9A0 80841BB0 00808025 */  or      $s0, $a0, $zero            ## $s0 = 00000000
/* 0F9A4 80841BB4 AFB10020 */  sw      $s1, 0x0020($sp)
/* 0F9A8 80841BB8 00A08825 */  or      $s1, $a1, $zero            ## $s1 = 00000000
/* 0F9AC 80841BBC AFBF0024 */  sw      $ra, 0x0024($sp)
/* 0F9B0 80841BC0 00A02025 */  or      $a0, $a1, $zero            ## $a0 = 00000000
/* 0F9B4 80841BC4 0C028EF0 */  jal     func_800A3BC0
/* 0F9B8 80841BC8 260501B4 */  addiu   $a1, $s0, 0x01B4           ## $a1 = 000001B4
/* 0F9BC 80841BCC 0C023C68 */  jal     func_8008F1A0
/* 0F9C0 80841BD0 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 0F9C4 80841BD4 50400013 */  beql    $v0, $zero, .L80841C24
/* 0F9C8 80841BD8 3C073C93 */  lui     $a3, 0x3C93                ## $a3 = 3C930000
/* 0F9CC 80841BDC 0C20CCCE */  jal     func_80833338
/* 0F9D0 80841BE0 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 0F9D4 80841BE4 8E0E01D8 */  lw      $t6, 0x01D8($s0)           ## 000001D8
/* 0F9D8 80841BE8 920701B4 */  lbu     $a3, 0x01B4($s0)           ## 000001B4
/* 0F9DC 80841BEC 02202025 */  or      $a0, $s1, $zero            ## $a0 = 00000000
/* 0F9E0 80841BF0 00402825 */  or      $a1, $v0, $zero            ## $a1 = 00000000
/* 0F9E4 80841BF4 00003025 */  or      $a2, $zero, $zero          ## $a2 = 00000000
/* 0F9E8 80841BF8 0C028CDB */  jal     SkelAnime_LoadLinkAnimetion
/* 0F9EC 80841BFC AFAE0010 */  sw      $t6, 0x0010($sp)
/* 0F9F0 80841C00 3C0F8085 */  lui     $t7, %hi(D_80853410)       ## $t7 = 80850000
/* 0F9F4 80841C04 25EF3410 */  addiu   $t7, $t7, %lo(D_80853410)  ## $t7 = 80853410
/* 0F9F8 80841C08 920501B4 */  lbu     $a1, 0x01B4($s0)           ## 000001B4
/* 0F9FC 80841C0C 8E0601D4 */  lw      $a2, 0x01D4($s0)           ## 000001D4
/* 0FA00 80841C10 8E0701D8 */  lw      $a3, 0x01D8($s0)           ## 000001D8
/* 0FA04 80841C14 AFAF0010 */  sw      $t7, 0x0010($sp)
/* 0FA08 80841C18 0C028D52 */  jal     SkelAnime_LoadAnimationType3
/* 0FA0C 80841C1C 02202025 */  or      $a0, $s1, $zero            ## $a0 = 00000000
/* 0FA10 80841C20 3C073C93 */  lui     $a3, 0x3C93                ## $a3 = 3C930000
.L80841C24:
/* 0FA14 80841C24 34E774BC */  ori     $a3, $a3, 0x74BC           ## $a3 = 3C9374BC
/* 0FA18 80841C28 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 0FA1C 80841C2C 27A50034 */  addiu   $a1, $sp, 0x0034           ## $a1 = FFFFFFFC
/* 0FA20 80841C30 27A60032 */  addiu   $a2, $sp, 0x0032           ## $a2 = FFFFFFFA
/* 0FA24 80841C34 0C20DC9A */  jal     func_80837268
/* 0FA28 80841C38 AFB10010 */  sw      $s1, 0x0010($sp)
/* 0FA2C 80841C3C 3C068085 */  lui     $a2, %hi(D_80854414)       ## $a2 = 80850000
/* 0FA30 80841C40 24C64414 */  addiu   $a2, $a2, %lo(D_80854414)  ## $a2 = 80854414
/* 0FA34 80841C44 02202025 */  or      $a0, $s1, $zero            ## $a0 = 00000000
/* 0FA38 80841C48 02002825 */  or      $a1, $s0, $zero            ## $a1 = 00000000
/* 0FA3C 80841C4C 0C20DCD2 */  jal     func_80837348
/* 0FA40 80841C50 24070001 */  addiu   $a3, $zero, 0x0001         ## $a3 = 00000001
/* 0FA44 80841C54 14400016 */  bne     $v0, $zero, .L80841CB0
/* 0FA48 80841C58 C7A40034 */  lwc1    $f4, 0x0034($sp)
/* 0FA4C 80841C5C 44803000 */  mtc1    $zero, $f6                 ## $f6 = 0.00
/* 0FA50 80841C60 87B80032 */  lh      $t8, 0x0032($sp)
/* 0FA54 80841C64 260400B6 */  addiu   $a0, $s0, 0x00B6           ## $a0 = 000000B6
/* 0FA58 80841C68 46062032 */  c.eq.s  $f4, $f6
/* 0FA5C 80841C6C 87A50032 */  lh      $a1, 0x0032($sp)
/* 0FA60 80841C70 45010007 */  bc1t    .L80841C90
/* 0FA64 80841C74 00000000 */  nop
/* 0FA68 80841C78 A61800B6 */  sh      $t8, 0x00B6($s0)           ## 000000B6
/* 0FA6C 80841C7C 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 0FA70 80841C80 0C20F216 */  jal     func_8083C858
/* 0FA74 80841C84 02202825 */  or      $a1, $s1, $zero            ## $a1 = 00000000
/* 0FA78 80841C88 10000008 */  beq     $zero, $zero, .L80841CAC
/* 0FA7C 80841C8C 861900B6 */  lh      $t9, 0x00B6($s0)           ## 000000B6
.L80841C90:
/* 0FA80 80841C90 0C01DE2B */  jal     Math_ApproxUpdateScaledS

/* 0FA84 80841C94 8606087E */  lh      $a2, 0x087E($s0)           ## 0000087E
/* 0FA88 80841C98 10400003 */  beq     $v0, $zero, .L80841CA8
/* 0FA8C 80841C9C 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 0FA90 80841CA0 0C20F03A */  jal     func_8083C0E8
/* 0FA94 80841CA4 02202825 */  or      $a1, $s1, $zero            ## $a1 = 00000000
.L80841CA8:
/* 0FA98 80841CA8 861900B6 */  lh      $t9, 0x00B6($s0)           ## 000000B6
.L80841CAC:
/* 0FA9C 80841CAC A619083C */  sh      $t9, 0x083C($s0)           ## 0000083C
.L80841CB0:
/* 0FAA0 80841CB0 8FBF0024 */  lw      $ra, 0x0024($sp)
/* 0FAA4 80841CB4 8FB0001C */  lw      $s0, 0x001C($sp)
/* 0FAA8 80841CB8 8FB10020 */  lw      $s1, 0x0020($sp)
/* 0FAAC 80841CBC 03E00008 */  jr      $ra
/* 0FAB0 80841CC0 27BD0038 */  addiu   $sp, $sp, 0x0038           ## $sp = 00000000


