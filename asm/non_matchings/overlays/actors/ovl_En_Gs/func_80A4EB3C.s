glabel func_80A4EB3C
/* 0081C 80A4EB3C 27BDFFC8 */  addiu   $sp, $sp, 0xFFC8           ## $sp = FFFFFFC8
/* 00820 80A4EB40 AFBF0034 */  sw      $ra, 0x0034($sp)           
/* 00824 80A4EB44 AFB00030 */  sw      $s0, 0x0030($sp)           
/* 00828 80A4EB48 9083019F */  lbu     $v1, 0x019F($a0)           ## 0000019F
/* 0082C 80A4EB4C 00808025 */  or      $s0, $a0, $zero            ## $s0 = 00000000
/* 00830 80A4EB50 24010001 */  addiu   $at, $zero, 0x0001         ## $at = 00000001
/* 00834 80A4EB54 1460000C */  bne     $v1, $zero, .L80A4EB88     
/* 00838 80A4EB58 00601025 */  or      $v0, $v1, $zero            ## $v0 = 00000000
/* 0083C 80A4EB5C 3C013F80 */  lui     $at, 0x3F80                ## $at = 3F800000
/* 00840 80A4EB60 44813000 */  mtc1    $at, $f6                   ## $f6 = 1.00
/* 00844 80A4EB64 C48401B8 */  lwc1    $f4, 0x01B8($a0)           ## 000001B8
/* 00848 80A4EB68 3C0180A5 */  lui     $at, %hi(D_80A4FEB8)       ## $at = 80A50000
/* 0084C 80A4EB6C 246E0001 */  addiu   $t6, $v1, 0x0001           ## $t6 = 00000001
/* 00850 80A4EB70 46062201 */  sub.s   $f8, $f4, $f6              
/* 00854 80A4EB74 E48801E8 */  swc1    $f8, 0x01E8($a0)           ## 000001E8
/* 00858 80A4EB78 C42AFEB8 */  lwc1    $f10, %lo(D_80A4FEB8)($at) 
/* 0085C 80A4EB7C A08E019F */  sb      $t6, 0x019F($a0)           ## 0000019F
/* 00860 80A4EB80 10000067 */  beq     $zero, $zero, .L80A4ED20   
/* 00864 80A4EB84 E48A01EC */  swc1    $f10, 0x01EC($a0)          ## 000001EC
.L80A4EB88:
/* 00868 80A4EB88 14410016 */  bne     $v0, $at, .L80A4EBE4       
/* 0086C 80A4EB8C 260401E8 */  addiu   $a0, $s0, 0x01E8           ## $a0 = 000001E8
/* 00870 80A4EB90 3C0180A5 */  lui     $at, %hi(D_80A4FEBC)       ## $at = 80A50000
/* 00874 80A4EB94 C430FEBC */  lwc1    $f16, %lo(D_80A4FEBC)($at) 
/* 00878 80A4EB98 8E0501EC */  lw      $a1, 0x01EC($s0)           ## 000001EC
/* 0087C 80A4EB9C 3C073ECC */  lui     $a3, 0x3ECC                ## $a3 = 3ECC0000
/* 00880 80A4EBA0 34E7CCCD */  ori     $a3, $a3, 0xCCCD           ## $a3 = 3ECCCCCD
/* 00884 80A4EBA4 3C063F80 */  lui     $a2, 0x3F80                ## $a2 = 3F800000
/* 00888 80A4EBA8 0C01E0C4 */  jal     Math_SmoothScaleMaxMinF
              
