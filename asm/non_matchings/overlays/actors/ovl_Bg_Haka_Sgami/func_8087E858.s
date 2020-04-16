.late_rodata
glabel D_8087EFE0
    .float 0.19634955

.text
glabel func_8087E858
/* 00378 8087E858 27BDFF48 */  addiu   $sp, $sp, 0xFF48           ## $sp = FFFFFF48
/* 0037C 8087E85C AFBF005C */  sw      $ra, 0x005C($sp)           
/* 00380 8087E860 AFBE0058 */  sw      $s8, 0x0058($sp)           
/* 00384 8087E864 AFB70054 */  sw      $s7, 0x0054($sp)           
/* 00388 8087E868 AFB60050 */  sw      $s6, 0x0050($sp)           
/* 0038C 8087E86C AFB5004C */  sw      $s5, 0x004C($sp)           
/* 00390 8087E870 AFB40048 */  sw      $s4, 0x0048($sp)           
/* 00394 8087E874 AFB30044 */  sw      $s3, 0x0044($sp)           
/* 00398 8087E878 AFB20040 */  sw      $s2, 0x0040($sp)           
/* 0039C 8087E87C AFB1003C */  sw      $s1, 0x003C($sp)           
/* 003A0 8087E880 AFB00038 */  sw      $s0, 0x0038($sp)           
/* 003A4 8087E884 F7B80030 */  sdc1    $f24, 0x0030($sp)          
/* 003A8 8087E888 F7B60028 */  sdc1    $f22, 0x0028($sp)          
/* 003AC 8087E88C F7B40020 */  sdc1    $f20, 0x0020($sp)          
/* 003B0 8087E890 AFA500BC */  sw      $a1, 0x00BC($sp)           
/* 003B4 8087E894 84820152 */  lh      $v0, 0x0152($a0)           ## 00000152
/* 003B8 8087E898 00808025 */  or      $s0, $a0, $zero            ## $s0 = 00000000
/* 003BC 8087E89C 10400003 */  beq     $v0, $zero, .L8087E8AC     
/* 003C0 8087E8A0 244EFFFF */  addiu   $t6, $v0, 0xFFFF           ## $t6 = FFFFFFFF
/* 003C4 8087E8A4 A48E0152 */  sh      $t6, 0x0152($a0)           ## 00000152
/* 003C8 8087E8A8 84820152 */  lh      $v0, 0x0152($a0)           ## 00000152
.L8087E8AC:
/* 003CC 8087E8AC 44822000 */  mtc1    $v0, $f4                   ## $f4 = 0.00
/* 003D0 8087E8B0 3C018088 */  lui     $at, %hi(D_8087EFE0)       ## $at = 80880000
/* 003D4 8087E8B4 C428EFE0 */  lwc1    $f8, %lo(D_8087EFE0)($at)  
/* 003D8 8087E8B8 468021A0 */  cvt.s.w $f6, $f4                   
/* 003DC 8087E8BC 46083302 */  mul.s   $f12, $f6, $f8             
/* 003E0 8087E8C0 0C0400A4 */  jal     sinf
              
/* 003E4 8087E8C4 00000000 */  nop
/* 003E8 8087E8C8 3C014400 */  lui     $at, 0x4400                ## $at = 44000000
/* 003EC 8087E8CC 44815000 */  mtc1    $at, $f10                  ## $f10 = 512.00
/* 003F0 8087E8D0 860F00B6 */  lh      $t7, 0x00B6($s0)           ## 000000B6
/* 003F4 8087E8D4 860D0152 */  lh      $t5, 0x0152($s0)           ## 00000152
/* 003F8 8087E8D8 46005402 */  mul.s   $f16, $f10, $f0            
/* 003FC 8087E8DC 240E0020 */  addiu   $t6, $zero, 0x0020         ## $t6 = 00000020
/* 00400 8087E8E0 4600848D */  trunc.w.s $f18, $f16                 
/* 00404 8087E8E4 44199000 */  mfc1    $t9, $f18                  
/* 00408 8087E8E8 00000000 */  nop
/* 0040C 8087E8EC 00194400 */  sll     $t0, $t9, 16               
/* 00410 8087E8F0 00084C03 */  sra     $t1, $t0, 16               
/* 00414 8087E8F4 252A0400 */  addiu   $t2, $t1, 0x0400           ## $t2 = 00000400
/* 00418 8087E8F8 000A5843 */  sra     $t3, $t2,  1               
/* 0041C 8087E8FC 01EB6021 */  addu    $t4, $t7, $t3              
/* 00420 8087E900 15A00002 */  bne     $t5, $zero, .L8087E90C     
/* 00424 8087E904 A60C00B6 */  sh      $t4, 0x00B6($s0)           ## 000000B6
/* 00428 8087E908 A60E0152 */  sh      $t6, 0x0152($s0)           ## 00000152
.L8087E90C:
/* 0042C 8087E90C 0C01DE1C */  jal     Math_Sins
              ## sins?
