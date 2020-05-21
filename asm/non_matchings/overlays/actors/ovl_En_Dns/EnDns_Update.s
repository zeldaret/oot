glabel EnDns_Update
/* 00F30 809F0280 27BDFFC8 */  addiu   $sp, $sp, 0xFFC8           ## $sp = FFFFFFC8
/* 00F34 809F0284 AFBF0024 */  sw      $ra, 0x0024($sp)           
/* 00F38 809F0288 AFB00020 */  sw      $s0, 0x0020($sp)           
/* 00F3C 809F028C AFA5003C */  sw      $a1, 0x003C($sp)           
/* 00F40 809F0290 848E02B8 */  lh      $t6, 0x02B8($a0)           ## 000002B8
/* 00F44 809F0294 8498001C */  lh      $t8, 0x001C($a0)           ## 0000001C
/* 00F48 809F0298 3C08809F */  lui     $t0, %hi(D_809F040C)       ## $t0 = 809F0000
/* 00F4C 809F029C 25CF0001 */  addiu   $t7, $t6, 0x0001           ## $t7 = 00000001
/* 00F50 809F02A0 0018C840 */  sll     $t9, $t8,  1               
/* 00F54 809F02A4 A48F02B8 */  sh      $t7, 0x02B8($a0)           ## 000002B8
/* 00F58 809F02A8 01194021 */  addu    $t0, $t0, $t9              
/* 00F5C 809F02AC 9508040C */  lhu     $t0, %lo(D_809F040C)($t0)  
/* 00F60 809F02B0 00808025 */  or      $s0, $a0, $zero            ## $s0 = 00000000
/* 00F64 809F02B4 3C054270 */  lui     $a1, 0x4270                ## $a1 = 42700000
/* 00F68 809F02B8 0C00B56E */  jal     Actor_SetHeight
              
/* 00F6C 809F02BC A488010E */  sh      $t0, 0x010E($a0)           ## 0000010E
/* 00F70 809F02C0 3C053C23 */  lui     $a1, 0x3C23                ## $a1 = 3C230000
/* 00F74 809F02C4 34A5D70A */  ori     $a1, $a1, 0xD70A           ## $a1 = 3C23D70A
/* 00F78 809F02C8 0C00B58B */  jal     Actor_SetScale
              
/* 00F7C 809F02CC 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 00F80 809F02D0 0C02927F */  jal     SkelAnime_FrameUpdateMatrix
              
/* 00F84 809F02D4 2604014C */  addiu   $a0, $s0, 0x014C           ## $a0 = 0000014C
/* 00F88 809F02D8 0C00B638 */  jal     Actor_MoveForward
              
/* 00F8C 809F02DC 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 00F90 809F02E0 8E190268 */  lw      $t9, 0x0268($s0)           ## 00000268
/* 00F94 809F02E4 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 00F98 809F02E8 8FA5003C */  lw      $a1, 0x003C($sp)           
/* 00F9C 809F02EC 0320F809 */  jalr    $ra, $t9                   
/* 00FA0 809F02F0 00000000 */  nop
/* 00FA4 809F02F4 920902BC */  lbu     $t1, 0x02BC($s0)           ## 000002BC
/* 00FA8 809F02F8 3C0141A0 */  lui     $at, 0x41A0                ## $at = 41A00000
/* 00FAC 809F02FC 8FA4003C */  lw      $a0, 0x003C($sp)           
/* 00FB0 809F0300 11200008 */  beq     $t1, $zero, .L809F0324     
/* 00FB4 809F0304 02002825 */  or      $a1, $s0, $zero            ## $a1 = 00000000
/* 00FB8 809F0308 44810000 */  mtc1    $at, $f0                   ## $f0 = 20.00
/* 00FBC 809F030C 240A0004 */  addiu   $t2, $zero, 0x0004         ## $t2 = 00000004
/* 00FC0 809F0310 AFAA0014 */  sw      $t2, 0x0014($sp)           
/* 00FC4 809F0314 44060000 */  mfc1    $a2, $f0                   
/* 00FC8 809F0318 44070000 */  mfc1    $a3, $f0                   
/* 00FCC 809F031C 0C00B92D */  jal     func_8002E4B4              
/* 00FD0 809F0320 E7A00010 */  swc1    $f0, 0x0010($sp)           
.L809F0324:
/* 00FD4 809F0324 920B02BB */  lbu     $t3, 0x02BB($s0)           ## 000002BB
/* 00FD8 809F0328 2606026C */  addiu   $a2, $s0, 0x026C           ## $a2 = 0000026C
/* 00FDC 809F032C 00C02825 */  or      $a1, $a2, $zero            ## $a1 = 0000026C
/* 00FE0 809F0330 11600009 */  beq     $t3, $zero, .L809F0358     
/* 00FE4 809F0334 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 00FE8 809F0338 0C0189B7 */  jal     Collider_CylinderUpdate
              
/* 00FEC 809F033C AFA6002C */  sw      $a2, 0x002C($sp)           
/* 00FF0 809F0340 8FA4003C */  lw      $a0, 0x003C($sp)           
/* 00FF4 809F0344 3C010001 */  lui     $at, 0x0001                ## $at = 00010000
/* 00FF8 809F0348 34211E60 */  ori     $at, $at, 0x1E60           ## $at = 00011E60
/* 00FFC 809F034C 8FA6002C */  lw      $a2, 0x002C($sp)           
/* 01000 809F0350 0C017713 */  jal     CollisionCheck_SetOC
              ## CollisionCheck_setOT
/* 01004 809F0354 00812821 */  addu    $a1, $a0, $at              
.L809F0358:
/* 01008 809F0358 8FBF0024 */  lw      $ra, 0x0024($sp)           
/* 0100C 809F035C 8FB00020 */  lw      $s0, 0x0020($sp)           
/* 01010 809F0360 27BD0038 */  addiu   $sp, $sp, 0x0038           ## $sp = 00000000
/* 01014 809F0364 03E00008 */  jr      $ra                        
/* 01018 809F0368 00000000 */  nop
