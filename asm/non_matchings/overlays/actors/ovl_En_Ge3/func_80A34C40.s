glabel func_80A34C40
/* 00620 80A34C40 27BDFFC8 */  addiu   $sp, $sp, 0xFFC8           ## $sp = FFFFFFC8
/* 00624 80A34C44 AFB00020 */  sw      $s0, 0x0020($sp)           
/* 00628 80A34C48 00808025 */  or      $s0, $a0, $zero            ## $s0 = 00000000
/* 0062C 80A34C4C AFBF0024 */  sw      $ra, 0x0024($sp)           
/* 00630 80A34C50 AFA5003C */  sw      $a1, 0x003C($sp)           
/* 00634 80A34C54 2606014C */  addiu   $a2, $s0, 0x014C           ## $a2 = 0000014C
/* 00638 80A34C58 00C02825 */  or      $a1, $a2, $zero            ## $a1 = 0000014C
/* 0063C 80A34C5C 0C0189B7 */  jal     Collider_CylinderUpdate
              
/* 00640 80A34C60 AFA6002C */  sw      $a2, 0x002C($sp)           
/* 00644 80A34C64 8FA4003C */  lw      $a0, 0x003C($sp)           
/* 00648 80A34C68 3C010001 */  lui     $at, 0x0001                ## $at = 00010000
/* 0064C 80A34C6C 34211E60 */  ori     $at, $at, 0x1E60           ## $at = 00011E60
/* 00650 80A34C70 8FA6002C */  lw      $a2, 0x002C($sp)           
/* 00654 80A34C74 0C017713 */  jal     CollisionCheck_SetOC
              ## CollisionCheck_setOT
/* 00658 80A34C78 00812821 */  addu    $a1, $a0, $at              
/* 0065C 80A34C7C 3C014220 */  lui     $at, 0x4220                ## $at = 42200000
/* 00660 80A34C80 44810000 */  mtc1    $at, $f0                   ## $f0 = 40.00
/* 00664 80A34C84 240E0005 */  addiu   $t6, $zero, 0x0005         ## $t6 = 00000005
/* 00668 80A34C88 AFAE0014 */  sw      $t6, 0x0014($sp)           
/* 0066C 80A34C8C 44060000 */  mfc1    $a2, $f0                   
/* 00670 80A34C90 8FA4003C */  lw      $a0, 0x003C($sp)           
/* 00674 80A34C94 02002825 */  or      $a1, $s0, $zero            ## $a1 = 00000000
/* 00678 80A34C98 3C0741C8 */  lui     $a3, 0x41C8                ## $a3 = 41C80000
/* 0067C 80A34C9C 0C00B92D */  jal     func_8002E4B4              
/* 00680 80A34CA0 E7A00010 */  swc1    $f0, 0x0010($sp)           
/* 00684 80A34CA4 960F030C */  lhu     $t7, 0x030C($s0)           ## 0000030C
/* 00688 80A34CA8 31F80002 */  andi    $t8, $t7, 0x0002           ## $t8 = 00000000
/* 0068C 80A34CAC 57000009 */  bnel    $t8, $zero, .L80A34CD4     
/* 00690 80A34CB0 8FBF0024 */  lw      $ra, 0x0024($sp)           
/* 00694 80A34CB4 0C02927F */  jal     SkelAnime_Update
              
/* 00698 80A34CB8 26040198 */  addiu   $a0, $s0, 0x0198           ## $a0 = 00000198
/* 0069C 80A34CBC 50400005 */  beql    $v0, $zero, .L80A34CD4     
/* 006A0 80A34CC0 8FBF0024 */  lw      $ra, 0x0024($sp)           
/* 006A4 80A34CC4 9619030C */  lhu     $t9, 0x030C($s0)           ## 0000030C
/* 006A8 80A34CC8 37280002 */  ori     $t0, $t9, 0x0002           ## $t0 = 00000002
/* 006AC 80A34CCC A608030C */  sh      $t0, 0x030C($s0)           ## 0000030C
/* 006B0 80A34CD0 8FBF0024 */  lw      $ra, 0x0024($sp)           
.L80A34CD4:
/* 006B4 80A34CD4 8FB00020 */  lw      $s0, 0x0020($sp)           
/* 006B8 80A34CD8 27BD0038 */  addiu   $sp, $sp, 0x0038           ## $sp = 00000000
/* 006BC 80A34CDC 03E00008 */  jr      $ra                        
/* 006C0 80A34CE0 00000000 */  nop
