glabel func_80B2A75C
/* 0055C 80B2A75C 27BDFFA8 */  addiu   $sp, $sp, 0xFFA8           ## $sp = FFFFFFA8
/* 00560 80B2A760 AFBF003C */  sw      $ra, 0x003C($sp)
/* 00564 80B2A764 AFB00038 */  sw      $s0, 0x0038($sp)
/* 00568 80B2A768 AFA5005C */  sw      $a1, 0x005C($sp)
/* 0056C 80B2A76C 8482001C */  lh      $v0, 0x001C($a0)           ## 0000001C
/* 00570 80B2A770 24010002 */  addiu   $at, $zero, 0x0002         ## $at = 00000002
/* 00574 80B2A774 00808025 */  or      $s0, $a0, $zero            ## $s0 = 00000000
/* 00578 80B2A778 00021203 */  sra     $v0, $v0,  8
/* 0057C 80B2A77C 304200FF */  andi    $v0, $v0, 0x00FF           ## $v0 = 00000000
/* 00580 80B2A780 14410015 */  bne     $v0, $at, .L80B2A7D8
/* 00584 80B2A784 AFA20044 */  sw      $v0, 0x0044($sp)
/* 00588 80B2A788 3C0F8016 */  lui     $t7, 0x8016                ## $t7 = 80160000
/* 0058C 80B2A78C 8DEFF9C0 */  lw      $t7, -0x0640($t7)          ## 8015F9C0
/* 00590 80B2A790 24010005 */  addiu   $at, $zero, 0x0005         ## $at = 00000005
/* 00594 80B2A794 15E100C0 */  bne     $t7, $at, .L80B2AA98
/* 00598 80B2A798 00000000 */  nop
/* 0059C 80B2A79C 94A31D74 */  lhu     $v1, 0x1D74($a1)           ## 00001D74
/* 005A0 80B2A7A0 24010318 */  addiu   $at, $zero, 0x0318         ## $at = 00000318
/* 005A4 80B2A7A4 54610006 */  bnel    $v1, $at, .L80B2A7C0
/* 005A8 80B2A7A8 2401034D */  addiu   $at, $zero, 0x034D         ## $at = 0000034D
/* 005AC 80B2A7AC 0C00BE0A */  jal     Audio_PlayActorSound2

/* 005B0 80B2A7B0 2405686E */  addiu   $a1, $zero, 0x686E         ## $a1 = 0000686E
/* 005B4 80B2A7B4 100000B8 */  beq     $zero, $zero, .L80B2AA98
/* 005B8 80B2A7B8 00000000 */  nop
/* 005BC 80B2A7BC 2401034D */  addiu   $at, $zero, 0x034D         ## $at = 0000034D
.L80B2A7C0:
/* 005C0 80B2A7C0 146100B5 */  bne     $v1, $at, .L80B2AA98
/* 005C4 80B2A7C4 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 005C8 80B2A7C8 0C00BE0A */  jal     Audio_PlayActorSound2

/* 005CC 80B2A7CC 2405686F */  addiu   $a1, $zero, 0x686F         ## $a1 = 0000686F
/* 005D0 80B2A7D0 100000B1 */  beq     $zero, $zero, .L80B2AA98
/* 005D4 80B2A7D4 00000000 */  nop
.L80B2A7D8:
/* 005D8 80B2A7D8 8FB90044 */  lw      $t9, 0x0044($sp)
/* 005DC 80B2A7DC 24010007 */  addiu   $at, $zero, 0x0007         ## $at = 00000007
/* 005E0 80B2A7E0 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 005E4 80B2A7E4 1721000A */  bne     $t9, $at, .L80B2A810
/* 005E8 80B2A7E8 8FAA0044 */  lw      $t2, 0x0044($sp)
/* 005EC 80B2A7EC 3C053E99 */  lui     $a1, 0x3E99                ## $a1 = 3E990000
/* 005F0 80B2A7F0 0C00B58B */  jal     Actor_SetScale

/* 005F4 80B2A7F4 34A5999A */  ori     $a1, $a1, 0x999A           ## $a1 = 3E99999A
/* 005F8 80B2A7F8 3C0180B3 */  lui     $at, %hi(D_80B2D184)       ## $at = 80B30000
/* 005FC 80B2A7FC C420D184 */  lwc1    $f0, %lo(D_80B2D184)($at)
/* 00600 80B2A800 E60000F4 */  swc1    $f0, 0x00F4($s0)           ## 000000F4
/* 00604 80B2A804 E60000F8 */  swc1    $f0, 0x00F8($s0)           ## 000000F8
/* 00608 80B2A808 100000A3 */  beq     $zero, $zero, .L80B2AA98
/* 0060C 80B2A80C E60000FC */  swc1    $f0, 0x00FC($s0)           ## 000000FC
.L80B2A810:
/* 00610 80B2A810 24010003 */  addiu   $at, $zero, 0x0003         ## $at = 00000003
/* 00614 80B2A814 15410066 */  bne     $t2, $at, .L80B2A9B0
/* 00618 80B2A818 3C028016 */  lui     $v0, 0x8016                ## $v0 = 80160000
/* 0061C 80B2A81C 8C42F9C0 */  lw      $v0, -0x0640($v0)          ## 8015F9C0
/* 00620 80B2A820 24010004 */  addiu   $at, $zero, 0x0004         ## $at = 00000004
/* 00624 80B2A824 8FAB005C */  lw      $t3, 0x005C($sp)
/* 00628 80B2A828 5441002B */  bnel    $v0, $at, .L80B2A8D8
/* 0062C 80B2A82C 8FAE005C */  lw      $t6, 0x005C($sp)
/* 00630 80B2A830 95631D74 */  lhu     $v1, 0x1D74($t3)           ## 00001D74
/* 00634 80B2A834 286100DC */  slti    $at, $v1, 0x00DC
/* 00638 80B2A838 1420000D */  bne     $at, $zero, .L80B2A870
/* 0063C 80B2A83C 24010118 */  addiu   $at, $zero, 0x0118         ## $at = 00000118
/* 00640 80B2A840 10610017 */  beq     $v1, $at, .L80B2A8A0
/* 00644 80B2A844 24010140 */  addiu   $at, $zero, 0x0140         ## $at = 00000140
/* 00648 80B2A848 10610015 */  beq     $v1, $at, .L80B2A8A0
/* 0064C 80B2A84C 2401017C */  addiu   $at, $zero, 0x017C         ## $at = 0000017C
/* 00650 80B2A850 10610013 */  beq     $v1, $at, .L80B2A8A0
/* 00654 80B2A854 24010199 */  addiu   $at, $zero, 0x0199         ## $at = 00000199
/* 00658 80B2A858 10610011 */  beq     $v1, $at, .L80B2A8A0
/* 0065C 80B2A85C 240101B6 */  addiu   $at, $zero, 0x01B6         ## $at = 000001B6
/* 00660 80B2A860 1061000F */  beq     $v1, $at, .L80B2A8A0
/* 00664 80B2A864 00000000 */  nop
/* 00668 80B2A868 1000001B */  beq     $zero, $zero, .L80B2A8D8
/* 0066C 80B2A86C 8FAE005C */  lw      $t6, 0x005C($sp)
.L80B2A870:
/* 00670 80B2A870 24010014 */  addiu   $at, $zero, 0x0014         ## $at = 00000014
/* 00674 80B2A874 1061000A */  beq     $v1, $at, .L80B2A8A0
/* 00678 80B2A878 2401003B */  addiu   $at, $zero, 0x003B         ## $at = 0000003B
/* 0067C 80B2A87C 10610008 */  beq     $v1, $at, .L80B2A8A0
/* 00680 80B2A880 24010047 */  addiu   $at, $zero, 0x0047         ## $at = 00000047
/* 00684 80B2A884 10610006 */  beq     $v1, $at, .L80B2A8A0
/* 00688 80B2A888 24010081 */  addiu   $at, $zero, 0x0081         ## $at = 00000081
/* 0068C 80B2A88C 10610004 */  beq     $v1, $at, .L80B2A8A0
/* 00690 80B2A890 2401008C */  addiu   $at, $zero, 0x008C         ## $at = 0000008C
/* 00694 80B2A894 10610002 */  beq     $v1, $at, .L80B2A8A0
/* 00698 80B2A898 240100DB */  addiu   $at, $zero, 0x00DB         ## $at = 000000DB
/* 0069C 80B2A89C 1461000D */  bne     $v1, $at, .L80B2A8D4
.L80B2A8A0:
/* 006A0 80B2A8A0 3C0C8013 */  lui     $t4, 0x8013                ## $t4 = 80130000
/* 006A4 80B2A8A4 3C0D8013 */  lui     $t5, 0x8013                ## $t5 = 80130000
/* 006A8 80B2A8A8 25AD33E8 */  addiu   $t5, $t5, 0x33E8           ## $t5 = 801333E8
/* 006AC 80B2A8AC 258733E0 */  addiu   $a3, $t4, 0x33E0           ## $a3 = 801333E0
/* 006B0 80B2A8B0 3C058013 */  lui     $a1, 0x8013                ## $a1 = 80130000
/* 006B4 80B2A8B4 24A533D4 */  addiu   $a1, $a1, 0x33D4           ## $a1 = 801333D4
/* 006B8 80B2A8B8 AFA70010 */  sw      $a3, 0x0010($sp)
/* 006BC 80B2A8BC AFAD0014 */  sw      $t5, 0x0014($sp)
/* 006C0 80B2A8C0 2404481D */  addiu   $a0, $zero, 0x481D         ## $a0 = 0000481D
/* 006C4 80B2A8C4 0C03DCE3 */  jal     Audio_PlaySoundGeneral

