glabel EnGm_Init
/* 00000 80A3D6E0 27BDFFE0 */  addiu   $sp, $sp, 0xFFE0           ## $sp = FFFFFFE0
/* 00004 80A3D6E4 AFA50024 */  sw      $a1, 0x0024($sp)           
/* 00008 80A3D6E8 AFBF001C */  sw      $ra, 0x001C($sp)           
/* 0000C 80A3D6EC AFB00018 */  sw      $s0, 0x0018($sp)           
/* 00010 80A3D6F0 3C0580A4 */  lui     $a1, %hi(D_80A3E37C)       ## $a1 = 80A40000
/* 00014 80A3D6F4 00808025 */  or      $s0, $a0, $zero            ## $s0 = 00000000
/* 00018 80A3D6F8 0C01E037 */  jal     Actor_ProcessInitChain
              
/* 0001C 80A3D6FC 24A5E37C */  addiu   $a1, $a1, %lo(D_80A3E37C)  ## $a1 = 80A3E37C
/* 00020 80A3D700 3C0480A4 */  lui     $a0, %hi(D_80A3E390)       ## $a0 = 80A40000
/* 00024 80A3D704 3C0580A4 */  lui     $a1, %hi(D_80A3E3B0)       ## $a1 = 80A40000
/* 00028 80A3D708 24A5E3B0 */  addiu   $a1, $a1, %lo(D_80A3E3B0)  ## $a1 = 80A3E3B0
/* 0002C 80A3D70C 2484E390 */  addiu   $a0, $a0, %lo(D_80A3E390)  ## $a0 = 80A3E390
/* 00030 80A3D710 24060085 */  addiu   $a2, $zero, 0x0085         ## $a2 = 00000085
/* 00034 80A3D714 0C00084C */  jal     osSyncPrintf
              
/* 00038 80A3D718 8607001C */  lh      $a3, 0x001C($s0)           ## 0000001C
/* 0003C 80A3D71C 8FA40024 */  lw      $a0, 0x0024($sp)           
/* 00040 80A3D720 3C010001 */  lui     $at, 0x0001                ## $at = 00010000
/* 00044 80A3D724 342117A4 */  ori     $at, $at, 0x17A4           ## $at = 000117A4
/* 00048 80A3D728 24050126 */  addiu   $a1, $zero, 0x0126         ## $a1 = 00000126
/* 0004C 80A3D72C 0C02604B */  jal     Object_GetIndex
              ## ObjectIndex
/* 00050 80A3D730 00812021 */  addu    $a0, $a0, $at              
/* 00054 80A3D734 A20202BC */  sb      $v0, 0x02BC($s0)           ## 000002BC
/* 00058 80A3D738 820E02BC */  lb      $t6, 0x02BC($s0)           ## 000002BC
/* 0005C 80A3D73C 3C0480A4 */  lui     $a0, %hi(D_80A3E3C0)       ## $a0 = 80A40000
/* 00060 80A3D740 05C1000F */  bgez    $t6, .L80A3D780            
/* 00064 80A3D744 00000000 */  nop
/* 00068 80A3D748 0C00084C */  jal     osSyncPrintf
              
/* 0006C 80A3D74C 2484E3C0 */  addiu   $a0, $a0, %lo(D_80A3E3C0)  ## $a0 = 80A3E3C0
/* 00070 80A3D750 3C0480A4 */  lui     $a0, %hi(D_80A3E3CC)       ## $a0 = 80A40000
/* 00074 80A3D754 0C00084C */  jal     osSyncPrintf
              
/* 00078 80A3D758 2484E3CC */  addiu   $a0, $a0, %lo(D_80A3E3CC)  ## $a0 = 80A3E3CC
/* 0007C 80A3D75C 3C0480A4 */  lui     $a0, %hi(D_80A3E3F4)       ## $a0 = 80A40000
/* 00080 80A3D760 0C00084C */  jal     osSyncPrintf
              
/* 00084 80A3D764 2484E3F4 */  addiu   $a0, $a0, %lo(D_80A3E3F4)  ## $a0 = 80A3E3F4
/* 00088 80A3D768 3C0480A4 */  lui     $a0, %hi(D_80A3E3F8)       ## $a0 = 80A40000
/* 0008C 80A3D76C 3C0580A4 */  lui     $a1, %hi(D_80A3E3FC)       ## $a1 = 80A40000
/* 00090 80A3D770 24A5E3FC */  addiu   $a1, $a1, %lo(D_80A3E3FC)  ## $a1 = 80A3E3FC
/* 00094 80A3D774 2484E3F8 */  addiu   $a0, $a0, %lo(D_80A3E3F8)  ## $a0 = 80A3E3F8
/* 00098 80A3D778 0C0007FC */  jal     __assert
              
/* 0009C 80A3D77C 24060091 */  addiu   $a2, $zero, 0x0091         ## $a2 = 00000091
.L80A3D780:
/* 000A0 80A3D780 3C0F80A4 */  lui     $t7, %hi(func_80A3D838)    ## $t7 = 80A40000
/* 000A4 80A3D784 25EFD838 */  addiu   $t7, $t7, %lo(func_80A3D838) ## $t7 = 80A3D838
/* 000A8 80A3D788 AE0F0268 */  sw      $t7, 0x0268($s0)           ## 00000268
/* 000AC 80A3D78C 8FBF001C */  lw      $ra, 0x001C($sp)           
/* 000B0 80A3D790 8FB00018 */  lw      $s0, 0x0018($sp)           
/* 000B4 80A3D794 27BD0020 */  addiu   $sp, $sp, 0x0020           ## $sp = 00000000
/* 000B8 80A3D798 03E00008 */  jr      $ra                        
/* 000BC 80A3D79C 00000000 */  nop


