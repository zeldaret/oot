glabel func_80919704
/* 03CF4 80919704 27BDFFD8 */  addiu   $sp, $sp, 0xFFD8           ## $sp = FFFFFFD8
/* 03CF8 80919708 AFB00018 */  sw      $s0, 0x0018($sp)           
/* 03CFC 8091970C 00808025 */  or      $s0, $a0, $zero            ## $s0 = 00000000
/* 03D00 80919710 AFBF001C */  sw      $ra, 0x001C($sp)           
/* 03D04 80919714 2484014C */  addiu   $a0, $a0, 0x014C           ## $a0 = 0000014C
/* 03D08 80919718 AFA5002C */  sw      $a1, 0x002C($sp)           
/* 03D0C 8091971C 0C02927F */  jal     Animation_Update
              
/* 03D10 80919720 AFA40020 */  sw      $a0, 0x0020($sp)           
/* 03D14 80919724 8FA40020 */  lw      $a0, 0x0020($sp)           
/* 03D18 80919728 0C0295B2 */  jal     Animation_IsOnFrame              
/* 03D1C 8091972C 3C053F80 */  lui     $a1, 0x3F80                ## $a1 = 3F800000
/* 03D20 80919730 10400004 */  beq     $v0, $zero, .L80919744     
/* 03D24 80919734 8FA40020 */  lw      $a0, 0x0020($sp)           
/* 03D28 80919738 240E0001 */  addiu   $t6, $zero, 0x0001         ## $t6 = 00000001
/* 03D2C 8091973C 10000014 */  beq     $zero, $zero, .L80919790   
/* 03D30 80919740 A60E01B6 */  sh      $t6, 0x01B6($s0)           ## 000001B6
.L80919744:
/* 03D34 80919744 0C0295B2 */  jal     Animation_IsOnFrame              
/* 03D38 80919748 3C0541F0 */  lui     $a1, 0x41F0                ## $a1 = 41F00000
/* 03D3C 8091974C 10400004 */  beq     $v0, $zero, .L80919760     
/* 03D40 80919750 8FA40020 */  lw      $a0, 0x0020($sp)           
/* 03D44 80919754 240F0001 */  addiu   $t7, $zero, 0x0001         ## $t7 = 00000001
/* 03D48 80919758 1000000D */  beq     $zero, $zero, .L80919790   
/* 03D4C 8091975C A60F01B6 */  sh      $t7, 0x01B6($s0)           ## 000001B6
.L80919760:
/* 03D50 80919760 0C0295B2 */  jal     Animation_IsOnFrame              
/* 03D54 80919764 3C054170 */  lui     $a1, 0x4170                ## $a1 = 41700000
/* 03D58 80919768 10400004 */  beq     $v0, $zero, .L8091977C     
/* 03D5C 8091976C 8FA40020 */  lw      $a0, 0x0020($sp)           
/* 03D60 80919770 24180001 */  addiu   $t8, $zero, 0x0001         ## $t8 = 00000001
/* 03D64 80919774 10000006 */  beq     $zero, $zero, .L80919790   
/* 03D68 80919778 A61801B6 */  sh      $t8, 0x01B6($s0)           ## 000001B6
.L8091977C:
/* 03D6C 8091977C 0C0295B2 */  jal     Animation_IsOnFrame              
/* 03D70 80919780 3C054180 */  lui     $a1, 0x4180                ## $a1 = 41800000
/* 03D74 80919784 10400002 */  beq     $v0, $zero, .L80919790     
/* 03D78 80919788 24190001 */  addiu   $t9, $zero, 0x0001         ## $t9 = 00000001
/* 03D7C 8091978C A61901B6 */  sh      $t9, 0x01B6($s0)           ## 000001B6
.L80919790:
/* 03D80 80919790 8FA40020 */  lw      $a0, 0x0020($sp)           
/* 03D84 80919794 0C0295B2 */  jal     Animation_IsOnFrame              
/* 03D88 80919798 3C054170 */  lui     $a1, 0x4170                ## $a1 = 41700000
/* 03D8C 8091979C 10400008 */  beq     $v0, $zero, .L809197C0     
/* 03D90 809197A0 8FA40020 */  lw      $a0, 0x0020($sp)           
/* 03D94 809197A4 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 03D98 809197A8 8FA5002C */  lw      $a1, 0x002C($sp)           
/* 03D9C 809197AC 24060001 */  addiu   $a2, $zero, 0x0001         ## $a2 = 00000001
/* 03DA0 809197B0 0C24577E */  jal     func_80915DF8              
/* 03DA4 809197B4 24070003 */  addiu   $a3, $zero, 0x0003         ## $a3 = 00000003
/* 03DA8 809197B8 1000000A */  beq     $zero, $zero, .L809197E4   
/* 03DAC 809197BC 86080194 */  lh      $t0, 0x0194($s0)           ## 00000194
.L809197C0:
/* 03DB0 809197C0 0C0295B2 */  jal     Animation_IsOnFrame              
/* 03DB4 809197C4 3C0541F0 */  lui     $a1, 0x41F0                ## $a1 = 41F00000
/* 03DB8 809197C8 10400005 */  beq     $v0, $zero, .L809197E0     
/* 03DBC 809197CC 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 03DC0 809197D0 8FA5002C */  lw      $a1, 0x002C($sp)           
/* 03DC4 809197D4 24060002 */  addiu   $a2, $zero, 0x0002         ## $a2 = 00000002
/* 03DC8 809197D8 0C24577E */  jal     func_80915DF8              
/* 03DCC 809197DC 24070003 */  addiu   $a3, $zero, 0x0003         ## $a3 = 00000003
.L809197E0:
/* 03DD0 809197E0 86080194 */  lh      $t0, 0x0194($s0)           ## 00000194
.L809197E4:
/* 03DD4 809197E4 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 03DD8 809197E8 3109003F */  andi    $t1, $t0, 0x003F           ## $t1 = 00000000
/* 03DDC 809197EC 55200004 */  bnel    $t1, $zero, .L80919800     
/* 03DE0 809197F0 860A01B6 */  lh      $t2, 0x01B6($s0)           ## 000001B6
/* 03DE4 809197F4 0C00BE0A */  jal     Audio_PlayActorSound2
              
