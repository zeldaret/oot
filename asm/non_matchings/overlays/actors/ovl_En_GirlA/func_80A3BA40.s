glabel func_80A3BA40
/* 012F0 80A3BA40 27BDFFE8 */  addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
/* 012F4 80A3BA44 AFBF0014 */  sw      $ra, 0x0014($sp)           
/* 012F8 80A3BA48 AFA5001C */  sw      $a1, 0x001C($sp)           
/* 012FC 80A3BA4C 84A2001C */  lh      $v0, 0x001C($a1)           ## 0000001C
/* 01300 80A3BA50 2841000A */  slti    $at, $v0, 0x000A           
/* 01304 80A3BA54 14200010 */  bne     $at, $zero, .L80A3BA98     
/* 01308 80A3BA58 244FFFD9 */  addiu   $t7, $v0, 0xFFD9           ## $t7 = FFFFFFD9
/* 0130C 80A3BA5C 2841000B */  slti    $at, $v0, 0x000B           
/* 01310 80A3BA60 14200008 */  bne     $at, $zero, .L80A3BA84     
/* 01314 80A3BA64 2DE10005 */  sltiu   $at, $t7, 0x0005           
/* 01318 80A3BA68 10200036 */  beq     $at, $zero, .L80A3BB44     
/* 0131C 80A3BA6C 000F7880 */  sll     $t7, $t7,  2               
/* 01320 80A3BA70 3C0180A4 */  lui     $at, %hi(jtbl_80A3D0D8)       ## $at = 80A40000
/* 01324 80A3BA74 002F0821 */  addu    $at, $at, $t7              
/* 01328 80A3BA78 8C2FD0D8 */  lw      $t7, %lo(jtbl_80A3D0D8)($at)  
/* 0132C 80A3BA7C 01E00008 */  jr      $t7                        
/* 01330 80A3BA80 00000000 */  nop
.L80A3BA84:
/* 01334 80A3BA84 2401000A */  addiu   $at, $zero, 0x000A         ## $at = 0000000A
/* 01338 80A3BA88 10410018 */  beq     $v0, $at, .L80A3BAEC       
/* 0133C 80A3BA8C 00000000 */  nop
/* 01340 80A3BA90 1000002D */  beq     $zero, $zero, .L80A3BB48   
/* 01344 80A3BA94 8FB8001C */  lw      $t8, 0x001C($sp)           
.L80A3BA98:
/* 01348 80A3BA98 24010007 */  addiu   $at, $zero, 0x0007         ## $at = 00000007
/* 0134C 80A3BA9C 10410007 */  beq     $v0, $at, .L80A3BABC       
/* 01350 80A3BAA0 24010008 */  addiu   $at, $zero, 0x0008         ## $at = 00000008
/* 01354 80A3BAA4 10410009 */  beq     $v0, $at, .L80A3BACC       
/* 01358 80A3BAA8 24010009 */  addiu   $at, $zero, 0x0009         ## $at = 00000009
/* 0135C 80A3BAAC 1041000B */  beq     $v0, $at, .L80A3BADC       
/* 01360 80A3BAB0 00000000 */  nop
/* 01364 80A3BAB4 10000024 */  beq     $zero, $zero, .L80A3BB48   
/* 01368 80A3BAB8 8FB8001C */  lw      $t8, 0x001C($sp)           
.L80A3BABC:
/* 0136C 80A3BABC 0C021344 */  jal     Item_Give              
/* 01370 80A3BAC0 24050019 */  addiu   $a1, $zero, 0x0019         ## $a1 = 00000019
/* 01374 80A3BAC4 10000020 */  beq     $zero, $zero, .L80A3BB48   
/* 01378 80A3BAC8 8FB8001C */  lw      $t8, 0x001C($sp)           
.L80A3BACC:
/* 0137C 80A3BACC 0C021344 */  jal     Item_Give              
/* 01380 80A3BAD0 24050015 */  addiu   $a1, $zero, 0x0015         ## $a1 = 00000015
/* 01384 80A3BAD4 1000001C */  beq     $zero, $zero, .L80A3BB48   
/* 01388 80A3BAD8 8FB8001C */  lw      $t8, 0x001C($sp)           
.L80A3BADC:
/* 0138C 80A3BADC 0C021344 */  jal     Item_Give              
/* 01390 80A3BAE0 24050016 */  addiu   $a1, $zero, 0x0016         ## $a1 = 00000016
/* 01394 80A3BAE4 10000018 */  beq     $zero, $zero, .L80A3BB48   
/* 01398 80A3BAE8 8FB8001C */  lw      $t8, 0x001C($sp)           
.L80A3BAEC:
/* 0139C 80A3BAEC 0C021344 */  jal     Item_Give              
/* 013A0 80A3BAF0 24050017 */  addiu   $a1, $zero, 0x0017         ## $a1 = 00000017
/* 013A4 80A3BAF4 10000014 */  beq     $zero, $zero, .L80A3BB48   
/* 013A8 80A3BAF8 8FB8001C */  lw      $t8, 0x001C($sp)           
glabel L80A3BAFC
/* 013AC 80A3BAFC 0C021344 */  jal     Item_Give              
/* 013B0 80A3BB00 2405001C */  addiu   $a1, $zero, 0x001C         ## $a1 = 0000001C
/* 013B4 80A3BB04 10000010 */  beq     $zero, $zero, .L80A3BB48   
/* 013B8 80A3BB08 8FB8001C */  lw      $t8, 0x001C($sp)           
glabel L80A3BB0C
/* 013BC 80A3BB0C 0C021344 */  jal     Item_Give              
/* 013C0 80A3BB10 2405001D */  addiu   $a1, $zero, 0x001D         ## $a1 = 0000001D
/* 013C4 80A3BB14 1000000C */  beq     $zero, $zero, .L80A3BB48   
/* 013C8 80A3BB18 8FB8001C */  lw      $t8, 0x001C($sp)           
glabel L80A3BB1C
/* 013CC 80A3BB1C 0C021344 */  jal     Item_Give              
/* 013D0 80A3BB20 2405001E */  addiu   $a1, $zero, 0x001E         ## $a1 = 0000001E
/* 013D4 80A3BB24 10000008 */  beq     $zero, $zero, .L80A3BB48   
/* 013D8 80A3BB28 8FB8001C */  lw      $t8, 0x001C($sp)           
glabel L80A3BB2C
/* 013DC 80A3BB2C 0C021344 */  jal     Item_Give              
/* 013E0 80A3BB30 24050020 */  addiu   $a1, $zero, 0x0020         ## $a1 = 00000020
/* 013E4 80A3BB34 10000004 */  beq     $zero, $zero, .L80A3BB48   
/* 013E8 80A3BB38 8FB8001C */  lw      $t8, 0x001C($sp)           
glabel L80A3BB3C
/* 013EC 80A3BB3C 0C021344 */  jal     Item_Give              
/* 013F0 80A3BB40 24050018 */  addiu   $a1, $zero, 0x0018         ## $a1 = 00000018
.L80A3BB44:
/* 013F4 80A3BB44 8FB8001C */  lw      $t8, 0x001C($sp)           
.L80A3BB48:
/* 013F8 80A3BB48 870401C8 */  lh      $a0, 0x01C8($t8)           ## 000001C8
/* 013FC 80A3BB4C 00042023 */  subu    $a0, $zero, $a0            
/* 01400 80A3BB50 00042400 */  sll     $a0, $a0, 16               
/* 01404 80A3BB54 0C021CC3 */  jal     Rupees_ChangeBy              
/* 01408 80A3BB58 00042403 */  sra     $a0, $a0, 16               
/* 0140C 80A3BB5C 8FBF0014 */  lw      $ra, 0x0014($sp)           
/* 01410 80A3BB60 27BD0018 */  addiu   $sp, $sp, 0x0018           ## $sp = 00000000
/* 01414 80A3BB64 03E00008 */  jr      $ra                        
/* 01418 80A3BB68 00000000 */  nop


