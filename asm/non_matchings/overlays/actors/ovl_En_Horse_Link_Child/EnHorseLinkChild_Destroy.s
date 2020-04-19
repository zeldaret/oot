glabel EnHorseLinkChild_Destroy
/* 0046C 80A6983C 27BDFFE8 */  addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
/* 00470 80A69840 AFA40018 */  sw      $a0, 0x0018($sp)           
/* 00474 80A69844 AFA5001C */  sw      $a1, 0x001C($sp)           
/* 00478 80A69848 00A02025 */  or      $a0, $a1, $zero            ## $a0 = 00000000
/* 0047C 80A6984C 8FA50018 */  lw      $a1, 0x0018($sp)           
/* 00480 80A69850 AFBF0014 */  sw      $ra, 0x0014($sp)           
/* 00484 80A69854 0C029A22 */  jal     func_800A6888              
/* 00488 80A69858 24A50154 */  addiu   $a1, $a1, 0x0154           ## $a1 = 00000154
/* 0048C 80A6985C 8FA50018 */  lw      $a1, 0x0018($sp)           
/* 00490 80A69860 8FA4001C */  lw      $a0, 0x001C($sp)           
/* 00494 80A69864 0C0170EB */  jal     ActorCollider_FreeCylinder
              
/* 00498 80A69868 24A501F4 */  addiu   $a1, $a1, 0x01F4           ## $a1 = 000001F4
/* 0049C 80A6986C 8FA50018 */  lw      $a1, 0x0018($sp)           
/* 004A0 80A69870 8FA4001C */  lw      $a0, 0x001C($sp)           
/* 004A4 80A69874 0C016F32 */  jal     func_8005BCC8              
/* 004A8 80A69878 24A50240 */  addiu   $a1, $a1, 0x0240           ## $a1 = 00000240
/* 004AC 80A6987C 8FBF0014 */  lw      $ra, 0x0014($sp)           
/* 004B0 80A69880 27BD0018 */  addiu   $sp, $sp, 0x0018           ## $sp = 00000000
/* 004B4 80A69884 03E00008 */  jr      $ra                        
/* 004B8 80A69888 00000000 */  nop
