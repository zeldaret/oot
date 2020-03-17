glabel BgMoriElevator_Update
/* 008BC 808A20BC 27BDFFE8 */  addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
/* 008C0 808A20C0 AFBF0014 */  sw      $ra, 0x0014($sp)           
/* 008C4 808A20C4 AFA5001C */  sw      $a1, 0x001C($sp)           
/* 008C8 808A20C8 AFA40018 */  sw      $a0, 0x0018($sp)           
/* 008CC 808A20CC 8C990164 */  lw      $t9, 0x0164($a0)           ## 00000164
/* 008D0 808A20D0 0320F809 */  jalr    $ra, $t9                   
/* 008D4 808A20D4 00000000 */  nop
/* 008D8 808A20D8 8FA60018 */  lw      $a2, 0x0018($sp)           
/* 008DC 808A20DC 90CE0160 */  lbu     $t6, 0x0160($a2)           ## 00000160
/* 008E0 808A20E0 84C5001C */  lh      $a1, 0x001C($a2)           ## 0000001C
/* 008E4 808A20E4 A0CE0170 */  sb      $t6, 0x0170($a2)           ## 00000170
/* 008E8 808A20E8 8FA4001C */  lw      $a0, 0x001C($sp)           
/* 008EC 808A20EC 0C00B2D0 */  jal     Flags_GetSwitch
              
/* 008F0 808A20F0 30A5003F */  andi    $a1, $a1, 0x003F           ## $a1 = 00000000
/* 008F4 808A20F4 8FA60018 */  lw      $a2, 0x0018($sp)           
/* 008F8 808A20F8 ACC2016C */  sw      $v0, 0x016C($a2)           ## 0000016C
/* 008FC 808A20FC 8FBF0014 */  lw      $ra, 0x0014($sp)           
/* 00900 808A2100 27BD0018 */  addiu   $sp, $sp, 0x0018           ## $sp = 00000000
/* 00904 808A2104 03E00008 */  jr      $ra                        
/* 00908 808A2108 00000000 */  nop


