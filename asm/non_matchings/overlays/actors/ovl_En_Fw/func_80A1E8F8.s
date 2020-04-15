glabel func_80A1E8F8
/* 00358 80A1E8F8 27BDFF58 */  addiu   $sp, $sp, 0xFF58           ## $sp = FFFFFF58
/* 0035C 80A1E8FC 3C0E80A2 */  lui     $t6, %hi(D_80A1FBE8)       ## $t6 = 80A20000
/* 00360 80A1E900 AFBF0074 */  sw      $ra, 0x0074($sp)           
/* 00364 80A1E904 AFB70070 */  sw      $s7, 0x0070($sp)           
/* 00368 80A1E908 AFB6006C */  sw      $s6, 0x006C($sp)           
/* 0036C 80A1E90C AFB50068 */  sw      $s5, 0x0068($sp)           
/* 00370 80A1E910 AFB40064 */  sw      $s4, 0x0064($sp)           
/* 00374 80A1E914 AFB30060 */  sw      $s3, 0x0060($sp)           
/* 00378 80A1E918 AFB2005C */  sw      $s2, 0x005C($sp)           
/* 0037C 80A1E91C AFB10058 */  sw      $s1, 0x0058($sp)           
/* 00380 80A1E920 AFB00054 */  sw      $s0, 0x0054($sp)           
/* 00384 80A1E924 F7BE0048 */  sdc1    $f30, 0x0048($sp)          
/* 00388 80A1E928 F7BC0040 */  sdc1    $f28, 0x0040($sp)          
/* 0038C 80A1E92C F7BA0038 */  sdc1    $f26, 0x0038($sp)          
/* 00390 80A1E930 F7B80030 */  sdc1    $f24, 0x0030($sp)          
/* 00394 80A1E934 F7B60028 */  sdc1    $f22, 0x0028($sp)          
/* 00398 80A1E938 F7B40020 */  sdc1    $f20, 0x0020($sp)          
/* 0039C 80A1E93C AFA500AC */  sw      $a1, 0x00AC($sp)           
/* 003A0 80A1E940 25CEFBE8 */  addiu   $t6, $t6, %lo(D_80A1FBE8)  ## $t6 = 80A1FBE8
/* 003A4 80A1E944 8DD80000 */  lw      $t8, 0x0000($t6)           ## 80A1FBE8
/* 003A8 80A1E948 27B4009C */  addiu   $s4, $sp, 0x009C           ## $s4 = FFFFFFF4
/* 003AC 80A1E94C 3C1980A2 */  lui     $t9, %hi(D_80A1FBF4)       ## $t9 = 80A20000
/* 003B0 80A1E950 AE980000 */  sw      $t8, 0x0000($s4)           ## FFFFFFF4
/* 003B4 80A1E954 8DCF0004 */  lw      $t7, 0x0004($t6)           ## 80A1FBEC
/* 003B8 80A1E958 2739FBF4 */  addiu   $t9, $t9, %lo(D_80A1FBF4)  ## $t9 = 80A1FBF4
/* 003BC 80A1E95C 27B60090 */  addiu   $s6, $sp, 0x0090           ## $s6 = FFFFFFE8
/* 003C0 80A1E960 AE8F0004 */  sw      $t7, 0x0004($s4)           ## FFFFFFF8
/* 003C4 80A1E964 8DD80008 */  lw      $t8, 0x0008($t6)           ## 80A1FBF0
/* 003C8 80A1E968 3C0A80A2 */  lui     $t2, %hi(D_80A1FC00)       ## $t2 = 80A20000
/* 003CC 80A1E96C 254AFC00 */  addiu   $t2, $t2, %lo(D_80A1FC00)  ## $t2 = 80A1FC00
/* 003D0 80A1E970 AE980008 */  sw      $t8, 0x0008($s4)           ## FFFFFFFC
/* 003D4 80A1E974 8F290000 */  lw      $t1, 0x0000($t9)           ## 80A1FBF4
/* 003D8 80A1E978 27B70084 */  addiu   $s7, $sp, 0x0084           ## $s7 = FFFFFFDC
/* 003DC 80A1E97C 3C014000 */  lui     $at, 0x4000                ## $at = 40000000
/* 003E0 80A1E980 AEC90000 */  sw      $t1, 0x0000($s6)           ## FFFFFFE8
/* 003E4 80A1E984 8F280004 */  lw      $t0, 0x0004($t9)           ## 80A1FBF8
/* 003E8 80A1E988 44813000 */  mtc1    $at, $f6                   ## $f6 = 2.00
/* 003EC 80A1E98C 4486E000 */  mtc1    $a2, $f28                  ## $f28 = 0.00
/* 003F0 80A1E990 AEC80004 */  sw      $t0, 0x0004($s6)           ## FFFFFFEC
/* 003F4 80A1E994 8F290008 */  lw      $t1, 0x0008($t9)           ## 80A1FBFC
/* 003F8 80A1E998 4487F000 */  mtc1    $a3, $f30                  ## $f30 = 0.00
/* 003FC 80A1E99C 00808825 */  or      $s1, $a0, $zero            ## $s1 = 00000000
/* 00400 80A1E9A0 AEC90008 */  sw      $t1, 0x0008($s6)           ## FFFFFFF0
/* 00404 80A1E9A4 8D4C0000 */  lw      $t4, 0x0000($t2)           ## 80A1FC00
/* 00408 80A1E9A8 30B500FF */  andi    $s5, $a1, 0x00FF           ## $s5 = 00000000
/* 0040C 80A1E9AC AEEC0000 */  sw      $t4, 0x0000($s7)           ## FFFFFFDC
/* 00410 80A1E9B0 8D4B0004 */  lw      $t3, 0x0004($t2)           ## 80A1FC04
/* 00414 80A1E9B4 AEEB0004 */  sw      $t3, 0x0004($s7)           ## FFFFFFE0
/* 00418 80A1E9B8 8D4C0008 */  lw      $t4, 0x0008($t2)           ## 80A1FC08
/* 0041C 80A1E9BC AEEC0008 */  sw      $t4, 0x0008($s7)           ## FFFFFFE4
/* 00420 80A1E9C0 8C8E0024 */  lw      $t6, 0x0024($a0)           ## 00000024
/* 00424 80A1E9C4 AE8E0000 */  sw      $t6, 0x0000($s4)           ## FFFFFFF4
/* 00428 80A1E9C8 8C8D0028 */  lw      $t5, 0x0028($a0)           ## 00000028
/* 0042C 80A1E9CC AE8D0004 */  sw      $t5, 0x0004($s4)           ## FFFFFFF8
/* 00430 80A1E9D0 8C8E002C */  lw      $t6, 0x002C($a0)           ## 0000002C
/* 00434 80A1E9D4 AE8E0008 */  sw      $t6, 0x0008($s4)           ## FFFFFFFC
/* 00438 80A1E9D8 C4840080 */  lwc1    $f4, 0x0080($a0)           ## 00000080
/* 0043C 80A1E9DC 46062200 */  add.s   $f8, $f4, $f6              
/* 00440 80A1E9E0 0C03F66B */  jal     Math_Rand_ZeroOne
              ## Rand.Next() float
