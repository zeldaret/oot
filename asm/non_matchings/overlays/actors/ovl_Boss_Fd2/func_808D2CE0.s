.rdata
glabel D_808D62E8
    .asciz "UP 1    mode %d\n"
    .balign 4

glabel D_808D62FC
    .asciz "UP 1.5 \n"
    .balign 4

glabel D_808D6308
    .asciz "UP time %d \n"
    .balign 4

glabel D_808D6318
    .asciz "PL time %x \n"
    .balign 4

glabel D_808D6328
    .asciz "MT time %x \n"
    .balign 4

glabel D_808D6338
    .asciz "UP 1.6 \n"
    .balign 4

glabel D_808D6344
    .asciz "UP 1.7 \n"
    .balign 4

glabel D_808D6350
    .asciz "UP 2\n"
    .balign 4

.late_rodata
glabel D_808D6480
 .word 0x410E6666

.text
glabel func_808D2CE0
/* 00670 808D2CE0 27BDFFC0 */  addiu   $sp, $sp, 0xFFC0           ## $sp = FFFFFFC0
/* 00674 808D2CE4 AFBF0034 */  sw      $ra, 0x0034($sp)           
/* 00678 808D2CE8 AFB20030 */  sw      $s2, 0x0030($sp)           
/* 0067C 808D2CEC AFB1002C */  sw      $s1, 0x002C($sp)           
/* 00680 808D2CF0 AFB00028 */  sw      $s0, 0x0028($sp)           
/* 00684 808D2CF4 F7B40020 */  sdc1    $f20, 0x0020($sp)          
/* 00688 808D2CF8 AFA50044 */  sw      $a1, 0x0044($sp)           
/* 0068C 808D2CFC 8C8E0118 */  lw      $t6, 0x0118($a0)           ## 00000118
/* 00690 808D2D00 00809025 */  or      $s2, $a0, $zero            ## $s2 = 00000000
/* 00694 808D2D04 3C04808D */  lui     $a0, %hi(D_808D62E8)       ## $a0 = 808D0000
/* 00698 808D2D08 AFAE0038 */  sw      $t6, 0x0038($sp)           
/* 0069C 808D2D0C 8CB01C44 */  lw      $s0, 0x1C44($a1)           ## 00001C44
/* 006A0 808D2D10 86450198 */  lh      $a1, 0x0198($s2)           ## 00000198
/* 006A4 808D2D14 0C00084C */  jal     osSyncPrintf
              
/* 006A8 808D2D18 248462E8 */  addiu   $a0, $a0, %lo(D_808D62E8)  ## $a0 = 808D62E8
/* 006AC 808D2D1C 2651014C */  addiu   $s1, $s2, 0x014C           ## $s1 = 0000014C
/* 006B0 808D2D20 0C02927F */  jal     SkelAnime_FrameUpdateMatrix
              
/* 006B4 808D2D24 02202025 */  or      $a0, $s1, $zero            ## $a0 = 0000014C
/* 006B8 808D2D28 3C04808D */  lui     $a0, %hi(D_808D62FC)       ## $a0 = 808D0000
/* 006BC 808D2D2C 0C00084C */  jal     osSyncPrintf
              
/* 006C0 808D2D30 248462FC */  addiu   $a0, $a0, %lo(D_808D62FC)  ## $a0 = 808D62FC
/* 006C4 808D2D34 86420198 */  lh      $v0, 0x0198($s2)           ## 00000198
/* 006C8 808D2D38 3C04808D */  lui     $a0, %hi(D_808D6308)       ## $a0 = 808D0000
/* 006CC 808D2D3C 24010001 */  addiu   $at, $zero, 0x0001         ## $at = 00000001
/* 006D0 808D2D40 10400007 */  beq     $v0, $zero, .L808D2D60     
/* 006D4 808D2D44 24846308 */  addiu   $a0, $a0, %lo(D_808D6308)  ## $a0 = 808D6308
/* 006D8 808D2D48 1041004F */  beq     $v0, $at, .L808D2E88       
/* 006DC 808D2D4C 24010002 */  addiu   $at, $zero, 0x0002         ## $at = 00000002
/* 006E0 808D2D50 104100A3 */  beq     $v0, $at, .L808D2FE0       
/* 006E4 808D2D54 264400B6 */  addiu   $a0, $s2, 0x00B6           ## $a0 = 000000B6
/* 006E8 808D2D58 100000C2 */  beq     $zero, $zero, .L808D3064   
/* 006EC 808D2D5C 00000000 */  nop
.L808D2D60:
/* 006F0 808D2D60 0C00084C */  jal     osSyncPrintf
              
