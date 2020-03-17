glabel func_80AFF380
/* 010D0 80AFF380 27BDFFE8 */  addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
/* 010D4 80AFF384 AFBF0014 */  sw      $ra, 0x0014($sp)           
/* 010D8 80AFF388 848E02CA */  lh      $t6, 0x02CA($a0)           ## 000002CA
/* 010DC 80AFF38C 15C00005 */  bne     $t6, $zero, .L80AFF3A4     
/* 010E0 80AFF390 00000000 */  nop
/* 010E4 80AFF394 0C2BFC0E */  jal     func_80AFF038              
/* 010E8 80AFF398 00000000 */  nop
/* 010EC 80AFF39C 10000009 */  beq     $zero, $zero, .L80AFF3C4   
/* 010F0 80AFF3A0 8FBF0014 */  lw      $ra, 0x0014($sp)           
.L80AFF3A4:
/* 010F4 80AFF3A4 0C2BFB7E */  jal     func_80AFEDF8              
/* 010F8 80AFF3A8 AFA40018 */  sw      $a0, 0x0018($sp)           
/* 010FC 80AFF3AC 10400004 */  beq     $v0, $zero, .L80AFF3C0     
/* 01100 80AFF3B0 8FA40018 */  lw      $a0, 0x0018($sp)           
/* 01104 80AFF3B4 240F0258 */  addiu   $t7, $zero, 0x0258         ## $t7 = 00000258
/* 01108 80AFF3B8 0C2BFCF4 */  jal     func_80AFF3D0              
/* 0110C 80AFF3BC A48F02CA */  sh      $t7, 0x02CA($a0)           ## 000002CA
.L80AFF3C0:
/* 01110 80AFF3C0 8FBF0014 */  lw      $ra, 0x0014($sp)           
.L80AFF3C4:
/* 01114 80AFF3C4 27BD0018 */  addiu   $sp, $sp, 0x0018           ## $sp = 00000000
/* 01118 80AFF3C8 03E00008 */  jr      $ra                        
/* 0111C 80AFF3CC 00000000 */  nop


