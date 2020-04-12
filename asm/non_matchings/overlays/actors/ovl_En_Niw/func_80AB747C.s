glabel func_80AB747C
/* 01CFC 80AB747C 27BDFFE8 */  addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
/* 01D00 80AB7480 AFBF0014 */  sw      $ra, 0x0014($sp)           
/* 01D04 80AB7484 AFA5001C */  sw      $a1, 0x001C($sp)           
/* 01D08 80AB7488 848E02A8 */  lh      $t6, 0x02A8($a0)           ## 000002A8
/* 01D0C 80AB748C 55C00026 */  bnel    $t6, $zero, .L80AB7528     
/* 01D10 80AB7490 8FBF0014 */  lw      $ra, 0x0014($sp)           
/* 01D14 80AB7494 848F001C */  lh      $t7, 0x001C($a0)           ## 0000001C
/* 01D18 80AB7498 2401000A */  addiu   $at, $zero, 0x000A         ## $at = 0000000A
/* 01D1C 80AB749C 51E10022 */  beql    $t7, $at, .L80AB7528       
/* 01D20 80AB74A0 8FBF0014 */  lw      $ra, 0x0014($sp)           
/* 01D24 80AB74A4 8C990250 */  lw      $t9, 0x0250($a0)           ## 00000250
/* 01D28 80AB74A8 3C1880AB */  lui     $t8, %hi(func_80AB6450)    ## $t8 = 80AB0000
/* 01D2C 80AB74AC 27186450 */  addiu   $t8, $t8, %lo(func_80AB6450) ## $t8 = 80AB6450
/* 01D30 80AB74B0 5319001D */  beql    $t8, $t9, .L80AB7528       
/* 01D34 80AB74B4 8FBF0014 */  lw      $ra, 0x0014($sp)           
/* 01D38 80AB74B8 9082031D */  lbu     $v0, 0x031D($a0)           ## 0000031D
/* 01D3C 80AB74BC 240D0001 */  addiu   $t5, $zero, 0x0001         ## $t5 = 00000001
/* 01D40 80AB74C0 24052813 */  addiu   $a1, $zero, 0x2813         ## $a1 = 00002813
/* 01D44 80AB74C4 30480002 */  andi    $t0, $v0, 0x0002           ## $t0 = 00000000
/* 01D48 80AB74C8 11000016 */  beq     $t0, $zero, .L80AB7524     
/* 01D4C 80AB74CC 3049FFFD */  andi    $t1, $v0, 0xFFFD           ## $t1 = 00000000
/* 01D50 80AB74D0 848302A4 */  lh      $v1, 0x02A4($a0)           ## 000002A4
/* 01D54 80AB74D4 240A001E */  addiu   $t2, $zero, 0x001E         ## $t2 = 0000001E
/* 01D58 80AB74D8 A089031D */  sb      $t1, 0x031D($a0)           ## 0000031D
/* 01D5C 80AB74DC 18600007 */  blez    $v1, .L80AB74FC            
/* 01D60 80AB74E0 A48A0260 */  sh      $t2, 0x0260($a0)           ## 00000260
/* 01D64 80AB74E4 3C0B80AC */  lui     $t3, %hi(D_80AB85E0)       ## $t3 = 80AC0000
/* 01D68 80AB74E8 856B85E0 */  lh      $t3, %lo(D_80AB85E0)($t3)  
/* 01D6C 80AB74EC 246CFFFF */  addiu   $t4, $v1, 0xFFFF           ## $t4 = FFFFFFFF
/* 01D70 80AB74F0 55600003 */  bnel    $t3, $zero, .L80AB7500     
/* 01D74 80AB74F4 A48D02A6 */  sh      $t5, 0x02A6($a0)           ## 000002A6
/* 01D78 80AB74F8 A48C02A4 */  sh      $t4, 0x02A4($a0)           ## 000002A4
.L80AB74FC:
/* 01D7C 80AB74FC A48D02A6 */  sh      $t5, 0x02A6($a0)           ## 000002A6
.L80AB7500:
/* 01D80 80AB7500 0C00BE0A */  jal     Audio_PlayActorSound2
              
/* 01D84 80AB7504 AFA40018 */  sw      $a0, 0x0018($sp)           
/* 01D88 80AB7508 8FA40018 */  lw      $a0, 0x0018($sp)           
/* 01D8C 80AB750C 3C0F80AB */  lui     $t7, %hi(func_80AB7290)    ## $t7 = 80AB0000
/* 01D90 80AB7510 240E0064 */  addiu   $t6, $zero, 0x0064         ## $t6 = 00000064
/* 01D94 80AB7514 25EF7290 */  addiu   $t7, $t7, %lo(func_80AB7290) ## $t7 = 80AB7290
/* 01D98 80AB7518 A48E025E */  sh      $t6, 0x025E($a0)           ## 0000025E
/* 01D9C 80AB751C A48002E8 */  sh      $zero, 0x02E8($a0)         ## 000002E8
/* 01DA0 80AB7520 AC8F0250 */  sw      $t7, 0x0250($a0)           ## 00000250
.L80AB7524:
/* 01DA4 80AB7524 8FBF0014 */  lw      $ra, 0x0014($sp)           
.L80AB7528:
/* 01DA8 80AB7528 27BD0018 */  addiu   $sp, $sp, 0x0018           ## $sp = 00000000
/* 01DAC 80AB752C 03E00008 */  jr      $ra                        
/* 01DB0 80AB7530 00000000 */  nop
