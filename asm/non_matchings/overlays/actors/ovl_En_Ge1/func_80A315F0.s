glabel func_80A315F0
/* 00C80 80A315F0 27BDFFE8 */  addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
/* 00C84 80A315F4 AFBF0014 */  sw      $ra, 0x0014($sp)           
/* 00C88 80A315F8 AFA5001C */  sw      $a1, 0x001C($sp)           
/* 00C8C 80A315FC 908202AF */  lbu     $v0, 0x02AF($a0)           ## 000002AF
/* 00C90 80A31600 18400003 */  blez    $v0, .L80A31610            
/* 00C94 80A31604 244EFFFF */  addiu   $t6, $v0, 0xFFFF           ## $t6 = FFFFFFFF
/* 00C98 80A31608 10000007 */  beq     $zero, $zero, .L80A31628   
/* 00C9C 80A3160C A08E02AF */  sb      $t6, 0x02AF($a0)           ## 000002AF
.L80A31610:
/* 00CA0 80A31610 0C28C352 */  jal     func_80A30D48              
/* 00CA4 80A31614 AFA40018 */  sw      $a0, 0x0018($sp)           
/* 00CA8 80A31618 8FA40018 */  lw      $a0, 0x0018($sp)           
/* 00CAC 80A3161C 3C0F80A3 */  lui     $t7, %hi(func_80A317C0)    ## $t7 = 80A30000
/* 00CB0 80A31620 25EF17C0 */  addiu   $t7, $t7, %lo(func_80A317C0) ## $t7 = 80A317C0
/* 00CB4 80A31624 AC8F02B4 */  sw      $t7, 0x02B4($a0)           ## 000002B4
.L80A31628:
/* 00CB8 80A31628 949802AC */  lhu     $t8, 0x02AC($a0)           ## 000002AC
/* 00CBC 80A3162C 37190008 */  ori     $t9, $t8, 0x0008           ## $t9 = 00000008
/* 00CC0 80A31630 A49902AC */  sh      $t9, 0x02AC($a0)           ## 000002AC
/* 00CC4 80A31634 8FBF0014 */  lw      $ra, 0x0014($sp)           
/* 00CC8 80A31638 27BD0018 */  addiu   $sp, $sp, 0x0018           ## $sp = 00000000
/* 00CCC 80A3163C 03E00008 */  jr      $ra                        
/* 00CD0 80A31640 00000000 */  nop
