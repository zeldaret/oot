glabel func_80AEBCB8
/* 010A8 80AEBCB8 27BDFFD8 */  addiu   $sp, $sp, 0xFFD8           ## $sp = FFFFFFD8
/* 010AC 80AEBCBC AFBF0024 */  sw      $ra, 0x0024($sp)           
/* 010B0 80AEBCC0 10A00012 */  beq     $a1, $zero, .L80AEBD0C     
/* 010B4 80AEBCC4 AFA40028 */  sw      $a0, 0x0028($sp)           
/* 010B8 80AEBCC8 3C040601 */  lui     $a0, 0x0601                ## $a0 = 06010000
/* 010BC 80AEBCCC 0C028800 */  jal     SkelAnime_GetFrameCount
              
/* 010C0 80AEBCD0 24842E94 */  addiu   $a0, $a0, 0x2E94           ## $a0 = 06012E94
/* 010C4 80AEBCD4 44822000 */  mtc1    $v0, $f4                   ## $f4 = 0.00
/* 010C8 80AEBCD8 3C01C100 */  lui     $at, 0xC100                ## $at = C1000000
/* 010CC 80AEBCDC 44814000 */  mtc1    $at, $f8                   ## $f8 = -8.00
/* 010D0 80AEBCE0 468021A0 */  cvt.s.w $f6, $f4                   
/* 010D4 80AEBCE4 8FA40028 */  lw      $a0, 0x0028($sp)           
/* 010D8 80AEBCE8 3C050601 */  lui     $a1, 0x0601                ## $a1 = 06010000
/* 010DC 80AEBCEC 24A52E94 */  addiu   $a1, $a1, 0x2E94           ## $a1 = 06012E94
/* 010E0 80AEBCF0 3C063F80 */  lui     $a2, 0x3F80                ## $a2 = 3F800000
/* 010E4 80AEBCF4 24070000 */  addiu   $a3, $zero, 0x0000         ## $a3 = 00000000
/* 010E8 80AEBCF8 E7A60010 */  swc1    $f6, 0x0010($sp)           
/* 010EC 80AEBCFC AFA00014 */  sw      $zero, 0x0014($sp)         
/* 010F0 80AEBD00 E7A80018 */  swc1    $f8, 0x0018($sp)           
/* 010F4 80AEBD04 0C029468 */  jal     SkelAnime_ChangeAnimation
              
/* 010F8 80AEBD08 2484014C */  addiu   $a0, $a0, 0x014C           ## $a0 = 0000014C
.L80AEBD0C:
/* 010FC 80AEBD0C 8FBF0024 */  lw      $ra, 0x0024($sp)           
/* 01100 80AEBD10 27BD0028 */  addiu   $sp, $sp, 0x0028           ## $sp = 00000000
/* 01104 80AEBD14 03E00008 */  jr      $ra                        
/* 01108 80AEBD18 00000000 */  nop


