.late_rodata
glabel D_809E41B8
    .float 9.58738019108e-05

glabel D_809E41BC
 .word 0x4622F983

.text
glabel func_809E3954
/* 00E24 809E3954 27BDFFB0 */  addiu   $sp, $sp, 0xFFB0           ## $sp = FFFFFFB0
/* 00E28 809E3958 AFB0002C */  sw      $s0, 0x002C($sp)           
/* 00E2C 809E395C 00808025 */  or      $s0, $a0, $zero            ## $s0 = 00000000
/* 00E30 809E3960 AFB10030 */  sw      $s1, 0x0030($sp)           
/* 00E34 809E3964 00A08825 */  or      $s1, $a1, $zero            ## $s1 = 00000000
/* 00E38 809E3968 AFBF0034 */  sw      $ra, 0x0034($sp)           
/* 00E3C 809E396C 00A02025 */  or      $a0, $a1, $zero            ## $a0 = 00000000
/* 00E40 809E3970 0C0300E1 */  jal     Gameplay_ClearCamera              
/* 00E44 809E3974 86050206 */  lh      $a1, 0x0206($s0)           ## 00000206
/* 00E48 809E3978 02202025 */  or      $a0, $s1, $zero            ## $a0 = 00000000
/* 00E4C 809E397C 00002825 */  or      $a1, $zero, $zero          ## $a1 = 00000000
/* 00E50 809E3980 0C0300C5 */  jal     Gameplay_ChangeCameraStatus              
/* 00E54 809E3984 24060007 */  addiu   $a2, $zero, 0x0007         ## $a2 = 00000007
/* 00E58 809E3988 AE0001FC */  sw      $zero, 0x01FC($s0)         ## 000001FC
/* 00E5C 809E398C 3C0E8016 */  lui     $t6, 0x8016                ## $t6 = 80160000
/* 00E60 809E3990 95CEF546 */  lhu     $t6, -0x0ABA($t6)          ## 8015F546
/* 00E64 809E3994 2401000F */  addiu   $at, $zero, 0x000F         ## $at = 0000000F
/* 00E68 809E3998 02202025 */  or      $a0, $s1, $zero            ## $a0 = 00000000
/* 00E6C 809E399C 31CF000F */  andi    $t7, $t6, 0x000F           ## $t7 = 00000000
/* 00E70 809E39A0 15E10033 */  bne     $t7, $at, .L809E3A70       
/* 00E74 809E39A4 02002825 */  or      $a1, $s0, $zero            ## $a1 = 00000000
/* 00E78 809E39A8 8618033A */  lh      $t8, 0x033A($s0)           ## 0000033A
/* 00E7C 809E39AC 3C01809E */  lui     $at, %hi(D_809E41B8)       ## $at = 809E0000
/* 00E80 809E39B0 C42841B8 */  lwc1    $f8, %lo(D_809E41B8)($at)  
/* 00E84 809E39B4 44982000 */  mtc1    $t8, $f4                   ## $f4 = 0.00
/* 00E88 809E39B8 00002825 */  or      $a1, $zero, $zero          ## $a1 = 00000000
/* 00E8C 809E39BC 468021A0 */  cvt.s.w $f6, $f4                   
/* 00E90 809E39C0 46083302 */  mul.s   $f12, $f6, $f8             
/* 00E94 809E39C4 0C034348 */  jal     Matrix_RotateY              
/* 00E98 809E39C8 00000000 */  nop
/* 00E9C 809E39CC 3C04809E */  lui     $a0, %hi(D_809E4148)       ## $a0 = 809E0000
/* 00EA0 809E39D0 24844148 */  addiu   $a0, $a0, %lo(D_809E4148)  ## $a0 = 809E4148
/* 00EA4 809E39D4 0C0346BD */  jal     Matrix_MultVec3f              
/* 00EA8 809E39D8 27A50040 */  addiu   $a1, $sp, 0x0040           ## $a1 = FFFFFFF0
/* 00EAC 809E39DC C7AC0040 */  lwc1    $f12, 0x0040($sp)          
/* 00EB0 809E39E0 C7AE0048 */  lwc1    $f14, 0x0048($sp)          
/* 00EB4 809E39E4 46006307 */  neg.s   $f12, $f12                 
/* 00EB8 809E39E8 0C03F494 */  jal     Math_atan2f              
/* 00EBC 809E39EC 46007387 */  neg.s   $f14, $f14                 
/* 00EC0 809E39F0 C6040344 */  lwc1    $f4, 0x0344($s0)           ## 00000344
/* 00EC4 809E39F4 C7A60044 */  lwc1    $f6, 0x0044($sp)           
/* 00EC8 809E39F8 3C01809E */  lui     $at, %hi(D_809E41BC)       ## $at = 809E0000
/* 00ECC 809E39FC C60A0340 */  lwc1    $f10, 0x0340($s0)          ## 00000340
/* 00ED0 809E3A00 46062200 */  add.s   $f8, $f4, $f6              
/* 00ED4 809E3A04 C42441BC */  lwc1    $f4, %lo(D_809E41BC)($at)  
/* 00ED8 809E3A08 C7B00040 */  lwc1    $f16, 0x0040($sp)          
/* 00EDC 809E3A0C 24090002 */  addiu   $t1, $zero, 0x0002         ## $t1 = 00000002
/* 00EE0 809E3A10 46040182 */  mul.s   $f6, $f0, $f4              
/* 00EE4 809E3A14 46105480 */  add.s   $f18, $f10, $f16           
/* 00EE8 809E3A18 E7A80010 */  swc1    $f8, 0x0010($sp)           
/* 00EEC 809E3A1C C60A0348 */  lwc1    $f10, 0x0348($s0)          ## 00000348
/* 00EF0 809E3A20 C7B00048 */  lwc1    $f16, 0x0048($sp)          
/* 00EF4 809E3A24 44079000 */  mfc1    $a3, $f18                  
/* 00EF8 809E3A28 AFA90024 */  sw      $t1, 0x0024($sp)           
/* 00EFC 809E3A2C 4600320D */  trunc.w.s $f8, $f6                   
/* 00F00 809E3A30 AFA00020 */  sw      $zero, 0x0020($sp)         
/* 00F04 809E3A34 AFA00018 */  sw      $zero, 0x0018($sp)         
/* 00F08 809E3A38 46105480 */  add.s   $f18, $f10, $f16           
/* 00F0C 809E3A3C 44084000 */  mfc1    $t0, $f8                   
/* 00F10 809E3A40 26241C24 */  addiu   $a0, $s1, 0x1C24           ## $a0 = 00001C24
/* 00F14 809E3A44 02202825 */  or      $a1, $s1, $zero            ## $a1 = 00000000
/* 00F18 809E3A48 E7B20014 */  swc1    $f18, 0x0014($sp)          
/* 00F1C 809E3A4C 240601D0 */  addiu   $a2, $zero, 0x01D0         ## $a2 = 000001D0
/* 00F20 809E3A50 0C00C7D4 */  jal     Actor_Spawn
              ## ActorSpawn
