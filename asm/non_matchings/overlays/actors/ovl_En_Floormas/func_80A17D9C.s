glabel func_80A17D9C
/* 0088C 80A17D9C 27BDFFE8 */  addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
/* 00890 80A17DA0 AFBF0014 */  sw      $ra, 0x0014($sp)
/* 00894 80A17DA4 8C8F0190 */  lw      $t7, 0x0190($a0)           ## 00000190
/* 00898 80A17DA8 3C0E80A2 */  lui     $t6, %hi(func_80A18FD8)    ## $t6 = 80A20000
/* 0089C 80A17DAC 25CE8FD8 */  addiu   $t6, $t6, %lo(func_80A18FD8) ## $t6 = 80A18FD8
/* 008A0 80A17DB0 11CF0008 */  beq     $t6, $t7, .L80A17DD4
/* 008A4 80A17DB4 00803825 */  or      $a3, $a0, $zero            ## $a3 = 00000000
/* 008A8 80A17DB8 3C050600 */  lui     $a1, 0x0600                ## $a1 = 06000000
/* 008AC 80A17DBC 24A541F4 */  addiu   $a1, $a1, 0x41F4           ## $a1 = 060041F4
/* 008B0 80A17DC0 2484014C */  addiu   $a0, $a0, 0x014C           ## $a0 = 0000014C
/* 008B4 80A17DC4 3C064090 */  lui     $a2, 0x4090                ## $a2 = 40900000
/* 008B8 80A17DC8 0C0294E1 */  jal     SkelAnime_ChangeAnimPlaybackRepeat
/* 008BC 80A17DCC AFA70018 */  sw      $a3, 0x0018($sp)
/* 008C0 80A17DD0 8FA70018 */  lw      $a3, 0x0018($sp)
.L80A17DD4:
/* 008C4 80A17DD4 3C0140A0 */  lui     $at, 0x40A0                ## $at = 40A00000
/* 008C8 80A17DD8 44812000 */  mtc1    $at, $f4                   ## $f4 = 5.00
/* 008CC 80A17DDC 3C1880A2 */  lui     $t8, %hi(func_80A190C8)    ## $t8 = 80A20000
/* 008D0 80A17DE0 271890C8 */  addiu   $t8, $t8, %lo(func_80A190C8) ## $t8 = 80A190C8
/* 008D4 80A17DE4 ACF80190 */  sw      $t8, 0x0190($a3)           ## 00000190
/* 008D8 80A17DE8 E4E40068 */  swc1    $f4, 0x0068($a3)           ## 00000068
/* 008DC 80A17DEC 8FBF0014 */  lw      $ra, 0x0014($sp)
/* 008E0 80A17DF0 27BD0018 */  addiu   $sp, $sp, 0x0018           ## $sp = 00000000
/* 008E4 80A17DF4 03E00008 */  jr      $ra
/* 008E8 80A17DF8 00000000 */  nop


