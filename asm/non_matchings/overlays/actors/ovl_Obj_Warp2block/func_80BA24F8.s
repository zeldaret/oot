.rdata
glabel D_80BA28E0
    .asciz "\x1b[41;37m"
    .balign 4

glabel D_80BA28EC
    .asciz "Error : 時のブロック(ワープ２)が対でセットされていません(%s %d)\n"
    .balign 4

glabel D_80BA2930
    .asciz "../z_obj_warp2block.c"
    .balign 4

glabel D_80BA2948
    .asciz "\x1b[m"
    .balign 4

.text
glabel func_80BA24F8
/* 00708 80BA24F8 27BDFFE0 */  addiu   $sp, $sp, 0xFFE0           ## $sp = FFFFFFE0
/* 0070C 80BA24FC AFBF001C */  sw      $ra, 0x001C($sp)           
/* 00710 80BA2500 AFB00018 */  sw      $s0, 0x0018($sp)           
/* 00714 80BA2504 8CA21C6C */  lw      $v0, 0x1C6C($a1)           ## 00001C6C
/* 00718 80BA2508 00808025 */  or      $s0, $a0, $zero            ## $s0 = 00000000
/* 0071C 80BA250C 00A03025 */  or      $a2, $a1, $zero            ## $a2 = 00000000
/* 00720 80BA2510 10400021 */  beq     $v0, $zero, .L80BA2598     
/* 00724 80BA2514 240401D6 */  addiu   $a0, $zero, 0x01D6         ## $a0 = 000001D6
/* 00728 80BA2518 844E0000 */  lh      $t6, 0x0000($v0)           ## 00000000
.L80BA251C:
/* 0072C 80BA251C 548E001C */  bnel    $a0, $t6, .L80BA2590       
/* 00730 80BA2520 8C420124 */  lw      $v0, 0x0124($v0)           ## 00000124
/* 00734 80BA2524 8443001C */  lh      $v1, 0x001C($v0)           ## 0000001C
/* 00738 80BA2528 00037BC3 */  sra     $t7, $v1, 15               
/* 0073C 80BA252C 31F80001 */  andi    $t8, $t7, 0x0001           ## $t8 = 00000000
/* 00740 80BA2530 57000017 */  bnel    $t8, $zero, .L80BA2590     
/* 00744 80BA2534 8C420124 */  lw      $v0, 0x0124($v0)           ## 00000124
/* 00748 80BA2538 8605001C */  lh      $a1, 0x001C($s0)           ## 0000001C
/* 0074C 80BA253C 3079003F */  andi    $t9, $v1, 0x003F           ## $t9 = 00000000
/* 00750 80BA2540 30A5003F */  andi    $a1, $a1, 0x003F           ## $a1 = 00000000
/* 00754 80BA2544 57250012 */  bnel    $t9, $a1, .L80BA2590       
/* 00758 80BA2548 8C420124 */  lw      $v0, 0x0124($v0)           ## 00000124
/* 0075C 80BA254C AE02011C */  sw      $v0, 0x011C($s0)           ## 0000011C
/* 00760 80BA2550 AFA60024 */  sw      $a2, 0x0024($sp)           
/* 00764 80BA2554 0C00B2D0 */  jal     Flags_GetSwitch
              
