glabel func_80ABD728
/* 00B78 80ABD728 27BDFF78 */  addiu   $sp, $sp, 0xFF78           ## $sp = FFFFFF78
/* 00B7C 80ABD72C 3C0E80AC */  lui     $t6, %hi(D_80ABE390)       ## $t6 = 80AC0000
/* 00B80 80ABD730 AFBF0054 */  sw      $ra, 0x0054($sp)           
/* 00B84 80ABD734 AFB50050 */  sw      $s5, 0x0050($sp)           
/* 00B88 80ABD738 AFB4004C */  sw      $s4, 0x004C($sp)           
/* 00B8C 80ABD73C AFB30048 */  sw      $s3, 0x0048($sp)           
/* 00B90 80ABD740 AFB20044 */  sw      $s2, 0x0044($sp)           
/* 00B94 80ABD744 AFB10040 */  sw      $s1, 0x0040($sp)           
/* 00B98 80ABD748 AFB0003C */  sw      $s0, 0x003C($sp)           
/* 00B9C 80ABD74C F7B80030 */  sdc1    $f24, 0x0030($sp)          
/* 00BA0 80ABD750 F7B60028 */  sdc1    $f22, 0x0028($sp)          
/* 00BA4 80ABD754 F7B40020 */  sdc1    $f20, 0x0020($sp)          
/* 00BA8 80ABD758 25CEE390 */  addiu   $t6, $t6, %lo(D_80ABE390)  ## $t6 = 80ABE390
/* 00BAC 80ABD75C 8DD80000 */  lw      $t8, 0x0000($t6)           ## 80ABE390
/* 00BB0 80ABD760 27B30068 */  addiu   $s3, $sp, 0x0068           ## $s3 = FFFFFFE0
/* 00BB4 80ABD764 3C1980AC */  lui     $t9, %hi(D_80ABE39C)       ## $t9 = 80AC0000
/* 00BB8 80ABD768 AE780000 */  sw      $t8, 0x0000($s3)           ## FFFFFFE0
/* 00BBC 80ABD76C 8DCF0004 */  lw      $t7, 0x0004($t6)           ## 80ABE394
/* 00BC0 80ABD770 2739E39C */  addiu   $t9, $t9, %lo(D_80ABE39C)  ## $t9 = 80ABE39C
/* 00BC4 80ABD774 27B4005C */  addiu   $s4, $sp, 0x005C           ## $s4 = FFFFFFD4
/* 00BC8 80ABD778 AE6F0004 */  sw      $t7, 0x0004($s3)           ## FFFFFFE4
/* 00BCC 80ABD77C 8DD80008 */  lw      $t8, 0x0008($t6)           ## 80ABE398
/* 00BD0 80ABD780 00809025 */  or      $s2, $a0, $zero            ## $s2 = 00000000
/* 00BD4 80ABD784 00A0A825 */  or      $s5, $a1, $zero            ## $s5 = 00000000
/* 00BD8 80ABD788 AE780008 */  sw      $t8, 0x0008($s3)           ## FFFFFFE8
/* 00BDC 80ABD78C 8F290000 */  lw      $t1, 0x0000($t9)           ## 80ABE39C
/* 00BE0 80ABD790 AE890000 */  sw      $t1, 0x0000($s4)           ## FFFFFFD4
/* 00BE4 80ABD794 8F280004 */  lw      $t0, 0x0004($t9)           ## 80ABE3A0
/* 00BE8 80ABD798 AE880004 */  sw      $t0, 0x0004($s4)           ## FFFFFFD8
/* 00BEC 80ABD79C 8F290008 */  lw      $t1, 0x0008($t9)           ## 80ABE3A4
/* 00BF0 80ABD7A0 AE890008 */  sw      $t1, 0x0008($s4)           ## FFFFFFDC
/* 00BF4 80ABD7A4 848A01C8 */  lh      $t2, 0x01C8($a0)           ## 000001C8
/* 00BF8 80ABD7A8 29410002 */  slti    $at, $t2, 0x0002           
/* 00BFC 80ABD7AC 54200074 */  bnel    $at, $zero, .L80ABD980     
/* 00C00 80ABD7B0 8FBF0054 */  lw      $ra, 0x0054($sp)           
/* 00C04 80ABD7B4 44802000 */  mtc1    $zero, $f4                 ## $f4 = 0.00
/* 00C08 80ABD7B8 C4860084 */  lwc1    $f6, 0x0084($a0)           ## 00000084
/* 00C0C 80ABD7BC 00008825 */  or      $s1, $zero, $zero          ## $s1 = 00000000
/* 00C10 80ABD7C0 3C0141F0 */  lui     $at, 0x41F0                ## $at = 41F00000
/* 00C14 80ABD7C4 4606203C */  c.lt.s  $f4, $f6                   
/* 00C18 80ABD7C8 00000000 */  nop
/* 00C1C 80ABD7CC 45020044 */  bc1fl   .L80ABD8E0                 
/* 00C20 80ABD7D0 3C014120 */  lui     $at, 0x4120                ## $at = 41200000
/* 00C24 80ABD7D4 4481A000 */  mtc1    $at, $f20                  ## $f20 = 10.00
/* 00C28 80ABD7D8 27B00074 */  addiu   $s0, $sp, 0x0074           ## $s0 = FFFFFFEC
.L80ABD7DC:
/* 00C2C 80ABD7DC 0C00CFC8 */  jal     Math_Rand_CenteredFloat
              
