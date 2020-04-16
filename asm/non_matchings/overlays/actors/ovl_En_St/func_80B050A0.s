glabel func_80B050A0
/* 00810 80B050A0 27BDFF98 */  addiu   $sp, $sp, 0xFF98           ## $sp = FFFFFF98
/* 00814 80B050A4 3C0F80B0 */  lui     $t7, %hi(D_80B071A8)       ## $t7 = 80B00000
/* 00818 80B050A8 AFBF0034 */  sw      $ra, 0x0034($sp)           
/* 0081C 80B050AC AFB40030 */  sw      $s4, 0x0030($sp)           
/* 00820 80B050B0 AFB3002C */  sw      $s3, 0x002C($sp)           
/* 00824 80B050B4 AFB20028 */  sw      $s2, 0x0028($sp)           
/* 00828 80B050B8 AFB10024 */  sw      $s1, 0x0024($sp)           
/* 0082C 80B050BC AFB00020 */  sw      $s0, 0x0020($sp)           
/* 00830 80B050C0 25EF71A8 */  addiu   $t7, $t7, %lo(D_80B071A8)  ## $t7 = 80B071A8
/* 00834 80B050C4 8DF90000 */  lw      $t9, 0x0000($t7)           ## 80B071A8
/* 00838 80B050C8 8DF80004 */  lw      $t8, 0x0004($t7)           ## 80B071AC
/* 0083C 80B050CC 27AE0050 */  addiu   $t6, $sp, 0x0050           ## $t6 = FFFFFFE8
/* 00840 80B050D0 ADD90000 */  sw      $t9, 0x0000($t6)           ## FFFFFFE8
/* 00844 80B050D4 ADD80004 */  sw      $t8, 0x0004($t6)           ## FFFFFFEC
/* 00848 80B050D8 8DF8000C */  lw      $t8, 0x000C($t7)           ## 80B071B4
/* 0084C 80B050DC 8DF90008 */  lw      $t9, 0x0008($t7)           ## 80B071B0
/* 00850 80B050E0 00A09025 */  or      $s2, $a1, $zero            ## $s2 = 00000000
/* 00854 80B050E4 ADD8000C */  sw      $t8, 0x000C($t6)           ## FFFFFFF4
/* 00858 80B050E8 ADD90008 */  sw      $t9, 0x0008($t6)           ## FFFFFFF0
/* 0085C 80B050EC 8DF90010 */  lw      $t9, 0x0010($t7)           ## 80B071B8
/* 00860 80B050F0 8DF80014 */  lw      $t8, 0x0014($t7)           ## 80B071BC
/* 00864 80B050F4 00809825 */  or      $s3, $a0, $zero            ## $s3 = 00000000
/* 00868 80B050F8 24900194 */  addiu   $s0, $a0, 0x0194           ## $s0 = 00000194
/* 0086C 80B050FC 27B10050 */  addiu   $s1, $sp, 0x0050           ## $s1 = FFFFFFE8
/* 00870 80B05100 27B40068 */  addiu   $s4, $sp, 0x0068           ## $s4 = 00000000
/* 00874 80B05104 ADD90010 */  sw      $t9, 0x0010($t6)           ## FFFFFFF8
/* 00878 80B05108 ADD80014 */  sw      $t8, 0x0014($t6)           ## FFFFFFFC
.L80B0510C:
/* 0087C 80B0510C 02402025 */  or      $a0, $s2, $zero            ## $a0 = 00000000
/* 00880 80B05110 0C0170D9 */  jal     CollisionCheck_AllocCylinder
              
/* 00884 80B05114 02002825 */  or      $a1, $s0, $zero            ## $a1 = 00000194
/* 00888 80B05118 02402025 */  or      $a0, $s2, $zero            ## $a0 = 00000000
/* 0088C 80B0511C 02002825 */  or      $a1, $s0, $zero            ## $a1 = 00000194
/* 00890 80B05120 02603025 */  or      $a2, $s3, $zero            ## $a2 = 00000000
/* 00894 80B05124 0C01712B */  jal     ActorCollider_InitCylinder
              
