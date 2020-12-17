.late_rodata
glabel jtbl_8090DAB4
.word L808FD644
.word L808FD80C
.word L808FD940
.word L808FDB64
.word L808FDC48
.word L808FDD74
.word L808FF810
.word L808FF810
.word L808FF810
.word L808FF810
.word L808FDDE8
.word L808FDF70
.word L808FE1C0
.word L808FE1C0
.word L808FE2E0
.word L808FE4C0
.word L808FE63C
.word L808FE8E4
.word L808FEA08
.word L808FEAC8
.word L808FEB70
.word L808FECE8
.word L808FED50
.word L808FEF74
.word L808FF150
.word L808FF1F4
.word L808FF330
.word L808FF404
.word L808FF51C
.word L808FF678
glabel D_8090DB2C
 .word 0x44728000
glabel D_8090DB30
 .word 0x4487C000
glabel D_8090DB34
 .word 0x44728000
glabel D_8090DB38
 .word 0x4487C000
glabel D_8090DB3C
 .word 0x44728000
glabel D_8090DB40
 .word 0x4487C000
glabel D_8090DB44
    .float 1500.0

glabel D_8090DB48
 .word 0x4487C000
glabel D_8090DB4C
 .word 0x44728000
glabel D_8090DB50
 .word 0x4487C000
glabel D_8090DB54
 .word 0x44738000
glabel D_8090DB58
 .word 0x4487C000
glabel D_8090DB5C
 .word 0x44688000
glabel D_8090DB60
 .word 0x448D2000
glabel D_8090DB64
 .word 0x44A14000
glabel D_8090DB68
 .word 0x4487C000
glabel D_8090DB6C
 .word 0x4487C000
glabel D_8090DB70
 .word 0x4487C000
glabel D_8090DB74
 .word 0x4487C000
glabel D_8090DB78
 .word 0x448C2000
glabel D_8090DB7C
 .word 0x447C4000
glabel D_8090DB80
    .float 7000.0

glabel D_8090DB84
 .word 0x448A4000
glabel D_8090DB88
 .word 0x4487C000
glabel D_8090DB8C
 .word 0x44EBC000
glabel D_8090DB90
 .word 0x4487C000
glabel D_8090DB94
 .word 0x44896000
glabel D_8090DB98
    .float 0.8

glabel D_8090DB9C
 .word 0x44896000
glabel D_8090DBA0
 .word 0x4487C000

.text
glabel func_808FD5F4
/* 006B4 808FD5F4 27BDFF70 */  addiu   $sp, $sp, 0xFF70           ## $sp = FFFFFF70
/* 006B8 808FD5F8 AFBF003C */  sw      $ra, 0x003C($sp)
/* 006BC 808FD5FC AFB10038 */  sw      $s1, 0x0038($sp)
/* 006C0 808FD600 AFB00034 */  sw      $s0, 0x0034($sp)
/* 006C4 808FD604 A3A0008D */  sb      $zero, 0x008D($sp)
/* 006C8 808FD608 8C8E0398 */  lw      $t6, 0x0398($a0)           ## 00000398
/* 006CC 808FD60C 9498039C */  lhu     $t8, 0x039C($a0)           ## 0000039C
/* 006D0 808FD610 8CA91C44 */  lw      $t1, 0x1C44($a1)           ## 00001C44
/* 006D4 808FD614 25CF0001 */  addiu   $t7, $t6, 0x0001           ## $t7 = 00000001
/* 006D8 808FD618 2F01001E */  sltiu   $at, $t8, 0x001E
/* 006DC 808FD61C 00808025 */  or      $s0, $a0, $zero            ## $s0 = 00000000
/* 006E0 808FD620 00A08825 */  or      $s1, $a1, $zero            ## $s1 = 00000000
/* 006E4 808FD624 1020087A */  beq     $at, $zero, .L808FF810
/* 006E8 808FD628 AC8F0398 */  sw      $t7, 0x0398($a0)           ## 00000398
/* 006EC 808FD62C 0018C080 */  sll     $t8, $t8,  2
/* 006F0 808FD630 3C018091 */  lui     $at, %hi(jtbl_8090DAB4)       ## $at = 80910000
/* 006F4 808FD634 00380821 */  addu    $at, $at, $t8
/* 006F8 808FD638 8C38DAB4 */  lw      $t8, %lo(jtbl_8090DAB4)($at)
/* 006FC 808FD63C 03000008 */  jr      $t8
/* 00700 808FD640 00000000 */  nop
glabel L808FD644
/* 00704 808FD644 3C010001 */  lui     $at, 0x0001                ## $at = 00010000
/* 00708 808FD648 342117A4 */  ori     $at, $at, 0x17A4           ## $at = 000117A4
/* 0070C 808FD64C 02212021 */  addu    $a0, $s1, $at
/* 00710 808FD650 AFA40054 */  sw      $a0, 0x0054($sp)
/* 00714 808FD654 2405017E */  addiu   $a1, $zero, 0x017E         ## $a1 = 0000017E
/* 00718 808FD658 0C02604B */  jal     Object_GetIndex
              ## ObjectIndex
/* 0071C 808FD65C AFA90088 */  sw      $t1, 0x0088($sp)
/* 00720 808FD660 8FA40054 */  lw      $a0, 0x0054($sp)
/* 00724 808FD664 0C026062 */  jal     Object_IsLoaded

/* 00728 808FD668 00402825 */  or      $a1, $v0, $zero            ## $a1 = 00000000
/* 0072C 808FD66C 10400868 */  beq     $v0, $zero, .L808FF810
/* 00730 808FD670 8FA90088 */  lw      $t1, 0x0088($sp)
/* 00734 808FD674 02202025 */  or      $a0, $s1, $zero            ## $a0 = 00000000
/* 00738 808FD678 26251D64 */  addiu   $a1, $s1, 0x1D64           ## $a1 = 00001D64
/* 0073C 808FD67C 0C019148 */  jal     func_80064520
/* 00740 808FD680 AFA90088 */  sw      $t1, 0x0088($sp)
/* 00744 808FD684 02202025 */  or      $a0, $s1, $zero            ## $a0 = 00000000
/* 00748 808FD688 02002825 */  or      $a1, $s0, $zero            ## $a1 = 00000000
/* 0074C 808FD68C 0C00B7D5 */  jal     func_8002DF54
/* 00750 808FD690 24060008 */  addiu   $a2, $zero, 0x0008         ## $a2 = 00000008
/* 00754 808FD694 0C03008C */  jal     Gameplay_CreateSubCamera
/* 00758 808FD698 02202025 */  or      $a0, $s1, $zero            ## $a0 = 00000000
/* 0075C 808FD69C A602039E */  sh      $v0, 0x039E($s0)           ## 0000039E
/* 00760 808FD6A0 02202025 */  or      $a0, $s1, $zero            ## $a0 = 00000000
/* 00764 808FD6A4 00002825 */  or      $a1, $zero, $zero          ## $a1 = 00000000
/* 00768 808FD6A8 0C0300C5 */  jal     Gameplay_ChangeCameraStatus
/* 0076C 808FD6AC 24060001 */  addiu   $a2, $zero, 0x0001         ## $a2 = 00000001
/* 00770 808FD6B0 02202025 */  or      $a0, $s1, $zero            ## $a0 = 00000000
/* 00774 808FD6B4 8605039E */  lh      $a1, 0x039E($s0)           ## 0000039E
/* 00778 808FD6B8 0C0300C5 */  jal     Gameplay_ChangeCameraStatus
/* 0077C 808FD6BC 24060007 */  addiu   $a2, $zero, 0x0007         ## $a2 = 00000007
/* 00780 808FD6C0 24190001 */  addiu   $t9, $zero, 0x0001         ## $t9 = 00000001
/* 00784 808FD6C4 A619039C */  sh      $t9, 0x039C($s0)           ## 0000039C
/* 00788 808FD6C8 3C018091 */  lui     $at, %hi(D_8090DB2C)       ## $at = 80910000
/* 0078C 808FD6CC C424DB2C */  lwc1    $f4, %lo(D_8090DB2C)($at)
/* 00790 808FD6D0 3C018091 */  lui     $at, %hi(D_8090DB30)       ## $at = 80910000
/* 00794 808FD6D4 C426DB30 */  lwc1    $f6, %lo(D_8090DB30)($at)
/* 00798 808FD6D8 3C01C348 */  lui     $at, 0xC348                ## $at = C3480000
/* 0079C 808FD6DC 44814000 */  mtc1    $at, $f8                   ## $f8 = -200.00
/* 007A0 808FD6E0 240B0001 */  addiu   $t3, $zero, 0x0001         ## $t3 = 00000001
/* 007A4 808FD6E4 AFAB0028 */  sw      $t3, 0x0028($sp)
/* 007A8 808FD6E8 AFA00024 */  sw      $zero, 0x0024($sp)
/* 007AC 808FD6EC AFA00020 */  sw      $zero, 0x0020($sp)
/* 007B0 808FD6F0 AFA0001C */  sw      $zero, 0x001C($sp)
/* 007B4 808FD6F4 26241C24 */  addiu   $a0, $s1, 0x1C24           ## $a0 = 00001C24
/* 007B8 808FD6F8 02002825 */  or      $a1, $s0, $zero            ## $a1 = 00000000
/* 007BC 808FD6FC 02203025 */  or      $a2, $s1, $zero            ## $a2 = 00000000
/* 007C0 808FD700 24070179 */  addiu   $a3, $zero, 0x0179         ## $a3 = 00000179
/* 007C4 808FD704 E7A40010 */  swc1    $f4, 0x0010($sp)
/* 007C8 808FD708 E7A60014 */  swc1    $f6, 0x0014($sp)
/* 007CC 808FD70C 0C00C916 */  jal     Actor_SpawnAsChild

/* 007D0 808FD710 E7A80018 */  swc1    $f8, 0x0018($sp)
/* 007D4 808FD714 3C018091 */  lui     $at, %hi(D_8090EB2C)       ## $at = 80910000
/* 007D8 808FD718 AC22EB2C */  sw      $v0, %lo(D_8090EB2C)($at)
/* 007DC 808FD71C 3C0C8091 */  lui     $t4, %hi(D_8090EB2C)       ## $t4 = 80910000
/* 007E0 808FD720 8D8CEB2C */  lw      $t4, %lo(D_8090EB2C)($t4)
/* 007E4 808FD724 8FA90088 */  lw      $t1, 0x0088($sp)
/* 007E8 808FD728 3C018091 */  lui     $at, %hi(D_8090DB34)       ## $at = 80910000
/* 007EC 808FD72C A18003C8 */  sb      $zero, 0x03C8($t4)         ## 809103C8
/* 007F0 808FD730 3C0D8091 */  lui     $t5, %hi(D_8090EB2C)       ## $t5 = 80910000
/* 007F4 808FD734 8DADEB2C */  lw      $t5, %lo(D_8090EB2C)($t5)
/* 007F8 808FD738 C42ADB34 */  lwc1    $f10, %lo(D_8090DB34)($at)
/* 007FC 808FD73C 3C018091 */  lui     $at, %hi(D_8090DB38)       ## $at = 80910000
/* 00800 808FD740 3C0E8091 */  lui     $t6, %hi(D_8090EB2C)       ## $t6 = 80910000
/* 00804 808FD744 E5AA0024 */  swc1    $f10, 0x0024($t5)          ## 80910024
/* 00808 808FD748 8DCEEB2C */  lw      $t6, %lo(D_8090EB2C)($t6)
/* 0080C 808FD74C C424DB38 */  lwc1    $f4, %lo(D_8090DB38)($at)
/* 00810 808FD750 3C01C356 */  lui     $at, 0xC356                ## $at = C3560000
/* 00814 808FD754 3C0F8091 */  lui     $t7, %hi(D_8090EB2C)       ## $t7 = 80910000
/* 00818 808FD758 E5C40028 */  swc1    $f4, 0x0028($t6)           ## 80910028
/* 0081C 808FD75C 8DEFEB2C */  lw      $t7, %lo(D_8090EB2C)($t7)
/* 00820 808FD760 44813000 */  mtc1    $at, $f6                   ## $f6 = -214.00
/* 00824 808FD764 3C198091 */  lui     $t9, %hi(D_8090EB2C)       ## $t9 = 80910000
/* 00828 808FD768 44804000 */  mtc1    $zero, $f8                 ## $f8 = 0.00
/* 0082C 808FD76C E5E6002C */  swc1    $f6, 0x002C($t7)           ## 8091002C
/* 00830 808FD770 8F39EB2C */  lw      $t9, %lo(D_8090EB2C)($t9)
/* 00834 808FD774 3C013F80 */  lui     $at, 0x3F80                ## $at = 3F800000
/* 00838 808FD778 44815000 */  mtc1    $at, $f10                  ## $f10 = 1.00
/* 0083C 808FD77C 24189000 */  addiu   $t8, $zero, 0x9000         ## $t8 = FFFF9000
/* 00840 808FD780 A73800B6 */  sh      $t8, 0x00B6($t9)           ## 809100B6
/* 00844 808FD784 3C0144AF */  lui     $at, 0x44AF                ## $at = 44AF0000
/* 00848 808FD788 E60803BC */  swc1    $f8, 0x03BC($s0)           ## 000003BC
/* 0084C 808FD78C 44814000 */  mtc1    $at, $f8                   ## $f8 = 1400.00
/* 00850 808FD790 3C0144C8 */  lui     $at, 0x44C8                ## $at = 44C80000
/* 00854 808FD794 E60A03C0 */  swc1    $f10, 0x03C0($s0)          ## 000003C0
/* 00858 808FD798 44802000 */  mtc1    $zero, $f4                 ## $f4 = 0.00
/* 0085C 808FD79C 44803000 */  mtc1    $zero, $f6                 ## $f6 = 0.00
/* 00860 808FD7A0 44815000 */  mtc1    $at, $f10                  ## $f10 = 1600.00
/* 00864 808FD7A4 AE000398 */  sw      $zero, 0x0398($s0)         ## 00000398
/* 00868 808FD7A8 3C018091 */  lui     $at, %hi(D_8090DB3C)       ## $at = 80910000
/* 0086C 808FD7AC E60803A8 */  swc1    $f8, 0x03A8($s0)           ## 000003A8
/* 00870 808FD7B0 E60403C4 */  swc1    $f4, 0x03C4($s0)           ## 000003C4
/* 00874 808FD7B4 E60603A4 */  swc1    $f6, 0x03A4($s0)           ## 000003A4
/* 00878 808FD7B8 E60A03AC */  swc1    $f10, 0x03AC($s0)          ## 000003AC
/* 0087C 808FD7BC C424DB3C */  lwc1    $f4, %lo(D_8090DB3C)($at)
/* 00880 808FD7C0 3C018091 */  lui     $at, %hi(D_8090DB40)       ## $at = 80910000
/* 00884 808FD7C4 240BB000 */  addiu   $t3, $zero, 0xB000         ## $t3 = FFFFB000
/* 00888 808FD7C8 E5240024 */  swc1    $f4, 0x0024($t1)           ## 00000024
/* 0088C 808FD7CC C426DB40 */  lwc1    $f6, %lo(D_8090DB40)($at)
/* 00890 808FD7D0 3C01C33A */  lui     $at, 0xC33A                ## $at = C33A0000
/* 00894 808FD7D4 44814000 */  mtc1    $at, $f8                   ## $f8 = -186.00
/* 00898 808FD7D8 3C050600 */  lui     $a1, %hi(D_06002168)                ## $a1 = 06000000
/* 0089C 808FD7DC 24A52168 */  addiu   $a1, $a1, %lo(D_06002168)           ## $a1 = 06002168
/* 008A0 808FD7E0 2604014C */  addiu   $a0, $s0, 0x014C           ## $a0 = 0000014C
/* 008A4 808FD7E4 24060000 */  addiu   $a2, $zero, 0x0000         ## $a2 = 00000000
/* 008A8 808FD7E8 A52B00B6 */  sh      $t3, 0x00B6($t1)           ## 000000B6
/* 008AC 808FD7EC E5260028 */  swc1    $f6, 0x0028($t1)           ## 00000028
/* 008B0 808FD7F0 0C0294D3 */  jal     SkelAnime_ChangeAnimTransitionRepeat
/* 008B4 808FD7F4 E528002C */  swc1    $f8, 0x002C($t1)           ## 0000002C
/* 008B8 808FD7F8 44805000 */  mtc1    $zero, $f10                ## $f10 = 0.00
/* 008BC 808FD7FC 3C010001 */  lui     $at, 0x0001                ## $at = 00010000
/* 008C0 808FD800 8FA90088 */  lw      $t1, 0x0088($sp)
/* 008C4 808FD804 00310821 */  addu    $at, $at, $s1
/* 008C8 808FD808 E42A0AFC */  swc1    $f10, 0x0AFC($at)          ## 00010AFC
glabel L808FD80C
/* 008CC 808FD80C 8E0C0398 */  lw      $t4, 0x0398($s0)           ## 00000398
/* 008D0 808FD810 2D810046 */  sltiu   $at, $t4, 0x0046
/* 008D4 808FD814 10200005 */  beq     $at, $zero, .L808FD82C
/* 008D8 808FD818 00000000 */  nop
/* 008DC 808FD81C 44802000 */  mtc1    $zero, $f4                 ## $f4 = 0.00
/* 008E0 808FD820 3C010001 */  lui     $at, 0x0001                ## $at = 00010000
/* 008E4 808FD824 00310821 */  addu    $at, $at, $s1
/* 008E8 808FD828 E4240AFC */  swc1    $f4, 0x0AFC($at)           ## 00010AFC
.L808FD82C:
/* 008EC 808FD82C 3C018091 */  lui     $at, %hi(D_8090DB44)       ## $at = 80910000
/* 008F0 808FD830 C420DB44 */  lwc1    $f0, %lo(D_8090DB44)($at)
/* 008F4 808FD834 C6060410 */  lwc1    $f6, 0x0410($s0)           ## 00000410
/* 008F8 808FD838 240D0003 */  addiu   $t5, $zero, 0x0003         ## $t5 = 00000003
/* 008FC 808FD83C A20D0339 */  sb      $t5, 0x0339($s0)           ## 00000339
/* 00900 808FD840 46003202 */  mul.s   $f8, $f6, $f0
/* 00904 808FD844 3C063DCC */  lui     $a2, 0x3DCC                ## $a2 = 3DCC0000
/* 00908 808FD848 44050000 */  mfc1    $a1, $f0
/* 0090C 808FD84C 34C6CCCD */  ori     $a2, $a2, 0xCCCD           ## $a2 = 3DCCCCCD
/* 00910 808FD850 AFA90088 */  sw      $t1, 0x0088($sp)
/* 00914 808FD854 260403A4 */  addiu   $a0, $s0, 0x03A4           ## $a0 = 000003A4
/* 00918 808FD858 44074000 */  mfc1    $a3, $f8
/* 0091C 808FD85C 0C01E107 */  jal     Math_SmoothScaleMaxF

/* 00920 808FD860 00000000 */  nop
/* 00924 808FD864 3C0144DC */  lui     $at, 0x44DC                ## $at = 44DC0000
/* 00928 808FD868 44812000 */  mtc1    $at, $f4                   ## $f4 = 1760.00
/* 0092C 808FD86C C60A0410 */  lwc1    $f10, 0x0410($s0)          ## 00000410
/* 00930 808FD870 3C063DCC */  lui     $a2, 0x3DCC                ## $a2 = 3DCC0000
/* 00934 808FD874 34C6CCCD */  ori     $a2, $a2, 0xCCCD           ## $a2 = 3DCCCCCD
/* 00938 808FD878 46045182 */  mul.s   $f6, $f10, $f4
/* 0093C 808FD87C 260403AC */  addiu   $a0, $s0, 0x03AC           ## $a0 = 000003AC
/* 00940 808FD880 3C05C320 */  lui     $a1, 0xC320                ## $a1 = C3200000
/* 00944 808FD884 44073000 */  mfc1    $a3, $f6
/* 00948 808FD888 0C01E107 */  jal     Math_SmoothScaleMaxF

/* 0094C 808FD88C 00000000 */  nop
/* 00950 808FD890 3C053BF5 */  lui     $a1, 0x3BF5                ## $a1 = 3BF50000
/* 00954 808FD894 3C0738D1 */  lui     $a3, 0x38D1                ## $a3 = 38D10000
/* 00958 808FD898 34E7B717 */  ori     $a3, $a3, 0xB717           ## $a3 = 38D1B717
/* 0095C 808FD89C 34A5C28F */  ori     $a1, $a1, 0xC28F           ## $a1 = 3BF5C28F
/* 00960 808FD8A0 26040410 */  addiu   $a0, $s0, 0x0410           ## $a0 = 00000410
/* 00964 808FD8A4 0C01E107 */  jal     Math_SmoothScaleMaxF

/* 00968 808FD8A8 3C063F80 */  lui     $a2, 0x3F80                ## $a2 = 3F800000
/* 0096C 808FD8AC 3C01C348 */  lui     $at, 0xC348                ## $at = C3480000
/* 00970 808FD8B0 44814000 */  mtc1    $at, $f8                   ## $f8 = -200.00
/* 00974 808FD8B4 8FA90088 */  lw      $t1, 0x0088($sp)
/* 00978 808FD8B8 3C018091 */  lui     $at, %hi(D_8090DB48)       ## $at = 80910000
/* 0097C 808FD8BC E60803B0 */  swc1    $f8, 0x03B0($s0)           ## 000003B0
/* 00980 808FD8C0 C42ADB48 */  lwc1    $f10, %lo(D_8090DB48)($at)
/* 00984 808FD8C4 3C01C348 */  lui     $at, 0xC348                ## $at = C3480000
/* 00988 808FD8C8 44812000 */  mtc1    $at, $f4                   ## $f4 = -200.00
/* 0098C 808FD8CC 8E030398 */  lw      $v1, 0x0398($s0)           ## 00000398
/* 00990 808FD8D0 24010096 */  addiu   $at, $zero, 0x0096         ## $at = 00000096
/* 00994 808FD8D4 E60A03B4 */  swc1    $f10, 0x03B4($s0)          ## 000003B4
/* 00998 808FD8D8 14610008 */  bne     $v1, $at, .L808FD8FC
/* 0099C 808FD8DC E60403B8 */  swc1    $f4, 0x03B8($s0)           ## 000003B8
/* 009A0 808FD8E0 02202025 */  or      $a0, $s1, $zero            ## $a0 = 00000000
/* 009A4 808FD8E4 240570D3 */  addiu   $a1, $zero, 0x70D3         ## $a1 = 000070D3
/* 009A8 808FD8E8 00003025 */  or      $a2, $zero, $zero          ## $a2 = 00000000
/* 009AC 808FD8EC 0C042DA0 */  jal     func_8010B680
/* 009B0 808FD8F0 AFA90088 */  sw      $t1, 0x0088($sp)
/* 009B4 808FD8F4 8FA90088 */  lw      $t1, 0x0088($sp)
/* 009B8 808FD8F8 8E030398 */  lw      $v1, 0x0398($s0)           ## 00000398
.L808FD8FC:
/* 009BC 808FD8FC 2C6100FB */  sltiu   $at, $v1, 0x00FB
/* 009C0 808FD900 142007C3 */  bne     $at, $zero, .L808FF810
/* 009C4 808FD904 262420D8 */  addiu   $a0, $s1, 0x20D8           ## $a0 = 000020D8
/* 009C8 808FD908 0C042F6F */  jal     func_8010BDBC
/* 009CC 808FD90C AFA90088 */  sw      $t1, 0x0088($sp)
/* 009D0 808FD910 144007BF */  bne     $v0, $zero, .L808FF810
/* 009D4 808FD914 8FA90088 */  lw      $t1, 0x0088($sp)
/* 009D8 808FD918 3C013F80 */  lui     $at, 0x3F80                ## $at = 3F800000
/* 009DC 808FD91C 44803000 */  mtc1    $zero, $f6                 ## $f6 = 0.00
/* 009E0 808FD920 44814000 */  mtc1    $at, $f8                   ## $f8 = 1.00
/* 009E4 808FD924 240E0002 */  addiu   $t6, $zero, 0x0002         ## $t6 = 00000002
/* 009E8 808FD928 3C010001 */  lui     $at, 0x0001                ## $at = 00010000
/* 009EC 808FD92C A60E039C */  sh      $t6, 0x039C($s0)           ## 0000039C
/* 009F0 808FD930 AE000398 */  sw      $zero, 0x0398($s0)         ## 00000398
/* 009F4 808FD934 00310821 */  addu    $at, $at, $s1
/* 009F8 808FD938 E6060410 */  swc1    $f6, 0x0410($s0)           ## 00000410
/* 009FC 808FD93C E4280AFC */  swc1    $f8, 0x0AFC($at)           ## 00010AFC
glabel L808FD940
/* 00A00 808FD940 240F0004 */  addiu   $t7, $zero, 0x0004         ## $t7 = 00000004
/* 00A04 808FD944 A20F0339 */  sb      $t7, 0x0339($s0)           ## 00000339
/* 00A08 808FD948 3C018091 */  lui     $at, %hi(D_8090DB4C)       ## $at = 80910000
/* 00A0C 808FD94C C42ADB4C */  lwc1    $f10, %lo(D_8090DB4C)($at)
/* 00A10 808FD950 3C018091 */  lui     $at, %hi(D_8090DB50)       ## $at = 80910000
/* 00A14 808FD954 3C188091 */  lui     $t8, %hi(D_8090EB2C)       ## $t8 = 80910000
/* 00A18 808FD958 E52A0024 */  swc1    $f10, 0x0024($t1)          ## 00000024
/* 00A1C 808FD95C C424DB50 */  lwc1    $f4, %lo(D_8090DB50)($at)
/* 00A20 808FD960 3C01C326 */  lui     $at, 0xC326                ## $at = C3260000
/* 00A24 808FD964 44813000 */  mtc1    $at, $f6                   ## $f6 = -166.00
/* 00A28 808FD968 E5240028 */  swc1    $f4, 0x0028($t1)           ## 00000028
/* 00A2C 808FD96C 3C018091 */  lui     $at, %hi(D_8090DB54)       ## $at = 80910000
/* 00A30 808FD970 E526002C */  swc1    $f6, 0x002C($t1)           ## 0000002C
/* 00A34 808FD974 8F18EB2C */  lw      $t8, %lo(D_8090EB2C)($t8)
/* 00A38 808FD978 C428DB54 */  lwc1    $f8, %lo(D_8090DB54)($at)
/* 00A3C 808FD97C 3C018091 */  lui     $at, %hi(D_8090DB58)       ## $at = 80910000
/* 00A40 808FD980 3C198091 */  lui     $t9, %hi(D_8090EB2C)       ## $t9 = 80910000
/* 00A44 808FD984 E7080024 */  swc1    $f8, 0x0024($t8)           ## 80910024
/* 00A48 808FD988 8F39EB2C */  lw      $t9, %lo(D_8090EB2C)($t9)
/* 00A4C 808FD98C C42ADB58 */  lwc1    $f10, %lo(D_8090DB58)($at)
/* 00A50 808FD990 3C01C33A */  lui     $at, 0xC33A                ## $at = C33A0000
/* 00A54 808FD994 3C0B8091 */  lui     $t3, %hi(D_8090EB2C)       ## $t3 = 80910000
/* 00A58 808FD998 E72A0028 */  swc1    $f10, 0x0028($t9)          ## 80910028
/* 00A5C 808FD99C 8D6BEB2C */  lw      $t3, %lo(D_8090EB2C)($t3)
/* 00A60 808FD9A0 44812000 */  mtc1    $at, $f4                   ## $f4 = -186.00
/* 00A64 808FD9A4 240CB000 */  addiu   $t4, $zero, 0xB000         ## $t4 = FFFFB000
/* 00A68 808FD9A8 3C0E8091 */  lui     $t6, %hi(D_8090EB2C)       ## $t6 = 80910000
/* 00A6C 808FD9AC E564002C */  swc1    $f4, 0x002C($t3)           ## 8091002C
/* 00A70 808FD9B0 A52C00B6 */  sh      $t4, 0x00B6($t1)           ## 000000B6
/* 00A74 808FD9B4 8DCEEB2C */  lw      $t6, %lo(D_8090EB2C)($t6)
/* 00A78 808FD9B8 240DB000 */  addiu   $t5, $zero, 0xB000         ## $t5 = FFFFB000
/* 00A7C 808FD9BC 2401003C */  addiu   $at, $zero, 0x003C         ## $at = 0000003C
/* 00A80 808FD9C0 A5CD00B6 */  sh      $t5, 0x00B6($t6)           ## 809100B6
/* 00A84 808FD9C4 8E030398 */  lw      $v1, 0x0398($s0)           ## 00000398
/* 00A88 808FD9C8 02202025 */  or      $a0, $s1, $zero            ## $a0 = 00000000
/* 00A8C 808FD9CC 240570D4 */  addiu   $a1, $zero, 0x70D4         ## $a1 = 000070D4
/* 00A90 808FD9D0 14610005 */  bne     $v1, $at, .L808FD9E8
/* 00A94 808FD9D4 00003025 */  or      $a2, $zero, $zero          ## $a2 = 00000000
/* 00A98 808FD9D8 0C042DA0 */  jal     func_8010B680
/* 00A9C 808FD9DC AFA90088 */  sw      $t1, 0x0088($sp)
/* 00AA0 808FD9E0 8FA90088 */  lw      $t1, 0x0088($sp)
/* 00AA4 808FD9E4 8E030398 */  lw      $v1, 0x0398($s0)           ## 00000398
.L808FD9E8:
/* 00AA8 808FD9E8 24010028 */  addiu   $at, $zero, 0x0028         ## $at = 00000028
/* 00AAC 808FD9EC 1461000B */  bne     $v1, $at, .L808FDA1C
/* 00AB0 808FD9F0 240A0001 */  addiu   $t2, $zero, 0x0001         ## $t2 = 00000001
/* 00AB4 808FD9F4 3C0F8091 */  lui     $t7, %hi(D_8090EB2C)       ## $t7 = 80910000
/* 00AB8 808FD9F8 8DEFEB2C */  lw      $t7, %lo(D_8090EB2C)($t7)
/* 00ABC 808FD9FC 02202025 */  or      $a0, $s1, $zero            ## $a0 = 00000000
/* 00AC0 808FDA00 02002825 */  or      $a1, $s0, $zero            ## $a1 = 00000000
/* 00AC4 808FDA04 A1EA03C8 */  sb      $t2, 0x03C8($t7)           ## 809103C8
/* 00AC8 808FDA08 AFA90088 */  sw      $t1, 0x0088($sp)
/* 00ACC 808FDA0C 0C00B7D5 */  jal     func_8002DF54
/* 00AD0 808FDA10 2406004E */  addiu   $a2, $zero, 0x004E         ## $a2 = 0000004E
/* 00AD4 808FDA14 8FA90088 */  lw      $t1, 0x0088($sp)
/* 00AD8 808FDA18 8E030398 */  lw      $v1, 0x0398($s0)           ## 00000398
.L808FDA1C:
/* 00ADC 808FDA1C 24010055 */  addiu   $at, $zero, 0x0055         ## $at = 00000055
/* 00AE0 808FDA20 1461000B */  bne     $v1, $at, .L808FDA50
/* 00AE4 808FDA24 24180002 */  addiu   $t8, $zero, 0x0002         ## $t8 = 00000002
/* 00AE8 808FDA28 3C198091 */  lui     $t9, %hi(D_8090EB2C)       ## $t9 = 80910000
/* 00AEC 808FDA2C 8F39EB2C */  lw      $t9, %lo(D_8090EB2C)($t9)
/* 00AF0 808FDA30 02202025 */  or      $a0, $s1, $zero            ## $a0 = 00000000
/* 00AF4 808FDA34 02002825 */  or      $a1, $s0, $zero            ## $a1 = 00000000
/* 00AF8 808FDA38 A33803C8 */  sb      $t8, 0x03C8($t9)           ## 809103C8
/* 00AFC 808FDA3C AFA90088 */  sw      $t1, 0x0088($sp)
/* 00B00 808FDA40 0C00B7D5 */  jal     func_8002DF54
/* 00B04 808FDA44 2406004F */  addiu   $a2, $zero, 0x004F         ## $a2 = 0000004F
/* 00B08 808FDA48 8FA90088 */  lw      $t1, 0x0088($sp)
/* 00B0C 808FDA4C 8E030398 */  lw      $v1, 0x0398($s0)           ## 00000398
.L808FDA50:
/* 00B10 808FDA50 3C014170 */  lui     $at, 0x4170                ## $at = 41700000
/* 00B14 808FDA54 44817000 */  mtc1    $at, $f14                  ## $f14 = 15.00
/* 00B18 808FDA58 3C018091 */  lui     $at, %hi(D_8090DB5C)       ## $at = 80910000
/* 00B1C 808FDA5C C426DB5C */  lwc1    $f6, %lo(D_8090DB5C)($at)
/* 00B20 808FDA60 3C018091 */  lui     $at, %hi(D_8090DB60)       ## $at = 80910000
/* 00B24 808FDA64 E60603A4 */  swc1    $f6, 0x03A4($s0)           ## 000003A4
/* 00B28 808FDA68 C428DB60 */  lwc1    $f8, %lo(D_8090DB60)($at)
/* 00B2C 808FDA6C 3C01C335 */  lui     $at, 0xC335                ## $at = C3350000
/* 00B30 808FDA70 44815000 */  mtc1    $at, $f10                  ## $f10 = -181.00
/* 00B34 808FDA74 E60803A8 */  swc1    $f8, 0x03A8($s0)           ## 000003A8
/* 00B38 808FDA78 3C0140A0 */  lui     $at, 0x40A0                ## $at = 40A00000
/* 00B3C 808FDA7C E60A03AC */  swc1    $f10, 0x03AC($s0)          ## 000003AC
/* 00B40 808FDA80 C5240024 */  lwc1    $f4, 0x0024($t1)           ## 00000024
/* 00B44 808FDA84 44815000 */  mtc1    $at, $f10                  ## $f10 = 5.00
/* 00B48 808FDA88 2C610069 */  sltiu   $at, $v1, 0x0069
/* 00B4C 808FDA8C E60403B0 */  swc1    $f4, 0x03B0($s0)           ## 000003B0
/* 00B50 808FDA90 C526002C */  lwc1    $f6, 0x002C($t1)           ## 0000002C
/* 00B54 808FDA94 460E3201 */  sub.s   $f8, $f6, $f14
/* 00B58 808FDA98 460A4100 */  add.s   $f4, $f8, $f10
/* 00B5C 808FDA9C 1420001C */  bne     $at, $zero, .L808FDB10
/* 00B60 808FDAA0 E60403B8 */  swc1    $f4, 0x03B8($s0)           ## 000003B8
/* 00B64 808FDAA4 3C01423C */  lui     $at, 0x423C                ## $at = 423C0000
/* 00B68 808FDAA8 44814000 */  mtc1    $at, $f8                   ## $f8 = 47.00
/* 00B6C 808FDAAC C5260028 */  lwc1    $f6, 0x0028($t1)           ## 00000028
/* 00B70 808FDAB0 3C0140E0 */  lui     $at, 0x40E0                ## $at = 40E00000
/* 00B74 808FDAB4 44812000 */  mtc1    $at, $f4                   ## $f4 = 7.00
/* 00B78 808FDAB8 46083280 */  add.s   $f10, $f6, $f8
/* 00B7C 808FDABC 3C063DCC */  lui     $a2, 0x3DCC                ## $a2 = 3DCC0000
/* 00B80 808FDAC0 8E070410 */  lw      $a3, 0x0410($s0)           ## 00000410
/* 00B84 808FDAC4 260B0410 */  addiu   $t3, $s0, 0x0410           ## $t3 = 00000410
/* 00B88 808FDAC8 46045180 */  add.s   $f6, $f10, $f4
/* 00B8C 808FDACC AFAB0054 */  sw      $t3, 0x0054($sp)
/* 00B90 808FDAD0 34C6CCCD */  ori     $a2, $a2, 0xCCCD           ## $a2 = 3DCCCCCD
/* 00B94 808FDAD4 260403B4 */  addiu   $a0, $s0, 0x03B4           ## $a0 = 000003B4
/* 00B98 808FDAD8 460E3200 */  add.s   $f8, $f6, $f14
/* 00B9C 808FDADC 44054000 */  mfc1    $a1, $f8
/* 00BA0 808FDAE0 0C01E107 */  jal     Math_SmoothScaleMaxF

