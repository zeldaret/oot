.late_rodata
glabel D_80B7B780
    .float 0.05

.text
glabel func_80B761B8
/* 0C818 80B761B8 27BDFFC0 */  addiu   $sp, $sp, 0xFFC0           ## $sp = FFFFFFC0
/* 0C81C 80B761BC F7B60018 */  sdc1    $f22, 0x0018($sp)          
/* 0C820 80B761C0 3C0180B8 */  lui     $at, %hi(D_80B7B780)       ## $at = 80B80000
/* 0C824 80B761C4 C436B780 */  lwc1    $f22, %lo(D_80B7B780)($at) 
/* 0C828 80B761C8 AFB40034 */  sw      $s4, 0x0034($sp)           
/* 0C82C 80B761CC AFB30030 */  sw      $s3, 0x0030($sp)           
/* 0C830 80B761D0 AFB2002C */  sw      $s2, 0x002C($sp)           
/* 0C834 80B761D4 AFB10028 */  sw      $s1, 0x0028($sp)           
/* 0C838 80B761D8 F7B40010 */  sdc1    $f20, 0x0010($sp)          
/* 0C83C 80B761DC 3C0142C8 */  lui     $at, 0x42C8                ## $at = 42C80000
/* 0C840 80B761E0 AFBF003C */  sw      $ra, 0x003C($sp)           
/* 0C844 80B761E4 AFB50038 */  sw      $s5, 0x0038($sp)           
/* 0C848 80B761E8 AFB00024 */  sw      $s0, 0x0024($sp)           
/* 0C84C 80B761EC 3C1180B8 */  lui     $s1, %hi(D_80B7FEF8)       ## $s1 = 80B80000
/* 0C850 80B761F0 4481A000 */  mtc1    $at, $f20                  ## $f20 = 100.00
/* 0C854 80B761F4 00809825 */  or      $s3, $a0, $zero            ## $s3 = 00000000
/* 0C858 80B761F8 2631FEF8 */  addiu   $s1, $s1, %lo(D_80B7FEF8)  ## $s1 = 80B7FEF8
/* 0C85C 80B761FC 8C951C44 */  lw      $s5, 0x1C44($a0)           ## 00001C44
/* 0C860 80B76200 241200FE */  addiu   $s2, $zero, 0x00FE         ## $s2 = 000000FE
/* 0C864 80B76204 0000A025 */  or      $s4, $zero, $zero          ## $s4 = 00000000
.L80B76208:
/* 0C868 80B76208 922E0030 */  lbu     $t6, 0x0030($s1)           ## 80B7FF28
/* 0C86C 80B7620C 3C010001 */  lui     $at, 0x0001                ## $at = 00010000
/* 0C870 80B76210 34211D60 */  ori     $at, $at, 0x1D60           ## $at = 00011D60
/* 0C874 80B76214 11C0007B */  beq     $t6, $zero, .L80B76404     
/* 0C878 80B76218 02612021 */  addu    $a0, $s3, $at              
/* 0C87C 80B7621C 862F0032 */  lh      $t7, 0x0032($s1)           ## 80B7FF2A
/* 0C880 80B76220 3C0780B8 */  lui     $a3, %hi(D_80B7FEA4)       ## $a3 = 80B80000
/* 0C884 80B76224 A2200034 */  sb      $zero, 0x0034($s1)         ## 80B7FF2C
/* 0C888 80B76228 25F80001 */  addiu   $t8, $t7, 0x0001           ## $t8 = 00000001
/* 0C88C 80B7622C A6380032 */  sh      $t8, 0x0032($s1)           ## 80B7FF2A
/* 0C890 80B76230 24E7FEA4 */  addiu   $a3, $a3, %lo(D_80B7FEA4)  ## $a3 = 80B7FEA4
/* 0C894 80B76234 02202825 */  or      $a1, $s1, $zero            ## $a1 = 80B7FEF8
/* 0C898 80B76238 0C029B84 */  jal     SkinMatrix_Vec3fMtxFMultXYZW              
/* 0C89C 80B7623C 26260018 */  addiu   $a2, $s1, 0x0018           ## $a2 = 80B7FF10
/* 0C8A0 80B76240 C6220020 */  lwc1    $f2, 0x0020($s1)           ## 80B7FF18
/* 0C8A4 80B76244 C6240038 */  lwc1    $f4, 0x0038($s1)           ## 80B7FF30
/* 0C8A8 80B76248 3C0143FA */  lui     $at, 0x43FA                ## $at = 43FA0000
/* 0C8AC 80B7624C 44814000 */  mtc1    $at, $f8                   ## $f8 = 500.00
/* 0C8B0 80B76250 4604103C */  c.lt.s  $f2, $f4                   
/* 0C8B4 80B76254 00000000 */  nop
/* 0C8B8 80B76258 4502000C */  bc1fl   .L80B7628C                 
/* 0C8BC 80B7625C 4608103C */  c.lt.s  $f2, $f8                   
/* 0C8C0 80B76260 C6200018 */  lwc1    $f0, 0x0018($s1)           ## 80B7FF10
/* 0C8C4 80B76264 4602A180 */  add.s   $f6, $f20, $f2             
/* 0C8C8 80B76268 24190001 */  addiu   $t9, $zero, 0x0001         ## $t9 = 00000001
/* 0C8CC 80B7626C 46000005 */  abs.s   $f0, $f0                   
/* 0C8D0 80B76270 4606003C */  c.lt.s  $f0, $f6                   
/* 0C8D4 80B76274 00000000 */  nop
/* 0C8D8 80B76278 45020004 */  bc1fl   .L80B7628C                 
/* 0C8DC 80B7627C 4608103C */  c.lt.s  $f2, $f8                   
/* 0C8E0 80B76280 A2390034 */  sb      $t9, 0x0034($s1)           ## 80B7FF2C
/* 0C8E4 80B76284 C6220020 */  lwc1    $f2, 0x0020($s1)           ## 80B7FF18
/* 0C8E8 80B76288 4608103C */  c.lt.s  $f2, $f8                   
.L80B7628C:
/* 0C8EC 80B7628C 00000000 */  nop
/* 0C8F0 80B76290 4502005D */  bc1fl   .L80B76408                 
/* 0C8F4 80B76294 26940001 */  addiu   $s4, $s4, 0x0001           ## $s4 = 00000001
/* 0C8F8 80B76298 C6200018 */  lwc1    $f0, 0x0018($s1)           ## 80B7FF10
/* 0C8FC 80B7629C 4602A280 */  add.s   $f10, $f20, $f2            
/* 0C900 80B762A0 46000005 */  abs.s   $f0, $f0                   
/* 0C904 80B762A4 460A003C */  c.lt.s  $f0, $f10                  
/* 0C908 80B762A8 00000000 */  nop
/* 0C90C 80B762AC 45020056 */  bc1fl   .L80B76408                 
/* 0C910 80B762B0 26940001 */  addiu   $s4, $s4, 0x0001           ## $s4 = 00000002
/* 0C914 80B762B4 92220030 */  lbu     $v0, 0x0030($s1)           ## 80B7FF28
/* 0C918 80B762B8 24010001 */  addiu   $at, $zero, 0x0001         ## $at = 00000001
/* 0C91C 80B762BC 02202025 */  or      $a0, $s1, $zero            ## $a0 = 80B7FEF8
/* 0C920 80B762C0 5441001C */  bnel    $v0, $at, .L80B76334       
/* 0C924 80B762C4 24010002 */  addiu   $at, $zero, 0x0002         ## $at = 00000002
/* 0C928 80B762C8 0C2DD80A */  jal     func_80B76028              
/* 0C92C 80B762CC 26A50024 */  addiu   $a1, $s5, 0x0024           ## $a1 = 00000024
/* 0C930 80B762D0 8E701C54 */  lw      $s0, 0x1C54($s3)           ## 00001C54
/* 0C934 80B762D4 52000011 */  beql    $s0, $zero, .L80B7631C     
/* 0C938 80B762D8 4405B000 */  mfc1    $a1, $f22                  
/* 0C93C 80B762DC 86080000 */  lh      $t0, 0x0000($s0)           ## 00000000
.L80B762E0:
/* 0C940 80B762E0 16480006 */  bne     $s2, $t0, .L80B762FC       
/* 0C944 80B762E4 00000000 */  nop
/* 0C948 80B762E8 8609001C */  lh      $t1, 0x001C($s0)           ## 0000001C
/* 0C94C 80B762EC 02202025 */  or      $a0, $s1, $zero            ## $a0 = 80B7FEF8
/* 0C950 80B762F0 29210064 */  slti    $at, $t1, 0x0064           
/* 0C954 80B762F4 10200003 */  beq     $at, $zero, .L80B76304     
/* 0C958 80B762F8 00000000 */  nop
.L80B762FC:
/* 0C95C 80B762FC 10000004 */  beq     $zero, $zero, .L80B76310   
/* 0C960 80B76300 8E100124 */  lw      $s0, 0x0124($s0)           ## 00000124
.L80B76304:
/* 0C964 80B76304 0C2DD80A */  jal     func_80B76028              
/* 0C968 80B76308 26050024 */  addiu   $a1, $s0, 0x0024           ## $a1 = 00000024
/* 0C96C 80B7630C 8E100124 */  lw      $s0, 0x0124($s0)           ## 00000124
.L80B76310:
/* 0C970 80B76310 5600FFF3 */  bnel    $s0, $zero, .L80B762E0     
/* 0C974 80B76314 86080000 */  lh      $t0, 0x0000($s0)           ## 00000000
/* 0C978 80B76318 4405B000 */  mfc1    $a1, $f22                  
.L80B7631C:
/* 0C97C 80B7631C 4406B000 */  mfc1    $a2, $f22                  
/* 0C980 80B76320 0C01E123 */  jal     Math_ApproachZeroF
              
