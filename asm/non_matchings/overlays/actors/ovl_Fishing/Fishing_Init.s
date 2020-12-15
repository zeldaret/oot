.late_rodata
glabel D_80B7B374
    .float 0.7

glabel D_80B7B378
    .float 2.3

glabel D_80B7B37C
    .float 4.6

glabel D_80B7B380
    .float 982.0

glabel D_80B7B384
    .float 4.99998998642

glabel D_80B7B388
    .float 0.05

glabel D_80B7B38C
    .float 7.99998998642

glabel D_80B7B390
    .float 0.73

.text
glabel Fishing_Init
/* 00BA0 80B6A540 27BDFF88 */  addiu   $sp, $sp, 0xFF88           ## $sp = FFFFFF88
/* 00BA4 80B6A544 AFB30050 */  sw      $s3, 0x0050($sp)
/* 00BA8 80B6A548 00A09825 */  or      $s3, $a1, $zero            ## $s3 = 00000000
/* 00BAC 80B6A54C AFBF0054 */  sw      $ra, 0x0054($sp)
/* 00BB0 80B6A550 AFB2004C */  sw      $s2, 0x004C($sp)
/* 00BB4 80B6A554 3C0580B8 */  lui     $a1, %hi(D_80B7AE50)       ## $a1 = 80B80000
/* 00BB8 80B6A558 00809025 */  or      $s2, $a0, $zero            ## $s2 = 00000000
/* 00BBC 80B6A55C AFB10048 */  sw      $s1, 0x0048($sp)
/* 00BC0 80B6A560 AFB00044 */  sw      $s0, 0x0044($sp)
/* 00BC4 80B6A564 F7B60038 */  sdc1    $f22, 0x0038($sp)
/* 00BC8 80B6A568 F7B40030 */  sdc1    $f20, 0x0030($sp)
/* 00BCC 80B6A56C 0C01E037 */  jal     Actor_ProcessInitChain

/* 00BD0 80B6A570 24A5AE50 */  addiu   $a1, $a1, %lo(D_80B7AE50)  ## $a1 = 80B7AE50
/* 00BD4 80B6A574 44800000 */  mtc1    $zero, $f0                 ## $f0 = 0.00
/* 00BD8 80B6A578 264400B4 */  addiu   $a0, $s2, 0x00B4           ## $a0 = 000000B4
/* 00BDC 80B6A57C 00003025 */  or      $a2, $zero, $zero          ## $a2 = 00000000
/* 00BE0 80B6A580 44050000 */  mfc1    $a1, $f0
/* 00BE4 80B6A584 44070000 */  mfc1    $a3, $f0
/* 00BE8 80B6A588 0C00AC78 */  jal     ActorShape_Init

/* 00BEC 80B6A58C 00000000 */  nop
/* 00BF0 80B6A590 3C0E8016 */  lui     $t6, %hi(gGameInfo)
/* 00BF4 80B6A594 8DCEFA90 */  lw      $t6, %lo(gGameInfo)($t6)
/* 00BF8 80B6A598 3C118016 */  lui     $s1, %hi(gSaveContext)
/* 00BFC 80B6A59C 2631E660 */  addiu   $s1, %lo(gSaveContext)
/* 00C00 80B6A5A0 85CF09DE */  lh      $t7, 0x09DE($t6)           ## 801609DE
/* 00C04 80B6A5A4 24180001 */  addiu   $t8, $zero, 0x0001         ## $t8 = 00000001
/* 00C08 80B6A5A8 3C0180B8 */  lui     $at, %hi(D_80B7E075)       ## $at = 80B80000
/* 00C0C 80B6A5AC 11E00005 */  beq     $t7, $zero, .L80B6A5C4
/* 00C10 80B6A5B0 3C1080B8 */  lui     $s0, %hi(D_80B7E070)       ## $s0 = 80B80000
/* 00C14 80B6A5B4 3C118016 */  lui     $s1, %hi(gSaveContext)
/* 00C18 80B6A5B8 2631E660 */  addiu   $s1, %lo(gSaveContext)
/* 00C1C 80B6A5BC 10000004 */  beq     $zero, $zero, .L80B6A5D0
/* 00C20 80B6A5C0 A038E075 */  sb      $t8, %lo(D_80B7E075)($at)
.L80B6A5C4:
/* 00C24 80B6A5C4 8E390004 */  lw      $t9, 0x0004($s1)           ## 8015E664
/* 00C28 80B6A5C8 3C0180B8 */  lui     $at, %hi(D_80B7E075)       ## $at = 80B80000
/* 00C2C 80B6A5CC A039E075 */  sb      $t9, %lo(D_80B7E075)($at)
.L80B6A5D0:
/* 00C30 80B6A5D0 8642001C */  lh      $v0, 0x001C($s2)           ## 0000001C
/* 00C34 80B6A5D4 2610E070 */  addiu   $s0, $s0, %lo(D_80B7E070)  ## $s0 = 80B7E070
/* 00C38 80B6A5D8 28410064 */  slti    $at, $v0, 0x0064
/* 00C3C 80B6A5DC 102001A7 */  beq     $at, $zero, .L80B6AC7C
/* 00C40 80B6A5E0 3C0180B8 */  lui     $at, %hi(D_80B7E074)       ## $at = 80B80000
/* 00C44 80B6A5E4 A020E074 */  sb      $zero, %lo(D_80B7E074)($at)
/* 00C48 80B6A5E8 3C0180B8 */  lui     $at, %hi(D_80B7E070)       ## $at = 80B80000
/* 00C4C 80B6A5EC AC32E070 */  sw      $s2, %lo(D_80B7E070)($at)
/* 00C50 80B6A5F0 8E050000 */  lw      $a1, 0x0000($s0)           ## 80B7E070
/* 00C54 80B6A5F4 02602025 */  or      $a0, $s3, $zero            ## $a0 = 00000000
/* 00C58 80B6A5F8 0C016EFE */  jal     Collider_InitJntSph
/* 00C5C 80B6A5FC 24A50230 */  addiu   $a1, $a1, 0x0230           ## $a1 = 00000230
/* 00C60 80B6A600 8E030000 */  lw      $v1, 0x0000($s0)           ## 80B7E070
/* 00C64 80B6A604 3C0780B8 */  lui     $a3, %hi(D_80B7A888)       ## $a3 = 80B80000
/* 00C68 80B6A608 24E7A888 */  addiu   $a3, $a3, %lo(D_80B7A888)  ## $a3 = 80B7A888
/* 00C6C 80B6A60C 24680250 */  addiu   $t0, $v1, 0x0250           ## $t0 = 00000250
/* 00C70 80B6A610 AFA80010 */  sw      $t0, 0x0010($sp)
/* 00C74 80B6A614 02602025 */  or      $a0, $s3, $zero            ## $a0 = 00000000
/* 00C78 80B6A618 02403025 */  or      $a2, $s2, $zero            ## $a2 = 00000000
/* 00C7C 80B6A61C 0C017014 */  jal     Collider_SetJntSph
/* 00C80 80B6A620 24650230 */  addiu   $a1, $v1, 0x0230           ## $a1 = 00000230
/* 00C84 80B6A624 24090001 */  addiu   $t1, $zero, 0x0001         ## $t1 = 00000001
/* 00C88 80B6A628 A649001C */  sh      $t1, 0x001C($s2)           ## 0000001C
/* 00C8C 80B6A62C 265001D8 */  addiu   $s0, $s2, 0x01D8           ## $s0 = 000001D8
/* 00C90 80B6A630 3C060601 */  lui     $a2, %hi(D_060085F8)                ## $a2 = 06010000
/* 00C94 80B6A634 3C070600 */  lui     $a3, %hi(D_0600453C)                ## $a3 = 06000000
/* 00C98 80B6A638 24E7453C */  addiu   $a3, $a3, %lo(D_0600453C)           ## $a3 = 0600453C
/* 00C9C 80B6A63C 24C685F8 */  addiu   $a2, $a2, %lo(D_060085F8)           ## $a2 = 060085F8
/* 00CA0 80B6A640 02002825 */  or      $a1, $s0, $zero            ## $a1 = 000001D8
/* 00CA4 80B6A644 AFA00018 */  sw      $zero, 0x0018($sp)
/* 00CA8 80B6A648 AFA00014 */  sw      $zero, 0x0014($sp)
/* 00CAC 80B6A64C AFA00010 */  sw      $zero, 0x0010($sp)
/* 00CB0 80B6A650 0C0291BE */  jal     SkelAnime_InitFlex
/* 00CB4 80B6A654 02602025 */  or      $a0, $s3, $zero            ## $a0 = 00000000
/* 00CB8 80B6A658 3C050600 */  lui     $a1, %hi(D_0600453C)                ## $a1 = 06000000
/* 00CBC 80B6A65C 24A5453C */  addiu   $a1, $a1, %lo(D_0600453C)           ## $a1 = 0600453C
/* 00CC0 80B6A660 02002025 */  or      $a0, $s0, $zero            ## $a0 = 000001D8
/* 00CC4 80B6A664 0C0294D3 */  jal     SkelAnime_ChangeAnimTransitionRepeat
/* 00CC8 80B6A668 24060000 */  addiu   $a2, $zero, 0x0000         ## $a2 = 00000000
/* 00CCC 80B6A66C 3C014320 */  lui     $at, 0x4320                ## $at = 43200000
/* 00CD0 80B6A670 44812000 */  mtc1    $at, $f4                   ## $f4 = 160.00
/* 00CD4 80B6A674 3C01C000 */  lui     $at, 0xC000                ## $at = C0000000
/* 00CD8 80B6A678 44813000 */  mtc1    $at, $f6                   ## $f6 = -2.00
/* 00CDC 80B6A67C 3C014497 */  lui     $at, 0x4497                ## $at = 44970000
/* 00CE0 80B6A680 44814000 */  mtc1    $at, $f8                   ## $f8 = 1208.00
/* 00CE4 80B6A684 3C0A80B8 */  lui     $t2, %hi(func_80B7825C)    ## $t2 = 80B80000
/* 00CE8 80B6A688 3C0B80B8 */  lui     $t3, %hi(func_80B7A278)    ## $t3 = 80B80000
/* 00CEC 80B6A68C 254A825C */  addiu   $t2, $t2, %lo(func_80B7825C) ## $t2 = 80B7825C
/* 00CF0 80B6A690 256BA278 */  addiu   $t3, $t3, %lo(func_80B7A278) ## $t3 = 80B7A278
/* 00CF4 80B6A694 240CA000 */  addiu   $t4, $zero, 0xA000         ## $t4 = FFFFA000
/* 00CF8 80B6A698 3C053C34 */  lui     $a1, 0x3C34                ## $a1 = 3C340000
/* 00CFC 80B6A69C AE4A0130 */  sw      $t2, 0x0130($s2)           ## 00000130
/* 00D00 80B6A6A0 AE4B0134 */  sw      $t3, 0x0134($s2)           ## 00000134
/* 00D04 80B6A6A4 A64C00B6 */  sh      $t4, 0x00B6($s2)           ## 000000B6
/* 00D08 80B6A6A8 34A53958 */  ori     $a1, $a1, 0x3958           ## $a1 = 3C343958
/* 00D0C 80B6A6AC 02402025 */  or      $a0, $s2, $zero            ## $a0 = 00000000
/* 00D10 80B6A6B0 E6440024 */  swc1    $f4, 0x0024($s2)           ## 00000024
/* 00D14 80B6A6B4 E6460028 */  swc1    $f6, 0x0028($s2)           ## 00000028
/* 00D18 80B6A6B8 0C00B58B */  jal     Actor_SetScale

