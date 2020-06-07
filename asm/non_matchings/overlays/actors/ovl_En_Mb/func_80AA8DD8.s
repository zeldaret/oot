glabel func_80AA8DD8
/* 02D88 80AA8DD8 27BDFFD8 */  addiu   $sp, $sp, 0xFFD8           ## $sp = FFFFFFD8
/* 02D8C 80AA8DDC AFBF0014 */  sw      $ra, 0x0014($sp)           
/* 02D90 80AA8DE0 8CAE1C44 */  lw      $t6, 0x1C44($a1)           ## 00001C44
/* 02D94 80AA8DE4 00803025 */  or      $a2, $a0, $zero            ## $a2 = 00000000
/* 02D98 80AA8DE8 2484018C */  addiu   $a0, $a0, 0x018C           ## $a0 = 0000018C
/* 02D9C 80AA8DEC AFAE0024 */  sw      $t6, 0x0024($sp)           
/* 02DA0 80AA8DF0 8498FEFE */  lh      $t8, -0x0102($a0)          ## 0000008A
/* 02DA4 80AA8DF4 848FFEA6 */  lh      $t7, -0x015A($a0)          ## 00000032
/* 02DA8 80AA8DF8 AFA60028 */  sw      $a2, 0x0028($sp)           
/* 02DAC 80AA8DFC 01F81823 */  subu    $v1, $t7, $t8              
/* 02DB0 80AA8E00 00031C00 */  sll     $v1, $v1, 16               
/* 02DB4 80AA8E04 00031C03 */  sra     $v1, $v1, 16               
/* 02DB8 80AA8E08 0C02927F */  jal     SkelAnime_FrameUpdateMatrix
              
/* 02DBC 80AA8E0C A7A3001E */  sh      $v1, 0x001E($sp)           
/* 02DC0 80AA8E10 8FA60028 */  lw      $a2, 0x0028($sp)           
/* 02DC4 80AA8E14 8FA50024 */  lw      $a1, 0x0024($sp)           
/* 02DC8 80AA8E18 24C40008 */  addiu   $a0, $a2, 0x0008           ## $a0 = 00000008
/* 02DCC 80AA8E1C 0C01E00A */  jal     Math_Vec3f_DistXZ
              
/* 02DD0 80AA8E20 24A50024 */  addiu   $a1, $a1, 0x0024           ## $a1 = 00000024
/* 02DD4 80AA8E24 8FA60028 */  lw      $a2, 0x0028($sp)           
/* 02DD8 80AA8E28 87A3001E */  lh      $v1, 0x001E($sp)           
/* 02DDC 80AA8E2C 8FB90024 */  lw      $t9, 0x0024($sp)           
/* 02DE0 80AA8E30 C4C40364 */  lwc1    $f4, 0x0364($a2)           ## 00000364
/* 02DE4 80AA8E34 4604003C */  c.lt.s  $f0, $f4                   
/* 02DE8 80AA8E38 00000000 */  nop
/* 02DEC 80AA8E3C 4502000F */  bc1fl   .L80AA8E7C                 
/* 02DF0 80AA8E40 8FBF0014 */  lw      $ra, 0x0014($sp)           
/* 02DF4 80AA8E44 8F28067C */  lw      $t0, 0x067C($t9)           ## 0000067C
/* 02DF8 80AA8E48 00084940 */  sll     $t1, $t0,  5               
/* 02DFC 80AA8E4C 0522000B */  bltzl   $t1, .L80AA8E7C            
/* 02E00 80AA8E50 8FBF0014 */  lw      $ra, 0x0014($sp)           
/* 02E04 80AA8E54 04600003 */  bltz    $v1, .L80AA8E64            
/* 02E08 80AA8E58 00031023 */  subu    $v0, $zero, $v1            
/* 02E0C 80AA8E5C 10000001 */  beq     $zero, $zero, .L80AA8E64   
/* 02E10 80AA8E60 00601025 */  or      $v0, $v1, $zero            ## $v0 = 00000000
.L80AA8E64:
/* 02E14 80AA8E64 28413E80 */  slti    $at, $v0, 0x3E80           
/* 02E18 80AA8E68 50200004 */  beql    $at, $zero, .L80AA8E7C     
/* 02E1C 80AA8E6C 8FBF0014 */  lw      $ra, 0x0014($sp)           
/* 02E20 80AA8E70 0C2A9AFC */  jal     func_80AA6BF0              
/* 02E24 80AA8E74 00C02025 */  or      $a0, $a2, $zero            ## $a0 = 00000000
/* 02E28 80AA8E78 8FBF0014 */  lw      $ra, 0x0014($sp)           
.L80AA8E7C:
/* 02E2C 80AA8E7C 27BD0028 */  addiu   $sp, $sp, 0x0028           ## $sp = 00000000
/* 02E30 80AA8E80 03E00008 */  jr      $ra                        
/* 02E34 80AA8E84 00000000 */  nop
