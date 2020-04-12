glabel func_80B0CBE8
/* 00E38 80B0CBE8 27BDFFD8 */  addiu   $sp, $sp, 0xFFD8           ## $sp = FFFFFFD8
/* 00E3C 80B0CBEC AFBF0014 */  sw      $ra, 0x0014($sp)           
/* 00E40 80B0CBF0 AFA5002C */  sw      $a1, 0x002C($sp)           
/* 00E44 80B0CBF4 848E001C */  lh      $t6, 0x001C($a0)           ## 0000001C
/* 00E48 80B0CBF8 00803825 */  or      $a3, $a0, $zero            ## $a3 = 00000000
/* 00E4C 80B0CBFC 31CFE000 */  andi    $t7, $t6, 0xE000           ## $t7 = 00000000
/* 00E50 80B0CC00 000FC343 */  sra     $t8, $t7, 13               
/* 00E54 80B0CC04 5B00000C */  blezl   $t8, .L80B0CC38            
/* 00E58 80B0CC08 84E20390 */  lh      $v0, 0x0390($a3)           ## 00000390
/* 00E5C 80B0CC0C 8C880190 */  lw      $t0, 0x0190($a0)           ## 00000190
/* 00E60 80B0CC10 3C1980B1 */  lui     $t9, %hi(func_80B0D590)    ## $t9 = 80B10000
/* 00E64 80B0CC14 2739D590 */  addiu   $t9, $t9, %lo(func_80B0D590) ## $t9 = 80B0D590
/* 00E68 80B0CC18 53280007 */  beql    $t9, $t0, .L80B0CC38       
/* 00E6C 80B0CC1C 84E20390 */  lh      $v0, 0x0390($a3)           ## 00000390
/* 00E70 80B0CC20 84820392 */  lh      $v0, 0x0392($a0)           ## 00000392
/* 00E74 80B0CC24 1040002F */  beq     $v0, $zero, .L80B0CCE4     
/* 00E78 80B0CC28 2449FFFF */  addiu   $t1, $v0, 0xFFFF           ## $t1 = FFFFFFFF
/* 00E7C 80B0CC2C 1000002D */  beq     $zero, $zero, .L80B0CCE4   
/* 00E80 80B0CC30 A4890392 */  sh      $t1, 0x0392($a0)           ## 00000392
/* 00E84 80B0CC34 84E20390 */  lh      $v0, 0x0390($a3)           ## 00000390
.L80B0CC38:
/* 00E88 80B0CC38 14400003 */  bne     $v0, $zero, .L80B0CC48     
/* 00E8C 80B0CC3C 244AFFFF */  addiu   $t2, $v0, 0xFFFF           ## $t2 = FFFFFFFF
/* 00E90 80B0CC40 10000003 */  beq     $zero, $zero, .L80B0CC50   
/* 00E94 80B0CC44 00001825 */  or      $v1, $zero, $zero          ## $v1 = 00000000
.L80B0CC48:
/* 00E98 80B0CC48 A4EA0390 */  sh      $t2, 0x0390($a3)           ## 00000390
/* 00E9C 80B0CC4C 84E30390 */  lh      $v1, 0x0390($a3)           ## 00000390
.L80B0CC50:
/* 00EA0 80B0CC50 5460000C */  bnel    $v1, $zero, .L80B0CC84     
/* 00EA4 80B0CC54 84E20392 */  lh      $v0, 0x0392($a3)           ## 00000392
/* 00EA8 80B0CC58 90EB00AF */  lbu     $t3, 0x00AF($a3)           ## 000000AF
/* 00EAC 80B0CC5C 3C010001 */  lui     $at, 0x0001                ## $at = 00010000
/* 00EB0 80B0CC60 34211E60 */  ori     $at, $at, 0x1E60           ## $at = 00011E60
/* 00EB4 80B0CC64 11600006 */  beq     $t3, $zero, .L80B0CC80     
/* 00EB8 80B0CC68 8FA4002C */  lw      $a0, 0x002C($sp)           
/* 00EBC 80B0CC6C 00812821 */  addu    $a1, $a0, $at              
/* 00EC0 80B0CC70 24E60194 */  addiu   $a2, $a3, 0x0194           ## $a2 = 00000194
/* 00EC4 80B0CC74 0C0175E7 */  jal     Actor_CollisionCheck_SetAT
              ## CollisionCheck_setAT
