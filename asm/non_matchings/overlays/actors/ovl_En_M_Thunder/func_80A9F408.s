.late_rodata
glabel D_80AA04E0
    .float 0.1
    .balign 4

glabel D_80AA04E4
    .float 0.1
    .balign 4

glabel D_80AA04E8
    .float 0.15
    .balign 4

glabel D_80AA04EC
    .float 0.1
    .balign 4

glabel D_80AA04F0
    .float 0.85
    .balign 4

glabel D_80AA04F4
    .float 0.15
    .balign 4

glabel D_80AA04F8
    .float 0.15
    .balign 4

glabel D_80AA04FC
    .float 0.1
    .balign 4

glabel D_80AA0500
    .float 0.85
    .balign 4

glabel D_80AA0504
    .float 0.1
    .balign 4

.text
glabel func_80A9F408
/* 00428 80A9F408 27BDFFB0 */  addiu   $sp, $sp, 0xFFB0           ## $sp = FFFFFFB0
/* 0042C 80A9F40C AFBF003C */  sw      $ra, 0x003C($sp)           
/* 00430 80A9F410 AFB00038 */  sw      $s0, 0x0038($sp)           
/* 00434 80A9F414 AFA50054 */  sw      $a1, 0x0054($sp)           
/* 00438 80A9F418 8CA31C44 */  lw      $v1, 0x1C44($a1)           ## 00001C44
/* 0043C 80A9F41C 908A01CA */  lbu     $t2, 0x01CA($a0)           ## 000001CA
/* 00440 80A9F420 34018000 */  ori     $at, $zero, 0x8000         ## $at = 00008000
/* 00444 80A9F424 C4640858 */  lwc1    $f4, 0x0858($v1)           ## 00000858
/* 00448 80A9F428 00808025 */  or      $s0, $a0, $zero            ## $s0 = 00000000
/* 0044C 80A9F42C 8C88011C */  lw      $t0, 0x011C($a0)           ## 0000011C
/* 00450 80A9F430 E48401B8 */  swc1    $f4, 0x01B8($a0)           ## 000001B8
/* 00454 80A9F434 8C780908 */  lw      $t8, 0x0908($v1)           ## 00000908
/* 00458 80A9F438 AC980024 */  sw      $t8, 0x0024($a0)           ## 00000024
/* 0045C 80A9F43C 8C6F090C */  lw      $t7, 0x090C($v1)           ## 0000090C
/* 00460 80A9F440 AC8F0028 */  sw      $t7, 0x0028($a0)           ## 00000028
/* 00464 80A9F444 8C780910 */  lw      $t8, 0x0910($v1)           ## 00000910
/* 00468 80A9F448 AC98002C */  sw      $t8, 0x002C($a0)           ## 0000002C
/* 0046C 80A9F44C 847900B6 */  lh      $t9, 0x00B6($v1)           ## 000000B6
/* 00470 80A9F450 03214821 */  addu    $t1, $t9, $at              
/* 00474 80A9F454 15400029 */  bne     $t2, $zero, .L80A9F4FC     
/* 00478 80A9F458 A48900B6 */  sh      $t1, 0x00B6($a0)           ## 000000B6
/* 0047C 80A9F45C 3C0180AA */  lui     $at, %hi(D_80AA04E0)       ## $at = 80AA0000
/* 00480 80A9F460 C42804E0 */  lwc1    $f8, %lo(D_80AA04E0)($at)  
/* 00484 80A9F464 C4660858 */  lwc1    $f6, 0x0858($v1)           ## 00000858
/* 00488 80A9F468 3C0B8016 */  lui     $t3, 0x8016                ## $t3 = 80160000
/* 0048C 80A9F46C 4606403E */  c.le.s  $f8, $f6                   
/* 00490 80A9F470 00000000 */  nop
/* 00494 80A9F474 45000021 */  bc1f    .L80A9F4FC                 
/* 00498 80A9F478 00000000 */  nop
/* 0049C 80A9F47C 856BFA50 */  lh      $t3, -0x05B0($t3)          ## 8015FA50
/* 004A0 80A9F480 55600010 */  bnel    $t3, $zero, .L80A9F4C4     
/* 004A4 80A9F484 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 004A8 80A9F488 8482001C */  lh      $v0, 0x001C($a0)           ## 0000001C
/* 004AC 80A9F48C 8FA40054 */  lw      $a0, 0x0054($sp)           
/* 004B0 80A9F490 24060004 */  addiu   $a2, $zero, 0x0004         ## $a2 = 00000004
/* 004B4 80A9F494 3042FF00 */  andi    $v0, $v0, 0xFF00           ## $v0 = 00000000
/* 004B8 80A9F498 00021203 */  sra     $v0, $v0,  8               
/* 004BC 80A9F49C 10400015 */  beq     $v0, $zero, .L80A9F4F4     
/* 004C0 80A9F4A0 00022C00 */  sll     $a1, $v0, 16               
/* 004C4 80A9F4A4 00052C03 */  sra     $a1, $a1, 16               
/* 004C8 80A9F4A8 AFA3004C */  sw      $v1, 0x004C($sp)           
/* 004CC 80A9F4AC 0C021DC2 */  jal     func_80087708              
/* 004D0 80A9F4B0 AFA80048 */  sw      $t0, 0x0048($sp)           
/* 004D4 80A9F4B4 8FA3004C */  lw      $v1, 0x004C($sp)           
/* 004D8 80A9F4B8 1440000E */  bne     $v0, $zero, .L80A9F4F4     
/* 004DC 80A9F4BC 8FA80048 */  lw      $t0, 0x0048($sp)           
/* 004E0 80A9F4C0 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
.L80A9F4C4:
/* 004E4 80A9F4C4 0C2A7CD4 */  jal     func_80A9F350              
/* 004E8 80A9F4C8 8FA50054 */  lw      $a1, 0x0054($sp)           
/* 004EC 80A9F4CC 3C0580AA */  lui     $a1, %hi(func_80A9F350)    ## $a1 = 80AA0000
/* 004F0 80A9F4D0 24A5F350 */  addiu   $a1, $a1, %lo(func_80A9F350) ## $a1 = 80A9F350
/* 004F4 80A9F4D4 0C2A7BF8 */  jal     func_80A9EFE0              
/* 004F8 80A9F4D8 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 004FC 80A9F4DC 44805000 */  mtc1    $zero, $f10                ## $f10 = 0.00
/* 00500 80A9F4E0 44808000 */  mtc1    $zero, $f16                ## $f16 = 0.00
/* 00504 80A9F4E4 A20001C8 */  sb      $zero, 0x01C8($s0)         ## 000001C8
/* 00508 80A9F4E8 E60A01BC */  swc1    $f10, 0x01BC($s0)          ## 000001BC
/* 0050C 80A9F4EC 1000010D */  beq     $zero, $zero, .L80A9F924   
/* 00510 80A9F4F0 E61001AC */  swc1    $f16, 0x01AC($s0)          ## 000001AC
.L80A9F4F4:
/* 00514 80A9F4F4 240C0001 */  addiu   $t4, $zero, 0x0001         ## $t4 = 00000001
/* 00518 80A9F4F8 A20C01CA */  sb      $t4, 0x01CA($s0)           ## 000001CA
.L80A9F4FC:
/* 0051C 80A9F4FC 3C0180AA */  lui     $at, %hi(D_80AA04E4)       ## $at = 80AA0000
/* 00520 80A9F500 C43204E4 */  lwc1    $f18, %lo(D_80AA04E4)($at) 
/* 00524 80A9F504 C4600858 */  lwc1    $f0, 0x0858($v1)           ## 00000858
/* 00528 80A9F508 3C014316 */  lui     $at, 0x4316                ## $at = 43160000
/* 0052C 80A9F50C 4600903E */  c.le.s  $f18, $f0                  
/* 00530 80A9F510 00000000 */  nop
/* 00534 80A9F514 45020010 */  bc1fl   .L80A9F558                 
/* 00538 80A9F518 8C6E0680 */  lw      $t6, 0x0680($v1)           ## 00000680
/* 0053C 80A9F51C 44812000 */  mtc1    $at, $f4                   ## $f4 = 150.00
/* 00540 80A9F520 44806000 */  mtc1    $zero, $f12                ## $f12 = 0.00
/* 00544 80A9F524 24060002 */  addiu   $a2, $zero, 0x0002         ## $a2 = 00000002
/* 00548 80A9F528 46040182 */  mul.s   $f6, $f0, $f4              
/* 0054C 80A9F52C AFA3004C */  sw      $v1, 0x004C($sp)           
/* 00550 80A9F530 AFA80048 */  sw      $t0, 0x0048($sp)           
/* 00554 80A9F534 4600320D */  trunc.w.s $f8, $f6                   
/* 00558 80A9F538 44054000 */  mfc1    $a1, $f8                   
/* 0055C 80A9F53C 00000000 */  nop
/* 00560 80A9F540 30A500FF */  andi    $a1, $a1, 0x00FF           ## $a1 = 00000000
/* 00564 80A9F544 0C02A800 */  jal     func_800AA000              
/* 00568 80A9F548 30A700FF */  andi    $a3, $a1, 0x00FF           ## $a3 = 00000000
/* 0056C 80A9F54C 8FA3004C */  lw      $v1, 0x004C($sp)           
/* 00570 80A9F550 8FA80048 */  lw      $t0, 0x0048($sp)           
/* 00574 80A9F554 8C6E0680 */  lw      $t6, 0x0680($v1)           ## 00000680
.L80A9F558:
/* 00578 80A9F558 3C0180AA */  lui     $at, %hi(D_80AA04E8)       ## $at = 80AA0000
/* 0057C 80A9F55C 000E7B80 */  sll     $t7, $t6, 14               
/* 00580 80A9F560 05E3007A */  bgezl   $t7, .L80A9F74C            
/* 00584 80A9F564 8C6B067C */  lw      $t3, 0x067C($v1)           ## 0000067C
/* 00588 80A9F568 11000005 */  beq     $t0, $zero, .L80A9F580     
/* 0058C 80A9F56C 3C0580AA */  lui     $a1, %hi(func_80A9F9B4)    ## $a1 = 80AA0000
/* 00590 80A9F570 8D180130 */  lw      $t8, 0x0130($t0)           ## 00000130
/* 00594 80A9F574 13000002 */  beq     $t8, $zero, .L80A9F580     
/* 00598 80A9F578 00000000 */  nop
/* 0059C 80A9F57C AD000118 */  sw      $zero, 0x0118($t0)         ## 00000118
.L80A9F580:
/* 005A0 80A9F580 C42C04E8 */  lwc1    $f12, %lo(D_80AA04E8)($at) 
/* 005A4 80A9F584 C4600858 */  lwc1    $f0, 0x0858($v1)           ## 00000858
/* 005A8 80A9F588 3C0180AA */  lui     $at, %hi(D_80AA04EC)       ## $at = 80AA0000
/* 005AC 80A9F58C 24A5F9B4 */  addiu   $a1, $a1, %lo(func_80A9F9B4) ## $a1 = 80A9F9B4
/* 005B0 80A9F590 460C003E */  c.le.s  $f0, $f12                  
/* 005B4 80A9F594 00000000 */  nop
/* 005B8 80A9F598 45020023 */  bc1fl   .L80A9F628                 
/* 005BC 80A9F59C 8C6B0680 */  lw      $t3, 0x0680($v1)           ## 00000680
/* 005C0 80A9F5A0 C42A04EC */  lwc1    $f10, %lo(D_80AA04EC)($at) 
/* 005C4 80A9F5A4 4600503E */  c.le.s  $f10, $f0                  
/* 005C8 80A9F5A8 00000000 */  nop
/* 005CC 80A9F5AC 45000019 */  bc1f    .L80A9F614                 
/* 005D0 80A9F5B0 00000000 */  nop
/* 005D4 80A9F5B4 80790842 */  lb      $t9, 0x0842($v1)           ## 00000842
/* 005D8 80A9F5B8 3C078013 */  lui     $a3, 0x8013                ## $a3 = 80130000
/* 005DC 80A9F5BC 24E733E0 */  addiu   $a3, $a3, 0x33E0           ## $a3 = 801333E0
/* 005E0 80A9F5C0 2B210018 */  slti    $at, $t9, 0x0018           
/* 005E4 80A9F5C4 14200013 */  bne     $at, $zero, .L80A9F614     
/* 005E8 80A9F5C8 24041823 */  addiu   $a0, $zero, 0x1823         ## $a0 = 00001823
/* 005EC 80A9F5CC 3C098013 */  lui     $t1, 0x8013                ## $t1 = 80130000
/* 005F0 80A9F5D0 252933E8 */  addiu   $t1, $t1, 0x33E8           ## $t1 = 801333E8
/* 005F4 80A9F5D4 246500E4 */  addiu   $a1, $v1, 0x00E4           ## $a1 = 000000E4
/* 005F8 80A9F5D8 AFA50044 */  sw      $a1, 0x0044($sp)           
/* 005FC 80A9F5DC AFA90014 */  sw      $t1, 0x0014($sp)           
/* 00600 80A9F5E0 24060004 */  addiu   $a2, $zero, 0x0004         ## $a2 = 00000004
/* 00604 80A9F5E4 0C03DCE3 */  jal     Audio_PlaySoundGeneral
              
