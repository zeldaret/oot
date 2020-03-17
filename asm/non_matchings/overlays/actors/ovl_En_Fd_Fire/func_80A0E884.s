glabel func_80A0E884
/* 003D4 80A0E884 27BDFF80 */  addiu   $sp, $sp, 0xFF80           ## $sp = FFFFFF80
/* 003D8 80A0E888 AFB00020 */  sw      $s0, 0x0020($sp)           
/* 003DC 80A0E88C 3C0E80A1 */  lui     $t6, %hi(D_80A0F094)       ## $t6 = 80A10000
/* 003E0 80A0E890 AFBF0024 */  sw      $ra, 0x0024($sp)           
/* 003E4 80A0E894 27A7004C */  addiu   $a3, $sp, 0x004C           ## $a3 = FFFFFFCC
/* 003E8 80A0E898 25CEF094 */  addiu   $t6, $t6, %lo(D_80A0F094)  ## $t6 = 80A0F094
/* 003EC 80A0E89C 00808025 */  or      $s0, $a0, $zero            ## $s0 = 00000000
/* 003F0 80A0E8A0 8CA21C44 */  lw      $v0, 0x1C44($a1)           ## 00001C44
/* 003F4 80A0E8A4 25C80030 */  addiu   $t0, $t6, 0x0030           ## $t0 = 80A0F0C4
/* 003F8 80A0E8A8 00E0C825 */  or      $t9, $a3, $zero            ## $t9 = FFFFFFCC
.L80A0E8AC:
/* 003FC 80A0E8AC 8DD80000 */  lw      $t8, 0x0000($t6)           ## 80A0F094
/* 00400 80A0E8B0 25CE000C */  addiu   $t6, $t6, 0x000C           ## $t6 = 80A0F0A0
/* 00404 80A0E8B4 2739000C */  addiu   $t9, $t9, 0x000C           ## $t9 = FFFFFFD8
/* 00408 80A0E8B8 AF38FFF4 */  sw      $t8, -0x000C($t9)          ## FFFFFFCC
/* 0040C 80A0E8BC 8DCFFFF8 */  lw      $t7, -0x0008($t6)          ## 80A0F098
/* 00410 80A0E8C0 AF2FFFF8 */  sw      $t7, -0x0008($t9)          ## FFFFFFD0
/* 00414 80A0E8C4 8DD8FFFC */  lw      $t8, -0x0004($t6)          ## 80A0F09C
/* 00418 80A0E8C8 15C8FFF8 */  bne     $t6, $t0, .L80A0E8AC       
/* 0041C 80A0E8CC AF38FFFC */  sw      $t8, -0x0004($t9)          ## FFFFFFD4
/* 00420 80A0E8D0 8CA9009C */  lw      $t1, 0x009C($a1)           ## 0000009C
/* 00424 80A0E8D4 2401000A */  addiu   $at, $zero, 0x000A         ## $at = 0000000A
/* 00428 80A0E8D8 860B001C */  lh      $t3, 0x001C($s0)           ## 0000001C
/* 0042C 80A0E8DC 0121001B */  divu    $zero, $t1, $at            
/* 00430 80A0E8E0 00005012 */  mflo    $t2                        
/* 00434 80A0E8E4 316C7FFF */  andi    $t4, $t3, 0x7FFF           ## $t4 = 00000000
/* 00438 80A0E8E8 014C1821 */  addu    $v1, $t2, $t4              
/* 0043C 80A0E8EC 2401000C */  addiu   $at, $zero, 0x000C         ## $at = 0000000C
/* 00440 80A0E8F0 0061001B */  divu    $zero, $v1, $at            
/* 00444 80A0E8F4 8C4E0024 */  lw      $t6, 0x0024($v0)           ## 00000024
/* 00448 80A0E8F8 27AD0040 */  addiu   $t5, $sp, 0x0040           ## $t5 = FFFFFFC0
/* 0044C 80A0E8FC 00001810 */  mfhi    $v1                        
/* 00450 80A0E900 ADAE0000 */  sw      $t6, 0x0000($t5)           ## FFFFFFC0
/* 00454 80A0E904 8C480028 */  lw      $t0, 0x0028($v0)           ## 00000028
/* 00458 80A0E908 00031C00 */  sll     $v1, $v1, 16               
/* 0045C 80A0E90C 00031C03 */  sra     $v1, $v1, 16               
/* 00460 80A0E910 ADA80004 */  sw      $t0, 0x0004($t5)           ## FFFFFFC4
/* 00464 80A0E914 8C4E002C */  lw      $t6, 0x002C($v0)           ## 0000002C
/* 00468 80A0E918 0003C880 */  sll     $t9, $v1,  2               
/* 0046C 80A0E91C 00F93021 */  addu    $a2, $a3, $t9              
/* 00470 80A0E920 ADAE0008 */  sw      $t6, 0x0008($t5)           ## FFFFFFC8
/* 00474 80A0E924 C4CC0000 */  lwc1    $f12, 0x0000($a2)          ## 00000000
/* 00478 80A0E928 0C0400A4 */  jal     sinf
              
