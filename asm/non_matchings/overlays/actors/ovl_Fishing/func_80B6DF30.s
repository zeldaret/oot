.rdata
glabel D_80B7B1C0
    .asciz "../z_fishing.c"
    .balign 4

glabel D_80B7B1D0
    .asciz "../z_fishing.c"
    .balign 4

glabel D_80B7B1E0
    .asciz "../z_fishing.c"
    .balign 4

.late_rodata
glabel D_80B7B444
    .float 1500.0
    

glabel D_80B7B448
    .float 0.02
    

glabel D_80B7B44C
    .float 0.02
    

glabel D_80B7B450
    .float -0.01
    

glabel D_80B7B454
    .float 0.01
    

glabel D_80B7B458
    .float 0.025
    

glabel D_80B7B45C
    .float -0.03
    

glabel D_80B7B460
    .float 1.75929188728
    

glabel D_80B7B464
    .float 1.28805303574
    

glabel D_80B7B468
    .float -0.628318488598
    

glabel D_80B7B46C
    .float 0.471238911152
    

glabel D_80B7B470
    .float 0.01
    

glabel D_80B7B474
    .float 3.14159274101
    

glabel D_80B7B478
    .float 0.700000047684
    

.text
glabel func_80B6DF30
/* 04590 80B6DF30 27BDFF30 */  addiu   $sp, $sp, 0xFF30           ## $sp = FFFFFF30
/* 04594 80B6DF34 AFBF0024 */  sw      $ra, 0x0024($sp)           
/* 04598 80B6DF38 AFB10020 */  sw      $s1, 0x0020($sp)           
/* 0459C 80B6DF3C AFB0001C */  sw      $s0, 0x001C($sp)           
/* 045A0 80B6DF40 8C8E1C44 */  lw      $t6, 0x1C44($a0)           ## 00001C44
/* 045A4 80B6DF44 00808825 */  or      $s1, $a0, $zero            ## $s1 = 00000000
/* 045A8 80B6DF48 3C0680B8 */  lui     $a2, %hi(D_80B7B1C0)       ## $a2 = 80B80000
/* 045AC 80B6DF4C AFAE00B8 */  sw      $t6, 0x00B8($sp)           
/* 045B0 80B6DF50 8C850000 */  lw      $a1, 0x0000($a0)           ## 00000000
/* 045B4 80B6DF54 AFB100D0 */  sw      $s1, 0x00D0($sp)           
/* 045B8 80B6DF58 27A400A0 */  addiu   $a0, $sp, 0x00A0           ## $a0 = FFFFFFD0
/* 045BC 80B6DF5C 24C6B1C0 */  addiu   $a2, $a2, %lo(D_80B7B1C0)  ## $a2 = 80B7B1C0
/* 045C0 80B6DF60 24070E10 */  addiu   $a3, $zero, 0x0E10         ## $a3 = 00000E10
/* 045C4 80B6DF64 0C031AB1 */  jal     Graph_OpenDisps              
/* 045C8 80B6DF68 00A08025 */  or      $s0, $a1, $zero            ## $s0 = 00000000
/* 045CC 80B6DF6C 3C0380B8 */  lui     $v1, %hi(D_80B7FDA8)       ## $v1 = 80B80000
/* 045D0 80B6DF70 2463FDA8 */  addiu   $v1, $v1, %lo(D_80B7FDA8)  ## $v1 = 80B7FDA8
/* 045D4 80B6DF74 90620000 */  lbu     $v0, 0x0000($v1)           ## 80B7FDA8
/* 045D8 80B6DF78 10400018 */  beq     $v0, $zero, .L80B6DFDC     
/* 045DC 80B6DF7C 244FFFFF */  addiu   $t7, $v0, 0xFFFF           ## $t7 = FFFFFFFF
/* 045E0 80B6DF80 3C0480B8 */  lui     $a0, %hi(D_80B7A6C0)       ## $a0 = 80B80000
/* 045E4 80B6DF84 A06F0000 */  sb      $t7, 0x0000($v1)           ## 80B7FDA8
/* 045E8 80B6DF88 2484A6C0 */  addiu   $a0, $a0, %lo(D_80B7A6C0)  ## $a0 = 80B7A6C0
/* 045EC 80B6DF8C 3C05420C */  lui     $a1, 0x420C                ## $a1 = 420C0000
/* 045F0 80B6DF90 3C063F80 */  lui     $a2, 0x3F80                ## $a2 = 3F800000
/* 045F4 80B6DF94 0C01E107 */  jal     Math_ApproachF
              
/* 045F8 80B6DF98 3C0742C8 */  lui     $a3, 0x42C8                ## $a3 = 42C80000
/* 045FC 80B6DF9C 3C0480B8 */  lui     $a0, %hi(D_80B7A6BC)       ## $a0 = 80B80000
/* 04600 80B6DFA0 3C05BF4C */  lui     $a1, 0xBF4C                ## $a1 = BF4C0000
/* 04604 80B6DFA4 3C073ECC */  lui     $a3, 0x3ECC                ## $a3 = 3ECC0000
/* 04608 80B6DFA8 34E7CCCD */  ori     $a3, $a3, 0xCCCD           ## $a3 = 3ECCCCCD
/* 0460C 80B6DFAC 34A5CCCD */  ori     $a1, $a1, 0xCCCD           ## $a1 = BF4CCCCD
/* 04610 80B6DFB0 2484A6BC */  addiu   $a0, $a0, %lo(D_80B7A6BC)  ## $a0 = 80B7A6BC
/* 04614 80B6DFB4 0C01E107 */  jal     Math_ApproachF
              
/* 04618 80B6DFB8 3C063F80 */  lui     $a2, 0x3F80                ## $a2 = 3F800000
/* 0461C 80B6DFBC 8FA400B8 */  lw      $a0, 0x00B8($sp)           
/* 04620 80B6DFC0 2405F060 */  addiu   $a1, $zero, 0xF060         ## $a1 = FFFFF060
/* 04624 80B6DFC4 24060002 */  addiu   $a2, $zero, 0x0002         ## $a2 = 00000002
/* 04628 80B6DFC8 24073A98 */  addiu   $a3, $zero, 0x3A98         ## $a3 = 00003A98
/* 0462C 80B6DFCC 0C01E1EF */  jal     Math_ApproachS
              
/* 04630 80B6DFD0 248400B4 */  addiu   $a0, $a0, 0x00B4           ## $a0 = 000000B4
/* 04634 80B6DFD4 10000031 */  beq     $zero, $zero, .L80B6E09C   
/* 04638 80B6DFD8 00000000 */  nop
.L80B6DFDC:
/* 0463C 80B6DFDC 3C1880B8 */  lui     $t8, %hi(D_80B7A694)       ## $t8 = 80B80000
/* 04640 80B6DFE0 8718A694 */  lh      $t8, %lo(D_80B7A694)($t8)  
/* 04644 80B6DFE4 24010004 */  addiu   $at, $zero, 0x0004         ## $at = 00000004
/* 04648 80B6DFE8 00008825 */  or      $s1, $zero, $zero          ## $s1 = 00000000
/* 0464C 80B6DFEC 17010018 */  bne     $t8, $at, .L80B6E050       
/* 04650 80B6DFF0 3C1980B8 */  lui     $t9, %hi(D_80B7E124)       ## $t9 = 80B80000
/* 04654 80B6DFF4 9339E124 */  lbu     $t9, %lo(D_80B7E124)($t9)  
/* 04658 80B6DFF8 3C0480B8 */  lui     $a0, %hi(D_80B7E0AE)       ## $a0 = 80B80000
/* 0465C 80B6DFFC 13200014 */  beq     $t9, $zero, .L80B6E050     
/* 04660 80B6E000 00000000 */  nop
/* 04664 80B6E004 8484E0AE */  lh      $a0, %lo(D_80B7E0AE)($a0)  
/* 04668 80B6E008 00800821 */  addu    $at, $a0, $zero            
/* 0466C 80B6E00C 00042080 */  sll     $a0, $a0,  2               
/* 04670 80B6E010 00812023 */  subu    $a0, $a0, $at              
/* 04674 80B6E014 000420C0 */  sll     $a0, $a0,  3               
/* 04678 80B6E018 00812021 */  addu    $a0, $a0, $at              
/* 0467C 80B6E01C 00042280 */  sll     $a0, $a0, 10               
/* 04680 80B6E020 00042400 */  sll     $a0, $a0, 16               
/* 04684 80B6E024 0C01DE1C */  jal     Math_SinS
              ## sins?
/* 04688 80B6E028 00042403 */  sra     $a0, $a0, 16               
/* 0468C 80B6E02C 3C0180B8 */  lui     $at, %hi(D_80B7B444)       ## $at = 80B80000
/* 04690 80B6E030 C424B444 */  lwc1    $f4, %lo(D_80B7B444)($at)  
/* 04694 80B6E034 46040182 */  mul.s   $f6, $f0, $f4              
/* 04698 80B6E038 4600320D */  trunc.w.s $f8, $f6                   
/* 0469C 80B6E03C 44114000 */  mfc1    $s1, $f8                   
/* 046A0 80B6E040 00000000 */  nop
/* 046A4 80B6E044 00118C00 */  sll     $s1, $s1, 16               
/* 046A8 80B6E048 1000000D */  beq     $zero, $zero, .L80B6E080   
/* 046AC 80B6E04C 00118C03 */  sra     $s1, $s1, 16               
.L80B6E050:
/* 046B0 80B6E050 3C0480B8 */  lui     $a0, %hi(D_80B7A6C0)       ## $a0 = 80B80000
/* 046B4 80B6E054 3C053DCC */  lui     $a1, 0x3DCC                ## $a1 = 3DCC0000
/* 046B8 80B6E058 34A5CCCD */  ori     $a1, $a1, 0xCCCD           ## $a1 = 3DCCCCCD
/* 046BC 80B6E05C 2484A6C0 */  addiu   $a0, $a0, %lo(D_80B7A6C0)  ## $a0 = 80B7A6C0
/* 046C0 80B6E060 0C01E123 */  jal     Math_ApproachZeroF
              