/* 00C30 80ABD7E0 4600A306 */  mov.s   $f12, $f20                 
/* 00C34 80ABD7E4 C6480024 */  lwc1    $f8, 0x0024($s2)           ## 00000024
/* 00C38 80ABD7E8 4600A306 */  mov.s   $f12, $f20                 
/* 00C3C 80ABD7EC 46080280 */  add.s   $f10, $f0, $f8             
/* 00C40 80ABD7F0 0C00CFC8 */  jal     Math_Rand_CenteredFloat
              
/* 00C44 80ABD7F4 E7AA0074 */  swc1    $f10, 0x0074($sp)          
/* 00C48 80ABD7F8 C6500028 */  lwc1    $f16, 0x0028($s2)          ## 00000028
/* 00C4C 80ABD7FC 4600A306 */  mov.s   $f12, $f20                 
/* 00C50 80ABD800 46100480 */  add.s   $f18, $f0, $f16            
/* 00C54 80ABD804 0C00CFC8 */  jal     Math_Rand_CenteredFloat
              
/* 00C58 80ABD808 E7B20078 */  swc1    $f18, 0x0078($sp)          
/* 00C5C 80ABD80C C644002C */  lwc1    $f4, 0x002C($s2)           ## 0000002C
/* 00C60 80ABD810 24040050 */  addiu   $a0, $zero, 0x0050         ## $a0 = 00000050
/* 00C64 80ABD814 24050064 */  addiu   $a1, $zero, 0x0064         ## $a1 = 00000064
/* 00C68 80ABD818 46040180 */  add.s   $f6, $f0, $f4              
/* 00C6C 80ABD81C 0C01DF64 */  jal     Math_Rand_S16Offset
              
/* 00C70 80ABD820 E7A6007C */  swc1    $f6, 0x007C($sp)           
/* 00C74 80ABD824 240B0019 */  addiu   $t3, $zero, 0x0019         ## $t3 = 00000019
/* 00C78 80ABD828 240C0001 */  addiu   $t4, $zero, 0x0001         ## $t4 = 00000001
/* 00C7C 80ABD82C AFAC001C */  sw      $t4, 0x001C($sp)           
/* 00C80 80ABD830 AFAB0014 */  sw      $t3, 0x0014($sp)           
/* 00C84 80ABD834 02A02025 */  or      $a0, $s5, $zero            ## $a0 = 00000000
/* 00C88 80ABD838 02002825 */  or      $a1, $s0, $zero            ## $a1 = FFFFFFEC
/* 00C8C 80ABD83C 02603025 */  or      $a2, $s3, $zero            ## $a2 = FFFFFFE0
/* 00C90 80ABD840 02803825 */  or      $a3, $s4, $zero            ## $a3 = FFFFFFD4
/* 00C94 80ABD844 AFA20010 */  sw      $v0, 0x0010($sp)           
/* 00C98 80ABD848 0C00A586 */  jal     EffectSsDtBubble_SpawnColorProfile              
/* 00C9C 80ABD84C AFA00018 */  sw      $zero, 0x0018($sp)         
/* 00CA0 80ABD850 26310001 */  addiu   $s1, $s1, 0x0001           ## $s1 = 00000001
/* 00CA4 80ABD854 2A21000A */  slti    $at, $s1, 0x000A           
/* 00CA8 80ABD858 1420FFE0 */  bne     $at, $zero, .L80ABD7DC     
/* 00CAC 80ABD85C 00000000 */  nop
/* 00CB0 80ABD860 3C013E80 */  lui     $at, 0x3E80                ## $at = 3E800000
/* 00CB4 80ABD864 4481C000 */  mtc1    $at, $f24                  ## $f24 = 0.25
/* 00CB8 80ABD868 3C014120 */  lui     $at, 0x4120                ## $at = 41200000
/* 00CBC 80ABD86C 4481B000 */  mtc1    $at, $f22                  ## $f22 = 10.00
/* 00CC0 80ABD870 00008825 */  or      $s1, $zero, $zero          ## $s1 = 00000000
/* 00CC4 80ABD874 24130014 */  addiu   $s3, $zero, 0x0014         ## $s3 = 00000014
.L80ABD878:
/* 00CC8 80ABD878 0C00CFC8 */  jal     Math_Rand_CenteredFloat
              
