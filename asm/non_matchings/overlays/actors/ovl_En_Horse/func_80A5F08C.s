glabel func_80A5F08C
/* 03D9C 80A5F08C 27BDFFD0 */  addiu   $sp, $sp, 0xFFD0           ## $sp = FFFFFFD0
/* 03DA0 80A5F090 3C028016 */  lui     $v0, %hi(gGameInfo)
/* 03DA4 80A5F094 8C42FA90 */  lw      $v0, %lo(gGameInfo)($v0)
/* 03DA8 80A5F098 AFBF002C */  sw      $ra, 0x002C($sp)
/* 03DAC 80A5F09C AFB10028 */  sw      $s1, 0x0028($sp)
/* 03DB0 80A5F0A0 AFB00024 */  sw      $s0, 0x0024($sp)
/* 03DB4 80A5F0A4 844E05BE */  lh      $t6, 0x05BE($v0)           ## 801605BE
/* 03DB8 80A5F0A8 00808025 */  or      $s0, $a0, $zero            ## $s0 = 00000000
/* 03DBC 80A5F0AC 00A08825 */  or      $s1, $a1, $zero            ## $s1 = 00000000
/* 03DC0 80A5F0B0 51C00029 */  beql    $t6, $zero, .L80A5F158
/* 03DC4 80A5F0B4 8E0B01F0 */  lw      $t3, 0x01F0($s0)           ## 000001F0
/* 03DC8 80A5F0B8 8C8F0158 */  lw      $t7, 0x0158($a0)           ## 00000158
/* 03DCC 80A5F0BC 55E00026 */  bnel    $t7, $zero, .L80A5F158
/* 03DD0 80A5F0C0 8E0B01F0 */  lw      $t3, 0x01F0($s0)           ## 000001F0
/* 03DD4 80A5F0C4 0C296F65 */  jal     func_80A5BD94
/* 03DD8 80A5F0C8 A44005BE */  sh      $zero, 0x05BE($v0)         ## 801605BE
/* 03DDC 80A5F0CC 10400021 */  beq     $v0, $zero, .L80A5F154
/* 03DE0 80A5F0D0 3C078013 */  lui     $a3, %hi(D_801333E0)
/* 03DE4 80A5F0D4 3C188013 */  lui     $t8, %hi(D_801333E8)
/* 03DE8 80A5F0D8 24E733E0 */  addiu   $a3, %lo(D_801333E0)
/* 03DEC 80A5F0DC 271833E8 */  addiu   $t8, %lo(D_801333E8)
/* 03DF0 80A5F0E0 AFB80014 */  sw      $t8, 0x0014($sp)
/* 03DF4 80A5F0E4 AFA70010 */  sw      $a3, 0x0010($sp)
/* 03DF8 80A5F0E8 24042805 */  addiu   $a0, $zero, 0x2805         ## $a0 = 00002805
/* 03DFC 80A5F0EC 260500E4 */  addiu   $a1, $s0, 0x00E4           ## $a1 = 000000E4
/* 03E00 80A5F0F0 0C03DCE3 */  jal     Audio_PlaySoundGeneral

