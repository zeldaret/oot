glabel EnMag_Draw
/* 022D4 80AA5DD4 27BDFFB0 */  addiu   $sp, $sp, 0xFFB0           ## $sp = FFFFFFB0
/* 022D8 80AA5DD8 AFBF001C */  sw      $ra, 0x001C($sp)           
/* 022DC 80AA5DDC AFB00018 */  sw      $s0, 0x0018($sp)           
/* 022E0 80AA5DE0 AFA40050 */  sw      $a0, 0x0050($sp)           
/* 022E4 80AA5DE4 AFA50054 */  sw      $a1, 0x0054($sp)           
/* 022E8 80AA5DE8 8CA50000 */  lw      $a1, 0x0000($a1)           ## 00000000
/* 022EC 80AA5DEC 3C0680AA */  lui     $a2, %hi(D_80AA5F10)       ## $a2 = 80AA0000
/* 022F0 80AA5DF0 24C65F10 */  addiu   $a2, $a2, %lo(D_80AA5F10)  ## $a2 = 80AA5F10
/* 022F4 80AA5DF4 27A40030 */  addiu   $a0, $sp, 0x0030           ## $a0 = FFFFFFE0
/* 022F8 80AA5DF8 2407047F */  addiu   $a3, $zero, 0x047F         ## $a3 = 0000047F
/* 022FC 80AA5DFC 0C031AB1 */  jal     func_800C6AC4              
/* 02300 80AA5E00 00A08025 */  or      $s0, $a1, $zero            ## $s0 = 00000000
/* 02304 80AA5E04 8E0402C0 */  lw      $a0, 0x02C0($s0)           ## 000002C0
/* 02308 80AA5E08 0C031B08 */  jal     func_800C6C20              
/* 0230C 80AA5E0C AFA40044 */  sw      $a0, 0x0044($sp)           
/* 02310 80AA5E10 AFA20048 */  sw      $v0, 0x0048($sp)           
/* 02314 80AA5E14 8E0302B0 */  lw      $v1, 0x02B0($s0)           ## 000002B0
/* 02318 80AA5E18 3C18DE00 */  lui     $t8, 0xDE00                ## $t8 = DE000000
/* 0231C 80AA5E1C 27A60048 */  addiu   $a2, $sp, 0x0048           ## $a2 = FFFFFFF8
/* 02320 80AA5E20 246F0008 */  addiu   $t7, $v1, 0x0008           ## $t7 = 00000008
/* 02324 80AA5E24 AE0F02B0 */  sw      $t7, 0x02B0($s0)           ## 000002B0
/* 02328 80AA5E28 AC780000 */  sw      $t8, 0x0000($v1)           ## 00000000
/* 0232C 80AA5E2C 8FB90048 */  lw      $t9, 0x0048($sp)           
/* 02330 80AA5E30 AC790004 */  sw      $t9, 0x0004($v1)           ## 00000004
/* 02334 80AA5E34 8FA50054 */  lw      $a1, 0x0054($sp)           
/* 02338 80AA5E38 0C2A941F */  jal     func_80AA507C              
/* 0233C 80AA5E3C 8FA40050 */  lw      $a0, 0x0050($sp)           
/* 02340 80AA5E40 8FA80048 */  lw      $t0, 0x0048($sp)           
/* 02344 80AA5E44 3C0ADF00 */  lui     $t2, 0xDF00                ## $t2 = DF000000
/* 02348 80AA5E48 25090008 */  addiu   $t1, $t0, 0x0008           ## $t1 = 00000008
/* 0234C 80AA5E4C AFA90048 */  sw      $t1, 0x0048($sp)           
/* 02350 80AA5E50 AD000004 */  sw      $zero, 0x0004($t0)         ## 00000004
/* 02354 80AA5E54 AD0A0000 */  sw      $t2, 0x0000($t0)           ## 00000000
/* 02358 80AA5E58 8FA50048 */  lw      $a1, 0x0048($sp)           
/* 0235C 80AA5E5C 0C031B0A */  jal     func_800C6C28              
/* 02360 80AA5E60 8FA40044 */  lw      $a0, 0x0044($sp)           
/* 02364 80AA5E64 8FAB0048 */  lw      $t3, 0x0048($sp)           
/* 02368 80AA5E68 3C0680AA */  lui     $a2, %hi(D_80AA5F20)       ## $a2 = 80AA0000
/* 0236C 80AA5E6C 24C65F20 */  addiu   $a2, $a2, %lo(D_80AA5F20)  ## $a2 = 80AA5F20
/* 02370 80AA5E70 AE0B02C0 */  sw      $t3, 0x02C0($s0)           ## 000002C0
/* 02374 80AA5E74 8FAC0054 */  lw      $t4, 0x0054($sp)           
/* 02378 80AA5E78 27A40030 */  addiu   $a0, $sp, 0x0030           ## $a0 = FFFFFFE0
/* 0237C 80AA5E7C 24070489 */  addiu   $a3, $zero, 0x0489         ## $a3 = 00000489
/* 02380 80AA5E80 0C031AD5 */  jal     func_800C6B54              
/* 02384 80AA5E84 8D850000 */  lw      $a1, 0x0000($t4)           ## 00000000
/* 02388 80AA5E88 8FBF001C */  lw      $ra, 0x001C($sp)           
/* 0238C 80AA5E8C 8FB00018 */  lw      $s0, 0x0018($sp)           
/* 02390 80AA5E90 27BD0050 */  addiu   $sp, $sp, 0x0050           ## $sp = 00000000
/* 02394 80AA5E94 03E00008 */  jr      $ra                        
/* 02398 80AA5E98 00000000 */  nop
/* 0239C 80AA5E9C 00000000 */  nop

