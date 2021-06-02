.rdata
glabel D_809E90B8
    .asciz "../z_en_dekubaba.c"
    .balign 4

glabel D_809E90CC
    .asciz "../z_en_dekubaba.c"
    .balign 4

glabel D_809E90E0
    .asciz "../z_en_dekubaba.c"
    .balign 4

.text
glabel func_809E89E4
/* 03214 809E89E4 27BDFFC0 */  addiu   $sp, $sp, 0xFFC0           ## $sp = FFFFFFC0
/* 03218 809E89E8 AFBF001C */  sw      $ra, 0x001C($sp)
/* 0321C 809E89EC AFB00018 */  sw      $s0, 0x0018($sp)
/* 03220 809E89F0 AFA40040 */  sw      $a0, 0x0040($sp)
/* 03224 809E89F4 AFA50044 */  sw      $a1, 0x0044($sp)
/* 03228 809E89F8 8CA50000 */  lw      $a1, 0x0000($a1)           ## 00000000
/* 0322C 809E89FC 3C06809F */  lui     $a2, %hi(D_809E90B8)       ## $a2 = 809F0000
/* 03230 809E8A00 24C690B8 */  addiu   $a2, $a2, %lo(D_809E90B8)  ## $a2 = 809E90B8
/* 03234 809E8A04 27A4002C */  addiu   $a0, $sp, 0x002C           ## $a0 = FFFFFFEC
/* 03238 809E8A08 24070A13 */  addiu   $a3, $zero, 0x0A13         ## $a3 = 00000A13
/* 0323C 809E8A0C 0C031AB1 */  jal     Graph_OpenDisps
/* 03240 809E8A10 00A08025 */  or      $s0, $a1, $zero            ## $s0 = 00000000
/* 03244 809E8A14 8FA20040 */  lw      $v0, 0x0040($sp)
/* 03248 809E8A18 00003025 */  or      $a2, $zero, $zero          ## $a2 = 00000000
/* 0324C 809E8A1C 24070001 */  addiu   $a3, $zero, 0x0001         ## $a3 = 00000001
/* 03250 809E8A20 844401CE */  lh      $a0, 0x01CE($v0)           ## 000001CE
/* 03254 809E8A24 0C034421 */  jal     Matrix_RotateRPY
/* 03258 809E8A28 844500B6 */  lh      $a1, 0x00B6($v0)           ## 000000B6
/* 0325C 809E8A2C 8E0202C0 */  lw      $v0, 0x02C0($s0)           ## 000002C0
/* 03260 809E8A30 3C18DA38 */  lui     $t8, 0xDA38                ## $t8 = DA380000
/* 03264 809E8A34 37180003 */  ori     $t8, $t8, 0x0003           ## $t8 = DA380003
/* 03268 809E8A38 244F0008 */  addiu   $t7, $v0, 0x0008           ## $t7 = 00000008
/* 0326C 809E8A3C AE0F02C0 */  sw      $t7, 0x02C0($s0)           ## 000002C0
/* 03270 809E8A40 AC580000 */  sw      $t8, 0x0000($v0)           ## 00000000
/* 03274 809E8A44 8FB90044 */  lw      $t9, 0x0044($sp)
/* 03278 809E8A48 3C05809F */  lui     $a1, %hi(D_809E90CC)       ## $a1 = 809F0000
/* 0327C 809E8A4C 24A590CC */  addiu   $a1, $a1, %lo(D_809E90CC)  ## $a1 = 809E90CC
/* 03280 809E8A50 8F240000 */  lw      $a0, 0x0000($t9)           ## 00000000
/* 03284 809E8A54 24060A1A */  addiu   $a2, $zero, 0x0A1A         ## $a2 = 00000A1A
/* 03288 809E8A58 0C0346A2 */  jal     Matrix_NewMtx
/* 0328C 809E8A5C AFA20028 */  sw      $v0, 0x0028($sp)
/* 03290 809E8A60 8FA30028 */  lw      $v1, 0x0028($sp)
/* 03294 809E8A64 3C0A0600 */  lui     $t2, %hi(D_06001828)                ## $t2 = 06000000
/* 03298 809E8A68 254A1828 */  addiu   $t2, $t2, %lo(D_06001828)           ## $t2 = 06001828
/* 0329C 809E8A6C AC620004 */  sw      $v0, 0x0004($v1)           ## 00000004
/* 032A0 809E8A70 8E0202C0 */  lw      $v0, 0x02C0($s0)           ## 000002C0
/* 032A4 809E8A74 3C09DE00 */  lui     $t1, 0xDE00                ## $t1 = DE000000
/* 032A8 809E8A78 24040037 */  addiu   $a0, $zero, 0x0037         ## $a0 = 00000037
/* 032AC 809E8A7C 24480008 */  addiu   $t0, $v0, 0x0008           ## $t0 = 00000008
/* 032B0 809E8A80 AE0802C0 */  sw      $t0, 0x02C0($s0)           ## 000002C0
/* 032B4 809E8A84 AC4A0004 */  sw      $t2, 0x0004($v0)           ## 00000004
/* 032B8 809E8A88 AC490000 */  sw      $t1, 0x0000($v0)           ## 00000000
/* 032BC 809E8A8C 8FB00040 */  lw      $s0, 0x0040($sp)
/* 032C0 809E8A90 26100238 */  addiu   $s0, $s0, 0x0238           ## $s0 = 00000238
/* 032C4 809E8A94 0C018A29 */  jal     Collider_UpdateSpheres
/* 032C8 809E8A98 02002825 */  or      $a1, $s0, $zero            ## $a1 = 00000238
/* 032CC 809E8A9C 24040038 */  addiu   $a0, $zero, 0x0038         ## $a0 = 00000038
/* 032D0 809E8AA0 0C018A29 */  jal     Collider_UpdateSpheres
/* 032D4 809E8AA4 02002825 */  or      $a1, $s0, $zero            ## $a1 = 00000238
/* 032D8 809E8AA8 8FAB0044 */  lw      $t3, 0x0044($sp)
/* 032DC 809E8AAC 3C06809F */  lui     $a2, %hi(D_809E90E0)       ## $a2 = 809F0000
/* 032E0 809E8AB0 24C690E0 */  addiu   $a2, $a2, %lo(D_809E90E0)  ## $a2 = 809E90E0
/* 032E4 809E8AB4 27A4002C */  addiu   $a0, $sp, 0x002C           ## $a0 = FFFFFFEC
/* 032E8 809E8AB8 24070A24 */  addiu   $a3, $zero, 0x0A24         ## $a3 = 00000A24
/* 032EC 809E8ABC 0C031AD5 */  jal     Graph_CloseDisps
/* 032F0 809E8AC0 8D650000 */  lw      $a1, 0x0000($t3)           ## 00000000
/* 032F4 809E8AC4 8FBF001C */  lw      $ra, 0x001C($sp)
/* 032F8 809E8AC8 8FB00018 */  lw      $s0, 0x0018($sp)
/* 032FC 809E8ACC 27BD0040 */  addiu   $sp, $sp, 0x0040           ## $sp = 00000000
/* 03300 809E8AD0 03E00008 */  jr      $ra
/* 03304 809E8AD4 00000000 */  nop
