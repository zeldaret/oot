glabel EnLightbox_Init
/* 00000 80A9E9D0 27BDFFC0 */  addiu   $sp, $sp, 0xFFC0           ## $sp = FFFFFFC0
/* 00004 80A9E9D4 AFBF001C */  sw      $ra, 0x001C($sp)           
/* 00008 80A9E9D8 AFB00018 */  sw      $s0, 0x0018($sp)           
/* 0000C 80A9E9DC AFA50044 */  sw      $a1, 0x0044($sp)           
/* 00010 80A9E9E0 AFA0003C */  sw      $zero, 0x003C($sp)         
/* 00014 80A9E9E4 8482001C */  lh      $v0, 0x001C($a0)           ## 0000001C
/* 00018 80A9E9E8 00808025 */  or      $s0, $a0, $zero            ## $s0 = 00000000
/* 0001C 80A9E9EC 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 00020 80A9E9F0 1040000C */  beq     $v0, $zero, .L80A9EA24     
/* 00024 80A9E9F4 3C053CCC */  lui     $a1, 0x3CCC                ## $a1 = 3CCC0000
/* 00028 80A9E9F8 24010001 */  addiu   $at, $zero, 0x0001         ## $at = 00000001
/* 0002C 80A9E9FC 1041000D */  beq     $v0, $at, .L80A9EA34       
/* 00030 80A9EA00 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 00034 80A9EA04 24010002 */  addiu   $at, $zero, 0x0002         ## $at = 00000002
/* 00038 80A9EA08 1041000F */  beq     $v0, $at, .L80A9EA48       
/* 0003C 80A9EA0C 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 00040 80A9EA10 24010003 */  addiu   $at, $zero, 0x0003         ## $at = 00000003
/* 00044 80A9EA14 10410011 */  beq     $v0, $at, .L80A9EA5C       
/* 00048 80A9EA18 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 0004C 80A9EA1C 10000013 */  beq     $zero, $zero, .L80A9EA6C   
/* 00050 80A9EA20 8E0F0024 */  lw      $t7, 0x0024($s0)           ## 00000024
.L80A9EA24:
/* 00054 80A9EA24 0C00B58B */  jal     Actor_SetScale
              
/* 00058 80A9EA28 34A5CCCD */  ori     $a1, $a1, 0xCCCD           ## $a1 = 3CCCCCCD
/* 0005C 80A9EA2C 1000000F */  beq     $zero, $zero, .L80A9EA6C   
/* 00060 80A9EA30 8E0F0024 */  lw      $t7, 0x0024($s0)           ## 00000024
.L80A9EA34:
/* 00064 80A9EA34 3C053D4C */  lui     $a1, 0x3D4C                ## $a1 = 3D4C0000
/* 00068 80A9EA38 0C00B58B */  jal     Actor_SetScale
              
/* 0006C 80A9EA3C 34A5CCCD */  ori     $a1, $a1, 0xCCCD           ## $a1 = 3D4CCCCD
/* 00070 80A9EA40 1000000A */  beq     $zero, $zero, .L80A9EA6C   
/* 00074 80A9EA44 8E0F0024 */  lw      $t7, 0x0024($s0)           ## 00000024
.L80A9EA48:
/* 00078 80A9EA48 3C053D99 */  lui     $a1, 0x3D99                ## $a1 = 3D990000
/* 0007C 80A9EA4C 0C00B58B */  jal     Actor_SetScale
              
/* 00080 80A9EA50 34A5999A */  ori     $a1, $a1, 0x999A           ## $a1 = 3D99999A
/* 00084 80A9EA54 10000005 */  beq     $zero, $zero, .L80A9EA6C   
/* 00088 80A9EA58 8E0F0024 */  lw      $t7, 0x0024($s0)           ## 00000024
.L80A9EA5C:
/* 0008C 80A9EA5C 3C053DCC */  lui     $a1, 0x3DCC                ## $a1 = 3DCC0000
/* 00090 80A9EA60 0C00B58B */  jal     Actor_SetScale
              