/* 0088C 80A4EBAC E7B00010 */  swc1    $f16, 0x0010($sp)          
/* 00890 80A4EBB0 44801000 */  mtc1    $zero, $f2                 ## $f2 = 0.00
/* 00894 80A4EBB4 3C013F80 */  lui     $at, 0x3F80                ## $at = 3F800000
/* 00898 80A4EBB8 44812000 */  mtc1    $at, $f4                   ## $f4 = 1.00
/* 0089C 80A4EBBC C61201E8 */  lwc1    $f18, 0x01E8($s0)          ## 000001E8
/* 008A0 80A4EBC0 46020032 */  c.eq.s  $f0, $f2                   
/* 008A4 80A4EBC4 46049180 */  add.s   $f6, $f18, $f4             
/* 008A8 80A4EBC8 45000055 */  bc1f    .L80A4ED20                 
/* 008AC 80A4EBCC E60601B8 */  swc1    $f6, 0x01B8($s0)           ## 000001B8
/* 008B0 80A4EBD0 920F019F */  lbu     $t7, 0x019F($s0)           ## 0000019F
/* 008B4 80A4EBD4 A6000200 */  sh      $zero, 0x0200($s0)         ## 00000200
/* 008B8 80A4EBD8 25F80001 */  addiu   $t8, $t7, 0x0001           ## $t8 = 00000001
/* 008BC 80A4EBDC 10000050 */  beq     $zero, $zero, .L80A4ED20   
/* 008C0 80A4EBE0 A218019F */  sb      $t8, 0x019F($s0)           ## 0000019F
.L80A4EBE4:
/* 008C4 80A4EBE4 24010002 */  addiu   $at, $zero, 0x0002         ## $at = 00000002
/* 008C8 80A4EBE8 54410013 */  bnel    $v0, $at, .L80A4EC38       
/* 008CC 80A4EBEC 24010003 */  addiu   $at, $zero, 0x0003         ## $at = 00000003
/* 008D0 80A4EBF0 96190200 */  lhu     $t9, 0x0200($s0)           ## 00000200
/* 008D4 80A4EBF4 27280001 */  addiu   $t0, $t9, 0x0001           ## $t0 = 00000001
/* 008D8 80A4EBF8 3109FFFF */  andi    $t1, $t0, 0xFFFF           ## $t1 = 00000001
/* 008DC 80A4EBFC 29210064 */  slti    $at, $t1, 0x0064           
/* 008E0 80A4EC00 14200047 */  bne     $at, $zero, .L80A4ED20     
/* 008E4 80A4EC04 A6080200 */  sh      $t0, 0x0200($s0)           ## 00000200
/* 008E8 80A4EC08 3C013F80 */  lui     $at, 0x3F80                ## $at = 3F800000
/* 008EC 80A4EC0C 44815000 */  mtc1    $at, $f10                  ## $f10 = 1.00
/* 008F0 80A4EC10 C60801B8 */  lwc1    $f8, 0x01B8($s0)           ## 000001B8
/* 008F4 80A4EC14 920A019F */  lbu     $t2, 0x019F($s0)           ## 0000019F
/* 008F8 80A4EC18 44801000 */  mtc1    $zero, $f2                 ## $f2 = 0.00
/* 008FC 80A4EC1C 460A4401 */  sub.s   $f16, $f8, $f10            
/* 00900 80A4EC20 254B0001 */  addiu   $t3, $t2, 0x0001           ## $t3 = 00000001
/* 00904 80A4EC24 A20B019F */  sb      $t3, 0x019F($s0)           ## 0000019F
/* 00908 80A4EC28 E60201EC */  swc1    $f2, 0x01EC($s0)           ## 000001EC
/* 0090C 80A4EC2C 1000003C */  beq     $zero, $zero, .L80A4ED20   
/* 00910 80A4EC30 E61001E8 */  swc1    $f16, 0x01E8($s0)          ## 000001E8
/* 00914 80A4EC34 24010003 */  addiu   $at, $zero, 0x0003         ## $at = 00000003
.L80A4EC38:
/* 00918 80A4EC38 1441001C */  bne     $v0, $at, .L80A4ECAC       
/* 0091C 80A4EC3C 260401E8 */  addiu   $a0, $s0, 0x01E8           ## $a0 = 000001E8
/* 00920 80A4EC40 3C0180A5 */  lui     $at, %hi(D_80A4FEC0)       ## $at = 80A50000
/* 00924 80A4EC44 C432FEC0 */  lwc1    $f18, %lo(D_80A4FEC0)($at) 
/* 00928 80A4EC48 8E0501EC */  lw      $a1, 0x01EC($s0)           ## 000001EC
/* 0092C 80A4EC4C 3C063F80 */  lui     $a2, 0x3F80                ## $a2 = 3F800000
/* 00930 80A4EC50 3C073F00 */  lui     $a3, 0x3F00                ## $a3 = 3F000000
/* 00934 80A4EC54 0C01E0C4 */  jal     Math_SmoothScaleMaxMinF
              
/* 00938 80A4EC58 E7B20010 */  swc1    $f18, 0x0010($sp)          
/* 0093C 80A4EC5C 44801000 */  mtc1    $zero, $f2                 ## $f2 = 0.00
/* 00940 80A4EC60 3C013F80 */  lui     $at, 0x3F80                ## $at = 3F800000
/* 00944 80A4EC64 44813000 */  mtc1    $at, $f6                   ## $f6 = 1.00
/* 00948 80A4EC68 C60401E8 */  lwc1    $f4, 0x01E8($s0)           ## 000001E8
/* 0094C 80A4EC6C 46020032 */  c.eq.s  $f0, $f2                   
/* 00950 80A4EC70 3C013F00 */  lui     $at, 0x3F00                ## $at = 3F000000
/* 00954 80A4EC74 46062200 */  add.s   $f8, $f4, $f6              
/* 00958 80A4EC78 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 0095C 80A4EC7C 24053831 */  addiu   $a1, $zero, 0x3831         ## $a1 = 00003831
/* 00960 80A4EC80 45000027 */  bc1f    .L80A4ED20                 
/* 00964 80A4EC84 E60801B8 */  swc1    $f8, 0x01B8($s0)           ## 000001B8
/* 00968 80A4EC88 44815000 */  mtc1    $at, $f10                  ## $f10 = 0.50
/* 0096C 80A4EC8C E60201EC */  swc1    $f2, 0x01EC($s0)           ## 000001EC
/* 00970 80A4EC90 A6000200 */  sh      $zero, 0x0200($s0)         ## 00000200
/* 00974 80A4EC94 0C00BE0A */  jal     Audio_PlayActorSound2
              
