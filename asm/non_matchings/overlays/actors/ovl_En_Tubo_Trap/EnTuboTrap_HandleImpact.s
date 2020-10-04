glabel EnTuboTrap_HandleImpact
/* 00618 80B25F08 27BDFFD0 */  addiu   $sp, $sp, 0xFFD0           ## $sp = FFFFFFD0
/* 0061C 80B25F0C AFBF001C */  sw      $ra, 0x001C($sp)           
/* 00620 80B25F10 AFB10018 */  sw      $s1, 0x0018($sp)           
/* 00624 80B25F14 AFB00014 */  sw      $s0, 0x0014($sp)           
/* 00628 80B25F18 8CA61C44 */  lw      $a2, 0x1C44($a1)           ## 00001C44
/* 0062C 80B25F1C 00808025 */  or      $s0, $a0, $zero            ## $s0 = 00000000
/* 00630 80B25F20 00A08825 */  or      $s1, $a1, $zero            ## $s1 = 00000000
/* 00634 80B25F24 AFA60028 */  sw      $a2, 0x0028($sp)           
/* 00638 80B25F28 948E0088 */  lhu     $t6, 0x0088($a0)           ## 00000088
/* 0063C 80B25F2C 3C014170 */  lui     $at, 0x4170                ## $at = 41700000
/* 00640 80B25F30 31CF0020 */  andi    $t7, $t6, 0x0020           ## $t7 = 00000000
/* 00644 80B25F34 51E00016 */  beql    $t7, $zero, .L80B25F90     
/* 00648 80B25F38 92020170 */  lbu     $v0, 0x0170($s0)           ## 00000170
/* 0064C 80B25F3C 44812000 */  mtc1    $at, $f4                   ## $f4 = 15.00
/* 00650 80B25F40 C4860084 */  lwc1    $f6, 0x0084($a0)           ## 00000084
/* 00654 80B25F44 4606203C */  c.lt.s  $f4, $f6                   
/* 00658 80B25F48 00000000 */  nop
/* 0065C 80B25F4C 45020010 */  bc1fl   .L80B25F90                 
/* 00660 80B25F50 92020170 */  lbu     $v0, 0x0170($s0)           ## 00000170
/* 00664 80B25F54 0C2C9723 */  jal     EnTuboTrap_SpawnEffectsInWater              
/* 00668 80B25F58 00000000 */  nop
/* 0066C 80B25F5C 02202025 */  or      $a0, $s1, $zero            ## $a0 = 00000000
/* 00670 80B25F60 26050024 */  addiu   $a1, $s0, 0x0024           ## $a1 = 00000024
/* 00674 80B25F64 24060028 */  addiu   $a2, $zero, 0x0028         ## $a2 = 00000028
/* 00678 80B25F68 0C01AEB6 */  jal     Audio_PlaySoundAtPosition
              
/* 0067C 80B25F6C 24072817 */  addiu   $a3, $zero, 0x2817         ## $a3 = 00002817
/* 00680 80B25F70 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 00684 80B25F74 0C2C966E */  jal     EnTuboTrap_DropCollectible              
/* 00688 80B25F78 02202825 */  or      $a1, $s1, $zero            ## $a1 = 00000000
/* 0068C 80B25F7C 0C00B55C */  jal     Actor_Kill
              
/* 00690 80B25F80 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 00694 80B25F84 10000065 */  beq     $zero, $zero, .L80B2611C   
/* 00698 80B25F88 8FBF001C */  lw      $ra, 0x001C($sp)           
/* 0069C 80B25F8C 92020170 */  lbu     $v0, 0x0170($s0)           ## 00000170
.L80B25F90:
/* 006A0 80B25F90 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 006A4 80B25F94 02202825 */  or      $a1, $s1, $zero            ## $a1 = 00000000
/* 006A8 80B25F98 30580004 */  andi    $t8, $v0, 0x0004           ## $t8 = 00000000
/* 006AC 80B25F9C 13000015 */  beq     $t8, $zero, .L80B25FF4     
/* 006B0 80B25FA0 3059FFFB */  andi    $t9, $v0, 0xFFFB           ## $t9 = 00000000
/* 006B4 80B25FA4 0C2C9686 */  jal     EnTuboTrap_SpawnEffectsOnLand              
/* 006B8 80B25FA8 A2190170 */  sb      $t9, 0x0170($s0)           ## 00000170
/* 006BC 80B25FAC 26050024 */  addiu   $a1, $s0, 0x0024           ## $a1 = 00000024
/* 006C0 80B25FB0 AFA50024 */  sw      $a1, 0x0024($sp)           
/* 006C4 80B25FB4 02202025 */  or      $a0, $s1, $zero            ## $a0 = 00000000
/* 006C8 80B25FB8 24060028 */  addiu   $a2, $zero, 0x0028         ## $a2 = 00000028
/* 006CC 80B25FBC 0C01AEB6 */  jal     Audio_PlaySoundAtPosition
              