/* 006F4 808D2D64 864501BC */  lh      $a1, 0x01BC($s2)           ## 000001BC
/* 006F8 808D2D68 3C04808D */  lui     $a0, %hi(D_808D6318)       ## $a0 = 808D0000
/* 006FC 808D2D6C 24846318 */  addiu   $a0, $a0, %lo(D_808D6318)  ## $a0 = 808D6318
/* 00700 808D2D70 0C00084C */  jal     osSyncPrintf
              
/* 00704 808D2D74 02002825 */  or      $a1, $s0, $zero            ## $a1 = 00000000
/* 00708 808D2D78 3C04808D */  lui     $a0, %hi(D_808D6328)       ## $a0 = 808D0000
/* 0070C 808D2D7C 24846328 */  addiu   $a0, $a0, %lo(D_808D6328)  ## $a0 = 808D6328
/* 00710 808D2D80 0C00084C */  jal     osSyncPrintf
              
/* 00714 808D2D84 8FA50038 */  lw      $a1, 0x0038($sp)           
/* 00718 808D2D88 865801BC */  lh      $t8, 0x01BC($s2)           ## 000001BC
/* 0071C 808D2D8C 3C01428C */  lui     $at, 0x428C                ## $at = 428C0000
/* 00720 808D2D90 170000B4 */  bne     $t8, $zero, .L808D3064     
/* 00724 808D2D94 00000000 */  nop
/* 00728 808D2D98 44812000 */  mtc1    $at, $f4                   ## $f4 = 70.00
/* 0072C 808D2D9C C6060028 */  lwc1    $f6, 0x0028($s0)           ## 00000028
/* 00730 808D2DA0 3C04808D */  lui     $a0, %hi(D_808D6338)       ## $a0 = 808D0000
/* 00734 808D2DA4 4606203C */  c.lt.s  $f4, $f6                   
/* 00738 808D2DA8 00000000 */  nop
/* 0073C 808D2DAC 450000AD */  bc1f    .L808D3064                 
/* 00740 808D2DB0 00000000 */  nop
/* 00744 808D2DB4 0C00084C */  jal     osSyncPrintf
              