/* 00D1C 80B6A6BC E648002C */  swc1    $f8, 0x002C($s2)           ## 0000002C
/* 00D20 80B6A6C0 8E4D0028 */  lw      $t5, 0x0028($s2)           ## 00000028
/* 00D24 80B6A6C4 3C014296 */  lui     $at, 0x4296                ## $at = 42960000
/* 00D28 80B6A6C8 8E4E0024 */  lw      $t6, 0x0024($s2)           ## 00000024
/* 00D2C 80B6A6CC AE4D003C */  sw      $t5, 0x003C($s2)           ## 0000003C
/* 00D30 80B6A6D0 C64A003C */  lwc1    $f10, 0x003C($s2)          ## 0000003C
/* 00D34 80B6A6D4 44818000 */  mtc1    $at, $f16                  ## $f16 = 75.00
/* 00D38 80B6A6D8 8E4F0004 */  lw      $t7, 0x0004($s2)           ## 00000004
/* 00D3C 80B6A6DC AE4E0038 */  sw      $t6, 0x0038($s2)           ## 00000038
/* 00D40 80B6A6E0 46105480 */  add.s   $f18, $f10, $f16
/* 00D44 80B6A6E4 8E4E002C */  lw      $t6, 0x002C($s2)           ## 0000002C
/* 00D48 80B6A6E8 35F80009 */  ori     $t8, $t7, 0x0009           ## $t8 = 00000009
/* 00D4C 80B6A6EC AE580004 */  sw      $t8, 0x0004($s2)           ## 00000004
/* 00D50 80B6A6F0 E652003C */  swc1    $f18, 0x003C($s2)          ## 0000003C
/* 00D54 80B6A6F4 3C1980B8 */  lui     $t9, %hi(D_80B7E075)       ## $t9 = 80B80000
/* 00D58 80B6A6F8 AE4E0040 */  sw      $t6, 0x0040($s2)           ## 00000040
/* 00D5C 80B6A6FC 9339E075 */  lbu     $t9, %lo(D_80B7E075)($t9)
/* 00D60 80B6A700 24010001 */  addiu   $at, $zero, 0x0001         ## $at = 00000001
/* 00D64 80B6A704 2402000A */  addiu   $v0, $zero, 0x000A         ## $v0 = 0000000A
/* 00D68 80B6A708 1321000C */  beq     $t9, $at, .L80B6A73C
/* 00D6C 80B6A70C 3C1080B8 */  lui     $s0, %hi(D_80B830B8)       ## $s0 = 80B80000
/* 00D70 80B6A710 8E280EC0 */  lw      $t0, 0x0EC0($s1)           ## 8015F520
/* 00D74 80B6A714 240A0001 */  addiu   $t2, $zero, 0x0001         ## $t2 = 00000001
/* 00D78 80B6A718 3C0180B8 */  lui     $at, %hi(D_80B7A688)       ## $at = 80B80000
/* 00D7C 80B6A71C 31091000 */  andi    $t1, $t0, 0x1000           ## $t1 = 00000000
/* 00D80 80B6A720 11200004 */  beq     $t1, $zero, .L80B6A734
/* 00D84 80B6A724 00000000 */  nop
/* 00D88 80B6A728 3C0180B8 */  lui     $at, %hi(D_80B7A688)       ## $at = 80B80000
/* 00D8C 80B6A72C 10000006 */  beq     $zero, $zero, .L80B6A748
/* 00D90 80B6A730 A020A688 */  sb      $zero, %lo(D_80B7A688)($at)
.L80B6A734:
/* 00D94 80B6A734 10000004 */  beq     $zero, $zero, .L80B6A748
/* 00D98 80B6A738 A02AA688 */  sb      $t2, %lo(D_80B7A688)($at)
.L80B6A73C:
/* 00D9C 80B6A73C 240B0002 */  addiu   $t3, $zero, 0x0002         ## $t3 = 00000002
/* 00DA0 80B6A740 3C0180B8 */  lui     $at, %hi(D_80B7A688)       ## $at = 80B80000
/* 00DA4 80B6A744 A02BA688 */  sb      $t3, %lo(D_80B7A688)($at)
.L80B6A748:
/* 00DA8 80B6A748 240C0014 */  addiu   $t4, $zero, 0x0014         ## $t4 = 00000014
/* 00DAC 80B6A74C 3C0180B8 */  lui     $at, %hi(D_80B7A684)       ## $at = 80B80000
/* 00DB0 80B6A750 A42CA684 */  sh      $t4, %lo(D_80B7A684)($at)
/* 00DB4 80B6A754 3C010001 */  lui     $at, 0x0001                ## $at = 00010000
/* 00DB8 80B6A758 261030B8 */  addiu   $s0, $s0, %lo(D_80B830B8)  ## $s0 = 80B830B8
/* 00DBC 80B6A75C 00330821 */  addu    $at, $at, $s3
/* 00DC0 80B6A760 AC301E10 */  sw      $s0, 0x1E10($at)           ## 00011E10
/* 00DC4 80B6A764 3C018012 */  lui     $at, %hi(D_8011FB40)
/* 00DC8 80B6A768 240D0001 */  addiu   $t5, $zero, 0x0001         ## $t5 = 00000001
/* 00DCC 80B6A76C A42DFB40 */  sh      $t5, %lo(D_8011FB40)($at)
/* 00DD0 80B6A770 3C0180B8 */  lui     $at, %hi(D_80B7E0AC)       ## $at = 80B80000
/* 00DD4 80B6A774 A420E0AC */  sh      $zero, %lo(D_80B7E0AC)($at)
/* 00DD8 80B6A778 3C0180B8 */  lui     $at, %hi(D_80B7E0A6)       ## $at = 80B80000
/* 00DDC 80B6A77C 3C041001 */  lui     $a0, 0x1001                ## $a0 = 10010000
/* 00DE0 80B6A780 A422E0A6 */  sh      $v0, %lo(D_80B7E0A6)($at)
/* 00DE4 80B6A784 0C03E803 */  jal     Audio_SetBGM

