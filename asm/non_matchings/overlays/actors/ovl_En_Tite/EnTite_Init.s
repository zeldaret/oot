glabel EnTite_Init
/* 00008 80B18A88 27BDFFC8 */  addiu   $sp, $sp, 0xFFC8           ## $sp = FFFFFFC8
/* 0000C 80B18A8C AFA5003C */  sw      $a1, 0x003C($sp)           
/* 00010 80B18A90 AFBF002C */  sw      $ra, 0x002C($sp)           
/* 00014 80B18A94 AFB00028 */  sw      $s0, 0x0028($sp)           
/* 00018 80B18A98 3C0580B2 */  lui     $a1, %hi(D_80B1B624)       ## $a1 = 80B20000
/* 0001C 80B18A9C 00808025 */  or      $s0, $a0, $zero            ## $s0 = 00000000
/* 00020 80B18AA0 0C01E037 */  jal     Actor_ProcessInitChain
              
/* 00024 80B18AA4 24A5B624 */  addiu   $a1, $a1, %lo(D_80B1B624)  ## $a1 = 80B1B624
/* 00028 80B18AA8 240E0003 */  addiu   $t6, $zero, 0x0003         ## $t6 = 00000003
/* 0002C 80B18AAC 3C053C23 */  lui     $a1, 0x3C23                ## $a1 = 3C230000
/* 00030 80B18AB0 A20E001F */  sb      $t6, 0x001F($s0)           ## 0000001F
/* 00034 80B18AB4 34A5D70A */  ori     $a1, $a1, 0xD70A           ## $a1 = 3C23D70A
/* 00038 80B18AB8 0C00B58B */  jal     Actor_SetScale
              
/* 0003C 80B18ABC 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 00040 80B18AC0 3C060600 */  lui     $a2, 0x0600                ## $a2 = 06000000
/* 00044 80B18AC4 3C070600 */  lui     $a3, 0x0600                ## $a3 = 06000000
/* 00048 80B18AC8 260F0190 */  addiu   $t7, $s0, 0x0190           ## $t7 = 00000190
/* 0004C 80B18ACC 26180226 */  addiu   $t8, $s0, 0x0226           ## $t8 = 00000226
/* 00050 80B18AD0 24190019 */  addiu   $t9, $zero, 0x0019         ## $t9 = 00000019
/* 00054 80B18AD4 AFB90018 */  sw      $t9, 0x0018($sp)           
/* 00058 80B18AD8 AFB80014 */  sw      $t8, 0x0014($sp)           
/* 0005C 80B18ADC AFAF0010 */  sw      $t7, 0x0010($sp)           
/* 00060 80B18AE0 24E712E4 */  addiu   $a3, $a3, 0x12E4           ## $a3 = 060012E4
/* 00064 80B18AE4 24C63A20 */  addiu   $a2, $a2, 0x3A20           ## $a2 = 06003A20
/* 00068 80B18AE8 8FA4003C */  lw      $a0, 0x003C($sp)           
/* 0006C 80B18AEC 0C02915F */  jal     SkelAnime_Init
              
/* 00070 80B18AF0 2605014C */  addiu   $a1, $s0, 0x014C           ## $a1 = 0000014C
/* 00074 80B18AF4 3C068003 */  lui     $a2, %hi(ActorShadow_DrawFunc_Circle)
/* 00078 80B18AF8 24C6B5EC */  addiu   $a2, %lo(ActorShadow_DrawFunc_Circle)
/* 0007C 80B18AFC 260400B4 */  addiu   $a0, $s0, 0x00B4           ## $a0 = 000000B4
/* 00080 80B18B00 3C05C348 */  lui     $a1, 0xC348                ## $a1 = C3480000
/* 00084 80B18B04 0C00AC78 */  jal     ActorShape_Init
              
