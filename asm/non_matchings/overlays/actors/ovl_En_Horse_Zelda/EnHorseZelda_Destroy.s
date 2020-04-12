glabel EnHorseZelda_Destroy
/* 0035C 80A6DC2C 27BDFFE8 */  addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
/* 00360 80A6DC30 AFA40018 */  sw      $a0, 0x0018($sp)           
/* 00364 80A6DC34 AFA5001C */  sw      $a1, 0x001C($sp)           
/* 00368 80A6DC38 00A02025 */  or      $a0, $a1, $zero            ## $a0 = 00000000
/* 0036C 80A6DC3C 8FA50018 */  lw      $a1, 0x0018($sp)           
/* 00370 80A6DC40 AFBF0014 */  sw      $ra, 0x0014($sp)           
/* 00374 80A6DC44 0C0170EB */  jal     ActorCollider_FreeCylinder
              
/* 00378 80A6DC48 24A501FC */  addiu   $a1, $a1, 0x01FC           ## $a1 = 000001FC
/* 0037C 80A6DC4C 8FA50018 */  lw      $a1, 0x0018($sp)           
/* 00380 80A6DC50 8FA4001C */  lw      $a0, 0x001C($sp)           
/* 00384 80A6DC54 0C016F32 */  jal     func_8005BCC8              
/* 00388 80A6DC58 24A50248 */  addiu   $a1, $a1, 0x0248           ## $a1 = 00000248
/* 0038C 80A6DC5C 8FA50018 */  lw      $a1, 0x0018($sp)           
/* 00390 80A6DC60 8FA4001C */  lw      $a0, 0x001C($sp)           
/* 00394 80A6DC64 0C029A22 */  jal     func_800A6888              
/* 00398 80A6DC68 24A50154 */  addiu   $a1, $a1, 0x0154           ## $a1 = 00000154
/* 0039C 80A6DC6C 8FBF0014 */  lw      $ra, 0x0014($sp)           
/* 003A0 80A6DC70 27BD0018 */  addiu   $sp, $sp, 0x0018           ## $sp = 00000000
/* 003A4 80A6DC74 03E00008 */  jr      $ra                        
/* 003A8 80A6DC78 00000000 */  nop