/* 00608 80A9F5E8 AFA70010 */  sw      $a3, 0x0010($sp)           
/* 0060C 80A9F5EC 3C078013 */  lui     $a3, 0x8013                ## $a3 = 80130000
/* 00610 80A9F5F0 3C0A8013 */  lui     $t2, 0x8013                ## $t2 = 80130000
/* 00614 80A9F5F4 24E733E0 */  addiu   $a3, $a3, 0x33E0           ## $a3 = 801333E0
/* 00618 80A9F5F8 254A33E8 */  addiu   $t2, $t2, 0x33E8           ## $t2 = 801333E8
/* 0061C 80A9F5FC 8FA50044 */  lw      $a1, 0x0044($sp)           
/* 00620 80A9F600 AFAA0014 */  sw      $t2, 0x0014($sp)           
/* 00624 80A9F604 AFA70010 */  sw      $a3, 0x0010($sp)           
/* 00628 80A9F608 24041818 */  addiu   $a0, $zero, 0x1818         ## $a0 = 00001818
/* 0062C 80A9F60C 0C03DCE3 */  jal     Audio_PlaySoundGeneral
              
/* 00630 80A9F610 24060004 */  addiu   $a2, $zero, 0x0004         ## $a2 = 00000004
.L80A9F614:
/* 00634 80A9F614 0C00B55C */  jal     Actor_Kill
              
