glabel func_80932FF0
/* 06A20 80932FF0 27BDFFE0 */  addiu   $sp, $sp, 0xFFE0           ## $sp = FFFFFFE0
/* 06A24 80932FF4 AFB00018 */  sw      $s0, 0x0018($sp)           
/* 06A28 80932FF8 00808025 */  or      $s0, $a0, $zero            ## $s0 = 00000000
/* 06A2C 80932FFC AFBF001C */  sw      $ra, 0x001C($sp)           
/* 06A30 80933000 AFA50024 */  sw      $a1, 0x0024($sp)           
/* 06A34 80933004 0C02927F */  jal     SkelAnime_FrameUpdateMatrix
              
/* 06A38 80933008 2484014C */  addiu   $a0, $a0, 0x014C           ## $a0 = 0000014C
/* 06A3C 8093300C 260400B4 */  addiu   $a0, $s0, 0x00B4           ## $a0 = 000000B4
/* 06A40 80933010 2405F800 */  addiu   $a1, $zero, 0xF800         ## $a1 = FFFFF800
/* 06A44 80933014 0C01DE2B */  jal     Math_ApproxUpdateScaledS
              
/* 06A48 80933018 8606019A */  lh      $a2, 0x019A($s0)           ## 0000019A
/* 06A4C 8093301C 26040028 */  addiu   $a0, $s0, 0x0028           ## $a0 = 00000028
/* 06A50 80933020 3C0542B4 */  lui     $a1, 0x42B4                ## $a1 = 42B40000
/* 06A54 80933024 0C01DE80 */  jal     Math_ApproxF
              
/* 06A58 80933028 3C0640A0 */  lui     $a2, 0x40A0                ## $a2 = 40A00000
/* 06A5C 8093302C 3C0F8094 */  lui     $t7, %hi(D_80938C90)       ## $t7 = 80940000
/* 06A60 80933030 8DEF8C90 */  lw      $t7, %lo(D_80938C90)($t7)  
/* 06A64 80933034 3C0E8093 */  lui     $t6, %hi(func_8092F6F0)    ## $t6 = 80930000
/* 06A68 80933038 25CEF6F0 */  addiu   $t6, $t6, %lo(func_8092F6F0) ## $t6 = 8092F6F0
/* 06A6C 8093303C 8DF80190 */  lw      $t8, 0x0190($t7)           ## 80940190
/* 06A70 80933040 55D80004 */  bnel    $t6, $t8, .L80933054       
/* 06A74 80933044 8FBF001C */  lw      $ra, 0x001C($sp)           
/* 06A78 80933048 0C24CC19 */  jal     func_80933064              
/* 06A7C 8093304C 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 06A80 80933050 8FBF001C */  lw      $ra, 0x001C($sp)           
.L80933054:
/* 06A84 80933054 8FB00018 */  lw      $s0, 0x0018($sp)           
/* 06A88 80933058 27BD0020 */  addiu   $sp, $sp, 0x0020           ## $sp = 00000000
/* 06A8C 8093305C 03E00008 */  jr      $ra                        
/* 06A90 80933060 00000000 */  nop