/* 00444 80A1E9E4 E7A800A0 */  swc1    $f8, 0x00A0($sp)           
/* 00448 80A1E9E8 3C013F00 */  lui     $at, 0x3F00                ## $at = 3F000000
/* 0044C 80A1E9EC 4481C000 */  mtc1    $at, $f24                  ## $f24 = 0.50
/* 00450 80A1E9F0 3C014780 */  lui     $at, 0x4780                ## $at = 47800000
/* 00454 80A1E9F4 44818000 */  mtc1    $at, $f16                  ## $f16 = 65536.00
/* 00458 80A1E9F8 46180281 */  sub.s   $f10, $f0, $f24            
/* 0045C 80A1E9FC 8FA200B8 */  lw      $v0, 0x00B8($sp)           
/* 00460 80A1EA00 3C180001 */  lui     $t8, 0x0001                ## $t8 = 00010000
/* 00464 80A1EA04 C7BA00C4 */  lwc1    $f26, 0x00C4($sp)          
/* 00468 80A1EA08 46105482 */  mul.s   $f18, $f10, $f16           
/* 0046C 80A1EA0C C7B600BC */  lwc1    $f22, 0x00BC($sp)          
/* 00470 80A1EA10 C7B400C0 */  lwc1    $f20, 0x00C0($sp)          
/* 00474 80A1EA14 00409025 */  or      $s2, $v0, $zero            ## $s2 = 00000000
/* 00478 80A1EA18 4600910D */  trunc.w.s $f4, $f18                  
/* 0047C 80A1EA1C 44102000 */  mfc1    $s0, $f4                   
/* 00480 80A1EA20 00000000 */  nop
/* 00484 80A1EA24 00108400 */  sll     $s0, $s0, 16               
/* 00488 80A1EA28 04400033 */  bltz    $v0, .L80A1EAF8            
/* 0048C 80A1EA2C 00108403 */  sra     $s0, $s0, 16               
/* 00490 80A1EA30 0302001A */  div     $zero, $t8, $v0            
/* 00494 80A1EA34 00009812 */  mflo    $s3                        
/* 00498 80A1EA38 00139C00 */  sll     $s3, $s3, 16               
/* 0049C 80A1EA3C 00139C03 */  sra     $s3, $s3, 16               
/* 004A0 80A1EA40 14400002 */  bne     $v0, $zero, .L80A1EA4C     
/* 004A4 80A1EA44 00000000 */  nop
/* 004A8 80A1EA48 0007000D */  break 7
.L80A1EA4C:
/* 004AC 80A1EA4C 2401FFFF */  addiu   $at, $zero, 0xFFFF         ## $at = FFFFFFFF
/* 004B0 80A1EA50 14410004 */  bne     $v0, $at, .L80A1EA64       
/* 004B4 80A1EA54 3C018000 */  lui     $at, 0x8000                ## $at = 80000000
/* 004B8 80A1EA58 17010002 */  bne     $t8, $at, .L80A1EA64       
/* 004BC 80A1EA5C 00000000 */  nop
/* 004C0 80A1EA60 0006000D */  break 6
.L80A1EA64:
/* 004C4 80A1EA64 0C03F66B */  jal     Math_Rand_ZeroOne
              ## Rand.Next() float
