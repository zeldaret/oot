glabel func_800DE048
/* B551E8 800DE048 27BDFFD0 */  addiu $sp, $sp, -0x30
/* B551EC 800DE04C AFB50028 */  sw    $s5, 0x28($sp)
/* B551F0 800DE050 3C158017 */  lui   $s5, %hi(gAudioContext) # $s5, 0x8017
/* B551F4 800DE054 26B5F180 */  addiu $s5, %lo(gAudioContext) # addiu $s5, $s5, -0xe80
/* B551F8 800DE058 8EA22894 */  lw    $v0, 0x2894($s5)
/* B551FC 800DE05C AFB40024 */  sw    $s4, 0x24($sp)
/* B55200 800DE060 AFB10018 */  sw    $s1, 0x18($sp)
/* B55204 800DE064 0080A025 */  move  $s4, $a0
/* B55208 800DE068 AFBF002C */  sw    $ra, 0x2c($sp)
/* B5520C 800DE06C AFB30020 */  sw    $s3, 0x20($sp)
/* B55210 800DE070 AFB2001C */  sw    $s2, 0x1c($sp)
/* B55214 800DE074 AFB00014 */  sw    $s0, 0x14($sp)
/* B55218 800DE078 18400023 */  blez  $v0, .L800DE108
/* B5521C 800DE07C 00008825 */   move  $s1, $zero
/* B55220 800DE080 3C138017 */  lui   $s3, %hi(gNoteFreeLists) # $s3, 0x8017
/* B55224 800DE084 26734D18 */  addiu $s3, %lo(gNoteFreeLists) # addiu $s3, $s3, 0x4d18
/* B55228 800DE088 00009025 */  move  $s2, $zero
.L800DE08C:
/* B5522C 800DE08C 8EAE352C */  lw    $t6, 0x352c($s5)
/* B55230 800DE090 024E8021 */  addu  $s0, $s2, $t6
/* B55234 800DE094 920F0033 */  lbu   $t7, 0x33($s0)
/* B55238 800DE098 568F0018 */  bnel  $s4, $t7, .L800DE0FC
/* B5523C 800DE09C 26310001 */   addiu $s1, $s1, 1
/* B55240 800DE0A0 92180034 */  lbu   $t8, 0x34($s0)
/* B55244 800DE0A4 1700000C */  bnez  $t8, .L800DE0D8
/* B55248 800DE0A8 00000000 */   nop   
/* B5524C 800DE0AC 92190030 */  lbu   $t9, 0x30($s0)
/* B55250 800DE0B0 13200009 */  beqz  $t9, .L800DE0D8
/* B55254 800DE0B4 00000000 */   nop   
/* B55258 800DE0B8 8E020044 */  lw    $v0, 0x44($s0)
/* B5525C 800DE0BC 90480000 */  lbu   $t0, ($v0)
/* B55260 800DE0C0 3109FF7F */  andi  $t1, $t0, 0xff7f
/* B55264 800DE0C4 A0490000 */  sb    $t1, ($v0)
/* B55268 800DE0C8 8E020044 */  lw    $v0, 0x44($s0)
/* B5526C 800DE0CC 904B0000 */  lbu   $t3, ($v0)
/* B55270 800DE0D0 356C0040 */  ori   $t4, $t3, 0x40
/* B55274 800DE0D4 A04C0000 */  sb    $t4, ($v0)
.L800DE0D8:
/* B55278 800DE0D8 0C039BCA */  jal   Audio_NoteDisable
/* B5527C 800DE0DC 02002025 */   move  $a0, $s0
/* B55280 800DE0E0 0C03A037 */  jal   Audio_AudioListRemove
/* B55284 800DE0E4 02002025 */   move  $a0, $s0
/* B55288 800DE0E8 02602025 */  move  $a0, $s3
/* B5528C 800DE0EC 0C03A70A */  jal   Audio_AudioListPushBack
/* B55290 800DE0F0 02002825 */   move  $a1, $s0
/* B55294 800DE0F4 8EA22894 */  lw    $v0, 0x2894($s5)
/* B55298 800DE0F8 26310001 */  addiu $s1, $s1, 1
.L800DE0FC:
/* B5529C 800DE0FC 0222082A */  slt   $at, $s1, $v0
/* B552A0 800DE100 1420FFE2 */  bnez  $at, .L800DE08C
/* B552A4 800DE104 265200E0 */   addiu $s2, $s2, 0xe0
.L800DE108:
/* B552A8 800DE108 8FBF002C */  lw    $ra, 0x2c($sp)
/* B552AC 800DE10C 8FB00014 */  lw    $s0, 0x14($sp)
/* B552B0 800DE110 8FB10018 */  lw    $s1, 0x18($sp)
/* B552B4 800DE114 8FB2001C */  lw    $s2, 0x1c($sp)
/* B552B8 800DE118 8FB30020 */  lw    $s3, 0x20($sp)
/* B552BC 800DE11C 8FB40024 */  lw    $s4, 0x24($sp)
/* B552C0 800DE120 8FB50028 */  lw    $s5, 0x28($sp)
/* B552C4 800DE124 03E00008 */  jr    $ra
/* B552C8 800DE128 27BD0030 */   addiu $sp, $sp, 0x30

