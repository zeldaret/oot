glabel func_80B6D688
/* 03CE8 80B6D688 3C0180B8 */  lui     $at, %hi(D_80B7E144)       ## $at = 80B80000
/* 03CEC 80B6D68C C424E144 */  lwc1    $f4, %lo(D_80B7E144)($at)  
/* 03CF0 80B6D690 27BDFF18 */  addiu   $sp, $sp, 0xFF18           ## $sp = FFFFFF18
/* 03CF4 80B6D694 AFBF001C */  sw      $ra, 0x001C($sp)           
/* 03CF8 80B6D698 4600218D */  trunc.w.s $f6, $f4                   
/* 03CFC 80B6D69C AFB10018 */  sw      $s1, 0x0018($sp)           
/* 03D00 80B6D6A0 AFB00014 */  sw      $s0, 0x0014($sp)           
/* 03D04 80B6D6A4 AFA500EC */  sw      $a1, 0x00EC($sp)           
/* 03D08 80B6D6A8 440F3000 */  mfc1    $t7, $f6                   
/* 03D0C 80B6D6AC AFA600F0 */  sw      $a2, 0x00F0($sp)           
/* 03D10 80B6D6B0 00808025 */  or      $s0, $a0, $zero            ## $s0 = 00000000
/* 03D14 80B6D6B4 A7AF00B4 */  sh      $t7, 0x00B4($sp)           
/* 03D18 80B6D6B8 8C981C44 */  lw      $t8, 0x1C44($a0)           ## 00001C44
/* 03D1C 80B6D6BC 3C0680B8 */  lui     $a2, %hi(D_80B7B160)       ## $a2 = 80B80000
/* 03D20 80B6D6C0 24C6B160 */  addiu   $a2, $a2, %lo(D_80B7B160)  ## $a2 = 80B7B160
/* 03D24 80B6D6C4 AFB800AC */  sw      $t8, 0x00AC($sp)           
/* 03D28 80B6D6C8 8C850000 */  lw      $a1, 0x0000($a0)           ## 00000000
/* 03D2C 80B6D6CC AFB000E8 */  sw      $s0, 0x00E8($sp)           
/* 03D30 80B6D6D0 27A40098 */  addiu   $a0, $sp, 0x0098           ## $a0 = FFFFFFB0
/* 03D34 80B6D6D4 24070CD7 */  addiu   $a3, $zero, 0x0CD7         ## $a3 = 00000CD7
/* 03D38 80B6D6D8 0C031AB1 */  jal     func_800C6AC4              
/* 03D3C 80B6D6DC 00A08825 */  or      $s1, $a1, $zero            ## $s1 = 00000000
/* 03D40 80B6D6E0 8FB900E8 */  lw      $t9, 0x00E8($sp)           
/* 03D44 80B6D6E4 0C024F46 */  jal     func_80093D18              
/* 03D48 80B6D6E8 8F240000 */  lw      $a0, 0x0000($t9)           ## 00000000
/* 03D4C 80B6D6EC 0C034213 */  jal     Matrix_Push              
/* 03D50 80B6D6F0 00000000 */  nop
/* 03D54 80B6D6F4 3C0880B8 */  lui     $t0, %hi(D_80B7A6D4)       ## $t0 = 80B80000
/* 03D58 80B6D6F8 9108A6D4 */  lbu     $t0, %lo(D_80B7A6D4)($t0)  
/* 03D5C 80B6D6FC 3C0280B8 */  lui     $v0, %hi(D_80B7E0B8)       ## $v0 = 80B80000
/* 03D60 80B6D700 2442E0B8 */  addiu   $v0, $v0, %lo(D_80B7E0B8)  ## $v0 = 80B7E0B8
/* 03D64 80B6D704 11000019 */  beq     $t0, $zero, .L80B6D76C     
/* 03D68 80B6D708 27B0008C */  addiu   $s0, $sp, 0x008C           ## $s0 = FFFFFFA4
/* 03D6C 80B6D70C 8C4A0000 */  lw      $t2, 0x0000($v0)           ## 80B7E0B8
/* 03D70 80B6D710 8C490004 */  lw      $t1, 0x0004($v0)           ## 80B7E0BC
/* 03D74 80B6D714 3C0B80B8 */  lui     $t3, %hi(D_80B7FED8)       ## $t3 = 80B80000
/* 03D78 80B6D718 AE0A0000 */  sw      $t2, 0x0000($s0)           ## FFFFFFA4
/* 03D7C 80B6D71C 8C4A0008 */  lw      $t2, 0x0008($v0)           ## 80B7E0C0
/* 03D80 80B6D720 256BFED8 */  addiu   $t3, $t3, %lo(D_80B7FED8)  ## $t3 = 80B7FED8
/* 03D84 80B6D724 AE090004 */  sw      $t1, 0x0004($s0)           ## FFFFFFA8
/* 03D88 80B6D728 AE0A0008 */  sw      $t2, 0x0008($s0)           ## FFFFFFAC
/* 03D8C 80B6D72C 8D6D0000 */  lw      $t5, 0x0000($t3)           ## 80B7FED8
/* 03D90 80B6D730 8FA400E8 */  lw      $a0, 0x00E8($sp)           
/* 03D94 80B6D734 AC4D0000 */  sw      $t5, 0x0000($v0)           ## 80B7E0B8
/* 03D98 80B6D738 8D6C0004 */  lw      $t4, 0x0004($t3)           ## 80B7FEDC
/* 03D9C 80B6D73C AC4C0004 */  sw      $t4, 0x0004($v0)           ## 80B7E0BC
/* 03DA0 80B6D740 8D6D0008 */  lw      $t5, 0x0008($t3)           ## 80B7FEE0
/* 03DA4 80B6D744 0C2DB4D5 */  jal     func_80B6D354              
/* 03DA8 80B6D748 AC4D0008 */  sw      $t5, 0x0008($v0)           ## 80B7E0C0
/* 03DAC 80B6D74C 8E0F0000 */  lw      $t7, 0x0000($s0)           ## FFFFFFA4
/* 03DB0 80B6D750 3C0380B8 */  lui     $v1, %hi(D_80B7E0B8)       ## $v1 = 80B80000
/* 03DB4 80B6D754 2463E0B8 */  addiu   $v1, $v1, %lo(D_80B7E0B8)  ## $v1 = 80B7E0B8
/* 03DB8 80B6D758 AC6F0000 */  sw      $t7, 0x0000($v1)           ## 80B7E0B8
/* 03DBC 80B6D75C 8E0F0008 */  lw      $t7, 0x0008($s0)           ## FFFFFFAC
/* 03DC0 80B6D760 8E0E0004 */  lw      $t6, 0x0004($s0)           ## FFFFFFA8
/* 03DC4 80B6D764 AC6F0008 */  sw      $t7, 0x0008($v1)           ## 80B7E0C0
/* 03DC8 80B6D768 AC6E0004 */  sw      $t6, 0x0004($v1)           ## 80B7E0BC
.L80B6D76C:
/* 03DCC 80B6D76C 3C0280B8 */  lui     $v0, %hi(D_80B7A694)       ## $v0 = 80B80000
/* 03DD0 80B6D770 8442A694 */  lh      $v0, %lo(D_80B7A694)($v0)  
/* 03DD4 80B6D774 3C0380B8 */  lui     $v1, %hi(D_80B7E0B8)       ## $v1 = 80B80000
/* 03DD8 80B6D778 24010004 */  addiu   $at, $zero, 0x0004         ## $at = 00000004
/* 03DDC 80B6D77C 10410003 */  beq     $v0, $at, .L80B6D78C       
/* 03DE0 80B6D780 2463E0B8 */  addiu   $v1, $v1, %lo(D_80B7E0B8)  ## $v1 = 80B7E0B8
/* 03DE4 80B6D784 24010005 */  addiu   $at, $zero, 0x0005         ## $at = 00000005
/* 03DE8 80B6D788 1441002F */  bne     $v0, $at, .L80B6D848       
.L80B6D78C:
/* 03DEC 80B6D78C 3C1880B8 */  lui     $t8, %hi(D_80B7E0A8)       ## $t8 = 80B80000
/* 03DF0 80B6D790 8F18E0A8 */  lw      $t8, %lo(D_80B7E0A8)($t8)  
/* 03DF4 80B6D794 24010005 */  addiu   $at, $zero, 0x0005         ## $at = 00000005
/* 03DF8 80B6D798 3C0980B8 */  lui     $t1, %hi(D_80B7E0B6)       ## $t1 = 80B80000
/* 03DFC 80B6D79C 8F0801C0 */  lw      $t0, 0x01C0($t8)           ## 80B801C0
/* 03E00 80B6D7A0 AC680000 */  sw      $t0, 0x0000($v1)           ## 80B7E0B8
/* 03E04 80B6D7A4 8F1901C4 */  lw      $t9, 0x01C4($t8)           ## 80B801C4
/* 03E08 80B6D7A8 AC790004 */  sw      $t9, 0x0004($v1)           ## 80B7E0BC
/* 03E0C 80B6D7AC 8F0801C8 */  lw      $t0, 0x01C8($t8)           ## 80B801C8
/* 03E10 80B6D7B0 1441004E */  bne     $v0, $at, .L80B6D8EC       
/* 03E14 80B6D7B4 AC680008 */  sw      $t0, 0x0008($v1)           ## 80B7E0C0
/* 03E18 80B6D7B8 9129E0B6 */  lbu     $t1, %lo(D_80B7E0B6)($t1)  
/* 03E1C 80B6D7BC 24010002 */  addiu   $at, $zero, 0x0002         ## $at = 00000002
/* 03E20 80B6D7C0 8FAA00AC */  lw      $t2, 0x00AC($sp)           
/* 03E24 80B6D7C4 15210049 */  bne     $t1, $at, .L80B6D8EC       
/* 03E28 80B6D7C8 00000000 */  nop
/* 03E2C 80B6D7CC 854B00B6 */  lh      $t3, 0x00B6($t2)           ## 000000B6
/* 03E30 80B6D7D0 3C0180B8 */  lui     $at, %hi(D_80B7B420)       ## $at = 80B80000
/* 03E34 80B6D7D4 C424B420 */  lwc1    $f4, %lo(D_80B7B420)($at)  
/* 03E38 80B6D7D8 448B4000 */  mtc1    $t3, $f8                   ## $f8 = 0.00
/* 03E3C 80B6D7DC 00002825 */  or      $a1, $zero, $zero          ## $a1 = 00000000
/* 03E40 80B6D7E0 468042A0 */  cvt.s.w $f10, $f8                  
/* 03E44 80B6D7E4 46045302 */  mul.s   $f12, $f10, $f4            
/* 03E48 80B6D7E8 0C034348 */  jal     Matrix_RotateY              
/* 03E4C 80B6D7EC 00000000 */  nop
/* 03E50 80B6D7F0 44800000 */  mtc1    $zero, $f0                 ## $f0 = 0.00
/* 03E54 80B6D7F4 3C014000 */  lui     $at, 0x4000                ## $at = 40000000
/* 03E58 80B6D7F8 44813000 */  mtc1    $at, $f6                   ## $f6 = 2.00
/* 03E5C 80B6D7FC 27A400DC */  addiu   $a0, $sp, 0x00DC           ## $a0 = FFFFFFF4
/* 03E60 80B6D800 27A500D0 */  addiu   $a1, $sp, 0x00D0           ## $a1 = FFFFFFE8
/* 03E64 80B6D804 E7A000E0 */  swc1    $f0, 0x00E0($sp)           
/* 03E68 80B6D808 E7A000E4 */  swc1    $f0, 0x00E4($sp)           
/* 03E6C 80B6D80C 0C0346BD */  jal     Matrix_MultVec3f              
/* 03E70 80B6D810 E7A600DC */  swc1    $f6, 0x00DC($sp)           
/* 03E74 80B6D814 3C0280B8 */  lui     $v0, %hi(D_80B7E0B8)       ## $v0 = 80B80000
/* 03E78 80B6D818 2442E0B8 */  addiu   $v0, $v0, %lo(D_80B7E0B8)  ## $v0 = 80B7E0B8
/* 03E7C 80B6D81C C4480000 */  lwc1    $f8, 0x0000($v0)           ## 80B7E0B8
/* 03E80 80B6D820 C7AA00D0 */  lwc1    $f10, 0x00D0($sp)          
/* 03E84 80B6D824 C4460008 */  lwc1    $f6, 0x0008($v0)           ## 80B7E0C0
/* 03E88 80B6D828 3C0380B8 */  lui     $v1, %hi(D_80B7E0B8)       ## $v1 = 80B80000
/* 03E8C 80B6D82C 460A4100 */  add.s   $f4, $f8, $f10             
/* 03E90 80B6D830 C7A800D8 */  lwc1    $f8, 0x00D8($sp)           
/* 03E94 80B6D834 2463E0B8 */  addiu   $v1, $v1, %lo(D_80B7E0B8)  ## $v1 = 80B7E0B8
/* 03E98 80B6D838 46083280 */  add.s   $f10, $f6, $f8             
/* 03E9C 80B6D83C E4440000 */  swc1    $f4, 0x0000($v0)           ## 80B7E0B8
/* 03EA0 80B6D840 1000002A */  beq     $zero, $zero, .L80B6D8EC   
/* 03EA4 80B6D844 E44A0008 */  swc1    $f10, 0x0008($v0)          ## 80B7E0C0
.L80B6D848:
/* 03EA8 80B6D848 14400028 */  bne     $v0, $zero, .L80B6D8EC     
/* 03EAC 80B6D84C 3C0C80B8 */  lui     $t4, %hi(D_80B7EABC)       ## $t4 = 80B80000
/* 03EB0 80B6D850 258CEABC */  addiu   $t4, $t4, %lo(D_80B7EABC)  ## $t4 = 80B7EABC
/* 03EB4 80B6D854 8D8E0000 */  lw      $t6, 0x0000($t4)           ## 80B7EABC
/* 03EB8 80B6D858 3C0280B8 */  lui     $v0, %hi(D_80B7EAC8)       ## $v0 = 80B80000
/* 03EBC 80B6D85C 2442EAC8 */  addiu   $v0, $v0, %lo(D_80B7EAC8)  ## $v0 = 80B7EAC8
/* 03EC0 80B6D860 AC6E0000 */  sw      $t6, 0x0000($v1)           ## 80B7E0B8
/* 03EC4 80B6D864 8D8D0004 */  lw      $t5, 0x0004($t4)           ## 80B7EAC0
/* 03EC8 80B6D868 3C0180B8 */  lui     $at, %hi(D_80B7B424)       ## $at = 80B80000
/* 03ECC 80B6D86C C4440948 */  lwc1    $f4, 0x0948($v0)           ## 80B7F410
/* 03ED0 80B6D870 AC6D0004 */  sw      $t5, 0x0004($v1)           ## 80B7E0BC
/* 03ED4 80B6D874 8D8E0008 */  lw      $t6, 0x0008($t4)           ## 80B7EAC4
/* 03ED8 80B6D878 8FAF00AC */  lw      $t7, 0x00AC($sp)           
/* 03EDC 80B6D87C 3C1080B8 */  lui     $s0, %hi(D_80B7E0D8)       ## $s0 = 80B80000
/* 03EE0 80B6D880 AC6E0008 */  sw      $t6, 0x0008($v1)           ## 80B7E0C0
/* 03EE4 80B6D884 C426B424 */  lwc1    $f6, %lo(D_80B7B424)($at)  
/* 03EE8 80B6D888 2610E0D8 */  addiu   $s0, $s0, %lo(D_80B7E0D8)  ## $s0 = 80B7E0D8
/* 03EEC 80B6D88C 44805000 */  mtc1    $zero, $f10                ## $f10 = 0.00
/* 03EF0 80B6D890 46062200 */  add.s   $f8, $f4, $f6              
/* 03EF4 80B6D894 3C1880B8 */  lui     $t8, %hi(D_80B7E0B0)       ## $t8 = 80B80000
/* 03EF8 80B6D898 E6080000 */  swc1    $f8, 0x0000($s0)           ## 80B7E0D8
/* 03EFC 80B6D89C C5E40068 */  lwc1    $f4, 0x0068($t7)           ## 00000068
/* 03F00 80B6D8A0 46045032 */  c.eq.s  $f10, $f4                  
/* 03F04 80B6D8A4 00000000 */  nop
/* 03F08 80B6D8A8 4502000F */  bc1fl   .L80B6D8E8                 
/* 03F0C 80B6D8AC C446094C */  lwc1    $f6, 0x094C($v0)           ## 80B7F414
/* 03F10 80B6D8B0 8718E0B0 */  lh      $t8, %lo(D_80B7E0B0)($t8)  
/* 03F14 80B6D8B4 3C0480B8 */  lui     $a0, %hi(D_80B7E0DC)       ## $a0 = 80B80000
/* 03F18 80B6D8B8 2484E0DC */  addiu   $a0, $a0, %lo(D_80B7E0DC)  ## $a0 = 80B7E0DC
/* 03F1C 80B6D8BC 17000009 */  bne     $t8, $zero, .L80B6D8E4     
/* 03F20 80B6D8C0 3C063DCC */  lui     $a2, 0x3DCC                ## $a2 = 3DCC0000
/* 03F24 80B6D8C4 3C073E4C */  lui     $a3, 0x3E4C                ## $a3 = 3E4C0000
/* 03F28 80B6D8C8 34E7CCCD */  ori     $a3, $a3, 0xCCCD           ## $a3 = 3E4CCCCD
/* 03F2C 80B6D8CC 8C45094C */  lw      $a1, 0x094C($v0)           ## 80B7F414
/* 03F30 80B6D8D0 0C01E107 */  jal     Math_SmoothScaleMaxF
              