/* 0C984 80B76324 2624000C */  addiu   $a0, $s1, 0x000C           ## $a0 = 80B7FF04
/* 0C988 80B76328 10000037 */  beq     $zero, $zero, .L80B76408   
/* 0C98C 80B7632C 26940001 */  addiu   $s4, $s4, 0x0001           ## $s4 = 00000003
/* 0C990 80B76330 24010002 */  addiu   $at, $zero, 0x0002         ## $at = 00000002
.L80B76334:
/* 0C994 80B76334 14410033 */  bne     $v0, $at, .L80B76404       
/* 0C998 80B76338 02202025 */  or      $a0, $s1, $zero            ## $a0 = 80B7FEF8
/* 0C99C 80B7633C 26A50024 */  addiu   $a1, $s5, 0x0024           ## $a1 = 00000024
/* 0C9A0 80B76340 0C2DD835 */  jal     func_80B760D4              
/* 0C9A4 80B76344 00003025 */  or      $a2, $zero, $zero          ## $a2 = 00000000
/* 0C9A8 80B76348 8E701C54 */  lw      $s0, 0x1C54($s3)           ## 00001C54
/* 0C9AC 80B7634C 52000012 */  beql    $s0, $zero, .L80B76398     
/* 0C9B0 80B76350 26240028 */  addiu   $a0, $s1, 0x0028           ## $a0 = 80B7FF20
/* 0C9B4 80B76354 860A0000 */  lh      $t2, 0x0000($s0)           ## 00000000
.L80B76358:
/* 0C9B8 80B76358 164A0007 */  bne     $s2, $t2, .L80B76378       
/* 0C9BC 80B7635C 00000000 */  nop
/* 0C9C0 80B76360 860B001C */  lh      $t3, 0x001C($s0)           ## 0000001C
/* 0C9C4 80B76364 02202025 */  or      $a0, $s1, $zero            ## $a0 = 80B7FEF8
/* 0C9C8 80B76368 26050024 */  addiu   $a1, $s0, 0x0024           ## $a1 = 00000024
/* 0C9CC 80B7636C 29610064 */  slti    $at, $t3, 0x0064           
/* 0C9D0 80B76370 10200003 */  beq     $at, $zero, .L80B76380     
/* 0C9D4 80B76374 00000000 */  nop
.L80B76378:
/* 0C9D8 80B76378 10000004 */  beq     $zero, $zero, .L80B7638C   
/* 0C9DC 80B7637C 8E100124 */  lw      $s0, 0x0124($s0)           ## 00000124
.L80B76380:
/* 0C9E0 80B76380 0C2DD835 */  jal     func_80B760D4              
/* 0C9E4 80B76384 92060151 */  lbu     $a2, 0x0151($s0)           ## 00000151
/* 0C9E8 80B76388 8E100124 */  lw      $s0, 0x0124($s0)           ## 00000124
.L80B7638C:
/* 0C9EC 80B7638C 5600FFF2 */  bnel    $s0, $zero, .L80B76358     
/* 0C9F0 80B76390 860A0000 */  lh      $t2, 0x0000($s0)           ## 00000000
/* 0C9F4 80B76394 26240028 */  addiu   $a0, $s1, 0x0028           ## $a0 = 80B7FF20
.L80B76398:
/* 0C9F8 80B76398 00002825 */  or      $a1, $zero, $zero          ## $a1 = 00000000
/* 0C9FC 80B7639C 24060014 */  addiu   $a2, $zero, 0x0014         ## $a2 = 00000014
/* 0CA00 80B763A0 0C01E1EF */  jal     Math_ApproachS
              