/* 0047C 80A0E92C AFA6002C */  sw      $a2, 0x002C($sp)           
/* 00480 80A0E930 3C0142F0 */  lui     $at, 0x42F0                ## $at = 42F00000
/* 00484 80A0E934 44813000 */  mtc1    $at, $f6                   ## $f6 = 120.00
/* 00488 80A0E938 C7A40040 */  lwc1    $f4, 0x0040($sp)           
/* 0048C 80A0E93C 8FA6002C */  lw      $a2, 0x002C($sp)           
/* 00490 80A0E940 46003202 */  mul.s   $f8, $f6, $f0              
/* 00494 80A0E944 46082280 */  add.s   $f10, $f4, $f8             
/* 00498 80A0E948 E7AA0040 */  swc1    $f10, 0x0040($sp)          
/* 0049C 80A0E94C 0C041184 */  jal     cosf
              
/* 004A0 80A0E950 C4CC0000 */  lwc1    $f12, 0x0000($a2)          ## 00000000
/* 004A4 80A0E954 3C0142F0 */  lui     $at, 0x42F0                ## $at = 42F00000
/* 004A8 80A0E958 44819000 */  mtc1    $at, $f18                  ## $f18 = 120.00
/* 004AC 80A0E95C C7B00048 */  lwc1    $f16, 0x0048($sp)          
/* 004B0 80A0E960 3C1880A1 */  lui     $t8, %hi(func_80A0EA34)    ## $t8 = 80A10000
/* 004B4 80A0E964 46009182 */  mul.s   $f6, $f18, $f0             
/* 004B8 80A0E968 2718EA34 */  addiu   $t8, $t8, %lo(func_80A0EA34) ## $t8 = 80A0EA34
/* 004BC 80A0E96C 26040024 */  addiu   $a0, $s0, 0x0024           ## $a0 = 00000024
/* 004C0 80A0E970 46068100 */  add.s   $f4, $f16, $f6             
/* 004C4 80A0E974 E7A40048 */  swc1    $f4, 0x0048($sp)           
/* 004C8 80A0E978 860201A6 */  lh      $v0, 0x01A6($s0)           ## 000001A6
/* 004CC 80A0E97C 14400003 */  bne     $v0, $zero, .L80A0E98C     
/* 004D0 80A0E980 244FFFFF */  addiu   $t7, $v0, 0xFFFF           ## $t7 = FFFFFFFF
/* 004D4 80A0E984 10000003 */  beq     $zero, $zero, .L80A0E994   
/* 004D8 80A0E988 00001825 */  or      $v1, $zero, $zero          ## $v1 = 00000000
.L80A0E98C:
/* 004DC 80A0E98C A60F01A6 */  sh      $t7, 0x01A6($s0)           ## 000001A6
/* 004E0 80A0E990 860301A6 */  lh      $v1, 0x01A6($s0)           ## 000001A6
.L80A0E994:
/* 004E4 80A0E994 14600003 */  bne     $v1, $zero, .L80A0E9A4     
/* 004E8 80A0E998 00000000 */  nop
/* 004EC 80A0E99C 10000020 */  beq     $zero, $zero, .L80A0EA20   
/* 004F0 80A0E9A0 AE18014C */  sw      $t8, 0x014C($s0)           ## 0000014C
.L80A0E9A4:
/* 004F4 80A0E9A4 0C01E01A */  jal     Math_Vec3f_Yaw
              
