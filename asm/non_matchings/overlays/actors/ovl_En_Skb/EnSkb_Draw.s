glabel EnSkb_Draw
/* 0162C 80AFDFCC 27BDFFE0 */  addiu   $sp, $sp, 0xFFE0           ## $sp = FFFFFFE0
/* 01630 80AFDFD0 AFBF001C */  sw      $ra, 0x001C($sp)           
/* 01634 80AFDFD4 AFA40020 */  sw      $a0, 0x0020($sp)           
/* 01638 80AFDFD8 AFA50024 */  sw      $a1, 0x0024($sp)           
/* 0163C 80AFDFDC 0C024F46 */  jal     func_80093D18              
/* 01640 80AFDFE0 8CA40000 */  lw      $a0, 0x0000($a1)           ## 00000000
/* 01644 80AFDFE4 8FA20020 */  lw      $v0, 0x0020($sp)           
/* 01648 80AFDFE8 3C0F80B0 */  lui     $t7, %hi(func_80AFDF24)    ## $t7 = 80B00000
/* 0164C 80AFDFEC 25EFDF24 */  addiu   $t7, $t7, %lo(func_80AFDF24) ## $t7 = 80AFDF24
/* 01650 80AFDFF0 3C0780B0 */  lui     $a3, %hi(func_80AFDD30)    ## $a3 = 80B00000
/* 01654 80AFDFF4 8C450150 */  lw      $a1, 0x0150($v0)           ## 00000150
/* 01658 80AFDFF8 8C46016C */  lw      $a2, 0x016C($v0)           ## 0000016C
/* 0165C 80AFDFFC AFAF0010 */  sw      $t7, 0x0010($sp)           
/* 01660 80AFE000 24E7DD30 */  addiu   $a3, $a3, %lo(func_80AFDD30) ## $a3 = 80AFDD30
/* 01664 80AFE004 8FA40024 */  lw      $a0, 0x0024($sp)           
/* 01668 80AFE008 0C028572 */  jal     SkelAnime_DrawOpa
              
/* 0166C 80AFE00C AFA20014 */  sw      $v0, 0x0014($sp)           
/* 01670 80AFE010 8FBF001C */  lw      $ra, 0x001C($sp)           
/* 01674 80AFE014 27BD0020 */  addiu   $sp, $sp, 0x0020           ## $sp = 00000000
/* 01678 80AFE018 03E00008 */  jr      $ra                        
/* 0167C 80AFE01C 00000000 */  nop
