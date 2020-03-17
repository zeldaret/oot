glabel func_80B1A888
/* 01E08 80B1A888 27BDFFC8 */  addiu   $sp, $sp, 0xFFC8           ## $sp = FFFFFFC8
/* 01E0C 80B1A88C AFB00030 */  sw      $s0, 0x0030($sp)           
/* 01E10 80B1A890 00808025 */  or      $s0, $a0, $zero            ## $s0 = 00000000
/* 01E14 80B1A894 AFBF0034 */  sw      $ra, 0x0034($sp)           
/* 01E18 80B1A898 AFA5003C */  sw      $a1, 0x003C($sp)           
/* 01E1C 80B1A89C 24057FFF */  addiu   $a1, $zero, 0x7FFF         ## $a1 = 00007FFF
/* 01E20 80B1A8A0 248400B8 */  addiu   $a0, $a0, 0x00B8           ## $a0 = 000000B8
/* 01E24 80B1A8A4 AFA00010 */  sw      $zero, 0x0010($sp)         
/* 01E28 80B1A8A8 24060001 */  addiu   $a2, $zero, 0x0001         ## $a2 = 00000001
/* 01E2C 80B1A8AC 0C01E1A7 */  jal     Math_SmoothScaleMaxMinS
              
/* 01E30 80B1A8B0 24070FA0 */  addiu   $a3, $zero, 0x0FA0         ## $a3 = 00000FA0
/* 01E34 80B1A8B4 920E02E2 */  lbu     $t6, 0x02E2($s0)           ## 000002E2
/* 01E38 80B1A8B8 25CFFFFF */  addiu   $t7, $t6, 0xFFFF           ## $t7 = FFFFFFFF
/* 01E3C 80B1A8BC 31F800FF */  andi    $t8, $t7, 0x00FF           ## $t8 = 000000FF
/* 01E40 80B1A8C0 1700002E */  bne     $t8, $zero, .L80B1A97C     
/* 01E44 80B1A8C4 A20F02E2 */  sb      $t7, 0x02E2($s0)           ## 000002E2
/* 01E48 80B1A8C8 0C03F66B */  jal     Math_Rand_ZeroOne
              ## Rand.Next() float