/* 00CCC 80ABD87C 4600A306 */  mov.s   $f12, $f20                 
/* 00CD0 80ABD880 C6480024 */  lwc1    $f8, 0x0024($s2)           ## 00000024
/* 00CD4 80ABD884 4600A306 */  mov.s   $f12, $f20                 
/* 00CD8 80ABD888 46080280 */  add.s   $f10, $f0, $f8             
/* 00CDC 80ABD88C 0C00CFC8 */  jal     Math_Rand_CenteredFloat
              
/* 00CE0 80ABD890 E7AA0074 */  swc1    $f10, 0x0074($sp)          
/* 00CE4 80ABD894 C6500028 */  lwc1    $f16, 0x0028($s2)          ## 00000028
/* 00CE8 80ABD898 4600A306 */  mov.s   $f12, $f20                 
/* 00CEC 80ABD89C 46100480 */  add.s   $f18, $f0, $f16            
/* 00CF0 80ABD8A0 0C00CFC8 */  jal     Math_Rand_CenteredFloat
              
/* 00CF4 80ABD8A4 E7B20078 */  swc1    $f18, 0x0078($sp)          
/* 00CF8 80ABD8A8 C644002C */  lwc1    $f4, 0x002C($s2)           ## 0000002C
/* 00CFC 80ABD8AC 4406B000 */  mfc1    $a2, $f22                  
/* 00D00 80ABD8B0 4407B000 */  mfc1    $a3, $f22                  
/* 00D04 80ABD8B4 46040180 */  add.s   $f6, $f0, $f4              
/* 00D08 80ABD8B8 E7B80014 */  swc1    $f24, 0x0014($sp)          
/* 00D0C 80ABD8BC E7B40010 */  swc1    $f20, 0x0010($sp)          
/* 00D10 80ABD8C0 02A02025 */  or      $a0, $s5, $zero            ## $a0 = 00000000
/* 00D14 80ABD8C4 E7A6007C */  swc1    $f6, 0x007C($sp)           
/* 00D18 80ABD8C8 0C00A4F9 */  jal     EffectSsBubble_Spawn              
/* 00D1C 80ABD8CC 02002825 */  or      $a1, $s0, $zero            ## $a1 = FFFFFFEC
/* 00D20 80ABD8D0 26310001 */  addiu   $s1, $s1, 0x0001           ## $s1 = 00000001
/* 00D24 80ABD8D4 1633FFE8 */  bne     $s1, $s3, .L80ABD878       
/* 00D28 80ABD8D8 00000000 */  nop
/* 00D2C 80ABD8DC 3C014120 */  lui     $at, 0x4120                ## $at = 41200000
.L80ABD8E0:
/* 00D30 80ABD8E0 4481B000 */  mtc1    $at, $f22                  ## $f22 = 10.00
/* 00D34 80ABD8E4 3C014080 */  lui     $at, 0x4080                ## $at = 40800000
/* 00D38 80ABD8E8 4481A000 */  mtc1    $at, $f20                  ## $f20 = 4.00
/* 00D3C 80ABD8EC 00008825 */  or      $s1, $zero, $zero          ## $s1 = 00000000
/* 00D40 80ABD8F0 02408025 */  or      $s0, $s2, $zero            ## $s0 = 00000000
/* 00D44 80ABD8F4 24130008 */  addiu   $s3, $zero, 0x0008         ## $s3 = 00000008
.L80ABD8F8:
/* 00D48 80ABD8F8 0C00CFC8 */  jal     Math_Rand_CenteredFloat
              
/* 00D4C 80ABD8FC 4600B306 */  mov.s   $f12, $f22                 
/* 00D50 80ABD900 E6000258 */  swc1    $f0, 0x0258($s0)           ## 00000258
/* 00D54 80ABD904 0C00CFC8 */  jal     Math_Rand_CenteredFloat
              
