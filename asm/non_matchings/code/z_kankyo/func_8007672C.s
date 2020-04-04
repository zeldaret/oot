glabel func_8007672C
/* AED8CC 8007672C 27BDFFA0 */  addiu $sp, $sp, -0x60
/* AED8D0 80076730 93AE0073 */  lbu   $t6, 0x73($sp)
/* AED8D4 80076734 AFB00018 */  sw    $s0, 0x18($sp)
/* AED8D8 80076738 00808025 */  move  $s0, $a0
/* AED8DC 8007673C AFBF001C */  sw    $ra, 0x1c($sp)
/* AED8E0 80076740 AFA50064 */  sw    $a1, 0x64($sp)
/* AED8E4 80076744 AFA60068 */  sw    $a2, 0x68($sp)
/* AED8E8 80076748 11C00075 */  beqz  $t6, .L80076920
/* AED8EC 8007674C AFA7006C */   sw    $a3, 0x6c($sp)
/* AED8F0 80076750 3C068014 */  lui   $a2, %hi(D_8013C750) # $a2, 0x8014
/* AED8F4 80076754 24C6C750 */  addiu $a2, %lo(D_8013C750) # addiu $a2, $a2, -0x38b0
/* AED8F8 80076758 27A4004C */  addiu $a0, $sp, 0x4c
/* AED8FC 8007675C 02002825 */  move  $a1, $s0
/* AED900 80076760 0C031AB1 */  jal   Graph_OpenDisp
/* AED904 80076764 24070EFB */   li    $a3, 3835
/* AED908 80076768 93A50077 */  lbu   $a1, 0x77($sp)
/* AED90C 8007676C 30AF0001 */  andi  $t7, $a1, 1
/* AED910 80076770 51E0002D */  beql  $t7, $zero, .L80076828
/* AED914 80076774 30AB0002 */   andi  $t3, $a1, 2
/* AED918 80076778 8E0402C0 */  lw    $a0, 0x2c0($s0)
/* AED91C 8007677C 0C024DF0 */  jal   func_800937C0
/* AED920 80076780 AFA50024 */   sw    $a1, 0x24($sp)
/* AED924 80076784 8FA50024 */  lw    $a1, 0x24($sp)
/* AED928 80076788 AE0202C0 */  sw    $v0, 0x2c0($s0)
/* AED92C 8007678C 24580008 */  addiu $t8, $v0, 8
/* AED930 80076790 AE1802C0 */  sw    $t8, 0x2c0($s0)
/* AED934 80076794 3C19FA00 */  lui   $t9, 0xfa00
/* AED938 80076798 AC590000 */  sw    $t9, ($v0)
/* AED93C 8007679C 93AC006B */  lbu   $t4, 0x6b($sp)
/* AED940 800767A0 93A90067 */  lbu   $t1, 0x67($sp)
/* AED944 800767A4 93B8006F */  lbu   $t8, 0x6f($sp)
/* AED948 800767A8 93AB0073 */  lbu   $t3, 0x73($sp)
/* AED94C 800767AC 000C6C00 */  sll   $t5, $t4, 0x10
/* AED950 800767B0 00095600 */  sll   $t2, $t1, 0x18
/* AED954 800767B4 014D7025 */  or    $t6, $t2, $t5
/* AED958 800767B8 0018CA00 */  sll   $t9, $t8, 8
/* AED95C 800767BC 01D94025 */  or    $t0, $t6, $t9
/* AED960 800767C0 010B6025 */  or    $t4, $t0, $t3
/* AED964 800767C4 AC4C0004 */  sw    $t4, 4($v0)
/* AED968 800767C8 8E0202C0 */  lw    $v0, 0x2c0($s0)
/* AED96C 800767CC 3C0DE300 */  lui   $t5, (0xE3001A01 >> 16) # lui $t5, 0xe300
/* AED970 800767D0 35AD1A01 */  ori   $t5, (0xE3001A01 & 0xFFFF) # ori $t5, $t5, 0x1a01
/* AED974 800767D4 244A0008 */  addiu $t2, $v0, 8
/* AED978 800767D8 AE0A02C0 */  sw    $t2, 0x2c0($s0)
/* AED97C 800767DC 240F0030 */  li    $t7, 48
/* AED980 800767E0 AC4F0004 */  sw    $t7, 4($v0)
/* AED984 800767E4 AC4D0000 */  sw    $t5, ($v0)
/* AED988 800767E8 8E0202C0 */  lw    $v0, 0x2c0($s0)
/* AED98C 800767EC 3C0EE300 */  lui   $t6, (0xE3001801 >> 16) # lui $t6, 0xe300
/* AED990 800767F0 35CE1801 */  ori   $t6, (0xE3001801 & 0xFFFF) # ori $t6, $t6, 0x1801
/* AED994 800767F4 24580008 */  addiu $t8, $v0, 8
/* AED998 800767F8 AE1802C0 */  sw    $t8, 0x2c0($s0)
/* AED99C 800767FC 241900C0 */  li    $t9, 192
/* AED9A0 80076800 AC590004 */  sw    $t9, 4($v0)
/* AED9A4 80076804 AC4E0000 */  sw    $t6, ($v0)
/* AED9A8 80076808 8E0202C0 */  lw    $v0, 0x2c0($s0)
/* AED9AC 8007680C 3C08F64F */  lui   $t0, (0xF64FC3BC >> 16) # lui $t0, 0xf64f
/* AED9B0 80076810 3508C3BC */  ori   $t0, (0xF64FC3BC & 0xFFFF) # ori $t0, $t0, 0xc3bc
/* AED9B4 80076814 24490008 */  addiu $t1, $v0, 8
/* AED9B8 80076818 AE0902C0 */  sw    $t1, 0x2c0($s0)
/* AED9BC 8007681C AC400004 */  sw    $zero, 4($v0)
/* AED9C0 80076820 AC480000 */  sw    $t0, ($v0)
/* AED9C4 80076824 30AB0002 */  andi  $t3, $a1, 2
.L80076828:
/* AED9C8 80076828 11600037 */  beqz  $t3, .L80076908
/* AED9CC 8007682C 93AA0067 */   lbu   $t2, 0x67($sp)
/* AED9D0 80076830 93B8006B */  lbu   $t8, 0x6b($sp)
/* AED9D4 80076834 93A8006F */  lbu   $t0, 0x6f($sp)
/* AED9D8 80076838 93AF0073 */  lbu   $t7, 0x73($sp)
/* AED9DC 8007683C 000A6E00 */  sll   $t5, $t2, 0x18
/* AED9E0 80076840 00187400 */  sll   $t6, $t8, 0x10
/* AED9E4 80076844 01AEC825 */  or    $t9, $t5, $t6
/* AED9E8 80076848 00085A00 */  sll   $t3, $t0, 8
/* AED9EC 8007684C 032B6025 */  or    $t4, $t9, $t3
/* AED9F0 80076850 8E0402D0 */  lw    $a0, 0x2d0($s0)
/* AED9F4 80076854 018FC025 */  or    $t8, $t4, $t7
/* AED9F8 80076858 0C024DF0 */  jal   func_800937C0
/* AED9FC 8007685C AFB80024 */   sw    $t8, 0x24($sp)
/* AEDA00 80076860 AE0202D0 */  sw    $v0, 0x2d0($s0)
/* AEDA04 80076864 244D0008 */  addiu $t5, $v0, 8
/* AEDA08 80076868 AE0D02D0 */  sw    $t5, 0x2d0($s0)
/* AEDA0C 8007686C 3C0EFA00 */  lui   $t6, 0xfa00
/* AEDA10 80076870 AC4E0000 */  sw    $t6, ($v0)
/* AEDA14 80076874 8FA90024 */  lw    $t1, 0x24($sp)
/* AEDA18 80076878 240100FF */  li    $at, 255
/* AEDA1C 8007687C 3C0BE200 */  lui   $t3, (0xE200001C >> 16) # lui $t3, 0xe200
/* AEDA20 80076880 AC490004 */  sw    $t1, 4($v0)
/* AEDA24 80076884 93A80073 */  lbu   $t0, 0x73($sp)
/* AEDA28 80076888 3C0FE300 */  lui   $t7, (0xE3001A01 >> 16) # lui $t7, 0xe300
/* AEDA2C 8007688C 356B001C */  ori   $t3, (0xE200001C & 0xFFFF) # ori $t3, $t3, 0x1c
/* AEDA30 80076890 15010008 */  bne   $t0, $at, .L800768B4
/* AEDA34 80076894 35EF1A01 */   ori   $t7, (0xE3001A01 & 0xFFFF) # ori $t7, $t7, 0x1a01
/* AEDA38 80076898 8E0202D0 */  lw    $v0, 0x2d0($s0)
/* AEDA3C 8007689C 3C0A0F0A */  lui   $t2, (0x0F0A4000 >> 16) # lui $t2, 0xf0a
/* AEDA40 800768A0 354A4000 */  ori   $t2, (0x0F0A4000 & 0xFFFF) # ori $t2, $t2, 0x4000
/* AEDA44 800768A4 24590008 */  addiu $t9, $v0, 8
/* AEDA48 800768A8 AE1902D0 */  sw    $t9, 0x2d0($s0)
/* AEDA4C 800768AC AC4A0004 */  sw    $t2, 4($v0)
/* AEDA50 800768B0 AC4B0000 */  sw    $t3, ($v0)
.L800768B4:
/* AEDA54 800768B4 8E0202D0 */  lw    $v0, 0x2d0($s0)
/* AEDA58 800768B8 24180030 */  li    $t8, 48
/* AEDA5C 800768BC 3C0EE300 */  lui   $t6, (0xE3001801 >> 16) # lui $t6, 0xe300
/* AEDA60 800768C0 244C0008 */  addiu $t4, $v0, 8
/* AEDA64 800768C4 AE0C02D0 */  sw    $t4, 0x2d0($s0)
/* AEDA68 800768C8 AC580004 */  sw    $t8, 4($v0)
/* AEDA6C 800768CC AC4F0000 */  sw    $t7, ($v0)
/* AEDA70 800768D0 8E0202D0 */  lw    $v0, 0x2d0($s0)
/* AEDA74 800768D4 35CE1801 */  ori   $t6, (0xE3001801 & 0xFFFF) # ori $t6, $t6, 0x1801
/* AEDA78 800768D8 240900C0 */  li    $t1, 192
/* AEDA7C 800768DC 244D0008 */  addiu $t5, $v0, 8
/* AEDA80 800768E0 AE0D02D0 */  sw    $t5, 0x2d0($s0)
/* AEDA84 800768E4 AC490004 */  sw    $t1, 4($v0)
/* AEDA88 800768E8 AC4E0000 */  sw    $t6, ($v0)
/* AEDA8C 800768EC 8E0202D0 */  lw    $v0, 0x2d0($s0)
/* AEDA90 800768F0 3C19F64F */  lui   $t9, (0xF64FC3BC >> 16) # lui $t9, 0xf64f
/* AEDA94 800768F4 3739C3BC */  ori   $t9, (0xF64FC3BC & 0xFFFF) # ori $t9, $t9, 0xc3bc
/* AEDA98 800768F8 24480008 */  addiu $t0, $v0, 8
/* AEDA9C 800768FC AE0802D0 */  sw    $t0, 0x2d0($s0)
/* AEDAA0 80076900 AC400004 */  sw    $zero, 4($v0)
/* AEDAA4 80076904 AC590000 */  sw    $t9, ($v0)
.L80076908:
/* AEDAA8 80076908 3C068014 */  lui   $a2, %hi(D_8013C760) # $a2, 0x8014
/* AEDAAC 8007690C 24C6C760 */  addiu $a2, %lo(D_8013C760) # addiu $a2, $a2, -0x38a0
/* AEDAB0 80076910 27A4004C */  addiu $a0, $sp, 0x4c
/* AEDAB4 80076914 02002825 */  move  $a1, $s0
/* AEDAB8 80076918 0C031AD5 */  jal   Graph_CloseDisp
/* AEDABC 8007691C 24070F17 */   li    $a3, 3863
.L80076920:
/* AEDAC0 80076920 8FBF001C */  lw    $ra, 0x1c($sp)
/* AEDAC4 80076924 8FB00018 */  lw    $s0, 0x18($sp)
/* AEDAC8 80076928 27BD0060 */  addiu $sp, $sp, 0x60
/* AEDACC 8007692C 03E00008 */  jr    $ra
/* AEDAD0 80076930 00000000 */   nop   

