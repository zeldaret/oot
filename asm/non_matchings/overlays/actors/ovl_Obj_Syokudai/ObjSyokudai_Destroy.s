glabel ObjSyokudai_Destroy
/* 001C0 80B9F470 27BDFFE8 */  addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
/* 001C4 80B9F474 AFA40018 */  sw      $a0, 0x0018($sp)           
/* 001C8 80B9F478 AFA5001C */  sw      $a1, 0x001C($sp)           
/* 001CC 80B9F47C 00A02025 */  or      $a0, $a1, $zero            ## $a0 = 00000000
/* 001D0 80B9F480 8FA50018 */  lw      $a1, 0x0018($sp)           
/* 001D4 80B9F484 AFBF0014 */  sw      $ra, 0x0014($sp)           
/* 001D8 80B9F488 0C0170EB */  jal     Collider_DestroyCylinder
              
/* 001DC 80B9F48C 24A5014C */  addiu   $a1, $a1, 0x014C           ## $a1 = 0000014C
/* 001E0 80B9F490 8FA50018 */  lw      $a1, 0x0018($sp)           
/* 001E4 80B9F494 8FA4001C */  lw      $a0, 0x001C($sp)           
/* 001E8 80B9F498 0C0170EB */  jal     Collider_DestroyCylinder
              
/* 001EC 80B9F49C 24A50198 */  addiu   $a1, $a1, 0x0198           ## $a1 = 00000198
/* 001F0 80B9F4A0 8FA4001C */  lw      $a0, 0x001C($sp)           
/* 001F4 80B9F4A4 8FAE0018 */  lw      $t6, 0x0018($sp)           
/* 001F8 80B9F4A8 248507A8 */  addiu   $a1, $a0, 0x07A8           ## $a1 = 000007A8
/* 001FC 80B9F4AC 0C01E9F1 */  jal     LightContext_RemoveLight
              
/* 00200 80B9F4B0 8DC601E8 */  lw      $a2, 0x01E8($t6)           ## 000001E8
/* 00204 80B9F4B4 8FBF0014 */  lw      $ra, 0x0014($sp)           
/* 00208 80B9F4B8 27BD0018 */  addiu   $sp, $sp, 0x0018           ## $sp = 00000000
/* 0020C 80B9F4BC 03E00008 */  jr      $ra                        
/* 00210 80B9F4C0 00000000 */  nop
