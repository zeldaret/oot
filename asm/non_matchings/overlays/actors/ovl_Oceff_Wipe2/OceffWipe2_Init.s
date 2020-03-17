glabel OceffWipe2_Init
/* 00000 80BA9BB0 27BDFFE8 */  addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
/* 00004 80BA9BB4 AFA5001C */  sw      $a1, 0x001C($sp)           
/* 00008 80BA9BB8 AFBF0014 */  sw      $ra, 0x0014($sp)           
/* 0000C 80BA9BBC 3C053DCC */  lui     $a1, 0x3DCC                ## $a1 = 3DCC0000
/* 00010 80BA9BC0 34A5CCCD */  ori     $a1, $a1, 0xCCCD           ## $a1 = 3DCCCCCD
/* 00014 80BA9BC4 0C00B58B */  jal     Actor_SetScale
              
/* 00018 80BA9BC8 AFA40018 */  sw      $a0, 0x0018($sp)           
/* 0001C 80BA9BCC 8FA60018 */  lw      $a2, 0x0018($sp)           
/* 00020 80BA9BD0 8FA2001C */  lw      $v0, 0x001C($sp)           
/* 00024 80BA9BD4 3C0480BB */  lui     $a0, %hi(D_80BAB2A0)       ## $a0 = 80BB0000
/* 00028 80BA9BD8 A4C0014C */  sh      $zero, 0x014C($a2)         ## 0000014C
/* 0002C 80BA9BDC 844E07A0 */  lh      $t6, 0x07A0($v0)           ## 000007A0
/* 00030 80BA9BE0 2484B2A0 */  addiu   $a0, $a0, %lo(D_80BAB2A0)  ## $a0 = 80BAB2A0
/* 00034 80BA9BE4 84C5001C */  lh      $a1, 0x001C($a2)           ## 0000001C
/* 00038 80BA9BE8 000E7880 */  sll     $t7, $t6,  2               
/* 0003C 80BA9BEC 004FC021 */  addu    $t8, $v0, $t7              
/* 00040 80BA9BF0 8F190790 */  lw      $t9, 0x0790($t8)           ## 00000790
/* 00044 80BA9BF4 8F29005C */  lw      $t1, 0x005C($t9)           ## 0000005C
/* 00048 80BA9BF8 ACC90024 */  sw      $t1, 0x0024($a2)           ## 00000024
/* 0004C 80BA9BFC 8F280060 */  lw      $t0, 0x0060($t9)           ## 00000060
/* 00050 80BA9C00 ACC80028 */  sw      $t0, 0x0028($a2)           ## 00000028
/* 00054 80BA9C04 8F290064 */  lw      $t1, 0x0064($t9)           ## 00000064
/* 00058 80BA9C08 0C00084C */  jal     osSyncPrintf
              
/* 0005C 80BA9C0C ACC9002C */  sw      $t1, 0x002C($a2)           ## 0000002C
/* 00060 80BA9C10 8FBF0014 */  lw      $ra, 0x0014($sp)           
/* 00064 80BA9C14 27BD0018 */  addiu   $sp, $sp, 0x0018           ## $sp = 00000000
/* 00068 80BA9C18 03E00008 */  jr      $ra                        
/* 0006C 80BA9C1C 00000000 */  nop


