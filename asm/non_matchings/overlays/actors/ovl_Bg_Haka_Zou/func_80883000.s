glabel func_80883000
/* 00A40 80883000 27BDFFD8 */  addiu   $sp, $sp, 0xFFD8           ## $sp = FFFFFFD8
/* 00A44 80883004 AFBF0024 */  sw      $ra, 0x0024($sp)           
/* 00A48 80883008 AFB10020 */  sw      $s1, 0x0020($sp)           
/* 00A4C 8088300C AFB0001C */  sw      $s0, 0x001C($sp)           
/* 00A50 80883010 908E017D */  lbu     $t6, 0x017D($a0)           ## 0000017D
/* 00A54 80883014 00808025 */  or      $s0, $a0, $zero            ## $s0 = 00000000
/* 00A58 80883018 00A08825 */  or      $s1, $a1, $zero            ## $s1 = 00000000
/* 00A5C 8088301C 31CF0002 */  andi    $t7, $t6, 0x0002           ## $t7 = 00000000
/* 00A60 80883020 11E0002E */  beq     $t7, $zero, .L808830DC     
/* 00A64 80883024 02202025 */  or      $a0, $s1, $zero            ## $a0 = 00000000
/* 00A68 80883028 00A02025 */  or      $a0, $a1, $zero            ## $a0 = 00000000
/* 00A6C 8088302C 0C00B2DD */  jal     Flags_SetSwitch
              
/* 00A70 80883030 92050169 */  lbu     $a1, 0x0169($s0)           ## 00000169
/* 00A74 80883034 8602001C */  lh      $v0, 0x001C($s0)           ## 0000001C
/* 00A78 80883038 24180014 */  addiu   $t8, $zero, 0x0014         ## $t8 = 00000014
/* 00A7C 8088303C 3C198088 */  lui     $t9, %hi(func_80883144)    ## $t9 = 80880000
/* 00A80 80883040 1440000C */  bne     $v0, $zero, .L80883074     
/* 00A84 80883044 24010002 */  addiu   $at, $zero, 0x0002         ## $at = 00000002
/* 00A88 80883048 27393144 */  addiu   $t9, $t9, %lo(func_80883144) ## $t9 = 80883144
/* 00A8C 8088304C A618016A */  sh      $t8, 0x016A($s0)           ## 0000016A
/* 00A90 80883050 AE190164 */  sw      $t9, 0x0164($s0)           ## 00000164
/* 00A94 80883054 AFA00010 */  sw      $zero, 0x0010($sp)         
/* 00A98 80883058 02202025 */  or      $a0, $s1, $zero            ## $a0 = 00000000
/* 00A9C 8088305C 24050D48 */  addiu   $a1, $zero, 0x0D48         ## $a1 = 00000D48
/* 00AA0 80883060 240603E7 */  addiu   $a2, $zero, 0x03E7         ## $a2 = 000003E7
/* 00AA4 80883064 0C02003E */  jal     func_800800F8              
/* 00AA8 80883068 02003825 */  or      $a3, $s0, $zero            ## $a3 = 00000000
/* 00AAC 8088306C 10000021 */  beq     $zero, $zero, .L808830F4   
/* 00AB0 80883070 8FBF0024 */  lw      $ra, 0x0024($sp)           
.L80883074:
/* 00AB4 80883074 1441000E */  bne     $v0, $at, .L808830B0       
/* 00AB8 80883078 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 00ABC 8088307C 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 00AC0 80883080 0C220B95 */  jal     func_80882E54              
/* 00AC4 80883084 02202825 */  or      $a1, $s1, $zero            ## $a1 = 00000000
/* 00AC8 80883088 24080001 */  addiu   $t0, $zero, 0x0001         ## $t0 = 00000001
/* 00ACC 8088308C AE000134 */  sw      $zero, 0x0134($s0)         ## 00000134
/* 00AD0 80883090 A608016A */  sh      $t0, 0x016A($s0)           ## 0000016A
/* 00AD4 80883094 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 00AD8 80883098 0C00BE0A */  jal     Audio_PlayActorSound2
              
/* 00ADC 8088309C 24052802 */  addiu   $a1, $zero, 0x2802         ## $a1 = 00002802
/* 00AE0 808830A0 3C098088 */  lui     $t1, %hi(func_80883104)    ## $t1 = 80880000
/* 00AE4 808830A4 25293104 */  addiu   $t1, $t1, %lo(func_80883104) ## $t1 = 80883104
/* 00AE8 808830A8 10000011 */  beq     $zero, $zero, .L808830F0   
/* 00AEC 808830AC AE090164 */  sw      $t1, 0x0164($s0)           ## 00000164
.L808830B0:
/* 00AF0 808830B0 0C220B31 */  jal     func_80882CC4              
/* 00AF4 808830B4 02202825 */  or      $a1, $s1, $zero            ## $a1 = 00000000
/* 00AF8 808830B8 240A0001 */  addiu   $t2, $zero, 0x0001         ## $t2 = 00000001
/* 00AFC 808830BC A60A016A */  sh      $t2, 0x016A($s0)           ## 0000016A
/* 00B00 808830C0 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 00B04 808830C4 0C00BE0A */  jal     Audio_PlayActorSound2
              
/* 00B08 808830C8 24052810 */  addiu   $a1, $zero, 0x2810         ## $a1 = 00002810
/* 00B0C 808830CC 3C0B8088 */  lui     $t3, %hi(func_80883104)    ## $t3 = 80880000
/* 00B10 808830D0 256B3104 */  addiu   $t3, $t3, %lo(func_80883104) ## $t3 = 80883104
/* 00B14 808830D4 10000006 */  beq     $zero, $zero, .L808830F0   
/* 00B18 808830D8 AE0B0164 */  sw      $t3, 0x0164($s0)           ## 00000164
.L808830DC:
/* 00B1C 808830DC 3C010001 */  lui     $at, 0x0001                ## $at = 00010000
/* 00B20 808830E0 34211E60 */  ori     $at, $at, 0x1E60           ## $at = 00011E60
/* 00B24 808830E4 02212821 */  addu    $a1, $s1, $at              
/* 00B28 808830E8 0C01767D */  jal     Actor_CollisionCheck_SetAC
              ## CollisionCheck_setAC
/* 00B2C 808830EC 2606016C */  addiu   $a2, $s0, 0x016C           ## $a2 = 0000016C
.L808830F0:
/* 00B30 808830F0 8FBF0024 */  lw      $ra, 0x0024($sp)           
.L808830F4:
/* 00B34 808830F4 8FB0001C */  lw      $s0, 0x001C($sp)           
/* 00B38 808830F8 8FB10020 */  lw      $s1, 0x0020($sp)           
/* 00B3C 808830FC 03E00008 */  jr      $ra                        
/* 00B40 80883100 27BD0028 */  addiu   $sp, $sp, 0x0028           ## $sp = 00000000
