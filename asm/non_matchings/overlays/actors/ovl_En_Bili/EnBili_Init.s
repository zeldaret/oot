glabel EnBili_Init
/* 00000 809BF8A0 27BDFFC8 */  addiu   $sp, $sp, 0xFFC8           ## $sp = FFFFFFC8
/* 00004 809BF8A4 AFA5003C */  sw      $a1, 0x003C($sp)           
/* 00008 809BF8A8 AFBF002C */  sw      $ra, 0x002C($sp)           
/* 0000C 809BF8AC AFB00028 */  sw      $s0, 0x0028($sp)           
/* 00010 809BF8B0 3C05809C */  lui     $a1, %hi(D_809C1698)       ## $a1 = 809C0000
/* 00014 809BF8B4 00808025 */  or      $s0, $a0, $zero            ## $s0 = 00000000
/* 00018 809BF8B8 0C01E037 */  jal     Actor_ProcessInitChain
              
/* 0001C 809BF8BC 24A51698 */  addiu   $a1, $a1, %lo(D_809C1698)  ## $a1 = 809C1698
/* 00020 809BF8C0 3C068003 */  lui     $a2, %hi(ActorShadow_DrawFunc_Circle)
/* 00024 809BF8C4 24C6B5EC */  addiu   $a2, %lo(ActorShadow_DrawFunc_Circle)
/* 00028 809BF8C8 260400B4 */  addiu   $a0, $s0, 0x00B4           ## $a0 = 000000B4
/* 0002C 809BF8CC 24050000 */  addiu   $a1, $zero, 0x0000         ## $a1 = 00000000
/* 00030 809BF8D0 0C00AC78 */  jal     ActorShape_Init
              
/* 00034 809BF8D4 3C074188 */  lui     $a3, 0x4188                ## $a3 = 41880000
/* 00038 809BF8D8 240E009B */  addiu   $t6, $zero, 0x009B         ## $t6 = 0000009B
/* 0003C 809BF8DC A20E00C8 */  sb      $t6, 0x00C8($s0)           ## 000000C8
/* 00040 809BF8E0 3C060600 */  lui     $a2, %hi(D_06005848)                ## $a2 = 06000000
/* 00044 809BF8E4 3C070600 */  lui     $a3, %hi(D_060000A4)                ## $a3 = 06000000
/* 00048 809BF8E8 260F0198 */  addiu   $t7, $s0, 0x0198           ## $t7 = 00000198
/* 0004C 809BF8EC 261801B6 */  addiu   $t8, $s0, 0x01B6           ## $t8 = 000001B6
/* 00050 809BF8F0 24190005 */  addiu   $t9, $zero, 0x0005         ## $t9 = 00000005
/* 00054 809BF8F4 AFB90018 */  sw      $t9, 0x0018($sp)           
/* 00058 809BF8F8 AFB80014 */  sw      $t8, 0x0014($sp)           
/* 0005C 809BF8FC AFAF0010 */  sw      $t7, 0x0010($sp)           
/* 00060 809BF900 24E700A4 */  addiu   $a3, $a3, %lo(D_060000A4)           ## $a3 = 060000A4
/* 00064 809BF904 24C65848 */  addiu   $a2, $a2, %lo(D_06005848)           ## $a2 = 06005848
/* 00068 809BF908 8FA4003C */  lw      $a0, 0x003C($sp)           
/* 0006C 809BF90C 0C02915F */  jal     SkelAnime_Init
              
/* 00070 809BF910 2605014C */  addiu   $a1, $s0, 0x014C           ## $a1 = 0000014C
/* 00074 809BF914 260501D4 */  addiu   $a1, $s0, 0x01D4           ## $a1 = 000001D4
/* 00078 809BF918 AFA50030 */  sw      $a1, 0x0030($sp)           
/* 0007C 809BF91C 0C0170D9 */  jal     Collider_InitCylinder
              
/* 00080 809BF920 8FA4003C */  lw      $a0, 0x003C($sp)           
/* 00084 809BF924 3C07809C */  lui     $a3, %hi(D_809C1640)       ## $a3 = 809C0000
/* 00088 809BF928 8FA50030 */  lw      $a1, 0x0030($sp)           
/* 0008C 809BF92C 24E71640 */  addiu   $a3, $a3, %lo(D_809C1640)  ## $a3 = 809C1640
/* 00090 809BF930 8FA4003C */  lw      $a0, 0x003C($sp)           
/* 00094 809BF934 0C01712B */  jal     Collider_SetCylinder
              
/* 00098 809BF938 02003025 */  or      $a2, $s0, $zero            ## $a2 = 00000000
/* 0009C 809BF93C 3C05809C */  lui     $a1, %hi(D_809C1678)       ## $a1 = 809C0000
/* 000A0 809BF940 3C06809C */  lui     $a2, %hi(D_809C166C)       ## $a2 = 809C0000
/* 000A4 809BF944 24C6166C */  addiu   $a2, $a2, %lo(D_809C166C)  ## $a2 = 809C166C
/* 000A8 809BF948 24A51678 */  addiu   $a1, $a1, %lo(D_809C1678)  ## $a1 = 809C1678
/* 000AC 809BF94C 0C0187BF */  jal     CollisionCheck_SetInfo2              
/* 000B0 809BF950 26040098 */  addiu   $a0, $s0, 0x0098           ## $a0 = 00000098
/* 000B4 809BF954 8608001C */  lh      $t0, 0x001C($s0)           ## 0000001C
/* 000B8 809BF958 2401FFFF */  addiu   $at, $zero, 0xFFFF         ## $at = FFFFFFFF
/* 000BC 809BF95C A2000195 */  sb      $zero, 0x0195($s0)         ## 00000195
/* 000C0 809BF960 15010005 */  bne     $t0, $at, .L809BF978       
/* 000C4 809BF964 00000000 */  nop
/* 000C8 809BF968 0C26FE6F */  jal     func_809BF9BC              
/* 000CC 809BF96C 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 000D0 809BF970 10000004 */  beq     $zero, $zero, .L809BF984   
/* 000D4 809BF974 8FBF002C */  lw      $ra, 0x002C($sp)           
.L809BF978:
/* 000D8 809BF978 0C26FE85 */  jal     func_809BFA14              
/* 000DC 809BF97C 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 000E0 809BF980 8FBF002C */  lw      $ra, 0x002C($sp)           
.L809BF984:
/* 000E4 809BF984 8FB00028 */  lw      $s0, 0x0028($sp)           
/* 000E8 809BF988 27BD0038 */  addiu   $sp, $sp, 0x0038           ## $sp = 00000000
/* 000EC 809BF98C 03E00008 */  jr      $ra                        
/* 000F0 809BF990 00000000 */  nop
