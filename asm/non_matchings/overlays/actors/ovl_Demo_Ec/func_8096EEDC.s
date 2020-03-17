glabel func_8096EEDC
/* 01A2C 8096EEDC 27BDFFE8 */  addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
/* 01A30 8096EEE0 AFBF0014 */  sw      $ra, 0x0014($sp)           
/* 01A34 8096EEE4 8482001C */  lh      $v0, 0x001C($a0)           ## 0000001C
/* 01A38 8096EEE8 24010010 */  addiu   $at, $zero, 0x0010         ## $at = 00000010
/* 01A3C 8096EEEC 10410007 */  beq     $v0, $at, .L8096EF0C       
/* 01A40 8096EEF0 24010011 */  addiu   $at, $zero, 0x0011         ## $at = 00000011
/* 01A44 8096EEF4 10410008 */  beq     $v0, $at, .L8096EF18       
/* 01A48 8096EEF8 24010012 */  addiu   $at, $zero, 0x0012         ## $at = 00000012
/* 01A4C 8096EEFC 10410009 */  beq     $v0, $at, .L8096EF24       
/* 01A50 8096EF00 3C048097 */  lui     $a0, %hi(D_809706F4)       ## $a0 = 80970000
/* 01A54 8096EF04 1000000A */  beq     $zero, $zero, .L8096EF30   
/* 01A58 8096EF08 00000000 */  nop
.L8096EF0C:
/* 01A5C 8096EF0C 3C020601 */  lui     $v0, 0x0601                ## $v0 = 06010000
/* 01A60 8096EF10 1000000A */  beq     $zero, $zero, .L8096EF3C   
/* 01A64 8096EF14 24429198 */  addiu   $v0, $v0, 0x9198           ## $v0 = 06009198
.L8096EF18:
/* 01A68 8096EF18 3C020601 */  lui     $v0, 0x0601                ## $v0 = 06010000
/* 01A6C 8096EF1C 10000007 */  beq     $zero, $zero, .L8096EF3C   
/* 01A70 8096EF20 24429430 */  addiu   $v0, $v0, 0x9430           ## $v0 = 06009430
.L8096EF24:
/* 01A74 8096EF24 3C020601 */  lui     $v0, 0x0601                ## $v0 = 06010000
/* 01A78 8096EF28 10000004 */  beq     $zero, $zero, .L8096EF3C   
/* 01A7C 8096EF2C 24429690 */  addiu   $v0, $v0, 0x9690           ## $v0 = 06009690
.L8096EF30:
/* 01A80 8096EF30 0C00084C */  jal     osSyncPrintf
              
/* 01A84 8096EF34 248406F4 */  addiu   $a0, $a0, %lo(D_809706F4)  ## $a0 = 809706F4
/* 01A88 8096EF38 00001025 */  or      $v0, $zero, $zero          ## $v0 = 00000000
.L8096EF3C:
/* 01A8C 8096EF3C 8FBF0014 */  lw      $ra, 0x0014($sp)           
/* 01A90 8096EF40 27BD0018 */  addiu   $sp, $sp, 0x0018           ## $sp = 00000000
/* 01A94 8096EF44 03E00008 */  jr      $ra                        
/* 01A98 8096EF48 00000000 */  nop


