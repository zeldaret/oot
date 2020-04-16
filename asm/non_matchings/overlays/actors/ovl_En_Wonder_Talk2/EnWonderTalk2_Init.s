.rdata
glabel D_80B3A8F0
    .asciz "\n\n"
    .balign 4

glabel D_80B3A8F4
    .asciz "[32m☆☆☆☆☆ 透明メッセージ君 ☆☆☆☆☆ %x\n[m"
    .balign 4

glabel D_80B3A928
    .asciz "\n\n"
    .balign 4

glabel D_80B3A92C
    .asciz "[33m☆☆☆☆☆ 元は？       ☆☆☆☆☆ %d\n[m"
    .balign 4

glabel D_80B3A95C
    .asciz "[35m☆☆☆☆☆ レンジは？   ☆☆☆☆☆ %d\n[m"
    .balign 4

glabel D_80B3A98C
    .asciz "[36m☆☆☆☆☆ は、範囲わ？ ☆☆☆☆☆ %f\n[m"
    .balign 4

glabel D_80B3A9BC
    .asciz "\n\n"
    .balign 4

glabel D_80B3A9C0
    .asciz "\n\n"
    .balign 4

glabel D_80B3A9C4
    .asciz "\n\n"
    .balign 4

glabel D_80B3A9C8
    .asciz "[32m☆☆☆☆☆ Ｙｏｕ ａｒｅ Ｓｈｏｃｋ！  ☆☆☆☆☆ %d\n[m"
    .balign 4

.text
glabel EnWonderTalk2_Init
/* 0000C 80B39EDC 27BDFFE0 */  addiu   $sp, $sp, 0xFFE0           ## $sp = FFFFFFE0
/* 00010 80B39EE0 AFB00018 */  sw      $s0, 0x0018($sp)           
/* 00014 80B39EE4 00808025 */  or      $s0, $a0, $zero            ## $s0 = 00000000
/* 00018 80B39EE8 AFBF001C */  sw      $ra, 0x001C($sp)           
/* 0001C 80B39EEC 3C0480B4 */  lui     $a0, %hi(D_80B3A8F0)       ## $a0 = 80B40000
/* 00020 80B39EF0 AFA50024 */  sw      $a1, 0x0024($sp)           
/* 00024 80B39EF4 0C00084C */  jal     osSyncPrintf
              
/* 00028 80B39EF8 2484A8F0 */  addiu   $a0, $a0, %lo(D_80B3A8F0)  ## $a0 = 80B3A8F0
/* 0002C 80B39EFC 3C0480B4 */  lui     $a0, %hi(D_80B3A8F4)       ## $a0 = 80B40000
/* 00030 80B39F00 2484A8F4 */  addiu   $a0, $a0, %lo(D_80B3A8F4)  ## $a0 = 80B3A8F4
/* 00034 80B39F04 0C00084C */  jal     osSyncPrintf
              