/* 006C8 80B2A8C8 24060004 */  addiu   $a2, $zero, 0x0004         ## $a2 = 00000004
/* 006CC 80B2A8CC 3C028016 */  lui     $v0, 0x8016                ## $v0 = 80160000
/* 006D0 80B2A8D0 8C42F9C0 */  lw      $v0, -0x0640($v0)          ## 8015F9C0
.L80B2A8D4:
/* 006D4 80B2A8D4 8FAE005C */  lw      $t6, 0x005C($sp)
.L80B2A8D8:
/* 006D8 80B2A8D8 24010005 */  addiu   $at, $zero, 0x0005         ## $at = 00000005
/* 006DC 80B2A8DC 1441001F */  bne     $v0, $at, .L80B2A95C
/* 006E0 80B2A8E0 95C31D74 */  lhu     $v1, 0x1D74($t6)           ## 00001D74
/* 006E4 80B2A8E4 240105E4 */  addiu   $at, $zero, 0x05E4         ## $at = 000005E4
/* 006E8 80B2A8E8 14610005 */  bne     $v1, $at, .L80B2A900
/* 006EC 80B2A8EC 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 006F0 80B2A8F0 0C00BE0A */  jal     Audio_PlayActorSound2

/* 006F4 80B2A8F4 240539D6 */  addiu   $a1, $zero, 0x39D6         ## $a1 = 000039D6
/* 006F8 80B2A8F8 8FA6005C */  lw      $a2, 0x005C($sp)
/* 006FC 80B2A8FC 94C31D74 */  lhu     $v1, 0x1D74($a2)           ## 00001D74
.L80B2A900:
/* 00700 80B2A900 24010609 */  addiu   $at, $zero, 0x0609         ## $at = 00000609
/* 00704 80B2A904 14610015 */  bne     $v1, $at, .L80B2A95C
/* 00708 80B2A908 8FA6005C */  lw      $a2, 0x005C($sp)
/* 0070C 80B2A90C 3C014200 */  lui     $at, 0x4200                ## $at = 42000000
/* 00710 80B2A910 44812000 */  mtc1    $at, $f4                   ## $f4 = 32.00
/* 00714 80B2A914 3C0142CA */  lui     $at, 0x42CA                ## $at = 42CA0000
/* 00718 80B2A918 44813000 */  mtc1    $at, $f6                   ## $f6 = 101.00
/* 0071C 80B2A91C 3C0180B3 */  lui     $at, %hi(D_80B2D188)       ## $at = 80B30000
/* 00720 80B2A920 C428D188 */  lwc1    $f8, %lo(D_80B2D188)($at)
/* 00724 80B2A924 2418000C */  addiu   $t8, $zero, 0x000C         ## $t8 = 0000000C
/* 00728 80B2A928 AFB80028 */  sw      $t8, 0x0028($sp)
/* 0072C 80B2A92C 24C41C24 */  addiu   $a0, $a2, 0x1C24           ## $a0 = 00001C24
/* 00730 80B2A930 02002825 */  or      $a1, $s0, $zero            ## $a1 = 00000000
/* 00734 80B2A934 240700F5 */  addiu   $a3, $zero, 0x00F5         ## $a3 = 000000F5
/* 00738 80B2A938 AFA0001C */  sw      $zero, 0x001C($sp)
/* 0073C 80B2A93C AFA00020 */  sw      $zero, 0x0020($sp)
/* 00740 80B2A940 AFA00024 */  sw      $zero, 0x0024($sp)
/* 00744 80B2A944 E7A40010 */  swc1    $f4, 0x0010($sp)
/* 00748 80B2A948 E7A60014 */  swc1    $f6, 0x0014($sp)
/* 0074C 80B2A94C 0C00C916 */  jal     Actor_SpawnAttached

/* 00750 80B2A950 E7A80018 */  swc1    $f8, 0x0018($sp)
/* 00754 80B2A954 8FA6005C */  lw      $a2, 0x005C($sp)
/* 00758 80B2A958 94C31D74 */  lhu     $v1, 0x1D74($a2)           ## 00001D74
.L80B2A95C:
/* 0075C 80B2A95C 240103FC */  addiu   $at, $zero, 0x03FC         ## $at = 000003FC
/* 00760 80B2A960 14610005 */  bne     $v1, $at, .L80B2A978
/* 00764 80B2A964 3C040100 */  lui     $a0, 0x0100                ## $a0 = 01000000
/* 00768 80B2A968 0C03E803 */  jal     Audio_SetBGM

/* 0076C 80B2A96C 34840023 */  ori     $a0, $a0, 0x0023           ## $a0 = 01000023
/* 00770 80B2A970 8FA6005C */  lw      $a2, 0x005C($sp)
/* 00774 80B2A974 94C31D74 */  lhu     $v1, 0x1D74($a2)           ## 00001D74
.L80B2A978:
/* 00778 80B2A978 240103C0 */  addiu   $at, $zero, 0x03C0         ## $at = 000003C0
/* 0077C 80B2A97C 14610046 */  bne     $v1, $at, .L80B2AA98
/* 00780 80B2A980 3C078013 */  lui     $a3, 0x8013                ## $a3 = 80130000
/* 00784 80B2A984 3C198013 */  lui     $t9, 0x8013                ## $t9 = 80130000
/* 00788 80B2A988 24E733E0 */  addiu   $a3, $a3, 0x33E0           ## $a3 = 801333E0
/* 0078C 80B2A98C 273933E8 */  addiu   $t9, $t9, 0x33E8           ## $t9 = 801333E8
/* 00790 80B2A990 AFB90014 */  sw      $t9, 0x0014($sp)
/* 00794 80B2A994 AFA70010 */  sw      $a3, 0x0010($sp)
/* 00798 80B2A998 24042816 */  addiu   $a0, $zero, 0x2816         ## $a0 = 00002816
/* 0079C 80B2A99C 260500E4 */  addiu   $a1, $s0, 0x00E4           ## $a1 = 000000E4
/* 007A0 80B2A9A0 0C03DCE3 */  jal     Audio_PlaySoundGeneral

/* 007A4 80B2A9A4 24060004 */  addiu   $a2, $zero, 0x0004         ## $a2 = 00000004
/* 007A8 80B2A9A8 1000003B */  beq     $zero, $zero, .L80B2AA98
/* 007AC 80B2A9AC 00000000 */  nop
.L80B2A9B0:
/* 007B0 80B2A9B0 8FAA0044 */  lw      $t2, 0x0044($sp)
/* 007B4 80B2A9B4 24010006 */  addiu   $at, $zero, 0x0006         ## $at = 00000006
/* 007B8 80B2A9B8 3C028016 */  lui     $v0, 0x8016                ## $v0 = 80160000
/* 007BC 80B2A9BC 1541000C */  bne     $t2, $at, .L80B2A9F0
/* 007C0 80B2A9C0 8FAB0044 */  lw      $t3, 0x0044($sp)
/* 007C4 80B2A9C4 8C42F9C0 */  lw      $v0, -0x0640($v0)          ## 8015F9C0
/* 007C8 80B2A9C8 24010005 */  addiu   $at, $zero, 0x0005         ## $at = 00000005
/* 007CC 80B2A9CC 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 007D0 80B2A9D0 10410003 */  beq     $v0, $at, .L80B2A9E0
/* 007D4 80B2A9D4 2401000A */  addiu   $at, $zero, 0x000A         ## $at = 0000000A
/* 007D8 80B2A9D8 1441002F */  bne     $v0, $at, .L80B2AA98
/* 007DC 80B2A9DC 00000000 */  nop
.L80B2A9E0:
/* 007E0 80B2A9E0 0C00BE0A */  jal     Audio_PlayActorSound2

/* 007E4 80B2A9E4 24052078 */  addiu   $a1, $zero, 0x2078         ## $a1 = 00002078
/* 007E8 80B2A9E8 1000002B */  beq     $zero, $zero, .L80B2AA98
/* 007EC 80B2A9EC 00000000 */  nop
.L80B2A9F0:
/* 007F0 80B2A9F0 24010004 */  addiu   $at, $zero, 0x0004         ## $at = 00000004
/* 007F4 80B2A9F4 15610028 */  bne     $t3, $at, .L80B2AA98
/* 007F8 80B2A9F8 00000000 */  nop
/* 007FC 80B2A9FC C60A01B0 */  lwc1    $f10, 0x01B0($s0)          ## 000001B0
/* 00800 80B2AA00 8E0201A0 */  lw      $v0, 0x01A0($s0)           ## 000001A0
/* 00804 80B2AA04 3C0D0600 */  lui     $t5, 0x0600                ## $t5 = 06000000
/* 00808 80B2AA08 4600540D */  trunc.w.s $f16, $f10
/* 0080C 80B2AA0C 25AD3858 */  addiu   $t5, $t5, 0x3858           ## $t5 = 06003858
/* 00810 80B2AA10 3C0E0600 */  lui     $t6, 0x0600                ## $t6 = 06000000
/* 00814 80B2AA14 24010008 */  addiu   $at, $zero, 0x0008         ## $at = 00000008
/* 00818 80B2AA18 44038000 */  mfc1    $v1, $f16
/* 0081C 80B2AA1C 25CE4AA4 */  addiu   $t6, $t6, 0x4AA4           ## $t6 = 06004AA4
/* 00820 80B2AA20 00031C00 */  sll     $v1, $v1, 16
/* 00824 80B2AA24 15A2000E */  bne     $t5, $v0, .L80B2AA60
/* 00828 80B2AA28 00031C03 */  sra     $v1, $v1, 16
/* 0082C 80B2AA2C 14610005 */  bne     $v1, $at, .L80B2AA44
/* 00830 80B2AA30 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 00834 80B2AA34 2405283D */  addiu   $a1, $zero, 0x283D         ## $a1 = 0000283D
/* 00838 80B2AA38 0C00BE0A */  jal     Audio_PlayActorSound2

/* 0083C 80B2AA3C A7A3004E */  sh      $v1, 0x004E($sp)
/* 00840 80B2AA40 87A3004E */  lh      $v1, 0x004E($sp)
.L80B2AA44:
/* 00844 80B2AA44 2401001E */  addiu   $at, $zero, 0x001E         ## $at = 0000001E
/* 00848 80B2AA48 14610013 */  bne     $v1, $at, .L80B2AA98
/* 0084C 80B2AA4C 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 00850 80B2AA50 0C00BE0A */  jal     Audio_PlayActorSound2

