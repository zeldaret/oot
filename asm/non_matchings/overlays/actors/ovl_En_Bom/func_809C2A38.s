glabel func_809C2A38
/* 00368 809C2A38 27BDFFE0 */  addiu   $sp, $sp, 0xFFE0           ## $sp = FFFFFFE0
/* 0036C 809C2A3C AFBF001C */  sw      $ra, 0x001C($sp)           
/* 00370 809C2A40 AFB00018 */  sw      $s0, 0x0018($sp)           
/* 00374 809C2A44 AFA50024 */  sw      $a1, 0x0024($sp)           
/* 00378 809C2A48 8C8201B4 */  lw      $v0, 0x01B4($a0)           ## 000001B4
/* 0037C 809C2A4C 00808025 */  or      $s0, $a0, $zero            ## $s0 = 00000000
/* 00380 809C2A50 240500FF */  addiu   $a1, $zero, 0x00FF         ## $a1 = 000000FF
/* 00384 809C2A54 844E002E */  lh      $t6, 0x002E($v0)           ## 0000002E
/* 00388 809C2A58 24060014 */  addiu   $a2, $zero, 0x0014         ## $a2 = 00000014
/* 0038C 809C2A5C 55C00009 */  bnel    $t6, $zero, .L809C2A84     
/* 00390 809C2A60 84590036 */  lh      $t9, 0x0036($v0)           ## 00000036
/* 00394 809C2A64 8C8F0004 */  lw      $t7, 0x0004($a0)           ## 00000004
/* 00398 809C2A68 C48C0090 */  lwc1    $f12, 0x0090($a0)          ## 00000090
/* 0039C 809C2A6C 24070096 */  addiu   $a3, $zero, 0x0096         ## $a3 = 00000096
/* 003A0 809C2A70 35F80020 */  ori     $t8, $t7, 0x0020           ## $t8 = 00000020
/* 003A4 809C2A74 0C02A800 */  jal     func_800AA000              
/* 003A8 809C2A78 AC980004 */  sw      $t8, 0x0004($a0)           ## 00000004
/* 003AC 809C2A7C 8E0201B4 */  lw      $v0, 0x01B4($s0)           ## 000001B4
/* 003B0 809C2A80 84590036 */  lh      $t9, 0x0036($v0)           ## 00000036
.L809C2A84:
/* 003B4 809C2A84 860800B8 */  lh      $t0, 0x00B8($s0)           ## 000000B8
/* 003B8 809C2A88 24010001 */  addiu   $at, $zero, 0x0001         ## $at = 00000001
/* 003BC 809C2A8C 26060198 */  addiu   $a2, $s0, 0x0198           ## $a2 = 00000198
/* 003C0 809C2A90 03284821 */  addu    $t1, $t9, $t0              
/* 003C4 809C2A94 252A0008 */  addiu   $t2, $t1, 0x0008           ## $t2 = 00000008
/* 003C8 809C2A98 A44A0036 */  sh      $t2, 0x0036($v0)           ## 00000036
/* 003CC 809C2A9C 860B001C */  lh      $t3, 0x001C($s0)           ## 0000001C
/* 003D0 809C2AA0 8FA40024 */  lw      $a0, 0x0024($sp)           
/* 003D4 809C2AA4 15610004 */  bne     $t3, $at, .L809C2AB8       
/* 003D8 809C2AA8 3C010001 */  lui     $at, 0x0001                ## $at = 00010000
/* 003DC 809C2AAC 34211E60 */  ori     $at, $at, 0x1E60           ## $at = 00011E60
/* 003E0 809C2AB0 0C0175E7 */  jal     Actor_CollisionCheck_SetAT
              ## CollisionCheck_setAT
