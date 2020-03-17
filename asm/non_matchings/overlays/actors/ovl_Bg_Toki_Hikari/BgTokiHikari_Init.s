glabel BgTokiHikari_Init
/* 00000 808B9F00 27BDFFE8 */  addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
/* 00004 808B9F04 AFBF0014 */  sw      $ra, 0x0014($sp)           
/* 00008 808B9F08 AFA5001C */  sw      $a1, 0x001C($sp)           
/* 0000C 808B9F0C 8482001C */  lh      $v0, 0x001C($a0)           ## 0000001C
/* 00010 808B9F10 3C05808C */  lui     $a1, %hi(D_808BAC70)       ## $a1 = 808C0000
/* 00014 808B9F14 24010001 */  addiu   $at, $zero, 0x0001         ## $at = 00000001
/* 00018 808B9F18 10400005 */  beq     $v0, $zero, .L808B9F30     
/* 0001C 808B9F1C 24A5AC70 */  addiu   $a1, $a1, %lo(D_808BAC70)  ## $a1 = 808BAC70
/* 00020 808B9F20 1041000A */  beq     $v0, $at, .L808B9F4C       
/* 00024 808B9F24 3C0F8016 */  lui     $t7, 0x8016                ## $t7 = 80160000
/* 00028 808B9F28 10000015 */  beq     $zero, $zero, .L808B9F80   
/* 0002C 808B9F2C 8FBF0014 */  lw      $ra, 0x0014($sp)           
.L808B9F30:
/* 00030 808B9F30 0C01E037 */  jal     Actor_ProcessInitChain
              
/* 00034 808B9F34 AFA40018 */  sw      $a0, 0x0018($sp)           
/* 00038 808B9F38 8FA40018 */  lw      $a0, 0x0018($sp)           
/* 0003C 808B9F3C 3C0E808C */  lui     $t6, %hi(func_808B9F98)    ## $t6 = 808C0000
/* 00040 808B9F40 25CE9F98 */  addiu   $t6, $t6, %lo(func_808B9F98) ## $t6 = 808B9F98
/* 00044 808B9F44 1000000D */  beq     $zero, $zero, .L808B9F7C   
/* 00048 808B9F48 AC8E0150 */  sw      $t6, 0x0150($a0)           ## 00000150
.L808B9F4C:
/* 0004C 808B9F4C 95EFF53C */  lhu     $t7, -0x0AC4($t7)          ## FFFFF53C
/* 00050 808B9F50 3C19808C */  lui     $t9, %hi(func_808BA204)    ## $t9 = 808C0000
/* 00054 808B9F54 2739A204 */  addiu   $t9, $t9, %lo(func_808BA204) ## $t9 = 808BA204
/* 00058 808B9F58 31F80800 */  andi    $t8, $t7, 0x0800           ## $t8 = 00000000
/* 0005C 808B9F5C 17000005 */  bne     $t8, $zero, .L808B9F74     
/* 00060 808B9F60 00000000 */  nop
/* 00064 808B9F64 44802000 */  mtc1    $zero, $f4                 ## $f4 = 0.00
/* 00068 808B9F68 AC990150 */  sw      $t9, 0x0150($a0)           ## 00000150
/* 0006C 808B9F6C 10000003 */  beq     $zero, $zero, .L808B9F7C   
/* 00070 808B9F70 E484014C */  swc1    $f4, 0x014C($a0)           ## 0000014C
.L808B9F74:
/* 00074 808B9F74 0C00B55C */  jal     Actor_Kill
              
/* 00078 808B9F78 00000000 */  nop
.L808B9F7C:
/* 0007C 808B9F7C 8FBF0014 */  lw      $ra, 0x0014($sp)           
.L808B9F80:
/* 00080 808B9F80 27BD0018 */  addiu   $sp, $sp, 0x0018           ## $sp = 00000000
/* 00084 808B9F84 03E00008 */  jr      $ra                        
/* 00088 808B9F88 00000000 */  nop