/* 00854 80B2AA54 2405282B */  addiu   $a1, $zero, 0x282B         ## $a1 = 0000282B
/* 00858 80B2AA58 1000000F */  beq     $zero, $zero, .L80B2AA98
/* 0085C 80B2AA5C 00000000 */  nop
.L80B2AA60:
/* 00860 80B2AA60 15C20008 */  bne     $t6, $v0, .L80B2AA84
/* 00864 80B2AA64 3C0F0600 */  lui     $t7, 0x0600                ## $t7 = 06000000
/* 00868 80B2AA68 24010019 */  addiu   $at, $zero, 0x0019         ## $at = 00000019
/* 0086C 80B2AA6C 1461000A */  bne     $v1, $at, .L80B2AA98
/* 00870 80B2AA70 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 00874 80B2AA74 0C00BE0A */  jal     Audio_PlayActorSound2

/* 00878 80B2AA78 2405282C */  addiu   $a1, $zero, 0x282C         ## $a1 = 0000282C
/* 0087C 80B2AA7C 10000006 */  beq     $zero, $zero, .L80B2AA98
/* 00880 80B2AA80 00000000 */  nop
.L80B2AA84:
/* 00884 80B2AA84 25EF2650 */  addiu   $t7, $t7, 0x2650           ## $t7 = 00002650
/* 00888 80B2AA88 15E20003 */  bne     $t7, $v0, .L80B2AA98
/* 0088C 80B2AA8C 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 00890 80B2AA90 0C00BE0A */  jal     Audio_PlayActorSound2

/* 00894 80B2AA94 24052078 */  addiu   $a1, $zero, 0x2078         ## $a1 = 00002078
.L80B2AA98:
/* 00898 80B2AA98 3C0380B3 */  lui     $v1, %hi(D_80B2CFCC)       ## $v1 = 80B30000
/* 0089C 80B2AA9C 2463CFCC */  addiu   $v1, $v1, %lo(D_80B2CFCC)  ## $v1 = 80B2CFCC
/* 008A0 80B2AAA0 84620000 */  lh      $v0, 0x0000($v1)           ## 80B2CFCC
/* 008A4 80B2AAA4 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 008A8 80B2AAA8 10400002 */  beq     $v0, $zero, .L80B2AAB4
/* 008AC 80B2AAAC 2458FFFF */  addiu   $t8, $v0, 0xFFFF           ## $t8 = FFFFFFFF
/* 008B0 80B2AAB0 A4780000 */  sh      $t8, 0x0000($v1)           ## 80B2CFCC
.L80B2AAB4:
/* 008B4 80B2AAB4 0C2CB0E6 */  jal     func_80B2C398
/* 008B8 80B2AAB8 8FA5005C */  lw      $a1, 0x005C($sp)
/* 008BC 80B2AABC 0C00B638 */  jal     Actor_MoveForward

/* 008C0 80B2AAC0 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 008C4 80B2AAC4 26040198 */  addiu   $a0, $s0, 0x0198           ## $a0 = 00000198
/* 008C8 80B2AAC8 0C02927F */  jal     SkelAnime_FrameUpdateMatrix

