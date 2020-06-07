glabel func_80A4D944
/* 01CA4 80A4D944 27BDFFE0 */  addiu   $sp, $sp, 0xFFE0           ## $sp = FFFFFFE0
/* 01CA8 80A4D948 AFBF001C */  sw      $ra, 0x001C($sp)           
/* 01CAC 80A4D94C AFB00018 */  sw      $s0, 0x0018($sp)           
/* 01CB0 80A4D950 00808025 */  or      $s0, $a0, $zero            ## $s0 = 00000000
/* 01CB4 80A4D954 0C2931B2 */  jal     func_80A4C6C8              
/* 01CB8 80A4D958 AFA50024 */  sw      $a1, 0x0024($sp)           
/* 01CBC 80A4D95C 960E0088 */  lhu     $t6, 0x0088($s0)           ## 00000088
/* 01CC0 80A4D960 31CF0001 */  andi    $t7, $t6, 0x0001           ## $t7 = 00000000
/* 01CC4 80A4D964 51E00019 */  beql    $t7, $zero, .L80A4D9CC     
/* 01CC8 80A4D968 8FBF001C */  lw      $ra, 0x001C($sp)           
/* 01CCC 80A4D96C C6040060 */  lwc1    $f4, 0x0060($s0)           ## 00000060
/* 01CD0 80A4D970 44803000 */  mtc1    $zero, $f6                 ## $f6 = 0.00
/* 01CD4 80A4D974 00000000 */  nop
/* 01CD8 80A4D978 4606203C */  c.lt.s  $f4, $f6                   
/* 01CDC 80A4D97C 00000000 */  nop
/* 01CE0 80A4D980 45020012 */  bc1fl   .L80A4D9CC                 
/* 01CE4 80A4D984 8FBF001C */  lw      $ra, 0x001C($sp)           
/* 01CE8 80A4D988 921801D3 */  lbu     $t8, 0x01D3($s0)           ## 000001D3
/* 01CEC 80A4D98C 33190004 */  andi    $t9, $t8, 0x0004           ## $t9 = 00000000
/* 01CF0 80A4D990 1320000B */  beq     $t9, $zero, .L80A4D9C0     
/* 01CF4 80A4D994 00000000 */  nop
/* 01CF8 80A4D998 86080018 */  lh      $t0, 0x0018($s0)           ## 00000018
/* 01CFC 80A4D99C 24010001 */  addiu   $at, $zero, 0x0001         ## $at = 00000001
/* 01D00 80A4D9A0 31090001 */  andi    $t1, $t0, 0x0001           ## $t1 = 00000000
/* 01D04 80A4D9A4 15210006 */  bne     $t1, $at, .L80A4D9C0       
/* 01D08 80A4D9A8 00000000 */  nop
/* 01D0C 80A4D9AC 0C293059 */  jal     func_80A4C164              
/* 01D10 80A4D9B0 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 01D14 80A4D9B4 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 01D18 80A4D9B8 0C292F95 */  jal     func_80A4BE54              
/* 01D1C 80A4D9BC 8FA50024 */  lw      $a1, 0x0024($sp)           
.L80A4D9C0:
/* 01D20 80A4D9C0 0C293677 */  jal     func_80A4D9DC              
/* 01D24 80A4D9C4 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 01D28 80A4D9C8 8FBF001C */  lw      $ra, 0x001C($sp)           
.L80A4D9CC:
/* 01D2C 80A4D9CC 8FB00018 */  lw      $s0, 0x0018($sp)           
/* 01D30 80A4D9D0 27BD0020 */  addiu   $sp, $sp, 0x0020           ## $sp = 00000000
/* 01D34 80A4D9D4 03E00008 */  jr      $ra                        
/* 01D38 80A4D9D8 00000000 */  nop
