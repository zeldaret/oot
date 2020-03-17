glabel func_80AF26D0
/* 00180 80AF26D0 27BDFFE8 */  addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
/* 00184 80AF26D4 AFBF0014 */  sw      $ra, 0x0014($sp)           
/* 00188 80AF26D8 90AE1D6C */  lbu     $t6, 0x1D6C($a1)           ## 00001D6C
/* 0018C 80AF26DC 3C0F80AF */  lui     $t7, %hi(D_80AF4118)       ## $t7 = 80AF0000
/* 00190 80AF26E0 3C1980AF */  lui     $t9, %hi(D_80AF4118)       ## $t9 = 80AF0000
/* 00194 80AF26E4 15C0000D */  bne     $t6, $zero, .L80AF271C     
/* 00198 80AF26E8 00000000 */  nop
/* 0019C 80AF26EC 8DEF4118 */  lw      $t7, %lo(D_80AF4118)($t7)  
/* 001A0 80AF26F0 51E00011 */  beql    $t7, $zero, .L80AF2738     
/* 001A4 80AF26F4 8FBF0014 */  lw      $ra, 0x0014($sp)           
/* 001A8 80AF26F8 8498001C */  lh      $t8, 0x001C($a0)           ## 0000001C
/* 001AC 80AF26FC 24010002 */  addiu   $at, $zero, 0x0002         ## $at = 00000002
/* 001B0 80AF2700 17010003 */  bne     $t8, $at, .L80AF2710       
/* 001B4 80AF2704 00000000 */  nop
/* 001B8 80AF2708 0C2BC9AB */  jal     func_80AF26AC              
/* 001BC 80AF270C 00000000 */  nop
.L80AF2710:
/* 001C0 80AF2710 3C0180AF */  lui     $at, %hi(D_80AF4118)       ## $at = 80AF0000
/* 001C4 80AF2714 10000007 */  beq     $zero, $zero, .L80AF2734   
/* 001C8 80AF2718 AC204118 */  sw      $zero, %lo(D_80AF4118)($at) 
.L80AF271C:
/* 001CC 80AF271C 8F394118 */  lw      $t9, %lo(D_80AF4118)($t9)  
/* 001D0 80AF2720 24080001 */  addiu   $t0, $zero, 0x0001         ## $t0 = 00000001
/* 001D4 80AF2724 3C0180AF */  lui     $at, %hi(D_80AF4118)       ## $at = 80AF0000
/* 001D8 80AF2728 57200003 */  bnel    $t9, $zero, .L80AF2738     
/* 001DC 80AF272C 8FBF0014 */  lw      $ra, 0x0014($sp)           
/* 001E0 80AF2730 AC284118 */  sw      $t0, %lo(D_80AF4118)($at)  
.L80AF2734:
/* 001E4 80AF2734 8FBF0014 */  lw      $ra, 0x0014($sp)           
.L80AF2738:
/* 001E8 80AF2738 27BD0018 */  addiu   $sp, $sp, 0x0018           ## $sp = 00000000
/* 001EC 80AF273C 03E00008 */  jr      $ra                        
/* 001F0 80AF2740 00000000 */  nop


