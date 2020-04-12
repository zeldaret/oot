.rdata
glabel D_809FFC70
    .asciz "\n\n"
    .balign 4

glabel D_809FFC74
    .asciz "[33m☆☆☆☆☆ 大妖精効果 ☆☆☆☆☆ %d\n[m"
    .balign 4

.late_rodata
glabel D_809FFCE0
    .float 0.025

glabel D_809FFCE4
 .word 0x3D1FBE77
glabel D_809FFCE8
 .word 0xBE4CCCCD

.text
glabel EnDyExtra_Init
/* 0000C 809FF6FC 27BDFFE8 */  addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
/* 00010 809FF700 00803025 */  or      $a2, $a0, $zero            ## $a2 = 00000000
/* 00014 809FF704 AFBF0014 */  sw      $ra, 0x0014($sp)           
/* 00018 809FF708 3C0480A0 */  lui     $a0, %hi(D_809FFC70)       ## $a0 = 80A00000
/* 0001C 809FF70C AFA5001C */  sw      $a1, 0x001C($sp)           
/* 00020 809FF710 2484FC70 */  addiu   $a0, $a0, %lo(D_809FFC70)  ## $a0 = 809FFC70
/* 00024 809FF714 0C00084C */  jal     osSyncPrintf
              
/* 00028 809FF718 AFA60018 */  sw      $a2, 0x0018($sp)           
/* 0002C 809FF71C 8FA60018 */  lw      $a2, 0x0018($sp)           
/* 00030 809FF720 3C0480A0 */  lui     $a0, %hi(D_809FFC74)       ## $a0 = 80A00000
/* 00034 809FF724 2484FC74 */  addiu   $a0, $a0, %lo(D_809FFC74)  ## $a0 = 809FFC74
/* 00038 809FF728 0C00084C */  jal     osSyncPrintf
              
/* 0003C 809FF72C 84C5001C */  lh      $a1, 0x001C($a2)           ## 0000001C
/* 00040 809FF730 8FA60018 */  lw      $a2, 0x0018($sp)           
/* 00044 809FF734 3C0180A0 */  lui     $at, %hi(D_809FFCE0)       ## $at = 80A00000
/* 00048 809FF738 C420FCE0 */  lwc1    $f0, %lo(D_809FFCE0)($at)  
/* 0004C 809FF73C 84CE001C */  lh      $t6, 0x001C($a2)           ## 0000001C
/* 00050 809FF740 8CD80024 */  lw      $t8, 0x0024($a2)           ## 00000024
/* 00054 809FF744 3C0180A0 */  lui     $at, %hi(D_809FFCE4)       ## $at = 80A00000
/* 00058 809FF748 E4C0015C */  swc1    $f0, 0x015C($a2)           ## 0000015C
/* 0005C 809FF74C A4CE0150 */  sh      $t6, 0x0150($a2)           ## 00000150
/* 00060 809FF750 C424FCE4 */  lwc1    $f4, %lo(D_809FFCE4)($at)  
/* 00064 809FF754 ACD80168 */  sw      $t8, 0x0168($a2)           ## 00000168
/* 00068 809FF758 8CD8002C */  lw      $t8, 0x002C($a2)           ## 0000002C
/* 0006C 809FF75C 8CCF0028 */  lw      $t7, 0x0028($a2)           ## 00000028
/* 00070 809FF760 3C0180A0 */  lui     $at, %hi(D_809FFCE8)       ## $at = 80A00000
/* 00074 809FF764 E4C00164 */  swc1    $f0, 0x0164($a2)           ## 00000164
/* 00078 809FF768 E4C40160 */  swc1    $f4, 0x0160($a2)           ## 00000160
/* 0007C 809FF76C ACD80170 */  sw      $t8, 0x0170($a2)           ## 00000170
/* 00080 809FF770 ACCF016C */  sw      $t7, 0x016C($a2)           ## 0000016C
/* 00084 809FF774 C426FCE8 */  lwc1    $f6, %lo(D_809FFCE8)($at)  
/* 00088 809FF778 3C013F80 */  lui     $at, 0x3F80                ## $at = 3F800000
/* 0008C 809FF77C 44814000 */  mtc1    $at, $f8                   ## $f8 = 1.00
/* 00090 809FF780 3C0880A0 */  lui     $t0, %hi(func_809FF7AC)    ## $t0 = 80A00000
/* 00094 809FF784 2419003C */  addiu   $t9, $zero, 0x003C         ## $t9 = 0000003C
/* 00098 809FF788 2508F7AC */  addiu   $t0, $t0, %lo(func_809FF7AC) ## $t0 = 809FF7AC
/* 0009C 809FF78C A4D90154 */  sh      $t9, 0x0154($a2)           ## 00000154
/* 000A0 809FF790 ACC8014C */  sw      $t0, 0x014C($a2)           ## 0000014C
/* 000A4 809FF794 E4C6006C */  swc1    $f6, 0x006C($a2)           ## 0000006C
/* 000A8 809FF798 E4C80158 */  swc1    $f8, 0x0158($a2)           ## 00000158
/* 000AC 809FF79C 8FBF0014 */  lw      $ra, 0x0014($sp)           
/* 000B0 809FF7A0 27BD0018 */  addiu   $sp, $sp, 0x0018           ## $sp = 00000000
/* 000B4 809FF7A4 03E00008 */  jr      $ra                        
/* 000B8 809FF7A8 00000000 */  nop