/* 046C4 80B6E064 3C064120 */  lui     $a2, 0x4120                ## $a2 = 41200000
/* 046C8 80B6E068 3C0480B8 */  lui     $a0, %hi(D_80B7A6BC)       ## $a0 = 80B80000
/* 046CC 80B6E06C 3C063D4C */  lui     $a2, 0x3D4C                ## $a2 = 3D4C0000
/* 046D0 80B6E070 34C6CCCD */  ori     $a2, $a2, 0xCCCD           ## $a2 = 3D4CCCCD
/* 046D4 80B6E074 2484A6BC */  addiu   $a0, $a0, %lo(D_80B7A6BC)  ## $a0 = 80B7A6BC
/* 046D8 80B6E078 0C01E123 */  jal     Math_ApproachZeroF
              
/* 046DC 80B6E07C 3C053F80 */  lui     $a1, 0x3F80                ## $a1 = 3F800000
.L80B6E080:
/* 046E0 80B6E080 8FA400B8 */  lw      $a0, 0x00B8($sp)           
/* 046E4 80B6E084 00112C00 */  sll     $a1, $s1, 16               
/* 046E8 80B6E088 00052C03 */  sra     $a1, $a1, 16               
/* 046EC 80B6E08C 24060005 */  addiu   $a2, $zero, 0x0005         ## $a2 = 00000005
/* 046F0 80B6E090 240703E8 */  addiu   $a3, $zero, 0x03E8         ## $a3 = 000003E8
/* 046F4 80B6E094 0C01E1EF */  jal     Math_ApproachS
              
/* 046F8 80B6E098 248400B4 */  addiu   $a0, $a0, 0x00B4           ## $a0 = 000000B4
.L80B6E09C:
/* 046FC 80B6E09C 3C0280B8 */  lui     $v0, %hi(D_80B7A694)       ## $v0 = 80B80000
/* 04700 80B6E0A0 8442A694 */  lh      $v0, %lo(D_80B7A694)($v0)  
/* 04704 80B6E0A4 24010003 */  addiu   $at, $zero, 0x0003         ## $at = 00000003
/* 04708 80B6E0A8 10410003 */  beq     $v0, $at, .L80B6E0B8       
/* 0470C 80B6E0AC 24010004 */  addiu   $at, $zero, 0x0004         ## $at = 00000004
/* 04710 80B6E0B0 14410091 */  bne     $v0, $at, .L80B6E2F8       
/* 04714 80B6E0B4 8FA400B8 */  lw      $a0, 0x00B8($sp)           
.L80B6E0B8:
/* 04718 80B6E0B8 8FB100D0 */  lw      $s1, 0x00D0($sp)           
/* 0471C 80B6E0BC 82290028 */  lb      $t1, 0x0028($s1)           ## 00000028
/* 04720 80B6E0C0 26310014 */  addiu   $s1, $s1, 0x0014           ## $s1 = 00000014
/* 04724 80B6E0C4 15200007 */  bne     $t1, $zero, .L80B6E0E4     
/* 04728 80B6E0C8 3C0A80B8 */  lui     $t2, %hi(D_80B7A6C4)       ## $t2 = 80B80000
/* 0472C 80B6E0CC 854AA6C4 */  lh      $t2, %lo(D_80B7A6C4)($t2)  
/* 04730 80B6E0D0 51400005 */  beql    $t2, $zero, .L80B6E0E8     
/* 04734 80B6E0D4 82220015 */  lb      $v0, 0x0015($s1)           ## 00000029
/* 04738 80B6E0D8 44800000 */  mtc1    $zero, $f0                 ## $f0 = 0.00
/* 0473C 80B6E0DC 3C0180B8 */  lui     $at, %hi(D_80B7A6B0)       ## $at = 80B80000
/* 04740 80B6E0E0 E420A6B0 */  swc1    $f0, %lo(D_80B7A6B0)($at)  
.L80B6E0E4:
/* 04744 80B6E0E4 82220015 */  lb      $v0, 0x0015($s1)           ## 00000029
.L80B6E0E8:
/* 04748 80B6E0E8 44800000 */  mtc1    $zero, $f0                 ## $f0 = 0.00
/* 0474C 80B6E0EC 14400007 */  bne     $v0, $zero, .L80B6E10C     
/* 04750 80B6E0F0 3C0B80B8 */  lui     $t3, %hi(D_80B7A6C8)       ## $t3 = 80B80000
/* 04754 80B6E0F4 856BA6C8 */  lh      $t3, %lo(D_80B7A6C8)($t3)  
/* 04758 80B6E0F8 3C0180B8 */  lui     $at, %hi(D_80B7A6B4)       ## $at = 80B80000
/* 0475C 80B6E0FC 51600004 */  beql    $t3, $zero, .L80B6E110     
/* 04760 80B6E100 44828000 */  mtc1    $v0, $f16                  ## $f16 = -0.00
/* 04764 80B6E104 E420A6B4 */  swc1    $f0, %lo(D_80B7A6B4)($at)  
/* 04768 80B6E108 82220015 */  lb      $v0, 0x0015($s1)           ## 00000029
.L80B6E10C:
/* 0476C 80B6E10C 44828000 */  mtc1    $v0, $f16                  ## $f16 = -0.00
.L80B6E110:
/* 04770 80B6E110 3C0180B8 */  lui     $at, %hi(D_80B7B448)       ## $at = 80B80000
/* 04774 80B6E114 C424B448 */  lwc1    $f4, %lo(D_80B7B448)($at)  
/* 04778 80B6E118 468084A0 */  cvt.s.w $f18, $f16                 
/* 0477C 80B6E11C 8FA300B8 */  lw      $v1, 0x00B8($sp)           
/* 04780 80B6E120 3C063E99 */  lui     $a2, 0x3E99                ## $a2 = 3E990000
/* 04784 80B6E124 34C6999A */  ori     $a2, $a2, 0x999A           ## $a2 = 3E99999A
/* 04788 80B6E128 C46A085C */  lwc1    $f10, 0x085C($v1)          ## 0000085C
/* 0478C 80B6E12C E7A00010 */  swc1    $f0, 0x0010($sp)           
/* 04790 80B6E130 46049182 */  mul.s   $f6, $f18, $f4             
/* 04794 80B6E134 3C0740A0 */  lui     $a3, 0x40A0                ## $a3 = 40A00000
/* 04798 80B6E138 2464085C */  addiu   $a0, $v1, 0x085C           ## $a0 = 0000085C
/* 0479C 80B6E13C E7AA00C8 */  swc1    $f10, 0x00C8($sp)          
/* 047A0 80B6E140 44053000 */  mfc1    $a1, $f6                   
/* 047A4 80B6E144 0C01E0C4 */  jal     Math_SmoothStepToF
              
/* 047A8 80B6E148 00000000 */  nop
/* 047AC 80B6E14C 8FA200B8 */  lw      $v0, 0x00B8($sp)           
/* 047B0 80B6E150 C7AA00C8 */  lwc1    $f10, 0x00C8($sp)          
/* 047B4 80B6E154 3C0180B8 */  lui     $at, %hi(D_80B7B44C)       ## $at = 80B80000
/* 047B8 80B6E158 C448085C */  lwc1    $f8, 0x085C($v0)           ## 0000085C
/* 047BC 80B6E15C C426B44C */  lwc1    $f6, %lo(D_80B7B44C)($at)  
/* 047C0 80B6E160 3C063E99 */  lui     $a2, 0x3E99                ## $a2 = 3E990000
/* 047C4 80B6E164 460A4401 */  sub.s   $f16, $f8, $f10            
/* 047C8 80B6E168 44805000 */  mtc1    $zero, $f10                ## $f10 = 0.00
/* 047CC 80B6E16C 34C6999A */  ori     $a2, $a2, 0x999A           ## $a2 = 3E99999A
/* 047D0 80B6E170 3C0740A0 */  lui     $a3, 0x40A0                ## $a3 = 40A00000
/* 047D4 80B6E174 E7B000C8 */  swc1    $f16, 0x00C8($sp)          
/* 047D8 80B6E178 822C0014 */  lb      $t4, 0x0014($s1)           ## 00000028
/* 047DC 80B6E17C C44C0858 */  lwc1    $f12, 0x0858($v0)          ## 00000858
/* 047E0 80B6E180 24440858 */  addiu   $a0, $v0, 0x0858           ## $a0 = 00000858
/* 047E4 80B6E184 448C9000 */  mtc1    $t4, $f18                  ## $f18 = 0.00
/* 047E8 80B6E188 E7AA0010 */  swc1    $f10, 0x0010($sp)          
/* 047EC 80B6E18C E7AC00C4 */  swc1    $f12, 0x00C4($sp)          
/* 047F0 80B6E190 46809120 */  cvt.s.w $f4, $f18                  
/* 047F4 80B6E194 46062202 */  mul.s   $f8, $f4, $f6              
/* 047F8 80B6E198 44054000 */  mfc1    $a1, $f8                   
/* 047FC 80B6E19C 0C01E0C4 */  jal     Math_SmoothStepToF
              
