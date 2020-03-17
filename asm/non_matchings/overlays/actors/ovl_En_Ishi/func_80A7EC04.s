glabel func_80A7EC04
/* 007A4 80A7EC04 27BDFFC8 */  addiu   $sp, $sp, 0xFFC8           ## $sp = FFFFFFC8
/* 007A8 80A7EC08 00803025 */  or      $a2, $a0, $zero            ## $a2 = 00000000
/* 007AC 80A7EC0C AFBF0024 */  sw      $ra, 0x0024($sp)           
/* 007B0 80A7EC10 AFA5003C */  sw      $a1, 0x003C($sp)           
/* 007B4 80A7EC14 24C50024 */  addiu   $a1, $a2, 0x0024           ## $a1 = 00000024
/* 007B8 80A7EC18 AFA60038 */  sw      $a2, 0x0038($sp)           
/* 007BC 80A7EC1C 0C01DF90 */  jal     Math_Vec3f_Copy
              ## Vec3f_Copy
/* 007C0 80A7EC20 27A4002C */  addiu   $a0, $sp, 0x002C           ## $a0 = FFFFFFF4
/* 007C4 80A7EC24 8FA60038 */  lw      $a2, 0x0038($sp)           
/* 007C8 80A7EC28 27A5002C */  addiu   $a1, $sp, 0x002C           ## $a1 = FFFFFFF4
/* 007CC 80A7EC2C 2407000A */  addiu   $a3, $zero, 0x000A         ## $a3 = 0000000A
/* 007D0 80A7EC30 94C20088 */  lhu     $v0, 0x0088($a2)           ## 00000088
/* 007D4 80A7EC34 241800B4 */  addiu   $t8, $zero, 0x00B4         ## $t8 = 000000B4
/* 007D8 80A7EC38 2419005A */  addiu   $t9, $zero, 0x005A         ## $t9 = 0000005A
/* 007DC 80A7EC3C 304E0001 */  andi    $t6, $v0, 0x0001           ## $t6 = 00000000
/* 007E0 80A7EC40 11C00011 */  beq     $t6, $zero, .L80A7EC88     
/* 007E4 80A7EC44 24080001 */  addiu   $t0, $zero, 0x0001         ## $t0 = 00000001
/* 007E8 80A7EC48 C4C0005C */  lwc1    $f0, 0x005C($a2)           ## 0000005C
/* 007EC 80A7EC4C C7A4002C */  lwc1    $f4, 0x002C($sp)           
/* 007F0 80A7EC50 C7AA0030 */  lwc1    $f10, 0x0030($sp)          
/* 007F4 80A7EC54 46000180 */  add.s   $f6, $f0, $f0              
/* 007F8 80A7EC58 46062200 */  add.s   $f8, $f4, $f6              
/* 007FC 80A7EC5C C7A40034 */  lwc1    $f4, 0x0034($sp)           
/* 00800 80A7EC60 E7A8002C */  swc1    $f8, 0x002C($sp)           
/* 00804 80A7EC64 C4C20060 */  lwc1    $f2, 0x0060($a2)           ## 00000060
/* 00808 80A7EC68 46021400 */  add.s   $f16, $f2, $f2             
/* 0080C 80A7EC6C 46105481 */  sub.s   $f18, $f10, $f16           
/* 00810 80A7EC70 E7B20030 */  swc1    $f18, 0x0030($sp)          
/* 00814 80A7EC74 C4CC0064 */  lwc1    $f12, 0x0064($a2)          ## 00000064
/* 00818 80A7EC78 460C6180 */  add.s   $f6, $f12, $f12            
/* 0081C 80A7EC7C 46062200 */  add.s   $f8, $f4, $f6              
/* 00820 80A7EC80 10000013 */  beq     $zero, $zero, .L80A7ECD0   
/* 00824 80A7EC84 E7A80034 */  swc1    $f8, 0x0034($sp)           
.L80A7EC88:
/* 00828 80A7EC88 304F0008 */  andi    $t7, $v0, 0x0008           ## $t7 = 00000000
/* 0082C 80A7EC8C 51E00011 */  beql    $t7, $zero, .L80A7ECD4     
/* 00830 80A7EC90 8FA4003C */  lw      $a0, 0x003C($sp)           
/* 00834 80A7EC94 C4C0005C */  lwc1    $f0, 0x005C($a2)           ## 0000005C
/* 00838 80A7EC98 C7AA002C */  lwc1    $f10, 0x002C($sp)          
/* 0083C 80A7EC9C C7A40030 */  lwc1    $f4, 0x0030($sp)           
/* 00840 80A7ECA0 46000400 */  add.s   $f16, $f0, $f0             
/* 00844 80A7ECA4 46105481 */  sub.s   $f18, $f10, $f16           
/* 00848 80A7ECA8 C7AA0034 */  lwc1    $f10, 0x0034($sp)          
/* 0084C 80A7ECAC E7B2002C */  swc1    $f18, 0x002C($sp)          
/* 00850 80A7ECB0 C4C20060 */  lwc1    $f2, 0x0060($a2)           ## 00000060
/* 00854 80A7ECB4 46021180 */  add.s   $f6, $f2, $f2              
/* 00858 80A7ECB8 46062200 */  add.s   $f8, $f4, $f6              
/* 0085C 80A7ECBC E7A80030 */  swc1    $f8, 0x0030($sp)           
/* 00860 80A7ECC0 C4CC0064 */  lwc1    $f12, 0x0064($a2)          ## 00000064
/* 00864 80A7ECC4 460C6400 */  add.s   $f16, $f12, $f12           
/* 00868 80A7ECC8 46105481 */  sub.s   $f18, $f10, $f16           
/* 0086C 80A7ECCC E7B20034 */  swc1    $f18, 0x0034($sp)          
.L80A7ECD0:
/* 00870 80A7ECD0 8FA4003C */  lw      $a0, 0x003C($sp)           
.L80A7ECD4:
/* 00874 80A7ECD4 3C06430C */  lui     $a2, 0x430C                ## $a2 = 430C0000
/* 00878 80A7ECD8 AFB80010 */  sw      $t8, 0x0010($sp)           
/* 0087C 80A7ECDC AFB90014 */  sw      $t9, 0x0014($sp)           
/* 00880 80A7ECE0 0C00CD20 */  jal     func_80033480              
/* 00884 80A7ECE4 AFA80018 */  sw      $t0, 0x0018($sp)           
/* 00888 80A7ECE8 8FBF0024 */  lw      $ra, 0x0024($sp)           
/* 0088C 80A7ECEC 27BD0038 */  addiu   $sp, $sp, 0x0038           ## $sp = 00000000
/* 00890 80A7ECF0 03E00008 */  jr      $ra                        
/* 00894 80A7ECF4 00000000 */  nop


