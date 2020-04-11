.late_rodata
glabel D_80A4B918
 .word 0xBFA66666
glabel D_80A4B91C
    .float 0.03
    .balign 4

glabel D_80A4B920
    .float 0.1
    .balign 4

.text
glabel func_80A493D8
/* 00518 80A493D8 3C013F80 */  lui     $at, 0x3F80                ## $at = 3F800000
/* 0051C 80A493DC 44810000 */  mtc1    $at, $f0                   ## $f0 = 1.00
/* 00520 80A493E0 27BDFFE0 */  addiu   $sp, $sp, 0xFFE0           ## $sp = FFFFFFE0
/* 00524 80A493E4 3C0180A5 */  lui     $at, %hi(D_80A4B918)       ## $at = 80A50000
/* 00528 80A493E8 C424B918 */  lwc1    $f4, %lo(D_80A4B918)($at)  
/* 0052C 80A493EC AFBF001C */  sw      $ra, 0x001C($sp)           
/* 00530 80A493F0 AFB00018 */  sw      $s0, 0x0018($sp)           
/* 00534 80A493F4 AFA50024 */  sw      $a1, 0x0024($sp)           
/* 00538 80A493F8 3C0180A5 */  lui     $at, %hi(D_80A4B91C)       ## $at = 80A50000
/* 0053C 80A493FC E484006C */  swc1    $f4, 0x006C($a0)           ## 0000006C
/* 00540 80A49400 C428B91C */  lwc1    $f8, %lo(D_80A4B91C)($at)  
/* 00544 80A49404 C48602DC */  lwc1    $f6, 0x02DC($a0)           ## 000002DC
/* 00548 80A49408 C49002D8 */  lwc1    $f16, 0x02D8($a0)          ## 000002D8
/* 0054C 80A4940C 00808025 */  or      $s0, $a0, $zero            ## $s0 = 00000000
/* 00550 80A49410 46083280 */  add.s   $f10, $f6, $f8             
/* 00554 80A49414 3C063BA3 */  lui     $a2, 0x3BA3                ## $a2 = 3BA30000
/* 00558 80A49418 44050000 */  mfc1    $a1, $f0                   
/* 0055C 80A4941C 34C6D70A */  ori     $a2, $a2, 0xD70A           ## $a2 = 3BA3D70A
/* 00560 80A49420 E48A02DC */  swc1    $f10, 0x02DC($a0)          ## 000002DC
/* 00564 80A49424 C49202DC */  lwc1    $f18, 0x02DC($a0)          ## 000002DC
/* 00568 80A49428 248402EC */  addiu   $a0, $a0, 0x02EC           ## $a0 = 000002EC
/* 0056C 80A4942C 46120100 */  add.s   $f4, $f0, $f18             
/* 00570 80A49430 46048180 */  add.s   $f6, $f16, $f4             
/* 00574 80A49434 0C01E123 */  jal     Math_SmoothDownscaleMaxF
              
/* 00578 80A49438 E486FFEC */  swc1    $f6, -0x0014($a0)          ## 000002D8
/* 0057C 80A4943C 3C013F80 */  lui     $at, 0x3F80                ## $at = 3F800000
/* 00580 80A49440 44810000 */  mtc1    $at, $f0                   ## $f0 = 1.00
/* 00584 80A49444 3C0544BB */  lui     $a1, 0x44BB                ## $a1 = 44BB0000
/* 00588 80A49448 34A58000 */  ori     $a1, $a1, 0x8000           ## $a1 = 44BB8000
/* 0058C 80A4944C 44060000 */  mfc1    $a2, $f0                   
/* 00590 80A49450 260402F0 */  addiu   $a0, $s0, 0x02F0           ## $a0 = 000002F0
/* 00594 80A49454 0C01E107 */  jal     Math_SmoothScaleMaxF
              
