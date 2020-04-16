glabel func_80A0AB1C
/* 0070C 80A0AB1C 27BDFFD8 */  addiu   $sp, $sp, 0xFFD8           ## $sp = FFFFFFD8
/* 00710 80A0AB20 AFBF001C */  sw      $ra, 0x001C($sp)           
/* 00714 80A0AB24 AFB00018 */  sw      $s0, 0x0018($sp)           
/* 00718 80A0AB28 AFA5002C */  sw      $a1, 0x002C($sp)           
/* 0071C 80A0AB2C 8C820118 */  lw      $v0, 0x0118($a0)           ## 00000118
/* 00720 80A0AB30 00808025 */  or      $s0, $a0, $zero            ## $s0 = 00000000
/* 00724 80A0AB34 50400050 */  beql    $v0, $zero, .L80A0AC78     
/* 00728 80A0AB38 8FBF001C */  lw      $ra, 0x001C($sp)           
/* 0072C 80A0AB3C 8C4E0130 */  lw      $t6, 0x0130($v0)           ## 00000130
/* 00730 80A0AB40 51C0004D */  beql    $t6, $zero, .L80A0AC78     
/* 00734 80A0AB44 8FBF001C */  lw      $ra, 0x001C($sp)           
/* 00738 80A0AB48 844F02A2 */  lh      $t7, 0x02A2($v0)           ## 000002A2
/* 0073C 80A0AB4C 24010002 */  addiu   $at, $zero, 0x0002         ## $at = 00000002
/* 00740 80A0AB50 55E10049 */  bnel    $t7, $at, .L80A0AC78       
/* 00744 80A0AB54 8FBF001C */  lw      $ra, 0x001C($sp)           
/* 00748 80A0AB58 0C03F66B */  jal     Math_Rand_ZeroOne
              ## Rand.Next() float
/* 0074C 80A0AB5C A4800154 */  sh      $zero, 0x0154($a0)         ## 00000154
/* 00750 80A0AB60 3C013F00 */  lui     $at, 0x3F00                ## $at = 3F000000
/* 00754 80A0AB64 44812000 */  mtc1    $at, $f4                   ## $f4 = 0.50
/* 00758 80A0AB68 3C014396 */  lui     $at, 0x4396                ## $at = 43960000
/* 0075C 80A0AB6C 44814000 */  mtc1    $at, $f8                   ## $f8 = 300.00
/* 00760 80A0AB70 46040181 */  sub.s   $f6, $f0, $f4              
/* 00764 80A0AB74 3C01C382 */  lui     $at, 0xC382                ## $at = C3820000
/* 00768 80A0AB78 44818000 */  mtc1    $at, $f16                  ## $f16 = -260.00
/* 0076C 80A0AB7C 46083282 */  mul.s   $f10, $f6, $f8             
/* 00770 80A0AB80 46105480 */  add.s   $f18, $f10, $f16           
/* 00774 80A0AB84 0C03F66B */  jal     Math_Rand_ZeroOne
              ## Rand.Next() float
/* 00778 80A0AB88 E6120024 */  swc1    $f18, 0x0024($s0)          ## 00000024
/* 0077C 80A0AB8C 3C013F00 */  lui     $at, 0x3F00                ## $at = 3F000000
/* 00780 80A0AB90 44812000 */  mtc1    $at, $f4                   ## $f4 = 0.50
/* 00784 80A0AB94 3C014348 */  lui     $at, 0x4348                ## $at = 43480000
/* 00788 80A0AB98 44814000 */  mtc1    $at, $f8                   ## $f8 = 200.00
/* 0078C 80A0AB9C 46040181 */  sub.s   $f6, $f0, $f4              
/* 00790 80A0ABA0 8618015A */  lh      $t8, 0x015A($s0)           ## 0000015A
/* 00794 80A0ABA4 3C0143B9 */  lui     $at, 0x43B9                ## $at = 43B90000
/* 00798 80A0ABA8 44818000 */  mtc1    $at, $f16                  ## $f16 = 370.00
/* 0079C 80A0ABAC 46083282 */  mul.s   $f10, $f6, $f8             
/* 007A0 80A0ABB0 44982000 */  mtc1    $t8, $f4                   ## $f4 = 0.00
/* 007A4 80A0ABB4 3C01C248 */  lui     $at, 0xC248                ## $at = C2480000
/* 007A8 80A0ABB8 3C198016 */  lui     $t9, 0x8016                ## $t9 = 80160000
/* 007AC 80A0ABBC 44814000 */  mtc1    $at, $f8                   ## $f8 = -50.00
/* 007B0 80A0ABC0 3C01C396 */  lui     $at, 0xC396                ## $at = C3960000
/* 007B4 80A0ABC4 468021A0 */  cvt.s.w $f6, $f4                   
/* 007B8 80A0ABC8 46105480 */  add.s   $f18, $f10, $f16           
/* 007BC 80A0ABCC 46083082 */  mul.s   $f2, $f6, $f8              
/* 007C0 80A0ABD0 E6120028 */  swc1    $f18, 0x0028($s0)          ## 00000028
/* 007C4 80A0ABD4 9739F53A */  lhu     $t9, -0x0AC6($t9)          ## 8015F53A
/* 007C8 80A0ABD8 33280100 */  andi    $t0, $t9, 0x0100           ## $t0 = 00000000
/* 007CC 80A0ABDC 55000012 */  bnel    $t0, $zero, .L80A0AC28     
/* 007D0 80A0ABE0 44815000 */  mtc1    $at, $f10                  ## $f10 = -300.00
/* 007D4 80A0ABE4 3C01C3FA */  lui     $at, 0xC3FA                ## $at = C3FA0000
/* 007D8 80A0ABE8 44815000 */  mtc1    $at, $f10                  ## $f10 = -500.00
/* 007DC 80A0ABEC 00000000 */  nop
/* 007E0 80A0ABF0 460A1080 */  add.s   $f2, $f2, $f10             
/* 007E4 80A0ABF4 0C03F66B */  jal     Math_Rand_ZeroOne
              ## Rand.Next() float
