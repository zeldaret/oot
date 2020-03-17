glabel func_808AB444
/* 00764 808AB444 27BDFFD8 */  addiu   $sp, $sp, 0xFFD8           ## $sp = FFFFFFD8
/* 00768 808AB448 AFB00018 */  sw      $s0, 0x0018($sp)           
/* 0076C 808AB44C 00808025 */  or      $s0, $a0, $zero            ## $s0 = 00000000
/* 00770 808AB450 AFBF001C */  sw      $ra, 0x001C($sp)           
/* 00774 808AB454 AFA5002C */  sw      $a1, 0x002C($sp)           
/* 00778 808AB458 00A02025 */  or      $a0, $a1, $zero            ## $a0 = 00000000
/* 0077C 808AB45C 0C22AC51 */  jal     func_808AB144              
/* 00780 808AB460 24050002 */  addiu   $a1, $zero, 0x0002         ## $a1 = 00000002
/* 00784 808AB464 50400023 */  beql    $v0, $zero, .L808AB4F4     
/* 00788 808AB468 8FBF001C */  lw      $ra, 0x001C($sp)           
/* 0078C 808AB46C 94460000 */  lhu     $a2, 0x0000($v0)           ## 00000000
/* 00790 808AB470 8E03016C */  lw      $v1, 0x016C($s0)           ## 0000016C
/* 00794 808AB474 24010001 */  addiu   $at, $zero, 0x0001         ## $at = 00000001
/* 00798 808AB478 50C3001E */  beql    $a2, $v1, .L808AB4F4       
/* 0079C 808AB47C 8FBF001C */  lw      $ra, 0x001C($sp)           
/* 007A0 808AB480 10C10009 */  beq     $a2, $at, .L808AB4A8       
/* 007A4 808AB484 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 007A8 808AB488 24010002 */  addiu   $at, $zero, 0x0002         ## $at = 00000002
/* 007AC 808AB48C 10C1000A */  beq     $a2, $at, .L808AB4B8       
/* 007B0 808AB490 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 007B4 808AB494 24010003 */  addiu   $at, $zero, 0x0003         ## $at = 00000003
/* 007B8 808AB498 10C1000C */  beq     $a2, $at, .L808AB4CC       
/* 007BC 808AB49C 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 007C0 808AB4A0 1000000E */  beq     $zero, $zero, .L808AB4DC   
/* 007C4 808AB4A4 3C04808B */  lui     $a0, %hi(D_808AB8BC)       ## $a0 = 808B0000
.L808AB4A8:
/* 007C8 808AB4A8 0C22ACFA */  jal     func_808AB3E8              
/* 007CC 808AB4AC AFA60020 */  sw      $a2, 0x0020($sp)           
/* 007D0 808AB4B0 1000000E */  beq     $zero, $zero, .L808AB4EC   
/* 007D4 808AB4B4 8FA60020 */  lw      $a2, 0x0020($sp)           
.L808AB4B8:
/* 007D8 808AB4B8 8FA5002C */  lw      $a1, 0x002C($sp)           
/* 007DC 808AB4BC 0C22ACFE */  jal     func_808AB3F8              
/* 007E0 808AB4C0 AFA60020 */  sw      $a2, 0x0020($sp)           
/* 007E4 808AB4C4 10000009 */  beq     $zero, $zero, .L808AB4EC   
/* 007E8 808AB4C8 8FA60020 */  lw      $a2, 0x0020($sp)           
.L808AB4CC:
/* 007EC 808AB4CC 0C00B55C */  jal     Actor_Kill
              
/* 007F0 808AB4D0 AFA60020 */  sw      $a2, 0x0020($sp)           
/* 007F4 808AB4D4 10000005 */  beq     $zero, $zero, .L808AB4EC   
/* 007F8 808AB4D8 8FA60020 */  lw      $a2, 0x0020($sp)           
.L808AB4DC:
/* 007FC 808AB4DC 2484B8BC */  addiu   $a0, $a0, %lo(D_808AB8BC)  ## $a0 = FFFFB8BC
/* 00800 808AB4E0 0C00084C */  jal     osSyncPrintf
              
/* 00804 808AB4E4 AFA60020 */  sw      $a2, 0x0020($sp)           
/* 00808 808AB4E8 8FA60020 */  lw      $a2, 0x0020($sp)           
.L808AB4EC:
/* 0080C 808AB4EC AE06016C */  sw      $a2, 0x016C($s0)           ## 0000016C
/* 00810 808AB4F0 8FBF001C */  lw      $ra, 0x001C($sp)           
.L808AB4F4:
/* 00814 808AB4F4 8FB00018 */  lw      $s0, 0x0018($sp)           
/* 00818 808AB4F8 27BD0028 */  addiu   $sp, $sp, 0x0028           ## $sp = 00000000
/* 0081C 808AB4FC 03E00008 */  jr      $ra                        
/* 00820 808AB500 00000000 */  nop