/* 00748 808D2DB8 24846338 */  addiu   $a0, $a0, %lo(D_808D6338)  ## $a0 = 808D6338
/* 0074C 808D2DBC 8FA20038 */  lw      $v0, 0x0038($sp)           
/* 00750 808D2DC0 24050001 */  addiu   $a1, $zero, 0x0001         ## $a1 = 00000001
/* 00754 808D2DC4 24060032 */  addiu   $a2, $zero, 0x0032         ## $a2 = 00000032
/* 00758 808D2DC8 A04002D7 */  sb      $zero, 0x02D7($v0)         ## 000002D7
/* 0075C 808D2DCC C6480024 */  lwc1    $f8, 0x0024($s2)           ## 00000024
/* 00760 808D2DD0 24075000 */  addiu   $a3, $zero, 0x5000         ## $a3 = 00005000
/* 00764 808D2DD4 E44802C8 */  swc1    $f8, 0x02C8($v0)           ## 000002C8
/* 00768 808D2DD8 C64A002C */  lwc1    $f10, 0x002C($s2)          ## 0000002C
/* 0076C 808D2DDC E44A02D0 */  swc1    $f10, 0x02D0($v0)          ## 000002D0
/* 00770 808D2DE0 0C00CF87 */  jal     func_80033E1C              
/* 00774 808D2DE4 8FA40044 */  lw      $a0, 0x0044($sp)           
/* 00778 808D2DE8 864801A8 */  lh      $t0, 0x01A8($s2)           ## 000001A8
/* 0077C 808D2DEC 3C01C348 */  lui     $at, 0xC348                ## $at = C3480000
/* 00780 808D2DF0 44818000 */  mtc1    $at, $f16                  ## $f16 = -200.00
/* 00784 808D2DF4 24190001 */  addiu   $t9, $zero, 0x0001         ## $t9 = 00000001
/* 00788 808D2DF8 25090001 */  addiu   $t1, $t0, 0x0001           ## $t1 = 00000001
/* 0078C 808D2DFC A6590198 */  sh      $t9, 0x0198($s2)           ## 00000198
/* 00790 808D2E00 A64901A8 */  sh      $t1, 0x01A8($s2)           ## 000001A8
/* 00794 808D2E04 E6500028 */  swc1    $f16, 0x0028($s2)          ## 00000028
/* 00798 808D2E08 8FAA0038 */  lw      $t2, 0x0038($sp)           
/* 0079C 808D2E0C 24010018 */  addiu   $at, $zero, 0x0018         ## $at = 00000018
/* 007A0 808D2E10 3C04808D */  lui     $a0, %hi(D_808D6344)       ## $a0 = 808D0000
/* 007A4 808D2E14 814200AF */  lb      $v0, 0x00AF($t2)           ## 000000AF
/* 007A8 808D2E18 54410004 */  bnel    $v0, $at, .L808D2E2C       
/* 007AC 808D2E1C 28410012 */  slti    $at, $v0, 0x0012           
/* 007B0 808D2E20 10000010 */  beq     $zero, $zero, .L808D2E64   
/* 007B4 808D2E24 2402001E */  addiu   $v0, $zero, 0x001E         ## $v0 = 0000001E
/* 007B8 808D2E28 28410012 */  slti    $at, $v0, 0x0012           
.L808D2E2C:
/* 007BC 808D2E2C 54200004 */  bnel    $at, $zero, .L808D2E40     
/* 007C0 808D2E30 2841000C */  slti    $at, $v0, 0x000C           
/* 007C4 808D2E34 1000000B */  beq     $zero, $zero, .L808D2E64   
/* 007C8 808D2E38 24020019 */  addiu   $v0, $zero, 0x0019         ## $v0 = 00000019
/* 007CC 808D2E3C 2841000C */  slti    $at, $v0, 0x000C           
.L808D2E40:
/* 007D0 808D2E40 54200004 */  bnel    $at, $zero, .L808D2E54     
/* 007D4 808D2E44 28410006 */  slti    $at, $v0, 0x0006           
/* 007D8 808D2E48 10000006 */  beq     $zero, $zero, .L808D2E64   
/* 007DC 808D2E4C 24020014 */  addiu   $v0, $zero, 0x0014         ## $v0 = 00000014
/* 007E0 808D2E50 28410006 */  slti    $at, $v0, 0x0006           
.L808D2E54:
/* 007E4 808D2E54 14200003 */  bne     $at, $zero, .L808D2E64     
/* 007E8 808D2E58 24020005 */  addiu   $v0, $zero, 0x0005         ## $v0 = 00000005
/* 007EC 808D2E5C 10000001 */  beq     $zero, $zero, .L808D2E64   
/* 007F0 808D2E60 2402000A */  addiu   $v0, $zero, 0x000A         ## $v0 = 0000000A
.L808D2E64:
/* 007F4 808D2E64 A64201BC */  sh      $v0, 0x01BC($s2)           ## 000001BC
/* 007F8 808D2E68 864B01BC */  lh      $t3, 0x01BC($s2)           ## 000001BC
/* 007FC 808D2E6C 8FAD0038 */  lw      $t5, 0x0038($sp)           
/* 00800 808D2E70 24846344 */  addiu   $a0, $a0, %lo(D_808D6344)  ## $a0 = 808D6344
/* 00804 808D2E74 256C000A */  addiu   $t4, $t3, 0x000A           ## $t4 = 0000000A
/* 00808 808D2E78 0C00084C */  jal     osSyncPrintf
              
/* 0080C 808D2E7C A5AC0250 */  sh      $t4, 0x0250($t5)           ## 00000250
/* 00810 808D2E80 10000078 */  beq     $zero, $zero, .L808D3064   
/* 00814 808D2E84 00000000 */  nop
.L808D2E88:
/* 00818 808D2E88 864E01BC */  lh      $t6, 0x01BC($s2)           ## 000001BC
/* 0081C 808D2E8C 15C00075 */  bne     $t6, $zero, .L808D3064     
/* 00820 808D2E90 00000000 */  nop
/* 00824 808D2E94 864201AC */  lh      $v0, 0x01AC($s2)           ## 000001AC
/* 00828 808D2E98 3C01808D */  lui     $at, %hi(D_808D6480)       ## $at = 808D0000
/* 0082C 808D2E9C 10400017 */  beq     $v0, $zero, .L808D2EFC     
/* 00830 808D2EA0 244FFFFF */  addiu   $t7, $v0, 0xFFFF           ## $t7 = FFFFFFFF
/* 00834 808D2EA4 A64F01AC */  sh      $t7, 0x01AC($s2)           ## 000001AC
/* 00838 808D2EA8 0C00CFBE */  jal     Math_Rand_ZeroFloat
              