/* 00D58 80ABD908 4600B306 */  mov.s   $f12, $f22                 
/* 00D5C 80ABD90C E6000260 */  swc1    $f0, 0x0260($s0)           ## 00000260
/* 00D60 80ABD910 0C00CFBE */  jal     Math_Rand_ZeroFloat
              
/* 00D64 80ABD914 4600A306 */  mov.s   $f12, $f20                 
/* 00D68 80ABD918 46140200 */  add.s   $f8, $f0, $f20             
/* 00D6C 80ABD91C 26310001 */  addiu   $s1, $s1, 0x0001           ## $s1 = 00000001
/* 00D70 80ABD920 2610000C */  addiu   $s0, $s0, 0x000C           ## $s0 = 0000000C
/* 00D74 80ABD924 1633FFF4 */  bne     $s1, $s3, .L80ABD8F8       
/* 00D78 80ABD928 E6080250 */  swc1    $f8, 0x0250($s0)           ## 0000025C
/* 00D7C 80ABD92C 924D01D0 */  lbu     $t5, 0x01D0($s2)           ## 000001D0
/* 00D80 80ABD930 A64001C8 */  sh      $zero, 0x01C8($s2)         ## 000001C8
/* 00D84 80ABD934 02A02025 */  or      $a0, $s5, $zero            ## $a0 = 00000000
/* 00D88 80ABD938 15A00008 */  bne     $t5, $zero, .L80ABD95C     
/* 00D8C 80ABD93C 26450024 */  addiu   $a1, $s2, 0x0024           ## $a1 = 00000024
/* 00D90 80ABD940 02A02025 */  or      $a0, $s5, $zero            ## $a0 = 00000000
/* 00D94 80ABD944 02402825 */  or      $a1, $s2, $zero            ## $a1 = 00000000
/* 00D98 80ABD948 26460024 */  addiu   $a2, $s2, 0x0024           ## $a2 = 00000024
/* 00D9C 80ABD94C 0C007E50 */  jal     Item_DropCollectibleRandom
              
/* 00DA0 80ABD950 240700A0 */  addiu   $a3, $zero, 0x00A0         ## $a3 = 000000A0
/* 00DA4 80ABD954 10000004 */  beq     $zero, $zero, .L80ABD968   
/* 00DA8 80ABD958 02402025 */  or      $a0, $s2, $zero            ## $a0 = 00000000
.L80ABD95C:
/* 00DAC 80ABD95C 0C007D52 */  jal     Item_DropCollectible
              
/* 00DB0 80ABD960 24060008 */  addiu   $a2, $zero, 0x0008         ## $a2 = 00000008
/* 00DB4 80ABD964 02402025 */  or      $a0, $s2, $zero            ## $a0 = 00000000
.L80ABD968:
/* 00DB8 80ABD968 0C00BE0A */  jal     Audio_PlayActorSound2
              
/* 00DBC 80ABD96C 2405394B */  addiu   $a1, $zero, 0x394B         ## $a1 = 0000394B
/* 00DC0 80ABD970 3C0E80AC */  lui     $t6, %hi(func_80ABD9AC)    ## $t6 = 80AC0000
/* 00DC4 80ABD974 25CED9AC */  addiu   $t6, $t6, %lo(func_80ABD9AC) ## $t6 = 80ABD9AC
/* 00DC8 80ABD978 AE4E014C */  sw      $t6, 0x014C($s2)           ## 0000014C
/* 00DCC 80ABD97C 8FBF0054 */  lw      $ra, 0x0054($sp)           
.L80ABD980:
/* 00DD0 80ABD980 D7B40020 */  ldc1    $f20, 0x0020($sp)          
/* 00DD4 80ABD984 D7B60028 */  ldc1    $f22, 0x0028($sp)          
/* 00DD8 80ABD988 D7B80030 */  ldc1    $f24, 0x0030($sp)          
/* 00DDC 80ABD98C 8FB0003C */  lw      $s0, 0x003C($sp)           
/* 00DE0 80ABD990 8FB10040 */  lw      $s1, 0x0040($sp)           
/* 00DE4 80ABD994 8FB20044 */  lw      $s2, 0x0044($sp)           
/* 00DE8 80ABD998 8FB30048 */  lw      $s3, 0x0048($sp)           
/* 00DEC 80ABD99C 8FB4004C */  lw      $s4, 0x004C($sp)           
/* 00DF0 80ABD9A0 8FB50050 */  lw      $s5, 0x0050($sp)           
/* 00DF4 80ABD9A4 03E00008 */  jr      $ra                        
/* 00DF8 80ABD9A8 27BD0088 */  addiu   $sp, $sp, 0x0088           ## $sp = 00000000
