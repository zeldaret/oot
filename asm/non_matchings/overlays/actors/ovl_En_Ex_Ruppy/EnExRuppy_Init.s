.rdata
glabel D_80A0B3D0
    .asciz "[32m☆☆☆☆☆ インデックス ☆☆☆☆☆ %x\n[m"
    .balign 4

glabel D_80A0B400
    .asciz "[32m☆☆☆☆☆ わーなーコイン ☆☆☆☆☆ \n[m"
    .balign 4

glabel D_80A0B430
    .asciz "[32m☆☆☆☆☆ ノーマルルピー ☆☆☆☆☆ \n[m"
    .balign 4

.late_rodata
glabel jtbl_80A0B50C
.word L80A0A478
.word L80A0A634
.word L80A0A634
.word L80A0A6E0
.word L80A0A7AC
glabel D_80A0B520
    .float 0.01

glabel D_80A0B524
 .word 0x4348FD71
glabel D_80A0B528
    .float 0.02

glabel D_80A0B52C
    .float 0.02

glabel D_80A0B530
 .word 0x407F5C29
glabel D_80A0B534
    .float 0.02

glabel D_80A0B538
 .word 0x41F7EB85
glabel D_80A0B53C
    .float 0.01

.text
glabel EnExRuppy_Init
/* 00000 80A0A410 27BDFFE0 */  addiu   $sp, $sp, 0xFFE0           ## $sp = FFFFFFE0
/* 00004 80A0A414 AFBF001C */  sw      $ra, 0x001C($sp)           
/* 00008 80A0A418 AFB00018 */  sw      $s0, 0x0018($sp)           
/* 0000C 80A0A41C AFA50024 */  sw      $a1, 0x0024($sp)           
/* 00010 80A0A420 848E001C */  lh      $t6, 0x001C($a0)           ## 0000001C
/* 00014 80A0A424 00808025 */  or      $s0, $a0, $zero            ## $s0 = 00000000
/* 00018 80A0A428 A48E0152 */  sh      $t6, 0x0152($a0)           ## 00000152
/* 0001C 80A0A42C 3C0480A1 */  lui     $a0, %hi(D_80A0B3D0)       ## $a0 = 80A10000
/* 00020 80A0A430 2484B3D0 */  addiu   $a0, $a0, %lo(D_80A0B3D0)  ## $a0 = 80A0B3D0
/* 00024 80A0A434 0C00084C */  jal     osSyncPrintf
              
/* 00028 80A0A438 86050152 */  lh      $a1, 0x0152($s0)           ## 00000152
/* 0002C 80A0A43C 3C068003 */  lui     $a2, %hi(ActorShadow_DrawFunc_Circle)
/* 00030 80A0A440 24C6B5EC */  addiu   $a2, %lo(ActorShadow_DrawFunc_Circle)
/* 00034 80A0A444 260400B4 */  addiu   $a0, $s0, 0x00B4           ## $a0 = 000000B4
/* 00038 80A0A448 24050000 */  addiu   $a1, $zero, 0x0000         ## $a1 = 00000000
/* 0003C 80A0A44C 0C00AC78 */  jal     ActorShape_Init
              
/* 00040 80A0A450 3C0741C8 */  lui     $a3, 0x41C8                ## $a3 = 41C80000
/* 00044 80A0A454 86020152 */  lh      $v0, 0x0152($s0)           ## 00000152
/* 00048 80A0A458 2C410005 */  sltiu   $at, $v0, 0x0005           
/* 0004C 80A0A45C 102000E8 */  beq     $at, $zero, .L80A0A800     
/* 00050 80A0A460 00027880 */  sll     $t7, $v0,  2               
/* 00054 80A0A464 3C0180A1 */  lui     $at, %hi(jtbl_80A0B50C)       ## $at = 80A10000
/* 00058 80A0A468 002F0821 */  addu    $at, $at, $t7              
/* 0005C 80A0A46C 8C2FB50C */  lw      $t7, %lo(jtbl_80A0B50C)($at)  
/* 00060 80A0A470 01E00008 */  jr      $t7                        
/* 00064 80A0A474 00000000 */  nop
glabel L80A0A478
/* 00068 80A0A478 3C0180A1 */  lui     $at, %hi(D_80A0B520)       ## $at = 80A10000
/* 0006C 80A0A47C C420B520 */  lwc1    $f0, %lo(D_80A0B520)($at)  
/* 00070 80A0A480 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 00074 80A0A484 44050000 */  mfc1    $a1, $f0                   
/* 00078 80A0A488 0C00B58B */  jal     Actor_SetScale
              
