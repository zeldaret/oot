glabel EnDivingGame_Update
/* 01320 809EEB90 27BDFFB8 */  addiu   $sp, $sp, 0xFFB8           ## $sp = FFFFFFB8
/* 01324 809EEB94 AFBF0024 */  sw      $ra, 0x0024($sp)           
/* 01328 809EEB98 AFB00020 */  sw      $s0, 0x0020($sp)           
/* 0132C 809EEB9C AFA5004C */  sw      $a1, 0x004C($sp)           
/* 01330 809EEBA0 8CAF1C44 */  lw      $t7, 0x1C44($a1)           ## 00001C44
/* 01334 809EEBA4 00808025 */  or      $s0, $a0, $zero            ## $s0 = 00000000
/* 01338 809EEBA8 3C0A8016 */  lui     $t2, %hi(gSaveContext+0x13d0)
/* 0133C 809EEBAC AFAF003C */  sw      $t7, 0x003C($sp)           
/* 01340 809EEBB0 84820294 */  lh      $v0, 0x0294($a0)           ## 00000294
/* 01344 809EEBB4 10400002 */  beq     $v0, $zero, .L809EEBC0     
/* 01348 809EEBB8 2458FFFF */  addiu   $t8, $v0, 0xFFFF           ## $t8 = FFFFFFFF
/* 0134C 809EEBBC A4980294 */  sh      $t8, 0x0294($a0)           ## 00000294
.L809EEBC0:
/* 01350 809EEBC0 86020296 */  lh      $v0, 0x0296($s0)           ## 00000296
/* 01354 809EEBC4 10400002 */  beq     $v0, $zero, .L809EEBD0     
/* 01358 809EEBC8 2459FFFF */  addiu   $t9, $v0, 0xFFFF           ## $t9 = FFFFFFFF
/* 0135C 809EEBCC A6190296 */  sh      $t9, 0x0296($s0)           ## 00000296
.L809EEBD0:
/* 01360 809EEBD0 86020298 */  lh      $v0, 0x0298($s0)           ## 00000298
/* 01364 809EEBD4 10400002 */  beq     $v0, $zero, .L809EEBE0     
/* 01368 809EEBD8 2448FFFF */  addiu   $t0, $v0, 0xFFFF           ## $t0 = FFFFFFFF
/* 0136C 809EEBDC A6080298 */  sh      $t0, 0x0298($s0)           ## 00000298
.L809EEBE0:
/* 01370 809EEBE0 8602029A */  lh      $v0, 0x029A($s0)           ## 0000029A
/* 01374 809EEBE4 10400002 */  beq     $v0, $zero, .L809EEBF0     
/* 01378 809EEBE8 2449FFFF */  addiu   $t1, $v0, 0xFFFF           ## $t1 = FFFFFFFF
/* 0137C 809EEBEC A609029A */  sh      $t1, 0x029A($s0)           ## 0000029A
.L809EEBF0:
/* 01380 809EEBF0 854AFA30 */  lh      $t2, %lo(gSaveContext+0x13d0)($t2)
/* 01384 809EEBF4 2401000A */  addiu   $at, $zero, 0x000A         ## $at = 0000000A
/* 01388 809EEBF8 55410004 */  bnel    $t2, $at, .L809EEC0C       
/* 0138C 809EEBFC 860B0298 */  lh      $t3, 0x0298($s0)           ## 00000298
/* 01390 809EEC00 0C03D646 */  jal     func_800F5918              
/* 01394 809EEC04 00000000 */  nop
/* 01398 809EEC08 860B0298 */  lh      $t3, 0x0298($s0)           ## 00000298
.L809EEC0C:
/* 0139C 809EEC0C 55600013 */  bnel    $t3, $zero, .L809EEC5C     
/* 013A0 809EEC10 8E190280 */  lw      $t9, 0x0280($s0)           ## 00000280
/* 013A4 809EEC14 860D029E */  lh      $t5, 0x029E($s0)           ## 0000029E
/* 013A8 809EEC18 240C0002 */  addiu   $t4, $zero, 0x0002         ## $t4 = 00000002
/* 013AC 809EEC1C A60C0298 */  sh      $t4, 0x0298($s0)           ## 00000298
/* 013B0 809EEC20 25AE0001 */  addiu   $t6, $t5, 0x0001           ## $t6 = 00000001
/* 013B4 809EEC24 A60E029E */  sh      $t6, 0x029E($s0)           ## 0000029E
/* 013B8 809EEC28 860F029E */  lh      $t7, 0x029E($s0)           ## 0000029E
/* 013BC 809EEC2C 29E10003 */  slti    $at, $t7, 0x0003           
/* 013C0 809EEC30 14200009 */  bne     $at, $zero, .L809EEC58     
/* 013C4 809EEC34 3C014270 */  lui     $at, 0x4270                ## $at = 42700000
/* 013C8 809EEC38 44816000 */  mtc1    $at, $f12                  ## $f12 = 60.00
/* 013CC 809EEC3C 0C00CFBE */  jal     Math_Rand_ZeroFloat
              
