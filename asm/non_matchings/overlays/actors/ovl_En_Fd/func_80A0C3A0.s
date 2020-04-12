.late_rodata
glabel D_80A0E1B8
    .float 0.01

glabel D_80A0E1BC
    .float 0.01

.text
glabel func_80A0C3A0
/* 00CE0 80A0C3A0 27BDFFE0 */  addiu   $sp, $sp, 0xFFE0           ## $sp = FFFFFFE0
/* 00CE4 80A0C3A4 00803825 */  or      $a3, $a0, $zero            ## $a3 = 00000000
/* 00CE8 80A0C3A8 AFBF0014 */  sw      $ra, 0x0014($sp)           
/* 00CEC 80A0C3AC AFA50024 */  sw      $a1, 0x0024($sp)           
/* 00CF0 80A0C3B0 8CE5015C */  lw      $a1, 0x015C($a3)           ## 0000015C
/* 00CF4 80A0C3B4 2484014C */  addiu   $a0, $a0, 0x014C           ## $a0 = 0000014C
/* 00CF8 80A0C3B8 AFA4001C */  sw      $a0, 0x001C($sp)           
/* 00CFC 80A0C3BC 0C0295B2 */  jal     func_800A56C8              
/* 00D00 80A0C3C0 AFA70020 */  sw      $a3, 0x0020($sp)           
/* 00D04 80A0C3C4 8FA4001C */  lw      $a0, 0x001C($sp)           
/* 00D08 80A0C3C8 1040001A */  beq     $v0, $zero, .L80A0C434     
/* 00D0C 80A0C3CC 8FA70020 */  lw      $a3, 0x0020($sp)           
/* 00D10 80A0C3D0 3C0140C0 */  lui     $at, 0x40C0                ## $at = 40C00000
/* 00D14 80A0C3D4 44812000 */  mtc1    $at, $f4                   ## $f4 = 6.00
/* 00D18 80A0C3D8 3C0180A1 */  lui     $at, %hi(D_80A0E1B8)       ## $at = 80A10000
/* 00D1C 80A0C3DC 84EE0032 */  lh      $t6, 0x0032($a3)           ## 00000032
/* 00D20 80A0C3E0 E4E40060 */  swc1    $f4, 0x0060($a3)           ## 00000060
/* 00D24 80A0C3E4 C426E1B8 */  lwc1    $f6, %lo(D_80A0E1B8)($at)  
/* 00D28 80A0C3E8 8CF80004 */  lw      $t8, 0x0004($a3)           ## 00000004
/* 00D2C 80A0C3EC 3C014100 */  lui     $at, 0x4100                ## $at = 41000000
/* 00D30 80A0C3F0 44814000 */  mtc1    $at, $f8                   ## $f8 = 8.00
/* 00D34 80A0C3F4 39CF8000 */  xori    $t7, $t6, 0x8000           ## $t7 = FFFF8000
/* 00D38 80A0C3F8 37190001 */  ori     $t9, $t8, 0x0001           ## $t9 = 00000001
/* 00D3C 80A0C3FC A4EF0032 */  sh      $t7, 0x0032($a3)           ## 00000032
/* 00D40 80A0C400 ACF90004 */  sw      $t9, 0x0004($a3)           ## 00000004
/* 00D44 80A0C404 3C0580A1 */  lui     $a1, %hi(D_80A0DFEC)       ## $a1 = 80A10000
/* 00D48 80A0C408 E4E60054 */  swc1    $f6, 0x0054($a3)           ## 00000054
/* 00D4C 80A0C40C E4E80068 */  swc1    $f8, 0x0068($a3)           ## 00000068
/* 00D50 80A0C410 AFA70020 */  sw      $a3, 0x0020($sp)           
/* 00D54 80A0C414 24A5DFEC */  addiu   $a1, $a1, %lo(D_80A0DFEC)  ## $a1 = 80A0DFEC
/* 00D58 80A0C418 0C00D3B0 */  jal     func_80034EC0              
/* 00D5C 80A0C41C 24060001 */  addiu   $a2, $zero, 0x0001         ## $a2 = 00000001
/* 00D60 80A0C420 8FA70020 */  lw      $a3, 0x0020($sp)           
/* 00D64 80A0C424 3C0880A1 */  lui     $t0, %hi(func_80A0C474)    ## $t0 = 80A10000
/* 00D68 80A0C428 2508C474 */  addiu   $t0, $t0, %lo(func_80A0C474) ## $t0 = 80A0C474
/* 00D6C 80A0C42C 1000000D */  beq     $zero, $zero, .L80A0C464   
/* 00D70 80A0C430 ACE80190 */  sw      $t0, 0x0190($a3)           ## 00000190
.L80A0C434:
/* 00D74 80A0C434 3C0180A1 */  lui     $at, %hi(D_80A0E1BC)       ## $at = 80A10000
/* 00D78 80A0C438 C42AE1BC */  lwc1    $f10, %lo(D_80A0E1BC)($at) 
/* 00D7C 80A0C43C C4F00160 */  lwc1    $f16, 0x0160($a3)          ## 00000160
/* 00D80 80A0C440 C4E40164 */  lwc1    $f4, 0x0164($a3)           ## 00000164
/* 00D84 80A0C444 84E900B6 */  lh      $t1, 0x00B6($a3)           ## 000000B6
/* 00D88 80A0C448 46105483 */  div.s   $f18, $f10, $f16           
/* 00D8C 80A0C44C 252A2000 */  addiu   $t2, $t1, 0x2000           ## $t2 = 00002000
/* 00D90 80A0C450 A4EA00B6 */  sh      $t2, 0x00B6($a3)           ## 000000B6
/* 00D94 80A0C454 84EB00B6 */  lh      $t3, 0x00B6($a3)           ## 000000B6
/* 00D98 80A0C458 A4EB0032 */  sh      $t3, 0x0032($a3)           ## 00000032
/* 00D9C 80A0C45C 46122182 */  mul.s   $f6, $f4, $f18             
/* 00DA0 80A0C460 E4E60054 */  swc1    $f6, 0x0054($a3)           ## 00000054
.L80A0C464:
/* 00DA4 80A0C464 8FBF0014 */  lw      $ra, 0x0014($sp)           
/* 00DA8 80A0C468 27BD0020 */  addiu   $sp, $sp, 0x0020           ## $sp = 00000000
/* 00DAC 80A0C46C 03E00008 */  jr      $ra                        
/* 00DB0 80A0C470 00000000 */  nop