/* 00598 80A49458 3C074316 */  lui     $a3, 0x4316                ## $a3 = 43160000
/* 0059C 80A4945C 860202BE */  lh      $v0, 0x02BE($s0)           ## 000002BE
/* 005A0 80A49460 3C013F80 */  lui     $at, 0x3F80                ## $at = 3F800000
/* 005A4 80A49464 44810000 */  mtc1    $at, $f0                   ## $f0 = 1.00
/* 005A8 80A49468 1040000A */  beq     $v0, $zero, .L80A49494     
/* 005AC 80A4946C 24010001 */  addiu   $at, $zero, 0x0001         ## $at = 00000001
/* 005B0 80A49470 10410032 */  beq     $v0, $at, .L80A4953C       
/* 005B4 80A49474 24010002 */  addiu   $at, $zero, 0x0002         ## $at = 00000002
/* 005B8 80A49478 1041004A */  beq     $v0, $at, .L80A495A4       
/* 005BC 80A4947C 24010003 */  addiu   $at, $zero, 0x0003         ## $at = 00000003
/* 005C0 80A49480 10410057 */  beq     $v0, $at, .L80A495E0       
/* 005C4 80A49484 260402D0 */  addiu   $a0, $s0, 0x02D0           ## $a0 = 000002D0
/* 005C8 80A49488 96020088 */  lhu     $v0, 0x0088($s0)           ## 00000088
/* 005CC 80A4948C 10000061 */  beq     $zero, $zero, .L80A49614   
/* 005D0 80A49490 30420001 */  andi    $v0, $v0, 0x0001           ## $v0 = 00000000
.L80A49494:
/* 005D4 80A49494 96020088 */  lhu     $v0, 0x0088($s0)           ## 00000088
/* 005D8 80A49498 30420001 */  andi    $v0, $v0, 0x0001           ## $v0 = 00000000
/* 005DC 80A4949C 1040005D */  beq     $v0, $zero, .L80A49614     
/* 005E0 80A494A0 00000000 */  nop
/* 005E4 80A494A4 860E001C */  lh      $t6, 0x001C($s0)           ## 0000001C
/* 005E8 80A494A8 24053814 */  addiu   $a1, $zero, 0x3814         ## $a1 = 00003814
/* 005EC 80A494AC 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 005F0 80A494B0 29C10006 */  slti    $at, $t6, 0x0006           
/* 005F4 80A494B4 10200007 */  beq     $at, $zero, .L80A494D4     
/* 005F8 80A494B8 00000000 */  nop
/* 005FC 80A494BC 0C00BE0A */  jal     Audio_PlayActorSound2
              
/* 00600 80A494C0 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 00604 80A494C4 3C013F80 */  lui     $at, 0x3F80                ## $at = 3F800000
/* 00608 80A494C8 44810000 */  mtc1    $at, $f0                   ## $f0 = 1.00
/* 0060C 80A494CC 10000007 */  beq     $zero, $zero, .L80A494EC   
/* 00610 80A494D0 860F001C */  lh      $t7, 0x001C($s0)           ## 0000001C
.L80A494D4:
/* 00614 80A494D4 0C00BE0A */  jal     Audio_PlayActorSound2
              
/* 00618 80A494D8 24053961 */  addiu   $a1, $zero, 0x3961         ## $a1 = 00003961
/* 0061C 80A494DC 3C013F80 */  lui     $at, 0x3F80                ## $at = 3F800000
/* 00620 80A494E0 44810000 */  mtc1    $at, $f0                   ## $f0 = 1.00
/* 00624 80A494E4 00000000 */  nop
/* 00628 80A494E8 860F001C */  lh      $t7, 0x001C($s0)           ## 0000001C
.L80A494EC:
/* 0062C 80A494EC 24180001 */  addiu   $t8, $zero, 0x0001         ## $t8 = 00000001
/* 00630 80A494F0 24190003 */  addiu   $t9, $zero, 0x0003         ## $t9 = 00000003
/* 00634 80A494F4 29E10006 */  slti    $at, $t7, 0x0006           
/* 00638 80A494F8 14200007 */  bne     $at, $zero, .L80A49518     
/* 0063C 80A494FC 260402D0 */  addiu   $a0, $s0, 0x02D0           ## $a0 = 000002D0
/* 00640 80A49500 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 00644 80A49504 0C29262A */  jal     func_80A498A8              
/* 00648 80A49508 8FA50024 */  lw      $a1, 0x0024($sp)           
/* 0064C 80A4950C 96020088 */  lhu     $v0, 0x0088($s0)           ## 00000088
/* 00650 80A49510 10000040 */  beq     $zero, $zero, .L80A49614   
/* 00654 80A49514 30420001 */  andi    $v0, $v0, 0x0001           ## $v0 = 00000000
.L80A49518:
/* 00658 80A49518 44070000 */  mfc1    $a3, $f0                   
/* 0065C 80A4951C A61802BE */  sh      $t8, 0x02BE($s0)           ## 000002BE
/* 00660 80A49520 A61902CC */  sh      $t9, 0x02CC($s0)           ## 000002CC
/* 00664 80A49524 3C053FC0 */  lui     $a1, 0x3FC0                ## $a1 = 3FC00000
/* 00668 80A49528 0C01E107 */  jal     Math_SmoothScaleMaxF
              
