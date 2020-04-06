glabel func_80A3E1EC
/* 00B0C 80A3E1EC 27BDFFA8 */  addiu   $sp, $sp, 0xFFA8           ## $sp = FFFFFFA8
/* 00B10 80A3E1F0 AFBF002C */  sw      $ra, 0x002C($sp)
/* 00B14 80A3E1F4 AFB00028 */  sw      $s0, 0x0028($sp)
/* 00B18 80A3E1F8 AFA5005C */  sw      $a1, 0x005C($sp)
/* 00B1C 80A3E1FC 8CA50000 */  lw      $a1, 0x0000($a1)           ## 00000000
/* 00B20 80A3E200 00808025 */  or      $s0, $a0, $zero            ## $s0 = 00000000
/* 00B24 80A3E204 3C0680A4 */  lui     $a2, %hi(D_80A3E40C)       ## $a2 = 80A40000
/* 00B28 80A3E208 24C6E40C */  addiu   $a2, $a2, %lo(D_80A3E40C)  ## $a2 = 80A3E40C
/* 00B2C 80A3E20C 27A4003C */  addiu   $a0, $sp, 0x003C           ## $a0 = FFFFFFE4
/* 00B30 80A3E210 24070265 */  addiu   $a3, $zero, 0x0265         ## $a3 = 00000265
/* 00B34 80A3E214 0C031AB1 */  jal     Graph_OpenDisps
/* 00B38 80A3E218 AFA5004C */  sw      $a1, 0x004C($sp)
/* 00B3C 80A3E21C 8FAF005C */  lw      $t7, 0x005C($sp)
/* 00B40 80A3E220 0C024F46 */  jal     func_80093D18
/* 00B44 80A3E224 8DE40000 */  lw      $a0, 0x0000($t7)           ## 00000000
/* 00B48 80A3E228 8FA8004C */  lw      $t0, 0x004C($sp)
/* 00B4C 80A3E22C 3C19DB06 */  lui     $t9, 0xDB06                ## $t9 = DB060000
/* 00B50 80A3E230 37390020 */  ori     $t9, $t9, 0x0020           ## $t9 = DB060020
/* 00B54 80A3E234 8D0302C0 */  lw      $v1, 0x02C0($t0)           ## 000002C0
/* 00B58 80A3E238 3C0480A4 */  lui     $a0, %hi(D_80A3E384)       ## $a0 = 80A40000
/* 00B5C 80A3E23C 3C068016 */  lui     $a2, 0x8016                ## $a2 = 80160000
/* 00B60 80A3E240 24780008 */  addiu   $t8, $v1, 0x0008           ## $t8 = 00000008
/* 00B64 80A3E244 AD1802C0 */  sw      $t8, 0x02C0($t0)           ## 000002C0
/* 00B68 80A3E248 AC790000 */  sw      $t9, 0x0000($v1)           ## 00000000
/* 00B6C 80A3E24C 920902C2 */  lbu     $t1, 0x02C2($s0)           ## 000002C2
/* 00B70 80A3E250 24C66FA8 */  addiu   $a2, $a2, 0x6FA8           ## $a2 = 80166FA8
/* 00B74 80A3E254 3C0500FF */  lui     $a1, 0x00FF                ## $a1 = 00FF0000
/* 00B78 80A3E258 00095080 */  sll     $t2, $t1,  2
/* 00B7C 80A3E25C 008A2021 */  addu    $a0, $a0, $t2
/* 00B80 80A3E260 8C84E384 */  lw      $a0, %lo(D_80A3E384)($a0)
/* 00B84 80A3E264 34A5FFFF */  ori     $a1, $a1, 0xFFFF           ## $a1 = 00FFFFFF
/* 00B88 80A3E268 3C078000 */  lui     $a3, 0x8000                ## $a3 = 80000000
/* 00B8C 80A3E26C 00046100 */  sll     $t4, $a0,  4
/* 00B90 80A3E270 000C6F02 */  srl     $t5, $t4, 28
/* 00B94 80A3E274 000D7080 */  sll     $t6, $t5,  2
/* 00B98 80A3E278 00CE7821 */  addu    $t7, $a2, $t6
/* 00B9C 80A3E27C 8DF80000 */  lw      $t8, 0x0000($t7)           ## 00000000
/* 00BA0 80A3E280 00855824 */  and     $t3, $a0, $a1
/* 00BA4 80A3E284 3C040601 */  lui     $a0, 0x0601                ## $a0 = 06010000
/* 00BA8 80A3E288 0178C821 */  addu    $t9, $t3, $t8
/* 00BAC 80A3E28C 03274821 */  addu    $t1, $t9, $a3
/* 00BB0 80A3E290 AC690004 */  sw      $t1, 0x0004($v1)           ## 00000004
/* 00BB4 80A3E294 8D0302C0 */  lw      $v1, 0x02C0($t0)           ## 000002C0
/* 00BB8 80A3E298 2484DE80 */  addiu   $a0, $a0, 0xDE80           ## $a0 = 0600DE80
/* 00BBC 80A3E29C 00046900 */  sll     $t5, $a0,  4
/* 00BC0 80A3E2A0 000D7702 */  srl     $t6, $t5, 28
/* 00BC4 80A3E2A4 3C0CDB06 */  lui     $t4, 0xDB06                ## $t4 = DB060000
/* 00BC8 80A3E2A8 246A0008 */  addiu   $t2, $v1, 0x0008           ## $t2 = 00000008
/* 00BCC 80A3E2AC 358C0024 */  ori     $t4, $t4, 0x0024           ## $t4 = DB060024
/* 00BD0 80A3E2B0 000E7880 */  sll     $t7, $t6,  2
/* 00BD4 80A3E2B4 AD0A02C0 */  sw      $t2, 0x02C0($t0)           ## 000002C0
/* 00BD8 80A3E2B8 00CF5821 */  addu    $t3, $a2, $t7
/* 00BDC 80A3E2BC AC6C0000 */  sw      $t4, 0x0000($v1)           ## 00000000
/* 00BE0 80A3E2C0 8D780000 */  lw      $t8, 0x0000($t3)           ## 00000000
/* 00BE4 80A3E2C4 0085C824 */  and     $t9, $a0, $a1
/* 00BE8 80A3E2C8 03194821 */  addu    $t1, $t8, $t9
/* 00BEC 80A3E2CC 01275021 */  addu    $t2, $t1, $a3
/* 00BF0 80A3E2D0 AC6A0004 */  sw      $t2, 0x0004($v1)           ## 00000004
/* 00BF4 80A3E2D4 9207014E */  lbu     $a3, 0x014E($s0)           ## 0000014E
/* 00BF8 80A3E2D8 8E06016C */  lw      $a2, 0x016C($s0)           ## 0000016C
/* 00BFC 80A3E2DC 8E050150 */  lw      $a1, 0x0150($s0)           ## 00000150
/* 00C00 80A3E2E0 AFB00018 */  sw      $s0, 0x0018($sp)
/* 00C04 80A3E2E4 AFA00014 */  sw      $zero, 0x0014($sp)
/* 00C08 80A3E2E8 AFA00010 */  sw      $zero, 0x0010($sp)
/* 00C0C 80A3E2EC 0C0286B2 */  jal     SkelAnime_DrawSV
/* 00C10 80A3E2F0 8FA4005C */  lw      $a0, 0x005C($sp)
/* 00C14 80A3E2F4 8FAC005C */  lw      $t4, 0x005C($sp)
/* 00C18 80A3E2F8 3C0680A4 */  lui     $a2, %hi(D_80A3E41C)       ## $a2 = 80A40000
/* 00C1C 80A3E2FC 24C6E41C */  addiu   $a2, $a2, %lo(D_80A3E41C)  ## $a2 = 80A3E41C
/* 00C20 80A3E300 27A4003C */  addiu   $a0, $sp, 0x003C           ## $a0 = FFFFFFE4
/* 00C24 80A3E304 24070275 */  addiu   $a3, $zero, 0x0275         ## $a3 = 00000275
/* 00C28 80A3E308 0C031AD5 */  jal     Graph_CloseDisps
/* 00C2C 80A3E30C 8D850000 */  lw      $a1, 0x0000($t4)           ## 00000000
/* 00C30 80A3E310 0C28F824 */  jal     func_80A3E090
/* 00C34 80A3E314 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 00C38 80A3E318 8FBF002C */  lw      $ra, 0x002C($sp)
/* 00C3C 80A3E31C 8FB00028 */  lw      $s0, 0x0028($sp)
/* 00C40 80A3E320 27BD0058 */  addiu   $sp, $sp, 0x0058           ## $sp = 00000000
/* 00C44 80A3E324 03E00008 */  jr      $ra
/* 00C48 80A3E328 00000000 */  nop
/* 00C4C 80A3E32C 00000000 */  nop

