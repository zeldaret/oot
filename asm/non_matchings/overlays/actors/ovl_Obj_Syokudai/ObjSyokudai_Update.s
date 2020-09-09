glabel ObjSyokudai_Update
/* 00214 80B9F4C4 27BDFF80 */  addiu   $sp, $sp, 0xFF80           ## $sp = FFFFFF80
/* 00218 80B9F4C8 AFBF0024 */  sw      $ra, 0x0024($sp)           
/* 0021C 80B9F4CC AFB00020 */  sw      $s0, 0x0020($sp)           
/* 00220 80B9F4D0 AFA50084 */  sw      $a1, 0x0084($sp)           
/* 00224 80B9F4D4 8482001C */  lh      $v0, 0x001C($a0)           ## 0000001C
/* 00228 80B9F4D8 2418FFFF */  addiu   $t8, $zero, 0xFFFF         ## $t8 = FFFFFFFF
/* 0022C 80B9F4DC 2401000A */  addiu   $at, $zero, 0x000A         ## $at = 0000000A
/* 00230 80B9F4E0 00024983 */  sra     $t1, $v0,  6               
/* 00234 80B9F4E4 3129000F */  andi    $t1, $t1, 0x000F           ## $t1 = 00000000
/* 00238 80B9F4E8 304E003F */  andi    $t6, $v0, 0x003F           ## $t6 = 00000000
/* 0023C 80B9F4EC 304FF000 */  andi    $t7, $v0, 0xF000           ## $t7 = 00000000
/* 00240 80B9F4F0 00808025 */  or      $s0, $a0, $zero            ## $s0 = 00000000
/* 00244 80B9F4F4 AFAE0070 */  sw      $t6, 0x0070($sp)           
/* 00248 80B9F4F8 AFAF006C */  sw      $t7, 0x006C($sp)           
/* 0024C 80B9F4FC AFB8005C */  sw      $t8, 0x005C($sp)           
/* 00250 80B9F500 A3A0005B */  sb      $zero, 0x005B($sp)         
/* 00254 80B9F504 15210002 */  bne     $t1, $at, .L80B9F510       
/* 00258 80B9F508 AFA90068 */  sw      $t1, 0x0068($sp)           
/* 0025C 80B9F50C 24090018 */  addiu   $t1, $zero, 0x0018         ## $t1 = 00000018
.L80B9F510:
/* 00260 80B9F510 8FA40084 */  lw      $a0, 0x0084($sp)           
/* 00264 80B9F514 8E060024 */  lw      $a2, 0x0024($s0)           ## 00000024
/* 00268 80B9F518 8E07002C */  lw      $a3, 0x002C($s0)           ## 0000002C
/* 0026C 80B9F51C 27AA0060 */  addiu   $t2, $sp, 0x0060           ## $t2 = FFFFFFE0
/* 00270 80B9F520 27AB0064 */  addiu   $t3, $sp, 0x0064           ## $t3 = FFFFFFE4
/* 00274 80B9F524 AFAB0014 */  sw      $t3, 0x0014($sp)           
/* 00278 80B9F528 AFAA0010 */  sw      $t2, 0x0010($sp)           
/* 0027C 80B9F52C AFA90074 */  sw      $t1, 0x0074($sp)           
/* 00280 80B9F530 0C010891 */  jal     func_80042244              
/* 00284 80B9F534 248507C0 */  addiu   $a1, $a0, 0x07C0           ## $a1 = 000007C0
/* 00288 80B9F538 10400018 */  beq     $v0, $zero, .L80B9F59C     
/* 0028C 80B9F53C 8FA90074 */  lw      $t1, 0x0074($sp)           
/* 00290 80B9F540 C7A60060 */  lwc1    $f6, 0x0060($sp)           
/* 00294 80B9F544 C6080028 */  lwc1    $f8, 0x0028($s0)           ## 00000028
/* 00298 80B9F548 3C014250 */  lui     $at, 0x4250                ## $at = 42500000
/* 0029C 80B9F54C 44812000 */  mtc1    $at, $f4                   ## $f4 = 52.00
/* 002A0 80B9F550 46083281 */  sub.s   $f10, $f6, $f8             
/* 002A4 80B9F554 460A203C */  c.lt.s  $f4, $f10                  
/* 002A8 80B9F558 00000000 */  nop
/* 002AC 80B9F55C 45020010 */  bc1fl   .L80B9F5A0                 
/* 002B0 80B9F560 860F001C */  lh      $t7, 0x001C($s0)           ## 0000001C
/* 002B4 80B9F564 A60001E4 */  sh      $zero, 0x01E4($s0)         ## 000001E4
/* 002B8 80B9F568 8FAC006C */  lw      $t4, 0x006C($sp)           
/* 002BC 80B9F56C 24010001 */  addiu   $at, $zero, 0x0001         ## $at = 00000001
/* 002C0 80B9F570 8FA50070 */  lw      $a1, 0x0070($sp)           
/* 002C4 80B9F574 158100E6 */  bne     $t4, $at, .L80B9F910       
/* 002C8 80B9F578 8FA40084 */  lw      $a0, 0x0084($sp)           
/* 002CC 80B9F57C 0C00B2ED */  jal     Flags_UnsetSwitch
              