/* 0007C 80A0A48C E6000160 */  swc1    $f0, 0x0160($s0)           ## 00000160
/* 00080 80A0A490 44802000 */  mtc1    $zero, $f4                 ## $f4 = 0.00
/* 00084 80A0A494 2418FFFF */  addiu   $t8, $zero, 0xFFFF         ## $t8 = FFFFFFFF
/* 00088 80A0A498 A2180003 */  sb      $t8, 0x0003($s0)           ## 00000003
/* 0008C 80A0A49C 3C198016 */  lui     $t9, %hi(gSaveContext+0xeda)
/* 00090 80A0A4A0 E604006C */  swc1    $f4, 0x006C($s0)           ## 0000006C
/* 00094 80A0A4A4 9739F53A */  lhu     $t9, %lo(gSaveContext+0xeda)($t9)
/* 00098 80A0A4A8 24090005 */  addiu   $t1, $zero, 0x0005         ## $t1 = 00000005
/* 0009C 80A0A4AC 3C0180A1 */  lui     $at, %hi(D_80A0B524)       ## $at = 80A10000
/* 000A0 80A0A4B0 33280100 */  andi    $t0, $t9, 0x0100           ## $t0 = 00000000
/* 000A4 80A0A4B4 15000004 */  bne     $t0, $zero, .L80A0A4C8     
/* 000A8 80A0A4B8 240A0001 */  addiu   $t2, $zero, 0x0001         ## $t2 = 00000001
/* 000AC 80A0A4BC A6090158 */  sh      $t1, 0x0158($s0)           ## 00000158
/* 000B0 80A0A4C0 10000049 */  beq     $zero, $zero, .L80A0A5E8   
/* 000B4 80A0A4C4 A60A0150 */  sh      $t2, 0x0150($s0)           ## 00000150
.L80A0A4C8:
/* 000B8 80A0A4C8 8E030118 */  lw      $v1, 0x0118($s0)           ## 00000118
/* 000BC 80A0A4CC C422B524 */  lwc1    $f2, %lo(D_80A0B524)($at)  
/* 000C0 80A0A4D0 1060000C */  beq     $v1, $zero, .L80A0A504     
/* 000C4 80A0A4D4 46001306 */  mov.s   $f12, $f2                  
/* 000C8 80A0A4D8 8C6B0130 */  lw      $t3, 0x0130($v1)           ## 00000130
/* 000CC 80A0A4DC 11600009 */  beq     $t3, $zero, .L80A0A504     
/* 000D0 80A0A4E0 00000000 */  nop
/* 000D4 80A0A4E4 846C02AA */  lh      $t4, 0x02AA($v1)           ## 000002AA
/* 000D8 80A0A4E8 3C014120 */  lui     $at, 0x4120                ## $at = 41200000
/* 000DC 80A0A4EC 44815000 */  mtc1    $at, $f10                  ## $f10 = 10.00
/* 000E0 80A0A4F0 448C3000 */  mtc1    $t4, $f6                   ## $f6 = 0.00
/* 000E4 80A0A4F4 00000000 */  nop
/* 000E8 80A0A4F8 46803220 */  cvt.s.w $f8, $f6                   
/* 000EC 80A0A4FC 460A4002 */  mul.s   $f0, $f8, $f10             
/* 000F0 80A0A500 46001300 */  add.s   $f12, $f2, $f0             
.L80A0A504:
/* 000F4 80A0A504 0C00CFBE */  jal     Math_Rand_ZeroFloat
              