/* 00BA4 808FDAE4 00000000 */  nop
/* 00BA8 808FDAE8 3C014000 */  lui     $at, 0x4000                ## $at = 40000000
/* 00BAC 808FDAEC 44810000 */  mtc1    $at, $f0                   ## $f0 = 2.00
/* 00BB0 808FDAF0 3C073DCC */  lui     $a3, 0x3DCC                ## $a3 = 3DCC0000
/* 00BB4 808FDAF4 34E7CCCD */  ori     $a3, $a3, 0xCCCD           ## $a3 = 3DCCCCCD
/* 00BB8 808FDAF8 44050000 */  mfc1    $a1, $f0
/* 00BBC 808FDAFC 8FA40054 */  lw      $a0, 0x0054($sp)
/* 00BC0 808FDB00 0C01E107 */  jal     Math_SmoothScaleMaxF

/* 00BC4 808FDB04 3C063F80 */  lui     $a2, 0x3F80                ## $a2 = 3F800000
/* 00BC8 808FDB08 1000000A */  beq     $zero, $zero, .L808FDB34
/* 00BCC 808FDB0C 8E0C0398 */  lw      $t4, 0x0398($s0)           ## 00000398
.L808FDB10:
/* 00BD0 808FDB10 3C01423C */  lui     $at, 0x423C                ## $at = 423C0000
/* 00BD4 808FDB14 44812000 */  mtc1    $at, $f4                   ## $f4 = 47.00
/* 00BD8 808FDB18 C52A0028 */  lwc1    $f10, 0x0028($t1)          ## 00000028
/* 00BDC 808FDB1C 3C0140E0 */  lui     $at, 0x40E0                ## $at = 40E00000
/* 00BE0 808FDB20 44814000 */  mtc1    $at, $f8                   ## $f8 = 7.00
/* 00BE4 808FDB24 46045180 */  add.s   $f6, $f10, $f4
/* 00BE8 808FDB28 46083280 */  add.s   $f10, $f6, $f8
/* 00BEC 808FDB2C E60A03B4 */  swc1    $f10, 0x03B4($s0)          ## 000003B4
/* 00BF0 808FDB30 8E0C0398 */  lw      $t4, 0x0398($s0)           ## 00000398
.L808FDB34:
/* 00BF4 808FDB34 2D8100AB */  sltiu   $at, $t4, 0x00AB
/* 00BF8 808FDB38 54200736 */  bnel    $at, $zero, .L808FF814
/* 00BFC 808FDB3C 3C014080 */  lui     $at, 0x4080                ## $at = 40800000
/* 00C00 808FDB40 0C042F6F */  jal     func_8010BDBC
/* 00C04 808FDB44 262420D8 */  addiu   $a0, $s1, 0x20D8           ## $a0 = 000020D8
/* 00C08 808FDB48 14400731 */  bne     $v0, $zero, .L808FF810
/* 00C0C 808FDB4C 240D0003 */  addiu   $t5, $zero, 0x0003         ## $t5 = 00000003
/* 00C10 808FDB50 44802000 */  mtc1    $zero, $f4                 ## $f4 = 0.00
/* 00C14 808FDB54 A60D039C */  sh      $t5, 0x039C($s0)           ## 0000039C
/* 00C18 808FDB58 AE000398 */  sw      $zero, 0x0398($s0)         ## 00000398
/* 00C1C 808FDB5C 1000072C */  beq     $zero, $zero, .L808FF810
/* 00C20 808FDB60 E6040410 */  swc1    $f4, 0x0410($s0)           ## 00000410
glabel L808FDB64
/* 00C24 808FDB64 3C014000 */  lui     $at, 0x4000                ## $at = 40000000
/* 00C28 808FDB68 44810000 */  mtc1    $at, $f0                   ## $f0 = 2.00
/* 00C2C 808FDB6C 3C01423C */  lui     $at, 0x423C                ## $at = 423C0000
/* 00C30 808FDB70 44814000 */  mtc1    $at, $f8                   ## $f8 = 47.00
/* 00C34 808FDB74 C5260028 */  lwc1    $f6, 0x0028($t1)           ## 00000028
/* 00C38 808FDB78 3C0140E0 */  lui     $at, 0x40E0                ## $at = 40E00000
/* 00C3C 808FDB7C 44812000 */  mtc1    $at, $f4                   ## $f4 = 7.00
/* 00C40 808FDB80 46083280 */  add.s   $f10, $f6, $f8
/* 00C44 808FDB84 3C063DCC */  lui     $a2, 0x3DCC                ## $a2 = 3DCC0000
/* 00C48 808FDB88 44070000 */  mfc1    $a3, $f0
/* 00C4C 808FDB8C 34C6CCCD */  ori     $a2, $a2, 0xCCCD           ## $a2 = 3DCCCCCD
/* 00C50 808FDB90 46045180 */  add.s   $f6, $f10, $f4
/* 00C54 808FDB94 260403B4 */  addiu   $a0, $s0, 0x03B4           ## $a0 = 000003B4
/* 00C58 808FDB98 44053000 */  mfc1    $a1, $f6
/* 00C5C 808FDB9C 0C01E107 */  jal     Math_SmoothScaleMaxF

/* 00C60 808FDBA0 00000000 */  nop
/* 00C64 808FDBA4 8E030398 */  lw      $v1, 0x0398($s0)           ## 00000398
/* 00C68 808FDBA8 240E0004 */  addiu   $t6, $zero, 0x0004         ## $t6 = 00000004
/* 00C6C 808FDBAC 2401000A */  addiu   $at, $zero, 0x000A         ## $at = 0000000A
/* 00C70 808FDBB0 14610009 */  bne     $v1, $at, .L808FDBD8
/* 00C74 808FDBB4 A20E0339 */  sb      $t6, 0x0339($s0)           ## 00000339
/* 00C78 808FDBB8 3C048090 */  lui     $a0, %hi(D_80906D6C)       ## $a0 = 80900000
/* 00C7C 808FDBBC 24846D6C */  addiu   $a0, $a0, %lo(D_80906D6C)  ## $a0 = 80906D6C
/* 00C80 808FDBC0 0C01E245 */  jal     func_80078914
/* 00C84 808FDBC4 2405281D */  addiu   $a1, $zero, 0x281D         ## $a1 = 0000281D
/* 00C88 808FDBC8 3C041000 */  lui     $a0, 0x1000                ## $a0 = 10000000
/* 00C8C 808FDBCC 0C03E803 */  jal     Audio_SetBGM

/* 00C90 808FDBD0 348400FF */  ori     $a0, $a0, 0x00FF           ## $a0 = 100000FF
/* 00C94 808FDBD4 8E030398 */  lw      $v1, 0x0398($s0)           ## 00000398
.L808FDBD8:
/* 00C98 808FDBD8 24010014 */  addiu   $at, $zero, 0x0014         ## $at = 00000014
/* 00C9C 808FDBDC 14610009 */  bne     $v1, $at, .L808FDC04
/* 00CA0 808FDBE0 240F0003 */  addiu   $t7, $zero, 0x0003         ## $t7 = 00000003
/* 00CA4 808FDBE4 3C188091 */  lui     $t8, %hi(D_8090EB2C)       ## $t8 = 80910000
/* 00CA8 808FDBE8 8F18EB2C */  lw      $t8, %lo(D_8090EB2C)($t8)
/* 00CAC 808FDBEC 02202025 */  or      $a0, $s1, $zero            ## $a0 = 00000000
/* 00CB0 808FDBF0 02002825 */  or      $a1, $s0, $zero            ## $a1 = 00000000
/* 00CB4 808FDBF4 24060050 */  addiu   $a2, $zero, 0x0050         ## $a2 = 00000050
/* 00CB8 808FDBF8 0C00B7D5 */  jal     func_8002DF54
/* 00CBC 808FDBFC A30F03C8 */  sb      $t7, 0x03C8($t8)           ## 809103C8
/* 00CC0 808FDC00 8E030398 */  lw      $v1, 0x0398($s0)           ## 00000398
.L808FDC04:
/* 00CC4 808FDC04 24010037 */  addiu   $at, $zero, 0x0037         ## $at = 00000037
/* 00CC8 808FDC08 14610701 */  bne     $v1, $at, .L808FF810
/* 00CCC 808FDC0C 24190004 */  addiu   $t9, $zero, 0x0004         ## $t9 = 00000004
/* 00CD0 808FDC10 44804000 */  mtc1    $zero, $f8                 ## $f8 = 0.00
/* 00CD4 808FDC14 A619039C */  sh      $t9, 0x039C($s0)           ## 0000039C
/* 00CD8 808FDC18 AE000398 */  sw      $zero, 0x0398($s0)         ## 00000398
/* 00CDC 808FDC1C 3C0C8091 */  lui     $t4, %hi(D_8090EB2C)       ## $t4 = 80910000
/* 00CE0 808FDC20 E6080410 */  swc1    $f8, 0x0410($s0)           ## 00000410
/* 00CE4 808FDC24 8D8CEB2C */  lw      $t4, %lo(D_8090EB2C)($t4)
/* 00CE8 808FDC28 240B0004 */  addiu   $t3, $zero, 0x0004         ## $t3 = 00000004
/* 00CEC 808FDC2C 02202025 */  or      $a0, $s1, $zero            ## $a0 = 00000000
/* 00CF0 808FDC30 02002825 */  or      $a1, $s0, $zero            ## $a1 = 00000000
/* 00CF4 808FDC34 24060050 */  addiu   $a2, $zero, 0x0050         ## $a2 = 00000050
/* 00CF8 808FDC38 0C00B7D5 */  jal     func_8002DF54
/* 00CFC 808FDC3C A18B03C8 */  sb      $t3, 0x03C8($t4)           ## 809103C8
/* 00D00 808FDC40 100006F4 */  beq     $zero, $zero, .L808FF814
/* 00D04 808FDC44 3C014080 */  lui     $at, 0x4080                ## $at = 40800000
glabel L808FDC48
/* 00D08 808FDC48 240D0004 */  addiu   $t5, $zero, 0x0004         ## $t5 = 00000004
/* 00D0C 808FDC4C A20D0339 */  sb      $t5, 0x0339($s0)           ## 00000339
/* 00D10 808FDC50 3C018091 */  lui     $at, %hi(D_8090DB64)       ## $at = 80910000
/* 00D14 808FDC54 C424DB64 */  lwc1    $f4, %lo(D_8090DB64)($at)
/* 00D18 808FDC58 C60A0410 */  lwc1    $f10, 0x0410($s0)          ## 00000410
/* 00D1C 808FDC5C 260403A4 */  addiu   $a0, $s0, 0x03A4           ## $a0 = 000003A4
/* 00D20 808FDC60 3C063DCC */  lui     $a2, 0x3DCC                ## $a2 = 3DCC0000
/* 00D24 808FDC64 46045182 */  mul.s   $f6, $f10, $f4
/* 00D28 808FDC68 34C6CCCD */  ori     $a2, $a2, 0xCCCD           ## $a2 = 3DCCCCCD
/* 00D2C 808FDC6C AFA4004C */  sw      $a0, 0x004C($sp)
/* 00D30 808FDC70 3C05C3B4 */  lui     $a1, 0xC3B4                ## $a1 = C3B40000
/* 00D34 808FDC74 44073000 */  mfc1    $a3, $f6
/* 00D38 808FDC78 0C01E107 */  jal     Math_SmoothScaleMaxF

/* 00D3C 808FDC7C 00000000 */  nop
/* 00D40 808FDC80 3C01432A */  lui     $at, 0x432A                ## $at = 432A0000
/* 00D44 808FDC84 44815000 */  mtc1    $at, $f10                  ## $f10 = 170.00
/* 00D48 808FDC88 C6080410 */  lwc1    $f8, 0x0410($s0)           ## 00000410
/* 00D4C 808FDC8C 3C063DCC */  lui     $a2, 0x3DCC                ## $a2 = 3DCC0000
/* 00D50 808FDC90 34C6CCCD */  ori     $a2, $a2, 0xCCCD           ## $a2 = 3DCCCCCD
/* 00D54 808FDC94 460A4102 */  mul.s   $f4, $f8, $f10
/* 00D58 808FDC98 260403AC */  addiu   $a0, $s0, 0x03AC           ## $a0 = 000003AC
/* 00D5C 808FDC9C 3C05C1A0 */  lui     $a1, 0xC1A0                ## $a1 = C1A00000
/* 00D60 808FDCA0 44072000 */  mfc1    $a3, $f4
/* 00D64 808FDCA4 0C01E107 */  jal     Math_SmoothScaleMaxF

/* 00D68 808FDCA8 00000000 */  nop
/* 00D6C 808FDCAC 3C053D23 */  lui     $a1, 0x3D23                ## $a1 = 3D230000
/* 00D70 808FDCB0 3C073A03 */  lui     $a3, 0x3A03                ## $a3 = 3A030000
/* 00D74 808FDCB4 34E7126F */  ori     $a3, $a3, 0x126F           ## $a3 = 3A03126F
/* 00D78 808FDCB8 34A5D70A */  ori     $a1, $a1, 0xD70A           ## $a1 = 3D23D70A
/* 00D7C 808FDCBC 26040410 */  addiu   $a0, $s0, 0x0410           ## $a0 = 00000410
/* 00D80 808FDCC0 0C01E107 */  jal     Math_SmoothScaleMaxF

/* 00D84 808FDCC4 3C063F80 */  lui     $a2, 0x3F80                ## $a2 = 3F800000
/* 00D88 808FDCC8 8E0E0398 */  lw      $t6, 0x0398($s0)           ## 00000398
/* 00D8C 808FDCCC 24010064 */  addiu   $at, $zero, 0x0064         ## $at = 00000064
/* 00D90 808FDCD0 02202025 */  or      $a0, $s1, $zero            ## $a0 = 00000000
/* 00D94 808FDCD4 55C106CF */  bnel    $t6, $at, .L808FF814
/* 00D98 808FDCD8 3C014080 */  lui     $at, 0x4080                ## $at = 40800000
/* 00D9C 808FDCDC 0C030129 */  jal     Gameplay_GetCamera
/* 00DA0 808FDCE0 00002825 */  or      $a1, $zero, $zero          ## $a1 = 00000000
/* 00DA4 808FDCE4 8FAF004C */  lw      $t7, 0x004C($sp)
/* 00DA8 808FDCE8 02202025 */  or      $a0, $s1, $zero            ## $a0 = 00000000
/* 00DAC 808FDCEC 00003025 */  or      $a2, $zero, $zero          ## $a2 = 00000000
/* 00DB0 808FDCF0 8DF90000 */  lw      $t9, 0x0000($t7)           ## 00000000
/* 00DB4 808FDCF4 AC59005C */  sw      $t9, 0x005C($v0)           ## 0000005C
/* 00DB8 808FDCF8 8DF80004 */  lw      $t8, 0x0004($t7)           ## 00000004
/* 00DBC 808FDCFC AC580060 */  sw      $t8, 0x0060($v0)           ## 00000060
/* 00DC0 808FDD00 8DF90008 */  lw      $t9, 0x0008($t7)           ## 00000008
/* 00DC4 808FDD04 AC590064 */  sw      $t9, 0x0064($v0)           ## 00000064
/* 00DC8 808FDD08 8FAB004C */  lw      $t3, 0x004C($sp)
/* 00DCC 808FDD0C 8D6D0000 */  lw      $t5, 0x0000($t3)           ## 00000000
/* 00DD0 808FDD10 AC4D0074 */  sw      $t5, 0x0074($v0)           ## 00000074
/* 00DD4 808FDD14 8D6C0004 */  lw      $t4, 0x0004($t3)           ## 00000004
/* 00DD8 808FDD18 AC4C0078 */  sw      $t4, 0x0078($v0)           ## 00000078
/* 00DDC 808FDD1C 8D6D0008 */  lw      $t5, 0x0008($t3)           ## 00000008
/* 00DE0 808FDD20 AC4D007C */  sw      $t5, 0x007C($v0)           ## 0000007C
/* 00DE4 808FDD24 8E0F03B0 */  lw      $t7, 0x03B0($s0)           ## 000003B0
/* 00DE8 808FDD28 AC4F0050 */  sw      $t7, 0x0050($v0)           ## 00000050
/* 00DEC 808FDD2C 8E0E03B4 */  lw      $t6, 0x03B4($s0)           ## 000003B4
/* 00DF0 808FDD30 AC4E0054 */  sw      $t6, 0x0054($v0)           ## 00000054
/* 00DF4 808FDD34 8E0F03B8 */  lw      $t7, 0x03B8($s0)           ## 000003B8
/* 00DF8 808FDD38 AC4F0058 */  sw      $t7, 0x0058($v0)           ## 00000058
/* 00DFC 808FDD3C 0C03022B */  jal     func_800C08AC
/* 00E00 808FDD40 8605039E */  lh      $a1, 0x039E($s0)           ## 0000039E
/* 00E04 808FDD44 A600039E */  sh      $zero, 0x039E($s0)         ## 0000039E
/* 00E08 808FDD48 02202025 */  or      $a0, $s1, $zero            ## $a0 = 00000000
/* 00E0C 808FDD4C 0C01914D */  jal     func_80064534
/* 00E10 808FDD50 26251D64 */  addiu   $a1, $s1, 0x1D64           ## $a1 = 00001D64
/* 00E14 808FDD54 02202025 */  or      $a0, $s1, $zero            ## $a0 = 00000000
/* 00E18 808FDD58 02002825 */  or      $a1, $s0, $zero            ## $a1 = 00000000
/* 00E1C 808FDD5C 0C00B7D5 */  jal     func_8002DF54
/* 00E20 808FDD60 24060007 */  addiu   $a2, $zero, 0x0007         ## $a2 = 00000007
/* 00E24 808FDD64 24180005 */  addiu   $t8, $zero, 0x0005         ## $t8 = 00000005
/* 00E28 808FDD68 A618039C */  sh      $t8, 0x039C($s0)           ## 0000039C
/* 00E2C 808FDD6C 100006A8 */  beq     $zero, $zero, .L808FF810
/* 00E30 808FDD70 AE000398 */  sw      $zero, 0x0398($s0)         ## 00000398
glabel L808FDD74
/* 00E34 808FDD74 3C0143FA */  lui     $at, 0x43FA                ## $at = 43FA0000
/* 00E38 808FDD78 44814000 */  mtc1    $at, $f8                   ## $f8 = 500.00
/* 00E3C 808FDD7C C6060090 */  lwc1    $f6, 0x0090($s0)           ## 00000090
/* 00E40 808FDD80 24190004 */  addiu   $t9, $zero, 0x0004         ## $t9 = 00000004
/* 00E44 808FDD84 A2190339 */  sb      $t9, 0x0339($s0)           ## 00000339
/* 00E48 808FDD88 4608303C */  c.lt.s  $f6, $f8
/* 00E4C 808FDD8C 02202025 */  or      $a0, $s1, $zero            ## $a0 = 00000000
/* 00E50 808FDD90 450206A0 */  bc1fl   .L808FF814
/* 00E54 808FDD94 3C014080 */  lui     $at, 0x4080                ## $at = 40800000
/* 00E58 808FDD98 0C041B33 */  jal     func_80106CCC
/* 00E5C 808FDD9C AFA90088 */  sw      $t1, 0x0088($sp)
/* 00E60 808FDDA0 240B000A */  addiu   $t3, $zero, 0x000A         ## $t3 = 0000000A
/* 00E64 808FDDA4 A60B039C */  sh      $t3, 0x039C($s0)           ## 0000039C
/* 00E68 808FDDA8 AE000398 */  sw      $zero, 0x0398($s0)         ## 00000398
/* 00E6C 808FDDAC 02202025 */  or      $a0, $s1, $zero            ## $a0 = 00000000
/* 00E70 808FDDB0 0C019148 */  jal     func_80064520
/* 00E74 808FDDB4 26251D64 */  addiu   $a1, $s1, 0x1D64           ## $a1 = 00001D64
/* 00E78 808FDDB8 0C03008C */  jal     Gameplay_CreateSubCamera
/* 00E7C 808FDDBC 02202025 */  or      $a0, $s1, $zero            ## $a0 = 00000000
/* 00E80 808FDDC0 A602039E */  sh      $v0, 0x039E($s0)           ## 0000039E
/* 00E84 808FDDC4 02202025 */  or      $a0, $s1, $zero            ## $a0 = 00000000
/* 00E88 808FDDC8 00002825 */  or      $a1, $zero, $zero          ## $a1 = 00000000
/* 00E8C 808FDDCC 0C0300C5 */  jal     Gameplay_ChangeCameraStatus
/* 00E90 808FDDD0 24060001 */  addiu   $a2, $zero, 0x0001         ## $a2 = 00000001
/* 00E94 808FDDD4 02202025 */  or      $a0, $s1, $zero            ## $a0 = 00000000
/* 00E98 808FDDD8 8605039E */  lh      $a1, 0x039E($s0)           ## 0000039E
/* 00E9C 808FDDDC 0C0300C5 */  jal     Gameplay_ChangeCameraStatus
/* 00EA0 808FDDE0 24060007 */  addiu   $a2, $zero, 0x0007         ## $a2 = 00000007
/* 00EA4 808FDDE4 8FA90088 */  lw      $t1, 0x0088($sp)
glabel L808FDDE8
/* 00EA8 808FDDE8 3C014120 */  lui     $at, 0x4120                ## $at = 41200000
/* 00EAC 808FDDEC 44817000 */  mtc1    $at, $f14                  ## $f14 = 10.00
/* 00EB0 808FDDF0 3C0143F5 */  lui     $at, 0x43F5                ## $at = 43F50000
/* 00EB4 808FDDF4 44815000 */  mtc1    $at, $f10                  ## $f10 = 490.00
/* 00EB8 808FDDF8 3C018091 */  lui     $at, %hi(D_8090DB68)       ## $at = 80910000
/* 00EBC 808FDDFC 3C028091 */  lui     $v0, %hi(D_8090EB2C)       ## $v0 = 80910000
/* 00EC0 808FDE00 E52A0024 */  swc1    $f10, 0x0024($t1)          ## 00000024
/* 00EC4 808FDE04 C424DB68 */  lwc1    $f4, %lo(D_8090DB68)($at)
/* 00EC8 808FDE08 3C01C326 */  lui     $at, 0xC326                ## $at = C3260000
/* 00ECC 808FDE0C 44813000 */  mtc1    $at, $f6                   ## $f6 = -166.00
/* 00ED0 808FDE10 2442EB2C */  addiu   $v0, $v0, %lo(D_8090EB2C)  ## $v0 = 8090EB2C
/* 00ED4 808FDE14 3C014435 */  lui     $at, 0x4435                ## $at = 44350000
/* 00ED8 808FDE18 E5240028 */  swc1    $f4, 0x0028($t1)           ## 00000028
/* 00EDC 808FDE1C E526002C */  swc1    $f6, 0x002C($t1)           ## 0000002C
/* 00EE0 808FDE20 8C4C0000 */  lw      $t4, 0x0000($v0)           ## 8090EB2C
/* 00EE4 808FDE24 44814000 */  mtc1    $at, $f8                   ## $f8 = 724.00
/* 00EE8 808FDE28 3C018091 */  lui     $at, %hi(D_8090DB6C)       ## $at = 80910000
/* 00EEC 808FDE2C 240FC000 */  addiu   $t7, $zero, 0xC000         ## $t7 = FFFFC000
/* 00EF0 808FDE30 E5880024 */  swc1    $f8, 0x0024($t4)           ## 00000024
/* 00EF4 808FDE34 8C4D0000 */  lw      $t5, 0x0000($v0)           ## 8090EB2C
/* 00EF8 808FDE38 C42ADB6C */  lwc1    $f10, %lo(D_8090DB6C)($at)
/* 00EFC 808FDE3C 3C01C33A */  lui     $at, 0xC33A                ## $at = C33A0000
/* 00F00 808FDE40 44812000 */  mtc1    $at, $f4                   ## $f4 = -186.00
/* 00F04 808FDE44 E5AA0028 */  swc1    $f10, 0x0028($t5)          ## 00000028
/* 00F08 808FDE48 8C4E0000 */  lw      $t6, 0x0000($v0)           ## 8090EB2C
/* 00F0C 808FDE4C 3C0143CD */  lui     $at, 0x43CD                ## $at = 43CD0000
/* 00F10 808FDE50 44813000 */  mtc1    $at, $f6                   ## $f6 = 410.00
/* 00F14 808FDE54 E5C4002C */  swc1    $f4, 0x002C($t6)           ## 0000002C
/* 00F18 808FDE58 A52F00B6 */  sh      $t7, 0x00B6($t1)           ## 000000B6
/* 00F1C 808FDE5C 8C590000 */  lw      $t9, 0x0000($v0)           ## 8090EB2C
/* 00F20 808FDE60 3C014489 */  lui     $at, 0x4489                ## $at = 44890000
/* 00F24 808FDE64 44814000 */  mtc1    $at, $f8                   ## $f8 = 1096.00
/* 00F28 808FDE68 2418B000 */  addiu   $t8, $zero, 0xB000         ## $t8 = FFFFB000
/* 00F2C 808FDE6C 3C01C2DC */  lui     $at, 0xC2DC                ## $at = C2DC0000
/* 00F30 808FDE70 44815000 */  mtc1    $at, $f10                  ## $f10 = -110.00
/* 00F34 808FDE74 A73800B6 */  sh      $t8, 0x00B6($t9)           ## 000000B6
/* 00F38 808FDE78 E60603A4 */  swc1    $f6, 0x03A4($s0)           ## 000003A4
/* 00F3C 808FDE7C E60803A8 */  swc1    $f8, 0x03A8($s0)           ## 000003A8
/* 00F40 808FDE80 E60A03AC */  swc1    $f10, 0x03AC($s0)          ## 000003AC
/* 00F44 808FDE84 C5240024 */  lwc1    $f4, 0x0024($t1)           ## 00000024
/* 00F48 808FDE88 3C014348 */  lui     $at, 0x4348                ## $at = 43480000
/* 00F4C 808FDE8C 44815000 */  mtc1    $at, $f10                  ## $f10 = 200.00
/* 00F50 808FDE90 460E2180 */  add.s   $f6, $f4, $f14
/* 00F54 808FDE94 3C014320 */  lui     $at, 0x4320                ## $at = 43200000
/* 00F58 808FDE98 8E0B0398 */  lw      $t3, 0x0398($s0)           ## 00000398
/* 00F5C 808FDE9C 240D0004 */  addiu   $t5, $zero, 0x0004         ## $t5 = 00000004
/* 00F60 808FDEA0 E60603B0 */  swc1    $f6, 0x03B0($s0)           ## 000003B0
/* 00F64 808FDEA4 C5280028 */  lwc1    $f8, 0x0028($t1)           ## 00000028
/* 00F68 808FDEA8 44813000 */  mtc1    $at, $f6                   ## $f6 = 160.00
/* 00F6C 808FDEAC 2D610014 */  sltiu   $at, $t3, 0x0014
/* 00F70 808FDEB0 460A4100 */  add.s   $f4, $f8, $f10
/* 00F74 808FDEB4 46062201 */  sub.s   $f8, $f4, $f6
/* 00F78 808FDEB8 E60803B4 */  swc1    $f8, 0x03B4($s0)           ## 000003B4
/* 00F7C 808FDEBC C52A002C */  lwc1    $f10, 0x002C($t1)          ## 0000002C
/* 00F80 808FDEC0 14200019 */  bne     $at, $zero, .L808FDF28
/* 00F84 808FDEC4 E60A03B8 */  swc1    $f10, 0x03B8($s0)          ## 000003B8
/* 00F88 808FDEC8 0C01E221 */  jal     func_80078884
/* 00F8C 808FDECC 2404301C */  addiu   $a0, $zero, 0x301C         ## $a0 = 0000301C
/* 00F90 808FDED0 3C014120 */  lui     $at, 0x4120                ## $at = 41200000
/* 00F94 808FDED4 44817000 */  mtc1    $at, $f14                  ## $f14 = 10.00
/* 00F98 808FDED8 26040324 */  addiu   $a0, $s0, 0x0324           ## $a0 = 00000324
/* 00F9C 808FDEDC 3C05437F */  lui     $a1, 0x437F                ## $a1 = 437F0000
/* 00FA0 808FDEE0 44077000 */  mfc1    $a3, $f14
/* 00FA4 808FDEE4 0C01E107 */  jal     Math_SmoothScaleMaxF

