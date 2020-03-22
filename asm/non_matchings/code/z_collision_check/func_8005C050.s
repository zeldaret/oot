.rdata
glabel D_8013A718
    .asciz "pclobj_jntsph->elem_tbl != NULL"
    .balign 4

glabel D_8013A738
    .asciz "../z_collision_check.c"
    .balign 4

.text
glabel func_8005C050
/* AD31F0 8005C050 27BDFFD8 */  addiu $sp, $sp, -0x28
/* AD31F4 8005C054 AFBF0024 */  sw    $ra, 0x24($sp)
/* AD31F8 8005C058 AFB30020 */  sw    $s3, 0x20($sp)
/* AD31FC 8005C05C AFB2001C */  sw    $s2, 0x1c($sp)
/* AD3200 8005C060 00A09025 */  move  $s2, $a1
/* AD3204 8005C064 00809825 */  move  $s3, $a0
/* AD3208 8005C068 AFB10018 */  sw    $s1, 0x18($sp)
/* AD320C 8005C06C AFB00014 */  sw    $s0, 0x14($sp)
/* AD3210 8005C070 0C016DCB */  jal   func_8005B72C
/* AD3214 8005C074 AFA70034 */   sw    $a3, 0x34($sp)
/* AD3218 8005C078 8FAE0034 */  lw    $t6, 0x34($sp)
/* AD321C 8005C07C 8FA20038 */  lw    $v0, 0x38($sp)
/* AD3220 8005C080 3C048014 */  lui   $a0, %hi(D_8013A718) # $a0, 0x8014
/* AD3224 8005C084 8DCF0008 */  lw    $t7, 8($t6)
/* AD3228 8005C088 AE42001C */  sw    $v0, 0x1c($s2)
/* AD322C 8005C08C 14400006 */  bnez  $v0, .L8005C0A8
/* AD3230 8005C090 AE4F0018 */   sw    $t7, 0x18($s2)
/* AD3234 8005C094 3C058014 */  lui   $a1, %hi(D_8013A738) # $a1, 0x8014
/* AD3238 8005C098 24A5A738 */  addiu $a1, %lo(D_8013A738) # addiu $a1, $a1, -0x58c8
/* AD323C 8005C09C 2484A718 */  addiu $a0, %lo(D_8013A718) # addiu $a0, $a0, -0x58e8
/* AD3240 8005C0A0 0C0007FC */  jal   __assert
/* AD3244 8005C0A4 24060643 */   li    $a2, 1603
.L8005C0A8:
/* AD3248 8005C0A8 8E590018 */  lw    $t9, 0x18($s2)
/* AD324C 8005C0AC 8E50001C */  lw    $s0, 0x1c($s2)
/* AD3250 8005C0B0 8FB80034 */  lw    $t8, 0x34($sp)
/* AD3254 8005C0B4 00194180 */  sll   $t0, $t9, 6
/* AD3258 8005C0B8 02084821 */  addu  $t1, $s0, $t0
/* AD325C 8005C0BC 0209082B */  sltu  $at, $s0, $t1
/* AD3260 8005C0C0 10200010 */  beqz  $at, .L8005C104
/* AD3264 8005C0C4 8F11000C */   lw    $s1, 0xc($t8)
.L8005C0C8:
/* AD3268 8005C0C8 02602025 */  move  $a0, $s3
/* AD326C 8005C0CC 0C016EB6 */  jal   func_8005BAD8
/* AD3270 8005C0D0 02002825 */   move  $a1, $s0
/* AD3274 8005C0D4 02602025 */  move  $a0, $s3
/* AD3278 8005C0D8 02002825 */  move  $a1, $s0
/* AD327C 8005C0DC 0C016ED2 */  jal   func_8005BB48
/* AD3280 8005C0E0 02203025 */   move  $a2, $s1
/* AD3284 8005C0E4 8E4B0018 */  lw    $t3, 0x18($s2)
/* AD3288 8005C0E8 8E4A001C */  lw    $t2, 0x1c($s2)
/* AD328C 8005C0EC 26100040 */  addiu $s0, $s0, 0x40
/* AD3290 8005C0F0 000B6180 */  sll   $t4, $t3, 6
/* AD3294 8005C0F4 014C6821 */  addu  $t5, $t2, $t4
/* AD3298 8005C0F8 020D082B */  sltu  $at, $s0, $t5
/* AD329C 8005C0FC 1420FFF2 */  bnez  $at, .L8005C0C8
/* AD32A0 8005C100 26310024 */   addiu $s1, $s1, 0x24
.L8005C104:
/* AD32A4 8005C104 8FBF0024 */  lw    $ra, 0x24($sp)
/* AD32A8 8005C108 8FB00014 */  lw    $s0, 0x14($sp)
/* AD32AC 8005C10C 8FB10018 */  lw    $s1, 0x18($sp)
/* AD32B0 8005C110 8FB2001C */  lw    $s2, 0x1c($sp)
/* AD32B4 8005C114 8FB30020 */  lw    $s3, 0x20($sp)
/* AD32B8 8005C118 27BD0028 */  addiu $sp, $sp, 0x28
/* AD32BC 8005C11C 03E00008 */  jr    $ra
/* AD32C0 8005C120 24020001 */   li    $v0, 1
