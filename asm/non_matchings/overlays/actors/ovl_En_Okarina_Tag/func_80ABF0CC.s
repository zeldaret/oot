glabel func_80ABF0CC
/* 003AC 80ABF0CC 27BDFFE8 */  addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
/* 003B0 80ABF0D0 3C020001 */  lui     $v0, 0x0001                ## $v0 = 00010000
/* 003B4 80ABF0D4 AFBF0014 */  sw      $ra, 0x0014($sp)           
/* 003B8 80ABF0D8 00451021 */  addu    $v0, $v0, $a1              
/* 003BC 80ABF0DC 944204C6 */  lhu     $v0, 0x04C6($v0)           ## 000104C6
/* 003C0 80ABF0E0 24010004 */  addiu   $at, $zero, 0x0004         ## $at = 00000004
/* 003C4 80ABF0E4 00803825 */  or      $a3, $a0, $zero            ## $a3 = 00000000
/* 003C8 80ABF0E8 00A03025 */  or      $a2, $a1, $zero            ## $a2 = 00000000
/* 003CC 80ABF0EC 14410005 */  bne     $v0, $at, .L80ABF104       
/* 003D0 80ABF0F0 8CA31C44 */  lw      $v1, 0x1C44($a1)           ## 00001C44
/* 003D4 80ABF0F4 3C0E80AC */  lui     $t6, %hi(func_80ABEF2C)    ## $t6 = 80AC0000
/* 003D8 80ABF0F8 25CEEF2C */  addiu   $t6, $t6, %lo(func_80ABEF2C) ## $t6 = 80ABEF2C
/* 003DC 80ABF0FC 1000005F */  beq     $zero, $zero, .L80ABF27C   
/* 003E0 80ABF100 AC8E014C */  sw      $t6, 0x014C($a0)           ## 0000014C
.L80ABF104:
/* 003E4 80ABF104 24010003 */  addiu   $at, $zero, 0x0003         ## $at = 00000003
/* 003E8 80ABF108 54410023 */  bnel    $v0, $at, .L80ABF198       
/* 003EC 80ABF10C 84E80158 */  lh      $t0, 0x0158($a3)           ## 00000158
/* 003F0 80ABF110 84E50154 */  lh      $a1, 0x0154($a3)           ## 00000154
/* 003F4 80ABF114 00C02025 */  or      $a0, $a2, $zero            ## $a0 = 00000000
/* 003F8 80ABF118 04A20007 */  bltzl   $a1, .L80ABF138            
/* 003FC 80ABF11C 84C200A4 */  lh      $v0, 0x00A4($a2)           ## 000000A4
/* 00400 80ABF120 AFA6001C */  sw      $a2, 0x001C($sp)           
/* 00404 80ABF124 0C00B2DD */  jal     Flags_SetSwitch
              
