glabel func_80AA92B8
/* 03268 80AA92B8 27BDFF90 */  addiu   $sp, $sp, 0xFF90           ## $sp = FFFFFF90
/* 0326C 80AA92BC 3C0E80AB */  lui     $t6, %hi(D_80AA9D90)       ## $t6 = 80AB0000
/* 03270 80AA92C0 AFBF0024 */  sw      $ra, 0x0024($sp)           
/* 03274 80AA92C4 AFB00020 */  sw      $s0, 0x0020($sp)           
/* 03278 80AA92C8 AFA50074 */  sw      $a1, 0x0074($sp)           
/* 0327C 80AA92CC 25CE9D90 */  addiu   $t6, $t6, %lo(D_80AA9D90)  ## $t6 = 80AA9D90
/* 03280 80AA92D0 8DD80000 */  lw      $t8, 0x0000($t6)           ## 80AA9D90
/* 03284 80AA92D4 27A60064 */  addiu   $a2, $sp, 0x0064           ## $a2 = FFFFFFF4
/* 03288 80AA92D8 3C0880AB */  lui     $t0, %hi(D_80AA9D9C)       ## $t0 = 80AB0000
/* 0328C 80AA92DC ACD80000 */  sw      $t8, 0x0000($a2)           ## FFFFFFF4
/* 03290 80AA92E0 8DCF0004 */  lw      $t7, 0x0004($t6)           ## 80AA9D94
/* 03294 80AA92E4 25089D9C */  addiu   $t0, $t0, %lo(D_80AA9D9C)  ## $t0 = 80AA9D9C
/* 03298 80AA92E8 27B90058 */  addiu   $t9, $sp, 0x0058           ## $t9 = FFFFFFE8
/* 0329C 80AA92EC ACCF0004 */  sw      $t7, 0x0004($a2)           ## FFFFFFF8
/* 032A0 80AA92F0 8DD80008 */  lw      $t8, 0x0008($t6)           ## 80AA9D98
/* 032A4 80AA92F4 3C0C80AB */  lui     $t4, %hi(D_80AA9DA8)       ## $t4 = 80AB0000
/* 032A8 80AA92F8 258C9DA8 */  addiu   $t4, $t4, %lo(D_80AA9DA8)  ## $t4 = 80AA9DA8
/* 032AC 80AA92FC ACD80008 */  sw      $t8, 0x0008($a2)           ## FFFFFFFC
/* 032B0 80AA9300 8D0A0000 */  lw      $t2, 0x0000($t0)           ## 80AA9D9C
/* 032B4 80AA9304 8D090004 */  lw      $t1, 0x0004($t0)           ## 80AA9DA0
/* 032B8 80AA9308 27AB004C */  addiu   $t3, $sp, 0x004C           ## $t3 = FFFFFFDC
/* 032BC 80AA930C AF2A0000 */  sw      $t2, 0x0000($t9)           ## FFFFFFE8
/* 032C0 80AA9310 8D0A0008 */  lw      $t2, 0x0008($t0)           ## 80AA9DA4
/* 032C4 80AA9314 AF290004 */  sw      $t1, 0x0004($t9)           ## FFFFFFEC
/* 032C8 80AA9318 3C1880AB */  lui     $t8, %hi(D_80AA9DB4)       ## $t8 = 80AB0000
/* 032CC 80AA931C AF2A0008 */  sw      $t2, 0x0008($t9)           ## FFFFFFF0
/* 032D0 80AA9320 8D8E0000 */  lw      $t6, 0x0000($t4)           ## 80AA9DA8
/* 032D4 80AA9324 8D8D0004 */  lw      $t5, 0x0004($t4)           ## 80AA9DAC
/* 032D8 80AA9328 27189DB4 */  addiu   $t8, $t8, %lo(D_80AA9DB4)  ## $t8 = 80AA9DB4
/* 032DC 80AA932C AD6E0000 */  sw      $t6, 0x0000($t3)           ## FFFFFFDC
/* 032E0 80AA9330 8D8E0008 */  lw      $t6, 0x0008($t4)           ## 80AA9DB0
/* 032E4 80AA9334 AD6D0004 */  sw      $t5, 0x0004($t3)           ## FFFFFFE0
/* 032E8 80AA9338 27AF0040 */  addiu   $t7, $sp, 0x0040           ## $t7 = FFFFFFD0
/* 032EC 80AA933C AD6E0008 */  sw      $t6, 0x0008($t3)           ## FFFFFFE4
/* 032F0 80AA9340 8F080000 */  lw      $t0, 0x0000($t8)           ## 80AA9DB4
/* 032F4 80AA9344 8F190004 */  lw      $t9, 0x0004($t8)           ## 80AA9DB8
/* 032F8 80AA9348 00808025 */  or      $s0, $a0, $zero            ## $s0 = 00000000
/* 032FC 80AA934C ADE80000 */  sw      $t0, 0x0000($t7)           ## FFFFFFD0
/* 03300 80AA9350 8F080008 */  lw      $t0, 0x0008($t8)           ## 80AA9DBC
/* 03304 80AA9354 ADF90004 */  sw      $t9, 0x0004($t7)           ## FFFFFFD4
/* 03308 80AA9358 3C0144FA */  lui     $at, 0x44FA                ## $at = 44FA0000
/* 0330C 80AA935C ADE80008 */  sw      $t0, 0x0008($t7)           ## FFFFFFD8
/* 03310 80AA9360 8489001C */  lh      $t1, 0x001C($a0)           ## 0000001C
/* 03314 80AA9364 C7A40064 */  lwc1    $f4, 0x0064($sp)           
/* 03318 80AA9368 00C02025 */  or      $a0, $a2, $zero            ## $a0 = FFFFFFF4
/* 0331C 80AA936C 19200019 */  blez    $t1, .L80AA93D4            
/* 03320 80AA9370 26050400 */  addiu   $a1, $s0, 0x0400           ## $a1 = 00000400
/* 03324 80AA9374 44810000 */  mtc1    $at, $f0                   ## $f0 = 2000.00
/* 03328 80AA9378 C7A8004C */  lwc1    $f8, 0x004C($sp)           
/* 0332C 80AA937C C7B00058 */  lwc1    $f16, 0x0058($sp)          
/* 03330 80AA9380 3C01C57A */  lui     $at, 0xC57A                ## $at = C57A0000
/* 03334 80AA9384 44811000 */  mtc1    $at, $f2                   ## $f2 = -4000.00
/* 03338 80AA9388 46002180 */  add.s   $f6, $f4, $f0              
/* 0333C 80AA938C 3C01457A */  lui     $at, 0x457A                ## $at = 457A0000
/* 03340 80AA9390 44816000 */  mtc1    $at, $f12                  ## $f12 = 4000.00
/* 03344 80AA9394 46004280 */  add.s   $f10, $f8, $f0             
/* 03348 80AA9398 C7A40040 */  lwc1    $f4, 0x0040($sp)           
/* 0334C 80AA939C C7A80054 */  lwc1    $f8, 0x0054($sp)           
/* 03350 80AA93A0 46008481 */  sub.s   $f18, $f16, $f0            
/* 03354 80AA93A4 C7B00048 */  lwc1    $f16, 0x0048($sp)          
/* 03358 80AA93A8 E7A60064 */  swc1    $f6, 0x0064($sp)           
/* 0335C 80AA93AC E7AA004C */  swc1    $f10, 0x004C($sp)          
/* 03360 80AA93B0 E7B20058 */  swc1    $f18, 0x0058($sp)          
/* 03364 80AA93B4 46002181 */  sub.s   $f6, $f4, $f0              
/* 03368 80AA93B8 E7A2006C */  swc1    $f2, 0x006C($sp)           
/* 0336C 80AA93BC E7A20060 */  swc1    $f2, 0x0060($sp)           
/* 03370 80AA93C0 460C4280 */  add.s   $f10, $f8, $f12            
/* 03374 80AA93C4 E7A60040 */  swc1    $f6, 0x0040($sp)           
/* 03378 80AA93C8 460C8480 */  add.s   $f18, $f16, $f12           
/* 0337C 80AA93CC E7AA0054 */  swc1    $f10, 0x0054($sp)          
/* 03380 80AA93D0 E7B20048 */  swc1    $f18, 0x0048($sp)          
.L80AA93D4:
/* 03384 80AA93D4 0C0346BD */  jal     Matrix_MultVec3f              
/* 03388 80AA93D8 AFA50034 */  sw      $a1, 0x0034($sp)           
/* 0338C 80AA93DC 260503F4 */  addiu   $a1, $s0, 0x03F4           ## $a1 = 000003F4
/* 03390 80AA93E0 AFA50038 */  sw      $a1, 0x0038($sp)           
/* 03394 80AA93E4 0C0346BD */  jal     Matrix_MultVec3f              
/* 03398 80AA93E8 27A40058 */  addiu   $a0, $sp, 0x0058           ## $a0 = FFFFFFE8
/* 0339C 80AA93EC 26050418 */  addiu   $a1, $s0, 0x0418           ## $a1 = 00000418
/* 033A0 80AA93F0 AFA5002C */  sw      $a1, 0x002C($sp)           
/* 033A4 80AA93F4 0C0346BD */  jal     Matrix_MultVec3f              
/* 033A8 80AA93F8 27A4004C */  addiu   $a0, $sp, 0x004C           ## $a0 = FFFFFFDC
/* 033AC 80AA93FC 2607040C */  addiu   $a3, $s0, 0x040C           ## $a3 = 0000040C
/* 033B0 80AA9400 00E02825 */  or      $a1, $a3, $zero            ## $a1 = 0000040C
/* 033B4 80AA9404 AFA70030 */  sw      $a3, 0x0030($sp)           
/* 033B8 80AA9408 0C0346BD */  jal     Matrix_MultVec3f              
/* 033BC 80AA940C 27A40040 */  addiu   $a0, $sp, 0x0040           ## $a0 = FFFFFFD0
/* 033C0 80AA9410 8FAA002C */  lw      $t2, 0x002C($sp)           
/* 033C4 80AA9414 8FA70030 */  lw      $a3, 0x0030($sp)           
/* 033C8 80AA9418 260403B4 */  addiu   $a0, $s0, 0x03B4           ## $a0 = 000003B4
/* 033CC 80AA941C 8FA50038 */  lw      $a1, 0x0038($sp)           
/* 033D0 80AA9420 8FA60034 */  lw      $a2, 0x0034($sp)           
/* 033D4 80AA9424 0C0189CD */  jal     func_80062734              
/* 033D8 80AA9428 AFAA0010 */  sw      $t2, 0x0010($sp)           
/* 033DC 80AA942C 8FBF0024 */  lw      $ra, 0x0024($sp)           
/* 033E0 80AA9430 8FB00020 */  lw      $s0, 0x0020($sp)           
/* 033E4 80AA9434 27BD0070 */  addiu   $sp, $sp, 0x0070           ## $sp = 00000000
/* 033E8 80AA9438 03E00008 */  jr      $ra                        
/* 033EC 80AA943C 00000000 */  nop
