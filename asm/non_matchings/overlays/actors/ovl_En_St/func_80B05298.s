glabel func_80B05298
/* 00A08 80B05298 27BDFFE0 */  addiu   $sp, $sp, 0xFFE0           ## $sp = FFFFFFE0
/* 00A0C 80B0529C AFBF0014 */  sw      $ra, 0x0014($sp)           
/* 00A10 80B052A0 848F00B6 */  lh      $t7, 0x00B6($a0)           ## 000000B6
/* 00A14 80B052A4 848E008A */  lh      $t6, 0x008A($a0)           ## 0000008A
/* 00A18 80B052A8 00A03825 */  or      $a3, $a1, $zero            ## $a3 = 00000000
/* 00A1C 80B052AC 248601E0 */  addiu   $a2, $a0, 0x01E0           ## $a2 = 000001E0
/* 00A20 80B052B0 01CF1023 */  subu    $v0, $t6, $t7              
/* 00A24 80B052B4 00021400 */  sll     $v0, $v0, 16               
/* 00A28 80B052B8 00021403 */  sra     $v0, $v0, 16               
/* 00A2C 80B052BC 04400004 */  bltz    $v0, .L80B052D0            
/* 00A30 80B052C0 00021823 */  subu    $v1, $zero, $v0            
/* 00A34 80B052C4 00021C00 */  sll     $v1, $v0, 16               
/* 00A38 80B052C8 10000003 */  beq     $zero, $zero, .L80B052D8   
/* 00A3C 80B052CC 00031C03 */  sra     $v1, $v1, 16               
.L80B052D0:
/* 00A40 80B052D0 00031C00 */  sll     $v1, $v1, 16               
/* 00A44 80B052D4 00031C03 */  sra     $v1, $v1, 16               
.L80B052D8:
/* 00A48 80B052D8 28613FFC */  slti    $at, $v1, 0x3FFC           
/* 00A4C 80B052DC 1020000E */  beq     $at, $zero, .L80B05318     
/* 00A50 80B052E0 00C02825 */  or      $a1, $a2, $zero            ## $a1 = 000001E0
/* 00A54 80B052E4 2486022C */  addiu   $a2, $a0, 0x022C           ## $a2 = 0000022C
/* 00A58 80B052E8 00C02825 */  or      $a1, $a2, $zero            ## $a1 = 0000022C
/* 00A5C 80B052EC AFA60018 */  sw      $a2, 0x0018($sp)           
/* 00A60 80B052F0 0C0189B7 */  jal     ActorCollider_Cylinder_Update
              
/* 00A64 80B052F4 AFA70024 */  sw      $a3, 0x0024($sp)           
/* 00A68 80B052F8 8FA40024 */  lw      $a0, 0x0024($sp)           
/* 00A6C 80B052FC 3C010001 */  lui     $at, 0x0001                ## $at = 00010000
/* 00A70 80B05300 34211E60 */  ori     $at, $at, 0x1E60           ## $at = 00011E60
/* 00A74 80B05304 8FA60018 */  lw      $a2, 0x0018($sp)           
/* 00A78 80B05308 0C01767D */  jal     Actor_CollisionCheck_SetAC
              ## CollisionCheck_setAC
/* 00A7C 80B0530C 00812821 */  addu    $a1, $a0, $at              
/* 00A80 80B05310 1000000B */  beq     $zero, $zero, .L80B05340   
/* 00A84 80B05314 8FBF0014 */  lw      $ra, 0x0014($sp)           
.L80B05318:
/* 00A88 80B05318 AFA60018 */  sw      $a2, 0x0018($sp)           
/* 00A8C 80B0531C 0C0189B7 */  jal     ActorCollider_Cylinder_Update
              
/* 00A90 80B05320 AFA70024 */  sw      $a3, 0x0024($sp)           
/* 00A94 80B05324 8FA40024 */  lw      $a0, 0x0024($sp)           
/* 00A98 80B05328 3C010001 */  lui     $at, 0x0001                ## $at = 00010000
/* 00A9C 80B0532C 34211E60 */  ori     $at, $at, 0x1E60           ## $at = 00011E60
/* 00AA0 80B05330 8FA60018 */  lw      $a2, 0x0018($sp)           
/* 00AA4 80B05334 0C01767D */  jal     Actor_CollisionCheck_SetAC
              ## CollisionCheck_setAC
/* 00AA8 80B05338 00812821 */  addu    $a1, $a0, $at              
/* 00AAC 80B0533C 8FBF0014 */  lw      $ra, 0x0014($sp)           
.L80B05340:
/* 00AB0 80B05340 27BD0020 */  addiu   $sp, $sp, 0x0020           ## $sp = 00000000
/* 00AB4 80B05344 03E00008 */  jr      $ra                        
/* 00AB8 80B05348 00000000 */  nop
