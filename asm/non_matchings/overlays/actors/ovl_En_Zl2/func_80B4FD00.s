glabel func_80B4FD00
/* 01370 80B4FD00 27BDFFD8 */  addiu   $sp, $sp, 0xFFD8           ## $sp = FFFFFFD8
/* 01374 80B4FD04 AFBF0024 */  sw      $ra, 0x0024($sp)           
/* 01378 80B4FD08 AFA40028 */  sw      $a0, 0x0028($sp)           
/* 0137C 80B4FD0C AFA5002C */  sw      $a1, 0x002C($sp)           
/* 01380 80B4FD10 AFA60030 */  sw      $a2, 0x0030($sp)           
/* 01384 80B4FD14 AFA70034 */  sw      $a3, 0x0034($sp)           
/* 01388 80B4FD18 0C028800 */  jal     SkelAnime_GetFrameCount
              
/* 0138C 80B4FD1C 00A02025 */  or      $a0, $a1, $zero            ## $a0 = 00000000
/* 01390 80B4FD20 8FAE0038 */  lw      $t6, 0x0038($sp)           
/* 01394 80B4FD24 8FA40028 */  lw      $a0, 0x0028($sp)           
/* 01398 80B4FD28 8FA5002C */  lw      $a1, 0x002C($sp)           
/* 0139C 80B4FD2C 15C00007 */  bne     $t6, $zero, .L80B4FD4C     
/* 013A0 80B4FD30 2484014C */  addiu   $a0, $a0, 0x014C           ## $a0 = 0000014C
/* 013A4 80B4FD34 44822000 */  mtc1    $v0, $f4                   ## $f4 = 0.00
/* 013A8 80B4FD38 3C013F80 */  lui     $at, 0x3F80                ## $at = 3F800000
/* 013AC 80B4FD3C 44800000 */  mtc1    $zero, $f0                 ## $f0 = 0.00
/* 013B0 80B4FD40 44816000 */  mtc1    $at, $f12                  ## $f12 = 1.00
/* 013B4 80B4FD44 10000006 */  beq     $zero, $zero, .L80B4FD60   
/* 013B8 80B4FD48 468020A0 */  cvt.s.w $f2, $f4                   
.L80B4FD4C:
/* 013BC 80B4FD4C 44823000 */  mtc1    $v0, $f6                   ## $f6 = 0.00
/* 013C0 80B4FD50 3C01BF80 */  lui     $at, 0xBF80                ## $at = BF800000
/* 013C4 80B4FD54 44801000 */  mtc1    $zero, $f2                 ## $f2 = 0.00
/* 013C8 80B4FD58 44816000 */  mtc1    $at, $f12                  ## $f12 = -1.00
/* 013CC 80B4FD5C 46803020 */  cvt.s.w $f0, $f6                   
.L80B4FD60:
/* 013D0 80B4FD60 93AF0033 */  lbu     $t7, 0x0033($sp)           
/* 013D4 80B4FD64 C7A80034 */  lwc1    $f8, 0x0034($sp)           
/* 013D8 80B4FD68 44066000 */  mfc1    $a2, $f12                  
/* 013DC 80B4FD6C 44070000 */  mfc1    $a3, $f0                   
/* 013E0 80B4FD70 E7A20010 */  swc1    $f2, 0x0010($sp)           
/* 013E4 80B4FD74 AFAF0014 */  sw      $t7, 0x0014($sp)           
/* 013E8 80B4FD78 0C029468 */  jal     SkelAnime_ChangeAnimation
              
/* 013EC 80B4FD7C E7A80018 */  swc1    $f8, 0x0018($sp)           
/* 013F0 80B4FD80 8FBF0024 */  lw      $ra, 0x0024($sp)           
/* 013F4 80B4FD84 27BD0028 */  addiu   $sp, $sp, 0x0028           ## $sp = 00000000
/* 013F8 80B4FD88 03E00008 */  jr      $ra                        
/* 013FC 80B4FD8C 00000000 */  nop


