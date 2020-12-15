glabel BgYdanSp_Init
/* 00000 808BF410 27BDFF80 */  addiu   $sp, $sp, 0xFF80           ## $sp = FFFFFF80
/* 00004 808BF414 AFA50084 */  sw      $a1, 0x0084($sp)           
/* 00008 808BF418 AFBF0024 */  sw      $ra, 0x0024($sp)           
/* 0000C 808BF41C AFB00020 */  sw      $s0, 0x0020($sp)           
/* 00010 808BF420 3C05808C */  lui     $a1, %hi(D_808C09B8)       ## $a1 = 808C0000
/* 00014 808BF424 00808025 */  or      $s0, $a0, $zero            ## $s0 = 00000000
/* 00018 808BF428 AFA0004C */  sw      $zero, 0x004C($sp)         
/* 0001C 808BF42C 0C01E037 */  jal     Actor_ProcessInitChain
              
/* 00020 808BF430 24A509B8 */  addiu   $a1, $a1, %lo(D_808C09B8)  ## $a1 = 808C09B8
/* 00024 808BF434 8618001C */  lh      $t8, 0x001C($s0)           ## 0000001C
/* 00028 808BF438 8609001C */  lh      $t1, 0x001C($s0)           ## 0000001C
/* 0002C 808BF43C 860E001C */  lh      $t6, 0x001C($s0)           ## 0000001C
/* 00030 808BF440 0018C983 */  sra     $t9, $t8,  6               
/* 00034 808BF444 00095303 */  sra     $t2, $t1, 12               
/* 00038 808BF448 3328003F */  andi    $t0, $t9, 0x003F           ## $t0 = 00000000
/* 0003C 808BF44C 314B000F */  andi    $t3, $t2, 0x000F           ## $t3 = 00000000
/* 00040 808BF450 31CF003F */  andi    $t7, $t6, 0x003F           ## $t7 = 00000000
/* 00044 808BF454 A20F0168 */  sb      $t7, 0x0168($s0)           ## 00000168
/* 00048 808BF458 A2080169 */  sb      $t0, 0x0169($s0)           ## 00000169
/* 0004C 808BF45C A60B001C */  sh      $t3, 0x001C($s0)           ## 0000001C
/* 00050 808BF460 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 00054 808BF464 0C010D20 */  jal     DynaPolyInfo_SetActorMove
              
/* 00058 808BF468 24050001 */  addiu   $a1, $zero, 0x0001         ## $a1 = 00000001
/* 0005C 808BF46C 26050170 */  addiu   $a1, $s0, 0x0170           ## $a1 = 00000170
/* 00060 808BF470 AFA50030 */  sw      $a1, 0x0030($sp)           
/* 00064 808BF474 0C0171F8 */  jal     Collider_InitTris              
/* 00068 808BF478 8FA40084 */  lw      $a0, 0x0084($sp)           
/* 0006C 808BF47C 3C07808C */  lui     $a3, %hi(D_808C09A8)       ## $a3 = 808C0000
/* 00070 808BF480 260C0190 */  addiu   $t4, $s0, 0x0190           ## $t4 = 00000190
/* 00074 808BF484 AFAC0010 */  sw      $t4, 0x0010($sp)           
/* 00078 808BF488 24E709A8 */  addiu   $a3, $a3, %lo(D_808C09A8)  ## $a3 = 808C09A8
/* 0007C 808BF48C 8FA40084 */  lw      $a0, 0x0084($sp)           
/* 00080 808BF490 8FA50030 */  lw      $a1, 0x0030($sp)           
/* 00084 808BF494 0C0172EB */  jal     Collider_SetTris              
/* 00088 808BF498 02003025 */  or      $a2, $s0, $zero            ## $a2 = 00000000
/* 0008C 808BF49C 860D001C */  lh      $t5, 0x001C($s0)           ## 0000001C
/* 00090 808BF4A0 3C040600 */  lui     $a0, %hi(D_06006050)                ## $a0 = 06000000
/* 00094 808BF4A4 24846050 */  addiu   $a0, $a0, %lo(D_06006050)           ## $a0 = 06006050
/* 00098 808BF4A8 15A00040 */  bne     $t5, $zero, .L808BF5AC     
/* 0009C 808BF4AC 00000000 */  nop
/* 000A0 808BF4B0 3C040600 */  lui     $a0, %hi(D_06006460)                ## $a0 = 06000000
/* 000A4 808BF4B4 24846460 */  addiu   $a0, $a0, %lo(D_06006460)           ## $a0 = 06006460
/* 000A8 808BF4B8 0C010620 */  jal     DynaPolyInfo_Alloc
              
