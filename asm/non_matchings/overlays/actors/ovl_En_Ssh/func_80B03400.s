glabel func_80B03400
/* 01190 80B03400 27BDFFE0 */  addiu   $sp, $sp, 0xFFE0           ## $sp = FFFFFFE0
/* 01194 80B03404 AFBF0014 */  sw      $ra, 0x0014($sp)           
/* 01198 80B03408 848F00B6 */  lh      $t7, 0x00B6($a0)           ## 000000B6
/* 0119C 80B0340C 848E008A */  lh      $t6, 0x008A($a0)           ## 0000008A
/* 011A0 80B03410 00A03825 */  or      $a3, $a1, $zero            ## $a3 = 00000000
/* 011A4 80B03414 24860348 */  addiu   $a2, $a0, 0x0348           ## $a2 = 00000348
/* 011A8 80B03418 01CF1023 */  subu    $v0, $t6, $t7              
/* 011AC 80B0341C 00021400 */  sll     $v0, $v0, 16               
/* 011B0 80B03420 00021403 */  sra     $v0, $v0, 16               
/* 011B4 80B03424 04400004 */  bltz    $v0, .L80B03438            
/* 011B8 80B03428 00021823 */  subu    $v1, $zero, $v0            
/* 011BC 80B0342C 00021C00 */  sll     $v1, $v0, 16               
/* 011C0 80B03430 10000003 */  beq     $zero, $zero, .L80B03440   
/* 011C4 80B03434 00031C03 */  sra     $v1, $v1, 16               
.L80B03438:
/* 011C8 80B03438 00031C00 */  sll     $v1, $v1, 16               
/* 011CC 80B0343C 00031C03 */  sra     $v1, $v1, 16               
.L80B03440:
/* 011D0 80B03440 28613FFC */  slti    $at, $v1, 0x3FFC           
/* 011D4 80B03444 1020000E */  beq     $at, $zero, .L80B03480     
/* 011D8 80B03448 00C02825 */  or      $a1, $a2, $zero            ## $a1 = 00000348
/* 011DC 80B0344C 24860394 */  addiu   $a2, $a0, 0x0394           ## $a2 = 00000394
/* 011E0 80B03450 00C02825 */  or      $a1, $a2, $zero            ## $a1 = 00000394
/* 011E4 80B03454 AFA60018 */  sw      $a2, 0x0018($sp)           
/* 011E8 80B03458 0C0189B7 */  jal     ActorCollider_Cylinder_Update
              
/* 011EC 80B0345C AFA70024 */  sw      $a3, 0x0024($sp)           
/* 011F0 80B03460 8FA40024 */  lw      $a0, 0x0024($sp)           
/* 011F4 80B03464 3C010001 */  lui     $at, 0x0001                ## $at = 00010000
/* 011F8 80B03468 34211E60 */  ori     $at, $at, 0x1E60           ## $at = 00011E60
/* 011FC 80B0346C 8FA60018 */  lw      $a2, 0x0018($sp)           
/* 01200 80B03470 0C01767D */  jal     Actor_CollisionCheck_SetAC
              ## CollisionCheck_setAC
/* 01204 80B03474 00812821 */  addu    $a1, $a0, $at              
/* 01208 80B03478 1000000B */  beq     $zero, $zero, .L80B034A8   
/* 0120C 80B0347C 8FBF0014 */  lw      $ra, 0x0014($sp)           
.L80B03480:
/* 01210 80B03480 AFA60018 */  sw      $a2, 0x0018($sp)           
/* 01214 80B03484 0C0189B7 */  jal     ActorCollider_Cylinder_Update
              
/* 01218 80B03488 AFA70024 */  sw      $a3, 0x0024($sp)           
/* 0121C 80B0348C 8FA40024 */  lw      $a0, 0x0024($sp)           
/* 01220 80B03490 3C010001 */  lui     $at, 0x0001                ## $at = 00010000
/* 01224 80B03494 34211E60 */  ori     $at, $at, 0x1E60           ## $at = 00011E60
/* 01228 80B03498 8FA60018 */  lw      $a2, 0x0018($sp)           
/* 0122C 80B0349C 0C01767D */  jal     Actor_CollisionCheck_SetAC
              ## CollisionCheck_setAC
/* 01230 80B034A0 00812821 */  addu    $a1, $a0, $at              
/* 01234 80B034A4 8FBF0014 */  lw      $ra, 0x0014($sp)           
.L80B034A8:
/* 01238 80B034A8 27BD0020 */  addiu   $sp, $sp, 0x0020           ## $sp = 00000000
/* 0123C 80B034AC 03E00008 */  jr      $ra                        
/* 01240 80B034B0 00000000 */  nop
