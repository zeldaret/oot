.late_rodata
glabel D_809BCB74
 .word 0x40333333
glabel D_809BCB78
    .float 0.8
    .balign 4

glabel D_809BCB7C
 .word 0x3F666667
glabel D_809BCB80
    .float 0.6
    .balign 4

glabel D_809BCB84
 .word 0x40866667

.text
glabel EnBdfire_Init
/* 00010 809BC040 27BDFFC0 */  addiu   $sp, $sp, 0xFFC0           ## $sp = FFFFFFC0
/* 00014 809BC044 AFA50044 */  sw      $a1, 0x0044($sp)           
/* 00018 809BC048 AFBF002C */  sw      $ra, 0x002C($sp)           
/* 0001C 809BC04C AFB00028 */  sw      $s0, 0x0028($sp)           
/* 00020 809BC050 3C053F19 */  lui     $a1, 0x3F19                ## $a1 = 3F190000
/* 00024 809BC054 00808025 */  or      $s0, $a0, $zero            ## $s0 = 00000000
/* 00028 809BC058 0C00B58B */  jal     Actor_SetScale
              
/* 0002C 809BC05C 34A5999A */  ori     $a1, $a1, 0x999A           ## $a1 = 3F19999A
/* 00030 809BC060 3C05809C */  lui     $a1, %hi(func_809BC8C8)    ## $a1 = 809C0000
/* 00034 809BC064 24A5C8C8 */  addiu   $a1, $a1, %lo(func_809BC8C8) ## $a1 = 809BC8C8
/* 00038 809BC068 0C26F00E */  jal     func_809BC038              
/* 0003C 809BC06C 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 00040 809BC070 860E001C */  lh      $t6, 0x001C($s0)           ## 0000001C
/* 00044 809BC074 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 00048 809BC078 3C05809C */  lui     $a1, %hi(func_809BC598)    ## $a1 = 809C0000
/* 0004C 809BC07C 05C1002A */  bgez    $t6, .L809BC128            
/* 00050 809BC080 00000000 */  nop
/* 00054 809BC084 3C05809C */  lui     $a1, %hi(func_809BC2A4)    ## $a1 = 809C0000
/* 00058 809BC088 24A5C2A4 */  addiu   $a1, $a1, %lo(func_809BC2A4) ## $a1 = 809BC2A4
/* 0005C 809BC08C 0C26F00C */  jal     func_809BC030              
/* 00060 809BC090 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 00064 809BC094 3C01809C */  lui     $at, %hi(D_809BCB74)       ## $at = 809C0000
/* 00068 809BC098 C424CB74 */  lwc1    $f4, %lo(D_809BCB74)($at)  
/* 0006C 809BC09C C6060024 */  lwc1    $f6, 0x0024($s0)           ## 00000024
/* 00070 809BC0A0 C60A0028 */  lwc1    $f10, 0x0028($s0)          ## 00000028
/* 00074 809BC0A4 C612002C */  lwc1    $f18, 0x002C($s0)          ## 0000002C
/* 00078 809BC0A8 E6040050 */  swc1    $f4, 0x0050($s0)           ## 00000050
/* 0007C 809BC0AC 4600320D */  trunc.w.s $f8, $f6                   
/* 00080 809BC0B0 240F005A */  addiu   $t7, $zero, 0x005A         ## $t7 = 0000005A
/* 00084 809BC0B4 A60F0154 */  sh      $t7, 0x0154($s0)           ## 00000154
/* 00088 809BC0B8 4600540D */  trunc.w.s $f16, $f10                 
/* 0008C 809BC0BC 44054000 */  mfc1    $a1, $f8                   
/* 00090 809BC0C0 260401D4 */  addiu   $a0, $s0, 0x01D4           ## $a0 = 000001D4
/* 00094 809BC0C4 4600910D */  trunc.w.s $f4, $f18                  
/* 00098 809BC0C8 44068000 */  mfc1    $a2, $f16                  
/* 0009C 809BC0CC 240900FF */  addiu   $t1, $zero, 0x00FF         ## $t1 = 000000FF
/* 000A0 809BC0D0 240A00FF */  addiu   $t2, $zero, 0x00FF         ## $t2 = 000000FF
/* 000A4 809BC0D4 44072000 */  mfc1    $a3, $f4                   
/* 000A8 809BC0D8 240B00FF */  addiu   $t3, $zero, 0x00FF         ## $t3 = 000000FF
/* 000AC 809BC0DC 240C012C */  addiu   $t4, $zero, 0x012C         ## $t4 = 0000012C
/* 000B0 809BC0E0 00052C00 */  sll     $a1, $a1, 16               
/* 000B4 809BC0E4 00063400 */  sll     $a2, $a2, 16               
/* 000B8 809BC0E8 00073C00 */  sll     $a3, $a3, 16               
/* 000BC 809BC0EC 00073C03 */  sra     $a3, $a3, 16               
/* 000C0 809BC0F0 00063403 */  sra     $a2, $a2, 16               
/* 000C4 809BC0F4 00052C03 */  sra     $a1, $a1, 16               
/* 000C8 809BC0F8 AFAC001C */  sw      $t4, 0x001C($sp)           
/* 000CC 809BC0FC AFAB0018 */  sw      $t3, 0x0018($sp)           
/* 000D0 809BC100 AFAA0014 */  sw      $t2, 0x0014($sp)           
/* 000D4 809BC104 AFA90010 */  sw      $t1, 0x0010($sp)           
/* 000D8 809BC108 0C01E763 */  jal     Lights_InitType0PositionalLight
/* 000DC 809BC10C AFA40034 */  sw      $a0, 0x0034($sp)           
/* 000E0 809BC110 8FA40044 */  lw      $a0, 0x0044($sp)           
/* 000E4 809BC114 8FA60034 */  lw      $a2, 0x0034($sp)           
/* 000E8 809BC118 0C01E9D9 */  jal     Lights_Insert
/* 000EC 809BC11C 248507A8 */  addiu   $a1, $a0, 0x07A8           ## $a1 = 000007A8
/* 000F0 809BC120 1000004D */  beq     $zero, $zero, .L809BC258   
/* 000F4 809BC124 AE0201D0 */  sw      $v0, 0x01D0($s0)           ## 000001D0
.L809BC128:
/* 000F8 809BC128 0C26F00C */  jal     func_809BC030              
/* 000FC 809BC12C 24A5C598 */  addiu   $a1, $a1, %lo(func_809BC598) ## $a1 = FFFFC598
/* 00100 809BC130 44800000 */  mtc1    $zero, $f0                 ## $f0 = 0.00
/* 00104 809BC134 3C068003 */  lui     $a2, 0x8003                ## $a2 = 80030000
/* 00108 809BC138 24C6B5EC */  addiu   $a2, $a2, 0xB5EC           ## $a2 = 8002B5EC
/* 0010C 809BC13C 44050000 */  mfc1    $a1, $f0                   
/* 00110 809BC140 44070000 */  mfc1    $a3, $f0                   
/* 00114 809BC144 0C00AC78 */  jal     ActorShape_Init
              
