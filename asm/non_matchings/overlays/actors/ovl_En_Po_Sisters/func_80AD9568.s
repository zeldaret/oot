glabel func_80AD9568
/* 005D8 80AD9568 27BDFFE8 */  addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
/* 005DC 80AD956C AFBF0014 */  sw      $ra, 0x0014($sp)           
/* 005E0 80AD9570 00803825 */  or      $a3, $a0, $zero            ## $a3 = 00000000
/* 005E4 80AD9574 3C050600 */  lui     $a1, 0x0600                ## $a1 = 06000000
/* 005E8 80AD9578 24A50D40 */  addiu   $a1, $a1, 0x0D40           ## $a1 = 06000D40
/* 005EC 80AD957C AFA70018 */  sw      $a3, 0x0018($sp)           
/* 005F0 80AD9580 2484014C */  addiu   $a0, $a0, 0x014C           ## $a0 = 0000014C
/* 005F4 80AD9584 0C0294D3 */  jal     func_800A534C              
/* 005F8 80AD9588 3C06C040 */  lui     $a2, 0xC040                ## $a2 = C0400000
/* 005FC 80AD958C 8FA70018 */  lw      $a3, 0x0018($sp)           
/* 00600 80AD9590 34018000 */  ori     $at, $zero, 0x8000         ## $at = 00008000
/* 00604 80AD9594 3C0A80AE */  lui     $t2, %hi(func_80ADA9E8)    ## $t2 = 80AE0000
/* 00608 80AD9598 84EE008A */  lh      $t6, 0x008A($a3)           ## 0000008A
/* 0060C 80AD959C 90F80194 */  lbu     $t8, 0x0194($a3)           ## 00000194
/* 00610 80AD95A0 254AA9E8 */  addiu   $t2, $t2, %lo(func_80ADA9E8) ## $t2 = 80ADA9E8
/* 00614 80AD95A4 01C17821 */  addu    $t7, $t6, $at              
/* 00618 80AD95A8 13000006 */  beq     $t8, $zero, .L80AD95C4     
/* 0061C 80AD95AC A4EF0032 */  sh      $t7, 0x0032($a3)           ## 00000032
/* 00620 80AD95B0 90E802BD */  lbu     $t0, 0x02BD($a3)           ## 000002BD
/* 00624 80AD95B4 24190003 */  addiu   $t9, $zero, 0x0003         ## $t9 = 00000003
/* 00628 80AD95B8 A0F902C0 */  sb      $t9, 0x02C0($a3)           ## 000002C0
/* 0062C 80AD95BC 3109FFFB */  andi    $t1, $t0, 0xFFFB           ## $t1 = 00000000
/* 00630 80AD95C0 A0E902BD */  sb      $t1, 0x02BD($a3)           ## 000002BD
.L80AD95C4:
/* 00634 80AD95C4 ACEA0190 */  sw      $t2, 0x0190($a3)           ## 00000190
/* 00638 80AD95C8 8FBF0014 */  lw      $ra, 0x0014($sp)           
/* 0063C 80AD95CC 27BD0018 */  addiu   $sp, $sp, 0x0018           ## $sp = 00000000
/* 00640 80AD95D0 03E00008 */  jr      $ra                        
/* 00644 80AD95D4 00000000 */  nop