/* 013D0 809EEC40 A600029E */  sh      $zero, 0x029E($s0)         ## 0000029E
/* 013D4 809EEC44 4600010D */  trunc.w.s $f4, $f0                   
/* 013D8 809EEC48 44092000 */  mfc1    $t1, $f4                   
/* 013DC 809EEC4C 00000000 */  nop
/* 013E0 809EEC50 252A0014 */  addiu   $t2, $t1, 0x0014           ## $t2 = 00000014
/* 013E4 809EEC54 A60A0298 */  sh      $t2, 0x0298($s0)           ## 00000298
.L809EEC58:
/* 013E8 809EEC58 8E190280 */  lw      $t9, 0x0280($s0)           ## 00000280
.L809EEC5C:
/* 013EC 809EEC5C 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 013F0 809EEC60 8FA5004C */  lw      $a1, 0x004C($sp)           
/* 013F4 809EEC64 0320F809 */  jalr    $ra, $t9                   
/* 013F8 809EEC68 00000000 */  nop
/* 013FC 809EEC6C 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 01400 809EEC70 0C00B56E */  jal     Actor_SetHeight
              
/* 01404 809EEC74 3C0542A0 */  lui     $a1, 0x42A0                ## $a1 = 42A00000
/* 01408 809EEC78 8FAB003C */  lw      $t3, 0x003C($sp)           
/* 0140C 809EEC7C 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 01410 809EEC80 26050324 */  addiu   $a1, $s0, 0x0324           ## $a1 = 00000324
/* 01414 809EEC84 8D6D0024 */  lw      $t5, 0x0024($t3)           ## 00000024
/* 01418 809EEC88 24060002 */  addiu   $a2, $zero, 0x0002         ## $a2 = 00000002
/* 0141C 809EEC8C 24070004 */  addiu   $a3, $zero, 0x0004         ## $a3 = 00000004
/* 01420 809EEC90 AE0D033C */  sw      $t5, 0x033C($s0)           ## 0000033C
/* 01424 809EEC94 8D6C0028 */  lw      $t4, 0x0028($t3)           ## 00000028
/* 01428 809EEC98 AE0C0340 */  sw      $t4, 0x0340($s0)           ## 00000340
/* 0142C 809EEC9C 8D6D002C */  lw      $t5, 0x002C($t3)           ## 0000002C
/* 01430 809EECA0 AE0D0344 */  sw      $t5, 0x0344($s0)           ## 00000344
/* 01434 809EECA4 8FAE003C */  lw      $t6, 0x003C($sp)           
/* 01438 809EECA8 C5C60028 */  lwc1    $f6, 0x0028($t6)           ## 00000028
/* 0143C 809EECAC 0C00D285 */  jal     func_80034A14              
/* 01440 809EECB0 E6060340 */  swc1    $f6, 0x0340($s0)           ## 00000340
/* 01444 809EECB4 8A18032C */  lwl     $t8, 0x032C($s0)           ## 0000032C
/* 01448 809EECB8 8A090332 */  lwl     $t1, 0x0332($s0)           ## 00000332
/* 0144C 809EECBC 9A18032F */  lwr     $t8, 0x032F($s0)           ## 0000032F
/* 01450 809EECC0 9A090335 */  lwr     $t1, 0x0335($s0)           ## 00000335
/* 01454 809EECC4 8FA4004C */  lw      $a0, 0x004C($sp)           
/* 01458 809EECC8 AA180284 */  swl     $t8, 0x0284($s0)           ## 00000284
/* 0145C 809EECCC AA09028A */  swl     $t1, 0x028A($s0)           ## 0000028A
/* 01460 809EECD0 BA180287 */  swr     $t8, 0x0287($s0)           ## 00000287
/* 01464 809EECD4 BA09028D */  swr     $t1, 0x028D($s0)           ## 0000028D
/* 01468 809EECD8 96180330 */  lhu     $t8, 0x0330($s0)           ## 00000330
/* 0146C 809EECDC 96090336 */  lhu     $t1, 0x0336($s0)           ## 00000336
/* 01470 809EECE0 3C0A0001 */  lui     $t2, 0x0001                ## $t2 = 00010000
/* 01474 809EECE4 01445021 */  addu    $t2, $t2, $a0              
/* 01478 809EECE8 A6180288 */  sh      $t8, 0x0288($s0)           ## 00000288
/* 0147C 809EECEC A609028E */  sh      $t1, 0x028E($s0)           ## 0000028E
/* 01480 809EECF0 8D4A1DE4 */  lw      $t2, 0x1DE4($t2)           ## 00011DE4
/* 01484 809EECF4 3159000F */  andi    $t9, $t2, 0x000F           ## $t9 = 00000000
/* 01488 809EECF8 57200014 */  bnel    $t9, $zero, .L809EED4C     
/* 0148C 809EECFC 860E0290 */  lh      $t6, 0x0290($s0)           ## 00000290
/* 01490 809EED00 8E0C0024 */  lw      $t4, 0x0024($s0)           ## 00000024
/* 01494 809EED04 27A50030 */  addiu   $a1, $sp, 0x0030           ## $a1 = FFFFFFE8
/* 01498 809EED08 3C0141A0 */  lui     $at, 0x41A0                ## $at = 41A00000
/* 0149C 809EED0C ACAC0000 */  sw      $t4, 0x0000($a1)           ## FFFFFFE8
/* 014A0 809EED10 8E0B0028 */  lw      $t3, 0x0028($s0)           ## 00000028
/* 014A4 809EED14 44815000 */  mtc1    $at, $f10                  ## $f10 = 20.00
/* 014A8 809EED18 240D001E */  addiu   $t5, $zero, 0x001E         ## $t5 = 0000001E
/* 014AC 809EED1C ACAB0004 */  sw      $t3, 0x0004($a1)           ## FFFFFFEC
/* 014B0 809EED20 8E0C002C */  lw      $t4, 0x002C($s0)           ## 0000002C
/* 014B4 809EED24 24060064 */  addiu   $a2, $zero, 0x0064         ## $a2 = 00000064
/* 014B8 809EED28 240701F4 */  addiu   $a3, $zero, 0x01F4         ## $a3 = 000001F4
/* 014BC 809EED2C ACAC0008 */  sw      $t4, 0x0008($a1)           ## FFFFFFF0
/* 014C0 809EED30 C7A80034 */  lwc1    $f8, 0x0034($sp)           
/* 014C4 809EED34 AFAD0010 */  sw      $t5, 0x0010($sp)           
/* 014C8 809EED38 460A4400 */  add.s   $f16, $f8, $f10            
/* 014CC 809EED3C 0C00A511 */  jal     func_80029444              
/* 014D0 809EED40 E7B00034 */  swc1    $f16, 0x0034($sp)          
/* 014D4 809EED44 8FA4004C */  lw      $a0, 0x004C($sp)           
/* 014D8 809EED48 860E0290 */  lh      $t6, 0x0290($s0)           ## 00000290
.L809EED4C:
/* 014DC 809EED4C 3C014270 */  lui     $at, 0x4270                ## $at = 42700000
/* 014E0 809EED50 44819000 */  mtc1    $at, $f18                  ## $f18 = 60.00
/* 014E4 809EED54 25CF0001 */  addiu   $t7, $t6, 0x0001           ## $t7 = 00000001
/* 014E8 809EED58 A60F0290 */  sh      $t7, 0x0290($s0)           ## 00000290
/* 014EC 809EED5C 2418001D */  addiu   $t8, $zero, 0x001D         ## $t8 = 0000001D
/* 014F0 809EED60 AFB80014 */  sw      $t8, 0x0014($sp)           
/* 014F4 809EED64 02002825 */  or      $a1, $s0, $zero            ## $a1 = 00000000
/* 014F8 809EED68 3C0641A0 */  lui     $a2, 0x41A0                ## $a2 = 41A00000
/* 014FC 809EED6C 3C0741A0 */  lui     $a3, 0x41A0                ## $a3 = 41A00000
/* 01500 809EED70 0C00B92D */  jal     func_8002E4B4              
/* 01504 809EED74 E7B20010 */  swc1    $f18, 0x0010($sp)          
/* 01508 809EED78 2606034C */  addiu   $a2, $s0, 0x034C           ## $a2 = 0000034C
/* 0150C 809EED7C 00C02825 */  or      $a1, $a2, $zero            ## $a1 = 0000034C
/* 01510 809EED80 AFA6002C */  sw      $a2, 0x002C($sp)           
/* 01514 809EED84 0C0189B7 */  jal     Collider_CylinderUpdate
              
/* 01518 809EED88 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 0151C 809EED8C 8FA4004C */  lw      $a0, 0x004C($sp)           
/* 01520 809EED90 3C010001 */  lui     $at, 0x0001                ## $at = 00010000
/* 01524 809EED94 34211E60 */  ori     $at, $at, 0x1E60           ## $at = 00011E60
/* 01528 809EED98 8FA6002C */  lw      $a2, 0x002C($sp)           
/* 0152C 809EED9C 0C017713 */  jal     CollisionCheck_SetOC
              ## CollisionCheck_setOT
/* 01530 809EEDA0 00812821 */  addu    $a1, $a0, $at              
/* 01534 809EEDA4 8FBF0024 */  lw      $ra, 0x0024($sp)           
/* 01538 809EEDA8 8FB00020 */  lw      $s0, 0x0020($sp)           
/* 0153C 809EEDAC 27BD0048 */  addiu   $sp, $sp, 0x0048           ## $sp = 00000000
/* 01540 809EEDB0 03E00008 */  jr      $ra                        
/* 01544 809EEDB4 00000000 */  nop