/* 00FA8 808FDEE8 3C063F80 */  lui     $a2, 0x3F80                ## $a2 = 3F800000
/* 00FAC 808FDEEC 8E030398 */  lw      $v1, 0x0398($s0)           ## 00000398
/* 00FB0 808FDEF0 240C0005 */  addiu   $t4, $zero, 0x0005         ## $t4 = 00000005
/* 00FB4 808FDEF4 24010014 */  addiu   $at, $zero, 0x0014         ## $at = 00000014
/* 00FB8 808FDEF8 14610008 */  bne     $v1, $at, .L808FDF1C
/* 00FBC 808FDEFC A20C0339 */  sb      $t4, 0x0339($s0)           ## 00000339
/* 00FC0 808FDF00 44802000 */  mtc1    $zero, $f4                 ## $f4 = 0.00
/* 00FC4 808FDF04 44803000 */  mtc1    $zero, $f6                 ## $f6 = 0.00
/* 00FC8 808FDF08 3C010001 */  lui     $at, 0x0001                ## $at = 00010000
/* 00FCC 808FDF0C 00310821 */  addu    $at, $at, $s1
/* 00FD0 808FDF10 E604033C */  swc1    $f4, 0x033C($s0)           ## 0000033C
/* 00FD4 808FDF14 E4260AFC */  swc1    $f6, 0x0AFC($at)           ## 00010AFC
/* 00FD8 808FDF18 8E030398 */  lw      $v1, 0x0398($s0)           ## 00000398
.L808FDF1C:
/* 00FDC 808FDF1C 3C028091 */  lui     $v0, %hi(D_8090EB2C)       ## $v0 = 80910000
/* 00FE0 808FDF20 10000003 */  beq     $zero, $zero, .L808FDF30
/* 00FE4 808FDF24 2442EB2C */  addiu   $v0, $v0, %lo(D_8090EB2C)  ## $v0 = 8090EB2C
.L808FDF28:
/* 00FE8 808FDF28 A20D0339 */  sb      $t5, 0x0339($s0)           ## 00000339
/* 00FEC 808FDF2C 8E030398 */  lw      $v1, 0x0398($s0)           ## 00000398
.L808FDF30:
/* 00FF0 808FDF30 2401001E */  addiu   $at, $zero, 0x001E         ## $at = 0000001E
/* 00FF4 808FDF34 14610008 */  bne     $v1, $at, .L808FDF58
/* 00FF8 808FDF38 240E0005 */  addiu   $t6, $zero, 0x0005         ## $t6 = 00000005
/* 00FFC 808FDF3C 8C4F0000 */  lw      $t7, 0x0000($v0)           ## 8090EB2C
/* 01000 808FDF40 02202025 */  or      $a0, $s1, $zero            ## $a0 = 00000000
/* 01004 808FDF44 02002825 */  or      $a1, $s0, $zero            ## $a1 = 00000000
/* 01008 808FDF48 24060051 */  addiu   $a2, $zero, 0x0051         ## $a2 = 00000051
/* 0100C 808FDF4C 0C00B7D5 */  jal     func_8002DF54
/* 01010 808FDF50 A1EE03C8 */  sb      $t6, 0x03C8($t7)           ## 000003C8
/* 01014 808FDF54 8E030398 */  lw      $v1, 0x0398($s0)           ## 00000398
.L808FDF58:
/* 01018 808FDF58 24010032 */  addiu   $at, $zero, 0x0032         ## $at = 00000032
/* 0101C 808FDF5C 1461062C */  bne     $v1, $at, .L808FF810
/* 01020 808FDF60 2418000B */  addiu   $t8, $zero, 0x000B         ## $t8 = 0000000B
/* 01024 808FDF64 AE000398 */  sw      $zero, 0x0398($s0)         ## 00000398
/* 01028 808FDF68 10000629 */  beq     $zero, $zero, .L808FF810
/* 0102C 808FDF6C A618039C */  sh      $t8, 0x039C($s0)           ## 0000039C
glabel L808FDF70
/* 01030 808FDF70 24190005 */  addiu   $t9, $zero, 0x0005         ## $t9 = 00000005
/* 01034 808FDF74 A2190339 */  sb      $t9, 0x0339($s0)           ## 00000339
/* 01038 808FDF78 AFA90088 */  sw      $t1, 0x0088($sp)
/* 0103C 808FDF7C 0C01E221 */  jal     func_80078884
/* 01040 808FDF80 2404301C */  addiu   $a0, $zero, 0x301C         ## $a0 = 0000301C
/* 01044 808FDF84 3C014000 */  lui     $at, 0x4000                ## $at = 40000000
/* 01048 808FDF88 44810000 */  mtc1    $at, $f0                   ## $f0 = 2.00
/* 0104C 808FDF8C 3C0141A0 */  lui     $at, 0x41A0                ## $at = 41A00000
/* 01050 808FDF90 44811000 */  mtc1    $at, $f2                   ## $f2 = 20.00
/* 01054 808FDF94 3C0143F5 */  lui     $at, 0x43F5                ## $at = 43F50000
/* 01058 808FDF98 8FA90088 */  lw      $t1, 0x0088($sp)
/* 0105C 808FDF9C 44814000 */  mtc1    $at, $f8                   ## $f8 = 490.00
/* 01060 808FDFA0 3C018091 */  lui     $at, %hi(D_8090DB70)       ## $at = 80910000
/* 01064 808FDFA4 3C0B8091 */  lui     $t3, %hi(D_8090EB2C)       ## $t3 = 80910000
/* 01068 808FDFA8 E5280024 */  swc1    $f8, 0x0024($t1)           ## 00000024
/* 0106C 808FDFAC C42ADB70 */  lwc1    $f10, %lo(D_8090DB70)($at)
/* 01070 808FDFB0 3C01C326 */  lui     $at, 0xC326                ## $at = C3260000
/* 01074 808FDFB4 44812000 */  mtc1    $at, $f4                   ## $f4 = -166.00
/* 01078 808FDFB8 3C014435 */  lui     $at, 0x4435                ## $at = 44350000
/* 0107C 808FDFBC E52A0028 */  swc1    $f10, 0x0028($t1)          ## 00000028
/* 01080 808FDFC0 E524002C */  swc1    $f4, 0x002C($t1)           ## 0000002C
/* 01084 808FDFC4 8D6BEB2C */  lw      $t3, %lo(D_8090EB2C)($t3)
/* 01088 808FDFC8 44813000 */  mtc1    $at, $f6                   ## $f6 = 724.00
/* 0108C 808FDFCC 3C018091 */  lui     $at, %hi(D_8090DB74)       ## $at = 80910000
/* 01090 808FDFD0 3C0C8091 */  lui     $t4, %hi(D_8090EB2C)       ## $t4 = 80910000
/* 01094 808FDFD4 E5660024 */  swc1    $f6, 0x0024($t3)           ## 80910024
/* 01098 808FDFD8 8D8CEB2C */  lw      $t4, %lo(D_8090EB2C)($t4)
/* 0109C 808FDFDC C428DB74 */  lwc1    $f8, %lo(D_8090DB74)($at)
/* 010A0 808FDFE0 3C01C33A */  lui     $at, 0xC33A                ## $at = C33A0000
/* 010A4 808FDFE4 3C0D8091 */  lui     $t5, %hi(D_8090EB2C)       ## $t5 = 80910000
/* 010A8 808FDFE8 E5880028 */  swc1    $f8, 0x0028($t4)           ## 80910028
/* 010AC 808FDFEC 8DADEB2C */  lw      $t5, %lo(D_8090EB2C)($t5)
/* 010B0 808FDFF0 44815000 */  mtc1    $at, $f10                  ## $f10 = -186.00
/* 010B4 808FDFF4 240EC000 */  addiu   $t6, $zero, 0xC000         ## $t6 = FFFFC000
/* 010B8 808FDFF8 3C188091 */  lui     $t8, %hi(D_8090EB2C)       ## $t8 = 80910000
/* 010BC 808FDFFC E5AA002C */  swc1    $f10, 0x002C($t5)          ## 8091002C
/* 010C0 808FE000 A52E00B6 */  sh      $t6, 0x00B6($t1)           ## 000000B6
/* 010C4 808FE004 8F18EB2C */  lw      $t8, %lo(D_8090EB2C)($t8)
/* 010C8 808FE008 3C0143E1 */  lui     $at, 0x43E1                ## $at = 43E10000
/* 010CC 808FE00C 44812000 */  mtc1    $at, $f4                   ## $f4 = 450.00
/* 010D0 808FE010 240FB000 */  addiu   $t7, $zero, 0xB000         ## $t7 = FFFFB000
/* 010D4 808FE014 A70F00B6 */  sh      $t7, 0x00B6($t8)           ## 809100B6
/* 010D8 808FE018 3C018091 */  lui     $at, %hi(D_8090DB78)       ## $at = 80910000
/* 010DC 808FE01C E60403A4 */  swc1    $f4, 0x03A4($s0)           ## 000003A4
/* 010E0 808FE020 C426DB78 */  lwc1    $f6, %lo(D_8090DB78)($at)
/* 010E4 808FE024 3C01C31E */  lui     $at, 0xC31E                ## $at = C31E0000
/* 010E8 808FE028 44814000 */  mtc1    $at, $f8                   ## $f8 = -158.00
/* 010EC 808FE02C E60603A8 */  swc1    $f6, 0x03A8($s0)           ## 000003A8
/* 010F0 808FE030 3C014348 */  lui     $at, 0x4348                ## $at = 43480000
/* 010F4 808FE034 E60803AC */  swc1    $f8, 0x03AC($s0)           ## 000003AC
/* 010F8 808FE038 C52A0024 */  lwc1    $f10, 0x0024($t1)          ## 00000024
/* 010FC 808FE03C 8E030398 */  lw      $v1, 0x0398($s0)           ## 00000398
/* 01100 808FE040 3C048090 */  lui     $a0, %hi(D_80906D6C)       ## $a0 = 80900000
/* 01104 808FE044 46025101 */  sub.s   $f4, $f10, $f2
/* 01108 808FE048 44815000 */  mtc1    $at, $f10                  ## $f10 = 200.00
/* 0110C 808FE04C 3C014317 */  lui     $at, 0x4317                ## $at = 43170000
/* 01110 808FE050 24846D6C */  addiu   $a0, $a0, %lo(D_80906D6C)  ## $a0 = 80906D6C
/* 01114 808FE054 46002180 */  add.s   $f6, $f4, $f0
/* 01118 808FE058 2405281D */  addiu   $a1, $zero, 0x281D         ## $a1 = 0000281D
/* 0111C 808FE05C E60603B0 */  swc1    $f6, 0x03B0($s0)           ## 000003B0
/* 01120 808FE060 C5280028 */  lwc1    $f8, 0x0028($t1)           ## 00000028
/* 01124 808FE064 44813000 */  mtc1    $at, $f6                   ## $f6 = 151.00
/* 01128 808FE068 2401000A */  addiu   $at, $zero, 0x000A         ## $at = 0000000A
/* 0112C 808FE06C 460A4100 */  add.s   $f4, $f8, $f10
/* 01130 808FE070 46062201 */  sub.s   $f8, $f4, $f6
/* 01134 808FE074 46004281 */  sub.s   $f10, $f8, $f0
/* 01138 808FE078 E60A03B4 */  swc1    $f10, 0x03B4($s0)          ## 000003B4
/* 0113C 808FE07C C524002C */  lwc1    $f4, 0x002C($t1)           ## 0000002C
/* 01140 808FE080 46002180 */  add.s   $f6, $f4, $f0
/* 01144 808FE084 14610005 */  bne     $v1, $at, .L808FE09C
/* 01148 808FE088 E60603B8 */  swc1    $f6, 0x03B8($s0)           ## 000003B8
/* 0114C 808FE08C 0C01E245 */  jal     func_80078914
/* 01150 808FE090 AFA90088 */  sw      $t1, 0x0088($sp)
/* 01154 808FE094 8FA90088 */  lw      $t1, 0x0088($sp)
/* 01158 808FE098 8E030398 */  lw      $v1, 0x0398($s0)           ## 00000398
.L808FE09C:
/* 0115C 808FE09C 24010014 */  addiu   $at, $zero, 0x0014         ## $at = 00000014
/* 01160 808FE0A0 14610005 */  bne     $v1, $at, .L808FE0B8
/* 01164 808FE0A4 2404281D */  addiu   $a0, $zero, 0x281D         ## $a0 = 0000281D
/* 01168 808FE0A8 0C01E221 */  jal     func_80078884
/* 0116C 808FE0AC AFA90088 */  sw      $t1, 0x0088($sp)
/* 01170 808FE0B0 8FA90088 */  lw      $t1, 0x0088($sp)
/* 01174 808FE0B4 8E030398 */  lw      $v1, 0x0398($s0)           ## 00000398
.L808FE0B8:
/* 01178 808FE0B8 2401001E */  addiu   $at, $zero, 0x001E         ## $at = 0000001E
/* 0117C 808FE0BC 14610007 */  bne     $v1, $at, .L808FE0DC
/* 01180 808FE0C0 02202025 */  or      $a0, $s1, $zero            ## $a0 = 00000000
/* 01184 808FE0C4 02002825 */  or      $a1, $s0, $zero            ## $a1 = 00000000
/* 01188 808FE0C8 24060052 */  addiu   $a2, $zero, 0x0052         ## $a2 = 00000052
/* 0118C 808FE0CC 0C00B7D5 */  jal     func_8002DF54
/* 01190 808FE0D0 AFA90088 */  sw      $t1, 0x0088($sp)
/* 01194 808FE0D4 8FA90088 */  lw      $t1, 0x0088($sp)
/* 01198 808FE0D8 8E030398 */  lw      $v1, 0x0398($s0)           ## 00000398
.L808FE0DC:
/* 0119C 808FE0DC 24010032 */  addiu   $at, $zero, 0x0032         ## $at = 00000032
/* 011A0 808FE0E0 146105CB */  bne     $v1, $at, .L808FF810
/* 011A4 808FE0E4 2419000C */  addiu   $t9, $zero, 0x000C         ## $t9 = 0000000C
/* 011A8 808FE0E8 AE000398 */  sw      $zero, 0x0398($s0)         ## 00000398
/* 011AC 808FE0EC A619039C */  sh      $t9, 0x039C($s0)           ## 0000039C
/* 011B0 808FE0F0 3C050600 */  lui     $a1, %hi(D_06002168)                ## $a1 = 06000000
/* 011B4 808FE0F4 24A52168 */  addiu   $a1, $a1, %lo(D_06002168)           ## $a1 = 06002168
/* 011B8 808FE0F8 AFA90088 */  sw      $t1, 0x0088($sp)
/* 011BC 808FE0FC 2604014C */  addiu   $a0, $s0, 0x014C           ## $a0 = 0000014C
/* 011C0 808FE100 0C029490 */  jal     SkelAnime_ChangeAnimTransitionStop
/* 011C4 808FE104 24060000 */  addiu   $a2, $zero, 0x0000         ## $a2 = 00000000
/* 011C8 808FE108 3C040600 */  lui     $a0, %hi(D_06002168)                ## $a0 = 06000000
/* 011CC 808FE10C 0C028800 */  jal     SkelAnime_GetFrameCount

/* 011D0 808FE110 24842168 */  addiu   $a0, $a0, %lo(D_06002168)           ## $a0 = 06002168
/* 011D4 808FE114 44824000 */  mtc1    $v0, $f8                   ## $f8 = 0.00
/* 011D8 808FE118 3C018091 */  lui     $at, %hi(D_8090DB7C)       ## $at = 80910000
/* 011DC 808FE11C C420DB7C */  lwc1    $f0, %lo(D_8090DB7C)($at)
/* 011E0 808FE120 468042A0 */  cvt.s.w $f10, $f8
/* 011E4 808FE124 3C01C348 */  lui     $at, 0xC348                ## $at = C3480000
/* 011E8 808FE128 44811000 */  mtc1    $at, $f2                   ## $f2 = -200.00
/* 011EC 808FE12C 8FA90088 */  lw      $t1, 0x0088($sp)
/* 011F0 808FE130 3C018091 */  lui     $at, %hi(D_8090DB80)       ## $at = 80910000
/* 011F4 808FE134 E6000028 */  swc1    $f0, 0x0028($s0)           ## 00000028
/* 011F8 808FE138 E60A0194 */  swc1    $f10, 0x0194($s0)          ## 00000194
/* 011FC 808FE13C E6020024 */  swc1    $f2, 0x0024($s0)           ## 00000024
/* 01200 808FE140 E602002C */  swc1    $f2, 0x002C($s0)           ## 0000002C
/* 01204 808FE144 C424DB80 */  lwc1    $f4, %lo(D_8090DB80)($at)
/* 01208 808FE148 3C01C270 */  lui     $at, 0xC270                ## $at = C2700000
/* 0120C 808FE14C 44813000 */  mtc1    $at, $f6                   ## $f6 = -60.00
/* 01210 808FE150 240B5000 */  addiu   $t3, $zero, 0x5000         ## $t3 = 00005000
/* 01214 808FE154 A60B0032 */  sh      $t3, 0x0032($s0)           ## 00000032
/* 01218 808FE158 3C018091 */  lui     $at, %hi(D_8090DB84)       ## $at = 80910000
/* 0121C 808FE15C E60400BC */  swc1    $f4, 0x00BC($s0)           ## 000000BC
/* 01220 808FE160 E60603A4 */  swc1    $f6, 0x03A4($s0)           ## 000003A4
/* 01224 808FE164 C428DB84 */  lwc1    $f8, %lo(D_8090DB84)($at)
/* 01228 808FE168 3C01428C */  lui     $at, 0x428C                ## $at = 428C0000
/* 0122C 808FE16C 44815000 */  mtc1    $at, $f10                  ## $f10 = 70.00
/* 01230 808FE170 44803000 */  mtc1    $zero, $f6                 ## $f6 = 0.00
/* 01234 808FE174 3C010001 */  lui     $at, 0x0001                ## $at = 00010000
/* 01238 808FE178 460A0100 */  add.s   $f4, $f0, $f10
/* 0123C 808FE17C 00310821 */  addu    $at, $at, $s1
/* 01240 808FE180 E60203AC */  swc1    $f2, 0x03AC($s0)           ## 000003AC
/* 01244 808FE184 E60203B0 */  swc1    $f2, 0x03B0($s0)           ## 000003B0
/* 01248 808FE188 E60403B4 */  swc1    $f4, 0x03B4($s0)           ## 000003B4
/* 0124C 808FE18C E60203B8 */  swc1    $f2, 0x03B8($s0)           ## 000003B8
/* 01250 808FE190 E60803A8 */  swc1    $f8, 0x03A8($s0)           ## 000003A8
/* 01254 808FE194 E4260AFC */  swc1    $f6, 0x0AFC($at)           ## 00010AFC
/* 01258 808FE198 3C010001 */  lui     $at, 0x0001                ## $at = 00010000
/* 0125C 808FE19C 00310821 */  addu    $at, $at, $s1
/* 01260 808FE1A0 3C0C0001 */  lui     $t4, 0x0001                ## $t4 = 00010000
/* 01264 808FE1A4 01916021 */  addu    $t4, $t4, $s1
/* 01268 808FE1A8 A0200AE1 */  sb      $zero, 0x0AE1($at)         ## 00010AE1
/* 0126C 808FE1AC 918C0AE1 */  lbu     $t4, 0x0AE1($t4)           ## 00010AE1
/* 01270 808FE1B0 3C010001 */  lui     $at, 0x0001                ## $at = 00010000
/* 01274 808FE1B4 00310821 */  addu    $at, $at, $s1
/* 01278 808FE1B8 A02C0AE2 */  sb      $t4, 0x0AE2($at)           ## 00010AE2
/* 0127C 808FE1BC A2000339 */  sb      $zero, 0x0339($s0)         ## 00000339
glabel L808FE1C0
/* 01280 808FE1C0 2604014C */  addiu   $a0, $s0, 0x014C           ## $a0 = 0000014C
/* 01284 808FE1C4 AFA40050 */  sw      $a0, 0x0050($sp)
/* 01288 808FE1C8 0C02927F */  jal     SkelAnime_FrameUpdateMatrix

/* 0128C 808FE1CC AFA90088 */  sw      $t1, 0x0088($sp)
/* 01290 808FE1D0 8E030398 */  lw      $v1, 0x0398($s0)           ## 00000398
/* 01294 808FE1D4 2401001E */  addiu   $at, $zero, 0x001E         ## $at = 0000001E
/* 01298 808FE1D8 8FA90088 */  lw      $t1, 0x0088($sp)
/* 0129C 808FE1DC 1461000C */  bne     $v1, $at, .L808FE210
/* 012A0 808FE1E0 240A0001 */  addiu   $t2, $zero, 0x0001         ## $t2 = 00000001
/* 012A4 808FE1E4 3C018090 */  lui     $at, %hi(D_80906D78)       ## $at = 80900000
/* 012A8 808FE1E8 A02A6D78 */  sb      $t2, %lo(D_80906D78)($at)
/* 012AC 808FE1EC A20A0314 */  sb      $t2, 0x0314($s0)           ## 00000314
/* 012B0 808FE1F0 44806000 */  mtc1    $zero, $f12                ## $f12 = 0.00
/* 012B4 808FE1F4 AFA90088 */  sw      $t1, 0x0088($sp)
/* 012B8 808FE1F8 240500C8 */  addiu   $a1, $zero, 0x00C8         ## $a1 = 000000C8
/* 012BC 808FE1FC 24060014 */  addiu   $a2, $zero, 0x0014         ## $a2 = 00000014
/* 012C0 808FE200 0C02A7DB */  jal     func_800A9F6C
/* 012C4 808FE204 24070014 */  addiu   $a3, $zero, 0x0014         ## $a3 = 00000014
/* 012C8 808FE208 8FA90088 */  lw      $t1, 0x0088($sp)
/* 012CC 808FE20C 8E030398 */  lw      $v1, 0x0398($s0)           ## 00000398
.L808FE210:
/* 012D0 808FE210 2401001E */  addiu   $at, $zero, 0x001E         ## $at = 0000001E
/* 012D4 808FE214 14610005 */  bne     $v1, $at, .L808FE22C
/* 012D8 808FE218 240428C2 */  addiu   $a0, $zero, 0x28C2         ## $a0 = 000028C2
/* 012DC 808FE21C 0C01E221 */  jal     func_80078884
/* 012E0 808FE220 AFA90088 */  sw      $t1, 0x0088($sp)
/* 012E4 808FE224 8FA90088 */  lw      $t1, 0x0088($sp)
/* 012E8 808FE228 8E030398 */  lw      $v1, 0x0398($s0)           ## 00000398
.L808FE22C:
/* 012EC 808FE22C 2C61001E */  sltiu   $at, $v1, 0x001E
/* 012F0 808FE230 14200010 */  bne     $at, $zero, .L808FE274
/* 012F4 808FE234 26040028 */  addiu   $a0, $s0, 0x0028           ## $a0 = 00000028
/* 012F8 808FE238 3C014120 */  lui     $at, 0x4120                ## $at = 41200000
/* 012FC 808FE23C 44817000 */  mtc1    $at, $f14                  ## $f14 = 10.00
/* 01300 808FE240 3C0544A1 */  lui     $a1, 0x44A1                ## $a1 = 44A10000
/* 01304 808FE244 3C063DCC */  lui     $a2, 0x3DCC                ## $a2 = 3DCC0000
/* 01308 808FE248 44077000 */  mfc1    $a3, $f14
/* 0130C 808FE24C 34C6CCCD */  ori     $a2, $a2, 0xCCCD           ## $a2 = 3DCCCCCD
/* 01310 808FE250 34A52000 */  ori     $a1, $a1, 0x2000           ## $a1 = 44A12000
/* 01314 808FE254 0C01E107 */  jal     Math_SmoothScaleMaxF

