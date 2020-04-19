glabel EnGSwitch_Update
/* 00F70 80A22E30 27BDFFA0 */  addiu   $sp, $sp, 0xFFA0           ## $sp = FFFFFFA0
/* 00F74 80A22E34 AFB00048 */  sw      $s0, 0x0048($sp)           
/* 00F78 80A22E38 00808025 */  or      $s0, $a0, $zero            ## $s0 = 00000000
/* 00F7C 80A22E3C AFBF004C */  sw      $ra, 0x004C($sp)           
/* 00F80 80A22E40 AFA50064 */  sw      $a1, 0x0064($sp)           
/* 00F84 80A22E44 8E19014C */  lw      $t9, 0x014C($s0)           ## 0000014C
/* 00F88 80A22E48 0320F809 */  jalr    $ra, $t9                   
/* 00F8C 80A22E4C 00000000 */  nop
/* 00F90 80A22E50 86020156 */  lh      $v0, 0x0156($s0)           ## 00000156
/* 00F94 80A22E54 24010001 */  addiu   $at, $zero, 0x0001         ## $at = 00000001
/* 00F98 80A22E58 10400002 */  beq     $v0, $zero, .L80A22E64     
/* 00F9C 80A22E5C 244EFFFF */  addiu   $t6, $v0, 0xFFFF           ## $t6 = FFFFFFFF
/* 00FA0 80A22E60 A60E0156 */  sh      $t6, 0x0156($s0)           ## 00000156
.L80A22E64:
/* 00FA4 80A22E64 86020164 */  lh      $v0, 0x0164($s0)           ## 00000164
/* 00FA8 80A22E68 10400002 */  beq     $v0, $zero, .L80A22E74     
/* 00FAC 80A22E6C 244FFFFF */  addiu   $t7, $v0, 0xFFFF           ## $t7 = FFFFFFFF
/* 00FB0 80A22E70 A60F0164 */  sh      $t7, 0x0164($s0)           ## 00000164
.L80A22E74:
/* 00FB4 80A22E74 86020162 */  lh      $v0, 0x0162($s0)           ## 00000162
/* 00FB8 80A22E78 10400002 */  beq     $v0, $zero, .L80A22E84     
/* 00FBC 80A22E7C 2458FFFF */  addiu   $t8, $v0, 0xFFFF           ## $t8 = FFFFFFFF
/* 00FC0 80A22E80 A6180162 */  sh      $t8, 0x0162($s0)           ## 00000162
.L80A22E84:
/* 00FC4 80A22E84 86020150 */  lh      $v0, 0x0150($s0)           ## 00000150
/* 00FC8 80A22E88 50400014 */  beql    $v0, $zero, .L80A22EDC     
/* 00FCC 80A22E8C 8E090134 */  lw      $t1, 0x0134($s0)           ## 00000134
/* 00FD0 80A22E90 10410011 */  beq     $v0, $at, .L80A22ED8       
/* 00FD4 80A22E94 24010003 */  addiu   $at, $zero, 0x0003         ## $at = 00000003
/* 00FD8 80A22E98 50410010 */  beql    $v0, $at, .L80A22EDC       
/* 00FDC 80A22E9C 8E090134 */  lw      $t1, 0x0134($s0)           ## 00000134
/* 00FE0 80A22EA0 0C00B638 */  jal     Actor_MoveForward
              
