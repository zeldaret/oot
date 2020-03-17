glabel func_808D08A4
/* 05AE4 808D08A4 27BDFFE8 */  addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
/* 05AE8 808D08A8 24010005 */  addiu   $at, $zero, 0x0005         ## $at = 00000005
/* 05AEC 808D08AC AFBF0014 */  sw      $ra, 0x0014($sp)           
/* 05AF0 808D08B0 AFA40018 */  sw      $a0, 0x0018($sp)           
/* 05AF4 808D08B4 AFA60020 */  sw      $a2, 0x0020($sp)           
/* 05AF8 808D08B8 14A1000B */  bne     $a1, $at, .L808D08E8       
/* 05AFC 808D08BC AFA70024 */  sw      $a3, 0x0024($sp)           
/* 05B00 808D08C0 8FA50028 */  lw      $a1, 0x0028($sp)           
/* 05B04 808D08C4 3C04808D */  lui     $a0, %hi(D_808D1BA0)       ## $a0 = 808D0000
/* 05B08 808D08C8 24841BA0 */  addiu   $a0, $a0, %lo(D_808D1BA0)  ## $a0 = 808D1BA0
/* 05B0C 808D08CC 0C0346BD */  jal     Matrix_MultVec3f              
/* 05B10 808D08D0 24A50038 */  addiu   $a1, $a1, 0x0038           ## $a1 = 00000038
/* 05B14 808D08D4 8FA50028 */  lw      $a1, 0x0028($sp)           
/* 05B18 808D08D8 3C04808D */  lui     $a0, %hi(D_808D1BAC)       ## $a0 = 808D0000
/* 05B1C 808D08DC 24841BAC */  addiu   $a0, $a0, %lo(D_808D1BAC)  ## $a0 = 808D1BAC
/* 05B20 808D08E0 0C0346BD */  jal     Matrix_MultVec3f              
/* 05B24 808D08E4 24A513F4 */  addiu   $a1, $a1, 0x13F4           ## $a1 = 000013F4
.L808D08E8:
/* 05B28 808D08E8 8FBF0014 */  lw      $ra, 0x0014($sp)           
/* 05B2C 808D08EC 27BD0018 */  addiu   $sp, $sp, 0x0018           ## $sp = 00000000
/* 05B30 808D08F0 03E00008 */  jr      $ra                        
/* 05B34 808D08F4 00000000 */  nop