/* 004C8 80A1EA68 00000000 */  nop
/* 004CC 80A1EA6C 46180181 */  sub.s   $f6, $f0, $f24             
/* 004D0 80A1EA70 E7BA0088 */  swc1    $f26, 0x0088($sp)          
/* 004D4 80A1EA74 46143202 */  mul.s   $f8, $f6, $f20             
/* 004D8 80A1EA78 0C03F66B */  jal     Math_Rand_ZeroOne
              ## Rand.Next() float
/* 004DC 80A1EA7C E7A80084 */  swc1    $f8, 0x0084($sp)           
/* 004E0 80A1EA80 46180281 */  sub.s   $f10, $f0, $f24            
/* 004E4 80A1EA84 00102400 */  sll     $a0, $s0, 16               
/* 004E8 80A1EA88 00042403 */  sra     $a0, $a0, 16               
/* 004EC 80A1EA8C 46145402 */  mul.s   $f16, $f10, $f20           
/* 004F0 80A1EA90 0C01DE1C */  jal     Math_Sins
              ## sins?
/* 004F4 80A1EA94 E7B0008C */  swc1    $f16, 0x008C($sp)          
/* 004F8 80A1EA98 46160482 */  mul.s   $f18, $f0, $f22            
/* 004FC 80A1EA9C C6240024 */  lwc1    $f4, 0x0024($s1)           ## 00000024
/* 00500 80A1EAA0 00102400 */  sll     $a0, $s0, 16               
/* 00504 80A1EAA4 00042403 */  sra     $a0, $a0, 16               
/* 00508 80A1EAA8 46049180 */  add.s   $f6, $f18, $f4             
/* 0050C 80A1EAAC 0C01DE0D */  jal     Math_Coss
              ## coss?
