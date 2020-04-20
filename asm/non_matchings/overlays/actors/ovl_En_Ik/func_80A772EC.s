glabel func_80A772EC
/* 02FDC 80A772EC 27BDFFD0 */  addiu   $sp, $sp, 0xFFD0           ## $sp = FFFFFFD0
/* 02FE0 80A772F0 3C010001 */  lui     $at, 0x0001                ## $at = 00010000
/* 02FE4 80A772F4 AFA40030 */  sw      $a0, 0x0030($sp)           
/* 02FE8 80A772F8 34211D60 */  ori     $at, $at, 0x1D60           ## $at = 00011D60
/* 02FEC 80A772FC AFA50034 */  sw      $a1, 0x0034($sp)           
/* 02FF0 80A77300 00A12021 */  addu    $a0, $a1, $at              
/* 02FF4 80A77304 8FA50030 */  lw      $a1, 0x0030($sp)           
/* 02FF8 80A77308 AFBF001C */  sw      $ra, 0x001C($sp)           
/* 02FFC 80A7730C 3C0680A8 */  lui     $a2, %hi(D_80A78FA0)       ## $a2 = 80A80000
/* 03000 80A77310 24C68FA0 */  addiu   $a2, $a2, %lo(D_80A78FA0)  ## $a2 = 80A78FA0
/* 03004 80A77314 27A70024 */  addiu   $a3, $sp, 0x0024           ## $a3 = FFFFFFF4
/* 03008 80A77318 0C029B84 */  jal     func_800A6E10              
/* 0300C 80A7731C 24A50024 */  addiu   $a1, $a1, 0x0024           ## $a1 = 00000024
/* 03010 80A77320 3C078013 */  lui     $a3, %hi(D_801333E0)
/* 03014 80A77324 3C0E8013 */  lui     $t6, %hi(D_801333E8)
/* 03018 80A77328 24E733E0 */  addiu   $a3, %lo(D_801333E0)
/* 0301C 80A7732C 25CE33E8 */  addiu   $t6, %lo(D_801333E8)
/* 03020 80A77330 3C0580A8 */  lui     $a1, %hi(D_80A78FA0)       ## $a1 = 80A80000
/* 03024 80A77334 24A58FA0 */  addiu   $a1, $a1, %lo(D_80A78FA0)  ## $a1 = 80A78FA0
/* 03028 80A77338 AFAE0014 */  sw      $t6, 0x0014($sp)           
/* 0302C 80A7733C AFA70010 */  sw      $a3, 0x0010($sp)           
/* 03030 80A77340 240439C0 */  addiu   $a0, $zero, 0x39C0         ## $a0 = 000039C0
/* 03034 80A77344 0C03DCE3 */  jal     Audio_PlaySoundGeneral
              
/* 03038 80A77348 24060004 */  addiu   $a2, $zero, 0x0004         ## $a2 = 00000004
/* 0303C 80A7734C 8FBF001C */  lw      $ra, 0x001C($sp)           
/* 03040 80A77350 27BD0030 */  addiu   $sp, $sp, 0x0030           ## $sp = 00000000
/* 03044 80A77354 03E00008 */  jr      $ra                        
/* 03048 80A77358 00000000 */  nop
