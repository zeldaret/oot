glabel func_80AEB088
/* 00478 80AEB088 27BDFFE8 */  addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
/* 0047C 80AEB08C AFBF0014 */  sw      $ra, 0x0014($sp)           
/* 00480 80AEB090 8C831C3C */  lw      $v1, 0x1C3C($a0)           ## 00001C3C
/* 00484 80AEB094 240200C8 */  addiu   $v0, $zero, 0x00C8         ## $v0 = 000000C8
/* 00488 80AEB098 1060000C */  beq     $v1, $zero, .L80AEB0CC     
/* 0048C 80AEB09C 00000000 */  nop
/* 00490 80AEB0A0 846E0000 */  lh      $t6, 0x0000($v1)           ## 00000000
.L80AEB0A4:
/* 00494 80AEB0A4 544E0007 */  bnel    $v0, $t6, .L80AEB0C4       
/* 00498 80AEB0A8 8C630124 */  lw      $v1, 0x0124($v1)           ## 00000124
/* 0049C 80AEB0AC 846F001C */  lh      $t7, 0x001C($v1)           ## 0000001C
/* 004A0 80AEB0B0 55E00004 */  bnel    $t7, $zero, .L80AEB0C4     
/* 004A4 80AEB0B4 8C630124 */  lw      $v1, 0x0124($v1)           ## 00000124
/* 004A8 80AEB0B8 10000008 */  beq     $zero, $zero, .L80AEB0DC   
/* 004AC 80AEB0BC 00601025 */  or      $v0, $v1, $zero            ## $v0 = 00000000
/* 004B0 80AEB0C0 8C630124 */  lw      $v1, 0x0124($v1)           ## 00000124
.L80AEB0C4:
/* 004B4 80AEB0C4 5460FFF7 */  bnel    $v1, $zero, .L80AEB0A4     
/* 004B8 80AEB0C8 846E0000 */  lh      $t6, 0x0000($v1)           ## 00000000
.L80AEB0CC:
/* 004BC 80AEB0CC 3C0480AF */  lui     $a0, %hi(D_80AF1A30)       ## $a0 = 80AF0000
/* 004C0 80AEB0D0 0C00084C */  jal     osSyncPrintf
              
/* 004C4 80AEB0D4 24841A30 */  addiu   $a0, $a0, %lo(D_80AF1A30)  ## $a0 = 80AF1A30
/* 004C8 80AEB0D8 00001025 */  or      $v0, $zero, $zero          ## $v0 = 00000000
.L80AEB0DC:
/* 004CC 80AEB0DC 8FBF0014 */  lw      $ra, 0x0014($sp)           
/* 004D0 80AEB0E0 27BD0018 */  addiu   $sp, $sp, 0x0018           ## $sp = 00000000
/* 004D4 80AEB0E4 03E00008 */  jr      $ra                        
/* 004D8 80AEB0E8 00000000 */  nop