/* 000F8 80A0A508 00000000 */  nop
/* 000FC 80A0A50C 4600040D */  trunc.w.s $f16, $f0                  
/* 00100 80A0A510 44028000 */  mfc1    $v0, $f16                  
/* 00104 80A0A514 00000000 */  nop
/* 00108 80A0A518 00021400 */  sll     $v0, $v0, 16               
/* 0010C 80A0A51C 00021403 */  sra     $v0, $v0, 16               
/* 00110 80A0A520 04400006 */  bltz    $v0, .L80A0A53C            
/* 00114 80A0A524 28410028 */  slti    $at, $v0, 0x0028           
/* 00118 80A0A528 10200004 */  beq     $at, $zero, .L80A0A53C     
/* 0011C 80A0A52C 240E0001 */  addiu   $t6, $zero, 0x0001         ## $t6 = 00000001
/* 00120 80A0A530 A60E0158 */  sh      $t6, 0x0158($s0)           ## 00000158
/* 00124 80A0A534 1000002C */  beq     $zero, $zero, .L80A0A5E8   
/* 00128 80A0A538 A6000150 */  sh      $zero, 0x0150($s0)         ## 00000150
.L80A0A53C:
/* 0012C 80A0A53C 28410028 */  slti    $at, $v0, 0x0028           
/* 00130 80A0A540 14200007 */  bne     $at, $zero, .L80A0A560     
/* 00134 80A0A544 284100AA */  slti    $at, $v0, 0x00AA           
/* 00138 80A0A548 10200005 */  beq     $at, $zero, .L80A0A560     
/* 0013C 80A0A54C 240F0005 */  addiu   $t7, $zero, 0x0005         ## $t7 = 00000005
/* 00140 80A0A550 24180001 */  addiu   $t8, $zero, 0x0001         ## $t8 = 00000001
/* 00144 80A0A554 A60F0158 */  sh      $t7, 0x0158($s0)           ## 00000158
/* 00148 80A0A558 10000023 */  beq     $zero, $zero, .L80A0A5E8   
/* 0014C 80A0A55C A6180150 */  sh      $t8, 0x0150($s0)           ## 00000150
.L80A0A560:
/* 00150 80A0A560 284100AA */  slti    $at, $v0, 0x00AA           
/* 00154 80A0A564 14200007 */  bne     $at, $zero, .L80A0A584     
/* 00158 80A0A568 284100BE */  slti    $at, $v0, 0x00BE           
/* 0015C 80A0A56C 10200005 */  beq     $at, $zero, .L80A0A584     
/* 00160 80A0A570 24190014 */  addiu   $t9, $zero, 0x0014         ## $t9 = 00000014
/* 00164 80A0A574 24080002 */  addiu   $t0, $zero, 0x0002         ## $t0 = 00000002
/* 00168 80A0A578 A6190158 */  sh      $t9, 0x0158($s0)           ## 00000158
/* 0016C 80A0A57C 1000001A */  beq     $zero, $zero, .L80A0A5E8   
/* 00170 80A0A580 A6080150 */  sh      $t0, 0x0150($s0)           ## 00000150
.L80A0A584:
/* 00174 80A0A584 284100BE */  slti    $at, $v0, 0x00BE           
/* 00178 80A0A588 14200007 */  bne     $at, $zero, .L80A0A5A8     
/* 0017C 80A0A58C 284100C8 */  slti    $at, $v0, 0x00C8           
/* 00180 80A0A590 10200005 */  beq     $at, $zero, .L80A0A5A8     
/* 00184 80A0A594 24090032 */  addiu   $t1, $zero, 0x0032         ## $t1 = 00000032
/* 00188 80A0A598 240A0004 */  addiu   $t2, $zero, 0x0004         ## $t2 = 00000004
/* 0018C 80A0A59C A6090158 */  sh      $t1, 0x0158($s0)           ## 00000158
/* 00190 80A0A5A0 10000011 */  beq     $zero, $zero, .L80A0A5E8   
/* 00194 80A0A5A4 A60A0150 */  sh      $t2, 0x0150($s0)           ## 00000150
.L80A0A5A8:
/* 00198 80A0A5A8 3C0180A1 */  lui     $at, %hi(D_80A0B528)       ## $at = 80A10000
/* 0019C 80A0A5AC C420B528 */  lwc1    $f0, %lo(D_80A0B528)($at)  
/* 001A0 80A0A5B0 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 001A4 80A0A5B4 44050000 */  mfc1    $a1, $f0                   
/* 001A8 80A0A5B8 0C00B58B */  jal     Actor_SetScale
              
