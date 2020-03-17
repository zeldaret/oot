glabel func_809F3ED4
/* 00C14 809F3ED4 27BDFFD8 */  addiu   $sp, $sp, 0xFFD8           ## $sp = FFFFFFD8
/* 00C18 809F3ED8 AFA40028 */  sw      $a0, 0x0028($sp)           
/* 00C1C 809F3EDC AFBF0024 */  sw      $ra, 0x0024($sp)           
/* 00C20 809F3EE0 3C040600 */  lui     $a0, 0x0600                ## $a0 = 06000000
/* 00C24 809F3EE4 AFA5002C */  sw      $a1, 0x002C($sp)           
/* 00C28 809F3EE8 0C028800 */  jal     SkelAnime_GetFrameCount
              
/* 00C2C 809F3EEC 24840168 */  addiu   $a0, $a0, 0x0168           ## $a0 = 06000168
/* 00C30 809F3EF0 44822000 */  mtc1    $v0, $f4                   ## $f4 = 0.00
/* 00C34 809F3EF4 8FA30028 */  lw      $v1, 0x0028($sp)           
/* 00C38 809F3EF8 3C01C120 */  lui     $at, 0xC120                ## $at = C1200000
/* 00C3C 809F3EFC 468021A0 */  cvt.s.w $f6, $f4                   
/* 00C40 809F3F00 44819000 */  mtc1    $at, $f18                  ## $f18 = -10.00
/* 00C44 809F3F04 3C050600 */  lui     $a1, 0x0600                ## $a1 = 06000000
/* 00C48 809F3F08 24190002 */  addiu   $t9, $zero, 0x0002         ## $t9 = 00000002
/* 00C4C 809F3F0C 24A50168 */  addiu   $a1, $a1, 0x0168           ## $a1 = 06000168
/* 00C50 809F3F10 3C063F80 */  lui     $a2, 0x3F80                ## $a2 = 3F800000
/* 00C54 809F3F14 4600320D */  trunc.w.s $f8, $f6                   
/* 00C58 809F3F18 24070000 */  addiu   $a3, $zero, 0x0000         ## $a3 = 00000000
/* 00C5C 809F3F1C 2464014C */  addiu   $a0, $v1, 0x014C           ## $a0 = 0000014C
/* 00C60 809F3F20 440F4000 */  mfc1    $t7, $f8                   
/* 00C64 809F3F24 00000000 */  nop
/* 00C68 809F3F28 A46F026E */  sh      $t7, 0x026E($v1)           ## 0000026E
/* 00C6C 809F3F2C 8478026E */  lh      $t8, 0x026E($v1)           ## 0000026E
/* 00C70 809F3F30 AFB90014 */  sw      $t9, 0x0014($sp)           
/* 00C74 809F3F34 E7B20018 */  swc1    $f18, 0x0018($sp)          
/* 00C78 809F3F38 44985000 */  mtc1    $t8, $f10                  ## $f10 = 0.00
/* 00C7C 809F3F3C 00000000 */  nop
/* 00C80 809F3F40 46805420 */  cvt.s.w $f16, $f10                 
/* 00C84 809F3F44 0C029468 */  jal     SkelAnime_ChangeAnimation
              
/* 00C88 809F3F48 E7B00010 */  swc1    $f16, 0x0010($sp)          
/* 00C8C 809F3F4C 8FA30028 */  lw      $v1, 0x0028($sp)           
/* 00C90 809F3F50 3C08809F */  lui     $t0, %hi(func_809F3F6C)    ## $t0 = 809F0000
/* 00C94 809F3F54 25083F6C */  addiu   $t0, $t0, %lo(func_809F3F6C) ## $t0 = 809F3F6C
/* 00C98 809F3F58 AC680214 */  sw      $t0, 0x0214($v1)           ## 00000214
/* 00C9C 809F3F5C 8FBF0024 */  lw      $ra, 0x0024($sp)           
/* 00CA0 809F3F60 27BD0028 */  addiu   $sp, $sp, 0x0028           ## $sp = 00000000
/* 00CA4 809F3F64 03E00008 */  jr      $ra                        
/* 00CA8 809F3F68 00000000 */  nop