/* 00DE8 80B6A788 348400FF */  ori     $a0, $a0, 0x00FF           ## $a0 = 100100FF
/* 00DEC 80B6A78C 3C0E80B8 */  lui     $t6, %hi(D_80B7E075)       ## $t6 = 80B80000
/* 00DF0 80B6A790 91CEE075 */  lbu     $t6, %lo(D_80B7E075)($t6)
/* 00DF4 80B6A794 24010001 */  addiu   $at, $zero, 0x0001         ## $at = 00000001
/* 00DF8 80B6A798 3C0680B8 */  lui     $a2, %hi(D_80B7E07D)       ## $a2 = 80B80000
/* 00DFC 80B6A79C 15C1000F */  bne     $t6, $at, .L80B6A7DC
/* 00E00 80B6A7A0 24C6E07D */  addiu   $a2, $a2, %lo(D_80B7E07D)  ## $a2 = 80B7E07D
/* 00E04 80B6A7A4 8E220EC0 */  lw      $v0, 0x0EC0($s1)           ## 8015F520
/* 00E08 80B6A7A8 3C014220 */  lui     $at, 0x4220                ## $at = 42200000
/* 00E0C 80B6A7AC 3043007F */  andi    $v1, $v0, 0x007F           ## $v1 = 00000000
/* 00E10 80B6A7B0 50600007 */  beql    $v1, $zero, .L80B6A7D0
/* 00E14 80B6A7B4 44814000 */  mtc1    $at, $f8                   ## $f8 = 40.00
/* 00E18 80B6A7B8 44832000 */  mtc1    $v1, $f4                   ## $f4 = 0.00
/* 00E1C 80B6A7BC 3C0180B8 */  lui     $at, %hi(D_80B7E078)       ## $at = 80B80000
/* 00E20 80B6A7C0 468021A0 */  cvt.s.w $f6, $f4
/* 00E24 80B6A7C4 10000013 */  beq     $zero, $zero, .L80B6A814
/* 00E28 80B6A7C8 E426E078 */  swc1    $f6, %lo(D_80B7E078)($at)
/* 00E2C 80B6A7CC 44814000 */  mtc1    $at, $f8                   ## $f8 = -0.00
.L80B6A7D0:
/* 00E30 80B6A7D0 3C0180B8 */  lui     $at, %hi(D_80B7E078)       ## $at = 80B80000
/* 00E34 80B6A7D4 1000000F */  beq     $zero, $zero, .L80B6A814
/* 00E38 80B6A7D8 E428E078 */  swc1    $f8, %lo(D_80B7E078)($at)
.L80B6A7DC:
/* 00E3C 80B6A7DC 8E220EC0 */  lw      $v0, 0x0EC0($s1)           ## 8015F520
/* 00E40 80B6A7E0 3C017F00 */  lui     $at, 0x7F00                ## $at = 7F000000
/* 00E44 80B6A7E4 00411824 */  and     $v1, $v0, $at
/* 00E48 80B6A7E8 10600007 */  beq     $v1, $zero, .L80B6A808
/* 00E4C 80B6A7EC 3C014234 */  lui     $at, 0x4234                ## $at = 42340000
/* 00E50 80B6A7F0 00037E03 */  sra     $t7, $v1, 24
/* 00E54 80B6A7F4 448F5000 */  mtc1    $t7, $f10                  ## $f10 = 0.00
/* 00E58 80B6A7F8 3C0180B8 */  lui     $at, %hi(D_80B7E078)       ## $at = 80B80000
/* 00E5C 80B6A7FC 46805420 */  cvt.s.w $f16, $f10
/* 00E60 80B6A800 10000004 */  beq     $zero, $zero, .L80B6A814
/* 00E64 80B6A804 E430E078 */  swc1    $f16, %lo(D_80B7E078)($at)
.L80B6A808:
/* 00E68 80B6A808 44819000 */  mtc1    $at, $f18                  ## $f18 = -0.00
/* 00E6C 80B6A80C 3C0180B8 */  lui     $at, %hi(D_80B7E078)       ## $at = 80B80000
/* 00E70 80B6A810 E432E078 */  swc1    $f18, %lo(D_80B7E078)($at)
.L80B6A814:
/* 00E74 80B6A814 3C0100FF */  lui     $at, 0x00FF                ## $at = 00FF0000
/* 00E78 80B6A818 0041C024 */  and     $t8, $v0, $at
/* 00E7C 80B6A81C 00184403 */  sra     $t0, $t8, 16
/* 00E80 80B6A820 31090007 */  andi    $t1, $t0, 0x0007           ## $t1 = 00000000
/* 00E84 80B6A824 24010007 */  addiu   $at, $zero, 0x0007         ## $at = 00000007
/* 00E88 80B6A828 15210009 */  bne     $t1, $at, .L80B6A850
/* 00E8C 80B6A82C A0C80000 */  sb      $t0, 0x0000($a2)           ## 80B7E07D
/* 00E90 80B6A830 3C010001 */  lui     $at, 0x0001                ## $at = 00010000
/* 00E94 80B6A834 00330821 */  addu    $at, $at, $s3
/* 00E98 80B6A838 240A005A */  addiu   $t2, $zero, 0x005A         ## $t2 = 0000005A
/* 00E9C 80B6A83C A42A1D30 */  sh      $t2, 0x1D30($at)           ## 00011D30
/* 00EA0 80B6A840 24050001 */  addiu   $a1, $zero, 0x0001         ## $a1 = 00000001
/* 00EA4 80B6A844 3C0180B8 */  lui     $at, %hi(D_80B7E076)       ## $at = 80B80000
/* 00EA8 80B6A848 10000007 */  beq     $zero, $zero, .L80B6A868
/* 00EAC 80B6A84C A025E076 */  sb      $a1, %lo(D_80B7E076)($at)
.L80B6A850:
/* 00EB0 80B6A850 3C010001 */  lui     $at, 0x0001                ## $at = 00010000
/* 00EB4 80B6A854 00330821 */  addu    $at, $at, $s3
/* 00EB8 80B6A858 240B0028 */  addiu   $t3, $zero, 0x0028         ## $t3 = 00000028
/* 00EBC 80B6A85C A42B1D30 */  sh      $t3, 0x1D30($at)           ## 00011D30
/* 00EC0 80B6A860 3C0180B8 */  lui     $at, %hi(D_80B7E076)       ## $at = 80B80000
/* 00EC4 80B6A864 A020E076 */  sb      $zero, %lo(D_80B7E076)($at)
.L80B6A868:
/* 00EC8 80B6A868 90CC0000 */  lbu     $t4, 0x0000($a2)           ## 80B7E07D
/* 00ECC 80B6A86C 24010006 */  addiu   $at, $zero, 0x0006         ## $at = 00000006
/* 00ED0 80B6A870 2403003C */  addiu   $v1, $zero, 0x003C         ## $v1 = 0000003C
/* 00ED4 80B6A874 318D0007 */  andi    $t5, $t4, 0x0007           ## $t5 = 00000000
/* 00ED8 80B6A878 11A10006 */  beq     $t5, $at, .L80B6A894
/* 00EDC 80B6A87C 3C0480B8 */  lui     $a0, %hi(D_80B830B0)       ## $a0 = 80B80000
/* 00EE0 80B6A880 3C0E8016 */  lui     $t6, %hi(gGameInfo)
/* 00EE4 80B6A884 8DCEFA90 */  lw      $t6, %lo(gGameInfo)($t6)
/* 00EE8 80B6A888 3C0180B8 */  lui     $at, %hi(D_80B7E077)       ## $at = 80B80000
/* 00EEC 80B6A88C 85CF09DA */  lh      $t7, 0x09DA($t6)           ## 801609DA
/* 00EF0 80B6A890 11E00012 */  beq     $t7, $zero, .L80B6A8DC
.L80B6A894:
/* 00EF4 80B6A894 3C028016 */  lui     $v0, %hi(gGameInfo)
/* 00EF8 80B6A898 8C42FA90 */  lw      $v0, %lo(gGameInfo)($v0)
/* 00EFC 80B6A89C 24180064 */  addiu   $t8, $zero, 0x0064         ## $t8 = 00000064
/* 00F00 80B6A8A0 3C0180B8 */  lui     $at, %hi(D_80B7E077)       ## $at = 80B80000
/* 00F04 80B6A8A4 A038E077 */  sb      $t8, %lo(D_80B7E077)($at)
/* 00F08 80B6A8A8 845909DA */  lh      $t9, 0x09DA($v0)           ## 801609DA
/* 00F0C 80B6A8AC 5320000D */  beql    $t9, $zero, .L80B6A8E4
/* 00F10 80B6A8B0 00008825 */  or      $s1, $zero, $zero          ## $s1 = 00000000
/* 00F14 80B6A8B4 A44009DA */  sh      $zero, 0x09DA($v0)         ## 801609DA
/* 00F18 80B6A8B8 8E280EC0 */  lw      $t0, 0x0EC0($s1)           ## 00000EC0
/* 00F1C 80B6A8BC 3C01FF00 */  lui     $at, 0xFF00                ## $at = FF000000
/* 00F20 80B6A8C0 3421FFFF */  ori     $at, $at, 0xFFFF           ## $at = FF00FFFF
/* 00F24 80B6A8C4 01014824 */  and     $t1, $t0, $at
/* 00F28 80B6A8C8 3C010006 */  lui     $at, 0x0006                ## $at = 00060000
/* 00F2C 80B6A8CC AE290EC0 */  sw      $t1, 0x0EC0($s1)           ## 00000EC0
/* 00F30 80B6A8D0 01215825 */  or      $t3, $t1, $at              ## $t3 = 00060000
/* 00F34 80B6A8D4 10000002 */  beq     $zero, $zero, .L80B6A8E0
/* 00F38 80B6A8D8 AE2B0EC0 */  sw      $t3, 0x0EC0($s1)           ## 00000EC0
.L80B6A8DC:
/* 00F3C 80B6A8DC A020E077 */  sb      $zero, %lo(D_80B7E077)($at)
.L80B6A8E0:
/* 00F40 80B6A8E0 00008825 */  or      $s1, $zero, $zero          ## $s1 = 00000000
.L80B6A8E4:
/* 00F44 80B6A8E4 00116180 */  sll     $t4, $s1,  6
/* 00F48 80B6A8E8 26310001 */  addiu   $s1, $s1, 0x0001           ## $s1 = 00000001
/* 00F4C 80B6A8EC 00118C00 */  sll     $s1, $s1, 16
/* 00F50 80B6A8F0 00118C03 */  sra     $s1, $s1, 16
/* 00F54 80B6A8F4 2A210082 */  slti    $at, $s1, 0x0082
/* 00F58 80B6A8F8 020C6821 */  addu    $t5, $s0, $t4
/* 00F5C 80B6A8FC 1420FFF9 */  bne     $at, $zero, .L80B6A8E4
/* 00F60 80B6A900 A1A00024 */  sb      $zero, 0x0024($t5)         ## 00000024
/* 00F64 80B6A904 3C0280B8 */  lui     $v0, %hi(D_80B7FEF8)       ## $v0 = 80B80000
/* 00F68 80B6A908 2442FEF8 */  addiu   $v0, $v0, %lo(D_80B7FEF8)  ## $v0 = 80B7FEF8
/* 00F6C 80B6A90C 00008825 */  or      $s1, $zero, $zero          ## $s1 = 00000000
.L80B6A910:
/* 00F70 80B6A910 02230019 */  multu   $s1, $v1
/* 00F74 80B6A914 26310001 */  addiu   $s1, $s1, 0x0001           ## $s1 = 00000001
/* 00F78 80B6A918 00118C00 */  sll     $s1, $s1, 16
/* 00F7C 80B6A91C 00118C03 */  sra     $s1, $s1, 16
/* 00F80 80B6A920 2A21008C */  slti    $at, $s1, 0x008C
/* 00F84 80B6A924 00007012 */  mflo    $t6
/* 00F88 80B6A928 004E7821 */  addu    $t7, $v0, $t6
/* 00F8C 80B6A92C 1420FFF8 */  bne     $at, $zero, .L80B6A910
/* 00F90 80B6A930 A1E00030 */  sb      $zero, 0x0030($t7)         ## 00000030
/* 00F94 80B6A934 3C0180B8 */  lui     $at, %hi(D_80B7B374)       ## $at = 80B80000
/* 00F98 80B6A938 C424B374 */  lwc1    $f4, %lo(D_80B7B374)($at)
/* 00F9C 80B6A93C 3C0280B8 */  lui     $v0, %hi(D_80B830A8)       ## $v0 = 80B80000
/* 00FA0 80B6A940 244230A8 */  addiu   $v0, $v0, %lo(D_80B830A8)  ## $v0 = 80B830A8
/* 00FA4 80B6A944 3C0180B8 */  lui     $at, %hi(D_80B7B378)       ## $at = 80B80000
/* 00FA8 80B6A948 E4440000 */  swc1    $f4, 0x0000($v0)           ## 80B830A8
/* 00FAC 80B6A94C C426B378 */  lwc1    $f6, %lo(D_80B7B378)($at)
/* 00FB0 80B6A950 3C0380B8 */  lui     $v1, %hi(D_80B830AC)       ## $v1 = 80B80000
/* 00FB4 80B6A954 246330AC */  addiu   $v1, $v1, %lo(D_80B830AC)  ## $v1 = 80B830AC
/* 00FB8 80B6A958 3C0180B8 */  lui     $at, %hi(D_80B7B37C)       ## $at = 80B80000
/* 00FBC 80B6A95C E4660000 */  swc1    $f6, 0x0000($v1)           ## 80B830AC
/* 00FC0 80B6A960 C428B37C */  lwc1    $f8, %lo(D_80B7B37C)($at)
/* 00FC4 80B6A964 3C014434 */  lui     $at, 0x4434                ## $at = 44340000
/* 00FC8 80B6A968 248430B0 */  addiu   $a0, $a0, %lo(D_80B830B0)  ## $a0 = 80B830B0
/* 00FCC 80B6A96C 4481B000 */  mtc1    $at, $f22                  ## $f22 = 720.00
/* 00FD0 80B6A970 00008825 */  or      $s1, $zero, $zero          ## $s1 = 00000000
/* 00FD4 80B6A974 E4880000 */  swc1    $f8, 0x0000($a0)           ## 80B830B0
/* 00FD8 80B6A978 0011C0C0 */  sll     $t8, $s1,  3
.L80B6A97C:
/* 00FDC 80B6A97C 0311C021 */  addu    $t8, $t8, $s1
/* 00FE0 80B6A980 3C1980B8 */  lui     $t9, %hi(D_80B81FC8)       ## $t9 = 80B80000
/* 00FE4 80B6A984 27391FC8 */  addiu   $t9, $t9, %lo(D_80B81FC8)  ## $t9 = 80B81FC8
/* 00FE8 80B6A988 0018C0C0 */  sll     $t8, $t8,  3
/* 00FEC 80B6A98C 3C0280B8 */  lui     $v0, %hi(D_80B830A8)       ## $v0 = 80B80000
/* 00FF0 80B6A990 3C0380B8 */  lui     $v1, %hi(D_80B830AC)       ## $v1 = 80B80000
/* 00FF4 80B6A994 3C0480B8 */  lui     $a0, %hi(D_80B830B0)       ## $a0 = 80B80000
/* 00FF8 80B6A998 24050001 */  addiu   $a1, $zero, 0x0001         ## $a1 = 00000001
/* 00FFC 80B6A99C 03198021 */  addu    $s0, $t8, $t9
/* 01000 80B6A9A0 2A210015 */  slti    $at, $s1, 0x0015
/* 01004 80B6A9A4 248430B0 */  addiu   $a0, $a0, %lo(D_80B830B0)  ## $a0 = 80B830B0
/* 01008 80B6A9A8 246330AC */  addiu   $v1, $v1, %lo(D_80B830AC)  ## $v1 = 80B830AC
/* 0100C 80B6A9AC 244230A8 */  addiu   $v0, $v0, %lo(D_80B830A8)  ## $v0 = 80B830A8
/* 01010 80B6A9B0 1020000D */  beq     $at, $zero, .L80B6A9E8
/* 01014 80B6A9B4 A2050000 */  sb      $a1, 0x0000($s0)           ## 80B830B8
/* 01018 80B6A9B8 0C0400A4 */  jal     sinf