/* 00638 80A9F618 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 0063C 80A9F61C 100000C2 */  beq     $zero, $zero, .L80A9F928   
/* 00640 80A9F620 8FBF003C */  lw      $ra, 0x003C($sp)           
/* 00644 80A9F624 8C6B0680 */  lw      $t3, 0x0680($v1)           ## 00000680
.L80A9F628:
/* 00648 80A9F628 3C01FFFD */  lui     $at, 0xFFFD                ## $at = FFFD0000
/* 0064C 80A9F62C 3421FFFF */  ori     $at, $at, 0xFFFF           ## $at = FFFDFFFF
/* 00650 80A9F630 01616024 */  and     $t4, $t3, $at              
/* 00654 80A9F634 AC6C0680 */  sw      $t4, 0x0680($v1)           ## 00000680
/* 00658 80A9F638 860D001C */  lh      $t5, 0x001C($s0)           ## 0000001C
/* 0065C 80A9F63C 24040001 */  addiu   $a0, $zero, 0x0001         ## $a0 = 00000001
/* 00660 80A9F640 3C018016 */  lui     $at, 0x8016                ## $at = 80160000
/* 00664 80A9F644 31AEFF00 */  andi    $t6, $t5, 0xFF00           ## $t6 = 00000000
/* 00668 80A9F648 000E7A03 */  sra     $t7, $t6,  8               
/* 0066C 80A9F64C 11E00002 */  beq     $t7, $zero, .L80A9F658     
/* 00670 80A9F650 00000000 */  nop
/* 00674 80A9F654 A424FA50 */  sh      $a0, -0x05B0($at)          ## 8015FA50
.L80A9F658:
/* 00678 80A9F658 3C0180AA */  lui     $at, %hi(D_80AA04F0)       ## $at = 80AA0000
/* 0067C 80A9F65C C43204F0 */  lwc1    $f18, %lo(D_80AA04F0)($at) 
/* 00680 80A9F660 C4700858 */  lwc1    $f16, 0x0858($v1)          ## 00000858
/* 00684 80A9F664 24040001 */  addiu   $a0, $zero, 0x0001         ## $a0 = 00000001
/* 00688 80A9F668 4612803C */  c.lt.s  $f16, $f18                 
/* 0068C 80A9F66C 00000000 */  nop
/* 00690 80A9F670 45020011 */  bc1fl   .L80A9F6B8                 
/* 00694 80A9F674 920201C7 */  lbu     $v0, 0x01C7($s0)           ## 000001C7
/* 00698 80A9F678 920201C7 */  lbu     $v0, 0x01C7($s0)           ## 000001C7
/* 0069C 80A9F67C 3C1980AA */  lui     $t9, %hi(D_80AA044C)       ## $t9 = 80AA0000
/* 006A0 80A9F680 24090001 */  addiu   $t1, $zero, 0x0001         ## $t1 = 00000001
/* 006A4 80A9F684 0002C080 */  sll     $t8, $v0,  2               
/* 006A8 80A9F688 0338C821 */  addu    $t9, $t9, $t8              
/* 006AC 80A9F68C 8F39044C */  lw      $t9, %lo(D_80AA044C)($t9)  
/* 006B0 80A9F690 A20901C6 */  sb      $t1, 0x01C6($s0)           ## 000001C6
/* 006B4 80A9F694 14820004 */  bne     $a0, $v0, .L80A9F6A8       
/* 006B8 80A9F698 AE190164 */  sw      $t9, 0x0164($s0)           ## 00000164
/* 006BC 80A9F69C 240A0002 */  addiu   $t2, $zero, 0x0002         ## $t2 = 00000002
/* 006C0 80A9F6A0 10000011 */  beq     $zero, $zero, .L80A9F6E8   
/* 006C4 80A9F6A4 A20A01C9 */  sb      $t2, 0x01C9($s0)           ## 000001C9
.L80A9F6A8:
/* 006C8 80A9F6A8 240B0004 */  addiu   $t3, $zero, 0x0004         ## $t3 = 00000004
/* 006CC 80A9F6AC 1000000E */  beq     $zero, $zero, .L80A9F6E8   
/* 006D0 80A9F6B0 A20B01C9 */  sb      $t3, 0x01C9($s0)           ## 000001C9
/* 006D4 80A9F6B4 920201C7 */  lbu     $v0, 0x01C7($s0)           ## 000001C7
.L80A9F6B8:
/* 006D8 80A9F6B8 3C0D80AA */  lui     $t5, %hi(D_80AA0458)       ## $t5 = 80AA0000
/* 006DC 80A9F6BC 240F0008 */  addiu   $t7, $zero, 0x0008         ## $t7 = 00000008
/* 006E0 80A9F6C0 00026080 */  sll     $t4, $v0,  2               
/* 006E4 80A9F6C4 01AC6821 */  addu    $t5, $t5, $t4              
/* 006E8 80A9F6C8 8DAD0458 */  lw      $t5, %lo(D_80AA0458)($t5)  
/* 006EC 80A9F6CC A20001C6 */  sb      $zero, 0x01C6($s0)         ## 000001C6
/* 006F0 80A9F6D0 14820004 */  bne     $a0, $v0, .L80A9F6E4       
/* 006F4 80A9F6D4 AE0D0164 */  sw      $t5, 0x0164($s0)           ## 00000164
/* 006F8 80A9F6D8 240E0004 */  addiu   $t6, $zero, 0x0004         ## $t6 = 00000004
/* 006FC 80A9F6DC 10000002 */  beq     $zero, $zero, .L80A9F6E8   
/* 00700 80A9F6E0 A20E01C9 */  sb      $t6, 0x01C9($s0)           ## 000001C9
.L80A9F6E4:
/* 00704 80A9F6E4 A20F01C9 */  sb      $t7, 0x01C9($s0)           ## 000001C9
.L80A9F6E8:
/* 00708 80A9F6E8 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 0070C 80A9F6EC 0C2A7BF8 */  jal     func_80A9EFE0              
/* 00710 80A9F6F0 AFA3004C */  sw      $v1, 0x004C($sp)           
/* 00714 80A9F6F4 921901C6 */  lbu     $t9, 0x01C6($s0)           ## 000001C6
/* 00718 80A9F6F8 8FA3004C */  lw      $v1, 0x004C($sp)           
/* 0071C 80A9F6FC 24180008 */  addiu   $t8, $zero, 0x0008         ## $t8 = 00000008
/* 00720 80A9F700 3C078013 */  lui     $a3, 0x8013                ## $a3 = 80130000
/* 00724 80A9F704 A61801C4 */  sh      $t8, 0x01C4($s0)           ## 000001C4
/* 00728 80A9F708 3C0480AA */  lui     $a0, %hi(D_80AA0464)       ## $a0 = 80AA0000
/* 0072C 80A9F70C 3C0A8013 */  lui     $t2, 0x8013                ## $t2 = 80130000
/* 00730 80A9F710 00194840 */  sll     $t1, $t9,  1               
/* 00734 80A9F714 24E733E0 */  addiu   $a3, $a3, 0x33E0           ## $a3 = 801333E0
/* 00738 80A9F718 00892021 */  addu    $a0, $a0, $t1              
/* 0073C 80A9F71C 254A33E8 */  addiu   $t2, $t2, 0x33E8           ## $t2 = 801333E8
/* 00740 80A9F720 AFAA0014 */  sw      $t2, 0x0014($sp)           
/* 00744 80A9F724 94840464 */  lhu     $a0, %lo(D_80AA0464)($a0)  
/* 00748 80A9F728 AFA70010 */  sw      $a3, 0x0010($sp)           
/* 0074C 80A9F72C 24060004 */  addiu   $a2, $zero, 0x0004         ## $a2 = 00000004
/* 00750 80A9F730 0C03DCE3 */  jal     Audio_PlaySoundGeneral
              
