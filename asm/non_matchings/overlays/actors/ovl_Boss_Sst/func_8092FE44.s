glabel func_8092FE44
/* 03874 8092FE44 27BDFFE0 */  addiu   $sp, $sp, 0xFFE0           ## $sp = FFFFFFE0
/* 03878 8092FE48 AFB00018 */  sw      $s0, 0x0018($sp)           
/* 0387C 8092FE4C 00808025 */  or      $s0, $a0, $zero            ## $s0 = 00000000
/* 03880 8092FE50 AFBF001C */  sw      $ra, 0x001C($sp)           
/* 03884 8092FE54 AFA50024 */  sw      $a1, 0x0024($sp)           
/* 03888 8092FE58 0C02927F */  jal     SkelAnime_Update
              
/* 0388C 8092FE5C 2484014C */  addiu   $a0, $a0, 0x014C           ## $a0 = 0000014C
/* 03890 8092FE60 8E0E011C */  lw      $t6, 0x011C($s0)           ## 0000011C
/* 03894 8092FE64 3C198093 */  lui     $t9, %hi(D_8093746C)       ## $t9 = 80930000
/* 03898 8092FE68 24010008 */  addiu   $at, $zero, 0x0008         ## $at = 00000008
/* 0389C 8092FE6C 85CF001C */  lh      $t7, 0x001C($t6)           ## 0000001C
/* 038A0 8092FE70 000FC080 */  sll     $t8, $t7,  2               
/* 038A4 8092FE74 0338C821 */  addu    $t9, $t9, $t8              
/* 038A8 8092FE78 8F39746C */  lw      $t9, %lo(D_8093746C)($t9)  
/* 038AC 8092FE7C 57210006 */  bnel    $t9, $at, .L8092FE98       
/* 038B0 8092FE80 86020198 */  lh      $v0, 0x0198($s0)           ## 00000198
/* 038B4 8092FE84 0C24BEF9 */  jal     func_8092FBE4              
/* 038B8 8092FE88 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 038BC 8092FE8C 1000003D */  beq     $zero, $zero, .L8092FF84   
/* 038C0 8092FE90 8FBF001C */  lw      $ra, 0x001C($sp)           
/* 038C4 8092FE94 86020198 */  lh      $v0, 0x0198($s0)           ## 00000198
.L8092FE98:
/* 038C8 8092FE98 3C054334 */  lui     $a1, 0x4334                ## $a1 = 43340000
/* 038CC 8092FE9C 26040028 */  addiu   $a0, $s0, 0x0028           ## $a0 = 00000028
/* 038D0 8092FEA0 10400003 */  beq     $v0, $zero, .L8092FEB0     
/* 038D4 8092FEA4 2448FFFF */  addiu   $t0, $v0, 0xFFFF           ## $t0 = FFFFFFFF
/* 038D8 8092FEA8 A6080198 */  sh      $t0, 0x0198($s0)           ## 00000198
/* 038DC 8092FEAC 86020198 */  lh      $v0, 0x0198($s0)           ## 00000198
.L8092FEB0:
/* 038E0 8092FEB0 28410003 */  slti    $at, $v0, 0x0003           
/* 038E4 8092FEB4 5420000A */  bnel    $at, $zero, .L8092FEE0     
/* 038E8 8092FEB8 860B00B4 */  lh      $t3, 0x00B4($s0)           ## 000000B4
/* 038EC 8092FEBC 860900B4 */  lh      $t1, 0x00B4($s0)           ## 000000B4
/* 038F0 8092FEC0 26040028 */  addiu   $a0, $s0, 0x0028           ## $a0 = 00000028
/* 038F4 8092FEC4 3C0641A0 */  lui     $a2, 0x41A0                ## $a2 = 41A00000
/* 038F8 8092FEC8 252AFF00 */  addiu   $t2, $t1, 0xFF00           ## $t2 = FFFFFF00
/* 038FC 8092FECC 0C01DE80 */  jal     Math_ApproxF
              
/* 03900 8092FED0 A60A00B4 */  sh      $t2, 0x00B4($s0)           ## 000000B4
/* 03904 8092FED4 10000008 */  beq     $zero, $zero, .L8092FEF8   
/* 03908 8092FED8 860D0198 */  lh      $t5, 0x0198($s0)           ## 00000198
/* 0390C 8092FEDC 860B00B4 */  lh      $t3, 0x00B4($s0)           ## 000000B4
.L8092FEE0:
/* 03910 8092FEE0 24050000 */  addiu   $a1, $zero, 0x0000         ## $a1 = 00000000
/* 03914 8092FEE4 3C064270 */  lui     $a2, 0x4270                ## $a2 = 42700000
/* 03918 8092FEE8 256C0300 */  addiu   $t4, $t3, 0x0300           ## $t4 = 00000300
/* 0391C 8092FEEC 0C01DE80 */  jal     Math_ApproxF
              
