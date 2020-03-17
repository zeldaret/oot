glabel func_80AA9440
/* 033F0 80AA9440 27BDFFC0 */  addiu   $sp, $sp, 0xFFC0           ## $sp = FFFFFFC0
/* 033F4 80AA9444 AFB00020 */  sw      $s0, 0x0020($sp)           
/* 033F8 80AA9448 00808025 */  or      $s0, $a0, $zero            ## $s0 = 00000000
/* 033FC 80AA944C AFA50044 */  sw      $a1, 0x0044($sp)           
/* 03400 80AA9450 AFBF0024 */  sw      $ra, 0x0024($sp)           
/* 03404 80AA9454 26050400 */  addiu   $a1, $s0, 0x0400           ## $a1 = 00000400
/* 03408 80AA9458 3C0480AB */  lui     $a0, %hi(D_80AA9DC0)       ## $a0 = 80AB0000
/* 0340C 80AA945C 24849DC0 */  addiu   $a0, $a0, %lo(D_80AA9DC0)  ## $a0 = 80AA9DC0
/* 03410 80AA9460 0C0346BD */  jal     Matrix_MultVec3f              
/* 03414 80AA9464 AFA50038 */  sw      $a1, 0x0038($sp)           
/* 03418 80AA9468 3C0480AB */  lui     $a0, %hi(D_80AA9DCC)       ## $a0 = 80AB0000
/* 0341C 80AA946C 260503F4 */  addiu   $a1, $s0, 0x03F4           ## $a1 = 000003F4
/* 03420 80AA9470 AFA50034 */  sw      $a1, 0x0034($sp)           
/* 03424 80AA9474 0C0346BD */  jal     Matrix_MultVec3f              
/* 03428 80AA9478 24849DCC */  addiu   $a0, $a0, %lo(D_80AA9DCC)  ## $a0 = 80AA9DCC
/* 0342C 80AA947C 3C0480AB */  lui     $a0, %hi(D_80AA9DD8)       ## $a0 = 80AB0000
/* 03430 80AA9480 26050418 */  addiu   $a1, $s0, 0x0418           ## $a1 = 00000418
/* 03434 80AA9484 AFA5002C */  sw      $a1, 0x002C($sp)           
/* 03438 80AA9488 0C0346BD */  jal     Matrix_MultVec3f              
/* 0343C 80AA948C 24849DD8 */  addiu   $a0, $a0, %lo(D_80AA9DD8)  ## $a0 = 80AA9DD8
/* 03440 80AA9490 3C0480AB */  lui     $a0, %hi(D_80AA9DE4)       ## $a0 = 80AB0000
/* 03444 80AA9494 2607040C */  addiu   $a3, $s0, 0x040C           ## $a3 = 0000040C
/* 03448 80AA9498 00E02825 */  or      $a1, $a3, $zero            ## $a1 = 0000040C
/* 0344C 80AA949C AFA70030 */  sw      $a3, 0x0030($sp)           
/* 03450 80AA94A0 0C0346BD */  jal     Matrix_MultVec3f              
/* 03454 80AA94A4 24849DE4 */  addiu   $a0, $a0, %lo(D_80AA9DE4)  ## $a0 = 80AA9DE4
/* 03458 80AA94A8 8FAE002C */  lw      $t6, 0x002C($sp)           
/* 0345C 80AA94AC 8FA70030 */  lw      $a3, 0x0030($sp)           
/* 03460 80AA94B0 260403B4 */  addiu   $a0, $s0, 0x03B4           ## $a0 = 000003B4
/* 03464 80AA94B4 8FA50034 */  lw      $a1, 0x0034($sp)           
/* 03468 80AA94B8 8FA60038 */  lw      $a2, 0x0038($sp)           
/* 0346C 80AA94BC 0C0189CD */  jal     func_80062734              
/* 03470 80AA94C0 AFAE0010 */  sw      $t6, 0x0010($sp)           
/* 03474 80AA94C4 8FBF0024 */  lw      $ra, 0x0024($sp)           
/* 03478 80AA94C8 8FB00020 */  lw      $s0, 0x0020($sp)           
/* 0347C 80AA94CC 27BD0040 */  addiu   $sp, $sp, 0x0040           ## $sp = 00000000
/* 03480 80AA94D0 03E00008 */  jr      $ra                        
/* 03484 80AA94D4 00000000 */  nop