/* 006D0 80B25FC0 24071808 */  addiu   $a3, $zero, 0x1808         ## $a3 = 00001808
/* 006D4 80B25FC4 8FA50024 */  lw      $a1, 0x0024($sp)           
/* 006D8 80B25FC8 02202025 */  or      $a0, $s1, $zero            ## $a0 = 00000000
/* 006DC 80B25FCC 24060028 */  addiu   $a2, $zero, 0x0028         ## $a2 = 00000028
/* 006E0 80B25FD0 0C01AEB6 */  jal     Audio_PlaySoundAtPosition
              
/* 006E4 80B25FD4 24072887 */  addiu   $a3, $zero, 0x2887         ## $a3 = 00002887
/* 006E8 80B25FD8 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 006EC 80B25FDC 0C2C966E */  jal     EnTuboTrap_DropCollectible              
/* 006F0 80B25FE0 02202825 */  or      $a1, $s1, $zero            ## $a1 = 00000000
/* 006F4 80B25FE4 0C00B55C */  jal     Actor_Kill
              
/* 006F8 80B25FE8 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 006FC 80B25FEC 1000004B */  beq     $zero, $zero, .L80B2611C   
/* 00700 80B25FF0 8FBF001C */  lw      $ra, 0x001C($sp)           
.L80B25FF4:
/* 00704 80B25FF4 92030171 */  lbu     $v1, 0x0171($s0)           ## 00000171
/* 00708 80B25FF8 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 0070C 80B25FFC 304A0002 */  andi    $t2, $v0, 0x0002           ## $t2 = 00000000
/* 00710 80B26000 30680002 */  andi    $t0, $v1, 0x0002           ## $t0 = 00000000
/* 00714 80B26004 11000016 */  beq     $t0, $zero, .L80B26060     
/* 00718 80B26008 3069FFFD */  andi    $t1, $v1, 0xFFFD           ## $t1 = 00000000
/* 0071C 80B2600C A2090171 */  sb      $t1, 0x0171($s0)           ## 00000171
/* 00720 80B26010 0C2C9686 */  jal     EnTuboTrap_SpawnEffectsOnLand              
/* 00724 80B26014 02202825 */  or      $a1, $s1, $zero            ## $a1 = 00000000
/* 00728 80B26018 26050024 */  addiu   $a1, $s0, 0x0024           ## $a1 = 00000024
/* 0072C 80B2601C AFA50024 */  sw      $a1, 0x0024($sp)           
/* 00730 80B26020 02202025 */  or      $a0, $s1, $zero            ## $a0 = 00000000
/* 00734 80B26024 24060028 */  addiu   $a2, $zero, 0x0028         ## $a2 = 00000028
/* 00738 80B26028 0C01AEB6 */  jal     Audio_PlaySoundAtPosition
              
/* 0073C 80B2602C 24072802 */  addiu   $a3, $zero, 0x2802         ## $a3 = 00002802
/* 00740 80B26030 8FA50024 */  lw      $a1, 0x0024($sp)           
/* 00744 80B26034 02202025 */  or      $a0, $s1, $zero            ## $a0 = 00000000
/* 00748 80B26038 24060028 */  addiu   $a2, $zero, 0x0028         ## $a2 = 00000028
/* 0074C 80B2603C 0C01AEB6 */  jal     Audio_PlaySoundAtPosition
              
/* 00750 80B26040 24072887 */  addiu   $a3, $zero, 0x2887         ## $a3 = 00002887
/* 00754 80B26044 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 00758 80B26048 0C2C966E */  jal     EnTuboTrap_DropCollectible              
/* 0075C 80B2604C 02202825 */  or      $a1, $s1, $zero            ## $a1 = 00000000
/* 00760 80B26050 0C00B55C */  jal     Actor_Kill
              