/* 002D0 80B9F580 AFA90074 */  sw      $t1, 0x0074($sp)           
/* 002D4 80B9F584 8FA90074 */  lw      $t1, 0x0074($sp)           
/* 002D8 80B9F588 240D0001 */  addiu   $t5, $zero, 0x0001         ## $t5 = 00000001
/* 002DC 80B9F58C 512000E1 */  beql    $t1, $zero, .L80B9F914     
/* 002E0 80B9F590 2605014C */  addiu   $a1, $s0, 0x014C           ## $a1 = 0000014C
/* 002E4 80B9F594 100000DE */  beq     $zero, $zero, .L80B9F910   
/* 002E8 80B9F598 A60D01E4 */  sh      $t5, 0x01E4($s0)           ## 000001E4
.L80B9F59C:
/* 002EC 80B9F59C 860F001C */  lh      $t7, 0x001C($s0)           ## 0000001C
.L80B9F5A0:
/* 002F0 80B9F5A0 8FAE0084 */  lw      $t6, 0x0084($sp)           
/* 002F4 80B9F5A4 00003825 */  or      $a3, $zero, $zero          ## $a3 = 00000000
/* 002F8 80B9F5A8 31F80400 */  andi    $t8, $t7, 0x0400           ## $t8 = 00000000
/* 002FC 80B9F5AC 13000003 */  beq     $t8, $zero, .L80B9F5BC     
/* 00300 80B9F5B0 8DC81C44 */  lw      $t0, 0x1C44($t6)           ## 00001C44
/* 00304 80B9F5B4 2419FFFF */  addiu   $t9, $zero, 0xFFFF         ## $t9 = FFFFFFFF
/* 00308 80B9F5B8 A61901E4 */  sh      $t9, 0x01E4($s0)           ## 000001E4
.L80B9F5BC:
/* 0030C 80B9F5BC 11200025 */  beq     $t1, $zero, .L80B9F654     
/* 00310 80B9F5C0 8FA40084 */  lw      $a0, 0x0084($sp)           
/* 00314 80B9F5C4 8FA50070 */  lw      $a1, 0x0070($sp)           
/* 00318 80B9F5C8 AFA7004C */  sw      $a3, 0x004C($sp)           
/* 0031C 80B9F5CC AFA80054 */  sw      $t0, 0x0054($sp)           
/* 00320 80B9F5D0 0C00B2D0 */  jal     Flags_GetSwitch
              
