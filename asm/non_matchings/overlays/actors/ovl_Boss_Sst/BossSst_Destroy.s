glabel BossSst_Destroy
/* 00484 8092CA54 27BDFFE8 */  addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
/* 00488 8092CA58 AFA40018 */  sw      $a0, 0x0018($sp)           
/* 0048C 8092CA5C AFA5001C */  sw      $a1, 0x001C($sp)           
/* 00490 8092CA60 00A02025 */  or      $a0, $a1, $zero            ## $a0 = 00000000
/* 00494 8092CA64 8FA50018 */  lw      $a1, 0x0018($sp)           
/* 00498 8092CA68 AFBF0014 */  sw      $ra, 0x0014($sp)           
/* 0049C 8092CA6C 0C016F32 */  jal     func_8005BCC8              
/* 004A0 8092CA70 24A503D4 */  addiu   $a1, $a1, 0x03D4           ## $a1 = 000003D4
/* 004A4 8092CA74 8FA50018 */  lw      $a1, 0x0018($sp)           
/* 004A8 8092CA78 8FA4001C */  lw      $a0, 0x001C($sp)           
/* 004AC 8092CA7C 0C0170EB */  jal     ActorCollider_FreeCylinder
              
/* 004B0 8092CA80 24A506B4 */  addiu   $a1, $a1, 0x06B4           ## $a1 = 000006B4
/* 004B4 8092CA84 8FA40018 */  lw      $a0, 0x0018($sp)           
/* 004B8 8092CA88 0C03E27A */  jal     func_800F89E8              
/* 004BC 8092CA8C 248403C8 */  addiu   $a0, $a0, 0x03C8           ## $a0 = 000003C8
/* 004C0 8092CA90 8FBF0014 */  lw      $ra, 0x0014($sp)           
/* 004C4 8092CA94 27BD0018 */  addiu   $sp, $sp, 0x0018           ## $sp = 00000000
/* 004C8 8092CA98 03E00008 */  jr      $ra                        
/* 004CC 8092CA9C 00000000 */  nop