/* 008CC 80B2AACC AFA40040 */  sw      $a0, 0x0040($sp)
/* 008D0 80B2AAD0 8FB90044 */  lw      $t9, 0x0044($sp)
/* 008D4 80B2AAD4 24070003 */  addiu   $a3, $zero, 0x0003         ## $a3 = 00000003
/* 008D8 80B2AAD8 8FA6005C */  lw      $a2, 0x005C($sp)
/* 008DC 80B2AADC 10F90004 */  beq     $a3, $t9, .L80B2AAF0
/* 008E0 80B2AAE0 00402825 */  or      $a1, $v0, $zero            ## $a1 = 00000000
/* 008E4 80B2AAE4 24090004 */  addiu   $t1, $zero, 0x0004         ## $t1 = 00000004
/* 008E8 80B2AAE8 553900A4 */  bnel    $t1, $t9, .L80B2AD7C
/* 008EC 80B2AAEC 8FAC0044 */  lw      $t4, 0x0044($sp)
.L80B2AAF0:
/* 008F0 80B2AAF0 90CA1D6C */  lbu     $t2, 0x1D6C($a2)           ## 00001D6C
/* 008F4 80B2AAF4 24090004 */  addiu   $t1, $zero, 0x0004         ## $t1 = 00000004
/* 008F8 80B2AAF8 3C0B80B3 */  lui     $t3, %hi(D_80B2CFCC)       ## $t3 = 80B30000
/* 008FC 80B2AAFC 114001E3 */  beq     $t2, $zero, .L80B2B28C
/* 00900 80B2AB00 24080001 */  addiu   $t0, $zero, 0x0001         ## $t0 = 00000001
/* 00904 80B2AB04 8CC31D90 */  lw      $v1, 0x1D90($a2)           ## 00001D90
/* 00908 80B2AB08 506001E1 */  beql    $v1, $zero, .L80B2B290
/* 0090C 80B2AB0C 8FBF003C */  lw      $ra, 0x003C($sp)
/* 00910 80B2AB10 94640000 */  lhu     $a0, 0x0000($v1)           ## 00000000
/* 00914 80B2AB14 24010002 */  addiu   $at, $zero, 0x0002         ## $at = 00000002
/* 00918 80B2AB18 14810019 */  bne     $a0, $at, .L80B2AB80
/* 0091C 80B2AB1C 00000000 */  nop
/* 00920 80B2AB20 856BCFCC */  lh      $t3, %lo(D_80B2CFCC)($t3)
/* 00924 80B2AB24 15600016 */  bne     $t3, $zero, .L80B2AB80
/* 00928 80B2AB28 00000000 */  nop
/* 0092C 80B2AB2C 8FAC0044 */  lw      $t4, 0x0044($sp)
/* 00930 80B2AB30 54EC000B */  bnel    $a3, $t4, .L80B2AB60
/* 00934 80B2AB34 8E0E01A0 */  lw      $t6, 0x01A0($s0)           ## 000001A0
/* 00938 80B2AB38 8E0D01A0 */  lw      $t5, 0x01A0($s0)           ## 000001A0
/* 0093C 80B2AB3C 3C050600 */  lui     $a1, 0x0600                ## $a1 = 06000000
/* 00940 80B2AB40 24A52928 */  addiu   $a1, $a1, 0x2928           ## $a1 = 06002928
/* 00944 80B2AB44 10AD01D1 */  beq     $a1, $t5, .L80B2B28C
/* 00948 80B2AB48 8FA40040 */  lw      $a0, 0x0040($sp)
/* 0094C 80B2AB4C 0C0294E1 */  jal     SkelAnime_ChangeAnimationPlaybackSpeed
/* 00950 80B2AB50 3C063F80 */  lui     $a2, 0x3F80                ## $a2 = 3F800000
/* 00954 80B2AB54 100001CE */  beq     $zero, $zero, .L80B2B290
/* 00958 80B2AB58 8FBF003C */  lw      $ra, 0x003C($sp)
/* 0095C 80B2AB5C 8E0E01A0 */  lw      $t6, 0x01A0($s0)           ## 000001A0
.L80B2AB60:
/* 00960 80B2AB60 3C050600 */  lui     $a1, 0x0600                ## $a1 = 06000000
/* 00964 80B2AB64 24A54AA4 */  addiu   $a1, $a1, 0x4AA4           ## $a1 = 06004AA4
/* 00968 80B2AB68 10AE01C8 */  beq     $a1, $t6, .L80B2B28C
/* 0096C 80B2AB6C 8FA40040 */  lw      $a0, 0x0040($sp)
/* 00970 80B2AB70 0C0294E1 */  jal     SkelAnime_ChangeAnimationPlaybackSpeed
/* 00974 80B2AB74 3C063F80 */  lui     $a2, 0x3F80                ## $a2 = 3F800000
/* 00978 80B2AB78 100001C5 */  beq     $zero, $zero, .L80B2B290
/* 0097C 80B2AB7C 8FBF003C */  lw      $ra, 0x003C($sp)
.L80B2AB80:
/* 00980 80B2AB80 15040018 */  bne     $t0, $a0, .L80B2ABE4
/* 00984 80B2AB84 8FAB0044 */  lw      $t3, 0x0044($sp)
/* 00988 80B2AB88 8FB80044 */  lw      $t8, 0x0044($sp)
/* 0098C 80B2AB8C 240F0064 */  addiu   $t7, $zero, 0x0064         ## $t7 = 00000064
/* 00990 80B2AB90 3C0180B3 */  lui     $at, %hi(D_80B2CFCC)       ## $at = 80B30000
/* 00994 80B2AB94 14F8000A */  bne     $a3, $t8, .L80B2ABC0
/* 00998 80B2AB98 A42FCFCC */  sh      $t7, %lo(D_80B2CFCC)($at)
/* 0099C 80B2AB9C 8E1901A0 */  lw      $t9, 0x01A0($s0)           ## 000001A0
/* 009A0 80B2ABA0 3C050600 */  lui     $a1, 0x0600                ## $a1 = 06000000
/* 009A4 80B2ABA4 24A51D28 */  addiu   $a1, $a1, 0x1D28           ## $a1 = 06001D28
/* 009A8 80B2ABA8 10B901B8 */  beq     $a1, $t9, .L80B2B28C
/* 009AC 80B2ABAC 8FA40040 */  lw      $a0, 0x0040($sp)
/* 009B0 80B2ABB0 0C0294E1 */  jal     SkelAnime_ChangeAnimationPlaybackSpeed
/* 009B4 80B2ABB4 3C063F80 */  lui     $a2, 0x3F80                ## $a2 = 3F800000
/* 009B8 80B2ABB8 100001B5 */  beq     $zero, $zero, .L80B2B290
/* 009BC 80B2ABBC 8FBF003C */  lw      $ra, 0x003C($sp)
.L80B2ABC0:
/* 009C0 80B2ABC0 8E0A01A0 */  lw      $t2, 0x01A0($s0)           ## 000001A0
/* 009C4 80B2ABC4 3C050600 */  lui     $a1, 0x0600                ## $a1 = 06000000
/* 009C8 80B2ABC8 24A53858 */  addiu   $a1, $a1, 0x3858           ## $a1 = 06003858
/* 009CC 80B2ABCC 10AA01AF */  beq     $a1, $t2, .L80B2B28C
/* 009D0 80B2ABD0 8FA40040 */  lw      $a0, 0x0040($sp)
/* 009D4 80B2ABD4 0C0294E1 */  jal     SkelAnime_ChangeAnimationPlaybackSpeed
/* 009D8 80B2ABD8 3C063F80 */  lui     $a2, 0x3F80                ## $a2 = 3F800000
/* 009DC 80B2ABDC 100001AC */  beq     $zero, $zero, .L80B2B290
/* 009E0 80B2ABE0 8FBF003C */  lw      $ra, 0x003C($sp)
.L80B2ABE4:
/* 009E4 80B2ABE4 54EB005A */  bnel    $a3, $t3, .L80B2AD50
/* 009E8 80B2ABE8 8E0B01A0 */  lw      $t3, 0x01A0($s0)           ## 000001A0
/* 009EC 80B2ABEC 920C01E5 */  lbu     $t4, 0x01E5($s0)           ## 000001E5
/* 009F0 80B2ABF0 2D810008 */  sltiu   $at, $t4, 0x0008
/* 009F4 80B2ABF4 102001A5 */  beq     $at, $zero, .L80B2B28C
/* 009F8 80B2ABF8 000C6080 */  sll     $t4, $t4,  2
/* 009FC 80B2ABFC 3C0180B3 */  lui     $at, %hi(jtbl_80B2D18C)       ## $at = 80B30000
/* 00A00 80B2AC00 002C0821 */  addu    $at, $at, $t4
/* 00A04 80B2AC04 8C2CD18C */  lw      $t4, %lo(jtbl_80B2D18C)($at)
/* 00A08 80B2AC08 01800008 */  jr      $t4
/* 00A0C 80B2AC0C 00000000 */  nop
glabel L80B2AC10
/* 00A10 80B2AC10 1524019E */  bne     $t1, $a0, .L80B2B28C
/* 00A14 80B2AC14 3C050600 */  lui     $a1, 0x0600                ## $a1 = 06000000
/* 00A18 80B2AC18 8FA40040 */  lw      $a0, 0x0040($sp)
/* 00A1C 80B2AC1C 24A50F54 */  addiu   $a1, $a1, 0x0F54           ## $a1 = 06000F54
/* 00A20 80B2AC20 0C029490 */  jal     func_800A5240
/* 00A24 80B2AC24 3C06C0A0 */  lui     $a2, 0xC0A0                ## $a2 = C0A00000
/* 00A28 80B2AC28 920D01E5 */  lbu     $t5, 0x01E5($s0)           ## 000001E5
/* 00A2C 80B2AC2C 25AE0001 */  addiu   $t6, $t5, 0x0001           ## $t6 = 00000001
/* 00A30 80B2AC30 10000196 */  beq     $zero, $zero, .L80B2B28C
/* 00A34 80B2AC34 A20E01E5 */  sb      $t6, 0x01E5($s0)           ## 000001E5
glabel L80B2AC38
/* 00A38 80B2AC38 10400194 */  beq     $v0, $zero, .L80B2B28C
/* 00A3C 80B2AC3C 8FA40040 */  lw      $a0, 0x0040($sp)
/* 00A40 80B2AC40 3C050600 */  lui     $a1, 0x0600                ## $a1 = 06000000
/* 00A44 80B2AC44 24A514F4 */  addiu   $a1, $a1, 0x14F4           ## $a1 = 060014F4
/* 00A48 80B2AC48 0C0294D3 */  jal     SkelAnime_ChangeAnimationTransitionRate
/* 00A4C 80B2AC4C 3C06C0A0 */  lui     $a2, 0xC0A0                ## $a2 = C0A00000
/* 00A50 80B2AC50 920F01E5 */  lbu     $t7, 0x01E5($s0)           ## 000001E5
/* 00A54 80B2AC54 25F80001 */  addiu   $t8, $t7, 0x0001           ## $t8 = 00000001
/* 00A58 80B2AC58 1000018C */  beq     $zero, $zero, .L80B2B28C
/* 00A5C 80B2AC5C A21801E5 */  sb      $t8, 0x01E5($s0)           ## 000001E5
glabel L80B2AC60
/* 00A60 80B2AC60 24010005 */  addiu   $at, $zero, 0x0005         ## $at = 00000005
/* 00A64 80B2AC64 14810189 */  bne     $a0, $at, .L80B2B28C
/* 00A68 80B2AC68 3C050600 */  lui     $a1, 0x0600                ## $a1 = 06000000
/* 00A6C 80B2AC6C 8FA40040 */  lw      $a0, 0x0040($sp)
/* 00A70 80B2AC70 24A508A0 */  addiu   $a1, $a1, 0x08A0           ## $a1 = 060008A0
/* 00A74 80B2AC74 0C029490 */  jal     func_800A5240
/* 00A78 80B2AC78 3C06C0A0 */  lui     $a2, 0xC0A0                ## $a2 = C0A00000
/* 00A7C 80B2AC7C 921901E5 */  lbu     $t9, 0x01E5($s0)           ## 000001E5
/* 00A80 80B2AC80 272A0001 */  addiu   $t2, $t9, 0x0001           ## $t2 = 00000001
/* 00A84 80B2AC84 10000181 */  beq     $zero, $zero, .L80B2B28C
/* 00A88 80B2AC88 A20A01E5 */  sb      $t2, 0x01E5($s0)           ## 000001E5
glabel L80B2AC8C
/* 00A8C 80B2AC8C 1040017F */  beq     $v0, $zero, .L80B2B28C
/* 00A90 80B2AC90 8FA40040 */  lw      $a0, 0x0040($sp)
/* 00A94 80B2AC94 3C050600 */  lui     $a1, 0x0600                ## $a1 = 06000000
/* 00A98 80B2AC98 24A50BC8 */  addiu   $a1, $a1, 0x0BC8           ## $a1 = 06000BC8
/* 00A9C 80B2AC9C 0C0294D3 */  jal     SkelAnime_ChangeAnimationTransitionRate
/* 00AA0 80B2ACA0 3C06C0A0 */  lui     $a2, 0xC0A0                ## $a2 = C0A00000
/* 00AA4 80B2ACA4 920B01E5 */  lbu     $t3, 0x01E5($s0)           ## 000001E5
/* 00AA8 80B2ACA8 256C0001 */  addiu   $t4, $t3, 0x0001           ## $t4 = 00000001
/* 00AAC 80B2ACAC 10000177 */  beq     $zero, $zero, .L80B2B28C
/* 00AB0 80B2ACB0 A20C01E5 */  sb      $t4, 0x01E5($s0)           ## 000001E5
glabel L80B2ACB4
/* 00AB4 80B2ACB4 2401000B */  addiu   $at, $zero, 0x000B         ## $at = 0000000B
/* 00AB8 80B2ACB8 14810174 */  bne     $a0, $at, .L80B2B28C
/* 00ABC 80B2ACBC 3C050600 */  lui     $a1, 0x0600                ## $a1 = 06000000
/* 00AC0 80B2ACC0 8FA40040 */  lw      $a0, 0x0040($sp)
/* 00AC4 80B2ACC4 24A514F4 */  addiu   $a1, $a1, 0x14F4           ## $a1 = 060014F4
/* 00AC8 80B2ACC8 0C0294D3 */  jal     SkelAnime_ChangeAnimationTransitionRate
/* 00ACC 80B2ACCC 3C06C1A0 */  lui     $a2, 0xC1A0                ## $a2 = C1A00000
/* 00AD0 80B2ACD0 920D01E5 */  lbu     $t5, 0x01E5($s0)           ## 000001E5
/* 00AD4 80B2ACD4 25AE0001 */  addiu   $t6, $t5, 0x0001           ## $t6 = 00000001
/* 00AD8 80B2ACD8 1000016C */  beq     $zero, $zero, .L80B2B28C
/* 00ADC 80B2ACDC A20E01E5 */  sb      $t6, 0x01E5($s0)           ## 000001E5
glabel L80B2ACE0
/* 00AE0 80B2ACE0 24010008 */  addiu   $at, $zero, 0x0008         ## $at = 00000008
/* 00AE4 80B2ACE4 14810169 */  bne     $a0, $at, .L80B2B28C
/* 00AE8 80B2ACE8 3C050600 */  lui     $a1, 0x0600                ## $a1 = 06000000
/* 00AEC 80B2ACEC 24A52928 */  addiu   $a1, $a1, 0x2928           ## $a1 = 06002928
/* 00AF0 80B2ACF0 8FA40040 */  lw      $a0, 0x0040($sp)
/* 00AF4 80B2ACF4 0C0294D3 */  jal     SkelAnime_ChangeAnimationTransitionRate
/* 00AF8 80B2ACF8 3C06C170 */  lui     $a2, 0xC170                ## $a2 = C1700000
/* 00AFC 80B2ACFC 920F01E5 */  lbu     $t7, 0x01E5($s0)           ## 000001E5
/* 00B00 80B2AD00 25F80001 */  addiu   $t8, $t7, 0x0001           ## $t8 = 00000001
/* 00B04 80B2AD04 10000161 */  beq     $zero, $zero, .L80B2B28C
/* 00B08 80B2AD08 A21801E5 */  sb      $t8, 0x01E5($s0)           ## 000001E5
glabel L80B2AD0C
/* 00B0C 80B2AD0C 2401000C */  addiu   $at, $zero, 0x000C         ## $at = 0000000C
/* 00B10 80B2AD10 1481015E */  bne     $a0, $at, .L80B2B28C
/* 00B14 80B2AD14 240539C8 */  addiu   $a1, $zero, 0x39C8         ## $a1 = 000039C8
/* 00B18 80B2AD18 0C00BE0A */  jal     Audio_PlayActorSound2

