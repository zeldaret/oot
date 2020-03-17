glabel func_80A56874
/* 007A4 80A56874 27BDFFE8 */  addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
/* 007A8 80A56878 AFBF0014 */  sw      $ra, 0x0014($sp)           
/* 007AC 80A5687C AFA5001C */  sw      $a1, 0x001C($sp)           
/* 007B0 80A56880 848E0284 */  lh      $t6, 0x0284($a0)           ## 00000284
/* 007B4 80A56884 00803825 */  or      $a3, $a0, $zero            ## $a3 = 00000000
/* 007B8 80A56888 2484014C */  addiu   $a0, $a0, 0x014C           ## $a0 = 0000014C
/* 007BC 80A5688C 51C00005 */  beql    $t6, $zero, .L80A568A4     
/* 007C0 80A56890 00E02025 */  or      $a0, $a3, $zero            ## $a0 = 00000000
/* 007C4 80A56894 0C02927F */  jal     SkelAnime_FrameUpdateMatrix
              
/* 007C8 80A56898 AFA70018 */  sw      $a3, 0x0018($sp)           
/* 007CC 80A5689C 8FA70018 */  lw      $a3, 0x0018($sp)           
/* 007D0 80A568A0 00E02025 */  or      $a0, $a3, $zero            ## $a0 = 00000000
.L80A568A4:
/* 007D4 80A568A4 8FA5001C */  lw      $a1, 0x001C($sp)           
/* 007D8 80A568A8 0C00BC65 */  jal     func_8002F194              
/* 007DC 80A568AC AFA70018 */  sw      $a3, 0x0018($sp)           
/* 007E0 80A568B0 1040000B */  beq     $v0, $zero, .L80A568E0     
/* 007E4 80A568B4 8FA70018 */  lw      $a3, 0x0018($sp)           
/* 007E8 80A568B8 84EF0284 */  lh      $t7, 0x0284($a3)           ## 00000284
/* 007EC 80A568BC 3C1980A5 */  lui     $t9, %hi(func_80A56900)    ## $t9 = 80A50000
/* 007F0 80A568C0 3C1880A5 */  lui     $t8, %hi(func_80A5673C)    ## $t8 = 80A50000
/* 007F4 80A568C4 15E00004 */  bne     $t7, $zero, .L80A568D8     
/* 007F8 80A568C8 27396900 */  addiu   $t9, $t9, %lo(func_80A56900) ## $t9 = 80A56900
/* 007FC 80A568CC 2718673C */  addiu   $t8, $t8, %lo(func_80A5673C) ## $t8 = 80A5673C
/* 00800 80A568D0 10000007 */  beq     $zero, $zero, .L80A568F0   
/* 00804 80A568D4 ACF8025C */  sw      $t8, 0x025C($a3)           ## 0000025C
.L80A568D8:
/* 00808 80A568D8 10000005 */  beq     $zero, $zero, .L80A568F0   
/* 0080C 80A568DC ACF9025C */  sw      $t9, 0x025C($a3)           ## 0000025C
.L80A568E0:
/* 00810 80A568E0 00E02025 */  or      $a0, $a3, $zero            ## $a0 = 00000000
/* 00814 80A568E4 8FA5001C */  lw      $a1, 0x001C($sp)           
/* 00818 80A568E8 0C00BCB3 */  jal     func_8002F2CC              
/* 0081C 80A568EC 3C0642C8 */  lui     $a2, 0x42C8                ## $a2 = 42C80000
.L80A568F0:
/* 00820 80A568F0 8FBF0014 */  lw      $ra, 0x0014($sp)           
/* 00824 80A568F4 27BD0018 */  addiu   $sp, $sp, 0x0018           ## $sp = 00000000
/* 00828 80A568F8 03E00008 */  jr      $ra                        
/* 0082C 80A568FC 00000000 */  nop


