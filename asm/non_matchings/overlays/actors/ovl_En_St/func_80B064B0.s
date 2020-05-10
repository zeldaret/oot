glabel func_80B064B0
/* 01C20 80B064B0 27BDFFE8 */  addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
/* 01C24 80B064B4 AFBF0014 */  sw      $ra, 0x0014($sp)           
/* 01C28 80B064B8 AFA40018 */  sw      $a0, 0x0018($sp)           
/* 01C2C 80B064BC 0C2C1807 */  jal     func_80B0601C              
/* 01C30 80B064C0 AFA5001C */  sw      $a1, 0x001C($sp)           
/* 01C34 80B064C4 10400009 */  beq     $v0, $zero, .L80B064EC     
/* 01C38 80B064C8 8FA40018 */  lw      $a0, 0x0018($sp)           
/* 01C3C 80B064CC 0C2C140F */  jal     func_80B0503C              
/* 01C40 80B064D0 8FA40018 */  lw      $a0, 0x0018($sp)           
/* 01C44 80B064D4 3C0580B0 */  lui     $a1, %hi(func_80B06700)    ## $a1 = 80B00000
/* 01C48 80B064D8 24A56700 */  addiu   $a1, $a1, %lo(func_80B06700) ## $a1 = 80B06700
/* 01C4C 80B064DC 0C2C1224 */  jal     func_80B04890              
/* 01C50 80B064E0 8FA40018 */  lw      $a0, 0x0018($sp)           
/* 01C54 80B064E4 10000004 */  beq     $zero, $zero, .L80B064F8   
/* 01C58 80B064E8 8FBF0014 */  lw      $ra, 0x0014($sp)           
.L80B064EC:
/* 01C5C 80B064EC 0C2C17EC */  jal     func_80B05FB0              
/* 01C60 80B064F0 8FA5001C */  lw      $a1, 0x001C($sp)           
/* 01C64 80B064F4 8FBF0014 */  lw      $ra, 0x0014($sp)           
.L80B064F8:
/* 01C68 80B064F8 27BD0018 */  addiu   $sp, $sp, 0x0018           ## $sp = 00000000
/* 01C6C 80B064FC 03E00008 */  jr      $ra                        
/* 01C70 80B06500 00000000 */  nop
