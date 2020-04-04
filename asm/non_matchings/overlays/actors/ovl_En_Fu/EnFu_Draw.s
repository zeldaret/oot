glabel EnFu_Draw
/* 00A9C 80A1E2AC 27BDFFA8 */  addiu   $sp, $sp, 0xFFA8           ## $sp = FFFFFFA8
/* 00AA0 80A1E2B0 AFBF002C */  sw      $ra, 0x002C($sp)
/* 00AA4 80A1E2B4 AFB00028 */  sw      $s0, 0x0028($sp)
/* 00AA8 80A1E2B8 AFA5005C */  sw      $a1, 0x005C($sp)
/* 00AAC 80A1E2BC 8CA50000 */  lw      $a1, 0x0000($a1)           ## 00000000
/* 00AB0 80A1E2C0 00808025 */  or      $s0, $a0, $zero            ## $s0 = 00000000
/* 00AB4 80A1E2C4 3C0680A2 */  lui     $a2, %hi(D_80A1E470)       ## $a2 = 80A20000
/* 00AB8 80A1E2C8 24C6E470 */  addiu   $a2, $a2, %lo(D_80A1E470)  ## $a2 = 80A1E470
/* 00ABC 80A1E2CC 27A4003C */  addiu   $a0, $sp, 0x003C           ## $a0 = FFFFFFE4
/* 00AC0 80A1E2D0 24070305 */  addiu   $a3, $zero, 0x0305         ## $a3 = 00000305
/* 00AC4 80A1E2D4 0C031AB1 */  jal     Graph_OpenDisp
/* 00AC8 80A1E2D8 AFA5004C */  sw      $a1, 0x004C($sp)
/* 00ACC 80A1E2DC 8FAF005C */  lw      $t7, 0x005C($sp)
/* 00AD0 80A1E2E0 0C0250F2 */  jal     func_800943C8
/* 00AD4 80A1E2E4 8DE40000 */  lw      $a0, 0x0000($t7)           ## 00000000
/* 00AD8 80A1E2E8 8FA8004C */  lw      $t0, 0x004C($sp)
/* 00ADC 80A1E2EC 3C19DB06 */  lui     $t9, 0xDB06                ## $t9 = DB060000
/* 00AE0 80A1E2F0 37390020 */  ori     $t9, $t9, 0x0020           ## $t9 = DB060020
/* 00AE4 80A1E2F4 8D0302C0 */  lw      $v1, 0x02C0($t0)           ## 000002C0
/* 00AE8 80A1E2F8 3C0480A2 */  lui     $a0, %hi(D_80A1E458)       ## $a0 = 80A20000
/* 00AEC 80A1E2FC 3C068016 */  lui     $a2, 0x8016                ## $a2 = 80160000
/* 00AF0 80A1E300 24780008 */  addiu   $t8, $v1, 0x0008           ## $t8 = 00000008
/* 00AF4 80A1E304 AD1802C0 */  sw      $t8, 0x02C0($t0)           ## 000002C0
/* 00AF8 80A1E308 AC790000 */  sw      $t9, 0x0000($v1)           ## 00000000
/* 00AFC 80A1E30C 960902AA */  lhu     $t1, 0x02AA($s0)           ## 000002AA
/* 00B00 80A1E310 24C66FA8 */  addiu   $a2, $a2, 0x6FA8           ## $a2 = 80166FA8
/* 00B04 80A1E314 3C0500FF */  lui     $a1, 0x00FF                ## $a1 = 00FF0000
/* 00B08 80A1E318 00095080 */  sll     $t2, $t1,  2
/* 00B0C 80A1E31C 008A2021 */  addu    $a0, $a0, $t2
/* 00B10 80A1E320 8C84E458 */  lw      $a0, %lo(D_80A1E458)($a0)
/* 00B14 80A1E324 34A5FFFF */  ori     $a1, $a1, 0xFFFF           ## $a1 = 00FFFFFF
/* 00B18 80A1E328 3C078000 */  lui     $a3, 0x8000                ## $a3 = 80000000
/* 00B1C 80A1E32C 00046100 */  sll     $t4, $a0,  4
/* 00B20 80A1E330 000C6F02 */  srl     $t5, $t4, 28
/* 00B24 80A1E334 000D7080 */  sll     $t6, $t5,  2
/* 00B28 80A1E338 00CE7821 */  addu    $t7, $a2, $t6
/* 00B2C 80A1E33C 8DF80000 */  lw      $t8, 0x0000($t7)           ## 00000000
/* 00B30 80A1E340 00855824 */  and     $t3, $a0, $a1
/* 00B34 80A1E344 3C0CDB06 */  lui     $t4, 0xDB06                ## $t4 = DB060000
/* 00B38 80A1E348 0178C821 */  addu    $t9, $t3, $t8
/* 00B3C 80A1E34C 03274821 */  addu    $t1, $t9, $a3
/* 00B40 80A1E350 AC690004 */  sw      $t1, 0x0004($v1)           ## 00000004
/* 00B44 80A1E354 8D0302C0 */  lw      $v1, 0x02C0($t0)           ## 000002C0
/* 00B48 80A1E358 358C0024 */  ori     $t4, $t4, 0x0024           ## $t4 = DB060024
/* 00B4C 80A1E35C 3C0480A2 */  lui     $a0, %hi(D_80A1E460)       ## $a0 = 80A20000
/* 00B50 80A1E360 246A0008 */  addiu   $t2, $v1, 0x0008           ## $t2 = 00000008
/* 00B54 80A1E364 AD0A02C0 */  sw      $t2, 0x02C0($t0)           ## 000002C0
/* 00B58 80A1E368 AC6C0000 */  sw      $t4, 0x0000($v1)           ## 00000000
/* 00B5C 80A1E36C 960D02AA */  lhu     $t5, 0x02AA($s0)           ## 000002AA
/* 00B60 80A1E370 000D7080 */  sll     $t6, $t5,  2
/* 00B64 80A1E374 008E2021 */  addu    $a0, $a0, $t6
/* 00B68 80A1E378 8C84E460 */  lw      $a0, %lo(D_80A1E460)($a0)
/* 00B6C 80A1E37C 3C0E80A2 */  lui     $t6, %hi(func_80A1E110)    ## $t6 = 80A20000
/* 00B70 80A1E380 25CEE110 */  addiu   $t6, $t6, %lo(func_80A1E110) ## $t6 = 80A1E110
/* 00B74 80A1E384 00045900 */  sll     $t3, $a0,  4
/* 00B78 80A1E388 000BC702 */  srl     $t8, $t3, 28
/* 00B7C 80A1E38C 0018C880 */  sll     $t9, $t8,  2
/* 00B80 80A1E390 00D94821 */  addu    $t1, $a2, $t9
/* 00B84 80A1E394 8D2A0000 */  lw      $t2, 0x0000($t1)           ## 00000000
/* 00B88 80A1E398 00857824 */  and     $t7, $a0, $a1
/* 00B8C 80A1E39C 3C0B80A2 */  lui     $t3, %hi(func_80A1E26C)    ## $t3 = 80A20000
/* 00B90 80A1E3A0 01EA6021 */  addu    $t4, $t7, $t2
/* 00B94 80A1E3A4 01876821 */  addu    $t5, $t4, $a3
/* 00B98 80A1E3A8 AC6D0004 */  sw      $t5, 0x0004($v1)           ## 00000004
/* 00B9C 80A1E3AC 9207019A */  lbu     $a3, 0x019A($s0)           ## 0000019A
/* 00BA0 80A1E3B0 8E0601B8 */  lw      $a2, 0x01B8($s0)           ## 000001B8
/* 00BA4 80A1E3B4 8E05019C */  lw      $a1, 0x019C($s0)           ## 0000019C
/* 00BA8 80A1E3B8 256BE26C */  addiu   $t3, $t3, %lo(func_80A1E26C) ## $t3 = 80A1E26C
/* 00BAC 80A1E3BC AFAB0014 */  sw      $t3, 0x0014($sp)
/* 00BB0 80A1E3C0 AFB00018 */  sw      $s0, 0x0018($sp)
/* 00BB4 80A1E3C4 AFAE0010 */  sw      $t6, 0x0010($sp)
/* 00BB8 80A1E3C8 0C0286B2 */  jal     SkelAnime_DrawSV
/* 00BBC 80A1E3CC 8FA4005C */  lw      $a0, 0x005C($sp)
/* 00BC0 80A1E3D0 8FB8005C */  lw      $t8, 0x005C($sp)
/* 00BC4 80A1E3D4 3C0680A2 */  lui     $a2, %hi(D_80A1E480)       ## $a2 = 80A20000
/* 00BC8 80A1E3D8 24C6E480 */  addiu   $a2, $a2, %lo(D_80A1E480)  ## $a2 = 80A1E480
/* 00BCC 80A1E3DC 27A4003C */  addiu   $a0, $sp, 0x003C           ## $a0 = FFFFFFE4
/* 00BD0 80A1E3E0 24070317 */  addiu   $a3, $zero, 0x0317         ## $a3 = 00000317
/* 00BD4 80A1E3E4 0C031AD5 */  jal     Graph_CloseDisp
/* 00BD8 80A1E3E8 8F050000 */  lw      $a1, 0x0000($t8)           ## 00000000
/* 00BDC 80A1E3EC 8FBF002C */  lw      $ra, 0x002C($sp)
/* 00BE0 80A1E3F0 8FB00028 */  lw      $s0, 0x0028($sp)
/* 00BE4 80A1E3F4 27BD0058 */  addiu   $sp, $sp, 0x0058           ## $sp = 00000000
/* 00BE8 80A1E3F8 03E00008 */  jr      $ra
/* 00BEC 80A1E3FC 00000000 */  nop

