glabel EnDs_Init
/* 00000 809FD030 27BDFFC8 */  addiu   $sp, $sp, 0xFFC8           ## $sp = FFFFFFC8
/* 00004 809FD034 AFB00028 */  sw      $s0, 0x0028($sp)
/* 00008 809FD038 00808025 */  or      $s0, $a0, $zero            ## $s0 = 00000000
/* 0000C 809FD03C AFBF002C */  sw      $ra, 0x002C($sp)
/* 00010 809FD040 AFA5003C */  sw      $a1, 0x003C($sp)
/* 00014 809FD044 3C068003 */  lui     $a2, 0x8003                ## $a2 = 80030000
/* 00018 809FD048 24C6B5EC */  addiu   $a2, $a2, 0xB5EC           ## $a2 = 8002B5EC
/* 0001C 809FD04C 24050000 */  addiu   $a1, $zero, 0x0000         ## $a1 = 00000000
/* 00020 809FD050 248400B4 */  addiu   $a0, $a0, 0x00B4           ## $a0 = 000000B4
/* 00024 809FD054 0C00AC78 */  jal     ActorShape_Init

/* 00028 809FD058 3C074210 */  lui     $a3, 0x4210                ## $a3 = 42100000
/* 0002C 809FD05C 2605014C */  addiu   $a1, $s0, 0x014C           ## $a1 = 0000014C
/* 00030 809FD060 3C060600 */  lui     $a2, 0x0600                ## $a2 = 06000000
/* 00034 809FD064 3C070600 */  lui     $a3, 0x0600                ## $a3 = 06000000
/* 00038 809FD068 260E0190 */  addiu   $t6, $s0, 0x0190           ## $t6 = 00000190
/* 0003C 809FD06C 260F01B4 */  addiu   $t7, $s0, 0x01B4           ## $t7 = 000001B4
/* 00040 809FD070 24180006 */  addiu   $t8, $zero, 0x0006         ## $t8 = 00000006
/* 00044 809FD074 AFB80018 */  sw      $t8, 0x0018($sp)
/* 00048 809FD078 AFAF0014 */  sw      $t7, 0x0014($sp)
/* 0004C 809FD07C AFAE0010 */  sw      $t6, 0x0010($sp)
/* 00050 809FD080 24E7039C */  addiu   $a3, $a3, 0x039C           ## $a3 = 0600039C
/* 00054 809FD084 24C64768 */  addiu   $a2, $a2, 0x4768           ## $a2 = 06004768
/* 00058 809FD088 AFA50030 */  sw      $a1, 0x0030($sp)
/* 0005C 809FD08C 0C0291BE */  jal     SkelAnime_InitSV
/* 00060 809FD090 8FA4003C */  lw      $a0, 0x003C($sp)
/* 00064 809FD094 3C050600 */  lui     $a1, 0x0600                ## $a1 = 06000000
/* 00068 809FD098 24A5039C */  addiu   $a1, $a1, 0x039C           ## $a1 = 0600039C
/* 0006C 809FD09C 0C02947A */  jal     func_800A51E8
/* 00070 809FD0A0 8FA40030 */  lw      $a0, 0x0030($sp)
/* 00074 809FD0A4 241900FF */  addiu   $t9, $zero, 0x00FF         ## $t9 = 000000FF
/* 00078 809FD0A8 3C053C54 */  lui     $a1, 0x3C54                ## $a1 = 3C540000
/* 0007C 809FD0AC A21900AE */  sb      $t9, 0x00AE($s0)           ## 000000AE
/* 00080 809FD0B0 34A5FDF4 */  ori     $a1, $a1, 0xFDF4           ## $a1 = 3C54FDF4
/* 00084 809FD0B4 0C00B58B */  jal     Actor_SetScale

/* 00088 809FD0B8 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 0008C 809FD0BC 8E0A0004 */  lw      $t2, 0x0004($s0)           ## 00000004
/* 00090 809FD0C0 44802000 */  mtc1    $zero, $f4                 ## $f4 = 0.00
/* 00094 809FD0C4 3C0880A0 */  lui     $t0, %hi(func_809FD7B4)    ## $t0 = 80A00000
/* 00098 809FD0C8 2401FFFE */  addiu   $at, $zero, 0xFFFE         ## $at = FFFFFFFE
/* 0009C 809FD0CC 2508D7B4 */  addiu   $t0, $t0, %lo(func_809FD7B4) ## $t0 = 809FD7B4
/* 000A0 809FD0D0 24090001 */  addiu   $t1, $zero, 0x0001         ## $t1 = 00000001
/* 000A4 809FD0D4 01415824 */  and     $t3, $t2, $at
/* 000A8 809FD0D8 AE0801EC */  sw      $t0, 0x01EC($s0)           ## 000001EC
/* 000AC 809FD0DC A209001F */  sb      $t1, 0x001F($s0)           ## 0000001F
/* 000B0 809FD0E0 A60001E8 */  sh      $zero, 0x01E8($s0)         ## 000001E8
/* 000B4 809FD0E4 AE0B0004 */  sw      $t3, 0x0004($s0)           ## 00000004
/* 000B8 809FD0E8 E60401E4 */  swc1    $f4, 0x01E4($s0)           ## 000001E4
/* 000BC 809FD0EC 8FBF002C */  lw      $ra, 0x002C($sp)
/* 000C0 809FD0F0 8FB00028 */  lw      $s0, 0x0028($sp)
/* 000C4 809FD0F4 27BD0038 */  addiu   $sp, $sp, 0x0038           ## $sp = 00000000
/* 000C8 809FD0F8 03E00008 */  jr      $ra
/* 000CC 809FD0FC 00000000 */  nop