/* 003E4 809C2AB4 00812821 */  addu    $a1, $a0, $at              
.L809C2AB8:
/* 003E8 809C2AB8 8FA20024 */  lw      $v0, 0x0024($sp)           
/* 003EC 809C2ABC 3C010001 */  lui     $at, 0x0001                ## $at = 00010000
/* 003F0 809C2AC0 00411021 */  addu    $v0, $v0, $at              
/* 003F4 809C2AC4 84430AB6 */  lh      $v1, 0x0AB6($v0)           ## 00000AB6
/* 003F8 809C2AC8 10600002 */  beq     $v1, $zero, .L809C2AD4     
/* 003FC 809C2ACC 246DFFE7 */  addiu   $t5, $v1, 0xFFE7           ## $t5 = FFFFFFE7
/* 00400 809C2AD0 A44D0AB6 */  sh      $t5, 0x0AB6($v0)           ## 00000AB6
.L809C2AD4:
/* 00404 809C2AD4 84430AB8 */  lh      $v1, 0x0AB8($v0)           ## 00000AB8
/* 00408 809C2AD8 10600002 */  beq     $v1, $zero, .L809C2AE4     
/* 0040C 809C2ADC 246EFFE7 */  addiu   $t6, $v1, 0xFFE7           ## $t6 = FFFFFFE7
/* 00410 809C2AE0 A44E0AB8 */  sh      $t6, 0x0AB8($v0)           ## 00000AB8
.L809C2AE4:
/* 00414 809C2AE4 84430ABA */  lh      $v1, 0x0ABA($v0)           ## 00000ABA
/* 00418 809C2AE8 10600002 */  beq     $v1, $zero, .L809C2AF4     
/* 0041C 809C2AEC 246FFFE7 */  addiu   $t7, $v1, 0xFFE7           ## $t7 = FFFFFFE7
/* 00420 809C2AF0 A44F0ABA */  sh      $t7, 0x0ABA($v0)           ## 00000ABA
.L809C2AF4:
/* 00424 809C2AF4 84430AB0 */  lh      $v1, 0x0AB0($v0)           ## 00000AB0
/* 00428 809C2AF8 10600002 */  beq     $v1, $zero, .L809C2B04     
/* 0042C 809C2AFC 2478FFE7 */  addiu   $t8, $v1, 0xFFE7           ## $t8 = FFFFFFE7
/* 00430 809C2B00 A4580AB0 */  sh      $t8, 0x0AB0($v0)           ## 00000AB0
.L809C2B04:
/* 00434 809C2B04 84430AB2 */  lh      $v1, 0x0AB2($v0)           ## 00000AB2
/* 00438 809C2B08 10600002 */  beq     $v1, $zero, .L809C2B14     
/* 0043C 809C2B0C 2479FFE7 */  addiu   $t9, $v1, 0xFFE7           ## $t9 = FFFFFFE7
/* 00440 809C2B10 A4590AB2 */  sh      $t9, 0x0AB2($v0)           ## 00000AB2
.L809C2B14:
/* 00444 809C2B14 84430AB4 */  lh      $v1, 0x0AB4($v0)           ## 00000AB4
/* 00448 809C2B18 10600002 */  beq     $v1, $zero, .L809C2B24     
/* 0044C 809C2B1C 2468FFE7 */  addiu   $t0, $v1, 0xFFE7           ## $t0 = FFFFFFE7
/* 00450 809C2B20 A4480AB4 */  sh      $t0, 0x0AB4($v0)           ## 00000AB4
.L809C2B24:
/* 00454 809C2B24 860901F8 */  lh      $t1, 0x01F8($s0)           ## 000001F8
/* 00458 809C2B28 8FAA0024 */  lw      $t2, 0x0024($sp)           
/* 0045C 809C2B2C 55200012 */  bnel    $t1, $zero, .L809C2B78     
/* 00460 809C2B30 8FBF001C */  lw      $ra, 0x001C($sp)           
/* 00464 809C2B34 8D421C44 */  lw      $v0, 0x1C44($t2)           ## 00001C44
/* 00468 809C2B38 8C43067C */  lw      $v1, 0x067C($v0)           ## 0000067C
/* 0046C 809C2B3C 306B0800 */  andi    $t3, $v1, 0x0800           ## $t3 = 00000000
/* 00470 809C2B40 1160000A */  beq     $t3, $zero, .L809C2B6C     
/* 00474 809C2B44 00000000 */  nop
/* 00478 809C2B48 8C4C03AC */  lw      $t4, 0x03AC($v0)           ## 000003AC
/* 0047C 809C2B4C 2401F7FF */  addiu   $at, $zero, 0xF7FF         ## $at = FFFFF7FF
/* 00480 809C2B50 00616824 */  and     $t5, $v1, $at              
/* 00484 809C2B54 160C0005 */  bne     $s0, $t4, .L809C2B6C       
/* 00488 809C2B58 00000000 */  nop
/* 0048C 809C2B5C AC40011C */  sw      $zero, 0x011C($v0)         ## 0000011C
/* 00490 809C2B60 AC4003AC */  sw      $zero, 0x03AC($v0)         ## 000003AC
/* 00494 809C2B64 AC400438 */  sw      $zero, 0x0438($v0)         ## 00000438
/* 00498 809C2B68 AC4D067C */  sw      $t5, 0x067C($v0)           ## 0000067C
.L809C2B6C:
/* 0049C 809C2B6C 0C00B55C */  jal     Actor_Kill
              
/* 004A0 809C2B70 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 004A4 809C2B74 8FBF001C */  lw      $ra, 0x001C($sp)           
.L809C2B78:
/* 004A8 809C2B78 8FB00018 */  lw      $s0, 0x0018($sp)           
/* 004AC 809C2B7C 27BD0020 */  addiu   $sp, $sp, 0x0020           ## $sp = 00000000
/* 004B0 809C2B80 03E00008 */  jr      $ra                        
/* 004B4 809C2B84 00000000 */  nop