/* 000AC 808BF4BC 27A5004C */  addiu   $a1, $sp, 0x004C           ## $a1 = FFFFFFCC
/* 000B0 808BF4C0 3C0E808C */  lui     $t6, %hi(func_808BFE50)    ## $t6 = 808C0000
/* 000B4 808BF4C4 25CEFE50 */  addiu   $t6, $t6, %lo(func_808BFE50) ## $t6 = 808BFE50
/* 000B8 808BF4C8 3C03808C */  lui     $v1, %hi(D_808C0930)       ## $v1 = 808C0000
/* 000BC 808BF4CC 3C04808C */  lui     $a0, %hi(D_808C0954)       ## $a0 = 808C0000
/* 000C0 808BF4D0 AE0E0164 */  sw      $t6, 0x0164($s0)           ## 00000164
/* 000C4 808BF4D4 24840954 */  addiu   $a0, $a0, %lo(D_808C0954)  ## $a0 = 808C0954
/* 000C8 808BF4D8 24630930 */  addiu   $v1, $v1, %lo(D_808C0930)  ## $v1 = 808C0930
/* 000CC 808BF4DC 27A20054 */  addiu   $v0, $sp, 0x0054           ## $v0 = FFFFFFD4
/* 000D0 808BF4E0 2463000C */  addiu   $v1, $v1, 0x000C           ## $v1 = 808C093C
/* 000D4 808BF4E4 10640010 */  beq     $v1, $a0, .L808BF528       
/* 000D8 808BF4E8 C472000C */  lwc1    $f18, 0x000C($v1)          ## 808C0948
.L808BF4EC:
/* 000DC 808BF4EC C6100024 */  lwc1    $f16, 0x0024($s0)          ## 00000024
/* 000E0 808BF4F0 C46E0010 */  lwc1    $f14, 0x0010($v1)          ## 808C094C
/* 000E4 808BF4F4 C46C0014 */  lwc1    $f12, 0x0014($v1)          ## 808C0950
/* 000E8 808BF4F8 46109400 */  add.s   $f16, $f18, $f16           
/* 000EC 808BF4FC C4720018 */  lwc1    $f18, 0x0018($v1)          ## 808C0954
/* 000F0 808BF500 2463000C */  addiu   $v1, $v1, 0x000C           ## $v1 = 808C0948
/* 000F4 808BF504 2442000C */  addiu   $v0, $v0, 0x000C           ## $v0 = FFFFFFE0
/* 000F8 808BF508 E450FFF4 */  swc1    $f16, -0x000C($v0)         ## FFFFFFD4
/* 000FC 808BF50C C6100028 */  lwc1    $f16, 0x0028($s0)          ## 00000028
/* 00100 808BF510 46107400 */  add.s   $f16, $f14, $f16           
/* 00104 808BF514 E450FFF8 */  swc1    $f16, -0x0008($v0)         ## FFFFFFD8
/* 00108 808BF518 C610002C */  lwc1    $f16, 0x002C($s0)          ## 0000002C
/* 0010C 808BF51C 46106400 */  add.s   $f16, $f12, $f16           
/* 00110 808BF520 1464FFF2 */  bne     $v1, $a0, .L808BF4EC       
/* 00114 808BF524 E450FFFC */  swc1    $f16, -0x0004($v0)         ## FFFFFFDC
.L808BF528:
/* 00118 808BF528 C6100024 */  lwc1    $f16, 0x0024($s0)          ## 00000024
/* 0011C 808BF52C C46E0010 */  lwc1    $f14, 0x0010($v1)          ## 808C0958
/* 00120 808BF530 C46C0014 */  lwc1    $f12, 0x0014($v1)          ## 808C095C
/* 00124 808BF534 46109400 */  add.s   $f16, $f18, $f16           
/* 00128 808BF538 2442000C */  addiu   $v0, $v0, 0x000C           ## $v0 = FFFFFFEC
/* 0012C 808BF53C E450FFF4 */  swc1    $f16, -0x000C($v0)         ## FFFFFFE0
/* 00130 808BF540 C6100028 */  lwc1    $f16, 0x0028($s0)          ## 00000028
/* 00134 808BF544 46107400 */  add.s   $f16, $f14, $f16           
/* 00138 808BF548 E450FFF8 */  swc1    $f16, -0x0008($v0)         ## FFFFFFE4
/* 0013C 808BF54C C610002C */  lwc1    $f16, 0x002C($s0)          ## 0000002C
/* 00140 808BF550 46106400 */  add.s   $f16, $f12, $f16           
/* 00144 808BF554 E450FFFC */  swc1    $f16, -0x0004($v0)         ## FFFFFFE8
/* 00148 808BF558 27AF006C */  addiu   $t7, $sp, 0x006C           ## $t7 = FFFFFFEC
/* 0014C 808BF55C AFAF0010 */  sw      $t7, 0x0010($sp)           
/* 00150 808BF560 8FA40030 */  lw      $a0, 0x0030($sp)           
/* 00154 808BF564 00002825 */  or      $a1, $zero, $zero          ## $a1 = 00000000
/* 00158 808BF568 27A60054 */  addiu   $a2, $sp, 0x0054           ## $a2 = FFFFFFD4
/* 0015C 808BF56C 0C0189E8 */  jal     func_800627A0              
/* 00160 808BF570 27A70060 */  addiu   $a3, $sp, 0x0060           ## $a3 = FFFFFFE0
/* 00164 808BF574 C7B20054 */  lwc1    $f18, 0x0054($sp)          
/* 00168 808BF578 C7A40074 */  lwc1    $f4, 0x0074($sp)           
/* 0016C 808BF57C 27B80060 */  addiu   $t8, $sp, 0x0060           ## $t8 = FFFFFFE0
/* 00170 808BF580 AFB80010 */  sw      $t8, 0x0010($sp)           
/* 00174 808BF584 8FA40030 */  lw      $a0, 0x0030($sp)           
/* 00178 808BF588 24050001 */  addiu   $a1, $zero, 0x0001         ## $a1 = 00000001
/* 0017C 808BF58C 27A60054 */  addiu   $a2, $sp, 0x0054           ## $a2 = FFFFFFD4
/* 00180 808BF590 27A7006C */  addiu   $a3, $sp, 0x006C           ## $a3 = FFFFFFEC
/* 00184 808BF594 E7B20060 */  swc1    $f18, 0x0060($sp)          
/* 00188 808BF598 0C0189E8 */  jal     func_800627A0              
/* 0018C 808BF59C E7A40068 */  swc1    $f4, 0x0068($sp)           
/* 00190 808BF5A0 44803000 */  mtc1    $zero, $f6                 ## $f6 = 0.00
/* 00194 808BF5A4 10000080 */  beq     $zero, $zero, .L808BF7A8   
/* 00198 808BF5A8 E606016C */  swc1    $f6, 0x016C($s0)           ## 0000016C
.L808BF5AC:
/* 0019C 808BF5AC 0C010620 */  jal     DynaPolyInfo_Alloc
              