/* 01318 808FE258 AFA90088 */  sw      $t1, 0x0088($sp)
/* 0131C 808FE25C 3C01428C */  lui     $at, 0x428C                ## $at = 428C0000
/* 01320 808FE260 44815000 */  mtc1    $at, $f10                  ## $f10 = 70.00
/* 01324 808FE264 C6080028 */  lwc1    $f8, 0x0028($s0)           ## 00000028
/* 01328 808FE268 8FA90088 */  lw      $t1, 0x0088($sp)
/* 0132C 808FE26C 460A4100 */  add.s   $f4, $f8, $f10
/* 01330 808FE270 E60403B4 */  swc1    $f4, 0x03B4($s0)           ## 000003B4
.L808FE274:
/* 01334 808FE274 8E050194 */  lw      $a1, 0x0194($s0)           ## 00000194
/* 01338 808FE278 AFA90088 */  sw      $t1, 0x0088($sp)
/* 0133C 808FE27C 0C0295B2 */  jal     func_800A56C8
/* 01340 808FE280 8FA40050 */  lw      $a0, 0x0050($sp)
/* 01344 808FE284 10400562 */  beq     $v0, $zero, .L808FF810
/* 01348 808FE288 8FA90088 */  lw      $t1, 0x0088($sp)
/* 0134C 808FE28C 3C050600 */  lui     $a1, %hi(D_06002E6C)                ## $a1 = 06000000
/* 01350 808FE290 24A52E6C */  addiu   $a1, $a1, %lo(D_06002E6C)           ## $a1 = 06002E6C
/* 01354 808FE294 8FA40050 */  lw      $a0, 0x0050($sp)
/* 01358 808FE298 24060000 */  addiu   $a2, $zero, 0x0000         ## $a2 = 00000000
/* 0135C 808FE29C 0C0294D3 */  jal     SkelAnime_ChangeAnimTransitionRepeat
/* 01360 808FE2A0 AFA90088 */  sw      $t1, 0x0088($sp)
/* 01364 808FE2A4 3C01C348 */  lui     $at, 0xC348                ## $at = C3480000
/* 01368 808FE2A8 44810000 */  mtc1    $at, $f0                   ## $f0 = -200.00
/* 0136C 808FE2AC 3C0141F0 */  lui     $at, 0x41F0                ## $at = 41F00000
/* 01370 808FE2B0 44818000 */  mtc1    $at, $f16                  ## $f16 = 30.00
/* 01374 808FE2B4 C6060028 */  lwc1    $f6, 0x0028($s0)           ## 00000028
/* 01378 808FE2B8 240D000E */  addiu   $t5, $zero, 0x000E         ## $t5 = 0000000E
/* 0137C 808FE2BC A60D039C */  sh      $t5, 0x039C($s0)           ## 0000039C
/* 01380 808FE2C0 46103201 */  sub.s   $f8, $f6, $f16
/* 01384 808FE2C4 AE000398 */  sw      $zero, 0x0398($s0)         ## 00000398
/* 01388 808FE2C8 24040023 */  addiu   $a0, $zero, 0x0023         ## $a0 = 00000023
/* 0138C 808FE2CC E6000024 */  swc1    $f0, 0x0024($s0)           ## 00000024
/* 01390 808FE2D0 E6080028 */  swc1    $f8, 0x0028($s0)           ## 00000028
/* 01394 808FE2D4 0C03E803 */  jal     Audio_SetBGM

/* 01398 808FE2D8 E600002C */  swc1    $f0, 0x002C($s0)           ## 0000002C
/* 0139C 808FE2DC 8FA90088 */  lw      $t1, 0x0088($sp)
glabel L808FE2E0
/* 013A0 808FE2E0 3C010001 */  lui     $at, 0x0001                ## $at = 00010000
/* 013A4 808FE2E4 02214021 */  addu    $t0, $s1, $at
/* 013A8 808FE2E8 260E0028 */  addiu   $t6, $s0, 0x0028           ## $t6 = 00000028
/* 013AC 808FE2EC AFAE0054 */  sw      $t6, 0x0054($sp)
/* 013B0 808FE2F0 AFA80050 */  sw      $t0, 0x0050($sp)
/* 013B4 808FE2F4 2604014C */  addiu   $a0, $s0, 0x014C           ## $a0 = 0000014C
/* 013B8 808FE2F8 0C02927F */  jal     SkelAnime_FrameUpdateMatrix

/* 013BC 808FE2FC AFA90088 */  sw      $t1, 0x0088($sp)
/* 013C0 808FE300 3C0544A1 */  lui     $a1, 0x44A1                ## $a1 = 44A10000
/* 013C4 808FE304 3C063D4C */  lui     $a2, 0x3D4C                ## $a2 = 3D4C0000
/* 013C8 808FE308 34C6CCCD */  ori     $a2, $a2, 0xCCCD           ## $a2 = 3D4CCCCD
/* 013CC 808FE30C 34A52000 */  ori     $a1, $a1, 0x2000           ## $a1 = 44A12000
/* 013D0 808FE310 8FA40054 */  lw      $a0, 0x0054($sp)
/* 013D4 808FE314 0C01E107 */  jal     Math_SmoothScaleMaxF

/* 013D8 808FE318 3C073F80 */  lui     $a3, 0x3F80                ## $a3 = 3F800000
/* 013DC 808FE31C 3C018091 */  lui     $at, %hi(D_8090DB88)       ## $at = 80910000
/* 013E0 808FE320 C420DB88 */  lwc1    $f0, %lo(D_8090DB88)($at)
/* 013E4 808FE324 3C014248 */  lui     $at, 0x4248                ## $at = 42480000
/* 013E8 808FE328 44818000 */  mtc1    $at, $f16                  ## $f16 = 50.00
/* 013EC 808FE32C 8FA90088 */  lw      $t1, 0x0088($sp)
/* 013F0 808FE330 3C01437A */  lui     $at, 0x437A                ## $at = 437A0000
/* 013F4 808FE334 44819000 */  mtc1    $at, $f18                  ## $f18 = 250.00
/* 013F8 808FE338 8FA80050 */  lw      $t0, 0x0050($sp)
/* 013FC 808FE33C 3C01C385 */  lui     $at, 0xC385                ## $at = C3850000
/* 01400 808FE340 44815000 */  mtc1    $at, $f10                  ## $f10 = -266.00
/* 01404 808FE344 3C028091 */  lui     $v0, %hi(D_8090EB2C)       ## $v0 = 80910000
/* 01408 808FE348 240FC000 */  addiu   $t7, $zero, 0xC000         ## $t7 = FFFFC000
/* 0140C 808FE34C 2442EB2C */  addiu   $v0, $v0, %lo(D_8090EB2C)  ## $v0 = 8090EB2C
/* 01410 808FE350 3C014435 */  lui     $at, 0x4435                ## $at = 44350000
/* 01414 808FE354 E5200028 */  swc1    $f0, 0x0028($t1)           ## 00000028
/* 01418 808FE358 A52F00B6 */  sh      $t7, 0x00B6($t1)           ## 000000B6
/* 0141C 808FE35C E5320024 */  swc1    $f18, 0x0024($t1)          ## 00000024
/* 01420 808FE360 E52A002C */  swc1    $f10, 0x002C($t1)          ## 0000002C
/* 01424 808FE364 8C580000 */  lw      $t8, 0x0000($v0)           ## 8090EB2C
/* 01428 808FE368 44812000 */  mtc1    $at, $f4                   ## $f4 = 724.00
/* 0142C 808FE36C 3C01C33A */  lui     $at, 0xC33A                ## $at = C33A0000
/* 01430 808FE370 44813000 */  mtc1    $at, $f6                   ## $f6 = -186.00
/* 01434 808FE374 E7040024 */  swc1    $f4, 0x0024($t8)           ## 00000024
/* 01438 808FE378 8C590000 */  lw      $t9, 0x0000($v0)           ## 8090EB2C
/* 0143C 808FE37C 3C01C120 */  lui     $at, 0xC120                ## $at = C1200000
/* 01440 808FE380 44815000 */  mtc1    $at, $f10                  ## $f10 = -10.00
/* 01444 808FE384 E7200028 */  swc1    $f0, 0x0028($t9)           ## 00000028
/* 01448 808FE388 8C4B0000 */  lw      $t3, 0x0000($v0)           ## 8090EB2C
/* 0144C 808FE38C 3C0142A0 */  lui     $at, 0x42A0                ## $at = 42A00000
/* 01450 808FE390 02202025 */  or      $a0, $s1, $zero            ## $a0 = 00000000
/* 01454 808FE394 E566002C */  swc1    $f6, 0x002C($t3)           ## 0000002C
/* 01458 808FE398 C6080024 */  lwc1    $f8, 0x0024($s0)           ## 00000024
/* 0145C 808FE39C C6060028 */  lwc1    $f6, 0x0028($s0)           ## 00000028
/* 01460 808FE3A0 8E030398 */  lw      $v1, 0x0398($s0)           ## 00000398
/* 01464 808FE3A4 460A4100 */  add.s   $f4, $f8, $f10
/* 01468 808FE3A8 44814000 */  mtc1    $at, $f8                   ## $f8 = 80.00
/* 0146C 808FE3AC 3C014348 */  lui     $at, 0x4348                ## $at = 43480000
/* 01470 808FE3B0 02002825 */  or      $a1, $s0, $zero            ## $a1 = 00000000
/* 01474 808FE3B4 E60403A4 */  swc1    $f4, 0x03A4($s0)           ## 000003A4
/* 01478 808FE3B8 C604002C */  lwc1    $f4, 0x002C($s0)           ## 0000002C
/* 0147C 808FE3BC 46083280 */  add.s   $f10, $f6, $f8
/* 01480 808FE3C0 2406001E */  addiu   $a2, $zero, 0x001E         ## $a2 = 0000001E
/* 01484 808FE3C4 46102180 */  add.s   $f6, $f4, $f16
/* 01488 808FE3C8 E60A03A8 */  swc1    $f10, 0x03A8($s0)          ## 000003A8
/* 0148C 808FE3CC E60603AC */  swc1    $f6, 0x03AC($s0)           ## 000003AC
/* 01490 808FE3D0 C5280024 */  lwc1    $f8, 0x0024($t1)           ## 00000024
/* 01494 808FE3D4 44813000 */  mtc1    $at, $f6                   ## $f6 = 200.00
/* 01498 808FE3D8 24010014 */  addiu   $at, $zero, 0x0014         ## $at = 00000014
/* 0149C 808FE3DC E60803B0 */  swc1    $f8, 0x03B0($s0)           ## 000003B0
/* 014A0 808FE3E0 C52A0028 */  lwc1    $f10, 0x0028($t1)          ## 00000028
/* 014A4 808FE3E4 E60A03B4 */  swc1    $f10, 0x03B4($s0)          ## 000003B4
/* 014A8 808FE3E8 C524002C */  lwc1    $f4, 0x002C($t1)           ## 0000002C
/* 014AC 808FE3EC 46062201 */  sub.s   $f8, $f4, $f6
/* 014B0 808FE3F0 14610005 */  bne     $v1, $at, .L808FE408
/* 014B4 808FE3F4 E60803B8 */  swc1    $f8, 0x03B8($s0)           ## 000003B8
/* 014B8 808FE3F8 0C00B7D5 */  jal     func_8002DF54
/* 014BC 808FE3FC AFA80050 */  sw      $t0, 0x0050($sp)
/* 014C0 808FE400 8FA80050 */  lw      $t0, 0x0050($sp)
/* 014C4 808FE404 8E030398 */  lw      $v1, 0x0398($s0)           ## 00000398
.L808FE408:
/* 014C8 808FE408 2401003C */  addiu   $at, $zero, 0x003C         ## $at = 0000003C
/* 014CC 808FE40C 14610023 */  bne     $v1, $at, .L808FE49C
/* 014D0 808FE410 240C000F */  addiu   $t4, $zero, 0x000F         ## $t4 = 0000000F
/* 014D4 808FE414 3C014170 */  lui     $at, 0x4170                ## $at = 41700000
/* 014D8 808FE418 44817000 */  mtc1    $at, $f14                  ## $f14 = 15.00
/* 014DC 808FE41C 3C014348 */  lui     $at, 0x4348                ## $at = 43480000
/* 014E0 808FE420 44815000 */  mtc1    $at, $f10                  ## $f10 = 200.00
/* 014E4 808FE424 C6000024 */  lwc1    $f0, 0x0024($s0)           ## 00000024
/* 014E8 808FE428 3C01431A */  lui     $at, 0x431A                ## $at = 431A0000
/* 014EC 808FE42C 44813000 */  mtc1    $at, $f6                   ## $f6 = 154.00
/* 014F0 808FE430 460A0100 */  add.s   $f4, $f0, $f10
/* 014F4 808FE434 3C014270 */  lui     $at, 0x4270                ## $at = 42700000
/* 014F8 808FE438 44815000 */  mtc1    $at, $f10                  ## $f10 = 60.00
/* 014FC 808FE43C C60C0028 */  lwc1    $f12, 0x0028($s0)          ## 00000028
/* 01500 808FE440 46062201 */  sub.s   $f8, $f4, $f6
/* 01504 808FE444 C602002C */  lwc1    $f2, 0x002C($s0)           ## 0000002C
/* 01508 808FE448 3C01429A */  lui     $at, 0x429A                ## $at = 429A0000
/* 0150C 808FE44C 460A6100 */  add.s   $f4, $f12, $f10
/* 01510 808FE450 E60803A4 */  swc1    $f8, 0x03A4($s0)           ## 000003A4
/* 01514 808FE454 44814000 */  mtc1    $at, $f8                   ## $f8 = 77.00
/* 01518 808FE458 460E1181 */  sub.s   $f6, $f2, $f14
/* 0151C 808FE45C E60403A8 */  swc1    $f4, 0x03A8($s0)           ## 000003A8
/* 01520 808FE460 3C0142C8 */  lui     $at, 0x42C8                ## $at = 42C80000
/* 01524 808FE464 46086280 */  add.s   $f10, $f12, $f8
/* 01528 808FE468 44812000 */  mtc1    $at, $f4                   ## $f4 = 100.00
/* 0152C 808FE46C 3C0140A0 */  lui     $at, 0x40A0                ## $at = 40A00000
/* 01530 808FE470 44814000 */  mtc1    $at, $f8                   ## $f8 = 5.00
/* 01534 808FE474 E60603AC */  swc1    $f6, 0x03AC($s0)           ## 000003AC
/* 01538 808FE478 46045180 */  add.s   $f6, $f10, $f4
/* 0153C 808FE47C 240D0002 */  addiu   $t5, $zero, 0x0002         ## $t5 = 00000002
/* 01540 808FE480 A60C039C */  sh      $t4, 0x039C($s0)           ## 0000039C
/* 01544 808FE484 46081280 */  add.s   $f10, $f2, $f8
/* 01548 808FE488 AE000398 */  sw      $zero, 0x0398($s0)         ## 00000398
/* 0154C 808FE48C E60603B4 */  swc1    $f6, 0x03B4($s0)           ## 000003B4
/* 01550 808FE490 A20D0314 */  sb      $t5, 0x0314($s0)           ## 00000314
/* 01554 808FE494 E60A03B8 */  swc1    $f10, 0x03B8($s0)          ## 000003B8
/* 01558 808FE498 E60003B0 */  swc1    $f0, 0x03B0($s0)           ## 000003B0
.L808FE49C:
/* 0155C 808FE49C 8D0E1DE4 */  lw      $t6, 0x1DE4($t0)           ## 00001DE4
/* 01560 808FE4A0 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 01564 808FE4A4 31CF001F */  andi    $t7, $t6, 0x001F           ## $t7 = 00000000
/* 01568 808FE4A8 55E004DA */  bnel    $t7, $zero, .L808FF814
/* 0156C 808FE4AC 3C014080 */  lui     $at, 0x4080                ## $at = 40800000
/* 01570 808FE4B0 0C00BE0A */  jal     Audio_PlayActorSound2

/* 01574 808FE4B4 240539D1 */  addiu   $a1, $zero, 0x39D1         ## $a1 = 000039D1
/* 01578 808FE4B8 100004D6 */  beq     $zero, $zero, .L808FF814
/* 0157C 808FE4BC 3C014080 */  lui     $at, 0x4080                ## $at = 40800000
glabel L808FE4C0
/* 01580 808FE4C0 3C180001 */  lui     $t8, 0x0001                ## $t8 = 00010000
/* 01584 808FE4C4 0311C021 */  addu    $t8, $t8, $s1
/* 01588 808FE4C8 8F181DE4 */  lw      $t8, 0x1DE4($t8)           ## 00011DE4
/* 0158C 808FE4CC 3319001F */  andi    $t9, $t8, 0x001F           ## $t9 = 00000000
/* 01590 808FE4D0 57200009 */  bnel    $t9, $zero, .L808FE4F8
/* 01594 808FE4D4 2604014C */  addiu   $a0, $s0, 0x014C           ## $a0 = 0000014C
/* 01598 808FE4D8 8E0B0398 */  lw      $t3, 0x0398($s0)           ## 00000398
/* 0159C 808FE4DC 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 015A0 808FE4E0 2D610064 */  sltiu   $at, $t3, 0x0064
/* 015A4 808FE4E4 50200004 */  beql    $at, $zero, .L808FE4F8
/* 015A8 808FE4E8 2604014C */  addiu   $a0, $s0, 0x014C           ## $a0 = 0000014C
/* 015AC 808FE4EC 0C00BE0A */  jal     Audio_PlayActorSound2

/* 015B0 808FE4F0 240539D1 */  addiu   $a1, $zero, 0x39D1         ## $a1 = 000039D1
/* 015B4 808FE4F4 2604014C */  addiu   $a0, $s0, 0x014C           ## $a0 = 0000014C
.L808FE4F8:
/* 015B8 808FE4F8 0C02927F */  jal     SkelAnime_FrameUpdateMatrix

/* 015BC 808FE4FC AFA40050 */  sw      $a0, 0x0050($sp)
/* 015C0 808FE500 3C01429A */  lui     $at, 0x429A                ## $at = 429A0000
/* 015C4 808FE504 44813000 */  mtc1    $at, $f6                   ## $f6 = 77.00
/* 015C8 808FE508 C6040028 */  lwc1    $f4, 0x0028($s0)           ## 00000028
/* 015CC 808FE50C 3C063D4C */  lui     $a2, 0x3D4C                ## $a2 = 3D4C0000
/* 015D0 808FE510 34C6CCCD */  ori     $a2, $a2, 0xCCCD           ## $a2 = 3D4CCCCD
/* 015D4 808FE514 46062200 */  add.s   $f8, $f4, $f6
/* 015D8 808FE518 260403B4 */  addiu   $a0, $s0, 0x03B4           ## $a0 = 000003B4
/* 015DC 808FE51C 3C0740A0 */  lui     $a3, 0x40A0                ## $a3 = 40A00000
/* 015E0 808FE520 44054000 */  mfc1    $a1, $f8
/* 015E4 808FE524 0C01E107 */  jal     Math_SmoothScaleMaxF

/* 015E8 808FE528 00000000 */  nop
/* 015EC 808FE52C 8E030398 */  lw      $v1, 0x0398($s0)           ## 00000398
/* 015F0 808FE530 2C610032 */  sltiu   $at, $v1, 0x0032
/* 015F4 808FE534 1420001C */  bne     $at, $zero, .L808FE5A8
/* 015F8 808FE538 24010032 */  addiu   $at, $zero, 0x0032         ## $at = 00000032
/* 015FC 808FE53C 1461000D */  bne     $v1, $at, .L808FE574
/* 01600 808FE540 8FA40050 */  lw      $a0, 0x0050($sp)
/* 01604 808FE544 3C050600 */  lui     $a1, %hi(D_06000BFC)                ## $a1 = 06000000
/* 01608 808FE548 24A50BFC */  addiu   $a1, $a1, %lo(D_06000BFC)           ## $a1 = 06000BFC
/* 0160C 808FE54C 0C029490 */  jal     SkelAnime_ChangeAnimTransitionStop
/* 01610 808FE550 24060000 */  addiu   $a2, $zero, 0x0000         ## $a2 = 00000000
/* 01614 808FE554 3C040600 */  lui     $a0, %hi(D_06000BFC)                ## $a0 = 06000000
/* 01618 808FE558 0C028800 */  jal     SkelAnime_GetFrameCount

/* 0161C 808FE55C 24840BFC */  addiu   $a0, $a0, %lo(D_06000BFC)           ## $a0 = 06000BFC
/* 01620 808FE560 44825000 */  mtc1    $v0, $f10                  ## $f10 = 0.00
/* 01624 808FE564 240C0003 */  addiu   $t4, $zero, 0x0003         ## $t4 = 00000003
/* 01628 808FE568 A20C0314 */  sb      $t4, 0x0314($s0)           ## 00000314
/* 0162C 808FE56C 46805120 */  cvt.s.w $f4, $f10
/* 01630 808FE570 E6040194 */  swc1    $f4, 0x0194($s0)           ## 00000194
.L808FE574:
/* 01634 808FE574 8FA40050 */  lw      $a0, 0x0050($sp)
/* 01638 808FE578 0C0295B2 */  jal     func_800A56C8
/* 0163C 808FE57C 8E050194 */  lw      $a1, 0x0194($s0)           ## 00000194
/* 01640 808FE580 10400009 */  beq     $v0, $zero, .L808FE5A8
/* 01644 808FE584 8FA40050 */  lw      $a0, 0x0050($sp)
/* 01648 808FE588 3C050600 */  lui     $a1, %hi(D_06003F38)                ## $a1 = 06000000
/* 0164C 808FE58C 24A53F38 */  addiu   $a1, $a1, %lo(D_06003F38)           ## $a1 = 06003F38
/* 01650 808FE590 0C0294D3 */  jal     SkelAnime_ChangeAnimTransitionRepeat
/* 01654 808FE594 24060000 */  addiu   $a2, $zero, 0x0000         ## $a2 = 00000000
/* 01658 808FE598 3C01447A */  lui     $at, 0x447A                ## $at = 447A0000
/* 0165C 808FE59C 44813000 */  mtc1    $at, $f6                   ## $f6 = 1000.00
/* 01660 808FE5A0 00000000 */  nop
/* 01664 808FE5A4 E6060194 */  swc1    $f6, 0x0194($s0)           ## 00000194
.L808FE5A8:
/* 01668 808FE5A8 8E030398 */  lw      $v1, 0x0398($s0)           ## 00000398
/* 0166C 808FE5AC 2C610047 */  sltiu   $at, $v1, 0x0047
/* 01670 808FE5B0 14200008 */  bne     $at, $zero, .L808FE5D4
/* 01674 808FE5B4 3C014120 */  lui     $at, 0x4120                ## $at = 41200000
/* 01678 808FE5B8 44817000 */  mtc1    $at, $f14                  ## $f14 = 10.00
/* 0167C 808FE5BC 260401B4 */  addiu   $a0, $s0, 0x01B4           ## $a0 = 000001B4
/* 01680 808FE5C0 3C05437F */  lui     $a1, 0x437F                ## $a1 = 437F0000
/* 01684 808FE5C4 44077000 */  mfc1    $a3, $f14
/* 01688 808FE5C8 0C01E107 */  jal     Math_SmoothScaleMaxF

/* 0168C 808FE5CC 3C063F80 */  lui     $a2, 0x3F80                ## $a2 = 3F800000
/* 01690 808FE5D0 8E030398 */  lw      $v1, 0x0398($s0)           ## 00000398
.L808FE5D4:
/* 01694 808FE5D4 2401008C */  addiu   $at, $zero, 0x008C         ## $at = 0000008C
/* 01698 808FE5D8 1461048D */  bne     $v1, $at, .L808FF810
/* 0169C 808FE5DC 240D0010 */  addiu   $t5, $zero, 0x0010         ## $t5 = 00000010
/* 016A0 808FE5E0 A60D039C */  sh      $t5, 0x039C($s0)           ## 0000039C
/* 016A4 808FE5E4 AE000398 */  sw      $zero, 0x0398($s0)         ## 00000398
/* 016A8 808FE5E8 3C050600 */  lui     $a1, %hi(D_06003754)                ## $a1 = 06000000
/* 016AC 808FE5EC 24A53754 */  addiu   $a1, $a1, %lo(D_06003754)           ## $a1 = 06003754
/* 016B0 808FE5F0 8FA40050 */  lw      $a0, 0x0050($sp)
/* 016B4 808FE5F4 0C029490 */  jal     SkelAnime_ChangeAnimTransitionStop
/* 016B8 808FE5F8 24060000 */  addiu   $a2, $zero, 0x0000         ## $a2 = 00000000
/* 016BC 808FE5FC 3C040600 */  lui     $a0, %hi(D_06003754)                ## $a0 = 06000000
/* 016C0 808FE600 0C028800 */  jal     SkelAnime_GetFrameCount

/* 016C4 808FE604 24843754 */  addiu   $a0, $a0, %lo(D_06003754)           ## $a0 = 06003754
/* 016C8 808FE608 44824000 */  mtc1    $v0, $f8                   ## $f8 = 0.00
/* 016CC 808FE60C 3C013F80 */  lui     $at, 0x3F80                ## $at = 3F800000
/* 016D0 808FE610 44812000 */  mtc1    $at, $f4                   ## $f4 = 1.00
/* 016D4 808FE614 468042A0 */  cvt.s.w $f10, $f8
/* 016D8 808FE618 240E0037 */  addiu   $t6, $zero, 0x0037         ## $t6 = 00000037
/* 016DC 808FE61C 3C010001 */  lui     $at, 0x0001                ## $at = 00010000
/* 016E0 808FE620 A20E0339 */  sb      $t6, 0x0339($s0)           ## 00000339
/* 016E4 808FE624 00310821 */  addu    $at, $at, $s1
/* 016E8 808FE628 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 016EC 808FE62C E60A0194 */  swc1    $f10, 0x0194($s0)          ## 00000194
/* 016F0 808FE630 240539D3 */  addiu   $a1, $zero, 0x39D3         ## $a1 = 000039D3
/* 016F4 808FE634 0C00BE0A */  jal     Audio_PlayActorSound2

/* 016F8 808FE638 E4240AFC */  swc1    $f4, 0x0AFC($at)           ## 00010AFC
glabel L808FE63C
/* 016FC 808FE63C 260F014C */  addiu   $t7, $s0, 0x014C           ## $t7 = 0000014C
/* 01700 808FE640 261803B4 */  addiu   $t8, $s0, 0x03B4           ## $t8 = 000003B4
/* 01704 808FE644 AFB80048 */  sw      $t8, 0x0048($sp)
/* 01708 808FE648 AFAF0050 */  sw      $t7, 0x0050($sp)
/* 0170C 808FE64C 8E190398 */  lw      $t9, 0x0398($s0)           ## 00000398
/* 01710 808FE650 240B0037 */  addiu   $t3, $zero, 0x0037         ## $t3 = 00000037
/* 01714 808FE654 2F210019 */  sltiu   $at, $t9, 0x0019
/* 01718 808FE658 50200004 */  beql    $at, $zero, .L808FE66C
/* 0171C 808FE65C 3C0142C8 */  lui     $at, 0x42C8                ## $at = 42C80000
/* 01720 808FE660 10000019 */  beq     $zero, $zero, .L808FE6C8
/* 01724 808FE664 A20B0339 */  sb      $t3, 0x0339($s0)           ## 00000339
/* 01728 808FE668 3C0142C8 */  lui     $at, 0x42C8                ## $at = 42C80000
.L808FE66C:
/* 0172C 808FE66C 44813000 */  mtc1    $at, $f6                   ## $f6 = 100.00
/* 01730 808FE670 C6080194 */  lwc1    $f8, 0x0194($s0)           ## 00000194
/* 01734 808FE674 240C0006 */  addiu   $t4, $zero, 0x0006         ## $t4 = 00000006
/* 01738 808FE678 A20C0339 */  sb      $t4, 0x0339($s0)           ## 00000339
/* 0173C 808FE67C 4608303C */  c.lt.s  $f6, $f8
/* 01740 808FE680 2604030C */  addiu   $a0, $s0, 0x030C           ## $a0 = 0000030C
/* 01744 808FE684 3C0540E0 */  lui     $a1, 0x40E0                ## $a1 = 40E00000
/* 01748 808FE688 3C063F80 */  lui     $a2, 0x3F80                ## $a2 = 3F800000
/* 0174C 808FE68C 4500000C */  bc1f    .L808FE6C0
/* 01750 808FE690 3C073E4C */  lui     $a3, 0x3E4C                ## $a3 = 3E4C0000
/* 01754 808FE694 3C014000 */  lui     $at, 0x4000                ## $at = 40000000
/* 01758 808FE698 44810000 */  mtc1    $at, $f0                   ## $f0 = 2.00
/* 0175C 808FE69C 3C014170 */  lui     $at, 0x4170                ## $at = 41700000
/* 01760 808FE6A0 44817000 */  mtc1    $at, $f14                  ## $f14 = 15.00
/* 01764 808FE6A4 44070000 */  mfc1    $a3, $f0
/* 01768 808FE6A8 2604030C */  addiu   $a0, $s0, 0x030C           ## $a0 = 0000030C
/* 0176C 808FE6AC 44057000 */  mfc1    $a1, $f14
/* 01770 808FE6B0 0C01E107 */  jal     Math_SmoothScaleMaxF

/* 01774 808FE6B4 3C063F80 */  lui     $a2, 0x3F80                ## $a2 = 3F800000
/* 01778 808FE6B8 10000004 */  beq     $zero, $zero, .L808FE6CC
/* 0177C 808FE6BC 44805000 */  mtc1    $zero, $f10                ## $f10 = 0.00
.L808FE6C0:
/* 01780 808FE6C0 0C01E107 */  jal     Math_SmoothScaleMaxF

/* 01784 808FE6C4 34E7CCCD */  ori     $a3, $a3, 0xCCCD           ## $a3 = 0000CCCD
.L808FE6C8:
/* 01788 808FE6C8 44805000 */  mtc1    $zero, $f10                ## $f10 = 0.00
.L808FE6CC:
/* 0178C 808FE6CC 00000000 */  nop
/* 01790 808FE6D0 E60A01B4 */  swc1    $f10, 0x01B4($s0)          ## 000001B4
/* 01794 808FE6D4 0C02927F */  jal     SkelAnime_FrameUpdateMatrix

