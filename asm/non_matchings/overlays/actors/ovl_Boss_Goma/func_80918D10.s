glabel func_80918D10
/* 03300 80918D10 27BDFFE0 */  addiu   $sp, $sp, 0xFFE0           ## $sp = FFFFFFE0
/* 03304 80918D14 AFB00018 */  sw      $s0, 0x0018($sp)           
/* 03308 80918D18 00808025 */  or      $s0, $a0, $zero            ## $s0 = 00000000
/* 0330C 80918D1C AFBF001C */  sw      $ra, 0x001C($sp)           
/* 03310 80918D20 AFA50024 */  sw      $a1, 0x0024($sp)           
/* 03314 80918D24 0C02927F */  jal     Animation_Update
              
/* 03318 80918D28 2484014C */  addiu   $a0, $a0, 0x014C           ## $a0 = 0000014C
/* 0331C 80918D2C 860E01D2 */  lh      $t6, 0x01D2($s0)           ## 000001D2
/* 03320 80918D30 55C00007 */  bnel    $t6, $zero, .L80918D50     
/* 03324 80918D34 240F0002 */  addiu   $t7, $zero, 0x0002         ## $t7 = 00000002
/* 03328 80918D38 0C2459F0 */  jal     func_809167C0              
/* 0332C 80918D3C 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 03330 80918D40 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 03334 80918D44 0C00BE0A */  jal     Audio_PlayActorSound2
              
/* 03338 80918D48 2405380E */  addiu   $a1, $zero, 0x380E         ## $a1 = 0000380E
/* 0333C 80918D4C 240F0002 */  addiu   $t7, $zero, 0x0002         ## $t7 = 00000002
.L80918D50:
/* 03340 80918D50 A60F01B4 */  sh      $t7, 0x01B4($s0)           ## 000001B4
/* 03344 80918D54 A60001B8 */  sh      $zero, 0x01B8($s0)         ## 000001B8
/* 03348 80918D58 8FBF001C */  lw      $ra, 0x001C($sp)           
/* 0334C 80918D5C 8FB00018 */  lw      $s0, 0x0018($sp)           
/* 03350 80918D60 27BD0020 */  addiu   $sp, $sp, 0x0020           ## $sp = 00000000
/* 03354 80918D64 03E00008 */  jr      $ra                        
/* 03358 80918D68 00000000 */  nop
