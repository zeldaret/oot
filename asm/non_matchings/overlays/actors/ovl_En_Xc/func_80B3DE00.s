glabel func_80B3DE00
/* 01C20 80B3DE00 27BDFFD8 */  addiu   $sp, $sp, 0xFFD8           ## $sp = FFFFFFD8
/* 01C24 80B3DE04 AFBF0024 */  sw      $ra, 0x0024($sp)
/* 01C28 80B3DE08 10A00017 */  beq     $a1, $zero, .L80B3DE68
/* 01C2C 80B3DE0C AFA40028 */  sw      $a0, 0x0028($sp)
/* 01C30 80B3DE10 3C040602 */  lui     $a0, 0x0602                ## $a0 = 06020000
/* 01C34 80B3DE14 0C028800 */  jal     SkelAnime_GetFrameCount

/* 01C38 80B3DE18 2484B19C */  addiu   $a0, $a0, 0xB19C           ## $a0 = 0601B19C
/* 01C3C 80B3DE1C 44822000 */  mtc1    $v0, $f4                   ## $f4 = 0.00
/* 01C40 80B3DE20 44800000 */  mtc1    $zero, $f0                 ## $f0 = 0.00
/* 01C44 80B3DE24 8FA40028 */  lw      $a0, 0x0028($sp)
/* 01C48 80B3DE28 46802120 */  cvt.s.w $f4, $f4
/* 01C4C 80B3DE2C 3C050602 */  lui     $a1, 0x0602                ## $a1 = 06020000
/* 01C50 80B3DE30 240E0002 */  addiu   $t6, $zero, 0x0002         ## $t6 = 00000002
/* 01C54 80B3DE34 AFAE0014 */  sw      $t6, 0x0014($sp)
/* 01C58 80B3DE38 24A5B19C */  addiu   $a1, $a1, 0xB19C           ## $a1 = 0601B19C
/* 01C5C 80B3DE3C 3C06BF80 */  lui     $a2, 0xBF80                ## $a2 = BF800000
/* 01C60 80B3DE40 44072000 */  mfc1    $a3, $f4
/* 01C64 80B3DE44 2484014C */  addiu   $a0, $a0, 0x014C           ## $a0 = 0000014C
/* 01C68 80B3DE48 E7A00010 */  swc1    $f0, 0x0010($sp)
/* 01C6C 80B3DE4C 0C029468 */  jal     SkelAnime_ChangeAnim

/* 01C70 80B3DE50 E7A00018 */  swc1    $f0, 0x0018($sp)
/* 01C74 80B3DE54 8FA20028 */  lw      $v0, 0x0028($sp)
/* 01C78 80B3DE58 240F000C */  addiu   $t7, $zero, 0x000C         ## $t7 = 0000000C
/* 01C7C 80B3DE5C 24180002 */  addiu   $t8, $zero, 0x0002         ## $t8 = 00000002
/* 01C80 80B3DE60 AC4F0260 */  sw      $t7, 0x0260($v0)           ## 00000260
/* 01C84 80B3DE64 AC580264 */  sw      $t8, 0x0264($v0)           ## 00000264
.L80B3DE68:
/* 01C88 80B3DE68 8FBF0024 */  lw      $ra, 0x0024($sp)
/* 01C8C 80B3DE6C 27BD0028 */  addiu   $sp, $sp, 0x0028           ## $sp = 00000000
/* 01C90 80B3DE70 03E00008 */  jr      $ra
/* 01C94 80B3DE74 00000000 */  nop