/* 00FE4 80A22EA4 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 00FE8 80A22EA8 3C014248 */  lui     $at, 0x4248                ## $at = 42480000
/* 00FEC 80A22EAC 44810000 */  mtc1    $at, $f0                   ## $f0 = 50.00
/* 00FF0 80A22EB0 3C0142C8 */  lui     $at, 0x42C8                ## $at = 42C80000
/* 00FF4 80A22EB4 44812000 */  mtc1    $at, $f4                   ## $f4 = 100.00
/* 00FF8 80A22EB8 2408001C */  addiu   $t0, $zero, 0x001C         ## $t0 = 0000001C
/* 00FFC 80A22EBC 44060000 */  mfc1    $a2, $f0                   
/* 01000 80A22EC0 44070000 */  mfc1    $a3, $f0                   
/* 01004 80A22EC4 AFA80014 */  sw      $t0, 0x0014($sp)           
/* 01008 80A22EC8 8FA40064 */  lw      $a0, 0x0064($sp)           
/* 0100C 80A22ECC 02002825 */  or      $a1, $s0, $zero            ## $a1 = 00000000
/* 01010 80A22ED0 0C00B92D */  jal     func_8002E4B4              
/* 01014 80A22ED4 E7A40010 */  swc1    $f4, 0x0010($sp)           
.L80A22ED8:
/* 01018 80A22ED8 8E090134 */  lw      $t1, 0x0134($s0)           ## 00000134
.L80A22EDC:
/* 0101C 80A22EDC 1120001A */  beq     $t1, $zero, .L80A22F48     
/* 01020 80A22EE0 00000000 */  nop
/* 01024 80A22EE4 860A0150 */  lh      $t2, 0x0150($s0)           ## 00000150
/* 01028 80A22EE8 24010003 */  addiu   $at, $zero, 0x0003         ## $at = 00000003
/* 0102C 80A22EEC 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 01030 80A22EF0 55410004 */  bnel    $t2, $at, .L80A22F04       
/* 01034 80A22EF4 8E02014C */  lw      $v0, 0x014C($s0)           ## 0000014C
/* 01038 80A22EF8 0C288CC5 */  jal     func_80A23314              
/* 0103C 80A22EFC 8FA50064 */  lw      $a1, 0x0064($sp)           
/* 01040 80A22F00 8E02014C */  lw      $v0, 0x014C($s0)           ## 0000014C
.L80A22F04:
/* 01044 80A22F04 3C0B80A2 */  lui     $t3, %hi(func_80A22E00)    ## $t3 = 80A20000
/* 01048 80A22F08 256B2E00 */  addiu   $t3, $t3, %lo(func_80A22E00) ## $t3 = 80A22E00
/* 0104C 80A22F0C 1162000E */  beq     $t3, $v0, .L80A22F48       
/* 01050 80A22F10 3C0C80A2 */  lui     $t4, %hi(func_80A22598)    ## $t4 = 80A20000
/* 01054 80A22F14 258C2598 */  addiu   $t4, $t4, %lo(func_80A22598) ## $t4 = 80A22598
/* 01058 80A22F18 1182000B */  beq     $t4, $v0, .L80A22F48       
/* 0105C 80A22F1C 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 01060 80A22F20 2606017C */  addiu   $a2, $s0, 0x017C           ## $a2 = 0000017C
/* 01064 80A22F24 00C02825 */  or      $a1, $a2, $zero            ## $a1 = 0000017C
/* 01068 80A22F28 0C0189B7 */  jal     ActorCollider_Cylinder_Update
              
/* 0106C 80A22F2C AFA60054 */  sw      $a2, 0x0054($sp)           
/* 01070 80A22F30 8FA40064 */  lw      $a0, 0x0064($sp)           
/* 01074 80A22F34 3C010001 */  lui     $at, 0x0001                ## $at = 00010000
/* 01078 80A22F38 34211E60 */  ori     $at, $at, 0x1E60           ## $at = 00011E60
/* 0107C 80A22F3C 8FA60054 */  lw      $a2, 0x0054($sp)           
/* 01080 80A22F40 0C01767D */  jal     Actor_CollisionCheck_SetAC
              ## CollisionCheck_setAC
