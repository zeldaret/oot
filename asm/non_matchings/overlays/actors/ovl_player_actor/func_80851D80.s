glabel func_80851D80
/* 1FB70 80851D80 27BDFFE0 */  addiu   $sp, $sp, 0xFFE0           ## $sp = FFFFFFE0
/* 1FB74 80851D84 AFA60028 */  sw      $a2, 0x0028($sp)           
/* 1FB78 80851D88 AFBF0014 */  sw      $ra, 0x0014($sp)           
/* 1FB7C 80851D8C AFA50024 */  sw      $a1, 0x0024($sp)           
/* 1FB80 80851D90 24A601B4 */  addiu   $a2, $a1, 0x01B4           ## $a2 = 000001B4
/* 1FB84 80851D94 AFA40020 */  sw      $a0, 0x0020($sp)           
/* 1FB88 80851D98 00C02825 */  or      $a1, $a2, $zero            ## $a1 = 000001B4
/* 1FB8C 80851D9C 0C028EF0 */  jal     func_800A3BC0              
/* 1FB90 80851DA0 AFA6001C */  sw      $a2, 0x001C($sp)           
/* 1FB94 80851DA4 8FA4001C */  lw      $a0, 0x001C($sp)           
/* 1FB98 80851DA8 0C02914C */  jal     func_800A4530              
/* 1FB9C 80851DAC 3C0540C0 */  lui     $a1, 0x40C0                ## $a1 = 40C00000
/* 1FBA0 80851DB0 10400007 */  beq     $v0, $zero, .L80851DD0     
/* 1FBA4 80851DB4 8FA40024 */  lw      $a0, 0x0024($sp)           
/* 1FBA8 80851DB8 8FA40020 */  lw      $a0, 0x0020($sp)           
/* 1FBAC 80851DBC 8FA50024 */  lw      $a1, 0x0024($sp)           
/* 1FBB0 80851DC0 0C2119C8 */  jal     func_80846720              
/* 1FBB4 80851DC4 00003025 */  or      $a2, $zero, $zero          ## $a2 = 00000000
/* 1FBB8 80851DC8 10000005 */  beq     $zero, $zero, .L80851DE0   
/* 1FBBC 80851DCC 8FBF0014 */  lw      $ra, 0x0014($sp)           
.L80851DD0:
/* 1FBC0 80851DD0 3C058085 */  lui     $a1, %hi(D_808551B8)       ## $a1 = 80850000
/* 1FBC4 80851DD4 0C20CA49 */  jal     func_80832924              
/* 1FBC8 80851DD8 24A551B8 */  addiu   $a1, $a1, %lo(D_808551B8)  ## $a1 = 808551B8
/* 1FBCC 80851DDC 8FBF0014 */  lw      $ra, 0x0014($sp)           
.L80851DE0:
/* 1FBD0 80851DE0 27BD0020 */  addiu   $sp, $sp, 0x0020           ## $sp = 00000000
/* 1FBD4 80851DE4 03E00008 */  jr      $ra                        
/* 1FBD8 80851DE8 00000000 */  nop