/* 00F24 809E3A54 AFA8001C */  sw      $t0, 0x001C($sp)           
/* 00F28 809E3A58 54400008 */  bnel    $v0, $zero, .L809E3A7C     
/* 00F2C 809E3A5C 8FBF0034 */  lw      $ra, 0x0034($sp)           
/* 00F30 809E3A60 0C00B55C */  jal     Actor_Kill
              
/* 00F34 809E3A64 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 00F38 809E3A68 10000004 */  beq     $zero, $zero, .L809E3A7C   
/* 00F3C 809E3A6C 8FBF0034 */  lw      $ra, 0x0034($sp)           
.L809E3A70:
/* 00F40 809E3A70 0C00B7D5 */  jal     func_8002DF54              
/* 00F44 809E3A74 24060007 */  addiu   $a2, $zero, 0x0007         ## $a2 = 00000007
/* 00F48 809E3A78 8FBF0034 */  lw      $ra, 0x0034($sp)           
.L809E3A7C:
/* 00F4C 809E3A7C 8FB0002C */  lw      $s0, 0x002C($sp)           
/* 00F50 809E3A80 8FB10030 */  lw      $s1, 0x0030($sp)           
/* 00F54 809E3A84 03E00008 */  jr      $ra                        
/* 00F58 809E3A88 27BD0050 */  addiu   $sp, $sp, 0x0050           ## $sp = 00000000