/* 01E4C 80B1A8CC 00000000 */  nop
/* 01E50 80B1A8D0 3C0141F0 */  lui     $at, 0x41F0                ## $at = 41F00000
/* 01E54 80B1A8D4 44812000 */  mtc1    $at, $f4                   ## $f4 = 30.00
/* 01E58 80B1A8D8 24080001 */  addiu   $t0, $zero, 0x0001         ## $t0 = 00000001
/* 01E5C 80B1A8DC 3C014F00 */  lui     $at, 0x4F00                ## $at = 4F000000
/* 01E60 80B1A8E0 46040182 */  mul.s   $f6, $f0, $f4              
/* 01E64 80B1A8E4 4459F800 */  cfc1    $t9, $31
/* 01E68 80B1A8E8 44C8F800 */  ctc1    $t0, $31
/* 01E6C 80B1A8EC 00000000 */  nop
/* 01E70 80B1A8F0 46003224 */  cvt.w.s $f8, $f6                   
/* 01E74 80B1A8F4 4448F800 */  cfc1    $t0, $31
/* 01E78 80B1A8F8 00000000 */  nop
/* 01E7C 80B1A8FC 31080078 */  andi    $t0, $t0, 0x0078           ## $t0 = 00000000
/* 01E80 80B1A900 51000013 */  beql    $t0, $zero, .L80B1A950     
/* 01E84 80B1A904 44084000 */  mfc1    $t0, $f8                   
/* 01E88 80B1A908 44814000 */  mtc1    $at, $f8                   ## $f8 = 2147483648.00
/* 01E8C 80B1A90C 24080001 */  addiu   $t0, $zero, 0x0001         ## $t0 = 00000001
/* 01E90 80B1A910 46083201 */  sub.s   $f8, $f6, $f8              
/* 01E94 80B1A914 44C8F800 */  ctc1    $t0, $31
/* 01E98 80B1A918 00000000 */  nop
/* 01E9C 80B1A91C 46004224 */  cvt.w.s $f8, $f8                   
/* 01EA0 80B1A920 4448F800 */  cfc1    $t0, $31
/* 01EA4 80B1A924 00000000 */  nop
/* 01EA8 80B1A928 31080078 */  andi    $t0, $t0, 0x0078           ## $t0 = 00000000
/* 01EAC 80B1A92C 15000005 */  bne     $t0, $zero, .L80B1A944     
/* 01EB0 80B1A930 00000000 */  nop
/* 01EB4 80B1A934 44084000 */  mfc1    $t0, $f8                   
/* 01EB8 80B1A938 3C018000 */  lui     $at, 0x8000                ## $at = 80000000
/* 01EBC 80B1A93C 10000007 */  beq     $zero, $zero, .L80B1A95C   
/* 01EC0 80B1A940 01014025 */  or      $t0, $t0, $at              ## $t0 = 80000000
.L80B1A944:
/* 01EC4 80B1A944 10000005 */  beq     $zero, $zero, .L80B1A95C   
/* 01EC8 80B1A948 2408FFFF */  addiu   $t0, $zero, 0xFFFF         ## $t0 = FFFFFFFF
/* 01ECC 80B1A94C 44084000 */  mfc1    $t0, $f8                   
.L80B1A950:
/* 01ED0 80B1A950 00000000 */  nop
/* 01ED4 80B1A954 0500FFFB */  bltz    $t0, .L80B1A944            
/* 01ED8 80B1A958 00000000 */  nop
.L80B1A95C:
/* 01EDC 80B1A95C 44D9F800 */  ctc1    $t9, $31
/* 01EE0 80B1A960 0C03F66B */  jal     Math_Rand_ZeroOne
              ## Rand.Next() float
/* 01EE4 80B1A964 A20802E2 */  sb      $t0, 0x02E2($s0)           ## 000002E2
/* 01EE8 80B1A968 3C0140A0 */  lui     $at, 0x40A0                ## $at = 40A00000
/* 01EEC 80B1A96C 44815000 */  mtc1    $at, $f10                  ## $f10 = 5.00
/* 01EF0 80B1A970 00000000 */  nop
/* 01EF4 80B1A974 460A0402 */  mul.s   $f16, $f0, $f10            
/* 01EF8 80B1A978 E6100164 */  swc1    $f16, 0x0164($s0)          ## 00000164
.L80B1A97C:
/* 01EFC 80B1A97C 0C02927F */  jal     SkelAnime_FrameUpdateMatrix
              
/* 01F00 80B1A980 2604014C */  addiu   $a0, $s0, 0x014C           ## $a0 = 0000014C
/* 01F04 80B1A984 96020088 */  lhu     $v0, 0x0088($s0)           ## 00000088
/* 01F08 80B1A988 3C01452F */  lui     $at, 0x452F                ## $at = 452F0000
/* 01F0C 80B1A98C 30490003 */  andi    $t1, $v0, 0x0003           ## $t1 = 00000000
/* 01F10 80B1A990 1120001C */  beq     $t1, $zero, .L80B1AA04     
/* 01F14 80B1A994 304A0002 */  andi    $t2, $v0, 0x0002           ## $t2 = 00000000
/* 01F18 80B1A998 11400010 */  beq     $t2, $zero, .L80B1A9DC     
/* 01F1C 80B1A99C 8FA4003C */  lw      $a0, 0x003C($sp)           
/* 01F20 80B1A9A0 3C014080 */  lui     $at, 0x4080                ## $at = 40800000
/* 01F24 80B1A9A4 44819000 */  mtc1    $at, $f18                  ## $f18 = 4.00
/* 01F28 80B1A9A8 240B000B */  addiu   $t3, $zero, 0x000B         ## $t3 = 0000000B
/* 01F2C 80B1A9AC AFAB0010 */  sw      $t3, 0x0010($sp)           
/* 01F30 80B1A9B0 02002825 */  or      $a1, $s0, $zero            ## $a1 = 00000000
/* 01F34 80B1A9B4 26060024 */  addiu   $a2, $s0, 0x0024           ## $a2 = 00000024
/* 01F38 80B1A9B8 3C0741A0 */  lui     $a3, 0x41A0                ## $a3 = 41A00000
/* 01F3C 80B1A9BC AFA00018 */  sw      $zero, 0x0018($sp)         
/* 01F40 80B1A9C0 AFA0001C */  sw      $zero, 0x001C($sp)         
/* 01F44 80B1A9C4 AFA00020 */  sw      $zero, 0x0020($sp)         
/* 01F48 80B1A9C8 0C00CC98 */  jal     func_80033260              
/* 01F4C 80B1A9CC E7B20014 */  swc1    $f18, 0x0014($sp)          
/* 01F50 80B1A9D0 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 01F54 80B1A9D4 0C00BE0A */  jal     Audio_PlayActorSound2
              
