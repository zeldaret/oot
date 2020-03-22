.rdata
glabel D_8013A6C8
    .asciz "../z_collision_check.c"
    .balign 4

glabel D_8013A6E0
    .asciz "\x1b[31m"
    .balign 4

glabel D_8013A6E8
    .asciz "ClObjJntSph_set5():zelda_malloc出来ません\n"
    # EUC-JP: 出来ません。 | Can not.
    .balign 4

glabel D_8013A714
    .asciz "\x1b[m"
    .balign 4

.text
glabel func_8005BF50
/* AD30F0 8005BF50 27BDFFD8 */  addiu $sp, $sp, -0x28
/* AD30F4 8005BF54 AFBF0024 */  sw    $ra, 0x24($sp)
/* AD30F8 8005BF58 AFB30020 */  sw    $s3, 0x20($sp)
/* AD30FC 8005BF5C AFB2001C */  sw    $s2, 0x1c($sp)
/* AD3100 8005BF60 00A09025 */  move  $s2, $a1
/* AD3104 8005BF64 00809825 */  move  $s3, $a0
/* AD3108 8005BF68 AFB10018 */  sw    $s1, 0x18($sp)
/* AD310C 8005BF6C AFB00014 */  sw    $s0, 0x14($sp)
/* AD3110 8005BF70 0C016DCB */  jal   func_8005B72C
/* AD3114 8005BF74 AFA70034 */   sw    $a3, 0x34($sp)
/* AD3118 8005BF78 8FA30034 */  lw    $v1, 0x34($sp)
/* AD311C 8005BF7C 3C058014 */  lui   $a1, %hi(D_8013A6C8) # $a1, 0x8014
/* AD3120 8005BF80 24A5A6C8 */  addiu $a1, %lo(D_8013A6C8) # addiu $a1, $a1, -0x5938
/* AD3124 8005BF84 8C6E0008 */  lw    $t6, 8($v1)
/* AD3128 8005BF88 2406060F */  li    $a2, 1551
/* AD312C 8005BF8C AE4E0018 */  sw    $t6, 0x18($s2)
/* AD3130 8005BF90 8C640008 */  lw    $a0, 8($v1)
/* AD3134 8005BF94 0C01EBB8 */  jal   ZeldaArena_MallocDebug
/* AD3138 8005BF98 00042180 */   sll   $a0, $a0, 6
/* AD313C 8005BF9C 1440000D */  bnez  $v0, .L8005BFD4
/* AD3140 8005BFA0 AE42001C */   sw    $v0, 0x1c($s2)
/* AD3144 8005BFA4 3C048014 */  lui   $a0, %hi(D_8013A6E0) # $a0, 0x8014
/* AD3148 8005BFA8 AE400018 */  sw    $zero, 0x18($s2)
/* AD314C 8005BFAC 0C00084C */  jal   osSyncPrintf
/* AD3150 8005BFB0 2484A6E0 */   addiu $a0, %lo(D_8013A6E0) # addiu $a0, $a0, -0x5920
/* AD3154 8005BFB4 3C048014 */  lui   $a0, %hi(D_8013A6E8) # $a0, 0x8014
/* AD3158 8005BFB8 0C00084C */  jal   osSyncPrintf
/* AD315C 8005BFBC 2484A6E8 */   addiu $a0, %lo(D_8013A6E8) # addiu $a0, $a0, -0x5918
/* AD3160 8005BFC0 3C048014 */  lui   $a0, %hi(D_8013A714) # $a0, 0x8014
/* AD3164 8005BFC4 0C00084C */  jal   osSyncPrintf
/* AD3168 8005BFC8 2484A714 */   addiu $a0, %lo(D_8013A714) # addiu $a0, $a0, -0x58ec
/* AD316C 8005BFCC 10000019 */  b     .L8005C034
/* AD3170 8005BFD0 00001025 */   move  $v0, $zero
.L8005BFD4:
/* AD3174 8005BFD4 8E580018 */  lw    $t8, 0x18($s2)
/* AD3178 8005BFD8 8E50001C */  lw    $s0, 0x1c($s2)
/* AD317C 8005BFDC 8FAF0034 */  lw    $t7, 0x34($sp)
/* AD3180 8005BFE0 0018C980 */  sll   $t9, $t8, 6
/* AD3184 8005BFE4 02194021 */  addu  $t0, $s0, $t9
/* AD3188 8005BFE8 0208082B */  sltu  $at, $s0, $t0
/* AD318C 8005BFEC 10200010 */  beqz  $at, .L8005C030
/* AD3190 8005BFF0 8DF1000C */   lw    $s1, 0xc($t7)
.L8005BFF4:
/* AD3194 8005BFF4 02602025 */  move  $a0, $s3
/* AD3198 8005BFF8 0C016EB6 */  jal   func_8005BAD8
/* AD319C 8005BFFC 02002825 */   move  $a1, $s0
/* AD31A0 8005C000 02602025 */  move  $a0, $s3
/* AD31A4 8005C004 02002825 */  move  $a1, $s0
/* AD31A8 8005C008 0C016ED2 */  jal   func_8005BB48
/* AD31AC 8005C00C 02203025 */   move  $a2, $s1
/* AD31B0 8005C010 8E4A0018 */  lw    $t2, 0x18($s2)
/* AD31B4 8005C014 8E49001C */  lw    $t1, 0x1c($s2)
/* AD31B8 8005C018 26100040 */  addiu $s0, $s0, 0x40
/* AD31BC 8005C01C 000A5980 */  sll   $t3, $t2, 6
/* AD31C0 8005C020 012B6021 */  addu  $t4, $t1, $t3
/* AD31C4 8005C024 020C082B */  sltu  $at, $s0, $t4
/* AD31C8 8005C028 1420FFF2 */  bnez  $at, .L8005BFF4
/* AD31CC 8005C02C 26310024 */   addiu $s1, $s1, 0x24
.L8005C030:
/* AD31D0 8005C030 24020001 */  li    $v0, 1
.L8005C034:
/* AD31D4 8005C034 8FBF0024 */  lw    $ra, 0x24($sp)
/* AD31D8 8005C038 8FB00014 */  lw    $s0, 0x14($sp)
/* AD31DC 8005C03C 8FB10018 */  lw    $s1, 0x18($sp)
/* AD31E0 8005C040 8FB2001C */  lw    $s2, 0x1c($sp)
/* AD31E4 8005C044 8FB30020 */  lw    $s3, 0x20($sp)
/* AD31E8 8005C048 03E00008 */  jr    $ra
/* AD31EC 8005C04C 27BD0028 */   addiu $sp, $sp, 0x28

