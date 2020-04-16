.rdata
glabel D_80AFA468
    .asciz "SDA CONT \n"
    .balign 4

glabel D_80AFA474
    .asciz "SDA CONT 2\n"
    .balign 4

glabel D_80AFA480
    .asciz "SDA CONT 3\n"
    .balign 4

glabel D_80AFA48C
    .asciz "SDA CONT 4\n"
    .balign 4

.late_rodata
glabel D_80AFA4F0
    .float 1.2

glabel D_80AFA4F4
    .float -1.2

glabel D_80AFA4F8
    .float 3.14159274101

glabel D_80AFA4FC
    .float 3.14159274101

.text
glabel func_80AF95C4
/* 007A4 80AF95C4 27BDFE50 */  addiu   $sp, $sp, 0xFE50           ## $sp = FFFFFE50
/* 007A8 80AF95C8 AFB60040 */  sw      $s6, 0x0040($sp)           
/* 007AC 80AF95CC 0080B025 */  or      $s6, $a0, $zero            ## $s6 = 00000000
/* 007B0 80AF95D0 AFBF004C */  sw      $ra, 0x004C($sp)           
/* 007B4 80AF95D4 AFB5003C */  sw      $s5, 0x003C($sp)           
/* 007B8 80AF95D8 AFB1002C */  sw      $s1, 0x002C($sp)           
/* 007BC 80AF95DC 3C0480B0 */  lui     $a0, %hi(D_80AFA468)       ## $a0 = 80B00000
/* 007C0 80AF95E0 00A08825 */  or      $s1, $a1, $zero            ## $s1 = 00000000
/* 007C4 80AF95E4 00C0A825 */  or      $s5, $a2, $zero            ## $s5 = 00000000
/* 007C8 80AF95E8 AFBE0048 */  sw      $s8, 0x0048($sp)           
/* 007CC 80AF95EC AFB70044 */  sw      $s7, 0x0044($sp)           
/* 007D0 80AF95F0 AFB40038 */  sw      $s4, 0x0038($sp)           
/* 007D4 80AF95F4 AFB30034 */  sw      $s3, 0x0034($sp)           
/* 007D8 80AF95F8 AFB20030 */  sw      $s2, 0x0030($sp)           
/* 007DC 80AF95FC AFB00028 */  sw      $s0, 0x0028($sp)           
/* 007E0 80AF9600 F7B60020 */  sdc1    $f22, 0x0020($sp)          
/* 007E4 80AF9604 F7B40018 */  sdc1    $f20, 0x0018($sp)          
/* 007E8 80AF9608 AFA701BC */  sw      $a3, 0x01BC($sp)           
/* 007EC 80AF960C 0C00084C */  jal     osSyncPrintf
              