/* 01798 808FE6D8 8FA40050 */  lw      $a0, 0x0050($sp)
/* 0179C 808FE6DC 8FA40050 */  lw      $a0, 0x0050($sp)
/* 017A0 808FE6E0 0C0295B2 */  jal     func_800A56C8
/* 017A4 808FE6E4 8E050194 */  lw      $a1, 0x0194($s0)           ## 00000194
/* 017A8 808FE6E8 10400009 */  beq     $v0, $zero, .L808FE710
/* 017AC 808FE6EC 8FA40050 */  lw      $a0, 0x0050($sp)
/* 017B0 808FE6F0 3C050600 */  lui     $a1, %hi(D_060028A8)                ## $a1 = 06000000
/* 017B4 808FE6F4 24A528A8 */  addiu   $a1, $a1, %lo(D_060028A8)           ## $a1 = 060028A8
/* 017B8 808FE6F8 0C029490 */  jal     SkelAnime_ChangeAnimTransitionStop
/* 017BC 808FE6FC 24060000 */  addiu   $a2, $zero, 0x0000         ## $a2 = 00000000
/* 017C0 808FE700 3C01447A */  lui     $at, 0x447A                ## $at = 447A0000
/* 017C4 808FE704 44812000 */  mtc1    $at, $f4                   ## $f4 = 1000.00
/* 017C8 808FE708 00000000 */  nop
/* 017CC 808FE70C E6040194 */  swc1    $f4, 0x0194($s0)           ## 00000194
.L808FE710:
/* 017D0 808FE710 3C014348 */  lui     $at, 0x4348                ## $at = 43480000
/* 017D4 808FE714 44814000 */  mtc1    $at, $f8                   ## $f8 = 200.00
/* 017D8 808FE718 C6060024 */  lwc1    $f6, 0x0024($s0)           ## 00000024
/* 017DC 808FE71C 3C0142B4 */  lui     $at, 0x42B4                ## $at = 42B40000
/* 017E0 808FE720 44812000 */  mtc1    $at, $f4                   ## $f4 = 90.00
/* 017E4 808FE724 46083280 */  add.s   $f10, $f6, $f8
/* 017E8 808FE728 260403A4 */  addiu   $a0, $s0, 0x03A4           ## $a0 = 000003A4
/* 017EC 808FE72C 3C063DCC */  lui     $a2, 0x3DCC                ## $a2 = 3DCC0000
/* 017F0 808FE730 3C0740CC */  lui     $a3, 0x40CC                ## $a3 = 40CC0000
/* 017F4 808FE734 46045181 */  sub.s   $f6, $f10, $f4
/* 017F8 808FE738 34E7CCCC */  ori     $a3, $a3, 0xCCCC           ## $a3 = 40CCCCCC
/* 017FC 808FE73C 34C6CCCD */  ori     $a2, $a2, 0xCCCD           ## $a2 = 3DCCCCCD
/* 01800 808FE740 AFA4004C */  sw      $a0, 0x004C($sp)
/* 01804 808FE744 44053000 */  mfc1    $a1, $f6
/* 01808 808FE748 0C01E107 */  jal     Math_SmoothScaleMaxF

/* 0180C 808FE74C 00000000 */  nop
/* 01810 808FE750 3C014270 */  lui     $at, 0x4270                ## $at = 42700000
/* 01814 808FE754 44815000 */  mtc1    $at, $f10                  ## $f10 = 60.00
/* 01818 808FE758 C6080028 */  lwc1    $f8, 0x0028($s0)           ## 00000028
/* 0181C 808FE75C 44813000 */  mtc1    $at, $f6                   ## $f6 = 60.00
/* 01820 808FE760 3C01428C */  lui     $at, 0x428C                ## $at = 428C0000
/* 01824 808FE764 460A4100 */  add.s   $f4, $f8, $f10
/* 01828 808FE768 44815000 */  mtc1    $at, $f10                  ## $f10 = 70.00
/* 0182C 808FE76C 3C063DCC */  lui     $a2, 0x3DCC                ## $a2 = 3DCC0000
/* 01830 808FE770 34C6CCCD */  ori     $a2, $a2, 0xCCCD           ## $a2 = 3DCCCCCD
/* 01834 808FE774 46062201 */  sub.s   $f8, $f4, $f6
/* 01838 808FE778 260403A8 */  addiu   $a0, $s0, 0x03A8           ## $a0 = 000003A8
/* 0183C 808FE77C 3C074150 */  lui     $a3, 0x4150                ## $a3 = 41500000
/* 01840 808FE780 460A4101 */  sub.s   $f4, $f8, $f10
/* 01844 808FE784 44052000 */  mfc1    $a1, $f4
/* 01848 808FE788 0C01E107 */  jal     Math_SmoothScaleMaxF

/* 0184C 808FE78C 00000000 */  nop
/* 01850 808FE790 3C014220 */  lui     $at, 0x4220                ## $at = 42200000
/* 01854 808FE794 44816000 */  mtc1    $at, $f12                  ## $f12 = 40.00
/* 01858 808FE798 C6060028 */  lwc1    $f6, 0x0028($s0)           ## 00000028
/* 0185C 808FE79C 3C063DCC */  lui     $a2, 0x3DCC                ## $a2 = 3DCC0000
/* 01860 808FE7A0 3C07406C */  lui     $a3, 0x406C                ## $a3 = 406C0000
/* 01864 808FE7A4 460C3200 */  add.s   $f8, $f6, $f12
/* 01868 808FE7A8 34E7CCCC */  ori     $a3, $a3, 0xCCCC           ## $a3 = 406CCCCC
/* 0186C 808FE7AC 34C6CCCD */  ori     $a2, $a2, 0xCCCD           ## $a2 = 3DCCCCCD
/* 01870 808FE7B0 8FA40048 */  lw      $a0, 0x0048($sp)
/* 01874 808FE7B4 44054000 */  mfc1    $a1, $f8
/* 01878 808FE7B8 0C01E107 */  jal     Math_SmoothScaleMaxF

/* 0187C 808FE7BC 00000000 */  nop
/* 01880 808FE7C0 8E030398 */  lw      $v1, 0x0398($s0)           ## 00000398
/* 01884 808FE7C4 2401001E */  addiu   $at, $zero, 0x001E         ## $at = 0000001E
/* 01888 808FE7C8 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 0188C 808FE7CC 54610008 */  bnel    $v1, $at, .L808FE7F0
/* 01890 808FE7D0 2C610033 */  sltiu   $at, $v1, 0x0033
/* 01894 808FE7D4 0C00BE0A */  jal     Audio_PlayActorSound2

/* 01898 808FE7D8 240539D4 */  addiu   $a1, $zero, 0x39D4         ## $a1 = 000039D4
/* 0189C 808FE7DC 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 018A0 808FE7E0 0C00BE0A */  jal     Audio_PlayActorSound2

/* 018A4 808FE7E4 2405396D */  addiu   $a1, $zero, 0x396D         ## $a1 = 0000396D
/* 018A8 808FE7E8 8E030398 */  lw      $v1, 0x0398($s0)           ## 00000398
/* 018AC 808FE7EC 2C610033 */  sltiu   $at, $v1, 0x0033
.L808FE7F0:
/* 018B0 808FE7F0 10200002 */  beq     $at, $zero, .L808FE7FC
/* 018B4 808FE7F4 240D0001 */  addiu   $t5, $zero, 0x0001         ## $t5 = 00000001
/* 018B8 808FE7F8 A3AD008D */  sb      $t5, 0x008D($sp)
.L808FE7FC:
/* 018BC 808FE7FC 2C61003C */  sltiu   $at, $v1, 0x003C
/* 018C0 808FE800 14200403 */  bne     $at, $zero, .L808FF810
/* 018C4 808FE804 02202025 */  or      $a0, $s1, $zero            ## $a0 = 00000000
/* 018C8 808FE808 0C030129 */  jal     Gameplay_GetCamera
/* 018CC 808FE80C 00002825 */  or      $a1, $zero, $zero          ## $a1 = 00000000
/* 018D0 808FE810 8FA3004C */  lw      $v1, 0x004C($sp)
/* 018D4 808FE814 240D0011 */  addiu   $t5, $zero, 0x0011         ## $t5 = 00000011
/* 018D8 808FE818 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 018DC 808FE81C 8C6F0000 */  lw      $t7, 0x0000($v1)           ## 00000000
/* 018E0 808FE820 02202825 */  or      $a1, $s1, $zero            ## $a1 = 00000000
/* 018E4 808FE824 24060153 */  addiu   $a2, $zero, 0x0153         ## $a2 = 00000153
/* 018E8 808FE828 AC4F005C */  sw      $t7, 0x005C($v0)           ## 0000005C
/* 018EC 808FE82C 8C6E0004 */  lw      $t6, 0x0004($v1)           ## 00000004
/* 018F0 808FE830 00003825 */  or      $a3, $zero, $zero          ## $a3 = 00000000
/* 018F4 808FE834 AC4E0060 */  sw      $t6, 0x0060($v0)           ## 00000060
/* 018F8 808FE838 8C6F0008 */  lw      $t7, 0x0008($v1)           ## 00000008
/* 018FC 808FE83C 240E0002 */  addiu   $t6, $zero, 0x0002         ## $t6 = 00000002
/* 01900 808FE840 AC4F0064 */  sw      $t7, 0x0064($v0)           ## 00000064
/* 01904 808FE844 8C790000 */  lw      $t9, 0x0000($v1)           ## 00000000
/* 01908 808FE848 AC590074 */  sw      $t9, 0x0074($v0)           ## 00000074
/* 0190C 808FE84C 8C780004 */  lw      $t8, 0x0004($v1)           ## 00000004
/* 01910 808FE850 AC580078 */  sw      $t8, 0x0078($v0)           ## 00000078
/* 01914 808FE854 8C790008 */  lw      $t9, 0x0008($v1)           ## 00000008
/* 01918 808FE858 AC59007C */  sw      $t9, 0x007C($v0)           ## 0000007C
/* 0191C 808FE85C 8E0C03B0 */  lw      $t4, 0x03B0($s0)           ## 000003B0
/* 01920 808FE860 AC4C0050 */  sw      $t4, 0x0050($v0)           ## 00000050
/* 01924 808FE864 8E0B03B4 */  lw      $t3, 0x03B4($s0)           ## 000003B4
/* 01928 808FE868 AC4B0054 */  sw      $t3, 0x0054($v0)           ## 00000054
/* 0192C 808FE86C 8E0C03B8 */  lw      $t4, 0x03B8($s0)           ## 000003B8
/* 01930 808FE870 AC4C0058 */  sw      $t4, 0x0058($v0)           ## 00000058
/* 01934 808FE874 A60D039C */  sh      $t5, 0x039C($s0)           ## 0000039C
/* 01938 808FE878 AE000398 */  sw      $zero, 0x0398($s0)         ## 00000398
/* 0193C 808FE87C 0C23F442 */  jal     func_808FD108
/* 01940 808FE880 A20E0337 */  sb      $t6, 0x0337($s0)           ## 00000337
/* 01944 808FE884 8FA40050 */  lw      $a0, 0x0050($sp)
/* 01948 808FE888 0C0295BC */  jal     SkelAnime_Free
/* 0194C 808FE88C 02202825 */  or      $a1, $s1, $zero            ## $a1 = 00000000
/* 01950 808FE890 3C060602 */  lui     $a2, %hi(D_06025970)                ## $a2 = 06020000
/* 01954 808FE894 24C65970 */  addiu   $a2, $a2, %lo(D_06025970)           ## $a2 = 06025970
/* 01958 808FE898 02202025 */  or      $a0, $s1, $zero            ## $a0 = 00000000
/* 0195C 808FE89C 8FA50050 */  lw      $a1, 0x0050($sp)
/* 01960 808FE8A0 00003825 */  or      $a3, $zero, $zero          ## $a3 = 00000000
/* 01964 808FE8A4 AFA00010 */  sw      $zero, 0x0010($sp)
/* 01968 808FE8A8 AFA00014 */  sw      $zero, 0x0014($sp)
/* 0196C 808FE8AC 0C0291BE */  jal     SkelAnime_InitFlex
/* 01970 808FE8B0 AFA00018 */  sw      $zero, 0x0018($sp)
/* 01974 808FE8B4 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 01978 808FE8B8 02202825 */  or      $a1, $s1, $zero            ## $a1 = 00000000
/* 0197C 808FE8BC 2406017E */  addiu   $a2, $zero, 0x017E         ## $a2 = 0000017E
/* 01980 808FE8C0 0C23F442 */  jal     func_808FD108
/* 01984 808FE8C4 00003825 */  or      $a3, $zero, $zero          ## $a3 = 00000000
/* 01988 808FE8C8 02202025 */  or      $a0, $s1, $zero            ## $a0 = 00000000
/* 0198C 808FE8CC 02002825 */  or      $a1, $s0, $zero            ## $a1 = 00000000
/* 01990 808FE8D0 0C00B7D5 */  jal     func_8002DF54
/* 01994 808FE8D4 24060054 */  addiu   $a2, $zero, 0x0054         ## $a2 = 00000054
/* 01998 808FE8D8 240F0003 */  addiu   $t7, $zero, 0x0003         ## $t7 = 00000003
/* 0199C 808FE8DC 100003CC */  beq     $zero, $zero, .L808FF810
/* 019A0 808FE8E0 A20F0314 */  sb      $t7, 0x0314($s0)           ## 00000314
glabel L808FE8E4
/* 019A4 808FE8E4 24180006 */  addiu   $t8, $zero, 0x0006         ## $t8 = 00000006
/* 019A8 808FE8E8 A2180339 */  sb      $t8, 0x0339($s0)           ## 00000339
/* 019AC 808FE8EC 2604014C */  addiu   $a0, $s0, 0x014C           ## $a0 = 0000014C
/* 019B0 808FE8F0 AFA40050 */  sw      $a0, 0x0050($sp)
/* 019B4 808FE8F4 0C02927F */  jal     SkelAnime_FrameUpdateMatrix

/* 019B8 808FE8F8 AFA90088 */  sw      $t1, 0x0088($sp)
/* 019BC 808FE8FC 8FA90088 */  lw      $t1, 0x0088($sp)
/* 019C0 808FE900 3C0141A0 */  lui     $at, 0x41A0                ## $at = 41A00000
/* 019C4 808FE904 44811000 */  mtc1    $at, $f2                   ## $f2 = 20.00
/* 019C8 808FE908 3C014220 */  lui     $at, 0x4220                ## $at = 42200000
/* 019CC 808FE90C 44816000 */  mtc1    $at, $f12                  ## $f12 = 40.00
/* 019D0 808FE910 C52A0024 */  lwc1    $f10, 0x0024($t1)          ## 00000024
/* 019D4 808FE914 3C014120 */  lui     $at, 0x4120                ## $at = 41200000
/* 019D8 808FE918 44817000 */  mtc1    $at, $f14                  ## $f14 = 10.00
/* 019DC 808FE91C 460C5101 */  sub.s   $f4, $f10, $f12
/* 019E0 808FE920 3C0141F0 */  lui     $at, 0x41F0                ## $at = 41F00000
/* 019E4 808FE924 44818000 */  mtc1    $at, $f16                  ## $f16 = 30.00
/* 019E8 808FE928 3C014270 */  lui     $at, 0x4270                ## $at = 42700000
/* 019EC 808FE92C E60403A4 */  swc1    $f4, 0x03A4($s0)           ## 000003A4
/* 019F0 808FE930 C5260028 */  lwc1    $f6, 0x0028($t1)           ## 00000028
/* 019F4 808FE934 8E190398 */  lw      $t9, 0x0398($s0)           ## 00000398
/* 019F8 808FE938 3C050601 */  lui     $a1, %hi(D_06010380)                ## $a1 = 06010000
/* 019FC 808FE93C 460C3200 */  add.s   $f8, $f6, $f12
/* 01A00 808FE940 240B0012 */  addiu   $t3, $zero, 0x0012         ## $t3 = 00000012
/* 01A04 808FE944 24A50380 */  addiu   $a1, $a1, %lo(D_06010380)           ## $a1 = 06010380
/* 01A08 808FE948 24060000 */  addiu   $a2, $zero, 0x0000         ## $a2 = 00000000
/* 01A0C 808FE94C E60803A8 */  swc1    $f8, 0x03A8($s0)           ## 000003A8
/* 01A10 808FE950 C52A002C */  lwc1    $f10, 0x002C($t1)          ## 0000002C
/* 01A14 808FE954 46025100 */  add.s   $f4, $f10, $f2
/* 01A18 808FE958 E60403AC */  swc1    $f4, 0x03AC($s0)           ## 000003AC
/* 01A1C 808FE95C C5260024 */  lwc1    $f6, 0x0024($t1)           ## 00000024
/* 01A20 808FE960 44812000 */  mtc1    $at, $f4                   ## $f4 = 60.00
/* 01A24 808FE964 24010019 */  addiu   $at, $zero, 0x0019         ## $at = 00000019
/* 01A28 808FE968 E60603B0 */  swc1    $f6, 0x03B0($s0)           ## 000003B0
/* 01A2C 808FE96C C5280028 */  lwc1    $f8, 0x0028($t1)           ## 00000028
/* 01A30 808FE970 460E4280 */  add.s   $f10, $f8, $f14
/* 01A34 808FE974 46045180 */  add.s   $f6, $f10, $f4
/* 01A38 808FE978 46103201 */  sub.s   $f8, $f6, $f16
/* 01A3C 808FE97C E60803B4 */  swc1    $f8, 0x03B4($s0)           ## 000003B4
/* 01A40 808FE980 C52A002C */  lwc1    $f10, 0x002C($t1)          ## 0000002C
/* 01A44 808FE984 172103A2 */  bne     $t9, $at, .L808FF810
/* 01A48 808FE988 E60A03B8 */  swc1    $f10, 0x03B8($s0)          ## 000003B8
/* 01A4C 808FE98C A60B039C */  sh      $t3, 0x039C($s0)           ## 0000039C
/* 01A50 808FE990 AE000398 */  sw      $zero, 0x0398($s0)         ## 00000398
/* 01A54 808FE994 0C029490 */  jal     SkelAnime_ChangeAnimTransitionStop
/* 01A58 808FE998 8FA40050 */  lw      $a0, 0x0050($sp)
/* 01A5C 808FE99C 3C014248 */  lui     $at, 0x4248                ## $at = 42480000
/* 01A60 808FE9A0 44818000 */  mtc1    $at, $f16                  ## $f16 = 50.00
/* 01A64 808FE9A4 3C0143FA */  lui     $at, 0x43FA                ## $at = 43FA0000
/* 01A68 808FE9A8 44813000 */  mtc1    $at, $f6                   ## $f6 = 500.00
/* 01A6C 808FE9AC C6000024 */  lwc1    $f0, 0x0024($s0)           ## 00000024
/* 01A70 808FE9B0 44802000 */  mtc1    $zero, $f4                 ## $f4 = 0.00
/* 01A74 808FE9B4 3C0143AF */  lui     $at, 0x43AF                ## $at = 43AF0000
/* 01A78 808FE9B8 46060200 */  add.s   $f8, $f0, $f6
/* 01A7C 808FE9BC 44815000 */  mtc1    $at, $f10                  ## $f10 = 350.00
/* 01A80 808FE9C0 E6040168 */  swc1    $f4, 0x0168($s0)           ## 00000168
/* 01A84 808FE9C4 3C014270 */  lui     $at, 0x4270                ## $at = 42700000
/* 01A88 808FE9C8 460A4101 */  sub.s   $f4, $f8, $f10
/* 01A8C 808FE9CC C60C0028 */  lwc1    $f12, 0x0028($s0)          ## 00000028
/* 01A90 808FE9D0 44815000 */  mtc1    $at, $f10                  ## $f10 = 60.00
/* 01A94 808FE9D4 46100200 */  add.s   $f8, $f0, $f16
/* 01A98 808FE9D8 C602002C */  lwc1    $f2, 0x002C($s0)           ## 0000002C
/* 01A9C 808FE9DC 240C4000 */  addiu   $t4, $zero, 0x4000         ## $t4 = 00004000
/* 01AA0 808FE9E0 46102181 */  sub.s   $f6, $f4, $f16
/* 01AA4 808FE9E4 E60803B0 */  swc1    $f8, 0x03B0($s0)           ## 000003B0
/* 01AA8 808FE9E8 A60C0032 */  sh      $t4, 0x0032($s0)           ## 00000032
/* 01AAC 808FE9EC 460A6100 */  add.s   $f4, $f12, $f10
/* 01AB0 808FE9F0 E60603A4 */  swc1    $f6, 0x03A4($s0)           ## 000003A4
/* 01AB4 808FE9F4 E60C03A8 */  swc1    $f12, 0x03A8($s0)          ## 000003A8
/* 01AB8 808FE9F8 E60203AC */  swc1    $f2, 0x03AC($s0)           ## 000003AC
/* 01ABC 808FE9FC E60403B4 */  swc1    $f4, 0x03B4($s0)           ## 000003B4
/* 01AC0 808FEA00 10000383 */  beq     $zero, $zero, .L808FF810
/* 01AC4 808FEA04 E60203B8 */  swc1    $f2, 0x03B8($s0)           ## 000003B8
glabel L808FEA08
/* 01AC8 808FEA08 8E0E0398 */  lw      $t6, 0x0398($s0)           ## 00000398
/* 01ACC 808FEA0C 240D0006 */  addiu   $t5, $zero, 0x0006         ## $t5 = 00000006
/* 01AD0 808FEA10 2401001E */  addiu   $at, $zero, 0x001E         ## $at = 0000001E
/* 01AD4 808FEA14 15C10003 */  bne     $t6, $at, .L808FEA24
/* 01AD8 808FEA18 A20D0339 */  sb      $t5, 0x0339($s0)           ## 00000339
/* 01ADC 808FEA1C 0C03E803 */  jal     Audio_SetBGM

/* 01AE0 808FEA20 24040065 */  addiu   $a0, $zero, 0x0065         ## $a0 = 00000065
.L808FEA24:
/* 01AE4 808FEA24 3C073DCC */  lui     $a3, 0x3DCC                ## $a3 = 3DCC0000
/* 01AE8 808FEA28 34E7CCCD */  ori     $a3, $a3, 0xCCCD           ## $a3 = 3DCCCCCD
/* 01AEC 808FEA2C 2604030C */  addiu   $a0, $s0, 0x030C           ## $a0 = 0000030C
/* 01AF0 808FEA30 3C0540E0 */  lui     $a1, 0x40E0                ## $a1 = 40E00000
/* 01AF4 808FEA34 0C01E107 */  jal     Math_SmoothScaleMaxF

/* 01AF8 808FEA38 3C063F80 */  lui     $a2, 0x3F80                ## $a2 = 3F800000
/* 01AFC 808FEA3C 3C0143FA */  lui     $at, 0x43FA                ## $at = 43FA0000
/* 01B00 808FEA40 44814000 */  mtc1    $at, $f8                   ## $f8 = 500.00
/* 01B04 808FEA44 C6060024 */  lwc1    $f6, 0x0024($s0)           ## 00000024
/* 01B08 808FEA48 3C0143AF */  lui     $at, 0x43AF                ## $at = 43AF0000
/* 01B0C 808FEA4C 44812000 */  mtc1    $at, $f4                   ## $f4 = 350.00
/* 01B10 808FEA50 46083280 */  add.s   $f10, $f6, $f8
/* 01B14 808FEA54 3C063DCC */  lui     $a2, 0x3DCC                ## $a2 = 3DCC0000
/* 01B18 808FEA58 34C6CCCD */  ori     $a2, $a2, 0xCCCD           ## $a2 = 3DCCCCCD
/* 01B1C 808FEA5C 260403A4 */  addiu   $a0, $s0, 0x03A4           ## $a0 = 000003A4
/* 01B20 808FEA60 46045181 */  sub.s   $f6, $f10, $f4
/* 01B24 808FEA64 3C073F80 */  lui     $a3, 0x3F80                ## $a3 = 3F800000
/* 01B28 808FEA68 44053000 */  mfc1    $a1, $f6
/* 01B2C 808FEA6C 0C01E107 */  jal     Math_SmoothScaleMaxF

/* 01B30 808FEA70 00000000 */  nop
/* 01B34 808FEA74 3C063DCC */  lui     $a2, 0x3DCC                ## $a2 = 3DCC0000
/* 01B38 808FEA78 34C6CCCD */  ori     $a2, $a2, 0xCCCD           ## $a2 = 3DCCCCCD
/* 01B3C 808FEA7C 260403B0 */  addiu   $a0, $s0, 0x03B0           ## $a0 = 000003B0
/* 01B40 808FEA80 8E050024 */  lw      $a1, 0x0024($s0)           ## 00000024
/* 01B44 808FEA84 0C01E107 */  jal     Math_SmoothScaleMaxF

/* 01B48 808FEA88 3C073F80 */  lui     $a3, 0x3F80                ## $a3 = 3F800000
/* 01B4C 808FEA8C 3C063DCC */  lui     $a2, 0x3DCC                ## $a2 = 3DCC0000
/* 01B50 808FEA90 3C073CA3 */  lui     $a3, 0x3CA3                ## $a3 = 3CA30000
/* 01B54 808FEA94 34E7D70A */  ori     $a3, $a3, 0xD70A           ## $a3 = 3CA3D70A
/* 01B58 808FEA98 34C6CCCD */  ori     $a2, $a2, 0xCCCD           ## $a2 = 3DCCCCCD
/* 01B5C 808FEA9C 26040228 */  addiu   $a0, $s0, 0x0228           ## $a0 = 00000228
/* 01B60 808FEAA0 0C01E107 */  jal     Math_SmoothScaleMaxF

/* 01B64 808FEAA4 3C053F80 */  lui     $a1, 0x3F80                ## $a1 = 3F800000
/* 01B68 808FEAA8 8E0F0398 */  lw      $t7, 0x0398($s0)           ## 00000398
/* 01B6C 808FEAAC 24010041 */  addiu   $at, $zero, 0x0041         ## $at = 00000041
/* 01B70 808FEAB0 24180013 */  addiu   $t8, $zero, 0x0013         ## $t8 = 00000013
/* 01B74 808FEAB4 55E10357 */  bnel    $t7, $at, .L808FF814
/* 01B78 808FEAB8 3C014080 */  lui     $at, 0x4080                ## $at = 40800000
/* 01B7C 808FEABC A618039C */  sh      $t8, 0x039C($s0)           ## 0000039C
/* 01B80 808FEAC0 10000353 */  beq     $zero, $zero, .L808FF810
/* 01B84 808FEAC4 AE000398 */  sw      $zero, 0x0398($s0)         ## 00000398
glabel L808FEAC8
/* 01B88 808FEAC8 3C013F00 */  lui     $at, 0x3F00                ## $at = 3F000000
/* 01B8C 808FEACC 44815000 */  mtc1    $at, $f10                  ## $f10 = 0.50
/* 01B90 808FEAD0 C6080394 */  lwc1    $f8, 0x0394($s0)           ## 00000394
/* 01B94 808FEAD4 C6000060 */  lwc1    $f0, 0x0060($s0)           ## 00000060
/* 01B98 808FEAD8 3C013F80 */  lui     $at, 0x3F80                ## $at = 3F800000
/* 01B9C 808FEADC 460A4100 */  add.s   $f4, $f8, $f10
/* 01BA0 808FEAE0 C6060028 */  lwc1    $f6, 0x0028($s0)           ## 00000028
/* 01BA4 808FEAE4 44815000 */  mtc1    $at, $f10                  ## $f10 = 1.00
/* 01BA8 808FEAE8 8E0B0398 */  lw      $t3, 0x0398($s0)           ## 00000398
/* 01BAC 808FEAEC E6040394 */  swc1    $f4, 0x0394($s0)           ## 00000394
/* 01BB0 808FEAF0 46003200 */  add.s   $f8, $f6, $f0
/* 01BB4 808FEAF4 24190006 */  addiu   $t9, $zero, 0x0006         ## $t9 = 00000006
/* 01BB8 808FEAF8 2401000A */  addiu   $at, $zero, 0x000A         ## $at = 0000000A
/* 01BBC 808FEAFC 460A0101 */  sub.s   $f4, $f0, $f10
/* 01BC0 808FEB00 A2190339 */  sb      $t9, 0x0339($s0)           ## 00000339
/* 01BC4 808FEB04 E6080028 */  swc1    $f8, 0x0028($s0)           ## 00000028
/* 01BC8 808FEB08 15610341 */  bne     $t3, $at, .L808FF810
/* 01BCC 808FEB0C E6040060 */  swc1    $f4, 0x0060($s0)           ## 00000060
/* 01BD0 808FEB10 3C01437A */  lui     $at, 0x437A                ## $at = 437A0000
/* 01BD4 808FEB14 44814000 */  mtc1    $at, $f8                   ## $f8 = 250.00
/* 01BD8 808FEB18 C6060024 */  lwc1    $f6, 0x0024($s0)           ## 00000024
/* 01BDC 808FEB1C 240C0014 */  addiu   $t4, $zero, 0x0014         ## $t4 = 00000014
/* 01BE0 808FEB20 A60C039C */  sh      $t4, 0x039C($s0)           ## 0000039C
/* 01BE4 808FEB24 46083280 */  add.s   $f10, $f6, $f8
/* 01BE8 808FEB28 AE000398 */  sw      $zero, 0x0398($s0)         ## 00000398
/* 01BEC 808FEB2C 3C018091 */  lui     $at, %hi(D_8090DB8C)       ## $at = 80910000
/* 01BF0 808FEB30 44803000 */  mtc1    $zero, $f6                 ## $f6 = 0.00
/* 01BF4 808FEB34 E60A0024 */  swc1    $f10, 0x0024($s0)          ## 00000024
/* 01BF8 808FEB38 C424DB8C */  lwc1    $f4, %lo(D_8090DB8C)($at)
/* 01BFC 808FEB3C 02202025 */  or      $a0, $s1, $zero            ## $a0 = 00000000
/* 01C00 808FEB40 02002825 */  or      $a1, $s0, $zero            ## $a1 = 00000000
/* 01C04 808FEB44 24060053 */  addiu   $a2, $zero, 0x0053         ## $a2 = 00000053
/* 01C08 808FEB48 E6060394 */  swc1    $f6, 0x0394($s0)           ## 00000394
/* 01C0C 808FEB4C 0C00B7D5 */  jal     func_8002DF54
/* 01C10 808FEB50 E6040028 */  swc1    $f4, 0x0028($s0)           ## 00000028
/* 01C14 808FEB54 3C0140A0 */  lui     $at, 0x40A0                ## $at = 40A00000
/* 01C18 808FEB58 44814000 */  mtc1    $at, $f8                   ## $f8 = 5.00
/* 01C1C 808FEB5C 3C013F80 */  lui     $at, 0x3F80                ## $at = 3F800000
/* 01C20 808FEB60 44815000 */  mtc1    $at, $f10                  ## $f10 = 1.00
/* 01C24 808FEB64 E608030C */  swc1    $f8, 0x030C($s0)           ## 0000030C
/* 01C28 808FEB68 10000329 */  beq     $zero, $zero, .L808FF810
/* 01C2C 808FEB6C E60A0228 */  swc1    $f10, 0x0228($s0)          ## 00000228
glabel L808FEB70
/* 01C30 808FEB70 240D0006 */  addiu   $t5, $zero, 0x0006         ## $t5 = 00000006
/* 01C34 808FEB74 A20D0339 */  sb      $t5, 0x0339($s0)           ## 00000339
/* 01C38 808FEB78 2604014C */  addiu   $a0, $s0, 0x014C           ## $a0 = 0000014C
/* 01C3C 808FEB7C AFA40050 */  sw      $a0, 0x0050($sp)
/* 01C40 808FEB80 0C02927F */  jal     SkelAnime_FrameUpdateMatrix