/* 03DE8 809197F8 2405380F */  addiu   $a1, $zero, 0x380F         ## $a1 = 0000380F
/* 03DEC 809197FC 860A01B6 */  lh      $t2, 0x01B6($s0)           ## 000001B6
.L80919800:
/* 03DF0 80919800 8FAB002C */  lw      $t3, 0x002C($sp)           
/* 03DF4 80919804 15400042 */  bne     $t2, $zero, .L80919910     
/* 03DF8 80919808 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 03DFC 8091980C 0C00B69E */  jal     func_8002DA78              
/* 03E00 80919810 8D651C44 */  lw      $a1, 0x1C44($t3)           ## 00001C44
/* 03E04 80919814 A7A20026 */  sh      $v0, 0x0026($sp)           
/* 03E08 80919818 86030196 */  lh      $v1, 0x0196($s0)           ## 00000196
/* 03E0C 8091981C 3C014316 */  lui     $at, 0x4316                ## $at = 43160000
/* 03E10 80919820 50600019 */  beql    $v1, $zero, .L80919888     
/* 03E14 80919824 860D01D4 */  lh      $t5, 0x01D4($s0)           ## 000001D4
/* 03E18 80919828 C6040090 */  lwc1    $f4, 0x0090($s0)           ## 00000090
/* 03E1C 8091982C 44813000 */  mtc1    $at, $f6                   ## $f6 = 150.00
/* 03E20 80919830 246CFFFF */  addiu   $t4, $v1, 0xFFFF           ## $t4 = FFFFFFFF
/* 03E24 80919834 A60C0196 */  sh      $t4, 0x0196($s0)           ## 00000196
/* 03E28 80919838 4606203C */  c.lt.s  $f4, $f6                   
/* 03E2C 8091983C 00000000 */  nop
/* 03E30 80919840 45020004 */  bc1fl   .L80919854                 
/* 03E34 80919844 3C054055 */  lui     $a1, 0x4055                ## $a1 = 40550000
/* 03E38 80919848 0C2459B6 */  jal     func_809166D8              
/* 03E3C 8091984C 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 03E40 80919850 3C054055 */  lui     $a1, 0x4055                ## $a1 = 40550000
.L80919854:
/* 03E44 80919854 34A55555 */  ori     $a1, $a1, 0x5555           ## $a1 = 40555555
/* 03E48 80919858 26040068 */  addiu   $a0, $s0, 0x0068           ## $a0 = 00000068
/* 03E4C 8091985C 3C063F00 */  lui     $a2, 0x3F00                ## $a2 = 3F000000
/* 03E50 80919860 0C01E107 */  jal     Math_SmoothScaleMaxF
              