/* 001AC 80A0A5BC E6000160 */  swc1    $f0, 0x0160($s0)           ## 00000160
/* 001B0 80A0A5C0 8E030118 */  lw      $v1, 0x0118($s0)           ## 00000118
/* 001B4 80A0A5C4 240B01F4 */  addiu   $t3, $zero, 0x01F4         ## $t3 = 000001F4
/* 001B8 80A0A5C8 240C0003 */  addiu   $t4, $zero, 0x0003         ## $t4 = 00000003
/* 001BC 80A0A5CC A60B0158 */  sh      $t3, 0x0158($s0)           ## 00000158
/* 001C0 80A0A5D0 10600005 */  beq     $v1, $zero, .L80A0A5E8     
/* 001C4 80A0A5D4 A60C0150 */  sh      $t4, 0x0150($s0)           ## 00000150
/* 001C8 80A0A5D8 8C6D0130 */  lw      $t5, 0x0130($v1)           ## 00000130
/* 001CC 80A0A5DC 51A00003 */  beql    $t5, $zero, .L80A0A5EC     
/* 001D0 80A0A5E0 3C0140E0 */  lui     $at, 0x40E0                ## $at = 40E00000
/* 001D4 80A0A5E4 A46002AA */  sh      $zero, 0x02AA($v1)         ## 000002AA
.L80A0A5E8:
/* 001D8 80A0A5E8 3C0140E0 */  lui     $at, 0x40E0                ## $at = 40E00000
.L80A0A5EC:
/* 001DC 80A0A5EC 44819000 */  mtc1    $at, $f18                  ## $f18 = 7.00
/* 001E0 80A0A5F0 8E180004 */  lw      $t8, 0x0004($s0)           ## 00000004
/* 001E4 80A0A5F4 3C01442F */  lui     $at, 0x442F                ## $at = 442F0000
/* 001E8 80A0A5F8 44812000 */  mtc1    $at, $f4                   ## $f4 = 700.00
/* 001EC 80A0A5FC 860E0034 */  lh      $t6, 0x0034($s0)           ## 00000034
/* 001F0 80A0A600 2401FFFE */  addiu   $at, $zero, 0xFFFE         ## $at = FFFFFFFE
/* 001F4 80A0A604 3C0880A1 */  lui     $t0, %hi(func_80A0AA3C)    ## $t0 = 80A10000
/* 001F8 80A0A608 240F001E */  addiu   $t7, $zero, 0x001E         ## $t7 = 0000001E
/* 001FC 80A0A60C 2508AA3C */  addiu   $t0, $t0, %lo(func_80A0AA3C) ## $t0 = 80A0AA3C
/* 00200 80A0A610 0301C824 */  and     $t9, $t8, $at              
/* 00204 80A0A614 A6000034 */  sh      $zero, 0x0034($s0)         ## 00000034
/* 00208 80A0A618 A60F0156 */  sh      $t7, 0x0156($s0)           ## 00000156
/* 0020C 80A0A61C AE190004 */  sw      $t9, 0x0004($s0)           ## 00000004
/* 00210 80A0A620 AE08014C */  sw      $t0, 0x014C($s0)           ## 0000014C
/* 00214 80A0A624 E61200C4 */  swc1    $f18, 0x00C4($s0)          ## 000000C4
/* 00218 80A0A628 E60400BC */  swc1    $f4, 0x00BC($s0)           ## 000000BC
/* 0021C 80A0A62C 10000074 */  beq     $zero, $zero, .L80A0A800   
/* 00220 80A0A630 A60E015A */  sh      $t6, 0x015A($s0)           ## 0000015A
glabel L80A0A634
/* 00224 80A0A634 24010001 */  addiu   $at, $zero, 0x0001         ## $at = 00000001
/* 00228 80A0A638 14410007 */  bne     $v0, $at, .L80A0A658       
/* 0022C 80A0A63C 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 00230 80A0A640 3C053DCC */  lui     $a1, 0x3DCC                ## $a1 = 3DCC0000
/* 00234 80A0A644 0C00B58B */  jal     Actor_SetScale
              