/* 00764 80B26054 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 00768 80B26058 10000030 */  beq     $zero, $zero, .L80B2611C   
/* 0076C 80B2605C 8FBF001C */  lw      $ra, 0x001C($sp)           
.L80B26060:
/* 00770 80B26060 5140001B */  beql    $t2, $zero, .L80B260D0     
/* 00774 80B26064 96020088 */  lhu     $v0, 0x0088($s0)           ## 00000088
/* 00778 80B26068 8E0C0164 */  lw      $t4, 0x0164($s0)           ## 00000164
/* 0077C 80B2606C 304BFFFD */  andi    $t3, $v0, 0xFFFD           ## $t3 = 00000000
/* 00780 80B26070 A20B0170 */  sb      $t3, 0x0170($s0)           ## 00000170
/* 00784 80B26074 14CC0015 */  bne     $a2, $t4, .L80B260CC       
/* 00788 80B26078 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 0078C 80B2607C 0C2C9686 */  jal     EnTuboTrap_SpawnEffectsOnLand              
/* 00790 80B26080 02202825 */  or      $a1, $s1, $zero            ## $a1 = 00000000
/* 00794 80B26084 02202025 */  or      $a0, $s1, $zero            ## $a0 = 00000000
/* 00798 80B26088 26050024 */  addiu   $a1, $s0, 0x0024           ## $a1 = 00000024
/* 0079C 80B2608C 24060028 */  addiu   $a2, $zero, 0x0028         ## $a2 = 00000028
/* 007A0 80B26090 0C01AEB6 */  jal     Audio_PlaySoundAtPosition
              
/* 007A4 80B26094 24072887 */  addiu   $a3, $zero, 0x2887         ## $a3 = 00002887
/* 007A8 80B26098 8FA50028 */  lw      $a1, 0x0028($sp)           
/* 007AC 80B2609C 02202025 */  or      $a0, $s1, $zero            ## $a0 = 00000000
/* 007B0 80B260A0 24060028 */  addiu   $a2, $zero, 0x0028         ## $a2 = 00000028
/* 007B4 80B260A4 2407083E */  addiu   $a3, $zero, 0x083E         ## $a3 = 0000083E
/* 007B8 80B260A8 0C01AEB6 */  jal     Audio_PlaySoundAtPosition
              
/* 007BC 80B260AC 24A50024 */  addiu   $a1, $a1, 0x0024           ## $a1 = 00000024
/* 007C0 80B260B0 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 007C4 80B260B4 0C2C966E */  jal     EnTuboTrap_DropCollectible              
/* 007C8 80B260B8 02202825 */  or      $a1, $s1, $zero            ## $a1 = 00000000
/* 007CC 80B260BC 0C00B55C */  jal     Actor_Kill
              
/* 007D0 80B260C0 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 007D4 80B260C4 10000015 */  beq     $zero, $zero, .L80B2611C   
/* 007D8 80B260C8 8FBF001C */  lw      $ra, 0x001C($sp)           
.L80B260CC:
/* 007DC 80B260CC 96020088 */  lhu     $v0, 0x0088($s0)           ## 00000088
.L80B260D0:
/* 007E0 80B260D0 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 007E4 80B260D4 304D0008 */  andi    $t5, $v0, 0x0008           ## $t5 = 00000000
/* 007E8 80B260D8 15A00003 */  bne     $t5, $zero, .L80B260E8     
/* 007EC 80B260DC 304E0001 */  andi    $t6, $v0, 0x0001           ## $t6 = 00000000
/* 007F0 80B260E0 51C0000E */  beql    $t6, $zero, .L80B2611C     
/* 007F4 80B260E4 8FBF001C */  lw      $ra, 0x001C($sp)           
.L80B260E8:
/* 007F8 80B260E8 0C2C9686 */  jal     EnTuboTrap_SpawnEffectsOnLand              
/* 007FC 80B260EC 02202825 */  or      $a1, $s1, $zero            ## $a1 = 00000000
/* 00800 80B260F0 02202025 */  or      $a0, $s1, $zero            ## $a0 = 00000000
/* 00804 80B260F4 26050024 */  addiu   $a1, $s0, 0x0024           ## $a1 = 00000024
/* 00808 80B260F8 24060028 */  addiu   $a2, $zero, 0x0028         ## $a2 = 00000028
/* 0080C 80B260FC 0C01AEB6 */  jal     Audio_PlaySoundAtPosition
              
/* 00810 80B26100 24072887 */  addiu   $a3, $zero, 0x2887         ## $a3 = 00002887
/* 00814 80B26104 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 00818 80B26108 0C2C966E */  jal     EnTuboTrap_DropCollectible              
/* 0081C 80B2610C 02202825 */  or      $a1, $s1, $zero            ## $a1 = 00000000
/* 00820 80B26110 0C00B55C */  jal     Actor_Kill
              
/* 00824 80B26114 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 00828 80B26118 8FBF001C */  lw      $ra, 0x001C($sp)           
.L80B2611C:
/* 0082C 80B2611C 8FB00014 */  lw      $s0, 0x0014($sp)           
/* 00830 80B26120 8FB10018 */  lw      $s1, 0x0018($sp)           
/* 00834 80B26124 03E00008 */  jr      $ra                        
/* 00838 80B26128 27BD0030 */  addiu   $sp, $sp, 0x0030           ## $sp = 00000000
