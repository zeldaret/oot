.rdata
glabel D_80AC0300
    .asciz "\n\n"
    .balign 4

glabel D_80AC0304
    .asciz "[32m☆☆☆☆☆ オカリナタグ発生 ☆☆☆☆☆ %x\n[m"
    .balign 4

glabel D_80AC0338
    .asciz "[32m☆☆☆☆☆ セーブ情報	 ☆☆☆☆☆ %d\n[m"
    .balign 4

glabel D_80AC0368
    .asciz "[33m☆☆☆☆☆ 種類インデックス ☆☆☆☆☆ %d\n[m"
    .balign 4

glabel D_80AC039C
    .asciz "[35m☆☆☆☆☆ 正解情報	 ☆☆☆☆☆ %d\n[m"
    .balign 4

glabel D_80AC03C8
    .asciz "[36m☆☆☆☆☆ 範囲情報	 ☆☆☆☆☆ %d\n[m"
    .balign 4

glabel D_80AC03F4
    .asciz "[36m☆☆☆☆☆ 処理範囲情報	 ☆☆☆☆☆ %f\n[m"
    .balign 4

glabel D_80AC0424
    .asciz "[32m☆☆☆☆☆ 当り？		 ☆☆☆☆☆ %d\n[m"
    .balign 4

glabel D_80AC0450
    .asciz "\n\n"
    .balign 4

.late_rodata
glabel jtbl_80AC0508
.word L80ABEEE8
.word L80ABEEC8
.word L80ABEF10
.word L80ABEEE8
.word L80ABEEF8
.word L80ABEEE8
.word L80ABEEB8

.text
glabel EnOkarinaTag_Init
/* 0000C 80ABED2C 27BDFFE0 */  addiu   $sp, $sp, 0xFFE0           ## $sp = FFFFFFE0
/* 00010 80ABED30 AFB00018 */  sw      $s0, 0x0018($sp)           
/* 00014 80ABED34 00808025 */  or      $s0, $a0, $zero            ## $s0 = 00000000
/* 00018 80ABED38 AFBF001C */  sw      $ra, 0x001C($sp)           
/* 0001C 80ABED3C 3C0480AC */  lui     $a0, %hi(D_80AC0300)       ## $a0 = 80AC0000
/* 00020 80ABED40 AFA50024 */  sw      $a1, 0x0024($sp)           
/* 00024 80ABED44 0C00084C */  jal     osSyncPrintf
              
/* 00028 80ABED48 24840300 */  addiu   $a0, $a0, %lo(D_80AC0300)  ## $a0 = 80AC0300
/* 0002C 80ABED4C 3C0480AC */  lui     $a0, %hi(D_80AC0304)       ## $a0 = 80AC0000
/* 00030 80ABED50 24840304 */  addiu   $a0, $a0, %lo(D_80AC0304)  ## $a0 = 80AC0304
/* 00034 80ABED54 0C00084C */  jal     osSyncPrintf
              