/* 00238 80A0A648 34A5CCCD */  ori     $a1, $a1, 0xCCCD           ## $a1 = 3DCCCCCD
/* 0023C 80A0A64C 24090004 */  addiu   $t1, $zero, 0x0004         ## $t1 = 00000004
/* 00240 80A0A650 1000000F */  beq     $zero, $zero, .L80A0A690   
/* 00244 80A0A654 A6090150 */  sh      $t1, 0x0150($s0)           ## 00000150
.L80A0A658:
/* 00248 80A0A658 3C0180A1 */  lui     $at, %hi(D_80A0B52C)       ## $at = 80A10000
/* 0024C 80A0A65C C420B52C */  lwc1    $f0, %lo(D_80A0B52C)($at)  
/* 00250 80A0A660 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 00254 80A0A664 44050000 */  mfc1    $a1, $f0                   
/* 00258 80A0A668 0C00B58B */  jal     Actor_SetScale
              
/* 0025C 80A0A66C 00000000 */  nop
/* 00260 80A0A670 3C0180A1 */  lui     $at, %hi(D_80A0B530)       ## $at = 80A10000
/* 00264 80A0A674 0C00CFBE */  jal     Math_Rand_ZeroFloat
              
/* 00268 80A0A678 C42CB530 */  lwc1    $f12, %lo(D_80A0B530)($at) 
/* 0026C 80A0A67C 4600018D */  trunc.w.s $f6, $f0                   
/* 00270 80A0A680 440D3000 */  mfc1    $t5, $f6                   
/* 00274 80A0A684 00000000 */  nop
/* 00278 80A0A688 25AE0001 */  addiu   $t6, $t5, 0x0001           ## $t6 = 00000001
/* 0027C 80A0A68C A60E0150 */  sh      $t6, 0x0150($s0)           ## 00000150
.L80A0A690:
/* 00280 80A0A690 3C01C040 */  lui     $at, 0xC040                ## $at = C0400000
/* 00284 80A0A694 44814000 */  mtc1    $at, $f8                   ## $f8 = -3.00
/* 00288 80A0A698 3C0480A1 */  lui     $a0, %hi(D_80A0B400)       ## $a0 = 80A10000
/* 0028C 80A0A69C 2484B400 */  addiu   $a0, $a0, %lo(D_80A0B400)  ## $a0 = 80A0B400
/* 00290 80A0A6A0 0C00084C */  jal     osSyncPrintf
              
/* 00294 80A0A6A4 E608006C */  swc1    $f8, 0x006C($s0)           ## 0000006C
/* 00298 80A0A6A8 3C0140C0 */  lui     $at, 0x40C0                ## $at = 40C00000
/* 0029C 80A0A6AC 44815000 */  mtc1    $at, $f10                  ## $f10 = 6.00
/* 002A0 80A0A6B0 8E0F0004 */  lw      $t7, 0x0004($s0)           ## 00000004
/* 002A4 80A0A6B4 3C01442F */  lui     $at, 0x442F                ## $at = 442F0000
/* 002A8 80A0A6B8 44818000 */  mtc1    $at, $f16                  ## $f16 = 700.00
/* 002AC 80A0A6BC 2401FFFE */  addiu   $at, $zero, 0xFFFE         ## $at = FFFFFFFE
/* 002B0 80A0A6C0 3C1980A1 */  lui     $t9, %hi(func_80A0AF24)    ## $t9 = 80A10000
/* 002B4 80A0A6C4 2739AF24 */  addiu   $t9, $t9, %lo(func_80A0AF24) ## $t9 = 80A0AF24
/* 002B8 80A0A6C8 01E1C024 */  and     $t8, $t7, $at              
/* 002BC 80A0A6CC AE180004 */  sw      $t8, 0x0004($s0)           ## 00000004
/* 002C0 80A0A6D0 AE19014C */  sw      $t9, 0x014C($s0)           ## 0000014C
/* 002C4 80A0A6D4 E60A00C4 */  swc1    $f10, 0x00C4($s0)          ## 000000C4
/* 002C8 80A0A6D8 10000049 */  beq     $zero, $zero, .L80A0A800   
/* 002CC 80A0A6DC E61000BC */  swc1    $f16, 0x00BC($s0)          ## 000000BC
glabel L80A0A6E0
/* 002D0 80A0A6E0 3C0180A1 */  lui     $at, %hi(D_80A0B534)       ## $at = 80A10000
/* 002D4 80A0A6E4 C420B534 */  lwc1    $f0, %lo(D_80A0B534)($at)  
/* 002D8 80A0A6E8 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 002DC 80A0A6EC 44050000 */  mfc1    $a1, $f0                   
/* 002E0 80A0A6F0 0C00B58B */  jal     Actor_SetScale
              
