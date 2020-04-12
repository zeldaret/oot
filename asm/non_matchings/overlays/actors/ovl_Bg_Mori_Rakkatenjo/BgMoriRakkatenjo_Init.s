.rdata
glabel D_808A5EA0
    .asciz "森の神殿 obj. 落下天井 (home posY %f)\n"
    .balign 4

glabel D_808A5EC8
    .asciz "Warning : セット位置が変更されています。プログラムを修正しましょう。\n"
    .balign 4

glabel D_808A5F10
    .asciz "Warning : セット Angle が変更されています。プログラムを修正しましょう。\n"
    .balign 4

glabel D_808A5F5C
    .asciz "Error : 森の神殿 obj 落下天井 バンク危険！(%s %d)\n"
    .balign 4

glabel D_808A5F90
    .asciz "../z_bg_mori_rakkatenjo.c"
    .balign 4

.late_rodata
glabel D_808A604C
    .float 0.001

glabel D_808A6050
 .word 0x44F8E000
glabel D_808A6054
 .word 0x442AC000
glabel D_808A6058
 .word 0xC51D8000

.text
glabel BgMoriRakkatenjo_Init
/* 00000 808A5570 27BDFFD0 */  addiu   $sp, $sp, 0xFFD0           ## $sp = FFFFFFD0
/* 00004 808A5574 AFBF001C */  sw      $ra, 0x001C($sp)           
/* 00008 808A5578 AFB00018 */  sw      $s0, 0x0018($sp)           
/* 0000C 808A557C AFA50034 */  sw      $a1, 0x0034($sp)           
/* 00010 808A5580 00808025 */  or      $s0, $a0, $zero            ## $s0 = 00000000
/* 00014 808A5584 AFA00024 */  sw      $zero, 0x0024($sp)         
/* 00018 808A5588 0C010D20 */  jal     DynaPolyInfo_SetActorMove
              
/* 0001C 808A558C 24050001 */  addiu   $a1, $zero, 0x0001         ## $a1 = 00000001
/* 00020 808A5590 C604000C */  lwc1    $f4, 0x000C($s0)           ## 0000000C
/* 00024 808A5594 3C04808A */  lui     $a0, %hi(D_808A5EA0)       ## $a0 = 808A0000
/* 00028 808A5598 24845EA0 */  addiu   $a0, $a0, %lo(D_808A5EA0)  ## $a0 = 808A5EA0
/* 0002C 808A559C 460021A1 */  cvt.d.s $f6, $f4                   
/* 00030 808A55A0 44073000 */  mfc1    $a3, $f6                   
/* 00034 808A55A4 44063800 */  mfc1    $a2, $f7                   
/* 00038 808A55A8 0C00084C */  jal     osSyncPrintf
              
/* 0003C 808A55AC 00000000 */  nop
/* 00040 808A55B0 3C01808A */  lui     $at, %hi(D_808A604C)       ## $at = 808A0000
/* 00044 808A55B4 C422604C */  lwc1    $f2, %lo(D_808A604C)($at)  
/* 00048 808A55B8 3C01808A */  lui     $at, %hi(D_808A6050)       ## $at = 808A0000
/* 0004C 808A55BC C4286050 */  lwc1    $f8, %lo(D_808A6050)($at)  
/* 00050 808A55C0 C60A0008 */  lwc1    $f10, 0x0008($s0)          ## 00000008
/* 00054 808A55C4 3C01808A */  lui     $at, %hi(D_808A6054)       ## $at = 808A0000
/* 00058 808A55C8 3C04808A */  lui     $a0, %hi(D_808A5EC8)       ## $a0 = 808A0000
/* 0005C 808A55CC 460A4001 */  sub.s   $f0, $f8, $f10             
/* 00060 808A55D0 46000005 */  abs.s   $f0, $f0                   
/* 00064 808A55D4 4600103C */  c.lt.s  $f2, $f0                   
/* 00068 808A55D8 00000000 */  nop
/* 0006C 808A55DC 45010012 */  bc1t    .L808A5628                 
/* 00070 808A55E0 00000000 */  nop
/* 00074 808A55E4 C4306054 */  lwc1    $f16, %lo(D_808A6054)($at) 
/* 00078 808A55E8 C612000C */  lwc1    $f18, 0x000C($s0)          ## 0000000C
/* 0007C 808A55EC 3C01808A */  lui     $at, %hi(D_808A6058)       ## $at = 808A0000
/* 00080 808A55F0 46128001 */  sub.s   $f0, $f16, $f18            
/* 00084 808A55F4 46000005 */  abs.s   $f0, $f0                   
/* 00088 808A55F8 4600103C */  c.lt.s  $f2, $f0                   
/* 0008C 808A55FC 00000000 */  nop
/* 00090 808A5600 45010009 */  bc1t    .L808A5628                 
/* 00094 808A5604 00000000 */  nop
/* 00098 808A5608 C4246058 */  lwc1    $f4, %lo(D_808A6058)($at)  
/* 0009C 808A560C C6060010 */  lwc1    $f6, 0x0010($s0)           ## 00000010
/* 000A0 808A5610 46062001 */  sub.s   $f0, $f4, $f6              
/* 000A4 808A5614 46000005 */  abs.s   $f0, $f0                   
/* 000A8 808A5618 4600103C */  c.lt.s  $f2, $f0                   
/* 000AC 808A561C 00000000 */  nop
/* 000B0 808A5620 45020004 */  bc1fl   .L808A5634                 
/* 000B4 808A5624 860E0016 */  lh      $t6, 0x0016($s0)           ## 00000016
.L808A5628:
/* 000B8 808A5628 0C00084C */  jal     osSyncPrintf
              