/* 00038 80ABED58 8605001C */  lh      $a1, 0x001C($s0)           ## 0000001C
/* 0003C 80ABED5C 8602001C */  lh      $v0, 0x001C($s0)           ## 0000001C
/* 00040 80ABED60 8E0E0004 */  lw      $t6, 0x0004($s0)           ## 00000004
/* 00044 80ABED64 2401FFFE */  addiu   $at, $zero, 0xFFFE         ## $at = FFFFFFFE
/* 00048 80ABED68 304A003F */  andi    $t2, $v0, 0x003F           ## $t2 = 00000000
/* 0004C 80ABED6C A60A0154 */  sh      $t2, 0x0154($s0)           ## 00000154
/* 00050 80ABED70 860B0154 */  lh      $t3, 0x0154($s0)           ## 00000154
/* 00054 80ABED74 0002C283 */  sra     $t8, $v0, 10               
/* 00058 80ABED78 00024183 */  sra     $t0, $v0,  6               
/* 0005C 80ABED7C 01C17824 */  and     $t7, $t6, $at              
/* 00060 80ABED80 3319003F */  andi    $t9, $t8, 0x003F           ## $t9 = 00000000
/* 00064 80ABED84 3109000F */  andi    $t1, $t0, 0x000F           ## $t1 = 00000000
/* 00068 80ABED88 2401003F */  addiu   $at, $zero, 0x003F         ## $at = 0000003F
/* 0006C 80ABED8C AE0F0004 */  sw      $t7, 0x0004($s0)           ## 00000004
/* 00070 80ABED90 A6190150 */  sh      $t9, 0x0150($s0)           ## 00000150
/* 00074 80ABED94 15610003 */  bne     $t3, $at, .L80ABEDA4       
/* 00078 80ABED98 A6090152 */  sh      $t1, 0x0152($s0)           ## 00000152
/* 0007C 80ABED9C 240CFFFF */  addiu   $t4, $zero, 0xFFFF         ## $t4 = FFFFFFFF
/* 00080 80ABEDA0 A60C0154 */  sh      $t4, 0x0154($s0)           ## 00000154
.L80ABEDA4:
/* 00084 80ABEDA4 860D0152 */  lh      $t5, 0x0152($s0)           ## 00000152
/* 00088 80ABEDA8 2401000F */  addiu   $at, $zero, 0x000F         ## $at = 0000000F
/* 0008C 80ABEDAC 3C0480AC */  lui     $a0, %hi(D_80AC0338)       ## $a0 = 80AC0000
/* 00090 80ABEDB0 15A10004 */  bne     $t5, $at, .L80ABEDC4       
/* 00094 80ABEDB4 24840338 */  addiu   $a0, $a0, %lo(D_80AC0338)  ## $a0 = 80AC0338
/* 00098 80ABEDB8 240E0001 */  addiu   $t6, $zero, 0x0001         ## $t6 = 00000001
/* 0009C 80ABEDBC A6000152 */  sh      $zero, 0x0152($s0)         ## 00000152
/* 000A0 80ABEDC0 A60E0158 */  sh      $t6, 0x0158($s0)           ## 00000158
.L80ABEDC4:
/* 000A4 80ABEDC4 86020034 */  lh      $v0, 0x0034($s0)           ## 00000034
/* 000A8 80ABEDC8 240F0001 */  addiu   $t7, $zero, 0x0001         ## $t7 = 00000001
/* 000AC 80ABEDCC A20F001F */  sb      $t7, 0x001F($s0)           ## 0000001F
/* 000B0 80ABEDD0 18400007 */  blez    $v0, .L80ABEDF0            
/* 000B4 80ABEDD4 00000000 */  nop
/* 000B8 80ABEDD8 44822000 */  mtc1    $v0, $f4                   ## $f4 = 0.00
/* 000BC 80ABEDDC 3C014220 */  lui     $at, 0x4220                ## $at = 42200000
/* 000C0 80ABEDE0 44814000 */  mtc1    $at, $f8                   ## $f8 = 40.00
/* 000C4 80ABEDE4 468021A0 */  cvt.s.w $f6, $f4                   
/* 000C8 80ABEDE8 46083282 */  mul.s   $f10, $f6, $f8             
/* 000CC 80ABEDEC E60A015C */  swc1    $f10, 0x015C($s0)          ## 0000015C
.L80ABEDF0:
/* 000D0 80ABEDF0 0C00084C */  jal     osSyncPrintf
              
/* 000D4 80ABEDF4 86050154 */  lh      $a1, 0x0154($s0)           ## 00000154
/* 000D8 80ABEDF8 3C0480AC */  lui     $a0, %hi(D_80AC0368)       ## $a0 = 80AC0000
/* 000DC 80ABEDFC 24840368 */  addiu   $a0, $a0, %lo(D_80AC0368)  ## $a0 = 80AC0368
/* 000E0 80ABEE00 0C00084C */  jal     osSyncPrintf
              