/* 00768 80BA2558 00C02025 */  or      $a0, $a2, $zero            ## $a0 = 00000000
/* 0076C 80BA255C 10400007 */  beq     $v0, $zero, .L80BA257C     
/* 00770 80BA2560 8FA60024 */  lw      $a2, 0x0024($sp)           
/* 00774 80BA2564 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 00778 80BA2568 0C2E8812 */  jal     func_80BA2048              
/* 0077C 80BA256C 00C02825 */  or      $a1, $a2, $zero            ## $a1 = 00000000
/* 00780 80BA2570 3C0880BA */  lui     $t0, %hi(ObjWarp2block_Draw)    ## $t0 = 80BA0000
/* 00784 80BA2574 250826F4 */  addiu   $t0, $t0, %lo(ObjWarp2block_Draw) ## $t0 = 80BA26F4
/* 00788 80BA2578 AE080134 */  sw      $t0, 0x0134($s0)           ## 00000134
.L80BA257C:
/* 0078C 80BA257C 0C2E8980 */  jal     func_80BA2600              
/* 00790 80BA2580 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 00794 80BA2584 1000001A */  beq     $zero, $zero, .L80BA25F0   
/* 00798 80BA2588 8FBF001C */  lw      $ra, 0x001C($sp)           
/* 0079C 80BA258C 8C420124 */  lw      $v0, 0x0124($v0)           ## 00000124
.L80BA2590:
/* 007A0 80BA2590 5440FFE2 */  bnel    $v0, $zero, .L80BA251C     
/* 007A4 80BA2594 844E0000 */  lh      $t6, 0x0000($v0)           ## 00000000
.L80BA2598:
/* 007A8 80BA2598 86090174 */  lh      $t1, 0x0174($s0)           ## 00000174
/* 007AC 80BA259C 3C0480BA */  lui     $a0, %hi(D_80BA28E0)       ## $a0 = 80BA0000
/* 007B0 80BA25A0 252A0001 */  addiu   $t2, $t1, 0x0001           ## $t2 = 00000001
/* 007B4 80BA25A4 A60A0174 */  sh      $t2, 0x0174($s0)           ## 00000174
/* 007B8 80BA25A8 860B0174 */  lh      $t3, 0x0174($s0)           ## 00000174
/* 007BC 80BA25AC 2961003D */  slti    $at, $t3, 0x003D           
/* 007C0 80BA25B0 5420000F */  bnel    $at, $zero, .L80BA25F0     
/* 007C4 80BA25B4 8FBF001C */  lw      $ra, 0x001C($sp)           
/* 007C8 80BA25B8 0C00084C */  jal     osSyncPrintf
              
/* 007CC 80BA25BC 248428E0 */  addiu   $a0, $a0, %lo(D_80BA28E0)  ## $a0 = 80BA28E0
/* 007D0 80BA25C0 3C0480BA */  lui     $a0, %hi(D_80BA28EC)       ## $a0 = 80BA0000
/* 007D4 80BA25C4 3C0580BA */  lui     $a1, %hi(D_80BA2930)       ## $a1 = 80BA0000
/* 007D8 80BA25C8 24A52930 */  addiu   $a1, $a1, %lo(D_80BA2930)  ## $a1 = 80BA2930
/* 007DC 80BA25CC 248428EC */  addiu   $a0, $a0, %lo(D_80BA28EC)  ## $a0 = 80BA28EC
/* 007E0 80BA25D0 0C00084C */  jal     osSyncPrintf
              
/* 007E4 80BA25D4 240601F9 */  addiu   $a2, $zero, 0x01F9         ## $a2 = 000001F9
/* 007E8 80BA25D8 3C0480BA */  lui     $a0, %hi(D_80BA2948)       ## $a0 = 80BA0000
/* 007EC 80BA25DC 0C00084C */  jal     osSyncPrintf
              
/* 007F0 80BA25E0 24842948 */  addiu   $a0, $a0, %lo(D_80BA2948)  ## $a0 = 80BA2948
/* 007F4 80BA25E4 0C00B55C */  jal     Actor_Kill
              
/* 007F8 80BA25E8 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 007FC 80BA25EC 8FBF001C */  lw      $ra, 0x001C($sp)           
.L80BA25F0:
/* 00800 80BA25F0 8FB00018 */  lw      $s0, 0x0018($sp)           
/* 00804 80BA25F4 27BD0020 */  addiu   $sp, $sp, 0x0020           ## $sp = 00000000
/* 00808 80BA25F8 03E00008 */  jr      $ra                        
/* 0080C 80BA25FC 00000000 */  nop