/* 00978 80A4EC98 E60A01E8 */  swc1    $f10, 0x01E8($s0)          ## 000001E8
/* 0097C 80A4EC9C 920C019F */  lbu     $t4, 0x019F($s0)           ## 0000019F
/* 00980 80A4ECA0 258D0001 */  addiu   $t5, $t4, 0x0001           ## $t5 = 00000001
/* 00984 80A4ECA4 1000001E */  beq     $zero, $zero, .L80A4ED20   
/* 00988 80A4ECA8 A20D019F */  sb      $t5, 0x019F($s0)           ## 0000019F
.L80A4ECAC:
/* 0098C 80A4ECAC 24010004 */  addiu   $at, $zero, 0x0004         ## $at = 00000004
/* 00990 80A4ECB0 1441001B */  bne     $v0, $at, .L80A4ED20       
/* 00994 80A4ECB4 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 00998 80A4ECB8 3C013F80 */  lui     $at, 0x3F80                ## $at = 3F800000
/* 0099C 80A4ECBC 44818000 */  mtc1    $at, $f16                  ## $f16 = 1.00
/* 009A0 80A4ECC0 3C0180A5 */  lui     $at, %hi(D_80A4FEC4)       ## $at = 80A50000
/* 009A4 80A4ECC4 C432FEC4 */  lwc1    $f18, %lo(D_80A4FEC4)($at) 
/* 009A8 80A4ECC8 3C0180A5 */  lui     $at, %hi(D_80A4FEC8)       ## $at = 80A50000
/* 009AC 80A4ECCC C424FEC8 */  lwc1    $f4, %lo(D_80A4FEC8)($at)  
/* 009B0 80A4ECD0 260E0200 */  addiu   $t6, $s0, 0x0200           ## $t6 = 00000200
/* 009B4 80A4ECD4 240F0005 */  addiu   $t7, $zero, 0x0005         ## $t7 = 00000005
/* 009B8 80A4ECD8 AFAF0020 */  sw      $t7, 0x0020($sp)           
/* 009BC 80A4ECDC AFAE0010 */  sw      $t6, 0x0010($sp)           
/* 009C0 80A4ECE0 260601E8 */  addiu   $a2, $s0, 0x01E8           ## $a2 = 000001E8
/* 009C4 80A4ECE4 260701EC */  addiu   $a3, $s0, 0x01EC           ## $a3 = 000001EC
/* 009C8 80A4ECE8 AFA00024 */  sw      $zero, 0x0024($sp)         
/* 009CC 80A4ECEC E7B00014 */  swc1    $f16, 0x0014($sp)          
/* 009D0 80A4ECF0 E7B20018 */  swc1    $f18, 0x0018($sp)          
/* 009D4 80A4ECF4 0C2939D5 */  jal     func_80A4E754              
/* 009D8 80A4ECF8 E7A4001C */  swc1    $f4, 0x001C($sp)           
/* 009DC 80A4ECFC 44801000 */  mtc1    $zero, $f2                 ## $f2 = 0.00
/* 009E0 80A4ED00 3C1880A5 */  lui     $t8, %hi(func_80A4F734)    ## $t8 = 80A50000
/* 009E4 80A4ED04 2718F734 */  addiu   $t8, $t8, %lo(func_80A4F734) ## $t8 = 80A4F734
/* 009E8 80A4ED08 46020032 */  c.eq.s  $f0, $f2                   
/* 009EC 80A4ED0C 00000000 */  nop
/* 009F0 80A4ED10 45020004 */  bc1fl   .L80A4ED24                 
/* 009F4 80A4ED14 8FBF0034 */  lw      $ra, 0x0034($sp)           
/* 009F8 80A4ED18 A200019C */  sb      $zero, 0x019C($s0)         ## 0000019C
/* 009FC 80A4ED1C AE180198 */  sw      $t8, 0x0198($s0)           ## 00000198
.L80A4ED20:
/* 00A00 80A4ED20 8FBF0034 */  lw      $ra, 0x0034($sp)           
.L80A4ED24:
/* 00A04 80A4ED24 8FB00030 */  lw      $s0, 0x0030($sp)           
/* 00A08 80A4ED28 27BD0038 */  addiu   $sp, $sp, 0x0038           ## $sp = 00000000
/* 00A0C 80A4ED2C 03E00008 */  jr      $ra                        
/* 00A10 80A4ED30 00000000 */  nop


