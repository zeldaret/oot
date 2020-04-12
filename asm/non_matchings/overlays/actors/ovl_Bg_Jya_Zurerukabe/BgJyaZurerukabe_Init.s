.rdata
glabel D_8089BAAC
    .asciz "[41;37m"
    .balign 4

glabel D_8089BAB8
    .asciz "home pos が変更されたみたい(%s %d)(arg_data 0x%04x)\n"
    .balign 4

.balign 4

glabel D_8089BAF0
    .asciz "../z_bg_jya_zurerukabe.c"
    .balign 4

glabel D_8089BB0C
    .asciz "\x1b[m"
    .balign 4

glabel D_8089BB10
    .asciz "(jya ずれる壁)(arg_data 0x%04x)\n"
    .balign 4

.balign 4

.text
glabel BgJyaZurerukabe_Init
/* 00220 8089B660 27BDFFE0 */  addiu   $sp, $sp, 0xFFE0           ## $sp = FFFFFFE0
/* 00224 8089B664 AFBF001C */  sw      $ra, 0x001C($sp)           
/* 00228 8089B668 AFB00018 */  sw      $s0, 0x0018($sp)           
/* 0022C 8089B66C 3C060601 */  lui     $a2, 0x0601                ## $a2 = 06010000
/* 00230 8089B670 00808025 */  or      $s0, $a0, $zero            ## $s0 = 00000000
/* 00234 8089B674 24C62508 */  addiu   $a2, $a2, 0x2508           ## $a2 = 06012508
/* 00238 8089B678 0C226D10 */  jal     func_8089B440              
/* 0023C 8089B67C 00003825 */  or      $a3, $zero, $zero          ## $a3 = 00000000
/* 00240 8089B680 3C05808A */  lui     $a1, %hi(D_8089BA3C)       ## $a1 = 808A0000
/* 00244 8089B684 24A5BA3C */  addiu   $a1, $a1, %lo(D_8089BA3C)  ## $a1 = 8089BA3C
/* 00248 8089B688 0C01E037 */  jal     Actor_ProcessInitChain
              
/* 0024C 8089B68C 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 00250 8089B690 3C013F80 */  lui     $at, 0x3F80                ## $at = 3F800000
/* 00254 8089B694 3C03808A */  lui     $v1, %hi(D_8089B9F0)       ## $v1 = 808A0000
/* 00258 8089B698 44816000 */  mtc1    $at, $f12                  ## $f12 = 1.00
/* 0025C 8089B69C 2463B9F0 */  addiu   $v1, $v1, %lo(D_8089B9F0)  ## $v1 = 8089B9F0
/* 00260 8089B6A0 00001025 */  or      $v0, $zero, $zero          ## $v0 = 00000000
/* 00264 8089B6A4 C602000C */  lwc1    $f2, 0x000C($s0)           ## 0000000C
/* 00268 8089B6A8 24040004 */  addiu   $a0, $zero, 0x0004         ## $a0 = 00000004
.L8089B6AC:
/* 0026C 8089B6AC 846E0000 */  lh      $t6, 0x0000($v1)           ## 8089B9F0
/* 00270 8089B6B0 448E2000 */  mtc1    $t6, $f4                   ## $f4 = 0.00
/* 00274 8089B6B4 00000000 */  nop
/* 00278 8089B6B8 468021A0 */  cvt.s.w $f6, $f4                   
/* 0027C 8089B6BC 46023001 */  sub.s   $f0, $f6, $f2              
/* 00280 8089B6C0 46000005 */  abs.s   $f0, $f0                   
/* 00284 8089B6C4 460C003C */  c.lt.s  $f0, $f12                  
/* 00288 8089B6C8 00000000 */  nop
/* 0028C 8089B6CC 45020004 */  bc1fl   .L8089B6E0                 
/* 00290 8089B6D0 24420001 */  addiu   $v0, $v0, 0x0001           ## $v0 = 00000001
/* 00294 8089B6D4 10000004 */  beq     $zero, $zero, .L8089B6E8   
/* 00298 8089B6D8 A6020168 */  sh      $v0, 0x0168($s0)           ## 00000168
/* 0029C 8089B6DC 24420001 */  addiu   $v0, $v0, 0x0001           ## $v0 = 00000002
.L8089B6E0:
/* 002A0 8089B6E0 1444FFF2 */  bne     $v0, $a0, .L8089B6AC       
/* 002A4 8089B6E4 24630002 */  addiu   $v1, $v1, 0x0002           ## $v1 = 8089B9F2
.L8089B6E8:
/* 002A8 8089B6E8 3C0F808A */  lui     $t7, %hi(D_8089B9F8)       ## $t7 = 808A0000
/* 002AC 8089B6EC 25EFB9F8 */  addiu   $t7, $t7, %lo(D_8089B9F8)  ## $t7 = 8089B9F8
/* 002B0 8089B6F0 146F000D */  bne     $v1, $t7, .L8089B728       
/* 002B4 8089B6F4 3C04808A */  lui     $a0, %hi(D_8089BAAC)       ## $a0 = 808A0000
/* 002B8 8089B6F8 0C00084C */  jal     osSyncPrintf
              
