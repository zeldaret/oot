glabel func_80AB5BF8
/* 00478 80AB5BF8 27BDFFD8 */  addiu   $sp, $sp, 0xFFD8           ## $sp = FFFFFFD8
/* 0047C 80AB5BFC AFBF001C */  sw      $ra, 0x001C($sp)           
/* 00480 80AB5C00 AFB00018 */  sw      $s0, 0x0018($sp)           
/* 00484 80AB5C04 AFA5002C */  sw      $a1, 0x002C($sp)           
/* 00488 80AB5C08 AFA60030 */  sw      $a2, 0x0030($sp)           
/* 0048C 80AB5C0C 848E001C */  lh      $t6, 0x001C($a0)           ## 0000001C
/* 00490 80AB5C10 3C013F80 */  lui     $at, 0x3F80                ## $at = 3F800000
/* 00494 80AB5C14 44811000 */  mtc1    $at, $f2                   ## $f2 = 1.00
/* 00498 80AB5C18 00063400 */  sll     $a2, $a2, 16               
/* 0049C 80AB5C1C 2401000D */  addiu   $at, $zero, 0x000D         ## $at = 0000000D
/* 004A0 80AB5C20 00063403 */  sra     $a2, $a2, 16               
/* 004A4 80AB5C24 15C10004 */  bne     $t6, $at, .L80AB5C38       
/* 004A8 80AB5C28 00808025 */  or      $s0, $a0, $zero            ## $s0 = 00000000
/* 004AC 80AB5C2C 3C014000 */  lui     $at, 0x4000                ## $at = 40000000
/* 004B0 80AB5C30 44811000 */  mtc1    $at, $f2                   ## $f2 = 2.00
/* 004B4 80AB5C34 00000000 */  nop
.L80AB5C38:
/* 004B8 80AB5C38 860F0254 */  lh      $t7, 0x0254($s0)           ## 00000254
/* 004BC 80AB5C3C 55E00021 */  bnel    $t7, $zero, .L80AB5CC4     
/* 004C0 80AB5C40 860D0256 */  lh      $t5, 0x0256($s0)           ## 00000256
/* 004C4 80AB5C44 14C00004 */  bne     $a2, $zero, .L80AB5C58     
/* 004C8 80AB5C48 3C0180AC */  lui     $at, %hi(D_80AB8A90)       ## $at = 80AC0000
/* 004CC 80AB5C4C 44807000 */  mtc1    $zero, $f14                ## $f14 = 0.00
/* 004D0 80AB5C50 10000005 */  beq     $zero, $zero, .L80AB5C68   
/* 004D4 80AB5C54 E60E026C */  swc1    $f14, 0x026C($s0)          ## 0000026C
.L80AB5C58:
/* 004D8 80AB5C58 C4248A90 */  lwc1    $f4, %lo(D_80AB8A90)($at)  
/* 004DC 80AB5C5C 44807000 */  mtc1    $zero, $f14                ## $f14 = 0.00
/* 004E0 80AB5C60 46022182 */  mul.s   $f6, $f4, $f2              
/* 004E4 80AB5C64 E606026C */  swc1    $f6, 0x026C($s0)           ## 0000026C
.L80AB5C68:
/* 004E8 80AB5C68 86180298 */  lh      $t8, 0x0298($s0)           ## 00000298
/* 004EC 80AB5C6C 24080003 */  addiu   $t0, $zero, 0x0003         ## $t0 = 00000003
/* 004F0 80AB5C70 A6080254 */  sh      $t0, 0x0254($s0)           ## 00000254
/* 004F4 80AB5C74 27190001 */  addiu   $t9, $t8, 0x0001           ## $t9 = 00000001
/* 004F8 80AB5C78 A6190298 */  sh      $t9, 0x0298($s0)           ## 00000298
/* 004FC 80AB5C7C 86090298 */  lh      $t1, 0x0298($s0)           ## 00000298
/* 00500 80AB5C80 312A0001 */  andi    $t2, $t1, 0x0001           ## $t2 = 00000000
/* 00504 80AB5C84 5540000F */  bnel    $t2, $zero, .L80AB5CC4     
/* 00508 80AB5C88 860D0256 */  lh      $t5, 0x0256($s0)           ## 00000256
/* 0050C 80AB5C8C 14C0000C */  bne     $a2, $zero, .L80AB5CC0     
/* 00510 80AB5C90 E60E026C */  swc1    $f14, 0x026C($s0)          ## 0000026C
/* 00514 80AB5C94 3C0141F0 */  lui     $at, 0x41F0                ## $at = 41F00000
/* 00518 80AB5C98 44816000 */  mtc1    $at, $f12                  ## $f12 = 30.00
/* 0051C 80AB5C9C A7A60032 */  sh      $a2, 0x0032($sp)           
/* 00520 80AB5CA0 0C00CFBE */  jal     Math_Rand_ZeroFloat
              
