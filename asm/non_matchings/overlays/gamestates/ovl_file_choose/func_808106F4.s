glabel func_808106F4
/* 0C9B4 808106F4 27BDFFC0 */  addiu   $sp, $sp, 0xFFC0           ## $sp = FFFFFFC0
/* 0C9B8 808106F8 3C010001 */  lui     $at, 0x0001                ## $at = 00010000
/* 0C9BC 808106FC 34218000 */  ori     $at, $at, 0x8000           ## $at = 00018000
/* 0C9C0 80810700 AFBF0024 */  sw      $ra, 0x0024($sp)           
/* 0C9C4 80810704 AFB00020 */  sw      $s0, 0x0020($sp)           
/* 0C9C8 80810708 00811021 */  addu    $v0, $a0, $at              
/* 0C9CC 8081070C 844E4A38 */  lh      $t6, 0x4A38($v0)           ## 00004A38
/* 0C9D0 80810710 3C078013 */  lui     $a3, %hi(D_801333E0)
/* 0C9D4 80810714 00808025 */  or      $s0, $a0, $zero            ## $s0 = 00000000
/* 0C9D8 80810718 15C0001B */  bne     $t6, $zero, .L80810788     
/* 0C9DC 8081071C 24E733E0 */  addiu   $a3, %lo(D_801333E0)
/* 0C9E0 80810720 3C0F8013 */  lui     $t7, %hi(D_801333E8)
/* 0C9E4 80810724 25EF33E8 */  addiu   $t7, %lo(D_801333E8)
/* 0C9E8 80810728 3C058013 */  lui     $a1, %hi(D_801333D4)
/* 0C9EC 8081072C 24A533D4 */  addiu   $a1, %lo(D_801333D4)
/* 0C9F0 80810730 AFAF0014 */  sw      $t7, 0x0014($sp)           
/* 0C9F4 80810734 2404483B */  addiu   $a0, $zero, 0x483B         ## $a0 = 0000483B
/* 0C9F8 80810738 24060004 */  addiu   $a2, $zero, 0x0004         ## $a2 = 00000004
/* 0C9FC 8081073C AFA70010 */  sw      $a3, 0x0010($sp)           
/* 0CA00 80810740 0C03DCE3 */  jal     Audio_PlaySoundGeneral
              
/* 0CA04 80810744 AFA20028 */  sw      $v0, 0x0028($sp)           
/* 0CA08 80810748 8FA20028 */  lw      $v0, 0x0028($sp)           
/* 0CA0C 8081074C 3C018016 */  lui     $at, %hi(gSaveContext+0x1354)
/* 0CA10 80810750 260401E0 */  addiu   $a0, $s0, 0x01E0           ## $a0 = 000001E0
/* 0CA14 80810754 84584A38 */  lh      $t8, 0x4A38($v0)           ## 00004A38
/* 0CA18 80810758 0C02A121 */  jal     Sram_OpenSave              
/* 0CA1C 8081075C AC38F9B4 */  sw      $t8, %lo(gSaveContext+0x1354)($at)
/* 0CA20 80810760 3C028016 */  lui     $v0, %hi(gSaveContext)
/* 0CA24 80810764 2442E660 */  addiu   $v0, %lo(gSaveContext)
/* 0CA28 80810768 AC40135C */  sw      $zero, 0x135C($v0)         ## 8015F9BC
/* 0CA2C 8081076C 3C198080 */  lui     $t9, %hi(Select_Init)
/* 0CA30 80810770 27391E44 */  addiu   $t9, %lo(Select_Init)
/* 0CA34 80810774 24080240 */  addiu   $t0, $zero, 0x0240         ## $t0 = 00000240
/* 0CA38 80810778 AE080010 */  sw      $t0, 0x0010($s0)           ## 00000010
/* 0CA3C 8081077C AE19000C */  sw      $t9, 0x000C($s0)           ## 0000000C
/* 0CA40 80810780 1000001D */  beq     $zero, $zero, .L808107F8   
/* 0CA44 80810784 AE000098 */  sw      $zero, 0x0098($s0)         ## 00000098
.L80810788:
/* 0CA48 80810788 3C078013 */  lui     $a3, %hi(D_801333E0)
/* 0CA4C 8081078C 3C098013 */  lui     $t1, %hi(D_801333E8)
/* 0CA50 80810790 24E733E0 */  addiu   $a3, %lo(D_801333E0)
/* 0CA54 80810794 252933E8 */  addiu   $t1, %lo(D_801333E8)
/* 0CA58 80810798 3C058013 */  lui     $a1, %hi(D_801333D4)
/* 0CA5C 8081079C 24A533D4 */  addiu   $a1, %lo(D_801333D4)
/* 0CA60 808107A0 AFA90014 */  sw      $t1, 0x0014($sp)           
/* 0CA64 808107A4 AFA70010 */  sw      $a3, 0x0010($sp)           
/* 0CA68 808107A8 2404483B */  addiu   $a0, $zero, 0x483B         ## $a0 = 0000483B
/* 0CA6C 808107AC 24060004 */  addiu   $a2, $zero, 0x0004         ## $a2 = 00000004
/* 0CA70 808107B0 0C03DCE3 */  jal     Audio_PlaySoundGeneral
              
