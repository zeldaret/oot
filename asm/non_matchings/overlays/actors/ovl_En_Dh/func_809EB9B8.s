glabel func_809EB9B8
/* 00C78 809EB9B8 27BDFFD0 */  addiu   $sp, $sp, 0xFFD0           ## $sp = FFFFFFD0
/* 00C7C 809EB9BC AFBF002C */  sw      $ra, 0x002C($sp)           
/* 00C80 809EB9C0 AFB00028 */  sw      $s0, 0x0028($sp)           
/* 00C84 809EB9C4 AFA50034 */  sw      $a1, 0x0034($sp)           
/* 00C88 809EB9C8 90830250 */  lbu     $v1, 0x0250($a0)           ## 00000250
/* 00C8C 809EB9CC 00808025 */  or      $s0, $a0, $zero            ## $s0 = 00000000
/* 00C90 809EB9D0 24080011 */  addiu   $t0, $zero, 0x0011         ## $t0 = 00000011
/* 00C94 809EB9D4 10600008 */  beq     $v1, $zero, .L809EB9F8     
/* 00C98 809EB9D8 00601025 */  or      $v0, $v1, $zero            ## $v0 = 00000000
/* 00C9C 809EB9DC 24010001 */  addiu   $at, $zero, 0x0001         ## $at = 00000001
/* 00CA0 809EB9E0 10410011 */  beq     $v0, $at, .L809EBA28       
/* 00CA4 809EB9E4 24010002 */  addiu   $at, $zero, 0x0002         ## $at = 00000002
/* 00CA8 809EB9E8 10410049 */  beq     $v0, $at, .L809EBB10       
/* 00CAC 809EB9EC 240C0023 */  addiu   $t4, $zero, 0x0023         ## $t4 = 00000023
/* 00CB0 809EB9F0 10000051 */  beq     $zero, $zero, .L809EBB38   
/* 00CB4 809EB9F4 8FBF002C */  lw      $ra, 0x002C($sp)           
.L809EB9F8:
/* 00CB8 809EB9F8 920F0252 */  lbu     $t7, 0x0252($s0)           ## 00000252
/* 00CBC 809EB9FC 3C09FFCF */  lui     $t1, 0xFFCF                ## $t1 = FFCF0000
/* 00CC0 809EBA00 246E0001 */  addiu   $t6, $v1, 0x0001           ## $t6 = 00000001
/* 00CC4 809EBA04 3529FFFF */  ori     $t1, $t1, 0xFFFF           ## $t1 = FFCFFFFF
/* 00CC8 809EBA08 240A0004 */  addiu   $t2, $zero, 0x0004         ## $t2 = 00000004
/* 00CCC 809EBA0C 25F80001 */  addiu   $t8, $t7, 0x0001           ## $t8 = 00000001
/* 00CD0 809EBA10 A20E0250 */  sb      $t6, 0x0250($s0)           ## 00000250
/* 00CD4 809EBA14 A2180252 */  sb      $t8, 0x0252($s0)           ## 00000252
/* 00CD8 809EBA18 A208028D */  sb      $t0, 0x028D($s0)           ## 0000028D
/* 00CDC 809EBA1C A2080270 */  sb      $t0, 0x0270($s0)           ## 00000270
/* 00CE0 809EBA20 AE090278 */  sw      $t1, 0x0278($s0)           ## 00000278
/* 00CE4 809EBA24 A20A027D */  sb      $t2, 0x027D($s0)           ## 0000027D
.L809EBA28:
/* 00CE8 809EBA28 860B025E */  lh      $t3, 0x025E($s0)           ## 0000025E
/* 00CEC 809EBA2C 44802000 */  mtc1    $zero, $f4                 ## $f4 = 0.00
/* 00CF0 809EBA30 26040318 */  addiu   $a0, $s0, 0x0318           ## $a0 = 00000318
/* 00CF4 809EBA34 256C047E */  addiu   $t4, $t3, 0x047E           ## $t4 = 0000047E
/* 00CF8 809EBA38 A60C025E */  sh      $t4, 0x025E($s0)           ## 0000025E
/* 00CFC 809EBA3C 3C054396 */  lui     $a1, 0x4396                ## $a1 = 43960000
/* 00D00 809EBA40 3C063F80 */  lui     $a2, 0x3F80                ## $a2 = 3F800000
/* 00D04 809EBA44 3C074100 */  lui     $a3, 0x4100                ## $a3 = 41000000
/* 00D08 809EBA48 0C01E0C4 */  jal     Math_SmoothScaleMaxMinF
              
/* 00D0C 809EBA4C E7A40010 */  swc1    $f4, 0x0010($sp)           
/* 00D10 809EBA50 0C01DE1C */  jal     Math_Sins
              ## sins?
/* 00D14 809EBA54 8604025E */  lh      $a0, 0x025E($s0)           ## 0000025E
/* 00D18 809EBA58 3C01425C */  lui     $at, 0x425C                ## $at = 425C0000
/* 00D1C 809EBA5C 44813000 */  mtc1    $at, $f6                   ## $f6 = 55.00
/* 00D20 809EBA60 8604025E */  lh      $a0, 0x025E($s0)           ## 0000025E
/* 00D24 809EBA64 46060202 */  mul.s   $f8, $f0, $f6              
/* 00D28 809EBA68 0C01DE1C */  jal     Math_Sins
              ## sins?