/* 00408 80ABF128 AFA70018 */  sw      $a3, 0x0018($sp)           
/* 0040C 80ABF12C 8FA6001C */  lw      $a2, 0x001C($sp)           
/* 00410 80ABF130 8FA70018 */  lw      $a3, 0x0018($sp)           
/* 00414 80ABF134 84C200A4 */  lh      $v0, 0x00A4($a2)           ## 000000A4
.L80ABF138:
/* 00418 80ABF138 24010005 */  addiu   $at, $zero, 0x0005         ## $at = 00000005
/* 0041C 80ABF13C 240F0037 */  addiu   $t7, $zero, 0x0037         ## $t7 = 00000037
/* 00420 80ABF140 14410005 */  bne     $v0, $at, .L80ABF158       
/* 00424 80ABF144 24044802 */  addiu   $a0, $zero, 0x4802         ## $a0 = 00004802
/* 00428 80ABF148 3C010001 */  lui     $at, 0x0001                ## $at = 00010000
/* 0042C 80ABF14C 00260821 */  addu    $at, $at, $a2              
/* 00430 80ABF150 A02F03DC */  sb      $t7, 0x03DC($at)           ## 000103DC
/* 00434 80ABF154 84C200A4 */  lh      $v0, 0x00A4($a2)           ## 000000A4
.L80ABF158:
/* 00438 80ABF158 2401003B */  addiu   $at, $zero, 0x003B         ## $at = 0000003B
/* 0043C 80ABF15C 10410006 */  beq     $v0, $at, .L80ABF178       
/* 00440 80ABF160 2401003D */  addiu   $at, $zero, 0x003D         ## $at = 0000003D
/* 00444 80ABF164 10410004 */  beq     $v0, $at, .L80ABF178       
/* 00448 80ABF168 24180004 */  addiu   $t8, $zero, 0x0004         ## $t8 = 00000004
/* 0044C 80ABF16C 3C010001 */  lui     $at, 0x0001                ## $at = 00010000
/* 00450 80ABF170 00260821 */  addu    $at, $at, $a2              
/* 00454 80ABF174 A43804C6 */  sh      $t8, 0x04C6($at)           ## 000104C6
.L80ABF178:
/* 00458 80ABF178 0C01E221 */  jal     func_80078884              
/* 0045C 80ABF17C AFA70018 */  sw      $a3, 0x0018($sp)           
/* 00460 80ABF180 8FA70018 */  lw      $a3, 0x0018($sp)           
/* 00464 80ABF184 3C1980AC */  lui     $t9, %hi(func_80ABEF2C)    ## $t9 = 80AC0000
/* 00468 80ABF188 2739EF2C */  addiu   $t9, $t9, %lo(func_80ABEF2C) ## $t9 = 80ABEF2C
/* 0046C 80ABF18C 1000003B */  beq     $zero, $zero, .L80ABF27C   
/* 00470 80ABF190 ACF9014C */  sw      $t9, 0x014C($a3)           ## 0000014C
/* 00474 80ABF194 84E80158 */  lh      $t0, 0x0158($a3)           ## 00000158
.L80ABF198:
/* 00478 80ABF198 24010005 */  addiu   $at, $zero, 0x0005         ## $at = 00000005
/* 0047C 80ABF19C 51000025 */  beql    $t0, $zero, .L80ABF234     
/* 00480 80ABF1A0 28410005 */  slti    $at, $v0, 0x0005           
/* 00484 80ABF1A4 1041000D */  beq     $v0, $at, .L80ABF1DC       
/* 00488 80ABF1A8 24010006 */  addiu   $at, $zero, 0x0006         ## $at = 00000006
/* 0048C 80ABF1AC 1041000B */  beq     $v0, $at, .L80ABF1DC       
/* 00490 80ABF1B0 24010007 */  addiu   $at, $zero, 0x0007         ## $at = 00000007
/* 00494 80ABF1B4 10410009 */  beq     $v0, $at, .L80ABF1DC       
/* 00498 80ABF1B8 24010008 */  addiu   $at, $zero, 0x0008         ## $at = 00000008
/* 0049C 80ABF1BC 10410007 */  beq     $v0, $at, .L80ABF1DC       
/* 004A0 80ABF1C0 24010009 */  addiu   $at, $zero, 0x0009         ## $at = 00000009
/* 004A4 80ABF1C4 10410005 */  beq     $v0, $at, .L80ABF1DC       
/* 004A8 80ABF1C8 2401000A */  addiu   $at, $zero, 0x000A         ## $at = 0000000A
/* 004AC 80ABF1CC 10410003 */  beq     $v0, $at, .L80ABF1DC       
/* 004B0 80ABF1D0 2401000D */  addiu   $at, $zero, 0x000D         ## $at = 0000000D
/* 004B4 80ABF1D4 54410017 */  bnel    $v0, $at, .L80ABF234       
/* 004B8 80ABF1D8 28410005 */  slti    $at, $v0, 0x0005           
.L80ABF1DC:
/* 004BC 80ABF1DC 84E50154 */  lh      $a1, 0x0154($a3)           ## 00000154
/* 004C0 80ABF1E0 00C02025 */  or      $a0, $a2, $zero            ## $a0 = 00000000
/* 004C4 80ABF1E4 04A20007 */  bltzl   $a1, .L80ABF204            
/* 004C8 80ABF1E8 3C010001 */  lui     $at, 0x0001                ## $at = 00010000
/* 004CC 80ABF1EC AFA6001C */  sw      $a2, 0x001C($sp)           
/* 004D0 80ABF1F0 0C00B2DD */  jal     Flags_SetSwitch
              