/* 00324 80B9F5D4 AFA90074 */  sw      $t1, 0x0074($sp)           
/* 00328 80B9F5D8 8FA7004C */  lw      $a3, 0x004C($sp)           
/* 0032C 80B9F5DC 8FA80054 */  lw      $t0, 0x0054($sp)           
/* 00330 80B9F5E0 10400017 */  beq     $v0, $zero, .L80B9F640     
/* 00334 80B9F5E4 8FA90074 */  lw      $t1, 0x0074($sp)           
/* 00338 80B9F5E8 860301E4 */  lh      $v1, 0x01E4($s0)           ## 000001E4
/* 0033C 80B9F5EC 240AFFFF */  addiu   $t2, $zero, 0xFFFF         ## $t2 = FFFFFFFF
/* 00340 80B9F5F0 1460000F */  bne     $v1, $zero, .L80B9F630     
/* 00344 80B9F5F4 00000000 */  nop
/* 00348 80B9F5F8 A60A01E4 */  sh      $t2, 0x01E4($s0)           ## 000001E4
/* 0034C 80B9F5FC 8FAB006C */  lw      $t3, 0x006C($sp)           
/* 00350 80B9F600 8FA40084 */  lw      $a0, 0x0084($sp)           
/* 00354 80B9F604 02002825 */  or      $a1, $s0, $zero            ## $a1 = 00000000
/* 00358 80B9F608 55600013 */  bnel    $t3, $zero, .L80B9F658     
/* 0035C 80B9F60C 920F01A9 */  lbu     $t7, 0x01A9($s0)           ## 000001A9
/* 00360 80B9F610 AFA7004C */  sw      $a3, 0x004C($sp)           
/* 00364 80B9F614 AFA80054 */  sw      $t0, 0x0054($sp)           
/* 00368 80B9F618 0C020120 */  jal     func_80080480              
/* 0036C 80B9F61C AFA90074 */  sw      $t1, 0x0074($sp)           
/* 00370 80B9F620 8FA7004C */  lw      $a3, 0x004C($sp)           
/* 00374 80B9F624 8FA80054 */  lw      $t0, 0x0054($sp)           
/* 00378 80B9F628 1000000A */  beq     $zero, $zero, .L80B9F654   
/* 0037C 80B9F62C 8FA90074 */  lw      $t1, 0x0074($sp)           
.L80B9F630:
/* 00380 80B9F630 18600008 */  blez    $v1, .L80B9F654            
/* 00384 80B9F634 240CFFFF */  addiu   $t4, $zero, 0xFFFF         ## $t4 = FFFFFFFF
/* 00388 80B9F638 10000006 */  beq     $zero, $zero, .L80B9F654   
/* 0038C 80B9F63C A60C01E4 */  sh      $t4, 0x01E4($s0)           ## 000001E4
.L80B9F640:
/* 00390 80B9F640 860D01E4 */  lh      $t5, 0x01E4($s0)           ## 000001E4
/* 00394 80B9F644 240E0014 */  addiu   $t6, $zero, 0x0014         ## $t6 = 00000014
/* 00398 80B9F648 05A30003 */  bgezl   $t5, .L80B9F658            
/* 0039C 80B9F64C 920F01A9 */  lbu     $t7, 0x01A9($s0)           ## 000001A9
/* 003A0 80B9F650 A60E01E4 */  sh      $t6, 0x01E4($s0)           ## 000001E4
.L80B9F654:
/* 003A4 80B9F654 920F01A9 */  lbu     $t7, 0x01A9($s0)           ## 000001A9
.L80B9F658:
/* 003A8 80B9F658 31F80002 */  andi    $t8, $t7, 0x0002           ## $t8 = 00000000
/* 003AC 80B9F65C 5300000C */  beql    $t8, $zero, .L80B9F690     
/* 003B0 80B9F660 810B0151 */  lb      $t3, 0x0151($t0)           ## 00000151
/* 003B4 80B9F664 8E1901D4 */  lw      $t9, 0x01D4($s0)           ## 000001D4
/* 003B8 80B9F668 3C010002 */  lui     $at, 0x0002                ## $at = 00020000
/* 003BC 80B9F66C 34210820 */  ori     $at, $at, 0x0820           ## $at = 00020820
/* 003C0 80B9F670 8F220000 */  lw      $v0, 0x0000($t9)           ## 00000000
/* 003C4 80B9F674 00415024 */  and     $t2, $v0, $at              
/* 003C8 80B9F678 11400002 */  beq     $t2, $zero, .L80B9F684     
/* 003CC 80B9F67C 00000000 */  nop
/* 003D0 80B9F680 24070001 */  addiu   $a3, $zero, 0x0001         ## $a3 = 00000001
.L80B9F684:
/* 003D4 80B9F684 10000021 */  beq     $zero, $zero, .L80B9F70C   
/* 003D8 80B9F688 AFA20048 */  sw      $v0, 0x0048($sp)           
/* 003DC 80B9F68C 810B0151 */  lb      $t3, 0x0151($t0)           ## 00000151
.L80B9F690:
/* 003E0 80B9F690 24010006 */  addiu   $at, $zero, 0x0006         ## $at = 00000006
/* 003E4 80B9F694 250408B8 */  addiu   $a0, $t0, 0x08B8           ## $a0 = 000008B8
/* 003E8 80B9F698 1561001C */  bne     $t3, $at, .L80B9F70C       
/* 003EC 80B9F69C 26050024 */  addiu   $a1, $s0, 0x0024           ## $a1 = 00000024
/* 003F0 80B9F6A0 27A6003C */  addiu   $a2, $sp, 0x003C           ## $a2 = FFFFFFBC
/* 003F4 80B9F6A4 AFA7004C */  sw      $a3, 0x004C($sp)           
/* 003F8 80B9F6A8 AFA80054 */  sw      $t0, 0x0054($sp)           
/* 003FC 80B9F6AC 0C01DFB4 */  jal     Math_Vec3f_Diff
              ## Vec3f_Sub
