glabel func_809A3E00
/* 000140 809A3E00 27BDFFA0 */  addiu $sp, $sp, -0x60
/* 000144 809A3E04 AFBF0024 */  sw    $ra, 0x24($sp)
/* 000148 809A3E08 AFB20020 */  sw    $s2, 0x20($sp)
/* 00014C 809A3E0C AFB1001C */  sw    $s1, 0x1c($sp)
/* 000150 809A3E10 AFB00018 */  sw    $s0, 0x18($sp)
/* 000154 809A3E14 AFA50064 */  sw    $a1, 0x64($sp)
/* 000158 809A3E18 84CE0046 */  lh    $t6, 0x46($a2)
/* 00015C 809A3E1C 3C0142C8 */  li    $at, 0x42C80000 # 100.000000
/* 000160 809A3E20 44814000 */  mtc1  $at, $f8
/* 000164 809A3E24 448E2000 */  mtc1  $t6, $f4
/* 000168 809A3E28 3C080001 */  lui   $t0, 1
/* 00016C 809A3E2C 00C08825 */  move  $s1, $a2
/* 000170 809A3E30 468021A0 */  cvt.s.w $f6, $f4
/* 000174 809A3E34 00809025 */  move  $s2, $a0
/* 000178 809A3E38 240700A8 */  li    $a3, 168
/* 00017C 809A3E3C 46083283 */  div.s $f10, $f6, $f8
/* 000180 809A3E40 E7AA0058 */  swc1  $f10, 0x58($sp)
/* 000184 809A3E44 84CF0040 */  lh    $t7, 0x40($a2)
/* 000188 809A3E48 8C850000 */  lw    $a1, ($a0)
/* 00018C 809A3E4C 3C06809A */  lui   $a2, %hi(D_809A4080) # $a2, 0x809a
/* 000190 809A3E50 000FC100 */  sll   $t8, $t7, 4
/* 000194 809A3E54 030FC021 */  addu  $t8, $t8, $t7
/* 000198 809A3E58 0018C080 */  sll   $t8, $t8, 2
/* 00019C 809A3E5C 0098C821 */  addu  $t9, $a0, $t8
/* 0001A0 809A3E60 01194021 */  addu  $t0, $t0, $t9
/* 0001A4 809A3E64 8D0817B4 */  lw    $t0, 0x17b4($t0)
/* 0001A8 809A3E68 27A40040 */  addiu $a0, $sp, 0x40
/* 0001AC 809A3E6C 24C64080 */  addiu $a2, %lo(D_809A4080) # addiu $a2, $a2, 0x4080
/* 0001B0 809A3E70 00A08025 */  move  $s0, $a1
/* 0001B4 809A3E74 0C031AB1 */  jal   Graph_OpenDisp
/* 0001B8 809A3E78 AFA80054 */   sw    $t0, 0x54($sp)
/* 0001BC 809A3E7C 8FA80054 */  lw    $t0, 0x54($sp)
/* 0001C0 809A3E80 3C018000 */  lui   $at, 0x8000
/* 0001C4 809A3E84 3C0BDB06 */  lui   $t3, (0xDB060018 >> 16) # lui $t3, 0xdb06
/* 0001C8 809A3E88 01014821 */  addu  $t1, $t0, $at
/* 0001CC 809A3E8C 3C018016 */  lui   $at, %hi(gSegments+0x18) # $at, 0x8016
/* 0001D0 809A3E90 AC296FC0 */  sw    $t1, %lo(gSegments+0x18)($at)
/* 0001D4 809A3E94 8E0202D0 */  lw    $v0, 0x2d0($s0)
/* 0001D8 809A3E98 356B0018 */  ori   $t3, (0xDB060018 & 0xFFFF) # ori $t3, $t3, 0x18
/* 0001DC 809A3E9C 00003825 */  move  $a3, $zero
/* 0001E0 809A3EA0 244A0008 */  addiu $t2, $v0, 8
/* 0001E4 809A3EA4 AE0A02D0 */  sw    $t2, 0x2d0($s0)
/* 0001E8 809A3EA8 AC480004 */  sw    $t0, 4($v0)
/* 0001EC 809A3EAC AC4B0000 */  sw    $t3, ($v0)
/* 0001F0 809A3EB0 8E260008 */  lw    $a2, 8($s1)
/* 0001F4 809A3EB4 C62E0004 */  lwc1  $f14, 4($s1)
/* 0001F8 809A3EB8 0C034261 */  jal   Matrix_Translate
/* 0001FC 809A3EBC C62C0000 */   lwc1  $f12, ($s1)
/* 000200 809A3EC0 C7AC0058 */  lwc1  $f12, 0x58($sp)
/* 000204 809A3EC4 24070001 */  li    $a3, 1
/* 000208 809A3EC8 44066000 */  mfc1  $a2, $f12
/* 00020C 809A3ECC 0C0342A3 */  jal   Matrix_Scale
/* 000210 809A3ED0 46006386 */   mov.s $f14, $f12
/* 000214 809A3ED4 0C024F61 */  jal   func_80093D84
/* 000218 809A3ED8 8E440000 */   lw    $a0, ($s2)
/* 00021C 809A3EDC 3C010001 */  lui   $at, (0x00011DA0 >> 16) # lui $at, 1
/* 000220 809A3EE0 34211DA0 */  ori   $at, (0x00011DA0 & 0xFFFF) # ori $at, $at, 0x1da0
/* 000224 809A3EE4 0C0347F5 */  jal   func_800D1FD4
/* 000228 809A3EE8 02412021 */   addu  $a0, $s2, $at
/* 00022C 809A3EEC 8E0202D0 */  lw    $v0, 0x2d0($s0)
/* 000230 809A3EF0 3C0DDA38 */  lui   $t5, (0xDA380003 >> 16) # lui $t5, 0xda38
/* 000234 809A3EF4 35AD0003 */  ori   $t5, (0xDA380003 & 0xFFFF) # ori $t5, $t5, 3
/* 000238 809A3EF8 244C0008 */  addiu $t4, $v0, 8
/* 00023C 809A3EFC AE0C02D0 */  sw    $t4, 0x2d0($s0)
/* 000240 809A3F00 AC4D0000 */  sw    $t5, ($v0)
/* 000244 809A3F04 8E440000 */  lw    $a0, ($s2)
/* 000248 809A3F08 3C05809A */  lui   $a1, %hi(D_809A4094) # $a1, 0x809a
/* 00024C 809A3F0C 24A54094 */  addiu $a1, %lo(D_809A4094) # addiu $a1, $a1, 0x4094
/* 000250 809A3F10 240600BA */  li    $a2, 186
/* 000254 809A3F14 0C0346A2 */  jal   Matrix_NewMtx
/* 000258 809A3F18 AFA20038 */   sw    $v0, 0x38($sp)
/* 00025C 809A3F1C 8FA30038 */  lw    $v1, 0x38($sp)
/* 000260 809A3F20 3C0FDB06 */  lui   $t7, (0xDB060020 >> 16) # lui $t7, 0xdb06
/* 000264 809A3F24 35EF0020 */  ori   $t7, (0xDB060020 & 0xFFFF) # ori $t7, $t7, 0x20
/* 000268 809A3F28 AC620004 */  sw    $v0, 4($v1)
/* 00026C 809A3F2C 8E0202D0 */  lw    $v0, 0x2d0($s0)
/* 000270 809A3F30 3C04809A */  lui   $a0, 0x809a
/* 000274 809A3F34 3C078016 */  lui   $a3, %hi(gSegments) # $a3, 0x8016
/* 000278 809A3F38 244E0008 */  addiu $t6, $v0, 8
/* 00027C 809A3F3C AE0E02D0 */  sw    $t6, 0x2d0($s0)
/* 000280 809A3F40 AC4F0000 */  sw    $t7, ($v0)
/* 000284 809A3F44 86380044 */  lh    $t8, 0x44($s1)
/* 000288 809A3F48 24E76FA8 */  addiu $a3, %lo(gSegments) # addiu $a3, $a3, 0x6fa8
/* 00028C 809A3F4C 3C0500FF */  lui   $a1, (0x00FFFFFF >> 16) # lui $a1, 0xff
/* 000290 809A3F50 0018C880 */  sll   $t9, $t8, 2
/* 000294 809A3F54 00992021 */  addu  $a0, $a0, $t9
/* 000298 809A3F58 8C844070 */  lw    $a0, 0x4070($a0)
/* 00029C 809A3F5C 34A5FFFF */  ori   $a1, (0x00FFFFFF & 0xFFFF) # ori $a1, $a1, 0xffff
/* 0002A0 809A3F60 3C068000 */  lui   $a2, 0x8000
/* 0002A4 809A3F64 00045100 */  sll   $t2, $a0, 4
/* 0002A8 809A3F68 000A5F02 */  srl   $t3, $t2, 0x1c
/* 0002AC 809A3F6C 000B6080 */  sll   $t4, $t3, 2
/* 0002B0 809A3F70 00EC6821 */  addu  $t5, $a3, $t4
/* 0002B4 809A3F74 8DAE0000 */  lw    $t6, ($t5)
/* 0002B8 809A3F78 00854824 */  and   $t1, $a0, $a1
/* 0002BC 809A3F7C 3C040600 */  lui   $a0, %hi(D_06000DC0) # $a0, 0x600
/* 0002C0 809A3F80 012E7821 */  addu  $t7, $t1, $t6
/* 0002C4 809A3F84 01E6C021 */  addu  $t8, $t7, $a2
/* 0002C8 809A3F88 AC580004 */  sw    $t8, 4($v0)
/* 0002CC 809A3F8C 8E0202D0 */  lw    $v0, 0x2d0($s0)
/* 0002D0 809A3F90 24840DC0 */  addiu $a0, %lo(D_06000DC0) # addiu $a0, $a0, 0xdc0
/* 0002D4 809A3F94 00045900 */  sll   $t3, $a0, 4
/* 0002D8 809A3F98 000B6702 */  srl   $t4, $t3, 0x1c
/* 0002DC 809A3F9C 24590008 */  addiu $t9, $v0, 8
/* 0002E0 809A3FA0 AE1902D0 */  sw    $t9, 0x2d0($s0)
/* 0002E4 809A3FA4 000C6880 */  sll   $t5, $t4, 2
/* 0002E8 809A3FA8 3C0ADE00 */  lui   $t2, 0xde00
/* 0002EC 809A3FAC 00ED4821 */  addu  $t1, $a3, $t5
/* 0002F0 809A3FB0 AC4A0000 */  sw    $t2, ($v0)
/* 0002F4 809A3FB4 8D2E0000 */  lw    $t6, ($t1)
/* 0002F8 809A3FB8 00857824 */  and   $t7, $a0, $a1
/* 0002FC 809A3FBC 27A40040 */  addiu $a0, $sp, 0x40
/* 000300 809A3FC0 01CFC021 */  addu  $t8, $t6, $t7
/* 000304 809A3FC4 0306C821 */  addu  $t9, $t8, $a2
/* 000308 809A3FC8 3C06809A */  lui   $a2, %hi(D_809A40A8) # $a2, 0x809a
/* 00030C 809A3FCC AC590004 */  sw    $t9, 4($v0)
/* 000310 809A3FD0 8E450000 */  lw    $a1, ($s2)
/* 000314 809A3FD4 24C640A8 */  addiu $a2, %lo(D_809A40A8) # addiu $a2, $a2, 0x40a8
/* 000318 809A3FD8 0C031AD5 */  jal   Graph_CloseDisp
/* 00031C 809A3FDC 240700C2 */   li    $a3, 194
/* 000320 809A3FE0 8FBF0024 */  lw    $ra, 0x24($sp)
/* 000324 809A3FE4 8FB00018 */  lw    $s0, 0x18($sp)
/* 000328 809A3FE8 8FB1001C */  lw    $s1, 0x1c($sp)
/* 00032C 809A3FEC 8FB20020 */  lw    $s2, 0x20($sp)
/* 000330 809A3FF0 03E00008 */  jr    $ra
/* 000334 809A3FF4 27BD0060 */   addiu $sp, $sp, 0x60