/* 0083C 808D2EAC C42C6480 */  lwc1    $f12, %lo(D_808D6480)($at) 
/* 00840 808D2EB0 4600048D */  trunc.w.s $f18, $f0                  
/* 00844 808D2EB4 3C0B808D */  lui     $t3, %hi(D_808D6124)       ## $t3 = 808D0000
/* 00848 808D2EB8 256B6124 */  addiu   $t3, $t3, %lo(D_808D6124)  ## $t3 = 808D6124
/* 0084C 808D2EBC 240C000A */  addiu   $t4, $zero, 0x000A         ## $t4 = 0000000A
/* 00850 808D2EC0 44199000 */  mfc1    $t9, $f18                  
/* 00854 808D2EC4 00000000 */  nop
/* 00858 808D2EC8 00194400 */  sll     $t0, $t9, 16               
/* 0085C 808D2ECC 00084C03 */  sra     $t1, $t0, 16               
/* 00860 808D2ED0 00095080 */  sll     $t2, $t1,  2               
/* 00864 808D2ED4 01495023 */  subu    $t2, $t2, $t1              
/* 00868 808D2ED8 000A5080 */  sll     $t2, $t2,  2               
/* 0086C 808D2EDC 014B1021 */  addu    $v0, $t2, $t3              
/* 00870 808D2EE0 C4440000 */  lwc1    $f4, 0x0000($v0)           ## 00000000
/* 00874 808D2EE4 E6440024 */  swc1    $f4, 0x0024($s2)           ## 00000024
/* 00878 808D2EE8 C4460008 */  lwc1    $f6, 0x0008($v0)           ## 00000008
/* 0087C 808D2EEC A6400198 */  sh      $zero, 0x0198($s2)         ## 00000198
/* 00880 808D2EF0 A64C01BC */  sh      $t4, 0x01BC($s2)           ## 000001BC
/* 00884 808D2EF4 1000005B */  beq     $zero, $zero, .L808D3064   
/* 00888 808D2EF8 E646002C */  swc1    $f6, 0x002C($s2)           ## 0000002C
.L808D2EFC:
/* 0088C 808D2EFC 3C013F80 */  lui     $at, 0x3F80                ## $at = 3F800000
/* 00890 808D2F00 44814000 */  mtc1    $at, $f8                   ## $f8 = 1.00
/* 00894 808D2F04 3C040601 */  lui     $a0, 0x0601                ## $a0 = 06010000
/* 00898 808D2F08 2484C1D0 */  addiu   $a0, $a0, 0xC1D0           ## $a0 = 0600C1D0
/* 0089C 808D2F0C 0C028800 */  jal     SkelAnime_GetFrameCount
              
/* 008A0 808D2F10 E6480168 */  swc1    $f8, 0x0168($s2)           ## 00000168
/* 008A4 808D2F14 44825000 */  mtc1    $v0, $f10                  ## $f10 = 0.00
/* 008A8 808D2F18 240D0002 */  addiu   $t5, $zero, 0x0002         ## $t5 = 00000002
/* 008AC 808D2F1C A64D0198 */  sh      $t5, 0x0198($s2)           ## 00000198
/* 008B0 808D2F20 46805420 */  cvt.s.w $f16, $f10                 
/* 008B4 808D2F24 02402025 */  or      $a0, $s2, $zero            ## $a0 = 00000000
/* 008B8 808D2F28 240538D1 */  addiu   $a1, $zero, 0x38D1         ## $a1 = 000038D1
/* 008BC 808D2F2C 0C00BE0A */  jal     Audio_PlayActorSound2
              