/* 00400 80B9F6B0 AFA90074 */  sw      $t1, 0x0074($sp)           
/* 00404 80B9F6B4 3C014286 */  lui     $at, 0x4286                ## $at = 42860000
/* 00408 80B9F6B8 C7A00040 */  lwc1    $f0, 0x0040($sp)           
/* 0040C 80B9F6BC 44818000 */  mtc1    $at, $f16                  ## $f16 = 67.00
/* 00410 80B9F6C0 C7A2003C */  lwc1    $f2, 0x003C($sp)           
/* 00414 80B9F6C4 C7AC0044 */  lwc1    $f12, 0x0044($sp)          
/* 00418 80B9F6C8 46100001 */  sub.s   $f0, $f0, $f16             
/* 0041C 80B9F6CC 46021482 */  mul.s   $f18, $f2, $f2             
/* 00420 80B9F6D0 3C0143C8 */  lui     $at, 0x43C8                ## $at = 43C80000
/* 00424 80B9F6D4 44818000 */  mtc1    $at, $f16                  ## $f16 = 400.00
/* 00428 80B9F6D8 46000182 */  mul.s   $f6, $f0, $f0              
/* 0042C 80B9F6DC 8FA7004C */  lw      $a3, 0x004C($sp)           
/* 00430 80B9F6E0 8FA80054 */  lw      $t0, 0x0054($sp)           
/* 00434 80B9F6E4 460C6102 */  mul.s   $f4, $f12, $f12            
/* 00438 80B9F6E8 8FA90074 */  lw      $t1, 0x0074($sp)           
/* 0043C 80B9F6EC E7A00040 */  swc1    $f0, 0x0040($sp)           
/* 00440 80B9F6F0 46069200 */  add.s   $f8, $f18, $f6             
/* 00444 80B9F6F4 46044280 */  add.s   $f10, $f8, $f4             
/* 00448 80B9F6F8 4610503C */  c.lt.s  $f10, $f16                 
/* 0044C 80B9F6FC 00000000 */  nop
/* 00450 80B9F700 45000002 */  bc1f    .L80B9F70C                 
/* 00454 80B9F704 00000000 */  nop
/* 00458 80B9F708 2407FFFF */  addiu   $a3, $zero, 0xFFFF         ## $a3 = FFFFFFFF
.L80B9F70C:
/* 0045C 80B9F70C 10E00080 */  beq     $a3, $zero, .L80B9F910     
/* 00460 80B9F710 8FA20048 */  lw      $v0, 0x0048($sp)           
/* 00464 80B9F714 860301E4 */  lh      $v1, 0x01E4($s0)           ## 000001E4
/* 00468 80B9F718 8FAC006C */  lw      $t4, 0x006C($sp)           
/* 0046C 80B9F71C 10600037 */  beq     $v1, $zero, .L80B9F7FC     
/* 00470 80B9F720 00000000 */  nop
/* 00474 80B9F724 04E10017 */  bgez    $a3, .L80B9F784            
/* 00478 80B9F728 304F0020 */  andi    $t7, $v0, 0x0020           ## $t7 = 00000000
/* 0047C 80B9F72C 85020860 */  lh      $v0, 0x0860($t0)           ## 00000860
/* 00480 80B9F730 3C078013 */  lui     $a3, %hi(D_801333E0)
/* 00484 80B9F734 24E733E0 */  addiu   $a3, %lo(D_801333E0)
/* 00488 80B9F738 1440000D */  bne     $v0, $zero, .L80B9F770     
/* 0048C 80B9F73C 284100C8 */  slti    $at, $v0, 0x00C8           
/* 00490 80B9F740 240C00D2 */  addiu   $t4, $zero, 0x00D2         ## $t4 = 000000D2
/* 00494 80B9F744 3C0D8013 */  lui     $t5, %hi(D_801333E8)
/* 00498 80B9F748 A50C0860 */  sh      $t4, 0x0860($t0)           ## 00000860
/* 0049C 80B9F74C 25AD33E8 */  addiu   $t5, %lo(D_801333E8)
/* 004A0 80B9F750 AFAD0014 */  sw      $t5, 0x0014($sp)           
/* 004A4 80B9F754 AFA70010 */  sw      $a3, 0x0010($sp)           
/* 004A8 80B9F758 24042822 */  addiu   $a0, $zero, 0x2822         ## $a0 = 00002822
/* 004AC 80B9F75C 260500E4 */  addiu   $a1, $s0, 0x00E4           ## $a1 = 000000E4
/* 004B0 80B9F760 0C03DCE3 */  jal     Audio_PlaySoundGeneral
              
