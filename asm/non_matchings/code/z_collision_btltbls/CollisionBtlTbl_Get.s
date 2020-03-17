.rdata
glabel D_8013A580
    .asciz "CollisionBtlTbl_get():インデックスオーバー\n"
    # EUC-JP: インデックスオーバー | Index over
    .balign 4

.text
glabel CollisionBtlTbl_Get
/* AD23A0 8005B200 27BDFFE8 */  addiu $sp, $sp, -0x18
/* AD23A4 8005B204 04800004 */  bltz  $a0, .L8005B218
/* AD23A8 8005B208 AFBF0014 */   sw    $ra, 0x14($sp)
/* AD23AC 8005B20C 28810017 */  slti  $at, $a0, 0x17
/* AD23B0 8005B210 14200006 */  bnez  $at, .L8005B22C
/* AD23B4 8005B214 00047140 */   sll   $t6, $a0, 5
.L8005B218:
/* AD23B8 8005B218 3C048014 */  lui   $a0, %hi(D_8013A580) # $a0, 0x8014
/* AD23BC 8005B21C 0C00084C */  jal   osSyncPrintf
/* AD23C0 8005B220 2484A580 */   addiu $a0, %lo(D_8013A580) # addiu $a0, $a0, -0x5a80
/* AD23C4 8005B224 10000004 */  b     .L8005B238
/* AD23C8 8005B228 00001025 */   move  $v0, $zero
.L8005B22C:
/* AD23CC 8005B22C 3C0F8012 */  lui   $t7, %hi(D_8011DB20) # $t7, 0x8012
/* AD23D0 8005B230 25EFDB20 */  addiu $t7, %lo(D_8011DB20) # addiu $t7, $t7, -0x24e0
/* AD23D4 8005B234 01CF1021 */  addu  $v0, $t6, $t7
.L8005B238:
/* AD23D8 8005B238 8FBF0014 */  lw    $ra, 0x14($sp)
/* AD23DC 8005B23C 27BD0018 */  addiu $sp, $sp, 0x18
/* AD23E0 8005B240 03E00008 */  jr    $ra
/* AD23E4 8005B244 00000000 */   nop   
