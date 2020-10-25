.rdata
glabel D_80B10438
    .asciz "\x1b[32m☆☆☆☆☆ ルピーでエラー原 ☆☆☆☆ \n\x1b[m"
    .balign 4

.late_rodata
glabel jtbl_80B10674
.word L80B0FBDC
.word L80B0FC10
.word L80B0FC64
.word L80B0FC98
.word L80B0FCEC
.word L80B0FD40
.word 0x00000000

.text
glabel func_80B0FABC
/* 0040C 80B0FABC 27BDFF70 */  addiu   $sp, $sp, 0xFF70           ## $sp = FFFFFF70
/* 00410 80B0FAC0 3C0E80B1 */  lui     $t6, %hi(D_80B103C8)       ## $t6 = 80B10000
/* 00414 80B0FAC4 AFBF005C */  sw      $ra, 0x005C($sp)           
/* 00418 80B0FAC8 AFBE0058 */  sw      $s8, 0x0058($sp)           
/* 0041C 80B0FACC AFB70054 */  sw      $s7, 0x0054($sp)           
/* 00420 80B0FAD0 AFB60050 */  sw      $s6, 0x0050($sp)           
/* 00424 80B0FAD4 AFB5004C */  sw      $s5, 0x004C($sp)           
/* 00428 80B0FAD8 AFB40048 */  sw      $s4, 0x0048($sp)           
/* 0042C 80B0FADC AFB30044 */  sw      $s3, 0x0044($sp)           
/* 00430 80B0FAE0 AFB20040 */  sw      $s2, 0x0040($sp)           
/* 00434 80B0FAE4 AFB1003C */  sw      $s1, 0x003C($sp)           
/* 00438 80B0FAE8 AFB00038 */  sw      $s0, 0x0038($sp)           
/* 0043C 80B0FAEC 25CE03C8 */  addiu   $t6, $t6, %lo(D_80B103C8)  ## $t6 = 80B103C8
/* 00440 80B0FAF0 8DD80000 */  lw      $t8, 0x0000($t6)           ## 80B103C8
/* 00444 80B0FAF4 27B60080 */  addiu   $s6, $sp, 0x0080           ## $s6 = FFFFFFF0
/* 00448 80B0FAF8 8CA21C44 */  lw      $v0, 0x1C44($a1)           ## 00001C44
/* 0044C 80B0FAFC AED80000 */  sw      $t8, 0x0000($s6)           ## FFFFFFF0
/* 00450 80B0FB00 8DCF0004 */  lw      $t7, 0x0004($t6)           ## 80B103CC
/* 00454 80B0FB04 3C190001 */  lui     $t9, 0x0001                ## $t9 = 00010000
/* 00458 80B0FB08 0325C821 */  addu    $t9, $t9, $a1              
/* 0045C 80B0FB0C AECF0004 */  sw      $t7, 0x0004($s6)           ## FFFFFFF4
/* 00460 80B0FB10 8DD80008 */  lw      $t8, 0x0008($t6)           ## 80B103D0
/* 00464 80B0FB14 2401FFFF */  addiu   $at, $zero, 0xFFFF         ## $at = FFFFFFFF
/* 00468 80B0FB18 0080B825 */  or      $s7, $a0, $zero            ## $s7 = 00000000
/* 0046C 80B0FB1C AED80008 */  sw      $t8, 0x0008($s6)           ## FFFFFFF8
/* 00470 80B0FB20 83391E5C */  lb      $t9, 0x1E5C($t9)           ## 00011E5C
/* 00474 80B0FB24 00A03025 */  or      $a2, $a1, $zero            ## $a2 = 00000000
/* 00478 80B0FB28 00008825 */  or      $s1, $zero, $zero          ## $s1 = 00000000
/* 0047C 80B0FB2C 17210009 */  bne     $t9, $at, .L80B0FB54       
/* 00480 80B0FB30 0000A825 */  or      $s5, $zero, $zero          ## $s5 = 00000000
/* 00484 80B0FB34 2408000A */  addiu   $t0, $zero, 0x000A         ## $t0 = 0000000A
/* 00488 80B0FB38 3C0980B1 */  lui     $t1, %hi(func_80B0FFE8)    ## $t1 = 80B10000
/* 0048C 80B0FB3C 241E0002 */  addiu   $s8, $zero, 0x0002         ## $s8 = 00000002
/* 00490 80B0FB40 A4480110 */  sh      $t0, 0x0110($v0)           ## 00000110
/* 00494 80B0FB44 2529FFE8 */  addiu   $t1, $t1, %lo(func_80B0FFE8) ## $t1 = 80B0FFE8
/* 00498 80B0FB48 A49E0154 */  sh      $s8, 0x0154($a0)           ## 00000154
/* 0049C 80B0FB4C 100000F1 */  beq     $zero, $zero, .L80B0FF14   
/* 004A0 80B0FB50 AC89014C */  sw      $t1, 0x014C($a0)           ## 0000014C
.L80B0FB54:
/* 004A4 80B0FB54 86EA0150 */  lh      $t2, 0x0150($s7)           ## 00000150
/* 004A8 80B0FB58 02E0A025 */  or      $s4, $s7, $zero            ## $s4 = 00000000
/* 004AC 80B0FB5C 26F2016C */  addiu   $s2, $s7, 0x016C           ## $s2 = 0000016C
/* 004B0 80B0FB60 154000EC */  bne     $t2, $zero, .L80B0FF14     
/* 004B4 80B0FB64 26F30184 */  addiu   $s3, $s7, 0x0184           ## $s3 = 00000184
/* 004B8 80B0FB68 02E08025 */  or      $s0, $s7, $zero            ## $s0 = 00000000
/* 004BC 80B0FB6C AFA60094 */  sw      $a2, 0x0094($sp)           
.L80B0FB70:
/* 004C0 80B0FB70 02402025 */  or      $a0, $s2, $zero            ## $a0 = 0000016C
/* 004C4 80B0FB74 0C01DF90 */  jal     Math_Vec3f_Copy
              ## Vec3f_Copy