/* 01C44 808FEB84 AFA90088 */  sw      $t1, 0x0088($sp)
/* 01C48 808FEB88 3C0141A0 */  lui     $at, 0x41A0                ## $at = 41A00000
/* 01C4C 808FEB8C 44811000 */  mtc1    $at, $f2                   ## $f2 = 20.00
/* 01C50 808FEB90 3C014220 */  lui     $at, 0x4220                ## $at = 42200000
/* 01C54 808FEB94 44816000 */  mtc1    $at, $f12                  ## $f12 = 40.00
/* 01C58 808FEB98 3C014120 */  lui     $at, 0x4120                ## $at = 41200000
/* 01C5C 808FEB9C 44817000 */  mtc1    $at, $f14                  ## $f14 = 10.00
/* 01C60 808FEBA0 3C0141F0 */  lui     $at, 0x41F0                ## $at = 41F00000
/* 01C64 808FEBA4 44818000 */  mtc1    $at, $f16                  ## $f16 = 30.00
/* 01C68 808FEBA8 3C01437A */  lui     $at, 0x437A                ## $at = 437A0000
/* 01C6C 808FEBAC 44819000 */  mtc1    $at, $f18                  ## $f18 = 250.00
/* 01C70 808FEBB0 C6000060 */  lwc1    $f0, 0x0060($s0)           ## 00000060
/* 01C74 808FEBB4 3C013F80 */  lui     $at, 0x3F80                ## $at = 3F800000
/* 01C78 808FEBB8 C6040028 */  lwc1    $f4, 0x0028($s0)           ## 00000028
/* 01C7C 808FEBBC 44814000 */  mtc1    $at, $f8                   ## $f8 = 1.00
/* 01C80 808FEBC0 8FA90088 */  lw      $t1, 0x0088($sp)
/* 01C84 808FEBC4 46002180 */  add.s   $f6, $f4, $f0
/* 01C88 808FEBC8 3C018091 */  lui     $at, %hi(D_8090DB90)       ## $at = 80910000
/* 01C8C 808FEBCC 240EC000 */  addiu   $t6, $zero, 0xC000         ## $t6 = FFFFC000
/* 01C90 808FEBD0 46080281 */  sub.s   $f10, $f0, $f8
/* 01C94 808FEBD4 E6060028 */  swc1    $f6, 0x0028($s0)           ## 00000028
/* 01C98 808FEBD8 3C050601 */  lui     $a1, %hi(D_06010380)                ## $a1 = 06010000
/* 01C9C 808FEBDC 460C9201 */  sub.s   $f8, $f18, $f12
/* 01CA0 808FEBE0 E60A0060 */  swc1    $f10, 0x0060($s0)          ## 00000060
/* 01CA4 808FEBE4 E5320024 */  swc1    $f18, 0x0024($t1)          ## 00000024
/* 01CA8 808FEBE8 C424DB90 */  lwc1    $f4, %lo(D_8090DB90)($at)
/* 01CAC 808FEBEC 3C01C385 */  lui     $at, 0xC385                ## $at = C3850000
/* 01CB0 808FEBF0 44813000 */  mtc1    $at, $f6                   ## $f6 = -266.00
/* 01CB4 808FEBF4 3C014348 */  lui     $at, 0x4348                ## $at = 43480000
/* 01CB8 808FEBF8 44815000 */  mtc1    $at, $f10                  ## $f10 = 200.00
/* 01CBC 808FEBFC E5240028 */  swc1    $f4, 0x0028($t1)           ## 00000028
/* 01CC0 808FEC00 A52E00B6 */  sh      $t6, 0x00B6($t1)           ## 000000B6
/* 01CC4 808FEC04 460A4101 */  sub.s   $f4, $f8, $f10
/* 01CC8 808FEC08 E526002C */  swc1    $f6, 0x002C($t1)           ## 0000002C
/* 01CCC 808FEC0C 3C0142C8 */  lui     $at, 0x42C8                ## $at = 42C80000
/* 01CD0 808FEC10 240F0015 */  addiu   $t7, $zero, 0x0015         ## $t7 = 00000015
/* 01CD4 808FEC14 E60403A4 */  swc1    $f4, 0x03A4($s0)           ## 000003A4
/* 01CD8 808FEC18 C5260028 */  lwc1    $f6, 0x0028($t1)           ## 00000028
/* 01CDC 808FEC1C 24A50380 */  addiu   $a1, $a1, %lo(D_06010380)           ## $a1 = 06010380
/* 01CE0 808FEC20 460C3200 */  add.s   $f8, $f6, $f12
/* 01CE4 808FEC24 46104281 */  sub.s   $f10, $f8, $f16
/* 01CE8 808FEC28 44814000 */  mtc1    $at, $f8                   ## $f8 = 100.00
/* 01CEC 808FEC2C 3C014270 */  lui     $at, 0x4270                ## $at = 42700000
/* 01CF0 808FEC30 E60A03A8 */  swc1    $f10, 0x03A8($s0)          ## 000003A8
/* 01CF4 808FEC34 C524002C */  lwc1    $f4, 0x002C($t1)           ## 0000002C
/* 01CF8 808FEC38 46022181 */  sub.s   $f6, $f4, $f2
/* 01CFC 808FEC3C 46083280 */  add.s   $f10, $f6, $f8
/* 01D00 808FEC40 E60A03AC */  swc1    $f10, 0x03AC($s0)          ## 000003AC
/* 01D04 808FEC44 C5240024 */  lwc1    $f4, 0x0024($t1)           ## 00000024
/* 01D08 808FEC48 44815000 */  mtc1    $at, $f10                  ## $f10 = 60.00
/* 01D0C 808FEC4C 3C018091 */  lui     $at, %hi(D_8090DB94)       ## $at = 80910000
/* 01D10 808FEC50 E60403B0 */  swc1    $f4, 0x03B0($s0)           ## 000003B0
/* 01D14 808FEC54 C5260028 */  lwc1    $f6, 0x0028($t1)           ## 00000028
/* 01D18 808FEC58 460E3200 */  add.s   $f8, $f6, $f14
/* 01D1C 808FEC5C 460A4100 */  add.s   $f4, $f8, $f10
/* 01D20 808FEC60 46022181 */  sub.s   $f6, $f4, $f2
/* 01D24 808FEC64 46103200 */  add.s   $f8, $f6, $f16
/* 01D28 808FEC68 C6060028 */  lwc1    $f6, 0x0028($s0)           ## 00000028
/* 01D2C 808FEC6C E60803B4 */  swc1    $f8, 0x03B4($s0)           ## 000003B4
/* 01D30 808FEC70 C52A002C */  lwc1    $f10, 0x002C($t1)          ## 0000002C
/* 01D34 808FEC74 E60A03B8 */  swc1    $f10, 0x03B8($s0)          ## 000003B8
/* 01D38 808FEC78 C420DB94 */  lwc1    $f0, %lo(D_8090DB94)($at)
/* 01D3C 808FEC7C 3C018091 */  lui     $at, %hi(D_8090DB98)       ## $at = 80910000
/* 01D40 808FEC80 C424DB98 */  lwc1    $f4, %lo(D_8090DB98)($at)
/* 01D44 808FEC84 4600303E */  c.le.s  $f6, $f0
/* 01D48 808FEC88 E60403BC */  swc1    $f4, 0x03BC($s0)           ## 000003BC
/* 01D4C 808FEC8C 450202E1 */  bc1fl   .L808FF814
/* 01D50 808FEC90 3C014080 */  lui     $at, 0x4080                ## $at = 40800000
/* 01D54 808FEC94 44801000 */  mtc1    $zero, $f2                 ## $f2 = 0.00
/* 01D58 808FEC98 E6000028 */  swc1    $f0, 0x0028($s0)           ## 00000028
/* 01D5C 808FEC9C A60F039C */  sh      $t7, 0x039C($s0)           ## 0000039C
/* 01D60 808FECA0 AE000398 */  sw      $zero, 0x0398($s0)         ## 00000398
/* 01D64 808FECA4 E60E0420 */  swc1    $f14, 0x0420($s0)          ## 00000420
/* 01D68 808FECA8 E6020060 */  swc1    $f2, 0x0060($s0)           ## 00000060
/* 01D6C 808FECAC 44061000 */  mfc1    $a2, $f2
/* 01D70 808FECB0 0C029490 */  jal     SkelAnime_ChangeAnimTransitionStop
/* 01D74 808FECB4 8FA40050 */  lw      $a0, 0x0050($sp)
/* 01D78 808FECB8 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 01D7C 808FECBC 02202825 */  or      $a1, $s1, $zero            ## $a1 = 00000000
/* 01D80 808FECC0 00003025 */  or      $a2, $zero, $zero          ## $a2 = 00000000
/* 01D84 808FECC4 0C23F535 */  jal     func_808FD4D4
/* 01D88 808FECC8 24070003 */  addiu   $a3, $zero, 0x0003         ## $a3 = 00000003
/* 01D8C 808FECCC 44806000 */  mtc1    $zero, $f12                ## $f12 = 0.00
/* 01D90 808FECD0 240500C8 */  addiu   $a1, $zero, 0x00C8         ## $a1 = 000000C8
/* 01D94 808FECD4 24060014 */  addiu   $a2, $zero, 0x0014         ## $a2 = 00000014
/* 01D98 808FECD8 0C02A7DB */  jal     func_800A9F6C
/* 01D9C 808FECDC 24070014 */  addiu   $a3, $zero, 0x0014         ## $a3 = 00000014
/* 01DA0 808FECE0 100002CC */  beq     $zero, $zero, .L808FF814
/* 01DA4 808FECE4 3C014080 */  lui     $at, 0x4080                ## $at = 40800000
glabel L808FECE8
/* 01DA8 808FECE8 24180006 */  addiu   $t8, $zero, 0x0006         ## $t8 = 00000006
/* 01DAC 808FECEC A2180339 */  sb      $t8, 0x0339($s0)           ## 00000339
/* 01DB0 808FECF0 0C02927F */  jal     SkelAnime_FrameUpdateMatrix

/* 01DB4 808FECF4 2604014C */  addiu   $a0, $s0, 0x014C           ## $a0 = 0000014C
/* 01DB8 808FECF8 3C040001 */  lui     $a0, 0x0001                ## $a0 = 00010000
/* 01DBC 808FECFC 00912021 */  addu    $a0, $a0, $s1
/* 01DC0 808FED00 8C841DE4 */  lw      $a0, 0x1DE4($a0)           ## 00011DE4
/* 01DC4 808FED04 000423C0 */  sll     $a0, $a0, 15
/* 01DC8 808FED08 00042400 */  sll     $a0, $a0, 16
/* 01DCC 808FED0C 0C01DE0D */  jal     Math_Coss
              ## coss?
/* 01DD0 808FED10 00042403 */  sra     $a0, $a0, 16
/* 01DD4 808FED14 C6080420 */  lwc1    $f8, 0x0420($s0)           ## 00000420
/* 01DD8 808FED18 26040420 */  addiu   $a0, $s0, 0x0420           ## $a0 = 00000420
/* 01DDC 808FED1C 3C053F80 */  lui     $a1, 0x3F80                ## $a1 = 3F800000
/* 01DE0 808FED20 46080282 */  mul.s   $f10, $f0, $f8
/* 01DE4 808FED24 3C063F40 */  lui     $a2, 0x3F40                ## $a2 = 3F400000
/* 01DE8 808FED28 0C01E123 */  jal     Math_SmoothDownscaleMaxF

/* 01DEC 808FED2C E60A041C */  swc1    $f10, 0x041C($s0)          ## 0000041C
/* 01DF0 808FED30 8E190398 */  lw      $t9, 0x0398($s0)           ## 00000398
/* 01DF4 808FED34 2401001E */  addiu   $at, $zero, 0x001E         ## $at = 0000001E
/* 01DF8 808FED38 172102B5 */  bne     $t9, $at, .L808FF810
/* 01DFC 808FED3C 3C014120 */  lui     $at, 0x4120                ## $at = 41200000
/* 01E00 808FED40 44817000 */  mtc1    $at, $f14                  ## $f14 = 10.00
/* 01E04 808FED44 240B0016 */  addiu   $t3, $zero, 0x0016         ## $t3 = 00000016
/* 01E08 808FED48 A60B039C */  sh      $t3, 0x039C($s0)           ## 0000039C
/* 01E0C 808FED4C E60E030C */  swc1    $f14, 0x030C($s0)          ## 0000030C
glabel L808FED50
/* 01E10 808FED50 8E0C0398 */  lw      $t4, 0x0398($s0)           ## 00000398
/* 01E14 808FED54 2604014C */  addiu   $a0, $s0, 0x014C           ## $a0 = 0000014C
/* 01E18 808FED58 240D0007 */  addiu   $t5, $zero, 0x0007         ## $t5 = 00000007
/* 01E1C 808FED5C 2D81003C */  sltiu   $at, $t4, 0x003C
/* 01E20 808FED60 50200003 */  beql    $at, $zero, .L808FED70
/* 01E24 808FED64 44809000 */  mtc1    $zero, $f18                ## $f18 = 0.00
/* 01E28 808FED68 A20D0339 */  sb      $t5, 0x0339($s0)           ## 00000339
/* 01E2C 808FED6C 44809000 */  mtc1    $zero, $f18                ## $f18 = 0.00
.L808FED70:
/* 01E30 808FED70 3C018091 */  lui     $at, %hi(D_8090DB9C)       ## $at = 80910000
/* 01E34 808FED74 C430DB9C */  lwc1    $f16, %lo(D_8090DB9C)($at)
/* 01E38 808FED78 E61203BC */  swc1    $f18, 0x03BC($s0)          ## 000003BC
/* 01E3C 808FED7C 0C02927F */  jal     SkelAnime_FrameUpdateMatrix

/* 01E40 808FED80 E6100028 */  swc1    $f16, 0x0028($s0)          ## 00000028
/* 01E44 808FED84 3C063DCC */  lui     $a2, 0x3DCC                ## $a2 = 3DCC0000
/* 01E48 808FED88 34C6CCCD */  ori     $a2, $a2, 0xCCCD           ## $a2 = 3DCCCCCD
/* 01E4C 808FED8C 2604030C */  addiu   $a0, $s0, 0x030C           ## $a0 = 0000030C
/* 01E50 808FED90 0C01E123 */  jal     Math_SmoothDownscaleMaxF

/* 01E54 808FED94 3C053F80 */  lui     $a1, 0x3F80                ## $a1 = 3F800000
/* 01E58 808FED98 8E030398 */  lw      $v1, 0x0398($s0)           ## 00000398
/* 01E5C 808FED9C 2C610033 */  sltiu   $at, $v1, 0x0033
/* 01E60 808FEDA0 14200009 */  bne     $at, $zero, .L808FEDC8
/* 01E64 808FEDA4 3C013F80 */  lui     $at, 0x3F80                ## $at = 3F800000
/* 01E68 808FEDA8 44810000 */  mtc1    $at, $f0                   ## $f0 = 1.00
/* 01E6C 808FEDAC 3C073CCC */  lui     $a3, 0x3CCC                ## $a3 = 3CCC0000
/* 01E70 808FEDB0 34E7CCCD */  ori     $a3, $a3, 0xCCCD           ## $a3 = 3CCCCCCD
/* 01E74 808FEDB4 44050000 */  mfc1    $a1, $f0
/* 01E78 808FEDB8 44060000 */  mfc1    $a2, $f0
/* 01E7C 808FEDBC 0C01E107 */  jal     Math_SmoothScaleMaxF

/* 01E80 808FEDC0 26040224 */  addiu   $a0, $s0, 0x0224           ## $a0 = 00000224
/* 01E84 808FEDC4 8E030398 */  lw      $v1, 0x0398($s0)           ## 00000398
.L808FEDC8:
/* 01E88 808FEDC8 2401003C */  addiu   $at, $zero, 0x003C         ## $at = 0000003C
/* 01E8C 808FEDCC 14610003 */  bne     $v1, $at, .L808FEDDC
/* 01E90 808FEDD0 240E0002 */  addiu   $t6, $zero, 0x0002         ## $t6 = 00000002
/* 01E94 808FEDD4 A20E0336 */  sb      $t6, 0x0336($s0)           ## 00000336
/* 01E98 808FEDD8 8E030398 */  lw      $v1, 0x0398($s0)           ## 00000398
.L808FEDDC:
/* 01E9C 808FEDDC 24010050 */  addiu   $at, $zero, 0x0050         ## $at = 00000050
/* 01EA0 808FEDE0 1461001E */  bne     $v1, $at, .L808FEE5C
/* 01EA4 808FEDE4 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 01EA8 808FEDE8 02202825 */  or      $a1, $s1, $zero            ## $a1 = 00000000
/* 01EAC 808FEDEC 24060153 */  addiu   $a2, $zero, 0x0153         ## $a2 = 00000153
/* 01EB0 808FEDF0 0C23F442 */  jal     func_808FD108
/* 01EB4 808FEDF4 00003825 */  or      $a3, $zero, $zero          ## $a3 = 00000000
/* 01EB8 808FEDF8 3C020602 */  lui     $v0, %hi(D_06021A90)                ## $v0 = 06020000
/* 01EBC 808FEDFC 24421A90 */  addiu   $v0, $v0, %lo(D_06021A90)           ## $v0 = 06021A90
/* 01EC0 808FEE00 00027900 */  sll     $t7, $v0,  4
/* 01EC4 808FEE04 000FC702 */  srl     $t8, $t7, 28
/* 01EC8 808FEE08 0018C880 */  sll     $t9, $t8,  2
/* 01ECC 808FEE0C 3C0B8016 */  lui     $t3, %hi(gSegments)
/* 01ED0 808FEE10 01795821 */  addu    $t3, $t3, $t9
/* 01ED4 808FEE14 3C0100FF */  lui     $at, 0x00FF                ## $at = 00FF0000
/* 01ED8 808FEE18 8D6B6FA8 */  lw      $t3, %lo(gSegments)($t3)
/* 01EDC 808FEE1C 3421FFFF */  ori     $at, $at, 0xFFFF           ## $at = 00FFFFFF
/* 01EE0 808FEE20 00416024 */  and     $t4, $v0, $at
/* 01EE4 808FEE24 3C018000 */  lui     $at, 0x8000                ## $at = 80000000
/* 01EE8 808FEE28 240F0028 */  addiu   $t7, $zero, 0x0028         ## $t7 = 00000028
/* 01EEC 808FEE2C 240D00B4 */  addiu   $t5, $zero, 0x00B4         ## $t5 = 000000B4
/* 01EF0 808FEE30 240E0080 */  addiu   $t6, $zero, 0x0080         ## $t6 = 00000080
/* 01EF4 808FEE34 016C3021 */  addu    $a2, $t3, $t4
/* 01EF8 808FEE38 00C13021 */  addu    $a2, $a2, $at
/* 01EFC 808FEE3C AFAE0014 */  sw      $t6, 0x0014($sp)
/* 01F00 808FEE40 AFAD0010 */  sw      $t5, 0x0010($sp)
/* 01F04 808FEE44 AFAF0018 */  sw      $t7, 0x0018($sp)
/* 01F08 808FEE48 02202025 */  or      $a0, $s1, $zero            ## $a0 = 00000000
/* 01F0C 808FEE4C 26251D4C */  addiu   $a1, $s1, 0x1D4C           ## $a1 = 00001D4C
/* 01F10 808FEE50 0C00B380 */  jal     TitleCard_InitBossName

/* 01F14 808FEE54 240700A0 */  addiu   $a3, $zero, 0x00A0         ## $a3 = 000000A0
/* 01F18 808FEE58 8E030398 */  lw      $v1, 0x0398($s0)           ## 00000398
.L808FEE5C:
/* 01F1C 808FEE5C 3C014220 */  lui     $at, 0x4220                ## $at = 42200000
/* 01F20 808FEE60 44816000 */  mtc1    $at, $f12                  ## $f12 = 40.00
/* 01F24 808FEE64 3C0143FA */  lui     $at, 0x43FA                ## $at = 43FA0000
/* 01F28 808FEE68 44813000 */  mtc1    $at, $f6                   ## $f6 = 500.00
/* 01F2C 808FEE6C C6000024 */  lwc1    $f0, 0x0024($s0)           ## 00000024
/* 01F30 808FEE70 3C0143AF */  lui     $at, 0x43AF                ## $at = 43AF0000
/* 01F34 808FEE74 44815000 */  mtc1    $at, $f10                  ## $f10 = 350.00
/* 01F38 808FEE78 46060200 */  add.s   $f8, $f0, $f6
/* 01F3C 808FEE7C 3C0142C8 */  lui     $at, 0x42C8                ## $at = 42C80000
/* 01F40 808FEE80 44813000 */  mtc1    $at, $f6                   ## $f6 = 100.00
/* 01F44 808FEE84 3C014270 */  lui     $at, 0x4270                ## $at = 42700000
/* 01F48 808FEE88 460A4101 */  sub.s   $f4, $f8, $f10
/* 01F4C 808FEE8C C60A0028 */  lwc1    $f10, 0x0028($s0)          ## 00000028
/* 01F50 808FEE90 C602002C */  lwc1    $f2, 0x002C($s0)           ## 0000002C
/* 01F54 808FEE94 E60003B0 */  swc1    $f0, 0x03B0($s0)           ## 000003B0
/* 01F58 808FEE98 46062200 */  add.s   $f8, $f4, $f6
/* 01F5C 808FEE9C 44813000 */  mtc1    $at, $f6                   ## $f6 = 60.00
/* 01F60 808FEEA0 C60401BC */  lwc1    $f4, 0x01BC($s0)           ## 000001BC
/* 01F64 808FEEA4 E60A03A8 */  swc1    $f10, 0x03A8($s0)          ## 000003A8
/* 01F68 808FEEA8 E60803A4 */  swc1    $f8, 0x03A4($s0)           ## 000003A4
/* 01F6C 808FEEAC 46062200 */  add.s   $f8, $f4, $f6
/* 01F70 808FEEB0 2C6100A7 */  sltiu   $at, $v1, 0x00A7
/* 01F74 808FEEB4 E60203AC */  swc1    $f2, 0x03AC($s0)           ## 000003AC
/* 01F78 808FEEB8 E60203B8 */  swc1    $f2, 0x03B8($s0)           ## 000003B8
/* 01F7C 808FEEBC 460C4281 */  sub.s   $f10, $f8, $f12
/* 01F80 808FEEC0 14200006 */  bne     $at, $zero, .L808FEEDC
/* 01F84 808FEEC4 E60A03B4 */  swc1    $f10, 0x03B4($s0)          ## 000003B4
/* 01F88 808FEEC8 2C6100AD */  sltiu   $at, $v1, 0x00AD
/* 01F8C 808FEECC 10200003 */  beq     $at, $zero, .L808FEEDC
/* 01F90 808FEED0 24180002 */  addiu   $t8, $zero, 0x0002         ## $t8 = 00000002
/* 01F94 808FEED4 A2180312 */  sb      $t8, 0x0312($s0)           ## 00000312
/* 01F98 808FEED8 8E030398 */  lw      $v1, 0x0398($s0)           ## 00000398
.L808FEEDC:
/* 01F9C 808FEEDC 2C6100BB */  sltiu   $at, $v1, 0x00BB
/* 01FA0 808FEEE0 14200005 */  bne     $at, $zero, .L808FEEF8
/* 01FA4 808FEEE4 2C6100C4 */  sltiu   $at, $v1, 0x00C4
/* 01FA8 808FEEE8 10200003 */  beq     $at, $zero, .L808FEEF8
/* 01FAC 808FEEEC 240A0001 */  addiu   $t2, $zero, 0x0001         ## $t2 = 00000001
/* 01FB0 808FEEF0 A20A0312 */  sb      $t2, 0x0312($s0)           ## 00000312
/* 01FB4 808FEEF4 8E030398 */  lw      $v1, 0x0398($s0)           ## 00000398
.L808FEEF8:
/* 01FB8 808FEEF8 2C6100CB */  sltiu   $at, $v1, 0x00CB
/* 01FBC 808FEEFC 14200005 */  bne     $at, $zero, .L808FEF14
/* 01FC0 808FEF00 2C6100D2 */  sltiu   $at, $v1, 0x00D2
/* 01FC4 808FEF04 10200003 */  beq     $at, $zero, .L808FEF14
/* 01FC8 808FEF08 24190002 */  addiu   $t9, $zero, 0x0002         ## $t9 = 00000002
/* 01FCC 808FEF0C A2190312 */  sb      $t9, 0x0312($s0)           ## 00000312
/* 01FD0 808FEF10 8E030398 */  lw      $v1, 0x0398($s0)           ## 00000398
.L808FEF14:
/* 01FD4 808FEF14 240100A6 */  addiu   $at, $zero, 0x00A6         ## $at = 000000A6
/* 01FD8 808FEF18 10610005 */  beq     $v1, $at, .L808FEF30
/* 01FDC 808FEF1C 240100B9 */  addiu   $at, $zero, 0x00B9         ## $at = 000000B9
/* 01FE0 808FEF20 10610003 */  beq     $v1, $at, .L808FEF30
/* 01FE4 808FEF24 240100C8 */  addiu   $at, $zero, 0x00C8         ## $at = 000000C8
/* 01FE8 808FEF28 54610007 */  bnel    $v1, $at, .L808FEF48
/* 01FEC 808FEF2C 240100D7 */  addiu   $at, $zero, 0x00D7         ## $at = 000000D7
.L808FEF30:
/* 01FF0 808FEF30 0C01E221 */  jal     func_80078884
/* 01FF4 808FEF34 24043997 */  addiu   $a0, $zero, 0x3997         ## $a0 = 00003997
/* 01FF8 808FEF38 0C01E221 */  jal     func_80078884
/* 01FFC 808FEF3C 2404398F */  addiu   $a0, $zero, 0x398F         ## $a0 = 0000398F
/* 02000 808FEF40 8E030398 */  lw      $v1, 0x0398($s0)           ## 00000398
/* 02004 808FEF44 240100D7 */  addiu   $at, $zero, 0x00D7         ## $at = 000000D7
.L808FEF48:
/* 02008 808FEF48 14610231 */  bne     $v1, $at, .L808FF810
/* 0200C 808FEF4C 240B0017 */  addiu   $t3, $zero, 0x0017         ## $t3 = 00000017
/* 02010 808FEF50 44802000 */  mtc1    $zero, $f4                 ## $f4 = 0.00
/* 02014 808FEF54 A60B039C */  sh      $t3, 0x039C($s0)           ## 0000039C
/* 02018 808FEF58 02202025 */  or      $a0, $s1, $zero            ## $a0 = 00000000
/* 0201C 808FEF5C 02002825 */  or      $a1, $s0, $zero            ## $a1 = 00000000
/* 02020 808FEF60 24060055 */  addiu   $a2, $zero, 0x0055         ## $a2 = 00000055
/* 02024 808FEF64 0C00B7D5 */  jal     func_8002DF54
/* 02028 808FEF68 E6040224 */  swc1    $f4, 0x0224($s0)           ## 00000224
/* 0202C 808FEF6C 10000229 */  beq     $zero, $zero, .L808FF814
/* 02030 808FEF70 3C014080 */  lui     $at, 0x4080                ## $at = 40800000
glabel L808FEF74
/* 02034 808FEF74 2604014C */  addiu   $a0, $s0, 0x014C           ## $a0 = 0000014C
/* 02038 808FEF78 0C02927F */  jal     SkelAnime_FrameUpdateMatrix