/* 007F0 80AF9610 2484A468 */  addiu   $a0, $a0, %lo(D_80AFA468)  ## $a0 = 80AFA468
/* 007F4 80AF9614 3C1E8016 */  lui     $s8, 0x8016                ## $s8 = 80160000
/* 007F8 80AF9618 27DEFA90 */  addiu   $s8, $s8, 0xFA90           ## $s8 = 8015FA90
/* 007FC 80AF961C 8FCE0000 */  lw      $t6, 0x0000($s8)           ## 8015FA90
/* 00800 80AF9620 02201025 */  or      $v0, $s1, $zero            ## $v0 = 00000000
/* 00804 80AF9624 00009825 */  or      $s3, $zero, $zero          ## $s3 = 00000000
/* 00808 80AF9628 85CF1346 */  lh      $t7, 0x1346($t6)           ## 00001346
/* 0080C 80AF962C 241000FF */  addiu   $s0, $zero, 0x00FF         ## $s0 = 000000FF
/* 00810 80AF9630 11E0001D */  beq     $t7, $zero, .L80AF96A8     
/* 00814 80AF9634 00000000 */  nop
/* 00818 80AF9638 02201025 */  or      $v0, $s1, $zero            ## $v0 = 00000000
/* 0081C 80AF963C 00009825 */  or      $s3, $zero, $zero          ## $s3 = 00000000
/* 00820 80AF9640 241000FF */  addiu   $s0, $zero, 0x00FF         ## $s0 = 000000FF
/* 00824 80AF9644 2404003F */  addiu   $a0, $zero, 0x003F         ## $a0 = 0000003F
.L80AF9648:
/* 00828 80AF9648 06600002 */  bltz    $s3, .L80AF9654            
/* 0082C 80AF964C 2A610040 */  slti    $at, $s3, 0x0040           
/* 00830 80AF9650 1420000A */  bne     $at, $zero, .L80AF967C     
.L80AF9654:
/* 00834 80AF9654 2A610FC0 */  slti    $at, $s3, 0x0FC0           
/* 00838 80AF9658 14200004 */  bne     $at, $zero, .L80AF966C     
/* 0083C 80AF965C 3263003F */  andi    $v1, $s3, 0x003F           ## $v1 = 00000000
/* 00840 80AF9660 2A611000 */  slti    $at, $s3, 0x1000           
/* 00844 80AF9664 14200005 */  bne     $at, $zero, .L80AF967C     
/* 00848 80AF9668 00000000 */  nop
.L80AF966C:
/* 0084C 80AF966C 10600003 */  beq     $v1, $zero, .L80AF967C     
/* 00850 80AF9670 00000000 */  nop
/* 00854 80AF9674 54830004 */  bnel    $a0, $v1, .L80AF9688       
/* 00858 80AF9678 A0400000 */  sb      $zero, 0x0000($v0)         ## 00000000
.L80AF967C:
/* 0085C 80AF967C 10000002 */  beq     $zero, $zero, .L80AF9688   
/* 00860 80AF9680 A0500000 */  sb      $s0, 0x0000($v0)           ## 00000000
/* 00864 80AF9684 A0400000 */  sb      $zero, 0x0000($v0)         ## 00000000
.L80AF9688:
/* 00868 80AF9688 26730001 */  addiu   $s3, $s3, 0x0001           ## $s3 = 00000001
/* 0086C 80AF968C 00139C00 */  sll     $s3, $s3, 16               
/* 00870 80AF9690 00139C03 */  sra     $s3, $s3, 16               
/* 00874 80AF9694 2A611000 */  slti    $at, $s3, 0x1000           
/* 00878 80AF9698 1420FFEB */  bne     $at, $zero, .L80AF9648     
/* 0087C 80AF969C 24420001 */  addiu   $v0, $v0, 0x0001           ## $v0 = 00000001
/* 00880 80AF96A0 10000009 */  beq     $zero, $zero, .L80AF96C8   
/* 00884 80AF96A4 8FD80000 */  lw      $t8, 0x0000($s8)           ## 8015FA90
.L80AF96A8:
/* 00888 80AF96A8 26730001 */  addiu   $s3, $s3, 0x0001           ## $s3 = 00000002
/* 0088C 80AF96AC 00139C00 */  sll     $s3, $s3, 16               
/* 00890 80AF96B0 00139C03 */  sra     $s3, $s3, 16               
/* 00894 80AF96B4 2A610400 */  slti    $at, $s3, 0x0400           
/* 00898 80AF96B8 24420004 */  addiu   $v0, $v0, 0x0004           ## $v0 = 00000005
/* 0089C 80AF96BC 1420FFFA */  bne     $at, $zero, .L80AF96A8     
/* 008A0 80AF96C0 AC40FFFC */  sw      $zero, -0x0004($v0)        ## 00000001
/* 008A4 80AF96C4 8FD80000 */  lw      $t8, 0x0000($s8)           ## 8015FA90
.L80AF96C8:
/* 008A8 80AF96C8 3C0142C8 */  lui     $at, 0x42C8                ## $at = 42C80000
/* 008AC 80AF96CC 4481B000 */  mtc1    $at, $f22                  ## $f22 = 100.00
/* 008B0 80AF96D0 87191338 */  lh      $t9, 0x1338($t8)           ## 00001338
/* 008B4 80AF96D4 00002825 */  or      $a1, $zero, $zero          ## $a1 = 00000000
/* 008B8 80AF96D8 272B0046 */  addiu   $t3, $t9, 0x0046           ## $t3 = 00000046
/* 008BC 80AF96DC 448B2000 */  mtc1    $t3, $f4                   ## $f4 = 0.00
/* 008C0 80AF96E0 00000000 */  nop
/* 008C4 80AF96E4 468021A0 */  cvt.s.w $f6, $f4                   
/* 008C8 80AF96E8 0C0342DC */  jal     Matrix_RotateX              
/* 008CC 80AF96EC 46163303 */  div.s   $f12, $f6, $f22            
/* 008D0 80AF96F0 3C1280B0 */  lui     $s2, %hi(D_80AFA660)       ## $s2 = 80B00000
/* 008D4 80AF96F4 3C0380B0 */  lui     $v1, %hi(D_80AFA16C)       ## $v1 = 80B00000
/* 008D8 80AF96F8 2463A16C */  addiu   $v1, $v1, %lo(D_80AFA16C)  ## $v1 = 80AFA16C
/* 008DC 80AF96FC 2652A660 */  addiu   $s2, $s2, %lo(D_80AFA660)  ## $s2 = 80AFA660
/* 008E0 80AF9700 00009825 */  or      $s3, $zero, $zero          ## $s3 = 00000000
/* 008E4 80AF9704 2414000C */  addiu   $s4, $zero, 0x000C         ## $s4 = 0000000C
/* 008E8 80AF9708 00736021 */  addu    $t4, $v1, $s3              
.L80AF970C:
/* 008EC 80AF970C 81820000 */  lb      $v0, 0x0000($t4)           ## 00000000
/* 008F0 80AF9710 0442000F */  bltzl   $v0, .L80AF9750            
/* 008F4 80AF9714 26730001 */  addiu   $s3, $s3, 0x0001           ## $s3 = 00000001
/* 008F8 80AF9718 00540019 */  multu   $v0, $s4                   
/* 008FC 80AF971C 00006812 */  mflo    $t5                        
/* 00900 80AF9720 024D7021 */  addu    $t6, $s2, $t5              
/* 00904 80AF9724 00000000 */  nop
/* 00908 80AF9728 02740019 */  multu   $s3, $s4                   
/* 0090C 80AF972C 00007812 */  mflo    $t7                        
/* 00910 80AF9730 02AFC021 */  addu    $t8, $s5, $t7              
/* 00914 80AF9734 8F0B0908 */  lw      $t3, 0x0908($t8)           ## 00000908
/* 00918 80AF9738 ADCB0000 */  sw      $t3, 0x0000($t6)           ## 00000000
/* 0091C 80AF973C 8F19090C */  lw      $t9, 0x090C($t8)           ## 0000090C
/* 00920 80AF9740 ADD90004 */  sw      $t9, 0x0004($t6)           ## 00000004
/* 00924 80AF9744 8F0B0910 */  lw      $t3, 0x0910($t8)           ## 00000910
/* 00928 80AF9748 ADCB0008 */  sw      $t3, 0x0008($t6)           ## 00000008
/* 0092C 80AF974C 26730001 */  addiu   $s3, $s3, 0x0001           ## $s3 = 00000002
.L80AF9750:
/* 00930 80AF9750 00139C00 */  sll     $s3, $s3, 16               
/* 00934 80AF9754 00139C03 */  sra     $s3, $s3, 16               
/* 00938 80AF9758 2A610012 */  slti    $at, $s3, 0x0012           
/* 0093C 80AF975C 5420FFEB */  bnel    $at, $zero, .L80AF970C     
/* 00940 80AF9760 00736021 */  addu    $t4, $v1, $s3              
/* 00944 80AF9764 3C0480B0 */  lui     $a0, %hi(D_80AFA474)       ## $a0 = 80B00000
/* 00948 80AF9768 0C00084C */  jal     osSyncPrintf
              
