.rdata
glabel D_80BADB60
    .asciz "[36m WIPE4 arg_data = %d\n[m"
    .balign 4

.text
glabel OceffWipe4_Init
/* 00000 80BACC10 27BDFFE8 */  addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
/* 00004 80BACC14 AFA5001C */  sw      $a1, 0x001C($sp)           
/* 00008 80BACC18 AFBF0014 */  sw      $ra, 0x0014($sp)           
/* 0000C 80BACC1C 3C053DCC */  lui     $a1, 0x3DCC                ## $a1 = 3DCC0000
/* 00010 80BACC20 34A5CCCD */  ori     $a1, $a1, 0xCCCD           ## $a1 = 3DCCCCCD
/* 00014 80BACC24 0C00B58B */  jal     Actor_SetScale
              
/* 00018 80BACC28 AFA40018 */  sw      $a0, 0x0018($sp)           
/* 0001C 80BACC2C 8FA60018 */  lw      $a2, 0x0018($sp)           
/* 00020 80BACC30 8FA2001C */  lw      $v0, 0x001C($sp)           
/* 00024 80BACC34 3C0480BB */  lui     $a0, %hi(D_80BADB60)       ## $a0 = 80BB0000
/* 00028 80BACC38 A4C0014C */  sh      $zero, 0x014C($a2)         ## 0000014C
/* 0002C 80BACC3C 844E07A0 */  lh      $t6, 0x07A0($v0)           ## 000007A0
/* 00030 80BACC40 2484DB60 */  addiu   $a0, $a0, %lo(D_80BADB60)  ## $a0 = 80BADB60
/* 00034 80BACC44 84C5001C */  lh      $a1, 0x001C($a2)           ## 0000001C
/* 00038 80BACC48 000E7880 */  sll     $t7, $t6,  2               
/* 0003C 80BACC4C 004FC021 */  addu    $t8, $v0, $t7              
/* 00040 80BACC50 8F190790 */  lw      $t9, 0x0790($t8)           ## 00000790
/* 00044 80BACC54 8F29005C */  lw      $t1, 0x005C($t9)           ## 0000005C
/* 00048 80BACC58 ACC90024 */  sw      $t1, 0x0024($a2)           ## 00000024
/* 0004C 80BACC5C 8F280060 */  lw      $t0, 0x0060($t9)           ## 00000060
/* 00050 80BACC60 ACC80028 */  sw      $t0, 0x0028($a2)           ## 00000028
/* 00054 80BACC64 8F290064 */  lw      $t1, 0x0064($t9)           ## 00000064
/* 00058 80BACC68 0C00084C */  jal     osSyncPrintf
              
/* 0005C 80BACC6C ACC9002C */  sw      $t1, 0x002C($a2)           ## 0000002C
/* 00060 80BACC70 8FBF0014 */  lw      $ra, 0x0014($sp)           
/* 00064 80BACC74 27BD0018 */  addiu   $sp, $sp, 0x0018           ## $sp = 00000000
/* 00068 80BACC78 03E00008 */  jr      $ra                        
/* 0006C 80BACC7C 00000000 */  nop
