.late_rodata
glabel D_80B52BB0
 .word 0x455AC000

.text
glabel func_80B4EF64
/* 005D4 80B4EF64 24080002 */  addiu   $t0, $zero, 0x0002         ## $t0 = 00000002
/* 005D8 80B4EF68 00803825 */  or      $a3, $a0, $zero            ## $a3 = 00000000
/* 005DC 80B4EF6C 14C80004 */  bne     $a2, $t0, .L80B4EF80       
/* 005E0 80B4EF70 AFA50004 */  sw      $a1, 0x0004($sp)           
/* 005E4 80B4EF74 24043A98 */  addiu   $a0, $zero, 0x3A98         ## $a0 = 00003A98
/* 005E8 80B4EF78 1000001C */  beq     $zero, $zero, .L80B4EFEC   
/* 005EC 80B4EF7C 00004825 */  or      $t1, $zero, $zero          ## $t1 = 00000000
.L80B4EF80:
/* 005F0 80B4EF80 24010005 */  addiu   $at, $zero, 0x0005         ## $at = 00000005
/* 005F4 80B4EF84 14C10003 */  bne     $a2, $at, .L80B4EF94       
/* 005F8 80B4EF88 240432C8 */  addiu   $a0, $zero, 0x32C8         ## $a0 = 000032C8
/* 005FC 80B4EF8C 10000017 */  beq     $zero, $zero, .L80B4EFEC   
/* 00600 80B4EF90 24090003 */  addiu   $t1, $zero, 0x0003         ## $t1 = 00000003
.L80B4EF94:
/* 00604 80B4EF94 24010008 */  addiu   $at, $zero, 0x0008         ## $at = 00000008
/* 00608 80B4EF98 14C10003 */  bne     $a2, $at, .L80B4EFA8       
/* 0060C 80B4EF9C 24042EE0 */  addiu   $a0, $zero, 0x2EE0         ## $a0 = 00002EE0
/* 00610 80B4EFA0 10000012 */  beq     $zero, $zero, .L80B4EFEC   
/* 00614 80B4EFA4 24090006 */  addiu   $t1, $zero, 0x0006         ## $t1 = 00000006
.L80B4EFA8:
/* 00618 80B4EFA8 2401000B */  addiu   $at, $zero, 0x000B         ## $at = 0000000B
/* 0061C 80B4EFAC 14C10003 */  bne     $a2, $at, .L80B4EFBC       
/* 00620 80B4EFB0 24044000 */  addiu   $a0, $zero, 0x4000         ## $a0 = 00004000
/* 00624 80B4EFB4 1000000D */  beq     $zero, $zero, .L80B4EFEC   
/* 00628 80B4EFB8 24090009 */  addiu   $t1, $zero, 0x0009         ## $t1 = 00000009
.L80B4EFBC:
/* 0062C 80B4EFBC 2401000E */  addiu   $at, $zero, 0x000E         ## $at = 0000000E
/* 00630 80B4EFC0 14C10003 */  bne     $a2, $at, .L80B4EFD0       
/* 00634 80B4EFC4 24044000 */  addiu   $a0, $zero, 0x4000         ## $a0 = 00004000
/* 00638 80B4EFC8 10000008 */  beq     $zero, $zero, .L80B4EFEC   
/* 0063C 80B4EFCC 2409000C */  addiu   $t1, $zero, 0x000C         ## $t1 = 0000000C
.L80B4EFD0:
/* 00640 80B4EFD0 24010011 */  addiu   $at, $zero, 0x0011         ## $at = 00000011
/* 00644 80B4EFD4 14C10004 */  bne     $a2, $at, .L80B4EFE8       
/* 00648 80B4EFD8 24044000 */  addiu   $a0, $zero, 0x4000         ## $a0 = 00004000
/* 0064C 80B4EFDC 24044000 */  addiu   $a0, $zero, 0x4000         ## $a0 = 00004000
/* 00650 80B4EFE0 10000002 */  beq     $zero, $zero, .L80B4EFEC   
/* 00654 80B4EFE4 2409000F */  addiu   $t1, $zero, 0x000F         ## $t1 = 0000000F
.L80B4EFE8:
/* 00658 80B4EFE8 24090012 */  addiu   $t1, $zero, 0x0012         ## $t1 = 00000012
.L80B4EFEC:
/* 0065C 80B4EFEC 8CEE024C */  lw      $t6, 0x024C($a3)           ## 0000024C
/* 00660 80B4EFF0 00067840 */  sll     $t7, $a2,  1               
/* 00664 80B4EFF4 00EF2821 */  addu    $a1, $a3, $t7              
/* 00668 80B4EFF8 11C00088 */  beq     $t6, $zero, .L80B4F21C     
/* 0066C 80B4EFFC 87B90006 */  lh      $t9, 0x0006($sp)           
/* 00670 80B4F000 84AD020C */  lh      $t5, 0x020C($a1)           ## 0000020C
/* 00674 80B4F004 84B801DC */  lh      $t8, 0x01DC($a1)           ## 000001DC
/* 00678 80B4F008 84AC01AC */  lh      $t4, 0x01AC($a1)           ## 000001AC
/* 0067C 80B4F00C 032D5023 */  subu    $t2, $t9, $t5              
/* 00680 80B4F010 448A2000 */  mtc1    $t2, $f4                   ## $f4 = 0.00
/* 00684 80B4F014 03191821 */  addu    $v1, $t8, $t9              
/* 00688 80B4F018 34018001 */  ori     $at, $zero, 0x8001         ## $at = 00008001
/* 0068C 80B4F01C 46802020 */  cvt.s.w $f0, $f4                   
/* 00690 80B4F020 00031C00 */  sll     $v1, $v1, 16               
/* 00694 80B4F024 0009C040 */  sll     $t8, $t1,  1               
/* 00698 80B4F028 00031C03 */  sra     $v1, $v1, 16               
/* 0069C 80B4F02C 00F86821 */  addu    $t5, $a3, $t8              
/* 006A0 80B4F030 01801025 */  or      $v0, $t4, $zero            ## $v0 = 00000000
/* 006A4 80B4F034 46000005 */  abs.s   $f0, $f0                   
/* 006A8 80B4F038 4600018D */  trunc.w.s $f6, $f0                   
/* 006AC 80B4F03C 440F3000 */  mfc1    $t7, $f6                   
/* 006B0 80B4F040 00000000 */  nop
/* 006B4 80B4F044 01E1082A */  slt     $at, $t7, $at              
/* 006B8 80B4F048 14200007 */  bne     $at, $zero, .L80B4F068     
/* 006BC 80B4F04C 00000000 */  nop
/* 006C0 80B4F050 1B200004 */  blez    $t9, .L80B4F064            
/* 006C4 80B4F054 3C010001 */  lui     $at, 0x0001                ## $at = 00010000
/* 006C8 80B4F058 3C01FFFF */  lui     $at, 0xFFFF                ## $at = FFFF0000
/* 006CC 80B4F05C 10000002 */  beq     $zero, $zero, .L80B4F068   
/* 006D0 80B4F060 01415021 */  addu    $t2, $t2, $at              
.L80B4F064:
/* 006D4 80B4F064 01415021 */  addu    $t2, $t2, $at              
.L80B4F068:
/* 006D8 80B4F068 0520000A */  bltz    $t1, .L80B4F094            
/* 006DC 80B4F06C 24010003 */  addiu   $at, $zero, 0x0003         ## $at = 00000003
/* 006E0 80B4F070 85AB01AC */  lh      $t3, 0x01AC($t5)           ## 000001AC
/* 006E4 80B4F074 05600003 */  bltz    $t3, .L80B4F084            
/* 006E8 80B4F078 000B4823 */  subu    $t1, $zero, $t3            
/* 006EC 80B4F07C 10000001 */  beq     $zero, $zero, .L80B4F084   
/* 006F0 80B4F080 01604825 */  or      $t1, $t3, $zero            ## $t1 = 00000000
.L80B4F084:
/* 006F4 80B4F084 0121001A */  div     $zero, $t1, $at            
/* 006F8 80B4F088 00007012 */  mflo    $t6                        
/* 006FC 80B4F08C 014E5021 */  addu    $t2, $t2, $t6              
/* 00700 80B4F090 00000000 */  nop
.L80B4F094:
/* 00704 80B4F094 11400007 */  beq     $t2, $zero, .L80B4F0B4     
/* 00708 80B4F098 00644823 */  subu    $t1, $v1, $a0              
/* 0070C 80B4F09C 01427823 */  subu    $t7, $t2, $v0              
/* 00710 80B4F0A0 05E10003 */  bgez    $t7, .L80B4F0B0            
/* 00714 80B4F0A4 000FC903 */  sra     $t9, $t7,  4               
/* 00718 80B4F0A8 25E1000F */  addiu   $at, $t7, 0x000F           ## $at = 0000000F
/* 0071C 80B4F0AC 0001C903 */  sra     $t9, $at,  4               
.L80B4F0B0:
/* 00720 80B4F0B0 00591021 */  addu    $v0, $v0, $t9              
.L80B4F0B4:
/* 00724 80B4F0B4 10400006 */  beq     $v0, $zero, .L80B4F0D0     
/* 00728 80B4F0B8 00094C00 */  sll     $t1, $t1, 16               
/* 0072C 80B4F0BC 2401000A */  addiu   $at, $zero, 0x000A         ## $at = 0000000A
/* 00730 80B4F0C0 0041001A */  div     $zero, $v0, $at            
/* 00734 80B4F0C4 0000C012 */  mflo    $t8                        
/* 00738 80B4F0C8 00581023 */  subu    $v0, $v0, $t8              
/* 0073C 80B4F0CC 00000000 */  nop
.L80B4F0D0:
/* 00740 80B4F0D0 00094C03 */  sra     $t1, $t1, 16               
/* 00744 80B4F0D4 11200005 */  beq     $t1, $zero, .L80B4F0EC     
/* 00748 80B4F0D8 24010032 */  addiu   $at, $zero, 0x0032         ## $at = 00000032
/* 0074C 80B4F0DC 0121001A */  div     $zero, $t1, $at            
/* 00750 80B4F0E0 00006812 */  mflo    $t5                        
/* 00754 80B4F0E4 004D1023 */  subu    $v0, $v0, $t5              
/* 00758 80B4F0E8 00000000 */  nop
.L80B4F0EC:
/* 0075C 80B4F0EC 01820019 */  multu   $t4, $v0                   
/* 00760 80B4F0F0 00621821 */  addu    $v1, $v1, $v0              
/* 00764 80B4F0F4 00644823 */  subu    $t1, $v1, $a0              
/* 00768 80B4F0F8 00094C00 */  sll     $t1, $t1, 16               
/* 0076C 80B4F0FC 00094C03 */  sra     $t1, $t1, 16               
/* 00770 80B4F100 2921FF9D */  slti    $at, $t1, 0xFF9D           
/* 00774 80B4F104 00007012 */  mflo    $t6                        
/* 00778 80B4F108 1DC00007 */  bgtz    $t6, .L80B4F128            
/* 0077C 80B4F10C 00000000 */  nop
/* 00780 80B4F110 14200005 */  bne     $at, $zero, .L80B4F128     
/* 00784 80B4F114 29210064 */  slti    $at, $t1, 0x0064           
/* 00788 80B4F118 10200003 */  beq     $at, $zero, .L80B4F128     
/* 0078C 80B4F11C 00000000 */  nop
/* 00790 80B4F120 00801825 */  or      $v1, $a0, $zero            ## $v1 = 00004000
/* 00794 80B4F124 00001025 */  or      $v0, $zero, $zero          ## $v0 = 00000000
.L80B4F128:
/* 00798 80B4F128 54C80039 */  bnel    $a2, $t0, .L80B4F210       
/* 0079C 80B4F12C A4A201AC */  sh      $v0, 0x01AC($a1)           ## 000001AC
/* 007A0 80B4F130 8CE8019C */  lw      $t0, 0x019C($a3)           ## 0000019C
/* 007A4 80B4F134 24010005 */  addiu   $at, $zero, 0x0005         ## $at = 00000005
/* 007A8 80B4F138 11010002 */  beq     $t0, $at, .L80B4F144       
/* 007AC 80B4F13C 2401001E */  addiu   $at, $zero, 0x001E         ## $at = 0000001E
/* 007B0 80B4F140 15010015 */  bne     $t0, $at, .L80B4F198       
.L80B4F144:
/* 007B4 80B4F144 3C0180B5 */  lui     $at, %hi(D_80B52BB0)       ## $at = 80B50000
/* 007B8 80B4F148 C4E00164 */  lwc1    $f0, 0x0164($a3)           ## 00000164
/* 007BC 80B4F14C C4282BB0 */  lwc1    $f8, %lo(D_80B52BB0)($at)  
/* 007C0 80B4F150 C4E20278 */  lwc1    $f2, 0x0278($a3)           ## 00000278
/* 007C4 80B4F154 46004282 */  mul.s   $f10, $f8, $f0             
/* 007C8 80B4F158 46025403 */  div.s   $f16, $f10, $f2            
/* 007CC 80B4F15C 4600848D */  trunc.w.s $f18, $f16                 
/* 007D0 80B4F160 44199000 */  mfc1    $t9, $f18                  
/* 007D4 80B4F164 00000000 */  nop
/* 007D8 80B4F168 03244021 */  addu    $t0, $t9, $a0              
/* 007DC 80B4F16C 0103082A */  slt     $at, $t0, $v1              
/* 007E0 80B4F170 54200027 */  bnel    $at, $zero, .L80B4F210     
/* 007E4 80B4F174 A4A201AC */  sh      $v0, 0x01AC($a1)           ## 000001AC
/* 007E8 80B4F178 01001825 */  or      $v1, $t0, $zero            ## $v1 = 00000002
/* 007EC 80B4F17C 04410002 */  bgez    $v0, .L80B4F188            
/* 007F0 80B4F180 00400821 */  addu    $at, $v0, $zero            
/* 007F4 80B4F184 24410001 */  addiu   $at, $v0, 0x0001           ## $at = 00000001
.L80B4F188:
/* 007F8 80B4F188 00011043 */  sra     $v0, $at,  1               
/* 007FC 80B4F18C 00021023 */  subu    $v0, $zero, $v0            
/* 00800 80B4F190 1000001F */  beq     $zero, $zero, .L80B4F210   
/* 00804 80B4F194 A4A201AC */  sh      $v0, 0x01AC($a1)           ## 000001AC
.L80B4F198:
/* 00808 80B4F198 24010006 */  addiu   $at, $zero, 0x0006         ## $at = 00000006
/* 0080C 80B4F19C 11010003 */  beq     $t0, $at, .L80B4F1AC       
/* 00810 80B4F1A0 2401001F */  addiu   $at, $zero, 0x001F         ## $at = 0000001F
/* 00814 80B4F1A4 5501000E */  bnel    $t0, $at, .L80B4F1E0       
/* 00818 80B4F1A8 24010014 */  addiu   $at, $zero, 0x0014         ## $at = 00000014
.L80B4F1AC:
/* 0081C 80B4F1AC 24880DAC */  addiu   $t0, $a0, 0x0DAC           ## $t0 = 00004DAC
/* 00820 80B4F1B0 0103082A */  slt     $at, $t0, $v1              
/* 00824 80B4F1B4 54200016 */  bnel    $at, $zero, .L80B4F210     
/* 00828 80B4F1B8 A4A201AC */  sh      $v0, 0x01AC($a1)           ## 000001AC
/* 0082C 80B4F1BC 01001825 */  or      $v1, $t0, $zero            ## $v1 = 00004DAC
/* 00830 80B4F1C0 04410002 */  bgez    $v0, .L80B4F1CC            
/* 00834 80B4F1C4 00400821 */  addu    $at, $v0, $zero            
/* 00838 80B4F1C8 24410001 */  addiu   $at, $v0, 0x0001           ## $at = 00000001
.L80B4F1CC:
/* 0083C 80B4F1CC 00011043 */  sra     $v0, $at,  1               
/* 00840 80B4F1D0 00021023 */  subu    $v0, $zero, $v0            
/* 00844 80B4F1D4 1000000E */  beq     $zero, $zero, .L80B4F210   
/* 00848 80B4F1D8 A4A201AC */  sh      $v0, 0x01AC($a1)           ## 000001AC
/* 0084C 80B4F1DC 24010014 */  addiu   $at, $zero, 0x0014         ## $at = 00000014
.L80B4F1E0:
/* 00850 80B4F1E0 1501000A */  bne     $t0, $at, .L80B4F20C       
/* 00854 80B4F1E4 2488FC18 */  addiu   $t0, $a0, 0xFC18           ## $t0 = 00003C18
/* 00858 80B4F1E8 0103082A */  slt     $at, $t0, $v1              
/* 0085C 80B4F1EC 54200008 */  bnel    $at, $zero, .L80B4F210     
/* 00860 80B4F1F0 A4A201AC */  sh      $v0, 0x01AC($a1)           ## 000001AC
/* 00864 80B4F1F4 01001825 */  or      $v1, $t0, $zero            ## $v1 = 00003C18
/* 00868 80B4F1F8 04410002 */  bgez    $v0, .L80B4F204            
/* 0086C 80B4F1FC 00400821 */  addu    $at, $v0, $zero            
/* 00870 80B4F200 24410001 */  addiu   $at, $v0, 0x0001           ## $at = 00000001
.L80B4F204:
/* 00874 80B4F204 00011043 */  sra     $v0, $at,  1               
/* 00878 80B4F208 00021023 */  subu    $v0, $zero, $v0            
.L80B4F20C:
/* 0087C 80B4F20C A4A201AC */  sh      $v0, 0x01AC($a1)           ## 000001AC
.L80B4F210:
/* 00880 80B4F210 87B80006 */  lh      $t8, 0x0006($sp)           
/* 00884 80B4F214 00786823 */  subu    $t5, $v1, $t8              
/* 00888 80B4F218 A4AD01DC */  sh      $t5, 0x01DC($a1)           ## 000001DC
.L80B4F21C:
/* 0088C 80B4F21C 87AE0006 */  lh      $t6, 0x0006($sp)           
/* 00890 80B4F220 00067840 */  sll     $t7, $a2,  1               
/* 00894 80B4F224 00EFC821 */  addu    $t9, $a3, $t7              
/* 00898 80B4F228 03E00008 */  jr      $ra                        
/* 0089C 80B4F22C A72E020C */  sh      $t6, 0x020C($t9)           ## 0000020C
