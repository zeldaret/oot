glabel func_80A40DCC
/* 0285C 80A40DCC 27BDFFE0 */  addiu   $sp, $sp, 0xFFE0           ## $sp = FFFFFFE0
/* 02860 80A40DD0 AFBF001C */  sw      $ra, 0x001C($sp)           
/* 02864 80A40DD4 AFB00018 */  sw      $s0, 0x0018($sp)           
/* 02868 80A40DD8 AFA50024 */  sw      $a1, 0x0024($sp)           
/* 0286C 80A40DDC 848E01E0 */  lh      $t6, 0x01E0($a0)           ## 000001E0
/* 02870 80A40DE0 24010002 */  addiu   $at, $zero, 0x0002         ## $at = 00000002
/* 02874 80A40DE4 00808025 */  or      $s0, $a0, $zero            ## $s0 = 00000000
/* 02878 80A40DE8 55C10014 */  bnel    $t6, $at, .L80A40E3C       
/* 0287C 80A40DEC 8FBF001C */  lw      $ra, 0x001C($sp)           
/* 02880 80A40DF0 0C28FB78 */  jal     func_80A3EDE0              
/* 02884 80A40DF4 24050001 */  addiu   $a1, $zero, 0x0001         ## $a1 = 00000001
/* 02888 80A40DF8 3C040600 */  lui     $a0, 0x0600                ## $a0 = 06000000
/* 0288C 80A40DFC 0C028800 */  jal     SkelAnime_GetFrameCount
              
/* 02890 80A40E00 24844930 */  addiu   $a0, $a0, 0x4930           ## $a0 = 06004930
/* 02894 80A40E04 44822000 */  mtc1    $v0, $f4                   ## $f4 = 0.00
/* 02898 80A40E08 00000000 */  nop
/* 0289C 80A40E0C 468021A0 */  cvt.s.w $f6, $f4                   
/* 028A0 80A40E10 E6060164 */  swc1    $f6, 0x0164($s0)           ## 00000164
/* 028A4 80A40E14 0C041B33 */  jal     func_80106CCC              
/* 028A8 80A40E18 8FA40024 */  lw      $a0, 0x0024($sp)           
/* 028AC 80A40E1C 3C0580A4 */  lui     $a1, %hi(func_80A40B74)    ## $a1 = 80A40000
/* 028B0 80A40E20 24A50B74 */  addiu   $a1, $a1, %lo(func_80A40B74) ## $a1 = 80A40B74
/* 028B4 80A40E24 0C28F95C */  jal     func_80A3E570              
/* 028B8 80A40E28 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 028BC 80A40E2C 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 028C0 80A40E30 0C2902DD */  jal     func_80A40B74              
/* 028C4 80A40E34 8FA50024 */  lw      $a1, 0x0024($sp)           
/* 028C8 80A40E38 8FBF001C */  lw      $ra, 0x001C($sp)           
.L80A40E3C:
/* 028CC 80A40E3C 8FB00018 */  lw      $s0, 0x0018($sp)           
/* 028D0 80A40E40 27BD0020 */  addiu   $sp, $sp, 0x0020           ## $sp = 00000000
/* 028D4 80A40E44 03E00008 */  jr      $ra                        
/* 028D8 80A40E48 00000000 */  nop