/* 0CA74 808107B4 AFA20028 */  sw      $v0, 0x0028($sp)           
/* 0CA78 808107B8 8FA20028 */  lw      $v0, 0x0028($sp)           
/* 0CA7C 808107BC 3C018016 */  lui     $at, %hi(gSaveContext+0x1354)
/* 0CA80 808107C0 260401E0 */  addiu   $a0, $s0, 0x01E0           ## $a0 = 000001E0
/* 0CA84 808107C4 844A4A38 */  lh      $t2, 0x4A38($v0)           ## 00004A38
/* 0CA88 808107C8 0C02A121 */  jal     Sram_OpenSave              
/* 0CA8C 808107CC AC2AF9B4 */  sw      $t2, %lo(gSaveContext+0x1354)($at)
/* 0CA90 808107D0 3C028016 */  lui     $v0, %hi(gSaveContext)
/* 0CA94 808107D4 2442E660 */  addiu   $v0, %lo(gSaveContext)
/* 0CA98 808107D8 AC40135C */  sw      $zero, 0x135C($v0)         ## 8015F9BC
/* 0CA9C 808107DC 3C0B800C */  lui     $t3, %hi(Gameplay_Init)
/* 0CAA0 808107E0 3C0C0001 */  lui     $t4, 0x0001                ## $t4 = 00010000
/* 0CAA4 808107E4 358C2518 */  ori     $t4, $t4, 0x2518           ## $t4 = 00012518
/* 0CAA8 808107E8 256BCA64 */  addiu   $t3, %lo(Gameplay_Init)
/* 0CAAC 808107EC AE0B000C */  sw      $t3, 0x000C($s0)           ## 0000000C
/* 0CAB0 808107F0 AE0C0010 */  sw      $t4, 0x0010($s0)           ## 00000010
/* 0CAB4 808107F4 AE000098 */  sw      $zero, 0x0098($s0)         ## 00000098
.L808107F8:
/* 0CAB8 808107F8 A44013F4 */  sh      $zero, 0x13F4($v0)         ## 8015FA54
/* 0CABC 808107FC 844B13F4 */  lh      $t3, 0x13F4($v0)           ## 8015FA54
/* 0CAC0 80810800 804C0033 */  lb      $t4, 0x0033($v0)           ## 8015E693
/* 0CAC4 80810804 240DFFFF */  addiu   $t5, $zero, 0xFFFF         ## $t5 = FFFFFFFF
/* 0CAC8 80810808 A44D1378 */  sh      $t5, 0x1378($v0)           ## 8015F9D8
/* 0CACC 8081080C A0400033 */  sb      $zero, 0x0033($v0)         ## 8015E693
/* 0CAD0 80810810 804D0033 */  lb      $t5, 0x0033($v0)           ## 8015E693
/* 0CAD4 80810814 241000FF */  addiu   $s0, $zero, 0x00FF         ## $s0 = 000000FF
/* 0CAD8 80810818 240E0001 */  addiu   $t6, $zero, 0x0001         ## $t6 = 00000001
/* 0CADC 8081081C 240F0032 */  addiu   $t7, $zero, 0x0032         ## $t7 = 00000032
/* 0CAE0 80810820 3418FFEF */  ori     $t8, $zero, 0xFFEF         ## $t8 = 0000FFEF
/* 0CAE4 80810824 3419FFFF */  ori     $t9, $zero, 0xFFFF         ## $t9 = 0000FFFF
/* 0CAE8 80810828 3C048081 */  lui     $a0, %hi(D_80812EB4)       ## $a0 = 80810000
/* 0CAEC 8081082C AC401364 */  sw      $zero, 0x1364($v0)         ## 8015F9C4
/* 0CAF0 80810830 A05013E0 */  sb      $s0, 0x13E0($v0)           ## 8015FA40
/* 0CAF4 80810834 A05013E1 */  sb      $s0, 0x13E1($v0)           ## 8015FA41
/* 0CAF8 80810838 A04E13C7 */  sb      $t6, 0x13C7($v0)           ## 8015FA27
/* 0CAFC 8081083C A44013C4 */  sh      $zero, 0x13C4($v0)         ## 8015FA24
/* 0CB00 80810840 A44013CE */  sh      $zero, 0x13CE($v0)         ## 8015FA2E
/* 0CB04 80810844 A44013D2 */  sh      $zero, 0x13D2($v0)         ## 8015FA32
/* 0CB08 80810848 A44013FA */  sh      $zero, 0x13FA($v0)         ## 8015FA5A
/* 0CB0C 8081084C A44013FC */  sh      $zero, 0x13FC($v0)         ## 8015FA5C
/* 0CB10 80810850 A44013FE */  sh      $zero, 0x13FE($v0)         ## 8015FA5E
/* 0CB14 80810854 A4401400 */  sh      $zero, 0x1400($v0)         ## 8015FA60
/* 0CB18 80810858 A44F13EE */  sh      $t7, 0x13EE($v0)           ## 8015FA4E
/* 0CB1C 8081085C A44013C8 */  sh      $zero, 0x13C8($v0)         ## 8015FA28
/* 0CB20 80810860 A4401424 */  sh      $zero, 0x1424($v0)         ## 8015FA84
/* 0CB24 80810864 A44013F0 */  sh      $zero, 0x13F0($v0)         ## 8015FA50
/* 0CB28 80810868 A44013F2 */  sh      $zero, 0x13F2($v0)         ## 8015FA52
/* 0CB2C 8081086C A440140E */  sh      $zero, 0x140E($v0)         ## 8015FA6E
/* 0CB30 80810870 A440141A */  sh      $zero, 0x141A($v0)         ## 8015FA7A
/* 0CB34 80810874 A050141D */  sb      $s0, 0x141D($v0)           ## 8015FA7D
/* 0CB38 80810878 A4581412 */  sh      $t8, 0x1412($v0)           ## 8015FA72
/* 0CB3C 8081087C A0401414 */  sb      $zero, 0x1414($v0)         ## 8015FA74
/* 0CB40 80810880 A0401415 */  sb      $zero, 0x1415($v0)         ## 8015FA75
/* 0CB44 80810884 A4591416 */  sh      $t9, 0x1416($v0)           ## 8015FA76
/* 0CB48 80810888 A04013C3 */  sb      $zero, 0x13C3($v0)         ## 8015FA23
/* 0CB4C 8081088C A04013E6 */  sb      $zero, 0x13E6($v0)         ## 8015FA46
/* 0CB50 80810890 A04013E5 */  sb      $zero, 0x13E5($v0)         ## 8015FA45
/* 0CB54 80810894 A04013E4 */  sb      $zero, 0x13E4($v0)         ## 8015FA44
/* 0CB58 80810898 A04013E3 */  sb      $zero, 0x13E3($v0)         ## 8015FA43
/* 0CB5C 8081089C A04013E2 */  sb      $zero, 0x13E2($v0)         ## 8015FA42
/* 0CB60 808108A0 24842EB4 */  addiu   $a0, $a0, %lo(D_80812EB4)  ## $a0 = 80812EB4
/* 0CB64 808108A4 A44B13EC */  sh      $t3, 0x13EC($v0)           ## 8015FA4C
/* 0CB68 808108A8 A44B13EA */  sh      $t3, 0x13EA($v0)           ## 8015FA4A
/* 0CB6C 808108AC A44B13E8 */  sh      $t3, 0x13E8($v0)           ## 8015FA48
/* 0CB70 808108B0 A04B13E7 */  sb      $t3, 0x13E7($v0)           ## 8015FA47
/* 0CB74 808108B4 A44C13F6 */  sh      $t4, 0x13F6($v0)           ## 8015FA56
/* 0CB78 808108B8 0C00084C */  jal     osSyncPrintf
              