/* 00430 8087E910 860400B6 */  lh      $a0, 0x00B6($s0)           ## 000000B6
/* 00434 8087E914 46000586 */  mov.s   $f22, $f0                  
/* 00438 8087E918 0C01DE0D */  jal     Math_Coss
              ## coss?
/* 0043C 8087E91C 860400B6 */  lh      $a0, 0x00B6($s0)           ## 000000B6
/* 00440 8087E920 8618001C */  lh      $t8, 0x001C($s0)           ## 0000001C
/* 00444 8087E924 46000606 */  mov.s   $f24, $f0                  
/* 00448 8087E928 24080002 */  addiu   $t0, $zero, 0x0002         ## $t0 = 00000002
/* 0044C 8087E92C 13000003 */  beq     $t8, $zero, .L8087E93C     
/* 00450 8087E930 24190004 */  addiu   $t9, $zero, 0x0004         ## $t9 = 00000004
/* 00454 8087E934 10000002 */  beq     $zero, $zero, .L8087E940   
/* 00458 8087E938 AFB90080 */  sw      $t9, 0x0080($sp)           
.L8087E93C:
/* 0045C 8087E93C AFA80080 */  sw      $t0, 0x0080($sp)           
.L8087E940:
/* 00460 8087E940 8FA90080 */  lw      $t1, 0x0080($sp)           
/* 00464 8087E944 261601A8 */  addiu   $s6, $s0, 0x01A8           ## $s6 = 000001A8
/* 00468 8087E948 27BE0098 */  addiu   $s8, $sp, 0x0098           ## $s8 = FFFFFFE0
/* 0046C 8087E94C 2522FFFE */  addiu   $v0, $t1, 0xFFFE           ## $v0 = FFFFFFFE
/* 00470 8087E950 0049082A */  slt     $at, $v0, $t1              
/* 00474 8087E954 10200070 */  beq     $at, $zero, .L8087EB18     
/* 00478 8087E958 00409825 */  or      $s3, $v0, $zero            ## $s3 = FFFFFFFE
/* 0047C 8087E95C 0002A100 */  sll     $s4, $v0,  4               
/* 00480 8087E960 3C014000 */  lui     $at, 0x4000                ## $at = 40000000
/* 00484 8087E964 0282A023 */  subu    $s4, $s4, $v0              
/* 00488 8087E968 27B100B0 */  addiu   $s1, $sp, 0x00B0           ## $s1 = FFFFFFF8
/* 0048C 8087E96C 4481A000 */  mtc1    $at, $f20                  ## $f20 = 2.00
/* 00490 8087E970 02209025 */  or      $s2, $s1, $zero            ## $s2 = FFFFFFF8
/* 00494 8087E974 0014A080 */  sll     $s4, $s4,  2               
/* 00498 8087E978 27B7008C */  addiu   $s7, $sp, 0x008C           ## $s7 = FFFFFFD4
/* 0049C 8087E97C 27B500A4 */  addiu   $s5, $sp, 0x00A4           ## $s5 = FFFFFFEC
.L8087E980:
/* 004A0 8087E980 3C0F8088 */  lui     $t7, %hi(D_8087EF5C)       ## $t7 = 80880000
/* 004A4 8087E984 8DEFEF5C */  lw      $t7, %lo(D_8087EF5C)($t7)  
/* 004A8 8087E988 27A2008C */  addiu   $v0, $sp, 0x008C           ## $v0 = FFFFFFD4
/* 004AC 8087E98C 028F1821 */  addu    $v1, $s4, $t7              
/* 004B0 8087E990 C46A0020 */  lwc1    $f10, 0x0020($v1)          ## 00000020
/* 004B4 8087E994 2442000C */  addiu   $v0, $v0, 0x000C           ## $v0 = FFFFFFE0
/* 004B8 8087E998 0051082B */  sltu    $at, $v0, $s1              
/* 004BC 8087E99C 46165402 */  mul.s   $f16, $f10, $f22           
/* 004C0 8087E9A0 C6120024 */  lwc1    $f18, 0x0024($s0)          ## 00000024
/* 004C4 8087E9A4 1020001A */  beq     $at, $zero, .L8087EA10     
/* 004C8 8087E9A8 C46E0018 */  lwc1    $f14, 0x0018($v1)          ## 00000018
.L8087E9AC:
/* 004CC 8087E9AC 46187302 */  mul.s   $f12, $f14, $f24           
/* 004D0 8087E9B0 46109280 */  add.s   $f10, $f18, $f16           
/* 004D4 8087E9B4 2442000C */  addiu   $v0, $v0, 0x000C           ## $v0 = FFFFFFEC
/* 004D8 8087E9B8 0051082B */  sltu    $at, $v0, $s1              
/* 004DC 8087E9BC 2463000C */  addiu   $v1, $v1, 0x000C           ## $v1 = 0000000C
/* 004E0 8087E9C0 460A6280 */  add.s   $f10, $f12, $f10           
/* 004E4 8087E9C4 E44AFFE8 */  swc1    $f10, -0x0018($v0)         ## FFFFFFD4
/* 004E8 8087E9C8 C46A0010 */  lwc1    $f10, 0x0010($v1)          ## 0000001C
/* 004EC 8087E9CC C60C0028 */  lwc1    $f12, 0x0028($s0)          ## 00000028
/* 004F0 8087E9D0 460C5300 */  add.s   $f12, $f10, $f12           
/* 004F4 8087E9D4 E44CFFEC */  swc1    $f12, -0x0014($v0)         ## FFFFFFD8
/* 004F8 8087E9D8 C46C0014 */  lwc1    $f12, 0x0014($v1)          ## 00000020
/* 004FC 8087E9DC C46A000C */  lwc1    $f10, 0x000C($v1)          ## 00000018
/* 00500 8087E9E0 C608002C */  lwc1    $f8, 0x002C($s0)           ## 0000002C
/* 00504 8087E9E4 46186302 */  mul.s   $f12, $f12, $f24           
/* 00508 8087E9E8 460C4300 */  add.s   $f12, $f8, $f12            
/* 0050C 8087E9EC 46165282 */  mul.s   $f10, $f10, $f22           
/* 00510 8087E9F0 460A6281 */  sub.s   $f10, $f12, $f10           
/* 00514 8087E9F4 E44AFFF0 */  swc1    $f10, -0x0010($v0)         ## FFFFFFDC
/* 00518 8087E9F8 C46A0020 */  lwc1    $f10, 0x0020($v1)          ## 0000002C
/* 0051C 8087E9FC C6120024 */  lwc1    $f18, 0x0024($s0)          ## 00000024
/* 00520 8087EA00 C46E0018 */  lwc1    $f14, 0x0018($v1)          ## 00000024
/* 00524 8087EA04 46165402 */  mul.s   $f16, $f10, $f22           
/* 00528 8087EA08 1420FFE8 */  bne     $at, $zero, .L8087E9AC     
/* 0052C 8087EA0C 00000000 */  nop
.L8087EA10:
/* 00530 8087EA10 46187302 */  mul.s   $f12, $f14, $f24           
/* 00534 8087EA14 46109280 */  add.s   $f10, $f18, $f16           
/* 00538 8087EA18 2463000C */  addiu   $v1, $v1, 0x000C           ## $v1 = 00000018
/* 0053C 8087EA1C 460A6280 */  add.s   $f10, $f12, $f10           
/* 00540 8087EA20 E44AFFF4 */  swc1    $f10, -0x000C($v0)         ## FFFFFFE0
/* 00544 8087EA24 C60C0028 */  lwc1    $f12, 0x0028($s0)          ## 00000028
/* 00548 8087EA28 C46A0010 */  lwc1    $f10, 0x0010($v1)          ## 00000028
/* 0054C 8087EA2C 460C5300 */  add.s   $f12, $f10, $f12           
/* 00550 8087EA30 E44CFFF8 */  swc1    $f12, -0x0008($v0)         ## FFFFFFE4
/* 00554 8087EA34 C46C0014 */  lwc1    $f12, 0x0014($v1)          ## 0000002C
/* 00558 8087EA38 C46A000C */  lwc1    $f10, 0x000C($v1)          ## 00000024
/* 0055C 8087EA3C C608002C */  lwc1    $f8, 0x002C($s0)           ## 0000002C
/* 00560 8087EA40 46186302 */  mul.s   $f12, $f12, $f24           
/* 00564 8087EA44 460C4300 */  add.s   $f12, $f8, $f12            
/* 00568 8087EA48 46165282 */  mul.s   $f10, $f10, $f22           
/* 0056C 8087EA4C 460A6281 */  sub.s   $f10, $f12, $f10           
/* 00570 8087EA50 E44AFFFC */  swc1    $f10, -0x0004($v0)         ## FFFFFFE8
/* 00574 8087EA54 02C02025 */  or      $a0, $s6, $zero            ## $a0 = 000001A8
/* 00578 8087EA58 02602825 */  or      $a1, $s3, $zero            ## $a1 = FFFFFFFE
/* 0057C 8087EA5C 02E03025 */  or      $a2, $s7, $zero            ## $a2 = FFFFFFD4
/* 00580 8087EA60 03C03825 */  or      $a3, $s8, $zero            ## $a3 = FFFFFFE0
/* 00584 8087EA64 0C0189E8 */  jal     func_800627A0              
/* 00588 8087EA68 AFB50010 */  sw      $s5, 0x0010($sp)           
/* 0058C 8087EA6C 27A2008C */  addiu   $v0, $sp, 0x008C           ## $v0 = FFFFFFD4
/* 00590 8087EA70 C60C0024 */  lwc1    $f12, 0x0024($s0)          ## 00000024
/* 00594 8087EA74 2442000C */  addiu   $v0, $v0, 0x000C           ## $v0 = FFFFFFE0
/* 00598 8087EA78 C450FFF4 */  lwc1    $f16, -0x000C($v0)         ## FFFFFFD4
/* 0059C 8087EA7C 460CA482 */  mul.s   $f18, $f20, $f12           
/* 005A0 8087EA80 5052000F */  beql    $v0, $s2, .L8087EAC0       
/* 005A4 8087EA84 46109381 */  sub.s   $f14, $f18, $f16           
/* 005A8 8087EA88 46109381 */  sub.s   $f14, $f18, $f16           
.L8087EA8C:
/* 005AC 8087EA8C C44CFFFC */  lwc1    $f12, -0x0004($v0)         ## FFFFFFDC
/* 005B0 8087EA90 C4500000 */  lwc1    $f16, 0x0000($v0)          ## FFFFFFE0
/* 005B4 8087EA94 2442000C */  addiu   $v0, $v0, 0x000C           ## $v0 = FFFFFFEC
/* 005B8 8087EA98 E44EFFE8 */  swc1    $f14, -0x0018($v0)         ## FFFFFFD4
/* 005BC 8087EA9C C60E002C */  lwc1    $f14, 0x002C($s0)          ## 0000002C
/* 005C0 8087EAA0 460EA382 */  mul.s   $f14, $f20, $f14           
/* 005C4 8087EAA4 460C7301 */  sub.s   $f12, $f14, $f12           
/* 005C8 8087EAA8 E44CFFF0 */  swc1    $f12, -0x0010($v0)         ## FFFFFFDC
/* 005CC 8087EAAC C60C0024 */  lwc1    $f12, 0x0024($s0)          ## 00000024
/* 005D0 8087EAB0 460CA482 */  mul.s   $f18, $f20, $f12           
/* 005D4 8087EAB4 5452FFF5 */  bnel    $v0, $s2, .L8087EA8C       
/* 005D8 8087EAB8 46109381 */  sub.s   $f14, $f18, $f16           
/* 005DC 8087EABC 46109381 */  sub.s   $f14, $f18, $f16           
.L8087EAC0:
/* 005E0 8087EAC0 C44CFFFC */  lwc1    $f12, -0x0004($v0)         ## FFFFFFE8
/* 005E4 8087EAC4 E44EFFF4 */  swc1    $f14, -0x000C($v0)         ## FFFFFFE0
/* 005E8 8087EAC8 C60E002C */  lwc1    $f14, 0x002C($s0)          ## 0000002C
/* 005EC 8087EACC 460EA382 */  mul.s   $f14, $f20, $f14           
/* 005F0 8087EAD0 460C7301 */  sub.s   $f12, $f14, $f12           
/* 005F4 8087EAD4 E44CFFFC */  swc1    $f12, -0x0004($v0)         ## FFFFFFE8
/* 005F8 8087EAD8 26650002 */  addiu   $a1, $s3, 0x0002           ## $a1 = 00000000
/* 005FC 8087EADC 02C02025 */  or      $a0, $s6, $zero            ## $a0 = 000001A8
/* 00600 8087EAE0 04A10004 */  bgez    $a1, .L8087EAF4            
/* 00604 8087EAE4 30A50003 */  andi    $a1, $a1, 0x0003           ## $a1 = 00000000
/* 00608 8087EAE8 10A00002 */  beq     $a1, $zero, .L8087EAF4     
/* 0060C 8087EAEC 00000000 */  nop
/* 00610 8087EAF0 24A5FFFC */  addiu   $a1, $a1, 0xFFFC           ## $a1 = FFFFFFFC
.L8087EAF4:
/* 00614 8087EAF4 02E03025 */  or      $a2, $s7, $zero            ## $a2 = FFFFFFD4
/* 00618 8087EAF8 03C03825 */  or      $a3, $s8, $zero            ## $a3 = FFFFFFE0
/* 0061C 8087EAFC 0C0189E8 */  jal     func_800627A0              
/* 00620 8087EB00 AFB50010 */  sw      $s5, 0x0010($sp)           
/* 00624 8087EB04 8FAB0080 */  lw      $t3, 0x0080($sp)           
/* 00628 8087EB08 26730001 */  addiu   $s3, $s3, 0x0001           ## $s3 = FFFFFFFF
/* 0062C 8087EB0C 2694003C */  addiu   $s4, $s4, 0x003C           ## $s4 = 0000003C
/* 00630 8087EB10 166BFF9B */  bne     $s3, $t3, .L8087E980       
/* 00634 8087EB14 00000000 */  nop
.L8087EB18:
/* 00638 8087EB18 820C0151 */  lb      $t4, 0x0151($s0)           ## 00000151
/* 0063C 8087EB1C 3C014000 */  lui     $at, 0x4000                ## $at = 40000000
/* 00640 8087EB20 4481A000 */  mtc1    $at, $f20                  ## $f20 = 2.00
/* 00644 8087EB24 27B7008C */  addiu   $s7, $sp, 0x008C           ## $s7 = FFFFFFD4
/* 00648 8087EB28 27BE0098 */  addiu   $s8, $sp, 0x0098           ## $s8 = FFFFFFE0
/* 0064C 8087EB2C 11800005 */  beq     $t4, $zero, .L8087EB44     
/* 00650 8087EB30 261601A8 */  addiu   $s6, $s0, 0x01A8           ## $s6 = 000001A8
/* 00654 8087EB34 8FAD00BC */  lw      $t5, 0x00BC($sp)           
/* 00658 8087EB38 91AE1C27 */  lbu     $t6, 0x1C27($t5)           ## 00001C27
/* 0065C 8087EB3C 51C0006F */  beql    $t6, $zero, .L8087ECFC     
/* 00660 8087EB40 8FA400BC */  lw      $a0, 0x00BC($sp)           
.L8087EB44:
/* 00664 8087EB44 8618001C */  lh      $t8, 0x001C($s0)           ## 0000001C
/* 00668 8087EB48 2404000C */  addiu   $a0, $zero, 0x000C         ## $a0 = 0000000C
/* 0066C 8087EB4C 3C058088 */  lui     $a1, %hi(D_8087EFC8)       ## $a1 = 80880000
/* 00670 8087EB50 03040019 */  multu   $t8, $a0                   
/* 00674 8087EB54 24A5EFC8 */  addiu   $a1, $a1, %lo(D_8087EFC8)  ## $a1 = 8087EFC8
/* 00678 8087EB58 C6080024 */  lwc1    $f8, 0x0024($s0)           ## 00000024
/* 0067C 8087EB5C 3C068088 */  lui     $a2, %hi(D_8087EFB0)       ## $a2 = 80880000
/* 00680 8087EB60 24C6EFB0 */  addiu   $a2, $a2, %lo(D_8087EFB0)  ## $a2 = 8087EFB0
/* 00684 8087EB64 0000C812 */  mflo    $t9                        
/* 00688 8087EB68 00B91021 */  addu    $v0, $a1, $t9              
/* 0068C 8087EB6C C4440008 */  lwc1    $f4, 0x0008($v0)           ## 00000008
/* 00690 8087EB70 C4520000 */  lwc1    $f18, 0x0000($v0)          ## 00000000
/* 00694 8087EB74 46162402 */  mul.s   $f16, $f4, $f22            
/* 00698 8087EB78 46104280 */  add.s   $f10, $f8, $f16            
/* 0069C 8087EB7C 46189182 */  mul.s   $f6, $f18, $f24            
/* 006A0 8087EB80 460A3100 */  add.s   $f4, $f6, $f10             
/* 006A4 8087EB84 E7A4008C */  swc1    $f4, 0x008C($sp)           
/* 006A8 8087EB88 8608001C */  lh      $t0, 0x001C($s0)           ## 0000001C
/* 006AC 8087EB8C C6100028 */  lwc1    $f16, 0x0028($s0)          ## 00000028
/* 006B0 8087EB90 01040019 */  multu   $t0, $a0                   
/* 006B4 8087EB94 00004812 */  mflo    $t1                        
/* 006B8 8087EB98 00A95021 */  addu    $t2, $a1, $t1              
/* 006BC 8087EB9C C5480004 */  lwc1    $f8, 0x0004($t2)           ## 00000004
/* 006C0 8087EBA0 46104480 */  add.s   $f18, $f8, $f16            
/* 006C4 8087EBA4 E7B20090 */  swc1    $f18, 0x0090($sp)          
/* 006C8 8087EBA8 860F001C */  lh      $t7, 0x001C($s0)           ## 0000001C
/* 006CC 8087EBAC C606002C */  lwc1    $f6, 0x002C($s0)           ## 0000002C
/* 006D0 8087EBB0 01E40019 */  multu   $t7, $a0                   
/* 006D4 8087EBB4 00005812 */  mflo    $t3                        
/* 006D8 8087EBB8 00AB1021 */  addu    $v0, $a1, $t3              
/* 006DC 8087EBBC C44A0008 */  lwc1    $f10, 0x0008($v0)          ## 00000008
/* 006E0 8087EBC0 C4500000 */  lwc1    $f16, 0x0000($v0)          ## 00000000
/* 006E4 8087EBC4 46185102 */  mul.s   $f4, $f10, $f24            
/* 006E8 8087EBC8 46043200 */  add.s   $f8, $f6, $f4              
/* 006EC 8087EBCC 46168482 */  mul.s   $f18, $f16, $f22           
/* 006F0 8087EBD0 46124281 */  sub.s   $f10, $f8, $f18            
/* 006F4 8087EBD4 E7AA0094 */  swc1    $f10, 0x0094($sp)          
/* 006F8 8087EBD8 860C001C */  lh      $t4, 0x001C($s0)           ## 0000001C
/* 006FC 8087EBDC C6060024 */  lwc1    $f6, 0x0024($s0)           ## 00000024
/* 00700 8087EBE0 01840019 */  multu   $t4, $a0                   
/* 00704 8087EBE4 00006812 */  mflo    $t5                        
/* 00708 8087EBE8 00CD1821 */  addu    $v1, $a2, $t5              
/* 0070C 8087EBEC C4640008 */  lwc1    $f4, 0x0008($v1)           ## 00000008
/* 00710 8087EBF0 C4720000 */  lwc1    $f18, 0x0000($v1)          ## 00000000
/* 00714 8087EBF4 46162402 */  mul.s   $f16, $f4, $f22            
/* 00718 8087EBF8 46103200 */  add.s   $f8, $f6, $f16             
/* 0071C 8087EBFC 46189282 */  mul.s   $f10, $f18, $f24           
/* 00720 8087EC00 46085100 */  add.s   $f4, $f10, $f8             
/* 00724 8087EC04 E7A40098 */  swc1    $f4, 0x0098($sp)           
/* 00728 8087EC08 860E001C */  lh      $t6, 0x001C($s0)           ## 0000001C
/* 0072C 8087EC0C C6100028 */  lwc1    $f16, 0x0028($s0)          ## 00000028
/* 00730 8087EC10 01C40019 */  multu   $t6, $a0                   
/* 00734 8087EC14 0000C012 */  mflo    $t8                        
/* 00738 8087EC18 00D8C821 */  addu    $t9, $a2, $t8              
/* 0073C 8087EC1C C7260004 */  lwc1    $f6, 0x0004($t9)           ## 00000004
/* 00740 8087EC20 46103480 */  add.s   $f18, $f6, $f16            
/* 00744 8087EC24 E7B2009C */  swc1    $f18, 0x009C($sp)          
/* 00748 8087EC28 8608001C */  lh      $t0, 0x001C($s0)           ## 0000001C
/* 0074C 8087EC2C C60A002C */  lwc1    $f10, 0x002C($s0)          ## 0000002C
/* 00750 8087EC30 01040019 */  multu   $t0, $a0                   
/* 00754 8087EC34 00004812 */  mflo    $t1                        
/* 00758 8087EC38 00C91821 */  addu    $v1, $a2, $t1              
/* 0075C 8087EC3C C4680008 */  lwc1    $f8, 0x0008($v1)           ## 00000008
/* 00760 8087EC40 C4700000 */  lwc1    $f16, 0x0000($v1)          ## 00000000
/* 00764 8087EC44 46184102 */  mul.s   $f4, $f8, $f24             
/* 00768 8087EC48 46045180 */  add.s   $f6, $f10, $f4             
/* 0076C 8087EC4C 46168482 */  mul.s   $f18, $f16, $f22           
/* 00770 8087EC50 46123201 */  sub.s   $f8, $f6, $f18             
/* 00774 8087EC54 E7A800A0 */  swc1    $f8, 0x00A0($sp)           
/* 00778 8087EC58 0C009AC3 */  jal     func_80026B0C              
/* 0077C 8087EC5C 8E040154 */  lw      $a0, 0x0154($s0)           ## 00000154
/* 00780 8087EC60 00402025 */  or      $a0, $v0, $zero            ## $a0 = 00000000
/* 00784 8087EC64 02E02825 */  or      $a1, $s7, $zero            ## $a1 = FFFFFFD4
/* 00788 8087EC68 0C007F7C */  jal     func_8001FDF0              
/* 0078C 8087EC6C 03C03025 */  or      $a2, $s8, $zero            ## $a2 = FFFFFFE0
/* 00790 8087EC70 27A2008C */  addiu   $v0, $sp, 0x008C           ## $v0 = FFFFFFD4
/* 00794 8087EC74 27A300A4 */  addiu   $v1, $sp, 0x00A4           ## $v1 = FFFFFFEC
/* 00798 8087EC78 C6100024 */  lwc1    $f16, 0x0024($s0)          ## 00000024
/* 0079C 8087EC7C 2442000C */  addiu   $v0, $v0, 0x000C           ## $v0 = FFFFFFE0
/* 007A0 8087EC80 C456FFF4 */  lwc1    $f22, -0x000C($v0)         ## FFFFFFD4
/* 007A4 8087EC84 4610A602 */  mul.s   $f24, $f20, $f16           
/* 007A8 8087EC88 5043000F */  beql    $v0, $v1, .L8087ECC8       
/* 007AC 8087EC8C 4616C481 */  sub.s   $f18, $f24, $f22           
/* 007B0 8087EC90 4616C481 */  sub.s   $f18, $f24, $f22           
.L8087EC94:
/* 007B4 8087EC94 C450FFFC */  lwc1    $f16, -0x0004($v0)         ## FFFFFFDC
/* 007B8 8087EC98 C4560000 */  lwc1    $f22, 0x0000($v0)          ## FFFFFFE0
/* 007BC 8087EC9C 2442000C */  addiu   $v0, $v0, 0x000C           ## $v0 = FFFFFFEC
/* 007C0 8087ECA0 E452FFE8 */  swc1    $f18, -0x0018($v0)         ## FFFFFFD4
/* 007C4 8087ECA4 C612002C */  lwc1    $f18, 0x002C($s0)          ## 0000002C
/* 007C8 8087ECA8 4612A482 */  mul.s   $f18, $f20, $f18           
/* 007CC 8087ECAC 46109401 */  sub.s   $f16, $f18, $f16           
/* 007D0 8087ECB0 E450FFF0 */  swc1    $f16, -0x0010($v0)         ## FFFFFFDC
/* 007D4 8087ECB4 C6100024 */  lwc1    $f16, 0x0024($s0)          ## 00000024
/* 007D8 8087ECB8 4610A602 */  mul.s   $f24, $f20, $f16           
/* 007DC 8087ECBC 5443FFF5 */  bnel    $v0, $v1, .L8087EC94       
/* 007E0 8087ECC0 4616C481 */  sub.s   $f18, $f24, $f22           
/* 007E4 8087ECC4 4616C481 */  sub.s   $f18, $f24, $f22           
.L8087ECC8:
/* 007E8 8087ECC8 C450FFFC */  lwc1    $f16, -0x0004($v0)         ## FFFFFFE8
/* 007EC 8087ECCC E452FFF4 */  swc1    $f18, -0x000C($v0)         ## FFFFFFE0
/* 007F0 8087ECD0 C612002C */  lwc1    $f18, 0x002C($s0)          ## 0000002C
/* 007F4 8087ECD4 4612A482 */  mul.s   $f18, $f20, $f18           
/* 007F8 8087ECD8 46109401 */  sub.s   $f16, $f18, $f16           
/* 007FC 8087ECDC E450FFFC */  swc1    $f16, -0x0004($v0)         ## FFFFFFE8
/* 00800 8087ECE0 0C009AC3 */  jal     func_80026B0C              
/* 00804 8087ECE4 8E040158 */  lw      $a0, 0x0158($s0)           ## 00000158
/* 00808 8087ECE8 00402025 */  or      $a0, $v0, $zero            ## $a0 = 00000000
/* 0080C 8087ECEC 02E02825 */  or      $a1, $s7, $zero            ## $a1 = FFFFFFD4
/* 00810 8087ECF0 0C007F7C */  jal     func_8001FDF0              
/* 00814 8087ECF4 03C03025 */  or      $a2, $s8, $zero            ## $a2 = FFFFFFE0
/* 00818 8087ECF8 8FA400BC */  lw      $a0, 0x00BC($sp)           
.L8087ECFC:
/* 0081C 8087ECFC 3C010001 */  lui     $at, 0x0001                ## $at = 00010000
/* 00820 8087ED00 34211E60 */  ori     $at, $at, 0x1E60           ## $at = 00011E60
/* 00824 8087ED04 00818821 */  addu    $s1, $a0, $at              
/* 00828 8087ED08 02202825 */  or      $a1, $s1, $zero            ## $a1 = FFFFFFF8
/* 0082C 8087ED0C 0C0175E7 */  jal     Actor_CollisionCheck_SetAT
              ## CollisionCheck_setAT
