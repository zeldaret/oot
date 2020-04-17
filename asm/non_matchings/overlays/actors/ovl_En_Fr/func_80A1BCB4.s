glabel func_80A1BCB4
/* 01314 80A1BCB4 27BDFFD8 */  addiu   $sp, $sp, 0xFFD8           ## $sp = FFFFFFD8
/* 01318 80A1BCB8 AFBF0024 */  sw      $ra, 0x0024($sp)           
/* 0131C 80A1BCBC AFB10020 */  sw      $s1, 0x0020($sp)           
/* 01320 80A1BCC0 AFB0001C */  sw      $s0, 0x001C($sp)           
/* 01324 80A1BCC4 8CB01C44 */  lw      $s0, 0x1C44($a1)           ## 00001C44
/* 01328 80A1BCC8 00803825 */  or      $a3, $a0, $zero            ## $a3 = 00000000
/* 0132C 80A1BCCC 3C180001 */  lui     $t8, 0x0001                ## $t8 = 00010000
/* 01330 80A1BCD0 8E0E0680 */  lw      $t6, 0x0680($s0)           ## 00000680
/* 01334 80A1BCD4 00A08825 */  or      $s1, $a1, $zero            ## $s1 = 00000000
/* 01338 80A1BCD8 0305C021 */  addu    $t8, $t8, $a1              
/* 0133C 80A1BCDC 000E7980 */  sll     $t7, $t6,  6               
/* 01340 80A1BCE0 05E10021 */  bgez    $t7, .L80A1BD68            
/* 01344 80A1BCE4 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 01348 80A1BCE8 971804C6 */  lhu     $t8, 0x04C6($t8)           ## 000104C6
/* 0134C 80A1BCEC 24010004 */  addiu   $at, $zero, 0x0004         ## $at = 00000004
/* 01350 80A1BCF0 02202025 */  or      $a0, $s1, $zero            ## $a0 = 00000000
/* 01354 80A1BCF4 17010004 */  bne     $t8, $at, .L80A1BD08       
/* 01358 80A1BCF8 2406FF9D */  addiu   $a2, $zero, 0xFF9D         ## $a2 = FFFFFF9D
/* 0135C 80A1BCFC 3C010001 */  lui     $at, 0x0001                ## $at = 00010000
/* 01360 80A1BD00 00250821 */  addu    $at, $at, $a1              
/* 01364 80A1BD04 A42004C6 */  sh      $zero, 0x04C6($at)         ## 000104C6
.L80A1BD08:
/* 01368 80A1BD08 2405100E */  addiu   $a1, $zero, 0x100E         ## $a1 = 0000100E
/* 0136C 80A1BD0C AFA00010 */  sw      $zero, 0x0010($sp)         
/* 01370 80A1BD10 0C02003E */  jal     func_800800F8              
/* 01374 80A1BD14 AFA70028 */  sw      $a3, 0x0028($sp)           
/* 01378 80A1BD18 8FA70028 */  lw      $a3, 0x0028($sp)           
/* 0137C 80A1BD1C 3C010001 */  lui     $at, 0x0001                ## $at = 00010000
/* 01380 80A1BD20 00310821 */  addu    $at, $at, $s1              
/* 01384 80A1BD24 24190037 */  addiu   $t9, $zero, 0x0037         ## $t9 = 00000037
/* 01388 80A1BD28 A03903DC */  sb      $t9, 0x03DC($at)           ## 000103DC
/* 0138C 80A1BD2C C4E40024 */  lwc1    $f4, 0x0024($a3)           ## 00000024
/* 01390 80A1BD30 3C0880A2 */  lui     $t0, %hi(func_80A1BD94)    ## $t0 = 80A20000
/* 01394 80A1BD34 2508BD94 */  addiu   $t0, $t0, %lo(func_80A1BD94) ## $t0 = 80A1BD94
/* 01398 80A1BD38 E6040024 */  swc1    $f4, 0x0024($s0)           ## 00000024
/* 0139C 80A1BD3C C4E60028 */  lwc1    $f6, 0x0028($a3)           ## 00000028
/* 013A0 80A1BD40 E6060028 */  swc1    $f6, 0x0028($s0)           ## 00000028
/* 013A4 80A1BD44 C4E8002C */  lwc1    $f8, 0x002C($a3)           ## 0000002C
/* 013A8 80A1BD48 E608002C */  swc1    $f8, 0x002C($s0)           ## 0000002C
/* 013AC 80A1BD4C 84E30032 */  lh      $v1, 0x0032($a3)           ## 00000032
/* 013B0 80A1BD50 A60300B6 */  sh      $v1, 0x00B6($s0)           ## 000000B6
/* 013B4 80A1BD54 A6030032 */  sh      $v1, 0x0032($s0)           ## 00000032
/* 013B8 80A1BD58 A603083C */  sh      $v1, 0x083C($s0)           ## 0000083C
/* 013BC 80A1BD5C ACE00388 */  sw      $zero, 0x0388($a3)         ## 00000388
/* 013C0 80A1BD60 10000007 */  beq     $zero, $zero, .L80A1BD80   
/* 013C4 80A1BD64 ACE80354 */  sw      $t0, 0x0354($a3)           ## 00000354
.L80A1BD68:
/* 013C8 80A1BD68 00E02825 */  or      $a1, $a3, $zero            ## $a1 = 00000000
/* 013CC 80A1BD6C 0C286C3E */  jal     func_80A1B0F8              
/* 013D0 80A1BD70 AFA70028 */  sw      $a3, 0x0028($sp)           
/* 013D4 80A1BD74 10400002 */  beq     $v0, $zero, .L80A1BD80     
/* 013D8 80A1BD78 8FA70028 */  lw      $a3, 0x0028($sp)           
/* 013DC 80A1BD7C AE0706A8 */  sw      $a3, 0x06A8($s0)           ## 000006A8
.L80A1BD80:
/* 013E0 80A1BD80 8FBF0024 */  lw      $ra, 0x0024($sp)           
/* 013E4 80A1BD84 8FB0001C */  lw      $s0, 0x001C($sp)           
/* 013E8 80A1BD88 8FB10020 */  lw      $s1, 0x0020($sp)           
/* 013EC 80A1BD8C 03E00008 */  jr      $ra                        
/* 013F0 80A1BD90 27BD0028 */  addiu   $sp, $sp, 0x0028           ## $sp = 00000000