/* 004C8 80B0FB78 02C02825 */  or      $a1, $s6, $zero            ## $a1 = FFFFFFF0
/* 004CC 80B0FB7C 02602025 */  or      $a0, $s3, $zero            ## $a0 = 00000184
/* 004D0 80B0FB80 0C01DF90 */  jal     Math_Vec3f_Copy
              ## Vec3f_Copy
/* 004D4 80B0FB84 02C02825 */  or      $a1, $s6, $zero            ## $a1 = FFFFFFF0
/* 004D8 80B0FB88 2631000C */  addiu   $s1, $s1, 0x000C           ## $s1 = 0000000C
/* 004DC 80B0FB8C 2A210018 */  slti    $at, $s1, 0x0018           
/* 004E0 80B0FB90 2652000C */  addiu   $s2, $s2, 0x000C           ## $s2 = 00000178
/* 004E4 80B0FB94 2673000C */  addiu   $s3, $s3, 0x000C           ## $s3 = 00000190
/* 004E8 80B0FB98 26100004 */  addiu   $s0, $s0, 0x0004           ## $s0 = 00000004
/* 004EC 80B0FB9C 1420FFF4 */  bne     $at, $zero, .L80B0FB70     
/* 004F0 80B0FBA0 AE0001C0 */  sw      $zero, 0x01C0($s0)         ## 000001C4
/* 004F4 80B0FBA4 86F10158 */  lh      $s1, 0x0158($s7)           ## 00000158
/* 004F8 80B0FBA8 241E0002 */  addiu   $s8, $zero, 0x0002         ## $s8 = 00000002
/* 004FC 80B0FBAC A6FE016A */  sh      $s8, 0x016A($s7)           ## 0000016A
/* 00500 80B0FBB0 2631FFFF */  addiu   $s1, $s1, 0xFFFF           ## $s1 = 0000000B
/* 00504 80B0FBB4 2E210006 */  sltiu   $at, $s1, 0x0006           
/* 00508 80B0FBB8 AEE001D4 */  sw      $zero, 0x01D4($s7)         ## 000001D4
/* 0050C 80B0FBBC 10200074 */  beq     $at, $zero, .L80B0FD90     
/* 00510 80B0FBC0 AEE001D0 */  sw      $zero, 0x01D0($s7)         ## 000001D0
/* 00514 80B0FBC4 00115880 */  sll     $t3, $s1,  2               
/* 00518 80B0FBC8 3C0180B1 */  lui     $at, %hi(jtbl_80B10674)       ## $at = 80B10000
/* 0051C 80B0FBCC 002B0821 */  addu    $at, $at, $t3              
/* 00520 80B0FBD0 8C2B0674 */  lw      $t3, %lo(jtbl_80B10674)($at)  
/* 00524 80B0FBD4 01600008 */  jr      $t3                        
/* 00528 80B0FBD8 00000000 */  nop
glabel L80B0FBDC
/* 0052C 80B0FBDC 3C0580B1 */  lui     $a1, %hi(D_80B10240)       ## $a1 = 80B10000
/* 00530 80B0FBE0 24A50240 */  addiu   $a1, $a1, %lo(D_80B10240)  ## $a1 = 80B10240
/* 00534 80B0FBE4 0C01DF90 */  jal     Math_Vec3f_Copy
              ## Vec3f_Copy