/* 00754 80A9F734 246500E4 */  addiu   $a1, $v1, 0x00E4           ## $a1 = 000000E4
/* 00758 80A9F738 3C013F80 */  lui     $at, 0x3F80                ## $at = 3F800000
/* 0075C 80A9F73C 44812000 */  mtc1    $at, $f4                   ## $f4 = 1.00
/* 00760 80A9F740 10000078 */  beq     $zero, $zero, .L80A9F924   
/* 00764 80A9F744 E60401AC */  swc1    $f4, 0x01AC($s0)           ## 000001AC
/* 00768 80A9F748 8C6B067C */  lw      $t3, 0x067C($v1)           ## 0000067C
.L80A9F74C:
/* 0076C 80A9F74C 3C0180AA */  lui     $at, %hi(D_80AA04F4)       ## $at = 80AA0000
/* 00770 80A9F750 316C1000 */  andi    $t4, $t3, 0x1000           ## $t4 = 00000000
/* 00774 80A9F754 15800009 */  bne     $t4, $zero, .L80A9F77C     
/* 00778 80A9F758 00000000 */  nop
/* 0077C 80A9F75C 8E02011C */  lw      $v0, 0x011C($s0)           ## 0000011C
/* 00780 80A9F760 10400002 */  beq     $v0, $zero, .L80A9F76C     
/* 00784 80A9F764 00000000 */  nop
/* 00788 80A9F768 AC400118 */  sw      $zero, 0x0118($v0)         ## 00000118
.L80A9F76C:
/* 0078C 80A9F76C 0C00B55C */  jal     Actor_Kill
              
