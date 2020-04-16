glabel EnKarebaba_Destroy
/* 00130 80A95480 27BDFFE8 */  addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
/* 00134 80A95484 AFA40018 */  sw      $a0, 0x0018($sp)           
/* 00138 80A95488 AFA5001C */  sw      $a1, 0x001C($sp)           
/* 0013C 80A9548C 00A02025 */  or      $a0, $a1, $zero            ## $a0 = 00000000
/* 00140 80A95490 8FA50018 */  lw      $a1, 0x0018($sp)           
/* 00144 80A95494 AFBF0014 */  sw      $ra, 0x0014($sp)           
/* 00148 80A95498 0C0170EB */  jal     Collider_DestroyCylinder
              
/* 0014C 80A9549C 24A50244 */  addiu   $a1, $a1, 0x0244           ## $a1 = 00000244
/* 00150 80A954A0 8FA50018 */  lw      $a1, 0x0018($sp)           
/* 00154 80A954A4 8FA4001C */  lw      $a0, 0x001C($sp)           
/* 00158 80A954A8 0C0170EB */  jal     Collider_DestroyCylinder
              
/* 0015C 80A954AC 24A501F8 */  addiu   $a1, $a1, 0x01F8           ## $a1 = 000001F8
/* 00160 80A954B0 8FBF0014 */  lw      $ra, 0x0014($sp)           
/* 00164 80A954B4 27BD0018 */  addiu   $sp, $sp, 0x0018           ## $sp = 00000000
/* 00168 80A954B8 03E00008 */  jr      $ra                        
/* 0016C 80A954BC 00000000 */  nop
