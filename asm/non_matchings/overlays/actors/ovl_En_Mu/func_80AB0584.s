glabel func_80AB0584
/* 00164 80AB0584 27BDFFE8 */  addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
/* 00168 80AB0588 AFBF0014 */  sw      $ra, 0x0014($sp)           
/* 0016C 80AB058C AFA5001C */  sw      $a1, 0x001C($sp)           
/* 00170 80AB0590 84A5001C */  lh      $a1, 0x001C($a1)           ## 0000001C
/* 00174 80AB0594 0C01B0D8 */  jal     Text_GetFaceReaction              
/* 00178 80AB0598 24A5003A */  addiu   $a1, $a1, 0x003A           ## $a1 = 0000003A
/* 0017C 80AB059C 10400003 */  beq     $v0, $zero, .L80AB05AC     
/* 00180 80AB05A0 3043FFFF */  andi    $v1, $v0, 0xFFFF           ## $v1 = 00000000
/* 00184 80AB05A4 10000003 */  beq     $zero, $zero, .L80AB05B4   
/* 00188 80AB05A8 00601025 */  or      $v0, $v1, $zero            ## $v0 = 00000000
.L80AB05AC:
/* 0018C 80AB05AC 8FAF001C */  lw      $t7, 0x001C($sp)           
/* 00190 80AB05B0 95E20208 */  lhu     $v0, 0x0208($t7)           ## 00000208
.L80AB05B4:
/* 00194 80AB05B4 8FBF0014 */  lw      $ra, 0x0014($sp)           
/* 00198 80AB05B8 27BD0018 */  addiu   $sp, $sp, 0x0018           ## $sp = 00000000
/* 0019C 80AB05BC 03E00008 */  jr      $ra                        
/* 001A0 80AB05C0 00000000 */  nop