/* 0066C 80A4952C 3C063F00 */  lui     $a2, 0x3F00                ## $a2 = 3F000000
/* 00670 80A49530 96020088 */  lhu     $v0, 0x0088($s0)           ## 00000088
/* 00674 80A49534 10000037 */  beq     $zero, $zero, .L80A49614   
/* 00678 80A49538 30420001 */  andi    $v0, $v0, 0x0001           ## $v0 = 00000000
.L80A4953C:
/* 0067C 80A4953C 860802CC */  lh      $t0, 0x02CC($s0)           ## 000002CC
/* 00680 80A49540 24090002 */  addiu   $t1, $zero, 0x0002         ## $t1 = 00000002
/* 00684 80A49544 260402D0 */  addiu   $a0, $s0, 0x02D0           ## $a0 = 000002D0
/* 00688 80A49548 15000010 */  bne     $t0, $zero, .L80A4958C     
/* 0068C 80A4954C 3C053FC0 */  lui     $a1, 0x3FC0                ## $a1 = 3FC00000
/* 00690 80A49550 240A0003 */  addiu   $t2, $zero, 0x0003         ## $t2 = 00000003
/* 00694 80A49554 44070000 */  mfc1    $a3, $f0                   
/* 00698 80A49558 A60902BE */  sh      $t1, 0x02BE($s0)           ## 000002BE
/* 0069C 80A4955C A60A02CC */  sh      $t2, 0x02CC($s0)           ## 000002CC
/* 006A0 80A49560 260402D0 */  addiu   $a0, $s0, 0x02D0           ## $a0 = 000002D0
/* 006A4 80A49564 3C053F40 */  lui     $a1, 0x3F40                ## $a1 = 3F400000
/* 006A8 80A49568 0C01E107 */  jal     Math_SmoothScaleMaxF
              
/* 006AC 80A4956C 3C063F00 */  lui     $a2, 0x3F00                ## $a2 = 3F000000
/* 006B0 80A49570 3C0140A0 */  lui     $at, 0x40A0                ## $at = 40A00000
/* 006B4 80A49574 44814000 */  mtc1    $at, $f8                   ## $f8 = 5.00
/* 006B8 80A49578 3C014000 */  lui     $at, 0x4000                ## $at = 40000000
/* 006BC 80A4957C 44815000 */  mtc1    $at, $f10                  ## $f10 = 2.00
/* 006C0 80A49580 E6080060 */  swc1    $f8, 0x0060($s0)           ## 00000060
/* 006C4 80A49584 10000004 */  beq     $zero, $zero, .L80A49598   
/* 006C8 80A49588 E60A0068 */  swc1    $f10, 0x0068($s0)          ## 00000068
.L80A4958C:
/* 006CC 80A4958C 44070000 */  mfc1    $a3, $f0                   
/* 006D0 80A49590 0C01E107 */  jal     Math_SmoothScaleMaxF
              
/* 006D4 80A49594 3C063F00 */  lui     $a2, 0x3F00                ## $a2 = 3F000000
.L80A49598:
/* 006D8 80A49598 96020088 */  lhu     $v0, 0x0088($s0)           ## 00000088
/* 006DC 80A4959C 1000001D */  beq     $zero, $zero, .L80A49614   
/* 006E0 80A495A0 30420001 */  andi    $v0, $v0, 0x0001           ## $v0 = 00000000
.L80A495A4:
/* 006E4 80A495A4 860B02CC */  lh      $t3, 0x02CC($s0)           ## 000002CC
/* 006E8 80A495A8 240C0003 */  addiu   $t4, $zero, 0x0003         ## $t4 = 00000003
/* 006EC 80A495AC 260402D0 */  addiu   $a0, $s0, 0x02D0           ## $a0 = 000002D0
/* 006F0 80A495B0 15600005 */  bne     $t3, $zero, .L80A495C8     
/* 006F4 80A495B4 3C053F40 */  lui     $a1, 0x3F40                ## $a1 = 3F400000
/* 006F8 80A495B8 240D0050 */  addiu   $t5, $zero, 0x0050         ## $t5 = 00000050
/* 006FC 80A495BC A60C02BE */  sh      $t4, 0x02BE($s0)           ## 000002BE
/* 00700 80A495C0 10000004 */  beq     $zero, $zero, .L80A495D4   
/* 00704 80A495C4 A60D02CC */  sh      $t5, 0x02CC($s0)           ## 000002CC
.L80A495C8:
/* 00708 80A495C8 44070000 */  mfc1    $a3, $f0                   
/* 0070C 80A495CC 0C01E107 */  jal     Math_SmoothScaleMaxF
              