/* 03F34 80B6D8D4 34C6CCCD */  ori     $a2, $a2, 0xCCCD           ## $a2 = 3DCCCCCD
/* 03F38 80B6D8D8 3C0380B8 */  lui     $v1, %hi(D_80B7E0B8)       ## $v1 = 80B80000
/* 03F3C 80B6D8DC 10000003 */  beq     $zero, $zero, .L80B6D8EC   
/* 03F40 80B6D8E0 2463E0B8 */  addiu   $v1, $v1, %lo(D_80B7E0B8)  ## $v1 = 80B7E0B8
.L80B6D8E4:
/* 03F44 80B6D8E4 C446094C */  lwc1    $f6, 0x094C($v0)           ## 0000094C
.L80B6D8E8:
/* 03F48 80B6D8E8 E6060004 */  swc1    $f6, 0x0004($s0)           ## 80B7E0DC
.L80B6D8EC:
/* 03F4C 80B6D8EC 3C1980B8 */  lui     $t9, %hi(D_80B7E0B6)       ## $t9 = 80B80000
/* 03F50 80B6D8F0 9339E0B6 */  lbu     $t9, %lo(D_80B7E0B6)($t9)  
/* 03F54 80B6D8F4 3C1080B8 */  lui     $s0, %hi(D_80B7E0D8)       ## $s0 = 80B80000
/* 03F58 80B6D8F8 24010002 */  addiu   $at, $zero, 0x0002         ## $at = 00000002
/* 03F5C 80B6D8FC 13210067 */  beq     $t9, $at, .L80B6DA9C       
/* 03F60 80B6D900 2610E0D8 */  addiu   $s0, $s0, %lo(D_80B7E0D8)  ## $s0 = 80B7E0D8
/* 03F64 80B6D904 C46C0000 */  lwc1    $f12, 0x0000($v1)          ## 80B7E0B8
/* 03F68 80B6D908 C46E0004 */  lwc1    $f14, 0x0004($v1)          ## 80B7E0BC
/* 03F6C 80B6D90C 8C660008 */  lw      $a2, 0x0008($v1)           ## 80B7E0C0
/* 03F70 80B6D910 0C034261 */  jal     Matrix_Translate              
/* 03F74 80B6D914 00003825 */  or      $a3, $zero, $zero          ## $a3 = 00000000
/* 03F78 80B6D918 3C0180B8 */  lui     $at, %hi(D_80B7E104)       ## $at = 80B80000
/* 03F7C 80B6D91C C42AE104 */  lwc1    $f10, %lo(D_80B7E104)($at) 
/* 03F80 80B6D920 C6080004 */  lwc1    $f8, 0x0004($s0)           ## 80B7E0DC
/* 03F84 80B6D924 24050001 */  addiu   $a1, $zero, 0x0001         ## $a1 = 00000001
/* 03F88 80B6D928 0C034348 */  jal     Matrix_RotateY              
/* 03F8C 80B6D92C 460A4300 */  add.s   $f12, $f8, $f10            
/* 03F90 80B6D930 C60C0000 */  lwc1    $f12, 0x0000($s0)          ## 80B7E0D8
/* 03F94 80B6D934 0C0342DC */  jal     Matrix_RotateX              
/* 03F98 80B6D938 24050001 */  addiu   $a1, $zero, 0x0001         ## $a1 = 00000001
/* 03F9C 80B6D93C 3C0180B8 */  lui     $at, %hi(D_80B7B428)       ## $at = 80B80000
/* 03FA0 80B6D940 C42CB428 */  lwc1    $f12, %lo(D_80B7B428)($at) 
/* 03FA4 80B6D944 24070001 */  addiu   $a3, $zero, 0x0001         ## $a3 = 00000001
/* 03FA8 80B6D948 44066000 */  mfc1    $a2, $f12                  
/* 03FAC 80B6D94C 0C0342A3 */  jal     Matrix_Scale              
/* 03FB0 80B6D950 46006386 */  mov.s   $f14, $f12                 
/* 03FB4 80B6D954 44806000 */  mtc1    $zero, $f12                ## $f12 = 0.00
/* 03FB8 80B6D958 3C0680B8 */  lui     $a2, %hi(D_80B7E108)       ## $a2 = 80B80000
/* 03FBC 80B6D95C 8CC6E108 */  lw      $a2, %lo(D_80B7E108)($a2)  
/* 03FC0 80B6D960 24070001 */  addiu   $a3, $zero, 0x0001         ## $a3 = 00000001
/* 03FC4 80B6D964 0C034261 */  jal     Matrix_Translate              
/* 03FC8 80B6D968 46006386 */  mov.s   $f14, $f12                 
/* 03FCC 80B6D96C 3C0180B8 */  lui     $at, %hi(D_80B7B42C)       ## $at = 80B80000
/* 03FD0 80B6D970 C42CB42C */  lwc1    $f12, %lo(D_80B7B42C)($at) 
/* 03FD4 80B6D974 0C0343B5 */  jal     Matrix_RotateZ              
/* 03FD8 80B6D978 24050001 */  addiu   $a1, $zero, 0x0001         ## $a1 = 00000001
/* 03FDC 80B6D97C 3C0180B8 */  lui     $at, %hi(D_80B7B430)       ## $at = 80B80000
/* 03FE0 80B6D980 C42CB430 */  lwc1    $f12, %lo(D_80B7B430)($at) 
/* 03FE4 80B6D984 0C034348 */  jal     Matrix_RotateY              
/* 03FE8 80B6D988 24050001 */  addiu   $a1, $zero, 0x0001         ## $a1 = 00000001
/* 03FEC 80B6D98C 8FA800E8 */  lw      $t0, 0x00E8($sp)           
/* 03FF0 80B6D990 0C024F46 */  jal     func_80093D18              
/* 03FF4 80B6D994 8D040000 */  lw      $a0, 0x0000($t0)           ## 00000000
/* 03FF8 80B6D998 8E2202C0 */  lw      $v0, 0x02C0($s1)           ## 000002C0
/* 03FFC 80B6D99C 3C0ADA38 */  lui     $t2, 0xDA38                ## $t2 = DA380000
/* 04000 80B6D9A0 354A0003 */  ori     $t2, $t2, 0x0003           ## $t2 = DA380003
/* 04004 80B6D9A4 24490008 */  addiu   $t1, $v0, 0x0008           ## $t1 = 00000008
/* 04008 80B6D9A8 AE2902C0 */  sw      $t1, 0x02C0($s1)           ## 000002C0
/* 0400C 80B6D9AC AC4A0000 */  sw      $t2, 0x0000($v0)           ## 00000000
/* 04010 80B6D9B0 8FAB00E8 */  lw      $t3, 0x00E8($sp)           
/* 04014 80B6D9B4 3C0580B8 */  lui     $a1, %hi(D_80B7B170)       ## $a1 = 80B80000
/* 04018 80B6D9B8 24A5B170 */  addiu   $a1, $a1, %lo(D_80B7B170)  ## $a1 = 80B7B170
/* 0401C 80B6D9BC 24060D29 */  addiu   $a2, $zero, 0x0D29         ## $a2 = 00000D29
/* 04020 80B6D9C0 00408025 */  or      $s0, $v0, $zero            ## $s0 = 00000000
/* 04024 80B6D9C4 0C0346A2 */  jal     Matrix_NewMtx              
/* 04028 80B6D9C8 8D640000 */  lw      $a0, 0x0000($t3)           ## 00000000
/* 0402C 80B6D9CC AE020004 */  sw      $v0, 0x0004($s0)           ## 00000004
/* 04030 80B6D9D0 8E2202C0 */  lw      $v0, 0x02C0($s1)           ## 000002C0
/* 04034 80B6D9D4 3C0E0601 */  lui     $t6, 0x0601                ## $t6 = 06010000
/* 04038 80B6D9D8 25CE21F0 */  addiu   $t6, $t6, 0x21F0           ## $t6 = 060121F0
/* 0403C 80B6D9DC 244C0008 */  addiu   $t4, $v0, 0x0008           ## $t4 = 00000008
/* 04040 80B6D9E0 AE2C02C0 */  sw      $t4, 0x02C0($s1)           ## 000002C0
/* 04044 80B6D9E4 3C0DDE00 */  lui     $t5, 0xDE00                ## $t5 = DE000000
/* 04048 80B6D9E8 3C0180B8 */  lui     $at, %hi(D_80B7B434)       ## $at = 80B80000
/* 0404C 80B6D9EC AC4D0000 */  sw      $t5, 0x0000($v0)           ## 00000000
/* 04050 80B6D9F0 AC4E0004 */  sw      $t6, 0x0004($v0)           ## 00000004
/* 04054 80B6D9F4 C424B434 */  lwc1    $f4, %lo(D_80B7B434)($at)  
/* 04058 80B6D9F8 44803000 */  mtc1    $zero, $f6                 ## $f6 = 0.00
/* 0405C 80B6D9FC 44804000 */  mtc1    $zero, $f8                 ## $f8 = 0.00
/* 04060 80B6DA00 3C0580B8 */  lui     $a1, %hi(D_80B7E0C8)       ## $a1 = 80B80000
/* 04064 80B6DA04 24A5E0C8 */  addiu   $a1, $a1, %lo(D_80B7E0C8)  ## $a1 = 80B7E0C8
/* 04068 80B6DA08 27A400DC */  addiu   $a0, $sp, 0x00DC           ## $a0 = FFFFFFF4
/* 0406C 80B6DA0C E7A400DC */  swc1    $f4, 0x00DC($sp)           
/* 04070 80B6DA10 E7A600E0 */  swc1    $f6, 0x00E0($sp)           
/* 04074 80B6DA14 0C0346BD */  jal     Matrix_MultVec3f              
/* 04078 80B6DA18 E7A800E4 */  swc1    $f8, 0x00E4($sp)           
/* 0407C 80B6DA1C 3C0143FA */  lui     $at, 0x43FA                ## $at = 43FA0000
/* 04080 80B6DA20 44815000 */  mtc1    $at, $f10                  ## $f10 = 500.00
/* 04084 80B6DA24 3C01C396 */  lui     $at, 0xC396                ## $at = C3960000
/* 04088 80B6DA28 44812000 */  mtc1    $at, $f4                   ## $f4 = -300.00
/* 0408C 80B6DA2C 27B000B8 */  addiu   $s0, $sp, 0x00B8           ## $s0 = FFFFFFD0
/* 04090 80B6DA30 02002825 */  or      $a1, $s0, $zero            ## $a1 = FFFFFFD0
/* 04094 80B6DA34 27A400DC */  addiu   $a0, $sp, 0x00DC           ## $a0 = FFFFFFF4
/* 04098 80B6DA38 E7AA00DC */  swc1    $f10, 0x00DC($sp)          
/* 0409C 80B6DA3C 0C0346BD */  jal     Matrix_MultVec3f              
/* 040A0 80B6DA40 E7A400E4 */  swc1    $f4, 0x00E4($sp)           
/* 040A4 80B6DA44 3C0680B8 */  lui     $a2, %hi(D_80B7FD88)       ## $a2 = 80B80000
/* 040A8 80B6DA48 24C6FD88 */  addiu   $a2, $a2, %lo(D_80B7FD88)  ## $a2 = 80B7FD88
/* 040AC 80B6DA4C 8FA400E8 */  lw      $a0, 0x00E8($sp)           
/* 040B0 80B6DA50 02002825 */  or      $a1, $s0, $zero            ## $a1 = FFFFFFD0
/* 040B4 80B6DA54 0C2DB2BE */  jal     func_80B6CAF8              
/* 040B8 80B6DA58 00003825 */  or      $a3, $zero, $zero          ## $a3 = 00000000
/* 040BC 80B6DA5C 3C0180B8 */  lui     $at, %hi(D_80B7B438)       ## $at = 80B80000
/* 040C0 80B6DA60 C426B438 */  lwc1    $f6, %lo(D_80B7B438)($at)  
/* 040C4 80B6DA64 3C01C248 */  lui     $at, 0xC248                ## $at = C2480000
/* 040C8 80B6DA68 44814000 */  mtc1    $at, $f8                   ## $f8 = -50.00
/* 040CC 80B6DA6C 27B000C4 */  addiu   $s0, $sp, 0x00C4           ## $s0 = FFFFFFDC
/* 040D0 80B6DA70 02002825 */  or      $a1, $s0, $zero            ## $a1 = FFFFFFDC
/* 040D4 80B6DA74 27A400DC */  addiu   $a0, $sp, 0x00DC           ## $a0 = FFFFFFF4
/* 040D8 80B6DA78 E7A600DC */  swc1    $f6, 0x00DC($sp)           
/* 040DC 80B6DA7C 0C0346BD */  jal     Matrix_MultVec3f              
/* 040E0 80B6DA80 E7A800E4 */  swc1    $f8, 0x00E4($sp)           
/* 040E4 80B6DA84 3C0680B8 */  lui     $a2, %hi(D_80B7FD94)       ## $a2 = 80B80000
/* 040E8 80B6DA88 24C6FD94 */  addiu   $a2, $a2, %lo(D_80B7FD94)  ## $a2 = 80B7FD94
/* 040EC 80B6DA8C 8FA400E8 */  lw      $a0, 0x00E8($sp)           
/* 040F0 80B6DA90 02002825 */  or      $a1, $s0, $zero            ## $a1 = FFFFFFDC
/* 040F4 80B6DA94 0C2DB2BE */  jal     func_80B6CAF8              
/* 040F8 80B6DA98 24070001 */  addiu   $a3, $zero, 0x0001         ## $a3 = 00000001
.L80B6DA9C:
/* 040FC 80B6DA9C 8E2402D0 */  lw      $a0, 0x02D0($s1)           ## 000002D0
/* 04100 80B6DAA0 0C024DDD */  jal     Gfx_CallSetupDL              
/* 04104 80B6DAA4 24050014 */  addiu   $a1, $zero, 0x0014         ## $a1 = 00000014
/* 04108 80B6DAA8 AE2202D0 */  sw      $v0, 0x02D0($s1)           ## 000002D0
/* 0410C 80B6DAAC 244F0008 */  addiu   $t7, $v0, 0x0008           ## $t7 = 00000008
/* 04110 80B6DAB0 AE2F02D0 */  sw      $t7, 0x02D0($s1)           ## 000002D0
/* 04114 80B6DAB4 3C18FCFF */  lui     $t8, 0xFCFF                ## $t8 = FCFF0000
/* 04118 80B6DAB8 3C19FFFD */  lui     $t9, 0xFFFD                ## $t9 = FFFD0000
/* 0411C 80B6DABC 3739F6FB */  ori     $t9, $t9, 0xF6FB           ## $t9 = FFFDF6FB
/* 04120 80B6DAC0 3718FFFF */  ori     $t8, $t8, 0xFFFF           ## $t8 = FCFFFFFF
/* 04124 80B6DAC4 AC580000 */  sw      $t8, 0x0000($v0)           ## 00000000
/* 04128 80B6DAC8 AC590004 */  sw      $t9, 0x0004($v0)           ## 00000004
/* 0412C 80B6DACC 8E2302D0 */  lw      $v1, 0x02D0($s1)           ## 000002D0
/* 04130 80B6DAD0 3C09FA00 */  lui     $t1, 0xFA00                ## $t1 = FA000000
/* 04134 80B6DAD4 240AFF37 */  addiu   $t2, $zero, 0xFF37         ## $t2 = FFFFFF37
/* 04138 80B6DAD8 24680008 */  addiu   $t0, $v1, 0x0008           ## $t0 = 00000008
/* 0413C 80B6DADC AE2802D0 */  sw      $t0, 0x02D0($s1)           ## 000002D0
/* 04140 80B6DAE0 3C0580B8 */  lui     $a1, %hi(D_80B7A694)       ## $a1 = 80B80000
/* 04144 80B6DAE4 24A5A694 */  addiu   $a1, $a1, %lo(D_80B7A694)  ## $a1 = 80B7A694
/* 04148 80B6DAE8 AC6A0004 */  sw      $t2, 0x0004($v1)           ## 00000004
/* 0414C 80B6DAEC AC690000 */  sw      $t1, 0x0000($v1)           ## 00000000
/* 04150 80B6DAF0 84AB0000 */  lh      $t3, 0x0000($a1)           ## 80B7A694
/* 04154 80B6DAF4 24010004 */  addiu   $at, $zero, 0x0004         ## $at = 00000004
/* 04158 80B6DAF8 3C0C80B8 */  lui     $t4, %hi(D_80B7E124)       ## $t4 = 80B80000
/* 0415C 80B6DAFC 15610059 */  bne     $t3, $at, .L80B6DC64       
/* 04160 80B6DB00 87A200B4 */  lh      $v0, 0x00B4($sp)           
/* 04164 80B6DB04 918CE124 */  lbu     $t4, %lo(D_80B7E124)($t4)  
/* 04168 80B6DB08 3C0480B8 */  lui     $a0, %hi(D_80B7E0B6)       ## $a0 = 80B80000
/* 0416C 80B6DB0C 2484E0B6 */  addiu   $a0, $a0, %lo(D_80B7E0B6)  ## $a0 = 80B7E0B6
/* 04170 80B6DB10 15800004 */  bne     $t4, $zero, .L80B6DB24     
/* 04174 80B6DB14 3C1080B8 */  lui     $s0, %hi(D_80B7E158)       ## $s0 = 80B80000
/* 04178 80B6DB18 908D0000 */  lbu     $t5, 0x0000($a0)           ## 80B7E0B6
/* 0417C 80B6DB1C 24010002 */  addiu   $at, $zero, 0x0002         ## $at = 00000002
/* 04180 80B6DB20 11A10050 */  beq     $t5, $at, .L80B6DC64       
.L80B6DB24:
/* 04184 80B6DB24 2610E158 */  addiu   $s0, $s0, %lo(D_80B7E158)  ## $s0 = 80B7E158
/* 04188 80B6DB28 3C0180B8 */  lui     $at, %hi(D_80B7E0B8)       ## $at = 80B80000
/* 0418C 80B6DB2C C42AE0B8 */  lwc1    $f10, %lo(D_80B7E0B8)($at) 
/* 04190 80B6DB30 C6040000 */  lwc1    $f4, 0x0000($s0)           ## 80B7E158
/* 04194 80B6DB34 C426E0BC */  lwc1    $f6, %lo(D_80B7E0BC)($at)  
/* 04198 80B6DB38 C6080004 */  lwc1    $f8, 0x0004($s0)           ## 80B7E15C
/* 0419C 80B6DB3C 46045301 */  sub.s   $f12, $f10, $f4            
/* 041A0 80B6DB40 3C0180B8 */  lui     $at, %hi(D_80B7E0C0)       ## $at = 80B80000
/* 041A4 80B6DB44 C424E0C0 */  lwc1    $f4, %lo(D_80B7E0C0)($at)  
/* 041A8 80B6DB48 46083281 */  sub.s   $f10, $f6, $f8             
/* 041AC 80B6DB4C C6060008 */  lwc1    $f6, 0x0008($s0)           ## 80B7E160
/* 041B0 80B6DB50 E7AC006C */  swc1    $f12, 0x006C($sp)          
/* 041B4 80B6DB54 46062381 */  sub.s   $f14, $f4, $f6             
/* 041B8 80B6DB58 E7AA0068 */  swc1    $f10, 0x0068($sp)          
/* 041BC 80B6DB5C 0C03F494 */  jal     Math_atan2f              
/* 041C0 80B6DB60 E7AE0064 */  swc1    $f14, 0x0064($sp)          
/* 041C4 80B6DB64 C7B2006C */  lwc1    $f18, 0x006C($sp)          
/* 041C8 80B6DB68 C7A80064 */  lwc1    $f8, 0x0064($sp)           
/* 041CC 80B6DB6C E7A00074 */  swc1    $f0, 0x0074($sp)           
/* 041D0 80B6DB70 46129082 */  mul.s   $f2, $f18, $f18            
/* 041D4 80B6DB74 C7AC0068 */  lwc1    $f12, 0x0068($sp)          
/* 041D8 80B6DB78 46084402 */  mul.s   $f16, $f8, $f8             
/* 041DC 80B6DB7C E7A20030 */  swc1    $f2, 0x0030($sp)           
/* 041E0 80B6DB80 46101000 */  add.s   $f0, $f2, $f16             
/* 041E4 80B6DB84 E7B0002C */  swc1    $f16, 0x002C($sp)          
/* 041E8 80B6DB88 0C03F494 */  jal     Math_atan2f              
/* 041EC 80B6DB8C 46000384 */  sqrt.s  $f14, $f0                  
/* 041F0 80B6DB90 C7B20068 */  lwc1    $f18, 0x0068($sp)          
/* 041F4 80B6DB94 C7A20030 */  lwc1    $f2, 0x0030($sp)           
/* 041F8 80B6DB98 C7B0002C */  lwc1    $f16, 0x002C($sp)          
/* 041FC 80B6DB9C 46129102 */  mul.s   $f4, $f18, $f18            
/* 04200 80B6DBA0 46000287 */  neg.s   $f10, $f0                  
/* 04204 80B6DBA4 3C0180B8 */  lui     $at, %hi(D_80B7B43C)       ## $at = 80B80000
/* 04208 80B6DBA8 C428B43C */  lwc1    $f8, %lo(D_80B7B43C)($at)  
/* 0420C 80B6DBAC E7AA0078 */  swc1    $f10, 0x0078($sp)          
/* 04210 80B6DBB0 C60C0000 */  lwc1    $f12, 0x0000($s0)          ## 80B7E158
/* 04214 80B6DBB4 C60E0004 */  lwc1    $f14, 0x0004($s0)          ## 80B7E15C
/* 04218 80B6DBB8 46041180 */  add.s   $f6, $f2, $f4              
/* 0421C 80B6DBBC 8E060008 */  lw      $a2, 0x0008($s0)           ## 80B7E160
/* 04220 80B6DBC0 00003825 */  or      $a3, $zero, $zero          ## $a3 = 00000000
/* 04224 80B6DBC4 46103000 */  add.s   $f0, $f6, $f16             
/* 04228 80B6DBC8 46000004 */  sqrt.s  $f0, $f0                   
/* 0422C 80B6DBCC 46080282 */  mul.s   $f10, $f0, $f8             
/* 04230 80B6DBD0 0C034261 */  jal     Matrix_Translate              
/* 04234 80B6DBD4 E7AA0070 */  swc1    $f10, 0x0070($sp)          
/* 04238 80B6DBD8 C7AC0074 */  lwc1    $f12, 0x0074($sp)          
/* 0423C 80B6DBDC 0C034348 */  jal     Matrix_RotateY              
/* 04240 80B6DBE0 24050001 */  addiu   $a1, $zero, 0x0001         ## $a1 = 00000001
/* 04244 80B6DBE4 C7AC0078 */  lwc1    $f12, 0x0078($sp)          
/* 04248 80B6DBE8 0C0342DC */  jal     Matrix_RotateX              
/* 0424C 80B6DBEC 24050001 */  addiu   $a1, $zero, 0x0001         ## $a1 = 00000001
/* 04250 80B6DBF0 3C0180B8 */  lui     $at, %hi(D_80B7E14C)       ## $at = 80B80000
/* 04254 80B6DBF4 C42CE14C */  lwc1    $f12, %lo(D_80B7E14C)($at) 
/* 04258 80B6DBF8 3C013F80 */  lui     $at, 0x3F80                ## $at = 3F800000
/* 0425C 80B6DBFC 44817000 */  mtc1    $at, $f14                  ## $f14 = 1.00
/* 04260 80B6DC00 8FA60070 */  lw      $a2, 0x0070($sp)           
/* 04264 80B6DC04 0C0342A3 */  jal     Matrix_Scale              
/* 04268 80B6DC08 24070001 */  addiu   $a3, $zero, 0x0001         ## $a3 = 00000001
/* 0426C 80B6DC0C 8E3002D0 */  lw      $s0, 0x02D0($s1)           ## 000002D0
/* 04270 80B6DC10 3C0FDA38 */  lui     $t7, 0xDA38                ## $t7 = DA380000
/* 04274 80B6DC14 35EF0003 */  ori     $t7, $t7, 0x0003           ## $t7 = DA380003
/* 04278 80B6DC18 260E0008 */  addiu   $t6, $s0, 0x0008           ## $t6 = 80B7E160
/* 0427C 80B6DC1C AE2E02D0 */  sw      $t6, 0x02D0($s1)           ## 000002D0
/* 04280 80B6DC20 AE0F0000 */  sw      $t7, 0x0000($s0)           ## 80B7E158
/* 04284 80B6DC24 8FB800E8 */  lw      $t8, 0x00E8($sp)           
/* 04288 80B6DC28 3C0580B8 */  lui     $a1, %hi(D_80B7B180)       ## $a1 = 80B80000
/* 0428C 80B6DC2C 24A5B180 */  addiu   $a1, $a1, %lo(D_80B7B180)  ## $a1 = 80B7B180
/* 04290 80B6DC30 24060D74 */  addiu   $a2, $zero, 0x0D74         ## $a2 = 00000D74
/* 04294 80B6DC34 0C0346A2 */  jal     Matrix_NewMtx              
/* 04298 80B6DC38 8F040000 */  lw      $a0, 0x0000($t8)           ## 00000000
/* 0429C 80B6DC3C AE020004 */  sw      $v0, 0x0004($s0)           ## 80B7E15C
/* 042A0 80B6DC40 8E2302D0 */  lw      $v1, 0x02D0($s1)           ## 000002D0
/* 042A4 80B6DC44 3C090600 */  lui     $t1, 0x0600                ## $t1 = 06000000
/* 042A8 80B6DC48 25293710 */  addiu   $t1, $t1, 0x3710           ## $t1 = 06003710
/* 042AC 80B6DC4C 24790008 */  addiu   $t9, $v1, 0x0008           ## $t9 = 00000008
/* 042B0 80B6DC50 AE3902D0 */  sw      $t9, 0x02D0($s1)           ## 000002D0
/* 042B4 80B6DC54 3C08DE00 */  lui     $t0, 0xDE00                ## $t0 = DE000000
/* 042B8 80B6DC58 AC680000 */  sw      $t0, 0x0000($v1)           ## 00000000
/* 042BC 80B6DC5C 100000A3 */  beq     $zero, $zero, .L80B6DEEC   
/* 042C0 80B6DC60 AC690004 */  sw      $t1, 0x0004($v1)           ## 00000004
.L80B6DC64:
/* 042C4 80B6DC64 00028400 */  sll     $s0, $v0, 16               
/* 042C8 80B6DC68 284100C7 */  slti    $at, $v0, 0x00C7           
/* 042CC 80B6DC6C 1020009F */  beq     $at, $zero, .L80B6DEEC     
/* 042D0 80B6DC70 00108403 */  sra     $s0, $s0, 16               
/* 042D4 80B6DC74 3C0A0600 */  lui     $t2, 0x0600                ## $t2 = 06000000
/* 042D8 80B6DC78 254A3710 */  addiu   $t2, $t2, 0x3710           ## $t2 = 06003710
/* 042DC 80B6DC7C AFAA0030 */  sw      $t2, 0x0030($sp)           
.L80B6DC80:
/* 042E0 80B6DC80 3C0480B8 */  lui     $a0, %hi(D_80B7E0B6)       ## $a0 = 80B80000
/* 042E4 80B6DC84 3C0580B8 */  lui     $a1, %hi(D_80B7A694)       ## $a1 = 80B80000
/* 042E8 80B6DC88 240100C5 */  addiu   $at, $zero, 0x00C5         ## $at = 000000C5
/* 042EC 80B6DC8C 24A5A694 */  addiu   $a1, $a1, %lo(D_80B7A694)  ## $a1 = 80B7A694
/* 042F0 80B6DC90 1601005D */  bne     $s0, $at, .L80B6DE08       
/* 042F4 80B6DC94 2484E0B6 */  addiu   $a0, $a0, %lo(D_80B7E0B6)  ## $a0 = 80B7E0B6
/* 042F8 80B6DC98 908B0000 */  lbu     $t3, 0x0000($a0)           ## 80B7E0B6
/* 042FC 80B6DC9C 5560005B */  bnel    $t3, $zero, .L80B6DE0C     
/* 04300 80B6DCA0 8FAB00EC */  lw      $t3, 0x00EC($sp)           
/* 04304 80B6DCA4 84AC0000 */  lh      $t4, 0x0000($a1)           ## 80B7A694
/* 04308 80B6DCA8 24010003 */  addiu   $at, $zero, 0x0003         ## $at = 00000003
/* 0430C 80B6DCAC 55810057 */  bnel    $t4, $at, .L80B6DE0C       
/* 04310 80B6DCB0 8FAB00EC */  lw      $t3, 0x00EC($sp)           
/* 04314 80B6DCB4 8FAE00EC */  lw      $t6, 0x00EC($sp)           
/* 04318 80B6DCB8 00106880 */  sll     $t5, $s0,  2               
/* 0431C 80B6DCBC 01B06823 */  subu    $t5, $t5, $s0              
/* 04320 80B6DCC0 3C0380B8 */  lui     $v1, %hi(D_80B7E0C8)       ## $v1 = 80B80000
/* 04324 80B6DCC4 000D6880 */  sll     $t5, $t5,  2               
/* 04328 80B6DCC8 2463E0C8 */  addiu   $v1, $v1, %lo(D_80B7E0C8)  ## $v1 = 80B7E0C8
/* 0432C 80B6DCCC 01AE1021 */  addu    $v0, $t5, $t6              
/* 04330 80B6DCD0 C4460000 */  lwc1    $f6, 0x0000($v0)           ## 00000000
/* 04334 80B6DCD4 C4640000 */  lwc1    $f4, 0x0000($v1)           ## 80B7E0C8
/* 04338 80B6DCD8 C44A0004 */  lwc1    $f10, 0x0004($v0)          ## 00000004
/* 0433C 80B6DCDC C4680004 */  lwc1    $f8, 0x0004($v1)           ## 80B7E0CC
/* 04340 80B6DCE0 46062301 */  sub.s   $f12, $f4, $f6             
/* 04344 80B6DCE4 C4660008 */  lwc1    $f6, 0x0008($v1)           ## 80B7E0D0
/* 04348 80B6DCE8 460A4101 */  sub.s   $f4, $f8, $f10             
/* 0434C 80B6DCEC E7A40048 */  swc1    $f4, 0x0048($sp)           
/* 04350 80B6DCF0 C4480008 */  lwc1    $f8, 0x0008($v0)           ## 00000008
/* 04354 80B6DCF4 E7AC004C */  swc1    $f12, 0x004C($sp)          
/* 04358 80B6DCF8 AFA2002C */  sw      $v0, 0x002C($sp)           
/* 0435C 80B6DCFC 46083381 */  sub.s   $f14, $f6, $f8             
/* 04360 80B6DD00 0C03F494 */  jal     Math_atan2f              
/* 04364 80B6DD04 E7AE0044 */  swc1    $f14, 0x0044($sp)          
/* 04368 80B6DD08 C7B2004C */  lwc1    $f18, 0x004C($sp)          
/* 0436C 80B6DD0C C7AA0044 */  lwc1    $f10, 0x0044($sp)          
/* 04370 80B6DD10 E7A00054 */  swc1    $f0, 0x0054($sp)           
/* 04374 80B6DD14 46129082 */  mul.s   $f2, $f18, $f18            
/* 04378 80B6DD18 C7AC0048 */  lwc1    $f12, 0x0048($sp)          
/* 0437C 80B6DD1C 460A5402 */  mul.s   $f16, $f10, $f10           
/* 04380 80B6DD20 E7A20028 */  swc1    $f2, 0x0028($sp)           
/* 04384 80B6DD24 46101000 */  add.s   $f0, $f2, $f16             
/* 04388 80B6DD28 E7B00024 */  swc1    $f16, 0x0024($sp)          
/* 0438C 80B6DD2C 0C03F494 */  jal     Math_atan2f              
/* 04390 80B6DD30 46000384 */  sqrt.s  $f14, $f0                  
/* 04394 80B6DD34 C7B20048 */  lwc1    $f18, 0x0048($sp)          
/* 04398 80B6DD38 C7A20028 */  lwc1    $f2, 0x0028($sp)           
/* 0439C 80B6DD3C C7B00024 */  lwc1    $f16, 0x0024($sp)          
/* 043A0 80B6DD40 46129182 */  mul.s   $f6, $f18, $f18            
/* 043A4 80B6DD44 46000107 */  neg.s   $f4, $f0                   
/* 043A8 80B6DD48 3C0180B8 */  lui     $at, %hi(D_80B7B440)       ## $at = 80B80000
/* 043AC 80B6DD4C C42AB440 */  lwc1    $f10, %lo(D_80B7B440)($at) 
/* 043B0 80B6DD50 E7A40058 */  swc1    $f4, 0x0058($sp)           
/* 043B4 80B6DD54 8FA2002C */  lw      $v0, 0x002C($sp)           
/* 043B8 80B6DD58 00003825 */  or      $a3, $zero, $zero          ## $a3 = 00000000
/* 043BC 80B6DD5C 46061200 */  add.s   $f8, $f2, $f6              
/* 043C0 80B6DD60 46104000 */  add.s   $f0, $f8, $f16             
/* 043C4 80B6DD64 46000004 */  sqrt.s  $f0, $f0                   
/* 043C8 80B6DD68 460A0102 */  mul.s   $f4, $f0, $f10             
/* 043CC 80B6DD6C E7A40050 */  swc1    $f4, 0x0050($sp)           
/* 043D0 80B6DD70 8C460008 */  lw      $a2, 0x0008($v0)           ## 00000008
/* 043D4 80B6DD74 C44E0004 */  lwc1    $f14, 0x0004($v0)          ## 00000004
/* 043D8 80B6DD78 0C034261 */  jal     Matrix_Translate              
/* 043DC 80B6DD7C C44C0000 */  lwc1    $f12, 0x0000($v0)          ## 00000000
/* 043E0 80B6DD80 C7AC0054 */  lwc1    $f12, 0x0054($sp)          
/* 043E4 80B6DD84 0C034348 */  jal     Matrix_RotateY              
/* 043E8 80B6DD88 24050001 */  addiu   $a1, $zero, 0x0001         ## $a1 = 00000001
/* 043EC 80B6DD8C C7AC0058 */  lwc1    $f12, 0x0058($sp)          
/* 043F0 80B6DD90 0C0342DC */  jal     Matrix_RotateX              
/* 043F4 80B6DD94 24050001 */  addiu   $a1, $zero, 0x0001         ## $a1 = 00000001
/* 043F8 80B6DD98 3C0180B8 */  lui     $at, %hi(D_80B7E14C)       ## $at = 80B80000
/* 043FC 80B6DD9C C42CE14C */  lwc1    $f12, %lo(D_80B7E14C)($at) 
/* 04400 80B6DDA0 3C013F80 */  lui     $at, 0x3F80                ## $at = 3F800000
/* 04404 80B6DDA4 44817000 */  mtc1    $at, $f14                  ## $f14 = 1.00
/* 04408 80B6DDA8 8FA60050 */  lw      $a2, 0x0050($sp)           
/* 0440C 80B6DDAC 0C0342A3 */  jal     Matrix_Scale              
/* 04410 80B6DDB0 24070001 */  addiu   $a3, $zero, 0x0001         ## $a3 = 00000001
/* 04414 80B6DDB4 8E3002D0 */  lw      $s0, 0x02D0($s1)           ## 000002D0
/* 04418 80B6DDB8 3C18DA38 */  lui     $t8, 0xDA38                ## $t8 = DA380000
/* 0441C 80B6DDBC 37180003 */  ori     $t8, $t8, 0x0003           ## $t8 = DA380003
/* 04420 80B6DDC0 260F0008 */  addiu   $t7, $s0, 0x0008           ## $t7 = 80B7E160
/* 04424 80B6DDC4 AE2F02D0 */  sw      $t7, 0x02D0($s1)           ## 000002D0
/* 04428 80B6DDC8 AE180000 */  sw      $t8, 0x0000($s0)           ## 80B7E158
/* 0442C 80B6DDCC 8FB900E8 */  lw      $t9, 0x00E8($sp)           
/* 04430 80B6DDD0 3C0580B8 */  lui     $a1, %hi(D_80B7B190)       ## $a1 = 80B80000
/* 04434 80B6DDD4 24A5B190 */  addiu   $a1, $a1, %lo(D_80B7B190)  ## $a1 = 80B7B190
/* 04438 80B6DDD8 24060D93 */  addiu   $a2, $zero, 0x0D93         ## $a2 = 00000D93
/* 0443C 80B6DDDC 0C0346A2 */  jal     Matrix_NewMtx              
/* 04440 80B6DDE0 8F240000 */  lw      $a0, 0x0000($t9)           ## 00000000
/* 04444 80B6DDE4 AE020004 */  sw      $v0, 0x0004($s0)           ## 80B7E15C
/* 04448 80B6DDE8 8E2302D0 */  lw      $v1, 0x02D0($s1)           ## 000002D0
/* 0444C 80B6DDEC 3C09DE00 */  lui     $t1, 0xDE00                ## $t1 = DE000000
/* 04450 80B6DDF0 24680008 */  addiu   $t0, $v1, 0x0008           ## $t0 = 00000008
/* 04454 80B6DDF4 AE2802D0 */  sw      $t0, 0x02D0($s1)           ## 000002D0
/* 04458 80B6DDF8 AC690000 */  sw      $t1, 0x0000($v1)           ## 00000000
/* 0445C 80B6DDFC 8FAA0030 */  lw      $t2, 0x0030($sp)           
/* 04460 80B6DE00 1000003A */  beq     $zero, $zero, .L80B6DEEC   
/* 04464 80B6DE04 AC6A0004 */  sw      $t2, 0x0004($v1)           ## 00000004
.L80B6DE08:
/* 04468 80B6DE08 8FAB00EC */  lw      $t3, 0x00EC($sp)           
.L80B6DE0C:
/* 0446C 80B6DE0C 00101880 */  sll     $v1, $s0,  2               
/* 04470 80B6DE10 00701823 */  subu    $v1, $v1, $s0              
/* 04474 80B6DE14 00031880 */  sll     $v1, $v1,  2               
/* 04478 80B6DE18 006B1021 */  addu    $v0, $v1, $t3              
/* 0447C 80B6DE1C C44C0000 */  lwc1    $f12, 0x0000($v0)          ## 00000000
/* 04480 80B6DE20 C44E0004 */  lwc1    $f14, 0x0004($v0)          ## 00000004
/* 04484 80B6DE24 8C460008 */  lw      $a2, 0x0008($v0)           ## 00000008
/* 04488 80B6DE28 AFA3002C */  sw      $v1, 0x002C($sp)           
/* 0448C 80B6DE2C 0C034261 */  jal     Matrix_Translate              
/* 04490 80B6DE30 00003825 */  or      $a3, $zero, $zero          ## $a3 = 00000000
/* 04494 80B6DE34 8FA3002C */  lw      $v1, 0x002C($sp)           
/* 04498 80B6DE38 8FAC00F0 */  lw      $t4, 0x00F0($sp)           
/* 0449C 80B6DE3C 24050001 */  addiu   $a1, $zero, 0x0001         ## $a1 = 00000001
/* 044A0 80B6DE40 006C1021 */  addu    $v0, $v1, $t4              
/* 044A4 80B6DE44 C44C0004 */  lwc1    $f12, 0x0004($v0)          ## 00000004
/* 044A8 80B6DE48 0C034348 */  jal     Matrix_RotateY              
/* 044AC 80B6DE4C AFA20028 */  sw      $v0, 0x0028($sp)           
/* 044B0 80B6DE50 8FA20028 */  lw      $v0, 0x0028($sp)           
/* 044B4 80B6DE54 24050001 */  addiu   $a1, $zero, 0x0001         ## $a1 = 00000001
/* 044B8 80B6DE58 0C0342DC */  jal     Matrix_RotateX              
/* 044BC 80B6DE5C C44C0000 */  lwc1    $f12, 0x0000($v0)          ## 00000000
/* 044C0 80B6DE60 3C0180B8 */  lui     $at, %hi(D_80B7E14C)       ## $at = 80B80000
/* 044C4 80B6DE64 C42CE14C */  lwc1    $f12, %lo(D_80B7E14C)($at) 
/* 044C8 80B6DE68 3C013F80 */  lui     $at, 0x3F80                ## $at = 3F800000
/* 044CC 80B6DE6C 44817000 */  mtc1    $at, $f14                  ## $f14 = 1.00
/* 044D0 80B6DE70 3C063BA3 */  lui     $a2, 0x3BA3                ## $a2 = 3BA30000
/* 044D4 80B6DE74 34C6D70A */  ori     $a2, $a2, 0xD70A           ## $a2 = 3BA3D70A
/* 044D8 80B6DE78 0C0342A3 */  jal     Matrix_Scale              
/* 044DC 80B6DE7C 24070001 */  addiu   $a3, $zero, 0x0001         ## $a3 = 00000001
/* 044E0 80B6DE80 8E2302D0 */  lw      $v1, 0x02D0($s1)           ## 000002D0
/* 044E4 80B6DE84 3C0EDA38 */  lui     $t6, 0xDA38                ## $t6 = DA380000
/* 044E8 80B6DE88 35CE0003 */  ori     $t6, $t6, 0x0003           ## $t6 = DA380003
/* 044EC 80B6DE8C 246D0008 */  addiu   $t5, $v1, 0x0008           ## $t5 = 00000008
/* 044F0 80B6DE90 AE2D02D0 */  sw      $t5, 0x02D0($s1)           ## 000002D0
/* 044F4 80B6DE94 AC6E0000 */  sw      $t6, 0x0000($v1)           ## 00000000
/* 044F8 80B6DE98 8FAF00E8 */  lw      $t7, 0x00E8($sp)           
/* 044FC 80B6DE9C 3C0580B8 */  lui     $a1, %hi(D_80B7B1A0)       ## $a1 = 80B80000
/* 04500 80B6DEA0 24A5B1A0 */  addiu   $a1, $a1, %lo(D_80B7B1A0)  ## $a1 = 80B7B1A0
/* 04504 80B6DEA4 8DE40000 */  lw      $a0, 0x0000($t7)           ## 00000000
/* 04508 80B6DEA8 24060DA4 */  addiu   $a2, $zero, 0x0DA4         ## $a2 = 00000DA4
/* 0450C 80B6DEAC 0C0346A2 */  jal     Matrix_NewMtx              
/* 04510 80B6DEB0 AFA30038 */  sw      $v1, 0x0038($sp)           
/* 04514 80B6DEB4 8FA70038 */  lw      $a3, 0x0038($sp)           
/* 04518 80B6DEB8 26100001 */  addiu   $s0, $s0, 0x0001           ## $s0 = 80B7E159
/* 0451C 80B6DEBC 3C19DE00 */  lui     $t9, 0xDE00                ## $t9 = DE000000
/* 04520 80B6DEC0 ACE20004 */  sw      $v0, 0x0004($a3)           ## 00000004
/* 04524 80B6DEC4 8E2302D0 */  lw      $v1, 0x02D0($s1)           ## 000002D0
/* 04528 80B6DEC8 00108400 */  sll     $s0, $s0, 16               
/* 0452C 80B6DECC 00108403 */  sra     $s0, $s0, 16               
/* 04530 80B6DED0 24780008 */  addiu   $t8, $v1, 0x0008           ## $t8 = 00000008
/* 04534 80B6DED4 AE3802D0 */  sw      $t8, 0x02D0($s1)           ## 000002D0
/* 04538 80B6DED8 AC790000 */  sw      $t9, 0x0000($v1)           ## 00000000
/* 0453C 80B6DEDC 8FA80030 */  lw      $t0, 0x0030($sp)           
/* 04540 80B6DEE0 2A0100C7 */  slti    $at, $s0, 0x00C7           
/* 04544 80B6DEE4 1420FF66 */  bne     $at, $zero, .L80B6DC80     
/* 04548 80B6DEE8 AC680004 */  sw      $t0, 0x0004($v1)           ## 00000004
.L80B6DEEC:
/* 0454C 80B6DEEC 0C034221 */  jal     Matrix_Pull              
/* 04550 80B6DEF0 00000000 */  nop
/* 04554 80B6DEF4 8FA900E8 */  lw      $t1, 0x00E8($sp)           
/* 04558 80B6DEF8 0C024F61 */  jal     func_80093D84              
/* 0455C 80B6DEFC 8D240000 */  lw      $a0, 0x0000($t1)           ## 00000000
/* 04560 80B6DF00 8FAA00E8 */  lw      $t2, 0x00E8($sp)           
/* 04564 80B6DF04 3C0680B8 */  lui     $a2, %hi(D_80B7B1B0)       ## $a2 = 80B80000
/* 04568 80B6DF08 24C6B1B0 */  addiu   $a2, $a2, %lo(D_80B7B1B0)  ## $a2 = 80B7B1B0
/* 0456C 80B6DF0C 27A40098 */  addiu   $a0, $sp, 0x0098           ## $a0 = FFFFFFB0
/* 04570 80B6DF10 24070DAC */  addiu   $a3, $zero, 0x0DAC         ## $a3 = 00000DAC
/* 04574 80B6DF14 0C031AD5 */  jal     func_800C6B54              
/* 04578 80B6DF18 8D450000 */  lw      $a1, 0x0000($t2)           ## 00000000
/* 0457C 80B6DF1C 8FBF001C */  lw      $ra, 0x001C($sp)           
/* 04580 80B6DF20 8FB00014 */  lw      $s0, 0x0014($sp)           
/* 04584 80B6DF24 8FB10018 */  lw      $s1, 0x0018($sp)           
/* 04588 80B6DF28 03E00008 */  jr      $ra                        
/* 0458C 80B6DF2C 27BD00E8 */  addiu   $sp, $sp, 0x00E8           ## $sp = 00000000