/* 01084 80A22F44 00812821 */  addu    $a1, $a0, $at              
.L80A22F48:
/* 01088 80A22F48 3C198016 */  lui     $t9, %hi(gGameInfo)
/* 0108C 80A22F4C 8F39FA90 */  lw      $t9, %lo(gGameInfo)($t9)
/* 01090 80A22F50 872E12D4 */  lh      $t6, 0x12D4($t9)           ## 801612D4
/* 01094 80A22F54 51C0001D */  beql    $t6, $zero, .L80A22FCC     
/* 01098 80A22F58 8FBF004C */  lw      $ra, 0x004C($sp)           
/* 0109C 80A22F5C 860F0150 */  lh      $t7, 0x0150($s0)           ## 00000150
/* 010A0 80A22F60 3C013F80 */  lui     $at, 0x3F80                ## $at = 3F800000
/* 010A4 80A22F64 240900FF */  addiu   $t1, $zero, 0x00FF         ## $t1 = 000000FF
/* 010A8 80A22F68 15E00017 */  bne     $t7, $zero, .L80A22FC8     
/* 010AC 80A22F6C 240A00FF */  addiu   $t2, $zero, 0x00FF         ## $t2 = 000000FF
/* 010B0 80A22F70 86180032 */  lh      $t8, 0x0032($s0)           ## 00000032
/* 010B4 80A22F74 C60C0024 */  lwc1    $f12, 0x0024($s0)          ## 00000024
/* 010B8 80A22F78 C60E0028 */  lwc1    $f14, 0x0028($s0)          ## 00000028
/* 010BC 80A22F7C 8E06002C */  lw      $a2, 0x002C($s0)           ## 0000002C
/* 010C0 80A22F80 86070030 */  lh      $a3, 0x0030($s0)           ## 00000030
/* 010C4 80A22F84 AFB80010 */  sw      $t8, 0x0010($sp)           
/* 010C8 80A22F88 86080034 */  lh      $t0, 0x0034($s0)           ## 00000034
/* 010CC 80A22F8C 44810000 */  mtc1    $at, $f0                   ## $f0 = 1.00
/* 010D0 80A22F90 8FAC0064 */  lw      $t4, 0x0064($sp)           
/* 010D4 80A22F94 240B0004 */  addiu   $t3, $zero, 0x0004         ## $t3 = 00000004
/* 010D8 80A22F98 AFAB0034 */  sw      $t3, 0x0034($sp)           
/* 010DC 80A22F9C AFAA0030 */  sw      $t2, 0x0030($sp)           
/* 010E0 80A22FA0 AFA0002C */  sw      $zero, 0x002C($sp)         
/* 010E4 80A22FA4 AFA00028 */  sw      $zero, 0x0028($sp)         
/* 010E8 80A22FA8 AFA90024 */  sw      $t1, 0x0024($sp)           
/* 010EC 80A22FAC AFA80014 */  sw      $t0, 0x0014($sp)           
/* 010F0 80A22FB0 E7A00018 */  swc1    $f0, 0x0018($sp)           
/* 010F4 80A22FB4 E7A0001C */  swc1    $f0, 0x001C($sp)           
/* 010F8 80A22FB8 E7A00020 */  swc1    $f0, 0x0020($sp)           
/* 010FC 80A22FBC 8D8D0000 */  lw      $t5, 0x0000($t4)           ## 00000000
/* 01100 80A22FC0 0C018FA7 */  jal     DebugDisplay_AddObject
              
/* 01104 80A22FC4 AFAD0038 */  sw      $t5, 0x0038($sp)           
.L80A22FC8:
/* 01108 80A22FC8 8FBF004C */  lw      $ra, 0x004C($sp)           
.L80A22FCC:
/* 0110C 80A22FCC 8FB00048 */  lw      $s0, 0x0048($sp)           
/* 01110 80A22FD0 27BD0060 */  addiu   $sp, $sp, 0x0060           ## $sp = 00000000
/* 01114 80A22FD4 03E00008 */  jr      $ra                        
/* 01118 80A22FD8 00000000 */  nop
