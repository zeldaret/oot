glabel func_80B28280
/* 01BD0 80B28280 27BDFFB8 */  addiu   $sp, $sp, 0xFFB8           ## $sp = FFFFFFB8
/* 01BD4 80B28284 AFB00020 */  sw      $s0, 0x0020($sp)           
/* 01BD8 80B28288 8FB00058 */  lw      $s0, 0x0058($sp)           
/* 01BDC 80B2828C AFBF0024 */  sw      $ra, 0x0024($sp)           
/* 01BE0 80B28290 AFA40048 */  sw      $a0, 0x0048($sp)           
/* 01BE4 80B28294 AFA5004C */  sw      $a1, 0x004C($sp)           
/* 01BE8 80B28298 AFA60050 */  sw      $a2, 0x0050($sp)           
/* 01BEC 80B2829C AFA70054 */  sw      $a3, 0x0054($sp)           
/* 01BF0 80B282A0 8E0F0190 */  lw      $t7, 0x0190($s0)           ## 00000190
/* 01BF4 80B282A4 3C0E80B2 */  lui     $t6, %hi(func_80B2716C)    ## $t6 = 80B20000
/* 01BF8 80B282A8 25CE716C */  addiu   $t6, $t6, %lo(func_80B2716C) ## $t6 = 80B2716C
/* 01BFC 80B282AC 15CF0020 */  bne     $t6, $t7, .L80B28330       
/* 01C00 80B282B0 00A03025 */  or      $a2, $a1, $zero            ## $a2 = 00000000
/* 01C04 80B282B4 2401000B */  addiu   $at, $zero, 0x000B         ## $at = 0000000B
/* 01C08 80B282B8 10A10003 */  beq     $a1, $at, .L80B282C8       
/* 01C0C 80B282BC 3C0480B3 */  lui     $a0, %hi(D_80B28970)       ## $a0 = 80B30000
/* 01C10 80B282C0 24010014 */  addiu   $at, $zero, 0x0014         ## $at = 00000014
/* 01C14 80B282C4 14A1001A */  bne     $a1, $at, .L80B28330       
.L80B282C8:
/* 01C18 80B282C8 24848970 */  addiu   $a0, $a0, %lo(D_80B28970)  ## $a0 = 80B28970
/* 01C1C 80B282CC 27A5003C */  addiu   $a1, $sp, 0x003C           ## $a1 = FFFFFFF4
/* 01C20 80B282D0 0C0346BD */  jal     Matrix_MultVec3f              
/* 01C24 80B282D4 AFA6004C */  sw      $a2, 0x004C($sp)           
/* 01C28 80B282D8 3C0480B3 */  lui     $a0, %hi(D_80B2897C)       ## $a0 = 80B30000
/* 01C2C 80B282DC 2484897C */  addiu   $a0, $a0, %lo(D_80B2897C)  ## $a0 = 80B2897C
/* 01C30 80B282E0 0C0346BD */  jal     Matrix_MultVec3f              
/* 01C34 80B282E4 27A50030 */  addiu   $a1, $sp, 0x0030           ## $a1 = FFFFFFE8
/* 01C38 80B282E8 8FA6004C */  lw      $a2, 0x004C($sp)           
/* 01C3C 80B282EC 2401000B */  addiu   $at, $zero, 0x000B         ## $at = 0000000B
/* 01C40 80B282F0 27A50030 */  addiu   $a1, $sp, 0x0030           ## $a1 = FFFFFFE8
/* 01C44 80B282F4 14C10009 */  bne     $a2, $at, .L80B2831C       
/* 01C48 80B282F8 2604037C */  addiu   $a0, $s0, 0x037C           ## $a0 = 0000037C
/* 01C4C 80B282FC 26180348 */  addiu   $t8, $s0, 0x0348           ## $t8 = 00000348
/* 01C50 80B28300 AFB80010 */  sw      $t8, 0x0010($sp)           
/* 01C54 80B28304 260402FC */  addiu   $a0, $s0, 0x02FC           ## $a0 = 000002FC
/* 01C58 80B28308 27A6003C */  addiu   $a2, $sp, 0x003C           ## $a2 = FFFFFFF4
/* 01C5C 80B2830C 0C0189CD */  jal     func_80062734              
/* 01C60 80B28310 2607033C */  addiu   $a3, $s0, 0x033C           ## $a3 = 0000033C
/* 01C64 80B28314 10000007 */  beq     $zero, $zero, .L80B28334   
/* 01C68 80B28318 8FBF0024 */  lw      $ra, 0x0024($sp)           
.L80B2831C:
/* 01C6C 80B2831C 261903C8 */  addiu   $t9, $s0, 0x03C8           ## $t9 = 000003C8
/* 01C70 80B28320 AFB90010 */  sw      $t9, 0x0010($sp)           
/* 01C74 80B28324 27A6003C */  addiu   $a2, $sp, 0x003C           ## $a2 = FFFFFFF4
/* 01C78 80B28328 0C0189CD */  jal     func_80062734              
/* 01C7C 80B2832C 260703BC */  addiu   $a3, $s0, 0x03BC           ## $a3 = 000003BC
.L80B28330:
/* 01C80 80B28330 8FBF0024 */  lw      $ra, 0x0024($sp)           
.L80B28334:
/* 01C84 80B28334 8FB00020 */  lw      $s0, 0x0020($sp)           
/* 01C88 80B28338 27BD0048 */  addiu   $sp, $sp, 0x0048           ## $sp = 00000000
/* 01C8C 80B2833C 03E00008 */  jr      $ra                        
/* 01C90 80B28340 00000000 */  nop


