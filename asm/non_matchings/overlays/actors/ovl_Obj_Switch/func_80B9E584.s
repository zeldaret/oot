glabel func_80B9E584
/* 01374 80B9E584 27BDFFE0 */  addiu   $sp, $sp, 0xFFE0           ## $sp = FFFFFFE0
/* 01378 80B9E588 AFBF001C */  sw      $ra, 0x001C($sp)           
/* 0137C 80B9E58C AFB00018 */  sw      $s0, 0x0018($sp)           
/* 01380 80B9E590 AFA50024 */  sw      $a1, 0x0024($sp)           
/* 01384 80B9E594 848E001C */  lh      $t6, 0x001C($a0)           ## 0000001C
/* 01388 80B9E598 24010001 */  addiu   $at, $zero, 0x0001         ## $at = 00000001
/* 0138C 80B9E59C 00808025 */  or      $s0, $a0, $zero            ## $s0 = 00000000
/* 01390 80B9E5A0 000E7903 */  sra     $t7, $t6,  4               
/* 01394 80B9E5A4 31F80007 */  andi    $t8, $t7, 0x0007           ## $t8 = 00000000
/* 01398 80B9E5A8 1701000C */  bne     $t8, $at, .L80B9E5DC       
/* 0139C 80B9E5AC 00000000 */  nop
/* 013A0 80B9E5B0 9099016E */  lbu     $t9, 0x016E($a0)           ## 0000016E
/* 013A4 80B9E5B4 13200009 */  beq     $t9, $zero, .L80B9E5DC     
/* 013A8 80B9E5B8 00000000 */  nop
/* 013AC 80B9E5BC 0C016C66 */  jal     func_8005B198              
/* 013B0 80B9E5C0 00000000 */  nop
/* 013B4 80B9E5C4 92080002 */  lbu     $t0, 0x0002($s0)           ## 00000002
/* 013B8 80B9E5C8 10480004 */  beq     $v0, $t0, .L80B9E5DC       
/* 013BC 80B9E5CC 00000000 */  nop
/* 013C0 80B9E5D0 8609016C */  lh      $t1, 0x016C($s0)           ## 0000016C
/* 013C4 80B9E5D4 5D200009 */  bgtzl   $t1, .L80B9E5FC            
/* 013C8 80B9E5D8 8FBF001C */  lw      $ra, 0x001C($sp)           
.L80B9E5DC:
/* 013CC 80B9E5DC 0C2E78A0 */  jal     func_80B9E280              
/* 013D0 80B9E5E0 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 013D4 80B9E5E4 0C2E75A0 */  jal     func_80B9D680              
/* 013D8 80B9E5E8 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 013DC 80B9E5EC 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 013E0 80B9E5F0 0C00BE0A */  jal     Audio_PlayActorSound2
              
/* 013E4 80B9E5F4 240528BA */  addiu   $a1, $zero, 0x28BA         ## $a1 = 000028BA
/* 013E8 80B9E5F8 8FBF001C */  lw      $ra, 0x001C($sp)           
.L80B9E5FC:
/* 013EC 80B9E5FC 8FB00018 */  lw      $s0, 0x0018($sp)           
/* 013F0 80B9E600 27BD0020 */  addiu   $sp, $sp, 0x0020           ## $sp = 00000000
/* 013F4 80B9E604 03E00008 */  jr      $ra                        
/* 013F8 80B9E608 00000000 */  nop


