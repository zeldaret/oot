glabel func_80AB2610
/* 01880 80AB2610 3C0F8016 */  lui     $t7, 0x8016                ## $t7 = 80160000
/* 01884 80AB2614 8DEFFA90 */  lw      $t7, -0x0570($t7)          ## 8015FA90
/* 01888 80AB2618 27BDFFD0 */  addiu   $sp, $sp, 0xFFD0           ## $sp = FFFFFFD0
/* 0188C 80AB261C AFBF002C */  sw      $ra, 0x002C($sp)           
/* 01890 80AB2620 AFA40030 */  sw      $a0, 0x0030($sp)           
/* 01894 80AB2624 85F8147E */  lh      $t8, 0x147E($t7)           ## 8016147E
/* 01898 80AB2628 3C0141B0 */  lui     $at, 0x41B0                ## $at = 41B00000
/* 0189C 80AB262C 44814000 */  mtc1    $at, $f8                   ## $f8 = 22.00
/* 018A0 80AB2630 44982000 */  mtc1    $t8, $f4                   ## $f4 = 0.00
/* 018A4 80AB2634 8FAE0030 */  lw      $t6, 0x0030($sp)           
/* 018A8 80AB2638 2419000B */  addiu   $t9, $zero, 0x000B         ## $t9 = 0000000B
/* 018AC 80AB263C 468021A0 */  cvt.s.w $f6, $f4                   
/* 018B0 80AB2640 C5D00028 */  lwc1    $f16, 0x0028($t6)          ## 00000028
/* 018B4 80AB2644 8DC70024 */  lw      $a3, 0x0024($t6)           ## 00000024
/* 018B8 80AB2648 24A41C24 */  addiu   $a0, $a1, 0x1C24           ## $a0 = 00001C24
/* 018BC 80AB264C 240600F5 */  addiu   $a2, $zero, 0x00F5         ## $a2 = 000000F5
/* 018C0 80AB2650 46083280 */  add.s   $f10, $f6, $f8             
/* 018C4 80AB2654 46105480 */  add.s   $f18, $f10, $f16           
/* 018C8 80AB2658 E7B20010 */  swc1    $f18, 0x0010($sp)          
/* 018CC 80AB265C C5C4002C */  lwc1    $f4, 0x002C($t6)           ## 0000002C
/* 018D0 80AB2660 AFB90024 */  sw      $t9, 0x0024($sp)           
/* 018D4 80AB2664 AFA00020 */  sw      $zero, 0x0020($sp)         
/* 018D8 80AB2668 AFA0001C */  sw      $zero, 0x001C($sp)         
/* 018DC 80AB266C AFA00018 */  sw      $zero, 0x0018($sp)         
/* 018E0 80AB2670 0C00C7D4 */  jal     Actor_Spawn
              ## ActorSpawn
/* 018E4 80AB2674 E7A40014 */  swc1    $f4, 0x0014($sp)           
/* 018E8 80AB2678 8FBF002C */  lw      $ra, 0x002C($sp)           
/* 018EC 80AB267C 27BD0030 */  addiu   $sp, $sp, 0x0030           ## $sp = 00000000
/* 018F0 80AB2680 03E00008 */  jr      $ra                        
/* 018F4 80AB2684 00000000 */  nop