/* 00524 80AB5CA4 E7A20024 */  swc1    $f2, 0x0024($sp)           
/* 00528 80AB5CA8 4600020D */  trunc.w.s $f8, $f0                   
/* 0052C 80AB5CAC 87A60032 */  lh      $a2, 0x0032($sp)           
/* 00530 80AB5CB0 C7A20024 */  lwc1    $f2, 0x0024($sp)           
/* 00534 80AB5CB4 440C4000 */  mfc1    $t4, $f8                   
/* 00538 80AB5CB8 00000000 */  nop
/* 0053C 80AB5CBC A60C0254 */  sh      $t4, 0x0254($s0)           ## 00000254
.L80AB5CC0:
/* 00540 80AB5CC0 860D0256 */  lh      $t5, 0x0256($s0)           ## 00000256
.L80AB5CC4:
/* 00544 80AB5CC4 44807000 */  mtc1    $zero, $f14                ## $f14 = 0.00
/* 00548 80AB5CC8 55A00053 */  bnel    $t5, $zero, .L80AB5E18     
/* 0054C 80AB5CCC C6000290 */  lwc1    $f0, 0x0290($s0)           ## 00000290
/* 00550 80AB5CD0 860E029C */  lh      $t6, 0x029C($s0)           ## 0000029C
/* 00554 80AB5CD4 2CC10006 */  sltiu   $at, $a2, 0x0006           
/* 00558 80AB5CD8 00064080 */  sll     $t0, $a2,  2               
/* 0055C 80AB5CDC 25CF0001 */  addiu   $t7, $t6, 0x0001           ## $t7 = 00000001
/* 00560 80AB5CE0 A60F029C */  sh      $t7, 0x029C($s0)           ## 0000029C
/* 00564 80AB5CE4 8618029C */  lh      $t8, 0x029C($s0)           ## 0000029C
/* 00568 80AB5CE8 33190001 */  andi    $t9, $t8, 0x0001           ## $t9 = 00000000
/* 0056C 80AB5CEC 10200049 */  beq     $at, $zero, .L80AB5E14     
/* 00570 80AB5CF0 A619029C */  sh      $t9, 0x029C($s0)           ## 0000029C
/* 00574 80AB5CF4 3C0180AC */  lui     $at, %hi(jtbl_80AB8A94)       ## $at = 80AC0000
/* 00578 80AB5CF8 00280821 */  addu    $at, $at, $t0              
/* 0057C 80AB5CFC 8C288A94 */  lw      $t0, %lo(jtbl_80AB8A94)($at)  
/* 00580 80AB5D00 01000008 */  jr      $t0                        
/* 00584 80AB5D04 00000000 */  nop
glabel L80AB5D08
/* 00588 80AB5D08 E60E0274 */  swc1    $f14, 0x0274($s0)          ## 00000274
/* 0058C 80AB5D0C 10000041 */  beq     $zero, $zero, .L80AB5E14   
/* 00590 80AB5D10 E60E0270 */  swc1    $f14, 0x0270($s0)          ## 00000270
glabel L80AB5D14
/* 00594 80AB5D14 24090003 */  addiu   $t1, $zero, 0x0003         ## $t1 = 00000003
/* 00598 80AB5D18 A6090256 */  sh      $t1, 0x0256($s0)           ## 00000256
/* 0059C 80AB5D1C 3C0180AC */  lui     $at, %hi(D_80AB8AAC)       ## $at = 80AC0000
/* 005A0 80AB5D20 C42A8AAC */  lwc1    $f10, %lo(D_80AB8AAC)($at) 
/* 005A4 80AB5D24 860A029C */  lh      $t2, 0x029C($s0)           ## 0000029C
/* 005A8 80AB5D28 46025002 */  mul.s   $f0, $f10, $f2             
/* 005AC 80AB5D2C E6000274 */  swc1    $f0, 0x0274($s0)           ## 00000274
/* 005B0 80AB5D30 15400038 */  bne     $t2, $zero, .L80AB5E14     
/* 005B4 80AB5D34 E6000270 */  swc1    $f0, 0x0270($s0)           ## 00000270
/* 005B8 80AB5D38 E60E0274 */  swc1    $f14, 0x0274($s0)          ## 00000274
/* 005BC 80AB5D3C 10000035 */  beq     $zero, $zero, .L80AB5E14   
/* 005C0 80AB5D40 E60E0270 */  swc1    $f14, 0x0270($s0)          ## 00000270
glabel L80AB5D44
/* 005C4 80AB5D44 3C0180AC */  lui     $at, %hi(D_80AB8AB0)       ## $at = 80AC0000
/* 005C8 80AB5D48 C4208AB0 */  lwc1    $f0, %lo(D_80AB8AB0)($at)  
/* 005CC 80AB5D4C 3C0180AC */  lui     $at, %hi(D_80AB8AB4)       ## $at = 80AC0000
/* 005D0 80AB5D50 C4228AB4 */  lwc1    $f2, %lo(D_80AB8AB4)($at)  
/* 005D4 80AB5D54 240B0002 */  addiu   $t3, $zero, 0x0002         ## $t3 = 00000002
/* 005D8 80AB5D58 A60B0256 */  sh      $t3, 0x0256($s0)           ## 00000256
/* 005DC 80AB5D5C 3C0180AC */  lui     $at, %hi(D_80AB8AB8)       ## $at = 80AC0000
/* 005E0 80AB5D60 C4308AB8 */  lwc1    $f16, %lo(D_80AB8AB8)($at) 
/* 005E4 80AB5D64 3C0180AC */  lui     $at, %hi(D_80AB8ABC)       ## $at = 80AC0000
/* 005E8 80AB5D68 860C029C */  lh      $t4, 0x029C($s0)           ## 0000029C
/* 005EC 80AB5D6C E6100274 */  swc1    $f16, 0x0274($s0)          ## 00000274
/* 005F0 80AB5D70 C4328ABC */  lwc1    $f18, %lo(D_80AB8ABC)($at) 
/* 005F4 80AB5D74 E6000288 */  swc1    $f0, 0x0288($s0)           ## 00000288
/* 005F8 80AB5D78 E6000280 */  swc1    $f0, 0x0280($s0)           ## 00000280
/* 005FC 80AB5D7C E602028C */  swc1    $f2, 0x028C($s0)           ## 0000028C
/* 00600 80AB5D80 E6020284 */  swc1    $f2, 0x0284($s0)           ## 00000284
/* 00604 80AB5D84 15800023 */  bne     $t4, $zero, .L80AB5E14     
/* 00608 80AB5D88 E6120270 */  swc1    $f18, 0x0270($s0)          ## 00000270
/* 0060C 80AB5D8C 3C0145FA */  lui     $at, 0x45FA                ## $at = 45FA0000
/* 00610 80AB5D90 44810000 */  mtc1    $at, $f0                   ## $f0 = 8000.00
/* 00614 80AB5D94 00000000 */  nop
/* 00618 80AB5D98 E6000288 */  swc1    $f0, 0x0288($s0)           ## 00000288
/* 0061C 80AB5D9C 1000001D */  beq     $zero, $zero, .L80AB5E14   
/* 00620 80AB5DA0 E6000280 */  swc1    $f0, 0x0280($s0)           ## 00000280
glabel L80AB5DA4
/* 00624 80AB5DA4 3C0180AC */  lui     $at, %hi(D_80AB8AC0)       ## $at = 80AC0000
/* 00628 80AB5DA8 C4208AC0 */  lwc1    $f0, %lo(D_80AB8AC0)($at)  
/* 0062C 80AB5DAC 860E029C */  lh      $t6, 0x029C($s0)           ## 0000029C
/* 00630 80AB5DB0 240D0002 */  addiu   $t5, $zero, 0x0002         ## $t5 = 00000002
/* 00634 80AB5DB4 A60D0256 */  sh      $t5, 0x0256($s0)           ## 00000256
/* 00638 80AB5DB8 E6000280 */  swc1    $f0, 0x0280($s0)           ## 00000280
/* 0063C 80AB5DBC 15C00015 */  bne     $t6, $zero, .L80AB5E14     
/* 00640 80AB5DC0 E6000288 */  swc1    $f0, 0x0288($s0)           ## 00000288
/* 00644 80AB5DC4 3C0180AC */  lui     $at, %hi(D_80AB8AC4)       ## $at = 80AC0000
/* 00648 80AB5DC8 C4208AC4 */  lwc1    $f0, %lo(D_80AB8AC4)($at)  
/* 0064C 80AB5DCC E6000280 */  swc1    $f0, 0x0280($s0)           ## 00000280
/* 00650 80AB5DD0 10000010 */  beq     $zero, $zero, .L80AB5E14   
/* 00654 80AB5DD4 E6000288 */  swc1    $f0, 0x0288($s0)           ## 00000288
glabel L80AB5DD8
/* 00658 80AB5DD8 240F0005 */  addiu   $t7, $zero, 0x0005         ## $t7 = 00000005
/* 0065C 80AB5DDC 1000000D */  beq     $zero, $zero, .L80AB5E14   
/* 00660 80AB5DE0 A60F0254 */  sh      $t7, 0x0254($s0)           ## 00000254
glabel L80AB5DE4
/* 00664 80AB5DE4 3C0180AC */  lui     $at, %hi(D_80AB8AC8)       ## $at = 80AC0000
/* 00668 80AB5DE8 C4208AC8 */  lwc1    $f0, %lo(D_80AB8AC8)($at)  
/* 0066C 80AB5DEC 8619029C */  lh      $t9, 0x029C($s0)           ## 0000029C
/* 00670 80AB5DF0 24180005 */  addiu   $t8, $zero, 0x0005         ## $t8 = 00000005
/* 00674 80AB5DF4 A6180256 */  sh      $t8, 0x0256($s0)           ## 00000256
/* 00678 80AB5DF8 E6000280 */  swc1    $f0, 0x0280($s0)           ## 00000280
/* 0067C 80AB5DFC 17200005 */  bne     $t9, $zero, .L80AB5E14     
/* 00680 80AB5E00 E6000288 */  swc1    $f0, 0x0288($s0)           ## 00000288
/* 00684 80AB5E04 3C0180AC */  lui     $at, %hi(D_80AB8ACC)       ## $at = 80AC0000
/* 00688 80AB5E08 C4208ACC */  lwc1    $f0, %lo(D_80AB8ACC)($at)  
/* 0068C 80AB5E0C E6000280 */  swc1    $f0, 0x0280($s0)           ## 00000280
/* 00690 80AB5E10 E6000288 */  swc1    $f0, 0x0288($s0)           ## 00000288
.L80AB5E14:
/* 00694 80AB5E14 C6000290 */  lwc1    $f0, 0x0290($s0)           ## 00000290
.L80AB5E18:
/* 00698 80AB5E18 C60402E0 */  lwc1    $f4, 0x02E0($s0)           ## 000002E0
/* 0069C 80AB5E1C 260402E0 */  addiu   $a0, $s0, 0x02E0           ## $a0 = 000002E0
/* 006A0 80AB5E20 3C063F00 */  lui     $a2, 0x3F00                ## $a2 = 3F000000
/* 006A4 80AB5E24 46002032 */  c.eq.s  $f4, $f0                   
/* 006A8 80AB5E28 00000000 */  nop
/* 006AC 80AB5E2C 45030005 */  bc1tl   .L80AB5E44                 
/* 006B0 80AB5E30 C600026C */  lwc1    $f0, 0x026C($s0)           ## 0000026C
/* 006B4 80AB5E34 44050000 */  mfc1    $a1, $f0                   
/* 006B8 80AB5E38 0C01E107 */  jal     Math_SmoothScaleMaxF
              
