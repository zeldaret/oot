glabel func_80A95B0C
/* 007BC 80A95B0C 27BDFFD8 */  addiu   $sp, $sp, 0xFFD8           ## $sp = FFFFFFD8
/* 007C0 80A95B10 AFB00018 */  sw      $s0, 0x0018($sp)           
/* 007C4 80A95B14 AFBF001C */  sw      $ra, 0x001C($sp)           
/* 007C8 80A95B18 AFA5002C */  sw      $a1, 0x002C($sp)           
/* 007CC 80A95B1C 8CAF1C44 */  lw      $t7, 0x1C44($a1)           ## 00001C44
/* 007D0 80A95B20 00808025 */  or      $s0, $a0, $zero            ## $s0 = 00000000
/* 007D4 80A95B24 2484014C */  addiu   $a0, $a0, 0x014C           ## $a0 = 0000014C
/* 007D8 80A95B28 AFA40020 */  sw      $a0, 0x0020($sp)           
/* 007DC 80A95B2C 0C02927F */  jal     SkelAnime_FrameUpdateMatrix
              
/* 007E0 80A95B30 AFAF0024 */  sw      $t7, 0x0024($sp)           
/* 007E4 80A95B34 8603001C */  lh      $v1, 0x001C($s0)           ## 0000001C
/* 007E8 80A95B38 24050000 */  addiu   $a1, $zero, 0x0000         ## $a1 = 00000000
/* 007EC 80A95B3C 10600002 */  beq     $v1, $zero, .L80A95B48     
/* 007F0 80A95B40 2478FFFF */  addiu   $t8, $v1, 0xFFFF           ## $t8 = FFFFFFFF
/* 007F4 80A95B44 A618001C */  sh      $t8, 0x001C($s0)           ## 0000001C
.L80A95B48:
/* 007F8 80A95B48 0C0295B2 */  jal     func_800A56C8              
/* 007FC 80A95B4C 8FA40020 */  lw      $a0, 0x0020($sp)           
/* 00800 80A95B50 14400004 */  bne     $v0, $zero, .L80A95B64     
/* 00804 80A95B54 8FA40020 */  lw      $a0, 0x0020($sp)           
/* 00808 80A95B58 0C0295B2 */  jal     func_800A56C8              
/* 0080C 80A95B5C 3C054140 */  lui     $a1, 0x4140                ## $a1 = 41400000
/* 00810 80A95B60 10400003 */  beq     $v0, $zero, .L80A95B70     
.L80A95B64:
/* 00814 80A95B64 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 00818 80A95B68 0C00BE0A */  jal     Audio_PlayActorSound2
              
/* 0081C 80A95B6C 24053860 */  addiu   $a1, $zero, 0x3860         ## $a1 = 00003860
.L80A95B70:
/* 00820 80A95B70 92190255 */  lbu     $t9, 0x0255($s0)           ## 00000255
/* 00824 80A95B74 8FA50024 */  lw      $a1, 0x0024($sp)           
/* 00828 80A95B78 33280002 */  andi    $t0, $t9, 0x0002           ## $t0 = 00000000
/* 0082C 80A95B7C 11000008 */  beq     $t0, $zero, .L80A95BA0     
/* 00830 80A95B80 24A50024 */  addiu   $a1, $a1, 0x0024           ## $a1 = 00000024
/* 00834 80A95B84 0C2A55B4 */  jal     func_80A956D0              
/* 00838 80A95B88 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 0083C 80A95B8C 8FA4002C */  lw      $a0, 0x002C($sp)           
/* 00840 80A95B90 0C00CB1F */  jal     func_80032C7C              
/* 00844 80A95B94 02002825 */  or      $a1, $s0, $zero            ## $a1 = 00000000
/* 00848 80A95B98 10000014 */  beq     $zero, $zero, .L80A95BEC   
/* 0084C 80A95B9C 8FBF001C */  lw      $ra, 0x001C($sp)           
.L80A95BA0:
/* 00850 80A95BA0 0C01E00A */  jal     Math_Vec3f_DistXZ
              
/* 00854 80A95BA4 26040008 */  addiu   $a0, $s0, 0x0008           ## $a0 = 00000008
/* 00858 80A95BA8 3C014370 */  lui     $at, 0x4370                ## $at = 43700000
/* 0085C 80A95BAC 44812000 */  mtc1    $at, $f4                   ## $f4 = 240.00
/* 00860 80A95BB0 00000000 */  nop
/* 00864 80A95BB4 4600203C */  c.lt.s  $f4, $f0                   
/* 00868 80A95BB8 00000000 */  nop
/* 0086C 80A95BBC 45020006 */  bc1fl   .L80A95BD8                 
/* 00870 80A95BC0 8609001C */  lh      $t1, 0x001C($s0)           ## 0000001C
/* 00874 80A95BC4 0C2A55F8 */  jal     func_80A957E0              
/* 00878 80A95BC8 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 0087C 80A95BCC 10000007 */  beq     $zero, $zero, .L80A95BEC   
/* 00880 80A95BD0 8FBF001C */  lw      $ra, 0x001C($sp)           
/* 00884 80A95BD4 8609001C */  lh      $t1, 0x001C($s0)           ## 0000001C
.L80A95BD8:
/* 00888 80A95BD8 55200004 */  bnel    $t1, $zero, .L80A95BEC     
/* 0088C 80A95BDC 8FBF001C */  lw      $ra, 0x001C($sp)           
/* 00890 80A95BE0 0C2A55AE */  jal     func_80A956B8              
/* 00894 80A95BE4 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 00898 80A95BE8 8FBF001C */  lw      $ra, 0x001C($sp)           
.L80A95BEC:
/* 0089C 80A95BEC 8FB00018 */  lw      $s0, 0x0018($sp)           
/* 008A0 80A95BF0 27BD0028 */  addiu   $sp, $sp, 0x0028           ## $sp = 00000000
/* 008A4 80A95BF4 03E00008 */  jr      $ra                        
/* 008A8 80A95BF8 00000000 */  nop


