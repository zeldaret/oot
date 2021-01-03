glabel func_8096AB8C
/* 010BC 8096AB8C 27BDFFD8 */  addiu   $sp, $sp, 0xFFD8           ## $sp = FFFFFFD8
/* 010C0 8096AB90 AFBF0024 */  sw      $ra, 0x0024($sp)
/* 010C4 8096AB94 10A00014 */  beq     $a1, $zero, .L8096ABE8
/* 010C8 8096AB98 AFA40028 */  sw      $a0, 0x0028($sp)
/* 010CC 8096AB9C 3C040600 */  lui     $a0, %hi(D_06006EB0)                ## $a0 = 06000000
/* 010D0 8096ABA0 0C028800 */  jal     Animation_GetLastFrame

/* 010D4 8096ABA4 24846EB0 */  addiu   $a0, $a0, %lo(D_06006EB0)           ## $a0 = 06006EB0
/* 010D8 8096ABA8 44822000 */  mtc1    $v0, $f4                   ## $f4 = 0.00
/* 010DC 8096ABAC 44800000 */  mtc1    $zero, $f0                 ## $f0 = 0.00
/* 010E0 8096ABB0 8FA40028 */  lw      $a0, 0x0028($sp)
/* 010E4 8096ABB4 468021A0 */  cvt.s.w $f6, $f4
/* 010E8 8096ABB8 3C050600 */  lui     $a1, %hi(D_06006EB0)                ## $a1 = 06000000
/* 010EC 8096ABBC 44070000 */  mfc1    $a3, $f0
/* 010F0 8096ABC0 24A56EB0 */  addiu   $a1, $a1, %lo(D_06006EB0)           ## $a1 = 06006EB0
/* 010F4 8096ABC4 3C063F80 */  lui     $a2, 0x3F80                ## $a2 = 3F800000
/* 010F8 8096ABC8 AFA00014 */  sw      $zero, 0x0014($sp)
/* 010FC 8096ABCC E7A60010 */  swc1    $f6, 0x0010($sp)
/* 01100 8096ABD0 2484014C */  addiu   $a0, $a0, 0x014C           ## $a0 = 0000014C
/* 01104 8096ABD4 0C029468 */  jal     Animation_Change

/* 01108 8096ABD8 E7A00018 */  swc1    $f0, 0x0018($sp)
/* 0110C 8096ABDC 8FAF0028 */  lw      $t7, 0x0028($sp)
/* 01110 8096ABE0 240E000C */  addiu   $t6, $zero, 0x000C         ## $t6 = 0000000C
/* 01114 8096ABE4 ADEE0198 */  sw      $t6, 0x0198($t7)           ## 00000198
.L8096ABE8:
/* 01118 8096ABE8 8FBF0024 */  lw      $ra, 0x0024($sp)
/* 0111C 8096ABEC 27BD0028 */  addiu   $sp, $sp, 0x0028           ## $sp = 00000000
/* 01120 8096ABF0 03E00008 */  jr      $ra
/* 01124 8096ABF4 00000000 */  nop