/* 0203C 808FEF7C AFA90088 */  sw      $t1, 0x0088($sp)
/* 02040 808FEF80 8E030398 */  lw      $v1, 0x0398($s0)           ## 00000398
/* 02044 808FEF84 8FA90088 */  lw      $t1, 0x0088($sp)
/* 02048 808FEF88 24043997 */  addiu   $a0, $zero, 0x3997         ## $a0 = 00003997
/* 0204C 808FEF8C 2C6100DF */  sltiu   $at, $v1, 0x00DF
/* 02050 808FEF90 14200005 */  bne     $at, $zero, .L808FEFA8
/* 02054 808FEF94 2C6100E8 */  sltiu   $at, $v1, 0x00E8
/* 02058 808FEF98 10200003 */  beq     $at, $zero, .L808FEFA8
/* 0205C 808FEF9C 240C0002 */  addiu   $t4, $zero, 0x0002         ## $t4 = 00000002
/* 02060 808FEFA0 A20C0312 */  sb      $t4, 0x0312($s0)           ## 00000312
/* 02064 808FEFA4 8E030398 */  lw      $v1, 0x0398($s0)           ## 00000398
.L808FEFA8:
/* 02068 808FEFA8 240100DE */  addiu   $at, $zero, 0x00DE         ## $at = 000000DE
/* 0206C 808FEFAC 54610008 */  bnel    $v1, $at, .L808FEFD0
/* 02070 808FEFB0 3C014000 */  lui     $at, 0x4000                ## $at = 40000000
/* 02074 808FEFB4 0C01E221 */  jal     func_80078884
/* 02078 808FEFB8 AFA90088 */  sw      $t1, 0x0088($sp)
/* 0207C 808FEFBC 0C01E221 */  jal     func_80078884
/* 02080 808FEFC0 2404398F */  addiu   $a0, $zero, 0x398F         ## $a0 = 0000398F
/* 02084 808FEFC4 8FA90088 */  lw      $t1, 0x0088($sp)
/* 02088 808FEFC8 8E030398 */  lw      $v1, 0x0398($s0)           ## 00000398
/* 0208C 808FEFCC 3C014000 */  lui     $at, 0x4000                ## $at = 40000000
.L808FEFD0:
/* 02090 808FEFD0 44810000 */  mtc1    $at, $f0                   ## $f0 = 2.00
/* 02094 808FEFD4 3C0141A0 */  lui     $at, 0x41A0                ## $at = 41A00000
/* 02098 808FEFD8 44811000 */  mtc1    $at, $f2                   ## $f2 = 20.00
/* 0209C 808FEFDC 3C014220 */  lui     $at, 0x4220                ## $at = 42200000
/* 020A0 808FEFE0 44816000 */  mtc1    $at, $f12                  ## $f12 = 40.00
/* 020A4 808FEFE4 C5260024 */  lwc1    $f6, 0x0024($t1)           ## 00000024
/* 020A8 808FEFE8 3C014120 */  lui     $at, 0x4120                ## $at = 41200000
/* 020AC 808FEFEC 44817000 */  mtc1    $at, $f14                  ## $f14 = 10.00
/* 020B0 808FEFF0 460C3201 */  sub.s   $f8, $f6, $f12
/* 020B4 808FEFF4 3C0140C0 */  lui     $at, 0x40C0                ## $at = 40C00000
/* 020B8 808FEFF8 44815000 */  mtc1    $at, $f10                  ## $f10 = 6.00
/* 020BC 808FEFFC 3C0140E0 */  lui     $at, 0x40E0                ## $at = 40E00000
/* 020C0 808FF000 24041808 */  addiu   $a0, $zero, 0x1808         ## $a0 = 00001808
/* 020C4 808FF004 460A4100 */  add.s   $f4, $f8, $f10
/* 020C8 808FF008 E60403A4 */  swc1    $f4, 0x03A4($s0)           ## 000003A4
/* 020CC 808FF00C C5260028 */  lwc1    $f6, 0x0028($t1)           ## 00000028
/* 020D0 808FF010 460C3200 */  add.s   $f8, $f6, $f12
/* 020D4 808FF014 44813000 */  mtc1    $at, $f6                   ## $f6 = 7.00
/* 020D8 808FF018 3C014270 */  lui     $at, 0x4270                ## $at = 42700000
/* 020DC 808FF01C E60803A8 */  swc1    $f8, 0x03A8($s0)           ## 000003A8
/* 020E0 808FF020 C52A002C */  lwc1    $f10, 0x002C($t1)          ## 0000002C
/* 020E4 808FF024 46025100 */  add.s   $f4, $f10, $f2
/* 020E8 808FF028 46062201 */  sub.s   $f8, $f4, $f6
/* 020EC 808FF02C E60803AC */  swc1    $f8, 0x03AC($s0)           ## 000003AC
/* 020F0 808FF030 C52A0024 */  lwc1    $f10, 0x0024($t1)          ## 00000024
/* 020F4 808FF034 44814000 */  mtc1    $at, $f8                   ## $f8 = 60.00
/* 020F8 808FF038 240100E4 */  addiu   $at, $zero, 0x00E4         ## $at = 000000E4
/* 020FC 808FF03C E60A03B0 */  swc1    $f10, 0x03B0($s0)          ## 000003B0
/* 02100 808FF040 C5240028 */  lwc1    $f4, 0x0028($t1)           ## 00000028
/* 02104 808FF044 460E2180 */  add.s   $f6, $f4, $f14
/* 02108 808FF048 46083280 */  add.s   $f10, $f6, $f8
/* 0210C 808FF04C 46025101 */  sub.s   $f4, $f10, $f2
/* 02110 808FF050 46002181 */  sub.s   $f6, $f4, $f0
/* 02114 808FF054 E60603B4 */  swc1    $f6, 0x03B4($s0)           ## 000003B4
/* 02118 808FF058 C528002C */  lwc1    $f8, 0x002C($t1)           ## 0000002C
/* 0211C 808FF05C 1461000E */  bne     $v1, $at, .L808FF098
/* 02120 808FF060 E60803B8 */  swc1    $f8, 0x03B8($s0)           ## 000003B8
/* 02124 808FF064 0C01E221 */  jal     func_80078884
/* 02128 808FF068 AFA90088 */  sw      $t1, 0x0088($sp)
/* 0212C 808FF06C 02202025 */  or      $a0, $s1, $zero            ## $a0 = 00000000
/* 02130 808FF070 02002825 */  or      $a1, $s0, $zero            ## $a1 = 00000000
/* 02134 808FF074 0C00B7D5 */  jal     func_8002DF54
/* 02138 808FF078 24060056 */  addiu   $a2, $zero, 0x0056         ## $a2 = 00000056
/* 0213C 808FF07C 44806000 */  mtc1    $zero, $f12                ## $f12 = 0.00
/* 02140 808FF080 240500FF */  addiu   $a1, $zero, 0x00FF         ## $a1 = 000000FF
/* 02144 808FF084 2406000A */  addiu   $a2, $zero, 0x000A         ## $a2 = 0000000A
/* 02148 808FF088 0C02A7DB */  jal     func_800A9F6C
/* 0214C 808FF08C 24070032 */  addiu   $a3, $zero, 0x0032         ## $a3 = 00000032
/* 02150 808FF090 8FA90088 */  lw      $t1, 0x0088($sp)
/* 02154 808FF094 8E030398 */  lw      $v1, 0x0398($s0)           ## 00000398
.L808FF098:
/* 02158 808FF098 2C6100E5 */  sltiu   $at, $v1, 0x00E5
/* 0215C 808FF09C 142001DC */  bne     $at, $zero, .L808FF810
/* 02160 808FF0A0 240A0001 */  addiu   $t2, $zero, 0x0001         ## $t2 = 00000001
/* 02164 808FF0A4 3C010001 */  lui     $at, 0x0001                ## $at = 00010000
/* 02168 808FF0A8 00310821 */  addu    $at, $at, $s1
/* 0216C 808FF0AC A02A0B05 */  sb      $t2, 0x0B05($at)           ## 00010B05
/* 02170 808FF0B0 3C010001 */  lui     $at, 0x0001                ## $at = 00010000
/* 02174 808FF0B4 02214021 */  addu    $t0, $s1, $at
/* 02178 808FF0B8 240200FF */  addiu   $v0, $zero, 0x00FF         ## $v0 = 000000FF
/* 0217C 808FF0BC 240E0064 */  addiu   $t6, $zero, 0x0064         ## $t6 = 00000064
/* 02180 808FF0C0 A1020B08 */  sb      $v0, 0x0B08($t0)           ## 00000B08
/* 02184 808FF0C4 A1020B07 */  sb      $v0, 0x0B07($t0)           ## 00000B07
/* 02188 808FF0C8 A1020B06 */  sb      $v0, 0x0B06($t0)           ## 00000B06
/* 0218C 808FF0CC A10E0B09 */  sb      $t6, 0x0B09($t0)           ## 00000B09
/* 02190 808FF0D0 8E0F0398 */  lw      $t7, 0x0398($s0)           ## 00000398
/* 02194 808FF0D4 240100EA */  addiu   $at, $zero, 0x00EA         ## $at = 000000EA
/* 02198 808FF0D8 24060018 */  addiu   $a2, $zero, 0x0018         ## $a2 = 00000018
/* 0219C 808FF0DC 15E101CC */  bne     $t7, $at, .L808FF810
/* 021A0 808FF0E0 3C010001 */  lui     $at, 0x0001                ## $at = 00010000
/* 021A4 808FF0E4 00310821 */  addu    $at, $at, $s1
/* 021A8 808FF0E8 A0200B05 */  sb      $zero, 0x0B05($at)         ## 00010B05
/* 021AC 808FF0EC A606039C */  sh      $a2, 0x039C($s0)           ## 0000039C
/* 021B0 808FF0F0 AE000398 */  sw      $zero, 0x0398($s0)         ## 00000398
/* 021B4 808FF0F4 8D390024 */  lw      $t9, 0x0024($t1)           ## 00000024
/* 021B8 808FF0F8 27A50068 */  addiu   $a1, $sp, 0x0068           ## $a1 = FFFFFFD8
/* 021BC 808FF0FC 3C014270 */  lui     $at, 0x4270                ## $at = 42700000
/* 021C0 808FF100 ACB90000 */  sw      $t9, 0x0000($a1)           ## FFFFFFD8
/* 021C4 808FF104 8D380028 */  lw      $t8, 0x0028($t1)           ## 00000028
/* 021C8 808FF108 44812000 */  mtc1    $at, $f4                   ## $f4 = 60.00
/* 021CC 808FF10C 02202025 */  or      $a0, $s1, $zero            ## $a0 = 00000000
/* 021D0 808FF110 ACB80004 */  sw      $t8, 0x0004($a1)           ## FFFFFFDC
/* 021D4 808FF114 8D39002C */  lw      $t9, 0x002C($t1)           ## 0000002C
/* 021D8 808FF118 ACB90008 */  sw      $t9, 0x0008($a1)           ## FFFFFFE0
/* 021DC 808FF11C C7AA006C */  lwc1    $f10, 0x006C($sp)
/* 021E0 808FF120 46045180 */  add.s   $f6, $f10, $f4
/* 021E4 808FF124 0C23F484 */  jal     func_808FD210
/* 021E8 808FF128 E7A6006C */  swc1    $f6, 0x006C($sp)
/* 021EC 808FF12C 44804000 */  mtc1    $zero, $f8                 ## $f8 = 0.00
/* 021F0 808FF130 3C010001 */  lui     $at, 0x0001                ## $at = 00010000
/* 021F4 808FF134 00310821 */  addu    $at, $at, $s1
/* 021F8 808FF138 E4280AFC */  swc1    $f8, 0x0AFC($at)           ## 00010AFC
/* 021FC 808FF13C 3C010001 */  lui     $at, 0x0001                ## $at = 00010000
/* 02200 808FF140 00310821 */  addu    $at, $at, $s1
/* 02204 808FF144 A0200AE2 */  sb      $zero, 0x0AE2($at)         ## 00010AE2
/* 02208 808FF148 100001B1 */  beq     $zero, $zero, .L808FF810
/* 0220C 808FF14C A2000339 */  sb      $zero, 0x0339($s0)         ## 00000339
glabel L808FF150
/* 02210 808FF150 0C02927F */  jal     SkelAnime_FrameUpdateMatrix

/* 02214 808FF154 2604014C */  addiu   $a0, $s0, 0x014C           ## $a0 = 0000014C
/* 02218 808FF158 3C020001 */  lui     $v0, 0x0001                ## $v0 = 00010000
/* 0221C 808FF15C 00511021 */  addu    $v0, $v0, $s1
/* 02220 808FF160 8C421E10 */  lw      $v0, 0x1E10($v0)           ## 00011E10
/* 02224 808FF164 3C0141F0 */  lui     $at, 0x41F0                ## $at = 41F00000
/* 02228 808FF168 44818000 */  mtc1    $at, $f16                  ## $f16 = 30.00
/* 0222C 808FF16C 8C4C0004 */  lw      $t4, 0x0004($v0)           ## 00010004
/* 02230 808FF170 3C01428C */  lui     $at, 0x428C                ## $at = 428C0000
/* 02234 808FF174 44812000 */  mtc1    $at, $f4                   ## $f4 = 70.00
/* 02238 808FF178 AE0C03B0 */  sw      $t4, 0x03B0($s0)           ## 000003B0
/* 0223C 808FF17C 8C4B0008 */  lw      $t3, 0x0008($v0)           ## 00010008
/* 02240 808FF180 8E030398 */  lw      $v1, 0x0398($s0)           ## 00000398
/* 02244 808FF184 AE0B03B4 */  sw      $t3, 0x03B4($s0)           ## 000003B4
/* 02248 808FF188 8C4C000C */  lw      $t4, 0x000C($v0)           ## 0001000C
/* 0224C 808FF18C 306D0003 */  andi    $t5, $v1, 0x0003           ## $t5 = 00000000
/* 02250 808FF190 AE0C03B8 */  sw      $t4, 0x03B8($s0)           ## 000003B8
/* 02254 808FF194 C44A0004 */  lwc1    $f10, 0x0004($v0)          ## 00010004
/* 02258 808FF198 46045180 */  add.s   $f6, $f10, $f4
/* 0225C 808FF19C E60603A4 */  swc1    $f6, 0x03A4($s0)           ## 000003A4
/* 02260 808FF1A0 C4480008 */  lwc1    $f8, 0x0008($v0)           ## 00010008
/* 02264 808FF1A4 44813000 */  mtc1    $at, $f6                   ## $f6 = 70.00
/* 02268 808FF1A8 46104281 */  sub.s   $f10, $f8, $f16
/* 0226C 808FF1AC E60A03A8 */  swc1    $f10, 0x03A8($s0)          ## 000003A8
/* 02270 808FF1B0 C444000C */  lwc1    $f4, 0x000C($v0)           ## 0001000C
/* 02274 808FF1B4 46062200 */  add.s   $f8, $f4, $f6
/* 02278 808FF1B8 15A00004 */  bne     $t5, $zero, .L808FF1CC
/* 0227C 808FF1BC E60803AC */  swc1    $f8, 0x03AC($s0)           ## 000003AC
/* 02280 808FF1C0 0C01E221 */  jal     func_80078884
/* 02284 808FF1C4 24041801 */  addiu   $a0, $zero, 0x1801         ## $a0 = 00001801
/* 02288 808FF1C8 8E030398 */  lw      $v1, 0x0398($s0)           ## 00000398
.L808FF1CC:
/* 0228C 808FF1CC 24010019 */  addiu   $at, $zero, 0x0019         ## $at = 00000019
/* 02290 808FF1D0 1461018F */  bne     $v1, $at, .L808FF810
/* 02294 808FF1D4 02202025 */  or      $a0, $s1, $zero            ## $a0 = 00000000
/* 02298 808FF1D8 02002825 */  or      $a1, $s0, $zero            ## $a1 = 00000000
/* 0229C 808FF1DC 0C00B7D5 */  jal     func_8002DF54
/* 022A0 808FF1E0 24060057 */  addiu   $a2, $zero, 0x0057         ## $a2 = 00000057
/* 022A4 808FF1E4 240E0019 */  addiu   $t6, $zero, 0x0019         ## $t6 = 00000019
/* 022A8 808FF1E8 A60E039C */  sh      $t6, 0x039C($s0)           ## 0000039C
/* 022AC 808FF1EC 10000188 */  beq     $zero, $zero, .L808FF810
/* 022B0 808FF1F0 AE000398 */  sw      $zero, 0x0398($s0)         ## 00000398
glabel L808FF1F4
/* 022B4 808FF1F4 2604014C */  addiu   $a0, $s0, 0x014C           ## $a0 = 0000014C
/* 022B8 808FF1F8 0C02927F */  jal     SkelAnime_FrameUpdateMatrix

/* 022BC 808FF1FC AFA90088 */  sw      $t1, 0x0088($sp)
/* 022C0 808FF200 3C0141A0 */  lui     $at, 0x41A0                ## $at = 41A00000
/* 022C4 808FF204 44811000 */  mtc1    $at, $f2                   ## $f2 = 20.00
/* 022C8 808FF208 8FA90088 */  lw      $t1, 0x0088($sp)
/* 022CC 808FF20C 3C014220 */  lui     $at, 0x4220                ## $at = 42200000
/* 022D0 808FF210 44816000 */  mtc1    $at, $f12                  ## $f12 = 40.00
/* 022D4 808FF214 C52A0024 */  lwc1    $f10, 0x0024($t1)          ## 00000024
/* 022D8 808FF218 3C014120 */  lui     $at, 0x4120                ## $at = 41200000
/* 022DC 808FF21C 44817000 */  mtc1    $at, $f14                  ## $f14 = 10.00
/* 022E0 808FF220 460C5101 */  sub.s   $f4, $f10, $f12
/* 022E4 808FF224 3C0142A0 */  lui     $at, 0x42A0                ## $at = 42A00000
/* 022E8 808FF228 44813000 */  mtc1    $at, $f6                   ## $f6 = 80.00
/* 022EC 808FF22C 3C014270 */  lui     $at, 0x4270                ## $at = 42700000
/* 022F0 808FF230 8E0F0398 */  lw      $t7, 0x0398($s0)           ## 00000398
/* 022F4 808FF234 46062200 */  add.s   $f8, $f4, $f6
/* 022F8 808FF238 3C020001 */  lui     $v0, 0x0001                ## $v0 = 00010000
/* 022FC 808FF23C 3C038091 */  lui     $v1, %hi(D_8090EB2C)       ## $v1 = 80910000
/* 02300 808FF240 00511021 */  addu    $v0, $v0, $s1
/* 02304 808FF244 E60803A4 */  swc1    $f8, 0x03A4($s0)           ## 000003A4
/* 02308 808FF248 C52A0028 */  lwc1    $f10, 0x0028($t1)          ## 00000028
/* 0230C 808FF24C 460C5100 */  add.s   $f4, $f10, $f12
/* 02310 808FF250 460E2180 */  add.s   $f6, $f4, $f14
/* 02314 808FF254 E60603A8 */  swc1    $f6, 0x03A8($s0)           ## 000003A8
/* 02318 808FF258 C528002C */  lwc1    $f8, 0x002C($t1)           ## 0000002C
/* 0231C 808FF25C 46024280 */  add.s   $f10, $f8, $f2
/* 02320 808FF260 460E5100 */  add.s   $f4, $f10, $f14
/* 02324 808FF264 E60403AC */  swc1    $f4, 0x03AC($s0)           ## 000003AC
/* 02328 808FF268 C5260024 */  lwc1    $f6, 0x0024($t1)           ## 00000024
/* 0232C 808FF26C 46023201 */  sub.s   $f8, $f6, $f2
/* 02330 808FF270 44813000 */  mtc1    $at, $f6                   ## $f6 = 60.00
/* 02334 808FF274 3C014040 */  lui     $at, 0x4040                ## $at = 40400000
/* 02338 808FF278 E60803B0 */  swc1    $f8, 0x03B0($s0)           ## 000003B0
/* 0233C 808FF27C C52A0028 */  lwc1    $f10, 0x0028($t1)          ## 00000028
/* 02340 808FF280 460E5100 */  add.s   $f4, $f10, $f14
/* 02344 808FF284 46062200 */  add.s   $f8, $f4, $f6
/* 02348 808FF288 44812000 */  mtc1    $at, $f4                   ## $f4 = 3.00
/* 0234C 808FF28C 2401000A */  addiu   $at, $zero, 0x000A         ## $at = 0000000A
/* 02350 808FF290 46024281 */  sub.s   $f10, $f8, $f2
/* 02354 808FF294 46045181 */  sub.s   $f6, $f10, $f4
/* 02358 808FF298 E60603B4 */  swc1    $f6, 0x03B4($s0)           ## 000003B4
/* 0235C 808FF29C C528002C */  lwc1    $f8, 0x002C($t1)           ## 0000002C
/* 02360 808FF2A0 460C4281 */  sub.s   $f10, $f8, $f12
/* 02364 808FF2A4 460E5101 */  sub.s   $f4, $f10, $f14
/* 02368 808FF2A8 15E10159 */  bne     $t7, $at, .L808FF810
/* 0236C 808FF2AC E60403B8 */  swc1    $f4, 0x03B8($s0)           ## 000003B8
/* 02370 808FF2B0 8C421E10 */  lw      $v0, 0x1E10($v0)           ## 00011E10
/* 02374 808FF2B4 24180001 */  addiu   $t8, $zero, 0x0001         ## $t8 = 00000001
/* 02378 808FF2B8 2463EB2C */  addiu   $v1, $v1, %lo(D_8090EB2C)  ## $v1 = 8090EB2C
/* 0237C 808FF2BC A458002E */  sh      $t8, 0x002E($v0)           ## 0001002E
/* 02380 808FF2C0 8C790000 */  lw      $t9, 0x0000($v1)           ## 8090EB2C
/* 02384 808FF2C4 3C014248 */  lui     $at, 0x4248                ## $at = 42480000
/* 02388 808FF2C8 44818000 */  mtc1    $at, $f16                  ## $f16 = 50.00
/* 0238C 808FF2CC C7260024 */  lwc1    $f6, 0x0024($t9)           ## 00000024
/* 02390 808FF2D0 3C0143AF */  lui     $at, 0x43AF                ## $at = 43AF0000
/* 02394 808FF2D4 44800000 */  mtc1    $zero, $f0                 ## $f0 = 0.00
/* 02398 808FF2D8 46103200 */  add.s   $f8, $f6, $f16
/* 0239C 808FF2DC 44813000 */  mtc1    $at, $f6                   ## $f6 = 350.00
/* 023A0 808FF2E0 3C0141C8 */  lui     $at, 0x41C8                ## $at = 41C80000
/* 023A4 808FF2E4 240D001A */  addiu   $t5, $zero, 0x001A         ## $t5 = 0000001A
/* 023A8 808FF2E8 460E4280 */  add.s   $f10, $f8, $f14
/* 023AC 808FF2EC E44A0004 */  swc1    $f10, 0x0004($v0)          ## 00010004
/* 023B0 808FF2F0 8C6B0000 */  lw      $t3, 0x0000($v1)           ## 8090EB2C
/* 023B4 808FF2F4 C5640028 */  lwc1    $f4, 0x0028($t3)           ## 00000028
/* 023B8 808FF2F8 46062200 */  add.s   $f8, $f4, $f6
/* 023BC 808FF2FC 44812000 */  mtc1    $at, $f4                   ## $f4 = 25.00
/* 023C0 808FF300 3C01C1F0 */  lui     $at, 0xC1F0                ## $at = C1F00000
/* 023C4 808FF304 E4480008 */  swc1    $f8, 0x0008($v0)           ## 00010008
/* 023C8 808FF308 8C6C0000 */  lw      $t4, 0x0000($v1)           ## 8090EB2C
/* 023CC 808FF30C 44814000 */  mtc1    $at, $f8                   ## $f8 = -30.00
/* 023D0 808FF310 C58A002C */  lwc1    $f10, 0x002C($t4)          ## 0000002C
/* 023D4 808FF314 E4400010 */  swc1    $f0, 0x0010($v0)           ## 00010010
/* 023D8 808FF318 E4400018 */  swc1    $f0, 0x0018($v0)           ## 00010018
/* 023DC 808FF31C 46045181 */  sub.s   $f6, $f10, $f4
/* 023E0 808FF320 E4480014 */  swc1    $f8, 0x0014($v0)           ## 00010014
/* 023E4 808FF324 E446000C */  swc1    $f6, 0x000C($v0)           ## 0001000C
/* 023E8 808FF328 A60D039C */  sh      $t5, 0x039C($s0)           ## 0000039C
/* 023EC 808FF32C AE000398 */  sw      $zero, 0x0398($s0)         ## 00000398
glabel L808FF330
/* 023F0 808FF330 3C0141A0 */  lui     $at, 0x41A0                ## $at = 41A00000
/* 023F4 808FF334 44811000 */  mtc1    $at, $f2                   ## $f2 = 20.00
/* 023F8 808FF338 3C014120 */  lui     $at, 0x4120                ## $at = 41200000
/* 023FC 808FF33C 3C028091 */  lui     $v0, %hi(D_8090EB2C)       ## $v0 = 80910000
/* 02400 808FF340 44817000 */  mtc1    $at, $f14                  ## $f14 = 10.00
/* 02404 808FF344 2442EB2C */  addiu   $v0, $v0, %lo(D_8090EB2C)  ## $v0 = 8090EB2C
/* 02408 808FF348 8C4E0000 */  lw      $t6, 0x0000($v0)           ## 8090EB2C
/* 0240C 808FF34C 3C0141F0 */  lui     $at, 0x41F0                ## $at = 41F00000
/* 02410 808FF350 44818000 */  mtc1    $at, $f16                  ## $f16 = 30.00
/* 02414 808FF354 3C0142C8 */  lui     $at, 0x42C8                ## $at = 42C80000
/* 02418 808FF358 44812000 */  mtc1    $at, $f4                   ## $f4 = 100.00
/* 0241C 808FF35C C5CA0024 */  lwc1    $f10, 0x0024($t6)          ## 00000024
/* 02420 808FF360 3C0140A0 */  lui     $at, 0x40A0                ## $at = 40A00000
/* 02424 808FF364 8E030398 */  lw      $v1, 0x0398($s0)           ## 00000398
/* 02428 808FF368 46045180 */  add.s   $f6, $f10, $f4
/* 0242C 808FF36C 46103200 */  add.s   $f8, $f6, $f16
/* 02430 808FF370 E60803A4 */  swc1    $f8, 0x03A4($s0)           ## 000003A4
/* 02434 808FF374 8C4F0000 */  lw      $t7, 0x0000($v0)           ## 8090EB2C
/* 02438 808FF378 44814000 */  mtc1    $at, $f8                   ## $f8 = 5.00
/* 0243C 808FF37C 3C01BF00 */  lui     $at, 0xBF00                ## $at = BF000000
/* 02440 808FF380 C5EA0028 */  lwc1    $f10, 0x0028($t7)          ## 00000028
/* 02444 808FF384 240F001B */  addiu   $t7, $zero, 0x001B         ## $t7 = 0000001B
/* 02448 808FF388 460E5100 */  add.s   $f4, $f10, $f14
/* 0244C 808FF38C E60403A8 */  swc1    $f4, 0x03A8($s0)           ## 000003A8
/* 02450 808FF390 8C580000 */  lw      $t8, 0x0000($v0)           ## 8090EB2C
/* 02454 808FF394 C706002C */  lwc1    $f6, 0x002C($t8)           ## 0000002D
/* 02458 808FF398 46083280 */  add.s   $f10, $f6, $f8
/* 0245C 808FF39C E60A03AC */  swc1    $f10, 0x03AC($s0)          ## 000003AC
/* 02460 808FF3A0 8C590000 */  lw      $t9, 0x0000($v0)           ## 8090EB2C
/* 02464 808FF3A4 C7240024 */  lwc1    $f4, 0x0024($t9)           ## 00000024
/* 02468 808FF3A8 E60403B0 */  swc1    $f4, 0x03B0($s0)           ## 000003B0
/* 0246C 808FF3AC 8C4B0000 */  lw      $t3, 0x0000($v0)           ## 8090EB2C
/* 02470 808FF3B0 C5660028 */  lwc1    $f6, 0x0028($t3)           ## 00000028
/* 02474 808FF3B4 46103200 */  add.s   $f8, $f6, $f16
/* 02478 808FF3B8 44813000 */  mtc1    $at, $f6                   ## $f6 = -0.50
/* 0247C 808FF3BC 2401000D */  addiu   $at, $zero, 0x000D         ## $at = 0000000D
/* 02480 808FF3C0 E60803B4 */  swc1    $f8, 0x03B4($s0)           ## 000003B4
/* 02484 808FF3C4 8C4C0000 */  lw      $t4, 0x0000($v0)           ## 8090EB2C
/* 02488 808FF3C8 C58A002C */  lwc1    $f10, 0x002C($t4)          ## 0000002C
/* 0248C 808FF3CC E60603C4 */  swc1    $f6, 0x03C4($s0)           ## 000003C4
/* 02490 808FF3D0 46025101 */  sub.s   $f4, $f10, $f2
/* 02494 808FF3D4 14610005 */  bne     $v1, $at, .L808FF3EC
/* 02498 808FF3D8 E60403B8 */  swc1    $f4, 0x03B8($s0)           ## 000003B8
/* 0249C 808FF3DC 8C4E0000 */  lw      $t6, 0x0000($v0)           ## 8090EB2C
/* 024A0 808FF3E0 240D0006 */  addiu   $t5, $zero, 0x0006         ## $t5 = 00000006
/* 024A4 808FF3E4 A1CD03C8 */  sb      $t5, 0x03C8($t6)           ## 000003C8
/* 024A8 808FF3E8 8E030398 */  lw      $v1, 0x0398($s0)           ## 00000398
.L808FF3EC:
/* 024AC 808FF3EC 24010032 */  addiu   $at, $zero, 0x0032         ## $at = 00000032
/* 024B0 808FF3F0 54610108 */  bnel    $v1, $at, .L808FF814
/* 024B4 808FF3F4 3C014080 */  lui     $at, 0x4080                ## $at = 40800000
/* 024B8 808FF3F8 A60F039C */  sh      $t7, 0x039C($s0)           ## 0000039C
/* 024BC 808FF3FC 10000104 */  beq     $zero, $zero, .L808FF810
/* 024C0 808FF400 AE000398 */  sw      $zero, 0x0398($s0)         ## 00000398
glabel L808FF404
/* 024C4 808FF404 8E030398 */  lw      $v1, 0x0398($s0)           ## 00000398
/* 024C8 808FF408 44804000 */  mtc1    $zero, $f8                 ## $f8 = 0.00
/* 024CC 808FF40C 24010004 */  addiu   $at, $zero, 0x0004         ## $at = 00000004
/* 024D0 808FF410 14610008 */  bne     $v1, $at, .L808FF434
/* 024D4 808FF414 E60803C4 */  swc1    $f8, 0x03C4($s0)           ## 000003C4
/* 024D8 808FF418 02202025 */  or      $a0, $s1, $zero            ## $a0 = 00000000
/* 024DC 808FF41C 02002825 */  or      $a1, $s0, $zero            ## $a1 = 00000000
/* 024E0 808FF420 24060058 */  addiu   $a2, $zero, 0x0058         ## $a2 = 00000058
/* 024E4 808FF424 0C00B7D5 */  jal     func_8002DF54
/* 024E8 808FF428 AFA90088 */  sw      $t1, 0x0088($sp)
/* 024EC 808FF42C 8FA90088 */  lw      $t1, 0x0088($sp)
/* 024F0 808FF430 8E030398 */  lw      $v1, 0x0398($s0)           ## 00000398
.L808FF434:
/* 024F4 808FF434 3C0141A0 */  lui     $at, 0x41A0                ## $at = 41A00000
/* 024F8 808FF438 44811000 */  mtc1    $at, $f2                   ## $f2 = 20.00
/* 024FC 808FF43C C52A0024 */  lwc1    $f10, 0x0024($t1)          ## 00000024
/* 02500 808FF440 3C014248 */  lui     $at, 0x4248                ## $at = 42480000
/* 02504 808FF444 44818000 */  mtc1    $at, $f16                  ## $f16 = 50.00
/* 02508 808FF448 46025101 */  sub.s   $f4, $f10, $f2
/* 0250C 808FF44C 2401001A */  addiu   $at, $zero, 0x001A         ## $at = 0000001A
/* 02510 808FF450 E60403A4 */  swc1    $f4, 0x03A4($s0)           ## 000003A4
/* 02514 808FF454 C5260028 */  lwc1    $f6, 0x0028($t1)           ## 00000028
/* 02518 808FF458 46103200 */  add.s   $f8, $f6, $f16
/* 0251C 808FF45C E60803A8 */  swc1    $f8, 0x03A8($s0)           ## 000003A8
/* 02520 808FF460 C52A002C */  lwc1    $f10, 0x002C($t1)          ## 0000002C
/* 02524 808FF464 E60A03AC */  swc1    $f10, 0x03AC($s0)          ## 000003AC
/* 02528 808FF468 C5240024 */  lwc1    $f4, 0x0024($t1)           ## 00000024
/* 0252C 808FF46C E60403B0 */  swc1    $f4, 0x03B0($s0)           ## 000003B0
/* 02530 808FF470 C5260028 */  lwc1    $f6, 0x0028($t1)           ## 00000028
/* 02534 808FF474 46103200 */  add.s   $f8, $f6, $f16
/* 02538 808FF478 E60803B4 */  swc1    $f8, 0x03B4($s0)           ## 000003B4
/* 0253C 808FF47C C52A002C */  lwc1    $f10, 0x002C($t1)          ## 0000002C
/* 02540 808FF480 146100E3 */  bne     $v1, $at, .L808FF810
/* 02544 808FF484 E60A03B8 */  swc1    $f10, 0x03B8($s0)          ## 000003B8
/* 02548 808FF488 8E221C6C */  lw      $v0, 0x1C6C($s1)           ## 00001C6C
/* 0254C 808FF48C 3C038091 */  lui     $v1, %hi(D_8090EB30)       ## $v1 = 80910000
/* 02550 808FF490 2463EB30 */  addiu   $v1, $v1, %lo(D_8090EB30)  ## $v1 = 8090EB30
/* 02554 808FF494 1040001D */  beq     $v0, $zero, .L808FF50C
/* 02558 808FF498 AC620000 */  sw      $v0, 0x0000($v1)           ## 8090EB30
/* 0255C 808FF49C 24060018 */  addiu   $a2, $zero, 0x0018         ## $a2 = 00000018
.L808FF4A0:
/* 02560 808FF4A0 84590000 */  lh      $t9, 0x0000($v0)           ## 00000000
/* 02564 808FF4A4 14D90015 */  bne     $a2, $t9, .L808FF4FC
/* 02568 808FF4A8 3C0141F0 */  lui     $at, 0x41F0                ## $at = 41F00000
/* 0256C 808FF4AC 44818000 */  mtc1    $at, $f16                  ## $f16 = 30.00
/* 02570 808FF4B0 C4440024 */  lwc1    $f4, 0x0024($v0)           ## 00000024
/* 02574 808FF4B4 46102181 */  sub.s   $f6, $f4, $f16
/* 02578 808FF4B8 E60603A4 */  swc1    $f6, 0x03A4($s0)           ## 000003A4
/* 0257C 808FF4BC 8C6B0000 */  lw      $t3, 0x0000($v1)           ## 8090EB30
/* 02580 808FF4C0 C5680028 */  lwc1    $f8, 0x0028($t3)           ## 00000028
/* 02584 808FF4C4 E60803A8 */  swc1    $f8, 0x03A8($s0)           ## 000003A8
/* 02588 808FF4C8 8C6C0000 */  lw      $t4, 0x0000($v1)           ## 8090EB30
/* 0258C 808FF4CC C58A002C */  lwc1    $f10, 0x002C($t4)          ## 0000002C
/* 02590 808FF4D0 E60A03AC */  swc1    $f10, 0x03AC($s0)          ## 000003AC
/* 02594 808FF4D4 8C6D0000 */  lw      $t5, 0x0000($v1)           ## 8090EB30
/* 02598 808FF4D8 C5A40024 */  lwc1    $f4, 0x0024($t5)           ## 00000024
/* 0259C 808FF4DC E60403B0 */  swc1    $f4, 0x03B0($s0)           ## 000003B0
/* 025A0 808FF4E0 8C6E0000 */  lw      $t6, 0x0000($v1)           ## 8090EB30
/* 025A4 808FF4E4 C5C60028 */  lwc1    $f6, 0x0028($t6)           ## 00000028
/* 025A8 808FF4E8 E60603B4 */  swc1    $f6, 0x03B4($s0)           ## 000003B4
/* 025AC 808FF4EC 8C6F0000 */  lw      $t7, 0x0000($v1)           ## 8090EB30
/* 025B0 808FF4F0 C5E8002C */  lwc1    $f8, 0x002C($t7)           ## 0000002C
/* 025B4 808FF4F4 10000005 */  beq     $zero, $zero, .L808FF50C
/* 025B8 808FF4F8 E60803B8 */  swc1    $f8, 0x03B8($s0)           ## 000003B8
.L808FF4FC:
/* 025BC 808FF4FC 8C580124 */  lw      $t8, 0x0124($v0)           ## 00000124
/* 025C0 808FF500 03001025 */  or      $v0, $t8, $zero            ## $v0 = 00000000
/* 025C4 808FF504 1700FFE6 */  bne     $t8, $zero, .L808FF4A0
/* 025C8 808FF508 AC780000 */  sw      $t8, 0x0000($v1)           ## 8090EB30
.L808FF50C:
/* 025CC 808FF50C 2419001C */  addiu   $t9, $zero, 0x001C         ## $t9 = 0000001C
/* 025D0 808FF510 A619039C */  sh      $t9, 0x039C($s0)           ## 0000039C
/* 025D4 808FF514 100000BE */  beq     $zero, $zero, .L808FF810
/* 025D8 808FF518 AE000398 */  sw      $zero, 0x0398($s0)         ## 00000398
glabel L808FF51C
/* 025DC 808FF51C 8E0B0398 */  lw      $t3, 0x0398($s0)           ## 00000398
/* 025E0 808FF520 24010005 */  addiu   $at, $zero, 0x0005         ## $at = 00000005
/* 025E4 808FF524 02202025 */  or      $a0, $s1, $zero            ## $a0 = 00000000
/* 025E8 808FF528 15610003 */  bne     $t3, $at, .L808FF538
/* 025EC 808FF52C 240570D6 */  addiu   $a1, $zero, 0x70D6         ## $a1 = 000070D6
/* 025F0 808FF530 0C042DA0 */  jal     func_8010B680
/* 025F4 808FF534 00003025 */  or      $a2, $zero, $zero          ## $a2 = 00000000
.L808FF538:
/* 025F8 808FF538 3C038091 */  lui     $v1, %hi(D_8090EB30)       ## $v1 = 80910000
/* 025FC 808FF53C 2463EB30 */  addiu   $v1, $v1, %lo(D_8090EB30)  ## $v1 = 8090EB30
/* 02600 808FF540 8C620000 */  lw      $v0, 0x0000($v1)           ## 8090EB30
/* 02604 808FF544 3C0141A0 */  lui     $at, 0x41A0                ## $at = 41A00000
/* 02608 808FF548 504000B2 */  beql    $v0, $zero, .L808FF814
/* 0260C 808FF54C 3C014080 */  lui     $at, 0x4080                ## $at = 40800000
/* 02610 808FF550 44811000 */  mtc1    $at, $f2                   ## $f2 = 4.00
/* 02614 808FF554 C44A0024 */  lwc1    $f10, 0x0024($v0)          ## 00000024
/* 02618 808FF558 3C063E4C */  lui     $a2, 0x3E4C                ## $a2 = 3E4C0000
/* 0261C 808FF55C 34C6CCCD */  ori     $a2, $a2, 0xCCCD           ## $a2 = 3E4CCCCD
/* 02620 808FF560 46025101 */  sub.s   $f4, $f10, $f2
/* 02624 808FF564 260403B0 */  addiu   $a0, $s0, 0x03B0           ## $a0 = 000003B0
/* 02628 808FF568 3C074248 */  lui     $a3, 0x4248                ## $a3 = 42480000
/* 0262C 808FF56C E60403A4 */  swc1    $f4, 0x03A4($s0)           ## 000003A4
/* 02630 808FF570 8C6C0000 */  lw      $t4, 0x0000($v1)           ## 8090EB30
/* 02634 808FF574 C5860028 */  lwc1    $f6, 0x0028($t4)           ## 00000028
/* 02638 808FF578 E60603A8 */  swc1    $f6, 0x03A8($s0)           ## 000003A8
/* 0263C 808FF57C 8C6D0000 */  lw      $t5, 0x0000($v1)           ## 8090EB30
/* 02640 808FF580 C5A8002C */  lwc1    $f8, 0x002C($t5)           ## 0000002C
/* 02644 808FF584 E60803AC */  swc1    $f8, 0x03AC($s0)           ## 000003AC
/* 02648 808FF588 8C6E0000 */  lw      $t6, 0x0000($v1)           ## 8090EB30
/* 0264C 808FF58C 0C01E107 */  jal     Math_SmoothScaleMaxF