/* 00710 80A495D0 3C063F00 */  lui     $a2, 0x3F00                ## $a2 = 3F000000
.L80A495D4:
/* 00714 80A495D4 96020088 */  lhu     $v0, 0x0088($s0)           ## 00000088
/* 00718 80A495D8 1000000E */  beq     $zero, $zero, .L80A49614   
/* 0071C 80A495DC 30420001 */  andi    $v0, $v0, 0x0001           ## $v0 = 00000000
.L80A495E0:
/* 00720 80A495E0 3C063DCC */  lui     $a2, 0x3DCC                ## $a2 = 3DCC0000
/* 00724 80A495E4 34C6CCCD */  ori     $a2, $a2, 0xCCCD           ## $a2 = 3DCCCCCD
/* 00728 80A495E8 44050000 */  mfc1    $a1, $f0                   
/* 0072C 80A495EC 0C01E107 */  jal     Math_SmoothScaleMaxF
              
/* 00730 80A495F0 00C03821 */  addu    $a3, $a2, $zero            
/* 00734 80A495F4 860E02CC */  lh      $t6, 0x02CC($s0)           ## 000002CC
/* 00738 80A495F8 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 0073C 80A495FC 55C00004 */  bnel    $t6, $zero, .L80A49610     
/* 00740 80A49600 96020088 */  lhu     $v0, 0x0088($s0)           ## 00000088
/* 00744 80A49604 0C29262A */  jal     func_80A498A8              
/* 00748 80A49608 8FA50024 */  lw      $a1, 0x0024($sp)           
/* 0074C 80A4960C 96020088 */  lhu     $v0, 0x0088($s0)           ## 00000088
.L80A49610:
/* 00750 80A49610 30420001 */  andi    $v0, $v0, 0x0001           ## $v0 = 00000000
.L80A49614:
/* 00754 80A49614 10400006 */  beq     $v0, $zero, .L80A49630     
/* 00758 80A49618 26040068 */  addiu   $a0, $s0, 0x0068           ## $a0 = 00000068
/* 0075C 80A4961C 3C053E4C */  lui     $a1, 0x3E4C                ## $a1 = 3E4C0000
/* 00760 80A49620 3C063D4C */  lui     $a2, 0x3D4C                ## $a2 = 3D4C0000
/* 00764 80A49624 34C6CCCD */  ori     $a2, $a2, 0xCCCD           ## $a2 = 3D4CCCCD
/* 00768 80A49628 0C01E123 */  jal     Math_SmoothDownscaleMaxF
              
/* 0076C 80A4962C 34A5CCCD */  ori     $a1, $a1, 0xCCCD           ## $a1 = 3E4CCCCD
.L80A49630:
/* 00770 80A49630 3C0180A5 */  lui     $at, %hi(D_80A4B920)       ## $at = 80A50000
/* 00774 80A49634 C430B920 */  lwc1    $f16, %lo(D_80A4B920)($at) 
/* 00778 80A49638 C6120068 */  lwc1    $f18, 0x0068($s0)          ## 00000068
/* 0077C 80A4963C C60602D4 */  lwc1    $f6, 0x02D4($s0)           ## 000002D4
/* 00780 80A49640 860F0032 */  lh      $t7, 0x0032($s0)           ## 00000032
/* 00784 80A49644 46109102 */  mul.s   $f4, $f18, $f16            
/* 00788 80A49648 A60F00B6 */  sh      $t7, 0x00B6($s0)           ## 000000B6
/* 0078C 80A4964C 46043200 */  add.s   $f8, $f6, $f4              
/* 00790 80A49650 E60802D4 */  swc1    $f8, 0x02D4($s0)           ## 000002D4
/* 00794 80A49654 8FBF001C */  lw      $ra, 0x001C($sp)           
/* 00798 80A49658 8FB00018 */  lw      $s0, 0x0018($sp)           
/* 0079C 80A4965C 27BD0020 */  addiu   $sp, $sp, 0x0020           ## $sp = 00000000
/* 007A0 80A49660 03E00008 */  jr      $ra                        
/* 007A4 80A49664 00000000 */  nop