/* 000E4 80ABEE04 86050150 */  lh      $a1, 0x0150($s0)           ## 00000150
/* 000E8 80ABEE08 3C0480AC */  lui     $a0, %hi(D_80AC039C)       ## $a0 = 80AC0000
/* 000EC 80ABEE0C 2484039C */  addiu   $a0, $a0, %lo(D_80AC039C)  ## $a0 = 80AC039C
/* 000F0 80ABEE10 0C00084C */  jal     osSyncPrintf
              
/* 000F4 80ABEE14 86050152 */  lh      $a1, 0x0152($s0)           ## 00000152
/* 000F8 80ABEE18 3C0480AC */  lui     $a0, %hi(D_80AC03C8)       ## $a0 = 80AC0000
/* 000FC 80ABEE1C 248403C8 */  addiu   $a0, $a0, %lo(D_80AC03C8)  ## $a0 = 80AC03C8
/* 00100 80ABEE20 0C00084C */  jal     osSyncPrintf
              
/* 00104 80ABEE24 86050034 */  lh      $a1, 0x0034($s0)           ## 00000034
/* 00108 80ABEE28 C610015C */  lwc1    $f16, 0x015C($s0)          ## 0000015C
/* 0010C 80ABEE2C 3C0480AC */  lui     $a0, %hi(D_80AC03F4)       ## $a0 = 80AC0000
/* 00110 80ABEE30 248403F4 */  addiu   $a0, $a0, %lo(D_80AC03F4)  ## $a0 = 80AC03F4
/* 00114 80ABEE34 460084A1 */  cvt.d.s $f18, $f16                 
/* 00118 80ABEE38 44079000 */  mfc1    $a3, $f18                  
/* 0011C 80ABEE3C 44069800 */  mfc1    $a2, $f19                  
/* 00120 80ABEE40 0C00084C */  jal     osSyncPrintf
              
/* 00124 80ABEE44 00000000 */  nop
/* 00128 80ABEE48 3C0480AC */  lui     $a0, %hi(D_80AC0424)       ## $a0 = 80AC0000
/* 0012C 80ABEE4C 24840424 */  addiu   $a0, $a0, %lo(D_80AC0424)  ## $a0 = 80AC0424
/* 00130 80ABEE50 0C00084C */  jal     osSyncPrintf
              
/* 00134 80ABEE54 86050158 */  lh      $a1, 0x0158($s0)           ## 00000158
/* 00138 80ABEE58 3C0480AC */  lui     $a0, %hi(D_80AC0450)       ## $a0 = 80AC0000
/* 0013C 80ABEE5C 0C00084C */  jal     osSyncPrintf
              
/* 00140 80ABEE60 24840450 */  addiu   $a0, $a0, %lo(D_80AC0450)  ## $a0 = 80AC0450
/* 00144 80ABEE64 86050154 */  lh      $a1, 0x0154($s0)           ## 00000154
/* 00148 80ABEE68 04A2000A */  bltzl   $a1, .L80ABEE94            
/* 0014C 80ABEE6C 86180150 */  lh      $t8, 0x0150($s0)           ## 00000150
/* 00150 80ABEE70 0C00B2D0 */  jal     Flags_GetSwitch
              
/* 00154 80ABEE74 8FA40024 */  lw      $a0, 0x0024($sp)           
/* 00158 80ABEE78 50400006 */  beql    $v0, $zero, .L80ABEE94     
/* 0015C 80ABEE7C 86180150 */  lh      $t8, 0x0150($s0)           ## 00000150
/* 00160 80ABEE80 0C00B55C */  jal     Actor_Kill
              
