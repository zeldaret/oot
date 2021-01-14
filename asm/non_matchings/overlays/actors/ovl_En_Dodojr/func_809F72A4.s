glabel func_809F72A4
/* 00EE4 809F72A4 27BDFFD8 */  addiu   $sp, $sp, 0xFFD8           ## $sp = FFFFFFD8
/* 00EE8 809F72A8 AFA5002C */  sw      $a1, 0x002C($sp)           
/* 00EEC 809F72AC AFBF0014 */  sw      $ra, 0x0014($sp)           
/* 00EF0 809F72B0 24850194 */  addiu   $a1, $a0, 0x0194           ## $a1 = 00000194
/* 00EF4 809F72B4 AFA50024 */  sw      $a1, 0x0024($sp)           
/* 00EF8 809F72B8 0C0189B7 */  jal     Collider_UpdateCylinder
              
/* 00EFC 809F72BC AFA40028 */  sw      $a0, 0x0028($sp)           
/* 00F00 809F72C0 8FA70028 */  lw      $a3, 0x0028($sp)           
/* 00F04 809F72C4 3C0E809F */  lui     $t6, %hi(func_809F73AC)    ## $t6 = 809F0000
/* 00F08 809F72C8 25CE73AC */  addiu   $t6, $t6, %lo(func_809F73AC) ## $t6 = 809F73AC
/* 00F0C 809F72CC 8CE20190 */  lw      $v0, 0x0190($a3)           ## 00000190
/* 00F10 809F72D0 3C0F809F */  lui     $t7, %hi(func_809F7BE4)    ## $t7 = 809F0000
/* 00F14 809F72D4 25EF7BE4 */  addiu   $t7, $t7, %lo(func_809F7BE4) ## $t7 = 809F7BE4
/* 00F18 809F72D8 51C20031 */  beql    $t6, $v0, .L809F73A0       
/* 00F1C 809F72DC 8FBF0014 */  lw      $ra, 0x0014($sp)           
/* 00F20 809F72E0 11E2002E */  beq     $t7, $v0, .L809F739C       
/* 00F24 809F72E4 3C03809F */  lui     $v1, %hi(func_809F74C4)    ## $v1 = 809F0000
/* 00F28 809F72E8 246374C4 */  addiu   $v1, $v1, %lo(func_809F74C4) ## $v1 = 809F74C4
/* 00F2C 809F72EC 10620007 */  beq     $v1, $v0, .L809F730C       
/* 00F30 809F72F0 3C18809F */  lui     $t8, %hi(func_809F758C)    ## $t8 = 809F0000
/* 00F34 809F72F4 2718758C */  addiu   $t8, $t8, %lo(func_809F758C) ## $t8 = 809F758C
/* 00F38 809F72F8 13020004 */  beq     $t8, $v0, .L809F730C       
/* 00F3C 809F72FC 3C19809F */  lui     $t9, %hi(func_809F799C)    ## $t9 = 809F0000
/* 00F40 809F7300 2739799C */  addiu   $t9, $t9, %lo(func_809F799C) ## $t9 = 809F799C
/* 00F44 809F7304 5722000D */  bnel    $t9, $v0, .L809F733C       
/* 00F48 809F7308 8FA4002C */  lw      $a0, 0x002C($sp)           
.L809F730C:
/* 00F4C 809F730C 8FA4002C */  lw      $a0, 0x002C($sp)           
/* 00F50 809F7310 3C010001 */  lui     $at, 0x0001                ## $at = 00010000
/* 00F54 809F7314 34211E60 */  ori     $at, $at, 0x1E60           ## $at = 00011E60
/* 00F58 809F7318 8FA60024 */  lw      $a2, 0x0024($sp)           
/* 00F5C 809F731C AFA3001C */  sw      $v1, 0x001C($sp)           
/* 00F60 809F7320 AFA70028 */  sw      $a3, 0x0028($sp)           
/* 00F64 809F7324 0C0175E7 */  jal     CollisionCheck_SetAT
              ## CollisionCheck_setAT
/* 00F68 809F7328 00812821 */  addu    $a1, $a0, $at              
/* 00F6C 809F732C 8FA70028 */  lw      $a3, 0x0028($sp)           
/* 00F70 809F7330 8FA3001C */  lw      $v1, 0x001C($sp)           
/* 00F74 809F7334 8CE20190 */  lw      $v0, 0x0190($a3)           ## 00000190
/* 00F78 809F7338 8FA4002C */  lw      $a0, 0x002C($sp)           
.L809F733C:
/* 00F7C 809F733C 3C010001 */  lui     $at, 0x0001                ## $at = 00010000
/* 00F80 809F7340 34211E60 */  ori     $at, $at, 0x1E60           ## $at = 00011E60
/* 00F84 809F7344 1062000E */  beq     $v1, $v0, .L809F7380       
/* 00F88 809F7348 00812821 */  addu    $a1, $a0, $at              
/* 00F8C 809F734C 3C08809F */  lui     $t0, %hi(func_809F758C)    ## $t0 = 809F0000
/* 00F90 809F7350 2508758C */  addiu   $t0, $t0, %lo(func_809F758C) ## $t0 = 809F758C
/* 00F94 809F7354 1102000A */  beq     $t0, $v0, .L809F7380       
/* 00F98 809F7358 3C09809F */  lui     $t1, %hi(func_809F786C)    ## $t1 = 809F0000
/* 00F9C 809F735C 2529786C */  addiu   $t1, $t1, %lo(func_809F786C) ## $t1 = 809F786C
/* 00FA0 809F7360 11220007 */  beq     $t1, $v0, .L809F7380       
/* 00FA4 809F7364 3C0A809F */  lui     $t2, %hi(func_809F78EC)    ## $t2 = 809F0000
/* 00FA8 809F7368 254A78EC */  addiu   $t2, $t2, %lo(func_809F78EC) ## $t2 = 809F78EC
/* 00FAC 809F736C 11420004 */  beq     $t2, $v0, .L809F7380       
/* 00FB0 809F7370 3C0B809F */  lui     $t3, %hi(func_809F799C)    ## $t3 = 809F0000
/* 00FB4 809F7374 256B799C */  addiu   $t3, $t3, %lo(func_809F799C) ## $t3 = 809F799C
/* 00FB8 809F7378 15620006 */  bne     $t3, $v0, .L809F7394       
/* 00FBC 809F737C 00000000 */  nop
.L809F7380:
/* 00FC0 809F7380 8FA60024 */  lw      $a2, 0x0024($sp)           
/* 00FC4 809F7384 0C01767D */  jal     CollisionCheck_SetAC
              ## CollisionCheck_setAC
/* 00FC8 809F7388 AFA50018 */  sw      $a1, 0x0018($sp)           
/* 00FCC 809F738C 8FA50018 */  lw      $a1, 0x0018($sp)           
/* 00FD0 809F7390 8FA4002C */  lw      $a0, 0x002C($sp)           
.L809F7394:
/* 00FD4 809F7394 0C017713 */  jal     CollisionCheck_SetOC
              ## CollisionCheck_setOC
/* 00FD8 809F7398 8FA60024 */  lw      $a2, 0x0024($sp)           
.L809F739C:
/* 00FDC 809F739C 8FBF0014 */  lw      $ra, 0x0014($sp)           
.L809F73A0:
/* 00FE0 809F73A0 27BD0028 */  addiu   $sp, $sp, 0x0028           ## $sp = 00000000
/* 00FE4 809F73A4 03E00008 */  jr      $ra                        
/* 00FE8 809F73A8 00000000 */  nop
