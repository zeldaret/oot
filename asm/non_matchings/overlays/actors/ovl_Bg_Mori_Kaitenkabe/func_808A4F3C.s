glabel func_808A4F3C
/* 0017C 808A4F3C 27BDFFE8 */  addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
/* 00180 808A4F40 AFA40018 */  sw      $a0, 0x0018($sp)           
/* 00184 808A4F44 3C010001 */  lui     $at, 0x0001                ## $at = 00010000
/* 00188 808A4F48 8FAE0018 */  lw      $t6, 0x0018($sp)           
/* 0018C 808A4F4C 342117A4 */  ori     $at, $at, 0x17A4           ## $at = 000117A4
/* 00190 808A4F50 AFBF0014 */  sw      $ra, 0x0014($sp)           
/* 00194 808A4F54 00A12021 */  addu    $a0, $a1, $at              
/* 00198 808A4F58 0C026062 */  jal     Object_IsLoaded
              
/* 0019C 808A4F5C 81C50184 */  lb      $a1, 0x0184($t6)           ## 00000184
/* 001A0 808A4F60 50400008 */  beql    $v0, $zero, .L808A4F84     
/* 001A4 808A4F64 8FBF0014 */  lw      $ra, 0x0014($sp)           
/* 001A8 808A4F68 0C2293E4 */  jal     func_808A4F90              
/* 001AC 808A4F6C 8FA40018 */  lw      $a0, 0x0018($sp)           
/* 001B0 808A4F70 8FB80018 */  lw      $t8, 0x0018($sp)           
/* 001B4 808A4F74 3C0F808A */  lui     $t7, %hi(func_808A52AC)    ## $t7 = 808A0000
/* 001B8 808A4F78 25EF52AC */  addiu   $t7, $t7, %lo(func_808A52AC) ## $t7 = 808A52AC
/* 001BC 808A4F7C AF0F0134 */  sw      $t7, 0x0134($t8)           ## 00000134
/* 001C0 808A4F80 8FBF0014 */  lw      $ra, 0x0014($sp)           
.L808A4F84:
/* 001C4 808A4F84 27BD0018 */  addiu   $sp, $sp, 0x0018           ## $sp = 00000000
/* 001C8 808A4F88 03E00008 */  jr      $ra                        
/* 001CC 808A4F8C 00000000 */  nop