/* 03920 8092FEF0 A60C00B4 */  sh      $t4, 0x00B4($s0)           ## 000000B4
/* 03924 8092FEF4 860D0198 */  lh      $t5, 0x0198($s0)           ## 00000198
.L8092FEF8:
/* 03928 8092FEF8 3C0F8094 */  lui     $t7, %hi(D_80938CA0)       ## $t7 = 80940000
/* 0392C 8092FEFC 55A00021 */  bnel    $t5, $zero, .L8092FF84     
/* 03930 8092FF00 8FBF001C */  lw      $ra, 0x001C($sp)           
/* 03934 8092FF04 8DEF8CA0 */  lw      $t7, %lo(D_80938CA0)($t7)  
/* 03938 8092FF08 240E0001 */  addiu   $t6, $zero, 0x0001         ## $t6 = 00000001
/* 0393C 8092FF0C 3C198094 */  lui     $t9, %hi(D_80938C90)       ## $t9 = 80940000
/* 03940 8092FF10 A5EE001C */  sh      $t6, 0x001C($t7)           ## 8094001C
/* 03944 8092FF14 8F398C90 */  lw      $t9, %lo(D_80938C90)($t9)  
/* 03948 8092FF18 3C188093 */  lui     $t8, %hi(func_8092DAB8)    ## $t8 = 80930000
/* 0394C 8092FF1C 2718DAB8 */  addiu   $t8, $t8, %lo(func_8092DAB8) ## $t8 = 8092DAB8
/* 03950 8092FF20 8F280190 */  lw      $t0, 0x0190($t9)           ## 80940190
/* 03954 8092FF24 1708000C */  bne     $t8, $t0, .L8092FF58       
/* 03958 8092FF28 00000000 */  nop
/* 0395C 8092FF2C 82090195 */  lb      $t1, 0x0195($s0)           ## 00000195
/* 03960 8092FF30 11200005 */  beq     $t1, $zero, .L8092FF48     
/* 03964 8092FF34 00000000 */  nop
/* 03968 8092FF38 0C24CEE1 */  jal     func_80933B84              
/* 0396C 8092FF3C 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 03970 8092FF40 10000008 */  beq     $zero, $zero, .L8092FF64   
/* 03974 8092FF44 C60C008C */  lwc1    $f12, 0x008C($s0)          ## 0000008C
.L8092FF48:
/* 03978 8092FF48 0C24BEF9 */  jal     func_8092FBE4              
/* 0397C 8092FF4C 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 03980 8092FF50 10000004 */  beq     $zero, $zero, .L8092FF64   
/* 03984 8092FF54 C60C008C */  lwc1    $f12, 0x008C($s0)          ## 0000008C
.L8092FF58:
/* 03988 8092FF58 0C24BFE5 */  jal     func_8092FF94              
/* 0398C 8092FF5C 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 03990 8092FF60 C60C008C */  lwc1    $f12, 0x008C($s0)          ## 0000008C
.L8092FF64:
/* 03994 8092FF64 240500FF */  addiu   $a1, $zero, 0x00FF         ## $a1 = 000000FF
/* 03998 8092FF68 24060014 */  addiu   $a2, $zero, 0x0014         ## $a2 = 00000014
/* 0399C 8092FF6C 0C02A800 */  jal     func_800AA000              
/* 039A0 8092FF70 24070096 */  addiu   $a3, $zero, 0x0096         ## $a3 = 00000096
/* 039A4 8092FF74 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 039A8 8092FF78 0C00BE0A */  jal     Audio_PlayActorSound2
              
/* 039AC 8092FF7C 24053951 */  addiu   $a1, $zero, 0x3951         ## $a1 = 00003951
/* 039B0 8092FF80 8FBF001C */  lw      $ra, 0x001C($sp)           
.L8092FF84:
/* 039B4 8092FF84 8FB00018 */  lw      $s0, 0x0018($sp)           
/* 039B8 8092FF88 27BD0020 */  addiu   $sp, $sp, 0x0020           ## $sp = 00000000
/* 039BC 8092FF8C 03E00008 */  jr      $ra                        
/* 039C0 8092FF90 00000000 */  nop
