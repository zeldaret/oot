.late_rodata
glabel D_80AF7510
    .float 3.14159274101

glabel D_80AF7514
    .float 3.14159274101

glabel D_80AF7518
    .float 3.14159274101

glabel D_80AF751C
    .float 3.14159274101

.text
glabel func_80AF6D6C
/* 0180C 80AF6D6C 27BDFFD8 */  addiu   $sp, $sp, 0xFFD8           ## $sp = FFFFFFD8
/* 01810 80AF6D70 24010010 */  addiu   $at, $zero, 0x0010         ## $at = 00000010
/* 01814 80AF6D74 AFBF0014 */  sw      $ra, 0x0014($sp)           
/* 01818 80AF6D78 AFA40028 */  sw      $a0, 0x0028($sp)           
/* 0181C 80AF6D7C AFA5002C */  sw      $a1, 0x002C($sp)           
/* 01820 80AF6D80 AFA60030 */  sw      $a2, 0x0030($sp)           
/* 01824 80AF6D84 14A1002D */  bne     $a1, $at, .L80AF6E3C       
/* 01828 80AF6D88 AFA70034 */  sw      $a3, 0x0034($sp)           
/* 0182C 80AF6D8C 44807000 */  mtc1    $zero, $f14                ## $f14 = 0.00
/* 01830 80AF6D90 3C014461 */  lui     $at, 0x4461                ## $at = 44610000
/* 01834 80AF6D94 44816000 */  mtc1    $at, $f12                  ## $f12 = 900.00
/* 01838 80AF6D98 44067000 */  mfc1    $a2, $f14                  
/* 0183C 80AF6D9C 0C034261 */  jal     Matrix_Translate              
/* 01840 80AF6DA0 24070001 */  addiu   $a3, $zero, 0x0001         ## $a3 = 00000001
/* 01844 80AF6DA4 8FB8003C */  lw      $t8, 0x003C($sp)           
/* 01848 80AF6DA8 27AF0018 */  addiu   $t7, $sp, 0x0018           ## $t7 = FFFFFFF0
/* 0184C 80AF6DAC 3C014700 */  lui     $at, 0x4700                ## $at = 47000000
/* 01850 80AF6DB0 8B0801E8 */  lwl     $t0, 0x01E8($t8)           ## 000001E8
/* 01854 80AF6DB4 9B0801EB */  lwr     $t0, 0x01EB($t8)           ## 000001EB
/* 01858 80AF6DB8 44814000 */  mtc1    $at, $f8                   ## $f8 = 32768.00
/* 0185C 80AF6DBC 3C0180AF */  lui     $at, %hi(D_80AF7510)       ## $at = 80AF0000
/* 01860 80AF6DC0 ADE80000 */  sw      $t0, 0x0000($t7)           ## FFFFFFF0
/* 01864 80AF6DC4 970801EC */  lhu     $t0, 0x01EC($t8)           ## 000001EC
/* 01868 80AF6DC8 24050001 */  addiu   $a1, $zero, 0x0001         ## $a1 = 00000001
/* 0186C 80AF6DCC A5E80004 */  sh      $t0, 0x0004($t7)           ## FFFFFFF4
/* 01870 80AF6DD0 87A9001A */  lh      $t1, 0x001A($sp)           
/* 01874 80AF6DD4 C4307510 */  lwc1    $f16, %lo(D_80AF7510)($at) 
/* 01878 80AF6DD8 44892000 */  mtc1    $t1, $f4                   ## $f4 = 0.00
/* 0187C 80AF6DDC 00000000 */  nop
/* 01880 80AF6DE0 468021A0 */  cvt.s.w $f6, $f4                   
/* 01884 80AF6DE4 46083283 */  div.s   $f10, $f6, $f8             
/* 01888 80AF6DE8 46105302 */  mul.s   $f12, $f10, $f16           
/* 0188C 80AF6DEC 0C0342DC */  jal     Matrix_RotateX              
/* 01890 80AF6DF0 00000000 */  nop
/* 01894 80AF6DF4 87AA0018 */  lh      $t2, 0x0018($sp)           
/* 01898 80AF6DF8 3C014700 */  lui     $at, 0x4700                ## $at = 47000000
/* 0189C 80AF6DFC 44813000 */  mtc1    $at, $f6                   ## $f6 = 32768.00
/* 018A0 80AF6E00 448A9000 */  mtc1    $t2, $f18                  ## $f18 = 0.00
/* 018A4 80AF6E04 3C0180AF */  lui     $at, %hi(D_80AF7514)       ## $at = 80AF0000
/* 018A8 80AF6E08 C42A7514 */  lwc1    $f10, %lo(D_80AF7514)($at) 
/* 018AC 80AF6E0C 46809120 */  cvt.s.w $f4, $f18                  
/* 018B0 80AF6E10 24050001 */  addiu   $a1, $zero, 0x0001         ## $a1 = 00000001
/* 018B4 80AF6E14 46062203 */  div.s   $f8, $f4, $f6              
/* 018B8 80AF6E18 460A4302 */  mul.s   $f12, $f8, $f10            
/* 018BC 80AF6E1C 0C0343B5 */  jal     Matrix_RotateZ              
/* 018C0 80AF6E20 00000000 */  nop
/* 018C4 80AF6E24 44807000 */  mtc1    $zero, $f14                ## $f14 = 0.00
/* 018C8 80AF6E28 3C01C461 */  lui     $at, 0xC461                ## $at = C4610000
/* 018CC 80AF6E2C 44816000 */  mtc1    $at, $f12                  ## $f12 = -900.00
/* 018D0 80AF6E30 44067000 */  mfc1    $a2, $f14                  
/* 018D4 80AF6E34 0C034261 */  jal     Matrix_Translate              
/* 018D8 80AF6E38 24070001 */  addiu   $a3, $zero, 0x0001         ## $a3 = 00000001
.L80AF6E3C:
/* 018DC 80AF6E3C 8FAB002C */  lw      $t3, 0x002C($sp)           
/* 018E0 80AF6E40 24010009 */  addiu   $at, $zero, 0x0009         ## $at = 00000009
/* 018E4 80AF6E44 8FAD003C */  lw      $t5, 0x003C($sp)           
/* 018E8 80AF6E48 55610021 */  bnel    $t3, $at, .L80AF6ED0       
/* 018EC 80AF6E4C 8FA80028 */  lw      $t0, 0x0028($sp)           
/* 018F0 80AF6E50 89AF01EE */  lwl     $t7, 0x01EE($t5)           ## 000001EE
/* 018F4 80AF6E54 99AF01F1 */  lwr     $t7, 0x01F1($t5)           ## 000001F1
/* 018F8 80AF6E58 27AC0018 */  addiu   $t4, $sp, 0x0018           ## $t4 = FFFFFFF0
/* 018FC 80AF6E5C 3C014700 */  lui     $at, 0x4700                ## $at = 47000000
/* 01900 80AF6E60 AD8F0000 */  sw      $t7, 0x0000($t4)           ## FFFFFFF0
/* 01904 80AF6E64 95AF01F2 */  lhu     $t7, 0x01F2($t5)           ## 000001F2
/* 01908 80AF6E68 44812000 */  mtc1    $at, $f4                   ## $f4 = 32768.00
/* 0190C 80AF6E6C 3C0180AF */  lui     $at, %hi(D_80AF7518)       ## $at = 80AF0000
/* 01910 80AF6E70 A58F0004 */  sh      $t7, 0x0004($t4)           ## FFFFFFF4
/* 01914 80AF6E74 87B8001A */  lh      $t8, 0x001A($sp)           
/* 01918 80AF6E78 C4287518 */  lwc1    $f8, %lo(D_80AF7518)($at)  
/* 0191C 80AF6E7C 24050001 */  addiu   $a1, $zero, 0x0001         ## $a1 = 00000001
/* 01920 80AF6E80 44988000 */  mtc1    $t8, $f16                  ## $f16 = 0.00
/* 01924 80AF6E84 00000000 */  nop
/* 01928 80AF6E88 468084A0 */  cvt.s.w $f18, $f16                 
/* 0192C 80AF6E8C 46049183 */  div.s   $f6, $f18, $f4             
/* 01930 80AF6E90 46083302 */  mul.s   $f12, $f6, $f8             
/* 01934 80AF6E94 0C034348 */  jal     Matrix_RotateY              
/* 01938 80AF6E98 00000000 */  nop
/* 0193C 80AF6E9C 87B90018 */  lh      $t9, 0x0018($sp)           
/* 01940 80AF6EA0 3C014700 */  lui     $at, 0x4700                ## $at = 47000000
/* 01944 80AF6EA4 44819000 */  mtc1    $at, $f18                  ## $f18 = 32768.00
/* 01948 80AF6EA8 44995000 */  mtc1    $t9, $f10                  ## $f10 = 0.00
/* 0194C 80AF6EAC 3C0180AF */  lui     $at, %hi(D_80AF751C)       ## $at = 80AF0000
/* 01950 80AF6EB0 C426751C */  lwc1    $f6, %lo(D_80AF751C)($at)  
/* 01954 80AF6EB4 46805420 */  cvt.s.w $f16, $f10                 
/* 01958 80AF6EB8 24050001 */  addiu   $a1, $zero, 0x0001         ## $a1 = 00000001
/* 0195C 80AF6EBC 46128103 */  div.s   $f4, $f16, $f18            
/* 01960 80AF6EC0 46062302 */  mul.s   $f12, $f4, $f6             
/* 01964 80AF6EC4 0C0342DC */  jal     Matrix_RotateX              
/* 01968 80AF6EC8 00000000 */  nop
/* 0196C 80AF6ECC 8FA80028 */  lw      $t0, 0x0028($sp)           
.L80AF6ED0:
/* 01970 80AF6ED0 24010056 */  addiu   $at, $zero, 0x0056         ## $at = 00000056
/* 01974 80AF6ED4 8FAA002C */  lw      $t2, 0x002C($sp)           
/* 01978 80AF6ED8 850900A4 */  lh      $t1, 0x00A4($t0)           ## 000000A4
/* 0197C 80AF6EDC 15210006 */  bne     $t1, $at, .L80AF6EF8       
/* 01980 80AF6EE0 2401000F */  addiu   $at, $zero, 0x000F         ## $at = 0000000F
/* 01984 80AF6EE4 15410004 */  bne     $t2, $at, .L80AF6EF8       
/* 01988 80AF6EE8 8FAC0030 */  lw      $t4, 0x0030($sp)           
/* 0198C 80AF6EEC 3C0B0600 */  lui     $t3, 0x0600                ## $t3 = 06000000
/* 01990 80AF6EF0 256B7B80 */  addiu   $t3, $t3, 0x7B80           ## $t3 = 06007B80
/* 01994 80AF6EF4 AD8B0000 */  sw      $t3, 0x0000($t4)           ## 00000000
.L80AF6EF8:
/* 01998 80AF6EF8 8FBF0014 */  lw      $ra, 0x0014($sp)           
/* 0199C 80AF6EFC 27BD0028 */  addiu   $sp, $sp, 0x0028           ## $sp = 00000000
/* 019A0 80AF6F00 00001025 */  or      $v0, $zero, $zero          ## $v0 = 00000000
/* 019A4 80AF6F04 03E00008 */  jr      $ra                        
/* 019A8 80AF6F08 00000000 */  nop
