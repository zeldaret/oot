glabel func_808113A8
/* 0D668 808113A8 27BDFF88 */  addiu   $sp, $sp, 0xFF88           ## $sp = FFFFFF88
/* 0D66C 808113AC AFB00018 */  sw      $s0, 0x0018($sp)           
/* 0D670 808113B0 00808025 */  or      $s0, $a0, $zero            ## $s0 = 00000000
/* 0D674 808113B4 AFB20020 */  sw      $s2, 0x0020($sp)           
/* 0D678 808113B8 AFBF0024 */  sw      $ra, 0x0024($sp)           
/* 0D67C 808113BC 261201E0 */  addiu   $s2, $s0, 0x01E0           ## $s2 = 000001E0
/* 0D680 808113C0 AFB1001C */  sw      $s1, 0x001C($sp)           
/* 0D684 808113C4 0C02A735 */  jal     Sram_Alloc              
/* 0D688 808113C8 02402825 */  or      $a1, $s2, $zero            ## $a1 = 000001E0
/* 0D68C 808113CC 3C028016 */  lui     $v0, %hi(gGameInfo)
/* 0D690 808113D0 2442FA90 */  addiu   $v0, %lo(gGameInfo)
/* 0D694 808113D4 8C4F0000 */  lw      $t7, 0x0000($v0)           ## 8015FA90
/* 0D698 808113D8 240E0020 */  addiu   $t6, $zero, 0x0020         ## $t6 = 00000020
/* 0D69C 808113DC 24180016 */  addiu   $t8, $zero, 0x0016         ## $t8 = 00000016
/* 0D6A0 808113E0 A5EE07A2 */  sh      $t6, 0x07A2($t7)           ## 000007A2
/* 0D6A4 808113E4 8C590000 */  lw      $t9, 0x0000($v0)           ## 8015FA90
/* 0D6A8 808113E8 24060014 */  addiu   $a2, $zero, 0x0014         ## $a2 = 00000014
/* 0D6AC 808113EC 240FFFF6 */  addiu   $t7, $zero, 0xFFF6         ## $t7 = FFFFFFF6
/* 0D6B0 808113F0 A73807A4 */  sh      $t8, 0x07A4($t9)           ## 000007A4
/* 0D6B4 808113F4 8C4E0000 */  lw      $t6, 0x0000($v0)           ## 8015FA90
/* 0D6B8 808113F8 240C00A0 */  addiu   $t4, $zero, 0x00A0         ## $t4 = 000000A0
/* 0D6BC 808113FC 240D0098 */  addiu   $t5, $zero, 0x0098         ## $t5 = 00000098
/* 0D6C0 80811400 A5C607A6 */  sh      $a2, 0x07A6($t6)           ## 000007C6
/* 0D6C4 80811404 8C580000 */  lw      $t8, 0x0000($v0)           ## 8015FA90
/* 0D6C8 80811408 240E03E8 */  addiu   $t6, $zero, 0x03E8         ## $t6 = 000003E8
/* 0D6CC 8081140C 24070008 */  addiu   $a3, $zero, 0x0008         ## $a3 = 00000008
/* 0D6D0 80811410 A70F07A8 */  sh      $t7, 0x07A8($t8)           ## 000007BE
/* 0D6D4 80811414 8C590000 */  lw      $t9, 0x0000($v0)           ## 8015FA90
/* 0D6D8 80811418 2418FD44 */  addiu   $t8, $zero, 0xFD44         ## $t8 = FFFFFD44
/* 0D6DC 8081141C 241F0003 */  addiu   $ra, $zero, 0x0003         ## $ra = 00000003
/* 0D6E0 80811420 A72007AA */  sh      $zero, 0x07AA($t9)         ## 000007AA
/* 0D6E4 80811424 8C4F0000 */  lw      $t7, 0x0000($v0)           ## 8015FA90
/* 0D6E8 80811428 2408000A */  addiu   $t0, $zero, 0x000A         ## $t0 = 0000000A
/* 0D6EC 8081142C 2411000E */  addiu   $s1, $zero, 0x000E         ## $s1 = 0000000E
/* 0D6F0 80811430 A5EE07AC */  sh      $t6, 0x07AC($t7)           ## 000007A2
/* 0D6F4 80811434 8C590000 */  lw      $t9, 0x0000($v0)           ## 8015FA90
/* 0D6F8 80811438 240E00A4 */  addiu   $t6, $zero, 0x00A4         ## $t6 = 000000A4
/* 0D6FC 8081143C 24050001 */  addiu   $a1, $zero, 0x0001         ## $a1 = 00000001
/* 0D700 80811440 A73807AE */  sh      $t8, 0x07AE($t9)           ## 000007AE
/* 0D704 80811444 8C4F0000 */  lw      $t7, 0x0000($v0)           ## 8015FA90
/* 0D708 80811448 24180068 */  addiu   $t8, $zero, 0x0068         ## $t8 = 00000068
/* 0D70C 8081144C 240A0006 */  addiu   $t2, $zero, 0x0006         ## $t2 = 00000006
/* 0D710 80811450 A5EE07B0 */  sh      $t6, 0x07B0($t7)           ## 000007A6
/* 0D714 80811454 8C590000 */  lw      $t9, 0x0000($v0)           ## 8015FA90
/* 0D718 80811458 240F0064 */  addiu   $t7, $zero, 0x0064         ## $t7 = 00000064
/* 0D71C 8081145C 24090002 */  addiu   $t1, $zero, 0x0002         ## $t1 = 00000002
/* 0D720 80811460 A73807B2 */  sh      $t8, 0x07B2($t9)           ## 000007B2
/* 0D724 80811464 8C4E0000 */  lw      $t6, 0x0000($v0)           ## 8015FA90
/* 0D728 80811468 241900A2 */  addiu   $t9, $zero, 0x00A2         ## $t9 = 000000A2
/* 0D72C 8081146C 240B00FF */  addiu   $t3, $zero, 0x00FF         ## $t3 = 000000FF
/* 0D730 80811470 A5CC07B4 */  sh      $t4, 0x07B4($t6)           ## 00000858
/* 0D734 80811474 8C580000 */  lw      $t8, 0x0000($v0)           ## 8015FA90
/* 0D738 80811478 3C018081 */  lui     $at, %hi(D_80812724)       ## $at = 80810000
/* 0D73C 8081147C 44802000 */  mtc1    $zero, $f4                 ## $f4 = 0.00
/* 0D740 80811480 A70F07B6 */  sh      $t7, 0x07B6($t8)           ## 0000081E
/* 0D744 80811484 8C4E0000 */  lw      $t6, 0x0000($v0)           ## 8015FA90
/* 0D748 80811488 241800D6 */  addiu   $t8, $zero, 0x00D6         ## $t8 = 000000D6
/* 0D74C 8081148C A5D907B8 */  sh      $t9, 0x07B8($t6)           ## 0000085C
/* 0D750 80811490 8C4F0000 */  lw      $t7, 0x0000($v0)           ## 8015FA90
/* 0D754 80811494 240E0244 */  addiu   $t6, $zero, 0x0244         ## $t6 = 00000244
/* 0D758 80811498 A5ED07BA */  sh      $t5, 0x07BA($t7)           ## 0000081E
/* 0D75C 8081149C 8C590000 */  lw      $t9, 0x0000($v0)           ## 8015FA90
/* 0D760 808114A0 A73807BC */  sh      $t8, 0x07BC($t9)           ## 0000085E
/* 0D764 808114A4 8C4F0000 */  lw      $t7, 0x0000($v0)           ## 8015FA90
/* 0D768 808114A8 24180190 */  addiu   $t8, $zero, 0x0190         ## $t8 = 00000190
/* 0D76C 808114AC A5EE0AAE */  sh      $t6, 0x0AAE($t7)           ## 00000B12
/* 0D770 808114B0 8C590000 */  lw      $t9, 0x0000($v0)           ## 8015FA90
/* 0D774 808114B4 A7380AB0 */  sh      $t8, 0x0AB0($t9)           ## 00000B52
/* 0D778 808114B8 8C4E0000 */  lw      $t6, 0x0000($v0)           ## 8015FA90
/* 0D77C 808114BC A5C60ADA */  sh      $a2, 0x0ADA($t6)           ## 00000D1E
/* 0D780 808114C0 8C4F0000 */  lw      $t7, 0x0000($v0)           ## 8015FA90
/* 0D784 808114C4 240EFFB2 */  addiu   $t6, $zero, 0xFFB2         ## $t6 = FFFFFFB2
/* 0D788 808114C8 A5E60ADC */  sh      $a2, 0x0ADC($t7)           ## 00000B40
/* 0D78C 808114CC 8C580000 */  lw      $t8, 0x0000($v0)           ## 8015FA90
/* 0D790 808114D0 A7060ADE */  sh      $a2, 0x0ADE($t8)           ## 00000C6E
/* 0D794 808114D4 8C590000 */  lw      $t9, 0x0000($v0)           ## 8015FA90
/* 0D798 808114D8 A7270AEA */  sh      $a3, 0x0AEA($t9)           ## 00000B8C
/* 0D79C 808114DC 8C4F0000 */  lw      $t7, 0x0000($v0)           ## 8015FA90
/* 0D7A0 808114E0 A5EE0AEC */  sh      $t6, 0x0AEC($t7)           ## 00000B50
/* 0D7A4 808114E4 8C580000 */  lw      $t8, 0x0000($v0)           ## 8015FA90
/* 0D7A8 808114E8 A7000AEE */  sh      $zero, 0x0AEE($t8)         ## 00000C7E
/* 0D7AC 808114EC 8C590000 */  lw      $t9, 0x0000($v0)           ## 8015FA90
/* 0D7B0 808114F0 A7200AF0 */  sh      $zero, 0x0AF0($t9)         ## 00000B92
/* 0D7B4 808114F4 8C4E0000 */  lw      $t6, 0x0000($v0)           ## 8015FA90
/* 0D7B8 808114F8 A5C00AF2 */  sh      $zero, 0x0AF2($t6)         ## 00000AA4
/* 0D7BC 808114FC 8C4F0000 */  lw      $t7, 0x0000($v0)           ## 8015FA90
/* 0D7C0 80811500 A5E00AF4 */  sh      $zero, 0x0AF4($t7)         ## 00000B58
/* 0D7C4 80811504 8C580000 */  lw      $t8, 0x0000($v0)           ## 8015FA90
/* 0D7C8 80811508 A71F0AF6 */  sh      $ra, 0x0AF6($t8)           ## 00000C86
/* 0D7CC 8081150C 8C590000 */  lw      $t9, 0x0000($v0)           ## 8015FA90
/* 0D7D0 80811510 A7270AF8 */  sh      $a3, 0x0AF8($t9)           ## 00000B9A
/* 0D7D4 80811514 8C4E0000 */  lw      $t6, 0x0000($v0)           ## 8015FA90
/* 0D7D8 80811518 A5C70AFA */  sh      $a3, 0x0AFA($t6)           ## 00000AAC
/* 0D7DC 8081151C 8C4F0000 */  lw      $t7, 0x0000($v0)           ## 8015FA90
/* 0D7E0 80811520 240E0005 */  addiu   $t6, $zero, 0x0005         ## $t6 = 00000005
/* 0D7E4 80811524 A5E80AFC */  sh      $t0, 0x0AFC($t7)           ## 00000B60
/* 0D7E8 80811528 8C580000 */  lw      $t8, 0x0000($v0)           ## 8015FA90
/* 0D7EC 8081152C A7000B26 */  sh      $zero, 0x0B26($t8)         ## 00000CB6
/* 0D7F0 80811530 8C590000 */  lw      $t9, 0x0000($v0)           ## 8015FA90
/* 0D7F4 80811534 24180004 */  addiu   $t8, $zero, 0x0004         ## $t8 = 00000004
/* 0D7F8 80811538 A7310F14 */  sh      $s1, 0x0F14($t9)           ## 00000FB6
/* 0D7FC 8081153C 8C4F0000 */  lw      $t7, 0x0000($v0)           ## 8015FA90
/* 0D800 80811540 A5EE0F16 */  sh      $t6, 0x0F16($t7)           ## 00000F7A
/* 0D804 80811544 8C590000 */  lw      $t9, 0x0000($v0)           ## 8015FA90
/* 0D808 80811548 A7380F18 */  sh      $t8, 0x0F18($t9)           ## 00000FBA
/* 0D80C 8081154C 8C4E0000 */  lw      $t6, 0x0000($v0)           ## 8015FA90
/* 0D810 80811550 A5C50F1C */  sh      $a1, 0x0F1C($t6)           ## 00000F21
/* 0D814 80811554 8C4F0000 */  lw      $t7, 0x0000($v0)           ## 8015FA90
/* 0D818 80811558 240E0050 */  addiu   $t6, $zero, 0x0050         ## $t6 = 00000050
/* 0D81C 8081155C A5EA0F1E */  sh      $t2, 0x0F1E($t7)           ## 00000F82
/* 0D820 80811560 8C580000 */  lw      $t8, 0x0000($v0)           ## 8015FA90
/* 0D824 80811564 A7090F20 */  sh      $t1, 0x0F20($t8)           ## 00000F24
/* 0D828 80811568 8C590000 */  lw      $t9, 0x0000($v0)           ## 8015FA90
/* 0D82C 8081156C A72A0F22 */  sh      $t2, 0x0F22($t9)           ## 00000FC4
/* 0D830 80811570 8C4F0000 */  lw      $t7, 0x0000($v0)           ## 8015FA90
/* 0D834 80811574 2419001E */  addiu   $t9, $zero, 0x001E         ## $t9 = 0000001E
/* 0D838 80811578 A5EE0F24 */  sh      $t6, 0x0F24($t7)           ## 00000F88
/* 0D83C 8081157C A42B2724 */  sh      $t3, %lo(D_80812724)($at)  
/* 0D840 80811580 8C580000 */  lw      $t8, 0x0000($v0)           ## 8015FA90
/* 0D844 80811584 240FFF9C */  addiu   $t7, $zero, 0xFF9C         ## $t7 = FFFFFF9C
/* 0D848 80811588 3C010002 */  lui     $at, 0x0002                ## $at = 00020000
/* 0D84C 8081158C A7080F28 */  sh      $t0, 0x0F28($t8)           ## 00000F2C
/* 0D850 80811590 8C4E0000 */  lw      $t6, 0x0000($v0)           ## 8015FA90
/* 0D854 80811594 00300821 */  addu    $at, $at, $s0              
/* 0D858 80811598 A5D90F2A */  sh      $t9, 0x0F2A($t6)           ## 00000F7A
/* 0D85C 8081159C 8C580000 */  lw      $t8, 0x0000($v0)           ## 8015FA90
/* 0D860 808115A0 2419FFAB */  addiu   $t9, $zero, 0xFFAB         ## $t9 = FFFFFFAB
/* 0D864 808115A4 A70F0F2C */  sh      $t7, 0x0F2C($t8)           ## 00000F30
/* 0D868 808115A8 8C4E0000 */  lw      $t6, 0x0000($v0)           ## 8015FA90
/* 0D86C 808115AC 240F0004 */  addiu   $t7, $zero, 0x0004         ## $t7 = 00000004
/* 0D870 808115B0 A5D90F2E */  sh      $t9, 0x0F2E($t6)           ## 00000F7E
/* 0D874 808115B4 8C580000 */  lw      $t8, 0x0000($v0)           ## 8015FA90
/* 0D878 808115B8 24190019 */  addiu   $t9, $zero, 0x0019         ## $t9 = 00000019
/* 0D87C 808115BC A70F0F30 */  sh      $t7, 0x0F30($t8)           ## 00000F34
/* 0D880 808115C0 8C4E0000 */  lw      $t6, 0x0000($v0)           ## 8015FA90
/* 0D884 808115C4 A5D90F34 */  sh      $t9, 0x0F34($t6)           ## 00000F84
/* 0D888 808115C8 8C4F0000 */  lw      $t7, 0x0000($v0)           ## 8015FA90
/* 0D88C 808115CC 2419005C */  addiu   $t9, $zero, 0x005C         ## $t9 = 0000005C
/* 0D890 808115D0 A5E50F36 */  sh      $a1, 0x0F36($t7)           ## 00000F3A
/* 0D894 808115D4 8C580000 */  lw      $t8, 0x0000($v0)           ## 8015FA90
/* 0D898 808115D8 240F00AB */  addiu   $t7, $zero, 0x00AB         ## $t7 = 000000AB
/* 0D89C 808115DC A7050F38 */  sh      $a1, 0x0F38($t8)           ## 00000F3C
/* 0D8A0 808115E0 8C4E0000 */  lw      $t6, 0x0000($v0)           ## 8015FA90
/* 0D8A4 808115E4 A5D90F3C */  sh      $t9, 0x0F3C($t6)           ## 00000F8C
/* 0D8A8 808115E8 8C580000 */  lw      $t8, 0x0000($v0)           ## 8015FA90
/* 0D8AC 808115EC 2419000B */  addiu   $t9, $zero, 0x000B         ## $t9 = 0000000B
/* 0D8B0 808115F0 A70F0F3E */  sh      $t7, 0x0F3E($t8)           ## 00000F42
/* 0D8B4 808115F4 8C4E0000 */  lw      $t6, 0x0000($v0)           ## 8015FA90
/* 0D8B8 808115F8 2418001A */  addiu   $t8, $zero, 0x001A         ## $t8 = 0000001A
/* 0D8BC 808115FC A5D90F40 */  sh      $t9, 0x0F40($t6)           ## 00000F90
/* 0D8C0 80811600 8C4F0000 */  lw      $t7, 0x0000($v0)           ## 8015FA90
/* 0D8C4 80811604 A5E80F42 */  sh      $t0, 0x0F42($t7)           ## 00000FED
/* 0D8C8 80811608 8C590000 */  lw      $t9, 0x0000($v0)           ## 8015FA90
/* 0D8CC 8081160C A7380F44 */  sh      $t8, 0x0F44($t9)           ## 00000F4F
/* 0D8D0 80811610 8C4E0000 */  lw      $t6, 0x0000($v0)           ## 8015FA90
/* 0D8D4 80811614 A5C90F46 */  sh      $t1, 0x0F46($t6)           ## 00000F96
/* 0D8D8 80811618 8C4F0000 */  lw      $t7, 0x0000($v0)           ## 8015FA90
/* 0D8DC 8081161C A5E50F48 */  sh      $a1, 0x0F48($t7)           ## 00000FF3
/* 0D8E0 80811620 8C580000 */  lw      $t8, 0x0000($v0)           ## 8015FA90
/* 0D8E4 80811624 240F0040 */  addiu   $t7, $zero, 0x0040         ## $t7 = 00000040
/* 0D8E8 80811628 A7000F4A */  sh      $zero, 0x0F4A($t8)         ## 00000F64
/* 0D8EC 8081162C 8C590000 */  lw      $t9, 0x0000($v0)           ## 8015FA90
/* 0D8F0 80811630 A7200F4C */  sh      $zero, 0x0F4C($t9)         ## 00000F57
/* 0D8F4 80811634 8C4E0000 */  lw      $t6, 0x0000($v0)           ## 8015FA90
/* 0D8F8 80811638 2419009A */  addiu   $t9, $zero, 0x009A         ## $t9 = 0000009A
/* 0D8FC 8081163C A5CC0F4E */  sh      $t4, 0x0F4E($t6)           ## 00000F9E
/* 0D900 80811640 8C580000 */  lw      $t8, 0x0000($v0)           ## 8015FA90
/* 0D904 80811644 A70F0F50 */  sh      $t7, 0x0F50($t8)           ## 00000F6A
/* 0D908 80811648 8C4E0000 */  lw      $t6, 0x0000($v0)           ## 8015FA90
/* 0D90C 8081164C 2418006A */  addiu   $t8, $zero, 0x006A         ## $t8 = 0000006A
/* 0D910 80811650 A5D90F52 */  sh      $t9, 0x0F52($t6)           ## 00000FA2
/* 0D914 80811654 8C4F0000 */  lw      $t7, 0x0000($v0)           ## 8015FA90
/* 0D918 80811658 240E0010 */  addiu   $t6, $zero, 0x0010         ## $t6 = 00000010
/* 0D91C 8081165C A5ED0F54 */  sh      $t5, 0x0F54($t7)           ## 00000F94
/* 0D920 80811660 8C590000 */  lw      $t9, 0x0000($v0)           ## 8015FA90
/* 0D924 80811664 A7380F56 */  sh      $t8, 0x0F56($t9)           ## 00000FF0
/* 0D928 80811668 8C4F0000 */  lw      $t7, 0x0000($v0)           ## 8015FA90
/* 0D92C 8081166C 24180009 */  addiu   $t8, $zero, 0x0009         ## $t8 = 00000009
/* 0D930 80811670 A5EE0DE0 */  sh      $t6, 0x0DE0($t7)           ## 00000E20
/* 0D934 80811674 8C590000 */  lw      $t9, 0x0000($v0)           ## 8015FA90
/* 0D938 80811678 A7380DE2 */  sh      $t8, 0x0DE2($t9)           ## 00000E7C
/* 0D93C 8081167C 8C4E0000 */  lw      $t6, 0x0000($v0)           ## 8015FA90
/* 0D940 80811680 2418000B */  addiu   $t8, $zero, 0x000B         ## $t8 = 0000000B
/* 0D944 80811684 A5C80DE4 */  sh      $t0, 0x0DE4($t6)           ## 00000DF4
/* 0D948 80811688 8C4F0000 */  lw      $t7, 0x0000($v0)           ## 8015FA90
/* 0D94C 8081168C 240E000C */  addiu   $t6, $zero, 0x000C         ## $t6 = 0000000C
/* 0D950 80811690 A5F10DE6 */  sh      $s1, 0x0DE6($t7)           ## 00000E26
/* 0D954 80811694 8C590000 */  lw      $t9, 0x0000($v0)           ## 8015FA90
/* 0D958 80811698 A7380DE8 */  sh      $t8, 0x0DE8($t9)           ## 00000E82
/* 0D95C 8081169C 8C4F0000 */  lw      $t7, 0x0000($v0)           ## 8015FA90
/* 0D960 808116A0 2418000C */  addiu   $t8, $zero, 0x000C         ## $t8 = 0000000C
/* 0D964 808116A4 2419009B */  addiu   $t9, $zero, 0x009B         ## $t9 = 0000009B
/* 0D968 808116A8 A5EE0DEA */  sh      $t6, 0x0DEA($t7)           ## 00000E2A
/* 0D96C 808116AC A420CA3C */  sh      $zero, -0x35C4($at)        ## 0001CA3C
/* 0D970 808116B0 3C010002 */  lui     $at, 0x0002                ## $at = 00020000
/* 0D974 808116B4 00300821 */  addu    $at, $at, $s0              
/* 0D978 808116B8 A420CA3A */  sh      $zero, -0x35C6($at)        ## 0001CA3A
/* 0D97C 808116BC 3C010001 */  lui     $at, 0x0001                ## $at = 00010000
/* 0D980 808116C0 34218000 */  ori     $at, $at, 0x8000           ## $at = 00018000
/* 0D984 808116C4 02011821 */  addu    $v1, $s0, $at              
/* 0D988 808116C8 84644A3A */  lh      $a0, 0x4A3A($v1)           ## 00004A3A
/* 0D98C 808116CC 3C010002 */  lui     $at, 0x0002                ## $at = 00020000
/* 0D990 808116D0 00300821 */  addu    $at, $at, $s0              
/* 0D994 808116D4 A424CA5E */  sh      $a0, -0x35A2($at)          ## 0001CA5E
/* 0D998 808116D8 3C010002 */  lui     $at, 0x0002                ## $at = 00020000
/* 0D99C 808116DC 00300821 */  addu    $at, $at, $s0              
/* 0D9A0 808116E0 A424CA46 */  sh      $a0, -0x35BA($at)          ## 0001CA46
/* 0D9A4 808116E4 3C010002 */  lui     $at, 0x0002                ## $at = 00020000
/* 0D9A8 808116E8 00300821 */  addu    $at, $at, $s0              
/* 0D9AC 808116EC A424CA44 */  sh      $a0, -0x35BC($at)          ## 0001CA44
/* 0D9B0 808116F0 3C010002 */  lui     $at, 0x0002                ## $at = 00020000
/* 0D9B4 808116F4 00300821 */  addu    $at, $at, $s0              
/* 0D9B8 808116F8 A424CA38 */  sh      $a0, -0x35C8($at)          ## 0001CA38
/* 0D9BC 808116FC 3C010002 */  lui     $at, 0x0002                ## $at = 00020000
/* 0D9C0 80811700 A4694AAE */  sh      $t1, 0x4AAE($v1)           ## 00004AAE
/* 0D9C4 80811704 A47F4AB0 */  sh      $ra, 0x4AB0($v1)           ## 00004AB0
/* 0D9C8 80811708 00300821 */  addu    $at, $at, $s0              
/* 0D9CC 8081170C A420CA64 */  sh      $zero, -0x359C($at)        ## 0001CA64
/* 0D9D0 80811710 3C010002 */  lui     $at, 0x0002                ## $at = 00020000
/* 0D9D4 80811714 00300821 */  addu    $at, $at, $s0              
/* 0D9D8 80811718 A425CA66 */  sh      $a1, -0x359A($at)          ## 0001CA66
/* 0D9DC 8081171C 3C010002 */  lui     $at, 0x0002                ## $at = 00020000
/* 0D9E0 80811720 00300821 */  addu    $at, $at, $s0              
/* 0D9E4 80811724 A425CAAA */  sh      $a1, -0x3556($at)          ## 0001CAAA
/* 0D9E8 80811728 3C010002 */  lui     $at, 0x0002                ## $at = 00020000
/* 0D9EC 8081172C 00300821 */  addu    $at, $at, $s0              
/* 0D9F0 80811730 A438CAAC */  sh      $t8, -0x3554($at)          ## 0001CAAC
/* 0D9F4 80811734 240E0046 */  addiu   $t6, $zero, 0x0046         ## $t6 = 00000046
/* 0D9F8 80811738 3C010002 */  lui     $at, 0x0002                ## $at = 00020000
/* 0D9FC 8081173C A4794AA2 */  sh      $t9, 0x4AA2($v1)           ## 00004AA2
/* 0DA00 80811740 A46B4AA4 */  sh      $t3, 0x4AA4($v1)           ## 00004AA4
/* 0DA04 80811744 A46B4AA6 */  sh      $t3, 0x4AA6($v1)           ## 00004AA6
/* 0DA08 80811748 A46E4AA8 */  sh      $t6, 0x4AA8($v1)           ## 00004AA8
/* 0DA0C 8081174C 00300821 */  addu    $at, $at, $s0              
/* 0DA10 80811750 A420CA3E */  sh      $zero, -0x35C2($at)        ## 0001CA3E
/* 0DA14 80811754 3C010002 */  lui     $at, 0x0002                ## $at = 00020000
/* 0DA18 80811758 00300821 */  addu    $at, $at, $s0              
/* 0DA1C 8081175C E424CAC4 */  swc1    $f4, -0x353C($at)          ## 0001CAC4
/* 0DA20 80811760 3C010002 */  lui     $at, 0x0002                ## $at = 00020000
/* 0DA24 80811764 00300821 */  addu    $at, $at, $s0              
/* 0DA28 80811768 A420CAB2 */  sh      $zero, -0x354E($at)        ## 0001CAB2
/* 0DA2C 8081176C 846F4AB2 */  lh      $t7, 0x4AB2($v1)           ## 00004AB2
/* 0DA30 80811770 3C010002 */  lui     $at, 0x0002                ## $at = 00020000
/* 0DA34 80811774 00300821 */  addu    $at, $at, $s0              
/* 0DA38 80811778 A42FCAB6 */  sh      $t7, -0x354A($at)          ## 0001CAB6
/* 0DA3C 8081177C 3C010002 */  lui     $at, 0x0002                ## $at = 00020000
/* 0DA40 80811780 00300821 */  addu    $at, $at, $s0              
/* 0DA44 80811784 A420CAB4 */  sh      $zero, -0x354C($at)        ## 0001CAB4
/* 0DA48 80811788 84784AB4 */  lh      $t8, 0x4AB4($v1)           ## 00004AB4
/* 0DA4C 8081178C 3C010002 */  lui     $at, 0x0002                ## $at = 00020000
/* 0DA50 80811790 00300821 */  addu    $at, $at, $s0              
/* 0DA54 80811794 A438CAB8 */  sh      $t8, -0x3548($at)          ## 0001CAB8
/* 0DA58 80811798 3C010002 */  lui     $at, 0x0002                ## $at = 00020000
/* 0DA5C 8081179C 00300821 */  addu    $at, $at, $s0              
/* 0DA60 808117A0 A420CACE */  sh      $zero, -0x3532($at)        ## 0001CACE
/* 0DA64 808117A4 84644ACE */  lh      $a0, 0x4ACE($v1)           ## 00004ACE
/* 0DA68 808117A8 3C010002 */  lui     $at, 0x0002                ## $at = 00020000
/* 0DA6C 808117AC 00300821 */  addu    $at, $at, $s0              
/* 0DA70 808117B0 A424CAD2 */  sh      $a0, -0x352E($at)          ## 0001CAD2
/* 0DA74 808117B4 3C010002 */  lui     $at, 0x0002                ## $at = 00020000
/* 0DA78 808117B8 00300821 */  addu    $at, $at, $s0              
/* 0DA7C 808117BC A424CAD0 */  sh      $a0, -0x3530($at)          ## 0001CAD0
/* 0DA80 808117C0 3C010002 */  lui     $at, 0x0002                ## $at = 00020000
/* 0DA84 808117C4 00300821 */  addu    $at, $at, $s0              
/* 0DA88 808117C8 24190063 */  addiu   $t9, $zero, 0x0063         ## $t9 = 00000063
/* 0DA8C 808117CC A439CAC8 */  sh      $t9, -0x3538($at)          ## 0001CAC8
/* 0DA90 808117D0 240E0064 */  addiu   $t6, $zero, 0x0064         ## $t6 = 00000064
/* 0DA94 808117D4 240F0096 */  addiu   $t7, $zero, 0x0096         ## $t7 = 00000096
/* 0DA98 808117D8 3C010002 */  lui     $at, 0x0002                ## $at = 00020000
/* 0DA9C 808117DC A46E4A68 */  sh      $t6, 0x4A68($v1)           ## 00004A68
/* 0DAA0 808117E0 A46F4A6A */  sh      $t7, 0x4A6A($v1)           ## 00004A6A
/* 0DAA4 808117E4 A46B4A6C */  sh      $t3, 0x4A6C($v1)           ## 00004A6C
/* 0DAA8 808117E8 00300821 */  addu    $at, $at, $s0              
/* 0DAAC 808117EC A420CAA0 */  sh      $zero, -0x3560($at)        ## 0001CAA0
/* 0DAB0 808117F0 84624AA0 */  lh      $v0, 0x4AA0($v1)           ## 00004AA0
/* 0DAB4 808117F4 3C010002 */  lui     $at, 0x0002                ## $at = 00020000
/* 0DAB8 808117F8 00300821 */  addu    $at, $at, $s0              
/* 0DABC 808117FC A422CA9E */  sh      $v0, -0x3562($at)          ## 0001CA9E
/* 0DAC0 80811800 3C010002 */  lui     $at, 0x0002                ## $at = 00020000
/* 0DAC4 80811804 00300821 */  addu    $at, $at, $s0              
/* 0DAC8 80811808 A422CA9C */  sh      $v0, -0x3564($at)          ## 0001CA9C
/* 0DACC 8081180C 3C010002 */  lui     $at, 0x0002                ## $at = 00020000
/* 0DAD0 80811810 00300821 */  addu    $at, $at, $s0              
/* 0DAD4 80811814 A422CA9A */  sh      $v0, -0x3566($at)          ## 0001CA9A
/* 0DAD8 80811818 A4624A8E */  sh      $v0, 0x4A8E($v1)           ## 00004A8E
/* 0DADC 8081181C A4624A90 */  sh      $v0, 0x4A90($v1)           ## 00004A90
/* 0DAE0 80811820 A4624A92 */  sh      $v0, 0x4A92($v1)           ## 00004A92
/* 0DAE4 80811824 A4624A94 */  sh      $v0, 0x4A94($v1)           ## 00004A94
/* 0DAE8 80811828 A4624A96 */  sh      $v0, 0x4A96($v1)           ## 00004A96
/* 0DAEC 8081182C A4624A98 */  sh      $v0, 0x4A98($v1)           ## 00004A98
/* 0DAF0 80811830 3C010002 */  lui     $at, 0x0002                ## $at = 00020000
/* 0DAF4 80811834 00300821 */  addu    $at, $at, $s0              
/* 0DAF8 80811838 A4624A8C */  sh      $v0, 0x4A8C($v1)           ## 00004A8C
/* 0DAFC 8081183C A4624A8A */  sh      $v0, 0x4A8A($v1)           ## 00004A8A
/* 0DB00 80811840 A4624A88 */  sh      $v0, 0x4A88($v1)           ## 00004A88
/* 0DB04 80811844 A4624A86 */  sh      $v0, 0x4A86($v1)           ## 00004A86
/* 0DB08 80811848 A4624A84 */  sh      $v0, 0x4A84($v1)           ## 00004A84
/* 0DB0C 8081184C A4624A82 */  sh      $v0, 0x4A82($v1)           ## 00004A82
/* 0DB10 80811850 A4624A80 */  sh      $v0, 0x4A80($v1)           ## 00004A80
/* 0DB14 80811854 A4624A7E */  sh      $v0, 0x4A7E($v1)           ## 00004A7E
/* 0DB18 80811858 A4624A7C */  sh      $v0, 0x4A7C($v1)           ## 00004A7C
/* 0DB1C 8081185C A4624A7A */  sh      $v0, 0x4A7A($v1)           ## 00004A7A
/* 0DB20 80811860 A4624A78 */  sh      $v0, 0x4A78($v1)           ## 00004A78
/* 0DB24 80811864 A4624A76 */  sh      $v0, 0x4A76($v1)           ## 00004A76
/* 0DB28 80811868 A4624A74 */  sh      $v0, 0x4A74($v1)           ## 00004A74
/* 0DB2C 8081186C A4624A70 */  sh      $v0, 0x4A70($v1)           ## 00004A70
/* 0DB30 80811870 A4624A6E */  sh      $v0, 0x4A6E($v1)           ## 00004A6E
/* 0DB34 80811874 A422CA72 */  sh      $v0, -0x358E($at)          ## 0001CA72
/* 0DB38 80811878 3C010002 */  lui     $at, 0x0002                ## $at = 00020000
/* 0DB3C 8081187C 00300821 */  addu    $at, $at, $s0              
/* 0DB40 80811880 A42ACAC0 */  sh      $t2, -0x3540($at)          ## 0001CAC0
/* 0DB44 80811884 3C010002 */  lui     $at, 0x0002                ## $at = 00020000
/* 0DB48 80811888 00300821 */  addu    $at, $at, $s0              
/* 0DB4C 8081188C A427CA50 */  sh      $a3, -0x35B0($at)          ## 0001CA50
/* 0DB50 80811890 3C010002 */  lui     $at, 0x0002                ## $at = 00020000
/* 0DB54 80811894 00300821 */  addu    $at, $at, $s0              
/* 0DB58 80811898 2418FFFF */  addiu   $t8, $zero, 0xFFFF         ## $t8 = FFFFFFFF
/* 0DB5C 8081189C A438CA60 */  sh      $t8, -0x35A0($at)          ## 0001CA60
/* 0DB60 808118A0 A4604A4E */  sh      $zero, 0x4A4E($v1)         ## 00004A4E
/* 0DB64 808118A4 84654A4E */  lh      $a1, 0x4A4E($v1)           ## 00004A4E
/* 0DB68 808118A8 3C010002 */  lui     $at, 0x0002                ## $at = 00020000
/* 0DB6C 808118AC 00300821 */  addu    $at, $at, $s0              
/* 0DB70 808118B0 A4654A4C */  sh      $a1, 0x4A4C($v1)           ## 00004A4C
/* 0DB74 808118B4 A4654A4A */  sh      $a1, 0x4A4A($v1)           ## 00004A4A
/* 0DB78 808118B8 A4654A5C */  sh      $a1, 0x4A5C($v1)           ## 00004A5C
/* 0DB7C 808118BC A4654A5A */  sh      $a1, 0x4A5A($v1)           ## 00004A5A
/* 0DB80 808118C0 A4654A58 */  sh      $a1, 0x4A58($v1)           ## 00004A58
/* 0DB84 808118C4 A4654A56 */  sh      $a1, 0x4A56($v1)           ## 00004A56
/* 0DB88 808118C8 A4654A54 */  sh      $a1, 0x4A54($v1)           ## 00004A54
/* 0DB8C 808118CC A4654A52 */  sh      $a1, 0x4A52($v1)           ## 00004A52
/* 0DB90 808118D0 A425CA62 */  sh      $a1, -0x359E($at)          ## 0001CA62
/* 0DB94 808118D4 A4604AD6 */  sh      $zero, 0x4AD6($v1)         ## 00004AD6
/* 0DB98 808118D8 A47F4AD8 */  sh      $ra, 0x4AD8($v1)           ## 00004AD8
/* 0DB9C 808118DC A46A4ADA */  sh      $t2, 0x4ADA($v1)           ## 00004ADA
/* 0DBA0 808118E0 A4674ADC */  sh      $a3, 0x4ADC($v1)           ## 00004ADC
/* 0DBA4 808118E4 A4684ADE */  sh      $t0, 0x4ADE($v1)           ## 00004ADE
/* 0DBA8 808118E8 AFA30030 */  sw      $v1, 0x0030($sp)           
/* 0DBAC 808118EC 0C02CE10 */  jal     ShrinkWindow_SetVal              ## letterbox_target_addr
/* 0DBB0 808118F0 00002025 */  or      $a0, $zero, $zero          ## $a0 = 00000000
/* 0DBB4 808118F4 3C118016 */  lui     $s1, %hi(gSaveContext)
/* 0DBB8 808118F8 2631E660 */  addiu   $s1, %lo(gSaveContext)
/* 0DBBC 808118FC 260701E8 */  addiu   $a3, $s0, 0x01E8           ## $a3 = 000001E8
/* 0DBC0 80811900 A620141A */  sh      $zero, 0x141A($s1)         ## 8015FA7A
/* 0DBC4 80811904 A620000C */  sh      $zero, 0x000C($s1)         ## 8015E66C
/* 0DBC8 80811908 00E02825 */  or      $a1, $a3, $zero            ## $a1 = 000001E8
/* 0DBCC 8081190C AFA7002C */  sw      $a3, 0x002C($sp)           
/* 0DBD0 80811910 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 0DBD4 80811914 0C02C394 */  jal     Skybox_Init              
/* 0DBD8 80811918 24060001 */  addiu   $a2, $zero, 0x0001         ## $a2 = 00000001
/* 0DBDC 8081191C 3C080001 */  lui     $t0, 0x0001                ## $t0 = 00010000
/* 0DBE0 80811920 3508C8E8 */  ori     $t0, $t0, 0xC8E8           ## $t0 = 0001C8E8
/* 0DBE4 80811924 2419000A */  addiu   $t9, $zero, 0x000A         ## $t9 = 0000000A
/* 0DBE8 80811928 3C018012 */  lui     $at, %hi(D_8011FB40)
/* 0DBEC 8081192C 8FA6002C */  lw      $a2, 0x002C($sp)           
/* 0DBF0 80811930 A439FB40 */  sh      $t9, %lo(D_8011FB40)($at)
/* 0DBF4 80811934 02081021 */  addu    $v0, $s0, $t0              
/* 0DBF8 80811938 44800000 */  mtc1    $zero, $f0                 ## $f0 = 0.00
/* 0DBFC 8081193C 24090063 */  addiu   $t1, $zero, 0x0063         ## $t1 = 00000063
/* 0DC00 80811940 240E0002 */  addiu   $t6, $zero, 0x0002         ## $t6 = 00000002
/* 0DC04 80811944 A0400019 */  sb      $zero, 0x0019($v0)         ## 00000019
/* 0DC08 80811948 A440001A */  sh      $zero, 0x001A($v0)         ## 0000001A
/* 0DC0C 8081194C A0400021 */  sb      $zero, 0x0021($v0)         ## 00000021
/* 0DC10 80811950 A4400022 */  sh      $zero, 0x0022($v0)         ## 00000022
/* 0DC14 80811954 A0400044 */  sb      $zero, 0x0044($v0)         ## 00000044
/* 0DC18 80811958 A0490010 */  sb      $t1, 0x0010($v0)           ## 00000010
/* 0DC1C 8081195C A0490011 */  sb      $t1, 0x0011($v0)           ## 00000011
/* 0DC20 80811960 A040001F */  sb      $zero, 0x001F($v0)         ## 0000001F
/* 0DC24 80811964 A0400020 */  sb      $zero, 0x0020($v0)         ## 00000020
/* 0DC28 80811968 A04000BD */  sb      $zero, 0x00BD($v0)         ## 000000BD
/* 0DC2C 8081196C A04E0017 */  sb      $t6, 0x0017($v0)           ## 00000017
/* 0DC30 80811970 A0400015 */  sb      $zero, 0x0015($v0)         ## 00000015
/* 0DC34 80811974 A0400013 */  sb      $zero, 0x0013($v0)         ## 00000013
/* 0DC38 80811978 02082821 */  addu    $a1, $s0, $t0              
/* 0DC3C 8081197C 24040001 */  addiu   $a0, $zero, 0x0001         ## $a0 = 00000001
/* 0DC40 80811980 E4400084 */  swc1    $f0, 0x0084($v0)           ## 00000084
/* 0DC44 80811984 0C01BF22 */  jal     func_8006FC88              
/* 0DC48 80811988 E4400088 */  swc1    $f0, 0x0088($v0)           ## 00000088
/* 0DC4C 8081198C 8FA30030 */  lw      $v1, 0x0030($sp)           
/* 0DC50 80811990 A22013E6 */  sb      $zero, 0x13E6($s1)         ## 8015FA46
/* 0DC54 80811994 A22013E5 */  sb      $zero, 0x13E5($s1)         ## 8015FA45
/* 0DC58 80811998 A22013E4 */  sb      $zero, 0x13E4($s1)         ## 8015FA44
/* 0DC5C 8081199C A22013E3 */  sb      $zero, 0x13E3($s1)         ## 8015FA43
/* 0DC60 808119A0 A22013E2 */  sb      $zero, 0x13E2($s1)         ## 8015FA42
/* 0DC64 808119A4 300200FF */  andi    $v0, $zero, 0x00FF         ## $v0 = 00000000
/* 0DC68 808119A8 A0624A2F */  sb      $v0, 0x4A2F($v1)           ## 00004A2F
/* 0DC6C 808119AC A0624A2E */  sb      $v0, 0x4A2E($v1)           ## 00004A2E
/* 0DC70 808119B0 A4624A2C */  sh      $v0, 0x4A2C($v1)           ## 00004A2C
/* 0DC74 808119B4 A4624A2A */  sh      $v0, 0x4A2A($v1)           ## 00004A2A
/* 0DC78 808119B8 A4624A28 */  sh      $v0, 0x4A28($v1)           ## 00004A28
/* 0DC7C 808119BC A0604A30 */  sb      $zero, 0x4A30($v1)         ## 00004A30
/* 0DC80 808119C0 8E450000 */  lw      $a1, 0x0000($s2)           ## 000001E0
/* 0DC84 808119C4 3C040800 */  lui     $a0, 0x0800                ## $a0 = 08000000
/* 0DC88 808119C8 34068000 */  ori     $a2, $zero, 0x8000         ## $a2 = 00008000
/* 0DC8C 808119CC 0C02A7A8 */  jal     SsSram_ReadWrite
/* 0DC90 808119D0 00003825 */  or      $a3, $zero, $zero          ## $a3 = 00000000
/* 0DC94 808119D4 8E4F0000 */  lw      $t7, 0x0000($s2)           ## 000001E0
/* 0DC98 808119D8 3C018016 */  lui     $at, %hi(gSaveContext+0x1409)
/* 0DC9C 808119DC 91F80002 */  lbu     $t8, 0x0002($t7)           ## 00000002
/* 0DCA0 808119E0 A038FA69 */  sb      $t8, %lo(gSaveContext+0x1409)($at)
/* 0DCA4 808119E4 92391409 */  lbu     $t9, 0x1409($s1)           ## 8015FA69
/* 0DCA8 808119E8 2B210003 */  slti    $at, $t9, 0x0003           
/* 0DCAC 808119EC 54200005 */  bnel    $at, $zero, .L80811A04     
/* 0DCB0 808119F0 8FBF0024 */  lw      $ra, 0x0024($sp)           
/* 0DCB4 808119F4 A2201409 */  sb      $zero, 0x1409($s1)         ## 8015FA69
/* 0DCB8 808119F8 8E4F0000 */  lw      $t7, 0x0000($s2)           ## 000001E0
/* 0DCBC 808119FC A1E00002 */  sb      $zero, 0x0002($t7)         ## 00000002
/* 0DCC0 80811A00 8FBF0024 */  lw      $ra, 0x0024($sp)           
.L80811A04:
/* 0DCC4 80811A04 8FB00018 */  lw      $s0, 0x0018($sp)           
/* 0DCC8 80811A08 8FB1001C */  lw      $s1, 0x001C($sp)           
/* 0DCCC 80811A0C 8FB20020 */  lw      $s2, 0x0020($sp)           
/* 0DCD0 80811A10 03E00008 */  jr      $ra                        
/* 0DCD4 80811A14 27BD0078 */  addiu   $sp, $sp, 0x0078           ## $sp = 00000000