/* 00538 80B0FBE8 26E4016C */  addiu   $a0, $s7, 0x016C           ## $a0 = 0000016C
/* 0053C 80B0FBEC 3C0580B1 */  lui     $a1, %hi(D_80B102B8)       ## $a1 = 80B10000
/* 00540 80B0FBF0 24A502B8 */  addiu   $a1, $a1, %lo(D_80B102B8)  ## $a1 = 80B102B8
/* 00544 80B0FBF4 0C01DF90 */  jal     Math_Vec3f_Copy
              ## Vec3f_Copy
/* 00548 80B0FBF8 26E40184 */  addiu   $a0, $s7, 0x0184           ## $a0 = 00000184
/* 0054C 80B0FBFC 8EEC019C */  lw      $t4, 0x019C($s7)           ## 0000019C
/* 00550 80B0FC00 24160001 */  addiu   $s6, $zero, 0x0001         ## $s6 = 00000001
/* 00554 80B0FC04 A6F6016A */  sh      $s6, 0x016A($s7)           ## 0000016A
/* 00558 80B0FC08 10000061 */  beq     $zero, $zero, .L80B0FD90   
/* 0055C 80B0FC0C AEEC01D0 */  sw      $t4, 0x01D0($s7)           ## 000001D0
glabel L80B0FC10
/* 00560 80B0FC10 3C0580B1 */  lui     $a1, %hi(D_80B1024C)       ## $a1 = 80B10000
/* 00564 80B0FC14 24A5024C */  addiu   $a1, $a1, %lo(D_80B1024C)  ## $a1 = 80B1024C
/* 00568 80B0FC18 0C01DF90 */  jal     Math_Vec3f_Copy
              ## Vec3f_Copy
/* 0056C 80B0FC1C 26E4016C */  addiu   $a0, $s7, 0x016C           ## $a0 = 0000016C
/* 00570 80B0FC20 3C0580B1 */  lui     $a1, %hi(D_80B10258)       ## $a1 = 80B10000
/* 00574 80B0FC24 24A50258 */  addiu   $a1, $a1, %lo(D_80B10258)  ## $a1 = 80B10258
/* 00578 80B0FC28 0C01DF90 */  jal     Math_Vec3f_Copy
              ## Vec3f_Copy
/* 0057C 80B0FC2C 26E40178 */  addiu   $a0, $s7, 0x0178           ## $a0 = 00000178
/* 00580 80B0FC30 3C0580B1 */  lui     $a1, %hi(D_80B102C4)       ## $a1 = 80B10000
/* 00584 80B0FC34 24A502C4 */  addiu   $a1, $a1, %lo(D_80B102C4)  ## $a1 = 80B102C4
/* 00588 80B0FC38 0C01DF90 */  jal     Math_Vec3f_Copy
              ## Vec3f_Copy
/* 0058C 80B0FC3C 26E40184 */  addiu   $a0, $s7, 0x0184           ## $a0 = 00000184
/* 00590 80B0FC40 3C0580B1 */  lui     $a1, %hi(D_80B102D0)       ## $a1 = 80B10000
/* 00594 80B0FC44 24A502D0 */  addiu   $a1, $a1, %lo(D_80B102D0)  ## $a1 = 80B102D0
/* 00598 80B0FC48 0C01DF90 */  jal     Math_Vec3f_Copy
              ## Vec3f_Copy
/* 0059C 80B0FC4C 26E40190 */  addiu   $a0, $s7, 0x0190           ## $a0 = 00000190
/* 005A0 80B0FC50 8EED01A0 */  lw      $t5, 0x01A0($s7)           ## 000001A0
/* 005A4 80B0FC54 8EEE01A4 */  lw      $t6, 0x01A4($s7)           ## 000001A4
/* 005A8 80B0FC58 AEED01D0 */  sw      $t5, 0x01D0($s7)           ## 000001D0
/* 005AC 80B0FC5C 1000004C */  beq     $zero, $zero, .L80B0FD90   
/* 005B0 80B0FC60 AEEE01D4 */  sw      $t6, 0x01D4($s7)           ## 000001D4
glabel L80B0FC64
/* 005B4 80B0FC64 3C0580B1 */  lui     $a1, %hi(D_80B10264)       ## $a1 = 80B10000
/* 005B8 80B0FC68 24A50264 */  addiu   $a1, $a1, %lo(D_80B10264)  ## $a1 = 80B10264
/* 005BC 80B0FC6C 0C01DF90 */  jal     Math_Vec3f_Copy
              ## Vec3f_Copy
