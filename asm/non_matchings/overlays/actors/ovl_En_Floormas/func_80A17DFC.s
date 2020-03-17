glabel func_80A17DFC
/* 008EC 80A17DFC 27BDFFA0 */  addiu   $sp, $sp, 0xFFA0           ## $sp = FFFFFFA0
/* 008F0 80A17E00 44800000 */  mtc1    $zero, $f0                 ## $f0 = 0.00
/* 008F4 80A17E04 AFBF004C */  sw      $ra, 0x004C($sp)           
/* 008F8 80A17E08 AFB00048 */  sw      $s0, 0x0048($sp)           
/* 008FC 80A17E0C AFA50064 */  sw      $a1, 0x0064($sp)           
/* 00900 80A17E10 C4840024 */  lwc1    $f4, 0x0024($a0)           ## 00000024
/* 00904 80A17E14 E4800068 */  swc1    $f0, 0x0068($a0)           ## 00000068
/* 00908 80A17E18 E4800060 */  swc1    $f0, 0x0060($a0)           ## 00000060
/* 0090C 80A17E1C 3C014170 */  lui     $at, 0x4170                ## $at = 41700000
/* 00910 80A17E20 E7A40054 */  swc1    $f4, 0x0054($sp)           
/* 00914 80A17E24 C4860028 */  lwc1    $f6, 0x0028($a0)           ## 00000028
/* 00918 80A17E28 44814000 */  mtc1    $at, $f8                   ## $f8 = 15.00
/* 0091C 80A17E2C 00808025 */  or      $s0, $a0, $zero            ## $s0 = 00000000
/* 00920 80A17E30 3C0680A2 */  lui     $a2, %hi(D_80A1A4D0)       ## $a2 = 80A20000
/* 00924 80A17E34 46083280 */  add.s   $f10, $f6, $f8             
/* 00928 80A17E38 3C0780A2 */  lui     $a3, %hi(D_80A1A4DC)       ## $a3 = 80A20000
/* 0092C 80A17E3C 240E0096 */  addiu   $t6, $zero, 0x0096         ## $t6 = 00000096
/* 00930 80A17E40 240FFFF6 */  addiu   $t7, $zero, 0xFFF6         ## $t7 = FFFFFFF6
/* 00934 80A17E44 E7AA0058 */  swc1    $f10, 0x0058($sp)          
/* 00938 80A17E48 C490002C */  lwc1    $f16, 0x002C($a0)          ## 0000002C
/* 0093C 80A17E4C 241800FF */  addiu   $t8, $zero, 0x00FF         ## $t8 = 000000FF
/* 00940 80A17E50 241900FF */  addiu   $t9, $zero, 0x00FF         ## $t9 = 000000FF
/* 00944 80A17E54 240800FF */  addiu   $t0, $zero, 0x00FF         ## $t0 = 000000FF
/* 00948 80A17E58 240900FF */  addiu   $t1, $zero, 0x00FF         ## $t1 = 000000FF
/* 0094C 80A17E5C 240A00FF */  addiu   $t2, $zero, 0x00FF         ## $t2 = 000000FF
/* 00950 80A17E60 240B0001 */  addiu   $t3, $zero, 0x0001         ## $t3 = 00000001
/* 00954 80A17E64 240C0009 */  addiu   $t4, $zero, 0x0009         ## $t4 = 00000009
/* 00958 80A17E68 240D0001 */  addiu   $t5, $zero, 0x0001         ## $t5 = 00000001
/* 0095C 80A17E6C AFAD003C */  sw      $t5, 0x003C($sp)           
/* 00960 80A17E70 AFAC0038 */  sw      $t4, 0x0038($sp)           
/* 00964 80A17E74 AFAB0034 */  sw      $t3, 0x0034($sp)           
/* 00968 80A17E78 AFAA0030 */  sw      $t2, 0x0030($sp)           
/* 0096C 80A17E7C AFA90024 */  sw      $t1, 0x0024($sp)           
/* 00970 80A17E80 AFA80020 */  sw      $t0, 0x0020($sp)           
/* 00974 80A17E84 AFB9001C */  sw      $t9, 0x001C($sp)           
/* 00978 80A17E88 AFB80018 */  sw      $t8, 0x0018($sp)           
/* 0097C 80A17E8C AFA0002C */  sw      $zero, 0x002C($sp)         
/* 00980 80A17E90 AFA00028 */  sw      $zero, 0x0028($sp)         
/* 00984 80A17E94 AFAF0014 */  sw      $t7, 0x0014($sp)           
/* 00988 80A17E98 AFAE0010 */  sw      $t6, 0x0010($sp)           
/* 0098C 80A17E9C 8FA40064 */  lw      $a0, 0x0064($sp)           
/* 00990 80A17EA0 24E7A4DC */  addiu   $a3, $a3, %lo(D_80A1A4DC)  ## $a3 = 80A1A4DC
/* 00994 80A17EA4 24C6A4D0 */  addiu   $a2, $a2, %lo(D_80A1A4D0)  ## $a2 = 80A1A4D0
/* 00998 80A17EA8 27A50054 */  addiu   $a1, $sp, 0x0054           ## $a1 = FFFFFFF4
/* 0099C 80A17EAC 0C00A9AE */  jal     func_8002A6B8              
/* 009A0 80A17EB0 E7B0005C */  swc1    $f16, 0x005C($sp)          
/* 009A4 80A17EB4 3C0E80A2 */  lui     $t6, %hi(func_80A19230)    ## $t6 = 80A20000
/* 009A8 80A17EB8 25CE9230 */  addiu   $t6, $t6, %lo(func_80A19230) ## $t6 = 80A19230
/* 009AC 80A17EBC AE0E0190 */  sw      $t6, 0x0190($s0)           ## 00000190
/* 009B0 80A17EC0 8FBF004C */  lw      $ra, 0x004C($sp)           
/* 009B4 80A17EC4 8FB00048 */  lw      $s0, 0x0048($sp)           
/* 009B8 80A17EC8 27BD0060 */  addiu   $sp, $sp, 0x0060           ## $sp = 00000000
/* 009BC 80A17ECC 03E00008 */  jr      $ra                        
/* 009C0 80A17ED0 00000000 */  nop


