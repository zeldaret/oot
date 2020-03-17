glabel func_80B1BF14
/* 00614 80B1BF14 27BDFFD8 */  addiu   $sp, $sp, 0xFFD8           ## $sp = FFFFFFD8
/* 00618 80B1BF18 AFA40028 */  sw      $a0, 0x0028($sp)           
/* 0061C 80B1BF1C AFBF0024 */  sw      $ra, 0x0024($sp)           
/* 00620 80B1BF20 3C040600 */  lui     $a0, 0x0600                ## $a0 = 06000000
/* 00624 80B1BF24 AFA5002C */  sw      $a1, 0x002C($sp)           
/* 00628 80B1BF28 0C028800 */  jal     SkelAnime_GetFrameCount
              
/* 0062C 80B1BF2C 24842F84 */  addiu   $a0, $a0, 0x2F84           ## $a0 = 06002F84
/* 00630 80B1BF30 44822000 */  mtc1    $v0, $f4                   ## $f4 = 0.00
/* 00634 80B1BF34 3C01C120 */  lui     $at, 0xC120                ## $at = C1200000
/* 00638 80B1BF38 44814000 */  mtc1    $at, $f8                   ## $f8 = -10.00
/* 0063C 80B1BF3C 468021A0 */  cvt.s.w $f6, $f4                   
/* 00640 80B1BF40 8FA40028 */  lw      $a0, 0x0028($sp)           
/* 00644 80B1BF44 3C050600 */  lui     $a1, 0x0600                ## $a1 = 06000000
/* 00648 80B1BF48 24A51FA8 */  addiu   $a1, $a1, 0x1FA8           ## $a1 = 06001FA8
/* 0064C 80B1BF4C 3C063F80 */  lui     $a2, 0x3F80                ## $a2 = 3F800000
/* 00650 80B1BF50 24070000 */  addiu   $a3, $zero, 0x0000         ## $a3 = 00000000
/* 00654 80B1BF54 E7A60010 */  swc1    $f6, 0x0010($sp)           
/* 00658 80B1BF58 AFA00014 */  sw      $zero, 0x0014($sp)         
/* 0065C 80B1BF5C E7A80018 */  swc1    $f8, 0x0018($sp)           
/* 00660 80B1BF60 0C029468 */  jal     SkelAnime_ChangeAnimation
              
/* 00664 80B1BF64 2484014C */  addiu   $a0, $a0, 0x014C           ## $a0 = 0000014C
/* 00668 80B1BF68 240400F0 */  addiu   $a0, $zero, 0x00F0         ## $a0 = 000000F0
/* 0066C 80B1BF6C 0C01DF64 */  jal     Math_Rand_S16Offset
              
/* 00670 80B1BF70 240500F0 */  addiu   $a1, $zero, 0x00F0         ## $a1 = 000000F0
/* 00674 80B1BF74 8FAE0028 */  lw      $t6, 0x0028($sp)           
/* 00678 80B1BF78 A5C2021C */  sh      $v0, 0x021C($t6)           ## 0000021C
/* 0067C 80B1BF7C 8FBF0024 */  lw      $ra, 0x0024($sp)           
/* 00680 80B1BF80 27BD0028 */  addiu   $sp, $sp, 0x0028           ## $sp = 00000000
/* 00684 80B1BF84 03E00008 */  jr      $ra                        
/* 00688 80B1BF88 00000000 */  nop


