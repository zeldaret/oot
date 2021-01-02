glabel func_80A4A8D4
/* 01A14 80A4A8D4 27BDFFE0 */  addiu   $sp, $sp, 0xFFE0           ## $sp = FFFFFFE0
/* 01A18 80A4A8D8 AFB00018 */  sw      $s0, 0x0018($sp)           
/* 01A1C 80A4A8DC 00808025 */  or      $s0, $a0, $zero            ## $s0 = 00000000
/* 01A20 80A4A8E0 AFBF001C */  sw      $ra, 0x001C($sp)           
/* 01A24 80A4A8E4 860E02C4 */  lh      $t6, 0x02C4($s0)           ## 000002C4
/* 01A28 80A4A8E8 3C0580A5 */  lui     $a1, %hi(D_80A4B83C)       ## $a1 = 80A50000
/* 01A2C 80A4A8EC 248402E0 */  addiu   $a0, $a0, 0x02E0           ## $a0 = 000002E0
/* 01A30 80A4A8F0 000E7880 */  sll     $t7, $t6,  2               
/* 01A34 80A4A8F4 00AF2821 */  addu    $a1, $a1, $t7              
/* 01A38 80A4A8F8 8CA5B83C */  lw      $a1, %lo(D_80A4B83C)($a1)  
/* 01A3C 80A4A8FC 3C063F00 */  lui     $a2, 0x3F00                ## $a2 = 3F000000
/* 01A40 80A4A900 0C01E107 */  jal     Math_ApproachF
              
/* 01A44 80A4A904 3C0741A0 */  lui     $a3, 0x41A0                ## $a3 = 41A00000
/* 01A48 80A4A908 861802C4 */  lh      $t8, 0x02C4($s0)           ## 000002C4
/* 01A4C 80A4A90C 3C0580A5 */  lui     $a1, %hi(D_80A4B848)       ## $a1 = 80A50000
/* 01A50 80A4A910 260402E4 */  addiu   $a0, $s0, 0x02E4           ## $a0 = 000002E4
/* 01A54 80A4A914 0018C880 */  sll     $t9, $t8,  2               
/* 01A58 80A4A918 00B92821 */  addu    $a1, $a1, $t9              
/* 01A5C 80A4A91C 8CA5B848 */  lw      $a1, %lo(D_80A4B848)($a1)  
/* 01A60 80A4A920 3C063F00 */  lui     $a2, 0x3F00                ## $a2 = 3F000000
/* 01A64 80A4A924 0C01E107 */  jal     Math_ApproachF
              
/* 01A68 80A4A928 3C0741A0 */  lui     $a3, 0x41A0                ## $a3 = 41A00000
/* 01A6C 80A4A92C 860802C4 */  lh      $t0, 0x02C4($s0)           ## 000002C4
/* 01A70 80A4A930 3C0580A5 */  lui     $a1, %hi(D_80A4B854)       ## $a1 = 80A50000
/* 01A74 80A4A934 260402E8 */  addiu   $a0, $s0, 0x02E8           ## $a0 = 000002E8
/* 01A78 80A4A938 00084880 */  sll     $t1, $t0,  2               
/* 01A7C 80A4A93C 00A92821 */  addu    $a1, $a1, $t1              
/* 01A80 80A4A940 8CA5B854 */  lw      $a1, %lo(D_80A4B854)($a1)  
/* 01A84 80A4A944 3C063F00 */  lui     $a2, 0x3F00                ## $a2 = 3F000000
/* 01A88 80A4A948 0C01E107 */  jal     Math_ApproachF
              
/* 01A8C 80A4A94C 3C0741A0 */  lui     $a3, 0x41A0                ## $a3 = 41A00000
/* 01A90 80A4A950 8FBF001C */  lw      $ra, 0x001C($sp)           
/* 01A94 80A4A954 8FB00018 */  lw      $s0, 0x0018($sp)           
/* 01A98 80A4A958 27BD0020 */  addiu   $sp, $sp, 0x0020           ## $sp = 00000000
/* 01A9C 80A4A95C 03E00008 */  jr      $ra                        
/* 01AA0 80A4A960 00000000 */  nop
