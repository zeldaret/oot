glabel func_80AE3978
/* 01578 80AE3978 27BDFFE8 */  addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
/* 0157C 80AE397C AFA5001C */  sw      $a1, 0x001C($sp)           
/* 01580 80AE3980 00802825 */  or      $a1, $a0, $zero            ## $a1 = 00000000
/* 01584 80AE3984 AFBF0014 */  sw      $ra, 0x0014($sp)           
/* 01588 80AE3988 AFA40018 */  sw      $a0, 0x0018($sp)           
/* 0158C 80AE398C AFA50018 */  sw      $a1, 0x0018($sp)           
/* 01590 80AE3990 0C02927F */  jal     SkelAnime_FrameUpdateMatrix
              
/* 01594 80AE3994 24840188 */  addiu   $a0, $a0, 0x0188           ## $a0 = 00000188
/* 01598 80AE3998 1040000A */  beq     $v0, $zero, .L80AE39C4     
/* 0159C 80AE399C 8FA50018 */  lw      $a1, 0x0018($sp)           
/* 015A0 80AE39A0 8CAE0118 */  lw      $t6, 0x0118($a1)           ## 00000118
/* 015A4 80AE39A4 11C00005 */  beq     $t6, $zero, .L80AE39BC     
/* 015A8 80AE39A8 00000000 */  nop
/* 015AC 80AE39AC 0C2B8C77 */  jal     func_80AE31DC              
/* 015B0 80AE39B0 00A02025 */  or      $a0, $a1, $zero            ## $a0 = 00000000
/* 015B4 80AE39B4 10000004 */  beq     $zero, $zero, .L80AE39C8   
/* 015B8 80AE39B8 8FBF0014 */  lw      $ra, 0x0014($sp)           
.L80AE39BC:
/* 015BC 80AE39BC 0C2B8DEF */  jal     func_80AE37BC              
/* 015C0 80AE39C0 00A02025 */  or      $a0, $a1, $zero            ## $a0 = 00000000
.L80AE39C4:
/* 015C4 80AE39C4 8FBF0014 */  lw      $ra, 0x0014($sp)           
.L80AE39C8:
/* 015C8 80AE39C8 27BD0018 */  addiu   $sp, $sp, 0x0018           ## $sp = 00000000
/* 015CC 80AE39CC 03E00008 */  jr      $ra                        
/* 015D0 80AE39D0 00000000 */  nop