/* 00510 80A1EAB0 E7A6009C */  swc1    $f6, 0x009C($sp)           
/* 00514 80A1EAB4 46160202 */  mul.s   $f8, $f0, $f22             
/* 00518 80A1EAB8 C62A002C */  lwc1    $f10, 0x002C($s1)          ## 0000002C
/* 0051C 80A1EABC E7BE0018 */  swc1    $f30, 0x0018($sp)          
/* 00520 80A1EAC0 E7BC0014 */  swc1    $f28, 0x0014($sp)          
/* 00524 80A1EAC4 AFB50010 */  sw      $s5, 0x0010($sp)           
/* 00528 80A1EAC8 02202025 */  or      $a0, $s1, $zero            ## $a0 = 00000000
/* 0052C 80A1EACC 02802825 */  or      $a1, $s4, $zero            ## $a1 = FFFFFFF4
/* 00530 80A1EAD0 460A4400 */  add.s   $f16, $f8, $f10            
/* 00534 80A1EAD4 02C03025 */  or      $a2, $s6, $zero            ## $a2 = FFFFFFE8
/* 00538 80A1EAD8 02E03825 */  or      $a3, $s7, $zero            ## $a3 = FFFFFFDC
/* 0053C 80A1EADC 0C287D99 */  jal     func_80A1F664              
/* 00540 80A1EAE0 E7B000A4 */  swc1    $f16, 0x00A4($sp)          
/* 00544 80A1EAE4 02138021 */  addu    $s0, $s0, $s3              
/* 00548 80A1EAE8 00108400 */  sll     $s0, $s0, 16               
/* 0054C 80A1EAEC 2652FFFF */  addiu   $s2, $s2, 0xFFFF           ## $s2 = FFFFFFFF
/* 00550 80A1EAF0 0641FFDC */  bgez    $s2, .L80A1EA64            
/* 00554 80A1EAF4 00108403 */  sra     $s0, $s0, 16               
.L80A1EAF8:
/* 00558 80A1EAF8 8FBF0074 */  lw      $ra, 0x0074($sp)           
/* 0055C 80A1EAFC D7B40020 */  ldc1    $f20, 0x0020($sp)          
/* 00560 80A1EB00 D7B60028 */  ldc1    $f22, 0x0028($sp)          
/* 00564 80A1EB04 D7B80030 */  ldc1    $f24, 0x0030($sp)          
/* 00568 80A1EB08 D7BA0038 */  ldc1    $f26, 0x0038($sp)          
/* 0056C 80A1EB0C D7BC0040 */  ldc1    $f28, 0x0040($sp)          
/* 00570 80A1EB10 D7BE0048 */  ldc1    $f30, 0x0048($sp)          
/* 00574 80A1EB14 8FB00054 */  lw      $s0, 0x0054($sp)           
/* 00578 80A1EB18 8FB10058 */  lw      $s1, 0x0058($sp)           
/* 0057C 80A1EB1C 8FB2005C */  lw      $s2, 0x005C($sp)           
/* 00580 80A1EB20 8FB30060 */  lw      $s3, 0x0060($sp)           
/* 00584 80A1EB24 8FB40064 */  lw      $s4, 0x0064($sp)           
/* 00588 80A1EB28 8FB50068 */  lw      $s5, 0x0068($sp)           
/* 0058C 80A1EB2C 8FB6006C */  lw      $s6, 0x006C($sp)           
/* 00590 80A1EB30 8FB70070 */  lw      $s7, 0x0070($sp)           
/* 00594 80A1EB34 27BD00A8 */  addiu   $sp, $sp, 0x00A8           ## $sp = 00000000
/* 00598 80A1EB38 03E00008 */  jr      $ra                        
/* 0059C 80A1EB3C 00001025 */  or      $v0, $zero, $zero          ## $v0 = 00000000
