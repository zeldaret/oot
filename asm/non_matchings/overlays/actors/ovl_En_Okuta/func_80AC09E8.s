glabel func_80AC09E8
/* 00388 80AC09E8 27BDFFD0 */  addiu   $sp, $sp, 0xFFD0           ## $sp = FFFFFFD0
/* 0038C 80AC09EC AFBF001C */  sw      $ra, 0x001C($sp)           
/* 00390 80AC09F0 AFA50034 */  sw      $a1, 0x0034($sp)           
/* 00394 80AC09F4 C4840024 */  lwc1    $f4, 0x0024($a0)           ## 00000024
/* 00398 80AC09F8 3C0F0001 */  lui     $t7, 0x0001                ## $t7 = 00010000
/* 0039C 80AC09FC 01E57821 */  addu    $t7, $t7, $a1              
/* 003A0 80AC0A00 E7A40024 */  swc1    $f4, 0x0024($sp)           
/* 003A4 80AC0A04 C486000C */  lwc1    $f6, 0x000C($a0)           ## 0000000C
/* 003A8 80AC0A08 24010007 */  addiu   $at, $zero, 0x0007         ## $at = 00000007
/* 003AC 80AC0A0C E7A60028 */  swc1    $f6, 0x0028($sp)           
/* 003B0 80AC0A10 C488002C */  lwc1    $f8, 0x002C($a0)           ## 0000002C
/* 003B4 80AC0A14 E7A8002C */  swc1    $f8, 0x002C($sp)           
/* 003B8 80AC0A18 8DEF1DE4 */  lw      $t7, 0x1DE4($t7)           ## 00011DE4
/* 003BC 80AC0A1C 01E1001B */  divu    $zero, $t7, $at            
/* 003C0 80AC0A20 0000C010 */  mfhi    $t8                        
/* 003C4 80AC0A24 57000015 */  bnel    $t8, $zero, .L80AC0A7C     
/* 003C8 80AC0A28 8FBF001C */  lw      $ra, 0x001C($sp)           
/* 003CC 80AC0A2C 8C880190 */  lw      $t0, 0x0190($a0)           ## 00000190
/* 003D0 80AC0A30 3C1980AC */  lui     $t9, %hi(func_80AC12D8)    ## $t9 = 80AC0000
/* 003D4 80AC0A34 273912D8 */  addiu   $t9, $t9, %lo(func_80AC12D8) ## $t9 = 80AC12D8
/* 003D8 80AC0A38 1728000A */  bne     $t9, $t0, .L80AC0A64       
/* 003DC 80AC0A3C 27A50024 */  addiu   $a1, $sp, 0x0024           ## $a1 = FFFFFFF4
/* 003E0 80AC0A40 C48A0028 */  lwc1    $f10, 0x0028($a0)          ## 00000028
/* 003E4 80AC0A44 C490000C */  lwc1    $f16, 0x000C($a0)          ## 0000000C
/* 003E8 80AC0A48 3C014248 */  lui     $at, 0x4248                ## $at = 42480000
/* 003EC 80AC0A4C 44812000 */  mtc1    $at, $f4                   ## $f4 = 50.00
/* 003F0 80AC0A50 46105481 */  sub.s   $f18, $f10, $f16           
/* 003F4 80AC0A54 4604903C */  c.lt.s  $f18, $f4                  
/* 003F8 80AC0A58 00000000 */  nop
/* 003FC 80AC0A5C 45020007 */  bc1fl   .L80AC0A7C                 
/* 00400 80AC0A60 8FBF001C */  lw      $ra, 0x001C($sp)           
.L80AC0A64:
/* 00404 80AC0A64 8FA40034 */  lw      $a0, 0x0034($sp)           
/* 00408 80AC0A68 240600FA */  addiu   $a2, $zero, 0x00FA         ## $a2 = 000000FA
/* 0040C 80AC0A6C 2407028A */  addiu   $a3, $zero, 0x028A         ## $a3 = 0000028A
/* 00410 80AC0A70 0C00A511 */  jal     EffectSsGRipple_Spawn              
/* 00414 80AC0A74 AFA00010 */  sw      $zero, 0x0010($sp)         
/* 00418 80AC0A78 8FBF001C */  lw      $ra, 0x001C($sp)           
.L80AC0A7C:
/* 0041C 80AC0A7C 27BD0030 */  addiu   $sp, $sp, 0x0030           ## $sp = 00000000
/* 00420 80AC0A80 03E00008 */  jr      $ra                        
/* 00424 80AC0A84 00000000 */  nop
