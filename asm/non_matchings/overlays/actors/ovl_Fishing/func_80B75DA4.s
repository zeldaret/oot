glabel func_80B75DA4
/* 0C404 80B75DA4 27BDFFE8 */  addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
/* 0C408 80B75DA8 2401000B */  addiu   $at, $zero, 0x000B         ## $at = 0000000B
/* 0C40C 80B75DAC AFBF0014 */  sw      $ra, 0x0014($sp)           
/* 0C410 80B75DB0 AFA40018 */  sw      $a0, 0x0018($sp)           
/* 0C414 80B75DB4 AFA60020 */  sw      $a2, 0x0020($sp)           
/* 0C418 80B75DB8 14A10006 */  bne     $a1, $at, .L80B75DD4       
/* 0C41C 80B75DBC AFA70024 */  sw      $a3, 0x0024($sp)           
/* 0C420 80B75DC0 8FA50028 */  lw      $a1, 0x0028($sp)           
/* 0C424 80B75DC4 3C0480B8 */  lui     $a0, %hi(D_80B7AFAC)       ## $a0 = 80B80000
/* 0C428 80B75DC8 2484AFAC */  addiu   $a0, $a0, %lo(D_80B7AFAC)  ## $a0 = 80B7AFAC
/* 0C42C 80B75DCC 0C0346BD */  jal     Matrix_MultVec3f              
/* 0C430 80B75DD0 24A501C0 */  addiu   $a1, $a1, 0x01C0           ## $a1 = 000001C0
.L80B75DD4:
/* 0C434 80B75DD4 8FBF0014 */  lw      $ra, 0x0014($sp)           
/* 0C438 80B75DD8 27BD0018 */  addiu   $sp, $sp, 0x0018           ## $sp = 00000000
/* 0C43C 80B75DDC 03E00008 */  jr      $ra                        
/* 0C440 80B75DE0 00000000 */  nop