/* 000BC 808A562C 24845EC8 */  addiu   $a0, $a0, %lo(D_808A5EC8)  ## $a0 = 808A5EC8
/* 000C0 808A5630 860E0016 */  lh      $t6, 0x0016($s0)           ## 00000016
.L808A5634:
/* 000C4 808A5634 34018000 */  ori     $at, $zero, 0x8000         ## $at = 00008000
/* 000C8 808A5638 3C04808A */  lui     $a0, %hi(D_808A5F10)       ## $a0 = 808A0000
/* 000CC 808A563C 51C10004 */  beql    $t6, $at, .L808A5650       
/* 000D0 808A5640 8FA40034 */  lw      $a0, 0x0034($sp)           
/* 000D4 808A5644 0C00084C */  jal     osSyncPrintf
              
/* 000D8 808A5648 24845F10 */  addiu   $a0, $a0, %lo(D_808A5F10)  ## $a0 = 808A5F10
/* 000DC 808A564C 8FA40034 */  lw      $a0, 0x0034($sp)           
.L808A5650:
/* 000E0 808A5650 3C010001 */  lui     $at, 0x0001                ## $at = 00010000
/* 000E4 808A5654 342117A4 */  ori     $at, $at, 0x17A4           ## $at = 000117A4
/* 000E8 808A5658 24050073 */  addiu   $a1, $zero, 0x0073         ## $a1 = 00000073
/* 000EC 808A565C 0C02604B */  jal     Object_GetIndex
              ## ObjectIndex
/* 000F0 808A5660 00812021 */  addu    $a0, $a0, $at              
/* 000F4 808A5664 A2020174 */  sb      $v0, 0x0174($s0)           ## 00000174
/* 000F8 808A5668 820F0174 */  lb      $t7, 0x0174($s0)           ## 00000174
/* 000FC 808A566C 240600CD */  addiu   $a2, $zero, 0x00CD         ## $a2 = 000000CD
/* 00100 808A5670 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 00104 808A5674 05E1000A */  bgez    $t7, .L808A56A0            
/* 00108 808A5678 3C05808A */  lui     $a1, %hi(D_808A5E84)       ## $a1 = 808A0000
/* 0010C 808A567C 3C04808A */  lui     $a0, %hi(D_808A5F5C)       ## $a0 = 808A0000
/* 00110 808A5680 3C05808A */  lui     $a1, %hi(D_808A5F90)       ## $a1 = 808A0000
/* 00114 808A5684 24A55F90 */  addiu   $a1, $a1, %lo(D_808A5F90)  ## $a1 = 808A5F90
/* 00118 808A5688 0C00084C */  jal     osSyncPrintf
              
/* 0011C 808A568C 24845F5C */  addiu   $a0, $a0, %lo(D_808A5F5C)  ## $a0 = 808A5F5C
/* 00120 808A5690 0C00B55C */  jal     Actor_Kill
              
/* 00124 808A5694 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 00128 808A5698 10000012 */  beq     $zero, $zero, .L808A56E4   
/* 0012C 808A569C 8FBF001C */  lw      $ra, 0x001C($sp)           
.L808A56A0:
/* 00130 808A56A0 0C01E037 */  jal     Actor_ProcessInitChain
              
/* 00134 808A56A4 24A55E84 */  addiu   $a1, $a1, %lo(D_808A5E84)  ## $a1 = 00005E84
/* 00138 808A56A8 3C040601 */  lui     $a0, 0x0601                ## $a0 = 06010000
/* 0013C 808A56AC 248487AC */  addiu   $a0, $a0, 0x87AC           ## $a0 = 060087AC
/* 00140 808A56B0 0C010620 */  jal     DynaPolyInfo_Alloc
              
/* 00144 808A56B4 27A50024 */  addiu   $a1, $sp, 0x0024           ## $a1 = FFFFFFF4
/* 00148 808A56B8 8FA40034 */  lw      $a0, 0x0034($sp)           
/* 0014C 808A56BC 02003025 */  or      $a2, $s0, $zero            ## $a2 = 00000000
/* 00150 808A56C0 8FA70024 */  lw      $a3, 0x0024($sp)           
/* 00154 808A56C4 0C00FA9D */  jal     DynaPolyInfo_RegisterActor
              ## DynaPolyInfo_setActor
/* 00158 808A56C8 24850810 */  addiu   $a1, $a0, 0x0810           ## $a1 = 00000810
/* 0015C 808A56CC AE02014C */  sw      $v0, 0x014C($s0)           ## 0000014C
/* 00160 808A56D0 0C229621 */  jal     func_808A5884              
/* 00164 808A56D4 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 00168 808A56D8 3C01808A */  lui     $at, %hi(D_808A5E60)       ## $at = 808A0000
/* 0016C 808A56DC A4205E60 */  sh      $zero, %lo(D_808A5E60)($at) 
/* 00170 808A56E0 8FBF001C */  lw      $ra, 0x001C($sp)           
.L808A56E4:
/* 00174 808A56E4 8FB00018 */  lw      $s0, 0x0018($sp)           
/* 00178 808A56E8 27BD0030 */  addiu   $sp, $sp, 0x0030           ## $sp = 00000000
/* 0017C 808A56EC 03E00008 */  jr      $ra                        
/* 00180 808A56F0 00000000 */  nop
