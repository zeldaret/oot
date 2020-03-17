glabel BgBdanObjects_Destroy
/* 00364 8086C004 27BDFFE8 */  addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
/* 00368 8086C008 00803825 */  or      $a3, $a0, $zero            ## $a3 = 00000000
/* 0036C 8086C00C AFBF0014 */  sw      $ra, 0x0014($sp)           
/* 00370 8086C010 AFA5001C */  sw      $a1, 0x001C($sp)           
/* 00374 8086C014 8CE6014C */  lw      $a2, 0x014C($a3)           ## 0000014C
/* 00378 8086C018 00A02025 */  or      $a0, $a1, $zero            ## $a0 = 00000000
/* 0037C 8086C01C 24A50810 */  addiu   $a1, $a1, 0x0810           ## $a1 = 00000810
/* 00380 8086C020 0C00FB56 */  jal     DynaPolyInfo_Free
              ## DynaPolyInfo_delReserve
/* 00384 8086C024 AFA70018 */  sw      $a3, 0x0018($sp)           
/* 00388 8086C028 8FA70018 */  lw      $a3, 0x0018($sp)           
/* 0038C 8086C02C 8FA4001C */  lw      $a0, 0x001C($sp)           
/* 00390 8086C030 84EF001C */  lh      $t7, 0x001C($a3)           ## 0000001C
/* 00394 8086C034 55E00004 */  bnel    $t7, $zero, .L8086C048     
/* 00398 8086C038 8FBF0014 */  lw      $ra, 0x0014($sp)           
/* 0039C 8086C03C 0C0170EB */  jal     ActorCollider_FreeCylinder
              
/* 003A0 8086C040 24E5016C */  addiu   $a1, $a3, 0x016C           ## $a1 = 0000016C
/* 003A4 8086C044 8FBF0014 */  lw      $ra, 0x0014($sp)           
.L8086C048:
/* 003A8 8086C048 27BD0018 */  addiu   $sp, $sp, 0x0018           ## $sp = 00000000
/* 003AC 8086C04C 03E00008 */  jr      $ra                        
/* 003B0 8086C050 00000000 */  nop


