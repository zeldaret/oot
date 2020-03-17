glabel func_80B05524
/* 00C94 80B05524 27BDFFE8 */  addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
/* 00C98 80B05528 AFBF0014 */  sw      $ra, 0x0014($sp)           
/* 00C9C 80B0552C AFA5001C */  sw      $a1, 0x001C($sp)           
/* 00CA0 80B05530 908E00AF */  lbu     $t6, 0x00AF($a0)           ## 000000AF
/* 00CA4 80B05534 55C00007 */  bnel    $t6, $zero, .L80B05554     
/* 00CA8 80B05538 848203D4 */  lh      $v0, 0x03D4($a0)           ## 000003D4
/* 00CAC 80B0553C 8C980190 */  lw      $t8, 0x0190($a0)           ## 00000190
/* 00CB0 80B05540 3C0F80B0 */  lui     $t7, %hi(func_80B0699C)    ## $t7 = 80B00000
/* 00CB4 80B05544 25EF699C */  addiu   $t7, $t7, %lo(func_80B0699C) ## $t7 = 80B0699C
/* 00CB8 80B05548 55F80024 */  bnel    $t7, $t8, .L80B055DC       
/* 00CBC 80B0554C 8FBF0014 */  lw      $ra, 0x0014($sp)           
/* 00CC0 80B05550 848203D4 */  lh      $v0, 0x03D4($a0)           ## 000003D4
.L80B05554:
/* 00CC4 80B05554 14400003 */  bne     $v0, $zero, .L80B05564     
/* 00CC8 80B05558 2459FFFF */  addiu   $t9, $v0, 0xFFFF           ## $t9 = FFFFFFFF
/* 00CCC 80B0555C 10000003 */  beq     $zero, $zero, .L80B0556C   
/* 00CD0 80B05560 00001825 */  or      $v1, $zero, $zero          ## $v1 = 00000000
.L80B05564:
/* 00CD4 80B05564 A49903D4 */  sh      $t9, 0x03D4($a0)           ## 000003D4
/* 00CD8 80B05568 848303D4 */  lh      $v1, 0x03D4($a0)           ## 000003D4
.L80B0556C:
/* 00CDC 80B0556C 14600004 */  bne     $v1, $zero, .L80B05580     
/* 00CE0 80B05570 8FA5001C */  lw      $a1, 0x001C($sp)           
/* 00CE4 80B05574 0C2C14D3 */  jal     func_80B0534C              
/* 00CE8 80B05578 AFA40018 */  sw      $a0, 0x0018($sp)           
/* 00CEC 80B0557C 8FA40018 */  lw      $a0, 0x0018($sp)           
.L80B05580:
/* 00CF0 80B05580 848203D0 */  lh      $v0, 0x03D0($a0)           ## 000003D0
/* 00CF4 80B05584 10400002 */  beq     $v0, $zero, .L80B05590     
/* 00CF8 80B05588 2448FFFF */  addiu   $t0, $v0, 0xFFFF           ## $t0 = FFFFFFFF
/* 00CFC 80B0558C A48803D0 */  sh      $t0, 0x03D0($a0)           ## 000003D0
.L80B05590:
/* 00D00 80B05590 848303CC */  lh      $v1, 0x03CC($a0)           ## 000003CC
/* 00D04 80B05594 14600003 */  bne     $v1, $zero, .L80B055A4     
/* 00D08 80B05598 2469FFFF */  addiu   $t1, $v1, 0xFFFF           ## $t1 = FFFFFFFF
/* 00D0C 80B0559C 10000003 */  beq     $zero, $zero, .L80B055AC   
/* 00D10 80B055A0 848203D0 */  lh      $v0, 0x03D0($a0)           ## 000003D0
.L80B055A4:
/* 00D14 80B055A4 A48903CC */  sh      $t1, 0x03CC($a0)           ## 000003CC
/* 00D18 80B055A8 848203D0 */  lh      $v0, 0x03D0($a0)           ## 000003D0
.L80B055AC:
/* 00D1C 80B055AC 5440000B */  bnel    $v0, $zero, .L80B055DC     
/* 00D20 80B055B0 8FBF0014 */  lw      $ra, 0x0014($sp)           
/* 00D24 80B055B4 848A03CC */  lh      $t2, 0x03CC($a0)           ## 000003CC
/* 00D28 80B055B8 8FA5001C */  lw      $a1, 0x001C($sp)           
/* 00D2C 80B055BC 55400007 */  bnel    $t2, $zero, .L80B055DC     
/* 00D30 80B055C0 8FBF0014 */  lw      $ra, 0x0014($sp)           
/* 00D34 80B055C4 0C2C1495 */  jal     func_80B05254              
/* 00D38 80B055C8 AFA40018 */  sw      $a0, 0x0018($sp)           
/* 00D3C 80B055CC 8FA40018 */  lw      $a0, 0x0018($sp)           
/* 00D40 80B055D0 0C2C14A6 */  jal     func_80B05298              
/* 00D44 80B055D4 8FA5001C */  lw      $a1, 0x001C($sp)           
/* 00D48 80B055D8 8FBF0014 */  lw      $ra, 0x0014($sp)           
.L80B055DC:
/* 00D4C 80B055DC 27BD0018 */  addiu   $sp, $sp, 0x0018           ## $sp = 00000000
/* 00D50 80B055E0 03E00008 */  jr      $ra                        
/* 00D54 80B055E4 00000000 */  nop