/* 03E54 80919864 3C074000 */  lui     $a3, 0x4000                ## $a3 = 40000000
/* 03E58 80919868 26040032 */  addiu   $a0, $s0, 0x0032           ## $a0 = 00000032
/* 03E5C 8091986C 87A50026 */  lh      $a1, 0x0026($sp)           
/* 03E60 80919870 24060005 */  addiu   $a2, $zero, 0x0005         ## $a2 = 00000005
/* 03E64 80919874 0C01E1EF */  jal     Math_SmoothScaleMaxS
              
/* 03E68 80919878 240703E8 */  addiu   $a3, $zero, 0x03E8         ## $a3 = 000003E8
/* 03E6C 8091987C 10000025 */  beq     $zero, $zero, .L80919914   
/* 03E70 80919880 96020088 */  lhu     $v0, 0x0088($s0)           ## 00000088
/* 03E74 80919884 860D01D4 */  lh      $t5, 0x01D4($s0)           ## 000001D4
.L80919888:
/* 03E78 80919888 3C0540D5 */  lui     $a1, 0x40D5                ## $a1 = 40D50000
/* 03E7C 8091988C 34A55555 */  ori     $a1, $a1, 0x5555           ## $a1 = 40D55555
/* 03E80 80919890 11A00010 */  beq     $t5, $zero, .L809198D4     
/* 03E84 80919894 26040068 */  addiu   $a0, $s0, 0x0068           ## $a0 = 00000068
/* 03E88 80919898 26040068 */  addiu   $a0, $s0, 0x0068           ## $a0 = 00000068
/* 03E8C 8091989C 3C05C120 */  lui     $a1, 0xC120                ## $a1 = C1200000
/* 03E90 809198A0 3C063F00 */  lui     $a2, 0x3F00                ## $a2 = 3F000000
/* 03E94 809198A4 0C01E107 */  jal     Math_SmoothScaleMaxF
              
/* 03E98 809198A8 3C074000 */  lui     $a3, 0x4000                ## $a3 = 40000000
/* 03E9C 809198AC 3C01C040 */  lui     $at, 0xC040                ## $at = C0400000
/* 03EA0 809198B0 44814000 */  mtc1    $at, $f8                   ## $f8 = -3.00
/* 03EA4 809198B4 860E01D4 */  lh      $t6, 0x01D4($s0)           ## 000001D4
/* 03EA8 809198B8 24010001 */  addiu   $at, $zero, 0x0001         ## $at = 00000001
/* 03EAC 809198BC E6080168 */  swc1    $f8, 0x0168($s0)           ## 00000168
/* 03EB0 809198C0 55C1000F */  bnel    $t6, $at, .L80919900       
/* 03EB4 809198C4 26040032 */  addiu   $a0, $s0, 0x0032           ## $a0 = 00000032
/* 03EB8 809198C8 44805000 */  mtc1    $zero, $f10                ## $f10 = 0.00
/* 03EBC 809198CC 1000000B */  beq     $zero, $zero, .L809198FC   
/* 03EC0 809198D0 E60A0068 */  swc1    $f10, 0x0068($s0)          ## 00000068
.L809198D4:
/* 03EC4 809198D4 3C063F00 */  lui     $a2, 0x3F00                ## $a2 = 3F000000
/* 03EC8 809198D8 0C01E107 */  jal     Math_SmoothScaleMaxF
              
