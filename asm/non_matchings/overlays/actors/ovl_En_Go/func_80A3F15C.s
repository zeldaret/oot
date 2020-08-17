glabel func_80A3F15C
/* 00BEC 80A3F15C 27BDFFD8 */  addiu   $sp, $sp, 0xFFD8           ## $sp = FFFFFFD8
/* 00BF0 80A3F160 AFBF0014 */  sw      $ra, 0x0014($sp)
/* 00BF4 80A3F164 848F00B6 */  lh      $t7, 0x00B6($a0)           ## 000000B6
/* 00BF8 80A3F168 848E008A */  lh      $t6, 0x008A($a0)           ## 0000008A
/* 00BFC 80A3F16C 3C0180A4 */  lui     $at, %hi(D_80A420C8)       ## $at = 80A40000
/* 00C00 80A3F170 C42620C8 */  lwc1    $f6, %lo(D_80A420C8)($at)
/* 00C04 80A3F174 01CF1023 */  subu    $v0, $t6, $t7
/* 00C08 80A3F178 00021400 */  sll     $v0, $v0, 16
/* 00C0C 80A3F17C 00021403 */  sra     $v0, $v0, 16
/* 00C10 80A3F180 44822000 */  mtc1    $v0, $f4                   ## $f4 = 0.00
/* 00C14 80A3F184 00803025 */  or      $a2, $a0, $zero            ## $a2 = 00000000
/* 00C18 80A3F188 8CA70790 */  lw      $a3, 0x0790($a1)           ## 00000790
/* 00C1C 80A3F18C 46802020 */  cvt.s.w $f0, $f4
/* 00C20 80A3F190 3C0180A4 */  lui     $at, %hi(D_80A420CC)       ## $at = 80A40000
/* 00C24 80A3F194 46000005 */  abs.s   $f0, $f0
/* 00C28 80A3F198 4600303C */  c.lt.s  $f6, $f0
/* 00C2C 80A3F19C 00000000 */  nop
/* 00C30 80A3F1A0 45020004 */  bc1fl   .L80A3F1B4
/* 00C34 80A3F1A4 C4C80050 */  lwc1    $f8, 0x0050($a2)           ## 00000050
/* 00C38 80A3F1A8 10000029 */  beq     $zero, $zero, .L80A3F250
/* 00C3C 80A3F1AC 00001025 */  or      $v0, $zero, $zero          ## $v0 = 00000000
/* 00C40 80A3F1B0 C4C80050 */  lwc1    $f8, 0x0050($a2)           ## 00000050
.L80A3F1B4:
/* 00C44 80A3F1B4 C42A20CC */  lwc1    $f10, %lo(D_80A420CC)($at)
/* 00C48 80A3F1B8 3C0180A4 */  lui     $at, %hi(D_80A420D0)       ## $at = 80A40000
/* 00C4C 80A3F1BC C43220D0 */  lwc1    $f18, %lo(D_80A420D0)($at)
/* 00C50 80A3F1C0 460A4403 */  div.s   $f16, $f8, $f10
/* 00C54 80A3F1C4 84D8001C */  lh      $t8, 0x001C($a2)           ## 0000001C
/* 00C58 80A3F1C8 24010090 */  addiu   $at, $zero, 0x0090         ## $at = 00000090
/* 00C5C 80A3F1CC 00E02025 */  or      $a0, $a3, $zero            ## $a0 = 00000000
/* 00C60 80A3F1D0 331900F0 */  andi    $t9, $t8, 0x00F0           ## $t9 = 00000000
/* 00C64 80A3F1D4 2405003F */  addiu   $a1, $zero, 0x003F         ## $a1 = 0000003F
/* 00C68 80A3F1D8 46128082 */  mul.s   $f2, $f16, $f18
/* 00C6C 80A3F1DC 5721000D */  bnel    $t9, $at, .L80A3F214
/* 00C70 80A3F1E0 C4C0008C */  lwc1    $f0, 0x008C($a2)           ## 0000008C
/* 00C74 80A3F1E4 AFA60028 */  sw      $a2, 0x0028($sp)
/* 00C78 80A3F1E8 AFA7001C */  sw      $a3, 0x001C($sp)
/* 00C7C 80A3F1EC 0C0169DF */  jal     Camera_ChangeSetting
/* 00C80 80A3F1F0 E7A20024 */  swc1    $f2, 0x0024($sp)
/* 00C84 80A3F1F4 3C0180A4 */  lui     $at, %hi(D_80A420D4)       ## $at = 80A40000
/* 00C88 80A3F1F8 C7A20024 */  lwc1    $f2, 0x0024($sp)
/* 00C8C 80A3F1FC C42420D4 */  lwc1    $f4, %lo(D_80A420D4)($at)
/* 00C90 80A3F200 8FA60028 */  lw      $a2, 0x0028($sp)
/* 00C94 80A3F204 8FA7001C */  lw      $a3, 0x001C($sp)
/* 00C98 80A3F208 46041082 */  mul.s   $f2, $f2, $f4
/* 00C9C 80A3F20C 00000000 */  nop
/* 00CA0 80A3F210 C4C0008C */  lwc1    $f0, 0x008C($a2)           ## 0000008C
.L80A3F214:
/* 00CA4 80A3F214 24020001 */  addiu   $v0, $zero, 0x0001         ## $v0 = 00000001
/* 00CA8 80A3F218 46000005 */  abs.s   $f0, $f0
/* 00CAC 80A3F21C 4600103C */  c.lt.s  $f2, $f0
/* 00CB0 80A3F220 00000000 */  nop
/* 00CB4 80A3F224 4500000A */  bc1f    .L80A3F250
/* 00CB8 80A3F228 00000000 */  nop
/* 00CBC 80A3F22C 84E80142 */  lh      $t0, 0x0142($a3)           ## 00000142
/* 00CC0 80A3F230 2401003F */  addiu   $at, $zero, 0x003F         ## $at = 0000003F
/* 00CC4 80A3F234 00E02025 */  or      $a0, $a3, $zero            ## $a0 = 00000000
/* 00CC8 80A3F238 15010003 */  bne     $t0, $at, .L80A3F248
/* 00CCC 80A3F23C 00000000 */  nop
/* 00CD0 80A3F240 0C0169DF */  jal     Camera_ChangeSetting
/* 00CD4 80A3F244 24050001 */  addiu   $a1, $zero, 0x0001         ## $a1 = 00000001
.L80A3F248:
/* 00CD8 80A3F248 10000001 */  beq     $zero, $zero, .L80A3F250
/* 00CDC 80A3F24C 00001025 */  or      $v0, $zero, $zero          ## $v0 = 00000000
.L80A3F250:
/* 00CE0 80A3F250 8FBF0014 */  lw      $ra, 0x0014($sp)
/* 00CE4 80A3F254 27BD0028 */  addiu   $sp, $sp, 0x0028           ## $sp = 00000000
/* 00CE8 80A3F258 03E00008 */  jr      $ra
/* 00CEC 80A3F25C 00000000 */  nop