/* 00898 80B05128 8E270000 */  lw      $a3, 0x0000($s1)           ## FFFFFFE8
/* 0089C 80B0512C 26310004 */  addiu   $s1, $s1, 0x0004           ## $s1 = FFFFFFEC
/* 008A0 80B05130 1634FFF6 */  bne     $s1, $s4, .L80B0510C       
/* 008A4 80B05134 2610004C */  addiu   $s0, $s0, 0x004C           ## $s0 = 000001E0
/* 008A8 80B05138 3C080003 */  lui     $t0, 0x0003                ## $t0 = 00030000
/* 008AC 80B0513C 3C09FFC0 */  lui     $t1, 0xFFC0                ## $t1 = FFC00000
/* 008B0 80B05140 3C0DFFCC */  lui     $t5, 0xFFCC                ## $t5 = FFCC0000
/* 008B4 80B05144 3508F8F9 */  ori     $t0, $t0, 0xF8F9           ## $t0 = 0003F8F9
/* 008B8 80B05148 35290706 */  ori     $t1, $t1, 0x0706           ## $t1 = FFC00706
/* 008BC 80B0514C 240A0009 */  addiu   $t2, $zero, 0x0009         ## $t2 = 00000009
/* 008C0 80B05150 240B000D */  addiu   $t3, $zero, 0x000D         ## $t3 = 0000000D
/* 008C4 80B05154 240C0002 */  addiu   $t4, $zero, 0x0002         ## $t4 = 00000002
/* 008C8 80B05158 35AD0706 */  ori     $t5, $t5, 0x0706           ## $t5 = FFCC0706
/* 008CC 80B0515C AE6801B4 */  sw      $t0, 0x01B4($s3)           ## 000001B4
/* 008D0 80B05160 AE690200 */  sw      $t1, 0x0200($s3)           ## 00000200
/* 008D4 80B05164 A26A0240 */  sb      $t2, 0x0240($s3)           ## 00000240
/* 008D8 80B05168 A26B025A */  sb      $t3, 0x025A($s3)           ## 0000025A
/* 008DC 80B0516C A26C0258 */  sb      $t4, 0x0258($s3)           ## 00000258
/* 008E0 80B05170 AE6D024C */  sw      $t5, 0x024C($s3)           ## 0000024C
/* 008E4 80B05174 0C016C80 */  jal     CollisionBtlTbl_Get
              
/* 008E8 80B05178 24040002 */  addiu   $a0, $zero, 0x0002         ## $a0 = 00000002
/* 008EC 80B0517C 3C0680B0 */  lui     $a2, %hi(D_80B0701C)       ## $a2 = 80B00000
/* 008F0 80B05180 24C6701C */  addiu   $a2, $a2, %lo(D_80B0701C)  ## $a2 = 80B0701C
/* 008F4 80B05184 26640098 */  addiu   $a0, $s3, 0x0098           ## $a0 = 00000098
/* 008F8 80B05188 0C0187BF */  jal     func_80061EFC              
/* 008FC 80B0518C 00402825 */  or      $a1, $v0, $zero            ## $a1 = 00000000
/* 00900 80B05190 2670035C */  addiu   $s0, $s3, 0x035C           ## $s0 = 0000035C
/* 00904 80B05194 02002825 */  or      $a1, $s0, $zero            ## $a1 = 0000035C
/* 00908 80B05198 0C016EFE */  jal     func_8005BBF8              
/* 0090C 80B0519C 02402025 */  or      $a0, $s2, $zero            ## $a0 = 00000000
/* 00910 80B051A0 3C0780B0 */  lui     $a3, %hi(D_80B07078)       ## $a3 = 80B00000
/* 00914 80B051A4 266E037C */  addiu   $t6, $s3, 0x037C           ## $t6 = 0000037C
/* 00918 80B051A8 AFAE0010 */  sw      $t6, 0x0010($sp)           
/* 0091C 80B051AC 24E77078 */  addiu   $a3, $a3, %lo(D_80B07078)  ## $a3 = 80B07078
/* 00920 80B051B0 02402025 */  or      $a0, $s2, $zero            ## $a0 = 00000000
/* 00924 80B051B4 02002825 */  or      $a1, $s0, $zero            ## $a1 = 0000035C
/* 00928 80B051B8 0C017014 */  jal     func_8005C050              
/* 0092C 80B051BC 02603025 */  or      $a2, $s3, $zero            ## $a2 = 00000000
/* 00930 80B051C0 8FBF0034 */  lw      $ra, 0x0034($sp)           
/* 00934 80B051C4 8FB00020 */  lw      $s0, 0x0020($sp)           
/* 00938 80B051C8 8FB10024 */  lw      $s1, 0x0024($sp)           
/* 0093C 80B051CC 8FB20028 */  lw      $s2, 0x0028($sp)           
/* 00940 80B051D0 8FB3002C */  lw      $s3, 0x002C($sp)           
/* 00944 80B051D4 8FB40030 */  lw      $s4, 0x0030($sp)           
/* 00948 80B051D8 03E00008 */  jr      $ra                        
/* 0094C 80B051DC 27BD0068 */  addiu   $sp, $sp, 0x0068           ## $sp = 00000000
