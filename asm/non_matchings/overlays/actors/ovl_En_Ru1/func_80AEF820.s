glabel func_80AEF820
/* 04C10 80AEF820 27BDFFD8 */  addiu   $sp, $sp, 0xFFD8           ## $sp = FFFFFFD8
/* 04C14 80AEF824 AFBF0024 */  sw      $ra, 0x0024($sp)           
/* 04C18 80AEF828 10A00015 */  beq     $a1, $zero, .L80AEF880     
/* 04C1C 80AEF82C AFA40028 */  sw      $a0, 0x0028($sp)           
/* 04C20 80AEF830 3C040601 */  lui     $a0, 0x0601                ## $a0 = 06010000
/* 04C24 80AEF834 0C028800 */  jal     SkelAnime_GetFrameCount
              
/* 04C28 80AEF838 248497B8 */  addiu   $a0, $a0, 0x97B8           ## $a0 = 060097B8
/* 04C2C 80AEF83C 44822000 */  mtc1    $v0, $f4                   ## $f4 = 0.00
/* 04C30 80AEF840 3C01C100 */  lui     $at, 0xC100                ## $at = C1000000
/* 04C34 80AEF844 44814000 */  mtc1    $at, $f8                   ## $f8 = -8.00
/* 04C38 80AEF848 468021A0 */  cvt.s.w $f6, $f4                   
/* 04C3C 80AEF84C 8FA40028 */  lw      $a0, 0x0028($sp)           
/* 04C40 80AEF850 3C050601 */  lui     $a1, 0x0601                ## $a1 = 06010000
/* 04C44 80AEF854 24A597B8 */  addiu   $a1, $a1, 0x97B8           ## $a1 = 060097B8
/* 04C48 80AEF858 3C063F80 */  lui     $a2, 0x3F80                ## $a2 = 3F800000
/* 04C4C 80AEF85C 24070000 */  addiu   $a3, $zero, 0x0000         ## $a3 = 00000000
/* 04C50 80AEF860 E7A60010 */  swc1    $f6, 0x0010($sp)           
/* 04C54 80AEF864 AFA00014 */  sw      $zero, 0x0014($sp)         
/* 04C58 80AEF868 E7A80018 */  swc1    $f8, 0x0018($sp)           
/* 04C5C 80AEF86C 0C029468 */  jal     SkelAnime_ChangeAnimation
              
/* 04C60 80AEF870 2484014C */  addiu   $a0, $a0, 0x014C           ## $a0 = 0000014C
/* 04C64 80AEF874 8FAF0028 */  lw      $t7, 0x0028($sp)           
/* 04C68 80AEF878 240E0028 */  addiu   $t6, $zero, 0x0028         ## $t6 = 00000028
/* 04C6C 80AEF87C ADEE0264 */  sw      $t6, 0x0264($t7)           ## 00000264
.L80AEF880:
/* 04C70 80AEF880 8FBF0024 */  lw      $ra, 0x0024($sp)           
/* 04C74 80AEF884 27BD0028 */  addiu   $sp, $sp, 0x0028           ## $sp = 00000000
/* 04C78 80AEF888 03E00008 */  jr      $ra                        
/* 04C7C 80AEF88C 00000000 */  nop