/* 01F58 80B1A9D8 2405387B */  addiu   $a1, $zero, 0x387B         ## $a1 = 0000387B
.L80B1A9DC:
/* 01F5C 80B1A9DC 860C02E0 */  lh      $t4, 0x02E0($s0)           ## 000002E0
/* 01F60 80B1A9E0 258DFFFF */  addiu   $t5, $t4, 0xFFFF           ## $t5 = FFFFFFFF
/* 01F64 80B1A9E4 A60D02E0 */  sh      $t5, 0x02E0($s0)           ## 000002E0
/* 01F68 80B1A9E8 860E02E0 */  lh      $t6, 0x02E0($s0)           ## 000002E0
/* 01F6C 80B1A9EC 55C00011 */  bnel    $t6, $zero, .L80B1AA34     
/* 01F70 80B1A9F0 8FBF0034 */  lw      $ra, 0x0034($sp)           
/* 01F74 80B1A9F4 0C2C6A91 */  jal     func_80B1AA44              
/* 01F78 80B1A9F8 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 01F7C 80B1A9FC 1000000D */  beq     $zero, $zero, .L80B1AA34   
/* 01F80 80B1AA00 8FBF0034 */  lw      $ra, 0x0034($sp)           
.L80B1AA04:
/* 01F84 80B1AA04 C60000BC */  lwc1    $f0, 0x00BC($s0)           ## 000000BC
/* 01F88 80B1AA08 44812000 */  mtc1    $at, $f4                   ## $f4 = 0.00
/* 01F8C 80B1AA0C 3C0143C8 */  lui     $at, 0x43C8                ## $at = 43C80000
/* 01F90 80B1AA10 4604003C */  c.lt.s  $f0, $f4                   
/* 01F94 80B1AA14 00000000 */  nop
/* 01F98 80B1AA18 45020006 */  bc1fl   .L80B1AA34                 
/* 01F9C 80B1AA1C 8FBF0034 */  lw      $ra, 0x0034($sp)           
/* 01FA0 80B1AA20 44813000 */  mtc1    $at, $f6                   ## $f6 = 400.00
/* 01FA4 80B1AA24 00000000 */  nop
/* 01FA8 80B1AA28 46060200 */  add.s   $f8, $f0, $f6              
/* 01FAC 80B1AA2C E60800BC */  swc1    $f8, 0x00BC($s0)           ## 000000BC
/* 01FB0 80B1AA30 8FBF0034 */  lw      $ra, 0x0034($sp)           
.L80B1AA34:
/* 01FB4 80B1AA34 8FB00030 */  lw      $s0, 0x0030($sp)           
/* 01FB8 80B1AA38 27BD0038 */  addiu   $sp, $sp, 0x0038           ## $sp = 00000000
/* 01FBC 80B1AA3C 03E00008 */  jr      $ra                        
/* 01FC0 80B1AA40 00000000 */  nop


