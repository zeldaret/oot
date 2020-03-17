glabel func_8094FBB4
/* 008F4 8094FBB4 3C010001 */  lui     $at, 0x0001                ## $at = 00010000
/* 008F8 8094FBB8 00811021 */  addu    $v0, $a0, $at              
/* 008FC 8094FBBC 240300DC */  addiu   $v1, $zero, 0x00DC         ## $v1 = 000000DC
/* 00900 8094FBC0 240E0096 */  addiu   $t6, $zero, 0x0096         ## $t6 = 00000096
/* 00904 8094FBC4 A4430ABC */  sh      $v1, 0x0ABC($v0)           ## 00000ABC
/* 00908 8094FBC8 A4430ABE */  sh      $v1, 0x0ABE($v0)           ## 00000ABE
/* 0090C 8094FBCC A44E0AC0 */  sh      $t6, 0x0AC0($v0)           ## 00000AC0
/* 00910 8094FBD0 00240821 */  addu    $at, $at, $a0              
/* 00914 8094FBD4 240FFC18 */  addiu   $t7, $zero, 0xFC18         ## $t7 = FFFFFC18
/* 00918 8094FBD8 A42F0AC2 */  sh      $t7, 0x0AC2($at)           ## 00010AC2
/* 0091C 8094FBDC 3C010001 */  lui     $at, 0x0001                ## $at = 00010000
/* 00920 8094FBE0 00240821 */  addu    $at, $at, $a0              
/* 00924 8094FBE4 2418FC7C */  addiu   $t8, $zero, 0xFC7C         ## $t8 = FFFFFC7C
/* 00928 8094FBE8 A4380AC4 */  sh      $t8, 0x0AC4($at)           ## 00010AC4
/* 0092C 8094FBEC 240500C8 */  addiu   $a1, $zero, 0x00C8         ## $a1 = 000000C8
/* 00930 8094FBF0 240600DC */  addiu   $a2, $zero, 0x00DC         ## $a2 = 000000DC
/* 00934 8094FBF4 241900D7 */  addiu   $t9, $zero, 0x00D7         ## $t9 = 000000D7
/* 00938 8094FBF8 240800A5 */  addiu   $t0, $zero, 0x00A5         ## $t0 = 000000A5
/* 0093C 8094FBFC 24090096 */  addiu   $t1, $zero, 0x0096         ## $t1 = 00000096
/* 00940 8094FC00 240A0064 */  addiu   $t2, $zero, 0x0064         ## $t2 = 00000064
/* 00944 8094FC04 A4450AB0 */  sh      $a1, 0x0AB0($v0)           ## 00000AB0
/* 00948 8094FC08 A4450AB2 */  sh      $a1, 0x0AB2($v0)           ## 00000AB2
/* 0094C 8094FC0C A4450AB4 */  sh      $a1, 0x0AB4($v0)           ## 00000AB4
/* 00950 8094FC10 A4590AB6 */  sh      $t9, 0x0AB6($v0)           ## 00000AB6
/* 00954 8094FC14 A4480AB8 */  sh      $t0, 0x0AB8($v0)           ## 00000AB8
/* 00958 8094FC18 A4450ABA */  sh      $a1, 0x0ABA($v0)           ## 00000ABA
/* 0095C 8094FC1C A0460B06 */  sb      $a2, 0x0B06($v0)           ## 00000B06
/* 00960 8094FC20 A0460B07 */  sb      $a2, 0x0B07($v0)           ## 00000B07
/* 00964 8094FC24 A0490B08 */  sb      $t1, 0x0B08($v0)           ## 00000B08
/* 00968 8094FC28 03E00008 */  jr      $ra                        
/* 0096C 8094FC2C A04A0B09 */  sb      $t2, 0x0B09($v0)           ## 00000B09


