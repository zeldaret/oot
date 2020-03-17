glabel func_80A7EB10
/* 006B0 80A7EB10 27BDFFC8 */  addiu   $sp, $sp, 0xFFC8           ## $sp = FFFFFFC8
/* 006B4 80A7EB14 00803025 */  or      $a2, $a0, $zero            ## $a2 = 00000000
/* 006B8 80A7EB18 AFBF0024 */  sw      $ra, 0x0024($sp)           
/* 006BC 80A7EB1C AFA5003C */  sw      $a1, 0x003C($sp)           
/* 006C0 80A7EB20 24C50024 */  addiu   $a1, $a2, 0x0024           ## $a1 = 00000024
/* 006C4 80A7EB24 AFA60038 */  sw      $a2, 0x0038($sp)           
/* 006C8 80A7EB28 0C01DF90 */  jal     Math_Vec3f_Copy
              ## Vec3f_Copy
/* 006CC 80A7EB2C 27A4002C */  addiu   $a0, $sp, 0x002C           ## $a0 = FFFFFFF4
/* 006D0 80A7EB30 8FA60038 */  lw      $a2, 0x0038($sp)           
/* 006D4 80A7EB34 27A5002C */  addiu   $a1, $sp, 0x002C           ## $a1 = FFFFFFF4
/* 006D8 80A7EB38 24070003 */  addiu   $a3, $zero, 0x0003         ## $a3 = 00000003
/* 006DC 80A7EB3C 94C20088 */  lhu     $v0, 0x0088($a2)           ## 00000088
/* 006E0 80A7EB40 24180050 */  addiu   $t8, $zero, 0x0050         ## $t8 = 00000050
/* 006E4 80A7EB44 2419003C */  addiu   $t9, $zero, 0x003C         ## $t9 = 0000003C
/* 006E8 80A7EB48 304E0001 */  andi    $t6, $v0, 0x0001           ## $t6 = 00000000
/* 006EC 80A7EB4C 11C00011 */  beq     $t6, $zero, .L80A7EB94     
/* 006F0 80A7EB50 24080001 */  addiu   $t0, $zero, 0x0001         ## $t0 = 00000001
/* 006F4 80A7EB54 C4C0005C */  lwc1    $f0, 0x005C($a2)           ## 0000005C
/* 006F8 80A7EB58 C7A4002C */  lwc1    $f4, 0x002C($sp)           
/* 006FC 80A7EB5C C7AA0030 */  lwc1    $f10, 0x0030($sp)          
/* 00700 80A7EB60 46000180 */  add.s   $f6, $f0, $f0              
/* 00704 80A7EB64 46062200 */  add.s   $f8, $f4, $f6              
/* 00708 80A7EB68 C7A40034 */  lwc1    $f4, 0x0034($sp)           
/* 0070C 80A7EB6C E7A8002C */  swc1    $f8, 0x002C($sp)           
/* 00710 80A7EB70 C4C20060 */  lwc1    $f2, 0x0060($a2)           ## 00000060
/* 00714 80A7EB74 46021400 */  add.s   $f16, $f2, $f2             
/* 00718 80A7EB78 46105481 */  sub.s   $f18, $f10, $f16           
/* 0071C 80A7EB7C E7B20030 */  swc1    $f18, 0x0030($sp)          
/* 00720 80A7EB80 C4CC0064 */  lwc1    $f12, 0x0064($a2)          ## 00000064
/* 00724 80A7EB84 460C6180 */  add.s   $f6, $f12, $f12            
/* 00728 80A7EB88 46062200 */  add.s   $f8, $f4, $f6              
/* 0072C 80A7EB8C 10000013 */  beq     $zero, $zero, .L80A7EBDC   
/* 00730 80A7EB90 E7A80034 */  swc1    $f8, 0x0034($sp)           
.L80A7EB94:
/* 00734 80A7EB94 304F0008 */  andi    $t7, $v0, 0x0008           ## $t7 = 00000000
/* 00738 80A7EB98 51E00011 */  beql    $t7, $zero, .L80A7EBE0     
/* 0073C 80A7EB9C 8FA4003C */  lw      $a0, 0x003C($sp)           
/* 00740 80A7EBA0 C4C0005C */  lwc1    $f0, 0x005C($a2)           ## 0000005C
/* 00744 80A7EBA4 C7AA002C */  lwc1    $f10, 0x002C($sp)          
/* 00748 80A7EBA8 C7A40030 */  lwc1    $f4, 0x0030($sp)           
/* 0074C 80A7EBAC 46000400 */  add.s   $f16, $f0, $f0             
/* 00750 80A7EBB0 46105481 */  sub.s   $f18, $f10, $f16           
/* 00754 80A7EBB4 C7AA0034 */  lwc1    $f10, 0x0034($sp)          
/* 00758 80A7EBB8 E7B2002C */  swc1    $f18, 0x002C($sp)          
/* 0075C 80A7EBBC C4C20060 */  lwc1    $f2, 0x0060($a2)           ## 00000060
/* 00760 80A7EBC0 46021180 */  add.s   $f6, $f2, $f2              
/* 00764 80A7EBC4 46062200 */  add.s   $f8, $f4, $f6              
/* 00768 80A7EBC8 E7A80030 */  swc1    $f8, 0x0030($sp)           
/* 0076C 80A7EBCC C4CC0064 */  lwc1    $f12, 0x0064($a2)          ## 00000064
/* 00770 80A7EBD0 460C6400 */  add.s   $f16, $f12, $f12           
/* 00774 80A7EBD4 46105481 */  sub.s   $f18, $f10, $f16           
/* 00778 80A7EBD8 E7B20034 */  swc1    $f18, 0x0034($sp)          
.L80A7EBDC:
/* 0077C 80A7EBDC 8FA4003C */  lw      $a0, 0x003C($sp)           
.L80A7EBE0:
/* 00780 80A7EBE0 3C064270 */  lui     $a2, 0x4270                ## $a2 = 42700000
/* 00784 80A7EBE4 AFB80010 */  sw      $t8, 0x0010($sp)           
/* 00788 80A7EBE8 AFB90014 */  sw      $t9, 0x0014($sp)           
/* 0078C 80A7EBEC 0C00CD20 */  jal     func_80033480              
/* 00790 80A7EBF0 AFA80018 */  sw      $t0, 0x0018($sp)           
/* 00794 80A7EBF4 8FBF0024 */  lw      $ra, 0x0024($sp)           
/* 00798 80A7EBF8 27BD0038 */  addiu   $sp, $sp, 0x0038           ## $sp = 00000000
/* 0079C 80A7EBFC 03E00008 */  jr      $ra                        
/* 007A0 80A7EC00 00000000 */  nop