/* 007E8 80A0ABF8 E7A20020 */  swc1    $f2, 0x0020($sp)           
/* 007EC 80A0ABFC 3C013F00 */  lui     $at, 0x3F00                ## $at = 3F000000
/* 007F0 80A0AC00 44818000 */  mtc1    $at, $f16                  ## $f16 = 0.50
/* 007F4 80A0AC04 3C0142A0 */  lui     $at, 0x42A0                ## $at = 42A00000
/* 007F8 80A0AC08 44812000 */  mtc1    $at, $f4                   ## $f4 = 80.00
/* 007FC 80A0AC0C 46100481 */  sub.s   $f18, $f0, $f16            
/* 00800 80A0AC10 C7A20020 */  lwc1    $f2, 0x0020($sp)           
/* 00804 80A0AC14 46049182 */  mul.s   $f6, $f18, $f4             
/* 00808 80A0AC18 46023200 */  add.s   $f8, $f6, $f2              
/* 0080C 80A0AC1C 1000000F */  beq     $zero, $zero, .L80A0AC5C   
/* 00810 80A0AC20 E608002C */  swc1    $f8, 0x002C($s0)           ## 0000002C
/* 00814 80A0AC24 44815000 */  mtc1    $at, $f10                  ## $f10 = 80.00
.L80A0AC28:
/* 00818 80A0AC28 00000000 */  nop
/* 0081C 80A0AC2C 460A1080 */  add.s   $f2, $f2, $f10             
/* 00820 80A0AC30 0C03F66B */  jal     Math_Rand_ZeroOne
              ## Rand.Next() float
/* 00824 80A0AC34 E7A20020 */  swc1    $f2, 0x0020($sp)           
/* 00828 80A0AC38 3C013F00 */  lui     $at, 0x3F00                ## $at = 3F000000
/* 0082C 80A0AC3C 44818000 */  mtc1    $at, $f16                  ## $f16 = 0.50
/* 00830 80A0AC40 3C014270 */  lui     $at, 0x4270                ## $at = 42700000
/* 00834 80A0AC44 44812000 */  mtc1    $at, $f4                   ## $f4 = 60.00
/* 00838 80A0AC48 46100481 */  sub.s   $f18, $f0, $f16            
/* 0083C 80A0AC4C C7A20020 */  lwc1    $f2, 0x0020($sp)           
/* 00840 80A0AC50 46049182 */  mul.s   $f6, $f18, $f4             
/* 00844 80A0AC54 46023200 */  add.s   $f8, $f6, $f2              
/* 00848 80A0AC58 E608002C */  swc1    $f8, 0x002C($s0)           ## 0000002C
.L80A0AC5C:
/* 0084C 80A0AC5C 3C01BF80 */  lui     $at, 0xBF80                ## $at = BF800000
/* 00850 80A0AC60 44815000 */  mtc1    $at, $f10                  ## $f10 = -1.00
/* 00854 80A0AC64 3C0980A1 */  lui     $t1, %hi(func_80A0AC88)    ## $t1 = 80A10000
/* 00858 80A0AC68 2529AC88 */  addiu   $t1, $t1, %lo(func_80A0AC88) ## $t1 = 80A0AC88
/* 0085C 80A0AC6C AE09014C */  sw      $t1, 0x014C($s0)           ## 0000014C
/* 00860 80A0AC70 E60A006C */  swc1    $f10, 0x006C($s0)          ## 0000006C
/* 00864 80A0AC74 8FBF001C */  lw      $ra, 0x001C($sp)           
.L80A0AC78:
/* 00868 80A0AC78 8FB00018 */  lw      $s0, 0x0018($sp)           
/* 0086C 80A0AC7C 27BD0028 */  addiu   $sp, $sp, 0x0028           ## $sp = 00000000
/* 00870 80A0AC80 03E00008 */  jr      $ra                        
/* 00874 80A0AC84 00000000 */  nop