/* 0101C 80B6A9BC C44C0000 */  lwc1    $f12, 0x0000($v0)          ## 80B830A8
/* 01020 80B6A9C0 46160502 */  mul.s   $f20, $f0, $f22
/* 01024 80B6A9C4 3C0180B8 */  lui     $at, %hi(D_80B830A8)       ## $at = 80B80000
/* 01028 80B6A9C8 E6140004 */  swc1    $f20, 0x0004($s0)          ## 80B830BC
/* 0102C 80B6A9CC E6140010 */  swc1    $f20, 0x0010($s0)          ## 80B830C8
/* 01030 80B6A9D0 0C041184 */  jal     cosf

/* 01034 80B6A9D4 C42C30A8 */  lwc1    $f12, %lo(D_80B830A8)($at)
/* 01038 80B6A9D8 46160502 */  mul.s   $f20, $f0, $f22
/* 0103C 80B6A9DC E614000C */  swc1    $f20, 0x000C($s0)          ## 80B830C4
/* 01040 80B6A9E0 1000001B */  beq     $zero, $zero, .L80B6AA50
/* 01044 80B6A9E4 E6140018 */  swc1    $f20, 0x0018($s0)          ## 80B830D0
.L80B6A9E8:
/* 01048 80B6A9E8 2A210029 */  slti    $at, $s1, 0x0029
/* 0104C 80B6A9EC 1020000D */  beq     $at, $zero, .L80B6AA24
/* 01050 80B6A9F0 00000000 */  nop
/* 01054 80B6A9F4 0C0400A4 */  jal     sinf

