glabel func_80B3D298
/* 010B8 80B3D298 3C0E80B4 */  lui     $t6, %hi(D_80B41DA4)       ## $t6 = 80B40000
/* 010BC 80B3D29C 8DCE1DA4 */  lw      $t6, %lo(D_80B41DA4)($t6)  
/* 010C0 80B3D2A0 27BDFFD0 */  addiu   $sp, $sp, 0xFFD0           ## $sp = FFFFFFD0
/* 010C4 80B3D2A4 AFBF002C */  sw      $ra, 0x002C($sp)           
/* 010C8 80B3D2A8 AFA40030 */  sw      $a0, 0x0030($sp)           
/* 010CC 80B3D2AC 15C0001E */  bne     $t6, $zero, .L80B3D328     
/* 010D0 80B3D2B0 AFA50034 */  sw      $a1, 0x0034($sp)           
/* 010D4 80B3D2B4 00A02025 */  or      $a0, $a1, $zero            ## $a0 = 00000000
/* 010D8 80B3D2B8 0C2CF134 */  jal     func_80B3C4D0              
/* 010DC 80B3D2BC 00002825 */  or      $a1, $zero, $zero          ## $a1 = 00000000
/* 010E0 80B3D2C0 8C4F000C */  lw      $t7, 0x000C($v0)           ## 0000000C
/* 010E4 80B3D2C4 8C580010 */  lw      $t8, 0x0010($v0)           ## 00000010
/* 010E8 80B3D2C8 8C590014 */  lw      $t9, 0x0014($v0)           ## 00000014
/* 010EC 80B3D2CC 448F2000 */  mtc1    $t7, $f4                   ## $f4 = 0.00
/* 010F0 80B3D2D0 44983000 */  mtc1    $t8, $f6                   ## $f6 = 0.00
/* 010F4 80B3D2D4 44994000 */  mtc1    $t9, $f8                   ## $f8 = 0.00
/* 010F8 80B3D2D8 46802020 */  cvt.s.w $f0, $f4                   
/* 010FC 80B3D2DC 8FA50034 */  lw      $a1, 0x0034($sp)           
/* 01100 80B3D2E0 24080005 */  addiu   $t0, $zero, 0x0005         ## $t0 = 00000005
/* 01104 80B3D2E4 AFA80024 */  sw      $t0, 0x0024($sp)           
/* 01108 80B3D2E8 AFA00020 */  sw      $zero, 0x0020($sp)         
/* 0110C 80B3D2EC 468030A0 */  cvt.s.w $f2, $f6                   
/* 01110 80B3D2F0 44070000 */  mfc1    $a3, $f0                   
/* 01114 80B3D2F4 AFA0001C */  sw      $zero, 0x001C($sp)         
/* 01118 80B3D2F8 AFA00018 */  sw      $zero, 0x0018($sp)         
/* 0111C 80B3D2FC 24060008 */  addiu   $a2, $zero, 0x0008         ## $a2 = 00000008
/* 01120 80B3D300 46804320 */  cvt.s.w $f12, $f8                  
/* 01124 80B3D304 E7A20010 */  swc1    $f2, 0x0010($sp)           
/* 01128 80B3D308 24A41C24 */  addiu   $a0, $a1, 0x1C24           ## $a0 = 00001C24
/* 0112C 80B3D30C 0C00C7D4 */  jal     Actor_Spawn
              ## ActorSpawn
/* 01130 80B3D310 E7AC0014 */  swc1    $f12, 0x0014($sp)          
/* 01134 80B3D314 8FA90030 */  lw      $t1, 0x0030($sp)           
/* 01138 80B3D318 240A0001 */  addiu   $t2, $zero, 0x0001         ## $t2 = 00000001
/* 0113C 80B3D31C 3C0180B4 */  lui     $at, %hi(D_80B41DA4)       ## $at = 80B40000
/* 01140 80B3D320 AD220310 */  sw      $v0, 0x0310($t1)           ## 00000310
/* 01144 80B3D324 AC2A1DA4 */  sw      $t2, %lo(D_80B41DA4)($at)  
.L80B3D328:
/* 01148 80B3D328 8FBF002C */  lw      $ra, 0x002C($sp)           
/* 0114C 80B3D32C 27BD0030 */  addiu   $sp, $sp, 0x0030           ## $sp = 00000000
/* 01150 80B3D330 03E00008 */  jr      $ra                        
/* 01154 80B3D334 00000000 */  nop