/* 002BC 8089B6FC 2484BAAC */  addiu   $a0, $a0, %lo(D_8089BAAC)  ## $a0 = 8089BAAC
/* 002C0 8089B700 3C04808A */  lui     $a0, %hi(D_8089BAB8)       ## $a0 = 808A0000
/* 002C4 8089B704 3C05808A */  lui     $a1, %hi(D_8089BAF0)       ## $a1 = 808A0000
/* 002C8 8089B708 24A5BAF0 */  addiu   $a1, $a1, %lo(D_8089BAF0)  ## $a1 = 8089BAF0
/* 002CC 8089B70C 2484BAB8 */  addiu   $a0, $a0, %lo(D_8089BAB8)  ## $a0 = 8089BAB8
/* 002D0 8089B710 2406012B */  addiu   $a2, $zero, 0x012B         ## $a2 = 0000012B
/* 002D4 8089B714 0C00084C */  jal     osSyncPrintf
              
/* 002D8 8089B718 8607001C */  lh      $a3, 0x001C($s0)           ## 0000001C
/* 002DC 8089B71C 3C04808A */  lui     $a0, %hi(D_8089BB0C)       ## $a0 = 808A0000
/* 002E0 8089B720 0C00084C */  jal     osSyncPrintf
              
/* 002E4 8089B724 2484BB0C */  addiu   $a0, $a0, %lo(D_8089BB0C)  ## $a0 = 8089BB0C
.L8089B728:
/* 002E8 8089B728 86180168 */  lh      $t8, 0x0168($s0)           ## 00000168
/* 002EC 8089B72C 3C08808A */  lui     $t0, %hi(D_8089B9F8)       ## $t0 = 808A0000
/* 002F0 8089B730 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 002F4 8089B734 0018C840 */  sll     $t9, $t8,  1               
/* 002F8 8089B738 01194021 */  addu    $t0, $t0, $t9              
/* 002FC 8089B73C 8508B9F8 */  lh      $t0, %lo(D_8089B9F8)($t0)  
/* 00300 8089B740 0C226DED */  jal     func_8089B7B4              
/* 00304 8089B744 A608016E */  sh      $t0, 0x016E($s0)           ## 0000016E
/* 00308 8089B748 3C04808A */  lui     $a0, %hi(D_8089BB10)       ## $a0 = 808A0000
/* 0030C 8089B74C 2484BB10 */  addiu   $a0, $a0, %lo(D_8089BB10)  ## $a0 = 8089BB10
/* 00310 8089B750 0C00084C */  jal     osSyncPrintf
              
/* 00314 8089B754 8605001C */  lh      $a1, 0x001C($s0)           ## 0000001C
/* 00318 8089B758 8FBF001C */  lw      $ra, 0x001C($sp)           
/* 0031C 8089B75C 8FB00018 */  lw      $s0, 0x0018($sp)           
/* 00320 8089B760 27BD0020 */  addiu   $sp, $sp, 0x0020           ## $sp = 00000000
/* 00324 8089B764 03E00008 */  jr      $ra                        
/* 00328 8089B768 00000000 */  nop