/* 01058 80B6A9F8 C46C0000 */  lwc1    $f12, 0x0000($v1)          ## 00000000
/* 0105C 80B6A9FC 46160502 */  mul.s   $f20, $f0, $f22
/* 01060 80B6AA00 3C0180B8 */  lui     $at, %hi(D_80B830AC)       ## $at = 80B80000
/* 01064 80B6AA04 E6140004 */  swc1    $f20, 0x0004($s0)          ## 80B830BC
/* 01068 80B6AA08 E6140010 */  swc1    $f20, 0x0010($s0)          ## 80B830C8
/* 0106C 80B6AA0C 0C041184 */  jal     cosf

/* 01070 80B6AA10 C42C30AC */  lwc1    $f12, %lo(D_80B830AC)($at)
/* 01074 80B6AA14 46160502 */  mul.s   $f20, $f0, $f22
/* 01078 80B6AA18 E614000C */  swc1    $f20, 0x000C($s0)          ## 80B830C4
/* 0107C 80B6AA1C 1000000C */  beq     $zero, $zero, .L80B6AA50
/* 01080 80B6AA20 E6140018 */  swc1    $f20, 0x0018($s0)          ## 80B830D0
.L80B6AA24:
/* 01084 80B6AA24 0C0400A4 */  jal     sinf

/* 01088 80B6AA28 C48C0000 */  lwc1    $f12, 0x0000($a0)          ## 00000000
/* 0108C 80B6AA2C 46160502 */  mul.s   $f20, $f0, $f22
/* 01090 80B6AA30 3C0180B8 */  lui     $at, %hi(D_80B830B0)       ## $at = 80B80000
/* 01094 80B6AA34 E6140004 */  swc1    $f20, 0x0004($s0)          ## 80B830BC
/* 01098 80B6AA38 E6140010 */  swc1    $f20, 0x0010($s0)          ## 80B830C8
/* 0109C 80B6AA3C 0C041184 */  jal     cosf

/* 010A0 80B6AA40 C42C30B0 */  lwc1    $f12, %lo(D_80B830B0)($at)
/* 010A4 80B6AA44 46160502 */  mul.s   $f20, $f0, $f22
/* 010A8 80B6AA48 E614000C */  swc1    $f20, 0x000C($s0)          ## 80B830C4
/* 010AC 80B6AA4C E6140018 */  swc1    $f20, 0x0018($s0)          ## 80B830D0
.L80B6AA50:
/* 010B0 80B6AA50 3C01C20C */  lui     $at, 0xC20C                ## $at = C20C0000
/* 010B4 80B6AA54 44810000 */  mtc1    $at, $f0                   ## $f0 = -35.00
/* 010B8 80B6AA58 3C0142C8 */  lui     $at, 0x42C8                ## $at = 42C80000
/* 010BC 80B6AA5C 44816000 */  mtc1    $at, $f12                  ## $f12 = 100.00
/* 010C0 80B6AA60 E6000008 */  swc1    $f0, 0x0008($s0)           ## 80B830C0
/* 010C4 80B6AA64 0C00CFBE */  jal     Math_Rand_ZeroFloat

/* 010C8 80B6AA68 E6000014 */  swc1    $f0, 0x0014($s0)           ## 80B830CC
/* 010CC 80B6AA6C 4600028D */  trunc.w.s $f10, $f0
/* 010D0 80B6AA70 A600003C */  sh      $zero, 0x003C($s0)         ## 80B830F4
/* 010D4 80B6AA74 A600003E */  sh      $zero, 0x003E($s0)         ## 80B830F6
/* 010D8 80B6AA78 A6000040 */  sh      $zero, 0x0040($s0)         ## 80B830F8
/* 010DC 80B6AA7C 44095000 */  mfc1    $t1, $f10
/* 010E0 80B6AA80 3C0A80B8 */  lui     $t2, %hi(D_80B7E075)       ## $t2 = 80B80000
/* 010E4 80B6AA84 24010001 */  addiu   $at, $zero, 0x0001         ## $at = 00000001
/* 010E8 80B6AA88 A6090002 */  sh      $t1, 0x0002($s0)           ## 80B830BA
/* 010EC 80B6AA8C 914AE075 */  lbu     $t2, %lo(D_80B7E075)($t2)
/* 010F0 80B6AA90 1141000E */  beq     $t2, $at, .L80B6AACC
/* 010F4 80B6AA94 2A21000F */  slti    $at, $s1, 0x000F
/* 010F8 80B6AA98 14200002 */  bne     $at, $zero, .L80B6AAA4
/* 010FC 80B6AA9C 2A210014 */  slti    $at, $s1, 0x0014
/* 01100 80B6AAA0 14200009 */  bne     $at, $zero, .L80B6AAC8
.L80B6AAA4:
/* 01104 80B6AAA4 2A210023 */  slti    $at, $s1, 0x0023
/* 01108 80B6AAA8 14200002 */  bne     $at, $zero, .L80B6AAB4
/* 0110C 80B6AAAC 2A210028 */  slti    $at, $s1, 0x0028
/* 01110 80B6AAB0 14200005 */  bne     $at, $zero, .L80B6AAC8
.L80B6AAB4:
/* 01114 80B6AAB4 2A210037 */  slti    $at, $s1, 0x0037
/* 01118 80B6AAB8 14200004 */  bne     $at, $zero, .L80B6AACC
/* 0111C 80B6AABC 2A21003C */  slti    $at, $s1, 0x003C
/* 01120 80B6AAC0 50200003 */  beql    $at, $zero, .L80B6AAD0
/* 01124 80B6AAC4 26310001 */  addiu   $s1, $s1, 0x0001           ## $s1 = 00000001
.L80B6AAC8:
/* 01128 80B6AAC8 A2000000 */  sb      $zero, 0x0000($s0)         ## 80B830B8
.L80B6AACC:
/* 0112C 80B6AACC 26310001 */  addiu   $s1, $s1, 0x0001           ## $s1 = 00000002
.L80B6AAD0:
/* 01130 80B6AAD0 00118C00 */  sll     $s1, $s1, 16
/* 01134 80B6AAD4 00118C03 */  sra     $s1, $s1, 16
/* 01138 80B6AAD8 2A21003C */  slti    $at, $s1, 0x003C
/* 0113C 80B6AADC 5420FFA7 */  bnel    $at, $zero, .L80B6A97C
/* 01140 80B6AAE0 0011C0C0 */  sll     $t8, $s1,  3
/* 01144 80B6AAE4 02402025 */  or      $a0, $s2, $zero            ## $a0 = 00000000
/* 01148 80B6AAE8 0C2DA88B */  jal     func_80B6A22C
/* 0114C 80B6AAEC 02602825 */  or      $a1, $s3, $zero            ## $a1 = 00000000
/* 01150 80B6AAF0 3C014254 */  lui     $at, 0x4254                ## $at = 42540000
/* 01154 80B6AAF4 44818000 */  mtc1    $at, $f16                  ## $f16 = 53.00
/* 01158 80B6AAF8 3C01C188 */  lui     $at, 0xC188                ## $at = C1880000
/* 0115C 80B6AAFC 44819000 */  mtc1    $at, $f18                  ## $f18 = -17.00
/* 01160 80B6AB00 3C0180B8 */  lui     $at, %hi(D_80B7B380)       ## $at = 80B80000
/* 01164 80B6AB04 C424B380 */  lwc1    $f4, %lo(D_80B7B380)($at)
/* 01168 80B6AB08 26641C24 */  addiu   $a0, $s3, 0x1C24           ## $a0 = 00001C24
/* 0116C 80B6AB0C 240B0300 */  addiu   $t3, $zero, 0x0300         ## $t3 = 00000300
/* 01170 80B6AB10 AFAB0028 */  sw      $t3, 0x0028($sp)
/* 01174 80B6AB14 AFA4005C */  sw      $a0, 0x005C($sp)
/* 01178 80B6AB18 02402825 */  or      $a1, $s2, $zero            ## $a1 = 00000000
/* 0117C 80B6AB1C 02603025 */  or      $a2, $s3, $zero            ## $a2 = 00000000
/* 01180 80B6AB20 24070141 */  addiu   $a3, $zero, 0x0141         ## $a3 = 00000141
/* 01184 80B6AB24 AFA0001C */  sw      $zero, 0x001C($sp)
/* 01188 80B6AB28 AFA00020 */  sw      $zero, 0x0020($sp)
/* 0118C 80B6AB2C AFA00024 */  sw      $zero, 0x0024($sp)
/* 01190 80B6AB30 E7B00010 */  swc1    $f16, 0x0010($sp)
/* 01194 80B6AB34 E7B20014 */  swc1    $f18, 0x0014($sp)
/* 01198 80B6AB38 0C00C916 */  jal     Actor_SpawnAsChild