/* 005C0 80B0FC70 26E4016C */  addiu   $a0, $s7, 0x016C           ## $a0 = 0000016C
/* 005C4 80B0FC74 3C0580B1 */  lui     $a1, %hi(D_80B102DC)       ## $a1 = 80B10000
/* 005C8 80B0FC78 24A502DC */  addiu   $a1, $a1, %lo(D_80B102DC)  ## $a1 = 80B102DC
/* 005CC 80B0FC7C 0C01DF90 */  jal     Math_Vec3f_Copy
              ## Vec3f_Copy
/* 005D0 80B0FC80 26E40184 */  addiu   $a0, $s7, 0x0184           ## $a0 = 00000184
/* 005D4 80B0FC84 8EEF01A8 */  lw      $t7, 0x01A8($s7)           ## 000001A8
/* 005D8 80B0FC88 24160001 */  addiu   $s6, $zero, 0x0001         ## $s6 = 00000001
/* 005DC 80B0FC8C A6F6016A */  sh      $s6, 0x016A($s7)           ## 0000016A
/* 005E0 80B0FC90 1000003F */  beq     $zero, $zero, .L80B0FD90   
/* 005E4 80B0FC94 AEEF01D0 */  sw      $t7, 0x01D0($s7)           ## 000001D0
glabel L80B0FC98
/* 005E8 80B0FC98 3C0580B1 */  lui     $a1, %hi(D_80B10270)       ## $a1 = 80B10000
/* 005EC 80B0FC9C 24A50270 */  addiu   $a1, $a1, %lo(D_80B10270)  ## $a1 = 80B10270
/* 005F0 80B0FCA0 0C01DF90 */  jal     Math_Vec3f_Copy
              ## Vec3f_Copy
/* 005F4 80B0FCA4 26E4016C */  addiu   $a0, $s7, 0x016C           ## $a0 = 0000016C
/* 005F8 80B0FCA8 3C0580B1 */  lui     $a1, %hi(D_80B1027C)       ## $a1 = 80B10000
/* 005FC 80B0FCAC 24A5027C */  addiu   $a1, $a1, %lo(D_80B1027C)  ## $a1 = 80B1027C
/* 00600 80B0FCB0 0C01DF90 */  jal     Math_Vec3f_Copy
              ## Vec3f_Copy
/* 00604 80B0FCB4 26E40178 */  addiu   $a0, $s7, 0x0178           ## $a0 = 00000178
/* 00608 80B0FCB8 3C0580B1 */  lui     $a1, %hi(D_80B102E8)       ## $a1 = 80B10000
/* 0060C 80B0FCBC 24A502E8 */  addiu   $a1, $a1, %lo(D_80B102E8)  ## $a1 = 80B102E8
/* 00610 80B0FCC0 0C01DF90 */  jal     Math_Vec3f_Copy
              ## Vec3f_Copy
/* 00614 80B0FCC4 26E40184 */  addiu   $a0, $s7, 0x0184           ## $a0 = 00000184
/* 00618 80B0FCC8 3C0580B1 */  lui     $a1, %hi(D_80B102F4)       ## $a1 = 80B10000
/* 0061C 80B0FCCC 24A502F4 */  addiu   $a1, $a1, %lo(D_80B102F4)  ## $a1 = 80B102F4
/* 00620 80B0FCD0 0C01DF90 */  jal     Math_Vec3f_Copy
              ## Vec3f_Copy
/* 00624 80B0FCD4 26E40190 */  addiu   $a0, $s7, 0x0190           ## $a0 = 00000190
/* 00628 80B0FCD8 8EF801AC */  lw      $t8, 0x01AC($s7)           ## 000001AC
/* 0062C 80B0FCDC 8EF901B0 */  lw      $t9, 0x01B0($s7)           ## 000001B0
/* 00630 80B0FCE0 AEF801D0 */  sw      $t8, 0x01D0($s7)           ## 000001D0
/* 00634 80B0FCE4 1000002A */  beq     $zero, $zero, .L80B0FD90   
/* 00638 80B0FCE8 AEF901D4 */  sw      $t9, 0x01D4($s7)           ## 000001D4
glabel L80B0FCEC
/* 0063C 80B0FCEC 3C0580B1 */  lui     $a1, %hi(D_80B10288)       ## $a1 = 80B10000
/* 00640 80B0FCF0 24A50288 */  addiu   $a1, $a1, %lo(D_80B10288)  ## $a1 = 80B10288
/* 00644 80B0FCF4 0C01DF90 */  jal     Math_Vec3f_Copy
              ## Vec3f_Copy
