glabel func_80AFE2B0
/* 00000 80AFE2B0 27BDFFD0 */  addiu   $sp, $sp, 0xFFD0           ## $sp = FFFFFFD0
/* 00004 80AFE2B4 AFA50034 */  sw      $a1, 0x0034($sp)           
/* 00008 80AFE2B8 93AE0037 */  lbu     $t6, 0x0037($sp)           
/* 0000C 80AFE2BC 3C1880B0 */  lui     $t8, %hi(D_80B016D4)       ## $t8 = 80B00000
/* 00010 80AFE2C0 271816D4 */  addiu   $t8, $t8, %lo(D_80B016D4)  ## $t8 = 80B016D4
/* 00014 80AFE2C4 000E7880 */  sll     $t7, $t6,  2               
/* 00018 80AFE2C8 01EE7823 */  subu    $t7, $t7, $t6              
/* 0001C 80AFE2CC 000F7880 */  sll     $t7, $t7,  2               
/* 00020 80AFE2D0 AFBF0024 */  sw      $ra, 0x0024($sp)           
/* 00024 80AFE2D4 AFA40030 */  sw      $a0, 0x0030($sp)           
/* 00028 80AFE2D8 01F81821 */  addu    $v1, $t7, $t8              
/* 0002C 80AFE2DC 8C640000 */  lw      $a0, 0x0000($v1)           ## 00000000
/* 00030 80AFE2E0 0C028800 */  jal     SkelAnime_GetFrameCount
              
/* 00034 80AFE2E4 AFA30028 */  sw      $v1, 0x0028($sp)           
/* 00038 80AFE2E8 8FA80030 */  lw      $t0, 0x0030($sp)           
/* 0003C 80AFE2EC 93B90037 */  lbu     $t9, 0x0037($sp)           
/* 00040 80AFE2F0 44822000 */  mtc1    $v0, $f4                   ## $f4 = 0.00
/* 00044 80AFE2F4 8FA30028 */  lw      $v1, 0x0028($sp)           
/* 00048 80AFE2F8 A11902D0 */  sb      $t9, 0x02D0($t0)           ## 000002D0
/* 0004C 80AFE2FC 468021A0 */  cvt.s.w $f6, $f4                   
/* 00050 80AFE300 C4680008 */  lwc1    $f8, 0x0008($v1)           ## 00000008
/* 00054 80AFE304 90690004 */  lbu     $t1, 0x0004($v1)           ## 00000004
/* 00058 80AFE308 3C063F80 */  lui     $a2, 0x3F80                ## $a2 = 3F800000
/* 0005C 80AFE30C 24070000 */  addiu   $a3, $zero, 0x0000         ## $a3 = 00000000
/* 00060 80AFE310 2504014C */  addiu   $a0, $t0, 0x014C           ## $a0 = 0000014C
/* 00064 80AFE314 E7A60010 */  swc1    $f6, 0x0010($sp)           
/* 00068 80AFE318 8C650000 */  lw      $a1, 0x0000($v1)           ## 00000000
/* 0006C 80AFE31C E7A80018 */  swc1    $f8, 0x0018($sp)           
/* 00070 80AFE320 0C029468 */  jal     SkelAnime_ChangeAnimation
              
/* 00074 80AFE324 AFA90014 */  sw      $t1, 0x0014($sp)           
/* 00078 80AFE328 8FBF0024 */  lw      $ra, 0x0024($sp)           
/* 0007C 80AFE32C 27BD0030 */  addiu   $sp, $sp, 0x0030           ## $sp = 00000000
/* 00080 80AFE330 03E00008 */  jr      $ra                        
/* 00084 80AFE334 00000000 */  nop


