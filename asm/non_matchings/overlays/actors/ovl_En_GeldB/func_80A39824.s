.late_rodata
glabel jtbl_80A3A274
.word L80A39A08
.word L80A399E0
.word L80A39A24
.word L80A39A24
.word L80A39A24
.word L80A39A00
.word L80A39A24
.word L80A39A24
.word L80A39A24
.word L80A399F0
.word L80A399F8
.word L80A39A24
.word L80A39A24
.word L80A39A24
.word L80A399E8
.word L80A39A24
.word L80A39A24
.word L80A39A18
.word L80A39A24
.word L80A39A24
.word L80A39A20
.word L80A39A10
.word 0x00000000

.text
glabel func_80A39824
/* 04514 80A39824 27BDFF98 */  addiu   $sp, $sp, 0xFF98           ## $sp = FFFFFF98
/* 04518 80A39828 AFB10020 */  sw      $s1, 0x0020($sp)           
/* 0451C 80A3982C 2401000B */  addiu   $at, $zero, 0x000B         ## $at = 0000000B
/* 04520 80A39830 AFBF0024 */  sw      $ra, 0x0024($sp)           
/* 04524 80A39834 AFB0001C */  sw      $s0, 0x001C($sp)           
/* 04528 80A39838 AFA40068 */  sw      $a0, 0x0068($sp)           
/* 0452C 80A3983C AFA5006C */  sw      $a1, 0x006C($sp)           
/* 04530 80A39840 AFA60070 */  sw      $a2, 0x0070($sp)           
/* 04534 80A39844 AFA70074 */  sw      $a3, 0x0074($sp)           
/* 04538 80A39848 14A1003F */  bne     $a1, $at, .L80A39948       
/* 0453C 80A3984C 2411FFFF */  addiu   $s1, $zero, 0xFFFF         ## $s1 = FFFFFFFF
/* 04540 80A39850 8FB00078 */  lw      $s0, 0x0078($sp)           
/* 04544 80A39854 3C0480A4 */  lui     $a0, %hi(D_80A3A140)       ## $a0 = 80A40000
/* 04548 80A39858 2484A140 */  addiu   $a0, $a0, %lo(D_80A3A140)  ## $a0 = 80A3A140
/* 0454C 80A3985C 260503B8 */  addiu   $a1, $s0, 0x03B8           ## $a1 = 000003B8
/* 04550 80A39860 0C0346BD */  jal     Matrix_MultVec3f              
/* 04554 80A39864 AFA50030 */  sw      $a1, 0x0030($sp)           
/* 04558 80A39868 3C0480A4 */  lui     $a0, %hi(D_80A3A14C)       ## $a0 = 80A40000
/* 0455C 80A3986C 260503AC */  addiu   $a1, $s0, 0x03AC           ## $a1 = 000003AC
/* 04560 80A39870 AFA50034 */  sw      $a1, 0x0034($sp)           
/* 04564 80A39874 0C0346BD */  jal     Matrix_MultVec3f              
/* 04568 80A39878 2484A14C */  addiu   $a0, $a0, %lo(D_80A3A14C)  ## $a0 = 80A3A14C
/* 0456C 80A3987C 3C0480A4 */  lui     $a0, %hi(D_80A3A158)       ## $a0 = 80A40000
/* 04570 80A39880 260503D0 */  addiu   $a1, $s0, 0x03D0           ## $a1 = 000003D0
/* 04574 80A39884 AFA50028 */  sw      $a1, 0x0028($sp)           
/* 04578 80A39888 0C0346BD */  jal     Matrix_MultVec3f              
/* 0457C 80A3988C 2484A158 */  addiu   $a0, $a0, %lo(D_80A3A158)  ## $a0 = 80A3A158
/* 04580 80A39890 3C0480A4 */  lui     $a0, %hi(D_80A3A164)       ## $a0 = 80A40000
/* 04584 80A39894 260703C4 */  addiu   $a3, $s0, 0x03C4           ## $a3 = 000003C4
/* 04588 80A39898 00E02825 */  or      $a1, $a3, $zero            ## $a1 = 000003C4
/* 0458C 80A3989C AFA7002C */  sw      $a3, 0x002C($sp)           
/* 04590 80A398A0 0C0346BD */  jal     Matrix_MultVec3f              
/* 04594 80A398A4 2484A164 */  addiu   $a0, $a0, %lo(D_80A3A164)  ## $a0 = 80A3A164
/* 04598 80A398A8 8FAF0028 */  lw      $t7, 0x0028($sp)           
/* 0459C 80A398AC 8FA7002C */  lw      $a3, 0x002C($sp)           
/* 045A0 80A398B0 2604036C */  addiu   $a0, $s0, 0x036C           ## $a0 = 0000036C
/* 045A4 80A398B4 8FA50034 */  lw      $a1, 0x0034($sp)           
/* 045A8 80A398B8 8FA60030 */  lw      $a2, 0x0030($sp)           
/* 045AC 80A398BC 0C0189CD */  jal     func_80062734              
/* 045B0 80A398C0 AFAF0010 */  sw      $t7, 0x0010($sp)           
/* 045B4 80A398C4 3C0480A4 */  lui     $a0, %hi(D_80A3A128)       ## $a0 = 80A40000
/* 045B8 80A398C8 2484A128 */  addiu   $a0, $a0, %lo(D_80A3A128)  ## $a0 = 80A3A128
/* 045BC 80A398CC 0C0346BD */  jal     Matrix_MultVec3f              
/* 045C0 80A398D0 27A5005C */  addiu   $a1, $sp, 0x005C           ## $a1 = FFFFFFF4
/* 045C4 80A398D4 3C0480A4 */  lui     $a0, %hi(D_80A3A134)       ## $a0 = 80A40000
/* 045C8 80A398D8 2484A134 */  addiu   $a0, $a0, %lo(D_80A3A134)  ## $a0 = 80A3A134
/* 045CC 80A398DC 0C0346BD */  jal     Matrix_MultVec3f              
/* 045D0 80A398E0 27A50050 */  addiu   $a1, $sp, 0x0050           ## $a1 = FFFFFFE8
/* 045D4 80A398E4 86020310 */  lh      $v0, 0x0310($s0)           ## 00000310
/* 045D8 80A398E8 04400007 */  bltz    $v0, .L80A39908            
/* 045DC 80A398EC 00000000 */  nop
/* 045E0 80A398F0 8E0302EC */  lw      $v1, 0x02EC($s0)           ## 000002EC
/* 045E4 80A398F4 24010007 */  addiu   $at, $zero, 0x0007         ## $at = 00000007
/* 045E8 80A398F8 10610009 */  beq     $v1, $at, .L80A39920       
/* 045EC 80A398FC 2401000C */  addiu   $at, $zero, 0x000C         ## $at = 0000000C
/* 045F0 80A39900 10610007 */  beq     $v1, $at, .L80A39920       
/* 045F4 80A39904 00000000 */  nop
.L80A39908:
/* 045F8 80A39908 0C009AC3 */  jal     func_80026B0C              
/* 045FC 80A3990C 8E04031C */  lw      $a0, 0x031C($s0)           ## 0000031C
/* 04600 80A39910 0C008048 */  jal     func_80020120              
/* 04604 80A39914 00402025 */  or      $a0, $v0, $zero            ## $a0 = 00000000
/* 04608 80A39918 10000015 */  beq     $zero, $zero, .L80A39970   
/* 0460C 80A3991C A6000310 */  sh      $zero, 0x0310($s0)         ## 00000310
.L80A39920:
/* 04610 80A39920 58400014 */  blezl   $v0, .L80A39974            
/* 04614 80A39924 8FA2006C */  lw      $v0, 0x006C($sp)           
/* 04618 80A39928 0C009AC3 */  jal     func_80026B0C              
/* 0461C 80A3992C 8E04031C */  lw      $a0, 0x031C($s0)           ## 0000031C
/* 04620 80A39930 00402025 */  or      $a0, $v0, $zero            ## $a0 = 00000000
/* 04624 80A39934 27A5005C */  addiu   $a1, $sp, 0x005C           ## $a1 = FFFFFFF4
/* 04628 80A39938 0C007F7C */  jal     func_8001FDF0              
/* 0462C 80A3993C 27A60050 */  addiu   $a2, $sp, 0x0050           ## $a2 = FFFFFFE8
/* 04630 80A39940 1000000C */  beq     $zero, $zero, .L80A39974   
/* 04634 80A39944 8FA2006C */  lw      $v0, 0x006C($sp)           
.L80A39948:
/* 04638 80A39948 8FB00078 */  lw      $s0, 0x0078($sp)           
/* 0463C 80A3994C 3C1880A4 */  lui     $t8, %hi(D_80A3A11C)       ## $t8 = 80A40000
/* 04640 80A39950 2707A11C */  addiu   $a3, $t8, %lo(D_80A3A11C)  ## $a3 = 80A3A11C
/* 04644 80A39954 24190016 */  addiu   $t9, $zero, 0x0016         ## $t9 = 00000016
/* 04648 80A39958 AFB90010 */  sw      $t9, 0x0010($sp)           
/* 0464C 80A3995C AFA70014 */  sw      $a3, 0x0014($sp)           
/* 04650 80A39960 8FA5006C */  lw      $a1, 0x006C($sp)           
/* 04654 80A39964 24060013 */  addiu   $a2, $zero, 0x0013         ## $a2 = 00000013
/* 04658 80A39968 0C00AF6C */  jal     func_8002BDB0              
/* 0465C 80A3996C 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
.L80A39970:
/* 04660 80A39970 8FA2006C */  lw      $v0, 0x006C($sp)           
.L80A39974:
/* 04664 80A39974 24010013 */  addiu   $at, $zero, 0x0013         ## $at = 00000013
/* 04668 80A39978 3C0480A4 */  lui     $a0, %hi(D_80A3A11C)       ## $a0 = 80A40000
/* 0466C 80A3997C 14410005 */  bne     $v0, $at, .L80A39994       
/* 04670 80A39980 2484A11C */  addiu   $a0, $a0, %lo(D_80A3A11C)  ## $a0 = 80A3A11C
/* 04674 80A39984 0C0346BD */  jal     Matrix_MultVec3f              
/* 04678 80A39988 260504D0 */  addiu   $a1, $s0, 0x04D0           ## $a1 = 000004D0
/* 0467C 80A3998C 10000008 */  beq     $zero, $zero, .L80A399B0   
/* 04680 80A39990 8FA2006C */  lw      $v0, 0x006C($sp)           
.L80A39994:
/* 04684 80A39994 24010016 */  addiu   $at, $zero, 0x0016         ## $at = 00000016
/* 04688 80A39998 14410005 */  bne     $v0, $at, .L80A399B0       
/* 0468C 80A3999C 3C0480A4 */  lui     $a0, %hi(D_80A3A11C)       ## $a0 = 80A40000
/* 04690 80A399A0 2484A11C */  addiu   $a0, $a0, %lo(D_80A3A11C)  ## $a0 = 80A3A11C
/* 04694 80A399A4 0C0346BD */  jal     Matrix_MultVec3f              
/* 04698 80A399A8 260504C4 */  addiu   $a1, $s0, 0x04C4           ## $a1 = 000004C4
/* 0469C 80A399AC 8FA2006C */  lw      $v0, 0x006C($sp)           
.L80A399B0:
/* 046A0 80A399B0 860802FC */  lh      $t0, 0x02FC($s0)           ## 000002FC
/* 046A4 80A399B4 2449FFFE */  addiu   $t1, $v0, 0xFFFE           ## $t1 = FFFFFFFE
/* 046A8 80A399B8 2D210016 */  sltiu   $at, $t1, 0x0016           
/* 046AC 80A399BC 51000032 */  beql    $t0, $zero, .L80A39A88     
/* 046B0 80A399C0 8FBF0024 */  lw      $ra, 0x0024($sp)           
/* 046B4 80A399C4 10200017 */  beq     $at, $zero, .L80A39A24     
/* 046B8 80A399C8 00094880 */  sll     $t1, $t1,  2               
/* 046BC 80A399CC 3C0180A4 */  lui     $at, %hi(jtbl_80A3A274)       ## $at = 80A40000
/* 046C0 80A399D0 00290821 */  addu    $at, $at, $t1              
/* 046C4 80A399D4 8C29A274 */  lw      $t1, %lo(jtbl_80A3A274)($at)  
/* 046C8 80A399D8 01200008 */  jr      $t1                        
/* 046CC 80A399DC 00000000 */  nop
glabel L80A399E0
/* 046D0 80A399E0 10000010 */  beq     $zero, $zero, .L80A39A24   
/* 046D4 80A399E4 00008825 */  or      $s1, $zero, $zero          ## $s1 = 00000000
glabel L80A399E8
/* 046D8 80A399E8 1000000E */  beq     $zero, $zero, .L80A39A24   
/* 046DC 80A399EC 24110001 */  addiu   $s1, $zero, 0x0001         ## $s1 = 00000001
glabel L80A399F0
/* 046E0 80A399F0 1000000C */  beq     $zero, $zero, .L80A39A24   
/* 046E4 80A399F4 24110002 */  addiu   $s1, $zero, 0x0002         ## $s1 = 00000002
glabel L80A399F8
/* 046E8 80A399F8 1000000A */  beq     $zero, $zero, .L80A39A24   
/* 046EC 80A399FC 24110003 */  addiu   $s1, $zero, 0x0003         ## $s1 = 00000003
glabel L80A39A00
/* 046F0 80A39A00 10000008 */  beq     $zero, $zero, .L80A39A24   
/* 046F4 80A39A04 24110004 */  addiu   $s1, $zero, 0x0004         ## $s1 = 00000004
glabel L80A39A08
/* 046F8 80A39A08 10000006 */  beq     $zero, $zero, .L80A39A24   
/* 046FC 80A39A0C 24110005 */  addiu   $s1, $zero, 0x0005         ## $s1 = 00000005
glabel L80A39A10
/* 04700 80A39A10 10000004 */  beq     $zero, $zero, .L80A39A24   
/* 04704 80A39A14 24110006 */  addiu   $s1, $zero, 0x0006         ## $s1 = 00000006
glabel L80A39A18
/* 04708 80A39A18 10000002 */  beq     $zero, $zero, .L80A39A24   
/* 0470C 80A39A1C 24110007 */  addiu   $s1, $zero, 0x0007         ## $s1 = 00000007
glabel L80A39A20
/* 04710 80A39A20 24110008 */  addiu   $s1, $zero, 0x0008         ## $s1 = 00000008
glabel L80A39A24
.L80A39A24:
/* 04714 80A39A24 06200017 */  bltz    $s1, .L80A39A84            
/* 04718 80A39A28 3C0480A4 */  lui     $a0, %hi(D_80A3A170)       ## $a0 = 80A40000
/* 0471C 80A39A2C 2484A170 */  addiu   $a0, $a0, %lo(D_80A3A170)  ## $a0 = 80A3A170
/* 04720 80A39A30 0C0346BD */  jal     Matrix_MultVec3f              
/* 04724 80A39A34 27A5003C */  addiu   $a1, $sp, 0x003C           ## $a1 = FFFFFFD4
/* 04728 80A39A38 C7A4003C */  lwc1    $f4, 0x003C($sp)           
/* 0472C 80A39A3C 00115080 */  sll     $t2, $s1,  2               
/* 04730 80A39A40 01515023 */  subu    $t2, $t2, $s1              
/* 04734 80A39A44 4600218D */  trunc.w.s $f6, $f4                   
/* 04738 80A39A48 000A5040 */  sll     $t2, $t2,  1               
/* 0473C 80A39A4C 020A1021 */  addu    $v0, $s0, $t2              
/* 04740 80A39A50 440C3000 */  mfc1    $t4, $f6                   
/* 04744 80A39A54 00000000 */  nop
/* 04748 80A39A58 A44C014C */  sh      $t4, 0x014C($v0)           ## 0000014C
/* 0474C 80A39A5C C7A80040 */  lwc1    $f8, 0x0040($sp)           
/* 04750 80A39A60 4600428D */  trunc.w.s $f10, $f8                  
/* 04754 80A39A64 440E5000 */  mfc1    $t6, $f10                  
/* 04758 80A39A68 00000000 */  nop
/* 0475C 80A39A6C A44E014E */  sh      $t6, 0x014E($v0)           ## 0000014E
/* 04760 80A39A70 C7B00044 */  lwc1    $f16, 0x0044($sp)          
/* 04764 80A39A74 4600848D */  trunc.w.s $f18, $f16                 
/* 04768 80A39A78 44199000 */  mfc1    $t9, $f18                  
/* 0476C 80A39A7C 00000000 */  nop
/* 04770 80A39A80 A4590150 */  sh      $t9, 0x0150($v0)           ## 00000150
.L80A39A84:
/* 04774 80A39A84 8FBF0024 */  lw      $ra, 0x0024($sp)           
.L80A39A88:
/* 04778 80A39A88 8FB0001C */  lw      $s0, 0x001C($sp)           
/* 0477C 80A39A8C 8FB10020 */  lw      $s1, 0x0020($sp)           
/* 04780 80A39A90 03E00008 */  jr      $ra                        
/* 04784 80A39A94 27BD0068 */  addiu   $sp, $sp, 0x0068           ## $sp = 00000000
