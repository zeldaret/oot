glabel func_80B2A448
/* 00248 80B2A448 27BDFFD0 */  addiu   $sp, $sp, 0xFFD0           ## $sp = FFFFFFD0
/* 0024C 80B2A44C AFA40030 */  sw      $a0, 0x0030($sp)
/* 00250 80B2A450 AFA50034 */  sw      $a1, 0x0034($sp)
/* 00254 80B2A454 00A02025 */  or      $a0, $a1, $zero            ## $a0 = 00000000
/* 00258 80B2A458 8FA50030 */  lw      $a1, 0x0030($sp)
/* 0025C 80B2A45C AFBF0024 */  sw      $ra, 0x0024($sp)
/* 00260 80B2A460 AFA7003C */  sw      $a3, 0x003C($sp)
/* 00264 80B2A464 24A50198 */  addiu   $a1, $a1, 0x0198           ## $a1 = 00000198
/* 00268 80B2A468 AFA5002C */  sw      $a1, 0x002C($sp)
/* 0026C 80B2A46C 00003825 */  or      $a3, $zero, $zero          ## $a3 = 00000000
/* 00270 80B2A470 AFA00010 */  sw      $zero, 0x0010($sp)
/* 00274 80B2A474 AFA00014 */  sw      $zero, 0x0014($sp)
/* 00278 80B2A478 0C0291BE */  jal     SkelAnime_InitSV
/* 0027C 80B2A47C AFA00018 */  sw      $zero, 0x0018($sp)
/* 00280 80B2A480 8FAF0030 */  lw      $t7, 0x0030($sp)
/* 00284 80B2A484 8FAE0034 */  lw      $t6, 0x0034($sp)
/* 00288 80B2A488 3C090001 */  lui     $t1, 0x0001                ## $t1 = 00010000
/* 0028C 80B2A48C 81F801DC */  lb      $t8, 0x01DC($t7)           ## 000001DC
/* 00290 80B2A490 3C018000 */  lui     $at, 0x8000                ## $at = 80000000
/* 00294 80B2A494 8FA4002C */  lw      $a0, 0x002C($sp)
/* 00298 80B2A498 0018C900 */  sll     $t9, $t8,  4
/* 0029C 80B2A49C 0338C821 */  addu    $t9, $t9, $t8
/* 002A0 80B2A4A0 0019C880 */  sll     $t9, $t9,  2
/* 002A4 80B2A4A4 01D94021 */  addu    $t0, $t6, $t9
/* 002A8 80B2A4A8 01284821 */  addu    $t1, $t1, $t0
/* 002AC 80B2A4AC 8D2917B4 */  lw      $t1, 0x17B4($t1)           ## 000117B4
/* 002B0 80B2A4B0 8FA5003C */  lw      $a1, 0x003C($sp)
/* 002B4 80B2A4B4 3C064040 */  lui     $a2, 0x4040                ## $a2 = 40400000
/* 002B8 80B2A4B8 01215021 */  addu    $t2, $t1, $at
/* 002BC 80B2A4BC 3C018016 */  lui     $at, 0x8016                ## $at = 80160000
/* 002C0 80B2A4C0 0C0294E1 */  jal     SkelAnime_ChangeAnimationPlaybackSpeed
/* 002C4 80B2A4C4 AC2A6FC0 */  sw      $t2, 0x6FC0($at)           ## 80166FC0
/* 002C8 80B2A4C8 8FBF0024 */  lw      $ra, 0x0024($sp)
/* 002CC 80B2A4CC 27BD0030 */  addiu   $sp, $sp, 0x0030           ## $sp = 00000000
/* 002D0 80B2A4D0 03E00008 */  jr      $ra
/* 002D4 80B2A4D4 00000000 */  nop