/* 00648 80B0FCF8 26E4016C */  addiu   $a0, $s7, 0x016C           ## $a0 = 0000016C
/* 0064C 80B0FCFC 3C0580B1 */  lui     $a1, %hi(D_80B10294)       ## $a1 = 80B10000
/* 00650 80B0FD00 24A50294 */  addiu   $a1, $a1, %lo(D_80B10294)  ## $a1 = 80B10294
/* 00654 80B0FD04 0C01DF90 */  jal     Math_Vec3f_Copy
              ## Vec3f_Copy
/* 00658 80B0FD08 26E40178 */  addiu   $a0, $s7, 0x0178           ## $a0 = 00000178
/* 0065C 80B0FD0C 3C0580B1 */  lui     $a1, %hi(D_80B10300)       ## $a1 = 80B10000
/* 00660 80B0FD10 24A50300 */  addiu   $a1, $a1, %lo(D_80B10300)  ## $a1 = 80B10300
/* 00664 80B0FD14 0C01DF90 */  jal     Math_Vec3f_Copy
              ## Vec3f_Copy
/* 00668 80B0FD18 26E40184 */  addiu   $a0, $s7, 0x0184           ## $a0 = 00000184
/* 0066C 80B0FD1C 3C0580B1 */  lui     $a1, %hi(D_80B1030C)       ## $a1 = 80B10000
/* 00670 80B0FD20 24A5030C */  addiu   $a1, $a1, %lo(D_80B1030C)  ## $a1 = 80B1030C
/* 00674 80B0FD24 0C01DF90 */  jal     Math_Vec3f_Copy
              ## Vec3f_Copy
/* 00678 80B0FD28 26E40190 */  addiu   $a0, $s7, 0x0190           ## $a0 = 00000190
/* 0067C 80B0FD2C 8EE801B4 */  lw      $t0, 0x01B4($s7)           ## 000001B4
/* 00680 80B0FD30 8EE901B8 */  lw      $t1, 0x01B8($s7)           ## 000001B8
/* 00684 80B0FD34 AEE801D0 */  sw      $t0, 0x01D0($s7)           ## 000001D0
/* 00688 80B0FD38 10000015 */  beq     $zero, $zero, .L80B0FD90   
/* 0068C 80B0FD3C AEE901D4 */  sw      $t1, 0x01D4($s7)           ## 000001D4
glabel L80B0FD40
/* 00690 80B0FD40 3C0580B1 */  lui     $a1, %hi(D_80B102A0)       ## $a1 = 80B10000
/* 00694 80B0FD44 24A502A0 */  addiu   $a1, $a1, %lo(D_80B102A0)  ## $a1 = 80B102A0
/* 00698 80B0FD48 0C01DF90 */  jal     Math_Vec3f_Copy
              ## Vec3f_Copy
/* 0069C 80B0FD4C 26E4016C */  addiu   $a0, $s7, 0x016C           ## $a0 = 0000016C
/* 006A0 80B0FD50 3C0580B1 */  lui     $a1, %hi(D_80B102AC)       ## $a1 = 80B10000
/* 006A4 80B0FD54 24A502AC */  addiu   $a1, $a1, %lo(D_80B102AC)  ## $a1 = 80B102AC
/* 006A8 80B0FD58 0C01DF90 */  jal     Math_Vec3f_Copy
              ## Vec3f_Copy
/* 006AC 80B0FD5C 26E40178 */  addiu   $a0, $s7, 0x0178           ## $a0 = 00000178
/* 006B0 80B0FD60 3C0580B1 */  lui     $a1, %hi(D_80B10318)       ## $a1 = 80B10000
/* 006B4 80B0FD64 24A50318 */  addiu   $a1, $a1, %lo(D_80B10318)  ## $a1 = 80B10318
/* 006B8 80B0FD68 0C01DF90 */  jal     Math_Vec3f_Copy
              ## Vec3f_Copy