/* 00790 80A9F770 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 00794 80A9F774 1000006C */  beq     $zero, $zero, .L80A9F928   
/* 00798 80A9F778 8FBF003C */  lw      $ra, 0x003C($sp)           
.L80A9F77C:
/* 0079C 80A9F77C C42C04F4 */  lwc1    $f12, %lo(D_80AA04F4)($at) 
/* 007A0 80A9F780 C4600858 */  lwc1    $f0, 0x0858($v1)           ## 00000858
/* 007A4 80A9F784 3C0180AA */  lui     $at, %hi(D_80AA04FC)       ## $at = 80AA0000
/* 007A8 80A9F788 4600603C */  c.lt.s  $f12, $f0                  
/* 007AC 80A9F78C 00000000 */  nop
/* 007B0 80A9F790 45000029 */  bc1f    .L80A9F838                 
/* 007B4 80A9F794 00000000 */  nop
/* 007B8 80A9F798 8E0E011C */  lw      $t6, 0x011C($s0)           ## 0000011C
/* 007BC 80A9F79C 240D00FF */  addiu   $t5, $zero, 0x00FF         ## $t5 = 000000FF
/* 007C0 80A9F7A0 A20D01C8 */  sb      $t5, 0x01C8($s0)           ## 000001C8
/* 007C4 80A9F7A4 55C00018 */  bnel    $t6, $zero, .L80A9F808     
/* 007C8 80A9F7A8 C4700858 */  lwc1    $f16, 0x0858($v1)          ## 00000858
/* 007CC 80A9F7AC C6060024 */  lwc1    $f6, 0x0024($s0)           ## 00000024
/* 007D0 80A9F7B0 8FA60054 */  lw      $a2, 0x0054($sp)           
/* 007D4 80A9F7B4 02002825 */  or      $a1, $s0, $zero            ## $a1 = 00000000
/* 007D8 80A9F7B8 E7A60010 */  swc1    $f6, 0x0010($sp)           
/* 007DC 80A9F7BC C6080028 */  lwc1    $f8, 0x0028($s0)           ## 00000028
/* 007E0 80A9F7C0 24070101 */  addiu   $a3, $zero, 0x0101         ## $a3 = 00000101
/* 007E4 80A9F7C4 24C41C24 */  addiu   $a0, $a2, 0x1C24           ## $a0 = 00001C24
/* 007E8 80A9F7C8 E7A80014 */  swc1    $f8, 0x0014($sp)           
/* 007EC 80A9F7CC C60A002C */  lwc1    $f10, 0x002C($s0)          ## 0000002C
/* 007F0 80A9F7D0 AFA0001C */  sw      $zero, 0x001C($sp)         
/* 007F4 80A9F7D4 E7AA0018 */  swc1    $f10, 0x0018($sp)          
/* 007F8 80A9F7D8 861800B6 */  lh      $t8, 0x00B6($s0)           ## 000000B6
/* 007FC 80A9F7DC AFA00024 */  sw      $zero, 0x0024($sp)         
/* 00800 80A9F7E0 AFB80020 */  sw      $t8, 0x0020($sp)           
/* 00804 80A9F7E4 921901C7 */  lbu     $t9, 0x01C7($s0)           ## 000001C7
/* 00808 80A9F7E8 AFA3004C */  sw      $v1, 0x004C($sp)           
/* 0080C 80A9F7EC 27290002 */  addiu   $t1, $t9, 0x0002           ## $t1 = 00000002
/* 00810 80A9F7F0 0C00C916 */  jal     Actor_SpawnAttached
              
