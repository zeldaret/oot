.rdata
glabel D_809AA5E8
    .asciz "範囲がマイナス！！(randomD_sectionUniformity)\n"
    .balign 4

.text
glabel func_809A9818
/* 00198 809A9818 44802000 */  mtc1    $zero, $f4                 ## $f4 = 0.00
/* 0019C 809A981C 27BDFFE8 */  addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
/* 001A0 809A9820 3C04809B */  lui     $a0, %hi(D_809AA5E8)       ## $a0 = 809B0000
/* 001A4 809A9824 4604703C */  c.lt.s  $f14, $f4                  
/* 001A8 809A9828 AFBF0014 */  sw      $ra, 0x0014($sp)           
/* 001AC 809A982C E7AC0018 */  swc1    $f12, 0x0018($sp)          
/* 001B0 809A9830 2484A5E8 */  addiu   $a0, $a0, %lo(D_809AA5E8)  ## $a0 = 809AA5E8
/* 001B4 809A9834 45000004 */  bc1f    .L809A9848                 
/* 001B8 809A9838 00000000 */  nop
/* 001BC 809A983C 0C00084C */  jal     osSyncPrintf
              
/* 001C0 809A9840 E7AE001C */  swc1    $f14, 0x001C($sp)          
/* 001C4 809A9844 C7AE001C */  lwc1    $f14, 0x001C($sp)          
.L809A9848:
/* 001C8 809A9848 0C03F66B */  jal     Math_Rand_ZeroOne
              ## Rand.Next() float
/* 001CC 809A984C E7AE001C */  swc1    $f14, 0x001C($sp)          
/* 001D0 809A9850 C7AE001C */  lwc1    $f14, 0x001C($sp)          
/* 001D4 809A9854 8FBF0014 */  lw      $ra, 0x0014($sp)           
/* 001D8 809A9858 C7AA0018 */  lwc1    $f10, 0x0018($sp)          
/* 001DC 809A985C 460E0082 */  mul.s   $f2, $f0, $f14             
/* 001E0 809A9860 27BD0018 */  addiu   $sp, $sp, 0x0018           ## $sp = 00000000
/* 001E4 809A9864 46021180 */  add.s   $f6, $f2, $f2              
/* 001E8 809A9868 460E3201 */  sub.s   $f8, $f6, $f14             
/* 001EC 809A986C 03E00008 */  jr      $ra                        
/* 001F0 809A9870 460A4000 */  add.s   $f0, $f8, $f10             
