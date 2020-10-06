glabel func_800E5B80
/* B5CD20 800E5B80 3C038017 */  lui   $v1, %hi(gAudioContext) # $v1, 0x8017
/* B5CD24 800E5B84 2463F180 */  addiu $v1, %lo(gAudioContext) # addiu $v1, $v1, -0xe80
/* B5CD28 800E5B88 90625BD8 */  lbu   $v0, 0x5bd8($v1)
/* B5CD2C 800E5B8C 90675BD9 */  lbu   $a3, 0x5bd9($v1)
/* B5CD30 800E5B90 3C0E8013 */  lui   $t6, %hi(D_801304E8) # $t6, 0x8013
/* B5CD34 800E5B94 8DCE04E8 */  lw    $t6, %lo(D_801304E8)($t6)
/* B5CD38 800E5B98 00472023 */  subu  $a0, $v0, $a3
/* B5CD3C 800E5B9C 24840100 */  addiu $a0, $a0, 0x100
/* B5CD40 800E5BA0 308400FF */  andi  $a0, $a0, 0xff
/* B5CD44 800E5BA4 27BDFFE8 */  addiu $sp, $sp, -0x18
/* B5CD48 800E5BA8 01C4082A */  slt   $at, $t6, $a0
/* B5CD4C 800E5BAC 10200003 */  beqz  $at, .L800E5BBC
/* B5CD50 800E5BB0 AFBF0014 */   sw    $ra, 0x14($sp)
/* B5CD54 800E5BB4 3C018013 */  lui   $at, %hi(D_801304E8) # $at, 0x8013
/* B5CD58 800E5BB8 AC2404E8 */  sw    $a0, %lo(D_801304E8)($at)
.L800E5BBC:
/* B5CD5C 800E5BBC 30EF00FF */  andi  $t7, $a3, 0xff
/* B5CD60 800E5BC0 000FC200 */  sll   $t8, $t7, 8
/* B5CD64 800E5BC4 305900FF */  andi  $t9, $v0, 0xff
/* B5CD68 800E5BC8 03192825 */  or    $a1, $t8, $t9
/* B5CD6C 800E5BCC 8C645BEC */  lw    $a0, 0x5bec($v1)
/* B5CD70 800E5BD0 0C000C18 */  jal   osSendMesg
/* B5CD74 800E5BD4 00003025 */   move  $a2, $zero
/* B5CD78 800E5BD8 3C038017 */  lui   $v1, %hi(gAudioContext) # $v1, 0x8017
/* B5CD7C 800E5BDC 2401FFFF */  li    $at, -1
/* B5CD80 800E5BE0 10410005 */  beq   $v0, $at, .L800E5BF8
/* B5CD84 800E5BE4 2463F180 */   addiu $v1, %lo(gAudioContext) # addiu $v1, $v1, -0xe80
/* B5CD88 800E5BE8 90685BD8 */  lbu   $t0, 0x5bd8($v1)
/* B5CD8C 800E5BEC 00001025 */  move  $v0, $zero
/* B5CD90 800E5BF0 10000003 */  b     .L800E5C00
/* B5CD94 800E5BF4 A0685BD9 */   sb    $t0, 0x5bd9($v1)
.L800E5BF8:
/* B5CD98 800E5BF8 10000001 */  b     .L800E5C00
/* B5CD9C 800E5BFC 2402FFFF */   li    $v0, -1
.L800E5C00:
/* B5CDA0 800E5C00 8FBF0014 */  lw    $ra, 0x14($sp)
/* B5CDA4 800E5C04 27BD0018 */  addiu $sp, $sp, 0x18
/* B5CDA8 800E5C08 03E00008 */  jr    $ra
/* B5CDAC 800E5C0C 00000000 */   nop

