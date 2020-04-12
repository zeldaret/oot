.late_rodata
glabel D_80A668DC
    .float 0.01

.text
glabel func_80A5EE80
/* 03B90 80A5EE80 27BDFFC0 */  addiu   $sp, $sp, 0xFFC0           ## $sp = FFFFFFC0
/* 03B94 80A5EE84 3C014150 */  lui     $at, 0x4150                ## $at = 41500000
/* 03B98 80A5EE88 44812000 */  mtc1    $at, $f4                   ## $f4 = 13.00
/* 03B9C 80A5EE8C AFBF0024 */  sw      $ra, 0x0024($sp)           
/* 03BA0 80A5EE90 AFB00020 */  sw      $s0, 0x0020($sp)           
/* 03BA4 80A5EE94 AFA50044 */  sw      $a1, 0x0044($sp)           
/* 03BA8 80A5EE98 3C0141B8 */  lui     $at, 0x41B8                ## $at = 41B80000
/* 03BAC 80A5EE9C C48201C4 */  lwc1    $f2, 0x01C4($a0)           ## 000001C4
/* 03BB0 80A5EEA0 44813000 */  mtc1    $at, $f6                   ## $f6 = 23.00
/* 03BB4 80A5EEA4 8C8E01F0 */  lw      $t6, 0x01F0($a0)           ## 000001F0
/* 03BB8 80A5EEA8 00808025 */  or      $s0, $a0, $zero            ## $s0 = 00000000
/* 03BBC 80A5EEAC 4602303C */  c.lt.s  $f6, $f2                   
/* 03BC0 80A5EEB0 35CF0004 */  ori     $t7, $t6, 0x0004           ## $t7 = 00000004
/* 03BC4 80A5EEB4 AC8F01F0 */  sw      $t7, 0x01F0($a0)           ## 000001F0
/* 03BC8 80A5EEB8 E4840068 */  swc1    $f4, 0x0068($a0)           ## 00000068
/* 03BCC 80A5EEBC 4502001D */  bc1fl   .L80A5EF34                 
/* 03BD0 80A5EEC0 8E0201CC */  lw      $v0, 0x01CC($s0)           ## 000001CC
/* 03BD4 80A5EEC4 44800000 */  mtc1    $zero, $f0                 ## $f0 = 0.00
/* 03BD8 80A5EEC8 C48A0060 */  lwc1    $f10, 0x0060($a0)          ## 00000060
/* 03BDC 80A5EECC 3C01C060 */  lui     $at, 0xC060                ## $at = C0600000
/* 03BE0 80A5EED0 44814000 */  mtc1    $at, $f8                   ## $f8 = -3.50
/* 03BE4 80A5EED4 460A0032 */  c.eq.s  $f0, $f10                  
/* 03BE8 80A5EED8 3C01C128 */  lui     $at, 0xC128                ## $at = C1280000
/* 03BEC 80A5EEDC E488006C */  swc1    $f8, 0x006C($a0)           ## 0000006C
/* 03BF0 80A5EEE0 45020005 */  bc1fl   .L80A5EEF8                 
/* 03BF4 80A5EEE4 3C0142B4 */  lui     $at, 0x42B4                ## $at = 42B40000
/* 03BF8 80A5EEE8 44818000 */  mtc1    $at, $f16                  ## $f16 = 90.00
/* 03BFC 80A5EEEC 00000000 */  nop
/* 03C00 80A5EEF0 E4900060 */  swc1    $f16, 0x0060($a0)          ## 00000060
/* 03C04 80A5EEF4 3C0142B4 */  lui     $at, 0x42B4                ## $at = 42B40000
.L80A5EEF8:
/* 03C08 80A5EEF8 44813000 */  mtc1    $at, $f6                   ## $f6 = 90.00
/* 03C0C 80A5EEFC C6040080 */  lwc1    $f4, 0x0080($s0)           ## 00000080
/* 03C10 80A5EF00 C6120028 */  lwc1    $f18, 0x0028($s0)          ## 00000028
/* 03C14 80A5EF04 3C013FC0 */  lui     $at, 0x3FC0                ## $at = 3FC00000
/* 03C18 80A5EF08 46062200 */  add.s   $f8, $f4, $f6              
/* 03C1C 80A5EF0C 4608903C */  c.lt.s  $f18, $f8                  
/* 03C20 80A5EF10 00000000 */  nop
/* 03C24 80A5EF14 45000004 */  bc1f    .L80A5EF28                 
/* 03C28 80A5EF18 00000000 */  nop
/* 03C2C 80A5EF1C 44815000 */  mtc1    $at, $f10                  ## $f10 = 1.50
/* 03C30 80A5EF20 1000000E */  beq     $zero, $zero, .L80A5EF5C   
/* 03C34 80A5EF24 E60A01C8 */  swc1    $f10, 0x01C8($s0)          ## 000001C8
.L80A5EF28:
/* 03C38 80A5EF28 1000000C */  beq     $zero, $zero, .L80A5EF5C   
/* 03C3C 80A5EF2C E60001C8 */  swc1    $f0, 0x01C8($s0)           ## 000001C8
/* 03C40 80A5EF30 8E0201CC */  lw      $v0, 0x01CC($s0)           ## 000001CC
.L80A5EF34:
/* 03C44 80A5EF34 3C0180A6 */  lui     $at, %hi(D_80A668DC)       ## $at = 80A60000
/* 03C48 80A5EF38 C42668DC */  lwc1    $f6, %lo(D_80A668DC)($at)  
/* 03C4C 80A5EF3C 84580002 */  lh      $t8, 0x0002($v0)           ## 00000002
/* 03C50 80A5EF40 C6040274 */  lwc1    $f4, 0x0274($s0)           ## 00000274
/* 03C54 80A5EF44 44988000 */  mtc1    $t8, $f16                  ## $f16 = 0.00
/* 03C58 80A5EF48 00000000 */  nop
/* 03C5C 80A5EF4C 46808020 */  cvt.s.w $f0, $f16                  
/* 03C60 80A5EF50 46060482 */  mul.s   $f18, $f0, $f6             
/* 03C64 80A5EF54 46122200 */  add.s   $f8, $f4, $f18             
/* 03C68 80A5EF58 E6080028 */  swc1    $f8, 0x0028($s0)           ## 00000028
.L80A5EF5C:
/* 03C6C 80A5EF5C 260401AC */  addiu   $a0, $s0, 0x01AC           ## $a0 = 000001AC
/* 03C70 80A5EF60 0C02927F */  jal     SkelAnime_FrameUpdateMatrix
              