/* 0CA04 80B763A4 24070050 */  addiu   $a3, $zero, 0x0050         ## $a3 = 00000050
/* 0CA08 80B763A8 86240032 */  lh      $a0, 0x0032($s1)           ## 80B7FF2A
/* 0CA0C 80B763AC 00042300 */  sll     $a0, $a0, 12               
/* 0CA10 80B763B0 00042400 */  sll     $a0, $a0, 16               
/* 0CA14 80B763B4 0C01DE1C */  jal     Math_SinS
              ## sins?
/* 0CA18 80B763B8 00042403 */  sra     $a0, $a0, 16               
/* 0CA1C 80B763BC 8E6C07C0 */  lw      $t4, 0x07C0($s3)           ## 000007C0
/* 0CA20 80B763C0 C628002C */  lwc1    $f8, 0x002C($s1)           ## 80B7FF24
/* 0CA24 80B763C4 3C014000 */  lui     $at, 0x4000                ## $at = 40000000
/* 0CA28 80B763C8 8D8D0028 */  lw      $t5, 0x0028($t4)           ## 00000028
/* 0CA2C 80B763CC 46080282 */  mul.s   $f10, $f0, $f8             
/* 0CA30 80B763D0 44812000 */  mtc1    $at, $f4                   ## $f4 = 2.00
/* 0CA34 80B763D4 85AE0002 */  lh      $t6, 0x0002($t5)           ## 00000002
/* 0CA38 80B763D8 3C053DCC */  lui     $a1, 0x3DCC                ## $a1 = 3DCC0000
/* 0CA3C 80B763DC 3C063CA3 */  lui     $a2, 0x3CA3                ## $a2 = 3CA30000
/* 0CA40 80B763E0 448E8000 */  mtc1    $t6, $f16                  ## $f16 = 0.00
/* 0CA44 80B763E4 34C6D70A */  ori     $a2, $a2, 0xD70A           ## $a2 = 3CA3D70A
/* 0CA48 80B763E8 34A5CCCD */  ori     $a1, $a1, 0xCCCD           ## $a1 = 3DCCCCCD
/* 0CA4C 80B763EC 468084A0 */  cvt.s.w $f18, $f16                 
/* 0CA50 80B763F0 2624002C */  addiu   $a0, $s1, 0x002C           ## $a0 = 80B7FF24
/* 0CA54 80B763F4 46049180 */  add.s   $f6, $f18, $f4             
/* 0CA58 80B763F8 46065400 */  add.s   $f16, $f10, $f6            
/* 0CA5C 80B763FC 0C01E123 */  jal     Math_ApproachZeroF
              
