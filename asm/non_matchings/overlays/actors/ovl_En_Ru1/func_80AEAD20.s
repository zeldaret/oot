glabel func_80AEAD20
/* 00110 80AEAD20 27BDFFD8 */  addiu   $sp, $sp, 0xFFD8           ## $sp = FFFFFFD8
/* 00114 80AEAD24 AFB00018 */  sw      $s0, 0x0018($sp)           
/* 00118 80AEAD28 00808025 */  or      $s0, $a0, $zero            ## $s0 = 00000000
/* 0011C 80AEAD2C AFA5002C */  sw      $a1, 0x002C($sp)           
/* 00120 80AEAD30 00A02025 */  or      $a0, $a1, $zero            ## $a0 = 00000000
/* 00124 80AEAD34 AFBF001C */  sw      $ra, 0x001C($sp)           
/* 00128 80AEAD38 260502B4 */  addiu   $a1, $s0, 0x02B4           ## $a1 = 000002B4
/* 0012C 80AEAD3C 0C0170D9 */  jal     ActorCollider_AllocCylinder
              
/* 00130 80AEAD40 AFA50020 */  sw      $a1, 0x0020($sp)           
/* 00134 80AEAD44 3C0780AF */  lui     $a3, %hi(D_80AF0800)       ## $a3 = 80AF0000
/* 00138 80AEAD48 8FA50020 */  lw      $a1, 0x0020($sp)           
/* 0013C 80AEAD4C 24E70800 */  addiu   $a3, $a3, %lo(D_80AF0800)  ## $a3 = 80AF0800
/* 00140 80AEAD50 8FA4002C */  lw      $a0, 0x002C($sp)           
/* 00144 80AEAD54 0C017114 */  jal     func_8005C450              
/* 00148 80AEAD58 02003025 */  or      $a2, $s0, $zero            ## $a2 = 00000000
/* 0014C 80AEAD5C 26050300 */  addiu   $a1, $s0, 0x0300           ## $a1 = 00000300
/* 00150 80AEAD60 AFA50020 */  sw      $a1, 0x0020($sp)           
/* 00154 80AEAD64 0C0170D9 */  jal     ActorCollider_AllocCylinder
              
/* 00158 80AEAD68 8FA4002C */  lw      $a0, 0x002C($sp)           
/* 0015C 80AEAD6C 3C0780AF */  lui     $a3, %hi(D_80AF082C)       ## $a3 = 80AF0000
/* 00160 80AEAD70 8FA50020 */  lw      $a1, 0x0020($sp)           
/* 00164 80AEAD74 24E7082C */  addiu   $a3, $a3, %lo(D_80AF082C)  ## $a3 = 80AF082C
/* 00168 80AEAD78 8FA4002C */  lw      $a0, 0x002C($sp)           
/* 0016C 80AEAD7C 0C017114 */  jal     func_8005C450              
/* 00170 80AEAD80 02003025 */  or      $a2, $s0, $zero            ## $a2 = 00000000
/* 00174 80AEAD84 8FBF001C */  lw      $ra, 0x001C($sp)           
/* 00178 80AEAD88 8FB00018 */  lw      $s0, 0x0018($sp)           
/* 0017C 80AEAD8C 27BD0028 */  addiu   $sp, $sp, 0x0028           ## $sp = 00000000
/* 00180 80AEAD90 03E00008 */  jr      $ra                        
/* 00184 80AEAD94 00000000 */  nop


