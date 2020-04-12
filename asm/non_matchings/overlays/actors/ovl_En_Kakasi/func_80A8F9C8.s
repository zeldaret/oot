glabel func_80A8F9C8
/* 00858 80A8F9C8 27BDFFD8 */  addiu   $sp, $sp, 0xFFD8           ## $sp = FFFFFFD8
/* 0085C 80A8F9CC AFBF0024 */  sw      $ra, 0x0024($sp)           
/* 00860 80A8F9D0 AFB10020 */  sw      $s1, 0x0020($sp)           
/* 00864 80A8F9D4 AFB0001C */  sw      $s0, 0x001C($sp)           
/* 00868 80A8F9D8 00A08025 */  or      $s0, $a1, $zero            ## $s0 = 00000000
/* 0086C 80A8F9DC 0C2A3CA3 */  jal     func_80A8F28C              
/* 00870 80A8F9E0 00808825 */  or      $s1, $a0, $zero            ## $s1 = 00000000
/* 00874 80A8F9E4 0C02927F */  jal     SkelAnime_FrameUpdateMatrix
              
/* 00878 80A8F9E8 26240150 */  addiu   $a0, $s1, 0x0150           ## $a0 = 00000150
/* 0087C 80A8F9EC 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 00880 80A8F9F0 00002825 */  or      $a1, $zero, $zero          ## $a1 = 00000000
/* 00884 80A8F9F4 0C00B7D5 */  jal     func_8002DF54              
/* 00888 80A8F9F8 24060008 */  addiu   $a2, $zero, 0x0008         ## $a2 = 00000008
/* 0088C 80A8F9FC 0C042F6F */  jal     func_8010BDBC              
/* 00890 80A8FA00 260420D8 */  addiu   $a0, $s0, 0x20D8           ## $a0 = 000020D8
/* 00894 80A8FA04 862E0196 */  lh      $t6, 0x0196($s1)           ## 00000196
/* 00898 80A8FA08 55C20022 */  bnel    $t6, $v0, .L80A8FA94       
/* 0089C 80A8FA0C 8FBF0024 */  lw      $ra, 0x0024($sp)           
/* 008A0 80A8FA10 0C041AF2 */  jal     func_80106BC8              
/* 008A4 80A8FA14 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 008A8 80A8FA18 5040001E */  beql    $v0, $zero, .L80A8FA94     
/* 008AC 80A8FA1C 8FBF0024 */  lw      $ra, 0x0024($sp)           
/* 008B0 80A8FA20 86220208 */  lh      $v0, 0x0208($s1)           ## 00000208
/* 008B4 80A8FA24 2401FFFF */  addiu   $at, $zero, 0xFFFF         ## $at = FFFFFFFF
/* 008B8 80A8FA28 10410004 */  beq     $v0, $at, .L80A8FA3C       
/* 008BC 80A8FA2C 00027880 */  sll     $t7, $v0,  2               
/* 008C0 80A8FA30 020FC021 */  addu    $t8, $s0, $t7              
/* 008C4 80A8FA34 0C016C69 */  jal     func_8005B1A4              
/* 008C8 80A8FA38 8F040790 */  lw      $a0, 0x0790($t8)           ## 00000790
.L80A8FA3C:
/* 008CC 80A8FA3C 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 008D0 80A8FA40 240508DE */  addiu   $a1, $zero, 0x08DE         ## $a1 = 000008DE
/* 008D4 80A8FA44 2406FF9D */  addiu   $a2, $zero, 0xFF9D         ## $a2 = FFFFFF9D
/* 008D8 80A8FA48 02203825 */  or      $a3, $s1, $zero            ## $a3 = 00000000
/* 008DC 80A8FA4C 0C02003E */  jal     func_800800F8              
/* 008E0 80A8FA50 AFA00010 */  sw      $zero, 0x0010($sp)         
/* 008E4 80A8FA54 3C010001 */  lui     $at, 0x0001                ## $at = 00010000
/* 008E8 80A8FA58 A6220208 */  sh      $v0, 0x0208($s1)           ## 00000208
/* 008EC 80A8FA5C 00300821 */  addu    $at, $at, $s0              
/* 008F0 80A8FA60 24190037 */  addiu   $t9, $zero, 0x0037         ## $t9 = 00000037
/* 008F4 80A8FA64 A03903DC */  sb      $t9, 0x03DC($at)           ## 000103DC
/* 008F8 80A8FA68 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 008FC 80A8FA6C 00002825 */  or      $a1, $zero, $zero          ## $a1 = 00000000
/* 00900 80A8FA70 0C00B7D5 */  jal     func_8002DF54              
/* 00904 80A8FA74 24060008 */  addiu   $a2, $zero, 0x0008         ## $a2 = 00000008
/* 00908 80A8FA78 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 0090C 80A8FA7C 0C042F56 */  jal     func_8010BD58              
/* 00910 80A8FA80 2405002B */  addiu   $a1, $zero, 0x002B         ## $a1 = 0000002B
/* 00914 80A8FA84 3C0880A9 */  lui     $t0, %hi(func_80A8FAA4)    ## $t0 = 80A90000
/* 00918 80A8FA88 2508FAA4 */  addiu   $t0, $t0, %lo(func_80A8FAA4) ## $t0 = 80A8FAA4
/* 0091C 80A8FA8C AE28014C */  sw      $t0, 0x014C($s1)           ## 0000014C
/* 00920 80A8FA90 8FBF0024 */  lw      $ra, 0x0024($sp)           
.L80A8FA94:
/* 00924 80A8FA94 8FB0001C */  lw      $s0, 0x001C($sp)           
/* 00928 80A8FA98 8FB10020 */  lw      $s1, 0x0020($sp)           
/* 0092C 80A8FA9C 03E00008 */  jr      $ra                        
/* 00930 80A8FAA0 27BD0028 */  addiu   $sp, $sp, 0x0028           ## $sp = 00000000