/* 001A0 808BF5B0 27A5004C */  addiu   $a1, $sp, 0x004C           ## $a1 = FFFFFFCC
/* 001A4 808BF5B4 3C19808C */  lui     $t9, %hi(func_808C0464)    ## $t9 = 808C0000
/* 001A8 808BF5B8 27390464 */  addiu   $t9, $t9, %lo(func_808C0464) ## $t9 = 808C0464
/* 001AC 808BF5BC AE190164 */  sw      $t9, 0x0164($s0)           ## 00000164
/* 001B0 808BF5C0 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 001B4 808BF5C4 0C00B56E */  jal     Actor_SetHeight
              
/* 001B8 808BF5C8 3C0541F0 */  lui     $a1, 0x41F0                ## $a1 = 41F00000
/* 001BC 808BF5CC 0C01DE1C */  jal     Math_Sins
              ## sins?
/* 001C0 808BF5D0 860400B6 */  lh      $a0, 0x00B6($s0)           ## 000000B6
/* 001C4 808BF5D4 860400B6 */  lh      $a0, 0x00B6($s0)           ## 000000B6
/* 001C8 808BF5D8 0C01DE0D */  jal     Math_Coss
              ## coss?
/* 001CC 808BF5DC E7A00040 */  swc1    $f0, 0x0040($sp)           
/* 001D0 808BF5E0 860400B4 */  lh      $a0, 0x00B4($s0)           ## 000000B4
/* 001D4 808BF5E4 0C01DE1C */  jal     Math_Sins
              ## sins?
/* 001D8 808BF5E8 E7A00044 */  swc1    $f0, 0x0044($sp)           
/* 001DC 808BF5EC 46000387 */  neg.s   $f14, $f0                  
/* 001E0 808BF5F0 860400B4 */  lh      $a0, 0x00B4($s0)           ## 000000B4
/* 001E4 808BF5F4 0C01DE0D */  jal     Math_Coss
              ## coss?
