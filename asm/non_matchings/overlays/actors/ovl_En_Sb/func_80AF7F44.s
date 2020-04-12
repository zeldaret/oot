.rdata
glabel D_80AF8A60
    .asciz "アタァ〜ック！！\n"
    .balign 4

.late_rodata
glabel D_80AF8A98
    .float -0.35

.text
glabel func_80AF7F44
/* 00754 80AF7F44 27BDFFD0 */  addiu   $sp, $sp, 0xFFD0           ## $sp = FFFFFFD0
/* 00758 80AF7F48 AFBF0024 */  sw      $ra, 0x0024($sp)           
/* 0075C 80AF7F4C AFB00020 */  sw      $s0, 0x0020($sp)           
/* 00760 80AF7F50 AFA50034 */  sw      $a1, 0x0034($sp)           
/* 00764 80AF7F54 84850200 */  lh      $a1, 0x0200($a0)           ## 00000200
/* 00768 80AF7F58 34018000 */  ori     $at, $zero, 0x8000         ## $at = 00008000
/* 0076C 80AF7F5C 00808025 */  or      $s0, $a0, $zero            ## $s0 = 00000000
/* 00770 80AF7F60 00A12821 */  addu    $a1, $a1, $at              
/* 00774 80AF7F64 00052C00 */  sll     $a1, $a1, 16               
/* 00778 80AF7F68 00052C03 */  sra     $a1, $a1, 16               
/* 0077C 80AF7F6C 240E000A */  addiu   $t6, $zero, 0x000A         ## $t6 = 0000000A
/* 00780 80AF7F70 AFAE0010 */  sw      $t6, 0x0010($sp)           
/* 00784 80AF7F74 A7A5002E */  sh      $a1, 0x002E($sp)           
/* 00788 80AF7F78 248400B6 */  addiu   $a0, $a0, 0x00B6           ## $a0 = 000000B6
/* 0078C 80AF7F7C 24060001 */  addiu   $a2, $zero, 0x0001         ## $a2 = 00000001
/* 00790 80AF7F80 0C01E1A7 */  jal     Math_SmoothScaleMaxMinS
              
/* 00794 80AF7F84 24071F40 */  addiu   $a3, $zero, 0x1F40         ## $a3 = 00001F40
/* 00798 80AF7F88 87A5002E */  lh      $a1, 0x002E($sp)           
/* 0079C 80AF7F8C 860F00B6 */  lh      $t7, 0x00B6($s0)           ## 000000B6
/* 007A0 80AF7F90 54AF0026 */  bnel    $a1, $t7, .L80AF802C       
/* 007A4 80AF7F94 8FBF0024 */  lw      $ra, 0x0024($sp)           
/* 007A8 80AF7F98 44802000 */  mtc1    $zero, $f4                 ## $f4 = 0.00
/* 007AC 80AF7F9C C6060084 */  lwc1    $f6, 0x0084($s0)           ## 00000084
/* 007B0 80AF7FA0 86180200 */  lh      $t8, 0x0200($s0)           ## 00000200
/* 007B4 80AF7FA4 3C014000 */  lui     $at, 0x4000                ## $at = 40000000
/* 007B8 80AF7FA8 4606203C */  c.lt.s  $f4, $f6                   
/* 007BC 80AF7FAC 02002825 */  or      $a1, $s0, $zero            ## $a1 = 00000000
/* 007C0 80AF7FB0 A6180032 */  sh      $t8, 0x0032($s0)           ## 00000032
/* 007C4 80AF7FB4 4502000C */  bc1fl   .L80AF7FE8                 
/* 007C8 80AF7FB8 44819000 */  mtc1    $at, $f18                  ## $f18 = 2.00
/* 007CC 80AF7FBC 3C014040 */  lui     $at, 0x4040                ## $at = 40400000
/* 007D0 80AF7FC0 44814000 */  mtc1    $at, $f8                   ## $f8 = 3.00
/* 007D4 80AF7FC4 3C0140A0 */  lui     $at, 0x40A0                ## $at = 40A00000
/* 007D8 80AF7FC8 44815000 */  mtc1    $at, $f10                  ## $f10 = 5.00
/* 007DC 80AF7FCC 3C0180B0 */  lui     $at, %hi(D_80AF8A98)       ## $at = 80B00000
/* 007E0 80AF7FD0 E6080060 */  swc1    $f8, 0x0060($s0)           ## 00000060
/* 007E4 80AF7FD4 E60A0068 */  swc1    $f10, 0x0068($s0)          ## 00000068
/* 007E8 80AF7FD8 C4308A98 */  lwc1    $f16, %lo(D_80AF8A98)($at) 
/* 007EC 80AF7FDC 10000009 */  beq     $zero, $zero, .L80AF8004   
/* 007F0 80AF7FE0 E610006C */  swc1    $f16, 0x006C($s0)          ## 0000006C
/* 007F4 80AF7FE4 44819000 */  mtc1    $at, $f18                  ## $f18 = -0.00
.L80AF7FE8:
/* 007F8 80AF7FE8 3C0140C0 */  lui     $at, 0x40C0                ## $at = 40C00000
/* 007FC 80AF7FEC 44812000 */  mtc1    $at, $f4                   ## $f4 = 6.00
/* 00800 80AF7FF0 3C01C000 */  lui     $at, 0xC000                ## $at = C0000000
/* 00804 80AF7FF4 44813000 */  mtc1    $at, $f6                   ## $f6 = -2.00
/* 00808 80AF7FF8 E6120060 */  swc1    $f18, 0x0060($s0)          ## 00000060
/* 0080C 80AF7FFC E6040068 */  swc1    $f4, 0x0068($s0)           ## 00000068
/* 00810 80AF8000 E606006C */  swc1    $f6, 0x006C($s0)           ## 0000006C
.L80AF8004:
/* 00814 80AF8004 0C2BDE43 */  jal     func_80AF790C              
/* 00818 80AF8008 8FA40034 */  lw      $a0, 0x0034($sp)           
/* 0081C 80AF800C 24190003 */  addiu   $t9, $zero, 0x0003         ## $t9 = 00000003
/* 00820 80AF8010 A6190202 */  sh      $t9, 0x0202($s0)           ## 00000202
/* 00824 80AF8014 0C2BDEC9 */  jal     func_80AF7B24              
/* 00828 80AF8018 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 0082C 80AF801C 3C0480B0 */  lui     $a0, %hi(D_80AF8A60)       ## $a0 = 80B00000
/* 00830 80AF8020 0C00084C */  jal     osSyncPrintf
              
/* 00834 80AF8024 24848A60 */  addiu   $a0, $a0, %lo(D_80AF8A60)  ## $a0 = 80AF8A60
/* 00838 80AF8028 8FBF0024 */  lw      $ra, 0x0024($sp)           
.L80AF802C:
/* 0083C 80AF802C 8FB00020 */  lw      $s0, 0x0020($sp)           
/* 00840 80AF8030 27BD0030 */  addiu   $sp, $sp, 0x0030           ## $sp = 00000000
/* 00844 80AF8034 03E00008 */  jr      $ra                        
/* 00848 80AF8038 00000000 */  nop