/* 008C0 808D2F30 E65001F0 */  swc1    $f16, 0x01F0($s2)          ## 000001F0
/* 008C4 808D2F34 3C014316 */  lui     $at, 0x4316                ## $at = 43160000
/* 008C8 808D2F38 44819000 */  mtc1    $at, $f18                  ## $f18 = 150.00
/* 008CC 808D2F3C 864E008A */  lh      $t6, 0x008A($s2)           ## 0000008A
/* 008D0 808D2F40 3C0142C8 */  lui     $at, 0x42C8                ## $at = 42C80000
/* 008D4 808D2F44 240F000F */  addiu   $t7, $zero, 0x000F         ## $t7 = 0000000F
/* 008D8 808D2F48 4481A000 */  mtc1    $at, $f20                  ## $f20 = 100.00
/* 008DC 808D2F4C A64F01BC */  sh      $t7, 0x01BC($s2)           ## 000001BC
/* 008E0 808D2F50 00008825 */  or      $s1, $zero, $zero          ## $s1 = 00000000
/* 008E4 808D2F54 A64E00B6 */  sh      $t6, 0x00B6($s2)           ## 000000B6
/* 008E8 808D2F58 E6520028 */  swc1    $f18, 0x0028($s2)          ## 00000028
.L808D2F5C:
/* 008EC 808D2F5C 0C00CFC8 */  jal     Math_Rand_CenteredFloat
              
/* 008F0 808D2F60 4600A306 */  mov.s   $f12, $f20                 
/* 008F4 808D2F64 0011C080 */  sll     $t8, $s1,  2               
/* 008F8 808D2F68 0311C023 */  subu    $t8, $t8, $s1              
/* 008FC 808D2F6C 0018C080 */  sll     $t8, $t8,  2               
/* 00900 808D2F70 02588021 */  addu    $s0, $s2, $t8              
/* 00904 808D2F74 C60410C8 */  lwc1    $f4, 0x10C8($s0)           ## 000010C8
/* 00908 808D2F78 4600A306 */  mov.s   $f12, $f20                 
/* 0090C 808D2F7C 46002180 */  add.s   $f6, $f4, $f0              
/* 00910 808D2F80 0C00CFC8 */  jal     Math_Rand_CenteredFloat
              
/* 00914 808D2F84 E60610C8 */  swc1    $f6, 0x10C8($s0)           ## 000010C8
/* 00918 808D2F88 C60810D0 */  lwc1    $f8, 0x10D0($s0)           ## 000010D0
/* 0091C 808D2F8C 4600A306 */  mov.s   $f12, $f20                 
/* 00920 808D2F90 46004280 */  add.s   $f10, $f8, $f0             
/* 00924 808D2F94 0C00CFC8 */  jal     Math_Rand_CenteredFloat
              
/* 00928 808D2F98 E60A10D0 */  swc1    $f10, 0x10D0($s0)          ## 000010D0
/* 0092C 808D2F9C C6101264 */  lwc1    $f16, 0x1264($s0)          ## 00001264
/* 00930 808D2FA0 4600A306 */  mov.s   $f12, $f20                 
/* 00934 808D2FA4 46008480 */  add.s   $f18, $f16, $f0            
/* 00938 808D2FA8 0C00CFC8 */  jal     Math_Rand_CenteredFloat
              
/* 0093C 808D2FAC E6121264 */  swc1    $f18, 0x1264($s0)          ## 00001264
/* 00940 808D2FB0 C604126C */  lwc1    $f4, 0x126C($s0)           ## 0000126C
/* 00944 808D2FB4 26310001 */  addiu   $s1, $s1, 0x0001           ## $s1 = 00000001
/* 00948 808D2FB8 00118C00 */  sll     $s1, $s1, 16               
/* 0094C 808D2FBC 46002180 */  add.s   $f6, $f4, $f0              
/* 00950 808D2FC0 00118C03 */  sra     $s1, $s1, 16               
/* 00954 808D2FC4 2A21000A */  slti    $at, $s1, 0x000A           
/* 00958 808D2FC8 1420FFE4 */  bne     $at, $zero, .L808D2F5C     
/* 0095C 808D2FCC E606126C */  swc1    $f6, 0x126C($s0)           ## 0000126C
/* 00960 808D2FD0 8FA80038 */  lw      $t0, 0x0038($sp)           
/* 00964 808D2FD4 24190005 */  addiu   $t9, $zero, 0x0005         ## $t9 = 00000005
/* 00968 808D2FD8 10000022 */  beq     $zero, $zero, .L808D3064   
/* 0096C 808D2FDC A5190240 */  sh      $t9, 0x0240($t0)           ## 00000240
.L808D2FE0:
/* 00970 808D2FE0 8645008A */  lh      $a1, 0x008A($s2)           ## 0000008A
/* 00974 808D2FE4 24060003 */  addiu   $a2, $zero, 0x0003         ## $a2 = 00000003
/* 00978 808D2FE8 0C01E1EF */  jal     Math_SmoothScaleMaxS
              