/* 006BC 80AB5E3C 3C07457A */  lui     $a3, 0x457A                ## $a3 = 457A0000
/* 006C0 80AB5E40 C600026C */  lwc1    $f0, 0x026C($s0)           ## 0000026C
.L80AB5E44:
/* 006C4 80AB5E44 C60602DC */  lwc1    $f6, 0x02DC($s0)           ## 000002DC
/* 006C8 80AB5E48 260402DC */  addiu   $a0, $s0, 0x02DC           ## $a0 = 000002DC
/* 006CC 80AB5E4C 3C063F00 */  lui     $a2, 0x3F00                ## $a2 = 3F000000
/* 006D0 80AB5E50 46003032 */  c.eq.s  $f6, $f0                   
/* 006D4 80AB5E54 00000000 */  nop
/* 006D8 80AB5E58 45030005 */  bc1tl   .L80AB5E70                 
/* 006DC 80AB5E5C C6000274 */  lwc1    $f0, 0x0274($s0)           ## 00000274
/* 006E0 80AB5E60 44050000 */  mfc1    $a1, $f0                   
/* 006E4 80AB5E64 0C01E107 */  jal     Math_SmoothScaleMaxF
              
/* 006E8 80AB5E68 3C07457A */  lui     $a3, 0x457A                ## $a3 = 457A0000
/* 006EC 80AB5E6C C6000274 */  lwc1    $f0, 0x0274($s0)           ## 00000274
.L80AB5E70:
/* 006F0 80AB5E70 C60802C4 */  lwc1    $f8, 0x02C4($s0)           ## 000002C4
/* 006F4 80AB5E74 3C063F4C */  lui     $a2, 0x3F4C                ## $a2 = 3F4C0000
/* 006F8 80AB5E78 34C6CCCD */  ori     $a2, $a2, 0xCCCD           ## $a2 = 3F4CCCCD
/* 006FC 80AB5E7C 46004032 */  c.eq.s  $f8, $f0                   
/* 00700 80AB5E80 260402C4 */  addiu   $a0, $s0, 0x02C4           ## $a0 = 000002C4
/* 00704 80AB5E84 3C0745DA */  lui     $a3, 0x45DA                ## $a3 = 45DA0000
/* 00708 80AB5E88 45030005 */  bc1tl   .L80AB5EA0                 
/* 0070C 80AB5E8C C6000288 */  lwc1    $f0, 0x0288($s0)           ## 00000288
/* 00710 80AB5E90 44050000 */  mfc1    $a1, $f0                   
/* 00714 80AB5E94 0C01E107 */  jal     Math_SmoothScaleMaxF
              
