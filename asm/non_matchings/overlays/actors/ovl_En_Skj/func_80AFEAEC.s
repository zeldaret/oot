glabel func_80AFEAEC
/* 0083C 80AFEAEC 27BDFB18 */  addiu   $sp, $sp, 0xFB18           ## $sp = FFFFFB18
/* 00840 80AFEAF0 AFBF001C */  sw      $ra, 0x001C($sp)           
/* 00844 80AFEAF4 AFA504EC */  sw      $a1, 0x04EC($sp)           
/* 00848 80AFEAF8 C4A40000 */  lwc1    $f4, 0x0000($a1)           ## 00000000
/* 0084C 80AFEAFC 3C014100 */  lui     $at, 0x4100                ## $at = 41000000
/* 00850 80AFEB00 240B0005 */  addiu   $t3, $zero, 0x0005         ## $t3 = 00000005
/* 00854 80AFEB04 4600218D */  trunc.w.s $f6, $f4                   
/* 00858 80AFEB08 44812000 */  mtc1    $at, $f4                   ## $f4 = 8.00
/* 0085C 80AFEB0C 240C0005 */  addiu   $t4, $zero, 0x0005         ## $t4 = 00000005
/* 00860 80AFEB10 240D0080 */  addiu   $t5, $zero, 0x0080         ## $t5 = 00000080
/* 00864 80AFEB14 44183000 */  mfc1    $t8, $f6                   
/* 00868 80AFEB18 240F00FF */  addiu   $t7, $zero, 0x00FF         ## $t7 = 000000FF
/* 0086C 80AFEB1C 241900FF */  addiu   $t9, $zero, 0x00FF         ## $t9 = 000000FF
/* 00870 80AFEB20 A7B80024 */  sh      $t8, 0x0024($sp)           
/* 00874 80AFEB24 C4A80004 */  lwc1    $f8, 0x0004($a1)           ## 00000004
/* 00878 80AFEB28 24180080 */  addiu   $t8, $zero, 0x0080         ## $t8 = 00000080
/* 0087C 80AFEB2C 3C01BF80 */  lui     $at, 0xBF80                ## $at = BF800000
/* 00880 80AFEB30 4600428D */  trunc.w.s $f10, $f8                  
/* 00884 80AFEB34 44813000 */  mtc1    $at, $f6                   ## $f6 = -1.00
/* 00888 80AFEB38 240E00FF */  addiu   $t6, $zero, 0x00FF         ## $t6 = 000000FF
/* 0088C 80AFEB3C 24090080 */  addiu   $t1, $zero, 0x0080         ## $t1 = 00000080
/* 00890 80AFEB40 44085000 */  mfc1    $t0, $f10                  
/* 00894 80AFEB44 00003025 */  or      $a2, $zero, $zero          ## $a2 = 00000000
/* 00898 80AFEB48 00003825 */  or      $a3, $zero, $zero          ## $a3 = 00000000
/* 0089C 80AFEB4C A7A80026 */  sh      $t0, 0x0026($sp)           
/* 008A0 80AFEB50 C4B00008 */  lwc1    $f16, 0x0008($a1)          ## 00000008
/* 008A4 80AFEB54 24080080 */  addiu   $t0, $zero, 0x0080         ## $t0 = 00000080
/* 008A8 80AFEB58 AFAB04B8 */  sw      $t3, 0x04B8($sp)           
/* 008AC 80AFEB5C 4600848D */  trunc.w.s $f18, $f16                 
/* 008B0 80AFEB60 AFAC04BC */  sw      $t4, 0x04BC($sp)           
/* 008B4 80AFEB64 A3AD04C2 */  sb      $t5, 0x04C2($sp)           
/* 008B8 80AFEB68 A3AF04C3 */  sb      $t7, 0x04C3($sp)           
/* 008BC 80AFEB6C 440A9000 */  mfc1    $t2, $f18                  
/* 008C0 80AFEB70 A3B804C6 */  sb      $t8, 0x04C6($sp)           
/* 008C4 80AFEB74 A3B904C7 */  sb      $t9, 0x04C7($sp)           
/* 008C8 80AFEB78 A3A804CA */  sb      $t0, 0x04CA($sp)           
/* 008CC 80AFEB7C A7AA0028 */  sh      $t2, 0x0028($sp)           
/* 008D0 80AFEB80 240A00FF */  addiu   $t2, $zero, 0x00FF         ## $t2 = 000000FF
/* 008D4 80AFEB84 240B0020 */  addiu   $t3, $zero, 0x0020         ## $t3 = 00000020
/* 008D8 80AFEB88 240C0020 */  addiu   $t4, $zero, 0x0020         ## $t4 = 00000020
/* 008DC 80AFEB8C 240D0040 */  addiu   $t5, $zero, 0x0040         ## $t5 = 00000040
/* 008E0 80AFEB90 240F0040 */  addiu   $t7, $zero, 0x0040         ## $t7 = 00000040
/* 008E4 80AFEB94 24180008 */  addiu   $t8, $zero, 0x0008         ## $t8 = 00000008
/* 008E8 80AFEB98 27A80024 */  addiu   $t0, $sp, 0x0024           ## $t0 = FFFFFB3C
/* 008EC 80AFEB9C 24190001 */  addiu   $t9, $zero, 0x0001         ## $t9 = 00000001
/* 008F0 80AFEBA0 A3A004C0 */  sb      $zero, 0x04C0($sp)         
/* 008F4 80AFEBA4 A3A004C1 */  sb      $zero, 0x04C1($sp)         
/* 008F8 80AFEBA8 A3A004C4 */  sb      $zero, 0x04C4($sp)         
/* 008FC 80AFEBAC A3A004C5 */  sb      $zero, 0x04C5($sp)         
/* 00900 80AFEBB0 A3A004C8 */  sb      $zero, 0x04C8($sp)         
/* 00904 80AFEBB4 A3A004C9 */  sb      $zero, 0x04C9($sp)         
/* 00908 80AFEBB8 A3AE04CB */  sb      $t6, 0x04CB($sp)           
/* 0090C 80AFEBBC A3A004CC */  sb      $zero, 0x04CC($sp)         
/* 00910 80AFEBC0 A3A004CD */  sb      $zero, 0x04CD($sp)         
/* 00914 80AFEBC4 A3A904CE */  sb      $t1, 0x04CE($sp)           
/* 00918 80AFEBC8 A3AA04CF */  sb      $t2, 0x04CF($sp)           
/* 0091C 80AFEBCC A3A004D0 */  sb      $zero, 0x04D0($sp)         
/* 00920 80AFEBD0 A3A004D1 */  sb      $zero, 0x04D1($sp)         
/* 00924 80AFEBD4 A3AB04D2 */  sb      $t3, 0x04D2($sp)           
/* 00928 80AFEBD8 A3A004D3 */  sb      $zero, 0x04D3($sp)         
/* 0092C 80AFEBDC A3A004D4 */  sb      $zero, 0x04D4($sp)         
/* 00930 80AFEBE0 A3A004D5 */  sb      $zero, 0x04D5($sp)         
/* 00934 80AFEBE4 A3AC04D6 */  sb      $t4, 0x04D6($sp)           
/* 00938 80AFEBE8 A3A004D7 */  sb      $zero, 0x04D7($sp)         
/* 0093C 80AFEBEC A3A004D8 */  sb      $zero, 0x04D8($sp)         
/* 00940 80AFEBF0 A3A004D9 */  sb      $zero, 0x04D9($sp)         
/* 00944 80AFEBF4 A3AD04DA */  sb      $t5, 0x04DA($sp)           
/* 00948 80AFEBF8 A3A004DB */  sb      $zero, 0x04DB($sp)         
/* 0094C 80AFEBFC A3A004DC */  sb      $zero, 0x04DC($sp)         
/* 00950 80AFEC00 A3A004DD */  sb      $zero, 0x04DD($sp)         
/* 00954 80AFEC04 A3AF04DE */  sb      $t7, 0x04DE($sp)           
/* 00958 80AFEC08 A3A004DF */  sb      $zero, 0x04DF($sp)         
/* 0095C 80AFEC0C AFA004E0 */  sw      $zero, 0x04E0($sp)         
/* 00960 80AFEC10 AFB804E4 */  sw      $t8, 0x04E4($sp)           
/* 00964 80AFEC14 AFB90010 */  sw      $t9, 0x0010($sp)           
/* 00968 80AFEC18 AFA80014 */  sw      $t0, 0x0014($sp)           
/* 0096C 80AFEC1C 27A50020 */  addiu   $a1, $sp, 0x0020           ## $a1 = FFFFFB38
/* 00970 80AFEC20 E7A404B0 */  swc1    $f4, 0x04B0($sp)           
/* 00974 80AFEC24 0C009B35 */  jal     Effect_Add
              ## Effect_Add
/* 00978 80AFEC28 E7A604B4 */  swc1    $f6, 0x04B4($sp)           
/* 0097C 80AFEC2C 8FBF001C */  lw      $ra, 0x001C($sp)           
/* 00980 80AFEC30 27BD04E8 */  addiu   $sp, $sp, 0x04E8           ## $sp = 00000000
/* 00984 80AFEC34 03E00008 */  jr      $ra                        
/* 00988 80AFEC38 00000000 */  nop