/* 00094 80A9EA64 34A5CCCD */  ori     $a1, $a1, 0xCCCD           ## $a1 = 3DCCCCCD
/* 00098 80A9EA68 8E0F0024 */  lw      $t7, 0x0024($s0)           ## 00000024
.L80A9EA6C:
/* 0009C 80A9EA6C 8E0E0028 */  lw      $t6, 0x0028($s0)           ## 00000028
/* 000A0 80A9EA70 2418001E */  addiu   $t8, $zero, 0x001E         ## $t8 = 0000001E
/* 000A4 80A9EA74 AE0F0038 */  sw      $t7, 0x0038($s0)           ## 00000038
/* 000A8 80A9EA78 8E0F002C */  lw      $t7, 0x002C($s0)           ## 0000002C
/* 000AC 80A9EA7C 24190032 */  addiu   $t9, $zero, 0x0032         ## $t9 = 00000032
/* 000B0 80A9EA80 3C068003 */  lui     $a2, 0x8003                ## $a2 = 80030000
/* 000B4 80A9EA84 A61800A8 */  sh      $t8, 0x00A8($s0)           ## 000000A8
/* 000B8 80A9EA88 A61900AA */  sh      $t9, 0x00AA($s0)           ## 000000AA
/* 000BC 80A9EA8C 24C6B5EC */  addiu   $a2, $a2, 0xB5EC           ## $a2 = 8002B5EC
/* 000C0 80A9EA90 260400B4 */  addiu   $a0, $s0, 0x00B4           ## $a0 = 000000B4
/* 000C4 80A9EA94 24050000 */  addiu   $a1, $zero, 0x0000         ## $a1 = 00000000
/* 000C8 80A9EA98 3C0740C0 */  lui     $a3, 0x40C0                ## $a3 = 40C00000
/* 000CC 80A9EA9C AE0E003C */  sw      $t6, 0x003C($s0)           ## 0000003C
/* 000D0 80A9EAA0 0C00AC78 */  jal     ActorShape_Init
              
/* 000D4 80A9EAA4 AE0F0040 */  sw      $t7, 0x0040($s0)           ## 00000040
/* 000D8 80A9EAA8 3C01C000 */  lui     $at, 0xC000                ## $at = C0000000
/* 000DC 80A9EAAC 44812000 */  mtc1    $at, $f4                   ## $f4 = -2.00
/* 000E0 80A9EAB0 3C040600 */  lui     $a0, 0x0600                ## $a0 = 06000000
/* 000E4 80A9EAB4 A2000160 */  sb      $zero, 0x0160($s0)         ## 00000160
/* 000E8 80A9EAB8 AE00015C */  sw      $zero, 0x015C($s0)         ## 0000015C
/* 000EC 80A9EABC A200001F */  sb      $zero, 0x001F($s0)         ## 0000001F
/* 000F0 80A9EAC0 24841F10 */  addiu   $a0, $a0, 0x1F10           ## $a0 = 06001F10
/* 000F4 80A9EAC4 27A5003C */  addiu   $a1, $sp, 0x003C           ## $a1 = FFFFFFFC
/* 000F8 80A9EAC8 0C010620 */  jal     DynaPolyInfo_Alloc
              
/* 000FC 80A9EACC E604006C */  swc1    $f4, 0x006C($s0)           ## 0000006C
/* 00100 80A9EAD0 8FA40044 */  lw      $a0, 0x0044($sp)           
/* 00104 80A9EAD4 02003025 */  or      $a2, $s0, $zero            ## $a2 = 00000000
/* 00108 80A9EAD8 8FA7003C */  lw      $a3, 0x003C($sp)           
/* 0010C 80A9EADC 0C00FA9D */  jal     DynaPolyInfo_RegisterActor
              ## DynaPolyInfo_setActor
/* 00110 80A9EAE0 24850810 */  addiu   $a1, $a0, 0x0810           ## $a1 = 00000810
/* 00114 80A9EAE4 AE02014C */  sw      $v0, 0x014C($s0)           ## 0000014C
/* 00118 80A9EAE8 8FBF001C */  lw      $ra, 0x001C($sp)           
/* 0011C 80A9EAEC 8FB00018 */  lw      $s0, 0x0018($sp)           
/* 00120 80A9EAF0 27BD0040 */  addiu   $sp, $sp, 0x0040           ## $sp = 00000000
/* 00124 80A9EAF4 03E00008 */  jr      $ra                        
/* 00128 80A9EAF8 00000000 */  nop