/* 001E8 808BF5F8 E7AE0038 */  swc1    $f14, 0x0038($sp)          
/* 001EC 808BF5FC 3C03808C */  lui     $v1, %hi(D_808C096C)       ## $v1 = 808C0000
/* 001F0 808BF600 3C04808C */  lui     $a0, %hi(D_808C0990)       ## $a0 = 808C0000
/* 001F4 808BF604 C7A20040 */  lwc1    $f2, 0x0040($sp)           
/* 001F8 808BF608 C7AC0044 */  lwc1    $f12, 0x0044($sp)          
/* 001FC 808BF60C C7AE0038 */  lwc1    $f14, 0x0038($sp)          
/* 00200 808BF610 46000406 */  mov.s   $f16, $f0                  
/* 00204 808BF614 24840990 */  addiu   $a0, $a0, %lo(D_808C0990)  ## $a0 = 808C0990
/* 00208 808BF618 2463096C */  addiu   $v1, $v1, %lo(D_808C096C)  ## $v1 = 808C096C
/* 0020C 808BF61C 27A20054 */  addiu   $v0, $sp, 0x0054           ## $v0 = FFFFFFD4
/* 00210 808BF620 2463000C */  addiu   $v1, $v1, 0x000C           ## $v1 = 808C0978
/* 00214 808BF624 C4720010 */  lwc1    $f18, 0x0010($v1)          ## 808C0988
/* 00218 808BF628 1064001B */  beq     $v1, $a0, .L808BF698       
/* 0021C 808BF62C C46A000C */  lwc1    $f10, 0x000C($v1)          ## 808C0984
.L808BF630:
/* 00220 808BF630 46029202 */  mul.s   $f8, $f18, $f2             
/* 00224 808BF634 C6060024 */  lwc1    $f6, 0x0024($s0)           ## 00000024
/* 00228 808BF638 C4640010 */  lwc1    $f4, 0x0010($v1)           ## 808C0988
/* 0022C 808BF63C 460A6482 */  mul.s   $f18, $f12, $f10           
/* 00230 808BF640 C46A0010 */  lwc1    $f10, 0x0010($v1)          ## 808C0988
/* 00234 808BF644 2463000C */  addiu   $v1, $v1, 0x000C           ## $v1 = 808C0984
/* 00238 808BF648 46002102 */  mul.s   $f4, $f4, $f0              
/* 0023C 808BF64C 2442000C */  addiu   $v0, $v0, 0x000C           ## $v0 = FFFFFFE0
/* 00240 808BF650 460E4202 */  mul.s   $f8, $f8, $f14             
/* 00244 808BF654 46123180 */  add.s   $f6, $f6, $f18             
/* 00248 808BF658 460C5482 */  mul.s   $f18, $f10, $f12           
/* 0024C 808BF65C C46A0000 */  lwc1    $f10, 0x0000($v1)          ## 808C0984
/* 00250 808BF660 460A1282 */  mul.s   $f10, $f2, $f10            
/* 00254 808BF664 46083201 */  sub.s   $f8, $f6, $f8              
/* 00258 808BF668 460E9182 */  mul.s   $f6, $f18, $f14            
/* 0025C 808BF66C C4720010 */  lwc1    $f18, 0x0010($v1)          ## 808C0994
/* 00260 808BF670 E448FFF4 */  swc1    $f8, -0x000C($v0)          ## FFFFFFD4
/* 00264 808BF674 C6080028 */  lwc1    $f8, 0x0028($s0)           ## 00000028
/* 00268 808BF678 46082200 */  add.s   $f8, $f4, $f8              
/* 0026C 808BF67C E448FFF8 */  swc1    $f8, -0x0008($v0)          ## FFFFFFD8
/* 00270 808BF680 C608002C */  lwc1    $f8, 0x002C($s0)           ## 0000002C
/* 00274 808BF684 460A4201 */  sub.s   $f8, $f8, $f10             
/* 00278 808BF688 C46A000C */  lwc1    $f10, 0x000C($v1)          ## 808C0990
/* 0027C 808BF68C 46083200 */  add.s   $f8, $f6, $f8              
/* 00280 808BF690 1464FFE7 */  bne     $v1, $a0, .L808BF630       
/* 00284 808BF694 E448FFFC */  swc1    $f8, -0x0004($v0)          ## FFFFFFDC
.L808BF698:
/* 00288 808BF698 46029202 */  mul.s   $f8, $f18, $f2             
/* 0028C 808BF69C C4640010 */  lwc1    $f4, 0x0010($v1)           ## 808C0994
/* 00290 808BF6A0 C6060024 */  lwc1    $f6, 0x0024($s0)           ## 00000024
/* 00294 808BF6A4 460A6482 */  mul.s   $f18, $f12, $f10           
/* 00298 808BF6A8 C46A0010 */  lwc1    $f10, 0x0010($v1)          ## 808C0994
/* 0029C 808BF6AC 2442000C */  addiu   $v0, $v0, 0x000C           ## $v0 = FFFFFFEC
/* 002A0 808BF6B0 46002102 */  mul.s   $f4, $f4, $f0              
/* 002A4 808BF6B4 00000000 */  nop
/* 002A8 808BF6B8 460E4202 */  mul.s   $f8, $f8, $f14             
/* 002AC 808BF6BC 46123180 */  add.s   $f6, $f6, $f18             
/* 002B0 808BF6C0 460C5482 */  mul.s   $f18, $f10, $f12           
/* 002B4 808BF6C4 C46A000C */  lwc1    $f10, 0x000C($v1)          ## 808C0990
/* 002B8 808BF6C8 460A1282 */  mul.s   $f10, $f2, $f10            
/* 002BC 808BF6CC 46083201 */  sub.s   $f8, $f6, $f8              
/* 002C0 808BF6D0 460E9182 */  mul.s   $f6, $f18, $f14            
/* 002C4 808BF6D4 E448FFF4 */  swc1    $f8, -0x000C($v0)          ## FFFFFFE0
/* 002C8 808BF6D8 C6080028 */  lwc1    $f8, 0x0028($s0)           ## 00000028
/* 002CC 808BF6DC 46082200 */  add.s   $f8, $f4, $f8              
/* 002D0 808BF6E0 E448FFF8 */  swc1    $f8, -0x0008($v0)          ## FFFFFFE4
/* 002D4 808BF6E4 C608002C */  lwc1    $f8, 0x002C($s0)           ## 0000002C
/* 002D8 808BF6E8 460A4201 */  sub.s   $f8, $f8, $f10             
/* 002DC 808BF6EC 46083200 */  add.s   $f8, $f6, $f8              
/* 002E0 808BF6F0 E448FFFC */  swc1    $f8, -0x0004($v0)          ## FFFFFFE8
/* 002E4 808BF6F4 27A8006C */  addiu   $t0, $sp, 0x006C           ## $t0 = FFFFFFEC
/* 002E8 808BF6F8 AFA80010 */  sw      $t0, 0x0010($sp)           
/* 002EC 808BF6FC 8FA40030 */  lw      $a0, 0x0030($sp)           
/* 002F0 808BF700 00002825 */  or      $a1, $zero, $zero          ## $a1 = 00000000
/* 002F4 808BF704 27A60054 */  addiu   $a2, $sp, 0x0054           ## $a2 = FFFFFFD4
/* 002F8 808BF708 27A70060 */  addiu   $a3, $sp, 0x0060           ## $a3 = FFFFFFE0
/* 002FC 808BF70C E7A20040 */  swc1    $f2, 0x0040($sp)           
/* 00300 808BF710 E7AC0044 */  swc1    $f12, 0x0044($sp)          
/* 00304 808BF714 E7AE0038 */  swc1    $f14, 0x0038($sp)          
/* 00308 808BF718 0C0189E8 */  jal     func_800627A0              
/* 0030C 808BF71C E7B0003C */  swc1    $f16, 0x003C($sp)          
/* 00310 808BF720 3C01808C */  lui     $at, %hi(D_808C0984)       ## $at = 808C0000
/* 00314 808BF724 C7AC0044 */  lwc1    $f12, 0x0044($sp)          
/* 00318 808BF728 C4260984 */  lwc1    $f6, %lo(D_808C0984)($at)  
/* 0031C 808BF72C C6080024 */  lwc1    $f8, 0x0024($s0)           ## 00000024
/* 00320 808BF730 3C01808C */  lui     $at, %hi(D_808C09A0)       ## $at = 808C0000
/* 00324 808BF734 46066482 */  mul.s   $f18, $f12, $f6            
/* 00328 808BF738 C7A20040 */  lwc1    $f2, 0x0040($sp)           
/* 0032C 808BF73C C42A09A0 */  lwc1    $f10, %lo(D_808C09A0)($at) 
/* 00330 808BF740 C7AE0038 */  lwc1    $f14, 0x0038($sp)          
/* 00334 808BF744 C7B0003C */  lwc1    $f16, 0x003C($sp)          
/* 00338 808BF748 27A90060 */  addiu   $t1, $sp, 0x0060           ## $t1 = FFFFFFE0
/* 0033C 808BF74C 8FA40030 */  lw      $a0, 0x0030($sp)           
/* 00340 808BF750 46124100 */  add.s   $f4, $f8, $f18             
/* 00344 808BF754 46025202 */  mul.s   $f8, $f10, $f2             
/* 00348 808BF758 24050001 */  addiu   $a1, $zero, 0x0001         ## $a1 = 00000001
/* 0034C 808BF75C 27A60054 */  addiu   $a2, $sp, 0x0054           ## $a2 = FFFFFFD4
/* 00350 808BF760 27A7006C */  addiu   $a3, $sp, 0x006C           ## $a3 = FFFFFFEC
/* 00354 808BF764 460E4482 */  mul.s   $f18, $f8, $f14            
/* 00358 808BF768 46122201 */  sub.s   $f8, $f4, $f18             
/* 0035C 808BF76C 46105102 */  mul.s   $f4, $f10, $f16            
/* 00360 808BF770 E7A80060 */  swc1    $f8, 0x0060($sp)           
/* 00364 808BF774 C6120028 */  lwc1    $f18, 0x0028($s0)          ## 00000028
/* 00368 808BF778 46122200 */  add.s   $f8, $f4, $f18             
/* 0036C 808BF77C 46061482 */  mul.s   $f18, $f2, $f6             
/* 00370 808BF780 00000000 */  nop
/* 00374 808BF784 460C5182 */  mul.s   $f6, $f10, $f12            
/* 00378 808BF788 E7A80064 */  swc1    $f8, 0x0064($sp)           
/* 0037C 808BF78C C604002C */  lwc1    $f4, 0x002C($s0)           ## 0000002C
/* 00380 808BF790 AFA90010 */  sw      $t1, 0x0010($sp)           
/* 00384 808BF794 46122201 */  sub.s   $f8, $f4, $f18             
/* 00388 808BF798 460E3102 */  mul.s   $f4, $f6, $f14             
/* 0038C 808BF79C 46082480 */  add.s   $f18, $f4, $f8             
/* 00390 808BF7A0 0C0189E8 */  jal     func_800627A0              
/* 00394 808BF7A4 E7B20068 */  swc1    $f18, 0x0068($sp)          
.L808BF7A8:
/* 00398 808BF7A8 8FA40084 */  lw      $a0, 0x0084($sp)           
/* 0039C 808BF7AC 02003025 */  or      $a2, $s0, $zero            ## $a2 = 00000000
/* 003A0 808BF7B0 8FA7004C */  lw      $a3, 0x004C($sp)           
/* 003A4 808BF7B4 0C00FA9D */  jal     DynaPolyInfo_RegisterActor
              ## DynaPolyInfo_setActor