/* 00718 80AB5E98 34E7C000 */  ori     $a3, $a3, 0xC000           ## $a3 = 45DAC000
/* 0071C 80AB5E9C C6000288 */  lwc1    $f0, 0x0288($s0)           ## 00000288
.L80AB5EA0:
/* 00720 80AB5EA0 C60A02C8 */  lwc1    $f10, 0x02C8($s0)          ## 000002C8
/* 00724 80AB5EA4 3C063F4C */  lui     $a2, 0x3F4C                ## $a2 = 3F4C0000
/* 00728 80AB5EA8 34C6CCCD */  ori     $a2, $a2, 0xCCCD           ## $a2 = 3F4CCCCD
/* 0072C 80AB5EAC 46005032 */  c.eq.s  $f10, $f0                  
/* 00730 80AB5EB0 260402C8 */  addiu   $a0, $s0, 0x02C8           ## $a0 = 000002C8
/* 00734 80AB5EB4 3C0745DA */  lui     $a3, 0x45DA                ## $a3 = 45DA0000
/* 00738 80AB5EB8 45030005 */  bc1tl   .L80AB5ED0                 
/* 0073C 80AB5EBC C600028C */  lwc1    $f0, 0x028C($s0)           ## 0000028C
/* 00740 80AB5EC0 44050000 */  mfc1    $a1, $f0                   
/* 00744 80AB5EC4 0C01E107 */  jal     Math_SmoothScaleMaxF
              
