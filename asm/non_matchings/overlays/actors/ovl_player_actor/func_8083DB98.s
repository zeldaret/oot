glabel func_8083DB98
/* 0B988 8083DB98 27BDFFC0 */  addiu   $sp, $sp, 0xFFC0           ## $sp = FFFFFFC0
/* 0B98C 8083DB9C AFBF0024 */  sw      $ra, 0x0024($sp)           
/* 0B990 8083DBA0 AFB00020 */  sw      $s0, 0x0020($sp)           
/* 0B994 8083DBA4 AFA50044 */  sw      $a1, 0x0044($sp)           
/* 0B998 8083DBA8 C4840024 */  lwc1    $f4, 0x0024($a0)           ## 00000024
/* 0B99C 8083DBAC 8C820664 */  lw      $v0, 0x0664($a0)           ## 00000664
/* 0B9A0 8083DBB0 3C014040 */  lui     $at, 0x4040                ## $at = 40400000
/* 0B9A4 8083DBB4 E7A40030 */  swc1    $f4, 0x0030($sp)           
/* 0B9A8 8083DBB8 C4860960 */  lwc1    $f6, 0x0960($a0)           ## 00000960
/* 0B9AC 8083DBBC 44814000 */  mtc1    $at, $f8                   ## $f8 = 3.00
/* 0B9B0 8083DBC0 00808025 */  or      $s0, $a0, $zero            ## $s0 = 00000000
/* 0B9B4 8083DBC4 24450038 */  addiu   $a1, $v0, 0x0038           ## $a1 = 00000038
/* 0B9B8 8083DBC8 46083280 */  add.s   $f10, $f6, $f8             
/* 0B9BC 8083DBCC E7AA0034 */  swc1    $f10, 0x0034($sp)          
/* 0B9C0 8083DBD0 C490002C */  lwc1    $f16, 0x002C($a0)          ## 0000002C
/* 0B9C4 8083DBD4 AFA50028 */  sw      $a1, 0x0028($sp)           
/* 0B9C8 8083DBD8 27A40030 */  addiu   $a0, $sp, 0x0030           ## $a0 = FFFFFFF0
/* 0B9CC 8083DBDC 0C01E027 */  jal     Math_Vec3f_Pitch
              
/* 0B9D0 8083DBE0 E7B00038 */  swc1    $f16, 0x0038($sp)          
/* 0B9D4 8083DBE4 8FA50028 */  lw      $a1, 0x0028($sp)           
/* 0B9D8 8083DBE8 A7A2002E */  sh      $v0, 0x002E($sp)           
/* 0B9DC 8083DBEC 0C01E01A */  jal     Math_Vec3f_Yaw
              
/* 0B9E0 8083DBF0 27A40030 */  addiu   $a0, $sp, 0x0030           ## $a0 = FFFFFFF0
/* 0B9E4 8083DBF4 00022C00 */  sll     $a1, $v0, 16               
/* 0B9E8 8083DBF8 00052C03 */  sra     $a1, $a1, 16               
/* 0B9EC 8083DBFC 26040046 */  addiu   $a0, $s0, 0x0046           ## $a0 = 00000046
/* 0B9F0 8083DC00 24060004 */  addiu   $a2, $zero, 0x0004         ## $a2 = 00000004
/* 0B9F4 8083DC04 24072710 */  addiu   $a3, $zero, 0x2710         ## $a3 = 00002710
/* 0B9F8 8083DC08 0C01E1A7 */  jal     Math_SmoothScaleMaxMinS
              
/* 0B9FC 8083DC0C AFA00010 */  sw      $zero, 0x0010($sp)         
/* 0BA00 8083DC10 26040044 */  addiu   $a0, $s0, 0x0044           ## $a0 = 00000044
/* 0BA04 8083DC14 87A5002E */  lh      $a1, 0x002E($sp)           
/* 0BA08 8083DC18 24060004 */  addiu   $a2, $zero, 0x0004         ## $a2 = 00000004
/* 0BA0C 8083DC1C 24072710 */  addiu   $a3, $zero, 0x2710         ## $a3 = 00002710
/* 0BA10 8083DC20 0C01E1A7 */  jal     Math_SmoothScaleMaxMinS
              
/* 0BA14 8083DC24 AFA00010 */  sw      $zero, 0x0010($sp)         
/* 0BA18 8083DC28 960E06AE */  lhu     $t6, 0x06AE($s0)           ## 000006AE
/* 0BA1C 8083DC2C 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 0BA20 8083DC30 35CF0002 */  ori     $t7, $t6, 0x0002           ## $t7 = 00000002
/* 0BA24 8083DC34 A60F06AE */  sh      $t7, 0x06AE($s0)           ## 000006AE
/* 0BA28 8083DC38 0C20DAAE */  jal     func_80836AB8              
/* 0BA2C 8083DC3C 8FA50044 */  lw      $a1, 0x0044($sp)           
/* 0BA30 8083DC40 8FBF0024 */  lw      $ra, 0x0024($sp)           
/* 0BA34 8083DC44 8FB00020 */  lw      $s0, 0x0020($sp)           
/* 0BA38 8083DC48 27BD0040 */  addiu   $sp, $sp, 0x0040           ## $sp = 00000000
/* 0BA3C 8083DC4C 03E00008 */  jr      $ra                        
/* 0BA40 8083DC50 00000000 */  nop