/* 02650 808FF590 8DC50024 */  lw      $a1, 0x0024($t6)           ## 00000024
/* 02654 808FF594 3C014248 */  lui     $at, 0x4248                ## $at = 42480000
/* 02658 808FF598 44818000 */  mtc1    $at, $f16                  ## $f16 = 50.00
/* 0265C 808FF59C 3C038091 */  lui     $v1, %hi(D_8090EB30)       ## $v1 = 80910000
/* 02660 808FF5A0 2463EB30 */  addiu   $v1, $v1, %lo(D_8090EB30)  ## $v1 = 8090EB30
/* 02664 808FF5A4 8C6F0000 */  lw      $t7, 0x0000($v1)           ## 8090EB30
/* 02668 808FF5A8 3C063E4C */  lui     $a2, 0x3E4C                ## $a2 = 3E4C0000
/* 0266C 808FF5AC 44078000 */  mfc1    $a3, $f16
/* 02670 808FF5B0 34C6CCCD */  ori     $a2, $a2, 0xCCCD           ## $a2 = 3E4CCCCD
/* 02674 808FF5B4 260403B4 */  addiu   $a0, $s0, 0x03B4           ## $a0 = 000003B4
/* 02678 808FF5B8 0C01E107 */  jal     Math_SmoothScaleMaxF

/* 0267C 808FF5BC 8DE50028 */  lw      $a1, 0x0028($t7)           ## 00000028
/* 02680 808FF5C0 3C014248 */  lui     $at, 0x4248                ## $at = 42480000
/* 02684 808FF5C4 44818000 */  mtc1    $at, $f16                  ## $f16 = 50.00
/* 02688 808FF5C8 3C038091 */  lui     $v1, %hi(D_8090EB30)       ## $v1 = 80910000
/* 0268C 808FF5CC 2463EB30 */  addiu   $v1, $v1, %lo(D_8090EB30)  ## $v1 = 8090EB30
/* 02690 808FF5D0 8C780000 */  lw      $t8, 0x0000($v1)           ## 8090EB30
/* 02694 808FF5D4 3C063E4C */  lui     $a2, 0x3E4C                ## $a2 = 3E4C0000
/* 02698 808FF5D8 44078000 */  mfc1    $a3, $f16
/* 0269C 808FF5DC 34C6CCCD */  ori     $a2, $a2, 0xCCCD           ## $a2 = 3E4CCCCD
/* 026A0 808FF5E0 260403B8 */  addiu   $a0, $s0, 0x03B8           ## $a0 = 000003B8
/* 026A4 808FF5E4 0C01E107 */  jal     Math_SmoothScaleMaxF

/* 026A8 808FF5E8 8F05002C */  lw      $a1, 0x002C($t8)           ## 0000002C
/* 026AC 808FF5EC 8E190398 */  lw      $t9, 0x0398($s0)           ## 00000398
/* 026B0 808FF5F0 2F210029 */  sltiu   $at, $t9, 0x0029
/* 026B4 808FF5F4 54200087 */  bnel    $at, $zero, .L808FF814
/* 026B8 808FF5F8 3C014080 */  lui     $at, 0x4080                ## $at = 40800000
/* 026BC 808FF5FC 0C042F6F */  jal     func_8010BDBC
/* 026C0 808FF600 262420D8 */  addiu   $a0, $s1, 0x20D8           ## $a0 = 000020D8
/* 026C4 808FF604 14400082 */  bne     $v0, $zero, .L808FF810
/* 026C8 808FF608 240B001D */  addiu   $t3, $zero, 0x001D         ## $t3 = 0000001D
/* 026CC 808FF60C 3C050601 */  lui     $a1, %hi(D_060147E0)                ## $a1 = 06010000
/* 026D0 808FF610 A60B039C */  sh      $t3, 0x039C($s0)           ## 0000039C
/* 026D4 808FF614 AE000398 */  sw      $zero, 0x0398($s0)         ## 00000398
/* 026D8 808FF618 24A547E0 */  addiu   $a1, $a1, %lo(D_060147E0)           ## $a1 = 060147E0
/* 026DC 808FF61C 2604014C */  addiu   $a0, $s0, 0x014C           ## $a0 = 0000014C
/* 026E0 808FF620 0C029490 */  jal     SkelAnime_ChangeAnimTransitionStop
/* 026E4 808FF624 24060000 */  addiu   $a2, $zero, 0x0000         ## $a2 = 00000000
/* 026E8 808FF628 3C040601 */  lui     $a0, %hi(D_060147E0)                ## $a0 = 06010000
/* 026EC 808FF62C 0C028800 */  jal     SkelAnime_GetFrameCount

/* 026F0 808FF630 248447E0 */  addiu   $a0, $a0, %lo(D_060147E0)           ## $a0 = 060147E0
/* 026F4 808FF634 44825000 */  mtc1    $v0, $f10                  ## $f10 = 0.00
/* 026F8 808FF638 44803000 */  mtc1    $zero, $f6                 ## $f6 = 0.00
/* 026FC 808FF63C 3C018091 */  lui     $at, %hi(D_8090DBA0)       ## $at = 80910000
/* 02700 808FF640 46805120 */  cvt.s.w $f4, $f10
/* 02704 808FF644 E60600BC */  swc1    $f6, 0x00BC($s0)           ## 000000BC
/* 02708 808FF648 240A0001 */  addiu   $t2, $zero, 0x0001         ## $t2 = 00000001
/* 0270C 808FF64C E6040194 */  swc1    $f4, 0x0194($s0)           ## 00000194
/* 02710 808FF650 C428DBA0 */  lwc1    $f8, %lo(D_8090DBA0)($at)
/* 02714 808FF654 3C01BF80 */  lui     $at, 0xBF80                ## $at = BF800000
/* 02718 808FF658 44815000 */  mtc1    $at, $f10                  ## $f10 = -1.00
/* 0271C 808FF65C 3C013F80 */  lui     $at, 0x3F80                ## $at = 3F800000
/* 02720 808FF660 44812000 */  mtc1    $at, $f4                   ## $f4 = 1.00
/* 02724 808FF664 A20A0335 */  sb      $t2, 0x0335($s0)           ## 00000335
/* 02728 808FF668 E6080028 */  swc1    $f8, 0x0028($s0)           ## 00000028
/* 0272C 808FF66C E60A006C */  swc1    $f10, 0x006C($s0)          ## 0000006C
/* 02730 808FF670 10000067 */  beq     $zero, $zero, .L808FF810
/* 02734 808FF674 E6040224 */  swc1    $f4, 0x0224($s0)           ## 00000224
glabel L808FF678
/* 02738 808FF678 2604014C */  addiu   $a0, $s0, 0x014C           ## $a0 = 0000014C
/* 0273C 808FF67C AFA40050 */  sw      $a0, 0x0050($sp)
/* 02740 808FF680 0C02927F */  jal     SkelAnime_FrameUpdateMatrix

/* 02744 808FF684 AFA90088 */  sw      $t1, 0x0088($sp)
/* 02748 808FF688 3C014220 */  lui     $at, 0x4220                ## $at = 42200000
/* 0274C 808FF68C 44816000 */  mtc1    $at, $f12                  ## $f12 = 40.00
/* 02750 808FF690 3C014120 */  lui     $at, 0x4120                ## $at = 41200000
/* 02754 808FF694 44817000 */  mtc1    $at, $f14                  ## $f14 = 10.00
/* 02758 808FF698 3C014270 */  lui     $at, 0x4270                ## $at = 42700000
/* 0275C 808FF69C 44818000 */  mtc1    $at, $f16                  ## $f16 = 60.00
/* 02760 808FF6A0 3C0143FA */  lui     $at, 0x43FA                ## $at = 43FA0000
/* 02764 808FF6A4 44813000 */  mtc1    $at, $f6                   ## $f6 = 500.00
/* 02768 808FF6A8 C6000024 */  lwc1    $f0, 0x0024($s0)           ## 00000024
/* 0276C 808FF6AC 3C0143AF */  lui     $at, 0x43AF                ## $at = 43AF0000
/* 02770 808FF6B0 44815000 */  mtc1    $at, $f10                  ## $f10 = 350.00
/* 02774 808FF6B4 46060200 */  add.s   $f8, $f0, $f6
/* 02778 808FF6B8 3C0142C8 */  lui     $at, 0x42C8                ## $at = 42C80000
/* 0277C 808FF6BC 44813000 */  mtc1    $at, $f6                   ## $f6 = 100.00
/* 02780 808FF6C0 8FA90088 */  lw      $t1, 0x0088($sp)
/* 02784 808FF6C4 460A4101 */  sub.s   $f4, $f8, $f10
/* 02788 808FF6C8 C602002C */  lwc1    $f2, 0x002C($s0)           ## 0000002C
/* 0278C 808FF6CC 3C01430C */  lui     $at, 0x430C                ## $at = 430C0000
/* 02790 808FF6D0 E60003B0 */  swc1    $f0, 0x03B0($s0)           ## 000003B0
/* 02794 808FF6D4 46062200 */  add.s   $f8, $f4, $f6
/* 02798 808FF6D8 C6040028 */  lwc1    $f4, 0x0028($s0)           ## 00000028
/* 0279C 808FF6DC E60203B8 */  swc1    $f2, 0x03B8($s0)           ## 000003B8
/* 027A0 808FF6E0 460E1180 */  add.s   $f6, $f2, $f14
/* 027A4 808FF6E4 E60403A8 */  swc1    $f4, 0x03A8($s0)           ## 000003A8
/* 027A8 808FF6E8 240CC000 */  addiu   $t4, $zero, 0xC000         ## $t4 = FFFFC000
/* 027AC 808FF6EC 46104281 */  sub.s   $f10, $f8, $f16
/* 027B0 808FF6F0 C60801BC */  lwc1    $f8, 0x01BC($s0)           ## 000001BC
/* 027B4 808FF6F4 E60603AC */  swc1    $f6, 0x03AC($s0)           ## 000003AC
/* 027B8 808FF6F8 44813000 */  mtc1    $at, $f6                   ## $f6 = 140.00
/* 027BC 808FF6FC E60A03A4 */  swc1    $f10, 0x03A4($s0)          ## 000003A4
/* 027C0 808FF700 46104280 */  add.s   $f10, $f8, $f16
/* 027C4 808FF704 3C01C344 */  lui     $at, 0xC344                ## $at = C3440000
/* 027C8 808FF708 44814000 */  mtc1    $at, $f8                   ## $f8 = -196.00
/* 027CC 808FF70C 24010032 */  addiu   $at, $zero, 0x0032         ## $at = 00000032
/* 027D0 808FF710 460C5101 */  sub.s   $f4, $f10, $f12
/* 027D4 808FF714 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 027D8 808FF718 E60403B4 */  swc1    $f4, 0x03B4($s0)           ## 000003B4
/* 027DC 808FF71C A52C00B6 */  sh      $t4, 0x00B6($t1)           ## 000000B6
/* 027E0 808FF720 E5260024 */  swc1    $f6, 0x0024($t1)           ## 00000024
/* 027E4 808FF724 E528002C */  swc1    $f8, 0x002C($t1)           ## 0000002C
/* 027E8 808FF728 8E0D0398 */  lw      $t5, 0x0398($s0)           ## 00000398
/* 027EC 808FF72C 55A10004 */  bnel    $t5, $at, .L808FF740
/* 027F0 808FF730 8FA40050 */  lw      $a0, 0x0050($sp)
/* 027F4 808FF734 0C00BE0A */  jal     Audio_PlayActorSound2

/* 027F8 808FF738 2405398F */  addiu   $a1, $zero, 0x398F         ## $a1 = 0000398F
/* 027FC 808FF73C 8FA40050 */  lw      $a0, 0x0050($sp)
.L808FF740:
/* 02800 808FF740 0C0295B2 */  jal     func_800A56C8
/* 02804 808FF744 8E050194 */  lw      $a1, 0x0194($s0)           ## 00000194
/* 02808 808FF748 10400031 */  beq     $v0, $zero, .L808FF810
/* 0280C 808FF74C 02202025 */  or      $a0, $s1, $zero            ## $a0 = 00000000
/* 02810 808FF750 0C030129 */  jal     Gameplay_GetCamera
/* 02814 808FF754 00002825 */  or      $a1, $zero, $zero          ## $a1 = 00000000
/* 02818 808FF758 260303A4 */  addiu   $v1, $s0, 0x03A4           ## $v1 = 000003A4
/* 0281C 808FF75C 8C6F0000 */  lw      $t7, 0x0000($v1)           ## 000003A4
/* 02820 808FF760 02202025 */  or      $a0, $s1, $zero            ## $a0 = 00000000
/* 02824 808FF764 00003025 */  or      $a2, $zero, $zero          ## $a2 = 00000000
/* 02828 808FF768 AC4F005C */  sw      $t7, 0x005C($v0)           ## 0000005C
/* 0282C 808FF76C 8C6E0004 */  lw      $t6, 0x0004($v1)           ## 000003A8
/* 02830 808FF770 AC4E0060 */  sw      $t6, 0x0060($v0)           ## 00000060
/* 02834 808FF774 8C6F0008 */  lw      $t7, 0x0008($v1)           ## 000003AC
/* 02838 808FF778 AC4F0064 */  sw      $t7, 0x0064($v0)           ## 00000064
/* 0283C 808FF77C 8C790000 */  lw      $t9, 0x0000($v1)           ## 000003A4
/* 02840 808FF780 AC590074 */  sw      $t9, 0x0074($v0)           ## 00000074
/* 02844 808FF784 8C780004 */  lw      $t8, 0x0004($v1)           ## 000003A8
/* 02848 808FF788 AC580078 */  sw      $t8, 0x0078($v0)           ## 00000078
/* 0284C 808FF78C 8C790008 */  lw      $t9, 0x0008($v1)           ## 000003AC
/* 02850 808FF790 AC59007C */  sw      $t9, 0x007C($v0)           ## 0000007C
/* 02854 808FF794 8E0C03B0 */  lw      $t4, 0x03B0($s0)           ## 000003B0
/* 02858 808FF798 AC4C0050 */  sw      $t4, 0x0050($v0)           ## 00000050
/* 0285C 808FF79C 8E0B03B4 */  lw      $t3, 0x03B4($s0)           ## 000003B4
/* 02860 808FF7A0 AC4B0054 */  sw      $t3, 0x0054($v0)           ## 00000054
/* 02864 808FF7A4 8E0C03B8 */  lw      $t4, 0x03B8($s0)           ## 000003B8
/* 02868 808FF7A8 AC4C0058 */  sw      $t4, 0x0058($v0)           ## 00000058
/* 0286C 808FF7AC 0C03022B */  jal     func_800C08AC
/* 02870 808FF7B0 8605039E */  lh      $a1, 0x039E($s0)           ## 0000039E
/* 02874 808FF7B4 A600039E */  sh      $zero, 0x039E($s0)         ## 0000039E
/* 02878 808FF7B8 02202025 */  or      $a0, $s1, $zero            ## $a0 = 00000000
/* 0287C 808FF7BC 0C01914D */  jal     func_80064534
/* 02880 808FF7C0 26251D64 */  addiu   $a1, $s1, 0x1D64           ## $a1 = 00001D64
/* 02884 808FF7C4 02202025 */  or      $a0, $s1, $zero            ## $a0 = 00000000
/* 02888 808FF7C8 02002825 */  or      $a1, $s0, $zero            ## $a1 = 00000000
/* 0288C 808FF7CC 0C00B7D5 */  jal     func_8002DF54
/* 02890 808FF7D0 24060007 */  addiu   $a2, $zero, 0x0007         ## $a2 = 00000007
/* 02894 808FF7D4 240A0001 */  addiu   $t2, $zero, 0x0001         ## $t2 = 00000001
/* 02898 808FF7D8 A600039C */  sh      $zero, 0x039C($s0)         ## 0000039C
/* 0289C 808FF7DC A20A0337 */  sb      $t2, 0x0337($s0)           ## 00000337
/* 028A0 808FF7E0 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 028A4 808FF7E4 0C23FF6C */  jal     func_808FFDB0
/* 028A8 808FF7E8 02202825 */  or      $a1, $s1, $zero            ## $a1 = 00000000
/* 028AC 808FF7EC 8E0E0004 */  lw      $t6, 0x0004($s0)           ## 00000004
/* 028B0 808FF7F0 240D0032 */  addiu   $t5, $zero, 0x0032         ## $t5 = 00000032
/* 028B4 808FF7F4 A60D01A4 */  sh      $t5, 0x01A4($s0)           ## 000001A4
/* 028B8 808FF7F8 35CF0001 */  ori     $t7, $t6, 0x0001           ## $t7 = 00000001
/* 028BC 808FF7FC AE0F0004 */  sw      $t7, 0x0004($s0)           ## 00000004
/* 028C0 808FF800 3C198091 */  lui     $t9, %hi(D_8090EB2C)       ## $t9 = 80910000
/* 028C4 808FF804 8F39EB2C */  lw      $t9, %lo(D_8090EB2C)($t9)
/* 028C8 808FF808 24180007 */  addiu   $t8, $zero, 0x0007         ## $t8 = 00000007
/* 028CC 808FF80C A33803C8 */  sb      $t8, 0x03C8($t9)           ## 809103C8
glabel L808FF810
.L808FF810:
/* 028D0 808FF810 3C014080 */  lui     $at, 0x4080                ## $at = 40800000
.L808FF814:
/* 028D4 808FF814 44815000 */  mtc1    $at, $f10                  ## $f10 = 4.00
/* 028D8 808FF818 C604030C */  lwc1    $f4, 0x030C($s0)           ## 0000030C
/* 028DC 808FF81C 93AB008D */  lbu     $t3, 0x008D($sp)
/* 028E0 808FF820 4604503C */  c.lt.s  $f10, $f4
/* 028E4 808FF824 00000000 */  nop
/* 028E8 808FF828 45020006 */  bc1fl   .L808FF844
/* 028EC 808FF82C 8605039E */  lh      $a1, 0x039E($s0)           ## 0000039E
/* 028F0 808FF830 15600003 */  bne     $t3, $zero, .L808FF840
/* 028F4 808FF834 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 028F8 808FF838 0C00BE0A */  jal     Audio_PlayActorSound2

/* 028FC 808FF83C 24053163 */  addiu   $a1, $zero, 0x3163         ## $a1 = 00003163
.L808FF840:
/* 02900 808FF840 8605039E */  lh      $a1, 0x039E($s0)           ## 0000039E
.L808FF844:
/* 02904 808FF844 260C03A4 */  addiu   $t4, $s0, 0x03A4           ## $t4 = 000003A4
/* 02908 808FF848 260D03B0 */  addiu   $t5, $s0, 0x03B0           ## $t5 = 000003B0
/* 0290C 808FF84C 50A0000E */  beql    $a1, $zero, .L808FF888
/* 02910 808FF850 8FBF003C */  lw      $ra, 0x003C($sp)
/* 02914 808FF854 AFAC004C */  sw      $t4, 0x004C($sp)
/* 02918 808FF858 AFAD0050 */  sw      $t5, 0x0050($sp)
/* 0291C 808FF85C C60603B4 */  lwc1    $f6, 0x03B4($s0)           ## 000003B4
/* 02920 808FF860 C608041C */  lwc1    $f8, 0x041C($s0)           ## 0000041C
/* 02924 808FF864 260E03BC */  addiu   $t6, $s0, 0x03BC           ## $t6 = 000003BC
/* 02928 808FF868 02202025 */  or      $a0, $s1, $zero            ## $a0 = 00000000
/* 0292C 808FF86C 46083280 */  add.s   $f10, $f6, $f8
/* 02930 808FF870 E60A03B4 */  swc1    $f10, 0x03B4($s0)          ## 000003B4
/* 02934 808FF874 AFAE0010 */  sw      $t6, 0x0010($sp)
/* 02938 808FF878 8FA7004C */  lw      $a3, 0x004C($sp)
/* 0293C 808FF87C 0C030179 */  jal     Gameplay_CameraSetAtEyeUp
/* 02940 808FF880 8FA60050 */  lw      $a2, 0x0050($sp)
/* 02944 808FF884 8FBF003C */  lw      $ra, 0x003C($sp)
.L808FF888:
/* 02948 808FF888 8FB00034 */  lw      $s0, 0x0034($sp)
/* 0294C 808FF88C 8FB10038 */  lw      $s1, 0x0038($sp)
/* 02950 808FF890 03E00008 */  jr      $ra
/* 02954 808FF894 27BD0090 */  addiu   $sp, $sp, 0x0090           ## $sp = 00000000
