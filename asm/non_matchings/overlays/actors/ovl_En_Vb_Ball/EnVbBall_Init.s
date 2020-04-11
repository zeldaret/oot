.late_rodata
glabel D_80B2A0E0
    .float -0.8
    .balign 4

glabel D_80B2A0E4
    .float 10000.0
    .balign 4

glabel D_80B2A0E8
    .float 3000.0
    .balign 4

glabel D_80B2A0EC
    .float 5000.0
    .balign 4

glabel D_80B2A0F0
 .word 0xC51C4000

.text
glabel EnVbBall_Init
/* 00000 80B28FA0 27BDFFC8 */  addiu   $sp, $sp, 0xFFC8           ## $sp = FFFFFFC8
/* 00004 80B28FA4 AFBF001C */  sw      $ra, 0x001C($sp)           
/* 00008 80B28FA8 AFB00018 */  sw      $s0, 0x0018($sp)           
/* 0000C 80B28FAC AFA5003C */  sw      $a1, 0x003C($sp)           
/* 00010 80B28FB0 848E001C */  lh      $t6, 0x001C($a0)           ## 0000001C
/* 00014 80B28FB4 00808025 */  or      $s0, $a0, $zero            ## $s0 = 00000000
/* 00018 80B28FB8 26050168 */  addiu   $a1, $s0, 0x0168           ## $a1 = 00000168
/* 0001C 80B28FBC 29C100C8 */  slti    $at, $t6, 0x00C8           
/* 00020 80B28FC0 1420001E */  bne     $at, $zero, .L80B2903C     
/* 00024 80B28FC4 8FA4003C */  lw      $a0, 0x003C($sp)           
/* 00028 80B28FC8 3C014440 */  lui     $at, 0x4440                ## $at = 44400000
/* 0002C 80B28FCC 44816000 */  mtc1    $at, $f12                  ## $f12 = 768.00
/* 00030 80B28FD0 0C00CFC8 */  jal     Math_Rand_CenteredFloat
              
/* 00034 80B28FD4 00000000 */  nop
/* 00038 80B28FD8 3C014440 */  lui     $at, 0x4440                ## $at = 44400000
/* 0003C 80B28FDC 44816000 */  mtc1    $at, $f12                  ## $f12 = 768.00
/* 00040 80B28FE0 0C00CFC8 */  jal     Math_Rand_CenteredFloat
              
/* 00044 80B28FE4 E600015C */  swc1    $f0, 0x015C($s0)           ## 0000015C
/* 00048 80B28FE8 E6000158 */  swc1    $f0, 0x0158($s0)           ## 00000158
/* 0004C 80B28FEC C60C0024 */  lwc1    $f12, 0x0024($s0)          ## 00000024
/* 00050 80B28FF0 0C03F494 */  jal     Math_atan2f              
/* 00054 80B28FF4 C60E002C */  lwc1    $f14, 0x002C($s0)          ## 0000002C
/* 00058 80B28FF8 3C014040 */  lui     $at, 0x4040                ## $at = 40400000
/* 0005C 80B28FFC 44816000 */  mtc1    $at, $f12                  ## $f12 = 3.00
/* 00060 80B29000 0C00CFBE */  jal     Math_Rand_ZeroFloat
              
/* 00064 80B29004 E7A00028 */  swc1    $f0, 0x0028($sp)           
/* 00068 80B29008 E6000060 */  swc1    $f0, 0x0060($s0)           ## 00000060
/* 0006C 80B2900C 0C0400A4 */  jal     sinf
              
/* 00070 80B29010 C7AC0028 */  lwc1    $f12, 0x0028($sp)          
/* 00074 80B29014 46000100 */  add.s   $f4, $f0, $f0              
/* 00078 80B29018 E604005C */  swc1    $f4, 0x005C($s0)           ## 0000005C
/* 0007C 80B2901C 0C041184 */  jal     cosf
              
/* 00080 80B29020 C7AC0028 */  lwc1    $f12, 0x0028($sp)          
/* 00084 80B29024 46000180 */  add.s   $f6, $f0, $f0              
/* 00088 80B29028 3C0180B3 */  lui     $at, %hi(D_80B2A0E0)       ## $at = 80B30000
/* 0008C 80B2902C E6060064 */  swc1    $f6, 0x0064($s0)           ## 00000064
/* 00090 80B29030 C428A0E0 */  lwc1    $f8, %lo(D_80B2A0E0)($at)  
/* 00094 80B29034 10000035 */  beq     $zero, $zero, .L80B2910C   
/* 00098 80B29038 E608006C */  swc1    $f8, 0x006C($s0)           ## 0000006C
.L80B2903C:
/* 0009C 80B2903C 0C0170D9 */  jal     ActorCollider_AllocCylinder
              
/* 000A0 80B29040 AFA50024 */  sw      $a1, 0x0024($sp)           
/* 000A4 80B29044 3C0780B3 */  lui     $a3, %hi(D_80B2A000)       ## $a3 = 80B30000
/* 000A8 80B29048 8FA50024 */  lw      $a1, 0x0024($sp)           
/* 000AC 80B2904C 24E7A000 */  addiu   $a3, $a3, %lo(D_80B2A000)  ## $a3 = 80B2A000
/* 000B0 80B29050 8FA4003C */  lw      $a0, 0x003C($sp)           
/* 000B4 80B29054 0C01712B */  jal     ActorCollider_InitCylinder
              
