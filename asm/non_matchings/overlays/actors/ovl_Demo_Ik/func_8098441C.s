glabel func_8098441C
/* 0111C 8098441C 27BDFF98 */  addiu   $sp, $sp, 0xFF98           ## $sp = FFFFFF98
/* 01120 80984420 AFBF002C */  sw      $ra, 0x002C($sp)
/* 01124 80984424 AFB00028 */  sw      $s0, 0x0028($sp)
/* 01128 80984428 AFA40068 */  sw      $a0, 0x0068($sp)
/* 0112C 8098442C AFA5006C */  sw      $a1, 0x006C($sp)
/* 01130 80984430 8CB00000 */  lw      $s0, 0x0000($a1)           ## 00000000
/* 01134 80984434 3C068098 */  lui     $a2, %hi(D_8098493C)       ## $a2 = 80980000
/* 01138 80984438 24C6493C */  addiu   $a2, $a2, %lo(D_8098493C)  ## $a2 = 8098493C
/* 0113C 8098443C 27A40044 */  addiu   $a0, $sp, 0x0044           ## $a0 = FFFFFFDC
/* 01140 80984440 2407013E */  addiu   $a3, $zero, 0x013E         ## $a3 = 0000013E
/* 01144 80984444 0C031AB1 */  jal     Graph_OpenDisps
/* 01148 80984448 02002825 */  or      $a1, $s0, $zero            ## $a1 = 00000000
/* 0114C 8098444C 8FA40068 */  lw      $a0, 0x0068($sp)
/* 01150 80984450 8FA5006C */  lw      $a1, 0x006C($sp)
/* 01154 80984454 0C00BAF3 */  jal     func_8002EBCC
/* 01158 80984458 00003025 */  or      $a2, $zero, $zero          ## $a2 = 00000000
/* 0115C 8098445C 0C024F46 */  jal     func_80093D18
/* 01160 80984460 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 01164 80984464 0C024F61 */  jal     func_80093D84
/* 01168 80984468 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 0116C 8098446C 8E0202C0 */  lw      $v0, 0x02C0($s0)           ## 000002C0
/* 01170 80984470 3C18DB06 */  lui     $t8, 0xDB06                ## $t8 = DB060000
/* 01174 80984474 37180020 */  ori     $t8, $t8, 0x0020           ## $t8 = DB060020
/* 01178 80984478 244F0008 */  addiu   $t7, $v0, 0x0008           ## $t7 = 00000008
/* 0117C 8098447C AE0F02C0 */  sw      $t7, 0x02C0($s0)           ## 000002C0
/* 01180 80984480 AC580000 */  sw      $t8, 0x0000($v0)           ## 00000000
/* 01184 80984484 2419001E */  addiu   $t9, $zero, 0x001E         ## $t9 = 0000001E
/* 01188 80984488 2408001E */  addiu   $t0, $zero, 0x001E         ## $t0 = 0000001E
/* 0118C 8098448C AFA80014 */  sw      $t0, 0x0014($sp)
/* 01190 80984490 AFB90010 */  sw      $t9, 0x0010($sp)
/* 01194 80984494 AFA00018 */  sw      $zero, 0x0018($sp)
/* 01198 80984498 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 0119C 8098449C 240500F5 */  addiu   $a1, $zero, 0x00F5         ## $a1 = 000000F5
/* 011A0 809844A0 240600E1 */  addiu   $a2, $zero, 0x00E1         ## $a2 = 000000E1
/* 011A4 809844A4 2407009B */  addiu   $a3, $zero, 0x009B         ## $a3 = 0000009B
/* 011A8 809844A8 0C260D0C */  jal     func_80983430
/* 011AC 809844AC AFA20040 */  sw      $v0, 0x0040($sp)
/* 011B0 809844B0 8FA30040 */  lw      $v1, 0x0040($sp)
/* 011B4 809844B4 3C0ADB06 */  lui     $t2, 0xDB06                ## $t2 = DB060000
/* 011B8 809844B8 354A0024 */  ori     $t2, $t2, 0x0024           ## $t2 = DB060024
/* 011BC 809844BC AC620004 */  sw      $v0, 0x0004($v1)           ## 00000004
/* 011C0 809844C0 8E0202C0 */  lw      $v0, 0x02C0($s0)           ## 000002C0
/* 011C4 809844C4 240B0028 */  addiu   $t3, $zero, 0x0028         ## $t3 = 00000028
/* 011C8 809844C8 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 011CC 809844CC 24490008 */  addiu   $t1, $v0, 0x0008           ## $t1 = 00000008
/* 011D0 809844D0 AE0902C0 */  sw      $t1, 0x02C0($s0)           ## 000002C0
/* 011D4 809844D4 AC4A0000 */  sw      $t2, 0x0000($v0)           ## 00000000
/* 011D8 809844D8 AFA00018 */  sw      $zero, 0x0018($sp)
/* 011DC 809844DC AFA00014 */  sw      $zero, 0x0014($sp)
/* 011E0 809844E0 AFAB0010 */  sw      $t3, 0x0010($sp)
/* 011E4 809844E4 240500FF */  addiu   $a1, $zero, 0x00FF         ## $a1 = 000000FF
/* 011E8 809844E8 24060028 */  addiu   $a2, $zero, 0x0028         ## $a2 = 00000028
/* 011EC 809844EC 00003825 */  or      $a3, $zero, $zero          ## $a3 = 00000000
/* 011F0 809844F0 0C260D0C */  jal     func_80983430
/* 011F4 809844F4 AFA2003C */  sw      $v0, 0x003C($sp)
/* 011F8 809844F8 8FA3003C */  lw      $v1, 0x003C($sp)
/* 011FC 809844FC 3C0DDB06 */  lui     $t5, 0xDB06                ## $t5 = DB060000
/* 01200 80984500 35AD0028 */  ori     $t5, $t5, 0x0028           ## $t5 = DB060028
/* 01204 80984504 AC620004 */  sw      $v0, 0x0004($v1)           ## 00000004
/* 01208 80984508 8E0202C0 */  lw      $v0, 0x02C0($s0)           ## 000002C0
/* 0120C 8098450C 240E0014 */  addiu   $t6, $zero, 0x0014         ## $t6 = 00000014
/* 01210 80984510 240F0028 */  addiu   $t7, $zero, 0x0028         ## $t7 = 00000028
/* 01214 80984514 244C0008 */  addiu   $t4, $v0, 0x0008           ## $t4 = 00000008
/* 01218 80984518 AE0C02C0 */  sw      $t4, 0x02C0($s0)           ## 000002C0
/* 0121C 8098451C AC4D0000 */  sw      $t5, 0x0000($v0)           ## 00000000
/* 01220 80984520 2418001E */  addiu   $t8, $zero, 0x001E         ## $t8 = 0000001E
/* 01224 80984524 AFB80018 */  sw      $t8, 0x0018($sp)
/* 01228 80984528 AFAF0014 */  sw      $t7, 0x0014($sp)
/* 0122C 8098452C AFAE0010 */  sw      $t6, 0x0010($sp)
/* 01230 80984530 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 01234 80984534 240500FF */  addiu   $a1, $zero, 0x00FF         ## $a1 = 000000FF
/* 01238 80984538 240600FF */  addiu   $a2, $zero, 0x00FF         ## $a2 = 000000FF
/* 0123C 8098453C 240700FF */  addiu   $a3, $zero, 0x00FF         ## $a3 = 000000FF
/* 01240 80984540 0C260D0C */  jal     func_80983430
/* 01244 80984544 AFA20038 */  sw      $v0, 0x0038($sp)
/* 01248 80984548 8FA30038 */  lw      $v1, 0x0038($sp)
/* 0124C 8098454C 3C198098 */  lui     $t9, %hi(func_8098419C)    ## $t9 = 80980000
/* 01250 80984550 3C088098 */  lui     $t0, %hi(func_809841F4)    ## $t0 = 80980000
/* 01254 80984554 AC620004 */  sw      $v0, 0x0004($v1)           ## 00000004
/* 01258 80984558 8FA30068 */  lw      $v1, 0x0068($sp)
/* 0125C 8098455C 250841F4 */  addiu   $t0, $t0, %lo(func_809841F4) ## $t0 = 809841F4
/* 01260 80984560 2739419C */  addiu   $t9, $t9, %lo(func_8098419C) ## $t9 = 8098419C
/* 01264 80984564 2462014C */  addiu   $v0, $v1, 0x014C           ## $v0 = 0000014C
/* 01268 80984568 8C450004 */  lw      $a1, 0x0004($v0)           ## 00000150
/* 0126C 8098456C 8C460020 */  lw      $a2, 0x0020($v0)           ## 0000016C
/* 01270 80984570 90470002 */  lbu     $a3, 0x0002($v0)           ## 0000014E
/* 01274 80984574 AFA80014 */  sw      $t0, 0x0014($sp)
/* 01278 80984578 AFB90010 */  sw      $t9, 0x0010($sp)
/* 0127C 8098457C 8FA4006C */  lw      $a0, 0x006C($sp)
/* 01280 80984580 0C0286B2 */  jal     SkelAnime_DrawSV
/* 01284 80984584 AFA30018 */  sw      $v1, 0x0018($sp)
/* 01288 80984588 3C068098 */  lui     $a2, %hi(D_80984954)       ## $a2 = 80980000
/* 0128C 8098458C 24C64954 */  addiu   $a2, $a2, %lo(D_80984954)  ## $a2 = 80984954
/* 01290 80984590 27A40044 */  addiu   $a0, $sp, 0x0044           ## $a0 = FFFFFFDC
/* 01294 80984594 02002825 */  or      $a1, $s0, $zero            ## $a1 = 00000000
/* 01298 80984598 0C031AD5 */  jal     Graph_CloseDisps
/* 0129C 8098459C 24070155 */  addiu   $a3, $zero, 0x0155         ## $a3 = 00000155
/* 012A0 809845A0 8FBF002C */  lw      $ra, 0x002C($sp)
/* 012A4 809845A4 8FB00028 */  lw      $s0, 0x0028($sp)
/* 012A8 809845A8 27BD0068 */  addiu   $sp, $sp, 0x0068           ## $sp = 00000000
/* 012AC 809845AC 03E00008 */  jr      $ra
/* 012B0 809845B0 00000000 */  nop


