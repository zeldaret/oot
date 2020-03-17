glabel func_8094A660
/* 11990 8094A660 27BDFFE8 */  addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
/* 11994 8094A664 AFBF0014 */  sw      $ra, 0x0014($sp)           
/* 11998 8094A668 00803025 */  or      $a2, $a0, $zero            ## $a2 = 00000000
/* 1199C 8094A66C AFA5001C */  sw      $a1, 0x001C($sp)           
/* 119A0 8094A670 AFA60018 */  sw      $a2, 0x0018($sp)           
/* 119A4 8094A674 0C02927F */  jal     SkelAnime_FrameUpdateMatrix
              
/* 119A8 8094A678 24840568 */  addiu   $a0, $a0, 0x0568           ## $a0 = 00000568
/* 119AC 8094A67C 8FA60018 */  lw      $a2, 0x0018($sp)           
/* 119B0 8094A680 240E0009 */  addiu   $t6, $zero, 0x0009         ## $t6 = 00000009
/* 119B4 8094A684 84C20178 */  lh      $v0, 0x0178($a2)           ## 00000178
/* 119B8 8094A688 00C02025 */  or      $a0, $a2, $zero            ## $a0 = 00000000
/* 119BC 8094A68C 1040000C */  beq     $v0, $zero, .L8094A6C0     
/* 119C0 8094A690 00000000 */  nop
/* 119C4 8094A694 84CF00B6 */  lh      $t7, 0x00B6($a2)           ## 000000B6
/* 119C8 8094A698 30590003 */  andi    $t9, $v0, 0x0003           ## $t9 = 00000000
/* 119CC 8094A69C A0CE05C0 */  sb      $t6, 0x05C0($a2)           ## 000005C0
/* 119D0 8094A6A0 25F8D000 */  addiu   $t8, $t7, 0xD000           ## $t8 = FFFFD000
/* 119D4 8094A6A4 17200008 */  bne     $t9, $zero, .L8094A6C8     
/* 119D8 8094A6A8 A4D800B6 */  sh      $t8, 0x00B6($a2)           ## 000000B6
/* 119DC 8094A6AC 00C02025 */  or      $a0, $a2, $zero            ## $a0 = 00000000
/* 119E0 8094A6B0 0C00BE0A */  jal     Audio_PlayActorSound2
              
/* 119E4 8094A6B4 24053921 */  addiu   $a1, $zero, 0x3921         ## $a1 = 00003921
/* 119E8 8094A6B8 10000004 */  beq     $zero, $zero, .L8094A6CC   
/* 119EC 8094A6BC 8FBF0014 */  lw      $ra, 0x0014($sp)           
.L8094A6C0:
/* 119F0 8094A6C0 0C252870 */  jal     func_8094A1C0              
/* 119F4 8094A6C4 8FA5001C */  lw      $a1, 0x001C($sp)           
.L8094A6C8:
/* 119F8 8094A6C8 8FBF0014 */  lw      $ra, 0x0014($sp)           
.L8094A6CC:
/* 119FC 8094A6CC 27BD0018 */  addiu   $sp, $sp, 0x0018           ## $sp = 00000000
/* 11A00 8094A6D0 03E00008 */  jr      $ra                        
/* 11A04 8094A6D4 00000000 */  nop


