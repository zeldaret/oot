glabel func_808BEFF4
/* 002B4 808BEFF4 27BDFFD8 */  addiu   $sp, $sp, 0xFFD8           ## $sp = FFFFFFD8
/* 002B8 808BEFF8 AFBF0024 */  sw      $ra, 0x0024($sp)           
/* 002BC 808BEFFC AFB00020 */  sw      $s0, 0x0020($sp)           
/* 002C0 808BF000 AFA5002C */  sw      $a1, 0x002C($sp)           
/* 002C4 808BF004 908E017C */  lbu     $t6, 0x017C($a0)           ## 0000017C
/* 002C8 808BF008 00808025 */  or      $s0, $a0, $zero            ## $s0 = 00000000
/* 002CC 808BF00C 00A02025 */  or      $a0, $a1, $zero            ## $a0 = 00000000
/* 002D0 808BF010 31CF0002 */  andi    $t7, $t6, 0x0002           ## $t7 = 00000000
/* 002D4 808BF014 11E00007 */  beq     $t7, $zero, .L808BF034     
/* 002D8 808BF018 02002825 */  or      $a1, $s0, $zero            ## $a1 = 00000000
/* 002DC 808BF01C 3C0140C0 */  lui     $at, 0x40C0                ## $at = 40C00000
/* 002E0 808BF020 44812000 */  mtc1    $at, $f4                   ## $f4 = 6.00
/* 002E4 808BF024 860700B6 */  lh      $a3, 0x00B6($s0)           ## 000000B6
/* 002E8 808BF028 3C0640E0 */  lui     $a2, 0x40E0                ## $a2 = 40E00000
/* 002EC 808BF02C 0C00BDC7 */  jal     func_8002F71C              
/* 002F0 808BF030 E7A40010 */  swc1    $f4, 0x0010($sp)           
.L808BF034:
/* 002F4 808BF034 861800B4 */  lh      $t8, 0x00B4($s0)           ## 000000B4
/* 002F8 808BF038 3C010001 */  lui     $at, 0x0001                ## $at = 00010000
/* 002FC 808BF03C 34211E60 */  ori     $at, $at, 0x1E60           ## $at = 00011E60
/* 00300 808BF040 27190360 */  addiu   $t9, $t8, 0x0360           ## $t9 = 00000360
/* 00304 808BF044 A61900B4 */  sh      $t9, 0x00B4($s0)           ## 000000B4
/* 00308 808BF048 8FA4002C */  lw      $a0, 0x002C($sp)           
/* 0030C 808BF04C 2606016C */  addiu   $a2, $s0, 0x016C           ## $a2 = 0000016C
/* 00310 808BF050 0C0175E7 */  jal     Actor_CollisionCheck_SetAT
              ## CollisionCheck_setAT
/* 00314 808BF054 00812821 */  addu    $a1, $a0, $at              
/* 00318 808BF058 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 0031C 808BF05C 0C00BE5D */  jal     func_8002F974              
/* 00320 808BF060 240520EC */  addiu   $a1, $zero, 0x20EC         ## $a1 = 000020EC
/* 00324 808BF064 8FBF0024 */  lw      $ra, 0x0024($sp)           
/* 00328 808BF068 8FB00020 */  lw      $s0, 0x0020($sp)           
/* 0032C 808BF06C 27BD0028 */  addiu   $sp, $sp, 0x0028           ## $sp = 00000000
/* 00330 808BF070 03E00008 */  jr      $ra                        
/* 00334 808BF074 00000000 */  nop