/* 004B4 80B9F764 24060004 */  addiu   $a2, $zero, 0x0004         ## $a2 = 00000004
/* 004B8 80B9F768 10000014 */  beq     $zero, $zero, .L80B9F7BC   
/* 004BC 80B9F76C 860301E4 */  lh      $v1, 0x01E4($s0)           ## 000001E4
.L80B9F770:
/* 004C0 80B9F770 10200012 */  beq     $at, $zero, .L80B9F7BC     
/* 004C4 80B9F774 240E00C8 */  addiu   $t6, $zero, 0x00C8         ## $t6 = 000000C8
/* 004C8 80B9F778 A50E0860 */  sh      $t6, 0x0860($t0)           ## 00000860
/* 004CC 80B9F77C 1000000F */  beq     $zero, $zero, .L80B9F7BC   
/* 004D0 80B9F780 860301E4 */  lh      $v1, 0x01E4($s0)           ## 000001E4
.L80B9F784:
/* 004D4 80B9F784 11E0000D */  beq     $t7, $zero, .L80B9F7BC     
/* 004D8 80B9F788 00000000 */  nop
/* 004DC 80B9F78C 8E0201A0 */  lw      $v0, 0x01A0($s0)           ## 000001A0
/* 004E0 80B9F790 8C580130 */  lw      $t8, 0x0130($v0)           ## 00000130
/* 004E4 80B9F794 13000009 */  beq     $t8, $zero, .L80B9F7BC     
/* 004E8 80B9F798 00000000 */  nop
/* 004EC 80B9F79C 84590000 */  lh      $t9, 0x0000($v0)           ## 00000000
/* 004F0 80B9F7A0 24010016 */  addiu   $at, $zero, 0x0016         ## $at = 00000016
/* 004F4 80B9F7A4 240A0800 */  addiu   $t2, $zero, 0x0800         ## $t2 = 00000800
/* 004F8 80B9F7A8 17210004 */  bne     $t9, $at, .L80B9F7BC       
/* 004FC 80B9F7AC 00000000 */  nop
/* 00500 80B9F7B0 A440001C */  sh      $zero, 0x001C($v0)         ## 0000001C
/* 00504 80B9F7B4 AC4A01A8 */  sw      $t2, 0x01A8($v0)           ## 000001A8
/* 00508 80B9F7B8 860301E4 */  lh      $v1, 0x01E4($s0)           ## 000001E4
.L80B9F7BC:
/* 0050C 80B9F7BC 04600054 */  bltz    $v1, .L80B9F910            
/* 00510 80B9F7C0 8FA20068 */  lw      $v0, 0x0068($sp)           
/* 00514 80B9F7C4 00400821 */  addu    $at, $v0, $zero            
/* 00518 80B9F7C8 00021080 */  sll     $v0, $v0,  2               
/* 0051C 80B9F7CC 00411023 */  subu    $v0, $v0, $at              
/* 00520 80B9F7D0 000210C0 */  sll     $v0, $v0,  3               
/* 00524 80B9F7D4 00411021 */  addu    $v0, $v0, $at              
/* 00528 80B9F7D8 00021040 */  sll     $v0, $v0,  1               
/* 0052C 80B9F7DC 24420064 */  addiu   $v0, $v0, 0x0064           ## $v0 = 00000064
/* 00530 80B9F7E0 0062082A */  slt     $at, $v1, $v0              
/* 00534 80B9F7E4 1020004A */  beq     $at, $zero, .L80B9F910     
/* 00538 80B9F7E8 8FAB006C */  lw      $t3, 0x006C($sp)           
/* 0053C 80B9F7EC 51600049 */  beql    $t3, $zero, .L80B9F914     
/* 00540 80B9F7F0 2605014C */  addiu   $a1, $s0, 0x014C           ## $a1 = 0000014C
/* 00544 80B9F7F4 10000046 */  beq     $zero, $zero, .L80B9F910   
/* 00548 80B9F7F8 A60201E4 */  sh      $v0, 0x01E4($s0)           ## 000001E4
.L80B9F7FC:
/* 0054C 80B9F7FC 51800045 */  beql    $t4, $zero, .L80B9F914     
/* 00550 80B9F800 2605014C */  addiu   $a1, $s0, 0x014C           ## $a1 = 0000014C
/* 00554 80B9F804 18E00005 */  blez    $a3, .L80B9F81C            
/* 00558 80B9F808 3C010002 */  lui     $at, 0x0002                ## $at = 00020000
/* 0055C 80B9F80C 34210800 */  ori     $at, $at, 0x0800           ## $at = 00020800
/* 00560 80B9F810 00416824 */  and     $t5, $v0, $at              
/* 00564 80B9F814 15A00006 */  bne     $t5, $zero, .L80B9F830     
/* 00568 80B9F818 00000000 */  nop
.L80B9F81C:
/* 0056C 80B9F81C 04E3003D */  bgezl   $a3, .L80B9F914            
/* 00570 80B9F820 2605014C */  addiu   $a1, $s0, 0x014C           ## $a1 = 0000014C
/* 00574 80B9F824 850E0860 */  lh      $t6, 0x0860($t0)           ## 00000860
/* 00578 80B9F828 51C0003A */  beql    $t6, $zero, .L80B9F914     
/* 0057C 80B9F82C 2605014C */  addiu   $a1, $s0, 0x014C           ## $a1 = 0000014C
.L80B9F830:
/* 00580 80B9F830 04E10007 */  bgez    $a3, .L80B9F850            
/* 00584 80B9F834 3C0B80BA */  lui     $t3, %hi(D_80B9FF90)       ## $t3 = 80BA0000
/* 00588 80B9F838 850F0860 */  lh      $t7, 0x0860($t0)           ## 00000860
/* 0058C 80B9F83C 241800C8 */  addiu   $t8, $zero, 0x00C8         ## $t8 = 000000C8
/* 00590 80B9F840 29E100C8 */  slti    $at, $t7, 0x00C8           
/* 00594 80B9F844 10200002 */  beq     $at, $zero, .L80B9F850     
/* 00598 80B9F848 00000000 */  nop
/* 0059C 80B9F84C A5180860 */  sh      $t8, 0x0860($t0)           ## 00000860
.L80B9F850:
/* 005A0 80B9F850 1520000E */  bne     $t1, $zero, .L80B9F88C     
/* 005A4 80B9F854 2419FFFF */  addiu   $t9, $zero, 0xFFFF         ## $t9 = FFFFFFFF
/* 005A8 80B9F858 A61901E4 */  sh      $t9, 0x01E4($s0)           ## 000001E4
/* 005AC 80B9F85C 8FAA006C */  lw      $t2, 0x006C($sp)           
/* 005B0 80B9F860 24010002 */  addiu   $at, $zero, 0x0002         ## $at = 00000002
/* 005B4 80B9F864 8FA40084 */  lw      $a0, 0x0084($sp)           
/* 005B8 80B9F868 1141001F */  beq     $t2, $at, .L80B9F8E8       
/* 005BC 80B9F86C 00000000 */  nop
/* 005C0 80B9F870 0C00B2DD */  jal     Flags_SetSwitch
              
