glabel func_80AA0B74
/* 004E4 80AA0B74 27BDFFE8 */  addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
/* 004E8 80AA0B78 AFBF0014 */  sw      $ra, 0x0014($sp)           
/* 004EC 80AA0B7C 8C8F0154 */  lw      $t7, 0x0154($a0)           ## 00000154
/* 004F0 80AA0B80 3C0E0601 */  lui     $t6, 0x0601                ## $t6 = 06010000
/* 004F4 80AA0B84 25CE8D64 */  addiu   $t6, $t6, 0x8D64           ## $t6 = 06008D64
/* 004F8 80AA0B88 15CF0013 */  bne     $t6, $t7, .L80AA0BD8       
/* 004FC 80AA0B8C 00802825 */  or      $a1, $a0, $zero            ## $a1 = 00000000
/* 00500 80AA0B90 849801E8 */  lh      $t8, 0x01E8($a0)           ## 000001E8
/* 00504 80AA0B94 5700000A */  bnel    $t8, $zero, .L80AA0BC0     
/* 00508 80AA0B98 84A801E0 */  lh      $t0, 0x01E0($a1)           ## 000001E0
/* 0050C 80AA0B9C 849901E0 */  lh      $t9, 0x01E0($a0)           ## 000001E0
/* 00510 80AA0BA0 5320000E */  beql    $t9, $zero, .L80AA0BDC     
/* 00514 80AA0BA4 8FBF0014 */  lw      $ra, 0x0014($sp)           
/* 00518 80AA0BA8 A48001E0 */  sh      $zero, 0x01E0($a0)         ## 000001E0
/* 0051C 80AA0BAC 0C03D961 */  jal     func_800F6584              
/* 00520 80AA0BB0 00002025 */  or      $a0, $zero, $zero          ## $a0 = 00000000
/* 00524 80AA0BB4 10000009 */  beq     $zero, $zero, .L80AA0BDC   
/* 00528 80AA0BB8 8FBF0014 */  lw      $ra, 0x0014($sp)           
/* 0052C 80AA0BBC 84A801E0 */  lh      $t0, 0x01E0($a1)           ## 000001E0
.L80AA0BC0:
/* 00530 80AA0BC0 24090001 */  addiu   $t1, $zero, 0x0001         ## $t1 = 00000001
/* 00534 80AA0BC4 24040001 */  addiu   $a0, $zero, 0x0001         ## $a0 = 00000001
/* 00538 80AA0BC8 55000004 */  bnel    $t0, $zero, .L80AA0BDC     
/* 0053C 80AA0BCC 8FBF0014 */  lw      $ra, 0x0014($sp)           
/* 00540 80AA0BD0 0C03D961 */  jal     func_800F6584              
/* 00544 80AA0BD4 A4A901E0 */  sh      $t1, 0x01E0($a1)           ## 000001E0
.L80AA0BD8:
/* 00548 80AA0BD8 8FBF0014 */  lw      $ra, 0x0014($sp)           
.L80AA0BDC:
/* 0054C 80AA0BDC 27BD0018 */  addiu   $sp, $sp, 0x0018           ## $sp = 00000000
/* 00550 80AA0BE0 03E00008 */  jr      $ra                        
/* 00554 80AA0BE4 00000000 */  nop
