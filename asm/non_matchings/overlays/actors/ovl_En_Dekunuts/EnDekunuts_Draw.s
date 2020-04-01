glabel EnDekunuts_Draw
/* 01564 809EAAC4 27BDFFE0 */  addiu   $sp, $sp, 0xFFE0           ## $sp = FFFFFFE0
/* 01568 809EAAC8 AFBF001C */  sw      $ra, 0x001C($sp)           
/* 0156C 809EAACC AFA40020 */  sw      $a0, 0x0020($sp)           
/* 01570 809EAAD0 AFA50024 */  sw      $a1, 0x0024($sp)           
/* 01574 809EAAD4 848F001C */  lh      $t7, 0x001C($a0)           ## 0000001C
/* 01578 809EAAD8 2401000A */  addiu   $at, $zero, 0x000A         ## $at = 0000000A
/* 0157C 809EAADC 8FA40024 */  lw      $a0, 0x0024($sp)           
/* 01580 809EAAE0 15E10007 */  bne     $t7, $at, .L809EAB00       
/* 01584 809EAAE4 8FB80020 */  lw      $t8, 0x0020($sp)           
/* 01588 809EAAE8 00A02025 */  or      $a0, $a1, $zero            ## $a0 = 00000000
/* 0158C 809EAAEC 3C050600 */  lui     $a1, 0x0600                ## $a1 = 06000000
/* 01590 809EAAF0 0C00D498 */  jal     Gfx_DrawDListOpa
              
/* 01594 809EAAF4 24A52298 */  addiu   $a1, $a1, 0x2298           ## $a1 = 06002298
/* 01598 809EAAF8 10000009 */  beq     $zero, $zero, .L809EAB20   
/* 0159C 809EAAFC 8FBF001C */  lw      $ra, 0x001C($sp)           
.L809EAB00:
/* 015A0 809EAB00 8F050150 */  lw      $a1, 0x0150($t8)           ## 00000150
/* 015A4 809EAB04 8F06016C */  lw      $a2, 0x016C($t8)           ## 0000016C
/* 015A8 809EAB08 3C07809F */  lui     $a3, %hi(func_809EA98C)    ## $a3 = 809F0000
/* 015AC 809EAB0C 24E7A98C */  addiu   $a3, $a3, %lo(func_809EA98C) ## $a3 = 809EA98C
/* 015B0 809EAB10 AFB80014 */  sw      $t8, 0x0014($sp)           
/* 015B4 809EAB14 0C028572 */  jal     SkelAnime_Draw
              
/* 015B8 809EAB18 AFA00010 */  sw      $zero, 0x0010($sp)         
/* 015BC 809EAB1C 8FBF001C */  lw      $ra, 0x001C($sp)           
.L809EAB20:
/* 015C0 809EAB20 27BD0020 */  addiu   $sp, $sp, 0x0020           ## $sp = 00000000
/* 015C4 809EAB24 03E00008 */  jr      $ra                        
/* 015C8 809EAB28 00000000 */  nop
/* 015CC 809EAB2C 00000000 */  nop