/* 005C4 80B9F874 8FA50070 */  lw      $a1, 0x0070($sp)           
/* 005C8 80B9F878 8FA40084 */  lw      $a0, 0x0084($sp)           
/* 005CC 80B9F87C 0C020120 */  jal     func_80080480              
/* 005D0 80B9F880 02002825 */  or      $a1, $s0, $zero            ## $a1 = 00000000
/* 005D4 80B9F884 10000018 */  beq     $zero, $zero, .L80B9F8E8   
/* 005D8 80B9F888 00000000 */  nop
.L80B9F88C:
/* 005DC 80B9F88C 8D6BFF90 */  lw      $t3, %lo(D_80B9FF90)($t3)  
/* 005E0 80B9F890 3C0180BA */  lui     $at, %hi(D_80B9FF90)       ## $at = 80BA0000
/* 005E4 80B9F894 8FAE0068 */  lw      $t6, 0x0068($sp)           
/* 005E8 80B9F898 256C0001 */  addiu   $t4, $t3, 0x0001           ## $t4 = 00000001
/* 005EC 80B9F89C AC2CFF90 */  sw      $t4, %lo(D_80B9FF90)($at)  
/* 005F0 80B9F8A0 0189082A */  slt     $at, $t4, $t1              
/* 005F4 80B9F8A4 1420000A */  bne     $at, $zero, .L80B9F8D0     
/* 005F8 80B9F8A8 000E7880 */  sll     $t7, $t6,  2               
/* 005FC 80B9F8AC 8FA40084 */  lw      $a0, 0x0084($sp)           
/* 00600 80B9F8B0 0C00B2DD */  jal     Flags_SetSwitch
              
/* 00604 80B9F8B4 8FA50070 */  lw      $a1, 0x0070($sp)           
/* 00608 80B9F8B8 8FA40084 */  lw      $a0, 0x0084($sp)           
/* 0060C 80B9F8BC 0C020120 */  jal     func_80080480              
/* 00610 80B9F8C0 02002825 */  or      $a1, $s0, $zero            ## $a1 = 00000000
/* 00614 80B9F8C4 240DFFFF */  addiu   $t5, $zero, 0xFFFF         ## $t5 = FFFFFFFF
/* 00618 80B9F8C8 10000007 */  beq     $zero, $zero, .L80B9F8E8   
/* 0061C 80B9F8CC A60D01E4 */  sh      $t5, 0x01E4($s0)           ## 000001E4
.L80B9F8D0:
/* 00620 80B9F8D0 01EE7823 */  subu    $t7, $t7, $t6              
/* 00624 80B9F8D4 000F78C0 */  sll     $t7, $t7,  3               
/* 00628 80B9F8D8 01EE7821 */  addu    $t7, $t7, $t6              
/* 0062C 80B9F8DC 000F7840 */  sll     $t7, $t7,  1               
/* 00630 80B9F8E0 25F8006E */  addiu   $t8, $t7, 0x006E           ## $t8 = 0000006E
/* 00634 80B9F8E4 A61801E4 */  sh      $t8, 0x01E4($s0)           ## 000001E4
.L80B9F8E8:
/* 00638 80B9F8E8 3C078013 */  lui     $a3, %hi(D_801333E0)
/* 0063C 80B9F8EC 3C198013 */  lui     $t9, %hi(D_801333E8)
/* 00640 80B9F8F0 24E733E0 */  addiu   $a3, %lo(D_801333E0)
/* 00644 80B9F8F4 273933E8 */  addiu   $t9, %lo(D_801333E8)
/* 00648 80B9F8F8 AFB90014 */  sw      $t9, 0x0014($sp)           
/* 0064C 80B9F8FC AFA70010 */  sw      $a3, 0x0010($sp)           
/* 00650 80B9F900 24042822 */  addiu   $a0, $zero, 0x2822         ## $a0 = 00002822
/* 00654 80B9F904 260500E4 */  addiu   $a1, $s0, 0x00E4           ## $a1 = 000000E4
/* 00658 80B9F908 0C03DCE3 */  jal     Audio_PlaySoundGeneral
              
/* 0065C 80B9F90C 24060004 */  addiu   $a2, $zero, 0x0004         ## $a2 = 00000004
.L80B9F910:
/* 00660 80B9F910 2605014C */  addiu   $a1, $s0, 0x014C           ## $a1 = 0000014C
.L80B9F914:
/* 00664 80B9F914 AFA5002C */  sw      $a1, 0x002C($sp)           
/* 00668 80B9F918 0C0189B7 */  jal     Collider_CylinderUpdate
              
/* 0066C 80B9F91C 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 00670 80B9F920 8FA40084 */  lw      $a0, 0x0084($sp)           
/* 00674 80B9F924 3C010001 */  lui     $at, 0x0001                ## $at = 00010000
/* 00678 80B9F928 34211E60 */  ori     $at, $at, 0x1E60           ## $at = 00011E60
/* 0067C 80B9F92C 00812821 */  addu    $a1, $a0, $at              
/* 00680 80B9F930 AFA50030 */  sw      $a1, 0x0030($sp)           
/* 00684 80B9F934 0C017713 */  jal     CollisionCheck_SetOC
              ## CollisionCheck_setOT
/* 00688 80B9F938 8FA6002C */  lw      $a2, 0x002C($sp)           
/* 0068C 80B9F93C 8FA40084 */  lw      $a0, 0x0084($sp)           
/* 00690 80B9F940 8FA50030 */  lw      $a1, 0x0030($sp)           
/* 00694 80B9F944 0C01767D */  jal     CollisionCheck_SetAC
              ## CollisionCheck_setAC