/* 00D2C 809EBA6C E608031C */  swc1    $f8, 0x031C($s0)           ## 0000031C
/* 00D30 809EBA70 3C01437F */  lui     $at, 0x437F                ## $at = 437F0000
/* 00D34 809EBA74 44815000 */  mtc1    $at, $f10                  ## $f10 = 255.00
/* 00D38 809EBA78 3C01809F */  lui     $at, %hi(D_809EC6D8)       ## $at = 809F0000
/* 00D3C 809EBA7C 8E070318 */  lw      $a3, 0x0318($s0)           ## 00000318
/* 00D40 809EBA80 460A0402 */  mul.s   $f16, $f0, $f10            
/* 00D44 809EBA84 24190004 */  addiu   $t9, $zero, 0x0004         ## $t9 = 00000004
/* 00D48 809EBA88 02002825 */  or      $a1, $s0, $zero            ## $a1 = 00000000
/* 00D4C 809EBA8C 26060024 */  addiu   $a2, $s0, 0x0024           ## $a2 = 00000024
/* 00D50 809EBA90 4600848D */  trunc.w.s $f18, $f16                 
/* 00D54 809EBA94 440E9000 */  mfc1    $t6, $f18                  
/* 00D58 809EBA98 00000000 */  nop
/* 00D5C 809EBA9C 000E7C00 */  sll     $t7, $t6, 16               
/* 00D60 809EBAA0 000FC403 */  sra     $t8, $t7, 16               
/* 00D64 809EBAA4 44982000 */  mtc1    $t8, $f4                   ## $f4 = 0.00
/* 00D68 809EBAA8 00000000 */  nop
/* 00D6C 809EBAAC 468021A0 */  cvt.s.w $f6, $f4                   
/* 00D70 809EBAB0 E6060320 */  swc1    $f6, 0x0320($s0)           ## 00000320
/* 00D74 809EBAB4 C428C6D8 */  lwc1    $f8, %lo(D_809EC6D8)($at)  
/* 00D78 809EBAB8 3C01809F */  lui     $at, %hi(D_809EC6DC)       ## $at = 809F0000
/* 00D7C 809EBABC C42AC6DC */  lwc1    $f10, %lo(D_809EC6DC)($at) 
/* 00D80 809EBAC0 AFB90010 */  sw      $t9, 0x0010($sp)           
/* 00D84 809EBAC4 8FA40034 */  lw      $a0, 0x0034($sp)           
/* 00D88 809EBAC8 E7A80014 */  swc1    $f8, 0x0014($sp)           
/* 00D8C 809EBACC 0C27ABB1 */  jal     func_809EAEC4              
/* 00D90 809EBAD0 E7AA0018 */  swc1    $f10, 0x0018($sp)          
/* 00D94 809EBAD4 3C01809F */  lui     $at, %hi(D_809EC6E0)       ## $at = 809F0000
/* 00D98 809EBAD8 C432C6E0 */  lwc1    $f18, %lo(D_809EC6E0)($at) 
/* 00D9C 809EBADC C6100318 */  lwc1    $f16, 0x0318($s0)          ## 00000318
/* 00DA0 809EBAE0 2604014C */  addiu   $a0, $s0, 0x014C           ## $a0 = 0000014C
/* 00DA4 809EBAE4 46128102 */  mul.s   $f4, $f16, $f18            
/* 00DA8 809EBAE8 4600218D */  trunc.w.s $f6, $f4                   
/* 00DAC 809EBAEC 44093000 */  mfc1    $t1, $f6                   
/* 00DB0 809EBAF0 0C02927F */  jal     SkelAnime_FrameUpdateMatrix
              
/* 00DB4 809EBAF4 A60902A0 */  sh      $t1, 0x02A0($s0)           ## 000002A0
/* 00DB8 809EBAF8 5040000F */  beql    $v0, $zero, .L809EBB38     
/* 00DBC 809EBAFC 8FBF002C */  lw      $ra, 0x002C($sp)           
/* 00DC0 809EBB00 920A0250 */  lbu     $t2, 0x0250($s0)           ## 00000250
/* 00DC4 809EBB04 254B0001 */  addiu   $t3, $t2, 0x0001           ## $t3 = 00000001
/* 00DC8 809EBB08 1000000A */  beq     $zero, $zero, .L809EBB34   
/* 00DCC 809EBB0C A20B0250 */  sb      $t3, 0x0250($s0)           ## 00000250
.L809EBB10:
/* 00DD0 809EBB10 300E00FF */  andi    $t6, $zero, 0x00FF         ## $t6 = 00000000
/* 00DD4 809EBB14 A2000252 */  sb      $zero, 0x0252($s0)         ## 00000252
/* 00DD8 809EBB18 A60C02A0 */  sh      $t4, 0x02A0($s0)           ## 000002A0
/* 00DDC 809EBB1C A200028D */  sb      $zero, 0x028D($s0)         ## 0000028D
/* 00DE0 809EBB20 A2000270 */  sb      $zero, 0x0270($s0)         ## 00000270
/* 00DE4 809EBB24 AE0E0278 */  sw      $t6, 0x0278($s0)           ## 00000278
/* 00DE8 809EBB28 A200027D */  sb      $zero, 0x027D($s0)         ## 0000027D
/* 00DEC 809EBB2C 0C27AC17 */  jal     func_809EB05C              
/* 00DF0 809EBB30 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
.L809EBB34:
/* 00DF4 809EBB34 8FBF002C */  lw      $ra, 0x002C($sp)           
.L809EBB38:
/* 00DF8 809EBB38 8FB00028 */  lw      $s0, 0x0028($sp)           
/* 00DFC 809EBB3C 27BD0030 */  addiu   $sp, $sp, 0x0030           ## $sp = 00000000
/* 00E00 809EBB40 03E00008 */  jr      $ra                        
/* 00E04 809EBB44 00000000 */  nop