/* 04800 80B6E1A0 00000000 */  nop
/* 04804 80B6E1A4 8FA200B8 */  lw      $v0, 0x00B8($sp)           
/* 04808 80B6E1A8 3C013F80 */  lui     $at, 0x3F80                ## $at = 3F800000
/* 0480C 80B6E1AC 44817000 */  mtc1    $at, $f14                  ## $f14 = 1.00
/* 04810 80B6E1B0 C4420858 */  lwc1    $f2, 0x0858($v0)           ## 00000858
/* 04814 80B6E1B4 3C01BF80 */  lui     $at, 0xBF80                ## $at = BF800000
/* 04818 80B6E1B8 44810000 */  mtc1    $at, $f0                   ## $f0 = -1.00
/* 0481C 80B6E1BC 4602703C */  c.lt.s  $f14, $f2                  
/* 04820 80B6E1C0 C7AC00C4 */  lwc1    $f12, 0x00C4($sp)          
/* 04824 80B6E1C4 3C01428C */  lui     $at, 0x428C                ## $at = 428C0000
/* 04828 80B6E1C8 44813000 */  mtc1    $at, $f6                   ## $f6 = 70.00
/* 0482C 80B6E1CC 45000002 */  bc1f    .L80B6E1D8                 
/* 04830 80B6E1D0 460C1301 */  sub.s   $f12, $f2, $f12            
/* 04834 80B6E1D4 E44E0858 */  swc1    $f14, 0x0858($v0)          ## 00000858
.L80B6E1D8:
/* 04838 80B6E1D8 C450085C */  lwc1    $f16, 0x085C($v0)          ## 0000085C
/* 0483C 80B6E1DC 46066202 */  mul.s   $f8, $f12, $f6             
/* 04840 80B6E1E0 3C0180B8 */  lui     $at, %hi(D_80B7B450)       ## $at = 80B80000
/* 04844 80B6E1E4 4610703C */  c.lt.s  $f14, $f16                 
/* 04848 80B6E1E8 00000000 */  nop
/* 0484C 80B6E1EC 45020003 */  bc1fl   .L80B6E1FC                 
/* 04850 80B6E1F0 C4520858 */  lwc1    $f18, 0x0858($v0)          ## 00000858
/* 04854 80B6E1F4 E44E085C */  swc1    $f14, 0x085C($v0)          ## 0000085C
/* 04858 80B6E1F8 C4520858 */  lwc1    $f18, 0x0858($v0)          ## 00000858
.L80B6E1FC:
/* 0485C 80B6E1FC 4600903C */  c.lt.s  $f18, $f0                  
/* 04860 80B6E200 00000000 */  nop
/* 04864 80B6E204 45020003 */  bc1fl   .L80B6E214                 
/* 04868 80B6E208 C444085C */  lwc1    $f4, 0x085C($v0)           ## 0000085C
/* 0486C 80B6E20C E4400858 */  swc1    $f0, 0x0858($v0)           ## 00000858
/* 04870 80B6E210 C444085C */  lwc1    $f4, 0x085C($v0)           ## 0000085C
.L80B6E214:
/* 04874 80B6E214 4600203C */  c.lt.s  $f4, $f0                   
/* 04878 80B6E218 00000000 */  nop
/* 0487C 80B6E21C 45000002 */  bc1f    .L80B6E228                 
/* 04880 80B6E220 00000000 */  nop
/* 04884 80B6E224 E440085C */  swc1    $f0, 0x085C($v0)           ## 0000085C
.L80B6E228:
/* 04888 80B6E228 C42AB450 */  lwc1    $f10, %lo(D_80B7B450)($at) 
/* 0488C 80B6E22C 3C0480B8 */  lui     $a0, %hi(D_80B7A6A8)       ## $a0 = 80B80000
/* 04890 80B6E230 44067000 */  mfc1    $a2, $f14                  
/* 04894 80B6E234 460A4402 */  mul.s   $f16, $f8, $f10            
/* 04898 80B6E238 3C0780B8 */  lui     $a3, %hi(D_80B7A6B0)       ## $a3 = 80B80000
/* 0489C 80B6E23C 8CE7A6B0 */  lw      $a3, %lo(D_80B7A6B0)($a3)  
/* 048A0 80B6E240 2484A6A8 */  addiu   $a0, $a0, %lo(D_80B7A6A8)  ## $a0 = 80B7A6A8
/* 048A4 80B6E244 44058000 */  mfc1    $a1, $f16                  
/* 048A8 80B6E248 0C01E107 */  jal     Math_ApproachF
              
/* 048AC 80B6E24C 00000000 */  nop
/* 048B0 80B6E250 3C013F80 */  lui     $at, 0x3F80                ## $at = 3F800000
/* 048B4 80B6E254 44810000 */  mtc1    $at, $f0                   ## $f0 = 1.00
/* 048B8 80B6E258 3C0480B8 */  lui     $a0, %hi(D_80B7A6B0)       ## $a0 = 80B80000
/* 048BC 80B6E25C 3C073DCC */  lui     $a3, 0x3DCC                ## $a3 = 3DCC0000
/* 048C0 80B6E260 44050000 */  mfc1    $a1, $f0                   
/* 048C4 80B6E264 44060000 */  mfc1    $a2, $f0                   
/* 048C8 80B6E268 34E7CCCD */  ori     $a3, $a3, 0xCCCD           ## $a3 = 3DCCCCCD
/* 048CC 80B6E26C 0C01E107 */  jal     Math_ApproachF
              
/* 048D0 80B6E270 2484A6B0 */  addiu   $a0, $a0, %lo(D_80B7A6B0)  ## $a0 = 80B7A6B0
/* 048D4 80B6E274 3C01428C */  lui     $at, 0x428C                ## $at = 428C0000
/* 048D8 80B6E278 44812000 */  mtc1    $at, $f4                   ## $f4 = 70.00
/* 048DC 80B6E27C C7B200C8 */  lwc1    $f18, 0x00C8($sp)          
/* 048E0 80B6E280 3C0180B8 */  lui     $at, %hi(D_80B7B454)       ## $at = 80B80000
/* 048E4 80B6E284 C428B454 */  lwc1    $f8, %lo(D_80B7B454)($at)  
/* 048E8 80B6E288 46049182 */  mul.s   $f6, $f18, $f4             
/* 048EC 80B6E28C 3C0480B8 */  lui     $a0, %hi(D_80B7A6AC)       ## $a0 = 80B80000
/* 048F0 80B6E290 3C0780B8 */  lui     $a3, %hi(D_80B7A6B4)       ## $a3 = 80B80000
/* 048F4 80B6E294 8CE7A6B4 */  lw      $a3, %lo(D_80B7A6B4)($a3)  
/* 048F8 80B6E298 2484A6AC */  addiu   $a0, $a0, %lo(D_80B7A6AC)  ## $a0 = 80B7A6AC
/* 048FC 80B6E29C 3C063F80 */  lui     $a2, 0x3F80                ## $a2 = 3F800000
/* 04900 80B6E2A0 46083282 */  mul.s   $f10, $f6, $f8             
/* 04904 80B6E2A4 44055000 */  mfc1    $a1, $f10                  
/* 04908 80B6E2A8 0C01E107 */  jal     Math_ApproachF
              
/* 0490C 80B6E2AC 00000000 */  nop
/* 04910 80B6E2B0 3C013F80 */  lui     $at, 0x3F80                ## $at = 3F800000
/* 04914 80B6E2B4 44810000 */  mtc1    $at, $f0                   ## $f0 = 1.00
/* 04918 80B6E2B8 3C0480B8 */  lui     $a0, %hi(D_80B7A6B4)       ## $a0 = 80B80000
/* 0491C 80B6E2BC 3C073DCC */  lui     $a3, 0x3DCC                ## $a3 = 3DCC0000
/* 04920 80B6E2C0 44050000 */  mfc1    $a1, $f0                   
/* 04924 80B6E2C4 44060000 */  mfc1    $a2, $f0                   
/* 04928 80B6E2C8 34E7CCCD */  ori     $a3, $a3, 0xCCCD           ## $a3 = 3DCCCCCD
/* 0492C 80B6E2CC 0C01E107 */  jal     Math_ApproachF
              
/* 04930 80B6E2D0 2484A6B4 */  addiu   $a0, $a0, %lo(D_80B7A6B4)  ## $a0 = 80B7A6B4
/* 04934 80B6E2D4 3C1180B8 */  lui     $s1, %hi(D_80B7A6B8)       ## $s1 = 80B80000
/* 04938 80B6E2D8 2631A6B8 */  addiu   $s1, $s1, %lo(D_80B7A6B8)  ## $s1 = 80B7A6B8
/* 0493C 80B6E2DC 3C063D4C */  lui     $a2, 0x3D4C                ## $a2 = 3D4C0000
/* 04940 80B6E2E0 34C6CCCD */  ori     $a2, $a2, 0xCCCD           ## $a2 = 3D4CCCCD
/* 04944 80B6E2E4 02202025 */  or      $a0, $s1, $zero            ## $a0 = 80B7A6B8
/* 04948 80B6E2E8 0C01E123 */  jal     Math_ApproachZeroF
              
/* 0494C 80B6E2EC 3C053F80 */  lui     $a1, 0x3F80                ## $a1 = 3F800000
/* 04950 80B6E2F0 10000047 */  beq     $zero, $zero, .L80B6E410   
/* 04954 80B6E2F4 8FAD00D0 */  lw      $t5, 0x00D0($sp)           
.L80B6E2F8:
/* 04958 80B6E2F8 3C063DCC */  lui     $a2, 0x3DCC                ## $a2 = 3DCC0000
/* 0495C 80B6E2FC 34C6CCCD */  ori     $a2, $a2, 0xCCCD           ## $a2 = 3DCCCCCD
/* 04960 80B6E300 2484085C */  addiu   $a0, $a0, 0x085C           ## $a0 = 0000085C
/* 04964 80B6E304 0C01E123 */  jal     Math_ApproachZeroF
              
/* 04968 80B6E308 3C053F80 */  lui     $a1, 0x3F80                ## $a1 = 3F800000
/* 0496C 80B6E30C 8FA400B8 */  lw      $a0, 0x00B8($sp)           
/* 04970 80B6E310 3C063DCC */  lui     $a2, 0x3DCC                ## $a2 = 3DCC0000
/* 04974 80B6E314 34C6CCCD */  ori     $a2, $a2, 0xCCCD           ## $a2 = 3DCCCCCD
/* 04978 80B6E318 3C053F80 */  lui     $a1, 0x3F80                ## $a1 = 3F800000
/* 0497C 80B6E31C 0C01E123 */  jal     Math_ApproachZeroF
              