/* 000B8 80B29058 02003025 */  or      $a2, $s0, $zero            ## $a2 = 00000000
/* 000BC 80B2905C 860F0034 */  lh      $t7, 0x0034($s0)           ## 00000034
/* 000C0 80B29060 3C0180B3 */  lui     $at, %hi(D_80B2A0E4)       ## $at = 80B30000
/* 000C4 80B29064 C432A0E4 */  lwc1    $f18, %lo(D_80B2A0E4)($at) 
/* 000C8 80B29068 448F5000 */  mtc1    $t7, $f10                  ## $f10 = 0.00
/* 000CC 80B2906C 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 000D0 80B29070 46805420 */  cvt.s.w $f16, $f10                 
/* 000D4 80B29074 46128103 */  div.s   $f4, $f16, $f18            
/* 000D8 80B29078 44052000 */  mfc1    $a1, $f4                   
/* 000DC 80B2907C 0C00B58B */  jal     Actor_SetScale
              
/* 000E0 80B29080 00000000 */  nop
/* 000E4 80B29084 3C0180B3 */  lui     $at, %hi(D_80B2A0E8)       ## $at = 80B30000
/* 000E8 80B29088 C426A0E8 */  lwc1    $f6, %lo(D_80B2A0E8)($at)  
/* 000EC 80B2908C C6000054 */  lwc1    $f0, 0x0054($s0)           ## 00000054
/* 000F0 80B29090 3C0180B3 */  lui     $at, %hi(D_80B2A0EC)       ## $at = 80B30000
/* 000F4 80B29094 46060202 */  mul.s   $f8, $f0, $f6              
/* 000F8 80B29098 4600428D */  trunc.w.s $f10, $f8                  
/* 000FC 80B2909C 44195000 */  mfc1    $t9, $f10                  
/* 00100 80B290A0 00000000 */  nop
/* 00104 80B290A4 A61901A8 */  sh      $t9, 0x01A8($s0)           ## 000001A8
/* 00108 80B290A8 C430A0EC */  lwc1    $f16, %lo(D_80B2A0EC)($at) 
/* 0010C 80B290AC 3C0180B3 */  lui     $at, %hi(D_80B2A0F0)       ## $at = 80B30000
/* 00110 80B290B0 46100482 */  mul.s   $f18, $f0, $f16            
/* 00114 80B290B4 4600910D */  trunc.w.s $f4, $f18                  
/* 00118 80B290B8 44092000 */  mfc1    $t1, $f4                   
/* 0011C 80B290BC 00000000 */  nop
/* 00120 80B290C0 A60901AA */  sh      $t1, 0x01AA($s0)           ## 000001AA
/* 00124 80B290C4 C426A0F0 */  lwc1    $f6, %lo(D_80B2A0F0)($at)  
/* 00128 80B290C8 3C014600 */  lui     $at, 0x4600                ## $at = 46000000
/* 0012C 80B290CC 44816000 */  mtc1    $at, $f12                  ## $f12 = 8192.00
/* 00130 80B290D0 46060202 */  mul.s   $f8, $f0, $f6              
/* 00134 80B290D4 4600428D */  trunc.w.s $f10, $f8                  
/* 00138 80B290D8 440B5000 */  mfc1    $t3, $f10                  
/* 0013C 80B290DC 0C00CFC8 */  jal     Math_Rand_CenteredFloat
              
/* 00140 80B290E0 A60B01AC */  sh      $t3, 0x01AC($s0)           ## 000001AC
/* 00144 80B290E4 3C014600 */  lui     $at, 0x4600                ## $at = 46000000
/* 00148 80B290E8 44816000 */  mtc1    $at, $f12                  ## $f12 = 8192.00
/* 0014C 80B290EC 0C00CFC8 */  jal     Math_Rand_CenteredFloat
              
/* 00150 80B290F0 E6000158 */  swc1    $f0, 0x0158($s0)           ## 00000158
/* 00154 80B290F4 3C014288 */  lui     $at, 0x4288                ## $at = 42880000
/* 00158 80B290F8 44819000 */  mtc1    $at, $f18                  ## $f18 = 68.00
/* 0015C 80B290FC C6100054 */  lwc1    $f16, 0x0054($s0)          ## 00000054
/* 00160 80B29100 E600015C */  swc1    $f0, 0x015C($s0)           ## 0000015C
/* 00164 80B29104 46128102 */  mul.s   $f4, $f16, $f18            
/* 00168 80B29108 E6040160 */  swc1    $f4, 0x0160($s0)           ## 00000160
.L80B2910C:
/* 0016C 80B2910C 8FBF001C */  lw      $ra, 0x001C($sp)           
/* 00170 80B29110 8FB00018 */  lw      $s0, 0x0018($sp)           
/* 00174 80B29114 27BD0038 */  addiu   $sp, $sp, 0x0038           ## $sp = 00000000
/* 00178 80B29118 03E00008 */  jr      $ra                        
/* 0017C 80B2911C 00000000 */  nop


