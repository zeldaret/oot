.rdata
glabel D_8013E190
    .asciz "妖精使用＝%d\n"
    # Translation: Fairy Usage
    .balign 4

.text
glabel Inventory_ConsumeFairy
/* AFDE10 80086C70 3C058012 */  lui   $a1, %hi(gItemSlots+0x18) # $a1, 0x8012
/* AFDE14 80086C74 90A5747C */  lbu   $a1, %lo(gItemSlots+0x18)($a1)
/* AFDE18 80086C78 27BDFFD8 */  addiu $sp, $sp, -0x28
/* AFDE1C 80086C7C 3C0E8016 */  lui   $t6, %hi(gSaveContext) # $t6, 0x8016
/* AFDE20 80086C80 AFA40028 */  sw    $a0, 0x28($sp)
/* AFDE24 80086C84 25CEE660 */  addiu $t6, %lo(gSaveContext) # addiu $t6, $t6, -0x19a0
/* AFDE28 80086C88 AFBF0014 */  sw    $ra, 0x14($sp)
/* AFDE2C 80086C8C 24040018 */  li    $a0, 24
/* AFDE30 80086C90 00001025 */  move  $v0, $zero
/* AFDE34 80086C94 00AE1821 */  addu  $v1, $a1, $t6
/* AFDE38 80086C98 00623821 */  addu  $a3, $v1, $v0
.L80086C9C:
/* AFDE3C 80086C9C 90EF0074 */  lbu   $t7, 0x74($a3)
/* AFDE40 80086CA0 548F0024 */  bnel  $a0, $t7, .L80086D34
/* AFDE44 80086CA4 24420001 */   addiu $v0, $v0, 1
/* AFDE48 80086CA8 3C028016 */  lui   $v0, %hi(gSaveContext) # $v0, 0x8016
/* AFDE4C 80086CAC 2442E660 */  addiu $v0, %lo(gSaveContext) # addiu $v0, $v0, -0x19a0
/* AFDE50 80086CB0 24030001 */  li    $v1, 1
/* AFDE54 80086CB4 00433021 */  addu  $a2, $v0, $v1
.L80086CB8:
/* AFDE58 80086CB8 90D80068 */  lbu   $t8, 0x68($a2)
/* AFDE5C 80086CBC 1498000D */  bne   $a0, $t8, .L80086CF4
/* AFDE60 80086CC0 24190014 */   li    $t9, 20
/* AFDE64 80086CC4 A0D90068 */  sb    $t9, 0x68($a2)
/* AFDE68 80086CC8 8FA40028 */  lw    $a0, 0x28($sp)
/* AFDE6C 80086CCC 3065FFFF */  andi  $a1, $v1, 0xffff
/* AFDE70 80086CD0 00001025 */  move  $v0, $zero
/* AFDE74 80086CD4 0C02129B */  jal   Interface_LoadItemIcon1
/* AFDE78 80086CD8 AFA6001C */   sw    $a2, 0x1c($sp)
/* AFDE7C 80086CDC 8FA6001C */  lw    $a2, 0x1c($sp)
/* AFDE80 80086CE0 3C088016 */  lui   $t0, %hi(gSaveContext) # $t0, 0x8016
/* AFDE84 80086CE4 2508E660 */  addiu $t0, %lo(gSaveContext) # addiu $t0, $t0, -0x19a0
/* AFDE88 80086CE8 90C5006B */  lbu   $a1, 0x6b($a2)
/* AFDE8C 80086CEC 10000007 */  b     .L80086D0C
/* AFDE90 80086CF0 00A83821 */   addu  $a3, $a1, $t0
.L80086CF4:
/* AFDE94 80086CF4 24630001 */  addiu $v1, $v1, 1
/* AFDE98 80086CF8 00031C00 */  sll   $v1, $v1, 0x10
/* AFDE9C 80086CFC 00031C03 */  sra   $v1, $v1, 0x10
/* AFDEA0 80086D00 28610004 */  slti  $at, $v1, 4
/* AFDEA4 80086D04 5420FFEC */  bnezl $at, .L80086CB8
/* AFDEA8 80086D08 00433021 */   addu  $a2, $v0, $v1
.L80086D0C:
/* AFDEAC 80086D0C 3C048014 */  lui   $a0, %hi(D_8013E190) # $a0, 0x8014
/* AFDEB0 80086D10 2484E190 */  addiu $a0, %lo(D_8013E190) # addiu $a0, $a0, -0x1e70
/* AFDEB4 80086D14 0C00084C */  jal   osSyncPrintf
/* AFDEB8 80086D18 AFA70018 */   sw    $a3, 0x18($sp)
/* AFDEBC 80086D1C 8FA70018 */  lw    $a3, 0x18($sp)
/* AFDEC0 80086D20 24090014 */  li    $t1, 20
/* AFDEC4 80086D24 24020001 */  li    $v0, 1
/* AFDEC8 80086D28 10000008 */  b     .L80086D4C
/* AFDECC 80086D2C A0E90074 */   sb    $t1, 0x74($a3)
/* AFDED0 80086D30 24420001 */  addiu $v0, $v0, 1
.L80086D34:
/* AFDED4 80086D34 00021400 */  sll   $v0, $v0, 0x10
/* AFDED8 80086D38 00021403 */  sra   $v0, $v0, 0x10
/* AFDEDC 80086D3C 28410004 */  slti  $at, $v0, 4
/* AFDEE0 80086D40 5420FFD6 */  bnezl $at, .L80086C9C
/* AFDEE4 80086D44 00623821 */   addu  $a3, $v1, $v0
/* AFDEE8 80086D48 00001025 */  move  $v0, $zero
.L80086D4C:
/* AFDEEC 80086D4C 8FBF0014 */  lw    $ra, 0x14($sp)
/* AFDEF0 80086D50 27BD0028 */  addiu $sp, $sp, 0x28
/* AFDEF4 80086D54 03E00008 */  jr    $ra
/* AFDEF8 80086D58 00000000 */   nop   