/* 002E4 80A0A6F4 00000000 */  nop
/* 002E8 80A0A6F8 A6000150 */  sh      $zero, 0x0150($s0)         ## 00000150
/* 002EC 80A0A6FC 3C0180A1 */  lui     $at, %hi(D_80A0B538)       ## $at = 80A10000
/* 002F0 80A0A700 0C00CFBE */  jal     Math_Rand_ZeroFloat
              
/* 002F4 80A0A704 C42CB538 */  lwc1    $f12, %lo(D_80A0B538)($at) 
/* 002F8 80A0A708 4600048D */  trunc.w.s $f18, $f0                  
/* 002FC 80A0A70C 2401000A */  addiu   $at, $zero, 0x000A         ## $at = 0000000A
/* 00300 80A0A710 24090002 */  addiu   $t1, $zero, 0x0002         ## $t1 = 00000002
/* 00304 80A0A714 3C0480A1 */  lui     $a0, %hi(D_80A0B430)       ## $a0 = 80A10000
/* 00308 80A0A718 44029000 */  mfc1    $v0, $f18                  
/* 0030C 80A0A71C 00000000 */  nop
/* 00310 80A0A720 00021400 */  sll     $v0, $v0, 16               
/* 00314 80A0A724 00021403 */  sra     $v0, $v0, 16               
/* 00318 80A0A728 1040000A */  beq     $v0, $zero, .L80A0A754     
/* 0031C 80A0A72C 00000000 */  nop
/* 00320 80A0A730 1041000A */  beq     $v0, $at, .L80A0A75C       
/* 00324 80A0A734 240A0001 */  addiu   $t2, $zero, 0x0001         ## $t2 = 00000001
/* 00328 80A0A738 24010014 */  addiu   $at, $zero, 0x0014         ## $at = 00000014
/* 0032C 80A0A73C 10410007 */  beq     $v0, $at, .L80A0A75C       
/* 00330 80A0A740 2401001E */  addiu   $at, $zero, 0x001E         ## $at = 0000001E
/* 00334 80A0A744 50410006 */  beql    $v0, $at, .L80A0A760       
/* 00338 80A0A748 A60A0150 */  sh      $t2, 0x0150($s0)           ## 00000150
/* 0033C 80A0A74C 10000005 */  beq     $zero, $zero, .L80A0A764   
/* 00340 80A0A750 3C01C040 */  lui     $at, 0xC040                ## $at = C0400000
.L80A0A754:
/* 00344 80A0A754 10000002 */  beq     $zero, $zero, .L80A0A760   
/* 00348 80A0A758 A6090150 */  sh      $t1, 0x0150($s0)           ## 00000150
.L80A0A75C:
/* 0034C 80A0A75C A60A0150 */  sh      $t2, 0x0150($s0)           ## 00000150
.L80A0A760:
/* 00350 80A0A760 3C01C040 */  lui     $at, 0xC040                ## $at = C0400000
.L80A0A764:
/* 00354 80A0A764 44812000 */  mtc1    $at, $f4                   ## $f4 = -3.00
/* 00358 80A0A768 2484B430 */  addiu   $a0, $a0, %lo(D_80A0B430)  ## $a0 = 80A0B430
/* 0035C 80A0A76C 0C00084C */  jal     osSyncPrintf
              