/* 03C74 80A5EF64 E7A2002C */  swc1    $f2, 0x002C($sp)           
/* 03C78 80A5EF68 14400012 */  bne     $v0, $zero, .L80A5EFB4     
/* 03C7C 80A5EF6C C7A2002C */  lwc1    $f2, 0x002C($sp)           
/* 03C80 80A5EF70 3C0141B8 */  lui     $at, 0x41B8                ## $at = 41B80000
/* 03C84 80A5EF74 44815000 */  mtc1    $at, $f10                  ## $f10 = 23.00
/* 03C88 80A5EF78 00000000 */  nop
/* 03C8C 80A5EF7C 4602503C */  c.lt.s  $f10, $f2                  
/* 03C90 80A5EF80 00000000 */  nop
/* 03C94 80A5EF84 4502002B */  bc1fl   .L80A5F034                 
/* 03C98 80A5EF88 8FBF0024 */  lw      $ra, 0x0024($sp)           
/* 03C9C 80A5EF8C C6060080 */  lwc1    $f6, 0x0080($s0)           ## 00000080
/* 03CA0 80A5EF90 C6040060 */  lwc1    $f4, 0x0060($s0)           ## 00000060
/* 03CA4 80A5EF94 3C0142A0 */  lui     $at, 0x42A0                ## $at = 42A00000
/* 03CA8 80A5EF98 44814000 */  mtc1    $at, $f8                   ## $f8 = 80.00
/* 03CAC 80A5EF9C 46043481 */  sub.s   $f18, $f6, $f4             
/* 03CB0 80A5EFA0 C6100028 */  lwc1    $f16, 0x0028($s0)          ## 00000028
/* 03CB4 80A5EFA4 46089280 */  add.s   $f10, $f18, $f8            
/* 03CB8 80A5EFA8 460A803C */  c.lt.s  $f16, $f10                 
/* 03CBC 80A5EFAC 00000000 */  nop
/* 03CC0 80A5EFB0 4500001F */  bc1f    .L80A5F030                 
.L80A5EFB4:
/* 03CC4 80A5EFB4 3C078013 */  lui     $a3, 0x8013                ## $a3 = 80130000
/* 03CC8 80A5EFB8 3C198013 */  lui     $t9, 0x8013                ## $t9 = 80130000
/* 03CCC 80A5EFBC 24E733E0 */  addiu   $a3, $a3, 0x33E0           ## $a3 = 801333E0
/* 03CD0 80A5EFC0 273933E8 */  addiu   $t9, $t9, 0x33E8           ## $t9 = 801333E8
/* 03CD4 80A5EFC4 AFB90014 */  sw      $t9, 0x0014($sp)           
/* 03CD8 80A5EFC8 AFA70010 */  sw      $a3, 0x0010($sp)           
/* 03CDC 80A5EFCC 24042819 */  addiu   $a0, $zero, 0x2819         ## $a0 = 00002819
/* 03CE0 80A5EFD0 260500E4 */  addiu   $a1, $s0, 0x00E4           ## $a1 = 000000E4
/* 03CE4 80A5EFD4 0C03DCE3 */  jal     Audio_PlaySoundGeneral
              