/* 006BC 80B0FD6C 26E40184 */  addiu   $a0, $s7, 0x0184           ## $a0 = 00000184
/* 006C0 80B0FD70 3C0580B1 */  lui     $a1, %hi(D_80B10324)       ## $a1 = 80B10000
/* 006C4 80B0FD74 24A50324 */  addiu   $a1, $a1, %lo(D_80B10324)  ## $a1 = 80B10324
/* 006C8 80B0FD78 0C01DF90 */  jal     Math_Vec3f_Copy
              ## Vec3f_Copy
/* 006CC 80B0FD7C 26E40190 */  addiu   $a0, $s7, 0x0190           ## $a0 = 00000190
/* 006D0 80B0FD80 8EEA01BC */  lw      $t2, 0x01BC($s7)           ## 000001BC
/* 006D4 80B0FD84 8EEB01C0 */  lw      $t3, 0x01C0($s7)           ## 000001C0
/* 006D8 80B0FD88 AEEA01D0 */  sw      $t2, 0x01D0($s7)           ## 000001D0
/* 006DC 80B0FD8C AEEB01D4 */  sw      $t3, 0x01D4($s7)           ## 000001D4
.L80B0FD90:
/* 006E0 80B0FD90 86EC016A */  lh      $t4, 0x016A($s7)           ## 0000016A
/* 006E4 80B0FD94 24160001 */  addiu   $s6, $zero, 0x0001         ## $s6 = 00000001
/* 006E8 80B0FD98 0000A825 */  or      $s5, $zero, $zero          ## $s5 = 00000000
/* 006EC 80B0FD9C 19800057 */  blez    $t4, .L80B0FEFC            
/* 006F0 80B0FDA0 8FA60094 */  lw      $a2, 0x0094($sp)           
/* 006F4 80B0FDA4 24C41C24 */  addiu   $a0, $a2, 0x1C24           ## $a0 = 00001C24
/* 006F8 80B0FDA8 AFA40070 */  sw      $a0, 0x0070($sp)           
/* 006FC 80B0FDAC 02E0A025 */  or      $s4, $s7, $zero            ## $s4 = 00000000
/* 00700 80B0FDB0 02E08025 */  or      $s0, $s7, $zero            ## $s0 = 00000000
/* 00704 80B0FDB4 24130005 */  addiu   $s3, $zero, 0x0005         ## $s3 = 00000005
/* 00708 80B0FDB8 24120004 */  addiu   $s2, $zero, 0x0004         ## $s2 = 00000004
.L80B0FDBC:
/* 0070C 80B0FDBC C684016C */  lwc1    $f4, 0x016C($s4)           ## 0000016C
/* 00710 80B0FDC0 240D303F */  addiu   $t5, $zero, 0x303F         ## $t5 = 0000303F
/* 00714 80B0FDC4 8FA40070 */  lw      $a0, 0x0070($sp)           
/* 00718 80B0FDC8 E7A40010 */  swc1    $f4, 0x0010($sp)           
/* 0071C 80B0FDCC C6860170 */  lwc1    $f6, 0x0170($s4)           ## 00000170
/* 00720 80B0FDD0 8FA60094 */  lw      $a2, 0x0094($sp)           
/* 00724 80B0FDD4 02E02825 */  or      $a1, $s7, $zero            ## $a1 = 00000000
/* 00728 80B0FDD8 E7A60014 */  swc1    $f6, 0x0014($sp)           
/* 0072C 80B0FDDC C6880174 */  lwc1    $f8, 0x0174($s4)           ## 00000174
/* 00730 80B0FDE0 AFAD0028 */  sw      $t5, 0x0028($sp)           
/* 00734 80B0FDE4 AFA00024 */  sw      $zero, 0x0024($sp)         
/* 00738 80B0FDE8 AFA00020 */  sw      $zero, 0x0020($sp)         
/* 0073C 80B0FDEC AFA0001C */  sw      $zero, 0x001C($sp)         
/* 00740 80B0FDF0 24070117 */  addiu   $a3, $zero, 0x0117         ## $a3 = 00000117
/* 00744 80B0FDF4 0C00C916 */  jal     Actor_SpawnAsChild
              
/* 00748 80B0FDF8 E7A80018 */  swc1    $f8, 0x0018($sp)           
/* 0074C 80B0FDFC 14400008 */  bne     $v0, $zero, .L80B0FE20     
/* 00750 80B0FE00 AE0201C4 */  sw      $v0, 0x01C4($s0)           ## 000001C4
/* 00754 80B0FE04 3C0480B1 */  lui     $a0, %hi(D_80B10438)       ## $a0 = 80B10000
/* 00758 80B0FE08 0C00084C */  jal     osSyncPrintf
              