/* 0097C 808D2FEC 240707D0 */  addiu   $a3, $zero, 0x07D0         ## $a3 = 000007D0
/* 00980 808D2FF0 864901BC */  lh      $t1, 0x01BC($s2)           ## 000001BC
/* 00984 808D2FF4 24010001 */  addiu   $at, $zero, 0x0001         ## $at = 00000001
/* 00988 808D2FF8 15210013 */  bne     $t1, $at, .L808D3048       
/* 0098C 808D2FFC 3C0142F0 */  lui     $at, 0x42F0                ## $at = 42F00000
/* 00990 808D3000 44815000 */  mtc1    $at, $f10                  ## $f10 = 120.00
/* 00994 808D3004 C6480090 */  lwc1    $f8, 0x0090($s2)           ## 00000090
/* 00998 808D3008 3C014000 */  lui     $at, 0x4000                ## $at = 40000000
/* 0099C 808D300C 8FA40044 */  lw      $a0, 0x0044($sp)           
/* 009A0 808D3010 460A403C */  c.lt.s  $f8, $f10                  
/* 009A4 808D3014 02402825 */  or      $a1, $s2, $zero            ## $a1 = 00000000
/* 009A8 808D3018 3C064040 */  lui     $a2, 0x4040                ## $a2 = 40400000
/* 009AC 808D301C 240A0020 */  addiu   $t2, $zero, 0x0020         ## $t2 = 00000020
/* 009B0 808D3020 4502000A */  bc1fl   .L808D304C                 
/* 009B4 808D3024 02202025 */  or      $a0, $s1, $zero            ## $a0 = 00000001
/* 009B8 808D3028 44818000 */  mtc1    $at, $f16                  ## $f16 = 2.00
/* 009BC 808D302C 8647008A */  lh      $a3, 0x008A($s2)           ## 0000008A
/* 009C0 808D3030 AFAA0014 */  sw      $t2, 0x0014($sp)           
/* 009C4 808D3034 0C00BDB5 */  jal     func_8002F6D4              
/* 009C8 808D3038 E7B00010 */  swc1    $f16, 0x0010($sp)          
/* 009CC 808D303C 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 009D0 808D3040 0C00BE0A */  jal     Audio_PlayActorSound2
              
/* 009D4 808D3044 2405083E */  addiu   $a1, $zero, 0x083E         ## $a1 = 0000083E
.L808D3048:
/* 009D8 808D3048 02202025 */  or      $a0, $s1, $zero            ## $a0 = 00000001
.L808D304C:
/* 009DC 808D304C 0C0295B2 */  jal     func_800A56C8              
/* 009E0 808D3050 8E4501F0 */  lw      $a1, 0x01F0($s2)           ## 000001F0
/* 009E4 808D3054 10400003 */  beq     $v0, $zero, .L808D3064     
/* 009E8 808D3058 02402025 */  or      $a0, $s2, $zero            ## $a0 = 00000000
/* 009EC 808D305C 0C234C23 */  jal     func_808D308C              
/* 009F0 808D3060 8FA50044 */  lw      $a1, 0x0044($sp)           
.L808D3064:
/* 009F4 808D3064 3C04808D */  lui     $a0, %hi(D_808D6350)       ## $a0 = 808D0000
/* 009F8 808D3068 0C00084C */  jal     osSyncPrintf
              
/* 009FC 808D306C 24846350 */  addiu   $a0, $a0, %lo(D_808D6350)  ## $a0 = 808D6350
/* 00A00 808D3070 8FBF0034 */  lw      $ra, 0x0034($sp)           
/* 00A04 808D3074 D7B40020 */  ldc1    $f20, 0x0020($sp)          
/* 00A08 808D3078 8FB00028 */  lw      $s0, 0x0028($sp)           
/* 00A0C 808D307C 8FB1002C */  lw      $s1, 0x002C($sp)           
/* 00A10 808D3080 8FB20030 */  lw      $s2, 0x0030($sp)           
/* 00A14 808D3084 03E00008 */  jr      $ra                        
/* 00A18 808D3088 27BD0040 */  addiu   $sp, $sp, 0x0040           ## $sp = 00000000
