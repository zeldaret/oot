glabel EnHorseNormal_Destroy
/* 0066C 80A6B8BC 27BDFFE8 */  addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
/* 00670 80A6B8C0 AFA40018 */  sw      $a0, 0x0018($sp)           
/* 00674 80A6B8C4 AFA5001C */  sw      $a1, 0x001C($sp)           
/* 00678 80A6B8C8 00A02025 */  or      $a0, $a1, $zero            ## $a0 = 00000000
/* 0067C 80A6B8CC 8FA50018 */  lw      $a1, 0x0018($sp)           
/* 00680 80A6B8D0 AFBF0014 */  sw      $ra, 0x0014($sp)           
/* 00684 80A6B8D4 0C029A22 */  jal     func_800A6888              
/* 00688 80A6B8D8 24A50154 */  addiu   $a1, $a1, 0x0154           ## $a1 = 00000154
/* 0068C 80A6B8DC 8FA50018 */  lw      $a1, 0x0018($sp)           
/* 00690 80A6B8E0 8FA4001C */  lw      $a0, 0x001C($sp)           
/* 00694 80A6B8E4 0C0170EB */  jal     ActorCollider_FreeCylinder
              
/* 00698 80A6B8E8 24A50228 */  addiu   $a1, $a1, 0x0228           ## $a1 = 00000228
/* 0069C 80A6B8EC 8FA50018 */  lw      $a1, 0x0018($sp)           
/* 006A0 80A6B8F0 8FA4001C */  lw      $a0, 0x001C($sp)           
/* 006A4 80A6B8F4 0C0170EB */  jal     ActorCollider_FreeCylinder
              
/* 006A8 80A6B8F8 24A502D4 */  addiu   $a1, $a1, 0x02D4           ## $a1 = 000002D4
/* 006AC 80A6B8FC 8FA50018 */  lw      $a1, 0x0018($sp)           
/* 006B0 80A6B900 8FA4001C */  lw      $a0, 0x001C($sp)           
/* 006B4 80A6B904 0C016F32 */  jal     func_8005BCC8              
/* 006B8 80A6B908 24A50274 */  addiu   $a1, $a1, 0x0274           ## $a1 = 00000274
/* 006BC 80A6B90C 8FBF0014 */  lw      $ra, 0x0014($sp)           
/* 006C0 80A6B910 27BD0018 */  addiu   $sp, $sp, 0x0018           ## $sp = 00000000
/* 006C4 80A6B914 03E00008 */  jr      $ra                        
/* 006C8 80A6B918 00000000 */  nop