/* 0075C 80B0FE0C 24840438 */  addiu   $a0, $a0, %lo(D_80B10438)  ## $a0 = 80B10438
/* 00760 80B0FE10 0C00B55C */  jal     Actor_Kill
              
/* 00764 80B0FE14 02E02025 */  or      $a0, $s7, $zero            ## $a0 = 00000000
/* 00768 80B0FE18 1000003F */  beq     $zero, $zero, .L80B0FF18   
/* 0076C 80B0FE1C 8FBF005C */  lw      $ra, 0x005C($sp)           
.L80B0FE20:
/* 00770 80B0FE20 8E0E01C4 */  lw      $t6, 0x01C4($s0)           ## 000001C4
/* 00774 80B0FE24 00117840 */  sll     $t7, $s1,  1               
/* 00778 80B0FE28 3C1880B1 */  lui     $t8, %hi(D_80B10330)       ## $t8 = 80B10000
/* 0077C 80B0FE2C A5D50160 */  sh      $s5, 0x0160($t6)           ## 00000160
/* 00780 80B0FE30 030FC021 */  addu    $t8, $t8, $t7              
/* 00784 80B0FE34 87180330 */  lh      $t8, %lo(D_80B10330)($t8)  
/* 00788 80B0FE38 8E1901C4 */  lw      $t9, 0x01C4($s0)           ## 000001C4
/* 0078C 80B0FE3C 26850184 */  addiu   $a1, $s4, 0x0184           ## $a1 = 00000184
/* 00790 80B0FE40 A7380158 */  sh      $t8, 0x0158($t9)           ## 00000158
/* 00794 80B0FE44 8E0401C4 */  lw      $a0, 0x01C4($s0)           ## 000001C4
/* 00798 80B0FE48 0C01DF90 */  jal     Math_Vec3f_Copy
              ## Vec3f_Copy
