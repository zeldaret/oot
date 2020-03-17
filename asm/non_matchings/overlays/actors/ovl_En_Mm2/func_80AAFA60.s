glabel func_80AAFA60
/* 00C10 80AAFA60 27BDFFE8 */  addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
/* 00C14 80AAFA64 2401000F */  addiu   $at, $zero, 0x000F         ## $at = 0000000F
/* 00C18 80AAFA68 AFBF0014 */  sw      $ra, 0x0014($sp)           
/* 00C1C 80AAFA6C AFA40018 */  sw      $a0, 0x0018($sp)           
/* 00C20 80AAFA70 AFA60020 */  sw      $a2, 0x0020($sp)           
/* 00C24 80AAFA74 14A10006 */  bne     $a1, $at, .L80AAFA90       
/* 00C28 80AAFA78 AFA70024 */  sw      $a3, 0x0024($sp)           
/* 00C2C 80AAFA7C 8FA50028 */  lw      $a1, 0x0028($sp)           
/* 00C30 80AAFA80 3C0480AB */  lui     $a0, %hi(D_80AAFB68)       ## $a0 = 80AB0000
/* 00C34 80AAFA84 2484FB68 */  addiu   $a0, $a0, %lo(D_80AAFB68)  ## $a0 = 80AAFB68
/* 00C38 80AAFA88 0C0346BD */  jal     Matrix_MultVec3f              
/* 00C3C 80AAFA8C 24A50038 */  addiu   $a1, $a1, 0x0038           ## $a1 = 00000038
.L80AAFA90:
/* 00C40 80AAFA90 8FBF0014 */  lw      $ra, 0x0014($sp)           
/* 00C44 80AAFA94 27BD0018 */  addiu   $sp, $sp, 0x0018           ## $sp = 00000000
/* 00C48 80AAFA98 03E00008 */  jr      $ra                        
/* 00C4C 80AAFA9C 00000000 */  nop