/* 00748 80AB5EC8 34E7C000 */  ori     $a3, $a3, 0xC000           ## $a3 = 45DAC000
/* 0074C 80AB5ECC C600028C */  lwc1    $f0, 0x028C($s0)           ## 0000028C
.L80AB5ED0:
/* 00750 80AB5ED0 C61002CC */  lwc1    $f16, 0x02CC($s0)          ## 000002CC
/* 00754 80AB5ED4 3C063F4C */  lui     $a2, 0x3F4C                ## $a2 = 3F4C0000
/* 00758 80AB5ED8 34C6CCCD */  ori     $a2, $a2, 0xCCCD           ## $a2 = 3F4CCCCD
/* 0075C 80AB5EDC 46008032 */  c.eq.s  $f16, $f0                  
/* 00760 80AB5EE0 260402CC */  addiu   $a0, $s0, 0x02CC           ## $a0 = 000002CC
/* 00764 80AB5EE4 3C0745DA */  lui     $a3, 0x45DA                ## $a3 = 45DA0000
/* 00768 80AB5EE8 45030005 */  bc1tl   .L80AB5F00                 
/* 0076C 80AB5EEC C6000270 */  lwc1    $f0, 0x0270($s0)           ## 00000270
/* 00770 80AB5EF0 44050000 */  mfc1    $a1, $f0                   
/* 00774 80AB5EF4 0C01E107 */  jal     Math_SmoothScaleMaxF
              
