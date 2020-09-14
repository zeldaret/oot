.late_rodata
glabel D_80A66878
 .word 0x7E967699

.text
glabel func_80A5BD94
/* 00AA4 80A5BD94 27BDFF78 */  addiu   $sp, $sp, 0xFF78           ## $sp = FFFFFF78
/* 00AA8 80A5BD98 AFB00028 */  sw      $s0, 0x0028($sp)
/* 00AAC 80A5BD9C AFBE0048 */  sw      $s8, 0x0048($sp)
/* 00AB0 80A5BDA0 AFB70044 */  sw      $s7, 0x0044($sp)
/* 00AB4 80A5BDA4 AFB60040 */  sw      $s6, 0x0040($sp)
/* 00AB8 80A5BDA8 AFB20030 */  sw      $s2, 0x0030($sp)
/* 00ABC 80A5BDAC F7B60020 */  sdc1    $f22, 0x0020($sp)
/* 00AC0 80A5BDB0 3C0180A6 */  lui     $at, %hi(D_80A66878)       ## $at = 80A60000
/* 00AC4 80A5BDB4 3C1080A6 */  lui     $s0, %hi(D_80A65F40)       ## $s0 = 80A60000
/* 00AC8 80A5BDB8 00809025 */  or      $s2, $a0, $zero            ## $s2 = 00000000
/* 00ACC 80A5BDBC 00A0B025 */  or      $s6, $a1, $zero            ## $s6 = 00000000
/* 00AD0 80A5BDC0 AFBF004C */  sw      $ra, 0x004C($sp)
/* 00AD4 80A5BDC4 AFB5003C */  sw      $s5, 0x003C($sp)
/* 00AD8 80A5BDC8 AFB40038 */  sw      $s4, 0x0038($sp)
/* 00ADC 80A5BDCC AFB30034 */  sw      $s3, 0x0034($sp)
/* 00AE0 80A5BDD0 AFB1002C */  sw      $s1, 0x002C($sp)
/* 00AE4 80A5BDD4 F7B40018 */  sdc1    $f20, 0x0018($sp)
/* 00AE8 80A5BDD8 C4366878 */  lwc1    $f22, %lo(D_80A66878)($at)
/* 00AEC 80A5BDDC 0000F025 */  or      $s8, $zero, $zero          ## $s8 = 00000000
/* 00AF0 80A5BDE0 26105F40 */  addiu   $s0, $s0, %lo(D_80A65F40)  ## $s0 = 80A65F40
/* 00AF4 80A5BDE4 27B70068 */  addiu   $s7, $sp, 0x0068           ## $s7 = FFFFFFE0
/* 00AF8 80A5BDE8 86C200A4 */  lh      $v0, 0x00A4($s6)           ## 000000A4
.L80A5BDEC:
/* 00AFC 80A5BDEC 860E0000 */  lh      $t6, 0x0000($s0)           ## 80A65F40
/* 00B00 80A5BDF0 24010063 */  addiu   $at, $zero, 0x0063         ## $at = 00000063
/* 00B04 80A5BDF4 144E0064 */  bne     $v0, $t6, .L80A5BF88
/* 00B08 80A5BDF8 00000000 */  nop
/* 00B0C 80A5BDFC 14410022 */  bne     $v0, $at, .L80A5BE88
/* 00B10 80A5BE00 8ED11C44 */  lw      $s1, 0x1C44($s6)           ## 00001C44
/* 00B14 80A5BE04 0C00D6D3 */  jal     Flags_GetEventChkInf

/* 00B18 80A5BE08 24040018 */  addiu   $a0, $zero, 0x0018         ## $a0 = 00000018
/* 00B1C 80A5BE0C 1040000A */  beq     $v0, $zero, .L80A5BE38     
/* 00B20 80A5BE10 3C0F8016 */  lui     $t7, %hi(gSaveContext+0x13fa)
/* 00B24 80A5BE14 95EFFA5A */  lhu     $t7, %lo(gSaveContext+0x13fa)($t7)
/* 00B28 80A5BE18 24010006 */  addiu   $at, $zero, 0x0006         ## $at = 00000006
/* 00B2C 80A5BE1C 31F8000F */  andi    $t8, $t7, 0x000F           ## $t8 = 00000000
/* 00B30 80A5BE20 5701001A */  bnel    $t8, $at, .L80A5BE8C
/* 00B34 80A5BE24 860B0002 */  lh      $t3, 0x0002($s0)           ## 80A65F42
/* 00B38 80A5BE28 0C00D6D3 */  jal     Flags_GetEventChkInf