/* 003A8 808BF7B8 24850810 */  addiu   $a1, $a0, 0x0810           ## $a1 = 00000810
/* 003AC 808BF7BC AE02014C */  sw      $v0, 0x014C($s0)           ## 0000014C
/* 003B0 808BF7C0 A600016A */  sh      $zero, 0x016A($s0)         ## 0000016A
/* 003B4 808BF7C4 8FA40084 */  lw      $a0, 0x0084($sp)           
/* 003B8 808BF7C8 0C00B2D0 */  jal     Flags_GetSwitch
              
/* 003BC 808BF7CC 92050168 */  lbu     $a1, 0x0168($s0)           ## 00000168
/* 003C0 808BF7D0 50400004 */  beql    $v0, $zero, .L808BF7E4     
/* 003C4 808BF7D4 8FBF0024 */  lw      $ra, 0x0024($sp)           
/* 003C8 808BF7D8 0C00B55C */  jal     Actor_Kill
              
/* 003CC 808BF7DC 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 003D0 808BF7E0 8FBF0024 */  lw      $ra, 0x0024($sp)           
.L808BF7E4:
/* 003D4 808BF7E4 8FB00020 */  lw      $s0, 0x0020($sp)           
/* 003D8 808BF7E8 27BD0080 */  addiu   $sp, $sp, 0x0080           ## $sp = 00000000
/* 003DC 808BF7EC 03E00008 */  jr      $ra                        
/* 003E0 808BF7F0 00000000 */  nop