/* 00038 80B39F08 8605001C */  lh      $a1, 0x001C($s0)           ## 0000001C
/* 0003C 80B39F0C 860E001C */  lh      $t6, 0x001C($s0)           ## 0000001C
/* 00040 80B39F10 86040034 */  lh      $a0, 0x0034($s0)           ## 00000034
/* 00044 80B39F14 3C0880B4 */  lui     $t0, %hi(D_80B3A8E0)       ## $t0 = 80B40000
/* 00048 80B39F18 000E7983 */  sra     $t7, $t6,  6               
/* 0004C 80B39F1C 31F800FF */  andi    $t8, $t7, 0x00FF           ## $t8 = 00000000
/* 00050 80B39F20 18800035 */  blez    $a0, .L80B39FF8            
/* 00054 80B39F24 A6180150 */  sh      $t8, 0x0150($s0)           ## 00000150
/* 00058 80B39F28 00041400 */  sll     $v0, $a0, 16               
/* 0005C 80B39F2C 00021403 */  sra     $v0, $v0, 16               
/* 00060 80B39F30 2841000B */  slti    $at, $v0, 0x000B           
/* 00064 80B39F34 14200007 */  bne     $at, $zero, .L80B39F54     
/* 00068 80B39F38 00001825 */  or      $v1, $zero, $zero          ## $v1 = 00000000
.L80B39F3C:
/* 0006C 80B39F3C 2442FFF6 */  addiu   $v0, $v0, 0xFFF6           ## $v0 = FFFFFFF6
/* 00070 80B39F40 00021400 */  sll     $v0, $v0, 16               
/* 00074 80B39F44 00021403 */  sra     $v0, $v0, 16               
/* 00078 80B39F48 2841000B */  slti    $at, $v0, 0x000B           
/* 0007C 80B39F4C 1020FFFB */  beq     $at, $zero, .L80B39F3C     
/* 00080 80B39F50 24630001 */  addiu   $v1, $v1, 0x0001           ## $v1 = 00000001
.L80B39F54:
/* 00084 80B39F54 44822000 */  mtc1    $v0, $f4                   ## $f4 = NaN
/* 00088 80B39F58 3C014220 */  lui     $at, 0x4220                ## $at = 42200000
/* 0008C 80B39F5C 44814000 */  mtc1    $at, $f8                   ## $f8 = 40.00
/* 00090 80B39F60 468021A0 */  cvt.s.w $f6, $f4                   
/* 00094 80B39F64 28610007 */  slti    $at, $v1, 0x0007           
/* 00098 80B39F68 3C0480B4 */  lui     $a0, %hi(D_80B3A928)       ## $a0 = 80B40000
/* 0009C 80B39F6C 46083282 */  mul.s   $f10, $f6, $f8             
/* 000A0 80B39F70 14200002 */  bne     $at, $zero, .L80B39F7C     
/* 000A4 80B39F74 E60A015C */  swc1    $f10, 0x015C($s0)          ## 0000015C
/* 000A8 80B39F78 00001825 */  or      $v1, $zero, $zero          ## $v1 = 00000000
.L80B39F7C:
/* 000AC 80B39F7C 0003C840 */  sll     $t9, $v1,  1               
/* 000B0 80B39F80 01194021 */  addu    $t0, $t0, $t9              
/* 000B4 80B39F84 8508A8E0 */  lh      $t0, %lo(D_80B3A8E0)($t0)  
/* 000B8 80B39F88 2484A928 */  addiu   $a0, $a0, %lo(D_80B3A928)  ## $a0 = 80B3A928
/* 000BC 80B39F8C 0C00084C */  jal     osSyncPrintf
              
/* 000C0 80B39F90 A208001F */  sb      $t0, 0x001F($s0)           ## 0000001F
/* 000C4 80B39F94 3C0480B4 */  lui     $a0, %hi(D_80B3A92C)       ## $a0 = 80B40000
/* 000C8 80B39F98 2484A92C */  addiu   $a0, $a0, %lo(D_80B3A92C)  ## $a0 = 80B3A92C
/* 000CC 80B39F9C 0C00084C */  jal     osSyncPrintf
              
/* 000D0 80B39FA0 86050034 */  lh      $a1, 0x0034($s0)           ## 00000034
/* 000D4 80B39FA4 3C0480B4 */  lui     $a0, %hi(D_80B3A95C)       ## $a0 = 80B40000
/* 000D8 80B39FA8 2484A95C */  addiu   $a0, $a0, %lo(D_80B3A95C)  ## $a0 = 80B3A95C
/* 000DC 80B39FAC 0C00084C */  jal     osSyncPrintf
              
/* 000E0 80B39FB0 8205001F */  lb      $a1, 0x001F($s0)           ## 0000001F
/* 000E4 80B39FB4 C610015C */  lwc1    $f16, 0x015C($s0)          ## 0000015C
/* 000E8 80B39FB8 3C0480B4 */  lui     $a0, %hi(D_80B3A98C)       ## $a0 = 80B40000
/* 000EC 80B39FBC 2484A98C */  addiu   $a0, $a0, %lo(D_80B3A98C)  ## $a0 = 80B3A98C
/* 000F0 80B39FC0 460084A1 */  cvt.d.s $f18, $f16                 
/* 000F4 80B39FC4 44079000 */  mfc1    $a3, $f18                  
/* 000F8 80B39FC8 44069800 */  mfc1    $a2, $f19                  
/* 000FC 80B39FCC 0C00084C */  jal     osSyncPrintf
              
/* 00100 80B39FD0 00000000 */  nop
/* 00104 80B39FD4 3C0480B4 */  lui     $a0, %hi(D_80B3A9BC)       ## $a0 = 80B40000
/* 00108 80B39FD8 0C00084C */  jal     osSyncPrintf
              