/* 00B3C 80A5BE2C 24040018 */  addiu   $a0, $zero, 0x0018         ## $a0 = 00000018
/* 00B40 80A5BE30 54400016 */  bnel    $v0, $zero, .L80A5BE8C
/* 00B44 80A5BE34 860B0002 */  lh      $t3, 0x0002($s0)           ## 80A65F42
.L80A5BE38:
/* 00B48 80A5BE38 86020002 */  lh      $v0, 0x0002($s0)           ## 80A65F42
/* 00B4C 80A5BE3C 24010358 */  addiu   $at, $zero, 0x0358         ## $at = 00000358
/* 00B50 80A5BE40 54410008 */  bnel    $v0, $at, .L80A5BE64
/* 00B54 80A5BE44 2401FC15 */  addiu   $at, $zero, 0xFC15         ## $at = FFFFFC15
/* 00B58 80A5BE48 86190004 */  lh      $t9, 0x0004($s0)           ## 80A65F44
/* 00B5C 80A5BE4C 57200005 */  bnel    $t9, $zero, .L80A5BE64
/* 00B60 80A5BE50 2401FC15 */  addiu   $at, $zero, 0xFC15         ## $at = FFFFFC15
/* 00B64 80A5BE54 86080006 */  lh      $t0, 0x0006($s0)           ## 80A65F46
/* 00B68 80A5BE58 2401FC6A */  addiu   $at, $zero, 0xFC6A         ## $at = FFFFFC6A
/* 00B6C 80A5BE5C 1101000A */  beq     $t0, $at, .L80A5BE88
/* 00B70 80A5BE60 2401FC15 */  addiu   $at, $zero, 0xFC15         ## $at = FFFFFC15
.L80A5BE64:
/* 00B74 80A5BE64 14410048 */  bne     $v0, $at, .L80A5BF88
/* 00B78 80A5BE68 00000000 */  nop
/* 00B7C 80A5BE6C 86090004 */  lh      $t1, 0x0004($s0)           ## 80A65F44
/* 00B80 80A5BE70 15200045 */  bne     $t1, $zero, .L80A5BF88
/* 00B84 80A5BE74 00000000 */  nop
/* 00B88 80A5BE78 860A0006 */  lh      $t2, 0x0006($s0)           ## 80A65F46
/* 00B8C 80A5BE7C 2401FD0D */  addiu   $at, $zero, 0xFD0D         ## $at = FFFFFD0D
/* 00B90 80A5BE80 15410041 */  bne     $t2, $at, .L80A5BF88
/* 00B94 80A5BE84 00000000 */  nop
.L80A5BE88:
/* 00B98 80A5BE88 860B0002 */  lh      $t3, 0x0002($s0)           ## 80A65F42
.L80A5BE8C:
/* 00B9C 80A5BE8C 860C0004 */  lh      $t4, 0x0004($s0)           ## 80A65F44
/* 00BA0 80A5BE90 860D0006 */  lh      $t5, 0x0006($s0)           ## 80A65F46
/* 00BA4 80A5BE94 448B2000 */  mtc1    $t3, $f4                   ## $f4 = 0.00
/* 00BA8 80A5BE98 448C4000 */  mtc1    $t4, $f8                   ## $f8 = 0.00
/* 00BAC 80A5BE9C 448D8000 */  mtc1    $t5, $f16                  ## $f16 = 0.00
/* 00BB0 80A5BEA0 468021A0 */  cvt.s.w $f6, $f4
/* 00BB4 80A5BEA4 26240024 */  addiu   $a0, $s1, 0x0024           ## $a0 = 00000024
/* 00BB8 80A5BEA8 02E02825 */  or      $a1, $s7, $zero            ## $a1 = FFFFFFE0
/* 00BBC 80A5BEAC 468042A0 */  cvt.s.w $f10, $f8
/* 00BC0 80A5BEB0 E7A60068 */  swc1    $f6, 0x0068($sp)
/* 00BC4 80A5BEB4 468084A0 */  cvt.s.w $f18, $f16
/* 00BC8 80A5BEB8 E7AA006C */  swc1    $f10, 0x006C($sp)
/* 00BCC 80A5BEBC 0C032D9E */  jal     Math3D_Vec3f_DistXYZ
/* 00BD0 80A5BEC0 E7B20070 */  swc1    $f18, 0x0070($sp)
/* 00BD4 80A5BEC4 4600B03C */  c.lt.s  $f22, $f0
/* 00BD8 80A5BEC8 46000506 */  mov.s   $f20, $f0
/* 00BDC 80A5BECC 02C02025 */  or      $a0, $s6, $zero            ## $a0 = 00000000
/* 00BE0 80A5BED0 02402825 */  or      $a1, $s2, $zero            ## $a1 = 00000000
/* 00BE4 80A5BED4 4501002C */  bc1t    .L80A5BF88
/* 00BE8 80A5BED8 00000000 */  nop
/* 00BEC 80A5BEDC 0C296EEF */  jal     func_80A5BBBC
/* 00BF0 80A5BEE0 02E03025 */  or      $a2, $s7, $zero            ## $a2 = FFFFFFE0
/* 00BF4 80A5BEE4 14400028 */  bne     $v0, $zero, .L80A5BF88
/* 00BF8 80A5BEE8 00000000 */  nop
/* 00BFC 80A5BEEC 860E0002 */  lh      $t6, 0x0002($s0)           ## 80A65F42
/* 00C00 80A5BEF0 26510024 */  addiu   $s1, $s2, 0x0024           ## $s1 = 00000024
/* 00C04 80A5BEF4 3C010001 */  lui     $at, 0x0001                ## $at = 00010000
/* 00C08 80A5BEF8 448E2000 */  mtc1    $t6, $f4                   ## $f4 = 0.00
/* 00C0C 80A5BEFC 34211D60 */  ori     $at, $at, 0x1D60           ## $at = 00011D60
/* 00C10 80A5BF00 4600A586 */  mov.s   $f22, $f20
/* 00C14 80A5BF04 468021A0 */  cvt.s.w $f6, $f4
/* 00C18 80A5BF08 02C19821 */  addu    $s3, $s6, $at
/* 00C1C 80A5BF0C 02402025 */  or      $a0, $s2, $zero            ## $a0 = 00000000
/* 00C20 80A5BF10 241E0001 */  addiu   $s8, $zero, 0x0001         ## $s8 = 00000001
/* 00C24 80A5BF14 265400E4 */  addiu   $s4, $s2, 0x00E4           ## $s4 = 000000E4
/* 00C28 80A5BF18 265500F0 */  addiu   $s5, $s2, 0x00F0           ## $s5 = 000000F0
/* 00C2C 80A5BF1C E6460024 */  swc1    $f6, 0x0024($s2)           ## 00000024
/* 00C30 80A5BF20 860F0004 */  lh      $t7, 0x0004($s0)           ## 80A65F44
/* 00C34 80A5BF24 448F4000 */  mtc1    $t7, $f8                   ## $f8 = 0.00
/* 00C38 80A5BF28 00000000 */  nop
/* 00C3C 80A5BF2C 468042A0 */  cvt.s.w $f10, $f8
/* 00C40 80A5BF30 E64A0028 */  swc1    $f10, 0x0028($s2)          ## 00000028
/* 00C44 80A5BF34 86180006 */  lh      $t8, 0x0006($s0)           ## 80A65F46
/* 00C48 80A5BF38 44988000 */  mtc1    $t8, $f16                  ## $f16 = 0.00
/* 00C4C 80A5BF3C 00000000 */  nop
/* 00C50 80A5BF40 468084A0 */  cvt.s.w $f18, $f16
/* 00C54 80A5BF44 E652002C */  swc1    $f18, 0x002C($s2)          ## 0000002C
/* 00C58 80A5BF48 8E280000 */  lw      $t0, 0x0000($s1)           ## 00000024
/* 00C5C 80A5BF4C AE480100 */  sw      $t0, 0x0100($s2)           ## 00000100
/* 00C60 80A5BF50 8E390004 */  lw      $t9, 0x0004($s1)           ## 00000028
/* 00C64 80A5BF54 AE590104 */  sw      $t9, 0x0104($s2)           ## 00000104
/* 00C68 80A5BF58 8E280008 */  lw      $t0, 0x0008($s1)           ## 0000002C
/* 00C6C 80A5BF5C AE480108 */  sw      $t0, 0x0108($s2)           ## 00000108
/* 00C70 80A5BF60 86090008 */  lh      $t1, 0x0008($s0)           ## 80A65F48
/* 00C74 80A5BF64 A6490032 */  sh      $t1, 0x0032($s2)           ## 00000032
/* 00C78 80A5BF68 0C00B69E */  jal     func_8002DA78
/* 00C7C 80A5BF6C 8EC51C44 */  lw      $a1, 0x1C44($s6)           ## 00001C44
/* 00C80 80A5BF70 A64200B6 */  sh      $v0, 0x00B6($s2)           ## 000000B6
/* 00C84 80A5BF74 02602025 */  or      $a0, $s3, $zero            ## $a0 = 00000000
/* 00C88 80A5BF78 02202825 */  or      $a1, $s1, $zero            ## $a1 = 00000024
/* 00C8C 80A5BF7C 02803025 */  or      $a2, $s4, $zero            ## $a2 = 000000E4
/* 00C90 80A5BF80 0C029B84 */  jal     SkinMatrix_Vec3fMtxFMultXYZW
/* 00C94 80A5BF84 02A03825 */  or      $a3, $s5, $zero            ## $a3 = 000000F0
.L80A5BF88:
/* 00C98 80A5BF88 3C0A80A6 */  lui     $t2, %hi(D_80A665DA)       ## $t2 = 80A60000
/* 00C9C 80A5BF8C 254A65DA */  addiu   $t2, $t2, %lo(D_80A665DA)  ## $t2 = 80A665DA
/* 00CA0 80A5BF90 2610000A */  addiu   $s0, $s0, 0x000A           ## $s0 = 80A65F4A
/* 00CA4 80A5BF94 560AFF95 */  bnel    $s0, $t2, .L80A5BDEC
/* 00CA8 80A5BF98 86C200A4 */  lh      $v0, 0x00A4($s6)           ## 000000A4
/* 00CAC 80A5BF9C 8FBF004C */  lw      $ra, 0x004C($sp)
/* 00CB0 80A5BFA0 03C01025 */  or      $v0, $s8, $zero            ## $v0 = 00000001
/* 00CB4 80A5BFA4 8FBE0048 */  lw      $s8, 0x0048($sp)
/* 00CB8 80A5BFA8 D7B40018 */  ldc1    $f20, 0x0018($sp)
/* 00CBC 80A5BFAC D7B60020 */  ldc1    $f22, 0x0020($sp)
/* 00CC0 80A5BFB0 8FB00028 */  lw      $s0, 0x0028($sp)
/* 00CC4 80A5BFB4 8FB1002C */  lw      $s1, 0x002C($sp)
/* 00CC8 80A5BFB8 8FB20030 */  lw      $s2, 0x0030($sp)
/* 00CCC 80A5BFBC 8FB30034 */  lw      $s3, 0x0034($sp)
/* 00CD0 80A5BFC0 8FB40038 */  lw      $s4, 0x0038($sp)
/* 00CD4 80A5BFC4 8FB5003C */  lw      $s5, 0x003C($sp)
/* 00CD8 80A5BFC8 8FB60040 */  lw      $s6, 0x0040($sp)
/* 00CDC 80A5BFCC 8FB70044 */  lw      $s7, 0x0044($sp)
/* 00CE0 80A5BFD0 03E00008 */  jr      $ra
/* 00CE4 80A5BFD4 27BD0088 */  addiu   $sp, $sp, 0x0088           ## $sp = 00000000