/* 04980 80B6E320 24840858 */  addiu   $a0, $a0, 0x0858           ## $a0 = 00000858
/* 04984 80B6E324 3C0480B8 */  lui     $a0, %hi(D_80B7E0AE)       ## $a0 = 80B80000
/* 04988 80B6E328 8484E0AE */  lh      $a0, %lo(D_80B7E0AE)($a0)  
/* 0498C 80B6E32C 00800821 */  addu    $at, $a0, $zero            
/* 04990 80B6E330 00042080 */  sll     $a0, $a0,  2               
/* 04994 80B6E334 00812023 */  subu    $a0, $a0, $at              
/* 04998 80B6E338 00042100 */  sll     $a0, $a0,  4               
/* 0499C 80B6E33C 00812023 */  subu    $a0, $a0, $at              
/* 049A0 80B6E340 000420C0 */  sll     $a0, $a0,  3               
/* 049A4 80B6E344 00812023 */  subu    $a0, $a0, $at              
/* 049A8 80B6E348 000420C0 */  sll     $a0, $a0,  3               
/* 049AC 80B6E34C 00042400 */  sll     $a0, $a0, 16               
/* 049B0 80B6E350 0C01DE1C */  jal     Math_SinS
              ## sins?
/* 049B4 80B6E354 00042403 */  sra     $a0, $a0, 16               
/* 049B8 80B6E358 3C0180B8 */  lui     $at, %hi(D_80B7B458)       ## $at = 80B80000
/* 049BC 80B6E35C C430B458 */  lwc1    $f16, %lo(D_80B7B458)($at) 
/* 049C0 80B6E360 3C0180B8 */  lui     $at, %hi(D_80B7B45C)       ## $at = 80B80000
/* 049C4 80B6E364 C424B45C */  lwc1    $f4, %lo(D_80B7B45C)($at)  
/* 049C8 80B6E368 46100482 */  mul.s   $f18, $f0, $f16            
/* 049CC 80B6E36C 3C0480B8 */  lui     $a0, %hi(D_80B7A6AC)       ## $a0 = 80B80000
/* 049D0 80B6E370 3C073D4C */  lui     $a3, 0x3D4C                ## $a3 = 3D4C0000
/* 049D4 80B6E374 34E7CCCD */  ori     $a3, $a3, 0xCCCD           ## $a3 = 3D4CCCCD
/* 049D8 80B6E378 2484A6AC */  addiu   $a0, $a0, %lo(D_80B7A6AC)  ## $a0 = 80B7A6AC
/* 049DC 80B6E37C 3C063F80 */  lui     $a2, 0x3F80                ## $a2 = 3F800000
/* 049E0 80B6E380 46049180 */  add.s   $f6, $f18, $f4             
/* 049E4 80B6E384 44053000 */  mfc1    $a1, $f6                   
/* 049E8 80B6E388 0C01E107 */  jal     Math_ApproachF
              
/* 049EC 80B6E38C 00000000 */  nop
/* 049F0 80B6E390 3C0480B8 */  lui     $a0, %hi(D_80B7A6A8)       ## $a0 = 80B80000
/* 049F4 80B6E394 3C063D4C */  lui     $a2, 0x3D4C                ## $a2 = 3D4C0000
/* 049F8 80B6E398 34C6CCCD */  ori     $a2, $a2, 0xCCCD           ## $a2 = 3D4CCCCD
/* 049FC 80B6E39C 2484A6A8 */  addiu   $a0, $a0, %lo(D_80B7A6A8)  ## $a0 = 80B7A6A8
/* 04A00 80B6E3A0 0C01E123 */  jal     Math_ApproachZeroF
              
/* 04A04 80B6E3A4 3C053F80 */  lui     $a1, 0x3F80                ## $a1 = 3F800000
/* 04A08 80B6E3A8 3C0280B8 */  lui     $v0, %hi(D_80B7E0B4)       ## $v0 = 80B80000
/* 04A0C 80B6E3AC 8442E0B4 */  lh      $v0, %lo(D_80B7E0B4)($v0)  
/* 04A10 80B6E3B0 3C1180B8 */  lui     $s1, %hi(D_80B7A6B8)       ## $s1 = 80B80000
/* 04A14 80B6E3B4 2631A6B8 */  addiu   $s1, $s1, %lo(D_80B7A6B8)  ## $s1 = 80B7A6B8
/* 04A18 80B6E3B8 28410013 */  slti    $at, $v0, 0x0013           
/* 04A1C 80B6E3BC 1420000E */  bne     $at, $zero, .L80B6E3F8     
/* 04A20 80B6E3C0 02202025 */  or      $a0, $s1, $zero            ## $a0 = 80B7A6B8
/* 04A24 80B6E3C4 28410019 */  slti    $at, $v0, 0x0019           
/* 04A28 80B6E3C8 1020000B */  beq     $at, $zero, .L80B6E3F8     
/* 04A2C 80B6E3CC 3C053F4C */  lui     $a1, 0x3F4C                ## $a1 = 3F4C0000
/* 04A30 80B6E3D0 3C1180B8 */  lui     $s1, %hi(D_80B7A6B8)       ## $s1 = 80B80000
/* 04A34 80B6E3D4 2631A6B8 */  addiu   $s1, $s1, %lo(D_80B7A6B8)  ## $s1 = 80B7A6B8
/* 04A38 80B6E3D8 3C073E4C */  lui     $a3, 0x3E4C                ## $a3 = 3E4C0000
/* 04A3C 80B6E3DC 34E7CCCD */  ori     $a3, $a3, 0xCCCD           ## $a3 = 3E4CCCCD
/* 04A40 80B6E3E0 02202025 */  or      $a0, $s1, $zero            ## $a0 = 80B7A6B8
/* 04A44 80B6E3E4 34A5CCCD */  ori     $a1, $a1, 0xCCCD           ## $a1 = 3F4CCCCD
/* 04A48 80B6E3E8 0C01E107 */  jal     Math_ApproachF
              
/* 04A4C 80B6E3EC 3C063F80 */  lui     $a2, 0x3F80                ## $a2 = 3F800000
/* 04A50 80B6E3F0 10000007 */  beq     $zero, $zero, .L80B6E410   
/* 04A54 80B6E3F4 8FAD00D0 */  lw      $t5, 0x00D0($sp)           
.L80B6E3F8:
/* 04A58 80B6E3F8 3C073ECC */  lui     $a3, 0x3ECC                ## $a3 = 3ECC0000
/* 04A5C 80B6E3FC 34E7CCCD */  ori     $a3, $a3, 0xCCCD           ## $a3 = 3ECCCCCD
/* 04A60 80B6E400 24050000 */  addiu   $a1, $zero, 0x0000         ## $a1 = 00000000
/* 04A64 80B6E404 0C01E107 */  jal     Math_ApproachF
              
