glabel func_80AF2BC0
/* 00670 80AF2BC0 27BDFFD8 */  addiu   $sp, $sp, 0xFFD8           ## $sp = FFFFFFD8
/* 00674 80AF2BC4 AFBF0024 */  sw      $ra, 0x0024($sp)           
/* 00678 80AF2BC8 AFA40028 */  sw      $a0, 0x0028($sp)           
/* 0067C 80AF2BCC 90AE1D6C */  lbu     $t6, 0x1D6C($a1)           ## 00001D6C
/* 00680 80AF2BD0 51C0001D */  beql    $t6, $zero, .L80AF2C48     
/* 00684 80AF2BD4 8FBF0024 */  lw      $ra, 0x0024($sp)           
/* 00688 80AF2BD8 8CA21D98 */  lw      $v0, 0x1D98($a1)           ## 00001D98
/* 0068C 80AF2BDC 5040001A */  beql    $v0, $zero, .L80AF2C48     
/* 00690 80AF2BE0 8FBF0024 */  lw      $ra, 0x0024($sp)           
/* 00694 80AF2BE4 944F0000 */  lhu     $t7, 0x0000($v0)           ## 00000000
/* 00698 80AF2BE8 24010003 */  addiu   $at, $zero, 0x0003         ## $at = 00000003
/* 0069C 80AF2BEC 3C040601 */  lui     $a0, 0x0601                ## $a0 = 06010000
/* 006A0 80AF2BF0 55E10015 */  bnel    $t7, $at, .L80AF2C48       
/* 006A4 80AF2BF4 8FBF0024 */  lw      $ra, 0x0024($sp)           
/* 006A8 80AF2BF8 0C028800 */  jal     SkelAnime_GetFrameCount
              
/* 006AC 80AF2BFC 2484D3DC */  addiu   $a0, $a0, 0xD3DC           ## $a0 = 0600D3DC
/* 006B0 80AF2C00 44822000 */  mtc1    $v0, $f4                   ## $f4 = 0.00
/* 006B4 80AF2C04 44800000 */  mtc1    $zero, $f0                 ## $f0 = 0.00
/* 006B8 80AF2C08 8FA40028 */  lw      $a0, 0x0028($sp)           
/* 006BC 80AF2C0C 468021A0 */  cvt.s.w $f6, $f4                   
/* 006C0 80AF2C10 3C050601 */  lui     $a1, 0x0601                ## $a1 = 06010000
/* 006C4 80AF2C14 24180002 */  addiu   $t8, $zero, 0x0002         ## $t8 = 00000002
/* 006C8 80AF2C18 44070000 */  mfc1    $a3, $f0                   
/* 006CC 80AF2C1C AFB80014 */  sw      $t8, 0x0014($sp)           
/* 006D0 80AF2C20 24A5D3DC */  addiu   $a1, $a1, 0xD3DC           ## $a1 = 0600D3DC
/* 006D4 80AF2C24 E7A60010 */  swc1    $f6, 0x0010($sp)           
/* 006D8 80AF2C28 3C063F80 */  lui     $a2, 0x3F80                ## $a2 = 3F800000
/* 006DC 80AF2C2C 2484014C */  addiu   $a0, $a0, 0x014C           ## $a0 = 0000014C
/* 006E0 80AF2C30 0C029468 */  jal     SkelAnime_ChangeAnimation
              
/* 006E4 80AF2C34 E7A00018 */  swc1    $f0, 0x0018($sp)           
/* 006E8 80AF2C38 8FA80028 */  lw      $t0, 0x0028($sp)           
/* 006EC 80AF2C3C 24190004 */  addiu   $t9, $zero, 0x0004         ## $t9 = 00000004
/* 006F0 80AF2C40 AD1902A8 */  sw      $t9, 0x02A8($t0)           ## 000002A8
/* 006F4 80AF2C44 8FBF0024 */  lw      $ra, 0x0024($sp)           
.L80AF2C48:
/* 006F8 80AF2C48 27BD0028 */  addiu   $sp, $sp, 0x0028           ## $sp = 00000000
/* 006FC 80AF2C4C 03E00008 */  jr      $ra                        
/* 00700 80AF2C50 00000000 */  nop


