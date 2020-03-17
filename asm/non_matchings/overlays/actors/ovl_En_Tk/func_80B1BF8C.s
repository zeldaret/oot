glabel func_80B1BF8C
/* 0068C 80B1BF8C 27BDFFD8 */  addiu   $sp, $sp, 0xFFD8           ## $sp = FFFFFFD8
/* 00690 80B1BF90 AFA40028 */  sw      $a0, 0x0028($sp)           
/* 00694 80B1BF94 AFBF0024 */  sw      $ra, 0x0024($sp)           
/* 00698 80B1BF98 3C040600 */  lui     $a0, 0x0600                ## $a0 = 06000000
/* 0069C 80B1BF9C AFA5002C */  sw      $a1, 0x002C($sp)           
/* 006A0 80B1BFA0 0C028800 */  jal     SkelAnime_GetFrameCount
              
/* 006A4 80B1BFA4 24841144 */  addiu   $a0, $a0, 0x1144           ## $a0 = 06001144
/* 006A8 80B1BFA8 44822000 */  mtc1    $v0, $f4                   ## $f4 = 0.00
/* 006AC 80B1BFAC 3C01C120 */  lui     $at, 0xC120                ## $at = C1200000
/* 006B0 80B1BFB0 44814000 */  mtc1    $at, $f8                   ## $f8 = -10.00
/* 006B4 80B1BFB4 468021A0 */  cvt.s.w $f6, $f4                   
/* 006B8 80B1BFB8 8FA40028 */  lw      $a0, 0x0028($sp)           
/* 006BC 80B1BFBC 3C050600 */  lui     $a1, 0x0600                ## $a1 = 06000000
/* 006C0 80B1BFC0 24A51144 */  addiu   $a1, $a1, 0x1144           ## $a1 = 06001144
/* 006C4 80B1BFC4 3C063F80 */  lui     $a2, 0x3F80                ## $a2 = 3F800000
/* 006C8 80B1BFC8 24070000 */  addiu   $a3, $zero, 0x0000         ## $a3 = 00000000
/* 006CC 80B1BFCC E7A60010 */  swc1    $f6, 0x0010($sp)           
/* 006D0 80B1BFD0 AFA00014 */  sw      $zero, 0x0014($sp)         
/* 006D4 80B1BFD4 E7A80018 */  swc1    $f8, 0x0018($sp)           
/* 006D8 80B1BFD8 0C029468 */  jal     SkelAnime_ChangeAnimation
              
/* 006DC 80B1BFDC 2484014C */  addiu   $a0, $a0, 0x014C           ## $a0 = 0000014C
/* 006E0 80B1BFE0 8FA40028 */  lw      $a0, 0x0028($sp)           
/* 006E4 80B1BFE4 0C2C7055 */  jal     func_80B1C154              
/* 006E8 80B1BFE8 8FA5002C */  lw      $a1, 0x002C($sp)           
/* 006EC 80B1BFEC 04400003 */  bltz    $v0, .L80B1BFFC            
/* 006F0 80B1BFF0 8FAF0028 */  lw      $t7, 0x0028($sp)           
/* 006F4 80B1BFF4 240E0001 */  addiu   $t6, $zero, 0x0001         ## $t6 = 00000001
/* 006F8 80B1BFF8 A1EE0208 */  sb      $t6, 0x0208($t7)           ## 00000208
.L80B1BFFC:
/* 006FC 80B1BFFC 8FBF0024 */  lw      $ra, 0x0024($sp)           
/* 00700 80B1C000 27BD0028 */  addiu   $sp, $sp, 0x0028           ## $sp = 00000000
/* 00704 80B1C004 03E00008 */  jr      $ra                        
/* 00708 80B1C008 00000000 */  nop


