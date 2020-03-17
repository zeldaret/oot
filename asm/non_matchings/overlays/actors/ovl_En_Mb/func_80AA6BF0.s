glabel func_80AA6BF0
/* 00BA0 80AA6BF0 27BDFFD0 */  addiu   $sp, $sp, 0xFFD0           ## $sp = FFFFFFD0
/* 00BA4 80AA6BF4 AFB00028 */  sw      $s0, 0x0028($sp)           
/* 00BA8 80AA6BF8 00808025 */  or      $s0, $a0, $zero            ## $s0 = 00000000
/* 00BAC 80AA6BFC AFBF002C */  sw      $ra, 0x002C($sp)           
/* 00BB0 80AA6C00 3C040601 */  lui     $a0, 0x0601                ## $a0 = 06010000
/* 00BB4 80AA6C04 0C028800 */  jal     SkelAnime_GetFrameCount
              
/* 00BB8 80AA6C08 2484B4BC */  addiu   $a0, $a0, 0xB4BC           ## $a0 = 0600B4BC
/* 00BBC 80AA6C0C 44822000 */  mtc1    $v0, $f4                   ## $f4 = 0.00
/* 00BC0 80AA6C10 44800000 */  mtc1    $zero, $f0                 ## $f0 = 0.00
/* 00BC4 80AA6C14 240E000A */  addiu   $t6, $zero, 0x000A         ## $t6 = 0000000A
/* 00BC8 80AA6C18 468021A0 */  cvt.s.w $f6, $f4                   
/* 00BCC 80AA6C1C AE0E0320 */  sw      $t6, 0x0320($s0)           ## 00000320
/* 00BD0 80AA6C20 3C050601 */  lui     $a1, 0x0601                ## $a1 = 06010000
/* 00BD4 80AA6C24 240F0003 */  addiu   $t7, $zero, 0x0003         ## $t7 = 00000003
/* 00BD8 80AA6C28 44070000 */  mfc1    $a3, $f0                   
/* 00BDC 80AA6C2C AFAF0014 */  sw      $t7, 0x0014($sp)           
/* 00BE0 80AA6C30 24A5B4BC */  addiu   $a1, $a1, 0xB4BC           ## $a1 = 0600B4BC
/* 00BE4 80AA6C34 E7A60010 */  swc1    $f6, 0x0010($sp)           
/* 00BE8 80AA6C38 2604018C */  addiu   $a0, $s0, 0x018C           ## $a0 = 0000018C
/* 00BEC 80AA6C3C 3C064040 */  lui     $a2, 0x4040                ## $a2 = 40400000
/* 00BF0 80AA6C40 0C029468 */  jal     SkelAnime_ChangeAnimation
              
/* 00BF4 80AA6C44 E7A00018 */  swc1    $f0, 0x0018($sp)           
/* 00BF8 80AA6C48 86180032 */  lh      $t8, 0x0032($s0)           ## 00000032
/* 00BFC 80AA6C4C 8619008A */  lh      $t9, 0x008A($s0)           ## 0000008A
/* 00C00 80AA6C50 24040001 */  addiu   $a0, $zero, 0x0001         ## $a0 = 00000001
/* 00C04 80AA6C54 A604032E */  sh      $a0, 0x032E($s0)           ## 0000032E
/* 00C08 80AA6C58 03191023 */  subu    $v0, $t8, $t9              
/* 00C0C 80AA6C5C 00021400 */  sll     $v0, $v0, 16               
/* 00C10 80AA6C60 00021403 */  sra     $v0, $v0, 16               
/* 00C14 80AA6C64 04400003 */  bltz    $v0, .L80AA6C74            
/* 00C18 80AA6C68 3C0580AA */  lui     $a1, %hi(func_80AA7938)    ## $a1 = 80AA0000
/* 00C1C 80AA6C6C 10000002 */  beq     $zero, $zero, .L80AA6C78   
/* 00C20 80AA6C70 00401825 */  or      $v1, $v0, $zero            ## $v1 = 00000000
.L80AA6C74:
/* 00C24 80AA6C74 00021823 */  subu    $v1, $zero, $v0            
.L80AA6C78:
/* 00C28 80AA6C78 28610259 */  slti    $at, $v1, 0x0259           
/* 00C2C 80AA6C7C 10200004 */  beq     $at, $zero, .L80AA6C90     
/* 00C30 80AA6C80 24A57938 */  addiu   $a1, $a1, %lo(func_80AA7938) ## $a1 = 80AA7938
/* 00C34 80AA6C84 24080002 */  addiu   $t0, $zero, 0x0002         ## $t0 = 00000002
/* 00C38 80AA6C88 10000006 */  beq     $zero, $zero, .L80AA6CA4   
/* 00C3C 80AA6C8C A6080334 */  sh      $t0, 0x0334($s0)           ## 00000334
.L80AA6C90:
/* 00C40 80AA6C90 04400003 */  bltz    $v0, .L80AA6CA0            
/* 00C44 80AA6C94 24090003 */  addiu   $t1, $zero, 0x0003         ## $t1 = 00000003
/* 00C48 80AA6C98 10000002 */  beq     $zero, $zero, .L80AA6CA4   
/* 00C4C 80AA6C9C A6040334 */  sh      $a0, 0x0334($s0)           ## 00000334
.L80AA6CA0:
/* 00C50 80AA6CA0 A6090334 */  sh      $t1, 0x0334($s0)           ## 00000334
.L80AA6CA4:
/* 00C54 80AA6CA4 0C2A9814 */  jal     func_80AA6050              
/* 00C58 80AA6CA8 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 00C5C 80AA6CAC 8FBF002C */  lw      $ra, 0x002C($sp)           
/* 00C60 80AA6CB0 8FB00028 */  lw      $s0, 0x0028($sp)           
/* 00C64 80AA6CB4 27BD0030 */  addiu   $sp, $sp, 0x0030           ## $sp = 00000000
/* 00C68 80AA6CB8 03E00008 */  jr      $ra                        
/* 00C6C 80AA6CBC 00000000 */  nop


