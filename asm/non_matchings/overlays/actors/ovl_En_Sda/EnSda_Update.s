glabel EnSda_Update
/* 00018 80AF8E38 27BDFFE8 */  addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
/* 0001C 80AF8E3C 00803025 */  or      $a2, $a0, $zero            ## $a2 = 00000000
/* 00020 80AF8E40 AFBF0014 */  sw      $ra, 0x0014($sp)           
/* 00024 80AF8E44 3C0480B0 */  lui     $a0, %hi(D_80AFA430)       ## $a0 = 80B00000
/* 00028 80AF8E48 AFA5001C */  sw      $a1, 0x001C($sp)           
/* 0002C 80AF8E4C 2484A430 */  addiu   $a0, $a0, %lo(D_80AFA430)  ## $a0 = 80AFA430
/* 00030 80AF8E50 0C00084C */  jal     osSyncPrintf
              
/* 00034 80AF8E54 AFA60018 */  sw      $a2, 0x0018($sp)           
/* 00038 80AF8E58 8FA60018 */  lw      $a2, 0x0018($sp)           
/* 0003C 80AF8E5C 24010001 */  addiu   $at, $zero, 0x0001         ## $at = 00000001
/* 00040 80AF8E60 8FAF001C */  lw      $t7, 0x001C($sp)           
/* 00044 80AF8E64 84CE001C */  lh      $t6, 0x001C($a2)           ## 0000001C
/* 00048 80AF8E68 55C10004 */  bnel    $t6, $at, .L80AF8E7C       
/* 0004C 80AF8E6C 8DE21C44 */  lw      $v0, 0x1C44($t7)           ## 00001C44
/* 00050 80AF8E70 10000002 */  beq     $zero, $zero, .L80AF8E7C   
/* 00054 80AF8E74 8CC20118 */  lw      $v0, 0x0118($a2)           ## 00000118
/* 00058 80AF8E78 8DE21C44 */  lw      $v0, 0x1C44($t7)           ## 00001C44
.L80AF8E7C:
/* 0005C 80AF8E7C 8C590024 */  lw      $t9, 0x0024($v0)           ## 00000024
/* 00060 80AF8E80 3C0480B0 */  lui     $a0, %hi(D_80AFA43C)       ## $a0 = 80B00000
/* 00064 80AF8E84 2484A43C */  addiu   $a0, $a0, %lo(D_80AFA43C)  ## $a0 = 80AFA43C
/* 00068 80AF8E88 ACD90024 */  sw      $t9, 0x0024($a2)           ## 00000024
/* 0006C 80AF8E8C 8C580028 */  lw      $t8, 0x0028($v0)           ## 00000028
/* 00070 80AF8E90 ACD80028 */  sw      $t8, 0x0028($a2)           ## 00000028
/* 00074 80AF8E94 8C59002C */  lw      $t9, 0x002C($v0)           ## 0000002C
/* 00078 80AF8E98 0C00084C */  jal     osSyncPrintf
              
/* 0007C 80AF8E9C ACD9002C */  sw      $t9, 0x002C($a2)           ## 0000002C
/* 00080 80AF8EA0 8FBF0014 */  lw      $ra, 0x0014($sp)           
/* 00084 80AF8EA4 27BD0018 */  addiu   $sp, $sp, 0x0018           ## $sp = 00000000
/* 00088 80AF8EA8 03E00008 */  jr      $ra                        
/* 0008C 80AF8EAC 00000000 */  nop