/* 03E04 80A5F0F4 24060004 */  addiu   $a2, $zero, 0x0004         ## $a2 = 00000004
/* 03E08 80A5F0F8 8E1901F0 */  lw      $t9, 0x01F0($s0)           ## 000001F0
/* 03E0C 80A5F0FC 2401DFFF */  addiu   $at, $zero, 0xDFFF         ## $at = FFFFDFFF
/* 03E10 80A5F100 24050008 */  addiu   $a1, $zero, 0x0008         ## $a1 = 00000008
/* 03E14 80A5F104 03214024 */  and     $t0, $t9, $at
/* 03E18 80A5F108 AE0801F0 */  sw      $t0, 0x01F0($s0)           ## 000001F0
/* 03E1C 80A5F10C 862900A4 */  lh      $t1, 0x00A4($s1)           ## 000000A4
/* 03E20 80A5F110 3C018016 */  lui     $at, %hi(gSaveContext+0x1348)
/* 03E24 80A5F114 02003025 */  or      $a2, $s0, $zero            ## $a2 = 00000000
/* 03E28 80A5F118 A429F9A8 */  sh      $t1, %lo(gSaveContext+0x1348)($at)
/* 03E2C 80A5F11C 0C016AA4 */  jal     Camera_SetParam
/* 03E30 80A5F120 8E240790 */  lw      $a0, 0x0790($s1)           ## 00000790
/* 03E34 80A5F124 8E240790 */  lw      $a0, 0x0790($s1)           ## 00000790
/* 03E38 80A5F128 0C0169DF */  jal     Camera_ChangeSetting
/* 03E3C 80A5F12C 24050038 */  addiu   $a1, $zero, 0x0038         ## $a1 = 00000038
/* 03E40 80A5F130 8E240790 */  lw      $a0, 0x0790($s1)           ## 00000790
/* 03E44 80A5F134 240A0051 */  addiu   $t2, $zero, 0x0051         ## $t2 = 00000051
/* 03E48 80A5F138 AFAA0010 */  sw      $t2, 0x0010($sp)
/* 03E4C 80A5F13C AFA00018 */  sw      $zero, 0x0018($sp)
/* 03E50 80A5F140 AFA00014 */  sw      $zero, 0x0014($sp)
/* 03E54 80A5F144 24050004 */  addiu   $a1, $zero, 0x0004         ## $a1 = 00000004
/* 03E58 80A5F148 00003025 */  or      $a2, $zero, $zero          ## $a2 = 00000000
/* 03E5C 80A5F14C 0C016BF5 */  jal     Camera_SetCameraData
              ## setCameraData
/* 03E60 80A5F150 00003825 */  or      $a3, $zero, $zero          ## $a3 = 00000000
.L80A5F154:
/* 03E64 80A5F154 8E0B01F0 */  lw      $t3, 0x01F0($s0)           ## 000001F0
.L80A5F158:
/* 03E68 80A5F158 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 03E6C 80A5F15C 02202825 */  or      $a1, $s1, $zero            ## $a1 = 00000000
/* 03E70 80A5F160 316C2000 */  andi    $t4, $t3, 0x2000           ## $t4 = 00000000
/* 03E74 80A5F164 5580000E */  bnel    $t4, $zero, .L80A5F1A0
/* 03E78 80A5F168 8FBF002C */  lw      $ra, 0x002C($sp)
/* 03E7C 80A5F16C 0C297DD8 */  jal     func_80A5F760
/* 03E80 80A5F170 A6000250 */  sh      $zero, 0x0250($s0)         ## 00000250
/* 03E84 80A5F174 920D028A */  lbu     $t5, 0x028A($s0)           ## 0000028A
/* 03E88 80A5F178 920F02D6 */  lbu     $t7, 0x02D6($s0)           ## 000002D6
/* 03E8C 80A5F17C 92190322 */  lbu     $t9, 0x0322($s0)           ## 00000322
/* 03E90 80A5F180 35AE0001 */  ori     $t6, $t5, 0x0001           ## $t6 = 00000001
/* 03E94 80A5F184 35F80001 */  ori     $t8, $t7, 0x0001           ## $t8 = 00000001
/* 03E98 80A5F188 37280001 */  ori     $t0, $t9, 0x0001           ## $t0 = 00000001
/* 03E9C 80A5F18C A600001C */  sh      $zero, 0x001C($s0)         ## 0000001C
/* 03EA0 80A5F190 A20E028A */  sb      $t6, 0x028A($s0)           ## 0000028A
/* 03EA4 80A5F194 A21802D6 */  sb      $t8, 0x02D6($s0)           ## 000002D6
/* 03EA8 80A5F198 A2080322 */  sb      $t0, 0x0322($s0)           ## 00000322
/* 03EAC 80A5F19C 8FBF002C */  lw      $ra, 0x002C($sp)
.L80A5F1A0:
/* 03EB0 80A5F1A0 8FB00024 */  lw      $s0, 0x0024($sp)
/* 03EB4 80A5F1A4 8FB10028 */  lw      $s1, 0x0028($sp)
/* 03EB8 80A5F1A8 03E00008 */  jr      $ra
/* 03EBC 80A5F1AC 27BD0030 */  addiu   $sp, $sp, 0x0030           ## $sp = 00000000
