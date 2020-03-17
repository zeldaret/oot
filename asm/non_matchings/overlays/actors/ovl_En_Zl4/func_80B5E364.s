glabel func_80B5E364
/* 02BB4 80B5E364 27BDFFD8 */  addiu   $sp, $sp, 0xFFD8           ## $sp = FFFFFFD8
/* 02BB8 80B5E368 24010011 */  addiu   $at, $zero, 0x0011         ## $at = 00000011
/* 02BBC 80B5E36C AFBF0014 */  sw      $ra, 0x0014($sp)           
/* 02BC0 80B5E370 AFA40028 */  sw      $a0, 0x0028($sp)           
/* 02BC4 80B5E374 AFA5002C */  sw      $a1, 0x002C($sp)           
/* 02BC8 80B5E378 AFA60030 */  sw      $a2, 0x0030($sp)           
/* 02BCC 80B5E37C 14A1002C */  bne     $a1, $at, .L80B5E430       
/* 02BD0 80B5E380 AFA70034 */  sw      $a3, 0x0034($sp)           
/* 02BD4 80B5E384 8FB8003C */  lw      $t8, 0x003C($sp)           
/* 02BD8 80B5E388 44807000 */  mtc1    $zero, $f14                ## $f14 = 0.00
/* 02BDC 80B5E38C 27AF001C */  addiu   $t7, $sp, 0x001C           ## $t7 = FFFFFFF4
/* 02BE0 80B5E390 8B0801E8 */  lwl     $t0, 0x01E8($t8)           ## 000001E8
/* 02BE4 80B5E394 9B0801EB */  lwr     $t0, 0x01EB($t8)           ## 000001EB
/* 02BE8 80B5E398 3C014461 */  lui     $at, 0x4461                ## $at = 44610000
/* 02BEC 80B5E39C 44816000 */  mtc1    $at, $f12                  ## $f12 = 900.00
/* 02BF0 80B5E3A0 ADE80000 */  sw      $t0, 0x0000($t7)           ## FFFFFFF4
/* 02BF4 80B5E3A4 970801EC */  lhu     $t0, 0x01EC($t8)           ## 000001EC
/* 02BF8 80B5E3A8 44067000 */  mfc1    $a2, $f14                  
/* 02BFC 80B5E3AC 24070001 */  addiu   $a3, $zero, 0x0001         ## $a3 = 00000001
/* 02C00 80B5E3B0 0C034261 */  jal     Matrix_Translate              
/* 02C04 80B5E3B4 A5E80004 */  sh      $t0, 0x0004($t7)           ## FFFFFFF8
/* 02C08 80B5E3B8 87A9001E */  lh      $t1, 0x001E($sp)           
/* 02C0C 80B5E3BC 3C014700 */  lui     $at, 0x4700                ## $at = 47000000
/* 02C10 80B5E3C0 44814000 */  mtc1    $at, $f8                   ## $f8 = 32768.00
/* 02C14 80B5E3C4 44892000 */  mtc1    $t1, $f4                   ## $f4 = 0.00
/* 02C18 80B5E3C8 3C0180B6 */  lui     $at, %hi(D_80B5FD04)       ## $at = 80B60000
/* 02C1C 80B5E3CC C430FD04 */  lwc1    $f16, %lo(D_80B5FD04)($at) 
/* 02C20 80B5E3D0 468021A0 */  cvt.s.w $f6, $f4                   
/* 02C24 80B5E3D4 24050001 */  addiu   $a1, $zero, 0x0001         ## $a1 = 00000001
/* 02C28 80B5E3D8 46083283 */  div.s   $f10, $f6, $f8             
/* 02C2C 80B5E3DC 46105302 */  mul.s   $f12, $f10, $f16           
/* 02C30 80B5E3E0 0C0342DC */  jal     Matrix_RotateX              
/* 02C34 80B5E3E4 00000000 */  nop
/* 02C38 80B5E3E8 87AA001C */  lh      $t2, 0x001C($sp)           
/* 02C3C 80B5E3EC 3C014700 */  lui     $at, 0x4700                ## $at = 47000000
/* 02C40 80B5E3F0 44813000 */  mtc1    $at, $f6                   ## $f6 = 32768.00
/* 02C44 80B5E3F4 448A9000 */  mtc1    $t2, $f18                  ## $f18 = 0.00
/* 02C48 80B5E3F8 3C0180B6 */  lui     $at, %hi(D_80B5FD08)       ## $at = 80B60000
/* 02C4C 80B5E3FC C42AFD08 */  lwc1    $f10, %lo(D_80B5FD08)($at) 
/* 02C50 80B5E400 46809120 */  cvt.s.w $f4, $f18                  
/* 02C54 80B5E404 24050001 */  addiu   $a1, $zero, 0x0001         ## $a1 = 00000001
/* 02C58 80B5E408 46062203 */  div.s   $f8, $f4, $f6              
/* 02C5C 80B5E40C 460A4302 */  mul.s   $f12, $f8, $f10            
/* 02C60 80B5E410 0C0343B5 */  jal     Matrix_RotateZ              
/* 02C64 80B5E414 00000000 */  nop
/* 02C68 80B5E418 44807000 */  mtc1    $zero, $f14                ## $f14 = 0.00
/* 02C6C 80B5E41C 3C01C461 */  lui     $at, 0xC461                ## $at = C4610000
/* 02C70 80B5E420 44816000 */  mtc1    $at, $f12                  ## $f12 = -900.00
/* 02C74 80B5E424 44067000 */  mfc1    $a2, $f14                  
/* 02C78 80B5E428 0C034261 */  jal     Matrix_Translate              
/* 02C7C 80B5E42C 24070001 */  addiu   $a3, $zero, 0x0001         ## $a3 = 00000001
.L80B5E430:
/* 02C80 80B5E430 8FAB002C */  lw      $t3, 0x002C($sp)           
/* 02C84 80B5E434 2401000A */  addiu   $at, $zero, 0x000A         ## $at = 0000000A
/* 02C88 80B5E438 8FAD003C */  lw      $t5, 0x003C($sp)           
/* 02C8C 80B5E43C 55610021 */  bnel    $t3, $at, .L80B5E4C4       
/* 02C90 80B5E440 8FA8002C */  lw      $t0, 0x002C($sp)           
/* 02C94 80B5E444 89AF01EE */  lwl     $t7, 0x01EE($t5)           ## 000001EE
/* 02C98 80B5E448 99AF01F1 */  lwr     $t7, 0x01F1($t5)           ## 000001F1
/* 02C9C 80B5E44C 27AC001C */  addiu   $t4, $sp, 0x001C           ## $t4 = FFFFFFF4
/* 02CA0 80B5E450 3C014700 */  lui     $at, 0x4700                ## $at = 47000000
/* 02CA4 80B5E454 AD8F0000 */  sw      $t7, 0x0000($t4)           ## FFFFFFF4
/* 02CA8 80B5E458 95AF01F2 */  lhu     $t7, 0x01F2($t5)           ## 000001F2
/* 02CAC 80B5E45C 44812000 */  mtc1    $at, $f4                   ## $f4 = 32768.00
/* 02CB0 80B5E460 3C0180B6 */  lui     $at, %hi(D_80B5FD0C)       ## $at = 80B60000
/* 02CB4 80B5E464 A58F0004 */  sh      $t7, 0x0004($t4)           ## FFFFFFF8
/* 02CB8 80B5E468 87B8001E */  lh      $t8, 0x001E($sp)           
/* 02CBC 80B5E46C C428FD0C */  lwc1    $f8, %lo(D_80B5FD0C)($at)  
/* 02CC0 80B5E470 24050001 */  addiu   $a1, $zero, 0x0001         ## $a1 = 00000001
/* 02CC4 80B5E474 44988000 */  mtc1    $t8, $f16                  ## $f16 = 0.00
/* 02CC8 80B5E478 00000000 */  nop
/* 02CCC 80B5E47C 468084A0 */  cvt.s.w $f18, $f16                 
/* 02CD0 80B5E480 46049183 */  div.s   $f6, $f18, $f4             
/* 02CD4 80B5E484 46083302 */  mul.s   $f12, $f6, $f8             
/* 02CD8 80B5E488 0C034348 */  jal     Matrix_RotateY              
/* 02CDC 80B5E48C 00000000 */  nop
/* 02CE0 80B5E490 87B9001C */  lh      $t9, 0x001C($sp)           
/* 02CE4 80B5E494 3C014700 */  lui     $at, 0x4700                ## $at = 47000000
/* 02CE8 80B5E498 44819000 */  mtc1    $at, $f18                  ## $f18 = 32768.00
/* 02CEC 80B5E49C 44995000 */  mtc1    $t9, $f10                  ## $f10 = 0.00
/* 02CF0 80B5E4A0 3C0180B6 */  lui     $at, %hi(D_80B5FD10)       ## $at = 80B60000
/* 02CF4 80B5E4A4 C426FD10 */  lwc1    $f6, %lo(D_80B5FD10)($at)  
/* 02CF8 80B5E4A8 46805420 */  cvt.s.w $f16, $f10                 
/* 02CFC 80B5E4AC 24050001 */  addiu   $a1, $zero, 0x0001         ## $a1 = 00000001
/* 02D00 80B5E4B0 46128103 */  div.s   $f4, $f16, $f18            
/* 02D04 80B5E4B4 46062302 */  mul.s   $f12, $f4, $f6             
/* 02D08 80B5E4B8 0C0342DC */  jal     Matrix_RotateX              
/* 02D0C 80B5E4BC 00000000 */  nop
/* 02D10 80B5E4C0 8FA8002C */  lw      $t0, 0x002C($sp)           
.L80B5E4C4:
/* 02D14 80B5E4C4 29010003 */  slti    $at, $t0, 0x0003           
/* 02D18 80B5E4C8 14200004 */  bne     $at, $zero, .L80B5E4DC     
/* 02D1C 80B5E4CC 29010007 */  slti    $at, $t0, 0x0007           
/* 02D20 80B5E4D0 10200002 */  beq     $at, $zero, .L80B5E4DC     
/* 02D24 80B5E4D4 8FA90030 */  lw      $t1, 0x0030($sp)           
/* 02D28 80B5E4D8 AD200000 */  sw      $zero, 0x0000($t1)         ## 00000000
.L80B5E4DC:
/* 02D2C 80B5E4DC 8FBF0014 */  lw      $ra, 0x0014($sp)           
/* 02D30 80B5E4E0 27BD0028 */  addiu   $sp, $sp, 0x0028           ## $sp = 00000000
/* 02D34 80B5E4E4 00001025 */  or      $v0, $zero, $zero          ## $v0 = 00000000
/* 02D38 80B5E4E8 03E00008 */  jr      $ra                        
/* 02D3C 80B5E4EC 00000000 */  nop


