.rdata
glabel D_809982F0
    .asciz "FHG SAKU START !!\n"
    .balign 4

glabel D_80998304
    .asciz "FHG SAKU END !!\n"
    .balign 4

.text
glabel func_80997744
/* 014A4 80997744 27BDFFE0 */  addiu   $sp, $sp, 0xFFE0           ## $sp = FFFFFFE0
/* 014A8 80997748 AFA40020 */  sw      $a0, 0x0020($sp)           
/* 014AC 8099774C AFBF001C */  sw      $ra, 0x001C($sp)           
/* 014B0 80997750 3C04809A */  lui     $a0, %hi(D_809982F0)       ## $a0 = 809A0000
/* 014B4 80997754 AFA50024 */  sw      $a1, 0x0024($sp)           
/* 014B8 80997758 0C00084C */  jal     osSyncPrintf
              
/* 014BC 8099775C 248482F0 */  addiu   $a0, $a0, %lo(D_809982F0)  ## $a0 = 809982F0
/* 014C0 80997760 8FA30020 */  lw      $v1, 0x0020($sp)           
/* 014C4 80997764 3C01C040 */  lui     $at, 0xC040                ## $at = C0400000
/* 014C8 80997768 84620164 */  lh      $v0, 0x0164($v1)           ## 00000164
/* 014CC 8099776C 10400003 */  beq     $v0, $zero, .L8099777C     
/* 014D0 80997770 244EFFFF */  addiu   $t6, $v0, 0xFFFF           ## $t6 = FFFFFFFF
/* 014D4 80997774 A46E0164 */  sh      $t6, 0x0164($v1)           ## 00000164
/* 014D8 80997778 84620164 */  lh      $v0, 0x0164($v1)           ## 00000164
.L8099777C:
/* 014DC 8099777C 304F0001 */  andi    $t7, $v0, 0x0001           ## $t7 = 00000000
/* 014E0 80997780 51E00005 */  beql    $t7, $zero, .L80997798     
/* 014E4 80997784 44800000 */  mtc1    $zero, $f0                 ## $f0 = 0.00
/* 014E8 80997788 44810000 */  mtc1    $at, $f0                   ## $f0 = -3.00
/* 014EC 8099778C 10000004 */  beq     $zero, $zero, .L809977A0   
/* 014F0 80997790 3C01C208 */  lui     $at, 0xC208                ## $at = C2080000
/* 014F4 80997794 44800000 */  mtc1    $zero, $f0                 ## $f0 = 0.00
.L80997798:
/* 014F8 80997798 00000000 */  nop
/* 014FC 8099779C 3C01C208 */  lui     $at, 0xC208                ## $at = C2080000
.L809977A0:
/* 01500 809977A0 44812000 */  mtc1    $at, $f4                   ## $f4 = -34.00
/* 01504 809977A4 44804000 */  mtc1    $zero, $f8                 ## $f8 = 0.00
/* 01508 809977A8 24640028 */  addiu   $a0, $v1, 0x0028           ## $a0 = 00000028
/* 0150C 809977AC 46002180 */  add.s   $f6, $f4, $f0              
/* 01510 809977B0 3C063F80 */  lui     $a2, 0x3F80                ## $a2 = 3F800000
/* 01514 809977B4 3C0741A0 */  lui     $a3, 0x41A0                ## $a3 = 41A00000
/* 01518 809977B8 E7A80010 */  swc1    $f8, 0x0010($sp)           
/* 0151C 809977BC 44053000 */  mfc1    $a1, $f6                   
/* 01520 809977C0 0C01E0C4 */  jal     Math_SmoothScaleMaxMinF
              
/* 01524 809977C4 00000000 */  nop
/* 01528 809977C8 3C04809A */  lui     $a0, %hi(D_80998304)       ## $a0 = 809A0000
/* 0152C 809977CC 0C00084C */  jal     osSyncPrintf
              
/* 01530 809977D0 24848304 */  addiu   $a0, $a0, %lo(D_80998304)  ## $a0 = 80998304
/* 01534 809977D4 8FBF001C */  lw      $ra, 0x001C($sp)           
/* 01538 809977D8 27BD0020 */  addiu   $sp, $sp, 0x0020           ## $sp = 00000000
/* 0153C 809977DC 03E00008 */  jr      $ra                        
/* 01540 809977E0 00000000 */  nop