/* 0010C 80B39FDC 2484A9BC */  addiu   $a0, $a0, %lo(D_80B3A9BC)  ## $a0 = 80B3A9BC
/* 00110 80B39FE0 3C0480B4 */  lui     $a0, %hi(D_80B3A9C0)       ## $a0 = 80B40000
/* 00114 80B39FE4 0C00084C */  jal     osSyncPrintf
              
/* 00118 80B39FE8 2484A9C0 */  addiu   $a0, $a0, %lo(D_80B3A9C0)  ## $a0 = 80B3A9C0
/* 0011C 80B39FEC 3C0480B4 */  lui     $a0, %hi(D_80B3A9C4)       ## $a0 = 80B40000
/* 00120 80B39FF0 0C00084C */  jal     osSyncPrintf
              
/* 00124 80B39FF4 2484A9C4 */  addiu   $a0, $a0, %lo(D_80B3A9C4)  ## $a0 = 80B3A9C4
.L80B39FF8:
/* 00128 80B39FF8 8602001C */  lh      $v0, 0x001C($s0)           ## 0000001C
/* 0012C 80B39FFC 8E0A0024 */  lw      $t2, 0x0024($s0)           ## 00000024
/* 00130 80B3A000 8E090028 */  lw      $t1, 0x0028($s0)           ## 00000028
/* 00134 80B3A004 304B003F */  andi    $t3, $v0, 0x003F           ## $t3 = 00000000
/* 00138 80B3A008 A60B0152 */  sh      $t3, 0x0152($s0)           ## 00000152
/* 0013C 80B3A00C 86050152 */  lh      $a1, 0x0152($s0)           ## 00000152
/* 00140 80B3A010 AE0A0164 */  sw      $t2, 0x0164($s0)           ## 00000164
/* 00144 80B3A014 8E0A002C */  lw      $t2, 0x002C($s0)           ## 0000002C
/* 00148 80B3A018 00026383 */  sra     $t4, $v0, 14               
/* 0014C 80B3A01C 318D0003 */  andi    $t5, $t4, 0x0003           ## $t5 = 00000000
/* 00150 80B3A020 2401003F */  addiu   $at, $zero, 0x003F         ## $at = 0000003F
/* 00154 80B3A024 A60D0154 */  sh      $t5, 0x0154($s0)           ## 00000154
/* 00158 80B3A028 AE090168 */  sw      $t1, 0x0168($s0)           ## 00000168
/* 0015C 80B3A02C 14A10004 */  bne     $a1, $at, .L80B3A040       
/* 00160 80B3A030 AE0A016C */  sw      $t2, 0x016C($s0)           ## 0000016C
/* 00164 80B3A034 240EFFFF */  addiu   $t6, $zero, 0xFFFF         ## $t6 = FFFFFFFF
/* 00168 80B3A038 A60E0152 */  sh      $t6, 0x0152($s0)           ## 00000152
/* 0016C 80B3A03C 86050152 */  lh      $a1, 0x0152($s0)           ## 00000152
.L80B3A040:
/* 00170 80B3A040 04A2000D */  bltzl   $a1, .L80B3A078            
/* 00174 80B3A044 86020154 */  lh      $v0, 0x0154($s0)           ## 00000154
/* 00178 80B3A048 0C00B2D0 */  jal     Flags_GetSwitch
              
/* 0017C 80B3A04C 8FA40024 */  lw      $a0, 0x0024($sp)           
/* 00180 80B3A050 10400008 */  beq     $v0, $zero, .L80B3A074     
/* 00184 80B3A054 3C0480B4 */  lui     $a0, %hi(D_80B3A9C8)       ## $a0 = 80B40000
/* 00188 80B3A058 2484A9C8 */  addiu   $a0, $a0, %lo(D_80B3A9C8)  ## $a0 = 80B3A9C8
/* 0018C 80B3A05C 0C00084C */  jal     osSyncPrintf
              
/* 00190 80B3A060 86050152 */  lh      $a1, 0x0152($s0)           ## 00000152
/* 00194 80B3A064 0C00B55C */  jal     Actor_Kill
              
