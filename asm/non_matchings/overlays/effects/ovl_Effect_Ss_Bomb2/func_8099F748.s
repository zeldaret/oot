.rdata
glabel D_8099FF20
    .asciz "../z_eff_ss_bomb2.c"
    .balign 4

glabel D_8099FF34
    .asciz "../z_eff_ss_bomb2.c"
    .balign 4

.late_rodata
glabel D_8099FF84
    .float 0.01

.text
glabel func_8099F748
/* 000F8 8099F748 27BDFEA0 */  addiu   $sp, $sp, 0xFEA0           ## $sp = FFFFFEA0
/* 000FC 8099F74C AFB00014 */  sw      $s0, 0x0014($sp)           
/* 00100 8099F750 AFBF001C */  sw      $ra, 0x001C($sp)           
/* 00104 8099F754 AFB10018 */  sw      $s1, 0x0018($sp)           
/* 00108 8099F758 AFA40160 */  sw      $a0, 0x0160($sp)           
/* 0010C 8099F75C AFA50164 */  sw      $a1, 0x0164($sp)           
/* 00110 8099F760 8C910000 */  lw      $s1, 0x0000($a0)           ## 00000000
/* 00114 8099F764 00C08025 */  or      $s0, $a2, $zero            ## $s0 = 00000000
/* 00118 8099F768 3C06809A */  lui     $a2, %hi(D_8099FF20)       ## $a2 = 809A0000
/* 0011C 8099F76C 24C6FF20 */  addiu   $a2, $a2, %lo(D_8099FF20)  ## $a2 = 8099FF20
/* 00120 8099F770 27A4003C */  addiu   $a0, $sp, 0x003C           ## $a0 = FFFFFEDC
/* 00124 8099F774 2407012A */  addiu   $a3, $zero, 0x012A         ## $a3 = 0000012A
/* 00128 8099F778 0C031AB1 */  jal     Graph_OpenDisps              
/* 0012C 8099F77C 02202825 */  or      $a1, $s1, $zero            ## $a1 = 00000000
/* 00130 8099F780 860F0040 */  lh      $t7, 0x0040($s0)           ## 00000040
/* 00134 8099F784 3C01809A */  lui     $at, %hi(D_8099FF84)       ## $at = 809A0000
/* 00138 8099F788 C428FF84 */  lwc1    $f8, %lo(D_8099FF84)($at)  
/* 0013C 8099F78C 448F2000 */  mtc1    $t7, $f4                   ## $f4 = 0.00
/* 00140 8099F790 8E050000 */  lw      $a1, 0x0000($s0)           ## 00000000
/* 00144 8099F794 8E060004 */  lw      $a2, 0x0004($s0)           ## 00000004
/* 00148 8099F798 468021A0 */  cvt.s.w $f6, $f4                   
/* 0014C 8099F79C 8E070008 */  lw      $a3, 0x0008($s0)           ## 00000008
/* 00150 8099F7A0 27A4011C */  addiu   $a0, $sp, 0x011C           ## $a0 = FFFFFFBC
/* 00154 8099F7A4 46083002 */  mul.s   $f0, $f6, $f8              
/* 00158 8099F7A8 0C029E89 */  jal     func_800A7A24              
/* 0015C 8099F7AC E7A00050 */  swc1    $f0, 0x0050($sp)           
/* 00160 8099F7B0 C7A00050 */  lwc1    $f0, 0x0050($sp)           
/* 00164 8099F7B4 27A400DC */  addiu   $a0, $sp, 0x00DC           ## $a0 = FFFFFF7C
/* 00168 8099F7B8 3C073F80 */  lui     $a3, 0x3F80                ## $a3 = 3F800000
/* 0016C 8099F7BC 44050000 */  mfc1    $a1, $f0                   
/* 00170 8099F7C0 44060000 */  mfc1    $a2, $f0                   
/* 00174 8099F7C4 0C029DA9 */  jal     func_800A76A4              
/* 00178 8099F7C8 00000000 */  nop
/* 0017C 8099F7CC 8FA50160 */  lw      $a1, 0x0160($sp)           
/* 00180 8099F7D0 3C010001 */  lui     $at, 0x0001                ## $at = 00010000
/* 00184 8099F7D4 34211DA0 */  ori     $at, $at, 0x1DA0           ## $at = 00011DA0
/* 00188 8099F7D8 27A4011C */  addiu   $a0, $sp, 0x011C           ## $a0 = FFFFFFBC
/* 0018C 8099F7DC 27A6005C */  addiu   $a2, $sp, 0x005C           ## $a2 = FFFFFEFC
/* 00190 8099F7E0 0C029BE8 */  jal     func_800A6FA0              
/* 00194 8099F7E4 00A12821 */  addu    $a1, $a1, $at              
/* 00198 8099F7E8 27A4005C */  addiu   $a0, $sp, 0x005C           ## $a0 = FFFFFEFC
/* 0019C 8099F7EC 27A500DC */  addiu   $a1, $sp, 0x00DC           ## $a1 = FFFFFF7C
/* 001A0 8099F7F0 0C029BE8 */  jal     func_800A6FA0              
/* 001A4 8099F7F4 27A6009C */  addiu   $a2, $sp, 0x009C           ## $a2 = FFFFFF3C
/* 001A8 8099F7F8 02202025 */  or      $a0, $s1, $zero            ## $a0 = 00000000
/* 001AC 8099F7FC 0C029F9C */  jal     func_800A7E70              
/* 001B0 8099F800 27A5009C */  addiu   $a1, $sp, 0x009C           ## $a1 = FFFFFF3C
/* 001B4 8099F804 1040004B */  beq     $v0, $zero, .L8099F934     
/* 001B8 8099F808 3C19DA38 */  lui     $t9, 0xDA38                ## $t9 = DA380000
/* 001BC 8099F80C 8E2302D0 */  lw      $v1, 0x02D0($s1)           ## 000002D0
/* 001C0 8099F810 37390003 */  ori     $t9, $t9, 0x0003           ## $t9 = DA380003
/* 001C4 8099F814 02202025 */  or      $a0, $s1, $zero            ## $a0 = 00000000
/* 001C8 8099F818 24780008 */  addiu   $t8, $v1, 0x0008           ## $t8 = 00000008
/* 001CC 8099F81C AE3802D0 */  sw      $t8, 0x02D0($s1)           ## 000002D0
/* 001D0 8099F820 AC620004 */  sw      $v0, 0x0004($v1)           ## 00000004
/* 001D4 8099F824 0C0252F1 */  jal     func_80094BC4              
/* 001D8 8099F828 AC790000 */  sw      $t9, 0x0000($v1)           ## 00000000
/* 001DC 8099F82C 8E2302D0 */  lw      $v1, 0x02D0($s1)           ## 000002D0
/* 001E0 8099F830 3C09FA00 */  lui     $t1, 0xFA00                ## $t1 = FA000000
/* 001E4 8099F834 3C04809A */  lui     $a0, %hi(D_8099FEE0)       ## $a0 = 809A0000
/* 001E8 8099F838 24680008 */  addiu   $t0, $v1, 0x0008           ## $t0 = 00000008
/* 001EC 8099F83C AE2802D0 */  sw      $t0, 0x02D0($s1)           ## 000002D0
/* 001F0 8099F840 AC690000 */  sw      $t1, 0x0000($v1)           ## 00000000
/* 001F4 8099F844 860A004A */  lh      $t2, 0x004A($s0)           ## 0000004A
/* 001F8 8099F848 86180046 */  lh      $t8, 0x0046($s0)           ## 00000046
/* 001FC 8099F84C 860D0044 */  lh      $t5, 0x0044($s0)           ## 00000044
/* 00200 8099F850 314B00FF */  andi    $t3, $t2, 0x00FF           ## $t3 = 00000000
/* 00204 8099F854 860A0048 */  lh      $t2, 0x0048($s0)           ## 00000048
/* 00208 8099F858 331900FF */  andi    $t9, $t8, 0x00FF           ## $t9 = 00000000
/* 0020C 8099F85C 000D7600 */  sll     $t6, $t5, 24               
/* 00210 8099F860 016E7825 */  or      $t7, $t3, $t6              ## $t7 = 00000000
/* 00214 8099F864 00194400 */  sll     $t0, $t9, 16               
/* 00218 8099F868 314C00FF */  andi    $t4, $t2, 0x00FF           ## $t4 = 00000000
/* 0021C 8099F86C 000C6A00 */  sll     $t5, $t4,  8               
/* 00220 8099F870 01E84825 */  or      $t1, $t7, $t0              ## $t1 = 00000008
/* 00224 8099F874 012D5825 */  or      $t3, $t1, $t5              ## $t3 = 00000008
/* 00228 8099F878 AC6B0004 */  sw      $t3, 0x0004($v1)           ## 00000004
/* 0022C 8099F87C 8E2302D0 */  lw      $v1, 0x02D0($s1)           ## 000002D0
/* 00230 8099F880 3C18FB00 */  lui     $t8, 0xFB00                ## $t8 = FB000000
/* 00234 8099F884 3C0ADB06 */  lui     $t2, 0xDB06                ## $t2 = DB060000
/* 00238 8099F888 246E0008 */  addiu   $t6, $v1, 0x0008           ## $t6 = 00000008
/* 0023C 8099F88C AE2E02D0 */  sw      $t6, 0x02D0($s1)           ## 000002D0
/* 00240 8099F890 AC780000 */  sw      $t8, 0x0000($v1)           ## 00000000
/* 00244 8099F894 86190050 */  lh      $t9, 0x0050($s0)           ## 00000050
/* 00248 8099F898 860B004E */  lh      $t3, 0x004E($s0)           ## 0000004E
/* 0024C 8099F89C 860C004C */  lh      $t4, 0x004C($s0)           ## 0000004C
/* 00250 8099F8A0 332F00FF */  andi    $t7, $t9, 0x00FF           ## $t7 = 00000000
/* 00254 8099F8A4 000F4200 */  sll     $t0, $t7,  8               
/* 00258 8099F8A8 316E00FF */  andi    $t6, $t3, 0x00FF           ## $t6 = 00000008
/* 0025C 8099F8AC 000C4E00 */  sll     $t1, $t4, 24               
/* 00260 8099F8B0 01096825 */  or      $t5, $t0, $t1              ## $t5 = 00000008
/* 00264 8099F8B4 000EC400 */  sll     $t8, $t6, 16               
/* 00268 8099F8B8 01B8C825 */  or      $t9, $t5, $t8              ## $t9 = FB000008
/* 0026C 8099F8BC AC790004 */  sw      $t9, 0x0004($v1)           ## 00000004
/* 00270 8099F8C0 8E2302D0 */  lw      $v1, 0x02D0($s1)           ## 000002D0
/* 00274 8099F8C4 354A0020 */  ori     $t2, $t2, 0x0020           ## $t2 = DB060020
/* 00278 8099F8C8 3C188016 */  lui     $t8, %hi(gSegments)
/* 0027C 8099F8CC 246F0008 */  addiu   $t7, $v1, 0x0008           ## $t7 = 00000008
/* 00280 8099F8D0 AE2F02D0 */  sw      $t7, 0x02D0($s1)           ## 000002D0
/* 00284 8099F8D4 AC6A0000 */  sw      $t2, 0x0000($v1)           ## 00000000
/* 00288 8099F8D8 860C0042 */  lh      $t4, 0x0042($s0)           ## 00000042
/* 0028C 8099F8DC 3C0100FF */  lui     $at, 0x00FF                ## $at = 00FF0000
/* 00290 8099F8E0 3421FFFF */  ori     $at, $at, 0xFFFF           ## $at = 00FFFFFF
/* 00294 8099F8E4 000C4080 */  sll     $t0, $t4,  2               
/* 00298 8099F8E8 00882021 */  addu    $a0, $a0, $t0              
/* 0029C 8099F8EC 8C84FEE0 */  lw      $a0, %lo(D_8099FEE0)($a0)  
/* 002A0 8099F8F0 3C0CDE00 */  lui     $t4, 0xDE00                ## $t4 = DE000000
/* 002A4 8099F8F4 00045900 */  sll     $t3, $a0,  4               
/* 002A8 8099F8F8 000B7702 */  srl     $t6, $t3, 28               
/* 002AC 8099F8FC 000E6880 */  sll     $t5, $t6,  2               
/* 002B0 8099F900 030DC021 */  addu    $t8, $t8, $t5              
/* 002B4 8099F904 8F186FA8 */  lw      $t8, %lo(gSegments)($t8)
/* 002B8 8099F908 00814824 */  and     $t1, $a0, $at              
/* 002BC 8099F90C 3C018000 */  lui     $at, 0x8000                ## $at = 80000000
/* 002C0 8099F910 0138C821 */  addu    $t9, $t1, $t8              
/* 002C4 8099F914 03217821 */  addu    $t7, $t9, $at              
/* 002C8 8099F918 AC6F0004 */  sw      $t7, 0x0004($v1)           ## 00000004
/* 002CC 8099F91C 8E2302D0 */  lw      $v1, 0x02D0($s1)           ## 000002D0
/* 002D0 8099F920 246A0008 */  addiu   $t2, $v1, 0x0008           ## $t2 = 00000008
/* 002D4 8099F924 AE2A02D0 */  sw      $t2, 0x02D0($s1)           ## 000002D0
/* 002D8 8099F928 AC6C0000 */  sw      $t4, 0x0000($v1)           ## 00000000
/* 002DC 8099F92C 8E080038 */  lw      $t0, 0x0038($s0)           ## 00000038
/* 002E0 8099F930 AC680004 */  sw      $t0, 0x0004($v1)           ## 00000004
.L8099F934:
/* 002E4 8099F934 3C06809A */  lui     $a2, %hi(D_8099FF34)       ## $a2 = 809A0000
/* 002E8 8099F938 24C6FF34 */  addiu   $a2, $a2, %lo(D_8099FF34)  ## $a2 = 8099FF34
/* 002EC 8099F93C 27A4003C */  addiu   $a0, $sp, 0x003C           ## $a0 = FFFFFEDC
/* 002F0 8099F940 02202825 */  or      $a1, $s1, $zero            ## $a1 = 00000000
/* 002F4 8099F944 0C031AD5 */  jal     Graph_CloseDisps              
/* 002F8 8099F948 24070159 */  addiu   $a3, $zero, 0x0159         ## $a3 = 00000159
/* 002FC 8099F94C 8FBF001C */  lw      $ra, 0x001C($sp)           
/* 00300 8099F950 8FB00014 */  lw      $s0, 0x0014($sp)           
/* 00304 8099F954 8FB10018 */  lw      $s1, 0x0018($sp)           
/* 00308 8099F958 03E00008 */  jr      $ra                        
/* 0030C 8099F95C 27BD0160 */  addiu   $sp, $sp, 0x0160           ## $sp = 00000000
