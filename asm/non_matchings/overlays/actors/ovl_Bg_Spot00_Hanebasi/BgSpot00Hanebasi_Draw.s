glabel BgSpot00Hanebasi_Draw
/* 00E08 808AA588 27BDFFA0 */  addiu   $sp, $sp, 0xFFA0           ## $sp = FFFFFFA0
/* 00E0C 808AA58C 3C0F808B */  lui     $t7, %hi(D_808AA7C4)       ## $t7 = 808B0000
/* 00E10 808AA590 AFBF001C */  sw      $ra, 0x001C($sp)           
/* 00E14 808AA594 AFB00018 */  sw      $s0, 0x0018($sp)           
/* 00E18 808AA598 AFA50064 */  sw      $a1, 0x0064($sp)           
/* 00E1C 808AA59C 25EFA7C4 */  addiu   $t7, $t7, %lo(D_808AA7C4)  ## $t7 = 808AA7C4
/* 00E20 808AA5A0 8DF90000 */  lw      $t9, 0x0000($t7)           ## 808AA7C4
/* 00E24 808AA5A4 27AE0054 */  addiu   $t6, $sp, 0x0054           ## $t6 = FFFFFFF4
/* 00E28 808AA5A8 8DF80004 */  lw      $t8, 0x0004($t7)           ## 808AA7C8
/* 00E2C 808AA5AC ADD90000 */  sw      $t9, 0x0000($t6)           ## FFFFFFF4
/* 00E30 808AA5B0 8DF90008 */  lw      $t9, 0x0008($t7)           ## 808AA7CC
/* 00E34 808AA5B4 ADD80004 */  sw      $t8, 0x0004($t6)           ## FFFFFFF8
/* 00E38 808AA5B8 00808025 */  or      $s0, $a0, $zero            ## $s0 = 00000000
/* 00E3C 808AA5BC ADD90008 */  sw      $t9, 0x0008($t6)           ## FFFFFFFC
/* 00E40 808AA5C0 8FA90064 */  lw      $t1, 0x0064($sp)           
/* 00E44 808AA5C4 3C06808B */  lui     $a2, %hi(D_808AA824)       ## $a2 = 808B0000
/* 00E48 808AA5C8 24C6A824 */  addiu   $a2, $a2, %lo(D_808AA824)  ## $a2 = 808AA824
/* 00E4C 808AA5CC 8D250000 */  lw      $a1, 0x0000($t1)           ## 00000000
/* 00E50 808AA5D0 27A40034 */  addiu   $a0, $sp, 0x0034           ## $a0 = FFFFFFD4
/* 00E54 808AA5D4 240702BA */  addiu   $a3, $zero, 0x02BA         ## $a3 = 000002BA
/* 00E58 808AA5D8 0C031AB1 */  jal     Graph_OpenDisps              
/* 00E5C 808AA5DC AFA50044 */  sw      $a1, 0x0044($sp)           
/* 00E60 808AA5E0 8FAA0064 */  lw      $t2, 0x0064($sp)           
/* 00E64 808AA5E4 0C024F46 */  jal     func_80093D18              
/* 00E68 808AA5E8 8D440000 */  lw      $a0, 0x0000($t2)           ## 00000000
/* 00E6C 808AA5EC 8FA80044 */  lw      $t0, 0x0044($sp)           
/* 00E70 808AA5F0 3C0CDA38 */  lui     $t4, 0xDA38                ## $t4 = DA380000
/* 00E74 808AA5F4 358C0003 */  ori     $t4, $t4, 0x0003           ## $t4 = DA380003
/* 00E78 808AA5F8 8D0202C0 */  lw      $v0, 0x02C0($t0)           ## 000002C0
/* 00E7C 808AA5FC 3C05808B */  lui     $a1, %hi(D_808AA840)       ## $a1 = 808B0000
/* 00E80 808AA600 24A5A840 */  addiu   $a1, $a1, %lo(D_808AA840)  ## $a1 = 808AA840
/* 00E84 808AA604 244B0008 */  addiu   $t3, $v0, 0x0008           ## $t3 = 00000008
/* 00E88 808AA608 AD0B02C0 */  sw      $t3, 0x02C0($t0)           ## 000002C0
/* 00E8C 808AA60C AC4C0000 */  sw      $t4, 0x0000($v0)           ## 00000000
/* 00E90 808AA610 8FAD0064 */  lw      $t5, 0x0064($sp)           
/* 00E94 808AA614 240602BE */  addiu   $a2, $zero, 0x02BE         ## $a2 = 000002BE
/* 00E98 808AA618 8DA40000 */  lw      $a0, 0x0000($t5)           ## 00000000
/* 00E9C 808AA61C AFA80044 */  sw      $t0, 0x0044($sp)           
/* 00EA0 808AA620 0C0346A2 */  jal     Matrix_NewMtx              
/* 00EA4 808AA624 AFA20030 */  sw      $v0, 0x0030($sp)           
/* 00EA8 808AA628 8FA30030 */  lw      $v1, 0x0030($sp)           
/* 00EAC 808AA62C 8FA80044 */  lw      $t0, 0x0044($sp)           
/* 00EB0 808AA630 2401FFFF */  addiu   $at, $zero, 0xFFFF         ## $at = FFFFFFFF
/* 00EB4 808AA634 AC620004 */  sw      $v0, 0x0004($v1)           ## 00000004
/* 00EB8 808AA638 860E001C */  lh      $t6, 0x001C($s0)           ## 0000001C
/* 00EBC 808AA63C 3C18DE00 */  lui     $t8, 0xDE00                ## $t8 = DE000000
/* 00EC0 808AA640 3C190600 */  lui     $t9, 0x0600                ## $t9 = 06000000
/* 00EC4 808AA644 15C1003E */  bne     $t6, $at, .L808AA740       
/* 00EC8 808AA648 3C0CDE00 */  lui     $t4, 0xDE00                ## $t4 = DE000000
/* 00ECC 808AA64C 8D0202C0 */  lw      $v0, 0x02C0($t0)           ## 000002C0
/* 00ED0 808AA650 27390430 */  addiu   $t9, $t9, 0x0430           ## $t9 = 06000430
/* 00ED4 808AA654 27A40054 */  addiu   $a0, $sp, 0x0054           ## $a0 = FFFFFFF4
/* 00ED8 808AA658 244F0008 */  addiu   $t7, $v0, 0x0008           ## $t7 = 00000008
/* 00EDC 808AA65C AD0F02C0 */  sw      $t7, 0x02C0($t0)           ## 000002C0
/* 00EE0 808AA660 27A50048 */  addiu   $a1, $sp, 0x0048           ## $a1 = FFFFFFE8
/* 00EE4 808AA664 AC590004 */  sw      $t9, 0x0004($v0)           ## 00000004
/* 00EE8 808AA668 0C0346BD */  jal     Matrix_MultVec3f              
/* 00EEC 808AA66C AC580000 */  sw      $t8, 0x0000($v0)           ## 00000000
/* 00EF0 808AA670 C7A40048 */  lwc1    $f4, 0x0048($sp)           
/* 00EF4 808AA674 8E09011C */  lw      $t1, 0x011C($s0)           ## 0000011C
/* 00EF8 808AA678 3C01BF80 */  lui     $at, 0xBF80                ## $at = BF800000
/* 00EFC 808AA67C 44818000 */  mtc1    $at, $f16                  ## $f16 = -1.00
/* 00F00 808AA680 E5240024 */  swc1    $f4, 0x0024($t1)           ## 00000024
/* 00F04 808AA684 8E0A011C */  lw      $t2, 0x011C($s0)           ## 0000011C
/* 00F08 808AA688 C7A6004C */  lwc1    $f6, 0x004C($sp)           
/* 00F0C 808AA68C 27A40054 */  addiu   $a0, $sp, 0x0054           ## $a0 = FFFFFFF4
/* 00F10 808AA690 27A50048 */  addiu   $a1, $sp, 0x0048           ## $a1 = FFFFFFE8
/* 00F14 808AA694 E5460028 */  swc1    $f6, 0x0028($t2)           ## 00000028
/* 00F18 808AA698 8E0B011C */  lw      $t3, 0x011C($s0)           ## 0000011C
/* 00F1C 808AA69C C7A80050 */  lwc1    $f8, 0x0050($sp)           
/* 00F20 808AA6A0 E568002C */  swc1    $f8, 0x002C($t3)           ## 0000002C
/* 00F24 808AA6A4 C7AA0054 */  lwc1    $f10, 0x0054($sp)          
/* 00F28 808AA6A8 46105482 */  mul.s   $f18, $f10, $f16           
/* 00F2C 808AA6AC 0C0346BD */  jal     Matrix_MultVec3f              
/* 00F30 808AA6B0 E7B20054 */  swc1    $f18, 0x0054($sp)          
/* 00F34 808AA6B4 8E0C011C */  lw      $t4, 0x011C($s0)           ## 0000011C
/* 00F38 808AA6B8 C7A40048 */  lwc1    $f4, 0x0048($sp)           
/* 00F3C 808AA6BC 3C038016 */  lui     $v1, 0x8016                ## $v1 = 80160000
/* 00F40 808AA6C0 8D8D011C */  lw      $t5, 0x011C($t4)           ## 0000011C
/* 00F44 808AA6C4 2463E660 */  addiu   $v1, $v1, 0xE660           ## $v1 = 8015E660
/* 00F48 808AA6C8 2401000C */  addiu   $at, $zero, 0x000C         ## $at = 0000000C
/* 00F4C 808AA6CC E5A40024 */  swc1    $f4, 0x0024($t5)           ## 00000024
/* 00F50 808AA6D0 8E0E011C */  lw      $t6, 0x011C($s0)           ## 0000011C
/* 00F54 808AA6D4 C7A6004C */  lwc1    $f6, 0x004C($sp)           
/* 00F58 808AA6D8 8DCF011C */  lw      $t7, 0x011C($t6)           ## 0000011C
/* 00F5C 808AA6DC E5E60028 */  swc1    $f6, 0x0028($t7)           ## 00000028
/* 00F60 808AA6E0 8E18011C */  lw      $t8, 0x011C($s0)           ## 0000011C
/* 00F64 808AA6E4 C7A80050 */  lwc1    $f8, 0x0050($sp)           
/* 00F68 808AA6E8 8F19011C */  lw      $t9, 0x011C($t8)           ## 0000011C
/* 00F6C 808AA6EC E728002C */  swc1    $f8, 0x002C($t9)           ## 0000002C
/* 00F70 808AA6F0 8C621360 */  lw      $v0, 0x1360($v1)           ## 8015F9C0
/* 00F74 808AA6F4 10410019 */  beq     $v0, $at, .L808AA75C       
/* 00F78 808AA6F8 28410004 */  slti    $at, $v0, 0x0004           
/* 00F7C 808AA6FC 10200008 */  beq     $at, $zero, .L808AA720     
/* 00F80 808AA700 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 00F84 808AA704 8C690004 */  lw      $t1, 0x0004($v1)           ## 8015E664
/* 00F88 808AA708 5120000A */  beql    $t1, $zero, .L808AA734     
/* 00F8C 808AA70C 44805000 */  mtc1    $zero, $f10                ## $f10 = 0.00
/* 00F90 808AA710 860A00B4 */  lh      $t2, 0x00B4($s0)           ## 000000B4
/* 00F94 808AA714 2941E000 */  slti    $at, $t2, 0xE000           
/* 00F98 808AA718 50200006 */  beql    $at, $zero, .L808AA734     
/* 00F9C 808AA71C 44805000 */  mtc1    $zero, $f10                ## $f10 = 0.00
.L808AA720:
/* 00FA0 808AA720 0C22A8AC */  jal     func_808AA2B0              
/* 00FA4 808AA724 8FA50064 */  lw      $a1, 0x0064($sp)           
/* 00FA8 808AA728 1000000D */  beq     $zero, $zero, .L808AA760   
/* 00FAC 808AA72C 8FAE0064 */  lw      $t6, 0x0064($sp)           
/* 00FB0 808AA730 44805000 */  mtc1    $zero, $f10                ## $f10 = 0.00
.L808AA734:
/* 00FB4 808AA734 3C01808B */  lui     $at, %hi(D_808AA7B0)       ## $at = 808B0000
/* 00FB8 808AA738 10000008 */  beq     $zero, $zero, .L808AA75C   
/* 00FBC 808AA73C E42AA7B0 */  swc1    $f10, %lo(D_808AA7B0)($at) 
.L808AA740:
/* 00FC0 808AA740 8D0202C0 */  lw      $v0, 0x02C0($t0)           ## 000002C0
/* 00FC4 808AA744 3C0D0600 */  lui     $t5, 0x0600                ## $t5 = 06000000
/* 00FC8 808AA748 25AD00C0 */  addiu   $t5, $t5, 0x00C0           ## $t5 = 060000C0
/* 00FCC 808AA74C 244B0008 */  addiu   $t3, $v0, 0x0008           ## $t3 = 00000008
/* 00FD0 808AA750 AD0B02C0 */  sw      $t3, 0x02C0($t0)           ## 000002C0
/* 00FD4 808AA754 AC4D0004 */  sw      $t5, 0x0004($v0)           ## 00000004
/* 00FD8 808AA758 AC4C0000 */  sw      $t4, 0x0000($v0)           ## 00000000
.L808AA75C:
/* 00FDC 808AA75C 8FAE0064 */  lw      $t6, 0x0064($sp)           
.L808AA760:
/* 00FE0 808AA760 3C06808B */  lui     $a2, %hi(D_808AA85C)       ## $a2 = 808B0000
/* 00FE4 808AA764 24C6A85C */  addiu   $a2, $a2, %lo(D_808AA85C)  ## $a2 = 808AA85C
/* 00FE8 808AA768 27A40034 */  addiu   $a0, $sp, 0x0034           ## $a0 = FFFFFFD4
/* 00FEC 808AA76C 240702DD */  addiu   $a3, $zero, 0x02DD         ## $a3 = 000002DD
/* 00FF0 808AA770 0C031AD5 */  jal     Graph_CloseDisps              
/* 00FF4 808AA774 8DC50000 */  lw      $a1, 0x0000($t6)           ## 00000000
/* 00FF8 808AA778 8FBF001C */  lw      $ra, 0x001C($sp)           
/* 00FFC 808AA77C 8FB00018 */  lw      $s0, 0x0018($sp)           
/* 01000 808AA780 27BD0060 */  addiu   $sp, $sp, 0x0060           ## $sp = 00000000
/* 01004 808AA784 03E00008 */  jr      $ra                        
/* 01008 808AA788 00000000 */  nop
/* 0100C 808AA78C 00000000 */  nop