/* 00EC8 80B0CC78 AFA70028 */  sw      $a3, 0x0028($sp)           
/* 00ECC 80B0CC7C 8FA70028 */  lw      $a3, 0x0028($sp)           
.L80B0CC80:
/* 00ED0 80B0CC80 84E20392 */  lh      $v0, 0x0392($a3)           ## 00000392
.L80B0CC84:
/* 00ED4 80B0CC84 8FA5002C */  lw      $a1, 0x002C($sp)           
/* 00ED8 80B0CC88 3C010001 */  lui     $at, 0x0001                ## $at = 00010000
/* 00EDC 80B0CC8C 34211E60 */  ori     $at, $at, 0x1E60           ## $at = 00011E60
/* 00EE0 80B0CC90 24E60194 */  addiu   $a2, $a3, 0x0194           ## $a2 = 00000194
/* 00EE4 80B0CC94 14400003 */  bne     $v0, $zero, .L80B0CCA4     
/* 00EE8 80B0CC98 00A12821 */  addu    $a1, $a1, $at              
/* 00EEC 80B0CC9C 10000004 */  beq     $zero, $zero, .L80B0CCB0   
/* 00EF0 80B0CCA0 00001825 */  or      $v1, $zero, $zero          ## $v1 = 00000000
.L80B0CCA4:
/* 00EF4 80B0CCA4 244DFFFF */  addiu   $t5, $v0, 0xFFFF           ## $t5 = FFFFFFFF
/* 00EF8 80B0CCA8 A4ED0392 */  sh      $t5, 0x0392($a3)           ## 00000392
/* 00EFC 80B0CCAC 84E30392 */  lh      $v1, 0x0392($a3)           ## 00000392
.L80B0CCB0:
/* 00F00 80B0CCB0 1460000A */  bne     $v1, $zero, .L80B0CCDC     
/* 00F04 80B0CCB4 00000000 */  nop
/* 00F08 80B0CCB8 90EE00AF */  lbu     $t6, 0x00AF($a3)           ## 000000AF
/* 00F0C 80B0CCBC 8FA4002C */  lw      $a0, 0x002C($sp)           
/* 00F10 80B0CCC0 11C00006 */  beq     $t6, $zero, .L80B0CCDC     
/* 00F14 80B0CCC4 00000000 */  nop
/* 00F18 80B0CCC8 AFA5001C */  sw      $a1, 0x001C($sp)           
/* 00F1C 80B0CCCC 0C01767D */  jal     Actor_CollisionCheck_SetAC
              ## CollisionCheck_setAC
/* 00F20 80B0CCD0 AFA60018 */  sw      $a2, 0x0018($sp)           
/* 00F24 80B0CCD4 8FA5001C */  lw      $a1, 0x001C($sp)           
/* 00F28 80B0CCD8 8FA60018 */  lw      $a2, 0x0018($sp)           
.L80B0CCDC:
/* 00F2C 80B0CCDC 0C017713 */  jal     Actor_CollisionCheck_SetOT
              ## CollisionCheck_setOT
/* 00F30 80B0CCE0 8FA4002C */  lw      $a0, 0x002C($sp)           
.L80B0CCE4:
/* 00F34 80B0CCE4 8FBF0014 */  lw      $ra, 0x0014($sp)           
/* 00F38 80B0CCE8 27BD0028 */  addiu   $sp, $sp, 0x0028           ## $sp = 00000000
/* 00F3C 80B0CCEC 03E00008 */  jr      $ra                        
/* 00F40 80B0CCF0 00000000 */  nop
