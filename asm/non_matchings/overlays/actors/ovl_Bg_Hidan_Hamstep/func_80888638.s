glabel func_80888638
/* 005F8 80888638 27BDFFE0 */  addiu   $sp, $sp, 0xFFE0           ## $sp = FFFFFFE0
/* 005FC 8088863C AFBF001C */  sw      $ra, 0x001C($sp)           
/* 00600 80888640 AFB10018 */  sw      $s1, 0x0018($sp)           
/* 00604 80888644 AFB00014 */  sw      $s0, 0x0014($sp)           
/* 00608 80888648 8C90011C */  lw      $s0, 0x011C($a0)           ## 0000011C
/* 0060C 8088864C 00A08825 */  or      $s1, $a1, $zero            ## $s1 = 00000000
/* 00610 80888650 5200000C */  beql    $s0, $zero, .L80888684     
/* 00614 80888654 8FBF001C */  lw      $ra, 0x001C($sp)           
/* 00618 80888658 860E001C */  lh      $t6, 0x001C($s0)           ## 0000001C
.L8088865C:
/* 0061C 8088865C 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 00620 80888660 31CF00FF */  andi    $t7, $t6, 0x00FF           ## $t7 = 00000000
/* 00624 80888664 51E00004 */  beql    $t7, $zero, .L80888678     
/* 00628 80888668 8E10011C */  lw      $s0, 0x011C($s0)           ## 0000011C
/* 0062C 8088866C 0C222132 */  jal     func_808884C8              
/* 00630 80888670 02202825 */  or      $a1, $s1, $zero            ## $a1 = 00000000
/* 00634 80888674 8E10011C */  lw      $s0, 0x011C($s0)           ## 0000011C
.L80888678:
/* 00638 80888678 5600FFF8 */  bnel    $s0, $zero, .L8088865C     
/* 0063C 8088867C 860E001C */  lh      $t6, 0x001C($s0)           ## 0000001C
/* 00640 80888680 8FBF001C */  lw      $ra, 0x001C($sp)           
.L80888684:
/* 00644 80888684 8FB00014 */  lw      $s0, 0x0014($sp)           
/* 00648 80888688 8FB10018 */  lw      $s1, 0x0018($sp)           
/* 0064C 8088868C 03E00008 */  jr      $ra                        
/* 00650 80888690 27BD0020 */  addiu   $sp, $sp, 0x0020           ## $sp = 00000000