/* 0094C 80AF976C 2484A474 */  addiu   $a0, $a0, %lo(D_80AFA474)  ## $a0 = 80AFA474
/* 00950 80AF9770 C6420000 */  lwc1    $f2, 0x0000($s2)           ## 80AFA660
/* 00954 80AF9774 C65200B4 */  lwc1    $f18, 0x00B4($s2)          ## 80AFA714
/* 00958 80AF9778 3C0180B0 */  lui     $at, %hi(D_80AFA4F0)       ## $at = 80B00000
/* 0095C 80AF977C C42EA4F0 */  lwc1    $f14, %lo(D_80AFA4F0)($at) 
/* 00960 80AF9780 46029101 */  sub.s   $f4, $f18, $f2             
/* 00964 80AF9784 3C014040 */  lui     $at, 0x4040                ## $at = 40400000
/* 00968 80AF9788 44815000 */  mtc1    $at, $f10                  ## $f10 = 3.00
/* 0096C 80AF978C C6480004 */  lwc1    $f8, 0x0004($s2)           ## 80AFA664
/* 00970 80AF9790 460E2182 */  mul.s   $f6, $f4, $f14             
/* 00974 80AF9794 C64C0008 */  lwc1    $f12, 0x0008($s2)          ## 80AFA668
/* 00978 80AF9798 460A4400 */  add.s   $f16, $f8, $f10            
/* 0097C 80AF979C C64A00B8 */  lwc1    $f10, 0x00B8($s2)          ## 80AFA718
/* 00980 80AF97A0 3C0180B0 */  lui     $at, %hi(D_80AFA4F4)       ## $at = 80B00000
/* 00984 80AF97A4 00009825 */  or      $s3, $zero, $zero          ## $s3 = 00000000
/* 00988 80AF97A8 E6500004 */  swc1    $f16, 0x0004($s2)          ## 80AFA664
/* 0098C 80AF97AC 46023200 */  add.s   $f8, $f6, $f2              
/* 00990 80AF97B0 C6400004 */  lwc1    $f0, 0x0004($s2)           ## 80AFA664
/* 00994 80AF97B4 E64800B4 */  swc1    $f8, 0x00B4($s2)           ## 80AFA714
/* 00998 80AF97B8 46005401 */  sub.s   $f16, $f10, $f0            
/* 0099C 80AF97BC C64800BC */  lwc1    $f8, 0x00BC($s2)           ## 80AFA71C
/* 009A0 80AF97C0 C432A4F4 */  lwc1    $f18, %lo(D_80AFA4F4)($at) 
/* 009A4 80AF97C4 3C0140A0 */  lui     $at, 0x40A0                ## $at = 40A00000
/* 009A8 80AF97C8 460C4281 */  sub.s   $f10, $f8, $f12            
/* 009AC 80AF97CC 46128102 */  mul.s   $f4, $f16, $f18            
/* 009B0 80AF97D0 4481A000 */  mtc1    $at, $f20                  ## $f20 = 5.00
/* 009B4 80AF97D4 460E5402 */  mul.s   $f16, $f10, $f14           
/* 009B8 80AF97D8 46002180 */  add.s   $f6, $f4, $f0              
/* 009BC 80AF97DC 460C8480 */  add.s   $f18, $f16, $f12           
/* 009C0 80AF97E0 E64600B8 */  swc1    $f6, 0x00B8($s2)           ## 80AFA718
/* 009C4 80AF97E4 E65200BC */  swc1    $f18, 0x00BC($s2)          ## 80AFA71C
/* 009C8 80AF97E8 44932000 */  mtc1    $s3, $f4                   ## $f4 = 0.00
.L80AF97EC:
/* 009CC 80AF97EC 02A02025 */  or      $a0, $s5, $zero            ## $a0 = 00000000
/* 009D0 80AF97F0 02202825 */  or      $a1, $s1, $zero            ## $a1 = 00000000
/* 009D4 80AF97F4 468021A0 */  cvt.s.w $f6, $f4                   
/* 009D8 80AF97F8 46143203 */  div.s   $f8, $f6, $f20             
/* 009DC 80AF97FC 44064000 */  mfc1    $a2, $f8                   
/* 009E0 80AF9800 0C2BE3D8 */  jal     func_80AF8F60              
/* 009E4 80AF9804 00000000 */  nop
/* 009E8 80AF9808 26730001 */  addiu   $s3, $s3, 0x0001           ## $s3 = 00000001
/* 009EC 80AF980C 00139C00 */  sll     $s3, $s3, 16               
/* 009F0 80AF9810 00139C03 */  sra     $s3, $s3, 16               
/* 009F4 80AF9814 2A610006 */  slti    $at, $s3, 0x0006           
/* 009F8 80AF9818 5420FFF4 */  bnel    $at, $zero, .L80AF97EC     
/* 009FC 80AF981C 44932000 */  mtc1    $s3, $f4                   ## $f4 = 0.00
/* 00A00 80AF9820 3C0480B0 */  lui     $a0, %hi(D_80AFA480)       ## $a0 = 80B00000
/* 00A04 80AF9824 0C00084C */  jal     osSyncPrintf
              
