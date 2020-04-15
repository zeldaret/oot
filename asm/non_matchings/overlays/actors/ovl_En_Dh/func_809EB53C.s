glabel func_809EB53C
/* 007FC 809EB53C 27BDFFD8 */  addiu   $sp, $sp, 0xFFD8           ## $sp = FFFFFFD8
/* 00800 809EB540 AFBF0024 */  sw      $ra, 0x0024($sp)           
/* 00804 809EB544 AFB00020 */  sw      $s0, 0x0020($sp)           
/* 00808 809EB548 AFA5002C */  sw      $a1, 0x002C($sp)           
/* 0080C 809EB54C 848E025C */  lh      $t6, 0x025C($a0)           ## 0000025C
/* 00810 809EB550 00808025 */  or      $s0, $a0, $zero            ## $s0 = 00000000
/* 00814 809EB554 34018000 */  ori     $at, $zero, 0x8000         ## $at = 00008000
/* 00818 809EB558 25CFFFFF */  addiu   $t7, $t6, 0xFFFF           ## $t7 = FFFFFFFF
/* 0081C 809EB55C A48F025C */  sh      $t7, 0x025C($a0)           ## 0000025C
/* 00820 809EB560 8498025C */  lh      $t8, 0x025C($a0)           ## 0000025C
/* 00824 809EB564 24060001 */  addiu   $a2, $zero, 0x0001         ## $a2 = 00000001
/* 00828 809EB568 24070BB8 */  addiu   $a3, $zero, 0x0BB8         ## $a3 = 00000BB8
/* 0082C 809EB56C 57000006 */  bnel    $t8, $zero, .L809EB588     
/* 00830 809EB570 8605008A */  lh      $a1, 0x008A($s0)           ## 0000008A
/* 00834 809EB574 0C27AE4D */  jal     func_809EB934              
/* 00838 809EB578 A0800251 */  sb      $zero, 0x0251($a0)         ## 00000251
/* 0083C 809EB57C 10000009 */  beq     $zero, $zero, .L809EB5A4   
/* 00840 809EB580 861900B6 */  lh      $t9, 0x00B6($s0)           ## 000000B6
/* 00844 809EB584 8605008A */  lh      $a1, 0x008A($s0)           ## 0000008A
.L809EB588:
/* 00848 809EB588 AFA00010 */  sw      $zero, 0x0010($sp)         
/* 0084C 809EB58C 260400B6 */  addiu   $a0, $s0, 0x00B6           ## $a0 = 000000B6
/* 00850 809EB590 00A12821 */  addu    $a1, $a1, $at              
/* 00854 809EB594 00052C00 */  sll     $a1, $a1, 16               
/* 00858 809EB598 0C01E1A7 */  jal     Math_SmoothScaleMaxMinS
              
/* 0085C 809EB59C 00052C03 */  sra     $a1, $a1, 16               
/* 00860 809EB5A0 861900B6 */  lh      $t9, 0x00B6($s0)           ## 000000B6
.L809EB5A4:
/* 00864 809EB5A4 2604014C */  addiu   $a0, $s0, 0x014C           ## $a0 = 0000014C
/* 00868 809EB5A8 0C02927F */  jal     SkelAnime_FrameUpdateMatrix
              
/* 0086C 809EB5AC A6190032 */  sh      $t9, 0x0032($s0)           ## 00000032
/* 00870 809EB5B0 8FBF0024 */  lw      $ra, 0x0024($sp)           
/* 00874 809EB5B4 8FB00020 */  lw      $s0, 0x0020($sp)           
/* 00878 809EB5B8 27BD0028 */  addiu   $sp, $sp, 0x0028           ## $sp = 00000000
/* 0087C 809EB5BC 03E00008 */  jr      $ra                        
/* 00880 809EB5C0 00000000 */  nop