/* 0119C 80B6AB3C E7A40018 */  swc1    $f4, 0x0018($sp)
/* 011A0 80B6AB40 44800000 */  mtc1    $zero, $f0                 ## $f0 = 0.00
/* 011A4 80B6AB44 8FB2005C */  lw      $s2, 0x005C($sp)
/* 011A8 80B6AB48 240C00C8 */  addiu   $t4, $zero, 0x00C8         ## $t4 = 000000C8
/* 011AC 80B6AB4C 44070000 */  mfc1    $a3, $f0
/* 011B0 80B6AB50 AFAC0024 */  sw      $t4, 0x0024($sp)
/* 011B4 80B6AB54 02602825 */  or      $a1, $s3, $zero            ## $a1 = 00000000
/* 011B8 80B6AB58 240600FE */  addiu   $a2, $zero, 0x00FE         ## $a2 = 000000FE
/* 011BC 80B6AB5C AFA00018 */  sw      $zero, 0x0018($sp)
/* 011C0 80B6AB60 AFA0001C */  sw      $zero, 0x001C($sp)
/* 011C4 80B6AB64 AFA00020 */  sw      $zero, 0x0020($sp)
/* 011C8 80B6AB68 02402025 */  or      $a0, $s2, $zero            ## $a0 = 00000000
/* 011CC 80B6AB6C E7A00010 */  swc1    $f0, 0x0010($sp)
/* 011D0 80B6AB70 0C00C7D4 */  jal     Actor_Spawn
              ## ActorSpawn
/* 011D4 80B6AB74 E7A00014 */  swc1    $f0, 0x0014($sp)
/* 011D8 80B6AB78 3C0D8016 */  lui     $t5, %hi(gGameInfo)
/* 011DC 80B6AB7C 8DADFA90 */  lw      $t5, %lo(gGameInfo)($t5)
/* 011E0 80B6AB80 24010001 */  addiu   $at, $zero, 0x0001         ## $at = 00000001
/* 011E4 80B6AB84 3C0F80B8 */  lui     $t7, %hi(D_80B7E07D)       ## $t7 = 80B80000
/* 011E8 80B6AB88 85AE09D6 */  lh      $t6, 0x09D6($t5)           ## 801609D6
/* 011EC 80B6AB8C 3C1980B8 */  lui     $t9, %hi(D_80B7E075)       ## $t9 = 80B80000
/* 011F0 80B6AB90 00008825 */  or      $s1, $zero, $zero          ## $s1 = 00000000
/* 011F4 80B6AB94 11C10007 */  beq     $t6, $at, .L80B6ABB4
/* 011F8 80B6AB98 00000000 */  nop
/* 011FC 80B6AB9C 91EFE07D */  lbu     $t7, %lo(D_80B7E07D)($t7)
/* 01200 80B6ABA0 24010003 */  addiu   $at, $zero, 0x0003         ## $at = 00000003
/* 01204 80B6ABA4 2402000F */  addiu   $v0, $zero, 0x000F         ## $v0 = 0000000F
/* 01208 80B6ABA8 31F80003 */  andi    $t8, $t7, 0x0003           ## $t8 = 00000000
/* 0120C 80B6ABAC 17010009 */  bne     $t8, $at, .L80B6ABD4
/* 01210 80B6ABB0 00000000 */  nop
.L80B6ABB4:
/* 01214 80B6ABB4 9339E075 */  lbu     $t9, %lo(D_80B7E075)($t9)
/* 01218 80B6ABB8 24010001 */  addiu   $at, $zero, 0x0001         ## $at = 00000001
/* 0121C 80B6ABBC 13210003 */  beq     $t9, $at, .L80B6ABCC
/* 01220 80B6ABC0 00000000 */  nop
/* 01224 80B6ABC4 10000003 */  beq     $zero, $zero, .L80B6ABD4
/* 01228 80B6ABC8 24020010 */  addiu   $v0, $zero, 0x0010         ## $v0 = 00000010
.L80B6ABCC:
/* 0122C 80B6ABCC 10000001 */  beq     $zero, $zero, .L80B6ABD4
/* 01230 80B6ABD0 24020011 */  addiu   $v0, $zero, 0x0011         ## $v0 = 00000011
.L80B6ABD4:
/* 01234 80B6ABD4 184000B0 */  blez    $v0, .L80B6AE98
/* 01238 80B6ABD8 00408025 */  or      $s0, $v0, $zero            ## $s0 = 00000011
/* 0123C 80B6ABDC 3C014780 */  lui     $at, 0x4780                ## $at = 47800000
/* 01240 80B6ABE0 4481A000 */  mtc1    $at, $f20                  ## $f20 = 65536.00
/* 01244 80B6ABE4 00000000 */  nop
.L80B6ABE8:
/* 01248 80B6ABE8 0C00CFBE */  jal     Math_Rand_ZeroFloat

/* 0124C 80B6ABEC 4600A306 */  mov.s   $f12, $f20
/* 01250 80B6ABF0 3C0980B8 */  lui     $t1, %hi(D_80B7AD40)       ## $t1 = 80B80000
/* 01254 80B6ABF4 2529AD40 */  addiu   $t1, $t1, %lo(D_80B7AD40)  ## $t1 = 80B7AD40
/* 01258 80B6ABF8 00114100 */  sll     $t0, $s1,  4
/* 0125C 80B6ABFC 01091021 */  addu    $v0, $t0, $t1
/* 01260 80B6AC00 844A0002 */  lh      $t2, 0x0002($v0)           ## 00000002
/* 01264 80B6AC04 844B0004 */  lh      $t3, 0x0004($v0)           ## 00000004
/* 01268 80B6AC08 844C0006 */  lh      $t4, 0x0006($v0)           ## 00000006
/* 0126C 80B6AC0C 448A3000 */  mtc1    $t2, $f6                   ## $f6 = 0.00
/* 01270 80B6AC10 448B4000 */  mtc1    $t3, $f8                   ## $f8 = 0.00
/* 01274 80B6AC14 448C8000 */  mtc1    $t4, $f16                  ## $f16 = 0.00
/* 01278 80B6AC18 468031A0 */  cvt.s.w $f6, $f6
/* 0127C 80B6AC1C 262F0064 */  addiu   $t7, $s1, 0x0064           ## $t7 = 00000064
/* 01280 80B6AC20 AFAF0024 */  sw      $t7, 0x0024($sp)
/* 01284 80B6AC24 02402025 */  or      $a0, $s2, $zero            ## $a0 = 00000000
/* 01288 80B6AC28 02602825 */  or      $a1, $s3, $zero            ## $a1 = 00000000
/* 0128C 80B6AC2C 4600010D */  trunc.w.s $f4, $f0
/* 01290 80B6AC30 44073000 */  mfc1    $a3, $f6
/* 01294 80B6AC34 240600FE */  addiu   $a2, $zero, 0x00FE         ## $a2 = 000000FE
/* 01298 80B6AC38 468042A0 */  cvt.s.w $f10, $f8
/* 0129C 80B6AC3C 440E2000 */  mfc1    $t6, $f4
/* 012A0 80B6AC40 AFA00018 */  sw      $zero, 0x0018($sp)
/* 012A4 80B6AC44 AFA00020 */  sw      $zero, 0x0020($sp)
/* 012A8 80B6AC48 AFAE001C */  sw      $t6, 0x001C($sp)
/* 012AC 80B6AC4C 468084A0 */  cvt.s.w $f18, $f16
/* 012B0 80B6AC50 E7AA0010 */  swc1    $f10, 0x0010($sp)
/* 012B4 80B6AC54 0C00C7D4 */  jal     Actor_Spawn
              ## ActorSpawn