/* 03CE8 80A5EFD8 24060004 */  addiu   $a2, $zero, 0x0004         ## $a2 = 00000004
/* 03CEC 80A5EFDC 44806000 */  mtc1    $zero, $f12                ## $f12 = 0.00
/* 03CF0 80A5EFE0 240500FF */  addiu   $a1, $zero, 0x00FF         ## $a1 = 000000FF
/* 03CF4 80A5EFE4 2406000A */  addiu   $a2, $zero, 0x000A         ## $a2 = 0000000A
/* 03CF8 80A5EFE8 0C02A800 */  jal     func_800AA000              
/* 03CFC 80A5EFEC 24070050 */  addiu   $a3, $zero, 0x0050         ## $a3 = 00000050
/* 03D00 80A5EFF0 8E0801F0 */  lw      $t0, 0x01F0($s0)           ## 000001F0
/* 03D04 80A5EFF4 2401FFFB */  addiu   $at, $zero, 0xFFFB         ## $at = FFFFFFFB
/* 03D08 80A5EFF8 C6040080 */  lwc1    $f4, 0x0080($s0)           ## 00000080
/* 03D0C 80A5EFFC 01014824 */  and     $t1, $t0, $at              
/* 03D10 80A5F000 3C01C060 */  lui     $at, 0xC060                ## $at = C0600000
/* 03D14 80A5F004 44813000 */  mtc1    $at, $f6                   ## $f6 = -3.50
/* 03D18 80A5F008 AE0901F0 */  sw      $t1, 0x01F0($s0)           ## 000001F0
/* 03D1C 80A5F00C E6040028 */  swc1    $f4, 0x0028($s0)           ## 00000028
/* 03D20 80A5F010 E606006C */  swc1    $f6, 0x006C($s0)           ## 0000006C
/* 03D24 80A5F014 8FA40044 */  lw      $a0, 0x0044($sp)           
/* 03D28 80A5F018 3C0541C8 */  lui     $a1, 0x41C8                ## $a1 = 41C80000
/* 03D2C 80A5F01C 0C00A295 */  jal     func_80028A54              
/* 03D30 80A5F020 26060024 */  addiu   $a2, $s0, 0x0024           ## $a2 = 00000024
/* 03D34 80A5F024 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 03D38 80A5F028 0C29776C */  jal     func_80A5DDB0              
/* 03D3C 80A5F02C 8FA50044 */  lw      $a1, 0x0044($sp)           
.L80A5F030:
/* 03D40 80A5F030 8FBF0024 */  lw      $ra, 0x0024($sp)           
.L80A5F034:
/* 03D44 80A5F034 8FB00020 */  lw      $s0, 0x0020($sp)           
/* 03D48 80A5F038 27BD0040 */  addiu   $sp, $sp, 0x0040           ## $sp = 00000000
/* 03D4C 80A5F03C 03E00008 */  jr      $ra                        
/* 03D50 80A5F040 00000000 */  nop
