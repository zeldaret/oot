glabel func_808C4B90
/* 03A00 808C4B90 27BDFFE8 */  addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
/* 03A04 808C4B94 24010006 */  addiu   $at, $zero, 0x0006         ## $at = 00000006
/* 03A08 808C4B98 AFBF0014 */  sw      $ra, 0x0014($sp)           
/* 03A0C 808C4B9C AFA40018 */  sw      $a0, 0x0018($sp)           
/* 03A10 808C4BA0 AFA5001C */  sw      $a1, 0x001C($sp)           
/* 03A14 808C4BA4 AFA60020 */  sw      $a2, 0x0020($sp)           
/* 03A18 808C4BA8 14A10017 */  bne     $a1, $at, .L808C4C08       
/* 03A1C 808C4BAC AFA70024 */  sw      $a3, 0x0024($sp)           
/* 03A20 808C4BB0 8FA50028 */  lw      $a1, 0x0028($sp)           
/* 03A24 808C4BB4 3C04808D */  lui     $a0, %hi(D_808CA45C)       ## $a0 = 808D0000
/* 03A28 808C4BB8 2484A45C */  addiu   $a0, $a0, %lo(D_808CA45C)  ## $a0 = 808CA45C
/* 03A2C 808C4BBC 0C0346BD */  jal     Matrix_MultVec3f              
/* 03A30 808C4BC0 24A503EC */  addiu   $a1, $a1, 0x03EC           ## $a1 = 000003EC
/* 03A34 808C4BC4 8FA50028 */  lw      $a1, 0x0028($sp)           
/* 03A38 808C4BC8 3C04808D */  lui     $a0, %hi(D_808CA450)       ## $a0 = 808D0000
/* 03A3C 808C4BCC 2484A450 */  addiu   $a0, $a0, %lo(D_808CA450)  ## $a0 = 808CA450
/* 03A40 808C4BD0 0C0346BD */  jal     Matrix_MultVec3f              
/* 03A44 808C4BD4 24A50038 */  addiu   $a1, $a1, 0x0038           ## $a1 = 00000038
/* 03A48 808C4BD8 8FA50028 */  lw      $a1, 0x0028($sp)           
/* 03A4C 808C4BDC 3C04808D */  lui     $a0, %hi(D_808CA468)       ## $a0 = 808D0000
/* 03A50 808C4BE0 2484A468 */  addiu   $a0, $a0, %lo(D_808CA468)  ## $a0 = 808CA468
/* 03A54 808C4BE4 0C0346BD */  jal     Matrix_MultVec3f              
/* 03A58 808C4BE8 24A503F8 */  addiu   $a1, $a1, 0x03F8           ## $a1 = 000003F8
/* 03A5C 808C4BEC 8FA50028 */  lw      $a1, 0x0028($sp)           
/* 03A60 808C4BF0 3C04808D */  lui     $a0, %hi(D_808CA474)       ## $a0 = 808D0000
/* 03A64 808C4BF4 2484A474 */  addiu   $a0, $a0, %lo(D_808CA474)  ## $a0 = 808CA474
/* 03A68 808C4BF8 0C0346BD */  jal     Matrix_MultVec3f              
/* 03A6C 808C4BFC 24A5041C */  addiu   $a1, $a1, 0x041C           ## $a1 = 0000041C
/* 03A70 808C4C00 10000014 */  beq     $zero, $zero, .L808C4C54   
/* 03A74 808C4C04 8FA50028 */  lw      $a1, 0x0028($sp)           
.L808C4C08:
/* 03A78 808C4C08 8FAF001C */  lw      $t7, 0x001C($sp)           
/* 03A7C 808C4C0C 24010027 */  addiu   $at, $zero, 0x0027         ## $at = 00000027
/* 03A80 808C4C10 3C04808D */  lui     $a0, %hi(D_808CA480)       ## $a0 = 808D0000
/* 03A84 808C4C14 15E10007 */  bne     $t7, $at, .L808C4C34       
/* 03A88 808C4C18 8FB8001C */  lw      $t8, 0x001C($sp)           
/* 03A8C 808C4C1C 8FA50028 */  lw      $a1, 0x0028($sp)           
/* 03A90 808C4C20 2484A480 */  addiu   $a0, $a0, %lo(D_808CA480)  ## $a0 = 808CA480
/* 03A94 808C4C24 0C0346BD */  jal     Matrix_MultVec3f              
/* 03A98 808C4C28 24A50410 */  addiu   $a1, $a1, 0x0410           ## $a1 = 00000410
/* 03A9C 808C4C2C 10000009 */  beq     $zero, $zero, .L808C4C54   
/* 03AA0 808C4C30 8FA50028 */  lw      $a1, 0x0028($sp)           
.L808C4C34:
/* 03AA4 808C4C34 2401002E */  addiu   $at, $zero, 0x002E         ## $at = 0000002E
/* 03AA8 808C4C38 17010005 */  bne     $t8, $at, .L808C4C50       
/* 03AAC 808C4C3C 3C04808D */  lui     $a0, %hi(D_808CA48C)       ## $a0 = 808D0000
/* 03AB0 808C4C40 8FA50028 */  lw      $a1, 0x0028($sp)           
/* 03AB4 808C4C44 2484A48C */  addiu   $a0, $a0, %lo(D_808CA48C)  ## $a0 = 808CA48C
/* 03AB8 808C4C48 0C0346BD */  jal     Matrix_MultVec3f              
/* 03ABC 808C4C4C 24A50404 */  addiu   $a1, $a1, 0x0404           ## $a1 = 00000404
.L808C4C50:
/* 03AC0 808C4C50 8FA50028 */  lw      $a1, 0x0028($sp)           
.L808C4C54:
/* 03AC4 808C4C54 8FA4001C */  lw      $a0, 0x001C($sp)           
/* 03AC8 808C4C58 0C018A29 */  jal     func_800628A4              
/* 03ACC 808C4C5C 24A50440 */  addiu   $a1, $a1, 0x0440           ## $a1 = 00000440
/* 03AD0 808C4C60 8FBF0014 */  lw      $ra, 0x0014($sp)           
/* 03AD4 808C4C64 27BD0018 */  addiu   $sp, $sp, 0x0018           ## $sp = 00000000
/* 03AD8 808C4C68 03E00008 */  jr      $ra                        
/* 03ADC 808C4C6C 00000000 */  nop


