glabel func_80900818
/* 038D8 80900818 27BDFFE0 */  addiu   $sp, $sp, 0xFFE0           ## $sp = FFFFFFE0
/* 038DC 8090081C AFB00018 */  sw      $s0, 0x0018($sp)
/* 038E0 80900820 AFA50024 */  sw      $a1, 0x0024($sp)
/* 038E4 80900824 00808025 */  or      $s0, $a0, $zero            ## $s0 = 00000000
/* 038E8 80900828 AFBF001C */  sw      $ra, 0x001C($sp)
/* 038EC 8090082C 3C050603 */  lui     $a1, 0x0603                ## $a1 = 06030000
/* 038F0 80900830 24A5A848 */  addiu   $a1, $a1, 0xA848           ## $a1 = 0602A848
/* 038F4 80900834 2484014C */  addiu   $a0, $a0, 0x014C           ## $a0 = 0000014C
/* 038F8 80900838 0C029490 */  jal     Animation_MorphToPlayOnce
/* 038FC 8090083C 3C06C0A0 */  lui     $a2, 0xC0A0                ## $a2 = C0A00000
/* 03900 80900840 3C040603 */  lui     $a0, 0x0603                ## $a0 = 06030000
/* 03904 80900844 0C028800 */  jal     Animation_LastFrame

/* 03908 80900848 2484A848 */  addiu   $a0, $a0, 0xA848           ## $a0 = 0602A848
/* 0390C 8090084C 44822000 */  mtc1    $v0, $f4                   ## $f4 = 0.00
/* 03910 80900850 3C0E8090 */  lui     $t6, %hi(func_80900890)    ## $t6 = 80900000
/* 03914 80900854 25CE0890 */  addiu   $t6, $t6, %lo(func_80900890) ## $t6 = 80900890
/* 03918 80900858 468021A0 */  cvt.s.w $f6, $f4
/* 0391C 8090085C AE0E0190 */  sw      $t6, 0x0190($s0)           ## 00000190
/* 03920 80900860 A60001AC */  sh      $zero, 0x01AC($s0)         ## 000001AC
/* 03924 80900864 A600039C */  sh      $zero, 0x039C($s0)         ## 0000039C
/* 03928 80900868 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 0392C 8090086C 2405399E */  addiu   $a1, $zero, 0x399E         ## $a1 = 0000399E
/* 03930 80900870 0C00BE0A */  jal     Audio_PlayActorSound2

/* 03934 80900874 E6060194 */  swc1    $f6, 0x0194($s0)           ## 00000194
/* 03938 80900878 A2000336 */  sb      $zero, 0x0336($s0)         ## 00000336
/* 0393C 8090087C 8FBF001C */  lw      $ra, 0x001C($sp)
/* 03940 80900880 8FB00018 */  lw      $s0, 0x0018($sp)
/* 03944 80900884 27BD0020 */  addiu   $sp, $sp, 0x0020           ## $sp = 00000000
/* 03948 80900888 03E00008 */  jr      $ra
/* 0394C 8090088C 00000000 */  nop
