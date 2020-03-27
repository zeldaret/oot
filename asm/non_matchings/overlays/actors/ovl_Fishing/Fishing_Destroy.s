glabel Fishing_Destroy
/* 0151C 80B6AEBC 27BDFFE8 */  addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
/* 01520 80B6AEC0 AFBF0014 */  sw      $ra, 0x0014($sp)
/* 01524 80B6AEC4 AFA40018 */  sw      $a0, 0x0018($sp)
/* 01528 80B6AEC8 248401D8 */  addiu   $a0, $a0, 0x01D8           ## $a0 = 000001D8
/* 0152C 80B6AECC 0C0295BC */  jal     SkelAnime_Free
/* 01530 80B6AED0 AFA5001C */  sw      $a1, 0x001C($sp)
/* 01534 80B6AED4 8FA30018 */  lw      $v1, 0x0018($sp)
/* 01538 80B6AED8 8FA7001C */  lw      $a3, 0x001C($sp)
/* 0153C 80B6AEDC 240100C8 */  addiu   $at, $zero, 0x00C8         ## $at = 000000C8
/* 01540 80B6AEE0 8462001C */  lh      $v0, 0x001C($v1)           ## 0000001C
/* 01544 80B6AEE4 00E02025 */  or      $a0, $a3, $zero            ## $a0 = 00000000
/* 01548 80B6AEE8 24E507A8 */  addiu   $a1, $a3, 0x07A8           ## $a1 = 000007A8
/* 0154C 80B6AEEC 54410006 */  bnel    $v0, $at, .L80B6AF08
/* 01550 80B6AEF0 24010001 */  addiu   $at, $zero, 0x0001         ## $at = 00000001
/* 01554 80B6AEF4 0C01E9F1 */  jal     Lights_Remove

/* 01558 80B6AEF8 8C66021C */  lw      $a2, 0x021C($v1)           ## 0000021C
/* 0155C 80B6AEFC 10000007 */  beq     $zero, $zero, .L80B6AF1C
/* 01560 80B6AF00 8FBF0014 */  lw      $ra, 0x0014($sp)
/* 01564 80B6AF04 24010001 */  addiu   $at, $zero, 0x0001         ## $at = 00000001
.L80B6AF08:
/* 01568 80B6AF08 14410003 */  bne     $v0, $at, .L80B6AF18
/* 0156C 80B6AF0C 00E02025 */  or      $a0, $a3, $zero            ## $a0 = 00000000
/* 01570 80B6AF10 0C016F32 */  jal     func_8005BCC8
/* 01574 80B6AF14 24650230 */  addiu   $a1, $v1, 0x0230           ## $a1 = 00000230
.L80B6AF18:
/* 01578 80B6AF18 8FBF0014 */  lw      $ra, 0x0014($sp)
.L80B6AF1C:
/* 0157C 80B6AF1C 27BD0018 */  addiu   $sp, $sp, 0x0018           ## $sp = 00000000
/* 01580 80B6AF20 03E00008 */  jr      $ra
/* 01584 80B6AF24 00000000 */  nop