/* 00A08 80AF9828 2484A480 */  addiu   $a0, $a0, %lo(D_80AFA480)  ## $a0 = 80AFA480
/* 00A0C 80AF982C 86CC001C */  lh      $t4, 0x001C($s6)           ## 0000001C
/* 00A10 80AF9830 24010001 */  addiu   $at, $zero, 0x0001         ## $at = 00000001
/* 00A14 80AF9834 26B20A20 */  addiu   $s2, $s5, 0x0A20           ## $s2 = 00000A20
/* 00A18 80AF9838 118100E1 */  beq     $t4, $at, .L80AF9BC0       
/* 00A1C 80AF983C 02402025 */  or      $a0, $s2, $zero            ## $a0 = 00000A20
/* 00A20 80AF9840 27A50178 */  addiu   $a1, $sp, 0x0178           ## $a1 = FFFFFFC8
/* 00A24 80AF9844 0C034833 */  jal     func_800D20CC              
/* 00A28 80AF9848 00003025 */  or      $a2, $zero, $zero          ## $a2 = 00000000
/* 00A2C 80AF984C 8FC30000 */  lw      $v1, 0x0000($s8)           ## 8015FA90
/* 00A30 80AF9850 87AD017A */  lh      $t5, 0x017A($sp)           
/* 00A34 80AF9854 34018000 */  ori     $at, $zero, 0x8000         ## $at = 00008000
/* 00A38 80AF9858 846F0A82 */  lh      $t7, 0x0A82($v1)           ## 00000A82
/* 00A3C 80AF985C 87AB0178 */  lh      $t3, 0x0178($sp)           
/* 00A40 80AF9860 02402025 */  or      $a0, $s2, $zero            ## $a0 = 00000A20
/* 00A44 80AF9864 000F73C0 */  sll     $t6, $t7, 15               
/* 00A48 80AF9868 01AEC021 */  addu    $t8, $t5, $t6              
/* 00A4C 80AF986C 0301C821 */  addu    $t9, $t8, $at              
/* 00A50 80AF9870 A7B9017A */  sh      $t9, 0x017A($sp)           
/* 00A54 80AF9874 846C0A84 */  lh      $t4, 0x0A84($v1)           ## 00000A84
/* 00A58 80AF9878 00002825 */  or      $a1, $zero, $zero          ## $a1 = 00000000
/* 00A5C 80AF987C 258FFFFF */  addiu   $t7, $t4, 0xFFFF           ## $t7 = FFFFFFFF
/* 00A60 80AF9880 016F0019 */  multu   $t3, $t7                   
/* 00A64 80AF9884 00006812 */  mflo    $t5                        
/* 00A68 80AF9888 A7AD0178 */  sh      $t5, 0x0178($sp)           
/* 00A6C 80AF988C 0C03424C */  jal     Matrix_Mult              
/* 00A70 80AF9890 00000000 */  nop
/* 00A74 80AF9894 3C0480B0 */  lui     $a0, %hi(D_80AFA0D0)       ## $a0 = 80B00000
/* 00A78 80AF9898 2484A0D0 */  addiu   $a0, $a0, %lo(D_80AFA0D0)  ## $a0 = 80AFA0D0
/* 00A7C 80AF989C 0C0346BD */  jal     Matrix_MultVec3f              
/* 00A80 80AF98A0 27A5016C */  addiu   $a1, $sp, 0x016C           ## $a1 = FFFFFFBC
/* 00A84 80AF98A4 87AE017A */  lh      $t6, 0x017A($sp)           
/* 00A88 80AF98A8 3C014700 */  lui     $at, 0x4700                ## $at = 47000000
/* 00A8C 80AF98AC 4481A000 */  mtc1    $at, $f20                  ## $f20 = 32768.00
/* 00A90 80AF98B0 448E5000 */  mtc1    $t6, $f10                  ## $f10 = 0.00
/* 00A94 80AF98B4 3C0180B0 */  lui     $at, %hi(D_80AFA4F8)       ## $at = 80B00000
/* 00A98 80AF98B8 C424A4F8 */  lwc1    $f4, %lo(D_80AFA4F8)($at)  
/* 00A9C 80AF98BC 46805420 */  cvt.s.w $f16, $f10                 
/* 00AA0 80AF98C0 00002825 */  or      $a1, $zero, $zero          ## $a1 = 00000000
/* 00AA4 80AF98C4 46148483 */  div.s   $f18, $f16, $f20           
/* 00AA8 80AF98C8 46049302 */  mul.s   $f12, $f18, $f4            
/* 00AAC 80AF98CC 0C034348 */  jal     Matrix_RotateY              
/* 00AB0 80AF98D0 00000000 */  nop
/* 00AB4 80AF98D4 87B80178 */  lh      $t8, 0x0178($sp)           
/* 00AB8 80AF98D8 3C0180B0 */  lui     $at, %hi(D_80AFA4FC)       ## $at = 80B00000
/* 00ABC 80AF98DC C430A4FC */  lwc1    $f16, %lo(D_80AFA4FC)($at) 
/* 00AC0 80AF98E0 44983000 */  mtc1    $t8, $f6                   ## $f6 = 0.00
/* 00AC4 80AF98E4 24050001 */  addiu   $a1, $zero, 0x0001         ## $a1 = 00000001
/* 00AC8 80AF98E8 46803220 */  cvt.s.w $f8, $f6                   
/* 00ACC 80AF98EC 46144283 */  div.s   $f10, $f8, $f20            
/* 00AD0 80AF98F0 46105302 */  mul.s   $f12, $f10, $f16           
/* 00AD4 80AF98F4 0C0342DC */  jal     Matrix_RotateX              
/* 00AD8 80AF98F8 00000000 */  nop
/* 00ADC 80AF98FC 3C014080 */  lui     $at, 0x4080                ## $at = 40800000
/* 00AE0 80AF9900 4481A000 */  mtc1    $at, $f20                  ## $f20 = 4.00
/* 00AE4 80AF9904 00009825 */  or      $s3, $zero, $zero          ## $s3 = 00000000
/* 00AE8 80AF9908 27B70064 */  addiu   $s7, $sp, 0x0064           ## $s7 = FFFFFEB4
/* 00AEC 80AF990C 27B60188 */  addiu   $s6, $sp, 0x0188           ## $s6 = FFFFFFD8
.L80AF9910:
/* 00AF0 80AF9910 02740019 */  multu   $s3, $s4                   
/* 00AF4 80AF9914 3C1980B0 */  lui     $t9, %hi(D_80AFA180)       ## $t9 = 80B00000
/* 00AF8 80AF9918 2739A180 */  addiu   $t9, $t9, %lo(D_80AFA180)  ## $t9 = 80AFA180
/* 00AFC 80AF991C 02C02825 */  or      $a1, $s6, $zero            ## $a1 = FFFFFFD8
/* 00B00 80AF9920 00009012 */  mflo    $s2                        
/* 00B04 80AF9924 02592021 */  addu    $a0, $s2, $t9              
/* 00B08 80AF9928 0C0346BD */  jal     Matrix_MultVec3f              
/* 00B0C 80AF992C 00000000 */  nop
/* 00B10 80AF9930 8FC30000 */  lw      $v1, 0x0000($s8)           ## 8015FA90
/* 00B14 80AF9934 C7AA0188 */  lwc1    $f10, 0x0188($sp)          
/* 00B18 80AF9938 02F21021 */  addu    $v0, $s7, $s2              
/* 00B1C 80AF993C 846C0A78 */  lh      $t4, 0x0A78($v1)           ## 00000A78
/* 00B20 80AF9940 26730001 */  addiu   $s3, $s3, 0x0001           ## $s3 = 00000001
/* 00B24 80AF9944 00139C00 */  sll     $s3, $s3, 16               
/* 00B28 80AF9948 448C9000 */  mtc1    $t4, $f18                  ## $f18 = 0.00
/* 00B2C 80AF994C 00139C03 */  sra     $s3, $s3, 16               
/* 00B30 80AF9950 2A610016 */  slti    $at, $s3, 0x0016           
/* 00B34 80AF9954 46809120 */  cvt.s.w $f4, $f18                  
/* 00B38 80AF9958 C7B2016C */  lwc1    $f18, 0x016C($sp)          
/* 00B3C 80AF995C 46162183 */  div.s   $f6, $f4, $f22             
/* 00B40 80AF9960 46143200 */  add.s   $f8, $f6, $f20             
/* 00B44 80AF9964 460A4402 */  mul.s   $f16, $f8, $f10            
/* 00B48 80AF9968 46128100 */  add.s   $f4, $f16, $f18            
/* 00B4C 80AF996C E4440000 */  swc1    $f4, 0x0000($v0)           ## 00000000
/* 00B50 80AF9970 846B0A78 */  lh      $t3, 0x0A78($v1)           ## 00000A78
/* 00B54 80AF9974 C7B2018C */  lwc1    $f18, 0x018C($sp)          
/* 00B58 80AF9978 448B3000 */  mtc1    $t3, $f6                   ## $f6 = 0.00
/* 00B5C 80AF997C 00000000 */  nop
/* 00B60 80AF9980 46803220 */  cvt.s.w $f8, $f6                   
/* 00B64 80AF9984 C7A60170 */  lwc1    $f6, 0x0170($sp)           
/* 00B68 80AF9988 46164283 */  div.s   $f10, $f8, $f22            
/* 00B6C 80AF998C 46145400 */  add.s   $f16, $f10, $f20           
/* 00B70 80AF9990 46128102 */  mul.s   $f4, $f16, $f18            
/* 00B74 80AF9994 46062200 */  add.s   $f8, $f4, $f6              
/* 00B78 80AF9998 E4480004 */  swc1    $f8, 0x0004($v0)           ## 00000004
/* 00B7C 80AF999C 846F0A78 */  lh      $t7, 0x0A78($v1)           ## 00000A78
/* 00B80 80AF99A0 C7A60190 */  lwc1    $f6, 0x0190($sp)           
/* 00B84 80AF99A4 448F5000 */  mtc1    $t7, $f10                  ## $f10 = 0.00
/* 00B88 80AF99A8 00000000 */  nop
/* 00B8C 80AF99AC 46805420 */  cvt.s.w $f16, $f10                 
/* 00B90 80AF99B0 C7AA0174 */  lwc1    $f10, 0x0174($sp)          
/* 00B94 80AF99B4 46168483 */  div.s   $f18, $f16, $f22           
/* 00B98 80AF99B8 46149100 */  add.s   $f4, $f18, $f20            
/* 00B9C 80AF99BC 46062202 */  mul.s   $f8, $f4, $f6              
/* 00BA0 80AF99C0 460A4400 */  add.s   $f16, $f8, $f10            
/* 00BA4 80AF99C4 1420FFD2 */  bne     $at, $zero, .L80AF9910     
/* 00BA8 80AF99C8 E4500008 */  swc1    $f16, 0x0008($v0)          ## 00000008
/* 00BAC 80AF99CC 846D1338 */  lh      $t5, 0x1338($v1)           ## 00001338
/* 00BB0 80AF99D0 00002825 */  or      $a1, $zero, $zero          ## $a1 = 00000000
/* 00BB4 80AF99D4 25AE0046 */  addiu   $t6, $t5, 0x0046           ## $t6 = 00000046
/* 00BB8 80AF99D8 448E9000 */  mtc1    $t6, $f18                  ## $f18 = 0.00
/* 00BBC 80AF99DC 00000000 */  nop
/* 00BC0 80AF99E0 46809120 */  cvt.s.w $f4, $f18                  
/* 00BC4 80AF99E4 0C0342DC */  jal     Matrix_RotateX              
/* 00BC8 80AF99E8 46162303 */  div.s   $f12, $f4, $f22            
/* 00BCC 80AF99EC 3C013F80 */  lui     $at, 0x3F80                ## $at = 3F800000
/* 00BD0 80AF99F0 3C1280B0 */  lui     $s2, %hi(D_80AFA0E8)       ## $s2 = 80B00000
/* 00BD4 80AF99F4 4481A000 */  mtc1    $at, $f20                  ## $f20 = 1.00
/* 00BD8 80AF99F8 2652A0E8 */  addiu   $s2, $s2, %lo(D_80AFA0E8)  ## $s2 = 80AFA0E8
/* 00BDC 80AF99FC 00009825 */  or      $s3, $zero, $zero          ## $s3 = 00000000
.L80AF9A00:
/* 00BE0 80AF9A00 02740019 */  multu   $s3, $s4                   
/* 00BE4 80AF9A04 C6A80024 */  lwc1    $f8, 0x0024($s5)           ## 00000024
/* 00BE8 80AF9A08 8FD90000 */  lw      $t9, 0x0000($s8)           ## 8015FA90
/* 00BEC 80AF9A0C 3C014180 */  lui     $at, 0x4180                ## $at = 41800000
/* 00BF0 80AF9A10 27A40194 */  addiu   $a0, $sp, 0x0194           ## $a0 = FFFFFFE4
/* 00BF4 80AF9A14 02C02825 */  or      $a1, $s6, $zero            ## $a1 = FFFFFFD8
/* 00BF8 80AF9A18 0000C012 */  mflo    $t8                        
/* 00BFC 80AF9A1C 02F81021 */  addu    $v0, $s7, $t8              
/* 00C00 80AF9A20 C4460000 */  lwc1    $f6, 0x0000($v0)           ## 00000000
/* 00C04 80AF9A24 46083281 */  sub.s   $f10, $f6, $f8             
/* 00C08 80AF9A28 E7AA0194 */  swc1    $f10, 0x0194($sp)          
/* 00C0C 80AF9A2C 872C0A74 */  lh      $t4, 0x0A74($t9)           ## 00000A74
/* 00C10 80AF9A30 C6B20028 */  lwc1    $f18, 0x0028($s5)          ## 00000028
/* 00C14 80AF9A34 C4500004 */  lwc1    $f16, 0x0004($v0)          ## 00000004
/* 00C18 80AF9A38 448C3000 */  mtc1    $t4, $f6                   ## $f6 = 0.00
/* 00C1C 80AF9A3C 46128101 */  sub.s   $f4, $f16, $f18            
/* 00C20 80AF9A40 44818000 */  mtc1    $at, $f16                  ## $f16 = 16.00
/* 00C24 80AF9A44 46803220 */  cvt.s.w $f8, $f6                   
/* 00C28 80AF9A48 46044280 */  add.s   $f10, $f8, $f4             
/* 00C2C 80AF9A4C 46105480 */  add.s   $f18, $f10, $f16           
/* 00C30 80AF9A50 E7B20198 */  swc1    $f18, 0x0198($sp)          
/* 00C34 80AF9A54 C6A8002C */  lwc1    $f8, 0x002C($s5)           ## 0000002C
/* 00C38 80AF9A58 C4460008 */  lwc1    $f6, 0x0008($v0)           ## 00000008
/* 00C3C 80AF9A5C 46083101 */  sub.s   $f4, $f6, $f8              
/* 00C40 80AF9A60 0C0346BD */  jal     Matrix_MultVec3f              
/* 00C44 80AF9A64 E7A4019C */  swc1    $f4, 0x019C($sp)           
/* 00C48 80AF9A68 8FC30000 */  lw      $v1, 0x0000($s8)           ## 8015FA90
/* 00C4C 80AF9A6C C7AA0188 */  lwc1    $f10, 0x0188($sp)          
/* 00C50 80AF9A70 3C014200 */  lui     $at, 0x4200                ## $at = 42000000
/* 00C54 80AF9A74 846B0A88 */  lh      $t3, 0x0A88($v1)           ## 00000A88
/* 00C58 80AF9A78 26730001 */  addiu   $s3, $s3, 0x0001           ## $s3 = 00000001
/* 00C5C 80AF9A7C 00139C00 */  sll     $s3, $s3, 16               
/* 00C60 80AF9A80 448B8000 */  mtc1    $t3, $f16                  ## $f16 = 0.00
/* 00C64 80AF9A84 00139C03 */  sra     $s3, $s3, 16               
/* 00C68 80AF9A88 468084A0 */  cvt.s.w $f18, $f16                 
/* 00C6C 80AF9A8C C7B0018C */  lwc1    $f16, 0x018C($sp)          
/* 00C70 80AF9A90 46169183 */  div.s   $f6, $f18, $f22            
/* 00C74 80AF9A94 4606A200 */  add.s   $f8, $f20, $f6             
/* 00C78 80AF9A98 46085102 */  mul.s   $f4, $f10, $f8             
/* 00C7C 80AF9A9C E7A40188 */  swc1    $f4, 0x0188($sp)           
/* 00C80 80AF9AA0 846F0A88 */  lh      $t7, 0x0A88($v1)           ## 00000A88
/* 00C84 80AF9AA4 448F9000 */  mtc1    $t7, $f18                  ## $f18 = 0.00
/* 00C88 80AF9AA8 00000000 */  nop
/* 00C8C 80AF9AAC 468091A0 */  cvt.s.w $f6, $f18                  
/* 00C90 80AF9AB0 46163283 */  div.s   $f10, $f6, $f22            
/* 00C94 80AF9AB4 44813000 */  mtc1    $at, $f6                   ## $f6 = 32.00
/* 00C98 80AF9AB8 460AA200 */  add.s   $f8, $f20, $f10            
/* 00C9C 80AF9ABC 46062280 */  add.s   $f10, $f4, $f6             
/* 00CA0 80AF9AC0 46088482 */  mul.s   $f18, $f16, $f8            
/* 00CA4 80AF9AC4 4600540D */  trunc.w.s $f16, $f10                 
/* 00CA8 80AF9AC8 E7B2018C */  swc1    $f18, 0x018C($sp)          
/* 00CAC 80AF9ACC 4600920D */  trunc.w.s $f8, $f18                  
/* 00CB0 80AF9AD0 44088000 */  mfc1    $t0, $f16                  
/* 00CB4 80AF9AD4 44094000 */  mfc1    $t1, $f8                   
/* 00CB8 80AF9AD8 00084400 */  sll     $t0, $t0, 16               
/* 00CBC 80AF9ADC 00084403 */  sra     $t0, $t0, 16               
/* 00CC0 80AF9AE0 00094C00 */  sll     $t1, $t1, 16               
/* 00CC4 80AF9AE4 00094C03 */  sra     $t1, $t1, 16               
/* 00CC8 80AF9AE8 00094980 */  sll     $t1, $t1,  6               
/* 00CCC 80AF9AEC 00094C00 */  sll     $t1, $t1, 16               
/* 00CD0 80AF9AF0 00094C03 */  sra     $t1, $t1, 16               
/* 00CD4 80AF9AF4 00005025 */  or      $t2, $zero, $zero          ## $t2 = 00000000
.L80AF9AF8:
/* 00CD8 80AF9AF8 2407FF40 */  addiu   $a3, $zero, 0xFF40         ## $a3 = FFFFFF40
.L80AF9AFC:
/* 00CDC 80AF9AFC 000AC040 */  sll     $t8, $t2,  1               
/* 00CE0 80AF9B00 02583021 */  addu    $a2, $s2, $t8              
/* 00CE4 80AF9B04 84C20000 */  lh      $v0, 0x0000($a2)           ## 00000000
/* 00CE8 80AF9B08 254A0001 */  addiu   $t2, $t2, 0x0001           ## $t2 = 00000001
/* 00CEC 80AF9B0C 000A5400 */  sll     $t2, $t2, 16               
/* 00CF0 80AF9B10 00022023 */  subu    $a0, $zero, $v0            
/* 00CF4 80AF9B14 00042400 */  sll     $a0, $a0, 16               
/* 00CF8 80AF9B18 00042403 */  sra     $a0, $a0, 16               
/* 00CFC 80AF9B1C 2445FFFF */  addiu   $a1, $v0, 0xFFFF           ## $a1 = FFFFFFFF
/* 00D00 80AF9B20 0085082A */  slt     $at, $a0, $a1              
/* 00D04 80AF9B24 10200018 */  beq     $at, $zero, .L80AF9B88     
/* 00D08 80AF9B28 000A5403 */  sra     $t2, $t2, 16               
/* 00D0C 80AF9B2C 01041021 */  addu    $v0, $t0, $a0              
.L80AF9B30:
/* 00D10 80AF9B30 00021400 */  sll     $v0, $v0, 16               
/* 00D14 80AF9B34 00021403 */  sra     $v0, $v0, 16               
/* 00D18 80AF9B38 0440000E */  bltz    $v0, .L80AF9B74            
/* 00D1C 80AF9B3C 24840001 */  addiu   $a0, $a0, 0x0001           ## $a0 = 00000001
/* 00D20 80AF9B40 28410040 */  slti    $at, $v0, 0x0040           
/* 00D24 80AF9B44 1020000B */  beq     $at, $zero, .L80AF9B74     
/* 00D28 80AF9B48 01271821 */  addu    $v1, $t1, $a3              
/* 00D2C 80AF9B4C 00031C00 */  sll     $v1, $v1, 16               
/* 00D30 80AF9B50 00031C03 */  sra     $v1, $v1, 16               
/* 00D34 80AF9B54 04600007 */  bltz    $v1, .L80AF9B74            
/* 00D38 80AF9B58 28611000 */  slti    $at, $v1, 0x1000           
/* 00D3C 80AF9B5C 10200005 */  beq     $at, $zero, .L80AF9B74     
/* 00D40 80AF9B60 0222C821 */  addu    $t9, $s1, $v0              
/* 00D44 80AF9B64 03236021 */  addu    $t4, $t9, $v1              
/* 00D48 80AF9B68 A1900000 */  sb      $s0, 0x0000($t4)           ## 00000000
/* 00D4C 80AF9B6C 84C50000 */  lh      $a1, 0x0000($a2)           ## 00000000
/* 00D50 80AF9B70 24A5FFFF */  addiu   $a1, $a1, 0xFFFF           ## $a1 = FFFFFFFE
.L80AF9B74:
/* 00D54 80AF9B74 00042400 */  sll     $a0, $a0, 16               
/* 00D58 80AF9B78 00042403 */  sra     $a0, $a0, 16               
/* 00D5C 80AF9B7C 0085082A */  slt     $at, $a0, $a1              
/* 00D60 80AF9B80 5420FFEB */  bnel    $at, $zero, .L80AF9B30     
/* 00D64 80AF9B84 01041021 */  addu    $v0, $t0, $a0              
.L80AF9B88:
/* 00D68 80AF9B88 24E70040 */  addiu   $a3, $a3, 0x0040           ## $a3 = FFFFFF80
/* 00D6C 80AF9B8C 00073C00 */  sll     $a3, $a3, 16               
/* 00D70 80AF9B90 29410007 */  slti    $at, $t2, 0x0007           
/* 00D74 80AF9B94 1420FFD9 */  bne     $at, $zero, .L80AF9AFC     
/* 00D78 80AF9B98 00073C03 */  sra     $a3, $a3, 16               
/* 00D7C 80AF9B9C 254A0001 */  addiu   $t2, $t2, 0x0001           ## $t2 = 00000002
/* 00D80 80AF9BA0 000A5400 */  sll     $t2, $t2, 16               
/* 00D84 80AF9BA4 000A5403 */  sra     $t2, $t2, 16               
/* 00D88 80AF9BA8 29410006 */  slti    $at, $t2, 0x0006           
/* 00D8C 80AF9BAC 5420FFD2 */  bnel    $at, $zero, .L80AF9AF8     
/* 00D90 80AF9BB0 00005025 */  or      $t2, $zero, $zero          ## $t2 = 00000000
/* 00D94 80AF9BB4 2A610016 */  slti    $at, $s3, 0x0016           
/* 00D98 80AF9BB8 1420FF91 */  bne     $at, $zero, .L80AF9A00     
/* 00D9C 80AF9BBC 00000000 */  nop
.L80AF9BC0:
/* 00DA0 80AF9BC0 8FCB0000 */  lw      $t3, 0x0000($s8)           ## 8015FA90
/* 00DA4 80AF9BC4 24010001 */  addiu   $at, $zero, 0x0001         ## $at = 00000001
/* 00DA8 80AF9BC8 02201025 */  or      $v0, $s1, $zero            ## $v0 = 00000000
/* 00DAC 80AF9BCC 856F134E */  lh      $t7, 0x134E($t3)           ## 0000134E
/* 00DB0 80AF9BD0 00009825 */  or      $s3, $zero, $zero          ## $s3 = 00000000
/* 00DB4 80AF9BD4 240400FF */  addiu   $a0, $zero, 0x00FF         ## $a0 = 000000FF
/* 00DB8 80AF9BD8 15E10014 */  bne     $t7, $at, .L80AF9C2C       
/* 00DBC 80AF9BDC 00000000 */  nop
.L80AF9BE0:
/* 00DC0 80AF9BE0 904D0000 */  lbu     $t5, 0x0000($v0)           ## 00000000
/* 00DC4 80AF9BE4 51A0000C */  beql    $t5, $zero, .L80AF9C18     
/* 00DC8 80AF9BE8 26730001 */  addiu   $s3, $s3, 0x0001           ## $s3 = 00000001
/* 00DCC 80AF9BEC 8FC30000 */  lw      $v1, 0x0000($s8)           ## 8015FA90
/* 00DD0 80AF9BF0 00137183 */  sra     $t6, $s3,  6               
/* 00DD4 80AF9BF4 8478134C */  lh      $t8, 0x134C($v1)           ## 0000134C
/* 00DD8 80AF9BF8 846B134E */  lh      $t3, 0x134E($v1)           ## 0000134E
/* 00DDC 80AF9BFC 27190004 */  addiu   $t9, $t8, 0x0004           ## $t9 = 00000004
/* 00DE0 80AF9C00 01D90019 */  multu   $t6, $t9                   
/* 00DE4 80AF9C04 008B7823 */  subu    $t7, $a0, $t3              
/* 00DE8 80AF9C08 00006012 */  mflo    $t4                        
/* 00DEC 80AF9C0C 01EC6823 */  subu    $t5, $t7, $t4              
/* 00DF0 80AF9C10 A04D0000 */  sb      $t5, 0x0000($v0)           ## 00000000
/* 00DF4 80AF9C14 26730001 */  addiu   $s3, $s3, 0x0001           ## $s3 = 00000002
.L80AF9C18:
/* 00DF8 80AF9C18 00139C00 */  sll     $s3, $s3, 16               
/* 00DFC 80AF9C1C 00139C03 */  sra     $s3, $s3, 16               
/* 00E00 80AF9C20 2A611000 */  slti    $at, $s3, 0x1000           
/* 00E04 80AF9C24 1420FFEE */  bne     $at, $zero, .L80AF9BE0     
/* 00E08 80AF9C28 24420001 */  addiu   $v0, $v0, 0x0001           ## $v0 = 00000001
.L80AF9C2C:
/* 00E0C 80AF9C2C 3C0480B0 */  lui     $a0, %hi(D_80AFA48C)       ## $a0 = 80B00000
/* 00E10 80AF9C30 0C00084C */  jal     osSyncPrintf
              