/* 00118 809BC148 260400B4 */  addiu   $a0, $s0, 0x00B4           ## $a0 = 000000B4
/* 0011C 809BC14C 860D001C */  lh      $t5, 0x001C($s0)           ## 0000001C
/* 00120 809BC150 3C0141F0 */  lui     $at, 0x41F0                ## $at = 41F00000
/* 00124 809BC154 44813000 */  mtc1    $at, $f6                   ## $f6 = 30.00
/* 00128 809BC158 448D4000 */  mtc1    $t5, $f8                   ## $f8 = 0.00
/* 0012C 809BC15C 3C01809C */  lui     $at, %hi(D_809BCB78)       ## $at = 809C0000
/* 00130 809BC160 E6060068 */  swc1    $f6, 0x0068($s0)           ## 00000068
/* 00134 809BC164 46804020 */  cvt.s.w $f0, $f8                   
/* 00138 809BC168 C42ACB78 */  lwc1    $f10, %lo(D_809BCB78)($at) 
/* 0013C 809BC16C 24180019 */  addiu   $t8, $zero, 0x0019         ## $t8 = 00000019
/* 00140 809BC170 3C01809C */  lui     $at, %hi(D_809BCB7C)       ## $at = 809C0000
/* 00144 809BC174 460A0402 */  mul.s   $f16, $f0, $f10            
/* 00148 809BC178 4600848D */  trunc.w.s $f18, $f16                 
/* 0014C 809BC17C 440F9000 */  mfc1    $t7, $f18                  
/* 00150 809BC180 00000000 */  nop
/* 00154 809BC184 030FC823 */  subu    $t9, $t8, $t7              
/* 00158 809BC188 A6190154 */  sh      $t9, 0x0154($s0)           ## 00000154
/* 0015C 809BC18C 86080154 */  lh      $t0, 0x0154($s0)           ## 00000154
/* 00160 809BC190 05010006 */  bgez    $t0, .L809BC1AC            
/* 00164 809BC194 00000000 */  nop
/* 00168 809BC198 8609001C */  lh      $t1, 0x001C($s0)           ## 0000001C
/* 0016C 809BC19C A6000154 */  sh      $zero, 0x0154($s0)         ## 00000154
/* 00170 809BC1A0 44892000 */  mtc1    $t1, $f4                   ## $f4 = 0.00
/* 00174 809BC1A4 00000000 */  nop
/* 00178 809BC1A8 46802020 */  cvt.s.w $f0, $f4                   
.L809BC1AC:
/* 0017C 809BC1AC C42CCB7C */  lwc1    $f12, %lo(D_809BCB7C)($at) 
/* 00180 809BC1B0 3C013E80 */  lui     $at, 0x3E80                ## $at = 3E800000
/* 00184 809BC1B4 44813000 */  mtc1    $at, $f6                   ## $f6 = 0.25
/* 00188 809BC1B8 3C01809C */  lui     $at, %hi(D_809BCB80)       ## $at = 809C0000
/* 0018C 809BC1BC C42ACB80 */  lwc1    $f10, %lo(D_809BCB80)($at) 
/* 00190 809BC1C0 46060202 */  mul.s   $f8, $f0, $f6              
/* 00194 809BC1C4 3C01809C */  lui     $at, %hi(D_809BCB84)       ## $at = 809C0000
/* 00198 809BC1C8 C432CB84 */  lwc1    $f18, %lo(D_809BCB84)($at) 
/* 0019C 809BC1CC 3C0141A0 */  lui     $at, 0x41A0                ## $at = 41A00000
/* 001A0 809BC1D0 460A4402 */  mul.s   $f16, $f8, $f10            
/* 001A4 809BC1D4 46109081 */  sub.s   $f2, $f18, $f16            
/* 001A8 809BC1D8 460C103C */  c.lt.s  $f2, $f12                  
/* 001AC 809BC1DC E6020188 */  swc1    $f2, 0x0188($s0)           ## 00000188
/* 001B0 809BC1E0 45020007 */  bc1fl   .L809BC200                 
/* 001B4 809BC1E4 44816000 */  mtc1    $at, $f12                  ## $f12 = 20.00
/* 001B8 809BC1E8 860A001C */  lh      $t2, 0x001C($s0)           ## 0000001C
/* 001BC 809BC1EC E60C0188 */  swc1    $f12, 0x0188($s0)          ## 00000188
/* 001C0 809BC1F0 448A2000 */  mtc1    $t2, $f4                   ## $f4 = 0.00
/* 001C4 809BC1F4 00000000 */  nop
/* 001C8 809BC1F8 46802020 */  cvt.s.w $f0, $f4                   
/* 001CC 809BC1FC 44816000 */  mtc1    $at, $f12                  ## $f12 = 20.00
.L809BC200:
/* 001D0 809BC200 3C01437F */  lui     $at, 0x437F                ## $at = 437F0000
/* 001D4 809BC204 44813000 */  mtc1    $at, $f6                   ## $f6 = 255.00
/* 001D8 809BC208 3C014120 */  lui     $at, 0x4120                ## $at = 41200000
/* 001DC 809BC20C 44814000 */  mtc1    $at, $f8                   ## $f8 = 10.00
/* 001E0 809BC210 00000000 */  nop
/* 001E4 809BC214 46080282 */  mul.s   $f10, $f0, $f8             
/* 001E8 809BC218 460A3081 */  sub.s   $f2, $f6, $f10             
/* 001EC 809BC21C 460C103C */  c.lt.s  $f2, $f12                  
/* 001F0 809BC220 E602018C */  swc1    $f2, 0x018C($s0)           ## 0000018C
/* 001F4 809BC224 45000002 */  bc1f    .L809BC230                 
/* 001F8 809BC228 00000000 */  nop
/* 001FC 809BC22C E60C018C */  swc1    $f12, 0x018C($s0)          ## 0000018C
.L809BC230:
/* 00200 809BC230 0C03F66B */  jal     Math_Rand_ZeroOne
              ## Rand.Next() float
/* 00204 809BC234 00000000 */  nop
/* 00208 809BC238 3C014100 */  lui     $at, 0x4100                ## $at = 41000000
/* 0020C 809BC23C 44819000 */  mtc1    $at, $f18                  ## $f18 = 8.00
/* 00210 809BC240 00000000 */  nop
/* 00214 809BC244 46120402 */  mul.s   $f16, $f0, $f18            
/* 00218 809BC248 4600810D */  trunc.w.s $f4, $f16                  
/* 0021C 809BC24C 440C2000 */  mfc1    $t4, $f4                   
/* 00220 809BC250 00000000 */  nop
/* 00224 809BC254 A60C0156 */  sh      $t4, 0x0156($s0)           ## 00000156
.L809BC258:
/* 00228 809BC258 8FBF002C */  lw      $ra, 0x002C($sp)           
/* 0022C 809BC25C 8FB00028 */  lw      $s0, 0x0028($sp)           
/* 00230 809BC260 27BD0040 */  addiu   $sp, $sp, 0x0040           ## $sp = 00000000
/* 00234 809BC264 03E00008 */  jr      $ra                        
/* 00238 809BC268 00000000 */  nop