/* 012B8 80B6AC58 E7B20014 */  swc1    $f18, 0x0014($sp)
/* 012BC 80B6AC5C 26310001 */  addiu   $s1, $s1, 0x0001           ## $s1 = 00000001
/* 012C0 80B6AC60 00118C00 */  sll     $s1, $s1, 16
/* 012C4 80B6AC64 00118C03 */  sra     $s1, $s1, 16
/* 012C8 80B6AC68 0230082A */  slt     $at, $s1, $s0
/* 012CC 80B6AC6C 1420FFDE */  bne     $at, $zero, .L80B6ABE8
/* 012D0 80B6AC70 00000000 */  nop
/* 012D4 80B6AC74 10000089 */  beq     $zero, $zero, .L80B6AE9C
/* 012D8 80B6AC78 8FBF0054 */  lw      $ra, 0x0054($sp)
.L80B6AC7C:
/* 012DC 80B6AC7C 28410073 */  slti    $at, $v0, 0x0073
/* 012E0 80B6AC80 14200004 */  bne     $at, $zero, .L80B6AC94
/* 012E4 80B6AC84 3C110600 */  lui     $s1, %hi(D_0600007C)                ## $s1 = 06000000
/* 012E8 80B6AC88 240100C8 */  addiu   $at, $zero, 0x00C8         ## $at = 000000C8
/* 012EC 80B6AC8C 14410012 */  bne     $v0, $at, .L80B6ACD8
/* 012F0 80B6AC90 02602025 */  or      $a0, $s3, $zero            ## $a0 = 00000000
.L80B6AC94:
/* 012F4 80B6AC94 2631007C */  addiu   $s1, $s1, %lo(D_0600007C)           ## $s1 = 0600007C
/* 012F8 80B6AC98 265001D8 */  addiu   $s0, $s2, 0x01D8           ## $s0 = 000001D8
/* 012FC 80B6AC9C 3C060600 */  lui     $a2, %hi(D_060029C0)                ## $a2 = 06000000
/* 01300 80B6ACA0 24C629C0 */  addiu   $a2, $a2, %lo(D_060029C0)           ## $a2 = 060029C0
/* 01304 80B6ACA4 02002825 */  or      $a1, $s0, $zero            ## $a1 = 000001D8
/* 01308 80B6ACA8 02203825 */  or      $a3, $s1, $zero            ## $a3 = 0600007C
/* 0130C 80B6ACAC 02602025 */  or      $a0, $s3, $zero            ## $a0 = 00000000
/* 01310 80B6ACB0 AFA00010 */  sw      $zero, 0x0010($sp)
/* 01314 80B6ACB4 AFA00014 */  sw      $zero, 0x0014($sp)
/* 01318 80B6ACB8 0C0291BE */  jal     SkelAnime_InitFlex
/* 0131C 80B6ACBC AFA00018 */  sw      $zero, 0x0018($sp)
/* 01320 80B6ACC0 02002025 */  or      $a0, $s0, $zero            ## $a0 = 000001D8
/* 01324 80B6ACC4 02202825 */  or      $a1, $s1, $zero            ## $a1 = 0600007C
/* 01328 80B6ACC8 0C0294D3 */  jal     SkelAnime_ChangeAnimTransitionRepeat
/* 0132C 80B6ACCC 24060000 */  addiu   $a2, $zero, 0x0000         ## $a2 = 00000000
/* 01330 80B6ACD0 10000010 */  beq     $zero, $zero, .L80B6AD14
/* 01334 80B6ACD4 00000000 */  nop
.L80B6ACD8:
/* 01338 80B6ACD8 3C110601 */  lui     $s1, %hi(D_0600CFE0)                ## $s1 = 06010000
/* 0133C 80B6ACDC 2631CFE0 */  addiu   $s1, $s1, %lo(D_0600CFE0)           ## $s1 = 0600CFE0
/* 01340 80B6ACE0 265001D8 */  addiu   $s0, $s2, 0x01D8           ## $s0 = 000001D8
/* 01344 80B6ACE4 3C060601 */  lui     $a2, %hi(D_06011058)                ## $a2 = 06010000
/* 01348 80B6ACE8 24C61058 */  addiu   $a2, $a2, %lo(D_06011058)           ## $a2 = 06011058
/* 0134C 80B6ACEC 02002825 */  or      $a1, $s0, $zero            ## $a1 = 000001D8
/* 01350 80B6ACF0 02203825 */  or      $a3, $s1, $zero            ## $a3 = 0600CFE0
/* 01354 80B6ACF4 AFA00010 */  sw      $zero, 0x0010($sp)
/* 01358 80B6ACF8 AFA00014 */  sw      $zero, 0x0014($sp)
/* 0135C 80B6ACFC 0C0291BE */  jal     SkelAnime_InitFlex
/* 01360 80B6AD00 AFA00018 */  sw      $zero, 0x0018($sp)
/* 01364 80B6AD04 02002025 */  or      $a0, $s0, $zero            ## $a0 = 000001D8
/* 01368 80B6AD08 02202825 */  or      $a1, $s1, $zero            ## $a1 = 0600CFE0
/* 0136C 80B6AD0C 0C0294D3 */  jal     SkelAnime_ChangeAnimTransitionRepeat
/* 01370 80B6AD10 24060000 */  addiu   $a2, $zero, 0x0000         ## $a2 = 00000000
.L80B6AD14:
/* 01374 80B6AD14 0C02927F */  jal     SkelAnime_FrameUpdateMatrix

/* 01378 80B6AD18 02002025 */  or      $a0, $s0, $zero            ## $a0 = 000001D8
/* 0137C 80B6AD1C 8658001C */  lh      $t8, 0x001C($s2)           ## 0000001C
/* 01380 80B6AD20 240100C8 */  addiu   $at, $zero, 0x00C8         ## $at = 000000C8
/* 01384 80B6AD24 2402000A */  addiu   $v0, $zero, 0x000A         ## $v0 = 0000000A
/* 01388 80B6AD28 17010012 */  bne     $t8, $at, .L80B6AD74
/* 0138C 80B6AD2C 3C0C80B8 */  lui     $t4, %hi(D_80B7A700)       ## $t4 = 80B80000
/* 01390 80B6AD30 24190064 */  addiu   $t9, $zero, 0x0064         ## $t9 = 00000064
/* 01394 80B6AD34 A6590158 */  sh      $t9, 0x0158($s2)           ## 00000158
/* 01398 80B6AD38 02602025 */  or      $a0, $s3, $zero            ## $a0 = 00000000
/* 0139C 80B6AD3C 26651C24 */  addiu   $a1, $s3, 0x1C24           ## $a1 = 00001C24
/* 013A0 80B6AD40 02403025 */  or      $a2, $s2, $zero            ## $a2 = 00000000
/* 013A4 80B6AD44 0C00CDD2 */  jal     Actor_ChangeType

/* 013A8 80B6AD48 24070006 */  addiu   $a3, $zero, 0x0006         ## $a3 = 00000006
/* 013AC 80B6AD4C 8E480004 */  lw      $t0, 0x0004($s2)           ## 00000004
/* 013B0 80B6AD50 A240001F */  sb      $zero, 0x001F($s2)         ## 0000001F
/* 013B4 80B6AD54 02602025 */  or      $a0, $s3, $zero            ## $a0 = 00000000
/* 013B8 80B6AD58 35090009 */  ori     $t1, $t0, 0x0009           ## $t1 = 00000009
/* 013BC 80B6AD5C AE490004 */  sw      $t1, 0x0004($s2)           ## 00000004
/* 013C0 80B6AD60 266507A8 */  addiu   $a1, $s3, 0x07A8           ## $a1 = 000007A8
/* 013C4 80B6AD64 0C01E9D9 */  jal     LightContext_InsertLight