/* 00164 80ABEE84 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 00168 80ABEE88 10000024 */  beq     $zero, $zero, .L80ABEF1C   
/* 0016C 80ABEE8C 8FBF001C */  lw      $ra, 0x001C($sp)           
/* 00170 80ABEE90 86180150 */  lh      $t8, 0x0150($s0)           ## 00000150
.L80ABEE94:
/* 00174 80ABEE94 2719FFFF */  addiu   $t9, $t8, 0xFFFF           ## $t9 = FFFFFFFF
/* 00178 80ABEE98 2F210007 */  sltiu   $at, $t9, 0x0007           
/* 0017C 80ABEE9C 1020001C */  beq     $at, $zero, .L80ABEF10     
/* 00180 80ABEEA0 0019C880 */  sll     $t9, $t9,  2               
/* 00184 80ABEEA4 3C0180AC */  lui     $at, %hi(jtbl_80AC0508)       ## $at = 80AC0000
/* 00188 80ABEEA8 00390821 */  addu    $at, $at, $t9              
/* 0018C 80ABEEAC 8C390508 */  lw      $t9, %lo(jtbl_80AC0508)($at)  
/* 00190 80ABEEB0 03200008 */  jr      $t9                        
/* 00194 80ABEEB4 00000000 */  nop
glabel L80ABEEB8
/* 00198 80ABEEB8 3C0880AC */  lui     $t0, %hi(func_80ABEF2C)    ## $t0 = 80AC0000
/* 0019C 80ABEEBC 2508EF2C */  addiu   $t0, $t0, %lo(func_80ABEF2C) ## $t0 = 80ABEF2C
/* 001A0 80ABEEC0 10000015 */  beq     $zero, $zero, .L80ABEF18   
/* 001A4 80ABEEC4 AE08014C */  sw      $t0, 0x014C($s0)           ## 0000014C
glabel L80ABEEC8
/* 001A8 80ABEEC8 3C098016 */  lui     $t1, %hi(gSaveContext+4)
/* 001AC 80ABEECC 8D29E664 */  lw      $t1, %lo(gSaveContext+4)($t1)
/* 001B0 80ABEED0 15200005 */  bne     $t1, $zero, .L80ABEEE8     
/* 001B4 80ABEED4 00000000 */  nop
/* 001B8 80ABEED8 0C00B55C */  jal     Actor_Kill
              
/* 001BC 80ABEEDC 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 001C0 80ABEEE0 1000000E */  beq     $zero, $zero, .L80ABEF1C   
/* 001C4 80ABEEE4 8FBF001C */  lw      $ra, 0x001C($sp)           
glabel L80ABEEE8
.L80ABEEE8:
/* 001C8 80ABEEE8 3C0A80AC */  lui     $t2, %hi(func_80ABF28C)    ## $t2 = 80AC0000
/* 001CC 80ABEEEC 254AF28C */  addiu   $t2, $t2, %lo(func_80ABF28C) ## $t2 = 80ABF28C
/* 001D0 80ABEEF0 10000009 */  beq     $zero, $zero, .L80ABEF18   
/* 001D4 80ABEEF4 AE0A014C */  sw      $t2, 0x014C($s0)           ## 0000014C
glabel L80ABEEF8
/* 001D8 80ABEEF8 3C0C80AC */  lui     $t4, %hi(func_80ABF708)    ## $t4 = 80AC0000
/* 001DC 80ABEEFC 240B5021 */  addiu   $t3, $zero, 0x5021         ## $t3 = 00005021
/* 001E0 80ABEF00 258CF708 */  addiu   $t4, $t4, %lo(func_80ABF708) ## $t4 = 80ABF708
/* 001E4 80ABEF04 A60B010E */  sh      $t3, 0x010E($s0)           ## 0000010E
/* 001E8 80ABEF08 10000003 */  beq     $zero, $zero, .L80ABEF18   
/* 001EC 80ABEF0C AE0C014C */  sw      $t4, 0x014C($s0)           ## 0000014C
glabel L80ABEF10
.L80ABEF10:
/* 001F0 80ABEF10 0C00B55C */  jal     Actor_Kill
              
/* 001F4 80ABEF14 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
.L80ABEF18:
/* 001F8 80ABEF18 8FBF001C */  lw      $ra, 0x001C($sp)           
.L80ABEF1C:
/* 001FC 80ABEF1C 8FB00018 */  lw      $s0, 0x0018($sp)           
/* 00200 80ABEF20 27BD0020 */  addiu   $sp, $sp, 0x0020           ## $sp = 00000000
/* 00204 80ABEF24 03E00008 */  jr      $ra                        
/* 00208 80ABEF28 00000000 */  nop
