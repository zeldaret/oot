glabel func_808BE930
/* 00430 808BE930 27BDFFE0 */  addiu   $sp, $sp, 0xFFE0           ## $sp = FFFFFFE0
/* 00434 808BE934 00803825 */  or      $a3, $a0, $zero            ## $a3 = 00000000
/* 00438 808BE938 AFBF001C */  sw      $ra, 0x001C($sp)           
/* 0043C 808BE93C AFA50024 */  sw      $a1, 0x0024($sp)           
/* 00440 808BE940 00A02025 */  or      $a0, $a1, $zero            ## $a0 = 00000000
/* 00444 808BE944 90E50168 */  lbu     $a1, 0x0168($a3)           ## 00000168
/* 00448 808BE948 0C00B2D0 */  jal     Flags_GetSwitch
              
/* 0044C 808BE94C AFA70020 */  sw      $a3, 0x0020($sp)           
/* 00450 808BE950 1040000E */  beq     $v0, $zero, .L808BE98C     
/* 00454 808BE954 8FA70020 */  lw      $a3, 0x0020($sp)           
/* 00458 808BE958 3C0F808C */  lui     $t7, %hi(BgYdanHasi_Draw)    ## $t7 = 808C0000
/* 0045C 808BE95C 3C18808C */  lui     $t8, %hi(func_808BE99C)    ## $t8 = 808C0000
/* 00460 808BE960 240E0104 */  addiu   $t6, $zero, 0x0104         ## $t6 = 00000104
/* 00464 808BE964 25EFEA90 */  addiu   $t7, $t7, %lo(BgYdanHasi_Draw) ## $t7 = 808BEA90
/* 00468 808BE968 2718E99C */  addiu   $t8, $t8, %lo(func_808BE99C) ## $t8 = 808BE99C
/* 0046C 808BE96C A4EE016A */  sh      $t6, 0x016A($a3)           ## 0000016A
/* 00470 808BE970 ACEF0134 */  sw      $t7, 0x0134($a3)           ## 00000134
/* 00474 808BE974 ACF80164 */  sw      $t8, 0x0164($a3)           ## 00000164
/* 00478 808BE978 AFA00010 */  sw      $zero, 0x0010($sp)         
/* 0047C 808BE97C 8FA40024 */  lw      $a0, 0x0024($sp)           
/* 00480 808BE980 24050BE0 */  addiu   $a1, $zero, 0x0BE0         ## $a1 = 00000BE0
/* 00484 808BE984 0C02003E */  jal     func_800800F8              
/* 00488 808BE988 2406001E */  addiu   $a2, $zero, 0x001E         ## $a2 = 0000001E
.L808BE98C:
/* 0048C 808BE98C 8FBF001C */  lw      $ra, 0x001C($sp)           
/* 00490 808BE990 27BD0020 */  addiu   $sp, $sp, 0x0020           ## $sp = 00000000
/* 00494 808BE994 03E00008 */  jr      $ra                        
/* 00498 808BE998 00000000 */  nop
