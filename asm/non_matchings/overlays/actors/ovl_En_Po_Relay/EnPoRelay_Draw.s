.rdata
glabel D_80AD8DC4
    .asciz "../z_en_po_relay.c"
    .balign 4

glabel D_80AD8DD8
    .asciz "../z_en_po_relay.c"
    .balign 4

.text
glabel EnPoRelay_Draw
/* 013F8 80AD8B38 27BDFFB0 */  addiu   $sp, $sp, 0xFFB0           ## $sp = FFFFFFB0
/* 013FC 80AD8B3C AFBF002C */  sw      $ra, 0x002C($sp)
/* 01400 80AD8B40 AFB00028 */  sw      $s0, 0x0028($sp)
/* 01404 80AD8B44 AFA50054 */  sw      $a1, 0x0054($sp)
/* 01408 80AD8B48 8CA50000 */  lw      $a1, 0x0000($a1)           ## 00000000
/* 0140C 80AD8B4C 00808025 */  or      $s0, $a0, $zero            ## $s0 = 00000000
/* 01410 80AD8B50 3C0680AE */  lui     $a2, %hi(D_80AD8DC4)       ## $a2 = 80AE0000
/* 01414 80AD8B54 24C68DC4 */  addiu   $a2, $a2, %lo(D_80AD8DC4)  ## $a2 = 80AD8DC4
/* 01418 80AD8B58 27A40038 */  addiu   $a0, $sp, 0x0038           ## $a0 = FFFFFFE8
/* 0141C 80AD8B5C 240703AC */  addiu   $a3, $zero, 0x03AC         ## $a3 = 000003AC
/* 01420 80AD8B60 0C031AB1 */  jal     Graph_OpenDisps
/* 01424 80AD8B64 AFA50048 */  sw      $a1, 0x0048($sp)
/* 01428 80AD8B68 8FAF0054 */  lw      $t7, 0x0054($sp)
/* 0142C 80AD8B6C 0C024F46 */  jal     func_80093D18
/* 01430 80AD8B70 8DE40000 */  lw      $a0, 0x0000($t7)           ## 00000000
/* 01434 80AD8B74 8FA50048 */  lw      $a1, 0x0048($sp)
/* 01438 80AD8B78 3C19DB06 */  lui     $t9, 0xDB06                ## $t9 = DB060000
/* 0143C 80AD8B7C 37390020 */  ori     $t9, $t9, 0x0020           ## $t9 = DB060020
/* 01440 80AD8B80 8CA302C0 */  lw      $v1, 0x02C0($a1)           ## 000002C0
/* 01444 80AD8B84 3C0480AE */  lui     $a0, %hi(D_80AD8D54)       ## $a0 = 80AE0000
/* 01448 80AD8B88 3C0E8016 */  lui     $t6, 0x8016                ## $t6 = 80160000
/* 0144C 80AD8B8C 24780008 */  addiu   $t8, $v1, 0x0008           ## $t8 = 00000008
/* 01450 80AD8B90 ACB802C0 */  sw      $t8, 0x02C0($a1)           ## 000002C0
/* 01454 80AD8B94 AC790000 */  sw      $t9, 0x0000($v1)           ## 00000000
/* 01458 80AD8B98 9608019E */  lhu     $t0, 0x019E($s0)           ## 0000019E
/* 0145C 80AD8B9C 3C0100FF */  lui     $at, 0x00FF                ## $at = 00FF0000
/* 01460 80AD8BA0 3421FFFF */  ori     $at, $at, 0xFFFF           ## $at = 00FFFFFF
/* 01464 80AD8BA4 00084880 */  sll     $t1, $t0,  2
/* 01468 80AD8BA8 00892021 */  addu    $a0, $a0, $t1
/* 0146C 80AD8BAC 8C848D54 */  lw      $a0, %lo(D_80AD8D54)($a0)
/* 01470 80AD8BB0 3C1980AE */  lui     $t9, %hi(func_80AD88D0)    ## $t9 = 80AE0000
/* 01474 80AD8BB4 273988D0 */  addiu   $t9, $t9, %lo(func_80AD88D0) ## $t9 = 80AD88D0
/* 01478 80AD8BB8 00045900 */  sll     $t3, $a0,  4
/* 0147C 80AD8BBC 000B6702 */  srl     $t4, $t3, 28
/* 01480 80AD8BC0 000C6880 */  sll     $t5, $t4,  2
/* 01484 80AD8BC4 01CD7021 */  addu    $t6, $t6, $t5
/* 01488 80AD8BC8 8DCE6FA8 */  lw      $t6, 0x6FA8($t6)           ## 80166FA8
/* 0148C 80AD8BCC 00815024 */  and     $t2, $a0, $at
/* 01490 80AD8BD0 3C018000 */  lui     $at, 0x8000                ## $at = 80000000
/* 01494 80AD8BD4 014E7821 */  addu    $t7, $t2, $t6
/* 01498 80AD8BD8 01E1C021 */  addu    $t8, $t7, $at
/* 0149C 80AD8BDC AC780004 */  sw      $t8, 0x0004($v1)           ## 00000004
/* 014A0 80AD8BE0 9207014E */  lbu     $a3, 0x014E($s0)           ## 0000014E
/* 014A4 80AD8BE4 8E06016C */  lw      $a2, 0x016C($s0)           ## 0000016C
/* 014A8 80AD8BE8 8E050150 */  lw      $a1, 0x0150($s0)           ## 00000150
/* 014AC 80AD8BEC AFB00018 */  sw      $s0, 0x0018($sp)
/* 014B0 80AD8BF0 AFB90014 */  sw      $t9, 0x0014($sp)
/* 014B4 80AD8BF4 AFA00010 */  sw      $zero, 0x0010($sp)
/* 014B8 80AD8BF8 0C0286B2 */  jal     SkelAnime_DrawSV
/* 014BC 80AD8BFC 8FA40054 */  lw      $a0, 0x0054($sp)
/* 014C0 80AD8C00 8FA80054 */  lw      $t0, 0x0054($sp)
/* 014C4 80AD8C04 3C0680AE */  lui     $a2, %hi(D_80AD8DD8)       ## $a2 = 80AE0000
/* 014C8 80AD8C08 24C68DD8 */  addiu   $a2, $a2, %lo(D_80AD8DD8)  ## $a2 = 80AD8DD8
/* 014CC 80AD8C0C 27A40038 */  addiu   $a0, $sp, 0x0038           ## $a0 = FFFFFFE8
/* 014D0 80AD8C10 240703BA */  addiu   $a3, $zero, 0x03BA         ## $a3 = 000003BA
/* 014D4 80AD8C14 0C031AD5 */  jal     Graph_CloseDisps
/* 014D8 80AD8C18 8D050000 */  lw      $a1, 0x0000($t0)           ## 00000000
/* 014DC 80AD8C1C 8FBF002C */  lw      $ra, 0x002C($sp)
/* 014E0 80AD8C20 8FB00028 */  lw      $s0, 0x0028($sp)
/* 014E4 80AD8C24 27BD0050 */  addiu   $sp, $sp, 0x0050           ## $sp = 00000000
/* 014E8 80AD8C28 03E00008 */  jr      $ra
/* 014EC 80AD8C2C 00000000 */  nop