/* 0CB7C 808108BC A04D0032 */  sb      $t5, 0x0032($v0)           ## 8015E692
/* 0CB80 808108C0 3C028016 */  lui     $v0, %hi(gSaveContext)
/* 0CB84 808108C4 2442E660 */  addiu   $v0, %lo(gSaveContext)
/* 0CB88 808108C8 3C048081 */  lui     $a0, %hi(D_80812EBC)       ## $a0 = 80810000
/* 0CB8C 808108CC 24842EBC */  addiu   $a0, $a0, %lo(D_80812EBC)  ## $a0 = 80812EBC
/* 0CB90 808108D0 844513F6 */  lh      $a1, 0x13F6($v0)           ## 8015FA56
/* 0CB94 808108D4 0C00084C */  jal     osSyncPrintf
              
/* 0CB98 808108D8 80460033 */  lb      $a2, 0x0033($v0)           ## 8015E693
/* 0CB9C 808108DC 3C048081 */  lui     $a0, %hi(D_80812EE0)       ## $a0 = 80810000
/* 0CBA0 808108E0 0C00084C */  jal     osSyncPrintf
              
/* 0CBA4 808108E4 24842EE0 */  addiu   $a0, $a0, %lo(D_80812EE0)  ## $a0 = 80812EE0
/* 0CBA8 808108E8 3C028016 */  lui     $v0, %hi(gSaveContext)
/* 0CBAC 808108EC 2442E660 */  addiu   $v0, %lo(gSaveContext)
/* 0CBB0 808108F0 90430068 */  lbu     $v1, 0x0068($v0)           ## 8015E6C8
/* 0CBB4 808108F4 2401003B */  addiu   $at, $zero, 0x003B         ## $at = 0000003B
/* 0CBB8 808108F8 A4400038 */  sh      $zero, 0x0038($v0)         ## 8015E698
/* 0CBBC 808108FC 1061001A */  beq     $v1, $at, .L80810968       
/* 0CBC0 80810900 2401003C */  addiu   $at, $zero, 0x003C         ## $at = 0000003C
/* 0CBC4 80810904 10610018 */  beq     $v1, $at, .L80810968       
/* 0CBC8 80810908 2401003D */  addiu   $at, $zero, 0x003D         ## $at = 0000003D
/* 0CBCC 8081090C 10610016 */  beq     $v1, $at, .L80810968       
/* 0CBD0 80810910 24010055 */  addiu   $at, $zero, 0x0055         ## $at = 00000055
/* 0CBD4 80810914 10610014 */  beq     $v1, $at, .L80810968       
/* 0CBD8 80810918 3C0E8012 */  lui     $t6, %hi(gEquipMasks)
/* 0CBDC 8081091C A0500068 */  sb      $s0, 0x0068($v0)           ## 8015E6C8
/* 0CBE0 80810920 95CE71A0 */  lhu     $t6, %lo(gEquipMasks)($t6)
/* 0CBE4 80810924 94430070 */  lhu     $v1, 0x0070($v0)           ## 8015E6D0
/* 0CBE8 80810928 3C0F8012 */  lui     $t7, %hi(gEquipNegMasks)
/* 0CBEC 8081092C 95EF71A8 */  lhu     $t7, %lo(gEquipNegMasks)($t7)
/* 0CBF0 80810930 01C32024 */  and     $a0, $t6, $v1              
/* 0CBF4 80810934 3084FFFF */  andi    $a0, $a0, 0xFFFF           ## $a0 = 00000000
/* 0CBF8 80810938 006FC024 */  and     $t8, $v1, $t7              
/* 0CBFC 8081093C A4580070 */  sh      $t8, 0x0070($v0)           ## 8015E6D0
/* 0CC00 80810940 0004C880 */  sll     $t9, $a0,  2               
/* 0CC04 80810944 3C088012 */  lui     $t0, %hi(gBitFlags-4)
/* 0CC08 80810948 01194021 */  addu    $t0, $t0, $t9              
/* 0CC0C 8081094C 3C098012 */  lui     $t1, %hi(gEquipShifts)
/* 0CC10 80810950 912971F0 */  lbu     $t1, %lo(gEquipShifts)($t1)
/* 0CC14 80810954 8D08711C */  lw      $t0, %lo(gBitFlags-4)($t0)
/* 0CC18 80810958 944B009C */  lhu     $t3, 0x009C($v0)           ## 8015E6FC
/* 0CC1C 8081095C 01285004 */  sllv    $t2, $t0, $t1              
/* 0CC20 80810960 016A6026 */  xor     $t4, $t3, $t2              
/* 0CC24 80810964 A44C009C */  sh      $t4, 0x009C($v0)           ## 8015E6FC
.L80810968:
/* 0CC28 80810968 8FBF0024 */  lw      $ra, 0x0024($sp)           
/* 0CC2C 8081096C 8FB00020 */  lw      $s0, 0x0020($sp)           
/* 0CC30 80810970 27BD0040 */  addiu   $sp, $sp, 0x0040           ## $sp = 00000000
/* 0CC34 80810974 03E00008 */  jr      $ra                        
/* 0CC38 80810978 00000000 */  nop