/* 03ECC 809198DC 3C074000 */  lui     $a3, 0x4000                ## $a3 = 40000000
/* 03ED0 809198E0 3C014000 */  lui     $at, 0x4000                ## $at = 40000000
/* 03ED4 809198E4 44818000 */  mtc1    $at, $f16                  ## $f16 = 2.00
/* 03ED8 809198E8 34018000 */  ori     $at, $zero, 0x8000         ## $at = 00008000
/* 03EDC 809198EC E6100168 */  swc1    $f16, 0x0168($s0)          ## 00000168
/* 03EE0 809198F0 87AF0026 */  lh      $t7, 0x0026($sp)           
/* 03EE4 809198F4 01E1C021 */  addu    $t8, $t7, $at              
/* 03EE8 809198F8 A7B80026 */  sh      $t8, 0x0026($sp)           
.L809198FC:
/* 03EEC 809198FC 26040032 */  addiu   $a0, $s0, 0x0032           ## $a0 = 00000032
.L80919900:
/* 03EF0 80919900 87A50026 */  lh      $a1, 0x0026($sp)           
/* 03EF4 80919904 24060003 */  addiu   $a2, $zero, 0x0003         ## $a2 = 00000003
/* 03EF8 80919908 0C01E1EF */  jal     Math_SmoothScaleMaxS
              
/* 03EFC 8091990C 240709C4 */  addiu   $a3, $zero, 0x09C4         ## $a3 = 000009C4
.L80919910:
/* 03F00 80919910 96020088 */  lhu     $v0, 0x0088($s0)           ## 00000088
.L80919914:
/* 03F04 80919914 30590001 */  andi    $t9, $v0, 0x0001           ## $t9 = 00000000
/* 03F08 80919918 53200005 */  beql    $t9, $zero, .L80919930     
/* 03F0C 8091991C 30480008 */  andi    $t0, $v0, 0x0008           ## $t0 = 00000000
/* 03F10 80919920 44809000 */  mtc1    $zero, $f18                ## $f18 = 0.00
/* 03F14 80919924 96020088 */  lhu     $v0, 0x0088($s0)           ## 00000088
/* 03F18 80919928 E6120060 */  swc1    $f18, 0x0060($s0)          ## 00000060
/* 03F1C 8091992C 30480008 */  andi    $t0, $v0, 0x0008           ## $t0 = 00000000
.L80919930:
/* 03F20 80919930 51000004 */  beql    $t0, $zero, .L80919944     
/* 03F24 80919934 860901D2 */  lh      $t1, 0x01D2($s0)           ## 000001D2
/* 03F28 80919938 0C2458E5 */  jal     func_80916394              
/* 03F2C 8091993C 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 03F30 80919940 860901D2 */  lh      $t1, 0x01D2($s0)           ## 000001D2
.L80919944:
/* 03F34 80919944 55200007 */  bnel    $t1, $zero, .L80919964     
/* 03F38 80919948 8FBF001C */  lw      $ra, 0x001C($sp)           
/* 03F3C 8091994C 860A0196 */  lh      $t2, 0x0196($s0)           ## 00000196
/* 03F40 80919950 51400004 */  beql    $t2, $zero, .L80919964     
/* 03F44 80919954 8FBF001C */  lw      $ra, 0x001C($sp)           
/* 03F48 80919958 0C245829 */  jal     func_809160A4              
/* 03F4C 8091995C 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 03F50 80919960 8FBF001C */  lw      $ra, 0x001C($sp)           
.L80919964:
/* 03F54 80919964 8FB00018 */  lw      $s0, 0x0018($sp)           
/* 03F58 80919968 27BD0028 */  addiu   $sp, $sp, 0x0028           ## $sp = 00000000
/* 03F5C 8091996C 03E00008 */  jr      $ra                        
/* 03F60 80919970 00000000 */  nop