/* 00B1C 80B2AD1C 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 00B20 80B2AD20 3C050600 */  lui     $a1, 0x0600                ## $a1 = 06000000
/* 00B24 80B2AD24 24A505B4 */  addiu   $a1, $a1, 0x05B4           ## $a1 = 060005B4
/* 00B28 80B2AD28 8FA40040 */  lw      $a0, 0x0040($sp)
/* 00B2C 80B2AD2C 0C0294E1 */  jal     SkelAnime_ChangeAnimationPlaybackSpeed
/* 00B30 80B2AD30 3C064040 */  lui     $a2, 0x4040                ## $a2 = 40400000
/* 00B34 80B2AD34 921901E5 */  lbu     $t9, 0x01E5($s0)           ## 000001E5
/* 00B38 80B2AD38 272A0001 */  addiu   $t2, $t9, 0x0001           ## $t2 = 00000001
/* 00B3C 80B2AD3C 10000153 */  beq     $zero, $zero, .L80B2B28C
/* 00B40 80B2AD40 A20A01E5 */  sb      $t2, 0x01E5($s0)           ## 000001E5
glabel L80B2AD44
/* 00B44 80B2AD44 10000151 */  beq     $zero, $zero, .L80B2B28C
/* 00B48 80B2AD48 A20001E5 */  sb      $zero, 0x01E5($s0)         ## 000001E5
/* 00B4C 80B2AD4C 8E0B01A0 */  lw      $t3, 0x01A0($s0)           ## 000001A0
.L80B2AD50:
/* 00B50 80B2AD50 3C050600 */  lui     $a1, 0x0600                ## $a1 = 06000000
/* 00B54 80B2AD54 24A52650 */  addiu   $a1, $a1, 0x2650           ## $a1 = 06002650
/* 00B58 80B2AD58 10AB014C */  beq     $a1, $t3, .L80B2B28C
/* 00B5C 80B2AD5C 2401000C */  addiu   $at, $zero, 0x000C         ## $at = 0000000C
/* 00B60 80B2AD60 1481014A */  bne     $a0, $at, .L80B2B28C
/* 00B64 80B2AD64 3C064040 */  lui     $a2, 0x4040                ## $a2 = 40400000
/* 00B68 80B2AD68 0C0294E1 */  jal     SkelAnime_ChangeAnimationPlaybackSpeed
/* 00B6C 80B2AD6C 8FA40040 */  lw      $a0, 0x0040($sp)
/* 00B70 80B2AD70 10000147 */  beq     $zero, $zero, .L80B2B290
/* 00B74 80B2AD74 8FBF003C */  lw      $ra, 0x003C($sp)
/* 00B78 80B2AD78 8FAC0044 */  lw      $t4, 0x0044($sp)
.L80B2AD7C:
/* 00B7C 80B2AD7C 24080001 */  addiu   $t0, $zero, 0x0001         ## $t0 = 00000001
/* 00B80 80B2AD80 8FAA0044 */  lw      $t2, 0x0044($sp)
/* 00B84 80B2AD84 150C0064 */  bne     $t0, $t4, .L80B2AF18
/* 00B88 80B2AD88 24010002 */  addiu   $at, $zero, 0x0002         ## $at = 00000002
/* 00B8C 80B2AD8C 3C0D8016 */  lui     $t5, 0x8016                ## $t5 = 80160000
/* 00B90 80B2AD90 8DADF9C0 */  lw      $t5, -0x0640($t5)          ## 8015F9C0
/* 00B94 80B2AD94 24010005 */  addiu   $at, $zero, 0x0005         ## $at = 00000005
/* 00B98 80B2AD98 55A10019 */  bnel    $t5, $at, .L80B2AE00
/* 00B9C 80B2AD9C 94CF1D74 */  lhu     $t7, 0x1D74($a2)           ## 00001D74
/* 00BA0 80B2ADA0 94CE1D74 */  lhu     $t6, 0x1D74($a2)           ## 00001D74
/* 00BA4 80B2ADA4 2401034D */  addiu   $at, $zero, 0x034D         ## $at = 0000034D
/* 00BA8 80B2ADA8 24C41C24 */  addiu   $a0, $a2, 0x1C24           ## $a0 = 00001C24
/* 00BAC 80B2ADAC 15C10029 */  bne     $t6, $at, .L80B2AE54
/* 00BB0 80B2ADB0 02002825 */  or      $a1, $s0, $zero            ## $a1 = 00000000
/* 00BB4 80B2ADB4 3C014080 */  lui     $at, 0x4080                ## $at = 40800000
/* 00BB8 80B2ADB8 44819000 */  mtc1    $at, $f18                  ## $f18 = 4.00
/* 00BBC 80B2ADBC 3C0142A2 */  lui     $at, 0x42A2                ## $at = 42A20000
/* 00BC0 80B2ADC0 44812000 */  mtc1    $at, $f4                   ## $f4 = 81.00
/* 00BC4 80B2ADC4 3C0180B3 */  lui     $at, %hi(D_80B2D1AC)       ## $at = 80B30000
/* 00BC8 80B2ADC8 C426D1AC */  lwc1    $f6, %lo(D_80B2D1AC)($at)
/* 00BCC 80B2ADCC 240700F1 */  addiu   $a3, $zero, 0x00F1         ## $a3 = 000000F1
/* 00BD0 80B2ADD0 AFA0001C */  sw      $zero, 0x001C($sp)
/* 00BD4 80B2ADD4 AFA00020 */  sw      $zero, 0x0020($sp)
/* 00BD8 80B2ADD8 AFA00024 */  sw      $zero, 0x0024($sp)
/* 00BDC 80B2ADDC AFA00028 */  sw      $zero, 0x0028($sp)
/* 00BE0 80B2ADE0 E7B20010 */  swc1    $f18, 0x0010($sp)
/* 00BE4 80B2ADE4 E7A40014 */  swc1    $f4, 0x0014($sp)
/* 00BE8 80B2ADE8 0C00C916 */  jal     Actor_SpawnAttached

/* 00BEC 80B2ADEC E7A60018 */  swc1    $f6, 0x0018($sp)
/* 00BF0 80B2ADF0 8FA6005C */  lw      $a2, 0x005C($sp)
/* 00BF4 80B2ADF4 10000017 */  beq     $zero, $zero, .L80B2AE54
/* 00BF8 80B2ADF8 24080001 */  addiu   $t0, $zero, 0x0001         ## $t0 = 00000001
/* 00BFC 80B2ADFC 94CF1D74 */  lhu     $t7, 0x1D74($a2)           ## 00001D74
.L80B2AE00:
/* 00C00 80B2AE00 240100C3 */  addiu   $at, $zero, 0x00C3         ## $at = 000000C3
/* 00C04 80B2AE04 24C41C24 */  addiu   $a0, $a2, 0x1C24           ## $a0 = 00001C24
/* 00C08 80B2AE08 15E10012 */  bne     $t7, $at, .L80B2AE54
/* 00C0C 80B2AE0C 02002825 */  or      $a1, $s0, $zero            ## $a1 = 00000000
/* 00C10 80B2AE10 3C014080 */  lui     $at, 0x4080                ## $at = 40800000
/* 00C14 80B2AE14 44814000 */  mtc1    $at, $f8                   ## $f8 = 4.00
/* 00C18 80B2AE18 3C0142A2 */  lui     $at, 0x42A2                ## $at = 42A20000
/* 00C1C 80B2AE1C 44815000 */  mtc1    $at, $f10                  ## $f10 = 81.00
/* 00C20 80B2AE20 3C0180B3 */  lui     $at, %hi(D_80B2D1B0)       ## $at = 80B30000
/* 00C24 80B2AE24 C430D1B0 */  lwc1    $f16, %lo(D_80B2D1B0)($at)
/* 00C28 80B2AE28 240700F1 */  addiu   $a3, $zero, 0x00F1         ## $a3 = 000000F1
/* 00C2C 80B2AE2C AFA0001C */  sw      $zero, 0x001C($sp)
/* 00C30 80B2AE30 AFA00020 */  sw      $zero, 0x0020($sp)
/* 00C34 80B2AE34 AFA00024 */  sw      $zero, 0x0024($sp)
/* 00C38 80B2AE38 AFA80028 */  sw      $t0, 0x0028($sp)
/* 00C3C 80B2AE3C E7A80010 */  swc1    $f8, 0x0010($sp)
/* 00C40 80B2AE40 E7AA0014 */  swc1    $f10, 0x0014($sp)
/* 00C44 80B2AE44 0C00C916 */  jal     Actor_SpawnAttached

