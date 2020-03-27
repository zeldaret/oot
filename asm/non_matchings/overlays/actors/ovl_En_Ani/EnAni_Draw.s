glabel EnAni_Draw
/* 00AA4 809B0E14 27BDFFA8 */  addiu   $sp, $sp, 0xFFA8           ## $sp = FFFFFFA8
/* 00AA8 809B0E18 AFBF002C */  sw      $ra, 0x002C($sp)
/* 00AAC 809B0E1C AFB00028 */  sw      $s0, 0x0028($sp)
/* 00AB0 809B0E20 AFA5005C */  sw      $a1, 0x005C($sp)
/* 00AB4 809B0E24 8CA50000 */  lw      $a1, 0x0000($a1)           ## 00000000
/* 00AB8 809B0E28 00808025 */  or      $s0, $a0, $zero            ## $s0 = 00000000
/* 00ABC 809B0E2C 3C06809B */  lui     $a2, %hi(D_809B0F90)       ## $a2 = 809B0000
/* 00AC0 809B0E30 24C60F90 */  addiu   $a2, $a2, %lo(D_809B0F90)  ## $a2 = 809B0F90
/* 00AC4 809B0E34 27A4003C */  addiu   $a0, $sp, 0x003C           ## $a0 = FFFFFFE4
/* 00AC8 809B0E38 240702CF */  addiu   $a3, $zero, 0x02CF         ## $a3 = 000002CF
/* 00ACC 809B0E3C 0C031AB1 */  jal     func_800C6AC4
/* 00AD0 809B0E40 AFA5004C */  sw      $a1, 0x004C($sp)
/* 00AD4 809B0E44 8FAF005C */  lw      $t7, 0x005C($sp)
/* 00AD8 809B0E48 0C0250F2 */  jal     func_800943C8
/* 00ADC 809B0E4C 8DE40000 */  lw      $a0, 0x0000($t7)           ## 00000000
/* 00AE0 809B0E50 8FA5004C */  lw      $a1, 0x004C($sp)
/* 00AE4 809B0E54 3C19DB06 */  lui     $t9, 0xDB06                ## $t9 = DB060000
/* 00AE8 809B0E58 37390020 */  ori     $t9, $t9, 0x0020           ## $t9 = DB060020
/* 00AEC 809B0E5C 8CA302C0 */  lw      $v1, 0x02C0($a1)           ## 000002C0
/* 00AF0 809B0E60 3C04809B */  lui     $a0, %hi(D_809B0F80)       ## $a0 = 809B0000
/* 00AF4 809B0E64 3C0E8016 */  lui     $t6, 0x8016                ## $t6 = 80160000
/* 00AF8 809B0E68 24780008 */  addiu   $t8, $v1, 0x0008           ## $t8 = 00000008
/* 00AFC 809B0E6C ACB802C0 */  sw      $t8, 0x02C0($a1)           ## 000002C0
/* 00B00 809B0E70 AC790000 */  sw      $t9, 0x0000($v1)           ## 00000000
/* 00B04 809B0E74 860802AC */  lh      $t0, 0x02AC($s0)           ## 000002AC
/* 00B08 809B0E78 3C0100FF */  lui     $at, 0x00FF                ## $at = 00FF0000
/* 00B0C 809B0E7C 3421FFFF */  ori     $at, $at, 0xFFFF           ## $at = 00FFFFFF
/* 00B10 809B0E80 00084880 */  sll     $t1, $t0,  2
/* 00B14 809B0E84 00892021 */  addu    $a0, $a0, $t1
/* 00B18 809B0E88 8C840F80 */  lw      $a0, %lo(D_809B0F80)($a0)
/* 00B1C 809B0E8C 3C08809B */  lui     $t0, %hi(func_809B0DD4)    ## $t0 = 809B0000
/* 00B20 809B0E90 3C19809B */  lui     $t9, %hi(func_809B0D90)    ## $t9 = 809B0000
/* 00B24 809B0E94 00045900 */  sll     $t3, $a0,  4
/* 00B28 809B0E98 000B6702 */  srl     $t4, $t3, 28
/* 00B2C 809B0E9C 000C6880 */  sll     $t5, $t4,  2
/* 00B30 809B0EA0 01CD7021 */  addu    $t6, $t6, $t5
/* 00B34 809B0EA4 8DCE6FA8 */  lw      $t6, 0x6FA8($t6)           ## 80166FA8
/* 00B38 809B0EA8 00815024 */  and     $t2, $a0, $at
/* 00B3C 809B0EAC 3C018000 */  lui     $at, 0x8000                ## $at = 80000000
/* 00B40 809B0EB0 014E7821 */  addu    $t7, $t2, $t6
/* 00B44 809B0EB4 01E1C021 */  addu    $t8, $t7, $at
/* 00B48 809B0EB8 AC780004 */  sw      $t8, 0x0004($v1)           ## 00000004
/* 00B4C 809B0EBC 9207019A */  lbu     $a3, 0x019A($s0)           ## 0000019A
/* 00B50 809B0EC0 8E0601B8 */  lw      $a2, 0x01B8($s0)           ## 000001B8
/* 00B54 809B0EC4 8E05019C */  lw      $a1, 0x019C($s0)           ## 0000019C
/* 00B58 809B0EC8 27390D90 */  addiu   $t9, $t9, %lo(func_809B0D90) ## $t9 = 809B0D90
/* 00B5C 809B0ECC 25080DD4 */  addiu   $t0, $t0, %lo(func_809B0DD4) ## $t0 = 809B0DD4
/* 00B60 809B0ED0 AFA80014 */  sw      $t0, 0x0014($sp)
/* 00B64 809B0ED4 AFB90010 */  sw      $t9, 0x0010($sp)
/* 00B68 809B0ED8 AFB00018 */  sw      $s0, 0x0018($sp)
/* 00B6C 809B0EDC 0C0286B2 */  jal     SkelAnime_DrawSV
/* 00B70 809B0EE0 8FA4005C */  lw      $a0, 0x005C($sp)
/* 00B74 809B0EE4 8FA9005C */  lw      $t1, 0x005C($sp)
/* 00B78 809B0EE8 3C06809B */  lui     $a2, %hi(D_809B0FA0)       ## $a2 = 809B0000
/* 00B7C 809B0EEC 24C60FA0 */  addiu   $a2, $a2, %lo(D_809B0FA0)  ## $a2 = 809B0FA0
/* 00B80 809B0EF0 27A4003C */  addiu   $a0, $sp, 0x003C           ## $a0 = FFFFFFE4
/* 00B84 809B0EF4 240702E0 */  addiu   $a3, $zero, 0x02E0         ## $a3 = 000002E0
/* 00B88 809B0EF8 0C031AD5 */  jal     func_800C6B54
/* 00B8C 809B0EFC 8D250000 */  lw      $a1, 0x0000($t1)           ## 00000000
/* 00B90 809B0F00 8FBF002C */  lw      $ra, 0x002C($sp)
/* 00B94 809B0F04 8FB00028 */  lw      $s0, 0x0028($sp)
/* 00B98 809B0F08 27BD0058 */  addiu   $sp, $sp, 0x0058           ## $sp = 00000000
/* 00B9C 809B0F0C 03E00008 */  jr      $ra
/* 00BA0 809B0F10 00000000 */  nop
/* 00BA4 809B0F14 00000000 */  nop
/* 00BA8 809B0F18 00000000 */  nop
/* 00BAC 809B0F1C 00000000 */  nop