/* 00778 80AB5EF8 34E7C000 */  ori     $a3, $a3, 0xC000           ## $a3 = 45DAC000
/* 0077C 80AB5EFC C6000270 */  lwc1    $f0, 0x0270($s0)           ## 00000270
.L80AB5F00:
/* 00780 80AB5F00 C61202D0 */  lwc1    $f18, 0x02D0($s0)          ## 000002D0
/* 00784 80AB5F04 3C063F4C */  lui     $a2, 0x3F4C                ## $a2 = 3F4C0000
/* 00788 80AB5F08 34C6CCCD */  ori     $a2, $a2, 0xCCCD           ## $a2 = 3F4CCCCD
/* 0078C 80AB5F0C 46009032 */  c.eq.s  $f18, $f0                  
/* 00790 80AB5F10 260402D0 */  addiu   $a0, $s0, 0x02D0           ## $a0 = 000002D0
/* 00794 80AB5F14 3C0745DA */  lui     $a3, 0x45DA                ## $a3 = 45DA0000
/* 00798 80AB5F18 45030005 */  bc1tl   .L80AB5F30                 
/* 0079C 80AB5F1C C6000280 */  lwc1    $f0, 0x0280($s0)           ## 00000280
/* 007A0 80AB5F20 44050000 */  mfc1    $a1, $f0                   
/* 007A4 80AB5F24 0C01E107 */  jal     Math_SmoothScaleMaxF
              
