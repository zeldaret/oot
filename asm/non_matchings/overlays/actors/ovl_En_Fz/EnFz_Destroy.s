glabel EnFz_Destroy
/* 0017C 80A1FF3C 27BDFFE8 */  addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
/* 00180 80A1FF40 AFA40018 */  sw      $a0, 0x0018($sp)           
/* 00184 80A1FF44 AFA5001C */  sw      $a1, 0x001C($sp)           
/* 00188 80A1FF48 00A02025 */  or      $a0, $a1, $zero            ## $a0 = 00000000
/* 0018C 80A1FF4C 8FA50018 */  lw      $a1, 0x0018($sp)           
/* 00190 80A1FF50 AFBF0014 */  sw      $ra, 0x0014($sp)           
/* 00194 80A1FF54 0C0170EB */  jal     Collider_DestroyCylinder
              
/* 00198 80A1FF58 24A50150 */  addiu   $a1, $a1, 0x0150           ## $a1 = 00000150
/* 0019C 80A1FF5C 8FA50018 */  lw      $a1, 0x0018($sp)           
/* 001A0 80A1FF60 8FA4001C */  lw      $a0, 0x001C($sp)           
/* 001A4 80A1FF64 0C0170EB */  jal     Collider_DestroyCylinder
              
/* 001A8 80A1FF68 24A5019C */  addiu   $a1, $a1, 0x019C           ## $a1 = 0000019C
/* 001AC 80A1FF6C 8FA50018 */  lw      $a1, 0x0018($sp)           
/* 001B0 80A1FF70 8FA4001C */  lw      $a0, 0x001C($sp)           
/* 001B4 80A1FF74 0C0170EB */  jal     Collider_DestroyCylinder
              
/* 001B8 80A1FF78 24A501E8 */  addiu   $a1, $a1, 0x01E8           ## $a1 = 000001E8
/* 001BC 80A1FF7C 8FBF0014 */  lw      $ra, 0x0014($sp)           
/* 001C0 80A1FF80 27BD0018 */  addiu   $sp, $sp, 0x0018           ## $sp = 00000000
/* 001C4 80A1FF84 03E00008 */  jr      $ra                        
/* 001C8 80A1FF88 00000000 */  nop
