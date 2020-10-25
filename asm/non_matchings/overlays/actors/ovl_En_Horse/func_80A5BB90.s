glabel func_80A5BB90
/* 008A0 80A5BB90 27BDFFE8 */  addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
/* 008A4 80A5BB94 3C010001 */  lui     $at, 0x0001                ## $at = 00010000
/* 008A8 80A5BB98 AFBF0014 */  sw      $ra, 0x0014($sp)           
/* 008AC 80A5BB9C AFA40018 */  sw      $a0, 0x0018($sp)           
/* 008B0 80A5BBA0 34211D60 */  ori     $at, $at, 0x1D60           ## $at = 00011D60
/* 008B4 80A5BBA4 0C029B84 */  jal     SkinMatrix_Vec3fMtxFMultXYZW              
/* 008B8 80A5BBA8 00812021 */  addu    $a0, $a0, $at              
/* 008BC 80A5BBAC 8FBF0014 */  lw      $ra, 0x0014($sp)           
/* 008C0 80A5BBB0 27BD0018 */  addiu   $sp, $sp, 0x0018           ## $sp = 00000000
/* 008C4 80A5BBB4 03E00008 */  jr      $ra                        
/* 008C8 80A5BBB8 00000000 */  nop