/* 00698 80B9F948 8FA6002C */  lw      $a2, 0x002C($sp)           
/* 0069C 80B9F94C 26060198 */  addiu   $a2, $s0, 0x0198           ## $a2 = 00000198
/* 006A0 80B9F950 00C02825 */  or      $a1, $a2, $zero            ## $a1 = 00000198
/* 006A4 80B9F954 AFA6002C */  sw      $a2, 0x002C($sp)           
/* 006A8 80B9F958 0C0189B7 */  jal     Collider_CylinderUpdate
              
/* 006AC 80B9F95C 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 006B0 80B9F960 8FA40084 */  lw      $a0, 0x0084($sp)           
/* 006B4 80B9F964 8FA6002C */  lw      $a2, 0x002C($sp)           
/* 006B8 80B9F968 0C01767D */  jal     CollisionCheck_SetAC
              ## CollisionCheck_setAC
/* 006BC 80B9F96C 8FA50030 */  lw      $a1, 0x0030($sp)           
/* 006C0 80B9F970 860301E4 */  lh      $v1, 0x01E4($s0)           ## 000001E4
/* 006C4 80B9F974 1860000D */  blez    $v1, .L80B9F9AC            
/* 006C8 80B9F978 246AFFFF */  addiu   $t2, $v1, 0xFFFF           ## $t2 = FFFFFFFF
/* 006CC 80B9F97C A60A01E4 */  sh      $t2, 0x01E4($s0)           ## 000001E4
/* 006D0 80B9F980 860301E4 */  lh      $v1, 0x01E4($s0)           ## 000001E4
/* 006D4 80B9F984 8FAB006C */  lw      $t3, 0x006C($sp)           
/* 006D8 80B9F988 14600008 */  bne     $v1, $zero, .L80B9F9AC     
/* 006DC 80B9F98C 00000000 */  nop
/* 006E0 80B9F990 11600006 */  beq     $t3, $zero, .L80B9F9AC     
/* 006E4 80B9F994 3C0280BA */  lui     $v0, %hi(D_80B9FF90)       ## $v0 = 80BA0000
/* 006E8 80B9F998 2442FF90 */  addiu   $v0, $v0, %lo(D_80B9FF90)  ## $v0 = 80B9FF90
/* 006EC 80B9F99C 8C4C0000 */  lw      $t4, 0x0000($v0)           ## 80B9FF90
/* 006F0 80B9F9A0 258DFFFF */  addiu   $t5, $t4, 0xFFFF           ## $t5 = FFFFFFFF
/* 006F4 80B9F9A4 AC4D0000 */  sw      $t5, 0x0000($v0)           ## 80B9FF90
/* 006F8 80B9F9A8 860301E4 */  lh      $v1, 0x01E4($s0)           ## 000001E4
.L80B9F9AC:
/* 006FC 80B9F9AC 5060003F */  beql    $v1, $zero, .L80B9FAAC     
/* 00700 80B9F9B0 93A6005B */  lbu     $a2, 0x005B($sp)           
/* 00704 80B9F9B4 04600002 */  bltz    $v1, .L80B9F9C0            
/* 00708 80B9F9B8 28610014 */  slti    $at, $v1, 0x0014           
/* 0070C 80B9F9BC 14200003 */  bne     $at, $zero, .L80B9F9CC     
.L80B9F9C0:
/* 00710 80B9F9C0 240E00C8 */  addiu   $t6, $zero, 0x00C8         ## $t6 = 000000C8
/* 00714 80B9F9C4 1000000D */  beq     $zero, $zero, .L80B9F9FC   
/* 00718 80B9F9C8 AFAE005C */  sw      $t6, 0x005C($sp)           
.L80B9F9CC:
/* 0071C 80B9F9CC 44839000 */  mtc1    $v1, $f18                  ## $f18 = 0.00
/* 00720 80B9F9D0 3C014348 */  lui     $at, 0x4348                ## $at = 43480000
/* 00724 80B9F9D4 44814000 */  mtc1    $at, $f8                   ## $f8 = 200.00
/* 00728 80B9F9D8 468091A0 */  cvt.s.w $f6, $f18                  
/* 0072C 80B9F9DC 3C0141A0 */  lui     $at, 0x41A0                ## $at = 41A00000
/* 00730 80B9F9E0 44815000 */  mtc1    $at, $f10                  ## $f10 = 20.00
/* 00734 80B9F9E4 46083102 */  mul.s   $f4, $f6, $f8              
/* 00738 80B9F9E8 460A2403 */  div.s   $f16, $f4, $f10            
/* 0073C 80B9F9EC 4600848D */  trunc.w.s $f18, $f16                 
/* 00740 80B9F9F0 44189000 */  mfc1    $t8, $f18                  
/* 00744 80B9F9F4 00000000 */  nop
/* 00748 80B9F9F8 AFB8005C */  sw      $t8, 0x005C($sp)           
.L80B9F9FC:
/* 0074C 80B9F9FC 0C03F66B */  jal     Math_Rand_ZeroOne
              ## Rand.Next() float
