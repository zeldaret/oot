glabel func_80AEE264
/* 03654 80AEE264 27BDFFE8 */  addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
/* 03658 80AEE268 AFBF0014 */  sw      $ra, 0x0014($sp)           
/* 0365C 80AEE26C AFA40018 */  sw      $a0, 0x0018($sp)           
/* 03660 80AEE270 0C00BC65 */  jal     func_8002F194              
/* 03664 80AEE274 AFA5001C */  sw      $a1, 0x001C($sp)           
/* 03668 80AEE278 8FA40018 */  lw      $a0, 0x0018($sp)           
/* 0366C 80AEE27C 14400019 */  bne     $v0, $zero, .L80AEE2E4     
/* 03670 80AEE280 8FA5001C */  lw      $a1, 0x001C($sp)           
/* 03674 80AEE284 8C8E0004 */  lw      $t6, 0x0004($a0)           ## 00000004
/* 03678 80AEE288 3C028016 */  lui     $v0, 0x8016                ## $v0 = 80160000
/* 0367C 80AEE28C 2419404E */  addiu   $t9, $zero, 0x404E         ## $t9 = 0000404E
/* 03680 80AEE290 35CF0009 */  ori     $t7, $t6, 0x0009           ## $t7 = 00000009
/* 03684 80AEE294 AC8F0004 */  sw      $t7, 0x0004($a0)           ## 00000004
/* 03688 80AEE298 9442F580 */  lhu     $v0, -0x0A80($v0)          ## 8015F580
/* 0368C 80AEE29C 30580008 */  andi    $t8, $v0, 0x0008           ## $t8 = 00000000
/* 03690 80AEE2A0 13000005 */  beq     $t8, $zero, .L80AEE2B8     
/* 03694 80AEE2A4 30480004 */  andi    $t0, $v0, 0x0004           ## $t0 = 00000000
/* 03698 80AEE2A8 0C00BCBD */  jal     func_8002F2F4              
/* 0369C 80AEE2AC A499010E */  sh      $t9, 0x010E($a0)           ## 0000010E
/* 036A0 80AEE2B0 1000000D */  beq     $zero, $zero, .L80AEE2E8   
/* 036A4 80AEE2B4 00001025 */  or      $v0, $zero, $zero          ## $v0 = 00000000
.L80AEE2B8:
/* 036A8 80AEE2B8 11000006 */  beq     $t0, $zero, .L80AEE2D4     
/* 036AC 80AEE2BC 240A404C */  addiu   $t2, $zero, 0x404C         ## $t2 = 0000404C
/* 036B0 80AEE2C0 2409404D */  addiu   $t1, $zero, 0x404D         ## $t1 = 0000404D
/* 036B4 80AEE2C4 0C00BCBD */  jal     func_8002F2F4              
/* 036B8 80AEE2C8 A489010E */  sh      $t1, 0x010E($a0)           ## 0000010E
/* 036BC 80AEE2CC 10000006 */  beq     $zero, $zero, .L80AEE2E8   
/* 036C0 80AEE2D0 00001025 */  or      $v0, $zero, $zero          ## $v0 = 00000000
.L80AEE2D4:
/* 036C4 80AEE2D4 0C00BCBD */  jal     func_8002F2F4              
/* 036C8 80AEE2D8 A48A010E */  sh      $t2, 0x010E($a0)           ## 0000010E
/* 036CC 80AEE2DC 10000002 */  beq     $zero, $zero, .L80AEE2E8   
/* 036D0 80AEE2E0 00001025 */  or      $v0, $zero, $zero          ## $v0 = 00000000
.L80AEE2E4:
/* 036D4 80AEE2E4 24020001 */  addiu   $v0, $zero, 0x0001         ## $v0 = 00000001
.L80AEE2E8:
/* 036D8 80AEE2E8 8FBF0014 */  lw      $ra, 0x0014($sp)           
/* 036DC 80AEE2EC 27BD0018 */  addiu   $sp, $sp, 0x0018           ## $sp = 00000000
/* 036E0 80AEE2F0 03E00008 */  jr      $ra                        
/* 036E4 80AEE2F4 00000000 */  nop