/* 0CA60 80B76400 E6300004 */  swc1    $f16, 0x0004($s1)          ## 80B7FEFC
.L80B76404:
/* 0CA64 80B76404 26940001 */  addiu   $s4, $s4, 0x0001           ## $s4 = 00000004
.L80B76408:
/* 0CA68 80B76408 0014A400 */  sll     $s4, $s4, 16               
/* 0CA6C 80B7640C 0014A403 */  sra     $s4, $s4, 16               
/* 0CA70 80B76410 2A81008C */  slti    $at, $s4, 0x008C           
/* 0CA74 80B76414 1420FF7C */  bne     $at, $zero, .L80B76208     
/* 0CA78 80B76418 2631003C */  addiu   $s1, $s1, 0x003C           ## $s1 = 80B7FF34
/* 0CA7C 80B7641C 3C0F80B8 */  lui     $t7, %hi(D_80B7FEC4)       ## $t7 = 80B80000
/* 0CA80 80B76420 85EFFEC4 */  lh      $t7, %lo(D_80B7FEC4)($t7)  
/* 0CA84 80B76424 3C010001 */  lui     $at, 0x0001                ## $at = 00010000
/* 0CA88 80B76428 34211E60 */  ori     $at, $at, 0x1E60           ## $at = 00011E60
/* 0CA8C 80B7642C 15E00006 */  bne     $t7, $zero, .L80B76448     
/* 0CA90 80B76430 02602025 */  or      $a0, $s3, $zero            ## $a0 = 00000000
/* 0CA94 80B76434 3C0680B8 */  lui     $a2, %hi(D_80B7E070)       ## $a2 = 80B80000
/* 0CA98 80B76438 8CC6E070 */  lw      $a2, %lo(D_80B7E070)($a2)  
/* 0CA9C 80B7643C 02612821 */  addu    $a1, $s3, $at              
/* 0CAA0 80B76440 0C017713 */  jal     CollisionCheck_SetOC
              ## CollisionCheck_setOC
/* 0CAA4 80B76444 24C60230 */  addiu   $a2, $a2, 0x0230           ## $a2 = 80B80230
.L80B76448:
/* 0CAA8 80B76448 8FBF003C */  lw      $ra, 0x003C($sp)           
/* 0CAAC 80B7644C D7B40010 */  ldc1    $f20, 0x0010($sp)          
/* 0CAB0 80B76450 D7B60018 */  ldc1    $f22, 0x0018($sp)          
/* 0CAB4 80B76454 8FB00024 */  lw      $s0, 0x0024($sp)           
/* 0CAB8 80B76458 8FB10028 */  lw      $s1, 0x0028($sp)           
/* 0CABC 80B7645C 8FB2002C */  lw      $s2, 0x002C($sp)           
/* 0CAC0 80B76460 8FB30030 */  lw      $s3, 0x0030($sp)           
/* 0CAC4 80B76464 8FB40034 */  lw      $s4, 0x0034($sp)           
/* 0CAC8 80B76468 8FB50038 */  lw      $s5, 0x0038($sp)           
/* 0CACC 80B7646C 03E00008 */  jr      $ra                        
/* 0CAD0 80B76470 27BD0040 */  addiu   $sp, $sp, 0x0040           ## $sp = 00000000