/* 00198 80B3A068 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 0019C 80B3A06C 10000023 */  beq     $zero, $zero, .L80B3A0FC   
/* 001A0 80B3A070 8FBF001C */  lw      $ra, 0x001C($sp)           
.L80B3A074:
/* 001A4 80B3A074 86020154 */  lh      $v0, 0x0154($s0)           ## 00000154
.L80B3A078:
/* 001A8 80B3A078 24010001 */  addiu   $at, $zero, 0x0001         ## $at = 00000001
/* 001AC 80B3A07C 8FAF0024 */  lw      $t7, 0x0024($sp)           
/* 001B0 80B3A080 14410010 */  bne     $v0, $at, .L80B3A0C4       
/* 001B4 80B3A084 3C0B80B4 */  lui     $t3, %hi(func_80B3A10C)    ## $t3 = 80B40000
/* 001B8 80B3A088 85F800A4 */  lh      $t8, 0x00A4($t7)           ## 000000A4
/* 001BC 80B3A08C 2401000B */  addiu   $at, $zero, 0x000B         ## $at = 0000000B
/* 001C0 80B3A090 5701000D */  bnel    $t8, $at, .L80B3A0C8       
/* 001C4 80B3A094 24010003 */  addiu   $at, $zero, 0x0003         ## $at = 00000003
/* 001C8 80B3A098 86050152 */  lh      $a1, 0x0152($s0)           ## 00000152
/* 001CC 80B3A09C 24010008 */  addiu   $at, $zero, 0x0008         ## $at = 00000008
/* 001D0 80B3A0A0 10A10008 */  beq     $a1, $at, .L80B3A0C4       
/* 001D4 80B3A0A4 24010016 */  addiu   $at, $zero, 0x0016         ## $at = 00000016
/* 001D8 80B3A0A8 10A10006 */  beq     $a1, $at, .L80B3A0C4       
/* 001DC 80B3A0AC 2401002F */  addiu   $at, $zero, 0x002F         ## $at = 0000002F
/* 001E0 80B3A0B0 10A10004 */  beq     $a1, $at, .L80B3A0C4       
/* 001E4 80B3A0B4 24190004 */  addiu   $t9, $zero, 0x0004         ## $t9 = 00000004
/* 001E8 80B3A0B8 A6190154 */  sh      $t9, 0x0154($s0)           ## 00000154
/* 001EC 80B3A0BC A200015A */  sb      $zero, 0x015A($s0)         ## 0000015A
/* 001F0 80B3A0C0 86020154 */  lh      $v0, 0x0154($s0)           ## 00000154
.L80B3A0C4:
/* 001F4 80B3A0C4 24010003 */  addiu   $at, $zero, 0x0003         ## $at = 00000003
.L80B3A0C8:
/* 001F8 80B3A0C8 1441000A */  bne     $v0, $at, .L80B3A0F4       
/* 001FC 80B3A0CC 256BA10C */  addiu   $t3, $t3, %lo(func_80B3A10C) ## $t3 = 80B3A10C
/* 00200 80B3A0D0 8E080004 */  lw      $t0, 0x0004($s0)           ## 00000004
/* 00204 80B3A0D4 3C01F7FF */  lui     $at, 0xF7FF                ## $at = F7FF0000
/* 00208 80B3A0D8 3421FFFF */  ori     $at, $at, 0xFFFF           ## $at = F7FFFFFF
/* 0020C 80B3A0DC 3C0A80B4 */  lui     $t2, %hi(func_80B3A770)    ## $t2 = 80B40000
/* 00210 80B3A0E0 254AA770 */  addiu   $t2, $t2, %lo(func_80B3A770) ## $t2 = 80B3A770
/* 00214 80B3A0E4 01014824 */  and     $t1, $t0, $at              
/* 00218 80B3A0E8 AE090004 */  sw      $t1, 0x0004($s0)           ## 00000004
/* 0021C 80B3A0EC 10000002 */  beq     $zero, $zero, .L80B3A0F8   
/* 00220 80B3A0F0 AE0A014C */  sw      $t2, 0x014C($s0)           ## 0000014C
.L80B3A0F4:
/* 00224 80B3A0F4 AE0B014C */  sw      $t3, 0x014C($s0)           ## 0000014C
.L80B3A0F8:
/* 00228 80B3A0F8 8FBF001C */  lw      $ra, 0x001C($sp)           
.L80B3A0FC:
/* 0022C 80B3A0FC 8FB00018 */  lw      $s0, 0x0018($sp)           
/* 00230 80B3A100 27BD0020 */  addiu   $sp, $sp, 0x0020           ## $sp = 00000000
/* 00234 80B3A104 03E00008 */  jr      $ra                        
/* 00238 80B3A108 00000000 */  nop