/* 00360 80A0A770 E604006C */  swc1    $f4, 0x006C($s0)           ## 0000006C
/* 00364 80A0A774 3C0140C0 */  lui     $at, 0x40C0                ## $at = 40C00000
/* 00368 80A0A778 44813000 */  mtc1    $at, $f6                   ## $f6 = 6.00
/* 0036C 80A0A77C 8E0B0004 */  lw      $t3, 0x0004($s0)           ## 00000004
/* 00370 80A0A780 3C01442F */  lui     $at, 0x442F                ## $at = 442F0000
/* 00374 80A0A784 44814000 */  mtc1    $at, $f8                   ## $f8 = 700.00
/* 00378 80A0A788 2401FFFE */  addiu   $at, $zero, 0xFFFE         ## $at = FFFFFFFE
/* 0037C 80A0A78C 3C0D80A1 */  lui     $t5, %hi(func_80A0B070)    ## $t5 = 80A10000
/* 00380 80A0A790 25ADB070 */  addiu   $t5, $t5, %lo(func_80A0B070) ## $t5 = 80A0B070
/* 00384 80A0A794 01616024 */  and     $t4, $t3, $at              
/* 00388 80A0A798 AE0C0004 */  sw      $t4, 0x0004($s0)           ## 00000004
/* 0038C 80A0A79C AE0D014C */  sw      $t5, 0x014C($s0)           ## 0000014C
/* 00390 80A0A7A0 E60600C4 */  swc1    $f6, 0x00C4($s0)           ## 000000C4
/* 00394 80A0A7A4 10000016 */  beq     $zero, $zero, .L80A0A800   
/* 00398 80A0A7A8 E60800BC */  swc1    $f8, 0x00BC($s0)           ## 000000BC
glabel L80A0A7AC
/* 0039C 80A0A7AC 3C0180A1 */  lui     $at, %hi(D_80A0B53C)       ## $at = 80A10000
/* 003A0 80A0A7B0 C420B53C */  lwc1    $f0, %lo(D_80A0B53C)($at)  
/* 003A4 80A0A7B4 8E0E0004 */  lw      $t6, 0x0004($s0)           ## 00000004
/* 003A8 80A0A7B8 3C01C040 */  lui     $at, 0xC040                ## $at = C0400000
/* 003AC 80A0A7BC 44815000 */  mtc1    $at, $f10                  ## $f10 = -3.00
/* 003B0 80A0A7C0 2401FFFE */  addiu   $at, $zero, 0xFFFE         ## $at = FFFFFFFE
/* 003B4 80A0A7C4 44050000 */  mfc1    $a1, $f0                   
/* 003B8 80A0A7C8 01C17824 */  and     $t7, $t6, $at              
/* 003BC 80A0A7CC AE0F0004 */  sw      $t7, 0x0004($s0)           ## 00000004
/* 003C0 80A0A7D0 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 003C4 80A0A7D4 0C00B58B */  jal     Actor_SetScale
              
/* 003C8 80A0A7D8 E60A006C */  swc1    $f10, 0x006C($s0)          ## 0000006C
/* 003CC 80A0A7DC 3C0140C0 */  lui     $at, 0x40C0                ## $at = 40C00000
/* 003D0 80A0A7E0 44818000 */  mtc1    $at, $f16                  ## $f16 = 6.00
/* 003D4 80A0A7E4 3C01C42F */  lui     $at, 0xC42F                ## $at = C42F0000
/* 003D8 80A0A7E8 44819000 */  mtc1    $at, $f18                  ## $f18 = -700.00
/* 003DC 80A0A7EC 3C1880A1 */  lui     $t8, %hi(func_80A0B0F4)    ## $t8 = 80A10000
/* 003E0 80A0A7F0 2718B0F4 */  addiu   $t8, $t8, %lo(func_80A0B0F4) ## $t8 = 80A0B0F4
/* 003E4 80A0A7F4 AE18014C */  sw      $t8, 0x014C($s0)           ## 0000014C
/* 003E8 80A0A7F8 E61000C4 */  swc1    $f16, 0x00C4($s0)          ## 000000C4
/* 003EC 80A0A7FC E61200BC */  swc1    $f18, 0x00BC($s0)          ## 000000BC
.L80A0A800:
/* 003F0 80A0A800 8FBF001C */  lw      $ra, 0x001C($sp)           
/* 003F4 80A0A804 8FB00018 */  lw      $s0, 0x0018($sp)           
/* 003F8 80A0A808 27BD0020 */  addiu   $sp, $sp, 0x0020           ## $sp = 00000000
/* 003FC 80A0A80C 03E00008 */  jr      $ra                        
/* 00400 80A0A810 00000000 */  nop
