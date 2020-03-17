glabel func_80A7E4D8
/* 00078 80A7E4D8 27BDFFC8 */  addiu   $sp, $sp, 0xFFC8           ## $sp = FFFFFFC8
/* 0007C 80A7E4DC AFBF001C */  sw      $ra, 0x001C($sp)           
/* 00080 80A7E4E0 AFA5003C */  sw      $a1, 0x003C($sp)           
/* 00084 80A7E4E4 AFA60040 */  sw      $a2, 0x0040($sp)           
/* 00088 80A7E4E8 C4840024 */  lwc1    $f4, 0x0024($a0)           ## 00000024
/* 0008C 80A7E4EC 3C0141F0 */  lui     $at, 0x41F0                ## $at = 41F00000
/* 00090 80A7E4F0 44814000 */  mtc1    $at, $f8                   ## $f8 = 30.00
/* 00094 80A7E4F4 E7A40028 */  swc1    $f4, 0x0028($sp)           
/* 00098 80A7E4F8 C4860028 */  lwc1    $f6, 0x0028($a0)           ## 00000028
/* 0009C 80A7E4FC 00803825 */  or      $a3, $a0, $zero            ## $a3 = 00000000
/* 000A0 80A7E500 27AE0028 */  addiu   $t6, $sp, 0x0028           ## $t6 = FFFFFFF0
/* 000A4 80A7E504 46083280 */  add.s   $f10, $f6, $f8             
/* 000A8 80A7E508 27A60024 */  addiu   $a2, $sp, 0x0024           ## $a2 = FFFFFFEC
/* 000AC 80A7E50C E7AA002C */  swc1    $f10, 0x002C($sp)          
/* 000B0 80A7E510 C490002C */  lwc1    $f16, 0x002C($a0)          ## 0000002C
/* 000B4 80A7E514 24A407C0 */  addiu   $a0, $a1, 0x07C0           ## $a0 = 000007C0
/* 000B8 80A7E518 27A50034 */  addiu   $a1, $sp, 0x0034           ## $a1 = FFFFFFFC
/* 000BC 80A7E51C AFA70038 */  sw      $a3, 0x0038($sp)           
/* 000C0 80A7E520 AFAE0010 */  sw      $t6, 0x0010($sp)           
/* 000C4 80A7E524 0C00F269 */  jal     func_8003C9A4              
/* 000C8 80A7E528 E7B00030 */  swc1    $f16, 0x0030($sp)          
/* 000CC 80A7E52C 3C01C6FA */  lui     $at, 0xC6FA                ## $at = C6FA0000
/* 000D0 80A7E530 44819000 */  mtc1    $at, $f18                  ## $f18 = -32000.00
/* 000D4 80A7E534 8FA70038 */  lw      $a3, 0x0038($sp)           
/* 000D8 80A7E538 C7A40040 */  lwc1    $f4, 0x0040($sp)           
/* 000DC 80A7E53C 4600903C */  c.lt.s  $f18, $f0                  
/* 000E0 80A7E540 3C0480A8 */  lui     $a0, %hi(D_80A873F0)       ## $a0 = 80A80000
/* 000E4 80A7E544 45000008 */  bc1f    .L80A7E568                 
/* 000E8 80A7E548 00000000 */  nop
/* 000EC 80A7E54C 46040180 */  add.s   $f6, $f0, $f4              
/* 000F0 80A7E550 24E40008 */  addiu   $a0, $a3, 0x0008           ## $a0 = 00000008
/* 000F4 80A7E554 24E50024 */  addiu   $a1, $a3, 0x0024           ## $a1 = 00000024
/* 000F8 80A7E558 0C01DF90 */  jal     Math_Vec3f_Copy
              ## Vec3f_Copy
/* 000FC 80A7E55C E4E60028 */  swc1    $f6, 0x0028($a3)           ## 00000028
/* 00100 80A7E560 1000000D */  beq     $zero, $zero, .L80A7E598   
/* 00104 80A7E564 24020001 */  addiu   $v0, $zero, 0x0001         ## $v0 = 00000001
.L80A7E568:
/* 00108 80A7E568 0C00084C */  jal     osSyncPrintf
              
/* 0010C 80A7E56C 248473F0 */  addiu   $a0, $a0, %lo(D_80A873F0)  ## $a0 = 000073F0
/* 00110 80A7E570 3C0480A8 */  lui     $a0, %hi(D_80A873FC)       ## $a0 = 80A80000
/* 00114 80A7E574 3C0580A8 */  lui     $a1, %hi(D_80A87414)       ## $a1 = 80A80000
/* 00118 80A7E578 24A57414 */  addiu   $a1, $a1, %lo(D_80A87414)  ## $a1 = 80A87414
/* 0011C 80A7E57C 248473FC */  addiu   $a0, $a0, %lo(D_80A873FC)  ## $a0 = 80A873FC
/* 00120 80A7E580 0C00084C */  jal     osSyncPrintf
              
/* 00124 80A7E584 24060184 */  addiu   $a2, $zero, 0x0184         ## $a2 = 00000184
/* 00128 80A7E588 3C0480A8 */  lui     $a0, %hi(D_80A87424)       ## $a0 = 80A80000
/* 0012C 80A7E58C 0C00084C */  jal     osSyncPrintf
              
/* 00130 80A7E590 24847424 */  addiu   $a0, $a0, %lo(D_80A87424)  ## $a0 = 80A87424
/* 00134 80A7E594 00001025 */  or      $v0, $zero, $zero          ## $v0 = 00000000
.L80A7E598:
/* 00138 80A7E598 8FBF001C */  lw      $ra, 0x001C($sp)           
/* 0013C 80A7E59C 27BD0038 */  addiu   $sp, $sp, 0x0038           ## $sp = 00000000
/* 00140 80A7E5A0 03E00008 */  jr      $ra                        
/* 00144 80A7E5A4 00000000 */  nop


