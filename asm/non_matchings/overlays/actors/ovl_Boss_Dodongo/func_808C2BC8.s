.late_rodata
glabel D_808CA6B4
    .float 0.001

.text
glabel func_808C2BC8
/* 01A38 808C2BC8 27BDFFD8 */  addiu   $sp, $sp, 0xFFD8           ## $sp = FFFFFFD8
/* 01A3C 808C2BCC AFA40028 */  sw      $a0, 0x0028($sp)           
/* 01A40 808C2BD0 AFBF001C */  sw      $ra, 0x001C($sp)           
/* 01A44 808C2BD4 2484014C */  addiu   $a0, $a0, 0x014C           ## $a0 = 0000014C
/* 01A48 808C2BD8 AFA5002C */  sw      $a1, 0x002C($sp)           
/* 01A4C 808C2BDC 0C02927F */  jal     SkelAnime_Update
              
/* 01A50 808C2BE0 AFA40020 */  sw      $a0, 0x0020($sp)           
/* 01A54 808C2BE4 3C01808D */  lui     $at, %hi(D_808CA6B4)       ## $at = 808D0000
/* 01A58 808C2BE8 C424A6B4 */  lwc1    $f4, %lo(D_808CA6B4)($at)  
/* 01A5C 808C2BEC 8FA40028 */  lw      $a0, 0x0028($sp)           
/* 01A60 808C2BF0 3C073CA3 */  lui     $a3, 0x3CA3                ## $a3 = 3CA30000
/* 01A64 808C2BF4 34E7D70A */  ori     $a3, $a3, 0xD70A           ## $a3 = 3CA3D70A
/* 01A68 808C2BF8 3C053F80 */  lui     $a1, 0x3F80                ## $a1 = 3F800000
/* 01A6C 808C2BFC 3C063F00 */  lui     $a2, 0x3F00                ## $a2 = 3F000000
/* 01A70 808C2C00 E7A40010 */  swc1    $f4, 0x0010($sp)           
/* 01A74 808C2C04 0C01E0C4 */  jal     Math_SmoothStepToF
              
/* 01A78 808C2C08 248401F8 */  addiu   $a0, $a0, 0x01F8           ## $a0 = 000001F8
/* 01A7C 808C2C0C 8FA40028 */  lw      $a0, 0x0028($sp)           
/* 01A80 808C2C10 44803000 */  mtc1    $zero, $f6                 ## $f6 = 0.00
/* 01A84 808C2C14 3C053D4C */  lui     $a1, 0x3D4C                ## $a1 = 3D4C0000
/* 01A88 808C2C18 3C073BA3 */  lui     $a3, 0x3BA3                ## $a3 = 3BA30000
/* 01A8C 808C2C1C 34E7D70A */  ori     $a3, $a3, 0xD70A           ## $a3 = 3BA3D70A
/* 01A90 808C2C20 34A5CCCD */  ori     $a1, $a1, 0xCCCD           ## $a1 = 3D4CCCCD
/* 01A94 808C2C24 3C063F80 */  lui     $a2, 0x3F80                ## $a2 = 3F800000
/* 01A98 808C2C28 24840208 */  addiu   $a0, $a0, 0x0208           ## $a0 = 00000208
/* 01A9C 808C2C2C 0C01E0C4 */  jal     Math_SmoothStepToF
              
/* 01AA0 808C2C30 E7A60010 */  swc1    $f6, 0x0010($sp)           
/* 01AA4 808C2C34 3C040600 */  lui     $a0, %hi(D_06001074)                ## $a0 = 06000000
/* 01AA8 808C2C38 0C028800 */  jal     Animation_GetLastFrame
              
/* 01AAC 808C2C3C 24841074 */  addiu   $a0, $a0, %lo(D_06001074)           ## $a0 = 06001074
/* 01AB0 808C2C40 44824000 */  mtc1    $v0, $f8                   ## $f8 = 0.00
/* 01AB4 808C2C44 8FA40020 */  lw      $a0, 0x0020($sp)           
/* 01AB8 808C2C48 46804220 */  cvt.s.w $f8, $f8                   
/* 01ABC 808C2C4C 44054000 */  mfc1    $a1, $f8                   
/* 01AC0 808C2C50 0C0295B2 */  jal     Animation_OnFrame              
/* 01AC4 808C2C54 00000000 */  nop
/* 01AC8 808C2C58 50400004 */  beql    $v0, $zero, .L808C2C6C     
/* 01ACC 808C2C5C 8FBF001C */  lw      $ra, 0x001C($sp)           
/* 01AD0 808C2C60 0C230A90 */  jal     func_808C2A40              
/* 01AD4 808C2C64 8FA40028 */  lw      $a0, 0x0028($sp)           
/* 01AD8 808C2C68 8FBF001C */  lw      $ra, 0x001C($sp)           
.L808C2C6C:
/* 01ADC 808C2C6C 27BD0028 */  addiu   $sp, $sp, 0x0028           ## $sp = 00000000
/* 01AE0 808C2C70 03E00008 */  jr      $ra                        
/* 01AE4 808C2C74 00000000 */  nop
