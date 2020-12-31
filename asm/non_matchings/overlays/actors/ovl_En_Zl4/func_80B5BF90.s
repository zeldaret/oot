glabel func_80B5BF90
/* 007E0 80B5BF90 27BDFFE0 */  addiu   $sp, $sp, 0xFFE0           ## $sp = FFFFFFE0
/* 007E4 80B5BF94 00803025 */  or      $a2, $a0, $zero            ## $a2 = 00000000
/* 007E8 80B5BF98 AFBF0014 */  sw      $ra, 0x0014($sp)           
/* 007EC 80B5BF9C AFA50024 */  sw      $a1, 0x0024($sp)           
/* 007F0 80B5BFA0 8CC5015C */  lw      $a1, 0x015C($a2)           ## 0000015C
/* 007F4 80B5BFA4 2484014C */  addiu   $a0, $a0, 0x014C           ## $a0 = 0000014C
/* 007F8 80B5BFA8 0C0295B2 */  jal     Animation_OnFrame              
/* 007FC 80B5BFAC AFA4001C */  sw      $a0, 0x001C($sp)           
/* 00800 80B5BFB0 14400003 */  bne     $v0, $zero, .L80B5BFC0     
/* 00804 80B5BFB4 8FA4001C */  lw      $a0, 0x001C($sp)           
/* 00808 80B5BFB8 10000006 */  beq     $zero, $zero, .L80B5BFD4   
/* 0080C 80B5BFBC 00001025 */  or      $v0, $zero, $zero          ## $v0 = 00000000
.L80B5BFC0:
/* 00810 80B5BFC0 3C0580B6 */  lui     $a1, %hi(D_80B5E7B8)       ## $a1 = 80B60000
/* 00814 80B5BFC4 24A5E7B8 */  addiu   $a1, $a1, %lo(D_80B5E7B8)  ## $a1 = 80B5E7B8
/* 00818 80B5BFC8 0C00D3B0 */  jal     func_80034EC0              
/* 0081C 80B5BFCC 8FA60024 */  lw      $a2, 0x0024($sp)           
/* 00820 80B5BFD0 24020001 */  addiu   $v0, $zero, 0x0001         ## $v0 = 00000001
.L80B5BFD4:
/* 00824 80B5BFD4 8FBF0014 */  lw      $ra, 0x0014($sp)           
/* 00828 80B5BFD8 27BD0020 */  addiu   $sp, $sp, 0x0020           ## $sp = 00000000
/* 0082C 80B5BFDC 03E00008 */  jr      $ra                        
/* 00830 80B5BFE0 00000000 */  nop