/* 00814 80A9F7F4 AFA90028 */  sw      $t1, 0x0028($sp)           
/* 00818 80A9F7F8 3C0180AA */  lui     $at, %hi(D_80AA04F8)       ## $at = 80AA0000
/* 0081C 80A9F7FC C42C04F8 */  lwc1    $f12, %lo(D_80AA04F8)($at) 
/* 00820 80A9F800 8FA3004C */  lw      $v1, 0x004C($sp)           
/* 00824 80A9F804 C4700858 */  lwc1    $f16, 0x0858($v1)          ## 00000858
.L80A9F808:
/* 00828 80A9F808 3C013FC0 */  lui     $at, 0x3FC0                ## $at = 3FC00000
/* 0082C 80A9F80C 44812000 */  mtc1    $at, $f4                   ## $f4 = 1.50
/* 00830 80A9F810 460C8481 */  sub.s   $f18, $f16, $f12           
/* 00834 80A9F814 C60001BC */  lwc1    $f0, 0x01BC($s0)           ## 000001BC
/* 00838 80A9F818 3C013F00 */  lui     $at, 0x3F00                ## $at = 3F000000
/* 0083C 80A9F81C 44815000 */  mtc1    $at, $f10                  ## $f10 = 0.50
/* 00840 80A9F820 46049182 */  mul.s   $f6, $f18, $f4             
/* 00844 80A9F824 46003201 */  sub.s   $f8, $f6, $f0              
/* 00848 80A9F828 460A4402 */  mul.s   $f16, $f8, $f10            
/* 0084C 80A9F82C 46100480 */  add.s   $f18, $f0, $f16            
/* 00850 80A9F830 10000019 */  beq     $zero, $zero, .L80A9F898   
/* 00854 80A9F834 E61201BC */  swc1    $f18, 0x01BC($s0)          ## 000001BC
.L80A9F838:
/* 00858 80A9F838 C42204FC */  lwc1    $f2, %lo(D_80AA04FC)($at)  
/* 0085C 80A9F83C 3C01437F */  lui     $at, 0x437F                ## $at = 437F0000
/* 00860 80A9F840 4600103C */  c.lt.s  $f2, $f0                   
/* 00864 80A9F844 00000000 */  nop
/* 00868 80A9F848 45020013 */  bc1fl   .L80A9F898                 
/* 0086C 80A9F84C A20001C8 */  sb      $zero, 0x01C8($s0)         ## 000001C8
/* 00870 80A9F850 46020101 */  sub.s   $f4, $f0, $f2              
/* 00874 80A9F854 44813000 */  mtc1    $at, $f6                   ## $f6 = 255.00
/* 00878 80A9F858 3C0141A0 */  lui     $at, 0x41A0                ## $at = 41A00000
/* 0087C 80A9F85C 44815000 */  mtc1    $at, $f10                  ## $f10 = 20.00
/* 00880 80A9F860 46062202 */  mul.s   $f8, $f4, $f6              
/* 00884 80A9F864 3C014120 */  lui     $at, 0x4120                ## $at = 41200000
/* 00888 80A9F868 460A4402 */  mul.s   $f16, $f8, $f10            
/* 0088C 80A9F86C 44814000 */  mtc1    $at, $f8                   ## $f8 = 10.00
/* 00890 80A9F870 4600848D */  trunc.w.s $f18, $f16                 
/* 00894 80A9F874 440B9000 */  mfc1    $t3, $f18                  
/* 00898 80A9F878 00000000 */  nop
/* 0089C 80A9F87C A20B01C8 */  sb      $t3, 0x01C8($s0)           ## 000001C8
/* 008A0 80A9F880 C4640858 */  lwc1    $f4, 0x0858($v1)           ## 00000858
/* 008A4 80A9F884 46022181 */  sub.s   $f6, $f4, $f2              
/* 008A8 80A9F888 46083282 */  mul.s   $f10, $f6, $f8             
/* 008AC 80A9F88C 10000002 */  beq     $zero, $zero, .L80A9F898   
/* 008B0 80A9F890 E60A01AC */  swc1    $f10, 0x01AC($s0)          ## 000001AC
/* 008B4 80A9F894 A20001C8 */  sb      $zero, 0x01C8($s0)         ## 000001C8
.L80A9F898:
/* 008B8 80A9F898 3C0180AA */  lui     $at, %hi(D_80AA0500)       ## $at = 80AA0000
/* 008BC 80A9F89C C4300500 */  lwc1    $f16, %lo(D_80AA0500)($at) 
/* 008C0 80A9F8A0 C4600858 */  lwc1    $f0, 0x0858($v1)           ## 00000858
/* 008C4 80A9F8A4 246400E4 */  addiu   $a0, $v1, 0x00E4           ## $a0 = 000000E4
/* 008C8 80A9F8A8 4600803C */  c.lt.s  $f16, $f0                  
/* 008CC 80A9F8AC 00000000 */  nop
/* 008D0 80A9F8B0 45020006 */  bc1fl   .L80A9F8CC                 
/* 008D4 80A9F8B4 4600603C */  c.lt.s  $f12, $f0                  
/* 008D8 80A9F8B8 0C03D095 */  jal     func_800F4254              
/* 008DC 80A9F8BC 24050002 */  addiu   $a1, $zero, 0x0002         ## $a1 = 00000002
/* 008E0 80A9F8C0 10000012 */  beq     $zero, $zero, .L80A9F90C   
/* 008E4 80A9F8C4 00000000 */  nop
/* 008E8 80A9F8C8 4600603C */  c.lt.s  $f12, $f0                  
.L80A9F8CC:
/* 008EC 80A9F8CC 246400E4 */  addiu   $a0, $v1, 0x00E4           ## $a0 = 000000E4
/* 008F0 80A9F8D0 3C0180AA */  lui     $at, %hi(D_80AA0504)       ## $at = 80AA0000
/* 008F4 80A9F8D4 45000005 */  bc1f    .L80A9F8EC                 
/* 008F8 80A9F8D8 00000000 */  nop
/* 008FC 80A9F8DC 0C03D095 */  jal     func_800F4254              
/* 00900 80A9F8E0 24050001 */  addiu   $a1, $zero, 0x0001         ## $a1 = 00000001
/* 00904 80A9F8E4 10000009 */  beq     $zero, $zero, .L80A9F90C   
/* 00908 80A9F8E8 00000000 */  nop
.L80A9F8EC:
/* 0090C 80A9F8EC C4320504 */  lwc1    $f18, %lo(D_80AA0504)($at) 
/* 00910 80A9F8F0 246400E4 */  addiu   $a0, $v1, 0x00E4           ## $a0 = 000000E4
/* 00914 80A9F8F4 4600903C */  c.lt.s  $f18, $f0                  
/* 00918 80A9F8F8 00000000 */  nop
/* 0091C 80A9F8FC 45000003 */  bc1f    .L80A9F90C                 
/* 00920 80A9F900 00000000 */  nop
/* 00924 80A9F904 0C03D095 */  jal     func_800F4254              
/* 00928 80A9F908 00002825 */  or      $a1, $zero, $zero          ## $a1 = 00000000
.L80A9F90C:
/* 0092C 80A9F90C 0C02FF21 */  jal     func_800BFC84              
/* 00930 80A9F910 8FA40054 */  lw      $a0, 0x0054($sp)           
/* 00934 80A9F914 50400004 */  beql    $v0, $zero, .L80A9F928     
/* 00938 80A9F918 8FBF003C */  lw      $ra, 0x003C($sp)           
/* 0093C 80A9F91C 0C00B55C */  jal     Actor_Kill
              
/* 00940 80A9F920 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
.L80A9F924:
/* 00944 80A9F924 8FBF003C */  lw      $ra, 0x003C($sp)           
.L80A9F928:
/* 00948 80A9F928 8FB00038 */  lw      $s0, 0x0038($sp)           
/* 0094C 80A9F92C 27BD0050 */  addiu   $sp, $sp, 0x0050           ## $sp = 00000000
/* 00950 80A9F930 03E00008 */  jr      $ra                        
/* 00954 80A9F934 00000000 */  nop