/* 004D4 80ABF1F4 AFA70018 */  sw      $a3, 0x0018($sp)           
/* 004D8 80ABF1F8 8FA6001C */  lw      $a2, 0x001C($sp)           
/* 004DC 80ABF1FC 8FA70018 */  lw      $a3, 0x0018($sp)           
/* 004E0 80ABF200 3C010001 */  lui     $at, 0x0001                ## $at = 00010000
.L80ABF204:
/* 004E4 80ABF204 00260821 */  addu    $at, $at, $a2              
/* 004E8 80ABF208 24090004 */  addiu   $t1, $zero, 0x0004         ## $t1 = 00000004
/* 004EC 80ABF20C A42904C6 */  sh      $t1, 0x04C6($at)           ## 000104C6
/* 004F0 80ABF210 AFA70018 */  sw      $a3, 0x0018($sp)           
/* 004F4 80ABF214 0C01E221 */  jal     func_80078884              
/* 004F8 80ABF218 24044802 */  addiu   $a0, $zero, 0x4802         ## $a0 = 00004802
/* 004FC 80ABF21C 8FA70018 */  lw      $a3, 0x0018($sp)           
/* 00500 80ABF220 3C0A80AC */  lui     $t2, %hi(func_80ABEF2C)    ## $t2 = 80AC0000
/* 00504 80ABF224 254AEF2C */  addiu   $t2, $t2, %lo(func_80ABEF2C) ## $t2 = 80ABEF2C
/* 00508 80ABF228 10000014 */  beq     $zero, $zero, .L80ABF27C   
/* 0050C 80ABF22C ACEA014C */  sw      $t2, 0x014C($a3)           ## 0000014C
/* 00510 80ABF230 28410005 */  slti    $at, $v0, 0x0005           
.L80ABF234:
/* 00514 80ABF234 1420000A */  bne     $at, $zero, .L80ABF260     
/* 00518 80ABF238 2841000E */  slti    $at, $v0, 0x000E           
/* 0051C 80ABF23C 10200008 */  beq     $at, $zero, .L80ABF260     
/* 00520 80ABF240 240B0004 */  addiu   $t3, $zero, 0x0004         ## $t3 = 00000004
/* 00524 80ABF244 3C010001 */  lui     $at, 0x0001                ## $at = 00010000
/* 00528 80ABF248 00260821 */  addu    $at, $at, $a2              
/* 0052C 80ABF24C 3C0C80AC */  lui     $t4, %hi(func_80ABEF2C)    ## $t4 = 80AC0000
/* 00530 80ABF250 A42B04C6 */  sh      $t3, 0x04C6($at)           ## 000104C6
/* 00534 80ABF254 258CEF2C */  addiu   $t4, $t4, %lo(func_80ABEF2C) ## $t4 = 80ABEF2C
/* 00538 80ABF258 10000008 */  beq     $zero, $zero, .L80ABF27C   
/* 0053C 80ABF25C ACEC014C */  sw      $t4, 0x014C($a3)           ## 0000014C
.L80ABF260:
/* 00540 80ABF260 24010001 */  addiu   $at, $zero, 0x0001         ## $at = 00000001
/* 00544 80ABF264 54410006 */  bnel    $v0, $at, .L80ABF280       
/* 00548 80ABF268 8FBF0014 */  lw      $ra, 0x0014($sp)           
/* 0054C 80ABF26C 8C6D0680 */  lw      $t5, 0x0680($v1)           ## 00000680
/* 00550 80ABF270 3C010080 */  lui     $at, 0x0080                ## $at = 00800000
/* 00554 80ABF274 01A17025 */  or      $t6, $t5, $at              ## $t6 = 00800000
/* 00558 80ABF278 AC6E0680 */  sw      $t6, 0x0680($v1)           ## 00000680
.L80ABF27C:
/* 0055C 80ABF27C 8FBF0014 */  lw      $ra, 0x0014($sp)           
.L80ABF280:
/* 00560 80ABF280 27BD0018 */  addiu   $sp, $sp, 0x0018           ## $sp = 00000000
/* 00564 80ABF284 03E00008 */  jr      $ra                        
/* 00568 80ABF288 00000000 */  nop


