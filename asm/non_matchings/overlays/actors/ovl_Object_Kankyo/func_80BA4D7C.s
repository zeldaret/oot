.rdata
glabel D_80BA5B34
    .asciz "../z_object_kankyo.c"
    .balign 4

glabel D_80BA5B4C
    .asciz "../z_object_kankyo.c"
    .balign 4

glabel D_80BA5B64
    .asciz "../z_object_kankyo.c"
    .balign 4

.late_rodata
glabel D_80BA5CC0
    .float 0.142857149

glabel D_80BA5CC4
    .float 0.142857149

glabel D_80BA5CC8
    .float 0.1

.text
glabel func_80BA4D7C
/* 022DC 80BA4D7C 27BDFF80 */  addiu   $sp, $sp, 0xFF80           ## $sp = FFFFFF80
/* 022E0 80BA4D80 AFB10018 */  sw      $s1, 0x0018($sp)           
/* 022E4 80BA4D84 00A08825 */  or      $s1, $a1, $zero            ## $s1 = 00000000
/* 022E8 80BA4D88 AFBF001C */  sw      $ra, 0x001C($sp)           
/* 022EC 80BA4D8C AFB00014 */  sw      $s0, 0x0014($sp)           
/* 022F0 80BA4D90 8CA50000 */  lw      $a1, 0x0000($a1)           ## 00000000
/* 022F4 80BA4D94 00808025 */  or      $s0, $a0, $zero            ## $s0 = 00000000
/* 022F8 80BA4D98 3C0680BA */  lui     $a2, %hi(D_80BA5B34)       ## $a2 = 80BA0000
/* 022FC 80BA4D9C 24C65B34 */  addiu   $a2, $a2, %lo(D_80BA5B34)  ## $a2 = 80BA5B34
/* 02300 80BA4DA0 27A40048 */  addiu   $a0, $sp, 0x0048           ## $a0 = FFFFFFC8
/* 02304 80BA4DA4 2407052C */  addiu   $a3, $zero, 0x052C         ## $a3 = 0000052C
/* 02308 80BA4DA8 0C031AB1 */  jal     Graph_OpenDisps              
/* 0230C 80BA4DAC AFA50058 */  sw      $a1, 0x0058($sp)           
/* 02310 80BA4DB0 922E1D6C */  lbu     $t6, 0x1D6C($s1)           ## 00001D6C
/* 02314 80BA4DB4 8FA80058 */  lw      $t0, 0x0058($sp)           
/* 02318 80BA4DB8 11C00147 */  beq     $t6, $zero, .L80BA52D8     
/* 0231C 80BA4DBC 00000000 */  nop
/* 02320 80BA4DC0 8E221D90 */  lw      $v0, 0x1D90($s1)           ## 00001D90
/* 02324 80BA4DC4 10400144 */  beq     $v0, $zero, .L80BA52D8     
/* 02328 80BA4DC8 00000000 */  nop
/* 0232C 80BA4DCC 944F0000 */  lhu     $t7, 0x0000($v0)           ## 00000000
/* 02330 80BA4DD0 24010002 */  addiu   $at, $zero, 0x0002         ## $at = 00000002
/* 02334 80BA4DD4 15E10140 */  bne     $t7, $at, .L80BA52D8       
/* 02338 80BA4DD8 00000000 */  nop
/* 0233C 80BA4DDC 92181659 */  lbu     $t8, 0x1659($s0)           ## 00001659
/* 02340 80BA4DE0 1300013D */  beq     $t8, $zero, .L80BA52D8     
/* 02344 80BA4DE4 00000000 */  nop
/* 02348 80BA4DE8 9219014C */  lbu     $t9, 0x014C($s0)           ## 0000014C
/* 0234C 80BA4DEC 17200011 */  bne     $t9, $zero, .L80BA4E34     
/* 02350 80BA4DF0 3C013F80 */  lui     $at, 0x3F80                ## $at = 3F800000
/* 02354 80BA4DF4 44810000 */  mtc1    $at, $f0                   ## $f0 = 1.00
/* 02358 80BA4DF8 3C0180BA */  lui     $at, %hi(D_80BA5CC0)       ## $at = 80BA0000
/* 0235C 80BA4DFC C4265CC0 */  lwc1    $f6, %lo(D_80BA5CC0)($at)  
/* 02360 80BA4E00 C6040198 */  lwc1    $f4, 0x0198($s0)           ## 00000198
/* 02364 80BA4E04 46062200 */  add.s   $f8, $f4, $f6              
/* 02368 80BA4E08 E6080198 */  swc1    $f8, 0x0198($s0)           ## 00000198
/* 0236C 80BA4E0C C60A0198 */  lwc1    $f10, 0x0198($s0)          ## 00000198
/* 02370 80BA4E10 460A003E */  c.le.s  $f0, $f10                  
/* 02374 80BA4E14 00000000 */  nop
/* 02378 80BA4E18 45020016 */  bc1fl   .L80BA4E74                 
/* 0237C 80BA4E1C 960B019C */  lhu     $t3, 0x019C($s0)           ## 0000019C
/* 02380 80BA4E20 9209014C */  lbu     $t1, 0x014C($s0)           ## 0000014C
/* 02384 80BA4E24 E6000198 */  swc1    $f0, 0x0198($s0)           ## 00000198
/* 02388 80BA4E28 252A0001 */  addiu   $t2, $t1, 0x0001           ## $t2 = 00000001
/* 0238C 80BA4E2C 10000010 */  beq     $zero, $zero, .L80BA4E70   
/* 02390 80BA4E30 A20A014C */  sb      $t2, 0x014C($s0)           ## 0000014C
.L80BA4E34:
/* 02394 80BA4E34 3C0180BA */  lui     $at, %hi(D_80BA5CC4)       ## $at = 80BA0000
/* 02398 80BA4E38 C4265CC4 */  lwc1    $f6, %lo(D_80BA5CC4)($at)  
/* 0239C 80BA4E3C C6040198 */  lwc1    $f4, 0x0198($s0)           ## 00000198
/* 023A0 80BA4E40 3C0180BA */  lui     $at, %hi(D_80BA5CC8)       ## $at = 80BA0000
/* 023A4 80BA4E44 46062201 */  sub.s   $f8, $f4, $f6              
/* 023A8 80BA4E48 E6080198 */  swc1    $f8, 0x0198($s0)           ## 00000198
/* 023AC 80BA4E4C C6040198 */  lwc1    $f4, 0x0198($s0)           ## 00000198
/* 023B0 80BA4E50 C42A5CC8 */  lwc1    $f10, %lo(D_80BA5CC8)($at) 
/* 023B4 80BA4E54 460A203E */  c.le.s  $f4, $f10                  
/* 023B8 80BA4E58 00000000 */  nop
/* 023BC 80BA4E5C 45020005 */  bc1fl   .L80BA4E74                 
/* 023C0 80BA4E60 960B019C */  lhu     $t3, 0x019C($s0)           ## 0000019C
/* 023C4 80BA4E64 44803000 */  mtc1    $zero, $f6                 ## $f6 = 0.00
/* 023C8 80BA4E68 A200014C */  sb      $zero, 0x014C($s0)         ## 0000014C
/* 023CC 80BA4E6C E6060198 */  swc1    $f6, 0x0198($s0)           ## 00000198
.L80BA4E70:
/* 023D0 80BA4E70 960B019C */  lhu     $t3, 0x019C($s0)           ## 0000019C
.L80BA4E74:
/* 023D4 80BA4E74 256C0001 */  addiu   $t4, $t3, 0x0001           ## $t4 = 00000001
/* 023D8 80BA4E78 318DFFFF */  andi    $t5, $t4, 0xFFFF           ## $t5 = 00000001
/* 023DC 80BA4E7C 29A10008 */  slti    $at, $t5, 0x0008           
/* 023E0 80BA4E80 14200002 */  bne     $at, $zero, .L80BA4E8C     
/* 023E4 80BA4E84 A60C019C */  sh      $t4, 0x019C($s0)           ## 0000019C
/* 023E8 80BA4E88 A600019C */  sh      $zero, 0x019C($s0)         ## 0000019C
.L80BA4E8C:
/* 023EC 80BA4E8C 8E221D90 */  lw      $v0, 0x1D90($s1)           ## 00001D90
/* 023F0 80BA4E90 8C4E000C */  lw      $t6, 0x000C($v0)           ## 0000000C
/* 023F4 80BA4E94 8C590018 */  lw      $t9, 0x0018($v0)           ## 00000018
/* 023F8 80BA4E98 8C4F0010 */  lw      $t7, 0x0010($v0)           ## 00000010
/* 023FC 80BA4E9C 448E4000 */  mtc1    $t6, $f8                   ## $f8 = 0.00
/* 02400 80BA4EA0 44993000 */  mtc1    $t9, $f6                   ## $f6 = 0.00
/* 02404 80BA4EA4 8C580014 */  lw      $t8, 0x0014($v0)           ## 00000014
/* 02408 80BA4EA8 468040A0 */  cvt.s.w $f2, $f8                   
/* 0240C 80BA4EAC 448F5000 */  mtc1    $t7, $f10                  ## $f10 = 0.00
/* 02410 80BA4EB0 44982000 */  mtc1    $t8, $f4                   ## $f4 = 0.00
/* 02414 80BA4EB4 46803220 */  cvt.s.w $f8, $f6                   
/* 02418 80BA4EB8 46805420 */  cvt.s.w $f16, $f10                 
/* 0241C 80BA4EBC E7A80060 */  swc1    $f8, 0x0060($sp)           
/* 02420 80BA4EC0 8C49001C */  lw      $t1, 0x001C($v0)           ## 0000001C
/* 02424 80BA4EC4 44895000 */  mtc1    $t1, $f10                  ## $f10 = 0.00
/* 02428 80BA4EC8 468024A0 */  cvt.s.w $f18, $f4                  
/* 0242C 80BA4ECC 46805120 */  cvt.s.w $f4, $f10                  
/* 02430 80BA4ED0 E7A40064 */  swc1    $f4, 0x0064($sp)           
/* 02434 80BA4ED4 8C4A0020 */  lw      $t2, 0x0020($v0)           ## 00000020
/* 02438 80BA4ED8 448A3000 */  mtc1    $t2, $f6                   ## $f6 = 0.00
/* 0243C 80BA4EDC 00000000 */  nop
/* 02440 80BA4EE0 46803220 */  cvt.s.w $f8, $f6                   
/* 02444 80BA4EE4 E7A80068 */  swc1    $f8, 0x0068($sp)           
/* 02448 80BA4EE8 96261D74 */  lhu     $a2, 0x1D74($s1)           ## 00001D74
/* 0244C 80BA4EEC 94450002 */  lhu     $a1, 0x0002($v0)           ## 00000002
/* 02450 80BA4EF0 94440004 */  lhu     $a0, 0x0004($v0)           ## 00000004
/* 02454 80BA4EF4 E7B20074 */  swc1    $f18, 0x0074($sp)          
/* 02458 80BA4EF8 E7B00070 */  swc1    $f16, 0x0070($sp)          
/* 0245C 80BA4EFC E7A2006C */  swc1    $f2, 0x006C($sp)           
/* 02460 80BA4F00 0C01BE4F */  jal     Environment_LerpWeight              
/* 02464 80BA4F04 AFA80058 */  sw      $t0, 0x0058($sp)           
/* 02468 80BA4F08 C7A2006C */  lwc1    $f2, 0x006C($sp)           
/* 0246C 80BA4F0C C7AA0060 */  lwc1    $f10, 0x0060($sp)          
/* 02470 80BA4F10 C7B00070 */  lwc1    $f16, 0x0070($sp)          
/* 02474 80BA4F14 C7A80064 */  lwc1    $f8, 0x0064($sp)           
/* 02478 80BA4F18 46025101 */  sub.s   $f4, $f10, $f2             
/* 0247C 80BA4F1C C7B20074 */  lwc1    $f18, 0x0074($sp)          
/* 02480 80BA4F20 00003825 */  or      $a3, $zero, $zero          ## $a3 = 00000000
/* 02484 80BA4F24 46104281 */  sub.s   $f10, $f8, $f16            
/* 02488 80BA4F28 46002182 */  mul.s   $f6, $f4, $f0              
/* 0248C 80BA4F2C 46023300 */  add.s   $f12, $f6, $f2             
/* 02490 80BA4F30 C7A60068 */  lwc1    $f6, 0x0068($sp)           
/* 02494 80BA4F34 46005102 */  mul.s   $f4, $f10, $f0             
/* 02498 80BA4F38 46123201 */  sub.s   $f8, $f6, $f18             
/* 0249C 80BA4F3C 46004282 */  mul.s   $f10, $f8, $f0             
/* 024A0 80BA4F40 46102380 */  add.s   $f14, $f4, $f16            
/* 024A4 80BA4F44 46125100 */  add.s   $f4, $f10, $f18            
/* 024A8 80BA4F48 44062000 */  mfc1    $a2, $f4                   
/* 024AC 80BA4F4C 0C034261 */  jal     Matrix_Translate              
/* 024B0 80BA4F50 00000000 */  nop
/* 024B4 80BA4F54 C60C0190 */  lwc1    $f12, 0x0190($s0)          ## 00000190
/* 024B8 80BA4F58 24070001 */  addiu   $a3, $zero, 0x0001         ## $a3 = 00000001
/* 024BC 80BA4F5C 44066000 */  mfc1    $a2, $f12                  
/* 024C0 80BA4F60 0C0342A3 */  jal     Matrix_Scale              
/* 024C4 80BA4F64 46006386 */  mov.s   $f14, $f12                 
/* 024C8 80BA4F68 0C024F61 */  jal     func_80093D84              
/* 024CC 80BA4F6C 8E240000 */  lw      $a0, 0x0000($s1)           ## 00000000
/* 024D0 80BA4F70 8FA80058 */  lw      $t0, 0x0058($sp)           
/* 024D4 80BA4F74 3C0CE700 */  lui     $t4, 0xE700                ## $t4 = E7000000
/* 024D8 80BA4F78 3C0EFA00 */  lui     $t6, 0xFA00                ## $t6 = FA000000
/* 024DC 80BA4F7C 8D0202D0 */  lw      $v0, 0x02D0($t0)           ## 000002D0
/* 024E0 80BA4F80 3C0142D2 */  lui     $at, 0x42D2                ## $at = 42D20000
/* 024E4 80BA4F84 44813000 */  mtc1    $at, $f6                   ## $f6 = 105.00
/* 024E8 80BA4F88 244B0008 */  addiu   $t3, $v0, 0x0008           ## $t3 = 00000008
/* 024EC 80BA4F8C AD0B02D0 */  sw      $t3, 0x02D0($t0)           ## 000002D0
/* 024F0 80BA4F90 AC400004 */  sw      $zero, 0x0004($v0)         ## 00000004
/* 024F4 80BA4F94 AC4C0000 */  sw      $t4, 0x0000($v0)           ## 00000000
/* 024F8 80BA4F98 8D0302D0 */  lw      $v1, 0x02D0($t0)           ## 000002D0
/* 024FC 80BA4F9C 24040001 */  addiu   $a0, $zero, 0x0001         ## $a0 = 00000001
/* 02500 80BA4FA0 3C014F00 */  lui     $at, 0x4F00                ## $at = 4F000000
/* 02504 80BA4FA4 246D0008 */  addiu   $t5, $v1, 0x0008           ## $t5 = 00000008
/* 02508 80BA4FA8 AD0D02D0 */  sw      $t5, 0x02D0($t0)           ## 000002D0
/* 0250C 80BA4FAC AC6E0000 */  sw      $t6, 0x0000($v1)           ## 00000000
/* 02510 80BA4FB0 C6080198 */  lwc1    $f8, 0x0198($s0)           ## 00000198
/* 02514 80BA4FB4 24050001 */  addiu   $a1, $zero, 0x0001         ## $a1 = 00000001
/* 02518 80BA4FB8 46083282 */  mul.s   $f10, $f6, $f8             
/* 0251C 80BA4FBC 444FF800 */  cfc1    $t7, $31
/* 02520 80BA4FC0 44C4F800 */  ctc1    $a0, $31
/* 02524 80BA4FC4 00000000 */  nop
/* 02528 80BA4FC8 46005124 */  cvt.w.s $f4, $f10                  
/* 0252C 80BA4FCC 4444F800 */  cfc1    $a0, $31
/* 02530 80BA4FD0 00000000 */  nop
/* 02534 80BA4FD4 30840078 */  andi    $a0, $a0, 0x0078           ## $a0 = 00000000
/* 02538 80BA4FD8 50800013 */  beql    $a0, $zero, .L80BA5028     
/* 0253C 80BA4FDC 44042000 */  mfc1    $a0, $f4                   
/* 02540 80BA4FE0 44812000 */  mtc1    $at, $f4                   ## $f4 = 2147483648.00
/* 02544 80BA4FE4 24040001 */  addiu   $a0, $zero, 0x0001         ## $a0 = 00000001
/* 02548 80BA4FE8 46045101 */  sub.s   $f4, $f10, $f4             
/* 0254C 80BA4FEC 44C4F800 */  ctc1    $a0, $31
/* 02550 80BA4FF0 00000000 */  nop
/* 02554 80BA4FF4 46002124 */  cvt.w.s $f4, $f4                   
/* 02558 80BA4FF8 4444F800 */  cfc1    $a0, $31
/* 0255C 80BA4FFC 00000000 */  nop
/* 02560 80BA5000 30840078 */  andi    $a0, $a0, 0x0078           ## $a0 = 00000000
/* 02564 80BA5004 14800005 */  bne     $a0, $zero, .L80BA501C     
/* 02568 80BA5008 00000000 */  nop
/* 0256C 80BA500C 44042000 */  mfc1    $a0, $f4                   
/* 02570 80BA5010 3C018000 */  lui     $at, 0x8000                ## $at = 80000000
/* 02574 80BA5014 10000007 */  beq     $zero, $zero, .L80BA5034   
/* 02578 80BA5018 00812025 */  or      $a0, $a0, $at              ## $a0 = 80000000
.L80BA501C:
/* 0257C 80BA501C 10000005 */  beq     $zero, $zero, .L80BA5034   
/* 02580 80BA5020 2404FFFF */  addiu   $a0, $zero, 0xFFFF         ## $a0 = FFFFFFFF
/* 02584 80BA5024 44042000 */  mfc1    $a0, $f4                   
.L80BA5028:
/* 02588 80BA5028 00000000 */  nop
/* 0258C 80BA502C 0480FFFB */  bltz    $a0, .L80BA501C            
/* 02590 80BA5030 00000000 */  nop
.L80BA5034:
/* 02594 80BA5034 9219018C */  lbu     $t9, 0x018C($s0)           ## 0000018C
/* 02598 80BA5038 24840096 */  addiu   $a0, $a0, 0x0096           ## $a0 = 00000095
/* 0259C 80BA503C 308400FF */  andi    $a0, $a0, 0x00FF           ## $a0 = 00000095
/* 025A0 80BA5040 00044E00 */  sll     $t1, $a0, 24               
/* 025A4 80BA5044 3C0100FF */  lui     $at, 0x00FF                ## $at = 00FF0000
/* 025A8 80BA5048 03295025 */  or      $t2, $t9, $t1              ## $t2 = 00000000
/* 025AC 80BA504C 01415825 */  or      $t3, $t2, $at              ## $t3 = 00FF0000
/* 025B0 80BA5050 00046200 */  sll     $t4, $a0,  8               
/* 025B4 80BA5054 016C6825 */  or      $t5, $t3, $t4              ## $t5 = E7FF0000
/* 025B8 80BA5058 AC6D0004 */  sw      $t5, 0x0004($v1)           ## 00000004
/* 025BC 80BA505C 8D0302D0 */  lw      $v1, 0x02D0($t0)           ## 000002D0
/* 025C0 80BA5060 44CFF800 */  ctc1    $t7, $31
/* 025C4 80BA5064 3C0FFB00 */  lui     $t7, 0xFB00                ## $t7 = FB000000
/* 025C8 80BA5068 246E0008 */  addiu   $t6, $v1, 0x0008           ## $t6 = 00000008
/* 025CC 80BA506C AD0E02D0 */  sw      $t6, 0x02D0($t0)           ## 000002D0
/* 025D0 80BA5070 3C01437F */  lui     $at, 0x437F                ## $at = 437F0000
/* 025D4 80BA5074 AC6F0000 */  sw      $t7, 0x0000($v1)           ## 00000000
/* 025D8 80BA5078 C6000198 */  lwc1    $f0, 0x0198($s0)           ## 00000198
/* 025DC 80BA507C 44813000 */  mtc1    $at, $f6                   ## $f6 = 255.00
/* 025E0 80BA5080 24040001 */  addiu   $a0, $zero, 0x0001         ## $a0 = 00000001
/* 025E4 80BA5084 3C014F00 */  lui     $at, 0x4F00                ## $at = 4F000000
/* 025E8 80BA5088 46003202 */  mul.s   $f8, $f6, $f0              
/* 025EC 80BA508C 4458F800 */  cfc1    $t8, $31
/* 025F0 80BA5090 44C4F800 */  ctc1    $a0, $31
/* 025F4 80BA5094 00000000 */  nop
/* 025F8 80BA5098 460042A4 */  cvt.w.s $f10, $f8                  
/* 025FC 80BA509C 4444F800 */  cfc1    $a0, $31
/* 02600 80BA50A0 00000000 */  nop
/* 02604 80BA50A4 30840078 */  andi    $a0, $a0, 0x0078           ## $a0 = 00000000
/* 02608 80BA50A8 50800013 */  beql    $a0, $zero, .L80BA50F8     
/* 0260C 80BA50AC 44045000 */  mfc1    $a0, $f10                  
/* 02610 80BA50B0 44815000 */  mtc1    $at, $f10                  ## $f10 = 2147483648.00
/* 02614 80BA50B4 24040001 */  addiu   $a0, $zero, 0x0001         ## $a0 = 00000001
/* 02618 80BA50B8 460A4281 */  sub.s   $f10, $f8, $f10            
/* 0261C 80BA50BC 44C4F800 */  ctc1    $a0, $31
/* 02620 80BA50C0 00000000 */  nop
/* 02624 80BA50C4 460052A4 */  cvt.w.s $f10, $f10                 
/* 02628 80BA50C8 4444F800 */  cfc1    $a0, $31
/* 0262C 80BA50CC 00000000 */  nop
/* 02630 80BA50D0 30840078 */  andi    $a0, $a0, 0x0078           ## $a0 = 00000000
/* 02634 80BA50D4 14800005 */  bne     $a0, $zero, .L80BA50EC     
/* 02638 80BA50D8 00000000 */  nop
/* 0263C 80BA50DC 44045000 */  mfc1    $a0, $f10                  
/* 02640 80BA50E0 3C018000 */  lui     $at, 0x8000                ## $at = 80000000
/* 02644 80BA50E4 10000007 */  beq     $zero, $zero, .L80BA5104   
/* 02648 80BA50E8 00812025 */  or      $a0, $a0, $at              ## $a0 = 80000000
.L80BA50EC:
/* 0264C 80BA50EC 10000005 */  beq     $zero, $zero, .L80BA5104   
/* 02650 80BA50F0 2404FFFF */  addiu   $a0, $zero, 0xFFFF         ## $a0 = FFFFFFFF
/* 02654 80BA50F4 44045000 */  mfc1    $a0, $f10                  
.L80BA50F8:
/* 02658 80BA50F8 00000000 */  nop
/* 0265C 80BA50FC 0480FFFB */  bltz    $a0, .L80BA50EC            
/* 02660 80BA5100 00000000 */  nop
.L80BA5104:
/* 02664 80BA5104 3C01431B */  lui     $at, 0x431B                ## $at = 431B0000
/* 02668 80BA5108 44D8F800 */  ctc1    $t8, $31
/* 0266C 80BA510C 44812000 */  mtc1    $at, $f4                   ## $f4 = 155.00
/* 02670 80BA5110 240B0001 */  addiu   $t3, $zero, 0x0001         ## $t3 = 00000001
/* 02674 80BA5114 308400FF */  andi    $a0, $a0, 0x00FF           ## $a0 = 000000FF
/* 02678 80BA5118 46002182 */  mul.s   $f6, $f4, $f0              
/* 0267C 80BA511C 309900FF */  andi    $t9, $a0, 0x00FF           ## $t9 = 000000FF
/* 02680 80BA5120 3C014F00 */  lui     $at, 0x4F00                ## $at = 4F000000
/* 02684 80BA5124 9209018C */  lbu     $t1, 0x018C($s0)           ## 0000018C
/* 02688 80BA5128 444AF800 */  cfc1    $t2, $31
/* 0268C 80BA512C 44CBF800 */  ctc1    $t3, $31
/* 02690 80BA5130 00000000 */  nop
/* 02694 80BA5134 46003224 */  cvt.w.s $f8, $f6                   
/* 02698 80BA5138 444BF800 */  cfc1    $t3, $31
/* 0269C 80BA513C 00000000 */  nop
/* 026A0 80BA5140 316B0078 */  andi    $t3, $t3, 0x0078           ## $t3 = 00000000
/* 026A4 80BA5144 51600013 */  beql    $t3, $zero, .L80BA5194     
/* 026A8 80BA5148 440B4000 */  mfc1    $t3, $f8                   
/* 026AC 80BA514C 44814000 */  mtc1    $at, $f8                   ## $f8 = 2147483648.00
/* 026B0 80BA5150 240B0001 */  addiu   $t3, $zero, 0x0001         ## $t3 = 00000001
/* 026B4 80BA5154 46083201 */  sub.s   $f8, $f6, $f8              
/* 026B8 80BA5158 44CBF800 */  ctc1    $t3, $31
/* 026BC 80BA515C 00000000 */  nop
/* 026C0 80BA5160 46004224 */  cvt.w.s $f8, $f8                   
/* 026C4 80BA5164 444BF800 */  cfc1    $t3, $31
/* 026C8 80BA5168 00000000 */  nop
/* 026CC 80BA516C 316B0078 */  andi    $t3, $t3, 0x0078           ## $t3 = 00000000
/* 026D0 80BA5170 15600005 */  bne     $t3, $zero, .L80BA5188     
/* 026D4 80BA5174 00000000 */  nop
/* 026D8 80BA5178 440B4000 */  mfc1    $t3, $f8                   
/* 026DC 80BA517C 3C018000 */  lui     $at, 0x8000                ## $at = 80000000
/* 026E0 80BA5180 10000007 */  beq     $zero, $zero, .L80BA51A0   
/* 026E4 80BA5184 01615825 */  or      $t3, $t3, $at              ## $t3 = 80000000
.L80BA5188:
/* 026E8 80BA5188 10000005 */  beq     $zero, $zero, .L80BA51A0   
/* 026EC 80BA518C 240BFFFF */  addiu   $t3, $zero, 0xFFFF         ## $t3 = FFFFFFFF
/* 026F0 80BA5190 440B4000 */  mfc1    $t3, $f8                   
.L80BA5194:
/* 026F4 80BA5194 00000000 */  nop
/* 026F8 80BA5198 0560FFFB */  bltz    $t3, .L80BA5188            
/* 026FC 80BA519C 00000000 */  nop
.L80BA51A0:
/* 02700 80BA51A0 01606025 */  or      $t4, $t3, $zero            ## $t4 = FFFFFFFF
/* 02704 80BA51A4 258E0064 */  addiu   $t6, $t4, 0x0064           ## $t6 = 00000063
/* 02708 80BA51A8 000E7E00 */  sll     $t7, $t6, 24               
/* 0270C 80BA51AC 240C00FF */  addiu   $t4, $zero, 0x00FF         ## $t4 = 000000FF
/* 02710 80BA51B0 01846823 */  subu    $t5, $t4, $a0              
/* 02714 80BA51B4 012FC025 */  or      $t8, $t1, $t7              ## $t8 = FB000000
/* 02718 80BA51B8 44CAF800 */  ctc1    $t2, $31
/* 0271C 80BA51BC 00195400 */  sll     $t2, $t9, 16               
/* 02720 80BA51C0 31AE00FF */  andi    $t6, $t5, 0x00FF           ## $t6 = 00000000
/* 02724 80BA51C4 000E4A00 */  sll     $t1, $t6,  8               
/* 02728 80BA51C8 030A5825 */  or      $t3, $t8, $t2              ## $t3 = FB000000
/* 0272C 80BA51CC 01697825 */  or      $t7, $t3, $t1              ## $t7 = FB000000
/* 02730 80BA51D0 3C010001 */  lui     $at, 0x0001                ## $at = 00010000
/* 02734 80BA51D4 AC6F0004 */  sw      $t7, 0x0004($v1)           ## 00000004
/* 02738 80BA51D8 34211DA0 */  ori     $at, $at, 0x1DA0           ## $at = 00011DA0
/* 0273C 80BA51DC 02212021 */  addu    $a0, $s1, $at              
/* 02740 80BA51E0 0C03424C */  jal     Matrix_Mult              
/* 02744 80BA51E4 AFA80058 */  sw      $t0, 0x0058($sp)           
/* 02748 80BA51E8 8FA80058 */  lw      $t0, 0x0058($sp)           
/* 0274C 80BA51EC 3C18DA38 */  lui     $t8, 0xDA38                ## $t8 = DA380000
/* 02750 80BA51F0 37180003 */  ori     $t8, $t8, 0x0003           ## $t8 = DA380003
/* 02754 80BA51F4 8D0202D0 */  lw      $v0, 0x02D0($t0)           ## 000002D0
/* 02758 80BA51F8 3C0580BA */  lui     $a1, %hi(D_80BA5B4C)       ## $a1 = 80BA0000
/* 0275C 80BA51FC 24A55B4C */  addiu   $a1, $a1, %lo(D_80BA5B4C)  ## $a1 = 80BA5B4C
/* 02760 80BA5200 24590008 */  addiu   $t9, $v0, 0x0008           ## $t9 = 00000008
/* 02764 80BA5204 AD1902D0 */  sw      $t9, 0x02D0($t0)           ## 000002D0
/* 02768 80BA5208 AC580000 */  sw      $t8, 0x0000($v0)           ## 00000000
/* 0276C 80BA520C 8E240000 */  lw      $a0, 0x0000($s1)           ## 00000000
/* 02770 80BA5210 24060588 */  addiu   $a2, $zero, 0x0588         ## $a2 = 00000588
/* 02774 80BA5214 AFA80058 */  sw      $t0, 0x0058($sp)           
/* 02778 80BA5218 0C0346A2 */  jal     Matrix_NewMtx              
/* 0277C 80BA521C AFA20038 */  sw      $v0, 0x0038($sp)           
/* 02780 80BA5220 8FA30038 */  lw      $v1, 0x0038($sp)           
/* 02784 80BA5224 8FA80058 */  lw      $t0, 0x0058($sp)           
/* 02788 80BA5228 3C0CDB06 */  lui     $t4, 0xDB06                ## $t4 = DB060000
/* 0278C 80BA522C AC620004 */  sw      $v0, 0x0004($v1)           ## 00000004
/* 02790 80BA5230 8D0202D0 */  lw      $v0, 0x02D0($t0)           ## 000002D0
/* 02794 80BA5234 358C0020 */  ori     $t4, $t4, 0x0020           ## $t4 = DB060020
/* 02798 80BA5238 3C0480BA */  lui     $a0, %hi(D_80BA5900)       ## $a0 = 80BA0000
/* 0279C 80BA523C 244A0008 */  addiu   $t2, $v0, 0x0008           ## $t2 = 00000008
/* 027A0 80BA5240 AD0A02D0 */  sw      $t2, 0x02D0($t0)           ## 000002D0
/* 027A4 80BA5244 AC4C0000 */  sw      $t4, 0x0000($v0)           ## 00000000
/* 027A8 80BA5248 960D019C */  lhu     $t5, 0x019C($s0)           ## 0000019C
/* 027AC 80BA524C 3C188016 */  lui     $t8, %hi(gSegments)
/* 027B0 80BA5250 3C0100FF */  lui     $at, 0x00FF                ## $at = 00FF0000
/* 027B4 80BA5254 000D7080 */  sll     $t6, $t5,  2               
/* 027B8 80BA5258 008E2021 */  addu    $a0, $a0, $t6              
/* 027BC 80BA525C 8C845900 */  lw      $a0, %lo(D_80BA5900)($a0)  
/* 027C0 80BA5260 3421FFFF */  ori     $at, $at, 0xFFFF           ## $at = 00FFFFFF
/* 027C4 80BA5264 00044900 */  sll     $t1, $a0,  4               
/* 027C8 80BA5268 00097F02 */  srl     $t7, $t1, 28               
/* 027CC 80BA526C 000FC880 */  sll     $t9, $t7,  2               
/* 027D0 80BA5270 0319C021 */  addu    $t8, $t8, $t9              
/* 027D4 80BA5274 8F186FA8 */  lw      $t8, %lo(gSegments)($t8)
/* 027D8 80BA5278 00815824 */  and     $t3, $a0, $at              
/* 027DC 80BA527C 3C018000 */  lui     $at, 0x8000                ## $at = 80000000
/* 027E0 80BA5280 01785021 */  addu    $t2, $t3, $t8              
/* 027E4 80BA5284 01416021 */  addu    $t4, $t2, $at              
/* 027E8 80BA5288 AC4C0004 */  sw      $t4, 0x0004($v0)           ## 00000004
/* 027EC 80BA528C 8D0202D0 */  lw      $v0, 0x02D0($t0)           ## 000002D0
/* 027F0 80BA5290 3C04E700 */  lui     $a0, 0xE700                ## $a0 = E7000000
/* 027F4 80BA5294 3C0F0601 */  lui     $t7, %hi(D_06009620)                ## $t7 = 06010000
/* 027F8 80BA5298 244D0008 */  addiu   $t5, $v0, 0x0008           ## $t5 = 00000008
/* 027FC 80BA529C AD0D02D0 */  sw      $t5, 0x02D0($t0)           ## 000002D0
/* 02800 80BA52A0 AC400004 */  sw      $zero, 0x0004($v0)         ## 00000004
/* 02804 80BA52A4 AC440000 */  sw      $a0, 0x0000($v0)           ## 00000000
/* 02808 80BA52A8 8D0202D0 */  lw      $v0, 0x02D0($t0)           ## 000002D0
/* 0280C 80BA52AC 25EF9620 */  addiu   $t7, $t7, %lo(D_06009620)           ## $t7 = 06009620
/* 02810 80BA52B0 3C09DE00 */  lui     $t1, 0xDE00                ## $t1 = DE000000
/* 02814 80BA52B4 244E0008 */  addiu   $t6, $v0, 0x0008           ## $t6 = 00000008
/* 02818 80BA52B8 AD0E02D0 */  sw      $t6, 0x02D0($t0)           ## 000002D0
/* 0281C 80BA52BC AC4F0004 */  sw      $t7, 0x0004($v0)           ## 00000004
/* 02820 80BA52C0 AC490000 */  sw      $t1, 0x0000($v0)           ## 00000000
/* 02824 80BA52C4 8D0202D0 */  lw      $v0, 0x02D0($t0)           ## 000002D0
/* 02828 80BA52C8 24590008 */  addiu   $t9, $v0, 0x0008           ## $t9 = 00000008
/* 0282C 80BA52CC AD1902D0 */  sw      $t9, 0x02D0($t0)           ## 000002D0
/* 02830 80BA52D0 AC400004 */  sw      $zero, 0x0004($v0)         ## 00000004
/* 02834 80BA52D4 AC440000 */  sw      $a0, 0x0000($v0)           ## 00000000
.L80BA52D8:
/* 02838 80BA52D8 3C0680BA */  lui     $a2, %hi(D_80BA5B64)       ## $a2 = 80BA0000
/* 0283C 80BA52DC 24C65B64 */  addiu   $a2, $a2, %lo(D_80BA5B64)  ## $a2 = 80BA5B64
/* 02840 80BA52E0 27A40048 */  addiu   $a0, $sp, 0x0048           ## $a0 = FFFFFFC8
/* 02844 80BA52E4 8E250000 */  lw      $a1, 0x0000($s1)           ## 00000000
/* 02848 80BA52E8 0C031AD5 */  jal     Graph_CloseDisps              
/* 0284C 80BA52EC 24070598 */  addiu   $a3, $zero, 0x0598         ## $a3 = 00000598
/* 02850 80BA52F0 8FBF001C */  lw      $ra, 0x001C($sp)           
/* 02854 80BA52F4 8FB00014 */  lw      $s0, 0x0014($sp)           
/* 02858 80BA52F8 8FB10018 */  lw      $s1, 0x0018($sp)           
/* 0285C 80BA52FC 03E00008 */  jr      $ra                        
/* 02860 80BA5300 27BD0080 */  addiu   $sp, $sp, 0x0080           ## $sp = 00000000
