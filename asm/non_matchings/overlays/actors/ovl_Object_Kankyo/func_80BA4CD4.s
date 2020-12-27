.late_rodata
glabel D_80BA5CBC
    .float 0.01

.text
glabel func_80BA4CD4
/* 02234 80BA4CD4 27BDFFD8 */  addiu   $sp, $sp, 0xFFD8           ## $sp = FFFFFFD8
/* 02238 80BA4CD8 AFBF0024 */  sw      $ra, 0x0024($sp)           
/* 0223C 80BA4CDC AFB00020 */  sw      $s0, 0x0020($sp)           
/* 02240 80BA4CE0 90AE1D6C */  lbu     $t6, 0x1D6C($a1)           ## 00001D6C
/* 02244 80BA4CE4 00808025 */  or      $s0, $a0, $zero            ## $s0 = 00000000
/* 02248 80BA4CE8 51C00020 */  beql    $t6, $zero, .L80BA4D6C     
/* 0224C 80BA4CEC 8FBF0024 */  lw      $ra, 0x0024($sp)           
/* 02250 80BA4CF0 8CA21D90 */  lw      $v0, 0x1D90($a1)           ## 00001D90
/* 02254 80BA4CF4 5040001D */  beql    $v0, $zero, .L80BA4D6C     
/* 02258 80BA4CF8 8FBF0024 */  lw      $ra, 0x0024($sp)           
/* 0225C 80BA4CFC 944F0000 */  lhu     $t7, 0x0000($v0)           ## 00000000
/* 02260 80BA4D00 24010002 */  addiu   $at, $zero, 0x0002         ## $at = 00000002
/* 02264 80BA4D04 55E10019 */  bnel    $t7, $at, .L80BA4D6C       
/* 02268 80BA4D08 8FBF0024 */  lw      $ra, 0x0024($sp)           
/* 0226C 80BA4D0C 0C00BE0A */  jal     Audio_PlayActorSound2
              
/* 02270 80BA4D10 2405309A */  addiu   $a1, $zero, 0x309A         ## $a1 = 0000309A
/* 02274 80BA4D14 9202018C */  lbu     $v0, 0x018C($s0)           ## 0000018C
/* 02278 80BA4D18 3C053FE6 */  lui     $a1, 0x3FE6                ## $a1 = 3FE60000
/* 0227C 80BA4D1C 34A56666 */  ori     $a1, $a1, 0x6666           ## $a1 = 3FE66666
/* 02280 80BA4D20 0002C400 */  sll     $t8, $v0, 16               
/* 02284 80BA4D24 0018CC03 */  sra     $t9, $t8, 16               
/* 02288 80BA4D28 27280014 */  addiu   $t0, $t9, 0x0014           ## $t0 = 00000014
/* 0228C 80BA4D2C 29010100 */  slti    $at, $t0, 0x0100           
/* 02290 80BA4D30 14200004 */  bne     $at, $zero, .L80BA4D44     
/* 02294 80BA4D34 26040190 */  addiu   $a0, $s0, 0x0190           ## $a0 = 00000190
/* 02298 80BA4D38 240900FF */  addiu   $t1, $zero, 0x00FF         ## $t1 = 000000FF
/* 0229C 80BA4D3C 10000003 */  beq     $zero, $zero, .L80BA4D4C   
/* 022A0 80BA4D40 A209018C */  sb      $t1, 0x018C($s0)           ## 0000018C
.L80BA4D44:
/* 022A4 80BA4D44 244A0014 */  addiu   $t2, $v0, 0x0014           ## $t2 = 00000014
/* 022A8 80BA4D48 A20A018C */  sb      $t2, 0x018C($s0)           ## 0000018C
.L80BA4D4C:
/* 022AC 80BA4D4C 3C0180BA */  lui     $at, %hi(D_80BA5CBC)       ## $at = 80BA0000
/* 022B0 80BA4D50 C4245CBC */  lwc1    $f4, %lo(D_80BA5CBC)($at)  
/* 022B4 80BA4D54 3C073E8F */  lui     $a3, 0x3E8F                ## $a3 = 3E8F0000
/* 022B8 80BA4D58 34E75C29 */  ori     $a3, $a3, 0x5C29           ## $a3 = 3E8F5C29
/* 022BC 80BA4D5C 3C063F00 */  lui     $a2, 0x3F00                ## $a2 = 3F000000
/* 022C0 80BA4D60 0C01E0C4 */  jal     Math_SmoothStepToF
              
/* 022C4 80BA4D64 E7A40010 */  swc1    $f4, 0x0010($sp)           
/* 022C8 80BA4D68 8FBF0024 */  lw      $ra, 0x0024($sp)           
.L80BA4D6C:
/* 022CC 80BA4D6C 8FB00020 */  lw      $s0, 0x0020($sp)           
/* 022D0 80BA4D70 27BD0028 */  addiu   $sp, $sp, 0x0028           ## $sp = 00000000
/* 022D4 80BA4D74 03E00008 */  jr      $ra                        
/* 022D8 80BA4D78 00000000 */  nop