/* 00C48 80B2AE48 E7B00018 */  swc1    $f16, 0x0018($sp)
/* 00C4C 80B2AE4C 8FA6005C */  lw      $a2, 0x005C($sp)
/* 00C50 80B2AE50 24080001 */  addiu   $t0, $zero, 0x0001         ## $t0 = 00000001
.L80B2AE54:
/* 00C54 80B2AE54 920301E5 */  lbu     $v1, 0x01E5($s0)           ## 000001E5
/* 00C58 80B2AE58 50600006 */  beql    $v1, $zero, .L80B2AE74
/* 00C5C 80B2AE5C 90D81D6C */  lbu     $t8, 0x1D6C($a2)           ## 00001D6C
/* 00C60 80B2AE60 50680019 */  beql    $v1, $t0, .L80B2AEC8
/* 00C64 80B2AE64 90CD1D6C */  lbu     $t5, 0x1D6C($a2)           ## 00001D6C
/* 00C68 80B2AE68 10000109 */  beq     $zero, $zero, .L80B2B290
/* 00C6C 80B2AE6C 8FBF003C */  lw      $ra, 0x003C($sp)
/* 00C70 80B2AE70 90D81D6C */  lbu     $t8, 0x1D6C($a2)           ## 00001D6C
.L80B2AE74:
/* 00C74 80B2AE74 53000106 */  beql    $t8, $zero, .L80B2B290
/* 00C78 80B2AE78 8FBF003C */  lw      $ra, 0x003C($sp)
/* 00C7C 80B2AE7C 8CC21D8C */  lw      $v0, 0x1D8C($a2)           ## 00001D8C
/* 00C80 80B2AE80 50400103 */  beql    $v0, $zero, .L80B2B290
/* 00C84 80B2AE84 8FBF003C */  lw      $ra, 0x003C($sp)
/* 00C88 80B2AE88 94590000 */  lhu     $t9, 0x0000($v0)           ## 00000000
/* 00C8C 80B2AE8C 24010006 */  addiu   $at, $zero, 0x0006         ## $at = 00000006
/* 00C90 80B2AE90 572100FF */  bnel    $t9, $at, .L80B2B290
/* 00C94 80B2AE94 8FBF003C */  lw      $ra, 0x003C($sp)
/* 00C98 80B2AE98 8E0A01A0 */  lw      $t2, 0x01A0($s0)           ## 000001A0
/* 00C9C 80B2AE9C 3C050600 */  lui     $a1, 0x0600                ## $a1 = 06000000
/* 00CA0 80B2AEA0 24A52574 */  addiu   $a1, $a1, 0x2574           ## $a1 = 06002574
/* 00CA4 80B2AEA4 10AA00F9 */  beq     $a1, $t2, .L80B2B28C
/* 00CA8 80B2AEA8 8FA40040 */  lw      $a0, 0x0040($sp)
/* 00CAC 80B2AEAC 0C0294E1 */  jal     SkelAnime_ChangeAnimationPlaybackSpeed
/* 00CB0 80B2AEB0 3C063FC0 */  lui     $a2, 0x3FC0                ## $a2 = 3FC00000
/* 00CB4 80B2AEB4 920B01E5 */  lbu     $t3, 0x01E5($s0)           ## 000001E5
/* 00CB8 80B2AEB8 256C0001 */  addiu   $t4, $t3, 0x0001           ## $t4 = 00000001
/* 00CBC 80B2AEBC 100000F3 */  beq     $zero, $zero, .L80B2B28C
/* 00CC0 80B2AEC0 A20C01E5 */  sb      $t4, 0x01E5($s0)           ## 000001E5
/* 00CC4 80B2AEC4 90CD1D6C */  lbu     $t5, 0x1D6C($a2)           ## 00001D6C
.L80B2AEC8:
/* 00CC8 80B2AEC8 51A000F1 */  beql    $t5, $zero, .L80B2B290
/* 00CCC 80B2AECC 8FBF003C */  lw      $ra, 0x003C($sp)
/* 00CD0 80B2AED0 8CC21D8C */  lw      $v0, 0x1D8C($a2)           ## 00001D8C
/* 00CD4 80B2AED4 504000EE */  beql    $v0, $zero, .L80B2B290
/* 00CD8 80B2AED8 8FBF003C */  lw      $ra, 0x003C($sp)
/* 00CDC 80B2AEDC 944E0000 */  lhu     $t6, 0x0000($v0)           ## 00000000
/* 00CE0 80B2AEE0 24010002 */  addiu   $at, $zero, 0x0002         ## $at = 00000002
/* 00CE4 80B2AEE4 55C100EA */  bnel    $t6, $at, .L80B2B290
/* 00CE8 80B2AEE8 8FBF003C */  lw      $ra, 0x003C($sp)
/* 00CEC 80B2AEEC 8E0F01A0 */  lw      $t7, 0x01A0($s0)           ## 000001A0
/* 00CF0 80B2AEF0 3C050600 */  lui     $a1, 0x0600                ## $a1 = 06000000
/* 00CF4 80B2AEF4 24A529CC */  addiu   $a1, $a1, 0x29CC           ## $a1 = 060029CC
/* 00CF8 80B2AEF8 10AF00E4 */  beq     $a1, $t7, .L80B2B28C
/* 00CFC 80B2AEFC 8FA40040 */  lw      $a0, 0x0040($sp)
/* 00D00 80B2AF00 0C0294E1 */  jal     SkelAnime_ChangeAnimationPlaybackSpeed
/* 00D04 80B2AF04 3C064040 */  lui     $a2, 0x4040                ## $a2 = 40400000
/* 00D08 80B2AF08 921801E5 */  lbu     $t8, 0x01E5($s0)           ## 000001E5
/* 00D0C 80B2AF0C 27190001 */  addiu   $t9, $t8, 0x0001           ## $t9 = 00000001
/* 00D10 80B2AF10 100000DE */  beq     $zero, $zero, .L80B2B28C
/* 00D14 80B2AF14 A21901E5 */  sb      $t9, 0x01E5($s0)           ## 000001E5
.L80B2AF18:
/* 00D18 80B2AF18 15410067 */  bne     $t2, $at, .L80B2B0B8
/* 00D1C 80B2AF1C 8FAE0044 */  lw      $t6, 0x0044($sp)
/* 00D20 80B2AF20 84CB00A4 */  lh      $t3, 0x00A4($a2)           ## 000000A4
/* 00D24 80B2AF24 24010051 */  addiu   $at, $zero, 0x0051         ## $at = 00000051
/* 00D28 80B2AF28 00002025 */  or      $a0, $zero, $zero          ## $a0 = 00000000
/* 00D2C 80B2AF2C 15610032 */  bne     $t3, $at, .L80B2AFF8
/* 00D30 80B2AF30 00000000 */  nop
/* 00D34 80B2AF34 920301E5 */  lbu     $v1, 0x01E5($s0)           ## 000001E5
/* 00D38 80B2AF38 50600006 */  beql    $v1, $zero, .L80B2AF54
/* 00D3C 80B2AF3C 90CC1D6C */  lbu     $t4, 0x1D6C($a2)           ## 00001D6C
/* 00D40 80B2AF40 50680019 */  beql    $v1, $t0, .L80B2AFA8
/* 00D44 80B2AF44 90D91D6C */  lbu     $t9, 0x1D6C($a2)           ## 00001D6C
/* 00D48 80B2AF48 100000D1 */  beq     $zero, $zero, .L80B2B290
/* 00D4C 80B2AF4C 8FBF003C */  lw      $ra, 0x003C($sp)
/* 00D50 80B2AF50 90CC1D6C */  lbu     $t4, 0x1D6C($a2)           ## 00001D6C
.L80B2AF54:
/* 00D54 80B2AF54 518000CE */  beql    $t4, $zero, .L80B2B290
/* 00D58 80B2AF58 8FBF003C */  lw      $ra, 0x003C($sp)
/* 00D5C 80B2AF5C 8CC21D8C */  lw      $v0, 0x1D8C($a2)           ## 00001D8C
/* 00D60 80B2AF60 504000CB */  beql    $v0, $zero, .L80B2B290
/* 00D64 80B2AF64 8FBF003C */  lw      $ra, 0x003C($sp)
/* 00D68 80B2AF68 944D0000 */  lhu     $t5, 0x0000($v0)           ## 00000000
/* 00D6C 80B2AF6C 24010006 */  addiu   $at, $zero, 0x0006         ## $at = 00000006
/* 00D70 80B2AF70 55A100C7 */  bnel    $t5, $at, .L80B2B290
/* 00D74 80B2AF74 8FBF003C */  lw      $ra, 0x003C($sp)
/* 00D78 80B2AF78 8E0E01A0 */  lw      $t6, 0x01A0($s0)           ## 000001A0
/* 00D7C 80B2AF7C 3C050600 */  lui     $a1, 0x0600                ## $a1 = 06000000
/* 00D80 80B2AF80 24A51410 */  addiu   $a1, $a1, 0x1410           ## $a1 = 06001410
/* 00D84 80B2AF84 10AE00C1 */  beq     $a1, $t6, .L80B2B28C
/* 00D88 80B2AF88 8FA40040 */  lw      $a0, 0x0040($sp)
/* 00D8C 80B2AF8C 0C0294E1 */  jal     SkelAnime_ChangeAnimationPlaybackSpeed
/* 00D90 80B2AF90 3C063FC0 */  lui     $a2, 0x3FC0                ## $a2 = 3FC00000
/* 00D94 80B2AF94 920F01E5 */  lbu     $t7, 0x01E5($s0)           ## 000001E5
/* 00D98 80B2AF98 25F80001 */  addiu   $t8, $t7, 0x0001           ## $t8 = 00000001
/* 00D9C 80B2AF9C 100000BB */  beq     $zero, $zero, .L80B2B28C
/* 00DA0 80B2AFA0 A21801E5 */  sb      $t8, 0x01E5($s0)           ## 000001E5
/* 00DA4 80B2AFA4 90D91D6C */  lbu     $t9, 0x1D6C($a2)           ## 00001D6C
.L80B2AFA8:
/* 00DA8 80B2AFA8 532000B9 */  beql    $t9, $zero, .L80B2B290
/* 00DAC 80B2AFAC 8FBF003C */  lw      $ra, 0x003C($sp)
/* 00DB0 80B2AFB0 8CC21D8C */  lw      $v0, 0x1D8C($a2)           ## 00001D8C
/* 00DB4 80B2AFB4 504000B6 */  beql    $v0, $zero, .L80B2B290
/* 00DB8 80B2AFB8 8FBF003C */  lw      $ra, 0x003C($sp)
/* 00DBC 80B2AFBC 944A0000 */  lhu     $t2, 0x0000($v0)           ## 00000000
/* 00DC0 80B2AFC0 24010002 */  addiu   $at, $zero, 0x0002         ## $at = 00000002
/* 00DC4 80B2AFC4 554100B2 */  bnel    $t2, $at, .L80B2B290
/* 00DC8 80B2AFC8 8FBF003C */  lw      $ra, 0x003C($sp)
/* 00DCC 80B2AFCC 8E0B01A0 */  lw      $t3, 0x01A0($s0)           ## 000001A0
/* 00DD0 80B2AFD0 3C050600 */  lui     $a1, 0x0600                ## $a1 = 06000000
/* 00DD4 80B2AFD4 24A50450 */  addiu   $a1, $a1, 0x0450           ## $a1 = 06000450
/* 00DD8 80B2AFD8 10AB00AC */  beq     $a1, $t3, .L80B2B28C
/* 00DDC 80B2AFDC 8FA40040 */  lw      $a0, 0x0040($sp)
/* 00DE0 80B2AFE0 0C0294E1 */  jal     SkelAnime_ChangeAnimationPlaybackSpeed
/* 00DE4 80B2AFE4 3C064040 */  lui     $a2, 0x4040                ## $a2 = 40400000
/* 00DE8 80B2AFE8 920C01E5 */  lbu     $t4, 0x01E5($s0)           ## 000001E5
/* 00DEC 80B2AFEC 258D0001 */  addiu   $t5, $t4, 0x0001           ## $t5 = 00000001
/* 00DF0 80B2AFF0 100000A6 */  beq     $zero, $zero, .L80B2B28C
/* 00DF4 80B2AFF4 A20D01E5 */  sb      $t5, 0x01E5($s0)           ## 000001E5
.L80B2AFF8:
/* 00DF8 80B2AFF8 0C03D9E8 */  jal     func_800F67A0
/* 00DFC 80B2AFFC AFA50050 */  sw      $a1, 0x0050($sp)
/* 00E00 80B2B000 920301E5 */  lbu     $v1, 0x01E5($s0)           ## 000001E5
/* 00E04 80B2B004 8FA50050 */  lw      $a1, 0x0050($sp)
/* 00E08 80B2B008 8FA6005C */  lw      $a2, 0x005C($sp)
/* 00E0C 80B2B00C 10600009 */  beq     $v1, $zero, .L80B2B034
/* 00E10 80B2B010 24080001 */  addiu   $t0, $zero, 0x0001         ## $t0 = 00000001
/* 00E14 80B2B014 10680010 */  beq     $v1, $t0, .L80B2B058
/* 00E18 80B2B018 24010002 */  addiu   $at, $zero, 0x0002         ## $at = 00000002
/* 00E1C 80B2B01C 1061001C */  beq     $v1, $at, .L80B2B090
/* 00E20 80B2B020 24010003 */  addiu   $at, $zero, 0x0003         ## $at = 00000003
/* 00E24 80B2B024 5061009A */  beql    $v1, $at, .L80B2B290
/* 00E28 80B2B028 8FBF003C */  lw      $ra, 0x003C($sp)
/* 00E2C 80B2B02C 10000098 */  beq     $zero, $zero, .L80B2B290
/* 00E30 80B2B030 8FBF003C */  lw      $ra, 0x003C($sp)
.L80B2B034:
/* 00E34 80B2B034 3C050600 */  lui     $a1, 0x0600                ## $a1 = 06000000
/* 00E38 80B2B038 24A5504C */  addiu   $a1, $a1, 0x504C           ## $a1 = 0600504C
/* 00E3C 80B2B03C 8FA40040 */  lw      $a0, 0x0040($sp)
/* 00E40 80B2B040 0C0294E1 */  jal     SkelAnime_ChangeAnimationPlaybackSpeed
/* 00E44 80B2B044 3C063F80 */  lui     $a2, 0x3F80                ## $a2 = 3F800000
/* 00E48 80B2B048 920E01E5 */  lbu     $t6, 0x01E5($s0)           ## 000001E5
/* 00E4C 80B2B04C 25CF0001 */  addiu   $t7, $t6, 0x0001           ## $t7 = 00000001
/* 00E50 80B2B050 1000008E */  beq     $zero, $zero, .L80B2B28C
/* 00E54 80B2B054 A20F01E5 */  sb      $t7, 0x01E5($s0)           ## 000001E5
.L80B2B058:
/* 00E58 80B2B058 8CD81D8C */  lw      $t8, 0x1D8C($a2)           ## 00001D8C
/* 00E5C 80B2B05C 2401000B */  addiu   $at, $zero, 0x000B         ## $at = 0000000B
/* 00E60 80B2B060 3C050600 */  lui     $a1, 0x0600                ## $a1 = 06000000
/* 00E64 80B2B064 97190000 */  lhu     $t9, 0x0000($t8)           ## 00000000
/* 00E68 80B2B068 24A5420C */  addiu   $a1, $a1, 0x420C           ## $a1 = 0600420C
/* 00E6C 80B2B06C 8FA40040 */  lw      $a0, 0x0040($sp)
/* 00E70 80B2B070 57210087 */  bnel    $t9, $at, .L80B2B290
/* 00E74 80B2B074 8FBF003C */  lw      $ra, 0x003C($sp)
/* 00E78 80B2B078 0C029490 */  jal     func_800A5240
/* 00E7C 80B2B07C 3C06C0A0 */  lui     $a2, 0xC0A0                ## $a2 = C0A00000
/* 00E80 80B2B080 920A01E5 */  lbu     $t2, 0x01E5($s0)           ## 000001E5
/* 00E84 80B2B084 254B0001 */  addiu   $t3, $t2, 0x0001           ## $t3 = 00000001
/* 00E88 80B2B088 10000080 */  beq     $zero, $zero, .L80B2B28C
/* 00E8C 80B2B08C A20B01E5 */  sb      $t3, 0x01E5($s0)           ## 000001E5
.L80B2B090:
/* 00E90 80B2B090 10A0007E */  beq     $a1, $zero, .L80B2B28C
/* 00E94 80B2B094 8FA40040 */  lw      $a0, 0x0040($sp)
/* 00E98 80B2B098 3C050600 */  lui     $a1, 0x0600                ## $a1 = 06000000
/* 00E9C 80B2B09C 24A548FC */  addiu   $a1, $a1, 0x48FC           ## $a1 = 060048FC
/* 00EA0 80B2B0A0 0C0294D3 */  jal     SkelAnime_ChangeAnimationTransitionRate
/* 00EA4 80B2B0A4 3C06C0A0 */  lui     $a2, 0xC0A0                ## $a2 = C0A00000
/* 00EA8 80B2B0A8 920C01E5 */  lbu     $t4, 0x01E5($s0)           ## 000001E5
/* 00EAC 80B2B0AC 258D0001 */  addiu   $t5, $t4, 0x0001           ## $t5 = 00000001
/* 00EB0 80B2B0B0 10000076 */  beq     $zero, $zero, .L80B2B28C
/* 00EB4 80B2B0B4 A20D01E5 */  sb      $t5, 0x01E5($s0)           ## 000001E5
.L80B2B0B8:
/* 00EB8 80B2B0B8 24040007 */  addiu   $a0, $zero, 0x0007         ## $a0 = 00000007
/* 00EBC 80B2B0BC 548E002F */  bnel    $a0, $t6, .L80B2B17C
/* 00EC0 80B2B0C0 8FAE0044 */  lw      $t6, 0x0044($sp)
/* 00EC4 80B2B0C4 920301E5 */  lbu     $v1, 0x01E5($s0)           ## 000001E5
/* 00EC8 80B2B0C8 50600006 */  beql    $v1, $zero, .L80B2B0E4
/* 00ECC 80B2B0CC 90CF1D6C */  lbu     $t7, 0x1D6C($a2)           ## 00001D6C
/* 00ED0 80B2B0D0 1068001F */  beq     $v1, $t0, .L80B2B150
/* 00ED4 80B2B0D4 00000000 */  nop
/* 00ED8 80B2B0D8 1000006D */  beq     $zero, $zero, .L80B2B290
/* 00EDC 80B2B0DC 8FBF003C */  lw      $ra, 0x003C($sp)
/* 00EE0 80B2B0E0 90CF1D6C */  lbu     $t7, 0x1D6C($a2)           ## 00001D6C
.L80B2B0E4:
/* 00EE4 80B2B0E4 51E0006A */  beql    $t7, $zero, .L80B2B290
/* 00EE8 80B2B0E8 8FBF003C */  lw      $ra, 0x003C($sp)
/* 00EEC 80B2B0EC 8CC31D90 */  lw      $v1, 0x1D90($a2)           ## 00001D90
/* 00EF0 80B2B0F0 50600067 */  beql    $v1, $zero, .L80B2B290
/* 00EF4 80B2B0F4 8FBF003C */  lw      $ra, 0x003C($sp)
/* 00EF8 80B2B0F8 94780000 */  lhu     $t8, 0x0000($v1)           ## 00000000
/* 00EFC 80B2B0FC 3C078013 */  lui     $a3, 0x8013                ## $a3 = 80130000
/* 00F00 80B2B100 24E733E0 */  addiu   $a3, $a3, 0x33E0           ## $a3 = 801333E0
/* 00F04 80B2B104 14980061 */  bne     $a0, $t8, .L80B2B28C
/* 00F08 80B2B108 3C058013 */  lui     $a1, 0x8013                ## $a1 = 80130000
/* 00F0C 80B2B10C 3C198013 */  lui     $t9, 0x8013                ## $t9 = 80130000
/* 00F10 80B2B110 273933E8 */  addiu   $t9, $t9, 0x33E8           ## $t9 = 801333E8
/* 00F14 80B2B114 AFB90014 */  sw      $t9, 0x0014($sp)
/* 00F18 80B2B118 240439C7 */  addiu   $a0, $zero, 0x39C7         ## $a0 = 000039C7
/* 00F1C 80B2B11C 24A533D4 */  addiu   $a1, $a1, 0x33D4           ## $a1 = 801333D4
/* 00F20 80B2B120 24060004 */  addiu   $a2, $zero, 0x0004         ## $a2 = 00000004
/* 00F24 80B2B124 0C03DCE3 */  jal     Audio_PlaySoundGeneral

