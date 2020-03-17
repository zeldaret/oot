glabel func_80A59C30
/* 00000 80A59C30 27BDFFC8 */  addiu   $sp, $sp, 0xFFC8           ## $sp = FFFFFFC8
/* 00004 80A59C34 AFB00014 */  sw      $s0, 0x0014($sp)           
/* 00008 80A59C38 00808025 */  or      $s0, $a0, $zero            ## $s0 = 00000000
/* 0000C 80A59C3C AFB10018 */  sw      $s1, 0x0018($sp)           
/* 00010 80A59C40 AFBF001C */  sw      $ra, 0x001C($sp)           
/* 00014 80A59C44 AFA5003C */  sw      $a1, 0x003C($sp)           
/* 00018 80A59C48 26110150 */  addiu   $s1, $s0, 0x0150           ## $s1 = 00000150
/* 0001C 80A59C4C 0C0189B7 */  jal     ActorCollider_Cylinder_Update
              
/* 00020 80A59C50 02202825 */  or      $a1, $s1, $zero            ## $a1 = 00000150
/* 00024 80A59C54 8FA4003C */  lw      $a0, 0x003C($sp)           
/* 00028 80A59C58 3C010001 */  lui     $at, 0x0001                ## $at = 00010000
/* 0002C 80A59C5C 34211E60 */  ori     $at, $at, 0x1E60           ## $at = 00011E60
/* 00030 80A59C60 00812821 */  addu    $a1, $a0, $at              
/* 00034 80A59C64 AFA50024 */  sw      $a1, 0x0024($sp)           
/* 00038 80A59C68 0C0175E7 */  jal     Actor_CollisionCheck_SetAT
              ## CollisionCheck_setAT
/* 0003C 80A59C6C 02203025 */  or      $a2, $s1, $zero            ## $a2 = 00000150
/* 00040 80A59C70 8FA4003C */  lw      $a0, 0x003C($sp)           
/* 00044 80A59C74 8FA50024 */  lw      $a1, 0x0024($sp)           
/* 00048 80A59C78 0C01767D */  jal     Actor_CollisionCheck_SetAC
              ## CollisionCheck_setAC
/* 0004C 80A59C7C 02203025 */  or      $a2, $s1, $zero            ## $a2 = 00000150
/* 00050 80A59C80 8FA4003C */  lw      $a0, 0x003C($sp)           
/* 00054 80A59C84 8FA50024 */  lw      $a1, 0x0024($sp)           
/* 00058 80A59C88 0C017713 */  jal     Actor_CollisionCheck_SetOT
              ## CollisionCheck_setOT
/* 0005C 80A59C8C 02203025 */  or      $a2, $s1, $zero            ## $a2 = 00000150
/* 00060 80A59C90 920E0240 */  lbu     $t6, 0x0240($s0)           ## 00000240
/* 00064 80A59C94 35D80001 */  ori     $t8, $t6, 0x0001           ## $t8 = 00000001
/* 00068 80A59C98 37080002 */  ori     $t0, $t8, 0x0002           ## $t0 = 00000003
/* 0006C 80A59C9C A2180240 */  sb      $t8, 0x0240($s0)           ## 00000240
/* 00070 80A59CA0 A2080240 */  sb      $t0, 0x0240($s0)           ## 00000240
/* 00074 80A59CA4 35090004 */  ori     $t1, $t0, 0x0004           ## $t1 = 00000007
/* 00078 80A59CA8 A2090240 */  sb      $t1, 0x0240($s0)           ## 00000240
/* 0007C 80A59CAC 8FBF001C */  lw      $ra, 0x001C($sp)           
/* 00080 80A59CB0 8FB10018 */  lw      $s1, 0x0018($sp)           
/* 00084 80A59CB4 8FB00014 */  lw      $s0, 0x0014($sp)           
/* 00088 80A59CB8 03E00008 */  jr      $ra                        
/* 0008C 80A59CBC 27BD0038 */  addiu   $sp, $sp, 0x0038           ## $sp = 00000000