/* 00E14 80AF9C34 2484A48C */  addiu   $a0, $a0, %lo(D_80AFA48C)  ## $a0 = 80AFA48C
/* 00E18 80AF9C38 8FBF004C */  lw      $ra, 0x004C($sp)           
/* 00E1C 80AF9C3C D7B40018 */  ldc1    $f20, 0x0018($sp)          
/* 00E20 80AF9C40 D7B60020 */  ldc1    $f22, 0x0020($sp)          
/* 00E24 80AF9C44 8FB00028 */  lw      $s0, 0x0028($sp)           
/* 00E28 80AF9C48 8FB1002C */  lw      $s1, 0x002C($sp)           
/* 00E2C 80AF9C4C 8FB20030 */  lw      $s2, 0x0030($sp)           
/* 00E30 80AF9C50 8FB30034 */  lw      $s3, 0x0034($sp)           
/* 00E34 80AF9C54 8FB40038 */  lw      $s4, 0x0038($sp)           
/* 00E38 80AF9C58 8FB5003C */  lw      $s5, 0x003C($sp)           
/* 00E3C 80AF9C5C 8FB60040 */  lw      $s6, 0x0040($sp)           
/* 00E40 80AF9C60 8FB70044 */  lw      $s7, 0x0044($sp)           
/* 00E44 80AF9C64 8FBE0048 */  lw      $s8, 0x0048($sp)           
/* 00E48 80AF9C68 03E00008 */  jr      $ra                        
/* 00E4C 80AF9C6C 27BD01B0 */  addiu   $sp, $sp, 0x01B0           ## $sp = 00000000
