.late_rodata
.late_rodata_alignment 8
glabel jtbl_80AE49C0
.word L80AE45B4
.word L80AE45F8
.word L80AE45F8
.word L80AE45E4
.word L80AE45F8
.word L80AE45F4
.word L80AE45F8
.word L80AE45F8
.word L80AE45DC
.word L80AE45F8
.word L80AE45EC
.word L80AE45F8
.word L80AE45F8
.word L80AE45CC
.word L80AE45F8
.word L80AE45F8
.word L80AE45F8
.word L80AE45C4
.word L80AE45F8
.word L80AE45F8
.word L80AE45F8
.word L80AE45BC
.word L80AE45F8
.word L80AE45AC
.word L80AE45D4

.text
glabel func_80AE4520
/* 02120 80AE4520 27BDFFC8 */  addiu   $sp, $sp, 0xFFC8           ## $sp = FFFFFFC8
/* 02124 80AE4524 3C0E80AE */  lui     $t6, %hi(D_80AE4940)       ## $t6 = 80AE0000
/* 02128 80AE4528 AFBF0014 */  sw      $ra, 0x0014($sp)           
/* 0212C 80AE452C AFA40038 */  sw      $a0, 0x0038($sp)           
/* 02130 80AE4530 AFA60040 */  sw      $a2, 0x0040($sp)           
/* 02134 80AE4534 AFA70044 */  sw      $a3, 0x0044($sp)           
/* 02138 80AE4538 25CE4940 */  addiu   $t6, $t6, %lo(D_80AE4940)  ## $t6 = 80AE4940
/* 0213C 80AE453C 8DD80000 */  lw      $t8, 0x0000($t6)           ## 80AE4940
/* 02140 80AE4540 8FA60048 */  lw      $a2, 0x0048($sp)           
/* 02144 80AE4544 27A4002C */  addiu   $a0, $sp, 0x002C           ## $a0 = FFFFFFF4
/* 02148 80AE4548 AC980000 */  sw      $t8, 0x0000($a0)           ## FFFFFFF4
/* 0214C 80AE454C 8DCF0004 */  lw      $t7, 0x0004($t6)           ## 80AE4944
/* 02150 80AE4550 24ABFFFF */  addiu   $t3, $a1, 0xFFFF           ## $t3 = FFFFFFFF
/* 02154 80AE4554 2403FFFF */  addiu   $v1, $zero, 0xFFFF         ## $v1 = FFFFFFFF
/* 02158 80AE4558 AC8F0004 */  sw      $t7, 0x0004($a0)           ## FFFFFFF8
/* 0215C 80AE455C 8DD80008 */  lw      $t8, 0x0008($t6)           ## 80AE4948
/* 02160 80AE4560 2D610019 */  sltiu   $at, $t3, 0x0019           
/* 02164 80AE4564 AC980008 */  sw      $t8, 0x0008($a0)           ## FFFFFFFC
/* 02168 80AE4568 90D9031A */  lbu     $t9, 0x031A($a2)           ## 0000031A
/* 0216C 80AE456C 17200008 */  bne     $t9, $zero, .L80AE4590     
/* 02170 80AE4570 00000000 */  nop
/* 02174 80AE4574 90C80114 */  lbu     $t0, 0x0114($a2)           ## 00000114
/* 02178 80AE4578 51000038 */  beql    $t0, $zero, .L80AE465C     
/* 0217C 80AE457C 8FBF0014 */  lw      $ra, 0x0014($sp)           
/* 02180 80AE4580 94C90112 */  lhu     $t1, 0x0112($a2)           ## 00000112
/* 02184 80AE4584 312A4000 */  andi    $t2, $t1, 0x4000           ## $t2 = 00000000
/* 02188 80AE4588 51400034 */  beql    $t2, $zero, .L80AE465C     
/* 0218C 80AE458C 8FBF0014 */  lw      $ra, 0x0014($sp)           
.L80AE4590:
/* 02190 80AE4590 10200019 */  beq     $at, $zero, .L80AE45F8     
/* 02194 80AE4594 000B5880 */  sll     $t3, $t3,  2               
/* 02198 80AE4598 3C0180AE */  lui     $at, %hi(jtbl_80AE49C0)       ## $at = 80AE0000
/* 0219C 80AE459C 002B0821 */  addu    $at, $at, $t3              
/* 021A0 80AE45A0 8C2B49C0 */  lw      $t3, %lo(jtbl_80AE49C0)($at)  
/* 021A4 80AE45A4 01600008 */  jr      $t3                        
/* 021A8 80AE45A8 00000000 */  nop
glabel L80AE45AC
/* 021AC 80AE45AC 10000012 */  beq     $zero, $zero, .L80AE45F8   
/* 021B0 80AE45B0 00001825 */  or      $v1, $zero, $zero          ## $v1 = 00000000
glabel L80AE45B4
/* 021B4 80AE45B4 10000010 */  beq     $zero, $zero, .L80AE45F8   
/* 021B8 80AE45B8 24030001 */  addiu   $v1, $zero, 0x0001         ## $v1 = 00000001
glabel L80AE45BC
/* 021BC 80AE45BC 1000000E */  beq     $zero, $zero, .L80AE45F8   
/* 021C0 80AE45C0 24030002 */  addiu   $v1, $zero, 0x0002         ## $v1 = 00000002
glabel L80AE45C4
/* 021C4 80AE45C4 1000000C */  beq     $zero, $zero, .L80AE45F8   
/* 021C8 80AE45C8 24030003 */  addiu   $v1, $zero, 0x0003         ## $v1 = 00000003
glabel L80AE45CC
/* 021CC 80AE45CC 1000000A */  beq     $zero, $zero, .L80AE45F8   
/* 021D0 80AE45D0 24030004 */  addiu   $v1, $zero, 0x0004         ## $v1 = 00000004
glabel L80AE45D4
/* 021D4 80AE45D4 10000008 */  beq     $zero, $zero, .L80AE45F8   
/* 021D8 80AE45D8 24030005 */  addiu   $v1, $zero, 0x0005         ## $v1 = 00000005
glabel L80AE45DC
/* 021DC 80AE45DC 10000006 */  beq     $zero, $zero, .L80AE45F8   
/* 021E0 80AE45E0 24030006 */  addiu   $v1, $zero, 0x0006         ## $v1 = 00000006
glabel L80AE45E4
/* 021E4 80AE45E4 10000004 */  beq     $zero, $zero, .L80AE45F8   
/* 021E8 80AE45E8 24030007 */  addiu   $v1, $zero, 0x0007         ## $v1 = 00000007
glabel L80AE45EC
/* 021EC 80AE45EC 10000002 */  beq     $zero, $zero, .L80AE45F8   
/* 021F0 80AE45F0 24030008 */  addiu   $v1, $zero, 0x0008         ## $v1 = 00000008
glabel L80AE45F4
/* 021F4 80AE45F4 24030009 */  addiu   $v1, $zero, 0x0009         ## $v1 = 00000009
glabel L80AE45F8
.L80AE45F8:
/* 021F8 80AE45F8 04600017 */  bltz    $v1, .L80AE4658            
/* 021FC 80AE45FC 27A50018 */  addiu   $a1, $sp, 0x0018           ## $a1 = FFFFFFE0
/* 02200 80AE4600 0C0346BD */  jal     Matrix_MultVec3f              
/* 02204 80AE4604 AFA30024 */  sw      $v1, 0x0024($sp)           
/* 02208 80AE4608 C7A40018 */  lwc1    $f4, 0x0018($sp)           
/* 0220C 80AE460C 8FA30024 */  lw      $v1, 0x0024($sp)           
/* 02210 80AE4610 8FA60048 */  lw      $a2, 0x0048($sp)           
/* 02214 80AE4614 4600218D */  trunc.w.s $f6, $f4                   
/* 02218 80AE4618 00036080 */  sll     $t4, $v1,  2               
/* 0221C 80AE461C 01836023 */  subu    $t4, $t4, $v1              
/* 02220 80AE4620 000C6040 */  sll     $t4, $t4,  1               
/* 02224 80AE4624 440E3000 */  mfc1    $t6, $f6                   
/* 02228 80AE4628 00CC1021 */  addu    $v0, $a2, $t4              
/* 0222C 80AE462C A44E014C */  sh      $t6, 0x014C($v0)           ## 0000014C
/* 02230 80AE4630 C7A8001C */  lwc1    $f8, 0x001C($sp)           
/* 02234 80AE4634 4600428D */  trunc.w.s $f10, $f8                  
/* 02238 80AE4638 44185000 */  mfc1    $t8, $f10                  
/* 0223C 80AE463C 00000000 */  nop
/* 02240 80AE4640 A458014E */  sh      $t8, 0x014E($v0)           ## 0000014E
/* 02244 80AE4644 C7B00020 */  lwc1    $f16, 0x0020($sp)          
/* 02248 80AE4648 4600848D */  trunc.w.s $f18, $f16                 
/* 0224C 80AE464C 44089000 */  mfc1    $t0, $f18                  
/* 02250 80AE4650 00000000 */  nop
/* 02254 80AE4654 A4480150 */  sh      $t0, 0x0150($v0)           ## 00000150
.L80AE4658:
/* 02258 80AE4658 8FBF0014 */  lw      $ra, 0x0014($sp)           
.L80AE465C:
/* 0225C 80AE465C 27BD0038 */  addiu   $sp, $sp, 0x0038           ## $sp = 00000000
/* 02260 80AE4660 03E00008 */  jr      $ra                        
/* 02264 80AE4664 00000000 */  nop