/* 00088 80B18B08 3C07428C */  lui     $a3, 0x428C                ## $a3 = 428C0000
/* 0008C 80B18B0C 8E090028 */  lw      $t1, 0x0028($s0)           ## 00000028
/* 00090 80B18B10 3C0141A0 */  lui     $at, 0x41A0                ## $at = 41A00000
/* 00094 80B18B14 8E0A0024 */  lw      $t2, 0x0024($s0)           ## 00000024
/* 00098 80B18B18 AE09003C */  sw      $t1, 0x003C($s0)           ## 0000003C
/* 0009C 80B18B1C C604003C */  lwc1    $f4, 0x003C($s0)           ## 0000003C
/* 000A0 80B18B20 44813000 */  mtc1    $at, $f6                   ## $f6 = 20.00
/* 000A4 80B18B24 AE0A0038 */  sw      $t2, 0x0038($s0)           ## 00000038
/* 000A8 80B18B28 8E0A002C */  lw      $t2, 0x002C($s0)           ## 0000002C
/* 000AC 80B18B2C 46062200 */  add.s   $f8, $f4, $f6              
/* 000B0 80B18B30 3C0880B2 */  lui     $t0, %hi(D_80B1B604)       ## $t0 = 80B20000
/* 000B4 80B18B34 2508B604 */  addiu   $t0, $t0, %lo(D_80B1B604)  ## $t0 = 80B1B604
/* 000B8 80B18B38 240B0002 */  addiu   $t3, $zero, 0x0002         ## $t3 = 00000002
/* 000BC 80B18B3C 240C00FE */  addiu   $t4, $zero, 0x00FE         ## $t4 = 000000FE
/* 000C0 80B18B40 A20002BD */  sb      $zero, 0x02BD($s0)         ## 000002BD
/* 000C4 80B18B44 AE080098 */  sw      $t0, 0x0098($s0)           ## 00000098
/* 000C8 80B18B48 A60002E0 */  sh      $zero, 0x02E0($s0)         ## 000002E0
/* 000CC 80B18B4C AE0002D4 */  sw      $zero, 0x02D4($s0)         ## 000002D4
/* 000D0 80B18B50 E608003C */  swc1    $f8, 0x003C($s0)           ## 0000003C
/* 000D4 80B18B54 A20B00AF */  sb      $t3, 0x00AF($s0)           ## 000000AF
/* 000D8 80B18B58 A20C00AE */  sb      $t4, 0x00AE($s0)           ## 000000AE
/* 000DC 80B18B5C 260502E8 */  addiu   $a1, $s0, 0x02E8           ## $a1 = 000002E8
/* 000E0 80B18B60 AE0A0040 */  sw      $t2, 0x0040($s0)           ## 00000040
/* 000E4 80B18B64 AFA50030 */  sw      $a1, 0x0030($sp)           
/* 000E8 80B18B68 0C016EFE */  jal     func_8005BBF8              
/* 000EC 80B18B6C 8FA4003C */  lw      $a0, 0x003C($sp)           
/* 000F0 80B18B70 3C0780B2 */  lui     $a3, %hi(D_80B1B5F4)       ## $a3 = 80B20000
/* 000F4 80B18B74 260D0308 */  addiu   $t5, $s0, 0x0308           ## $t5 = 00000308
/* 000F8 80B18B78 8FA50030 */  lw      $a1, 0x0030($sp)           
/* 000FC 80B18B7C AFAD0010 */  sw      $t5, 0x0010($sp)           
/* 00100 80B18B80 24E7B5F4 */  addiu   $a3, $a3, %lo(D_80B1B5F4)  ## $a3 = 80B1B5F4
/* 00104 80B18B84 8FA4003C */  lw      $a0, 0x003C($sp)           
/* 00108 80B18B88 0C017014 */  jal     func_8005C050              
/* 0010C 80B18B8C 02003025 */  or      $a2, $s0, $zero            ## $a2 = 00000000
/* 00110 80B18B90 860F001C */  lh      $t7, 0x001C($s0)           ## 0000001C
/* 00114 80B18B94 240E001D */  addiu   $t6, $zero, 0x001D         ## $t6 = 0000001D
/* 00118 80B18B98 2401FFFE */  addiu   $at, $zero, 0xFFFE         ## $at = FFFFFFFE
/* 0011C 80B18B9C 15E10008 */  bne     $t7, $at, .L80B18BC0       
/* 00120 80B18BA0 AE0E02DC */  sw      $t6, 0x02DC($s0)           ## 000002DC
/* 00124 80B18BA4 92090117 */  lbu     $t1, 0x0117($s0)           ## 00000117
/* 00128 80B18BA8 35D90040 */  ori     $t9, $t6, 0x0040           ## $t9 = 0000005D
/* 0012C 80B18BAC 24080004 */  addiu   $t0, $zero, 0x0004         ## $t0 = 00000004
/* 00130 80B18BB0 252A0001 */  addiu   $t2, $t1, 0x0001           ## $t2 = 00000001
/* 00134 80B18BB4 AE1902DC */  sw      $t9, 0x02DC($s0)           ## 000002DC
/* 00138 80B18BB8 A20800AF */  sb      $t0, 0x00AF($s0)           ## 000000AF
/* 0013C 80B18BBC A20A0117 */  sb      $t2, 0x0117($s0)           ## 00000117
.L80B18BC0:
/* 00140 80B18BC0 0C2C6317 */  jal     func_80B18C5C              
/* 00144 80B18BC4 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 00148 80B18BC8 8FBF002C */  lw      $ra, 0x002C($sp)           
/* 0014C 80B18BCC 8FB00028 */  lw      $s0, 0x0028($sp)           
/* 00150 80B18BD0 27BD0038 */  addiu   $sp, $sp, 0x0038           ## $sp = 00000000
/* 00154 80B18BD4 03E00008 */  jr      $ra                        
/* 00158 80B18BD8 00000000 */  nop