/* 013C8 80B6AD68 26460220 */  addiu   $a2, $s2, 0x0220           ## $a2 = 00000220
/* 013CC 80B6AD6C 1000004A */  beq     $zero, $zero, .L80B6AE98
/* 013D0 80B6AD70 AE42021C */  sw      $v0, 0x021C($s2)           ## 0000021C
.L80B6AD74:
/* 013D4 80B6AD74 864A001C */  lh      $t2, 0x001C($s2)           ## 0000001C
/* 013D8 80B6AD78 864D001C */  lh      $t5, 0x001C($s2)           ## 0000001C
/* 013DC 80B6AD7C A6420158 */  sh      $v0, 0x0158($s2)           ## 00000158
/* 013E0 80B6AD80 000A5900 */  sll     $t3, $t2,  4
/* 013E4 80B6AD84 A642015A */  sh      $v0, 0x015A($s2)           ## 0000015A
/* 013E8 80B6AD88 018B6021 */  addu    $t4, $t4, $t3
/* 013EC 80B6AD8C 918CA700 */  lbu     $t4, %lo(D_80B7A700)($t4)
/* 013F0 80B6AD90 3C0180B8 */  lui     $at, %hi(D_80B7A70C)       ## $at = 80B80000
/* 013F4 80B6AD94 000D7100 */  sll     $t6, $t5,  4
/* 013F8 80B6AD98 864F001C */  lh      $t7, 0x001C($s2)           ## 0000001C
/* 013FC 80B6AD9C 002E0821 */  addu    $at, $at, $t6
/* 01400 80B6ADA0 A24C0150 */  sb      $t4, 0x0150($s2)           ## 00000150
/* 01404 80B6ADA4 C426A70C */  lwc1    $f6, %lo(D_80B7A70C)($at)
/* 01408 80B6ADA8 3C1980B8 */  lui     $t9, %hi(D_80B7A708)       ## $t9 = 80B80000
/* 0140C 80B6ADAC 000FC100 */  sll     $t8, $t7,  4
/* 01410 80B6ADB0 0338C821 */  addu    $t9, $t9, $t8
/* 01414 80B6ADB4 E64601A8 */  swc1    $f6, 0x01A8($s2)           ## 000001A8
/* 01418 80B6ADB8 9339A708 */  lbu     $t9, %lo(D_80B7A708)($t9)
/* 0141C 80B6ADBC 3C014F80 */  lui     $at, 0x4F80                ## $at = 4F800000
/* 01420 80B6ADC0 44994000 */  mtc1    $t9, $f8                   ## $f8 = -0.00
/* 01424 80B6ADC4 07210004 */  bgez    $t9, .L80B6ADD8
/* 01428 80B6ADC8 468042A0 */  cvt.s.w $f10, $f8
/* 0142C 80B6ADCC 44818000 */  mtc1    $at, $f16                  ## $f16 = 4294967296.00
/* 01430 80B6ADD0 00000000 */  nop
/* 01434 80B6ADD4 46105280 */  add.s   $f10, $f10, $f16
.L80B6ADD8:
/* 01438 80B6ADD8 E64A01AC */  swc1    $f10, 0x01AC($s2)          ## 000001AC
/* 0143C 80B6ADDC 3C0180B8 */  lui     $at, %hi(D_80B7B384)       ## $at = 80B80000
/* 01440 80B6ADE0 0C00CFBE */  jal     Math_Rand_ZeroFloat

/* 01444 80B6ADE4 C42CB384 */  lwc1    $f12, %lo(D_80B7B384)($at)
/* 01448 80B6ADE8 C65201AC */  lwc1    $f18, 0x01AC($s2)          ## 000001AC
/* 0144C 80B6ADEC 3C014282 */  lui     $at, 0x4282                ## $at = 42820000
/* 01450 80B6ADF0 44814000 */  mtc1    $at, $f8                   ## $f8 = 65.00
/* 01454 80B6ADF4 46009100 */  add.s   $f4, $f18, $f0
/* 01458 80B6ADF8 E64401AC */  swc1    $f4, 0x01AC($s2)           ## 000001AC
/* 0145C 80B6ADFC C64601AC */  lwc1    $f6, 0x01AC($s2)           ## 000001AC
/* 01460 80B6AE00 4606403E */  c.le.s  $f8, $f6
/* 01464 80B6AE04 00000000 */  nop
/* 01468 80B6AE08 4500000F */  bc1f    .L80B6AE48
/* 0146C 80B6AE0C 00000000 */  nop
/* 01470 80B6AE10 0C03F66B */  jal     Math_Rand_ZeroOne
              ## Rand.Next() float
/* 01474 80B6AE14 00000000 */  nop
/* 01478 80B6AE18 3C0180B8 */  lui     $at, %hi(D_80B7B388)       ## $at = 80B80000
/* 0147C 80B6AE1C C430B388 */  lwc1    $f16, %lo(D_80B7B388)($at)
/* 01480 80B6AE20 3C0180B8 */  lui     $at, %hi(D_80B7B38C)       ## $at = 80B80000
/* 01484 80B6AE24 4610003C */  c.lt.s  $f0, $f16
/* 01488 80B6AE28 00000000 */  nop
/* 0148C 80B6AE2C 45000006 */  bc1f    .L80B6AE48
/* 01490 80B6AE30 00000000 */  nop
/* 01494 80B6AE34 0C00CFBE */  jal     Math_Rand_ZeroFloat

/* 01498 80B6AE38 C42CB38C */  lwc1    $f12, %lo(D_80B7B38C)($at)
/* 0149C 80B6AE3C C64A01AC */  lwc1    $f10, 0x01AC($s2)          ## 000001AC
/* 014A0 80B6AE40 46005480 */  add.s   $f18, $f10, $f0
/* 014A4 80B6AE44 E65201AC */  swc1    $f18, 0x01AC($s2)          ## 000001AC
.L80B6AE48:
/* 014A8 80B6AE48 3C088016 */  lui     $t0, %hi(gGameInfo)
/* 014AC 80B6AE4C 8D08FA90 */  lw      $t0, %lo(gGameInfo)($t0)
/* 014B0 80B6AE50 3C0980B8 */  lui     $t1, %hi(D_80B7E075)       ## $t1 = 80B80000
/* 014B4 80B6AE54 850209E0 */  lh      $v0, 0x09E0($t0)           ## 801609E0
/* 014B8 80B6AE58 10400007 */  beq     $v0, $zero, .L80B6AE78
/* 014BC 80B6AE5C 00000000 */  nop
/* 014C0 80B6AE60 44822000 */  mtc1    $v0, $f4                   ## $f4 = 0.00
/* 014C4 80B6AE64 3C0142A0 */  lui     $at, 0x42A0                ## $at = 42A00000
/* 014C8 80B6AE68 44814000 */  mtc1    $at, $f8                   ## $f8 = 80.00
/* 014CC 80B6AE6C 468021A0 */  cvt.s.w $f6, $f4
/* 014D0 80B6AE70 46083400 */  add.s   $f16, $f6, $f8
/* 014D4 80B6AE74 E65001AC */  swc1    $f16, 0x01AC($s2)          ## 000001AC
.L80B6AE78:
/* 014D8 80B6AE78 9129E075 */  lbu     $t1, %lo(D_80B7E075)($t1)
/* 014DC 80B6AE7C 24010001 */  addiu   $at, $zero, 0x0001         ## $at = 00000001
/* 014E0 80B6AE80 15210005 */  bne     $t1, $at, .L80B6AE98
/* 014E4 80B6AE84 3C0180B8 */  lui     $at, %hi(D_80B7B390)       ## $at = 80B80000
/* 014E8 80B6AE88 C432B390 */  lwc1    $f18, %lo(D_80B7B390)($at)
/* 014EC 80B6AE8C C64A01AC */  lwc1    $f10, 0x01AC($s2)          ## 000001AC
/* 014F0 80B6AE90 46125102 */  mul.s   $f4, $f10, $f18
/* 014F4 80B6AE94 E64401AC */  swc1    $f4, 0x01AC($s2)           ## 000001AC
.L80B6AE98:
/* 014F8 80B6AE98 8FBF0054 */  lw      $ra, 0x0054($sp)
.L80B6AE9C:
/* 014FC 80B6AE9C D7B40030 */  ldc1    $f20, 0x0030($sp)
/* 01500 80B6AEA0 D7B60038 */  ldc1    $f22, 0x0038($sp)
/* 01504 80B6AEA4 8FB00044 */  lw      $s0, 0x0044($sp)
/* 01508 80B6AEA8 8FB10048 */  lw      $s1, 0x0048($sp)
/* 0150C 80B6AEAC 8FB2004C */  lw      $s2, 0x004C($sp)
/* 01510 80B6AEB0 8FB30050 */  lw      $s3, 0x0050($sp)
/* 01514 80B6AEB4 03E00008 */  jr      $ra
/* 01518 80B6AEB8 27BD0078 */  addiu   $sp, $sp, 0x0078           ## $sp = 00000000