/* 007A8 80AB5F28 34E7C000 */  ori     $a3, $a3, 0xC000           ## $a3 = 45DAC000
/* 007AC 80AB5F2C C6000280 */  lwc1    $f0, 0x0280($s0)           ## 00000280
.L80AB5F30:
/* 007B0 80AB5F30 C60402D4 */  lwc1    $f4, 0x02D4($s0)           ## 000002D4
/* 007B4 80AB5F34 3C063F4C */  lui     $a2, 0x3F4C                ## $a2 = 3F4C0000
/* 007B8 80AB5F38 34C6CCCD */  ori     $a2, $a2, 0xCCCD           ## $a2 = 3F4CCCCD
/* 007BC 80AB5F3C 46002032 */  c.eq.s  $f4, $f0                   
/* 007C0 80AB5F40 260402D4 */  addiu   $a0, $s0, 0x02D4           ## $a0 = 000002D4
/* 007C4 80AB5F44 3C0745DA */  lui     $a3, 0x45DA                ## $a3 = 45DA0000
/* 007C8 80AB5F48 45030005 */  bc1tl   .L80AB5F60                 
/* 007CC 80AB5F4C C6000284 */  lwc1    $f0, 0x0284($s0)           ## 00000284
/* 007D0 80AB5F50 44050000 */  mfc1    $a1, $f0                   
/* 007D4 80AB5F54 0C01E107 */  jal     Math_SmoothScaleMaxF
              
/* 007D8 80AB5F58 34E7C000 */  ori     $a3, $a3, 0xC000           ## $a3 = 45DAC000
/* 007DC 80AB5F5C C6000284 */  lwc1    $f0, 0x0284($s0)           ## 00000284
.L80AB5F60:
/* 007E0 80AB5F60 C60602D8 */  lwc1    $f6, 0x02D8($s0)           ## 000002D8
/* 007E4 80AB5F64 3C063F4C */  lui     $a2, 0x3F4C                ## $a2 = 3F4C0000
/* 007E8 80AB5F68 34C6CCCD */  ori     $a2, $a2, 0xCCCD           ## $a2 = 3F4CCCCD
/* 007EC 80AB5F6C 46003032 */  c.eq.s  $f6, $f0                   
/* 007F0 80AB5F70 260402D8 */  addiu   $a0, $s0, 0x02D8           ## $a0 = 000002D8
/* 007F4 80AB5F74 3C0745DA */  lui     $a3, 0x45DA                ## $a3 = 45DA0000
/* 007F8 80AB5F78 45030005 */  bc1tl   .L80AB5F90                 
/* 007FC 80AB5F7C 8FBF001C */  lw      $ra, 0x001C($sp)           
/* 00800 80AB5F80 44050000 */  mfc1    $a1, $f0                   
/* 00804 80AB5F84 0C01E107 */  jal     Math_SmoothScaleMaxF
              
/* 00808 80AB5F88 34E7C000 */  ori     $a3, $a3, 0xC000           ## $a3 = 45DAC000
/* 0080C 80AB5F8C 8FBF001C */  lw      $ra, 0x001C($sp)           
.L80AB5F90:
/* 00810 80AB5F90 8FB00018 */  lw      $s0, 0x0018($sp)           
/* 00814 80AB5F94 27BD0028 */  addiu   $sp, $sp, 0x0028           ## $sp = 00000000
/* 00818 80AB5F98 03E00008 */  jr      $ra                        
/* 0081C 80AB5F9C 00000000 */  nop


