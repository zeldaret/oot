glabel func_8083FB14
/* 0D904 8083FB14 27BDFFE8 */  addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
/* 0D908 8083FB18 AFA5001C */  sw      $a1, 0x001C($sp)           
/* 0D90C 8083FB1C 00802825 */  or      $a1, $a0, $zero            ## $a1 = 00000000
/* 0D910 8083FB20 AFBF0014 */  sw      $ra, 0x0014($sp)           
/* 0D914 8083FB24 AFA40018 */  sw      $a0, 0x0018($sp)           
/* 0D918 8083FB28 3C068085 */  lui     $a2, %hi(func_8084B9E4)    ## $a2 = 80850000
/* 0D91C 8083FB2C 24C6B9E4 */  addiu   $a2, $a2, %lo(func_8084B9E4) ## $a2 = 8084B9E4
/* 0D920 8083FB30 AFA50018 */  sw      $a1, 0x0018($sp)           
/* 0D924 8083FB34 8FA4001C */  lw      $a0, 0x001C($sp)           
/* 0D928 8083FB38 0C20D716 */  jal     func_80835C58              
/* 0D92C 8083FB3C 00003825 */  or      $a3, $zero, $zero          ## $a3 = 00000000
/* 0D930 8083FB40 8FA50018 */  lw      $a1, 0x0018($sp)           
/* 0D934 8083FB44 3C068085 */  lui     $a2, %hi(D_80853C5C)       ## $a2 = 80850000
/* 0D938 8083FB48 8CAE0680 */  lw      $t6, 0x0680($a1)           ## 00000680
/* 0D93C 8083FB4C 90B8015B */  lbu     $t8, 0x015B($a1)           ## 0000015B
/* 0D940 8083FB50 35CF0010 */  ori     $t7, $t6, 0x0010           ## $t7 = 00000010
/* 0D944 8083FB54 0018C880 */  sll     $t9, $t8,  2               
/* 0D948 8083FB58 00D93021 */  addu    $a2, $a2, $t9              
/* 0D94C 8083FB5C ACAF0680 */  sw      $t7, 0x0680($a1)           ## 00000680
/* 0D950 8083FB60 8CC63C5C */  lw      $a2, %lo(D_80853C5C)($a2)  
/* 0D954 8083FB64 0C20C899 */  jal     func_80832264              
/* 0D958 8083FB68 8FA4001C */  lw      $a0, 0x001C($sp)           
/* 0D95C 8083FB6C 8FBF0014 */  lw      $ra, 0x0014($sp)           
/* 0D960 8083FB70 27BD0018 */  addiu   $sp, $sp, 0x0018           ## $sp = 00000000
/* 0D964 8083FB74 03E00008 */  jr      $ra                        
/* 0D968 8083FB78 00000000 */  nop