/* 00830 8087ED10 02C03025 */  or      $a2, $s6, $zero            ## $a2 = 000001A8
/* 00834 8087ED14 8FA400BC */  lw      $a0, 0x00BC($sp)           
/* 00838 8087ED18 02202825 */  or      $a1, $s1, $zero            ## $a1 = FFFFFFF8
/* 0083C 8087ED1C 0C017713 */  jal     Actor_CollisionCheck_SetOT
              ## CollisionCheck_setOT
/* 00840 8087ED20 2606015C */  addiu   $a2, $s0, 0x015C           ## $a2 = 0000015C
/* 00844 8087ED24 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 00848 8087ED28 0C00BE5D */  jal     func_8002F974              
/* 0084C 8087ED2C 2405204C */  addiu   $a1, $zero, 0x204C         ## $a1 = 0000204C
/* 00850 8087ED30 8FBF005C */  lw      $ra, 0x005C($sp)           
/* 00854 8087ED34 D7B40020 */  ldc1    $f20, 0x0020($sp)          
/* 00858 8087ED38 D7B60028 */  ldc1    $f22, 0x0028($sp)          
/* 0085C 8087ED3C D7B80030 */  ldc1    $f24, 0x0030($sp)          
/* 00860 8087ED40 8FB00038 */  lw      $s0, 0x0038($sp)           
/* 00864 8087ED44 8FB1003C */  lw      $s1, 0x003C($sp)           
/* 00868 8087ED48 8FB20040 */  lw      $s2, 0x0040($sp)           
/* 0086C 8087ED4C 8FB30044 */  lw      $s3, 0x0044($sp)           
/* 00870 8087ED50 8FB40048 */  lw      $s4, 0x0048($sp)           
/* 00874 8087ED54 8FB5004C */  lw      $s5, 0x004C($sp)           
/* 00878 8087ED58 8FB60050 */  lw      $s6, 0x0050($sp)           
/* 0087C 8087ED5C 8FB70054 */  lw      $s7, 0x0054($sp)           
/* 00880 8087ED60 8FBE0058 */  lw      $s8, 0x0058($sp)           
/* 00884 8087ED64 03E00008 */  jr      $ra                        
/* 00888 8087ED68 27BD00B8 */  addiu   $sp, $sp, 0x00B8           ## $sp = 00000000
