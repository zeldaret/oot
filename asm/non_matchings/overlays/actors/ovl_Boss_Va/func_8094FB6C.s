glabel func_8094FB6C
/* 008AC 8094FB6C 3C010001 */  lui     $at, 0x0001                ## $at = 00010000
/* 008B0 8094FB70 00811021 */  addu    $v0, $a0, $at              
/* 008B4 8094FB74 2403000A */  addiu   $v1, $zero, 0x000A         ## $v1 = 0000000A
/* 008B8 8094FB78 24050078 */  addiu   $a1, $zero, 0x0078         ## $a1 = 00000078
/* 008BC 8094FB7C 240E0073 */  addiu   $t6, $zero, 0x0073         ## $t6 = 00000073
/* 008C0 8094FB80 240F0041 */  addiu   $t7, $zero, 0x0041         ## $t7 = 00000041
/* 008C4 8094FB84 24180064 */  addiu   $t8, $zero, 0x0064         ## $t8 = 00000064
/* 008C8 8094FB88 24190046 */  addiu   $t9, $zero, 0x0046         ## $t9 = 00000046
/* 008CC 8094FB8C A4430AB0 */  sh      $v1, 0x0AB0($v0)           ## 00000AB0
/* 008D0 8094FB90 A4430AB2 */  sh      $v1, 0x0AB2($v0)           ## 00000AB2
/* 008D4 8094FB94 A4430AB4 */  sh      $v1, 0x0AB4($v0)           ## 00000AB4
/* 008D8 8094FB98 A44E0AB6 */  sh      $t6, 0x0AB6($v0)           ## 00000AB6
/* 008DC 8094FB9C A44F0AB8 */  sh      $t7, 0x0AB8($v0)           ## 00000AB8
/* 008E0 8094FBA0 A4580ABA */  sh      $t8, 0x0ABA($v0)           ## 00000ABA
/* 008E4 8094FBA4 A4450ABC */  sh      $a1, 0x0ABC($v0)           ## 00000ABC
/* 008E8 8094FBA8 A4450ABE */  sh      $a1, 0x0ABE($v0)           ## 00000ABE
/* 008EC 8094FBAC 03E00008 */  jr      $ra                        
/* 008F0 8094FBB0 A4590AC0 */  sh      $t9, 0x0AC0($v0)           ## 00000AC0


