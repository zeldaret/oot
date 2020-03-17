glabel func_8096A16C
/* 0069C 8096A16C 27BDFFD8 */  addiu   $sp, $sp, 0xFFD8           ## $sp = FFFFFFD8
/* 006A0 8096A170 AFBF0024 */  sw      $ra, 0x0024($sp)           
/* 006A4 8096A174 10A00014 */  beq     $a1, $zero, .L8096A1C8     
/* 006A8 8096A178 AFA40028 */  sw      $a0, 0x0028($sp)           
/* 006AC 8096A17C 3C040600 */  lui     $a0, 0x0600                ## $a0 = 06000000
/* 006B0 8096A180 0C028800 */  jal     SkelAnime_GetFrameCount
              
/* 006B4 8096A184 24840D00 */  addiu   $a0, $a0, 0x0D00           ## $a0 = 06000D00
/* 006B8 8096A188 44822000 */  mtc1    $v0, $f4                   ## $f4 = 0.00
/* 006BC 8096A18C 44800000 */  mtc1    $zero, $f0                 ## $f0 = 0.00
/* 006C0 8096A190 8FA40028 */  lw      $a0, 0x0028($sp)           
/* 006C4 8096A194 468021A0 */  cvt.s.w $f6, $f4                   
/* 006C8 8096A198 3C050600 */  lui     $a1, 0x0600                ## $a1 = 06000000
/* 006CC 8096A19C 44070000 */  mfc1    $a3, $f0                   
/* 006D0 8096A1A0 24A50D00 */  addiu   $a1, $a1, 0x0D00           ## $a1 = 06000D00
/* 006D4 8096A1A4 3C063F80 */  lui     $a2, 0x3F80                ## $a2 = 3F800000
/* 006D8 8096A1A8 AFA00014 */  sw      $zero, 0x0014($sp)         
/* 006DC 8096A1AC E7A60010 */  swc1    $f6, 0x0010($sp)           
/* 006E0 8096A1B0 2484014C */  addiu   $a0, $a0, 0x014C           ## $a0 = 0000014C
/* 006E4 8096A1B4 0C029468 */  jal     SkelAnime_ChangeAnimation
              
/* 006E8 8096A1B8 E7A00018 */  swc1    $f0, 0x0018($sp)           
/* 006EC 8096A1BC 8FAF0028 */  lw      $t7, 0x0028($sp)           
/* 006F0 8096A1C0 240E0005 */  addiu   $t6, $zero, 0x0005         ## $t6 = 00000005
/* 006F4 8096A1C4 ADEE0198 */  sw      $t6, 0x0198($t7)           ## 00000198
.L8096A1C8:
/* 006F8 8096A1C8 8FBF0024 */  lw      $ra, 0x0024($sp)           
/* 006FC 8096A1CC 27BD0028 */  addiu   $sp, $sp, 0x0028           ## $sp = 00000000
/* 00700 8096A1D0 03E00008 */  jr      $ra                        
/* 00704 8096A1D4 00000000 */  nop


