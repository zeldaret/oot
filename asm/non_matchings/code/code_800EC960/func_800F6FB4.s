glabel func_800F6FB4
/* B6E154 800F6FB4 27BDFFD0 */  addiu $sp, $sp, -0x30
/* B6E158 800F6FB8 3C028017 */  lui   $v0, %hi(D_8016E9A4) # $v0, 0x8017
/* B6E15C 800F6FBC 9442E9A4 */  lhu   $v0, %lo(D_8016E9A4)($v0)
/* B6E160 800F6FC0 AFB1001C */  sw    $s1, 0x1c($sp)
/* B6E164 800F6FC4 AFB00018 */  sw    $s0, 0x18($sp)
/* B6E168 800F6FC8 3401FFFF */  li    $at, 65535
/* B6E16C 800F6FCC 309100FF */  andi  $s1, $a0, 0xff
/* B6E170 800F6FD0 AFBF002C */  sw    $ra, 0x2c($sp)
/* B6E174 800F6FD4 AFB40028 */  sw    $s4, 0x28($sp)
/* B6E178 800F6FD8 AFB30024 */  sw    $s3, 0x24($sp)
/* B6E17C 800F6FDC AFB20020 */  sw    $s2, 0x20($sp)
/* B6E180 800F6FE0 AFA40030 */  sw    $a0, 0x30($sp)
/* B6E184 800F6FE4 10410007 */  beq   $v0, $at, .L800F7004
/* B6E188 800F6FE8 00008025 */   move  $s0, $zero
/* B6E18C 800F6FEC 304F00FF */  andi  $t7, $v0, 0xff
/* B6E190 800F6FF0 3C188013 */  lui   $t8, %hi(D_80130658)
/* B6E194 800F6FF4 030FC021 */  addu  $t8, $t8, $t7
/* B6E198 800F6FF8 93180658 */  lbu   $t8, %lo(D_80130658)($t8)
/* B6E19C 800F6FFC 33190080 */  andi  $t9, $t8, 0x80
/* B6E1A0 800F7000 17200035 */  bnez  $t9, .L800F70D8
.L800F7004:
/* B6E1A4 800F7004 00114080 */   sll   $t0, $s1, 2
/* B6E1A8 800F7008 01114023 */  subu  $t0, $t0, $s1
/* B6E1AC 800F700C 00084080 */  sll   $t0, $t0, 2
/* B6E1B0 800F7010 3C138013 */  lui   $s3, %hi(D_801306DC) # $s3, 0x8013
/* B6E1B4 800F7014 01114021 */  addu  $t0, $t0, $s1
/* B6E1B8 800F7018 267306DC */  addiu $s3, %lo(D_801306DC) # addiu $s3, $s3, 0x6dc
/* B6E1BC 800F701C 000840C0 */  sll   $t0, $t0, 3
/* B6E1C0 800F7020 02681021 */  addu  $v0, $s3, $t0
/* B6E1C4 800F7024 94440000 */  lhu   $a0, ($v0)
/* B6E1C8 800F7028 0C03DB9F */  jal   func_800F6E7C
/* B6E1CC 800F702C 94450002 */   lhu   $a1, 2($v0)
/* B6E1D0 800F7030 00114880 */  sll   $t1, $s1, 2
/* B6E1D4 800F7034 01314823 */  subu  $t1, $t1, $s1
/* B6E1D8 800F7038 00094880 */  sll   $t1, $t1, 2
/* B6E1DC 800F703C 01314821 */  addu  $t1, $t1, $s1
/* B6E1E0 800F7040 000948C0 */  sll   $t1, $t1, 3
/* B6E1E4 800F7044 02699021 */  addu  $s2, $s3, $t1
/* B6E1E8 800F7048 924A0004 */  lbu   $t2, 4($s2)
/* B6E1EC 800F704C 241400FF */  li    $s4, 255
/* B6E1F0 800F7050 02505821 */  addu  $t3, $s2, $s0
/* B6E1F4 800F7054 128A001A */  beq   $s4, $t2, .L800F70C0
/* B6E1F8 800F7058 3C138000 */   lui   $s3, 0x8000
/* B6E1FC 800F705C 91710004 */  lbu   $s1, 4($t3)
/* B6E200 800F7060 26100001 */  addiu $s0, $s0, 1
.L800F7064:
/* B6E204 800F7064 321000FF */  andi  $s0, $s0, 0xff
/* B6E208 800F7068 02506021 */  addu  $t4, $s2, $s0
/* B6E20C 800F706C 91830004 */  lbu   $v1, 4($t4)
/* B6E210 800F7070 26100001 */  addiu $s0, $s0, 1
/* B6E214 800F7074 321000FF */  andi  $s0, $s0, 0xff
/* B6E218 800F7078 322200FF */  andi  $v0, $s1, 0xff
/* B6E21C 800F707C 02506821 */  addu  $t5, $s2, $s0
/* B6E220 800F7080 00037400 */  sll   $t6, $v1, 0x10
/* B6E224 800F7084 91A50004 */  lbu   $a1, 4($t5)
/* B6E228 800F7088 01D37825 */  or    $t7, $t6, $s3
/* B6E22C 800F708C 0002C200 */  sll   $t8, $v0, 8
/* B6E230 800F7090 26100001 */  addiu $s0, $s0, 1
/* B6E234 800F7094 01F8C825 */  or    $t9, $t7, $t8
/* B6E238 800F7098 321000FF */  andi  $s0, $s0, 0xff
/* B6E23C 800F709C 0C03E803 */  jal   Audio_SetBGM
/* B6E240 800F70A0 03252025 */   or    $a0, $t9, $a1
/* B6E244 800F70A4 02504021 */  addu  $t0, $s2, $s0
/* B6E248 800F70A8 91110004 */  lbu   $s1, 4($t0)
/* B6E24C 800F70AC 2A010064 */  slti  $at, $s0, 0x64
/* B6E250 800F70B0 12910003 */  beq   $s4, $s1, .L800F70C0
/* B6E254 800F70B4 00000000 */   nop   
/* B6E258 800F70B8 5420FFEA */  bnezl $at, .L800F7064
/* B6E25C 800F70BC 26100001 */   addiu $s0, $s0, 1
.L800F70C0:
/* B6E260 800F70C0 3C048013 */  lui   $a0, %hi(D_80130604) # $a0, 0x8013
/* B6E264 800F70C4 90840604 */  lbu   $a0, %lo(D_80130604)($a0)
/* B6E268 800F70C8 3C018007 */  lui   $at, (0x80070D00 >> 16) # lui $at, 0x8007
/* B6E26C 800F70CC 34210D00 */  ori   $at, (0x80070D00 & 0xFFFF) # ori $at, $at, 0xd00
/* B6E270 800F70D0 0C03E803 */  jal   Audio_SetBGM
/* B6E274 800F70D4 00812025 */   or    $a0, $a0, $at
.L800F70D8:
/* B6E278 800F70D8 8FBF002C */  lw    $ra, 0x2c($sp)
/* B6E27C 800F70DC 8FB00018 */  lw    $s0, 0x18($sp)
/* B6E280 800F70E0 8FB1001C */  lw    $s1, 0x1c($sp)
/* B6E284 800F70E4 8FB20020 */  lw    $s2, 0x20($sp)
/* B6E288 800F70E8 8FB30024 */  lw    $s3, 0x24($sp)
/* B6E28C 800F70EC 8FB40028 */  lw    $s4, 0x28($sp)
/* B6E290 800F70F0 03E00008 */  jr    $ra
/* B6E294 800F70F4 27BD0030 */   addiu $sp, $sp, 0x30

