.late_rodata
glabel D_80A7E010
    .float 1.9

.text
glabel func_80A7CBC8
/* 00DA8 80A7CBC8 27BDFFE0 */  addiu   $sp, $sp, 0xFFE0           ## $sp = FFFFFFE0
/* 00DAC 80A7CBCC AFBF001C */  sw      $ra, 0x001C($sp)           
/* 00DB0 80A7CBD0 AFB00018 */  sw      $s0, 0x0018($sp)           
/* 00DB4 80A7CBD4 240E003C */  addiu   $t6, $zero, 0x003C         ## $t6 = 0000003C
/* 00DB8 80A7CBD8 00808025 */  or      $s0, $a0, $zero            ## $s0 = 00000000
/* 00DBC 80A7CBDC 0C29EFD6 */  jal     func_80A7BF58              
/* 00DC0 80A7CBE0 A48E031A */  sh      $t6, 0x031A($a0)           ## 0000031A
/* 00DC4 80A7CBE4 3C0180A8 */  lui     $at, %hi(D_80A7E010)       ## $at = 80A80000
/* 00DC8 80A7CBE8 C424E010 */  lwc1    $f4, %lo(D_80A7E010)($at)  
/* 00DCC 80A7CBEC 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 00DD0 80A7CBF0 240539E9 */  addiu   $a1, $zero, 0x39E9         ## $a1 = 000039E9
/* 00DD4 80A7CBF4 0C00BE0A */  jal     Audio_PlayActorSound2
              
/* 00DD8 80A7CBF8 E60401C8 */  swc1    $f4, 0x01C8($s0)           ## 000001C8
/* 00DDC 80A7CBFC 26040008 */  addiu   $a0, $s0, 0x0008           ## $a0 = 00000008
/* 00DE0 80A7CC00 0C01DF90 */  jal     Math_Vec3f_Copy
              ## Vec3f_Copy
/* 00DE4 80A7CC04 26050024 */  addiu   $a1, $s0, 0x0024           ## $a1 = 00000024
/* 00DE8 80A7CC08 96180314 */  lhu     $t8, 0x0314($s0)           ## 00000314
/* 00DEC 80A7CC0C 3C0F80A8 */  lui     $t7, %hi(func_80A7CC3C)    ## $t7 = 80A80000
/* 00DF0 80A7CC10 25EFCC3C */  addiu   $t7, $t7, %lo(func_80A7CC3C) ## $t7 = 80A7CC3C
/* 00DF4 80A7CC14 3308FEFF */  andi    $t0, $t8, 0xFEFF           ## $t0 = 00000000
/* 00DF8 80A7CC18 A6080314 */  sh      $t0, 0x0314($s0)           ## 00000314
/* 00DFC 80A7CC1C 35090008 */  ori     $t1, $t0, 0x0008           ## $t1 = 00000008
/* 00E00 80A7CC20 AE0F0310 */  sw      $t7, 0x0310($s0)           ## 00000310
/* 00E04 80A7CC24 A6090314 */  sh      $t1, 0x0314($s0)           ## 00000314
/* 00E08 80A7CC28 8FBF001C */  lw      $ra, 0x001C($sp)           
/* 00E0C 80A7CC2C 8FB00018 */  lw      $s0, 0x0018($sp)           
/* 00E10 80A7CC30 27BD0020 */  addiu   $sp, $sp, 0x0020           ## $sp = 00000000
/* 00E14 80A7CC34 03E00008 */  jr      $ra                        
/* 00E18 80A7CC38 00000000 */  nop