/* 004F8 80A0E9A8 27A50040 */  addiu   $a1, $sp, 0x0040           ## $a1 = FFFFFFC0
/* 004FC 80A0E9AC 00022C00 */  sll     $a1, $v0, 16               
/* 00500 80A0E9B0 24090001 */  addiu   $t1, $zero, 0x0001         ## $t1 = 00000001
/* 00504 80A0E9B4 AFA90010 */  sw      $t1, 0x0010($sp)           
/* 00508 80A0E9B8 00052C03 */  sra     $a1, $a1, 16               
/* 0050C 80A0E9BC 26040032 */  addiu   $a0, $s0, 0x0032           ## $a0 = 00000032
/* 00510 80A0E9C0 24060008 */  addiu   $a2, $zero, 0x0008         ## $a2 = 00000008
/* 00514 80A0E9C4 0C01E1A7 */  jal     Math_SmoothScaleMaxMinS
              
/* 00518 80A0E9C8 24070FA0 */  addiu   $a3, $zero, 0x0FA0         ## $a3 = 00000FA0
/* 0051C 80A0E9CC 44800000 */  mtc1    $zero, $f0                 ## $f0 = 0.00
/* 00520 80A0E9D0 3C063ECC */  lui     $a2, 0x3ECC                ## $a2 = 3ECC0000
/* 00524 80A0E9D4 34C6CCCD */  ori     $a2, $a2, 0xCCCD           ## $a2 = 3ECCCCCD
/* 00528 80A0E9D8 44050000 */  mfc1    $a1, $f0                   
/* 0052C 80A0E9DC 26040068 */  addiu   $a0, $s0, 0x0068           ## $a0 = 00000068
/* 00530 80A0E9E0 3C073F80 */  lui     $a3, 0x3F80                ## $a3 = 3F800000
/* 00534 80A0E9E4 0C01E0C4 */  jal     Math_SmoothScaleMaxMinF
              
/* 00538 80A0E9E8 E7A00010 */  swc1    $f0, 0x0010($sp)           
/* 0053C 80A0E9EC 3C0180A1 */  lui     $at, %hi(D_80A0F130)       ## $at = 80A10000
/* 00540 80A0E9F0 C42AF130 */  lwc1    $f10, %lo(D_80A0F130)($at) 
/* 00544 80A0E9F4 C6080068 */  lwc1    $f8, 0x0068($s0)           ## 00000068
/* 00548 80A0E9F8 3C0140A0 */  lui     $at, 0x40A0                ## $at = 40A00000
/* 0054C 80A0E9FC 460A403C */  c.lt.s  $f8, $f10                  
/* 00550 80A0EA00 00000000 */  nop
/* 00554 80A0EA04 45000004 */  bc1f    .L80A0EA18                 
/* 00558 80A0EA08 00000000 */  nop
/* 0055C 80A0EA0C 44819000 */  mtc1    $at, $f18                  ## $f18 = 5.00
/* 00560 80A0EA10 00000000 */  nop
/* 00564 80A0EA14 E6120068 */  swc1    $f18, 0x0068($s0)          ## 00000068
.L80A0EA18:
/* 00568 80A0EA18 0C00B61A */  jal     func_8002D868              
/* 0056C 80A0EA1C 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
.L80A0EA20:
/* 00570 80A0EA20 8FBF0024 */  lw      $ra, 0x0024($sp)           
/* 00574 80A0EA24 8FB00020 */  lw      $s0, 0x0020($sp)           
/* 00578 80A0EA28 27BD0080 */  addiu   $sp, $sp, 0x0080           ## $sp = 00000000
/* 0057C 80A0EA2C 03E00008 */  jr      $ra                        
/* 00580 80A0EA30 00000000 */  nop


