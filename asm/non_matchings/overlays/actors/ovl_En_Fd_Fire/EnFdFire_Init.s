glabel EnFdFire_Init
/* 0012C 80A0E5DC 27BDFFD0 */  addiu   $sp, $sp, 0xFFD0           ## $sp = FFFFFFD0
/* 00130 80A0E5E0 AFBF001C */  sw      $ra, 0x001C($sp)           
/* 00134 80A0E5E4 AFB00018 */  sw      $s0, 0x0018($sp)           
/* 00138 80A0E5E8 AFA50034 */  sw      $a1, 0x0034($sp)           
/* 0013C 80A0E5EC 8CAF1C44 */  lw      $t7, 0x1C44($a1)           ## 00001C44
/* 00140 80A0E5F0 00808025 */  or      $s0, $a0, $zero            ## $s0 = 00000000
/* 00144 80A0E5F4 3C068003 */  lui     $a2, 0x8003                ## $a2 = 80030000
/* 00148 80A0E5F8 24C6B5EC */  addiu   $a2, $a2, 0xB5EC           ## $a2 = 8002B5EC
/* 0014C 80A0E5FC 248400B4 */  addiu   $a0, $a0, 0x00B4           ## $a0 = 000000B4
/* 00150 80A0E600 24050000 */  addiu   $a1, $zero, 0x0000         ## $a1 = 00000000
/* 00154 80A0E604 3C0741A0 */  lui     $a3, 0x41A0                ## $a3 = 41A00000
/* 00158 80A0E608 0C00AC78 */  jal     ActorShape_Init
              
/* 0015C 80A0E60C AFAF0024 */  sw      $t7, 0x0024($sp)           
/* 00160 80A0E610 26050150 */  addiu   $a1, $s0, 0x0150           ## $a1 = 00000150
/* 00164 80A0E614 AFA50020 */  sw      $a1, 0x0020($sp)           
/* 00168 80A0E618 0C0170D9 */  jal     ActorCollider_AllocCylinder
              
/* 0016C 80A0E61C 8FA40034 */  lw      $a0, 0x0034($sp)           
/* 00170 80A0E620 3C0780A1 */  lui     $a3, %hi(D_80A0F030)       ## $a3 = 80A10000
/* 00174 80A0E624 8FA50020 */  lw      $a1, 0x0020($sp)           
/* 00178 80A0E628 24E7F030 */  addiu   $a3, $a3, %lo(D_80A0F030)  ## $a3 = 80A0F030
/* 0017C 80A0E62C 8FA40034 */  lw      $a0, 0x0034($sp)           
/* 00180 80A0E630 0C01712B */  jal     ActorCollider_InitCylinder
              
/* 00184 80A0E634 02003025 */  or      $a2, $s0, $zero            ## $a2 = 00000000
/* 00188 80A0E638 3C0580A1 */  lui     $a1, %hi(D_80A0F068)       ## $a1 = 80A10000
/* 0018C 80A0E63C 3C0680A1 */  lui     $a2, %hi(D_80A0F05C)       ## $a2 = 80A10000
/* 00190 80A0E640 24C6F05C */  addiu   $a2, $a2, %lo(D_80A0F05C)  ## $a2 = 80A0F05C
/* 00194 80A0E644 24A5F068 */  addiu   $a1, $a1, %lo(D_80A0F068)  ## $a1 = 80A0F068
/* 00198 80A0E648 0C0187BF */  jal     func_80061EFC              
/* 0019C 80A0E64C 26040098 */  addiu   $a0, $s0, 0x0098           ## $a0 = 00000098
/* 001A0 80A0E650 8E180004 */  lw      $t8, 0x0004($s0)           ## 00000004
/* 001A4 80A0E654 2401FFFE */  addiu   $at, $zero, 0xFFFE         ## $at = FFFFFFFE
/* 001A8 80A0E658 26040024 */  addiu   $a0, $s0, 0x0024           ## $a0 = 00000024
/* 001AC 80A0E65C 0301C824 */  and     $t9, $t8, $at              
/* 001B0 80A0E660 AE190004 */  sw      $t9, 0x0004($s0)           ## 00000004
/* 001B4 80A0E664 3C0180A1 */  lui     $at, %hi(D_80A0F12C)       ## $at = 80A10000
/* 001B8 80A0E668 C424F12C */  lwc1    $f4, %lo(D_80A0F12C)($at)  
/* 001BC 80A0E66C 3C0140A0 */  lui     $at, 0x40A0                ## $at = 40A00000
/* 001C0 80A0E670 44813000 */  mtc1    $at, $f6                   ## $f6 = 5.00
/* 001C4 80A0E674 3C014140 */  lui     $at, 0x4140                ## $at = 41400000
/* 001C8 80A0E678 44814000 */  mtc1    $at, $f8                   ## $f8 = 12.00
/* 001CC 80A0E67C E604006C */  swc1    $f4, 0x006C($s0)           ## 0000006C
/* 001D0 80A0E680 E6060068 */  swc1    $f6, 0x0068($s0)           ## 00000068
/* 001D4 80A0E684 E6080060 */  swc1    $f8, 0x0060($s0)           ## 00000060
/* 001D8 80A0E688 8FA50024 */  lw      $a1, 0x0024($sp)           
/* 001DC 80A0E68C 0C01DFE4 */  jal     Math_Vec3f_DistXYZ
              
/* 001E0 80A0E690 24A50024 */  addiu   $a1, $a1, 0x0024           ## $a1 = 00000024
/* 001E4 80A0E694 3C014040 */  lui     $at, 0x4040                ## $at = 40400000
/* 001E8 80A0E698 44815000 */  mtc1    $at, $f10                  ## $f10 = 3.00
/* 001EC 80A0E69C 3C0140A0 */  lui     $at, 0x40A0                ## $at = 40A00000
/* 001F0 80A0E6A0 44816000 */  mtc1    $at, $f12                  ## $f12 = 5.00
/* 001F4 80A0E6A4 E600019C */  swc1    $f0, 0x019C($s0)           ## 0000019C
/* 001F8 80A0E6A8 0C00CFBE */  jal     Math_Rand_ZeroFloat
              
/* 001FC 80A0E6AC E60A01A0 */  swc1    $f10, 0x01A0($s0)          ## 000001A0
/* 00200 80A0E6B0 4600040D */  trunc.w.s $f16, $f0                  
/* 00204 80A0E6B4 3C0D80A1 */  lui     $t5, %hi(func_80A0E70C)    ## $t5 = 80A10000
/* 00208 80A0E6B8 25ADE70C */  addiu   $t5, $t5, %lo(func_80A0E70C) ## $t5 = 80A0E70C
/* 0020C 80A0E6BC AE0D014C */  sw      $t5, 0x014C($s0)           ## 0000014C
/* 00210 80A0E6C0 440B8000 */  mfc1    $t3, $f16                  
/* 00214 80A0E6C4 00000000 */  nop
/* 00218 80A0E6C8 256CFFE7 */  addiu   $t4, $t3, 0xFFE7           ## $t4 = FFFFFFE7
/* 0021C 80A0E6CC A60C01A8 */  sh      $t4, 0x01A8($s0)           ## 000001A8
/* 00220 80A0E6D0 8FBF001C */  lw      $ra, 0x001C($sp)           
/* 00224 80A0E6D4 8FB00018 */  lw      $s0, 0x0018($sp)           
/* 00228 80A0E6D8 27BD0030 */  addiu   $sp, $sp, 0x0030           ## $sp = 00000000
/* 0022C 80A0E6DC 03E00008 */  jr      $ra                        
/* 00230 80A0E6E0 00000000 */  nop


