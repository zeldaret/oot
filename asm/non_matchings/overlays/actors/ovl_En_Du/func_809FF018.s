glabel func_809FF018
/* 013E8 809FF018 27BDFFD8 */  addiu   $sp, $sp, 0xFFD8           ## $sp = FFFFFFD8
/* 013EC 809FF01C 3C0E80A0 */  lui     $t6, %hi(D_809FF40C)       ## $t6 = 80A00000
/* 013F0 809FF020 AFBF0014 */  sw      $ra, 0x0014($sp)           
/* 013F4 809FF024 AFA40028 */  sw      $a0, 0x0028($sp)           
/* 013F8 809FF028 AFA60030 */  sw      $a2, 0x0030($sp)           
/* 013FC 809FF02C AFA70034 */  sw      $a3, 0x0034($sp)           
/* 01400 809FF030 25CEF40C */  addiu   $t6, $t6, %lo(D_809FF40C)  ## $t6 = 809FF40C
/* 01404 809FF034 8DD80000 */  lw      $t8, 0x0000($t6)           ## 809FF40C
/* 01408 809FF038 27A40018 */  addiu   $a0, $sp, 0x0018           ## $a0 = FFFFFFF0
/* 0140C 809FF03C 24010010 */  addiu   $at, $zero, 0x0010         ## $at = 00000010
/* 01410 809FF040 AC980000 */  sw      $t8, 0x0000($a0)           ## FFFFFFF0
/* 01414 809FF044 8DCF0004 */  lw      $t7, 0x0004($t6)           ## 809FF410
/* 01418 809FF048 AC8F0004 */  sw      $t7, 0x0004($a0)           ## FFFFFFF4
/* 0141C 809FF04C 8DD80008 */  lw      $t8, 0x0008($t6)           ## 809FF414
/* 01420 809FF050 14A10004 */  bne     $a1, $at, .L809FF064       
/* 01424 809FF054 AC980008 */  sw      $t8, 0x0008($a0)           ## FFFFFFF8
/* 01428 809FF058 8FA50038 */  lw      $a1, 0x0038($sp)           
/* 0142C 809FF05C 0C0346BD */  jal     Matrix_MultVec3f              
/* 01430 809FF060 24A50038 */  addiu   $a1, $a1, 0x0038           ## $a1 = 00000038
.L809FF064:
/* 01434 809FF064 8FBF0014 */  lw      $ra, 0x0014($sp)           
/* 01438 809FF068 27BD0028 */  addiu   $sp, $sp, 0x0028           ## $sp = 00000000
/* 0143C 809FF06C 03E00008 */  jr      $ra                        
/* 01440 809FF070 00000000 */  nop