/* 00F28 80B2B128 AFA70010 */  sw      $a3, 0x0010($sp)
/* 00F2C 80B2B12C 3C050600 */  lui     $a1, 0x0600                ## $a1 = 06000000
/* 00F30 80B2B130 24A54534 */  addiu   $a1, $a1, 0x4534           ## $a1 = 06004534
/* 00F34 80B2B134 8FA40040 */  lw      $a0, 0x0040($sp)
/* 00F38 80B2B138 0C029490 */  jal     func_800A5240
/* 00F3C 80B2B13C 3C06C0A0 */  lui     $a2, 0xC0A0                ## $a2 = C0A00000
/* 00F40 80B2B140 920A01E5 */  lbu     $t2, 0x01E5($s0)           ## 000001E5
/* 00F44 80B2B144 254B0001 */  addiu   $t3, $t2, 0x0001           ## $t3 = 00000001
/* 00F48 80B2B148 10000050 */  beq     $zero, $zero, .L80B2B28C
/* 00F4C 80B2B14C A20B01E5 */  sb      $t3, 0x01E5($s0)           ## 000001E5
.L80B2B150:
/* 00F50 80B2B150 1040004E */  beq     $v0, $zero, .L80B2B28C
/* 00F54 80B2B154 8FA40040 */  lw      $a0, 0x0040($sp)
/* 00F58 80B2B158 3C050600 */  lui     $a1, 0x0600                ## $a1 = 06000000
/* 00F5C 80B2B15C 24A548B0 */  addiu   $a1, $a1, 0x48B0           ## $a1 = 060048B0
/* 00F60 80B2B160 0C0294D3 */  jal     SkelAnime_ChangeAnimationTransitionRate
/* 00F64 80B2B164 3C06C0A0 */  lui     $a2, 0xC0A0                ## $a2 = C0A00000
/* 00F68 80B2B168 920C01E5 */  lbu     $t4, 0x01E5($s0)           ## 000001E5
/* 00F6C 80B2B16C 258D0001 */  addiu   $t5, $t4, 0x0001           ## $t5 = 00000001
/* 00F70 80B2B170 10000046 */  beq     $zero, $zero, .L80B2B28C
/* 00F74 80B2B174 A20D01E5 */  sb      $t5, 0x01E5($s0)           ## 000001E5
/* 00F78 80B2B178 8FAE0044 */  lw      $t6, 0x0044($sp)
.L80B2B17C:
/* 00F7C 80B2B17C 24010008 */  addiu   $at, $zero, 0x0008         ## $at = 00000008
/* 00F80 80B2B180 55C10043 */  bnel    $t6, $at, .L80B2B290
/* 00F84 80B2B184 8FBF003C */  lw      $ra, 0x003C($sp)
/* 00F88 80B2B188 920301E5 */  lbu     $v1, 0x01E5($s0)           ## 000001E5
/* 00F8C 80B2B18C 5060000A */  beql    $v1, $zero, .L80B2B1B8
/* 00F90 80B2B190 90CF1D6C */  lbu     $t7, 0x1D6C($a2)           ## 00001D6C
/* 00F94 80B2B194 10680019 */  beq     $v1, $t0, .L80B2B1FC
/* 00F98 80B2B198 24010002 */  addiu   $at, $zero, 0x0002         ## $at = 00000002
/* 00F9C 80B2B19C 10610025 */  beq     $v1, $at, .L80B2B234
/* 00FA0 80B2B1A0 00000000 */  nop
/* 00FA4 80B2B1A4 5067002E */  beql    $v1, $a3, .L80B2B260
/* 00FA8 80B2B1A8 8CD91D90 */  lw      $t9, 0x1D90($a2)           ## 00001D90
/* 00FAC 80B2B1AC 10000037 */  beq     $zero, $zero, .L80B2B28C
/* 00FB0 80B2B1B0 A20001E5 */  sb      $zero, 0x01E5($s0)         ## 000001E5
/* 00FB4 80B2B1B4 90CF1D6C */  lbu     $t7, 0x1D6C($a2)           ## 00001D6C
.L80B2B1B8:
/* 00FB8 80B2B1B8 51E00035 */  beql    $t7, $zero, .L80B2B290
/* 00FBC 80B2B1BC 8FBF003C */  lw      $ra, 0x003C($sp)
/* 00FC0 80B2B1C0 8CC31D90 */  lw      $v1, 0x1D90($a2)           ## 00001D90
/* 00FC4 80B2B1C4 50600032 */  beql    $v1, $zero, .L80B2B290
/* 00FC8 80B2B1C8 8FBF003C */  lw      $ra, 0x003C($sp)
/* 00FCC 80B2B1CC 94780000 */  lhu     $t8, 0x0000($v1)           ## 00000000
/* 00FD0 80B2B1D0 24010009 */  addiu   $at, $zero, 0x0009         ## $at = 00000009
/* 00FD4 80B2B1D4 8FA40040 */  lw      $a0, 0x0040($sp)
/* 00FD8 80B2B1D8 1701002C */  bne     $t8, $at, .L80B2B28C
/* 00FDC 80B2B1DC 3C050600 */  lui     $a1, 0x0600                ## $a1 = 06000000
/* 00FE0 80B2B1E0 24A550A8 */  addiu   $a1, $a1, 0x50A8           ## $a1 = 060050A8
/* 00FE4 80B2B1E4 0C0294E1 */  jal     SkelAnime_ChangeAnimationPlaybackSpeed
/* 00FE8 80B2B1E8 3C063F80 */  lui     $a2, 0x3F80                ## $a2 = 3F800000
/* 00FEC 80B2B1EC 921901E5 */  lbu     $t9, 0x01E5($s0)           ## 000001E5
/* 00FF0 80B2B1F0 272A0001 */  addiu   $t2, $t9, 0x0001           ## $t2 = 00000001
/* 00FF4 80B2B1F4 10000025 */  beq     $zero, $zero, .L80B2B28C
/* 00FF8 80B2B1F8 A20A01E5 */  sb      $t2, 0x01E5($s0)           ## 000001E5
.L80B2B1FC:
/* 00FFC 80B2B1FC 8CCB1D90 */  lw      $t3, 0x1D90($a2)           ## 00001D90
/* 01000 80B2B200 2401000A */  addiu   $at, $zero, 0x000A         ## $at = 0000000A
/* 01004 80B2B204 3C050600 */  lui     $a1, 0x0600                ## $a1 = 06000000
/* 01008 80B2B208 956C0000 */  lhu     $t4, 0x0000($t3)           ## 00000000
/* 0100C 80B2B20C 24A53284 */  addiu   $a1, $a1, 0x3284           ## $a1 = 06003284
/* 01010 80B2B210 8FA40040 */  lw      $a0, 0x0040($sp)
/* 01014 80B2B214 5581001E */  bnel    $t4, $at, .L80B2B290
/* 01018 80B2B218 8FBF003C */  lw      $ra, 0x003C($sp)
/* 0101C 80B2B21C 0C029490 */  jal     func_800A5240
/* 01020 80B2B220 3C06C120 */  lui     $a2, 0xC120                ## $a2 = C1200000
/* 01024 80B2B224 920D01E5 */  lbu     $t5, 0x01E5($s0)           ## 000001E5
/* 01028 80B2B228 25AE0001 */  addiu   $t6, $t5, 0x0001           ## $t6 = 00000001
/* 0102C 80B2B22C 10000017 */  beq     $zero, $zero, .L80B2B28C
/* 01030 80B2B230 A20E01E5 */  sb      $t6, 0x01E5($s0)           ## 000001E5
.L80B2B234:
/* 01034 80B2B234 10400015 */  beq     $v0, $zero, .L80B2B28C
/* 01038 80B2B238 8FA40040 */  lw      $a0, 0x0040($sp)
/* 0103C 80B2B23C 3C050600 */  lui     $a1, 0x0600                ## $a1 = 06000000
/* 01040 80B2B240 24A53D84 */  addiu   $a1, $a1, 0x3D84           ## $a1 = 06003D84
/* 01044 80B2B244 0C0294D3 */  jal     SkelAnime_ChangeAnimationTransitionRate
/* 01048 80B2B248 3C06C0A0 */  lui     $a2, 0xC0A0                ## $a2 = C0A00000
/* 0104C 80B2B24C 920F01E5 */  lbu     $t7, 0x01E5($s0)           ## 000001E5
/* 01050 80B2B250 25F80001 */  addiu   $t8, $t7, 0x0001           ## $t8 = 00000001
/* 01054 80B2B254 1000000D */  beq     $zero, $zero, .L80B2B28C
/* 01058 80B2B258 A21801E5 */  sb      $t8, 0x01E5($s0)           ## 000001E5
/* 0105C 80B2B25C 8CD91D90 */  lw      $t9, 0x1D90($a2)           ## 00001D90
.L80B2B260:
/* 01060 80B2B260 3C050600 */  lui     $a1, 0x0600                ## $a1 = 06000000
/* 01064 80B2B264 24A53428 */  addiu   $a1, $a1, 0x3428           ## $a1 = 06003428
/* 01068 80B2B268 972A0000 */  lhu     $t2, 0x0000($t9)           ## 00000000
/* 0106C 80B2B26C 8FA40040 */  lw      $a0, 0x0040($sp)
/* 01070 80B2B270 552A0007 */  bnel    $t1, $t2, .L80B2B290
/* 01074 80B2B274 8FBF003C */  lw      $ra, 0x003C($sp)
/* 01078 80B2B278 0C029490 */  jal     func_800A5240
/* 0107C 80B2B27C 3C06C0A0 */  lui     $a2, 0xC0A0                ## $a2 = C0A00000
/* 01080 80B2B280 920B01E5 */  lbu     $t3, 0x01E5($s0)           ## 000001E5
/* 01084 80B2B284 256C0001 */  addiu   $t4, $t3, 0x0001           ## $t4 = 00000001
/* 01088 80B2B288 A20C01E5 */  sb      $t4, 0x01E5($s0)           ## 000001E5
.L80B2B28C:
/* 0108C 80B2B28C 8FBF003C */  lw      $ra, 0x003C($sp)
.L80B2B290:
/* 01090 80B2B290 8FB00038 */  lw      $s0, 0x0038($sp)
/* 01094 80B2B294 27BD0058 */  addiu   $sp, $sp, 0x0058           ## $sp = 00000000
/* 01098 80B2B298 03E00008 */  jr      $ra
/* 0109C 80B2B29C 00000000 */  nop


