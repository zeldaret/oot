glabel BgRelayObjects_Draw
/* 00640 808A9490 27BDFFE8 */  addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
/* 00644 808A9494 AFBF0014 */  sw      $ra, 0x0014($sp)           
/* 00648 808A9498 848E001C */  lh      $t6, 0x001C($a0)           ## 0000001C
/* 0064C 808A949C 00A03025 */  or      $a2, $a1, $zero            ## $a2 = 00000000
/* 00650 808A94A0 00C02025 */  or      $a0, $a2, $zero            ## $a0 = 00000000
/* 00654 808A94A4 15C00007 */  bne     $t6, $zero, .L808A94C4     
/* 00658 808A94A8 00000000 */  nop
/* 0065C 808A94AC 00A02025 */  or      $a0, $a1, $zero            ## $a0 = 00000000
/* 00660 808A94B0 3C050600 */  lui     $a1, 0x0600                ## $a1 = 06000000
/* 00664 808A94B4 0C00D498 */  jal     Draw_DListOpa
              
/* 00668 808A94B8 24A51AB0 */  addiu   $a1, $a1, 0x1AB0           ## $a1 = 06001AB0
/* 0066C 808A94BC 10000005 */  beq     $zero, $zero, .L808A94D4   
/* 00670 808A94C0 8FBF0014 */  lw      $ra, 0x0014($sp)           
.L808A94C4:
/* 00674 808A94C4 3C050600 */  lui     $a1, 0x0600                ## $a1 = 06000000
/* 00678 808A94C8 0C00D498 */  jal     Draw_DListOpa
              
/* 0067C 808A94CC 24A501A0 */  addiu   $a1, $a1, 0x01A0           ## $a1 = 060001A0
/* 00680 808A94D0 8FBF0014 */  lw      $ra, 0x0014($sp)           
.L808A94D4:
/* 00684 808A94D4 27BD0018 */  addiu   $sp, $sp, 0x0018           ## $sp = 00000000
/* 00688 808A94D8 03E00008 */  jr      $ra                        
/* 0068C 808A94DC 00000000 */  nop