/* 04A68 80B6E408 3C063F80 */  lui     $a2, 0x3F80                ## $a2 = 3F800000
/* 04A6C 80B6E40C 8FAD00D0 */  lw      $t5, 0x00D0($sp)           
.L80B6E410:
/* 04A70 80B6E410 0C024F46 */  jal     func_80093D18              
/* 04A74 80B6E414 8DA40000 */  lw      $a0, 0x0000($t5)           ## 00000000
/* 04A78 80B6E418 8E0202C0 */  lw      $v0, 0x02C0($s0)           ## 000002C0
/* 04A7C 80B6E41C 3C180601 */  lui     $t8, %hi(D_060113D0)                ## $t8 = 06010000
/* 04A80 80B6E420 271813D0 */  addiu   $t8, $t8, %lo(D_060113D0)           ## $t8 = 060113D0
/* 04A84 80B6E424 244E0008 */  addiu   $t6, $v0, 0x0008           ## $t6 = 00000008
/* 04A88 80B6E428 AE0E02C0 */  sw      $t6, 0x02C0($s0)           ## 000002C0
/* 04A8C 80B6E42C 3C0FDE00 */  lui     $t7, 0xDE00                ## $t7 = DE000000
/* 04A90 80B6E430 AC4F0000 */  sw      $t7, 0x0000($v0)           ## 00000000
/* 04A94 80B6E434 AC580004 */  sw      $t8, 0x0004($v0)           ## 00000004
/* 04A98 80B6E438 8E0202C0 */  lw      $v0, 0x02C0($s0)           ## 000002C0
/* 04A9C 80B6E43C 3C09FF9B */  lui     $t1, 0xFF9B                ## $t1 = FF9B0000
/* 04AA0 80B6E440 352900FF */  ori     $t1, $t1, 0x00FF           ## $t1 = FF9B00FF
/* 04AA4 80B6E444 24590008 */  addiu   $t9, $v0, 0x0008           ## $t9 = 00000008
/* 04AA8 80B6E448 AE1902C0 */  sw      $t9, 0x02C0($s0)           ## 000002C0
/* 04AAC 80B6E44C 3C08FA00 */  lui     $t0, 0xFA00                ## $t0 = FA000000
/* 04AB0 80B6E450 AC480000 */  sw      $t0, 0x0000($v0)           ## 00000000
/* 04AB4 80B6E454 AC490004 */  sw      $t1, 0x0004($v0)           ## 00000004
/* 04AB8 80B6E458 8FA400B8 */  lw      $a0, 0x00B8($sp)           
/* 04ABC 80B6E45C 00002825 */  or      $a1, $zero, $zero          ## $a1 = 00000000
/* 04AC0 80B6E460 0C03424C */  jal     Matrix_Mult              
/* 04AC4 80B6E464 248409E0 */  addiu   $a0, $a0, 0x09E0           ## $a0 = 000009E0
/* 04AC8 80B6E468 3C0A80B8 */  lui     $t2, %hi(D_80B7E075)       ## $t2 = 80B80000
/* 04ACC 80B6E46C 914AE075 */  lbu     $t2, %lo(D_80B7E075)($t2)  
/* 04AD0 80B6E470 24010001 */  addiu   $at, $zero, 0x0001         ## $at = 00000001
/* 04AD4 80B6E474 24060000 */  addiu   $a2, $zero, 0x0000         ## $a2 = 00000000
/* 04AD8 80B6E478 5141000A */  beql    $t2, $at, .L80B6E4A4       
/* 04ADC 80B6E47C 3C014366 */  lui     $at, 0x4366                ## $at = 43660000
/* 04AE0 80B6E480 44806000 */  mtc1    $zero, $f12                ## $f12 = 0.00
/* 04AE4 80B6E484 3C0143C8 */  lui     $at, 0x43C8                ## $at = 43C80000
/* 04AE8 80B6E488 44817000 */  mtc1    $at, $f14                  ## $f14 = 400.00
/* 04AEC 80B6E48C 44066000 */  mfc1    $a2, $f12                  
/* 04AF0 80B6E490 0C034261 */  jal     Matrix_Translate              
/* 04AF4 80B6E494 24070001 */  addiu   $a3, $zero, 0x0001         ## $a3 = 00000001
/* 04AF8 80B6E498 10000006 */  beq     $zero, $zero, .L80B6E4B4   
/* 04AFC 80B6E49C 00000000 */  nop
/* 04B00 80B6E4A0 3C014366 */  lui     $at, 0x4366                ## $at = 43660000
.L80B6E4A4:
/* 04B04 80B6E4A4 44817000 */  mtc1    $at, $f14                  ## $f14 = 230.00
/* 04B08 80B6E4A8 44806000 */  mtc1    $zero, $f12                ## $f12 = 0.00
/* 04B0C 80B6E4AC 0C034261 */  jal     Matrix_Translate              
/* 04B10 80B6E4B0 24070001 */  addiu   $a3, $zero, 0x0001         ## $a3 = 00000001
.L80B6E4B4:
/* 04B14 80B6E4B4 3C0B80B8 */  lui     $t3, %hi(D_80B7A694)       ## $t3 = 80B80000
/* 04B18 80B6E4B8 856BA694 */  lh      $t3, %lo(D_80B7A694)($t3)  
/* 04B1C 80B6E4BC 24010005 */  addiu   $at, $zero, 0x0005         ## $at = 00000005
/* 04B20 80B6E4C0 24050001 */  addiu   $a1, $zero, 0x0001         ## $a1 = 00000001
/* 04B24 80B6E4C4 15610006 */  bne     $t3, $at, .L80B6E4E0       
/* 04B28 80B6E4C8 3C0180B8 */  lui     $at, %hi(D_80B7B460)       ## $at = 80B80000
/* 04B2C 80B6E4CC C42CB460 */  lwc1    $f12, %lo(D_80B7B460)($at) 
/* 04B30 80B6E4D0 0C034348 */  jal     Matrix_RotateY              
/* 04B34 80B6E4D4 24050001 */  addiu   $a1, $zero, 0x0001         ## $a1 = 00000001
/* 04B38 80B6E4D8 10000004 */  beq     $zero, $zero, .L80B6E4EC   
/* 04B3C 80B6E4DC 00000000 */  nop
.L80B6E4E0:
/* 04B40 80B6E4E0 3C0180B8 */  lui     $at, %hi(D_80B7B464)       ## $at = 80B80000
/* 04B44 80B6E4E4 0C034348 */  jal     Matrix_RotateY              
/* 04B48 80B6E4E8 C42CB464 */  lwc1    $f12, %lo(D_80B7B464)($at) 
.L80B6E4EC:
/* 04B4C 80B6E4EC 3C0180B8 */  lui     $at, %hi(D_80B7B468)       ## $at = 80B80000
/* 04B50 80B6E4F0 C42CB468 */  lwc1    $f12, %lo(D_80B7B468)($at) 
/* 04B54 80B6E4F4 0C0342DC */  jal     Matrix_RotateX              
/* 04B58 80B6E4F8 24050001 */  addiu   $a1, $zero, 0x0001         ## $a1 = 00000001
/* 04B5C 80B6E4FC 8FAC00B8 */  lw      $t4, 0x00B8($sp)           
/* 04B60 80B6E500 3C013F00 */  lui     $at, 0x3F00                ## $at = 3F000000
/* 04B64 80B6E504 44815000 */  mtc1    $at, $f10                  ## $f10 = 0.50
/* 04B68 80B6E508 C5880858 */  lwc1    $f8, 0x0858($t4)           ## 00000858
/* 04B6C 80B6E50C 3C0180B8 */  lui     $at, %hi(D_80B7B46C)       ## $at = 80B80000
/* 04B70 80B6E510 C432B46C */  lwc1    $f18, %lo(D_80B7B46C)($at) 
/* 04B74 80B6E514 460A4402 */  mul.s   $f16, $f8, $f10            
/* 04B78 80B6E518 24050001 */  addiu   $a1, $zero, 0x0001         ## $a1 = 00000001
/* 04B7C 80B6E51C 0C0343B5 */  jal     Matrix_RotateZ              
/* 04B80 80B6E520 46128300 */  add.s   $f12, $f16, $f18           
/* 04B84 80B6E524 3C0180B8 */  lui     $at, %hi(D_80B7A6C0)       ## $at = 80B80000
/* 04B88 80B6E528 C424A6C0 */  lwc1    $f4, %lo(D_80B7A6C0)($at)  
/* 04B8C 80B6E52C 3C0141A0 */  lui     $at, 0x41A0                ## $at = 41A00000
/* 04B90 80B6E530 44813000 */  mtc1    $at, $f6                   ## $f6 = 20.00
/* 04B94 80B6E534 3C0180B8 */  lui     $at, %hi(D_80B7B470)       ## $at = 80B80000
/* 04B98 80B6E538 C42AB470 */  lwc1    $f10, %lo(D_80B7B470)($at) 
/* 04B9C 80B6E53C 46062200 */  add.s   $f8, $f4, $f6              
/* 04BA0 80B6E540 3C0180B8 */  lui     $at, %hi(D_80B7B474)       ## $at = 80B80000
/* 04BA4 80B6E544 C432B474 */  lwc1    $f18, %lo(D_80B7B474)($at) 
/* 04BA8 80B6E548 24050001 */  addiu   $a1, $zero, 0x0001         ## $a1 = 00000001
/* 04BAC 80B6E54C 460A4402 */  mul.s   $f16, $f8, $f10            
/* 04BB0 80B6E550 00000000 */  nop
/* 04BB4 80B6E554 46128302 */  mul.s   $f12, $f16, $f18           
/* 04BB8 80B6E558 0C0342DC */  jal     Matrix_RotateX              
/* 04BBC 80B6E55C 00000000 */  nop
/* 04BC0 80B6E560 3C0180B8 */  lui     $at, %hi(D_80B7B478)       ## $at = 80B80000
/* 04BC4 80B6E564 C42CB478 */  lwc1    $f12, %lo(D_80B7B478)($at) 
/* 04BC8 80B6E568 24070001 */  addiu   $a3, $zero, 0x0001         ## $a3 = 00000001
/* 04BCC 80B6E56C 44066000 */  mfc1    $a2, $f12                  
/* 04BD0 80B6E570 0C0342A3 */  jal     Matrix_Scale              
/* 04BD4 80B6E574 46006386 */  mov.s   $f14, $f12                 
/* 04BD8 80B6E578 8FAD00B8 */  lw      $t5, 0x00B8($sp)           
/* 04BDC 80B6E57C 3C013F80 */  lui     $at, 0x3F80                ## $at = 3F800000
/* 04BE0 80B6E580 44813000 */  mtc1    $at, $f6                   ## $f6 = 1.00
/* 04BE4 80B6E584 C5A4085C */  lwc1    $f4, 0x085C($t5)           ## 0000085C
/* 04BE8 80B6E588 3C01BE80 */  lui     $at, 0xBE80                ## $at = BE800000
/* 04BEC 80B6E58C 44815000 */  mtc1    $at, $f10                  ## $f10 = -0.25
/* 04BF0 80B6E590 46062201 */  sub.s   $f8, $f4, $f6              
/* 04BF4 80B6E594 3C013F00 */  lui     $at, 0x3F00                ## $at = 3F000000
/* 04BF8 80B6E598 44819000 */  mtc1    $at, $f18                  ## $f18 = 0.50
/* 04BFC 80B6E59C 3C0180B8 */  lui     $at, %hi(D_80B7A6BC)       ## $at = 80B80000
/* 04C00 80B6E5A0 460A4402 */  mul.s   $f16, $f8, $f10            
/* 04C04 80B6E5A4 C426A6BC */  lwc1    $f6, %lo(D_80B7A6BC)($at)  
/* 04C08 80B6E5A8 3C0180B8 */  lui     $at, %hi(D_80B7A6AC)       ## $at = 80B80000
/* 04C0C 80B6E5AC C42AA6AC */  lwc1    $f10, %lo(D_80B7A6AC)($at) 
/* 04C10 80B6E5B0 44806000 */  mtc1    $zero, $f12                ## $f12 = 0.00
/* 04C14 80B6E5B4 3C06C4A2 */  lui     $a2, 0xC4A2                ## $a2 = C4A20000
/* 04C18 80B6E5B8 34C68000 */  ori     $a2, $a2, 0x8000           ## $a2 = C4A28000
/* 04C1C 80B6E5BC 46128100 */  add.s   $f4, $f16, $f18            
/* 04C20 80B6E5C0 C6300000 */  lwc1    $f16, 0x0000($s1)          ## 80B7A6B8
/* 04C24 80B6E5C4 24070001 */  addiu   $a3, $zero, 0x0001         ## $a3 = 00000001
/* 04C28 80B6E5C8 46006386 */  mov.s   $f14, $f12                 
/* 04C2C 80B6E5CC 46062202 */  mul.s   $f8, $f4, $f6              
/* 04C30 80B6E5D0 46105480 */  add.s   $f18, $f10, $f16           
/* 04C34 80B6E5D4 46124100 */  add.s   $f4, $f8, $f18             
/* 04C38 80B6E5D8 0C034261 */  jal     Matrix_Translate              
/* 04C3C 80B6E5DC E7A400C0 */  swc1    $f4, 0x00C0($sp)           
/* 04C40 80B6E5E0 3C0E0601 */  lui     $t6, %hi(D_06011410)                ## $t6 = 06010000
/* 04C44 80B6E5E4 25CE1410 */  addiu   $t6, $t6, %lo(D_06011410)           ## $t6 = 06011410
/* 04C48 80B6E5E8 AFAE0028 */  sw      $t6, 0x0028($sp)           
/* 04C4C 80B6E5EC 00008825 */  or      $s1, $zero, $zero          ## $s1 = 00000000
.L80B6E5F0:
/* 04C50 80B6E5F0 3C0F80B8 */  lui     $t7, %hi(D_80B7AF30)       ## $t7 = 80B80000
/* 04C54 80B6E5F4 25EFAF30 */  addiu   $t7, $t7, %lo(D_80B7AF30)  ## $t7 = 80B7AF30
/* 04C58 80B6E5F8 00111880 */  sll     $v1, $s1,  2               
/* 04C5C 80B6E5FC 006F1021 */  addu    $v0, $v1, $t7              
/* 04C60 80B6E600 3C0180B8 */  lui     $at, %hi(D_80B7A6A8)       ## $at = 80B80000
/* 04C64 80B6E604 C42AA6A8 */  lwc1    $f10, %lo(D_80B7A6A8)($at) 
/* 04C68 80B6E608 C4460000 */  lwc1    $f6, 0x0000($v0)           ## 00000000
/* 04C6C 80B6E60C 3C013F00 */  lui     $at, 0x3F00                ## $at = 3F000000
/* 04C70 80B6E610 44814000 */  mtc1    $at, $f8                   ## $f8 = 0.50
/* 04C74 80B6E614 460A3402 */  mul.s   $f16, $f6, $f10            
/* 04C78 80B6E618 AFA2002C */  sw      $v0, 0x002C($sp)           
/* 04C7C 80B6E61C AFA30030 */  sw      $v1, 0x0030($sp)           
/* 04C80 80B6E620 24050001 */  addiu   $a1, $zero, 0x0001         ## $a1 = 00000001
/* 04C84 80B6E624 46088302 */  mul.s   $f12, $f16, $f8            
/* 04C88 80B6E628 0C034348 */  jal     Matrix_RotateY              
/* 04C8C 80B6E62C 00000000 */  nop
/* 04C90 80B6E630 8FA2002C */  lw      $v0, 0x002C($sp)           
/* 04C94 80B6E634 C7A400C0 */  lwc1    $f4, 0x00C0($sp)           
/* 04C98 80B6E638 3C013F00 */  lui     $at, 0x3F00                ## $at = 3F000000
/* 04C9C 80B6E63C C4520000 */  lwc1    $f18, 0x0000($v0)          ## 00000000
/* 04CA0 80B6E640 44815000 */  mtc1    $at, $f10                  ## $f10 = 0.50
/* 04CA4 80B6E644 24050001 */  addiu   $a1, $zero, 0x0001         ## $a1 = 00000001
/* 04CA8 80B6E648 46049182 */  mul.s   $f6, $f18, $f4             
/* 04CAC 80B6E64C 00000000 */  nop
/* 04CB0 80B6E650 460A3302 */  mul.s   $f12, $f6, $f10            
/* 04CB4 80B6E654 0C0342DC */  jal     Matrix_RotateX              
/* 04CB8 80B6E658 00000000 */  nop
/* 04CBC 80B6E65C 0C034213 */  jal     Matrix_Push              
/* 04CC0 80B6E660 00000000 */  nop
/* 04CC4 80B6E664 8FB80030 */  lw      $t8, 0x0030($sp)           
/* 04CC8 80B6E668 3C0180B8 */  lui     $at, %hi(D_80B7AED8)       ## $at = 80B80000
/* 04CCC 80B6E66C 3C063F05 */  lui     $a2, 0x3F05                ## $a2 = 3F050000
/* 04CD0 80B6E670 00380821 */  addu    $at, $at, $t8              
/* 04CD4 80B6E674 C42CAED8 */  lwc1    $f12, %lo(D_80B7AED8)($at) 
/* 04CD8 80B6E678 34C61EB8 */  ori     $a2, $a2, 0x1EB8           ## $a2 = 3F051EB8
/* 04CDC 80B6E67C 24070001 */  addiu   $a3, $zero, 0x0001         ## $a3 = 00000001
/* 04CE0 80B6E680 0C0342A3 */  jal     Matrix_Scale              
/* 04CE4 80B6E684 46006386 */  mov.s   $f14, $f12                 
/* 04CE8 80B6E688 8E0202C0 */  lw      $v0, 0x02C0($s0)           ## 000002C0
/* 04CEC 80B6E68C 3C08DA38 */  lui     $t0, 0xDA38                ## $t0 = DA380000
/* 04CF0 80B6E690 35080003 */  ori     $t0, $t0, 0x0003           ## $t0 = DA380003
/* 04CF4 80B6E694 24590008 */  addiu   $t9, $v0, 0x0008           ## $t9 = 00000008
/* 04CF8 80B6E698 AE1902C0 */  sw      $t9, 0x02C0($s0)           ## 000002C0
/* 04CFC 80B6E69C AC480000 */  sw      $t0, 0x0000($v0)           ## 00000000
/* 04D00 80B6E6A0 8FA900D0 */  lw      $t1, 0x00D0($sp)           
/* 04D04 80B6E6A4 3C0580B8 */  lui     $a1, %hi(D_80B7B1D0)       ## $a1 = 80B80000
/* 04D08 80B6E6A8 24A5B1D0 */  addiu   $a1, $a1, %lo(D_80B7B1D0)  ## $a1 = 80B7B1D0
/* 04D0C 80B6E6AC 8D240000 */  lw      $a0, 0x0000($t1)           ## 00000000
/* 04D10 80B6E6B0 24060EE1 */  addiu   $a2, $zero, 0x0EE1         ## $a2 = 00000EE1
/* 04D14 80B6E6B4 0C0346A2 */  jal     Matrix_NewMtx              
/* 04D18 80B6E6B8 AFA20090 */  sw      $v0, 0x0090($sp)           
/* 04D1C 80B6E6BC 8FA30090 */  lw      $v1, 0x0090($sp)           
/* 04D20 80B6E6C0 2A210005 */  slti    $at, $s1, 0x0005           
/* 04D24 80B6E6C4 10200035 */  beq     $at, $zero, .L80B6E79C     
/* 04D28 80B6E6C8 AC620004 */  sw      $v0, 0x0004($v1)           ## 00000004
/* 04D2C 80B6E6CC 8E0202C0 */  lw      $v0, 0x02C0($s0)           ## 000002C0
/* 04D30 80B6E6D0 3C040601 */  lui     $a0, %hi(D_06011170)                ## $a0 = 06010000
/* 04D34 80B6E6D4 24841170 */  addiu   $a0, $a0, %lo(D_06011170)           ## $a0 = 06011170
/* 04D38 80B6E6D8 244A0008 */  addiu   $t2, $v0, 0x0008           ## $t2 = 00000008
/* 04D3C 80B6E6DC AE0A02C0 */  sw      $t2, 0x02C0($s0)           ## 000002C0
/* 04D40 80B6E6E0 3C0BFD10 */  lui     $t3, 0xFD10                ## $t3 = FD100000
/* 04D44 80B6E6E4 AC4B0000 */  sw      $t3, 0x0000($v0)           ## 00000000
/* 04D48 80B6E6E8 AC440004 */  sw      $a0, 0x0004($v0)           ## 00000004
/* 04D4C 80B6E6EC 8E0202C0 */  lw      $v0, 0x02C0($s0)           ## 000002C0
/* 04D50 80B6E6F0 3C0E0700 */  lui     $t6, 0x0700                ## $t6 = 07000000
/* 04D54 80B6E6F4 35CEC040 */  ori     $t6, $t6, 0xC040           ## $t6 = 0700C040
/* 04D58 80B6E6F8 244C0008 */  addiu   $t4, $v0, 0x0008           ## $t4 = 00000008
/* 04D5C 80B6E6FC AE0C02C0 */  sw      $t4, 0x02C0($s0)           ## 000002C0
/* 04D60 80B6E700 3C0DF510 */  lui     $t5, 0xF510                ## $t5 = F5100000
/* 04D64 80B6E704 AC4D0000 */  sw      $t5, 0x0000($v0)           ## 00000000
/* 04D68 80B6E708 AC4E0004 */  sw      $t6, 0x0004($v0)           ## 00000004
/* 04D6C 80B6E70C 8E0202C0 */  lw      $v0, 0x02C0($s0)           ## 000002C0
/* 04D70 80B6E710 3C18E600 */  lui     $t8, 0xE600                ## $t8 = E6000000
/* 04D74 80B6E714 3C090707 */  lui     $t1, 0x0707                ## $t1 = 07070000
/* 04D78 80B6E718 244F0008 */  addiu   $t7, $v0, 0x0008           ## $t7 = 00000008
/* 04D7C 80B6E71C AE0F02C0 */  sw      $t7, 0x02C0($s0)           ## 000002C0
/* 04D80 80B6E720 AC400004 */  sw      $zero, 0x0004($v0)         ## 00000004
/* 04D84 80B6E724 AC580000 */  sw      $t8, 0x0000($v0)           ## 00000000
/* 04D88 80B6E728 8E0202C0 */  lw      $v0, 0x02C0($s0)           ## 000002C0
/* 04D8C 80B6E72C 3529F200 */  ori     $t1, $t1, 0xF200           ## $t1 = 0707F200
/* 04D90 80B6E730 3C08F300 */  lui     $t0, 0xF300                ## $t0 = F3000000
/* 04D94 80B6E734 24590008 */  addiu   $t9, $v0, 0x0008           ## $t9 = 00000008
/* 04D98 80B6E738 AE1902C0 */  sw      $t9, 0x02C0($s0)           ## 000002C0
/* 04D9C 80B6E73C AC490004 */  sw      $t1, 0x0004($v0)           ## 00000004
/* 04DA0 80B6E740 AC480000 */  sw      $t0, 0x0000($v0)           ## 00000000
/* 04DA4 80B6E744 8E0202C0 */  lw      $v0, 0x02C0($s0)           ## 000002C0
/* 04DA8 80B6E748 3C0BE700 */  lui     $t3, 0xE700                ## $t3 = E7000000
/* 04DAC 80B6E74C 340EC040 */  ori     $t6, $zero, 0xC040         ## $t6 = 0000C040
/* 04DB0 80B6E750 244A0008 */  addiu   $t2, $v0, 0x0008           ## $t2 = 00000008
/* 04DB4 80B6E754 AE0A02C0 */  sw      $t2, 0x02C0($s0)           ## 000002C0
/* 04DB8 80B6E758 AC400004 */  sw      $zero, 0x0004($v0)         ## 00000004
/* 04DBC 80B6E75C AC4B0000 */  sw      $t3, 0x0000($v0)           ## 00000000
/* 04DC0 80B6E760 8E0202C0 */  lw      $v0, 0x02C0($s0)           ## 000002C0
/* 04DC4 80B6E764 35AD0800 */  ori     $t5, $t5, 0x0800           ## $t5 = F5100800
/* 04DC8 80B6E768 3C190003 */  lui     $t9, 0x0003                ## $t9 = 00030000
/* 04DCC 80B6E76C 244C0008 */  addiu   $t4, $v0, 0x0008           ## $t4 = 00000008
/* 04DD0 80B6E770 AE0C02C0 */  sw      $t4, 0x02C0($s0)           ## 000002C0
/* 04DD4 80B6E774 AC4E0004 */  sw      $t6, 0x0004($v0)           ## 00000004
/* 04DD8 80B6E778 AC4D0000 */  sw      $t5, 0x0000($v0)           ## 00000000
/* 04DDC 80B6E77C 8E0202C0 */  lw      $v0, 0x02C0($s0)           ## 000002C0
/* 04DE0 80B6E780 3739C01C */  ori     $t9, $t9, 0xC01C           ## $t9 = 0003C01C
/* 04DE4 80B6E784 3C18F200 */  lui     $t8, 0xF200                ## $t8 = F2000000
/* 04DE8 80B6E788 244F0008 */  addiu   $t7, $v0, 0x0008           ## $t7 = 00000008
/* 04DEC 80B6E78C AE0F02C0 */  sw      $t7, 0x02C0($s0)           ## 000002C0
/* 04DF0 80B6E790 AC590004 */  sw      $t9, 0x0004($v0)           ## 00000004
/* 04DF4 80B6E794 1000006C */  beq     $zero, $zero, .L80B6E948   
/* 04DF8 80B6E798 AC580000 */  sw      $t8, 0x0000($v0)           ## 00000000
.L80B6E79C:
/* 04DFC 80B6E79C 2A210008 */  slti    $at, $s1, 0x0008           
/* 04E00 80B6E7A0 14200003 */  bne     $at, $zero, .L80B6E7B0     
/* 04E04 80B6E7A4 32280001 */  andi    $t0, $s1, 0x0001           ## $t0 = 00000000
/* 04E08 80B6E7A8 15000035 */  bne     $t0, $zero, .L80B6E880     
/* 04E0C 80B6E7AC 3C040601 */  lui     $a0, %hi(D_06011070)                ## $a0 = 06010000
.L80B6E7B0:
/* 04E10 80B6E7B0 8E0202C0 */  lw      $v0, 0x02C0($s0)           ## 000002C0
/* 04E14 80B6E7B4 3C040601 */  lui     $a0, %hi(D_06011270)                ## $a0 = 06010000
/* 04E18 80B6E7B8 24841270 */  addiu   $a0, $a0, %lo(D_06011270)           ## $a0 = 06011270
/* 04E1C 80B6E7BC 24490008 */  addiu   $t1, $v0, 0x0008           ## $t1 = 00000008
/* 04E20 80B6E7C0 AE0902C0 */  sw      $t1, 0x02C0($s0)           ## 000002C0
/* 04E24 80B6E7C4 3C0AFD10 */  lui     $t2, 0xFD10                ## $t2 = FD100000
/* 04E28 80B6E7C8 AC4A0000 */  sw      $t2, 0x0000($v0)           ## 00000000
/* 04E2C 80B6E7CC AC440004 */  sw      $a0, 0x0004($v0)           ## 00000004
/* 04E30 80B6E7D0 8E0202C0 */  lw      $v0, 0x02C0($s0)           ## 000002C0
/* 04E34 80B6E7D4 3C0D0700 */  lui     $t5, 0x0700                ## $t5 = 07000000
/* 04E38 80B6E7D8 35ADC040 */  ori     $t5, $t5, 0xC040           ## $t5 = 0700C040
/* 04E3C 80B6E7DC 244B0008 */  addiu   $t3, $v0, 0x0008           ## $t3 = 00000008
/* 04E40 80B6E7E0 AE0B02C0 */  sw      $t3, 0x02C0($s0)           ## 000002C0
/* 04E44 80B6E7E4 3C0CF510 */  lui     $t4, 0xF510                ## $t4 = F5100000
/* 04E48 80B6E7E8 AC4C0000 */  sw      $t4, 0x0000($v0)           ## 00000000
/* 04E4C 80B6E7EC AC4D0004 */  sw      $t5, 0x0004($v0)           ## 00000004
/* 04E50 80B6E7F0 8E0202C0 */  lw      $v0, 0x02C0($s0)           ## 000002C0
/* 04E54 80B6E7F4 3C0FE600 */  lui     $t7, 0xE600                ## $t7 = E6000000
/* 04E58 80B6E7F8 3C080707 */  lui     $t0, 0x0707                ## $t0 = 07070000
/* 04E5C 80B6E7FC 244E0008 */  addiu   $t6, $v0, 0x0008           ## $t6 = 00000008
/* 04E60 80B6E800 AE0E02C0 */  sw      $t6, 0x02C0($s0)           ## 000002C0
/* 04E64 80B6E804 AC400004 */  sw      $zero, 0x0004($v0)         ## 00000004
/* 04E68 80B6E808 AC4F0000 */  sw      $t7, 0x0000($v0)           ## 00000000
/* 04E6C 80B6E80C 8E0202C0 */  lw      $v0, 0x02C0($s0)           ## 000002C0
/* 04E70 80B6E810 3508F200 */  ori     $t0, $t0, 0xF200           ## $t0 = 0707F200
/* 04E74 80B6E814 3C19F300 */  lui     $t9, 0xF300                ## $t9 = F3000000
/* 04E78 80B6E818 24580008 */  addiu   $t8, $v0, 0x0008           ## $t8 = 00000008
/* 04E7C 80B6E81C AE1802C0 */  sw      $t8, 0x02C0($s0)           ## 000002C0
/* 04E80 80B6E820 AC480004 */  sw      $t0, 0x0004($v0)           ## 00000004
/* 04E84 80B6E824 AC590000 */  sw      $t9, 0x0000($v0)           ## 00000000
/* 04E88 80B6E828 8E0202C0 */  lw      $v0, 0x02C0($s0)           ## 000002C0
/* 04E8C 80B6E82C 3C0AE700 */  lui     $t2, 0xE700                ## $t2 = E7000000
/* 04E90 80B6E830 340DC040 */  ori     $t5, $zero, 0xC040         ## $t5 = 0000C040
/* 04E94 80B6E834 24490008 */  addiu   $t1, $v0, 0x0008           ## $t1 = 00000008
/* 04E98 80B6E838 AE0902C0 */  sw      $t1, 0x02C0($s0)           ## 000002C0
/* 04E9C 80B6E83C AC400004 */  sw      $zero, 0x0004($v0)         ## 00000004
/* 04EA0 80B6E840 AC4A0000 */  sw      $t2, 0x0000($v0)           ## 00000000
/* 04EA4 80B6E844 8E0202C0 */  lw      $v0, 0x02C0($s0)           ## 000002C0
/* 04EA8 80B6E848 358C0800 */  ori     $t4, $t4, 0x0800           ## $t4 = F5100800
/* 04EAC 80B6E84C 3C180003 */  lui     $t8, 0x0003                ## $t8 = 00030000
/* 04EB0 80B6E850 244B0008 */  addiu   $t3, $v0, 0x0008           ## $t3 = 00000008
/* 04EB4 80B6E854 AE0B02C0 */  sw      $t3, 0x02C0($s0)           ## 000002C0
/* 04EB8 80B6E858 AC4D0004 */  sw      $t5, 0x0004($v0)           ## 00000004
/* 04EBC 80B6E85C AC4C0000 */  sw      $t4, 0x0000($v0)           ## 00000000
/* 04EC0 80B6E860 8E0202C0 */  lw      $v0, 0x02C0($s0)           ## 000002C0
/* 04EC4 80B6E864 3718C01C */  ori     $t8, $t8, 0xC01C           ## $t8 = 0003C01C
/* 04EC8 80B6E868 3C0FF200 */  lui     $t7, 0xF200                ## $t7 = F2000000
/* 04ECC 80B6E86C 244E0008 */  addiu   $t6, $v0, 0x0008           ## $t6 = 00000008
/* 04ED0 80B6E870 AE0E02C0 */  sw      $t6, 0x02C0($s0)           ## 000002C0
/* 04ED4 80B6E874 AC580004 */  sw      $t8, 0x0004($v0)           ## 00000004
/* 04ED8 80B6E878 10000033 */  beq     $zero, $zero, .L80B6E948   
/* 04EDC 80B6E87C AC4F0000 */  sw      $t7, 0x0000($v0)           ## 00000000
.L80B6E880:
/* 04EE0 80B6E880 8E0202C0 */  lw      $v0, 0x02C0($s0)           ## 000002C0
/* 04EE4 80B6E884 24841070 */  addiu   $a0, $a0, %lo(D_06011070)           ## $a0 = 060122E0
/* 04EE8 80B6E888 3C08FD10 */  lui     $t0, 0xFD10                ## $t0 = FD100000
/* 04EEC 80B6E88C 24590008 */  addiu   $t9, $v0, 0x0008           ## $t9 = 00000008
/* 04EF0 80B6E890 AE1902C0 */  sw      $t9, 0x02C0($s0)           ## 000002C0
/* 04EF4 80B6E894 AC440004 */  sw      $a0, 0x0004($v0)           ## 00000004
/* 04EF8 80B6E898 AC480000 */  sw      $t0, 0x0000($v0)           ## 00000000
/* 04EFC 80B6E89C 8E0202C0 */  lw      $v0, 0x02C0($s0)           ## 000002C0
/* 04F00 80B6E8A0 3C0B0700 */  lui     $t3, 0x0700                ## $t3 = 07000000
/* 04F04 80B6E8A4 356BC040 */  ori     $t3, $t3, 0xC040           ## $t3 = 0700C040
/* 04F08 80B6E8A8 24490008 */  addiu   $t1, $v0, 0x0008           ## $t1 = 00000008
/* 04F0C 80B6E8AC AE0902C0 */  sw      $t1, 0x02C0($s0)           ## 000002C0
/* 04F10 80B6E8B0 3C0AF510 */  lui     $t2, 0xF510                ## $t2 = F5100000
/* 04F14 80B6E8B4 AC4A0000 */  sw      $t2, 0x0000($v0)           ## 00000000
/* 04F18 80B6E8B8 AC4B0004 */  sw      $t3, 0x0004($v0)           ## 00000004
/* 04F1C 80B6E8BC 8E0202C0 */  lw      $v0, 0x02C0($s0)           ## 000002C0
/* 04F20 80B6E8C0 3C0DE600 */  lui     $t5, 0xE600                ## $t5 = E6000000
/* 04F24 80B6E8C4 3C180707 */  lui     $t8, 0x0707                ## $t8 = 07070000
/* 04F28 80B6E8C8 244C0008 */  addiu   $t4, $v0, 0x0008           ## $t4 = 00000008
/* 04F2C 80B6E8CC AE0C02C0 */  sw      $t4, 0x02C0($s0)           ## 000002C0
/* 04F30 80B6E8D0 AC400004 */  sw      $zero, 0x0004($v0)         ## 00000004
/* 04F34 80B6E8D4 AC4D0000 */  sw      $t5, 0x0000($v0)           ## 00000000
/* 04F38 80B6E8D8 8E0202C0 */  lw      $v0, 0x02C0($s0)           ## 000002C0
/* 04F3C 80B6E8DC 3718F200 */  ori     $t8, $t8, 0xF200           ## $t8 = 0707F200
/* 04F40 80B6E8E0 3C0FF300 */  lui     $t7, 0xF300                ## $t7 = F3000000
/* 04F44 80B6E8E4 244E0008 */  addiu   $t6, $v0, 0x0008           ## $t6 = 00000008
/* 04F48 80B6E8E8 AE0E02C0 */  sw      $t6, 0x02C0($s0)           ## 000002C0
/* 04F4C 80B6E8EC AC580004 */  sw      $t8, 0x0004($v0)           ## 00000004
/* 04F50 80B6E8F0 AC4F0000 */  sw      $t7, 0x0000($v0)           ## 00000000
/* 04F54 80B6E8F4 8E0202C0 */  lw      $v0, 0x02C0($s0)           ## 000002C0
/* 04F58 80B6E8F8 3C08E700 */  lui     $t0, 0xE700                ## $t0 = E7000000
/* 04F5C 80B6E8FC 340BC040 */  ori     $t3, $zero, 0xC040         ## $t3 = 0000C040
/* 04F60 80B6E900 24590008 */  addiu   $t9, $v0, 0x0008           ## $t9 = 00000008
/* 04F64 80B6E904 AE1902C0 */  sw      $t9, 0x02C0($s0)           ## 000002C0
/* 04F68 80B6E908 AC400004 */  sw      $zero, 0x0004($v0)         ## 00000004
/* 04F6C 80B6E90C AC480000 */  sw      $t0, 0x0000($v0)           ## 00000000
/* 04F70 80B6E910 8E0202C0 */  lw      $v0, 0x02C0($s0)           ## 000002C0
/* 04F74 80B6E914 354A0800 */  ori     $t2, $t2, 0x0800           ## $t2 = F5100800
/* 04F78 80B6E918 3C0E0003 */  lui     $t6, 0x0003                ## $t6 = 00030000
/* 04F7C 80B6E91C 24490008 */  addiu   $t1, $v0, 0x0008           ## $t1 = 00000008
/* 04F80 80B6E920 AE0902C0 */  sw      $t1, 0x02C0($s0)           ## 000002C0
/* 04F84 80B6E924 AC4B0004 */  sw      $t3, 0x0004($v0)           ## 00000004
/* 04F88 80B6E928 AC4A0000 */  sw      $t2, 0x0000($v0)           ## 00000000
/* 04F8C 80B6E92C 8E0202C0 */  lw      $v0, 0x02C0($s0)           ## 000002C0
/* 04F90 80B6E930 35CEC01C */  ori     $t6, $t6, 0xC01C           ## $t6 = 0003C01C
/* 04F94 80B6E934 3C0DF200 */  lui     $t5, 0xF200                ## $t5 = F2000000
/* 04F98 80B6E938 244C0008 */  addiu   $t4, $v0, 0x0008           ## $t4 = 00000008
/* 04F9C 80B6E93C AE0C02C0 */  sw      $t4, 0x02C0($s0)           ## 000002C0
/* 04FA0 80B6E940 AC4E0004 */  sw      $t6, 0x0004($v0)           ## 00000004
/* 04FA4 80B6E944 AC4D0000 */  sw      $t5, 0x0000($v0)           ## 00000000
.L80B6E948:
/* 04FA8 80B6E948 8E0202C0 */  lw      $v0, 0x02C0($s0)           ## 000002C0
/* 04FAC 80B6E94C 3C18DE00 */  lui     $t8, 0xDE00                ## $t8 = DE000000
/* 04FB0 80B6E950 244F0008 */  addiu   $t7, $v0, 0x0008           ## $t7 = 00000008
/* 04FB4 80B6E954 AE0F02C0 */  sw      $t7, 0x02C0($s0)           ## 000002C0
/* 04FB8 80B6E958 AC580000 */  sw      $t8, 0x0000($v0)           ## 00000000
/* 04FBC 80B6E95C 8FB90028 */  lw      $t9, 0x0028($sp)           
/* 04FC0 80B6E960 0C034221 */  jal     Matrix_Pull              
/* 04FC4 80B6E964 AC590004 */  sw      $t9, 0x0004($v0)           ## 00000004
/* 04FC8 80B6E968 44806000 */  mtc1    $zero, $f12                ## $f12 = 0.00
/* 04FCC 80B6E96C 3C0643FA */  lui     $a2, 0x43FA                ## $a2 = 43FA0000
/* 04FD0 80B6E970 24070001 */  addiu   $a3, $zero, 0x0001         ## $a3 = 00000001
/* 04FD4 80B6E974 0C034261 */  jal     Matrix_Translate              
/* 04FD8 80B6E978 46006386 */  mov.s   $f14, $f12                 
/* 04FDC 80B6E97C 24010015 */  addiu   $at, $zero, 0x0015         ## $at = 00000015
/* 04FE0 80B6E980 16210005 */  bne     $s1, $at, .L80B6E998       
/* 04FE4 80B6E984 3C0480B8 */  lui     $a0, %hi(D_80B7AF88)       ## $a0 = 80B80000
/* 04FE8 80B6E988 3C0580B8 */  lui     $a1, %hi(D_80B7E158)       ## $a1 = 80B80000
/* 04FEC 80B6E98C 24A5E158 */  addiu   $a1, $a1, %lo(D_80B7E158)  ## $a1 = 80B7E158
/* 04FF0 80B6E990 0C0346BD */  jal     Matrix_MultVec3f              
/* 04FF4 80B6E994 2484AF88 */  addiu   $a0, $a0, %lo(D_80B7AF88)  ## $a0 = 80B7AF88
.L80B6E998:
/* 04FF8 80B6E998 26310001 */  addiu   $s1, $s1, 0x0001           ## $s1 = 00000001
/* 04FFC 80B6E99C 00118C00 */  sll     $s1, $s1, 16               
/* 05000 80B6E9A0 00118C03 */  sra     $s1, $s1, 16               
/* 05004 80B6E9A4 2A210016 */  slti    $at, $s1, 0x0016           
/* 05008 80B6E9A8 1420FF11 */  bne     $at, $zero, .L80B6E5F0     
/* 0500C 80B6E9AC 00000000 */  nop
/* 05010 80B6E9B0 8FA800D0 */  lw      $t0, 0x00D0($sp)           
/* 05014 80B6E9B4 3C0680B8 */  lui     $a2, %hi(D_80B7B1E0)       ## $a2 = 80B80000
/* 05018 80B6E9B8 24C6B1E0 */  addiu   $a2, $a2, %lo(D_80B7B1E0)  ## $a2 = 80B7B1E0
/* 0501C 80B6E9BC 27A400A0 */  addiu   $a0, $sp, 0x00A0           ## $a0 = FFFFFFD0
/* 05020 80B6E9C0 24070EFE */  addiu   $a3, $zero, 0x0EFE         ## $a3 = 00000EFE
/* 05024 80B6E9C4 0C031AD5 */  jal     Graph_CloseDisps              
/* 05028 80B6E9C8 8D050000 */  lw      $a1, 0x0000($t0)           ## 00000000
/* 0502C 80B6E9CC 8FBF0024 */  lw      $ra, 0x0024($sp)           
/* 05030 80B6E9D0 8FB0001C */  lw      $s0, 0x001C($sp)           
/* 05034 80B6E9D4 8FB10020 */  lw      $s1, 0x0020($sp)           
/* 05038 80B6E9D8 03E00008 */  jr      $ra                        
/* 0503C 80B6E9DC 27BD00D0 */  addiu   $sp, $sp, 0x00D0           ## $sp = 00000000