/* 0079C 80B0FE4C 2484016C */  addiu   $a0, $a0, 0x016C           ## $a0 = 0000016C
/* 007A0 80B0FE50 12360009 */  beq     $s1, $s6, .L80B0FE78       
/* 007A4 80B0FE54 00000000 */  nop
/* 007A8 80B0FE58 123E000D */  beq     $s1, $s8, .L80B0FE90       
/* 007AC 80B0FE5C 3C014170 */  lui     $at, 0x4170                ## $at = 41700000
/* 007B0 80B0FE60 12320015 */  beq     $s1, $s2, .L80B0FEB8       
/* 007B4 80B0FE64 3C01C0A0 */  lui     $at, 0xC0A0                ## $at = C0A00000
/* 007B8 80B0FE68 12330019 */  beq     $s1, $s3, .L80B0FED0       
/* 007BC 80B0FE6C 3C0140E0 */  lui     $at, 0x40E0                ## $at = 40E00000
/* 007C0 80B0FE70 1000001D */  beq     $zero, $zero, .L80B0FEE8   
/* 007C4 80B0FE74 86F9016A */  lh      $t9, 0x016A($s7)           ## 0000016A
.L80B0FE78:
/* 007C8 80B0FE78 56B6001B */  bnel    $s5, $s6, .L80B0FEE8       
/* 007CC 80B0FE7C 86F9016A */  lh      $t9, 0x016A($s7)           ## 0000016A
/* 007D0 80B0FE80 8E0901C4 */  lw      $t1, 0x01C4($s0)           ## 000001C4
/* 007D4 80B0FE84 2408003C */  addiu   $t0, $zero, 0x003C         ## $t0 = 0000003C
/* 007D8 80B0FE88 10000016 */  beq     $zero, $zero, .L80B0FEE4   
/* 007DC 80B0FE8C A5280162 */  sh      $t0, 0x0162($t1)           ## 00000162
.L80B0FE90:
/* 007E0 80B0FE90 44815000 */  mtc1    $at, $f10                  ## $f10 = 7.00
/* 007E4 80B0FE94 8E0A01C4 */  lw      $t2, 0x01C4($s0)           ## 000001C4
/* 007E8 80B0FE98 3C01BF80 */  lui     $at, 0xBF80                ## $at = BF800000
/* 007EC 80B0FE9C 44818000 */  mtc1    $at, $f16                  ## $f16 = -1.00
/* 007F0 80B0FEA0 E54A0060 */  swc1    $f10, 0x0060($t2)          ## 00000060
/* 007F4 80B0FEA4 8E0B01C4 */  lw      $t3, 0x01C4($s0)           ## 000001C4
/* 007F8 80B0FEA8 E570006C */  swc1    $f16, 0x006C($t3)          ## 0000006C
/* 007FC 80B0FEAC 8E0C01C4 */  lw      $t4, 0x01C4($s0)           ## 000001C4
/* 00800 80B0FEB0 1000000C */  beq     $zero, $zero, .L80B0FEE4   
/* 00804 80B0FEB4 A59E0166 */  sh      $s8, 0x0166($t4)           ## 00000166
.L80B0FEB8:
/* 00808 80B0FEB8 44819000 */  mtc1    $at, $f18                  ## $f18 = -1.00
/* 0080C 80B0FEBC 8E0D01C4 */  lw      $t5, 0x01C4($s0)           ## 000001C4
/* 00810 80B0FEC0 E5B2005C */  swc1    $f18, 0x005C($t5)          ## 0000005C
/* 00814 80B0FEC4 8E0E01C4 */  lw      $t6, 0x01C4($s0)           ## 000001C4
/* 00818 80B0FEC8 10000006 */  beq     $zero, $zero, .L80B0FEE4   
/* 0081C 80B0FECC A5D20166 */  sh      $s2, 0x0166($t6)           ## 00000166
.L80B0FED0:
/* 00820 80B0FED0 44812000 */  mtc1    $at, $f4                   ## $f4 = -1.00
/* 00824 80B0FED4 8E0F01C4 */  lw      $t7, 0x01C4($s0)           ## 000001C4
/* 00828 80B0FED8 E5E4005C */  swc1    $f4, 0x005C($t7)           ## 0000005C
/* 0082C 80B0FEDC 8E1801C4 */  lw      $t8, 0x01C4($s0)           ## 000001C4
/* 00830 80B0FEE0 A7130166 */  sh      $s3, 0x0166($t8)           ## 00000166
.L80B0FEE4:
/* 00834 80B0FEE4 86F9016A */  lh      $t9, 0x016A($s7)           ## 0000016A
.L80B0FEE8:
/* 00838 80B0FEE8 26B50001 */  addiu   $s5, $s5, 0x0001           ## $s5 = 00000001
/* 0083C 80B0FEEC 2694000C */  addiu   $s4, $s4, 0x000C           ## $s4 = 0000000C
/* 00840 80B0FEF0 02B9082A */  slt     $at, $s5, $t9              
/* 00844 80B0FEF4 1420FFB1 */  bne     $at, $zero, .L80B0FDBC     
/* 00848 80B0FEF8 26100004 */  addiu   $s0, $s0, 0x0004           ## $s0 = 00000004
.L80B0FEFC:
/* 0084C 80B0FEFC A6E00168 */  sh      $zero, 0x0168($s7)         ## 00000168
/* 00850 80B0FF00 86E80168 */  lh      $t0, 0x0168($s7)           ## 00000168
/* 00854 80B0FF04 3C0980B1 */  lui     $t1, %hi(func_80B0FF44)    ## $t1 = 80B10000
/* 00858 80B0FF08 2529FF44 */  addiu   $t1, $t1, %lo(func_80B0FF44) ## $t1 = 80B0FF44
/* 0085C 80B0FF0C AEE9014C */  sw      $t1, 0x014C($s7)           ## 0000014C
/* 00860 80B0FF10 A6E80166 */  sh      $t0, 0x0166($s7)           ## 00000166
.L80B0FF14:
/* 00864 80B0FF14 8FBF005C */  lw      $ra, 0x005C($sp)           
.L80B0FF18:
/* 00868 80B0FF18 8FB00038 */  lw      $s0, 0x0038($sp)           
/* 0086C 80B0FF1C 8FB1003C */  lw      $s1, 0x003C($sp)           
/* 00870 80B0FF20 8FB20040 */  lw      $s2, 0x0040($sp)           
/* 00874 80B0FF24 8FB30044 */  lw      $s3, 0x0044($sp)           
/* 00878 80B0FF28 8FB40048 */  lw      $s4, 0x0048($sp)           
/* 0087C 80B0FF2C 8FB5004C */  lw      $s5, 0x004C($sp)           
/* 00880 80B0FF30 8FB60050 */  lw      $s6, 0x0050($sp)           
/* 00884 80B0FF34 8FB70054 */  lw      $s7, 0x0054($sp)           
/* 00888 80B0FF38 8FBE0058 */  lw      $s8, 0x0058($sp)           
/* 0088C 80B0FF3C 03E00008 */  jr      $ra                        
/* 00890 80B0FF40 27BD0090 */  addiu   $sp, $sp, 0x0090           ## $sp = 00000000