/* 00750 80B9FA00 00000000 */  nop
/* 00754 80B9FA04 3C0142FE */  lui     $at, 0x42FE                ## $at = 42FE0000
/* 00758 80B9FA08 44813000 */  mtc1    $at, $f6                   ## $f6 = 127.00
/* 0075C 80B9FA0C 240A0001 */  addiu   $t2, $zero, 0x0001         ## $t2 = 00000001
/* 00760 80B9FA10 3C014F00 */  lui     $at, 0x4F00                ## $at = 4F000000
/* 00764 80B9FA14 46060202 */  mul.s   $f8, $f0, $f6              
/* 00768 80B9FA18 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 0076C 80B9FA1C 24052031 */  addiu   $a1, $zero, 0x2031         ## $a1 = 00002031
/* 00770 80B9FA20 4459F800 */  cfc1    $t9, $31
/* 00774 80B9FA24 44CAF800 */  ctc1    $t2, $31
/* 00778 80B9FA28 00000000 */  nop
/* 0077C 80B9FA2C 46004124 */  cvt.w.s $f4, $f8                   
/* 00780 80B9FA30 444AF800 */  cfc1    $t2, $31
/* 00784 80B9FA34 00000000 */  nop
/* 00788 80B9FA38 314A0078 */  andi    $t2, $t2, 0x0078           ## $t2 = 00000000
/* 0078C 80B9FA3C 51400013 */  beql    $t2, $zero, .L80B9FA8C     
/* 00790 80B9FA40 440A2000 */  mfc1    $t2, $f4                   
/* 00794 80B9FA44 44812000 */  mtc1    $at, $f4                   ## $f4 = 2147483648.00
/* 00798 80B9FA48 240A0001 */  addiu   $t2, $zero, 0x0001         ## $t2 = 00000001
/* 0079C 80B9FA4C 46044101 */  sub.s   $f4, $f8, $f4              
/* 007A0 80B9FA50 44CAF800 */  ctc1    $t2, $31
/* 007A4 80B9FA54 00000000 */  nop
/* 007A8 80B9FA58 46002124 */  cvt.w.s $f4, $f4                   
/* 007AC 80B9FA5C 444AF800 */  cfc1    $t2, $31
/* 007B0 80B9FA60 00000000 */  nop
/* 007B4 80B9FA64 314A0078 */  andi    $t2, $t2, 0x0078           ## $t2 = 00000000
/* 007B8 80B9FA68 15400005 */  bne     $t2, $zero, .L80B9FA80     
/* 007BC 80B9FA6C 00000000 */  nop
/* 007C0 80B9FA70 440A2000 */  mfc1    $t2, $f4                   
/* 007C4 80B9FA74 3C018000 */  lui     $at, 0x8000                ## $at = 80000000
/* 007C8 80B9FA78 10000007 */  beq     $zero, $zero, .L80B9FA98   
/* 007CC 80B9FA7C 01415025 */  or      $t2, $t2, $at              ## $t2 = 80000000
.L80B9FA80:
/* 007D0 80B9FA80 10000005 */  beq     $zero, $zero, .L80B9FA98   
/* 007D4 80B9FA84 240AFFFF */  addiu   $t2, $zero, 0xFFFF         ## $t2 = FFFFFFFF
/* 007D8 80B9FA88 440A2000 */  mfc1    $t2, $f4                   
.L80B9FA8C:
/* 007DC 80B9FA8C 00000000 */  nop
/* 007E0 80B9FA90 0540FFFB */  bltz    $t2, .L80B9FA80            
/* 007E4 80B9FA94 00000000 */  nop
.L80B9FA98:
/* 007E8 80B9FA98 44D9F800 */  ctc1    $t9, $31
/* 007EC 80B9FA9C 254C0080 */  addiu   $t4, $t2, 0x0080           ## $t4 = 0000007F
/* 007F0 80B9FAA0 0C00BE5D */  jal     func_8002F974              
/* 007F4 80B9FAA4 A3AC005B */  sb      $t4, 0x005B($sp)           
/* 007F8 80B9FAA8 93A6005B */  lbu     $a2, 0x005B($sp)           
.L80B9FAAC:
/* 007FC 80B9FAAC 8FAE005C */  lw      $t6, 0x005C($sp)           
/* 00800 80B9FAB0 260401EC */  addiu   $a0, $s0, 0x01EC           ## $a0 = 000001EC
/* 00804 80B9FAB4 00003825 */  or      $a3, $zero, $zero          ## $a3 = 00000000
/* 00808 80B9FAB8 00C02825 */  or      $a1, $a2, $zero            ## $a1 = 00000000
/* 0080C 80B9FABC 0C01E796 */  jal     Lights_PointSetColorAndRadius
              
/* 00810 80B9FAC0 AFAE0010 */  sw      $t6, 0x0010($sp)           
/* 00814 80B9FAC4 920F01E6 */  lbu     $t7, 0x01E6($s0)           ## 000001E6
/* 00818 80B9FAC8 25F80001 */  addiu   $t8, $t7, 0x0001           ## $t8 = 00000001
/* 0081C 80B9FACC A21801E6 */  sb      $t8, 0x01E6($s0)           ## 000001E6
/* 00820 80B9FAD0 8FBF0024 */  lw      $ra, 0x0024($sp)           
/* 00824 80B9FAD4 8FB00020 */  lw      $s0, 0x0020($sp)           
/* 00828 80B9FAD8 27BD0080 */  addiu   $sp, $sp, 0x0080           ## $sp = 00000000
/* 0082C 80B9FADC 03E00008 */  jr      $ra                        
/* 00830 80B9FAE0 00000000 */  nop
